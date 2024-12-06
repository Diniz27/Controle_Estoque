inherited FrmEntradaMovimento: TFrmEntradaMovimento
  Caption = 'FrmEntradaMovimento'
  ClientHeight = 640
  ClientWidth = 1101
  OnShow = FormShow
  ExplicitWidth = 1113
  ExplicitHeight = 678
  TextHeight = 15
  inherited PnlTopo: TPanel
    Width = 1101
    ExplicitWidth = 1097
    inherited Label2: TLabel
      Width = 137
      Caption = 'Entrada de Material'
      ExplicitWidth = 137
    end
    inherited BtnClose: TSpeedButton
      Left = 1023
      ExplicitLeft = 899
    end
  end
  inherited PnlCentral: TPanel
    Width = 1101
    Height = 575
    ExplicitWidth = 1097
    ExplicitHeight = 574
    DesignSize = (
      1101
      575)
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 5
      Width = 100
      Height = 32
      Caption = 'Fornecedor'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton4: TSpeedButton
      Left = 106
      Top = 5
      Width = 100
      Height = 32
      Caption = 'Itens'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 43
      Width = 1097
      Height = 524
      ActivePage = TabSheet1
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      ExplicitWidth = 1093
      ExplicitHeight = 523
      object TabSheet1: TTabSheet
        Caption = 'Dados Gerais'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1089
          Height = 494
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 1085
          ExplicitHeight = 493
          DesignSize = (
            1089
            494)
          object Label7: TLabel
            Left = 3
            Top = 12
            Width = 79
            Height = 20
            Caption = 'Fornecedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 494
            Top = 49
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
          object Label13: TLabel
            Left = 14
            Top = 121
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
            Left = 964
            Top = 74
            Width = 24
            Height = 20
            ImageIndex = 1
            Images = ImageList1
            HotImageIndex = 1
            OnClick = BtnPesqClick
          end
          object Label10: TLabel
            Left = 738
            Top = 121
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
          object Label9: TLabel
            Left = 494
            Top = 121
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
          object Panel4: TPanel
            Left = 1424
            Top = 6
            Width = 97
            Height = 35
            Anchors = [akTop, akRight]
            ParentBackground = False
            TabOrder = 0
            ExplicitLeft = 1420
            object SpeedButton2: TSpeedButton
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
          object Panel5: TPanel
            Left = 1313
            Top = 6
            Width = 102
            Height = 35
            Anchors = [akTop, akRight]
            Color = clHighlight
            ParentBackground = False
            TabOrder = 1
            ExplicitLeft = 1309
            object SpeedButton3: TSpeedButton
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
              OnClick = BtnConfirmaClick
              ExplicitLeft = 56
              ExplicitTop = 8
              ExplicitWidth = 23
              ExplicitHeight = 22
            end
          end
          object PnlConfirma: TPanel
            Left = 843
            Top = 6
            Width = 102
            Height = 35
            Anchors = [akTop, akRight]
            Color = clHighlight
            ParentBackground = False
            TabOrder = 2
            ExplicitLeft = 839
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
              OnClick = BtnConfirmaClick
              ExplicitLeft = 56
              ExplicitTop = 8
              ExplicitWidth = 23
              ExplicitHeight = 22
            end
          end
          object PnlCancela: TPanel
            Left = 959
            Top = 6
            Width = 97
            Height = 35
            Anchors = [akTop, akRight]
            ParentBackground = False
            TabOrder = 3
            ExplicitLeft = 955
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
              ExplicitLeft = 16
              ExplicitTop = 16
            end
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 14
            Top = 53
            Width = 406
            Height = 41
            Caption = 'Tipo de Movimento'
            Columns = 2
            DataField = 'TIPO_MOVIMENTO'
            DataSource = DsEntrada
            DefaultHeaderFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -14
            HeaderFont.Name = 'Segoe UI'
            HeaderFont.Style = [fsBold]
            Items.Strings = (
              'Entrada'
              'Sa'#237'da')
            ParentFont = False
            TabOrder = 4
            Values.Strings = (
              'E'
              'S')
          end
          object DBEdit6: TDBEdit
            Left = 494
            Top = 72
            Width = 469
            Height = 25
            DataField = 'NM_RAZAOSOCIAL'
            DataSource = DsEntrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit7: TDBEdit
            Left = 14
            Top = 144
            Width = 406
            Height = 25
            DataField = 'NM_REDUZIDO'
            DataSource = DsEntrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit4: TDBEdit
            Left = 738
            Top = 144
            Width = 225
            Height = 25
            DataField = 'RG_IE'
            DataSource = DsEntrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit3: TDBEdit
            Left = 494
            Top = 144
            Width = 225
            Height = 25
            DataField = 'CPF_CNPJ'
            DataSource = DsEntrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Itens'
        ImageIndex = 1
        DesignSize = (
          1089
          494)
        object Label1: TLabel
          Left = 3
          Top = 12
          Width = 35
          Height = 20
          Caption = 'Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel1: TPanel
          Left = 3
          Top = 87
          Width = 1082
          Height = 82
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            Left = 16
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
          object Label5: TLabel
            Left = 520
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
          object Label8: TLabel
            Left = 814
            Top = 9
            Width = 72
            Height = 17
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowFrame
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object BtnPesqItem: TSpeedButton
            Left = 489
            Top = 34
            Width = 23
            Height = 20
            ImageIndex = 1
            Images = ImageList1
            HotImageIndex = 1
            OnClick = BtnPesqItemClick
          end
          object DBEdit1: TDBEdit
            Left = 16
            Top = 32
            Width = 471
            Height = 25
            DataField = 'NM_PRODUTO'
            DataSource = DsEntradaItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 520
            Top = 32
            Width = 278
            Height = 25
            DataField = 'NM_PRODUTO_REDU'
            DataSource = DsEntradaItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            OnChange = DBEdit2Change
          end
          object DBEdit5: TDBEdit
            Left = 814
            Top = 32
            Width = 111
            Height = 25
            DataField = 'QN_QUANTIDADE'
            DataSource = DsEntradaItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            OnExit = DBEdit5Exit
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 192
          Width = 1089
          Height = 302
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DsEntradaItem
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_PRODUTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NM_PRODUTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NM_PRODUTO_REDU'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QN_QUANTIDADE'
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 843
          Top = 6
          Width = 102
          Height = 35
          Anchors = [akTop, akRight]
          Color = clHighlight
          ParentBackground = False
          TabOrder = 2
          object BtnConfirmaItem: TSpeedButton
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
            OnClick = BtnConfirmaClick
            ExplicitLeft = 56
            ExplicitTop = 8
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object Panel7: TPanel
          Left = 959
          Top = 6
          Width = 97
          Height = 35
          Anchors = [akTop, akRight]
          ParentBackground = False
          TabOrder = 3
          object BtnCancelaItem: TSpeedButton
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
            ExplicitLeft = 16
            ExplicitTop = 16
          end
        end
      end
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
      '    AND ID_PESSOA = :ID_PESSOA'
      'ORDER BY ID_PESSOA')
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
  object QrEntrada: TFDQuery
    BeforePost = QrEntradaBeforePost
    MasterSource = FrmPesqMovimento.DsPesq
    MasterFields = 'ID_ENTRADA'
    DetailFields = 'ID_ENTRADA'
    Connection = Dm.FDconexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT '
      
        '    ID_ENTRADA, ID_PESSOA, NM_RAZAOSOCIAL, NM_REDUZIDO, TIPO_PES' +
        'SOA, CPF_CNPJ, RG_IE, TIPO_MOVIMENTO'
      'FROM ENTRADA_MATERIAL'
      'WHERE ID_ENTRADA = :ID_ENTRADA'
      'ORDER BY ID_ENTRADA')
    Left = 224
    Top = 24
    ParamData = <
      item
        Name = 'ID_ENTRADA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QrEntradaID_ENTRADA: TIntegerField
      FieldName = 'ID_ENTRADA'
      Origin = 'ID_ENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrEntradaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      Required = True
    end
    object QrEntradaNM_RAZAOSOCIAL: TStringField
      FieldName = 'NM_RAZAOSOCIAL'
      Origin = 'NM_RAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object QrEntradaNM_REDUZIDO: TStringField
      FieldName = 'NM_REDUZIDO'
      Origin = 'NM_REDUZIDO'
      Required = True
      Size = 100
    end
    object QrEntradaTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      Required = True
      Size = 1
    end
    object QrEntradaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Required = True
    end
    object QrEntradaRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      Required = True
    end
    object QrEntradaTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'TIPO_MOVIMENTO'
      Required = True
      Size = 1
    end
  end
  object DsEntrada: TDataSource
    DataSet = QrEntrada
    Left = 272
    Top = 24
  end
  object QrTemp: TFDQuery
    Connection = Dm.FDconexao
    SQL.Strings = (
      'SELECT max(ID_ENTRADA) FROM ENTRADA_MATERIAL')
    Left = 824
    Top = 16
  end
  object QrItem: TFDQuery
    AfterOpen = QrItemAfterOpen
    Connection = Dm.FDconexao
    SQL.Strings = (
      'SELECT '
      '    ID_PRODUTO, NM_PRODUTO, VL_PRODUTO, ID_FORNECEDOR, '
      '    ID_UNIMEDIDA, QN_ESTOQUE, QN_PESO, NM_OBS, FL_ATIVO, '
      '    QN_CODBARRAS, QN_PESO_BRUTO, QN_PESO_LIQ, NM_PRODUTO_REDU'
      'FROM PRODUTOS'
      'WHERE'
      '    FL_ATIVO = '#39'S'#39
      '    AND ID_PRODUTO = :ID_PRODUTO'
      'ORDER BY ID_PRODUTO')
    Left = 384
    Top = 16
    ParamData = <
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QrItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrItemNM_PRODUTO: TStringField
      FieldName = 'NM_PRODUTO'
      Origin = 'NM_PRODUTO'
      Required = True
      Size = 50
    end
    object QrItemVL_PRODUTO: TFloatField
      FieldName = 'VL_PRODUTO'
      Origin = 'VL_PRODUTO'
    end
    object QrItemID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
    object QrItemID_UNIMEDIDA: TIntegerField
      FieldName = 'ID_UNIMEDIDA'
      Origin = 'ID_UNIMEDIDA'
    end
    object QrItemQN_ESTOQUE: TIntegerField
      FieldName = 'QN_ESTOQUE'
      Origin = 'QN_ESTOQUE'
    end
    object QrItemQN_PESO: TFloatField
      FieldName = 'QN_PESO'
      Origin = 'QN_PESO'
    end
    object QrItemNM_OBS: TStringField
      FieldName = 'NM_OBS'
      Origin = 'NM_OBS'
      Size = 50
    end
    object QrItemFL_ATIVO: TStringField
      FieldName = 'FL_ATIVO'
      Origin = 'FL_ATIVO'
      Size = 1
    end
    object QrItemQN_CODBARRAS: TStringField
      FieldName = 'QN_CODBARRAS'
      Origin = 'QN_CODBARRAS'
      Size = 25
    end
    object QrItemQN_PESO_BRUTO: TFloatField
      FieldName = 'QN_PESO_BRUTO'
      Origin = 'QN_PESO_BRUTO'
    end
    object QrItemQN_PESO_LIQ: TFloatField
      FieldName = 'QN_PESO_LIQ'
      Origin = 'QN_PESO_LIQ'
    end
    object QrItemNM_PRODUTO_REDU: TStringField
      FieldName = 'NM_PRODUTO_REDU'
      Origin = 'NM_PRODUTO_REDU'
      Size = 50
    end
  end
  object DsItem: TDataSource
    DataSet = QrItem
    Left = 432
    Top = 16
  end
  object QrEntradaItem: TFDQuery
    BeforeOpen = QrEntradaItemBeforeOpen
    BeforePost = QrEntradaItemBeforePost
    Connection = Dm.FDconexao
    SQL.Strings = (
      'SELECT '
      
        '    ID_ENTRADA, ID_PRODUTO, NM_PRODUTO, NM_PRODUTO_REDU, QN_QUAN' +
        'TIDADE'
      'FROM '
      '    ENTRADA_MATERIAL_ITEM'
      'WHERE'
      '    ID_ENTRADA = :ID_ENTRADA'
      'ORDER BY ID_PRODUTO DESC')
    Left = 224
    Top = 72
    ParamData = <
      item
        Name = 'ID_ENTRADA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QrEntradaItemID_ENTRADA: TIntegerField
      FieldName = 'ID_ENTRADA'
      Origin = 'ID_ENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrEntradaItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object QrEntradaItemNM_PRODUTO: TStringField
      FieldName = 'NM_PRODUTO'
      Origin = 'NM_PRODUTO'
      Required = True
      Size = 50
    end
    object QrEntradaItemNM_PRODUTO_REDU: TStringField
      FieldName = 'NM_PRODUTO_REDU'
      Origin = 'NM_PRODUTO_REDU'
      Required = True
      Size = 50
    end
    object QrEntradaItemQN_QUANTIDADE: TSingleField
      FieldName = 'QN_QUANTIDADE'
      Origin = 'QN_QUANTIDADE'
      Required = True
    end
  end
  object DsEntradaItem: TDataSource
    DataSet = QrEntradaItem
    Left = 272
    Top = 72
  end
end
