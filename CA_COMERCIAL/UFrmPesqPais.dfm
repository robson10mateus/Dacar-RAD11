object FrmPesqPais: TFrmPesqPais
  Left = 278
  Top = 109
  Width = 420
  Height = 396
  HorzScrollBar.Range = 401
  VertScrollBar.Range = 385
  ActiveControl = EdExpre
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Pesquisa Pa'#237's '
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = 11
  Font.Name = 'Arial'
  Font.Pitch = fpVariable
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 10
  object Label1: TLabel
    Left = 21
    Top = 16
    Width = 62
    Height = 15
    Caption = 'Express'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 60
    Width = 41
    Height = 15
    Caption = 'Campo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 174
    Top = 61
    Width = 53
    Height = 15
    Caption = 'Condi'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
  end
  object EdExpre: TEdit
    Left = 18
    Top = 32
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
    Top = 32
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
    Top = 76
    Width = 140
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 2
    Text = 'NOME DO PA'#205'S'
    Items.Strings = (
      'NOME DO PA'#205'S'
      'C'#211'DIGO DO PA'#205'S')
  end
  object ComboBox2: TComboBox
    Left = 172
    Top = 76
    Width = 140
    Height = 21
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
    Top = 111
    Width = 385
    Height = 237
    DataSource = DSPAIS
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
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PAIS'
        Title.Caption = 'C'#211'D. PA'#205'S'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_PAIS'
        Title.Caption = 'NOME PA'#205'S'
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 72
    Top = 360
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
    Top = 360
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
    OnClick = BitBtn3Click
  end
  object QrPAIS: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  PAIS.ID_PAIS,'
      '  PAIS.NM_PAIS'
      'FROM'
      '  PAIS'
      'ORDER BY'
      '  PAIS.NM_PAIS')
    Left = 352
    Top = 360
    object QrPAISID_PAIS: TFloatField
      FieldName = 'ID_PAIS'
      Required = True
    end
    object QrPAISNM_PAIS: TStringField
      FieldName = 'NM_PAIS'
      Required = True
      Size = 40
    end
  end
  object DSPAIS: TOraDataSource
    DataSet = QrPAIS
    Left = 384
    Top = 360
  end
end
