object FrmPesqPedagio: TFrmPesqPedagio
  Left = 228
  Top = 108
  Width = 407
  Height = 417
  HorzScrollBar.Range = 401
  VertScrollBar.Range = 398
  ActiveControl = Edt_Expr
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Pra'#231'as de Ped'#225'gio'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Lbl_Expr: TLabel
    Left = 8
    Top = 8
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
  object Lbl_Camp: TLabel
    Left = 8
    Top = 56
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
  object Lbl_Cond: TLabel
    Left = 192
    Top = 56
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
  object Edt_Expr: TEdit
    Left = 8
    Top = 24
    Width = 302
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = Edt_ExprKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 322
    Top = 24
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
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object CmbBx_Cond: TComboBox
    Left = 192
    Top = 72
    Width = 121
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 4
    Text = 'CONTENDO'
    Items.Strings = (
      'CONTENDO'
      'IGUAL')
  end
  object BitBtn4: TBitBtn
    Left = 51
    Top = 373
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
  object BitBtn3: TBitBtn
    Left = 272
    Top = 373
    Width = 75
    Height = 25
    Caption = '&Cancela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 72
    Width = 140
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 1
    ParentFont = False
    TabOrder = 3
    Text = 'NOME DA RODOVIA'
    Items.Strings = (
      'CODIGO PEDAGIO'
      'NOME DA RODOVIA'
      'KM DO PEDAGIO'
      'CODIGO DA CIDADE')
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 104
    Width = 393
    Height = 241
    DataSource = DS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = 16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
  end
  object Qr: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  CA_PEDAGIO.ID_PEDAGIO,'
      '  CA_PEDAGIO.NM_RODOVIA,'
      '  CA_PEDAGIO.KM_PEDAGIO,'
      '  CA_PEDAGIO.ID_CIDADE,'
      '  CA_PEDAGIO.VALOR_EIXO,'
      '  CA_PEDAGIO.EMPRESA,'
      '  CA_PEDAGIO.FILIAL,'
      '  CIDADE.NM_CIDADE'
      'FROM'
      '  CA_PEDAGIO,'
      '  CIDADE'
      'WHERE'
      '  CIDADE.ID_CIDADE = CA_PEDAGIO.ID_CIDADE')
    Left = 328
    Top = 56
    object QrID_PEDAGIO: TFloatField
      FieldName = 'ID_PEDAGIO'
      Required = True
    end
    object QrNM_RODOVIA: TStringField
      FieldName = 'NM_RODOVIA'
      Size = 30
    end
    object QrKM_PEDAGIO: TFloatField
      FieldName = 'KM_PEDAGIO'
    end
    object QrID_CIDADE: TFloatField
      FieldName = 'ID_CIDADE'
    end
    object QrVALOR_EIXO: TFloatField
      FieldName = 'VALOR_EIXO'
    end
    object QrEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object QrFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object QrNM_CIDADE: TStringField
      FieldName = 'NM_CIDADE'
      Required = True
      Size = 40
    end
  end
  object DS: TOraDataSource
    DataSet = Qr
    Left = 360
    Top = 56
  end
end
