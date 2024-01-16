object FrmPesqGrupo: TFrmPesqGrupo
  Left = 235
  Top = 114
  Width = 430
  Height = 445
  HorzScrollBar.Range = 401
  VertScrollBar.Range = 387
  ActiveControl = EdExpre
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Pesquisa Grupo de Produtos'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = 11
  Font.Name = 'Arial'
  Font.Pitch = fpVariable
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 10
  object Label1: TLabel
    Left = 21
    Top = 16
    Width = 62
    Height = 15
    Caption = 'Express'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 63
    Width = 41
    Height = 15
    Caption = 'Campo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 174
    Top = 64
    Width = 53
    Height = 15
    Caption = 'Condi'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
  end
  object EdExpre: TEdit
    Left = 18
    Top = 35
    Width = 295
    Height = 23
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
    Left = 323
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
    Left = 16
    Top = 80
    Width = 140
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
    Text = 'NOME GRUPO'
    Items.Strings = (
      'ID GRUPO'
      'NOME GRUPO')
  end
  object ComboBox2: TComboBox
    Left = 172
    Top = 80
    Width = 141
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
    Left = 12
    Top = 112
    Width = 389
    Height = 236
    DataSource = DSGrupo
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
    OnDblClick = DBGrid1DblClick
  end
  object BitBtn2: TBitBtn
    Left = 64
    Top = 362
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
    Left = 272
    Top = 362
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
  object QrGrupo: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'select Id_grupmate,nm_grupmate'
      'from material_grupo')
    Left = 352
    Top = 304
    object QrGrupoID_GRUPMATE: TFloatField
      DisplayLabel = 'ID GRUPO'
      FieldName = 'ID_GRUPMATE'
      Required = True
    end
    object QrGrupoNM_GRUPMATE: TStringField
      DisplayLabel = 'NOME GRUPO'
      FieldName = 'NM_GRUPMATE'
      Required = True
      Size = 40
    end
  end
  object DSGrupo: TOraDataSource
    DataSet = QrGrupo
    Left = 384
    Top = 312
  end
end
