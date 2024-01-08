inherited ufrmConsultaRegioes: TufrmConsultaRegioes
  Left = 580
  Top = 418
  Width = 462
  Height = 380
  Caption = 'Comercial Dacar - Consulta de Regi'#245'es'
  OnClose = FormClose
  ExplicitWidth = 462
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 10
  inherited DBGrid1: TDBGrid
    Width = 446
    Height = 172
    DataSource = dtsConsultarRegiao
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_REGIAO'
        Title.Caption = 'C'#243'd. Regi'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_REGIAO'
        Title.Caption = 'Nome Regi'#227'o'
        Visible = True
      end>
  end
  inherited pnlBotoes: TPanel
    Width = 446
    ExplicitWidth = 462
    inherited BitBtn1: TBitBtn
      OnClick = BitBtn1Click
    end
    inherited BitBtn2: TBitBtn
      OnClick = BitBtn2Click
    end
  end
  inherited pnlFiltros: TPanel
    Width = 446
    ExplicitWidth = 462
    inherited EdExpre: TEdit
      OnKeyPress = EdExpreKeyPress
    end
    inherited ComboBox1: TComboBox
      ItemIndex = 1
      Text = 'Nome'
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        '')
    end
    inherited ComboBox2: TComboBox
      ItemIndex = 0
      Text = 'Contendo'
      Items.Strings = (
        'Contendo'
        'Igual')
    end
  end
  object QryConsultarRegiao: TOraQuery
    SQL.Strings = (
      'SELECT DISTINCT ID_REGIAO, NM_REGIAO'
      'FROM DACAR_REGIAO_LOGISTICA'
      'ORDER BY ID_REGIAO')
    Left = 374
    Top = 6
    object QryConsultarRegiaoID_REGIAO: TFloatField
      FieldName = 'ID_REGIAO'
      Required = True
    end
    object QryConsultarRegiaoNM_REGIAO: TStringField
      FieldName = 'NM_REGIAO'
      Size = 100
    end
  end
  object dtsConsultarRegiao: TOraDataSource
    DataSet = QryConsultarRegiao
    Left = 405
    Top = 7
  end
end
