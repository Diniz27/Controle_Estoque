unit UFrmPesqPessoaMovimento;

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
  TFrmPesqPessoaMovimento = class(TFrmPesqPadrao)
    QrPessoa: TFDQuery;
    QrPessoaID_PESSOA: TIntegerField;
    QrPessoaID_TIPOPESSOA: TIntegerField;
    QrPessoaDT_CADASTRO: TDateField;
    QrPessoaFL_PF_PJ: TIntegerField;
    QrPessoaNM_RAZAOSOCIAL: TStringField;
    QrPessoaNM_REDUZIDO: TStringField;
    QrPessoaCPF_CNPJ: TStringField;
    QrPessoaRG_IE: TStringField;
    QrPessoaCEP: TStringField;
    QrPessoaNM_LOGRADOURO: TStringField;
    QrPessoaNM_NUMERO: TIntegerField;
    QrPessoaNM_COMPLEMENTO: TStringField;
    QrPessoaNM_BAIRRO: TStringField;
    QrPessoaID_IBGE: TIntegerField;
    QrPessoaNM_CIDADE: TStringField;
    QrPessoaNM_ESTADO: TStringField;
    QrPessoaNM_TELEFONE1: TStringField;
    QrPessoaNM_TELEFONE2: TStringField;
    QrPessoaNM_EMAIL: TStringField;
    QrPessoaNEW_TABLECOL: TStringField;
    QrPessoaID_CRACHA: TIntegerField;
    DsPessoa: TDataSource;
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
  FrmPesqPessoaMovimento: TFrmPesqPessoaMovimento;

implementation

{$R *.dfm}

uses UFrmEntradaMovimento;

procedure TFrmPesqPessoaMovimento.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  QrPessoa.Close;
  Close;
end;

procedure TFrmPesqPessoaMovimento.BtnCloseClick(Sender: TObject);
begin
  inherited;
  QrPessoa.Close;
  Close;
end;

procedure TFrmPesqPessoaMovimento.BtnConfirmaClick(Sender: TObject);
begin
  inherited;
  FrmEntradaMovimento.QrFornecedor.Close;
  FrmEntradaMovimento.QrFornecedor.ParamByName('ID_PESSOA').Value := QrPessoaID_PESSOA.Value;
  FrmEntradaMovimento.QrFornecedor.Open;

  Close;

end;

procedure TFrmPesqPessoaMovimento.Edit1Change(Sender: TObject);
var
  expressao :string;
begin
  inherited;
  try
    QrPessoa.Close;
    QrPessoa.SQL.Clear;

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
      QrPessoa.SQL.Add(cod_sql + 'ORDER BY ID_PESSOA')
    else
      QrPessoa.SQL.Add(cod_sql + expressao + 'ORDER BY ID_PESSOA');

    QrPessoa.Open;
  end;

end;

procedure TFrmPesqPessoaMovimento.FormShow(Sender: TObject);
begin
  inherited;
  QrPessoa.Open;
  cod_sql := QrPessoa.SQL.GetText;
end;

end.
