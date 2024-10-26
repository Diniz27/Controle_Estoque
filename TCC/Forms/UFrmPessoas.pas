unit UFrmPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TFrmPessoas = class(TFrmPadrao)
    Panel3: TPanel;
    PnlPessoa: TPanel;
    LblPessoa: TLabel;
    Image1: TImage;
    Panel4: TPanel;
    BtnPessoa: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    Image2: TImage;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    procedure BtnPessoaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPessoas: TFrmPessoas;

implementation

{$R *.dfm}

uses UFrmPesqPessoas, UFrmCadPessoas;

procedure TFrmPessoas.BtnPessoaClick(Sender: TObject);
begin
  inherited;
  try
    FrmPesqPessoas := TFrmPesqPessoas.Create(Self);
    FrmPesqPessoas.Show;
  except
    FrmPesqPessoas.Free;
  end;
end;

procedure TFrmPessoas.SpeedButton1Click(Sender: TObject);
begin
  inherited;
    try
    FrmCadPessoas := TFrmCadPessoas.Create(Self);
    FrmCadPessoas.Show;
  except
    FrmCadPessoas.Free;
  end;
end;

end.
