unit UFrmPesqMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus;

type
  TFrmPesqMovimento = class(TFrmPadrao)
    QryPesq: TFDQuery;
    DsPesq: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    ConfirmarSaida1: TMenuItem;
    CbPesq: TComboBox;
    EdtPesq: TEdit;
    BtnPesq: TSpeedButton;
    Panel3: TPanel;
    btnEditar: TSpeedButton;
    Panel4: TPanel;
    btnNovo: TSpeedButton;
    QryPesqID_ENTRADA: TIntegerField;
    QryPesqID_FORNECEDOR: TIntegerField;
    QryPesqNM_FORNECEDOR: TStringField;
    QryPesqNM_FANTASIA: TStringField;
    QryPesqCNPJ: TStringField;
    QryPesqIE: TStringField;
    QryPesqTIPO_MOVIMENTO: TStringField;

    procedure btnNovoEntradaClick(Sender: TObject);

    procedure SpeedButton1Click(Sender: TObject);

    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqMovimento: TFrmPesqMovimento;

implementation

{$R *.dfm}

uses UFrmEntradaMovimento;

procedure TFrmPesqMovimento.btnEditarClick(Sender: TObject);
begin
  inherited;
  Try
    FrmEntradaMovimento := TFrmEntradaMovimento.Create(Self);
    FrmEntradaMovimento.QrEntrada.Edit;
    FrmEntradaMovimento.tipo := 'E';
    FrmEntradaMovimento.Show;
  except
    FrmEntradaMovimento.Free;
  End;
end;

procedure TFrmPesqMovimento.btnNovoEntradaClick(Sender: TObject);
begin
  Try
    FrmEntradaMovimento := TFrmEntradaMovimento.Create(Self);
    FrmEntradaMovimento.QrEntrada.Insert;
    FrmEntradaMovimento.tipo := 'I';
    FrmEntradaMovimento.Show;
  except
    FrmEntradaMovimento.Free;
  End;
end;

procedure TFrmPesqMovimento.FormActivate(Sender: TObject);
begin
  inherited;
  QryPesq.Refresh;
  DBGrid1.Refresh;
end;

procedure TFrmPesqMovimento.FormShow(Sender: TObject);
begin
  inherited;
  QryPesq.Open;
end;

procedure TFrmPesqMovimento.SpeedButton1Click(Sender: TObject);
begin
  Try
//    EsconderPainel;
//    FrmProdutos := TFrmProdutos.Create(Self);
//    FrmProdutos.Show;
  except
//    FrmProdutos.Free;
  End;
end;

procedure TFrmPesqMovimento.SpeedButton2Click(Sender: TObject);
begin
  Try
//    EsconderPainel;
//    FrmProdutos := TFrmProdutos.Create(Self);
//    FrmProdutos.Show;
  except
//    FrmProdutos.Free;
  End;
end;

end.
