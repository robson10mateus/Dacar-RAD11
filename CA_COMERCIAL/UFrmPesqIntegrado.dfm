inherited FrmPesqIntegrado: TFrmPesqIntegrado
  Left = 639
  Top = 147
  Caption = 'Pesquisa Integrado'
  OnClose = FormClose
  TextHeight = 10
  inherited ComboBox1: TComboBox
    Text = 'NOME INTEGRADO'
    Items.Strings = (
      'NOME INTEGRADO'
      'C'#211'D INTEGRADO'
      'CNPJ')
  end
  inherited DBGrid1: TDBGrid
    OnDblClick = DBGrid1DblClick
  end
  inherited BitBtn2: TBitBtn
    OnClick = BitBtn2Click
  end
  inherited BitBtn3: TBitBtn
    OnClick = BitBtn3Click
  end
  inherited DSFor: TOraDataSource
    DataSet = QrIntegrado
  end
  object QrIntegrado: TOraQuery
    SQL.Strings = (
      'Select I.ID_INTEGRADO , F.NM_FORNECEDOR , F.NR_CNPJFORN'
      '  From INTEGRADO I '
      ' Inner Join FORNECEDOR F  '
      '    On I.ID_FORNECEDOR = F.ID_FORNECEDOR')
    Left = 352
    Top = 328
    object QrIntegradoID_INTEGRADO: TFloatField
      FieldName = 'ID_INTEGRADO'
      Required = True
    end
    object QrIntegradoNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Required = True
      Size = 40
    end
    object QrIntegradoNR_CNPJFORN: TStringField
      FieldName = 'NR_CNPJFORN'
      Size = 14
    end
  end
end
