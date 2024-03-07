object FrmDialCupom: TFrmDialCupom
  Left = 357
  Top = 106
  Width = 768
  Height = 454
  HorzScrollBar.Range = 685
  VertScrollBar.Range = 426
  ActiveControl = btnCan
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Importar itens do cupom fiscal'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 31
    Top = 18
    Width = 194
    Height = 15
    Caption = 'Informe o n'#250'mero do cupom fiscal: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 394
    Top = 18
    Width = 29
    Height = 15
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 388
    Width = 735
    Height = 38
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 416
    ExplicitWidth = 768
    object btnOK: TBitBtn
      Left = 526
      Top = 5
      Width = 85
      Height = 28
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object btnCan: TBitBtn
      Left = 630
      Top = 5
      Width = 85
      Height = 28
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 193
    Width = 735
    Height = 195
    Align = alBottom
    DataSource = DtsPesq
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = 16
    TitleFont.Name = 'Arial'
    TitleFont.Pitch = fpVariable
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODMATEEMBA'
        Title.Caption = 'C'#243'digo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_PRODMATEEMBA'
        Title.Caption = 'Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESO'
        Title.Caption = 'Peso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PR_UNIT'
        Title.Caption = 'Valor Unit.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Caption = 'Qtde.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESOCAIXA'
        Title.Caption = 'Peso Cx'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_TotItem'
        Title.Caption = 'Total'
        Visible = True
      end>
  end
  object edtNumCupom: TEdit
    Left = 240
    Top = 15
    Width = 130
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 600
    Top = 14
    Width = 85
    Height = 28
    Caption = 'Carregar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object edtData: TEdit
    Left = 429
    Top = 15
    Width = 89
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object BPESQ: TBitBtn
    Left = 522
    Top = 14
    Width = 28
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      E6000000424DE6000000000000007600000028000000100000000E0000000100
      04000000000070000000120B0000120B00001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333033333333333333000333333333333000333333333333100
      3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
      3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
      33333333333333333333}
    ParentFont = False
    TabOrder = 7
    OnClick = BPESQClick
  end
  object grdCupom: TDBGrid
    Left = 0
    Top = 42
    Width = 735
    Height = 126
    Align = alBottom
    DataSource = DtsCupom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = 16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnCellClick = grdCupomCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'DT_MOVIMENTO'
        Title.Caption = 'Data do Cupom'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_CUPOM'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_CPFCLIE'
        Title.Caption = 'CPF / CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALKG'
        Title.Caption = 'Peso Total (KG)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_TOTALVENDA'
        Title.Caption = 'Valor Total (R$)'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 168
    Width = 735
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 6
    ExplicitTop = 196
    ExplicitWidth = 768
    object Label3: TLabel
      Left = 562
      Top = 5
      Width = 85
      Height = 15
      Caption = 'Total Calculado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edt_Total: TEdit
      Left = 639
      Top = 2
      Width = 80
      Height = 23
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object DtsPesq: TDataSource
    DataSet = QryPesq
    Left = 663
    Top = 335
  end
  object QryPesq: TOraQuery
    SQL.Strings = (
      'SELECT'
      '  MATERIAL_EMBALAGEM.ID_PRODMATEEMBA,'
      '  MATERIAL_EMBALAGEM.NM_PRODMATEEMBA,'
      '  CUPOM_FISCAL_ITEM.PR_UNIT,'
      '  MATERIAL_EMBALAGEM.ID_MATEEMBA,'
      '  MATERIAL_EMBALAGEM.ID_MATERIAL,'
      '  MATERIAL_EMBALAGEM.ID_EMBALAGEM,'
      
        '  (SUM(CUPOM_FISCAL_ITEM.VL_TOTAL) / CUPOM_FISCAL_ITEM.PR_UNIT) ' +
        '/ '
      '  CASE'
      '    WHEN MATERIAL_EMBALAGEM.FL_PADRAO = '#39'S'#39
      '    THEN MATERIAL_EMBALAGEM.QN_CAPAPADRMATEEMBA'
      '    ELSE MATERIAL_EMBALAGEM.QN_CAPAMEDIMATEEMBA END  AS QTDE,'
      '  CASE'
      '    WHEN MATERIAL_EMBALAGEM.FL_PADRAO = '#39'S'#39
      '    THEN MATERIAL_EMBALAGEM.QN_CAPAPADRMATEEMBA'
      '    ELSE MATERIAL_EMBALAGEM.QN_CAPAMEDIMATEEMBA END Pesocaixa'
      ''
      'FROM'
      '  CA_VAR_ITEMSAIDA_TSL CUPOM_FISCAL_ITEM'
      '  '
      '  INNER JOIN MATERIAL_EMBALAGEM'
      
        '  ON CUPOM_FISCAL_ITEM.ID_PRODMATEEMBA = LTRIM(MATERIAL_EMBALAGE' +
        'M.ID_PRODMATEEMBA, 0)'
      '  '
      'WHERE'
      '  CUPOM_FISCAL_ITEM.ID_VAR_SAIDA = :ID_VAR_SAIDA'
      '  '
      'GROUP BY'
      '  MATERIAL_EMBALAGEM.ID_PRODMATEEMBA,'
      '  MATERIAL_EMBALAGEM.NM_PRODMATEEMBA,'
      '  CUPOM_FISCAL_ITEM.PR_UNIT,'
      '  MATERIAL_EMBALAGEM.ID_MATEEMBA,'
      '  MATERIAL_EMBALAGEM.ID_MATERIAL,'
      '  MATERIAL_EMBALAGEM.ID_EMBALAGEM,'
      '  MATERIAL_EMBALAGEM.QN_CAPAMEDIMATEEMBA,'
      ' MATERIAL_EMBALAGEM.QN_CAPAPADRMATEEMBA,'
      '  MATERIAL_EMBALAGEM.FL_PADRAO'
      '  ')
    OnCalcFields = QryPesqCalcFields
    Left = 618
    Top = 335
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_VAR_SAIDA'
        Value = nil
      end>
    object QryPesqID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
    object QryPesqNM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
    object QryPesqPR_UNIT: TFloatField
      FieldName = 'PR_UNIT'
    end
    object QryPesqID_MATEEMBA: TFloatField
      FieldName = 'ID_MATEEMBA'
      Required = True
    end
    object QryPesqID_MATERIAL: TFloatField
      FieldName = 'ID_MATERIAL'
      Required = True
    end
    object QryPesqID_EMBALAGEM: TFloatField
      FieldName = 'ID_EMBALAGEM'
      Required = True
    end
    object QryPesqQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object QryPesqVL_TotItem: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VL_TotItem'
      Calculated = True
    end
    object QryPesqPESOCAIXA: TFloatField
      FieldName = 'PESOCAIXA'
    end
  end
  object QryCupom: TOraQuery
    SQL.Strings = (
      'SELECT'
      '  CUPOM_FISCAL.DT_MOVIMENTO,'
      '  CUPOM_FISCAL.NUM_CUPOM,'
      '  CUPOM_FISCAL.TOTALKG,'
      '  CUPOM_FISCAL.VL_TOTALVENDA,'
      '  CUPOM_FISCAL.NR_CPFCLIE,'
      '  CUPOM_FISCAL.ID_VAR_SAIDA'
      '  '
      'FROM'
      '  CA_VAR_SAIDA_TSL CUPOM_FISCAL'
      '  '
      'WHERE'
      '  NUM_CUPOM = :NUM_CUPOM'
      '  AND DT_MOVIMENTO = :DT_MOVIMENTO')
    Left = 455
    Top = 330
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NUM_CUPOM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DT_MOVIMENTO'
        Value = nil
      end>
    object QryCupomDT_MOVIMENTO: TDateTimeField
      FieldName = 'DT_MOVIMENTO'
    end
    object QryCupomNUM_CUPOM: TStringField
      FieldName = 'NUM_CUPOM'
      Size = 6
    end
    object QryCupomTOTALKG: TFloatField
      FieldName = 'TOTALKG'
    end
    object QryCupomVL_TOTALVENDA: TFloatField
      FieldName = 'VL_TOTALVENDA'
    end
    object QryCupomNR_CPFCLIE: TStringField
      FieldName = 'NR_CPFCLIE'
      Size = 14
    end
    object QryCupomID_VAR_SAIDA: TFloatField
      FieldName = 'ID_VAR_SAIDA'
      Required = True
    end
  end
  object DtsCupom: TDataSource
    DataSet = QryCupom
    Left = 515
    Top = 330
  end
end
