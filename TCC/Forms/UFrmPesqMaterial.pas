unit UFrmPesqMaterial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, UFrmCadMaterial, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
    QrPesqMaterial: TFDQuery;
    DsPesqMaterial: TDataSource;
    QrPesqMaterialID_PRODUTO: TIntegerField;
    QrPesqMaterialNM_PRODUTO: TStringField;
    QrPesqMaterialVL_PRODUTO: TFloatField;
    QrPesqMaterialID_FORNECEDOR: TIntegerField;
    QrPesqMaterialID_UNIMEDIDA: TIntegerField;
    QrPesqMaterialQN_ESTOQUE: TIntegerField;
    QrPesqMaterialQN_PESO: TFloatField;
    QrPesqMaterialNM_OBS: TStringField;
    QrPesqMaterialFL_ATIVO: TStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure BtnPesqClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqMaterial: TFrmPesqMaterial;

implementation

{$R *.dfm}

procedure TFrmPesqMaterial.btnEditarClick(Sender: TObject);
begin
  inherited;
  Try
    FrmCadMaterial := TFrmCadMaterial.Create(Self);
    FrmCadMaterial.QrMaterial.Edit;
    FrmCadMaterial.Show;
  except
    FrmCadMaterial.Free;
  End;
end;

procedure TFrmPesqMaterial.btnNovoClick(Sender: TObject);
begin
  inherited;
  Try
    FrmCadMaterial := TFrmCadMaterial.Create(Self);
    FrmCadMaterial.QrMaterial.Insert;
    FrmCadMaterial.Show;
  except
    FrmCadMaterial.Free;
  End;
end;

procedure TFrmPesqMaterial.BtnPesqClick(Sender: TObject);
begin
  inherited;
  if EdtPesq.Text = '' then
    Exit;


  if CbPesq.ItemIndex = 0 then
  begin
    with QrPesqMaterial do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT a.ID_PRODUTO, a.FL_ATIVO, a.NM_PRODUTO, '+
                  'a.NM_PRODUTO_REDU, a.VL_PRODUTO, a.ID_FORNECEDOR, '+
                  'a.ID_UNIMEDIDA, a.QN_ESTOQUE, a.QN_PESO_LIQ, '+
                  'a.NM_OBS, a.QN_CODBARRAS, a.QN_PESO_BRUTO '+
                  'FROM PRODUTOS a '+
                  'WHERE '+
                  'a.ID_PRODUTO = :ID_PRODUTO';
      ParamByName('ID_PRODUTO').AsInteger := StrToInt(EdtPesq.Text);
      Open;
    end;
  end
  else if CbPesq.ItemIndex = 1 then
  begin
    with QrPesqMaterial do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT a.ID_PRODUTO, a.FL_ATIVO, a.NM_PRODUTO, '+
                  'a.NM_PRODUTO_REDU, a.VL_PRODUTO, a.ID_FORNECEDOR, '+
                  'a.ID_UNIMEDIDA, a.QN_ESTOQUE, a.QN_PESO_LIQ, '+
                  'a.NM_OBS, a.QN_CODBARRAS, a.QN_PESO_BRUTO '+
                  'FROM PRODUTOS a '+
                  'WHERE '+
                  'a.NM_PRODUTO LIKE (''% :NM_PRODUTO %'')';
      ParamByName('NM_PRODUTO').AsString := EdtPesq.Text;
      Open;
    end;
  end;
end;

procedure TFrmPesqMaterial.FormActivate(Sender: TObject);
begin
  inherited;
  QrPesqMaterial.Refresh;
  DBGrid1.Refresh;
end;

procedure TFrmPesqMaterial.FormShow(Sender: TObject);
begin
  inherited;
  QrPesqMaterial.Open;
end;

end.
