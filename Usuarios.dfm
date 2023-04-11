inherited frmUsuarios: TfrmUsuarios
  Caption = 'Usu'#225'rios'
  ClientWidth = 827
  ExplicitWidth = 833
  PixelsPerInch = 96
  TextHeight = 16
  inherited tlb1: TToolBar
    Width = 827
  end
  inherited PageControl1: TPageControl
    Width = 827
    inherited tsManutencao: TTabSheet
      ExplicitWidth = 819
      object Label1: TLabel
        Left = 6
        Top = 6
        Width = 34
        Height = 16
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 6
        Top = 54
        Width = 37
        Height = 16
        Caption = 'Usu'#225'rio'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 174
        Top = 54
        Width = 31
        Height = 19
        Caption = 'Senha'
        FocusControl = DBEdit3
      end
      object DBEdit1: TDBEdit
        Left = 6
        Top = 24
        Width = 164
        Height = 24
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'IDUSUARIO'
        DataSource = dsManutencao
        Enabled = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 6
        Top = 72
        Width = 164
        Height = 24
        CharCase = ecUpperCase
        DataField = 'NOME_USUARIO'
        DataSource = dsManutencao
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 174
        Top = 72
        Width = 84
        Height = 24
        CharCase = ecUpperCase
        DataField = 'SENHA'
        DataSource = dsManutencao
        PasswordChar = '*'
        TabOrder = 2
      end
    end
    inherited tsListagem: TTabSheet
      ExplicitWidth = 819
      inherited dbgrd1: TDBGrid
        Width = 819
      end
    end
  end
  inherited Panel1: TPanel
    Width = 827
  end
  inherited SQLManutencao: TADODataSet
    CommandText = 'select IDUSUARIO, NOME_USUARIO, SENHA from USUARIOS'
    object SQLManutencaoIDUSUARIO: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDUSUARIO'
      ReadOnly = True
    end
    object SQLManutencaoNOME_USUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'NOME_USUARIO'
      Size = 10
    end
    object SQLManutencaoSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Size = 5
    end
  end
end
