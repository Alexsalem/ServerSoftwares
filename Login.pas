unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    btnOK: TButton;
    btnCancelar: TButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses DataModule, Menu;

{$R *.dfm}

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  Halt;
end;

procedure TfrmLogin.btnOKClick(Sender: TObject);
begin
  DM1.qryUsuarios.Close;
  DM1.qryUsuarios.SQL.Clear;
  DM1.qryUsuarios.SQL.Add('SELECT * FROM USUARIOS WHERE NOME_USUARIO='+QuotedStr(Edit1.Text));
  DM1.qryUsuarios.SQL.Add(' AND SENHA='+QuotedStr(Edit2.Text) );
  DM1.qryUsuarios.Open;

  if DM1.qryUsuarios.RecordCount=0 then
  begin
    ShowMessage('Usuário ou senha inválidos');
    edit1.Clear;
    edit2.Clear;
    Edit1.SetFocus;
    exit;
  end;
  frmMenu := TFrmMenu.Create(Self);
  frmMenu.ShowModal;
  FrmMenu.Free;
end;

end.
