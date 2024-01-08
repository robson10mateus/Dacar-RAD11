object FrmSelData: TFrmSelData
  Left = 736
  Top = 446
  Width = 235
  Height = 170
  HorzScrollBar.Range = 217
  VertScrollBar.Range = 122
  ActiveControl = SEDia
  BorderStyle = bsSingle
  Caption = 'Sele'#231#227'o de Data'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnActivate = FormActivate
  TextHeight = 15
  object Panel2: TPanel
    Left = 0
    Top = 67
    Width = 217
    Height = 55
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 217
    Height = 66
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 127
      Top = 22
      Width = 3
      Height = 15
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 69
      Top = 22
      Width = 3
      Height = 15
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SeAno: TEdit
      Left = 142
      Top = 23
      Width = 53
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object SEDia: TSpinEdit
    Left = 25
    Top = 24
    Width = 36
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 1
  end
  object SEMes: TSpinEdit
    Left = 83
    Top = 24
    Width = 36
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 1
  end
  object BitBtn1: TBitBtn
    Left = 20
    Top = 84
    Width = 69
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Kind = bkOK
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 129
    Top = 84
    Width = 69
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
  end
end
