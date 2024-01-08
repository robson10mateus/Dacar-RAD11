object FrmSeleFile: TFrmSeleFile
  Left = 192
  Top = 107
  Width = 466
  Height = 409
  HorzScrollBar.Range = 449
  VertScrollBar.Range = 385
  Caption = 'Seleciona Diret'#243'rio'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 52
    Height = 15
    Caption = 'Diret'#243'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdArq: TEdit
    Left = 95
    Top = 14
    Width = 261
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 372
    Top = 13
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
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
