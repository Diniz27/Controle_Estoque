inherited FrmPesqPessoas: TFrmPesqPessoas
  Caption = 'FrmPesqPessoas'
  ClientHeight = 444
  ClientWidth = 742
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 758
  ExplicitHeight = 483
  TextHeight = 15
  inherited PnlTopo: TPanel
    Width = 742
    StyleElements = [seFont, seClient, seBorder]
    inherited Label4: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Label2: TLabel
      Width = 134
      Caption = 'Pesquisa de Pessoa'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 134
    end
    inherited BtnClose: TSpeedButton
      Left = 680
    end
  end
  inherited PnlCentral: TPanel
    Width = 742
    Height = 379
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 121
    ExplicitWidth = 742
    ExplicitHeight = 379
    object BtnPesq: TSpeedButton
      Left = 682
      Top = 10
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      ImageIndex = 1
      Images = ImageList1
      HotImageIndex = 1
      OnClick = BtnPesqClick
    end
    object DBEdit1: TDBEdit
      Left = 153
      Top = 10
      Width = 529
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
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
      Width = 742
      Height = 331
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 742
        Height = 331
        Align = alClient
        DataSource = DsPesq
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
  end
  object QryPesq: TFDQuery
    Connection = Dm.FDconexao
    Left = 448
    Top = 17
  end
  object DsPesq: TDataSource
    DataSet = QryPesq
    Left = 512
    Top = 24
  end
end
