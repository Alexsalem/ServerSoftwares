program Teste;

uses
  Vcl.Forms,
  Cadastro in 'Cadastro.pas' {frmCadastro},
  DataModule in 'DataModule.pas' {DM1: TDataModule},
  Menu in 'Menu.pas' {frmMenu},
  Cliente in 'Cliente.pas' {frmClientes},
  Usuarios in 'Usuarios.pas' {frmUsuarios},
  Login in 'Login.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
