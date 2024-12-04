inherited FrmPesqPessoas: TFrmPesqPessoas
  Caption = 'FrmPesqPessoas'
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
      Width = 134
      Caption = 'Pesquisa de Pessoa'
      ExplicitWidth = 134
    end
    inherited BtnClose: TSpeedButton
      Left = 988
      ExplicitLeft = 680
    end
  end
  inherited PnlCentral: TPanel
    Width = 1062
    Height = 500
    ExplicitWidth = 1058
    ExplicitHeight = 499
    object BtnPesq: TSpeedButton
      Left = 734
      Top = 10
      Width = 23
      Height = 20
      Anchors = [akTop, akRight]
      ImageIndex = 1
      Images = ImageList1
      HotImageIndex = 1
      OnClick = BtnPesqClick
      ExplicitLeft = 742
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
    object Panel1: TPanel
      Left = 0
      Top = 48
      Width = 1062
      Height = 452
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 1058
      ExplicitHeight = 451
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1062
        Height = 452
        Align = alClient
        DataSource = DsPesq
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
            FieldName = 'ID_PESSOA'
            Title.Caption = 'C'#243'd. Pessoa'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_RAZAOSOCIAL'
            Title.Caption = 'Raz'#227'o Social'
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
            FieldName = 'NM_TIPO'
            Title.Caption = 'Tipo Pessoa'
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
            FieldName = 'NM_REDUZIDO'
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
            FieldName = 'NM_CIDADE'
            Title.Caption = 'Cidade'
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
            FieldName = 'NM_TELEFONE1'
            Title.Caption = 'N'#186' Telefone'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end>
      end
    end
    object EdtPesq: TEdit
      Left = 150
      Top = 10
      Width = 579
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 575
    end
    object Panel2: TPanel
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
      TabOrder = 3
      ExplicitLeft = 783
      object btnNovo: TSpeedButton
        Left = 1
        Top = 1
        Width = 113
        Height = 28
        Cursor = crHandPoint
        Align = alClient
        Anchors = [akTop, akRight, akBottom]
        Caption = 'Novo'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnNovoClick
        ExplicitLeft = 26
        ExplicitTop = -1
        ExplicitWidth = 96
        ExplicitHeight = 51
      end
    end
    object Panel3: TPanel
      Left = 910
      Top = 6
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
        ExplicitLeft = 9
        ExplicitTop = 14
      end
    end
  end
  object QryPesq: TFDQuery
    Connection = Dm.FDconexao
    SQL.Strings = (
      'SELECT a.ID_PESSOA, a.ID_TIPOPESSOA, a.DT_CADASTRO, a.FL_PF_PJ, '
      '  a.NM_RAZAOSOCIAL, a.NM_REDUZIDO, a.CPF_CNPJ, a.RG_IE, '
      
        '  a.CEP, a.NM_LOGRADOURO, a.NM_NUMERO, a.NM_COMPLEMENTO, a.NM_BA' +
        'IRRO, '
      
        '  a.ID_IBGE, a.NM_CIDADE, a.NM_ESTADO, a.NM_TELEFONE1, a.NM_TELE' +
        'FONE2, a.NM_EMAIL '
      'FROM PESSOAS a '
      'ORDER BY a.ID_PESSOA ASC')
    Left = 448
    Top = 17
    object QryPesqID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPesqID_TIPOPESSOA: TIntegerField
      FieldName = 'ID_TIPOPESSOA'
      Origin = 'ID_TIPOPESSOA'
    end
    object QryPesqDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
    end
    object QryPesqFL_PF_PJ: TIntegerField
      FieldName = 'FL_PF_PJ'
      Origin = 'FL_PF_PJ'
      Required = True
    end
    object QryPesqNM_RAZAOSOCIAL: TStringField
      FieldName = 'NM_RAZAOSOCIAL'
      Origin = 'NM_RAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object QryPesqNM_REDUZIDO: TStringField
      FieldName = 'NM_REDUZIDO'
      Origin = 'NM_REDUZIDO'
      Size = 85
    end
    object QryPesqCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Required = True
      Size = 14
    end
    object QryPesqRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      Required = True
      Size = 45
    end
    object QryPesqCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 45
    end
    object QryPesqNM_LOGRADOURO: TStringField
      FieldName = 'NM_LOGRADOURO'
      Origin = 'NM_LOGRADOURO'
      Required = True
      Size = 100
    end
    object QryPesqNM_NUMERO: TIntegerField
      FieldName = 'NM_NUMERO'
      Origin = 'NM_NUMERO'
    end
    object QryPesqNM_COMPLEMENTO: TStringField
      FieldName = 'NM_COMPLEMENTO'
      Origin = 'NM_COMPLEMENTO'
      Size = 100
    end
    object QryPesqNM_BAIRRO: TStringField
      FieldName = 'NM_BAIRRO'
      Origin = 'NM_BAIRRO'
      Required = True
      Size = 100
    end
    object QryPesqID_IBGE: TIntegerField
      FieldName = 'ID_IBGE'
      Origin = 'ID_IBGE'
      Required = True
    end
    object QryPesqNM_CIDADE: TStringField
      FieldName = 'NM_CIDADE'
      Origin = 'NM_CIDADE'
      Required = True
      Size = 100
    end
    object QryPesqNM_ESTADO: TStringField
      FieldName = 'NM_ESTADO'
      Origin = 'NM_ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QryPesqNM_TELEFONE1: TStringField
      FieldName = 'NM_TELEFONE1'
      Origin = 'NM_TELEFONE1'
      Required = True
      Size = 45
    end
    object QryPesqNM_TELEFONE2: TStringField
      FieldName = 'NM_TELEFONE2'
      Origin = 'NM_TELEFONE2'
      Size = 45
    end
    object QryPesqNM_EMAIL: TStringField
      FieldName = 'NM_EMAIL'
      Origin = 'NM_EMAIL'
      Size = 100
    end
    object QryPesqNM_TIPO: TStringField
      FieldKind = fkLookup
      FieldName = 'NM_TIPO'
      LookupDataSet = QrTipoPessoa
      LookupKeyFields = 'ID_TIPO'
      LookupResultField = 'NM_TIPO'
      KeyFields = 'ID_TIPOPESSOA'
      Lookup = True
    end
  end
  object DsPesq: TDataSource
    DataSet = QryPesq
    Left = 512
    Top = 24
  end
  object QrTipoPessoa: TFDQuery
    Connection = Dm.FDconexao
    SQL.Strings = (
      'SELECT ID_TIPO, NM_TIPO'
      'FROM TIPO_PESSOA ')
    Left = 672
    Top = 16
    object QrTipoPessoaID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Origin = 'ID_TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrTipoPessoaNM_TIPO: TStringField
      FieldName = 'NM_TIPO'
      Origin = 'NM_TIPO'
      Size = 45
    end
  end
  object DsTipoPessoa: TDataSource
    DataSet = QrTipoPessoa
    Left = 704
    Top = 16
  end
end
