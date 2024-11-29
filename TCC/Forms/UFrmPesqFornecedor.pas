unit UFrmPesqFornecedor;

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
  TFrmPesqFornecedor = class(TFrmPesqPadrao)
    QrFornecedor: TFDQuery;
    QrFornecedorID_PESSOA: TIntegerField;
    QrFornecedorID_TIPOPESSOA: TIntegerField;
    QrFornecedorDT_CADASTRO: TDateField;
    QrFornecedorFL_PF_PJ: TIntegerField;
    QrFornecedorNM_RAZAOSOCIAL: TStringField;
    QrFornecedorNM_REDUZIDO: TStringField;
    QrFornecedorCPF_CNPJ: TStringField;
    QrFornecedorRG_IE: TStringField;
    QrFornecedorCEP: TStringField;
    QrFornecedorNM_LOGRADOURO: TStringField;
    QrFornecedorNM_NUMERO: TIntegerField;
    QrFornecedorNM_COMPLEMENTO: TStringField;
    QrFornecedorNM_BAIRRO: TStringField;
    QrFornecedorID_IBGE: TIntegerField;
    QrFornecedorNM_CIDADE: TStringField;
    QrFornecedorNM_ESTADO: TStringField;
    QrFornecedorNM_TELEFONE1: TStringField;
    QrFornecedorNM_TELEFONE2: TStringField;
    QrFornecedorNM_EMAIL: TStringField;
    QrFornecedorNEW_TABLECOL: TStringField;
    QrFornecedorID_CRACHA: TIntegerField;
    DsFornecedor: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    cod_sql :string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqFornecedor: TFrmPesqFornecedor;

implementation

{$R *.dfm}

uses UFrmEntradaMovimento;

procedure TFrmPesqFornecedor.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  QrFornecedor.Close;
  Close;
end;

procedure TFrmPesqFornecedor.BtnCloseClick(Sender: TObject);
begin
  inherited;
  QrFornecedor.Close;
  Close;
end;

procedure TFrmPesqFornecedor.BtnConfirmaClick(Sender: TObject);
begin
  inherited;
  FrmEntradaMovimento.QrFornecedor.Close;
  FrmEntradaMovimento.QrFornecedor.ParamByName('ID_PESSOA').Value := QrFornecedorID_PESSOA.Value;
  FrmEntradaMovimento.QrFornecedor.Open;

  Close;

end;

procedure TFrmPesqFornecedor.Edit1Change(Sender: TObject);
var
  expressao :string;
begin
  inherited;
  try
    QrFornecedor.Close;
    QrFornecedor.SQL.Clear;

    expressao := '';

    if Edit1.Text <> '' then
    begin

      case ComboBox1.ItemIndex of
        0: expressao := 'AND ID_PESSOA';
        1: expressao := 'AND NM_RAZAOSOCIAL';
        2: expressao := 'AND CPF_CNPJ';
      end;

      case ComboBox2.ItemIndex of
        0: expressao := expressao + ' = ' + QuotedStr(Edit1.Text);
        1: expressao := expressao + ' LIKE ' + QuotedStr('%' + Edit1.Text + '%');
        2: expressao := expressao + ' <> ' + QuotedStr(Edit1.Text);
      end;

    end;

  finally

    if expressao = '' then
      QrFornecedor.SQL.Add(cod_sql + 'ORDER BY ID_PESSOA')
    else
      QrFornecedor.SQL.Add(cod_sql + expressao + 'ORDER BY ID_PESSOA');

    QrFornecedor.Open;
  end;

end;

procedure TFrmPesqFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  QrFornecedor.Open;
  cod_sql := QrFornecedor.SQL.GetText;
end;

end.
