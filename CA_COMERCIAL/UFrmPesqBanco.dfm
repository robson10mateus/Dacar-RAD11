object FrmPesqBanco: TFrmPesqBanco
  Left = 249
  Top = 91
  Width = 407
  Height = 420
  VertScrollBar.Range = 402
  HorzScrollBar.Range = 404
  ActiveControl = BitBtn1
  Caption = 'Pesquisa Bancos'
  Color = clBackground
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13

  object Label1: TLabel
    Left = 14
    Top = 8
    Width = 1
    Height = 13
    Font.Color = clBlack
    Font.Height = 12
    Font.Name = 'helvetica'
    Font.Pitch = fpVariable
    Font.Style = []

    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 321
    Top = 25
    Width = 74
    Height = 24
    Caption = 'Procurar'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      EA000000424DE6000000000000007600000028000000100000000E0000000100
      04000000000070000000120B0000120B00001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333033333333333333000333333333333000333333333333100
      3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
      3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
      33333333333333333333}
  end
  object Label2: TLabel
    Left = 11
    Top = 55
    Width = 1
    Height = 13
    Font.Color = clBlack
    Font.Height = 12
    Font.Name = 'helvetica'
    Font.Pitch = fpVariable
    Font.Style = []

    ParentFont = False
  end
  object Label3: TLabel
    Left = 206
    Top = 56
    Width = 1
    Height = 13
    Font.Color = clBlack
    Font.Height = 12
    Font.Name = 'helvetica'
    Font.Pitch = fpVariable
    Font.Style = []

    ParentFont = False
  end
  object BitBtn3: TBitBtn
    Left = 268
    Top = 377
    Width = 75
    Height = 25
    Caption = '&Cancela'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object BitBtn2: TBitBtn
    Left = 67
    Top = 377
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 5
    Glyph.Data = {
      E2010000424DDE01000000000000760000002800000024000000120000000100
      04000000000068010000120B0000120B00001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object ComboBox1: TComboBox
    Left = 15
    Top = 72
    Width = 161
    Height = 21
    ItemHeight = 15
    Items.Strings = (
      'C'#211'D. BANCO'
      'NOME BANCO'
      'NR. BANCO')
    ItemIndex = 2
    TabOrder = 6
    Text = 'NR. BANCO'
  end
  object ComboBox2: TComboBox
    Left = 210
    Top = 72
    Width = 109
    Height = 21
    ItemHeight = 15
    Items.Strings = (
      'Contendo'
      'Igual')
    ItemIndex = 0
    TabOrder = 7
    Text = 'Contendo'
  end
  object EdExpre: TEdit
    Left = 17
    Top = 27
    Width = 302
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
  end
  object Label4: TLabel
    Left = 22
    Top = 7
    Width = 64
    Height = 15
    Caption = 'Express'#227'o:'
    Font.Color = clBlack
    Font.Height = 12
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 19
    Top = 54
    Width = 40
    Height = 15
    Caption = 'Campo'
    Font.Color = clBlack
    Font.Height = 12
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 214
    Top = 55
    Width = 53
    Height = 15
    Caption = 'Condi'#231#227'o'
    Font.Color = clBlack
    Font.Height = 12
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 2
    Top = 109
    Width = 402
    Height = 245
    DataSource = DS
    ReadOnly = True
    TabOrder = 12
    TitleFont.Color = clBlack
    TitleFont.Height = 11
    TitleFont.Name = 'helvetica'
    TitleFont.Pitch = fpVariable
    TitleFont.Style = []
    TitleFont.Weight = 40
    OnDblClick = DBGrid1DblClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_BANCO'
        Title.Caption = 'C'#211'D. BANCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_BANCO'
        Title.Caption = 'NOME BANCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_BANCO'
        Title.Caption = 'NR. BANCO'
        Visible = True
      end>
  end
  object Qr: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  BANCO.ID_BANCO,'
      '  BANCO.NM_BANCO,'
      '  BANCO.NR_BANCO'
      'FROM'
      '  BANCO'
      'ORDER BY BANCO.NM_BANCO')
    Left = 328
    Top = 360
    object QrID_BANCO: TFloatField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object QrNM_BANCO: TStringField
      FieldName = 'NM_BANCO'
      Required = True
      Size = 40
    end
    object QrNR_BANCO: TStringField
      FieldName = 'NR_BANCO'
      Required = True
      Size = 4
    end
  end
  object DS: TOraDataSource
    DataSet = Qr
    Left = 360
    Top = 360
  end
end
