object Dm: TDm
  OnCreate = DataModuleCreate
  Height = 158
  Width = 444
  object FDconexao: TFDConnection
    ConnectionName = 'FDPhysFBDriverLink1'
    Params.Strings = (
      'Database=C:\Controle_Estoque\TCC\Banco de Dados\ESTOQUE_32.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 64
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Controle_Estoque\TCC\Banco de Dados\fbclient.dll'
    Left = 216
    Top = 72
  end
end
