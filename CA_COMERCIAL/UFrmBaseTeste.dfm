object FrmBaseTeste: TFrmBaseTeste
  Left = 198
  Top = 189
  Width = 409
  Height = 203
  HorzScrollBar.Range = 401
  VertScrollBar.Range = 177
  ActiveControl = Edit1
  BorderIcons = [biHelp]
  BorderStyle = bsDialog
  Caption = 'Confirma '
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 30
    Top = 34
    Width = 260
    Height = 15
    Caption = 'Aten'#231#227'o! Confirma conectar-se a Base Teste?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 96
    Top = 109
    Width = 39
    Height = 15
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 393
    Height = 73
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 160
    Top = 104
    Width = 101
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
    Left = 64
    Top = 152
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
  object BitBtn2: TBitBtn
    Left = 264
    Top = 152
    Width = 75
    Height = 25
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
