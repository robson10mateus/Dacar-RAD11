object FrmPesqMatEmba: TFrmPesqMatEmba
  Left = 352
  Top = 211
  Width = 535
  Height = 446
  HorzScrollBar.Range = 505
  VertScrollBar.Range = 385
  ActiveControl = EdExpre
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Pesquisa Material Embalagem '
  Color = clBtnFace
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
    Left = 28
    Top = 63
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
    Left = 298
    Top = 64
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
    Left = 25
    Top = 35
    Width = 330
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
    Top = 35
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
    Left = 24
    Top = 80
    Width = 241
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ItemIndex = 1
    ParentFont = False
    TabOrder = 2
    Text = 'Descri'#231#227'o do Material/Embalagem'
    Items.Strings = (
      'C'#243'digo do Material/Embalagem'
      'Descri'#231#227'o do Material/Embalagem'
      'C'#243'digo do Material'
      'C'#243'digo Externo'
      'Descri'#231#227'o do Material'
      'C'#243'digo da Embalagem'
      'Descri'#231#227'o da Embalagem'
      'C'#243'digo Antigo')
  end
  object ComboBox2: TComboBox
    Left = 296
    Top = 80
    Width = 144
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ItemIndex = 1
    ParentFont = False
    TabOrder = 4
    Text = 'Contendo'
    Items.Strings = (
      'Igual'
      'Contendo')
  end
  object DBGrid1: TDBGrid
    Left = 10
    Top = 112
    Width = 495
    Height = 234
    DataSource = DSMatEmba
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
        FieldName = 'ID_PRODMATEEMBA'
        Title.Caption = 'C'#243'digo Mat./Emb.'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_PRODMATEEMBA'
        Title.Caption = 'Material/Embalagem'
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_MATERIAL'
        Title.Caption = 'C'#243'd. Material'
        Width = 70
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 360
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
    Left = 288
    Top = 360
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
  object QrMatEmba: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT DISTINCT Material_embalagem.EMPRESA,'
      '       Material_embalagem.FILIAL,'
      '       Material_embalagem.ID_MATERIAL,'
      '       Material_embalagem.ID_MATEEMBA,'
      '       Material_embalagem.ID_PRODMATEEMBA,'
      '       Material_embalagem.NM_PRODMATEEMBA,'
      '       Material_embalagem.NM_PRODREDUMATEEMBA,'
      '       Material_embalagem.ID_EMBALAGEM,'
      '       Material_embalagem.QN_CAPAMINIMATEEMBA,'
      '       Material_embalagem.QN_CAPAMAXIMATEEMBA,'
      '       Material_embalagem.QN_CAPAPADRMATEEMBA,'
      '       Material_embalagem.QN_CAPAMEDIMATEEMBA,'
      '       Material_embalagem.QN_CAPAPADRUNIDMATEEMBA,'
      '       Material_embalagem.QN_CAPAMEDIUNIDMATEEMBA,'
      '       Material_embalagem.FX_MATEEMBA,'
      '       Material.NM_MATERIAL,'
      '       Material.IE_MATERIAL,       '
      '       Embalagem.NM_EMBALAGEM'
      'FROM MATERIAL Material,'
      '     EMBALAGEM Embalagem,'
      '     MATERIAL_EMBALAGEM Material_embalagem'
      'WHERE  (Embalagem.EMPRESA = Material_embalagem.EMPRESA)'
      '   AND  (Embalagem.FILIAL = Material_embalagem.FILIAL)'
      
        '   AND  (Embalagem.ID_EMBALAGEM = Material_embalagem.ID_EMBALAGE' +
        'M)'
      '   AND  (Material.EMPRESA = Material_embalagem.EMPRESA)'
      '   AND  (Material.FILIAL = Material_embalagem.FILIAL)'
      '   AND  (Material.ID_MATERIAL = Material_embalagem.ID_MATERIAL)'
      'ORDER BY Material_embalagem.ID_PRODMATEEMBA')
    Left = 416
    Top = 304
    object QrMatEmbaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object QrMatEmbaFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object QrMatEmbaID_MATERIAL: TFloatField
      FieldName = 'ID_MATERIAL'
      Required = True
    end
    object QrMatEmbaID_MATEEMBA: TFloatField
      FieldName = 'ID_MATEEMBA'
      Required = True
    end
    object QrMatEmbaID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 3
    end
    object QrMatEmbaNM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
    object QrMatEmbaNM_PRODREDUMATEEMBA: TStringField
      FieldName = 'NM_PRODREDUMATEEMBA'
      Size = 15
    end
    object QrMatEmbaID_EMBALAGEM: TFloatField
      FieldName = 'ID_EMBALAGEM'
      Required = True
    end
    object QrMatEmbaQN_CAPAMINIMATEEMBA: TFloatField
      FieldName = 'QN_CAPAMINIMATEEMBA'
    end
    object QrMatEmbaQN_CAPAMAXIMATEEMBA: TFloatField
      FieldName = 'QN_CAPAMAXIMATEEMBA'
    end
    object QrMatEmbaQN_CAPAPADRMATEEMBA: TFloatField
      FieldName = 'QN_CAPAPADRMATEEMBA'
    end
    object QrMatEmbaQN_CAPAMEDIMATEEMBA: TFloatField
      FieldName = 'QN_CAPAMEDIMATEEMBA'
    end
    object QrMatEmbaQN_CAPAPADRUNIDMATEEMBA: TFloatField
      FieldName = 'QN_CAPAPADRUNIDMATEEMBA'
    end
    object QrMatEmbaQN_CAPAMEDIUNIDMATEEMBA: TFloatField
      FieldName = 'QN_CAPAMEDIUNIDMATEEMBA'
    end
    object QrMatEmbaFX_MATEEMBA: TStringField
      FieldName = 'FX_MATEEMBA'
      Required = True
      Size = 1
    end
    object QrMatEmbaNM_MATERIAL: TStringField
      FieldName = 'NM_MATERIAL'
      Required = True
      Size = 40
    end
    object QrMatEmbaIE_MATERIAL: TStringField
      FieldName = 'IE_MATERIAL'
      Size = 15
    end
    object QrMatEmbaNM_EMBALAGEM: TStringField
      FieldName = 'NM_EMBALAGEM'
      Required = True
      Size = 40
    end
  end
  object DSMatEmba: TOraDataSource
    DataSet = QrMatEmba
    Left = 464
    Top = 304
  end
end
