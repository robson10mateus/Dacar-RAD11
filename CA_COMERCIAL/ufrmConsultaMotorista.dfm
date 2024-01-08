inherited frmConsultaMotorista: TfrmConsultaMotorista
  Caption = 'Comercial Dacar - Consulta Motorista'
  OnActivate = FormActivate
  OnCreate = FormCreate
  TextHeight = 10
  inherited DBGrid1: TDBGrid
    DataSource = dtsMotorista
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_MOTOTRAN'
        Title.Caption = 'C'#243'd'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = 11
        Title.Font.Name = 'Arial'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_MOTOTRAN'
        Title.Caption = 'Nome Motorista'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = 11
        Title.Font.Name = 'Arial'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 350
        Visible = True
      end>
  end
  inherited pnlBotoes: TPanel
    inherited BitBtn1: TBitBtn
      OnClick = BitBtn1Click
    end
    inherited BitBtn2: TBitBtn
      OnClick = BitBtn2Click
    end
  end
  inherited pnlFiltros: TPanel
    inherited EdExpre: TEdit
      Left = 9
      Top = 89
      OnKeyPress = EdExpreKeyPress
      ExplicitLeft = 9
      ExplicitTop = 89
    end
    inherited ComboBox1: TComboBox
      ItemIndex = 0
      Text = 'Nome Motorista'
      Items.Strings = (
        'Nome Motorista'
        'C'#243'digo')
    end
    inherited ComboBox2: TComboBox
      ItemIndex = 0
      Text = 'Contendo'
      Items.Strings = (
        'Contendo'
        'Igual')
    end
  end
  object dtsMotorista: TOraDataSource
    DataSet = qryMotorista
    Left = 133
    Top = 6
  end
  object qryMotorista: TOraQuery
    SQL.Strings = (
      'SELECT M.ID_MOTOTRAN,'
      '       M.NM_MOTOTRAN,'
      '       M.ID_FORNECEDOR_TRANSPORTADOR,'
      '       F.NM_FORNECEDOR'
      'FROM TRANSPORTADOR_MOTORISTA M,'
      '       FORNECEDOR F'
      
        'WHERE (M.ID_FORNECEDOR_TRANSPORTADOR = F.ID_FORNECEDOR AND M.FL_' +
        'ATIVMOTOTRAN = '#39'S'#39')'
      'ORDER BY M.ID_MOTOTRAN')
    Left = 157
    Top = 6
    object qryMotoristaID_MOTOTRAN: TFloatField
      FieldName = 'ID_MOTOTRAN'
      Required = True
    end
    object qryMotoristaID_FORNECEDOR_TRANSPORTADOR: TFloatField
      FieldName = 'ID_FORNECEDOR_TRANSPORTADOR'
      Required = True
    end
    object qryMotoristaNM_MOTOTRAN: TStringField
      FieldName = 'NM_MOTOTRAN'
      Required = True
      Size = 40
    end
    object qryMotoristaNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Required = True
      Size = 40
    end
  end
end
