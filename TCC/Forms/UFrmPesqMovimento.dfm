inherited FrmPesqMovimento: TFrmPesqMovimento
  Caption = 'FrmPesqMovimento'
  TextHeight = 15
  inherited PnlTopo: TPanel
    inherited Label2: TLabel
      Width = 171
      Caption = 'Pesquisa de Movimento '
      ExplicitWidth = 171
    end
    inherited BtnClose: TSpeedButton
      Left = 772
    end
  end
  inherited PnlCentral: TPanel
    object Panel1: TPanel
      Left = 0
      Top = 64
      Width = 842
      Height = 313
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 842
        Height = 313
        Align = alClient
        DataSource = DsPesq
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
  end
  object QryPesq: TFDQuery
    Connection = Dm.FDconexao
    SQL.Strings = (
      
        'SELECT a.ID_MOVIMENTO, a.TIPO_MOVIMENTO, a.FL_CONFIRMACAO, a.ID_' +
        'PESSOA'
      'FROM MOVIMENTO a'
      'ORDER BY a.ID_MOVIMENTO ASC')
    Left = 448
    Top = 17
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
    Left = 512
    Top = 24
  end
end
