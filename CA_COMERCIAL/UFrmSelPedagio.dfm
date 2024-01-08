object FrmSelPedagio: TFrmSelPedagio
  Left = 192
  Top = 107
  ActiveControl = MEdIni
  Caption = 'Relat'#243'rio Pra'#231'as de Ped'#225'gio'
  ClientHeight = 268
  ClientWidth = 340
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 340
    Height = 268
    Align = alClient
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 368
    ExplicitHeight = 309
    object Label1: TLabel
      Left = 61
      Top = 73
      Width = 129
      Height = 15
      Caption = 'Data de Entrega inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 71
      Top = 125
      Width = 120
      Height = 15
      Caption = 'Data de Entrega final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MEdIni: TMaskEdit
      Left = 240
      Top = 68
      Width = 73
      Height = 24
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
    object MEdFim: TMaskEdit
      Left = 240
      Top = 120
      Width = 73
      Height = 24
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
    end
    object BitBtn1: TBitBtn
      Left = 64
      Top = 232
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
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 232
      Top = 232
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
      TabOrder = 2
    end
  end
end
