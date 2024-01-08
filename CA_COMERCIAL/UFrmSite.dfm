object FrmSite: TFrmSite
  Left = 307
  Top = 201
  Width = 222
  Height = 118
  HorzScrollBar.Range = 214
  VertScrollBar.Range = 80
  ActiveControl = Site
  BorderIcons = [biSystemMenu]
  Caption = 'Site '
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object Image3: TImage
    Left = 53
    Top = 88
    Width = 16
    Height = 16
    AutoSize = True
    Enabled = False
    Picture.Data = {
      07544269746D6170F6000000424DF60000000000000076000000280000001000
      000010000000010004000000000080000000120B0000120B0000100000001000
      0000000000000000800000800000008080008000000080008000808000007F7F
      7F00BFBFBF000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00333333303333333333333300033333333333330803333333333333000333
      33333333330F033333333333330F03333333333330F7F033333333330FF7FF03
      333333330FF7FF03333333330FFFFF033333333330FFF0333333333333000333
      3333333333333333333333333333333333333333333333333333333333333333
      3333}
    Transparent = True
    Visible = False
  end
  object Label17: TLabel
    Left = -1
    Top = 7
    Width = 160
    Height = 15
    Caption = '   Pesquisa  Situa'#231#227'o Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object aguarde: TLabel
    Left = 74
    Top = 86
    Width = 57
    Height = 15
    Caption = 'Aguarde...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Site: TComboBox
    Left = 11
    Top = 29
    Width = 202
    Height = 21
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 1
    Text = 'S'#227'o Paulo'
    Items.Strings = (
      'S'#227'o Paulo'
      'Paran'#225
      'Bahia'
      'Piau'#237
      'Rio de Janeiro'
      'Maranh'#227'o'
      'Par'#225
      'Amapa'
      'Contig'#234'ncia')
  end
  object btn_pesquisa: TBitBtn
    Left = 76
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 16
    Font.Name = 'helvetica'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btn_pesquisaClick
  end
  object Edit_uf: TEdit
    Left = 182
    Top = 57
    Width = 26
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object edRetorno: TEdit
    Left = 183
    Top = 84
    Width = 26
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 3
    Top = 75
  end
end
