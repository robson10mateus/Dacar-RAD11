object FrmConfSenha: TFrmConfSenha
  Left = 194
  Top = 116
  Width = 201
  Height = 108
  HorzScrollBar.Range = 161
  VertScrollBar.Range = 97
  ActiveControl = Edit1
  BorderStyle = bsDialog
  Caption = 'Confirma'#231#227'o'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 11
  Font.Name = 'helvetica'
  Font.Pitch = fpVariable
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 10
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 99
    Height = 15
    Caption = 'Confime a Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 40
    Top = 32
    Width = 121
    Height = 23
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object BitBtn1: TBitBtn
    Left = 63
    Top = 72
    Width = 75
    Height = 25
    Caption = '&Ok'
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
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
