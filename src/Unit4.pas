unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DynamicSkinForm, SkinCtrls, SkinBoxCtrls, StdCtrls, ExtCtrls,
  sppngimagelist;

type
  TForm_pwd = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinPanel1: TspSkinPanel;
    spSkinButton_Ok: TspSkinButton;
    spSkinButton_Cancel: TspSkinButton;
    spSkinPasswordEdit: TspSkinPasswordEdit;
    spSkinStdLabel_psw: TspSkinStdLabel;
    spSkinTextLabel_msg: TspSkinTextLabel;
    spPngImageView1: TspPngImageView;
    spPngImageStorage1: TspPngImageStorage;
    procedure spSkinButton_CancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_pwd: TForm_pwd;

implementation

uses frmMain;

{$R *.dfm}

procedure TForm_pwd.FormActivate(Sender: TObject);
begin
 SetForegroundWindow(Form_pwd.Handle);
 spSkinPasswordEdit.SetFocus;
end;

procedure TForm_pwd.spSkinButton_CancelClick(Sender: TObject);
begin
 spSkinPasswordEdit.Text := '';
end;

end.
