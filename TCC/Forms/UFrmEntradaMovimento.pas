unit UFrmEntradaMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmEntradaMovimento = class(TFrmPadrao)
    PnlCancela: TPanel;
    BtnCancela: TSpeedButton;
    PnlConfirma: TPanel;
    BtnConfirma: TSpeedButton;
    Panel1: TPanel;
    LblCPFCNPJ: TLabel;
    EdtCPFCNPJ: TDBEdit;
    LblRGIE: TLabel;
    EdtRGIE: TDBEdit;
    LblNome: TLabel;
    EdtNome: TDBEdit;
    LblNomeRedu: TLabel;
    EdtNomeRed: TDBEdit;
    Label1: TLabel;
    Panel2: TPanel;
    Label8: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    BtnPesq: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
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
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnPesqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEntradaMovimento: TFrmEntradaMovimento;

implementation

{$R *.dfm}

uses UFrmPesqFornecedor;

procedure TFrmEntradaMovimento.BtnCancelaClick(Sender: TObject);
begin
  inherited;
//  if QrMaterial.State in [DsEdit, DsInsert] then
//    QrMaterial.Cancel;
//  QrMaterial.Refresh;

  Close;
end;

procedure TFrmEntradaMovimento.BtnPesqClick(Sender: TObject);
begin
  inherited;
  Try
    FrmPesqFornecedor := TFrmPesqFornecedor.Create(Self);
    FrmPesqFornecedor.ShowModal;
  except
    FrmPesqFornecedor.Free;
  End;
end;

end.
