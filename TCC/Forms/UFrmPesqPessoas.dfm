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
    inherited Label2: TLabel
      Width = 134
      Caption = 'Pesquisa de Pessoa'
      ExplicitWidth = 134
    end
    inherited BtnClose: TSpeedButton
      Left = 992
      ExplicitLeft = 680
    end
  end
  inherited PnlCentral: TPanel
    Width = 1062
    Height = 500
    ExplicitWidth = 1058
    ExplicitHeight = 499
    object BtnPesq: TSpeedButton
      Left = 738
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
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_RAZAOSOCIAL'
            Title.Caption = 'Raz'#227'o Social'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_TIPOPESSOA'
            Title.Caption = 'Tipo Pessoa'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_REDUZIDO'
            Title.Caption = 'Nome Reduzido'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_CIDADE'
            Title.Caption = 'Cidade'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_TELEFONE1'
            Title.Caption = 'N'#186' Telefone'
            Width = 120
            Visible = True
          end>
      end
    end
    object EdtPesq: TEdit
      Left = 150
      Top = 10
      Width = 583
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 579
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
      Left = 914
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
        ExplicitLeft = 9
        ExplicitTop = 14
      end
    end
  end
  object QryPesq: TFDQuery
    Connection = Dm.FDconexao
    SQL.Strings = (
      'SELECT a.ID_PESSOA, a.NM_TIPOPESSOA, a.DT_CADASTRO, a.FL_PF_PJ, '
      
        '  a.NM_RAZAOSOCIAL, a.NM_REDUZIDO, a.CPF_CNPJ, a.RG_IE, a.NM_CON' +
        'SUMIDOR, '
      
        '  a.CEP, a.NM_LOGRADOURO, a.NM_NUMERO, a.NM_COMPLEMENTO, a.NM_BA' +
        'IRRO, '
      
        '  a.ID_IBGE, a.NM_CIDADE, a.NM_ESTADO, a.NM_TELEFONE1, a.NM_TELE' +
        'FONE2, a.NM_EMAIL '
      'FROM PESSOAS a '
      'ORDER BY a.ID_PESSOA ASC')
    Left = 448
    Top = 17
  end
  object DsPesq: TDataSource
    DataSet = QryPesq
    Left = 512
    Top = 24
  end
end
