inherited frmConsultaSubRegiao: TfrmConsultaSubRegiao
  Left = 621
  Top = 346
  Width = 376
  Height = 347
  Caption = 'Comercial Dacar - Consulta de SubRegi'#245'es'
  Position = poDesktopCenter
  OnClose = FormClose
  ExplicitWidth = 376
  ExplicitHeight = 347
  TextHeight = 10
  inherited DBGrid1: TDBGrid
    Width = 360
    Height = 138
    DataSource = dtsConsultaSubRegiao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_SUBRLOGI'
        Title.Caption = 'C'#243'd'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_SUBRLOGI'
        Title.Caption = 'Descri'#231#227'o da SubRegi'#227'o'
        Width = 300
        Visible = True
      end>
  end
  inherited pnlBotoes: TPanel
    Width = 360
    ExplicitWidth = 376
    inherited BitBtn1: TBitBtn
      OnClick = BitBtn1Click
    end
    inherited BitBtn2: TBitBtn
      OnClick = BitBtn2Click
    end
  end
  inherited pnlFiltros: TPanel
    Width = 360
    ExplicitWidth = 360
    inherited EdExpre: TEdit
      OnKeyPress = EdExpreKeyPress
    end
    inherited ComboBox1: TComboBox
      ItemIndex = 1
      Text = 'Descri'#231#227'o'
      Items.Strings = (
        'C'#243'digo'
        'Descri'#231#227'o')
    end
    inherited ComboBox2: TComboBox
      ItemIndex = 1
      Text = 'Contendo'
      Items.Strings = (
        'Igual'
        'Contendo')
    end
  end
  object qryConsultaSubRegiao: TOraQuery
    SQL.Strings = (
      
        'SELECT ID_SUBRLOGI, NM_SUBRLOGI FROM LOGISTICA_SUBREGIAO ORDER B' +
        'Y ID_SUBRLOGI')
    Left = 119
    Top = 9
    object qryConsultaSubRegiaoID_SUBRLOGI: TFloatField
      DisplayLabel = 'ID SUB-REGIAO'
      FieldName = 'ID_SUBRLOGI'
      Required = True
    end
    object qryConsultaSubRegiaoNM_SUBRLOGI: TStringField
      DisplayLabel = 'NOME SUB-REGIAO'
      FieldName = 'NM_SUBRLOGI'
      Required = True
      Size = 40
    end
  end
  object dtsConsultaSubRegiao: TOraDataSource
    DataSet = qryConsultaSubRegiao
    Left = 159
    Top = 9
  end
end
