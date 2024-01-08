object FrmPesqRegLog: TFrmPesqRegLog
  Left = 219
  Top = 79
  Width = 407
  Height = 417
  HorzScrollBar.Range = 401
  VertScrollBar.Range = 398
  ActiveControl = Edt_Expr
  BorderStyle = bsSingle
  Caption = 'Pesquisa Regi'#227'o Log'#237'stica'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Lbl_Expr: TLabel
    Left = 8
    Top = 8
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
  object Lbl_Camp: TLabel
    Left = 8
    Top = 56
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
  object Lbl_Cond: TLabel
    Left = 192
    Top = 56
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
  object Edt_Expr: TEdit
    Left = 8
    Top = 24
    Width = 302
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = Edt_ExprKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 322
    Top = 24
    Width = 75
    Height = 23
    Caption = '&Procurar'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Segoe UI'
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
  object CmbBx_Cond: TComboBox
    Left = 192
    Top = 72
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 4
    Text = 'CONTENDO'
    Items.Strings = (
      'CONTENDO'
      'IGUAL')
  end
  object BitBtn4: TBitBtn
    Left = 51
    Top = 373
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
    TabOrder = 6
  end
  object BitBtn3: TBitBtn
    Left = 272
    Top = 373
    Width = 75
    Height = 25
    Caption = '&Cancela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 72
    Width = 153
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 1
    ParentFont = False
    TabOrder = 3
    Text = 'NOME REG. LOG'#205'STICA'
    Items.Strings = (
      'CODIGO REG. LOG'#205'STICA'
      'NOME REG. LOG'#205'STICA')
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 104
    Width = 393
    Height = 241
    DataSource = DtSrcPesqRegLog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = 16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_REGILOGI'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_REGILOGI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_INTEREGILOGI'
        Width = 65
        Visible = True
      end>
  end
  object Qry_PesqRegLog: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT '
      '  logistica_regiao.empresa,'
      '  logistica_regiao.filial,'
      '  logistica_regiao.id_regilogi,'
      '  logistica_regiao.nm_regilogi,'
      '  logistica_regiao.fx_regilogi,'
      '  logistica_regiao.id_interegilogi,'
      '  logistica_regiao.gn_riscregilogi'
      'FROM  logistica_regiao'
      'WHERE'
      '  logistica_regiao.id_regilogi = :id_regilogi'
      'order by logistica_regiao.nm_regilogi'
      '')
    Left = 328
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_regilogi'
        Value = nil
      end>
    object Qry_PesqRegLogEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object Qry_PesqRegLogFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object Qry_PesqRegLogID_REGILOGI: TFloatField
      DisplayLabel = 'Cod. Regi'#227'o Log'#237'stica'
      FieldName = 'ID_REGILOGI'
      Required = True
    end
    object Qry_PesqRegLogNM_REGILOGI: TStringField
      DisplayLabel = 'Nome Regi'#227'o Log'#237'stica'
      FieldName = 'NM_REGILOGI'
      Required = True
      Size = 40
    end
    object Qry_PesqRegLogFX_REGILOGI: TStringField
      FieldName = 'FX_REGILOGI'
      Required = True
      Size = 1
    end
    object Qry_PesqRegLogID_INTEREGILOGI: TStringField
      DisplayLabel = 'Cod. Interno'
      FieldName = 'ID_INTEREGILOGI'
      Size = 10
    end
    object Qry_PesqRegLogGN_RISCREGILOGI: TIntegerField
      FieldName = 'GN_RISCREGILOGI'
      Required = True
    end
  end
  object DtSrcPesqRegLog: TOraDataSource
    DataSet = Qry_PesqRegLog
    Left = 352
    Top = 56
  end
end
