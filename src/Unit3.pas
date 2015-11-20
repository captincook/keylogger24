unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, SkinCtrls, ExtCtrls, SkinExCtrls, StdCtrls, jpeg, sppngimagelist;

type
  TForm_About = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinPanel3: TspSkinPanel;
    spSkinPanel4: TspSkinPanel;
    spSkinButton_Close: TspSkinButton;
    spSkinPanel2: TspSkinPanel;
    Label_Name: TspSkinStdLabel;
    Label_Copyright: TspSkinStdLabel;
    Label_WWW: TspSkinLinkLabel;
    spSkinPanel1: TspSkinPanel;
    LinkLabel_URL: TspSkinLinkLabel;
    Label_Version: TspSkinStdLabel;
    LinkLabel_MAIL: TspSkinLinkLabel;
    Registered_Label: TspSkinStdLabel;
    spPngImageView1: TspPngImageView;
    spPngImageStorage1: TspPngImageStorage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppImageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_About: TForm_About;

implementation

uses frmMain;

{$R *.dfm}

procedure TForm_About.AppImageClick(Sender: TObject);
begin
  GotoHomePage;
end;

procedure TForm_About.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Form1.spTrayIcon1.Enabled:=True;
end;

procedure TForm_About.FormCreate(Sender: TObject);
var
  i: integer;
begin
 Label_Name.Caption:= APP_NAME;
 Label_Copyright.Caption:=APP_COPYRIGHT;
 LinkLabel_URL.URL:=APP_URL + APP_PARAM;
 Label_WWW.Caption:=APP_URL;
 Label_WWW.URL:=APP_URL + APP_PARAM;
end;

procedure TForm_About.FormShow(Sender: TObject);
begin
 Form1.spTrayIcon1.Enabled:=False;
end;

end.
