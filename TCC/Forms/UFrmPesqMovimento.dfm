inherited FrmPesqMovimento: TFrmPesqMovimento
  Caption = 'FrmPesqMovimento'
  ClientWidth = 1061
  ExplicitWidth = 1073
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
      Left = 983
      ExplicitLeft = 772
    end
  end
  inherited PnlCentral: TPanel
    Width = 1061
    ExplicitWidth = 1057
    object BtnPesq: TSpeedButton
      Left = 714
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
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_MOVIMENTO'
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
            FieldName = 'ID_PESSOA'
            Title.Caption = 'C'#243'd. Pessoa'
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
            Title.Caption = 'Tipo Movimento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FL_CONFIRMACAO'
            Title.Caption = 'Confirmacao'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object Panel2: TPanel
      Left = 784
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
      TabOrder = 1
      ExplicitLeft = 780
      object btnNovoEntrada: TSpeedButton
        Left = 1
        Top = 1
        Width = 113
        Height = 28
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Nova Entrada'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnNovoEntradaClick
        ExplicitLeft = -6
        ExplicitTop = -1
        ExplicitWidth = 96
        ExplicitHeight = 51
      end
    end
    object Panel4: TPanel
      Left = 905
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
      TabOrder = 2
      ExplicitLeft = 901
      object SpeedButton2: TSpeedButton
        Left = 1
        Top = 1
        Width = 113
        Height = 28
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Nova Sa'#237'da'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButton2Click
        ExplicitLeft = 0
      end
    end
    object CbPesq: TComboBox
      Left = 2
      Top = 10
      Width = 145
      Height = 23
      ItemIndex = 0
      TabOrder = 3
      Text = 'C'#243'd. Pessoa'
      Items.Strings = (
        'C'#243'd. Pessoa'
        'Nome Pessoa'
        'Tipo Pessoa')
    end
    object EdtPesq: TEdit
      Left = 150
      Top = 10
      Width = 559
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
      ExplicitWidth = 555
    end
  end
  inherited ImageList1: TImageList
    Left = 528
    Top = 0
  end
  object QryPesq: TFDQuery
    Connection = Dm.FDconexao
    SQL.Strings = (
      
        'SELECT a.ID_MOVIMENTO, a.TIPO_MOVIMENTO, a.FL_CONFIRMACAO, a.ID_' +
        'PESSOA'
      'FROM MOVIMENTO a'
      'ORDER BY a.ID_MOVIMENTO ASC')
    Left = 456
    Top = 1
    object QryPesqID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPesqTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'TIPO_MOVIMENTO'
      Required = True
      Size = 1
    end
    object QryPesqFL_CONFIRMACAO: TStringField
      FieldName = 'FL_CONFIRMACAO'
      Origin = 'FL_CONFIRMACAO'
      Required = True
      Size = 1
    end
    object QryPesqID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      Required = True
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
