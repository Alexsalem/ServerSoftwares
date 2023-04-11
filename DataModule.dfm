object DM1: TDM1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 179
  Width = 215
  object Ado_Conn1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=TESTE_TEX;Data Source=DESKTOP-VS1K5EM\S' +
      'QLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 84
    Top = 60
  end
  object qryUsuarios: TADOQuery
    Connection = Ado_Conn1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usuarios')
    Left = 162
    Top = 36
    object qryUsuariosIDUSUARIO: TAutoIncField
      FieldName = 'IDUSUARIO'
      ReadOnly = True
    end
    object qryUsuariosNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      Size = 10
    end
    object qryUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 5
    end
  end
  object dsUsuarios: TDataSource
    DataSet = qryUsuarios
    Left = 156
    Top = 96
  end
end
