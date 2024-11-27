unit UFrmPesqPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmPesqPadrao = class(TForm)
    ImageList1: TImageList;
    PnlCentral: TPanel;
    PnlTopo: TPanel;
    Label4: TLabel;
    Image4: TImage;
    Label2: TLabel;
    BtnClose: TSpeedButton;
    PnlCancela: TPanel;
    BtnCancela: TSpeedButton;
    PnlConfirma: TPanel;
    BtnConfirma: TSpeedButton;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqPadrao: TFrmPesqPadrao;

implementation

{$R *.dfm}

procedure TFrmPesqPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
