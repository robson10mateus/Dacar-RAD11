object FrmInst: TFrmInst
  Left = 192
  Top = 107
  Width = 346
  Height = 123
  HorzScrollBar.Range = 335
  VertScrollBar.Range = 114
  ActiveControl = DBEdit1
  BorderStyle = bsDialog
  Caption = 'Instru'#231#245'es para Boletas'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 11
  Font.Name = 'helvetica'
  Font.Pitch = fpVariable
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 10
  object Label1: TLabel
    Left = 2
    Top = 17
    Width = 48
    Height = 15
    Caption = '1'#186' Linha:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 2
    Top = 39
    Width = 48
    Height = 15
    Caption = '2'#186' Linha:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 2
    Top = 60
    Width = 48
    Height = 15
    Caption = '3'#186' Linha:'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 54
    Top = 14
    Width = 281
    Height = 23
    CharCase = ecUpperCase
    DataField = 'Linha1'
    DataSource = DsInst
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'helvetica'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 54
    Top = 37
    Width = 281
    Height = 23
    CharCase = ecUpperCase
    DataField = 'Linha2'
    DataSource = DsInst
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'helvetica'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 54
    Top = 59
    Width = 281
    Height = 23
    CharCase = ecUpperCase
    DataField = 'Linha3'
    DataSource = DsInst
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'helvetica'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object BtSair: TBitBtn
    Left = 246
    Top = 87
    Width = 88
    Height = 27
    Cursor = crHandPoint
    Hint = 'Fecha a Tela.'
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = 16
    Font.Name = 'helvetica'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    OnClick = BtSairClick
  end
  object TbInst: TOraTable
    TableName = 'Instrucoes.db'
    Left = 96
    Top = 88
    object TbInstLinha1: TStringField
      FieldName = 'Linha1'
      Size = 40
    end
    object TbInstLinha2: TStringField
      FieldName = 'Linha2'
      Size = 40
    end
    object TbInstLinha3: TStringField
      FieldName = 'Linha3'
      Size = 40
    end
  end
  object DsInst: TDataSource
    DataSet = TbInst
    Left = 128
    Top = 88
  end
end
