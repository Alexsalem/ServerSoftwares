unit Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Cadastro, Data.DB, System.ImageList,
  Vcl.ImgList, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmUsuarios = class(TfrmCadastro)
    SQLManutencaoIDUSUARIO: TAutoIncField;
    SQLManutencaoNOME_USUARIO: TStringField;
    SQLManutencaoSENHA: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}

end.
