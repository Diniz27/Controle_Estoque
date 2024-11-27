inherited FrmEntradaMovimento: TFrmEntradaMovimento
  Caption = 'FrmEntradaMovimento'
  ClientHeight = 640
  ClientWidth = 973
  ExplicitWidth = 985
  ExplicitHeight = 678
  TextHeight = 15
  inherited PnlTopo: TPanel
    Width = 973
    ExplicitWidth = 834
    inherited Label2: TLabel
      Width = 137
      Caption = 'Entrada de Material'
      ExplicitWidth = 137
    end
    inherited BtnClose: TSpeedButton
      Left = 899
    end
  end
  inherited PnlCentral: TPanel
    Width = 973
    Height = 575
    ExplicitWidth = 834
    ExplicitHeight = 375
    object Label1: TLabel
      Left = 18
      Top = 21
      Width = 79
      Height = 20
      Caption = 'Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 18
      Top = 213
      Width = 35
      Height = 20
      Caption = 'Itens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PnlCancela: TPanel
      Left = 831
      Top = 6
      Width = 97
      Height = 35
      Anchors = [akTop, akRight]
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 894
      object BtnCancela: TSpeedButton
        Left = 1
        Top = 1
        Width = 95
        Height = 33
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Cancelar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnCancelaClick
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
    object PnlConfirma: TPanel
      Left = 720
      Top = 6
      Width = 102
      Height = 35
      Anchors = [akTop, akRight]
      Color = clHighlight
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 783
      object BtnConfirma: TSpeedButton
        Left = 1
        Top = 1
        Width = 100
        Height = 33
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Confirmar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 56
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 47
      Width = 971
      Height = 162
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      ExplicitWidth = 1034
      object LblCPFCNPJ: TLabel
        Left = 18
        Top = 89
        Width = 31
        Height = 17
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblRGIE: TLabel
        Left = 262
        Top = 89
        Width = 11
        Height = 17
        Caption = 'IE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblNome: TLabel
        Left = 18
        Top = 17
        Width = 76
        Height = 17
        Caption = 'Raz'#227'o Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblNomeRedu: TLabel
        Left = 536
        Top = 17
        Width = 92
        Height = 17
        Caption = 'Nome Fantasia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BtnPesq: TSpeedButton
        Left = 492
        Top = 42
        Width = 24
        Height = 20
        ImageIndex = 1
        Images = ImageList1
        HotImageIndex = 1
        OnClick = BtnPesqClick
      end
      object EdtCPFCNPJ: TDBEdit
        Left = 18
        Top = 112
        Width = 225
        Height = 25
        DataField = 'CPF_CNPJ'
        DataSource = DsFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object EdtRGIE: TDBEdit
        Left = 262
        Top = 112
        Width = 225
        Height = 25
        DataField = 'RG_IE'
        DataSource = DsFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object EdtNome: TDBEdit
        Left = 18
        Top = 40
        Width = 469
        Height = 25
        DataField = 'NM_RAZAOSOCIAL'
        DataSource = DsFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EdtNomeRed: TDBEdit
        Left = 520
        Top = 40
        Width = 406
        Height = 25
        DataField = 'NM_REDUZIDO'
        DataSource = DsFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 239
      Width = 971
      Height = 82
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      ExplicitWidth = 1034
      object Label3: TLabel
        Left = 16
        Top = 9
        Width = 60
        Height = 17
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 536
        Top = 9
        Width = 120
        Height = 17
        Caption = 'Descri'#231#227'o Reduzida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 814
        Top = 9
        Width = 87
        Height = 17
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 493
        Top = 34
        Width = 23
        Height = 20
        ImageIndex = 1
        Images = ImageList1
        HotImageIndex = 1
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 471
        Height = 25
        DataField = 'NM_PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 536
        Top = 32
        Width = 257
        Height = 25
        DataField = 'NM_PRODUTO_REDU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 814
        Top = 32
        Width = 111
        Height = 25
        DataField = 'QN_ESTOQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 350
      Width = 973
      Height = 225
      Align = alBottom
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object QrFornecedor: TFDQuery
    Connection = Dm.FDconexao
    SQL.Strings = (
      'SELECT '
      
        '    ID_PESSOA, ID_TIPOPESSOA, DT_CADASTRO, FL_PF_PJ, NM_RAZAOSOC' +
        'IAL, '
      
        '    NM_REDUZIDO, CPF_CNPJ, RG_IE, CEP, NM_LOGRADOURO, NM_NUMERO,' +
        ' '
      '    NM_COMPLEMENTO, NM_BAIRRO, ID_IBGE, NM_CIDADE, NM_ESTADO, '
      
        '    NM_TELEFONE1, NM_TELEFONE2, NM_EMAIL, NEW_TABLECOL, ID_CRACH' +
        'A'
      'FROM PESSOAS'
      'WHERE'
      '    ID_TIPOPESSOA = 2'
      '    AND ID_PESSOA = :ID_PESSOA')
    Left = 488
    Top = 16
    ParamData = <
      item
        Name = 'ID_PESSOA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QrFornecedorID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrFornecedorID_TIPOPESSOA: TIntegerField
      FieldName = 'ID_TIPOPESSOA'
      Origin = 'ID_TIPOPESSOA'
    end
    object QrFornecedorDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
    end
    object QrFornecedorFL_PF_PJ: TIntegerField
      FieldName = 'FL_PF_PJ'
      Origin = 'FL_PF_PJ'
      Required = True
    end
    object QrFornecedorNM_RAZAOSOCIAL: TStringField
      FieldName = 'NM_RAZAOSOCIAL'
      Origin = 'NM_RAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object QrFornecedorNM_REDUZIDO: TStringField
      FieldName = 'NM_REDUZIDO'
      Origin = 'NM_REDUZIDO'
      Size = 85
    end
    object QrFornecedorCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Required = True
      Size = 14
    end
    object QrFornecedorRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      Required = True
      Size = 45
    end
    object QrFornecedorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 45
    end
    object QrFornecedorNM_LOGRADOURO: TStringField
      FieldName = 'NM_LOGRADOURO'
      Origin = 'NM_LOGRADOURO'
      Required = True
      Size = 100
    end
    object QrFornecedorNM_NUMERO: TIntegerField
      FieldName = 'NM_NUMERO'
      Origin = 'NM_NUMERO'
    end
    object QrFornecedorNM_COMPLEMENTO: TStringField
      FieldName = 'NM_COMPLEMENTO'
      Origin = 'NM_COMPLEMENTO'
      Size = 100
    end
    object QrFornecedorNM_BAIRRO: TStringField
      FieldName = 'NM_BAIRRO'
      Origin = 'NM_BAIRRO'
      Required = True
      Size = 100
    end
    object QrFornecedorID_IBGE: TIntegerField
      FieldName = 'ID_IBGE'
      Origin = 'ID_IBGE'
      Required = True
    end
    object QrFornecedorNM_CIDADE: TStringField
      FieldName = 'NM_CIDADE'
      Origin = 'NM_CIDADE'
      Required = True
      Size = 100
    end
    object QrFornecedorNM_ESTADO: TStringField
      FieldName = 'NM_ESTADO'
      Origin = 'NM_ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QrFornecedorNM_TELEFONE1: TStringField
      FieldName = 'NM_TELEFONE1'
      Origin = 'NM_TELEFONE1'
      Required = True
      Size = 45
    end
    object QrFornecedorNM_TELEFONE2: TStringField
      FieldName = 'NM_TELEFONE2'
      Origin = 'NM_TELEFONE2'
      Size = 45
    end
    object QrFornecedorNM_EMAIL: TStringField
      FieldName = 'NM_EMAIL'
      Origin = 'NM_EMAIL'
      Size = 100
    end
    object QrFornecedorNEW_TABLECOL: TStringField
      FieldName = 'NEW_TABLECOL'
      Origin = 'NEW_TABLECOL'
      Size = 45
    end
    object QrFornecedorID_CRACHA: TIntegerField
      FieldName = 'ID_CRACHA'
      Origin = 'ID_CRACHA'
    end
  end
  object DsFornecedor: TDataSource
    DataSet = QrFornecedor
    Left = 536
    Top = 16
  end
end
