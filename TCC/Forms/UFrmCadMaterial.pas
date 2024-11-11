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
    QrTemp: TFDQuery;
    QrMaterialID_PRODUTO: TIntegerField;
    QrMaterialNM_PRODUTO: TStringField;
    QrMaterialVL_PRODUTO: TFloatField;
    QrMaterialID_FORNECEDOR: TIntegerField;
    QrMaterialID_UNIMEDIDA: TIntegerField;
    QrMaterialQN_ESTOQUE: TIntegerField;
    QrMaterialQN_PESO: TFloatField;
    QrMaterialNM_OBS: TStringField;
    QrMaterialFL_ATIVO: TStringField;
    QrMaterialQN_CODBARRAS: TStringField;
    QrMaterialQN_PESO_BRUTO: TFloatField;
    QrMaterialQN_PESO_LIQ: TFloatField;
    QrMaterialNM_PRODUTO_REDU: TStringField;

    procedure btnConfirmaClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure QrMaterialBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
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

    if not QrMaterial.Connection.InTransaction then
      QrMaterial.Connection.StartTransaction;

    QrMaterial.Connection.Commit;

    QrMaterial.Refresh;

    MessageDlg('Informação adicionada / editada com sucesso.', mtConfirmation, [mbOk], 0);
  finally
    BtnCancela.Enabled := False;
    Close;
  end;

end;

procedure TFrmCadMaterial.FormShow(Sender: TObject);
begin
  inherited;
//  QrMaterial.ParamByName('ID_PRODUTO').Value := FrmPesqMaterial.QrPesqMaterial.FieldByName('ID_PRODUTO').Value;
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
    QrMaterial.Cancel;
  QrMaterial.Refresh;

  Close;
end;


end.
