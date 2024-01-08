object FrmPesqMoto: TFrmPesqMoto
  Left = 526
  Top = 295
  Width = 681
  Height = 518
  HorzScrollBar.Range = 441
  VertScrollBar.Range = 409
  ActiveControl = EdExpre
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Motorista'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = 11
  Font.Name = 'Arial'
  Font.Pitch = fpVariable
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  TextHeight = 10
  object Label1: TLabel
    Left = 29
    Top = 16
    Width = 64
    Height = 15
    Caption = 'Express'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 26
    Top = 60
    Width = 40
    Height = 15
    Caption = 'Campo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 214
    Top = 61
    Width = 53
    Height = 15
    Caption = 'Condi'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdExpre: TEdit
    Left = 18
    Top = 32
    Width = 327
    Height = 23
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 363
    Top = 32
    Width = 75
    Height = 23
    Caption = '&Procurar'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    Glyph.Data = {
      E6000000424DE6000000000000007600000028000000100000000E0000000100
      04000000000070000000120B0000120B00001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333003333333333333000333333333333000333333300003180
      333333308888001333333308F7F780333333308F7F7F780333333087F7F7F803
      3333308F7F7F780333333087F7F7F803333333087F7F80333333333088880333
      33333333000033333333}
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 76
    Width = 169
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 2
    Text = 'NOME MOTORISTA'
    Items.Strings = (
      'NOME MOTORISTA'
      'ID. MOTORISTA'
      'NOME FORNECEDOR'
      'ID. FORNECEDOR')
  end
  object ComboBox2: TComboBox
    Left = 204
    Top = 76
    Width = 140
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 4
    Text = 'CONTENDO'
    Items.Strings = (
      'CONTENDO'
      'IGUAL')
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 112
    Width = 433
    Height = 257
    DataSource = DSFor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = 16
    TitleFont.Name = 'Arial'
    TitleFont.Pitch = fpVariable
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_MOTOTRAN'
        Title.Caption = 'ID. MOTORISTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_MOTOTRAN'
        Title.Caption = 'NOME MOTORISTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR_TRANSPORTADOR'
        Title.Caption = 'ID. FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_FORNECEDOR'
        Title.Caption = 'NOME FORNECEDOR'
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 64
    Top = 384
    Width = 75
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    Kind = bkOK
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 312
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Cancela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  object QrMoto: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT Transportador_motorista.ID_MOTOTRAN,'
      '       Transportador_motorista.ID_FORNECEDOR_TRANSPORTADOR,'
      '       Transportador_motorista.NM_MOTOTRAN,'
      '       Fornecedor.NM_FORNECEDOR'
      '  FROM TRANSPORTADOR_MOTORISTA Transportador_motorista,'
      '       FORNECEDOR Fornecedor'
      
        ' WHERE (Transportador_motorista.ID_FORNECEDOR_TRANSPORTADOR = Fo' +
        'rnecedor.ID_FORNECEDOR)'
      ' '
      '')
    Left = 416
    Top = 376
    object QrMotoID_MOTOTRAN: TFloatField
      FieldName = 'ID_MOTOTRAN'
      Required = True
    end
    object QrMotoID_FORNECEDOR_TRANSPORTADOR: TFloatField
      FieldName = 'ID_FORNECEDOR_TRANSPORTADOR'
      Required = True
    end
    object QrMotoNM_MOTOTRAN: TStringField
      FieldName = 'NM_MOTOTRAN'
      Required = True
      Size = 40
    end
    object QrMotoNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Required = True
      Size = 40
    end
  end
  object DSFor: TOraDataSource
    DataSet = QrMoto
    Left = 416
    Top = 392
  end
end
