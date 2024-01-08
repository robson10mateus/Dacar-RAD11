object FrmSelNotaFiscal_E: TFrmSelNotaFiscal_E
  Left = 419
  Top = 91
  Width = 792
  Height = 482
  HorzScrollBar.Range = 792
  VertScrollBar.Range = 466
  ActiveControl = EdExpre
  Caption = 'Consulta Nota de Entrada'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 21
    Top = 13
    Width = 64
    Height = 15
    Caption = 'Express'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 19
    Top = 81
    Width = 59
    Height = 15
    Caption = 'Data Inicio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 128
    Top = 81
    Width = 49
    Height = 15
    Caption = 'Data Fim'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdExpre: TEdit
    Left = 18
    Top = 29
    Width = 295
    Height = 23
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 57
    Width = 140
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 1
    Text = 'NOME FORNECEDOR'
    Items.Strings = (
      'NOME FORNECEDOR'
      'ID FORNECEDOR'
      'NR NOTA')
  end
  object ComboBox2: TComboBox
    Left = 172
    Top = 57
    Width = 140
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 2
    Text = 'CONTENDO'
    Items.Strings = (
      'CONTENDO'
      'IGUAL')
  end
  object BitBtn1: TBitBtn
    Left = 323
    Top = 28
    Width = 75
    Height = 23
    Caption = '&Procurar'
    Default = True
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
      3333333333333333003333333333333000333333333333000333333300003180
      333333308888001333333308F7F780333333308F7F7F780333333087F7F7F803
      3333308F7F7F780333333087F7F7F803333333087F7F80333333333088880333
      33333333000033333333}
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object DBGrid1: TDBGrid
    Left = -1
    Top = 120
    Width = 793
    Height = 297
    DataSource = DSNotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = 16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'ID Forn'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_FORNECEDOR'
        Title.Caption = 'Fornecedor'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_NOTA'
        Title.Caption = 'NF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_ENTRADA'
        Title.Caption = 'Dt NF'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODMATEEMBA'
        Title.Caption = 'C'#243'd Prod'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_PRODMATEEMBA'
        Title.Caption = 'Produto'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Caption = 'Qtde'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_UNITARIO'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFOP'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NM_NATUOPERCFOP'
        Visible = False
      end>
  end
  object BitBtn3: TBitBtn
    Left = 104
    Top = 441
    Width = 75
    Height = 25
    Caption = 'Cancela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
  end
  object BitBtn2: TBitBtn
    Left = 24
    Top = 441
    Width = 75
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Kind = bkOK
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 6
  end
  object Edt_DataI: TEdit
    Left = 17
    Top = 96
    Width = 100
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = 'Edt_DataI'
  end
  object btnDataI: TBitBtn
    Left = 94
    Top = 98
    Width = 21
    Height = 19
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
    TabOrder = 9
    OnClick = btnDataIClick
  end
  object Edt_DataF: TEdit
    Left = 127
    Top = 96
    Width = 100
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = 'Edit1'
  end
  object BitBtn4: TBitBtn
    Left = 205
    Top = 97
    Width = 21
    Height = 19
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
    TabOrder = 10
    OnClick = BitBtn4Click
  end
  object QrNotas: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select F.ID_FORNECEDOR, F.NM_FORNECEDOR, E.NR_NOTA , E.DT_ENTRAD' +
        'A, E.CFOP, C.NM_NATUOPERCFOP,'
      
        '       M.ID_PRODMATEEMBA, m.NM_Prodmateemba , I.QTDE, I.VL_UNITA' +
        'RIO  '
      '  from Ca_Movifiscal_e E'
      ' Inner Join Fornecedor F'
      '    On F.ID_FORNECEDOR = E.ID_FORNECEDOR'
      ' Inner Join Ca_Itemmfiscal_e I'
      '    On E.ID_MOVIFISCAL = I.ID_MOVIFISCAL'
      ' Inner Join Material_Embalagem M'
      '    on M.ID_PRODMATEEMBA = I.ID_PRODMATEEMBA   '
      ' Inner Join CFOP C'
      '    On E.CFOP = C.NR_CFOP   '
      ' Where  ( E.DT_ENTRADA >= TO_DATE( :Data_INI ,'#39'DD/MM/YYYY'#39')'
      '   AND  E.DT_ENTRADA <=  TO_DATE( :Data_FIM ,'#39'DD/MM/YYYY'#39') )'
      '&Macro'
      ''
      ''
      'ORDER BY F.NM_FORNECEDOR ,   E.DT_ENTRADA')
    BeforeOpen = QrNotasBeforeOpen
    Left = 344
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Data_INI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Data_FIM'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'Macro'
      end>
    object QrNotasID_FORNECEDOR: TFloatField
      FieldName = 'ID_FORNECEDOR'
      Required = True
    end
    object QrNotasNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Required = True
      Size = 40
    end
    object QrNotasNR_NOTA: TFloatField
      FieldName = 'NR_NOTA'
    end
    object QrNotasDT_ENTRADA: TDateTimeField
      FieldName = 'DT_ENTRADA'
    end
    object QrNotasCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object QrNotasNM_NATUOPERCFOP: TStringField
      FieldName = 'NM_NATUOPERCFOP'
      Required = True
      Size = 40
    end
    object QrNotasID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
    object QrNotasNM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
    object QrNotasQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object QrNotasVL_UNITARIO: TFloatField
      FieldName = 'VL_UNITARIO'
    end
  end
  object DSNotas: TOraDataSource
    DataSet = QrNotas
    Left = 376
    Top = 408
  end
end
