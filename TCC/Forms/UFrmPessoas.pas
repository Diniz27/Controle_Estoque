unit UFrmPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TFrmPessoas = class(TFrmPadrao)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPessoas: TFrmPessoas;

implementation

{$R *.dfm}

end.
