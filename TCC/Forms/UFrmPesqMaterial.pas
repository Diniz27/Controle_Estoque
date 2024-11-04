unit UFrmPesqMaterial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrmPesqMaterial = class(TFrmPadrao)
    CbPesq: TComboBox;
    EdtPesq: TEdit;
    BtnPesq: TSpeedButton;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btnNovo: TSpeedButton;
    Panel3: TPanel;
    btnEditar: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqMaterial: TFrmPesqMaterial;

implementation

{$R *.dfm}

end.
