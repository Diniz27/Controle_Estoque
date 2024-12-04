unit UFrmPesqItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPesqPadrao, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmPesqItem = class(TFrmPesqPadrao)
    DsItem: TDataSource;
    QrItem: TFDQuery;
    QrItemID_PRODUTO: TIntegerField;
    QrItemNM_PRODUTO: TStringField;
    QrItemVL_PRODUTO: TFloatField;
    QrItemID_FORNECEDOR: TIntegerField;
    QrItemID_UNIMEDIDA: TIntegerField;
    QrItemQN_ESTOQUE: TIntegerField;
    QrItemQN_PESO: TFloatField;
    QrItemNM_OBS: TStringField;
    QrItemFL_ATIVO: TStringField;
    QrItemQN_CODBARRAS: TStringField;
    QrItemQN_PESO_BRUTO: TFloatField;
    QrItemQN_PESO_LIQ: TFloatField;
    QrItemNM_PRODUTO_REDU: TStringField;
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    cod_sql :string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqItem: TFrmPesqItem;

implementation

{$R *.dfm}

uses UFrmEntradaMovimento;

procedure TFrmPesqItem.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  QrItem.Close;
end;

procedure TFrmPesqItem.BtnCloseClick(Sender: TObject);
begin
  inherited;
  QrItem.Close;
end;

procedure TFrmPesqItem.BtnConfirmaClick(Sender: TObject);
begin
  inherited;
  FrmEntradaMovimento.QrItem.Close;
  FrmEntradaMovimento.QrItem.ParamByName('ID_PRODUTO').Value := QrItemID_PRODUTO.Value;
  FrmEntradaMovimento.QrItem.Open;

  Close;
end;

procedure TFrmPesqItem.Edit1Change(Sender: TObject);
var
  expressao :string;
begin
  inherited;
  try
    QrItem.Close;
    QrItem.SQL.Clear;

    expressao := '';

    if Edit1.Text <> '' then
    begin

      case ComboBox1.ItemIndex of
        0: expressao := 'AND ID_PRODUTO';
        1: expressao := 'AND NM_PRODUTO';
        2: expressao := 'AND QN_CODBARRAS';
      end;

      case ComboBox2.ItemIndex of
        0: expressao := expressao + ' = ' + QuotedStr(Edit1.Text);
        1: expressao := expressao + ' LIKE ' + QuotedStr('%' + Edit1.Text + '%');
        2: expressao := expressao + ' <> ' + QuotedStr(Edit1.Text);
      end;

    end;

  finally

    if expressao = '' then
      QrItem.SQL.Add(cod_sql + 'ORDER BY ID_PRODUTO')
    else
      QrItem.SQL.Add(cod_sql + expressao + 'ORDER BY ID_PRODUTO');

    QrItem.Open;
  end;
end;

procedure TFrmPesqItem.FormShow(Sender: TObject);
begin
  inherited;
  QrItem.Open;
  cod_sql := QrItem.SQL.GetText;
end;

end.
