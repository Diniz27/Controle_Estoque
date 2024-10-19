program Controle_Estoque;

uses
  Vcl.Forms,
  UFrmPrincipal in '..\Forms\UFrmPrincipal.pas' {FrmPrincipal},
  UDm in '..\Forms\UDm.pas' {Dm: TDataModule},
  Global in '..\Forms\Global.pas',
  UFrmLogin in '..\Forms\UFrmLogin.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
