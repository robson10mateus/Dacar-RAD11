object FrmPesqConta: TFrmPesqConta
  Left = 199
  Top = 118
  Width = 430
  Height = 437
  HorzScrollBar.Range = 401
  VertScrollBar.Range = 385
  ActiveControl = EdExpre
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Contas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = 11
  Font.Name = 'Arial'
  Font.Pitch = fpVariable
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
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
    Top = 63
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
    Top = 64
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
    Top = 35
    Width = 295
    Height = 23
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
    Top = 35
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
    Top = 80
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
    Text = 'ID CONTA'
    Items.Strings = (
      'ID CONTA'
      'NOME CONTA')
  end
  object ComboBox2: TComboBox
    Left = 172
    Top = 80
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
    Text = 'Igual'
    Items.Strings = (
      'Igual'
      'Contendo')
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 112
    Width = 385
    Height = 234
    DataSource = DSGrupo
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
    Left = 96
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
    Left = 224
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
  object QrConta: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  CONTA.ID_CONTA,'
      '  CONTA.NM_CONTA'
      'FROM'
      '  CONTA'
      'ORDER BY NM_CONTA')
    Active = True
    Left = 328
    Top = 352
    object QrContaID_CONTA: TFloatField
      FieldName = 'ID_CONTA'
      Required = True
    end
    object QrContaNM_CONTA: TStringField
      FieldName = 'NM_CONTA'
      Required = True
      Size = 40
    end
  end
  object DSGrupo: TOraDataSource
    DataSet = QrConta
    Left = 368
    Top = 352
  end
end
