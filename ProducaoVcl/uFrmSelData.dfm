object FrmSelData: TFrmSelData
  Left = 604
  Top = 226
  Caption = 'Sele'#231#227'o de Data'
  ClientHeight = 109
  ClientWidth = 211
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'helvetica'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 211
    Height = 63
    Align = alTop
    BevelWidth = 2
    TabOrder = 0
    ExplicitWidth = 219
    object Label2: TLabel
      Left = 69
      Top = 22
      Width = 4
      Height = 19
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 19
      Font.Name = 'helvetica'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 124
      Top = 22
      Width = 4
      Height = 19
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 19
      Font.Name = 'helvetica'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SEDia: TSpinEdit
      Left = 24
      Top = 19
      Width = 43
      Height = 22
      MaxValue = 31
      MinValue = 1
      TabOrder = 0
      Value = 1
    end
    object SEMes: TSpinEdit
      Left = 78
      Top = 19
      Width = 43
      Height = 22
      MaxValue = 12
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object SeAno: TEdit
      Left = 134
      Top = 19
      Width = 63
      Height = 21
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 61
    Width = 211
    Height = 48
    Align = alBottom
    BevelWidth = 2
    TabOrder = 1
    ExplicitTop = 66
    ExplicitWidth = 219
    object BitBtn1: TBitBtn
      Left = 20
      Top = 12
      Width = 69
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 129
      Top = 12
      Width = 69
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end
