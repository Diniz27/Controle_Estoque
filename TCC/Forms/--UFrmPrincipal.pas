unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    PnlTop: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UFrmLogin;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  Try
    FrmLogin := TFrmLogin.Create(Self);
    FrmLogin.ShowModal;
  finally
    FrmLogin.Free;
  End;
end;

end.
