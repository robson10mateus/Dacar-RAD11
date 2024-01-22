inherited frmPesqFormaPagto: TfrmPesqFormaPagto
  Left = 554
  Top = 265
  Width = 600
  Caption = 'frmPesqFormaPagto'
  PixelsPerInch = 96
  TextHeight = 14

  inherited DBGrid1: TDBGrid
    Width = 600
    DataSource = dtsFormaPagto
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORMPAGA'
        Title.Caption = 'C'#243'd'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_FORMPAGA'
        Title.Caption = 'Forma de Pagamento'
        Width = 400
        Visible = True
      end>
  end
  inherited pnlBotoes: TPanel
    Width = 600
    inherited BitBtn1: TBitBtn
      OnClick = BitBtn1Click
    end
    inherited BitBtn2: TBitBtn
      OnClick = BitBtn2Click
    end
  end
  inherited pnlFiltros: TPanel
    Width = 600
    inherited EdExpre: TEdit
      OnKeyPress = EdExpreKeyPress
    end
    inherited ComboBox1: TComboBox
      Items.Strings = (
        'Descri'#231#227'o'
        'C'#243'digo')
      ItemIndex = 0
      Text = 'Descri'#231#227'o'
    end
    inherited ComboBox2: TComboBox
      Items.Strings = (
        'Contendo'
        'Igual')
      ItemIndex = 0
      Text = 'Contendo'
    end
  end
  object qryFormaPagto: TOraQuery
    SQL.Strings = (
      'SELECT'
      'FORMA_PAGAMENTO.ID_FORMPAGA,'
      'FORMA_PAGAMENTO.NM_FORMPAGA'
      'FROM'
      'FORMA_PAGAMENTO'
      'WHERE FL_FORMPAGA = '#39'LB'#39
      'ORDER BY FORMA_PAGAMENTO.ID_FORMPAGA')
    Left = 384
    Top = 69
    object qryFormaPagtoID_FORMPAGA: TFloatField
      FieldName = 'ID_FORMPAGA'
      Required = True
    end
    object qryFormaPagtoNM_FORMPAGA: TStringField
      FieldName = 'NM_FORMPAGA'
      Required = True
      Size = 40
    end
  end
  object dtsFormaPagto: TOraDataSource
    DataSet = qryFormaPagto
    Left = 424
    Top = 69
  end
end
