object FrmModelPesqui: TFrmModelPesqui
  Left = 239
  Top = 123
  Width = 420
  Height = 396
  VertScrollBar.Range = 385
  HorzScrollBar.Range = 407
  ActiveControl = EdExpre
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Pesquisa'
  Color = clBackground
  Font.Color = clBlack
  Font.Height = 11
  Font.Name = 'Arial'
  Font.Pitch = fpVariable
  Font.Style = []

  ParentFont = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 14

  object Label1: TLabel
    Left = 21
    Top = 16
    Width = 55
    Height = 14
    Caption = 'Express'#227'o:'
  end
  object EdExpre: TEdit
    Left = 18
    Top = 35
    Width = 295
    Height = 22
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 323
    Top = 35
    Width = 75
    Height = 23
    Caption = '&Procurar'
    TabOrder = 2
    Glyph.Data = {
      EA000000424DE6000000000000007600000028000000100000000E0000000100
      04000000000070000000120B0000120B00001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333003333333333333000333333333333000333333300003180
      333333308888001333333308F7F780333333308F7F7F780333333087F7F7F803
      3333308F7F7F780333333087F7F7F803333333087F7F80333333333088880333
      33333333000033333333}
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 80
    Width = 140
    Height = 22
    TabOrder = 3
    Text = 'ComboBox1'
  end
  object ComboBox2: TComboBox
    Left = 172
    Top = 80
    Width = 140
    Height = 22
    TabOrder = 4
    Text = 'ComboBox2'
  end
  object Label2: TLabel
    Left = 18
    Top = 63
    Width = 33
    Height = 14
    Caption = 'Campo'
  end
  object Label3: TLabel
    Left = 174
    Top = 64
    Width = 45
    Height = 14
    Caption = 'Condi'#231#227'o'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 112
    Width = 391
    Height = 234
    TabOrder = 7
    TitleFont.Color = clBlack
    TitleFont.Height = 11
    TitleFont.Name = 'Arial'
    TitleFont.Pitch = fpVariable
    TitleFont.Style = []
    TitleFont.Weight = 40
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 360
    Width = 75
    Height = 25
    TabOrder = 8
    Kind = bkOK
  end
  object BitBtn3: TBitBtn
    Left = 256
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Cancela'
    TabOrder = 9
    OnClick = BitBtn3Click
    Kind = bkCancel
  end
end
