object FrmPesqVendedor: TFrmPesqVendedor
  Left = 104
  Top = 350
  Width = 407
  Height = 417
  VertScrollBar.Range = 398
  HorzScrollBar.Range = 401
  ActiveControl = Edt_Expr
  BorderStyle = bsSingle
  Caption = 'Pesquisa Vendedor'
  Color = clBackground
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13

  object Lbl_Expr: TLabel
    Left = 8
    Top = 8
    Width = 62
    Height = 13
    Caption = 'Express'#227'o:'
    Font.Color = clBlack
    Font.Height = 12
    Font.Name = 'helvetica'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edt_Expr: TEdit
    Left = 8
    Top = 24
    Width = 302
    Height = 21
    TabOrder = 1
    OnKeyPress = Edt_ExprKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 322
    Top = 24
    Width = 75
    Height = 23
    Caption = '&Procurar'
    Default = True
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
  object Lbl_Camp: TLabel
    Left = 8
    Top = 56
    Width = 39
    Height = 13
    Caption = 'Campo'
    Font.Color = clBlack
    Font.Height = 12
    Font.Name = 'helvetica'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Lbl_Cond: TLabel
    Left = 192
    Top = 56
    Width = 54
    Height = 13
    Caption = 'Condi'#231#227'o'
    Font.Color = clBlack
    Font.Height = 12
    Font.Name = 'helvetica'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CmbBx_Cond: TComboBox
    Left = 192
    Top = 72
    Width = 121
    Height = 21
    ItemHeight = 15
    Items.Strings = (
      'CONTENDO'
      'IGUAL')
    ItemIndex = 0
    TabOrder = 5
    Text = 'CONTENDO'
  end
  object BitBtn4: TBitBtn
    Left = 51
    Top = 373
    Width = 75
    Height = 25
    TabOrder = 6
    Kind = bkOK
  end
  object BitBtn3: TBitBtn
    Left = 272
    Top = 373
    Width = 75
    Height = 25
    Caption = '&Cancela'
    TabOrder = 7
    OnClick = BitBtn3Click
    Kind = bkCancel
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 72
    Width = 140
    Height = 21
    ItemHeight = 15
    Items.Strings = (
      'CODIGO VENDEDOR'
      'NOME VENDEDOR'
      'NOME FANTASIA'
      'NOME REDUZIDO')
    ItemIndex = 1
    TabOrder = 8
    Text = 'NOME VENDEDOR'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 104
    Width = 393
    Height = 241
    DataSource = DtSrcPesqVend
    TabOrder = 9
    TitleFont.Color = clBlack
    TitleFont.Height = 11
    TitleFont.Name = 'helvetica'
    TitleFont.Pitch = fpVariable
    TitleFont.Style = []
    TitleFont.Weight = 40
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_VENDEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_VENDEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_FANTVEND'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_REDUVEND'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_LOGRVEND'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_LOGRVEND'
        Visible = True
      end>
  end
  object Qry_PesqVend: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT '
      ' VENDEDOR.id_VENDEDOR,'
      ' VENDEDOR.nm_VENDEDOR, '
      ' VENDEDOR.nm_fantvend,'
      ' VENDEDOR.nm_reduvend, '
      ' VENDEDOR.nm_logrvend,'
      ' VENDEDOR.nr_logrvend,'
      ' VENDEDOR.fl_comivend,'
      ' VENDEDOR.pc_comivend'
      ' FROM'
      ' VENDEDOR'
      'WHERE'
      ' VENDEDOR.FL_ATIVVEND = '#39'S'#39' AND'
      ' VENDEDOR.id_VENDEDOR =: id_VENDEDOR'
      'order by  VENDEDOR.nm_VENDEDOR'
      ''
      '')
    Left = 328
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_VENDEDOR'
      end>
    object Qry_PesqVendID_VENDEDOR: TFloatField
      DisplayLabel = 'Cod. Vendedor'
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object Qry_PesqVendNM_VENDEDOR: TStringField
      DisplayLabel = 'Nome Vendedor'
      FieldName = 'NM_VENDEDOR'
      Required = True
      Size = 40
    end
    object Qry_PesqVendNM_FANTVEND: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'NM_FANTVEND'
      Required = True
      Size = 40
    end
    object Qry_PesqVendNM_LOGRVEND: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'NM_LOGRVEND'
      Required = True
      Size = 40
    end
    object Qry_PesqVendNR_LOGRVEND: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NR_LOGRVEND'
      Required = True
      Size = 8
    end
    object Qry_PesqVendNM_REDUVEND: TStringField
      DisplayLabel = 'Nome Reduzido'
      FieldName = 'NM_REDUVEND'
      Required = True
      Size = 15
    end
    object Qry_PesqVendFL_COMIVEND: TStringField
      FieldName = 'FL_COMIVEND'
      Required = True
      Size = 1
    end
    object Qry_PesqVendPC_COMIVEND: TFloatField
      FieldName = 'PC_COMIVEND'
      Required = True
    end
  end
  object DtSrcPesqVend: TOraDataSource
    DataSet = Qry_PesqVend
    Left = 352
    Top = 56
  end
end
