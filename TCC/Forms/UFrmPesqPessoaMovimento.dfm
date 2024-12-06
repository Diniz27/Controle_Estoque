inherited FrmPesqPessoaMovimento: TFrmPesqPessoaMovimento
  Caption = 'FrmPesqPessoaMovimento'
  ClientHeight = 421
  ClientWidth = 854
  OnShow = FormShow
  TextHeight = 15
  inherited PnlCentral: TPanel
    Width = 854
    Height = 356
    DesignSize = (
      854
      356)
    inherited PnlCancela: TPanel
      ExplicitLeft = 708
    end
    inherited PnlConfirma: TPanel
      ExplicitLeft = 600
      inherited BtnConfirma: TSpeedButton
        OnClick = BtnConfirmaClick
      end
    end
    inherited Panel1: TPanel
      Top = 136
      Width = 854
      inherited DBGrid1: TDBGrid
        DataSource = DsPessoa
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_PESSOA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_RAZAOSOCIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_REDUZIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF_CNPJ'
            Visible = True
          end>
      end
    end
    inherited ComboBox1: TComboBox
      ItemIndex = 0
      Text = 'C'#243'd. Fornecedor'
      Items.Strings = (
        'C'#243'd. Fornecedor'
        'Nome Fornecedor'
        'CNPJ')
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
    Width = 854
    DesignSize = (
      850
      61)
    inherited Label2: TLabel
      Width = 79
      Caption = 'Fornecedor'
      ExplicitWidth = 79
    end
  end
  object QrPessoa: TFDQuery
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
      'FROM PESSOAS')
    Left = 560
    Top = 16
    object QrPessoaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrPessoaID_TIPOPESSOA: TIntegerField
      FieldName = 'ID_TIPOPESSOA'
      Origin = 'ID_TIPOPESSOA'
    end
    object QrPessoaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
    end
    object QrPessoaFL_PF_PJ: TIntegerField
      FieldName = 'FL_PF_PJ'
      Origin = 'FL_PF_PJ'
      Required = True
    end
    object QrPessoaNM_RAZAOSOCIAL: TStringField
      FieldName = 'NM_RAZAOSOCIAL'
      Origin = 'NM_RAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object QrPessoaNM_REDUZIDO: TStringField
      FieldName = 'NM_REDUZIDO'
      Origin = 'NM_REDUZIDO'
      Size = 85
    end
    object QrPessoaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Required = True
      Size = 14
    end
    object QrPessoaRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      Required = True
      Size = 45
    end
    object QrPessoaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 45
    end
    object QrPessoaNM_LOGRADOURO: TStringField
      FieldName = 'NM_LOGRADOURO'
      Origin = 'NM_LOGRADOURO'
      Required = True
      Size = 100
    end
    object QrPessoaNM_NUMERO: TIntegerField
      FieldName = 'NM_NUMERO'
      Origin = 'NM_NUMERO'
    end
    object QrPessoaNM_COMPLEMENTO: TStringField
      FieldName = 'NM_COMPLEMENTO'
      Origin = 'NM_COMPLEMENTO'
      Size = 100
    end
    object QrPessoaNM_BAIRRO: TStringField
      FieldName = 'NM_BAIRRO'
      Origin = 'NM_BAIRRO'
      Required = True
      Size = 100
    end
    object QrPessoaID_IBGE: TIntegerField
      FieldName = 'ID_IBGE'
      Origin = 'ID_IBGE'
      Required = True
    end
    object QrPessoaNM_CIDADE: TStringField
      FieldName = 'NM_CIDADE'
      Origin = 'NM_CIDADE'
      Required = True
      Size = 100
    end
    object QrPessoaNM_ESTADO: TStringField
      FieldName = 'NM_ESTADO'
      Origin = 'NM_ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QrPessoaNM_TELEFONE1: TStringField
      FieldName = 'NM_TELEFONE1'
      Origin = 'NM_TELEFONE1'
      Required = True
      Size = 45
    end
    object QrPessoaNM_TELEFONE2: TStringField
      FieldName = 'NM_TELEFONE2'
      Origin = 'NM_TELEFONE2'
      Size = 45
    end
    object QrPessoaNM_EMAIL: TStringField
      FieldName = 'NM_EMAIL'
      Origin = 'NM_EMAIL'
      Size = 100
    end
    object QrPessoaNEW_TABLECOL: TStringField
      FieldName = 'NEW_TABLECOL'
      Origin = 'NEW_TABLECOL'
      Size = 45
    end
    object QrPessoaID_CRACHA: TIntegerField
      FieldName = 'ID_CRACHA'
      Origin = 'ID_CRACHA'
    end
  end
  object DsPessoa: TDataSource
    DataSet = QrPessoa
    Left = 608
    Top = 16
  end
end
