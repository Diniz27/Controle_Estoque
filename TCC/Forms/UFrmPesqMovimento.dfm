inherited FrmPesqMovimento: TFrmPesqMovimento
  Caption = 'FrmPesqMovimento'
  ClientWidth = 1061
  OnActivate = FormActivate
  OnShow = FormShow
  ExplicitWidth = 1073
  ExplicitHeight = 480
  TextHeight = 15
  inherited PnlTopo: TPanel
    Width = 1061
    ExplicitWidth = 1057
    DesignSize = (
      1057
      61)
    inherited Label2: TLabel
      Width = 171
      Caption = 'Pesquisa de Movimento '
      ExplicitWidth = 171
    end
    inherited BtnClose: TSpeedButton
      Left = 979
      ExplicitLeft = 772
    end
  end
  inherited PnlCentral: TPanel
    Width = 1061
    ExplicitWidth = 1057
    object BtnPesq: TSpeedButton
      Left = 710
      Top = 10
      Width = 23
      Height = 20
      Anchors = [akTop, akRight]
      ImageIndex = 1
      Images = ImageList1
      HotImageIndex = 1
      ExplicitLeft = 718
    end
    object Panel1: TPanel
      Left = 0
      Top = 46
      Width = 1061
      Height = 331
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 1057
      ExplicitHeight = 330
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1061
        Height = 331
        Align = alClient
        DataSource = DsPesq
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu1
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
            FieldName = 'ID_ENTRADA'
            Title.Caption = 'C'#243'd. Movimento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_FORNECEDOR'
            Title.Caption = 'C'#243'd. Fornecedor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_FORNECEDOR'
            Title.Caption = 'Nome Fornecedor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_MOVIMENTO'
            Title.Caption = 'Tipo de Movimento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object CbPesq: TComboBox
      Left = 2
      Top = 10
      Width = 145
      Height = 23
      ItemIndex = 0
      TabOrder = 1
      Text = 'C'#243'd. Pessoa'
      Items.Strings = (
        'C'#243'd. Pessoa'
        'Nome Pessoa'
        'Tipo Pessoa')
    end
    object EdtPesq: TEdit
      Left = 150
      Top = 10
      Width = 555
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      ExplicitWidth = 551
    end
    object Panel3: TPanel
      Left = 910
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
      TabOrder = 3
      ExplicitLeft = 906
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
    object Panel4: TPanel
      Left = 787
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
      TabOrder = 4
      ExplicitLeft = 783
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
        OnClick = btnNovoEntradaClick
        ExplicitLeft = 21
        ExplicitTop = 23
        ExplicitWidth = 96
        ExplicitHeight = 51
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 528
    Top = 0
  end
  object QryPesq: TFDQuery
    Connection = Dm.FDconexao
    SQL.Strings = (
      'SELECT '
      
        '    ID_ENTRADA, ID_FORNECEDOR, NM_FORNECEDOR, NM_FANTASIA, CNPJ,' +
        ' IE, '
      '    CASE WHEN TIPO_MOVIMENTO = '#39'E'#39' THEN'
      '        '#39'ENTRADA'#39
      '    WHEN TIPO_MOVIMENTO = '#39'S'#39' THEN'
      '        '#39'SAIDA'#39
      '    END AS TIPO_MOVIMENTO'
      'FROM ENTRADA_MATERIAL'
      'ORDER BY ID_ENTRADA ASC')
    Left = 456
    Top = 1
    object QryPesqID_ENTRADA: TIntegerField
      FieldName = 'ID_ENTRADA'
      Origin = 'ID_ENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPesqID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object QryPesqNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Origin = 'NM_FORNECEDOR'
      Required = True
      Size = 100
    end
    object QryPesqNM_FANTASIA: TStringField
      FieldName = 'NM_FANTASIA'
      Origin = 'NM_FANTASIA'
      Required = True
      Size = 100
    end
    object QryPesqCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object QryPesqIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Required = True
    end
    object QryPesqTIPO_MOVIMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'TIPO_MOVIMENTO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 7
    end
  end
  object DsPesq: TDataSource
    DataSet = QryPesq
    Left = 488
  end
  object PopupMenu1: TPopupMenu
    Left = 560
    object ConfirmarSaida1: TMenuItem
      Caption = 'Confirmar Saida'
    end
  end
end
