unit Global;

interface

uses UDm, UFrmPrincipal;

//  procedure ConectaBanco;

implementation

uses
  System.SysUtils, IniFiles, Vcl.Dialogs, Vcl.Forms;

//procedure ConectaBanco;
//var
//  arquivoINI: TIniFile;
//  user, password, database, auxError, driver : string;
//begin
//  with Dm do
//  begin
//    if FDconexao.Connected then
//      FDconexao.Connected:= False;
//
//    arquivoINI:= TIniFile.Create(System.SysUtils.ExtractFilePath(ParamStr(0))+'\config.ini');
//    user:= arquivoINI.ReadString('Controle_Estoque','User','');
//    password:= arquivoINI.ReadString('Controle_Estoque','password','');
//    database:= arquivoINI.ReadString('Controle_Estoque','Database','');
//
//    try
//      FDconexao.Params.Strings[0] := 'User_Name='+ user;
//      FDconexao.Params.Strings[1] := 'Password='+ password;
//      FDconexao.Params.Strings[2] := 'Database='+ database;
//      FDconexao.Connected:= True;
//    except
//      on E : exception do
//      begin
//        auxError := Copy(E.Message,20,500);
//        MessageDlg('Erro ao tentar se conectar com o banco de dados.'+#13
//        +#13+'Motivo:'+#13+#13+''+auxError,TMsgDlgType.mtWarning,[TMsgDlgBtn.mbOK],0);
//        Application.Terminate;
//      end;
//    end;
//  end;
//
//end;

end.
