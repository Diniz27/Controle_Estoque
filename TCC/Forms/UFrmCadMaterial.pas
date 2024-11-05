unit UFrmCadMaterial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmCadMaterial = class(TFrmPadrao)
    PnlCancela: TPanel;
    BtnCancela: TSpeedButton;
    PnlConfirma: TPanel;
    BtnConfirma: TSpeedButton;
    Label1: TLabel;
    Panel1: TPanel;
    LblNome: TLabel;
    LblNomeRedu: TLabel;
    EdtNome: TDBEdit;
    EdtNomeRed: TDBEdit;
    RgAtivo: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    DbCbUnidadeMedida: TDBLookupComboBox;
    QrUniMed: TFDQuery;
    DsUniMed: TDataSource;
    QrMaterial: TFDQuery;
    DsMaterial: TDataSource;
    QrMaterialID_PRODUTO: TIntegerField;
    QrMaterialFL_ATIVO: TStringField;
    QrMaterialNM_PRODUTO: TStringField;
    QrMaterialNM_PRODUTO_REDU: TStringField;
    QrMaterialVL_PRODUTO: TFloatField;
    QrMaterialID_FORNECEDOR: TIntegerField;
    QrMaterialID_UNIMEDIDA: TIntegerField;
    QrMaterialQN_ESTOQUE: TIntegerField;
    QrMaterialQN_PESO_LIQ: TFloatField;
    QrMaterialNM_OBS: TStringField;
    QrMaterialQN_CODBARRAS: TIntegerField;
    QrMaterialQN_PESO_BRUTO: TFloatField;
    QrTemp: TFDQuery;

    procedure btnConfirmaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure QrMaterialBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadMaterial: TFrmCadMaterial;

implementation

{$R *.dfm}

uses UFrmPesqMaterial;

procedure TFrmCadMaterial.btnConfirmaClick(Sender: TObject);
begin
  try
    QrMaterial.Post;
    QrMaterial.CommitUpdates;
    QrMaterial.ApplyUpdates;
    QrMaterial.Refresh;
  finally
    MessageDlg('Informação adicionada / editada com sucesso.', mtConfirmation, [mbOk], 0);
    BtnCancela.Enabled := False;

    Close;
  end;
end;

procedure TFrmCadMaterial.FormCreate(Sender: TObject);
begin
  inherited;
  QrMaterial.ParamByName('ID_PRODUTO').Value := FrmPesqMaterial.QrPesqMaterial.FieldByName('ID_PRODUTO').Value;
  QrMaterial.Open;

  QrUniMed.Open;
end;

procedure TFrmCadMaterial.QrMaterialBeforePost(DataSet: TDataSet);
begin
  inherited;
  if QrMaterial.State in [dsBrowse, dsEdit] then
    Exit;

  with QrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT max(ID_PRODUTO) FROM PRODUTOS';
    Open;
  end;

  QrMaterialID_PRODUTO.AsInteger := QrTemp.FieldByName('MAX').AsInteger + 1;
end;

procedure TFrmCadMaterial.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  if QrMaterial.State in [DsEdit, DsInsert] then
    QrMaterial.CancelUpdates;
  QrMaterial.Refresh;

  Close;
end;


end.
