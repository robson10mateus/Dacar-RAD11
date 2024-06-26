object FrmPesqFor: TFrmPesqFor
  Left = 921
  Top = 349
  Width = 429
  Height = 455
  HorzScrollBar.Range = 401
  VertScrollBar.Range = 386
  ActiveControl = EdExpre
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Fornecedor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = 11
  Font.Name = 'Arial'
  Font.Pitch = fpVariable
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  TextHeight = 10
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
    Left = 18
    Top = 57
    Width = 40
    Height = 15
    Caption = 'Campo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 174
    Top = 58
    Width = 53
    Height = 15
    Caption = 'Condi'#231#227'o'
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
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 323
    Top = 28
    Width = 75
    Height = 23
    Caption = '&Procurar'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
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
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 73
    Width = 140
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 2
    Text = 'NOME FORNECEDOR'
    Items.Strings = (
      'NOME FORNECEDOR'
      'ID FORNECEDOR')
  end
  object ComboBox2: TComboBox
    Left = 172
    Top = 73
    Width = 140
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 4
    Text = 'CONTENDO'
    Items.Strings = (
      'CONTENDO'
      'IGUAL')
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 112
    Width = 385
    Height = 237
    DataSource = DSFor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = 16
    TitleFont.Name = 'Arial'
    TitleFont.Pitch = fpVariable
    TitleFont.Style = []
  end
  object BitBtn2: TBitBtn
    Left = 72
    Top = 361
    Width = 75
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    Kind = bkOK
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
  end
  object BitBtn3: TBitBtn
    Left = 256
    Top = 361
    Width = 75
    Height = 25
    Caption = 'Cancela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 6
  end
  object QrFor: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  FORNECEDOR.ID_FORNECEDOR,'
      '  FORNECEDOR.NM_FORNECEDOR,'
      '  FORNECEDOR.NM_LOGRFORN || '#39', '#39' || NR_LOGRFORN AS ENDERECO,'
      '  FORNECEDOR.NR_CEPFORN,'
      '  FORNECEDOR.NR_FONEFORN,'
      '  FORNECEDOR.NR_CNPJFORN'
      'FROM'
      '  FORNECEDOR'
      'WHERE'
      '  NVL(FL_ATIVFORN,'#39'N'#39') = '#39'S'#39
      'ORDER BY'
      '  FORNECEDOR.NM_FORNECEDOR')
    Left = 352
    Top = 360
    object QrForID_FORNECEDOR: TFloatField
      FieldName = 'ID_FORNECEDOR'
      Required = True
    end
    object QrForNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Required = True
      Size = 40
    end
    object QrForENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object QrForNR_CEPFORN: TStringField
      FieldName = 'NR_CEPFORN'
      Required = True
      Size = 8
    end
    object QrForNR_FONEFORN: TStringField
      FieldName = 'NR_FONEFORN'
      Size = 9
    end
    object QrForNR_CNPJFORN: TStringField
      FieldName = 'NR_CNPJFORN'
      Size = 14
    end
  end
  object DSFor: TOraDataSource
    DataSet = QrFor
    Left = 384
    Top = 360
  end
end
