unit UDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.IBBase, IniFiles, Vcl.Dialogs, Vcl.Forms, FireDAC.Moni.Base,
  FireDAC.Moni.RemoteClient;

type
  TDm = class(TDataModule)
    FDconexao: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

uses
  Global;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDm.DataModuleCreate(Sender: TObject);
var
  arquivoINI: TIniFile;
  user, password, database, auxError, driver, conect : string;
begin
  if FDconexao.Connected then
    FDconexao.Connected:= False;

  arquivoINI:= TIniFile.Create(System.SysUtils.ExtractFilePath(ParamStr(0))+'\config.ini');
  user:= arquivoINI.ReadString('Controle_Estoque','User','');
  password:= arquivoINI.ReadString('Controle_Estoque','Password','');
  database:= arquivoINI.ReadString('Controle_Estoque','Database','');
  driver:= arquivoINI.ReadString('Controle_Estoque','Driver','');
  conect:= arquivoINI.ReadString('Controle_Estoque', 'Conect','');

  try
    FDPhysFBDriverLink1.VendorLib := conect;
    FDconexao.Params.UserName := user;
    FDconexao.Params.Password := password;
    FDconexao.Params.Database := database;
    FDconexao.Params.DriverID := driver;
//    FDconexao.Params.Strings[0] := 'User_Name='+ user;
//    FDconexao.Params.Strings[1] := 'Password='+ password;
//    FDconexao.Params.Strings[2] := 'Database='+ database;
//    FDconexao.Params.Strings[3] := 'DriverID='+ driver;
    FDconexao.Connected:= True;
  except
    on E : exception do
    begin
      auxError := Copy(E.Message,20,500);
      MessageDlg('Erro ao tentar se conectar com o banco de dados.'+#13
      +#13+'Motivo:'+#13+#13+''+auxError,TMsgDlgType.mtWarning,[TMsgDlgBtn.mbOK],0);
      Application.Terminate;
    end;
  end;
end;

end.
