inherited FrmPesqMaterial: TFrmPesqMaterial
  Caption = 'FrmPesqMaterial'
  ClientHeight = 565
  ClientWidth = 1062
  OnActivate = FormActivate
  OnShow = FormShow
  ExplicitWidth = 1074
  ExplicitHeight = 603
  TextHeight = 15
  inherited PnlTopo: TPanel
    Width = 1062
    ExplicitWidth = 1058
    DesignSize = (
      1058
      61)
    inherited Label2: TLabel
      Width = 144
      Caption = 'Pesquisa de Material'
      ExplicitWidth = 144
    end
    inherited BtnClose: TSpeedButton
      Left = 988
      ExplicitLeft = 992
    end
  end
  inherited PnlCentral: TPanel
    Width = 1062
    Height = 500
    ExplicitWidth = 1058
    ExplicitHeight = 499
    object BtnPesq: TSpeedButton
      Left = 739
      Top = 10
      Width = 23
      Height = 20
      Anchors = [akTop, akRight]
      ImageIndex = 1
      Images = ImageList1
      HotImageIndex = 1
      OnClick = BtnPesqClick
      ExplicitLeft = 743
    end
    object CbPesq: TComboBox
      Left = 2
      Top = 10
      Width = 145
      Height = 23
      ItemIndex = 0
      TabOrder = 0
      Text = 'C'#243'd. Material'
      Items.Strings = (
        'C'#243'd. Material'
        'Nome Material'
        'Ativo')
    end
    object EdtPesq: TEdit
      Left = 150
      Top = 10
      Width = 583
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      ExplicitWidth = 579
    end
    object Panel1: TPanel
      Left = 0
      Top = 56
      Width = 1062
      Height = 444
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 1058
      ExplicitHeight = 443
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1062
        Height = 444
        Align = alClient
        DataSource = DsPesqMaterial
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Title.Caption = 'C'#243'd. Material'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_PRODUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Title.Caption = 'Nome Material'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FL_ATIVO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Title.Caption = 'Ativo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_PRODUTO_REDU'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Title.Caption = 'Nome Reduzido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QN_ESTOQUE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Title.Caption = 'Estoque'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_PRODUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Title.Caption = 'Valor Material'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDADE_MEDIDA'
            Title.Caption = 'Unidade de Medida'
            Visible = True
          end>
      end
    end
    object Panel2: TPanel
      Left = 791
      Top = 7
      Width = 115
      Height = 30
      Anchors = [akTop, akRight]
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      ExplicitLeft = 787
      object btnNovo: TSpeedButton
        Left = 1
        Top = 1
        Width = 113
        Height = 28
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Novo'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnNovoClick
        ExplicitLeft = 21
        ExplicitTop = 23
        ExplicitWidth = 96
        ExplicitHeight = 51
      end
    end
    object Panel3: TPanel
      Left = 914
      Top = 7
      Width = 115
      Height = 30
      Anchors = [akTop, akRight]
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      ExplicitLeft = 910
      object btnEditar: TSpeedButton
        Left = 1
        Top = 1
        Width = 113
        Height = 28
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Editar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnEditarClick
        ExplicitLeft = 19
        ExplicitTop = 0
      end
    end
  end
  object QrPesqMaterial: TFDQuery
    Connection = Dm.FDconexao
    SQL.Strings = (
      
        'SELECT ID_PRODUTO, NM_PRODUTO, VL_PRODUTO, ID_FORNECEDOR, ID_UNI' +
        'MEDIDA, QN_ESTOQUE, QN_PESO, NM_OBS, FL_ATIVO, QN_CODBARRAS, QN_' +
        'PESO_BRUTO, QN_PESO_LIQ, NM_PRODUTO_REDU'
      'FROM PRODUTOS')
    Left = 728
    Top = 24
    object QrPesqMaterialID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrPesqMaterialNM_PRODUTO: TStringField
      FieldName = 'NM_PRODUTO'
      Origin = 'NM_PRODUTO'
      Required = True
      Size = 45
    end
    object QrPesqMaterialVL_PRODUTO: TFloatField
      FieldName = 'VL_PRODUTO'
      Origin = 'VL_PRODUTO'
    end
    object QrPesqMaterialID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
    object QrPesqMaterialID_UNIMEDIDA: TIntegerField
      FieldName = 'ID_UNIMEDIDA'
      Origin = 'ID_UNIMEDIDA'
    end
    object QrPesqMaterialQN_ESTOQUE: TIntegerField
      FieldName = 'QN_ESTOQUE'
      Origin = 'QN_ESTOQUE'
    end
    object QrPesqMaterialQN_PESO: TFloatField
      FieldName = 'QN_PESO'
      Origin = 'QN_PESO'
    end
    object QrPesqMaterialNM_OBS: TStringField
      FieldName = 'NM_OBS'
      Origin = 'NM_OBS'
      Size = 45
    end
    object QrPesqMaterialFL_ATIVO: TStringField
      FieldName = 'FL_ATIVO'
      Origin = 'FL_ATIVO'
      Size = 1
    end
    object QrPesqMaterialQN_CODBARRAS: TStringField
      FieldName = 'QN_CODBARRAS'
      Origin = 'QN_CODBARRAS'
      Size = 25
    end
    object QrPesqMaterialQN_PESO_BRUTO: TFloatField
      FieldName = 'QN_PESO_BRUTO'
      Origin = 'QN_PESO_BRUTO'
    end
    object QrPesqMaterialQN_PESO_LIQ: TFloatField
      FieldName = 'QN_PESO_LIQ'
      Origin = 'QN_PESO_LIQ'
    end
    object QrPesqMaterialNM_PRODUTO_REDU: TStringField
      FieldName = 'NM_PRODUTO_REDU'
      Origin = 'NM_PRODUTO_REDU'
      Size = 50
    end
    object QrPesqMaterialUNIDADE_MEDIDA: TStringField
      FieldKind = fkLookup
      FieldName = 'UNIDADE_MEDIDA'
      LookupDataSet = QrUniMed
      LookupKeyFields = 'ID_UNIDADE'
      LookupResultField = 'DESCRICAO_REDU'
      KeyFields = 'ID_UNIMEDIDA'
      Size = 10
      Lookup = True
    end
  end
  object DsPesqMaterial: TDataSource
    DataSet = QrPesqMaterial
    Left = 776
    Top = 24
  end
  object QrUniMed: TFDQuery
    Connection = Dm.FDconexao
    SQL.Strings = (
      'SELECT ID_UNIDADE, DESCRICAO, DESCRICAO_REDU'
      'FROM UNIDADE_MEDIDA ')
    Left = 504
    Top = 16
  end
  object DsUniMed: TDataSource
    DataSet = QrUniMed
    Left = 552
    Top = 16
  end
end
