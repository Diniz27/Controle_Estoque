unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, Vcl.Buttons,
  Vcl.CustomizeDlg, Vcl.ComCtrls, UFrmPesqPessoas, UFrmPesqMaterial;

type
  TFrmPrincipal = class(TForm)
    PnlTopo: TPanel;
    ImageList1: TImageList;
    BtnConf: TSpeedButton;
    BtnUsuario: TSpeedButton;
    Image3: TImage;
    Label3: TLabel;
    Panel1: TPanel;
    Panel5: TPanel;
    PnlMaterial: TPanel;
    LblMaterial: TLabel;
    Image1: TImage;
    Panel3: TPanel;
    BtnMaterial: TSpeedButton;
    PnlProduto: TPanel;
    LblEntradaSaida: TLabel;
    Image2: TImage;
    Panel2: TPanel;
    BtnEntradaSaida: TSpeedButton;
    PnlPessoa: TPanel;
    LblPessoa: TLabel;
    Image4: TImage;
    Panel4: TPanel;
    BtnPessoa: TSpeedButton;
    procedure PedVendClick(Sender: TObject);
    procedure BtnMaterialClick(Sender: TObject);
    procedure BtnEntradaSaidaClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure BtnUsuarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure EsconderPainel;
    procedure MostrarPainel;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UDm, UFrmLogin, UFrmPessoas;

procedure TFrmPrincipal.BtnPessoaClick(Sender: TObject);
begin
  try
    EsconderPainel;
    FrmPesqPessoas := TFrmPesqPessoas.Create(Self);
    FrmPesqPessoas.Show;
  except
    FrmPesqPessoas.Free;
  end;
end;

procedure TFrmPrincipal.BtnMaterialClick(Sender: TObject);
begin
  Try
    EsconderPainel;
    FrmPesqMaterial := TFrmPesqMaterial.Create(Self);
    FrmPesqMaterial.Show;
  except
    FrmPesqMaterial.Free;
  End;
end;

procedure TFrmPrincipal.BtnEntradaSaidaClick(Sender: TObject);
begin
//  Try
//    EsconderPainel;
//    FrmPesqMaterial := TFrmPesqMaterial.Create(Self);
//    FrmPesqMaterial.Show;
//  except
//    FrmPesqMaterial.Free;
//  End;
end;

procedure TFrmPrincipal.BtnUsuarioClick(Sender: TObject);
begin
  try

  finally

  end;
end;

procedure TFrmPrincipal.EsconderPainel;
var
  i: Integer;
  Panel: TPanel;
begin
  for i := 0 to ControlCount - 1 do
  begin
    if Controls[i] is TPanel then
    begin
      Panel := TPanel(Controls[i]);
      Panel.Visible := False;
    end;
  end;
end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
var
  CenterX, CenterY: Integer;
begin
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
var
  CenterX, CenterY: Integer;
begin
  Panel5.Left := (Panel1.Width div 4) - (Panel5.Width div 2);

  Panel5.Top := (Panel1.Height - Panel5.Height) div 2;

  CenterX := Panel1.Width div 2;
  CenterY := Panel1.Height div 2;

end;

procedure TFrmPrincipal.MostrarPainel;
var
  i: Integer;
  Panel: TPanel;
begin
  for i := 0 to ControlCount - 1 do
  begin
    if Controls[i] is TPanel then
    begin
      Panel := TPanel(Controls[i]);
      Panel.Visible := True;
    end;
  end;
end;

procedure TFrmPrincipal.PedVendClick(Sender: TObject);
begin
  Try
//    FrmPedVend := TFrmPedVend.Create(Self);
//    FrmPedVend.Show;
  except
//    FrmPedVend.Free;
  End;
end;

end.
