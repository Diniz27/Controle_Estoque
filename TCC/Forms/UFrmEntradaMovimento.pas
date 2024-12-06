unit UFrmEntradaMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.SQLiteVDataSet, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Phys, Vcl.ComCtrls, Vcl.Menus;

type
  TFrmEntradaMovimento = class(TFrmPadrao)
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
    QrEntrada: TFDQuery;
    DsEntrada: TDataSource;
    QrTemp: TFDQuery;
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
    DsItem: TDataSource;
    QrEntradaItem: TFDQuery;
    DsEntradaItem: TDataSource;
    QrEntradaItemID_ENTRADA: TIntegerField;
    QrEntradaItemID_PRODUTO: TIntegerField;
    QrEntradaItemNM_PRODUTO: TStringField;
    QrEntradaItemNM_PRODUTO_REDU: TStringField;
    QrEntradaItemQN_QUANTIDADE: TSingleField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    Panel5: TPanel;
    SpeedButton3: TSpeedButton;
    PnlConfirma: TPanel;
    BtnConfirma: TSpeedButton;
    PnlCancela: TPanel;
    BtnCancela: TSpeedButton;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    BtnPesqItem: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BtnConfirmaItem: TSpeedButton;
    Panel7: TPanel;
    BtnCancelaItem: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label7: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    BtnPesq: TSpeedButton;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    QrEntradaID_ENTRADA: TIntegerField;
    QrEntradaID_PESSOA: TIntegerField;
    QrEntradaNM_RAZAOSOCIAL: TStringField;
    QrEntradaNM_REDUZIDO: TStringField;
    QrEntradaTIPO_PESSOA: TStringField;
    QrEntradaCPF_CNPJ: TStringField;
    QrEntradaRG_IE: TStringField;
    QrEntradaTIPO_MOVIMENTO: TStringField;
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnPesqClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure QrEntradaBeforePost(DataSet: TDataSet);
    procedure BtnPesqItemClick(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure QrItemAfterOpen(DataSet: TDataSet);
    procedure QrEntradaItemBeforePost(DataSet: TDataSet);
    procedure QrEntradaItemBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    var
      tipo :string;
    { Public declarations }
  end;

var
  FrmEntradaMovimento: TFrmEntradaMovimento;

implementation

{$R *.dfm}

uses UFrmPesqPessoaMovimento, UFrmPesqItem;

procedure TFrmEntradaMovimento.BtnCancelaClick(Sender: TObject);
begin
  inherited;
//  with QrTemp do
//  begin
//    Close;
//    SQL.Clear;
//    SQL.Text := 'SELECT ID_ENTRADA FROM ENTRADA_MATERIAL_ITEM WHERE ID_ENTRADA = ' + QrEntradaID_ENTRADA.AsString;
//    Open;
//  end;
//
//  if QrTemp.RecordCount > 0 then
//  begin
//    with QrTemp do
//    begin
//      Close;
//      SQL.Clear;
//      SQL.Text := 'DELETE FROM ENTRADA_MATERIAL_ITEM WHERE ID_ENTRADA = ' + QrEntradaID_ENTRADA.AsString;
//      ExecSQL;
//    end;
//  end;
//
//
//
////  if QrEntrada.State in [DsEdit, DsInsert] then
//  QrEntrada.Cancel;
//  QrEntradaItem.Cancel;

  if QrEntrada.State in [DsEdit, DsInsert] then
    QrEntrada.Cancel;
  QrEntrada.Refresh;

  if QrEntradaItem.State in [DsEdit, DsInsert] then
    QrEntradaItem.Cancel;
  QrEntradaItem.Refresh;


  Close;
end;

procedure TFrmEntradaMovimento.BtnConfirmaClick(Sender: TObject);
begin
  inherited;
  try
    if PageControl1.ActivePageIndex = 0 then
    begin
      if not QrEntrada.Connection.InTransaction then
        QrEntrada.Connection.StartTransaction;

      QrEntrada.Connection.Commit;
//      QrEntrada.Refresh;

      if Tipo = 'E' then
        QrEntradaItem.Edit
      Else
      if tipo = 'I' then
        QrEntradaItem.Insert;

      QrEntradaItem.Refresh;

      PageControl1.ActivePageIndex := 1;
    end
    else
    if PageControl1.ActivePageIndex = 1 then
    begin
      if not QrEntradaItem.Connection.InTransaction then
        QrEntradaItem.Connection.StartTransaction;

      QrEntradaItem.Connection.Commit;
      QrEntradaItem.Refresh;
    end;

    MessageDlg('Informação adicionada / editada com sucesso.', mtConfirmation, [mbOk], 0);
  finally
    BtnCancela.Enabled := False;
//    Close;
  end;
end;

procedure TFrmEntradaMovimento.BtnPesqClick(Sender: TObject);
begin
  inherited;
  Try
    if DBRadioGroup1.ItemIndex = -1 then
    begin
      MessageDlg('Necessário escolher o tipo de movimentação.', mtConfirmation, [mbOk], 0);
      Exit;
    end;


    FrmPesqPessoaMovimento := TFrmPesqPessoaMovimento.Create(Self);
    FrmPesqPessoaMovimento.ShowModal;

    QrEntradaID_PESSOA.Value := FrmPesqPessoaMovimento.QrPessoaID_PESSOA.Value;
    QrEntradaNM_RAZAOSOCIAL.Value := FrmPesqPessoaMovimento.QrPessoaNM_RAZAOSOCIAL.Value;
    QrEntradaNM_REDUZIDO.Value := FrmPesqPessoaMovimento.QrPessoaNM_REDUZIDO.Value;
    QrEntradaCPF_CNPJ.Value := FrmPesqPessoaMovimento.QrPessoaCPF_CNPJ.Value;
    QrEntradaRG_IE.Value := FrmPesqPessoaMovimento.QrPessoaRG_IE.Value;

    ShowMessage(QrEntradaTIPO_MOVIMENTO.AsString);

    QrEntrada.Post;
  except
    FrmPesqPessoaMovimento.Free;
  End;
end;

procedure TFrmEntradaMovimento.DBEdit2Change(Sender: TObject);
begin
  inherited;
  if DBEdit2.Text <> '' then
    DBEdit5.ReadOnly := False
  else
    DBEdit5.ReadOnly := True;
end;

procedure TFrmEntradaMovimento.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if QrEntradaItem.State in [dsBrowse] then
    QrEntradaItem.Insert;

  QrEntradaItemID_ENTRADA.Value := QrEntradaID_ENTRADA.Value;
  QrEntradaItemID_PRODUTO.Value := QrItemID_PRODUTO.Value;
  QrEntradaItemNM_PRODUTO.Value := QrItemNM_PRODUTO.Value;
  QrEntradaItemNM_PRODUTO_REDU.Value := QrItemNM_PRODUTO_REDU.Value;

  QrEntradaItem.Post;

  if not QrEntradaItem.Connection.InTransaction then
      QrEntradaItem.Connection.StartTransaction;

    QrEntradaItem.Connection.Commit;

  if MessageDlg('Deseja adicionar mais Itens?', mtConfirmation, [mbYes, mbNo], 0 ) = mrNo then
  begin
    BtnPesqItem.Enabled := False;
    DBEdit5.ReadOnly := True;
    QrItem.Close;
  end;
end;

procedure TFrmEntradaMovimento.FormShow(Sender: TObject);
var
  pages :Integer;
begin
  inherited;

  for pages := 0 to PageControl1.PageCount - 1 do
  begin
    PageControl1.Pages[pages].TabVisible := False;
  end;

  PageControl1.ActivePageIndex := 0;
  SpeedButton1.Enabled := False;

  QrEntrada.Open;
  QrEntradaItem.Open;
end;

procedure TFrmEntradaMovimento.QrEntradaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if QrEntrada.State in [dsBrowse, dsEdit] then
    Exit;

  with QrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT max(ID_ENTRADA) FROM ENTRADA_MATERIAL';
    Open;
  end;

  QrEntradaID_ENTRADA.AsInteger := QrTemp.FieldByName('MAX').AsInteger + 1;
end;

procedure TFrmEntradaMovimento.QrEntradaItemBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  QrEntradaItem.ParamByName('ID_ENTRADA').Value := QrEntradaID_ENTRADA.Value;
end;

procedure TFrmEntradaMovimento.QrEntradaItemBeforePost(DataSet: TDataSet);
begin
  inherited;
  if QrEntradaItem.Eof then
    Exit;

  if (QrItemID_PRODUTO.IsNull) or (QrEntradaID_ENTRADA.IsNull) then
    Exit;

  with QrTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT ID_PRODUTO          ' +
                'FROM ENTRADA_MATERIAL_ITEM ' +
                'WHERE ID_ENTRADA =         ' + QrEntradaID_ENTRADA.AsString +
                '      AND ID_PRODUTO =     ' + QrItemID_PRODUTO.AsString;
    Open;
  end;

  if QrTemp.RecordCount > 0 then
  begin
    MessageDlg('Produto já adicionado.', mtConfirmation, [mbOk], 0);

    if QrEntradaItem.State in [DsEdit, DsInsert] then
      QrEntradaItem.Cancel;
    QrEntradaItem.Refresh;
    Exit;
  end;

end;

procedure TFrmEntradaMovimento.QrItemAfterOpen(DataSet: TDataSet);
begin
  inherited;
  QrEntradaItemID_PRODUTO.Value := QrItemID_PRODUTO.Value;
  QrEntradaItemNM_PRODUTO.Value := QrItemNM_PRODUTO.Value;
  QrEntradaItemNM_PRODUTO_REDU.Value := QrItemNM_PRODUTO_REDU.Value;
end;

procedure TFrmEntradaMovimento.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  SpeedButton1.Enabled := False;
  SpeedButton4.Enabled := True;
end;

procedure TFrmEntradaMovimento.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 1;
  SpeedButton4.Enabled := False;
  SpeedButton1.Enabled := True;
end;

procedure TFrmEntradaMovimento.BtnPesqItemClick(Sender: TObject);
begin
  inherited;

  try
    if DBEdit6.Text = '' then
    begin
      MessageDlg('Necessário preencher os dados do fornecedor antes.', mtConfirmation, [mbOk], 0);
      DBEdit6.SetFocus;
      Exit;
    end;

    if Tipo = 'E' then
      QrEntradaItem.Edit
    Else
    if tipo = 'I' then
      QrEntradaItem.Insert;

    Try
      FrmPesqItem := TFrmPesqItem.Create(Self);
      FrmPesqItem.ShowModal;
    except
      FrmPesqItem.Free;
    End;

  finally
    DBEdit5.SetFocus;
  end;
end;

end.
