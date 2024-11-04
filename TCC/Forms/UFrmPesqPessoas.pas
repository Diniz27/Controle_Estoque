{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit UFrmPesqPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, System.ImageList, Vcl.ImgList, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, UFrmCadPessoas;

type
  TFrmPesqPessoas = class(TFrmPadrao)
    BtnPesq: TSpeedButton;
    CbPesq: TComboBox;
    QryPesq: TFDQuery;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DsPesq: TDataSource;
    EdtPesq: TEdit;
    Panel2: TPanel;
    btnNovo: TSpeedButton;
    Panel3: TPanel;
    btnEditar: TSpeedButton;
    procedure BtnPesqClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure btnNovoClick(Sender: TObject);

    procedure btnEditarClick(Sender: TObject);
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
  if EdtPesq.Text = '' then
    Exit;


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
                  'FROM PESSOAS a '+
                  'WHERE '+
                  'a.ID_PESSOA = :ID_PESSOA';
      ParamByName('ID_PESSOA').AsInteger := StrToInt(EdtPesq.Text);
      Open;
    end;
  end
  else if CbPesq.ItemIndex = 1 then
  begin
    with QryPesq do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT a.ID_PESSOA, a.NM_TIPOPESSOA, a.DT_CADASTRO, a.FL_PF_PJ, '+
                  'a.NM_RAZAOSOCIAL, a.NM_REDUZIDO, a.CPF_CNPJ, a.RG_IE, a.NM_CONSUMIDOR, '+
                  'a.CEP, a.NM_LOGRADOURO, a.NM_NUMERO, a.NM_COMPLEMENTO, a.NM_BAIRRO, '+
                  'a.ID_IBGE, a.NM_CIDADE, a.NM_ESTADO, a.NM_TELEFONE1, a.NM_TELEFONE2, a.NM_EMAIL '+
                  'FROM PESSOAS a '+
                  'WHERE '+
                  'a.NM_RAZAOSOCIAL LIKE (''% :NM_RAZAOSOCIAL %'')';
      ParamByName('NM_RAZAOSOCIAL').AsString := EdtPesq.Text;
      Open;
    end;
  end;

end;

procedure TFrmPesqPessoas.FormShow(Sender: TObject);
begin
  inherited;
  QryPesq.Open;

end;

procedure TFrmPesqPessoas.btnNovoClick(Sender: TObject);
begin
  try
    FrmCadPessoas := TFrmCadPessoas.Create(Self);
    FrmCadPessoas.Qry.Insert;
    FrmCadPessoas.Show;
  except
    FrmCadPessoas.Free;
  end;
end;

procedure TFrmPesqPessoas.btnEditarClick(Sender: TObject);
begin
  try
    FrmCadPessoas := TFrmCadPessoas.Create(Self);
    FrmCadPessoas.Qry.Edit;
    FrmCadPessoas.Show;
  except
    FrmCadPessoas.Free;
  end;

end;

end.
