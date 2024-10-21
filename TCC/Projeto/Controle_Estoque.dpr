program Controle_Estoque;

uses
  Vcl.Forms,
  UFrmPrincipal in '..\Forms\UFrmPrincipal.pas' {FrmPrincipal},
  UDm in '..\Forms\UDm.pas' {Dm: TDataModule},
  Global in '..\Forms\Global.pas',
  UFrmLogin in '..\Forms\UFrmLogin.pas' {FrmLogin},
  UFrmPadrao in '..\Forms\UFrmPadrao.pas' {FrmPadrao},
  UFrmPessoas in '..\Forms\UFrmPessoas.pas' {FrmPessoas};

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
