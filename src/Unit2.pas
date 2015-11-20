unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ShlObj, ComObj, ActiveX, Registry,
  Dialogs, SkinCtrls, DynamicSkinForm, StdCtrls, Mask, SkinBoxCtrls, spMessages,
  spSkinZip, ShellApi;

type
  TListMode = (lmPresent, lmDelete, lmInsert);


  TForm_Settings = class(TForm)
    spSkinGroupBox_ScreenShot: TspSkinGroupBox;
    spSkinGroupBox_System: TspSkinGroupBox;
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinCheckRadioBox_Run: TspSkinCheckRadioBox;
    spSkinCheckRadioBox_Hide: TspSkinCheckRadioBox;
    spSkinCheckRadioBox_winchange: TspSkinCheckRadioBox;
    spSkinCheckRadioBox_clipchange: TspSkinCheckRadioBox;
    spSkinPanel_Psw: TspSkinPanel;
    spSkinStdLabel_psw: TspSkinStdLabel;
    spSkinPasswordEdit: TspSkinPasswordEdit;
    spSkinGroupBox_Interface: TspSkinGroupBox;
    spSkinComboBox_SKIN: TspSkinComboBox;
    spSkinComboBox_LNG: TspSkinComboBox;
    spSkinStdLabel_Language: TspSkinStdLabel;
    spSkinStdLabel_Skin: TspSkinStdLabel;
    spSkinPanel1: TspSkinPanel;
    spSkinButton_Ok: TspSkinButton;
    spSkinButton_Cancel: TspSkinButton;
    spSkinPanel2: TspSkinPanel;
    spSkinStdLabel_retry: TspSkinStdLabel;
    spSkinPasswordEdit_retry: TspSkinPasswordEdit;
    spSkinPanel3: TspSkinPanel;
    spSkinStdLabel_HK: TspSkinStdLabel;
    spSkinComboBox_HK: TspSkinComboBox;
    spSkinMessage1: TspSkinMessage;
    spSkinCheckRadioBox_HideIP: TspSkinCheckRadioBox;
    spSkinCheckRadioBox_HideSM: TspSkinCheckRadioBox;
    spSkinCheckRadioBox_HideDS: TspSkinCheckRadioBox;
    procedure FormCreate(Sender: TObject);
    procedure spSkinCheckRadioBox_HideClick(Sender: TObject);
    procedure spSkinButton_OkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spSkinButton_CancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spSkinCheckRadioBox_HideDSClick(Sender: TObject);
    procedure spSkinCheckRadioBox_HideSMClick(Sender: TObject);
    procedure spSkinCheckRadioBox_HideIPClick(Sender: TObject);
    procedure spSkinCheckRadioBox_RunClick(Sender: TObject);
    procedure spSkinComboBox_LNGChange(Sender: TObject);
    procedure spSkinComboBox_SKINChange(Sender: TObject);
  private
    { Private declarations }
    B1,B2,B3,B4,B5: bool;
    Txt1: string;
    I1, I2, I3: integer;
  public
    { Public declarations }
    SUserDT, SAllUserDT, SUserPRG, SAllUserPRG:  string;
    function DSPresent: bool;
    function SMPresent: bool;
    procedure EnableSM(isSM: bool);
    procedure EnableDS(isDS: bool);
    function UnInstList(Action: TListMode): bool;
  end;


var
  Form_Settings: TForm_Settings;

implementation

uses frmMain, Unit4;

{$R *.dfm}

function TForm_Settings.UnInstList(Action: TListMode): bool;
var
 MyReg: TRegistry;
 Res: bool;
 FileName: string;
begin
 MyReg:=TRegistry.Create;
 MyReg.RootKey:=HKEY_LOCAL_MACHINE;
 Res:=False;
 case Action of
   lmPresent:
      begin
       Res:= MyReg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Uninstall\' + APP_NAME + '_is1', False);
      end;
   lmDelete:
      begin
       // admin
       Res:=MyReg.DeleteKey('Software\Microsoft\Windows\CurrentVersion\Uninstall\' + APP_NAME + '_is1');
      end;
   lmInsert:
      begin
       FileName := Form1.AppDataDir + 'temp\reg\info.uid';
       if FileExists(FileName) then
        begin
        {$IFDEF DEBUG_MODE}
          if ShellExecute(Handle, 'open', 'regedit.exe',
          PChar(Format('/s "%s"', [FileName])),'', SW_SHOWDEFAULT) <= 32
          then
            begin
             Res:=False;
             RaiseLastWin32Error();
            end;
        {$ELSE}
          try
          if ShellExecute(Handle, 'open', 'regedit.exe',
          PChar(Format('/s "%s"', [FileName])),'', SW_SHOWDEFAULT) <= 32 then Res:=False;
          except end;
        {$ENDIF}
        end;
      end;
 end;
 MyReg.CloseKey;
 MyReg.Free;
 UnInstList:=Res;
end;

procedure CreateLink(const PathObj, PathLink, Desc, Param: string);
var
  IObject: IUnknown;
  SLink: IShellLink;
  PFile: IPersistFile;
begin
  IObject := CreateComObject(CLSID_ShellLink);
  SLink := IObject as IShellLink;
  PFile := IObject as IPersistFile;
  with SLink do
  begin
    SetArguments(PChar(Param));
    SetDescription(PChar(Desc));
    SetPath(PChar(PathObj));
  end;
  PFile.Save(PWChar(WideString(PathLink)), FALSE);
end;

function MakeShortcut(const sFName, sLnk, sWorkDir, sArgs, sIconFile: string;
                     IconIndex: integer): boolean;
var CO: IUnknown;
begin
 Result := False;
 CO := CreateComObject(CLSID_ShellLink);
 try
   with IShellLink(CO) do
   begin
     if SetPath(PChar(sFName)) <> S_OK then exit;
     if sIconFile <> '' then
       if SetIconLocation(PChar(sIconFile), IconIndex) <> S_OK then exit;
     if SetArguments(PChar(sArgs)) <> S_OK then exit;
     if SetWorkingDirectory(PChar(sWorkDir)) <> S_OK then exit;
   end;
   Result := Succeeded((CO as IPersistFile).Save(PWChar(WideString(sLnk)), False))
 finally
   CO := Unassigned
 end
end;

function FullRemoveDir(Dir: string; DeleteAllFilesAndFolders,
  StopIfNotAllDeleted, RemoveRoot: boolean): Boolean;
var
  i: Integer;
  SRec: TSearchRec;
  FN: string;
begin
  Result := False;
  if not DirectoryExists(Dir) then
    exit;
  Result := True;
  Dir := IncludeTrailingBackslash(Dir);
  i := FindFirst(Dir + '*', faAnyFile, SRec);
  try
    while i = 0 do
    begin
      FN := Dir + SRec.Name;
      if SRec.Attr = faDirectory then
      begin
        if (SRec.Name <> '') and (SRec.Name <> '.') and (SRec.Name <> '..') then
        begin
          if DeleteAllFilesAndFolders then
            FileSetAttr(FN, faArchive);
          Result := FullRemoveDir(FN, DeleteAllFilesAndFolders,
            StopIfNotAllDeleted, True);
          if not Result and StopIfNotAllDeleted then
            exit;
        end;
      end
      else
      begin
        if DeleteAllFilesAndFolders then
          FileSetAttr(FN, faArchive);
        Result := SysUtils.DeleteFile(FN);
        if not Result and StopIfNotAllDeleted then
          exit;
      end;
      i := FindNext(SRec);
    end;
  finally
    SysUtils.FindClose(SRec);
  end;
  if not Result then
    exit;
  if RemoveRoot then
    if not RemoveDir(Dir) then
      Result := false;
end;

function TForm_Settings.SMPresent: bool;
begin
 SMPresent:=DirectoryExists(SUserPRG + '\' + APP_NAME) or DirectoryExists(SAllUserPRG+ '\' + APP_NAME);
end;

procedure TForm_Settings.EnableSM(isSM: bool);
var
 sr: TSearchRec;
 DirAttrs: integer;
begin
 if isSM then
  begin
   DirAttrs := faAnyFile;
   try CreateDir(SUserPRG  + '\' + APP_NAME); except end;
   try CreateDir(SAllUserPRG  + '\' + APP_NAME); except end;
   if FindFirst(Form1.AppDataDir + 'temp\start\*.lnk', DirAttrs, sr) = 0 then
     begin
      CopyFile(PChar(Form1.AppDataDir + 'temp\start\' + sr.Name), PChar(SUserPRG + '\' + APP_NAME + '\' + sr.Name), false);
      CopyFile(PChar(Form1.AppDataDir + 'temp\start\' + sr.Name), PChar(SAllUserPRG + '\' + APP_NAME + '\' + sr.Name), false);
     end;
   while (FindNext(sr) = 0) do
     begin
      CopyFile(PChar(Form1.AppDataDir + 'temp\start\' + sr.Name), PChar(SUserPRG + '\' + APP_NAME + '\' + sr.Name), false);
      CopyFile(PChar(Form1.AppDataDir + 'temp\start\' + sr.Name), PChar(SAllUserPRG + '\' + APP_NAME + '\' + sr.Name), false);
     end;
  end
 else
  begin
   try FullRemoveDir(SUserPRG + '\' + APP_NAME, true, true, true); except end;
   try FullRemoveDir(SAllUserPRG + '\' + APP_NAME, true, true, true); except end;
  end;
end;

function TForm_Settings.DSPresent: bool;
begin
 DSPresent:=FileExists(SUserDT + '\' + APP_NAME + '.lnk') or FileExists(SAllUserDT + '\' + APP_NAME + '.lnk');
end;

procedure TForm_Settings.EnableDS(isDS: bool);
var
 sr: TSearchRec;
 DirAttrs: integer;
begin
 if isDS then
  begin
   DirAttrs := faAnyFile;
   if FindFirst(Form1.AppDataDir + 'temp\desktop\*.lnk', DirAttrs, sr) = 0 then
     begin
      CopyFile(PChar(Form1.AppDataDir + 'temp\desktop\' + sr.Name), PChar(SUserDT + '\' + sr.Name), false);
     end;
   while (FindNext(sr) = 0) do
     begin
      CopyFile(PChar(Form1.AppDataDir + 'temp\desktop\' + sr.Name), PChar(SUserDT + '\' + sr.Name), false);
     end;
  end
 else
  begin
   try DeleteFile(SUserDT + '\' + APP_NAME + '.lnk'); except end;
   try DeleteFile(SAllUserDT + '\' + APP_NAME + '.lnk'); except end;
  end;
end;

procedure TForm_Settings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Form1.spTrayIcon1.Enabled:=True;
end;

procedure TForm_Settings.FormCreate(Sender: TObject);
var sr: TSearchRec;
    AppParth: string;
    DirAttrs: integer;
    //
    PIDL: PItemIDList;
    TempPath: array[0..MAX_PATH] of Char;
    //
begin
 spSkinPasswordEdit.Align:=alRight;
 spSkinStdLabel_psw.Align:=alClient;
 spSkinPasswordEdit_retry.Align:=alRight;
 spSkinStdLabel_retry.Align:=alClient;

 AppParth:=ExtractFilePath(Application.ExeName);
 DirAttrs := faAnyFile;

 spSkinComboBox_SKIN.Items.Clear;
 if FindFirst(AppParth + '/skins/*.skn', DirAttrs, sr) = 0 then spSkinComboBox_SKIN.Items.Add(sr.Name);
 while (FindNext(sr) = 0) do spSkinComboBox_SKIN.Items.Add(sr.Name);

 spSkinComboBox_LNG.Items.Clear;
 if FindFirst(AppParth + '/lng/*.lng', DirAttrs, sr) = 0 then spSkinComboBox_LNG.Items.Add(sr.Name);
 while (FindNext(sr) = 0) do spSkinComboBox_LNG.Items.Add(sr.Name);

 { User\Desktop }
 SHGetSpecialFolderLocation(Application.Handle, CSIDL_DESKTOPDIRECTORY, PIDL);
 if PIDL <> nil then
 begin
   SHGetPathFromIDList(PIDL, TempPath);
   SUserDT:= string(TempPath);
   GlobalFreePtr(PIDL)
 end;
 { All Users\Desktop }
 SHGetSpecialFolderLocation(Application.Handle, CSIDL_COMMON_DESKTOPDIRECTORY, PIDL);
 if PIDL <> nil then
 begin
   SHGetPathFromIDList(PIDL, TempPath);
   SAllUserDT:= string(TempPath);
   GlobalFreePtr(PIDL)
 end;
 { User\Programs }
 SHGetSpecialFolderLocation(Application.Handle, CSIDL_PROGRAMS, PIDL);
 if PIDL <> nil then
 begin
   SHGetPathFromIDList(PIDL, TempPath);
   SUserPRG:= string(TempPath);
   GlobalFreePtr(PIDL)
 end;
 { All Users\Programs }
 SHGetSpecialFolderLocation(Application.Handle, CSIDL_COMMON_PROGRAMS, PIDL);
 if PIDL <> nil then
 begin
   SHGetPathFromIDList(PIDL, TempPath);
   SAllUserPRG:= string(TempPath);
   GlobalFreePtr(PIDL)
 end;
end;

procedure TForm_Settings.FormShow(Sender: TObject);
var reg: TRegistry;
begin
  spSkinCheckRadioBox_Run.Tag:=0;
  B2:=spSkinCheckRadioBox_Hide.Checked;
  spSkinCheckRadioBox_Hide.Tag:=0;
  B3:=spSkinCheckRadioBox_winchange.Checked;
  B4:=spSkinCheckRadioBox_clipchange.Checked;
  Txt1:=spSkinPasswordEdit.Text;
  I1:=spSkinComboBox_LNG.ItemIndex;
  I2:=spSkinComboBox_SKIN.ItemIndex;
  spSkinComboBox_LNG.Tag:=0;
  spSkinComboBox_SKIN.Tag:=0;
  spSkinComboBox_LNG.Tag:=0;
  I3:=spSkinComboBox_HK.ItemIndex;
  Form1.spTrayIcon1.Enabled:=False;
  reg := TRegistry.Create;
  reg.LazyWrite := false;
  reg.RootKey := HKEY_LOCAL_MACHINE;
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run',false);
  spSkinCheckRadioBox_Run.Checked:=(reg.ReadString('kbdsprt') = Application.ExeName);
  reg.CloseKey;
  spSkinCheckRadioBox_Run.Tag:=0;
  reg.Free;
  spSkinCheckRadioBox_HideDS.Checked := not DSPresent;
  spSkinCheckRadioBox_HideDS.Tag:=0;
  spSkinCheckRadioBox_HideSM.Checked := not SMPresent;
  spSkinCheckRadioBox_HideSM.Tag:=0;
  spSkinCheckRadioBox_HideIP.Checked := not UnInstList(lmPresent);
  spSkinCheckRadioBox_HideIP.Tag:=0;
end;

procedure TForm_Settings.spSkinButton_CancelClick(Sender: TObject);
begin
 spSkinCheckRadioBox_Hide.Checked:=B2;
 spSkinCheckRadioBox_winchange.Checked:=B3;
 spSkinCheckRadioBox_clipchange.Checked:=B4;
 spSkinPasswordEdit.Text:=Txt1;
 spSkinPasswordEdit_retry.Text:=Txt1;
 spSkinComboBox_LNG.ItemIndex:=I1;
 spSkinComboBox_SKIN.ItemIndex:=I2;
 spSkinComboBox_HK.ItemIndex:=I3;
end;

procedure TForm_Settings.spSkinButton_OkClick(Sender: TObject);
var scn_path: string;
begin

 if spSkinCheckRadioBox_Hide.Checked then
  begin
    if spSkinPasswordEdit.Text = '' then
     begin
      // Password is empty
      spSkinMessage1.MessageDlg(Perevod('Msg3'), mtError, [mbOK] , 0);
      Form_Settings.spSkinPasswordEdit.SetFocus;
      Form_Settings.ModalResult:=0; exit;
     end;

    if spSkinPasswordEdit_retry.Text <> spSkinPasswordEdit.Text then
     begin
      // Passwords do not match!
      spSkinMessage1.MessageDlg(Perevod('Msg4'), mtError, [mbOK] , 0);
      Form_Settings.spSkinPasswordEdit_retry.SetFocus;
      Form_Settings.ModalResult:=0; exit;
     end;

     Form1.spTrayIcon1.IconVisible := not spSkinCheckRadioBox_Hide.Checked;
     TestPS:=spSkinPasswordEdit.Text;
     //Ctrl-Alt-H               // 72
     //Ctrl-Alt-PrtScr          // 154
     //Ctrl-Alt-ScrollLock      // 145
     //Ctrl-Alt-Pause           // 19
     case spSkinComboBox_HK.ItemIndex of
      0:  RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 65);
      1:  RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 66);
      2:  RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 67);
      3:  RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 68);
      4:  RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 69);
      5:  RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 70);
      6:  RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 71);
      7:  RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 72);
      8:  RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 73);
      9:  RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 74);
      10: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 75);
      11: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 76);
      12: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 77);
      13: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 78);
      14: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 79);
      15: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 80);
      16: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 81);
      17: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 82);
      18: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 83);
      19: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 84);
      20: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 85);
      21: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 86);
      22: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 87);
      23: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 88);
      24: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 89);
      25: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, 90);
      26: RegisterHotKey(Form1.Handle, id_HotKey, MOD_CONTROL + MOD_Alt, VK_SCROLL);
     end;
  end
 else
  begin
   UnRegisterHotKey (Form1.Handle, id_HotKey);
   TestPS:='';
  end;

end;

procedure TForm_Settings.spSkinCheckRadioBox_HideClick(Sender: TObject);
begin
 spSkinStdLabel_psw.Enabled:=spSkinCheckRadioBox_Hide.Checked;
 spSkinStdLabel_retry.Enabled:=spSkinCheckRadioBox_Hide.Checked;
 spSkinStdLabel_HK.Enabled:=spSkinCheckRadioBox_Hide.Checked;
 spSkinPasswordEdit.Enabled:=spSkinCheckRadioBox_Hide.Checked;
 spSkinPasswordEdit_retry.Enabled:=spSkinCheckRadioBox_Hide.Checked;
 spSkinComboBox_HK.Enabled:=spSkinCheckRadioBox_Hide.Checked;
 spSkinCheckRadioBox_Hide.Tag:=1;
end;

procedure TForm_Settings.spSkinCheckRadioBox_HideDSClick(Sender: TObject);
begin
  spSkinCheckRadioBox_HideDS.Tag:=1;
end;

procedure TForm_Settings.spSkinCheckRadioBox_HideIPClick(Sender: TObject);
begin
 spSkinCheckRadioBox_HideIP.Tag:=1;
end;

procedure TForm_Settings.spSkinCheckRadioBox_HideSMClick(Sender: TObject);
begin
 spSkinCheckRadioBox_HideSM.Tag:=1;
end;

procedure TForm_Settings.spSkinCheckRadioBox_RunClick(Sender: TObject);
begin
 spSkinCheckRadioBox_Run.Tag:=1;
end;

procedure TForm_Settings.spSkinComboBox_LNGChange(Sender: TObject);
begin
  spSkinComboBox_LNG.Tag:=1;
end;

procedure TForm_Settings.spSkinComboBox_SKINChange(Sender: TObject);
begin
 spSkinComboBox_SKIN.Tag:=1;
end;

end.
