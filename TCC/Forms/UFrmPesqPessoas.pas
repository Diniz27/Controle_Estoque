unit UFrmPesqPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, System.ImageList, Vcl.ImgList, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TFrmPesqPessoas = class(TFrmPadrao)
    DBEdit1: TDBEdit;
    BtnPesq: TSpeedButton;
    CbPesq: TComboBox;
    QryPesq: TFDQuery;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DsPesq: TDataSource;
    procedure BtnPesqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqPessoas: TFrmPesqPessoas;

implementation

{$R *.dfm}

procedure TFrmPesqPessoas.BtnPesqClick(Sender: TObject);
begin
  inherited;
  if CbPesq.ItemIndex = 0 then
  begin
    with QryPesq do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT a.ID_PESSOA, a.NM_TIPOPESSOA, a.DT_CADASTRO, a.FL_PF_PJ, '+
                  'a.NM_RAZAOSOCIAL, a.NM_REDUZIDO, a.CPF_CNPJ, a.RG_IE, a.NM_CONSUMIDOR, '+
                  'a.CEP, a.NM_LOGRADOURO, a.NM_NUMERO, a.NM_COMPLEMENTO, a.NM_BAIRRO, '+
                  'a.ID_IBGE, a.NM_CIDADE, a.NM_ESTADO, a.NM_TELEFONE1, a.NM_TELEFONE2, a.NM_EMAIL '+
                  'FROM PESSOAS a ';
      Open;
    end;
  end;

end;

end.
