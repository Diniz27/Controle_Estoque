inherited FrmPesqItem: TFrmPesqItem
  Caption = 'FrmPesqItem'
  ClientWidth = 850
  OnShow = FormShow
  ExplicitWidth = 862
  TextHeight = 15
  inherited PnlCentral: TPanel
    Width = 850
    ExplicitWidth = 846
    inherited PnlCancela: TPanel
      Left = 708
      ExplicitLeft = 704
    end
    inherited PnlConfirma: TPanel
      Left = 600
      ExplicitLeft = 596
      inherited BtnConfirma: TSpeedButton
        OnClick = BtnConfirmaClick
      end
    end
    inherited Panel1: TPanel
      Width = 850
      ExplicitWidth = 846
      inherited DBGrid1: TDBGrid
        Width = 848
        DataSource = DsItem
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
            FieldName = 'QN_CODBARRAS'
            Visible = True
          end>
      end
    end
    inherited ComboBox1: TComboBox
      ItemIndex = 0
      Text = 'C'#243'd. Item'
      Items.Strings = (
        'C'#243'd. Item'
        'Nome Item'
        'Cod. de Barras')
    end
    inherited ComboBox2: TComboBox
      ItemIndex = 0
      Text = 'igual'
      Items.Strings = (
        'igual'
        'contendo'
        'diferente')
    end
    inherited Edit1: TEdit
      Text = ''
      OnChange = Edit1Change
    end
  end
  inherited PnlTopo: TPanel
    Width = 850
    ExplicitWidth = 846
    inherited Label2: TLabel
      Width = 35
      Caption = 'Itens'
      ExplicitWidth = 35
    end
    inherited BtnClose: TSpeedButton
      Left = 768
      ExplicitLeft = 772
    end
  end
  object DsItem: TDataSource
    DataSet = QrItem
    Left = 608
    Top = 16
  end
  object QrItem: TFDQuery
    Connection = Dm.FDconexao
    SQL.Strings = (
      'SELECT '
      '    ID_PRODUTO, NM_PRODUTO, VL_PRODUTO, ID_FORNECEDOR, '
      '    ID_UNIMEDIDA, QN_ESTOQUE, QN_PESO, NM_OBS, FL_ATIVO, '
      '    QN_CODBARRAS, QN_PESO_BRUTO, QN_PESO_LIQ, NM_PRODUTO_REDU'
      'FROM PRODUTOS'
      'WHERE'
      '    FL_ATIVO = '#39'S'#39
      '')
    Left = 560
    Top = 16
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
end
