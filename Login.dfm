object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 90
  ClientWidth = 198
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 6
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object Label2: TLabel
    Left = 18
    Top = 36
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Edit1: TEdit
    Left = 60
    Top = 8
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 60
    Top = 36
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 18
    Top = 63
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = btnOKClick
  end
  object btnCancelar: TButton
    Left = 106
    Top = 63
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnCancelarClick
  end
end
