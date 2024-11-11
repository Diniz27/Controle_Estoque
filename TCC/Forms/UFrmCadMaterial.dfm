inherited FrmCadMaterial: TFrmCadMaterial
  Caption = 'FrmCadMaterial'
  ClientHeight = 650
  ClientWidth = 992
  OnShow = FormShow
  ExplicitWidth = 1004
  ExplicitHeight = 688
  TextHeight = 15
  inherited PnlTopo: TPanel
    Width = 992
    ExplicitWidth = 988
    inherited Label2: TLabel
      Width = 113
      Caption = 'Cad. de Material'
      ExplicitWidth = 113
    end
    inherited BtnClose: TSpeedButton
      Left = 918
      ExplicitLeft = 922
    end
  end
  inherited PnlCentral: TPanel
    Width = 992
    Height = 585
    ExplicitWidth = 988
    ExplicitHeight = 584
    object Label1: TLabel
      Left = 18
      Top = 21
      Width = 92
      Height = 20
      Caption = 'Dados Gerais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PnlCancela: TPanel
      Left = 851
      Top = 6
      Width = 97
      Height = 35
      Anchors = [akTop, akRight]
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 847
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
      Left = 748
      Top = 6
      Width = 97
      Height = 35
      Anchors = [akTop, akRight]
      Color = clHighlight
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 744
      object BtnConfirma: TSpeedButton
        Left = 1
        Top = 1
        Width = 95
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
        OnClick = btnConfirmaClick
        ExplicitLeft = 56
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 47
      Width = 992
      Height = 538
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitWidth = 988
      ExplicitHeight = 537
      object LblNome: TLabel
        Left = 208
        Top = 9
        Width = 59
        Height = 17
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblNomeRedu: TLabel
        Left = 600
        Top = 9
        Width = 119
        Height = 17
        Caption = 'Descri'#231#227'o Reduzida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 208
        Top = 81
        Width = 89
        Height = 17
        Caption = 'Cod. de Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 81
        Width = 34
        Height = 17
        Caption = 'Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 16
        Top = 305
        Width = 72
        Height = 17
        Caption = 'Observa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 600
        Top = 81
        Width = 111
        Height = 17
        Caption = 'Qntd. em Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdtNome: TDBEdit
        Left = 208
        Top = 32
        Width = 350
        Height = 25
        DataField = 'NM_PRODUTO'
        DataSource = DsMaterial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object EdtNomeRed: TDBEdit
        Left = 600
        Top = 32
        Width = 246
        Height = 25
        DataField = 'NM_PRODUTO_REDU'
        DataSource = DsMaterial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object RgAtivo: TDBRadioGroup
        Left = 18
        Top = 11
        Width = 159
        Height = 46
        Caption = 'Produto Ativo?'
        Columns = 2
        DataField = 'FL_ATIVO'
        DataSource = DsMaterial
        DefaultHeaderFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowFrame
        HeaderFont.Height = -13
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = [fsBold]
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 0
        Values.Strings = (
          'S'
          'N')
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 170
        Width = 934
        Height = 105
        Caption = 'Peso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label10: TLabel
          Left = 362
          Top = 33
          Width = 120
          Height = 17
          Caption = 'Unidade de Medida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 24
          Top = 33
          Width = 67
          Height = 17
          Caption = 'Peso Bruto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 192
          Top = 33
          Width = 80
          Height = 17
          Caption = 'Peso Liquido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 24
          Top = 56
          Width = 141
          Height = 25
          DataField = 'QN_PESO_BRUTO'
          DataSource = DsMaterial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 192
          Top = 56
          Width = 141
          Height = 25
          DataField = 'QN_PESO_LIQ'
          DataSource = DsMaterial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DbCbUnidadeMedida: TDBLookupComboBox
          Left = 362
          Top = 56
          Width = 145
          Height = 25
          DataField = 'ID_UNIMEDIDA'
          DataSource = DsMaterial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          KeyField = 'ID_UNIDADE'
          ListField = 'DESCRICAO'
          ListSource = DsUniMed
          ParentFont = False
          TabOrder = 2
        end
      end
      object DBEdit3: TDBEdit
        Left = 208
        Top = 104
        Width = 350
        Height = 25
        DataField = 'QN_CODBARRAS'
        DataSource = DsMaterial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 104
        Width = 161
        Height = 25
        DataField = 'VL_PRODUTO'
        DataSource = DsMaterial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 328
        Width = 833
        Height = 41
        DataField = 'NM_OBS'
        DataSource = DsMaterial
        TabOrder = 6
      end
      object DBEdit5: TDBEdit
        Left = 600
        Top = 104
        Width = 246
        Height = 25
        DataField = 'QN_ESTOQUE'
        DataSource = DsMaterial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
    end
  end
  object QrUniMed: TFDQuery
    Connection = Dm.FDconexao
    SQL.Strings = (
      'SELECT ID_UNIDADE, DESCRICAO, DESCRICAO_REDU'
      'FROM UNIDADE_MEDIDA ')
    Left = 704
    Top = 24
  end
  object DsUniMed: TDataSource
    DataSet = QrUniMed
    Left = 752
    Top = 24
  end
  object QrMaterial: TFDQuery
    Active = True
    BeforePost = QrMaterialBeforePost
    MasterSource = FrmPesqMaterial.DsPesqMaterial
    MasterFields = 'ID_PRODUTO'
    Connection = Dm.FDconexao
    SQL.Strings = (
      
        'SELECT ID_PRODUTO, NM_PRODUTO, VL_PRODUTO, ID_FORNECEDOR, ID_UNI' +
        'MEDIDA, QN_ESTOQUE, QN_PESO, NM_OBS, FL_ATIVO, QN_CODBARRAS, QN_' +
        'PESO_BRUTO, QN_PESO_LIQ, NM_PRODUTO_REDU'
      'FROM PRODUTOS'
      'WHERE ID_PRODUTO = :ID_PRODUTO')
    Left = 464
    Top = 16
    ParamData = <
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QrMaterialID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrMaterialNM_PRODUTO: TStringField
      FieldName = 'NM_PRODUTO'
      Origin = 'NM_PRODUTO'
      Required = True
      Size = 45
    end
    object QrMaterialVL_PRODUTO: TFloatField
      FieldName = 'VL_PRODUTO'
      Origin = 'VL_PRODUTO'
    end
    object QrMaterialID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
    object QrMaterialID_UNIMEDIDA: TIntegerField
      FieldName = 'ID_UNIMEDIDA'
      Origin = 'ID_UNIMEDIDA'
    end
    object QrMaterialQN_ESTOQUE: TIntegerField
      FieldName = 'QN_ESTOQUE'
      Origin = 'QN_ESTOQUE'
    end
    object QrMaterialQN_PESO: TFloatField
      FieldName = 'QN_PESO'
      Origin = 'QN_PESO'
    end
    object QrMaterialNM_OBS: TStringField
      FieldName = 'NM_OBS'
      Origin = 'NM_OBS'
      Size = 45
    end
    object QrMaterialFL_ATIVO: TStringField
      FieldName = 'FL_ATIVO'
      Origin = 'FL_ATIVO'
      Size = 1
    end
    object QrMaterialQN_CODBARRAS: TStringField
      FieldName = 'QN_CODBARRAS'
      Origin = 'QN_CODBARRAS'
      Size = 25
    end
    object QrMaterialQN_PESO_BRUTO: TFloatField
      FieldName = 'QN_PESO_BRUTO'
      Origin = 'QN_PESO_BRUTO'
    end
    object QrMaterialQN_PESO_LIQ: TFloatField
      FieldName = 'QN_PESO_LIQ'
      Origin = 'QN_PESO_LIQ'
    end
    object QrMaterialNM_PRODUTO_REDU: TStringField
      FieldName = 'NM_PRODUTO_REDU'
      Origin = 'NM_PRODUTO_REDU'
      Size = 50
    end
  end
  object DsMaterial: TDataSource
    DataSet = QrMaterial
    Left = 512
    Top = 16
  end
  object QrTemp: TFDQuery
    Connection = Dm.FDconexao
    SQL.Strings = (
      'SELECT max(ID_PRODUTO) FROM PRODUTOS')
    Left = 824
    Top = 16
  end
end
