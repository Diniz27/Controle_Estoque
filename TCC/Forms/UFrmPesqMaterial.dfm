inherited FrmPesqMaterial: TFrmPesqMaterial
  Caption = 'FrmPesqMaterial'
  ClientHeight = 565
  ClientWidth = 1062
  ExplicitWidth = 1074
  ExplicitHeight = 603
  TextHeight = 15
  inherited PnlTopo: TPanel
    Width = 1062
    ExplicitWidth = 834
    inherited Label2: TLabel
      Width = 144
      Caption = 'Pesquisa de Material'
      ExplicitWidth = 144
    end
    inherited BtnClose: TSpeedButton
      Left = 992
    end
  end
  inherited PnlCentral: TPanel
    Width = 1062
    Height = 500
    ExplicitWidth = 834
    ExplicitHeight = 375
    object BtnPesq: TSpeedButton
      Left = 742
      Top = 10
      Width = 23
      Height = 20
      Anchors = [akTop, akRight]
      ImageIndex = 1
      Images = ImageList1
      HotImageIndex = 1
    end
    object CbPesq: TComboBox
      Left = 2
      Top = 10
      Width = 145
      Height = 23
      ItemIndex = 0
      TabOrder = 0
      Text = 'C'#243'd. Pessoa'
      Items.Strings = (
        'C'#243'd. Pessoa'
        'Nome Pessoa'
        'Tipo Pessoa')
    end
    object EdtPesq: TEdit
      Left = 150
      Top = 10
      Width = 587
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
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
      ExplicitTop = 48
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1062
        Height = 444
        Align = alClient
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
    object Panel2: TPanel
      Left = 795
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
        ExplicitLeft = 21
        ExplicitTop = 23
        ExplicitWidth = 96
        ExplicitHeight = 51
      end
    end
    object Panel3: TPanel
      Left = 918
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
        ExplicitLeft = 19
        ExplicitTop = 0
      end
    end
  end
end
