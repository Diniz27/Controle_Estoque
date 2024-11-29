program Controle_Estoque;

uses
  Vcl.Forms,
  UFrmPrincipal in '..\Forms\UFrmPrincipal.pas' {FrmPrincipal},
  UDm in '..\Forms\UDm.pas' {Dm: TDataModule},
  Global in '..\Forms\Global.pas',
  UFrmLogin in '..\Forms\UFrmLogin.pas' {FrmLogin},
  UFrmPadrao in '..\Forms\UFrmPadrao.pas' {FrmPadrao},
  UFrmPessoas in '..\Forms\UFrmPessoas.pas' {FrmPessoas},
  UFrmPesqPessoas in '..\Forms\UFrmPesqPessoas.pas' {FrmPesqPessoas},
  UFrmCadPessoas in '..\Forms\UFrmCadPessoas.pas' {FrmCadPessoas},
  UValidaDados in '..\Forms\UValidaDados.pas',
  UFrmPesqMaterial in '..\Forms\UFrmPesqMaterial.pas' {FrmPesqMaterial},
  UFrmCadMaterial in '..\Forms\UFrmCadMaterial.pas' {FrmCadMaterial},
  UFrmPesqMovimento in '..\Forms\UFrmPesqMovimento.pas' {FrmPesqMovimento},
  UFrmEntradaMovimento in '..\Forms\UFrmEntradaMovimento.pas' {FrmEntradaMovimento},
  UFrmPesqPadrao in '..\Forms\UFrmPesqPadrao.pas' {FrmPesqPadrao},
  UFrmPesqFornecedor in '..\Forms\UFrmPesqFornecedor.pas' {FrmPesqFornecedor},
  UFrmPesqItem in '..\Forms\UFrmPesqItem.pas' {FrmPesqItem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDm, Dm);
  FrmLogin := TFrmLogin.Create(nil);
  FrmLogin.ShowModal;

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);

  FrmLogin.Hide;
  FrmLogin.Free;

  Application.Run;
end.
