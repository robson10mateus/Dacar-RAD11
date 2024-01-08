object FrmPesqCidade: TFrmPesqCidade
  Left = 269
  Top = 127
  Width = 420
  Height = 396
  VertScrollBar.Range = 385
  HorzScrollBar.Range = 401
  ActiveControl = EdExpre
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Pesquisa Cidade'
  Color = clBackground
  Font.Color = clBlack
  Font.Height = 11
  Font.Name = 'Arial'
  Font.Pitch = fpVariable
  Font.Style = []

  ParentFont = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
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
    OnClick = BitBtn1Click
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
    Items.Strings = (
      'COD. CIDADE'
      'CIDADE')
    ItemIndex = 1
    TabOrder = 3
    Text = 'NOME SUB-REGIAO'
  end
  object ComboBox2: TComboBox
    Left = 172
    Top = 80
    Width = 140
    Height = 22
    Items.Strings = (
      'Igual'
      'Contendo')
    ItemIndex = 1
    TabOrder = 4
    Text = 'Contendo'
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
    Width = 385
    Height = 234
    DataSource = DSSubReg
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
    OnClick = BitBtn2Click
    Kind = bkOK
  end
  object BitBtn3: TBitBtn
    Left = 224
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Cancela'
    TabOrder = 9
    OnClick = BitBtn3Click
    Kind = bkCancel
  end
  object QrCIDADE: TOraQuery
    SQL.Strings = (
      'SELECT id_cidade,'
      '       nm_cidade'
      'FROM   cidade')
    Left = 336
    Top = 360
    object QrCIDADEID_CIDADE: TFloatField
      DisplayLabel = 'COD. CIDADE'
      FieldName = 'ID_CIDADE'
      Required = True
    end
    object QrCIDADENM_CIDADE: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'NM_CIDADE'
      Required = True
      Size = 40
    end
  end
  object DSSubReg: TOraDataSource
    DataSet = QrCIDADE
    Left = 376
    Top = 360
  end
end
