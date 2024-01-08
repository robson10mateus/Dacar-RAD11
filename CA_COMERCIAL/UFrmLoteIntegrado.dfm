object FrmLoteIntegrado: TFrmLoteIntegrado
  Left = 185
  Top = 127
  Width = 981
  Height = 601
  VertScrollBar.Range = 58
  ActiveControl = PageControl1
  BorderStyle = bsSingle
  Caption = 'Lote Integrado'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 11
  Font.Name = 'helvetica'
  Font.Pitch = fpVariable
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 10
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 965
    Height = 504
    ActivePage = TabCriterio
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabCriterio: TTabSheet
      Caption = 'Crit'#233'rio'
      object Label6: TLabel
        Left = 316
        Top = 28
        Width = 56
        Height = 15
        Caption = 'Condi'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 308
        Top = 79
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
      object LCampos: TListBox
        Left = 8
        Top = 20
        Width = 266
        Height = 369
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ItemHeight = 15
        ParentFont = False
        TabOrder = 0
        OnClick = LCamposClick
      end
      object MResul: TMemo
        Left = 287
        Top = 118
        Width = 493
        Height = 269
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object CBCond: TComboBox
        Left = 383
        Top = 24
        Width = 138
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ItemIndex = 0
        ParentFont = False
        TabOrder = 2
        Text = 'Igual a'
        Items.Strings = (
          'Igual a'
          'Diferente de'
          'Maior que'
          'Maior ou igual a'
          'Menor que'
          'Menor ou igual a')
      end
      object EdExpre: TEdit
        Left = 382
        Top = 74
        Width = 265
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnChange = EdExpreChange
      end
      object RGeou: TRadioGroup
        Left = 541
        Top = 17
        Width = 105
        Height = 33
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          '&e'
          '&ou')
        ParentFont = False
        TabOrder = 4
      end
      object BtIncluir: TBitBtn
        Left = 680
        Top = 17
        Width = 75
        Height = 23
        Caption = '&Incluir'
        Default = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'helvetica'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Glyph.Data = {
          1E060000424D1E0600000000000036000000280000001B000000120000000100
          180000000000E8050000120B0000120B00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0000000FFFF00000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFF
          FFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0000000FFFF00FFFF00FFFF00FFFF00FFFF00000000C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFF
          FFFFFFFFFF800000FFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
          C0C0C0C0C0C0C0C0C0C0000000FFFF00FFFF00FFFF00FFFF00FFFF0080000000
          0000FFFF00FFFF00000000C0C0C0000000000000000000000000000000C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0000000FFFF
          FFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFF00000000000000000000000000
          000000FFFF00FFFF00FFFF00FFFF00FFFF000000C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0000000C0C0C0C0C0C0000000FFFF00FFFF00FFFF00FFFF00FFFF008000
          00FFFF00FFFF00FFFF0000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF000000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000
          FFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFF0000
          0000000000000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00
          0000C0C0C0C0C0C0C0C0C0000000000000FFFF00FFFF00800000FFFF00FFFF00
          800000FFFF00FFFF00FFFF00800000FFFF00000000000000808000000000C0C0
          C000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000
          0000C0C0C0000000FFFFFFFFFFFF800000FFFFFFFFFFFF800000FFFFFFFFFFFF
          FFFFFF80000000000000FFFF00000080800000000000000000FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF000000000000C0C0C0C0C0C0000000FF
          FF00FFFF00800000FFFF00FFFF00800000FFFF00FFFF00FFFF0000000000FFFF
          00FFFF00000080800000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
          00000000000000000000C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF800000FFFFFFFFFFFFFFFFFF00000000FFFF00FFFF000000808000
          00000000FFFF00FFFF00FFFF00FFFF000000C0C0C0C0C0C0C0C0C0000000C0C0
          C0C0C0C0C0C0C0C0C0C0000000FFFF00FFFF00800000FFFF00FFFF00FFFF00FF
          FF00000000C0C0C000000000FFFF00FFFF00000080800000000000FFFF000000
          000000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0000000FFFFFFFFFFFF800000FFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C000
          000000FFFF00FFFF000000808000000000000000C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFF00FFFF
          00FFFF00000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000000000
          0000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFF000000C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808000000000C0
          C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C000
          0000}
        ParentFont = False
        TabOrder = 6
        OnClick = BtIncluirClick
      end
      object BtLimpar: TBitBtn
        Left = 680
        Top = 46
        Width = 75
        Height = 23
        Caption = 'Limpar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'helvetica'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Glyph.Data = {
          2A010000424D2A010000000000007600000028000000110000000F0000000100
          040000000000B4000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFF0000000FFF700000007FFFFF0000000FFF0FFFFFFF0FFFFF0000000FFF0
          F0F0F0F0FFFFF0000000FFF0F0F0F0F0FFFFF0000000FFF0F0F0F0F0FFFFF000
          0000FFF0F0F0F0F0FFFFF0000000FFF0F0F0F0F0FFFFF0000000FFF0F0F0F0F0
          FFFFF0000000FFF0F0F0F0F0FFFFF0000000FFF0FFFFFFF0FFFFF0000000FF70
          000000007FFFF0000000FF0FFFFFFFFF0FFFF0000000FF70000000007FFFF000
          0000FFFFF70007FFFFFFF0000000}
        ParentFont = False
        TabOrder = 8
        OnClick = BtLimparClick
      end
      object BtAtivar: TBitBtn
        Left = 680
        Top = 75
        Width = 75
        Height = 22
        Caption = '&Ativar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'helvetica'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FF0000FF0000FFFFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFF00
          00FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 5
        OnClick = BtAtivarClick
      end
      object BPESQ: TBitBtn
        Left = 623
        Top = 75
        Width = 23
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'helvetica'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Glyph.Data = {
          E6000000424DE6000000000000007600000028000000100000000E0000000100
          04000000000070000000120B0000120B00001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333033333333333333000333333333333000333333333333100
          3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
          3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
          33333333333333333333}
        ParentFont = False
        TabOrder = 7
        Visible = False
        OnClick = BPESQClick
      end
    end
    object TabLista: TTabSheet
      Caption = 'Lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'helvetica'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 973
        Height = 513
        Align = alClient
        Color = clWhite
        DataSource = Ds
        FixedColor = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = 16
        TitleFont.Name = 'Arial'
        TitleFont.Pitch = fpVariable
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'EMPRESA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FILIAL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_LOTE'
            Title.Caption = 'Lote'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_INCLOTE'
            Title.Caption = 'Data Inclus'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_ALOJAMENTO'
            Title.Caption = 'Data Aloj'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_USUARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_INTEGRADO'
            Title.Caption = 'C'#243'd Integrado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_FORNECEDOR'
            Title.Caption = 'Integrado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESC_NUCLEO'
            Title.Caption = 'N'#250'cleo'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NR_CNPJFORN'
            Title.Caption = 'CNPJ'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FL_STATUS'
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_FECHAMENTO'
            Title.Caption = 'DT Fechamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_ALOJ'
            Title.Caption = 'Qtd Aloj.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDADEK'
            Title.Caption = 'Idade'
            Visible = True
          end>
      end
    end
    object TabDetalhe: TTabSheet
      Caption = 'Detalhe'
      ImageIndex = 1
      object pnl_Lote: TPanel
        Left = 0
        Top = 0
        Width = 957
        Height = 49
        Align = alTop
        Color = clWindow
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 4
          Top = 3
          Width = 25
          Height = 15
          Caption = 'Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 170
          Top = 3
          Width = 68
          Height = 15
          Caption = 'Data Alojam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 272
          Top = 3
          Width = 28
          Height = 15
          Caption = 'ID Int'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 323
          Top = 3
          Width = 54
          Height = 15
          Caption = 'Integrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 671
          Top = 3
          Width = 44
          Height = 15
          Caption = 'Usu'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 559
          Top = 3
          Width = 31
          Height = 15
          Caption = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label51: TLabel
          Left = 820
          Top = 3
          Width = 37
          Height = 15
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 53
          Top = 3
          Width = 49
          Height = 15
          Caption = 'Data Incl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 899
          Top = 3
          Width = 39
          Height = 15
          Caption = 'N'#250'cleo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 4
          Top = 19
          Width = 49
          Height = 23
          Color = clSilver
          DataField = 'ID_LOTE'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object Edt_DtAlojLote: TDBEdit
          Left = 168
          Top = 19
          Width = 102
          Height = 23
          Color = clWhite
          DataField = 'DATA_ALOJAMENTO'
          DataSource = Ds
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 270
          Top = 19
          Width = 51
          Height = 23
          Color = clSilver
          DataField = 'ID_INTEGRADO'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object Lkp_Integrado: TDBLookupComboBox
          Left = 322
          Top = 19
          Width = 239
          Height = 23
          DataField = 'ID_INTEGRADO'
          DataSource = Ds
          DropDownWidth = 370
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          KeyField = 'ID_INTEGRADO'
          ListField = 'NM_FORNECEDOR;NR_CNPJFORN'
          ListSource = Ds_Integrado
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit4: TDBEdit
          Left = 670
          Top = 19
          Width = 150
          Height = 23
          Color = clSilver
          DataField = 'NOME_USUARIO'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit12: TDBEdit
          Left = 559
          Top = 19
          Width = 112
          Height = 23
          Color = clSilver
          DataField = 'NR_CNPJFORN'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit37: TDBEdit
          Left = 819
          Top = 19
          Width = 78
          Height = 23
          Color = clSilver
          DataField = 'STATUS'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit38: TDBEdit
          Left = 53
          Top = 19
          Width = 114
          Height = 23
          Color = clSilver
          DataField = 'DATA_INCLOTE'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object Lkp_Nucleo: TDBLookupComboBox
          Left = 896
          Top = 19
          Width = 111
          Height = 23
          DataField = 'ID_NUCLEO'
          DataSource = Ds
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          KeyField = 'ID_NUCLEO'
          ListField = 'DESC_NUCLEO'
          ListSource = Ds_Nucleo
          ParentFont = False
          TabOrder = 7
          OnKeyDown = Lkp_NucleoKeyDown
        end
        object btn_DtLoteAloj: TBitBtn
          Left = 249
          Top = 20
          Width = 21
          Height = 19
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 16
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Glyph.Data = {
            E6000000424DE6000000000000007600000028000000100000000E0000000100
            04000000000070000000120B0000120B00001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333033333333333333000333333333333000333333333333100
            3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
            3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
            33333333333333333333}
          ParentFont = False
          TabOrder = 8
          OnClick = btn_DtLoteAlojClick
        end
      end
      object Pnl_Fornecedor: TPanel
        Left = 0
        Top = 49
        Width = 957
        Height = 198
        Align = alTop
        Color = clWindow
        ParentBackground = False
        TabOrder = 1
        object dbg_Fornecedor: TDBGrid
          Left = 1
          Top = 77
          Width = 955
          Height = 120
          Align = alClient
          DataSource = Ds_AlojamentoFornec
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = 16
          TitleFont.Name = 'Arial'
          TitleFont.Pitch = fpVariable
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'EMPRESA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'FILIAL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_LOTE'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_FORNECEDOR'
              Title.Caption = 'Id For.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NM_FORNECEDOR'
              Title.Caption = 'Fornecedor'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NR_NOTA'
              Title.Caption = 'Nota Fiscal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SEQ_NOTA'
              Title.Caption = 'Seq NF'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Caption = 'Quantidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_LINHAGEM'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DESC_LINHAGEM'
              Title.Caption = 'Linhagem'
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IDADE_MATRIZ'
              Title.Caption = 'Idade Matriz'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_PINTAINHO'
              Title.Caption = 'Valor Pintainho'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRORIO_COMPRADO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'GTA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_GTA'
              Title.Caption = 'Data GTA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_RECEB'
              Title.Caption = 'Data Aloj.'
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 1
          Top = 36
          Width = 955
          Height = 41
          Align = alTop
          Color = clWindow
          ParentBackground = False
          TabOrder = 1
          object btn_PesqNF: TSpeedButton
            Left = 333
            Top = 15
            Width = 23
            Height = 22
            Hint = 'Pesquisa Nota'
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000003F3F3F0000
              000000007F7F7F7F7F7FFFFFFFFFFFFF7F7F7F7F7F7F3F3F3F00000000000000
              0000BFBFBF0000000000003F3F3F0000000000007F7F7F7F7F7FFFFFFF7F7F7F
              FFFFFFFFFFFF7F7F7F0000000000000000007F7F7F0000000000003F3F3F0000
              000000007F7F7F7F7F7FFFFFFF7F7F7F7F7F7FBFBFBF3F3F3F00000000000000
              00007F7F7F0000000000003F3F3F0000000000007F7F7F7F7F7FFFFFFFFFFFFF
              FFFFFF3F3F3FBFBFBFFFFFFFFFFFFFFFFFFFBFBFBF3F3F3F0000003F3F3F0000
              000000007F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF7F7F7F7F7F7F0000000000000000007F7F7F7F7F7FFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F0000000000
              000000007F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF7F7F7F3F3F3F7F7F7F0000003F3F3F000000FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFFFFFF3F3F3F7F7F
              7F000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF7F7F7FFFFFFFFFFFFF0000003F3F3FFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FBFBFBFFFFFFFBFBFBFBFBF
              BF000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF3F3F3FFFFFFF7F7F7F3F3F3F000000BFBFBFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FBFBFBF0000000000
              000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFBFBFBF0000000000000000003F3F3FFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = btn_PesqNFClick
          end
          object Label9: TLabel
            Left = 4
            Top = 1
            Width = 65
            Height = 15
            Caption = 'Fornecedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 262
            Top = 1
            Width = 62
            Height = 15
            Caption = 'Nota Fiscal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 462
            Top = 1
            Width = 56
            Height = 15
            Caption = 'Linhagem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 741
            Top = 1
            Width = 72
            Height = 15
            Caption = 'Vlr Pintainho'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 671
            Top = 1
            Width = 55
            Height = 15
            Caption = 'Idade Mat'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 399
            Top = 1
            Width = 27
            Height = 15
            Caption = 'Qtde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label48: TLabel
            Left = 815
            Top = 1
            Width = 22
            Height = 15
            Caption = 'GTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label49: TLabel
            Left = 886
            Top = 1
            Width = 51
            Height = 15
            Caption = 'Data GTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label50: TLabel
            Left = 968
            Top = 1
            Width = 68
            Height = 15
            Caption = 'Data Alojam'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label54: TLabel
            Left = 357
            Top = 2
            Width = 39
            Height = 15
            Caption = 'Seq NF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit5: TDBEdit
            Left = 3
            Top = 16
            Width = 50
            Height = 23
            Color = clSilver
            DataField = 'ID_FORNECEDOR'
            DataSource = Ds_AlojamentoFornec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edt_Nota: TDBEdit
            Left = 261
            Top = 16
            Width = 69
            Height = 23
            Color = clSilver
            DataField = 'NR_NOTA'
            DataSource = Ds_AlojamentoFornec
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 462
            Top = 16
            Width = 208
            Height = 23
            DataField = 'ID_LINHAGEM'
            DataSource = Ds_AlojamentoFornec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            KeyField = 'ID_LINHAGEM'
            ListField = 'DESC_LINHAGEM'
            ListSource = Ds_Linhagem
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit7: TDBEdit
            Left = 671
            Top = 16
            Width = 69
            Height = 23
            Color = clWhite
            DataField = 'IDADE_MATRIZ'
            DataSource = Ds_AlojamentoFornec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object DBEdit8: TDBEdit
            Left = 741
            Top = 16
            Width = 71
            Height = 23
            Color = clWhite
            DataField = 'VALOR_PINTAINHO'
            DataSource = Ds_AlojamentoFornec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
          end
          object DBEdit10: TDBEdit
            Left = 56
            Top = 16
            Width = 202
            Height = 23
            Color = clSilver
            DataField = 'NM_FORNECEDOR'
            DataSource = Ds_AlojamentoFornec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object DBEdit11: TDBEdit
            Left = 397
            Top = 16
            Width = 63
            Height = 23
            Color = clWhite
            DataField = 'QUANTIDADE'
            DataSource = Ds_AlojamentoFornec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
          end
          object DBEdit34: TDBEdit
            Left = 814
            Top = 16
            Width = 69
            Height = 23
            Color = clWhite
            DataField = 'GTA'
            DataSource = Ds_AlojamentoFornec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object edtDataGTA: TDBEdit
            Left = 884
            Top = 16
            Width = 80
            Height = 23
            DataField = 'DATA_GTA'
            DataSource = Ds_AlojamentoFornec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            MaxLength = 11
            ParentFont = False
            TabOrder = 4
          end
          object edtDataAloj: TDBEdit
            Left = 967
            Top = 15
            Width = 80
            Height = 23
            DataField = 'DATA_RECEB'
            DataSource = Ds_AlojamentoFornec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            MaxLength = 11
            ParentFont = False
            TabOrder = 6
          end
          object BPesqDt: TBitBtn
            Left = 943
            Top = 18
            Width = 21
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 16
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            Glyph.Data = {
              E6000000424DE6000000000000007600000028000000100000000E0000000100
              04000000000070000000120B0000120B00001000000010000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333033333333333333000333333333333000333333333333100
              3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
              3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
              33333333333333333333}
            ParentFont = False
            TabOrder = 8
            OnClick = BPesqDtClick
          end
          object btnDataAloj: TBitBtn
            Left = 1026
            Top = 18
            Width = 21
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 16
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            Glyph.Data = {
              E6000000424DE6000000000000007600000028000000100000000E0000000100
              04000000000070000000120B0000120B00001000000010000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333033333333333333000333333333333000333333333333100
              3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
              3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
              33333333333333333333}
            ParentFont = False
            TabOrder = 10
            OnClick = btnDataAlojClick
          end
          object DBEdit2: TDBEdit
            Left = 358
            Top = 16
            Width = 36
            Height = 23
            Color = clWhite
            DataField = 'SEQ_NOTA'
            DataSource = Ds_AlojamentoFornec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 955
          Height = 35
          Align = alTop
          Color = clWindow
          ParentBackground = False
          TabOrder = 2
          ExplicitWidth = 971
          object btn_IncFornec: TSpeedButton
            Left = 1
            Top = 1
            Width = 30
            Height = 30
            Hint = 'Incluir Fornecedor'
            Enabled = False
            Flat = True
            Glyph.Data = {
              36160000424D361600000000000036000000280000003A000000200000000100
              18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFAF
              AFAFAFAFAFAFAFAFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F989F9F98
              9F9F989FA0A0A0B0B8B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFAFAFAFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0A0B0B0
              B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F989F90
              90908F888F8080808080807F787F7F78707F78708F807F9088809F988FB0B0AF
              C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80808080
              80807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F603F5048
              3F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF
              9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040404047
              405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F78706F
              60605F504F50483F60380F60380F6F38006F380070380070380070400070480F
              7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F484F3F
              383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070A0A0A0
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              B0A8AF9F989F8F888F7F787060605F60403060380F6038008050006F38007040
              009060007F60009060009060009060007F60009F500FA0701FAFA070FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F
              7F787F6060604047403F383F3030304047403F383F3F383F5050504F484F5050
              505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFA0A0A08F908F7F787F6F68404F483F4F
              380F6F38007040009F68009F6800A068009F68009F68009F68009F68009F6800
              9F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F383F5F
              585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
              6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              9FA09F80808070706F50483F5F38006F38009F5800A06810B07820AF700FA070
              00CF780FCF780FCF780FCF780F9F68009F68009F68009F6800A07000AF983FD0
              B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080707070
              4F484F3030303F383F5050505F5F5F6F6F6F6067605F585F7070707070707070
              707070705F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF9F989F8F80806060504F400F6F400090
              68009F6800A07810A06800A068009F68004020003F2000402800CF780F9F6800
              9F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F6060605F
              585F5F585F5F585F2020202020202020207070705F585F5F585F5F585F5F585F
              5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              9F989F7F787060401F6F38008F6000A06800A06800A06800A06800A07000A070
              002F18002F18002F1800CF780FA07000A07000A070009F68009F6800A07000CF
              8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F404040
              3F383F5050505F585F5F585F5F585F5F585F5F585F5F585F1F181F1F181F1F18
              1F7070705F585F5F585F5F585F5F585F5F585F5F585F808080BFBFBFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7F706F4F4010703800906000A0
              6800A06800A06800A070009F70009F68002018002018002F1800CF780FA06800
              A06800A06800A068009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F5F585F5F
              585F5F585F5F585F1010101010101F181F7070705F585F5F585F5F585F5F585F
              5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              90908F6F60506F380F7038009F60009F6800A07000A070009F68009060009F68
              00201000201000201000CF780FCF780FCF780FCF780FA07000A06800A07000CF
              780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090906060603F3F3F
              3F383F5057505F585F5F585F5F585F5F585F5050505F585F1010101010101010
              107070707070707070707070705F585F5F585F5F585F7070709F989FC0C7C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7048206F38007040009060009F
              6800A06800A068003F20003F20003F20003018001F10002F1800402800402800
              402800CF780FA06800A06800A07000AF900FD0A03FE0B080FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F5F585F20
              20202020202020201F181F1010101F181F2020202020202020207070705F585F
              5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              A098906F584F6F38007060009F68009F6800AF700FA0701030200F0F080F2F18
              000F080F0000000000000000000000002F2000CF780F9F68009F68009F7000AF
              780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F3F383F
              4047405F585F5F585F6067606060602020200F0F0F1F181F0F0F0F0000000000
              000000000000001F181F7070705F585F5F585F5F585F6067608F888FC0C0C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAFA8A07050406F40008F60009F68009F
              6800A0680FA0680F3020000F080F2F18000F080F000000000000000000000000
              2F2000CF780F9F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F5F5F5F5F5F1F
              181F0F0F0F1F181F0F0F0F0000000000000000000000001F181F7070705F585F
              5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              B0B0AF7F68407040007F40009F68009F6800A0680FA0680F30200F0F10002F18
              000F10000008000008000000000000002F2000CF780FA06800A06800A07000B0
              9010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06060603F383F
              4040405F585F5F585F5F5F5F5F5F5F2020200F080F1F181F0F080F0000000000
              000000000000001F181F7070705F585F5F585F5F585F7070709F9F9FB0B0B0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF80784F70480F9060009F68009F
              6800A07000A068009F68009F68009060002F20002F20002F20008F58008F6000
              9F6800A068009F6800A06800A07800D0A030FFC060E0D8A0FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F5F585F5F585F5F
              585F5F585F5050501F181F1F181F1F181F4F4F4F5050505F585F5F585F5F585F
              5F585F5F5F5F8F888FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFA0988F7F50109060009F68009F6800A07000A07000A07000A07000A070
              00302800302800302800A07000A07000A07000A07000A06800A06800AF9020DF
              A030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F4F484F
              5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F1F1F1F1F1F1F1F1F
              1F5F585F5F585F5F585F5F585F5F585F5F585F707770909090C0C0C0FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F68009F
              6800A06800A068009F6800AF700F9F6800302800302800302800A06800A06800
              A068009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F5F585F5F585F5F
              585F6067605F585F1F1F1F1F1F1F1F1F1F5F585F5F585F5F585F5F585F5F585F
              5F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFAFA06F9F70109F68009F6800A06800A06800A06800A070009F68
              00302800302800302800A06800A06800A068009F68009F68009F6800DFA03FFF
              C86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909790
              6060605F585F5F585F5F585F5F585F5F585F5F585F5F585F1F1F1F1F1F1F1F1F
              1F5F585F5F585F5F585F5F585F5F585F5F585F909790BFBFBFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0700FA0
              6800A06800A06800A06800A07000AF7000AF700FA07000AF700FA06800A06800
              A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F585F5F
              585F5F585F6060606067605F585F6067605F585F5F585F5F585F5F585F606760
              909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFAF9840A0780FA07000A07000A07000A06800A068
              00A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FFD89FFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
              A040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780FAF9020
              D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090907070706067605F
              585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790BFB8BF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF9010AF90
              20CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F7F8F88
              8F8F888F909790AFAFAFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FFFA040DFC060FFC86FFFD07F
              FFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0
              B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFC0C7C0FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD09FDFC8
              9FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B0B7B0C0C0C0BFB8
              BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btn_IncFornecClick
          end
          object btn_ExcluiFornec: TSpeedButton
            Left = 62
            Top = 1
            Width = 30
            Height = 30
            Hint = 'Excluir'
            Enabled = False
            Flat = True
            Glyph.Data = {
              36160000424D361600000000000036000000280000003A000000200000000100
              18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0BFC0BFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F989F9F98
              9F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0A0B0B0
              B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F989F90
              90908F888F8080808080807F787F7F78707F78708F807F9088809F988FB0B0AF
              C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80808080
              80807F7F7F7F787F7F787F8087808F888F909790B0B0B0FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F603F5048
              3F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF
              9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040404047
              405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F78706F
              60605F504F50483F60380F60380F6F38006F380070380070380070400070480F
              7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F484F3F
              383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070A0A0A0
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              B0A8AF9F989F8F888F7F787060605F60403060380F6038008050006F38007040
              009060007F60009060009060009060007F60009F500FA0701FAFA070FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F
              7F787F6060604047403F383F3030304047403F383F3F383F5050504F484F5050
              505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFA0A0A08F908F7F787F6F68404F483F4F
              380F6F38007040009F68009F6800A068009F68009F68009F68009F68009F6800
              9F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F383F5F
              585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
              6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              9FA09F80808070706F50483F5F38006F38009F5800A06810B07820AF700FA070
              00A06800A06800A06800A068009F68009F68009F68009F6800A07000AF983FD0
              B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080707070
              4F484F3030303F383F5050505F5F5F6F6F6F6067605F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF9F989F8F80806060504F400F6F400090
              68009F6800A07810A06800A07000A0700FA0700FA06800A07000A068009F6800
              9F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F6060605F
              585F5F585F6060606060605F585F5F585F5F585F5F585F5F585F5F585F5F585F
              5F585F606760909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              9F989F7F787060401F6F38008F6000A06800A06800A06800A06800A07000A070
              00A07000A06800A06800A06800A07000A07000A070009F68009F6800A07000CF
              8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F404040
              3F383F5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080BFBFBFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7F706F4F4010703800906000A0
              6800A06800A06800A070009F70009F68009060009F7000A07000A07000A06800
              A06800A06800A068009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F5F585F5F
              585F5F585F5F585F5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F
              5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              90908F6F60506F380F7038009F60009F6800A07000A07000CF780FCF780FCF78
              0FCF780FCF780FCF780FCF780FCF780FCF780FCF780FA07000A06800A07000CF
              780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090906060603F3F3F
              3F383F5057505F585F5F585F5F585F7070707070707070707070707070707070
              707070707070707070707070705F585F5F585F5F585F7070709F989FC0C7C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7048206F38007040009060009F
              6800A06800A06800302000302000302000302000302000302000302000302000
              302000CF780FA06800A06800A07000AF900FD0A03FE0B080FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F5F585F1F
              181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F7070705F585F
              5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              A098906F584F6F38007060009F68009F6800AF700FA0701030200F0F080F2F18
              000F080F0000000000000000000000002F2000CF780F9F68009F68009F7000AF
              780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F3F383F
              4047405F585F5F585F6067606060602020200F0F0F1F181F0F0F0F0000000000
              000000000000001F181F7070705F585F5F585F5F585F6067608F888FC0C0C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAFA8A07050406F40008F60009F68009F
              6800A0680FA0680F3020000F080F2F18000F080F000000000000000000000000
              2F2000CF780F9F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F5F5F5F5F5F1F
              181F0F0F0F1F181F0F0F0F0000000000000000000000001F181F7070705F585F
              5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              B0B0AF7F68407040007F40009F68009F6800A0680FA0680F30200F0F10002F18
              000F10000000000000000000000000002F2000CF780FA06800A06800A07000B0
              9010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06060603F383F
              4040405F585F5F585F5F5F5F5F5F5F2020200F080F1F181F0F080F0000000000
              000000000000001F181F7070705F585F5F585F5F585F7070709F9F9FB0B0B0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF80784F70480F9060009F68009F
              6800A07000A068009F68009F68009060008F58008F58008F58008F58008F6000
              9F6800A068009F6800A06800A07800D0A030FFC060E0D8A0FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F5F585F5F585F5F
              585F5F585F5050504F4F4F4F4F4F4F4F4F4F4F4F5050505F585F5F585F5F585F
              5F585F5F5F5F8F888FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFA0988F7F50109060009F68009F6800A07000A07000A07000A07000A070
              00A07000A07000A07000A07000A07000A07000A07000A06800A06800AF9020DF
              A030FFD070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F4F484F
              5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F5F585F707770909090C0C0C0FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F68009F
              6800A06800A068009F6800AF700F9F68009F68009F60009F6800A06800A06800
              A068009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F5F585F5F585F5F
              585F6067605F585F5F585F5057505F585F5F585F5F585F5F585F5F585F5F585F
              5F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFAFA06F9F70109F68009F6800A06800A06800A06800A07000A070
              00A07000AF700FAF700FA06800A06800A068009F68009F68009F6800DFA03FFF
              C86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909790
              6060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F6067606067
              605F585F5F585F5F585F5F585F5F585F5F585F909790FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0700FA0
              6800A06800A06800A06800A07000AF7000AF700FA07000AF700FA06800A06800
              A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F585F5F
              585F5F585F6060606067605F585F6067605F585F5F585F5F585F5F585F606760
              909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFAF9840A0780FA07000A07000A07000A06800A068
              00A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FFD89FFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
              A040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780FAF9020
              D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090907070706067605F
              585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790BFB8BF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF9010AF90
              20CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F7F8F88
              8F8F888F909790AFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FFFA040DFC060FFC86FFFD07F
              FFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0
              B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC8
              9FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btn_ExcluiFornecClick
          end
          object btn_EditaFornec: TSpeedButton
            Left = 31
            Top = 1
            Width = 30
            Height = 30
            Hint = 'Editar'
            Enabled = False
            Flat = True
            Glyph.Data = {
              36160000424D361600000000000036000000280000003A000000200000000100
              18000000000000160000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A09F989FA0A0A09F98
              9F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFA0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F
              989F9090908F888F8080808080807F787F7F78707F78708F807F9088809F988F
              B0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA0A0A09F9F9F9F9F9F9F
              9F9F9090909090909090909F989FAFA8AFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF9090908F888F7F787F7070706F68606058506F60
              3F50483F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              AFAFAF9F9F9F8F8F8F8080808087807F787F7077706060604F484F5F5F5F5057
              506060606F6F6F9F989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F8080807F
              78706F60605F504F50483F60380F60380F6F38006F3800703800703800704000
              70480F7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F8F8F8F7F7F7F7070705F585F40
              40403037303F3F3F3F383F3F383F3F383F3F383F4040404F484F6F686F909790
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFF9F989F8F888F7F787060605F60403060380F6038006F38006F38
              007040008F60007F60009060009060009060007F60009F500FA0701FAFA070FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF909090
              8080807F787F5F5F5F4F484F3037303F383F3F383F3F383F3F383F4047405050
              504040405050505050504040406060607F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0A0A08F908F7F787F6F68404F
              483F4F380F6F38007040007F600F7F68009F68009F68009F68009F68009F6800
              9F68009F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F7F787F6060604047403030303F383F50
              50505050505050505050505F585F5F585F5F585F5F585F5F585F5F585F5F585F
              606060808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF9FA09F80808070706F50483F5F38006F38009F68009F68009F68009F68
              009F68009F68009F68009F68009F68009F68009F68009F68009F68009F6800AF
              983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9090907F7F7F
              6067604047403030303F383F4F484F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F5F585F606060909090FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9F989F8F80806060504F400F6F
              40008F40009F6800A0700FAF700FAF700FAF700FAF700FAF7010AF7010AF7010
              AF7010AF700FA070009F68009F6800AF700FD0A040DFC89FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9F9F9F8F8F8F7070705057503F383F3F383F4047405F585F60
              60606067606067606067606067606067606067606067606067606067605F585F
              5F585F5F585F707070A0A0A0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              B0B0B09F989F7F787060401F6F38008F60009F6820A0882FBF882FBF884FBF88
              4FBF8830BF884FBF8850BF884FBF8850BF884FBF804FBF80209F68009F6800A0
              7000CF8030F0C870FFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080806F686F
              4F484F3030303F383F6060607070707F7F7F8087808087807F7F7F8087808F88
              8F8087808F888F8087808087807077705F585F5F585F606760909090FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB0B0B090908F7F706F4F401070380090
              6000BF88409F70306F583F6F58305F50405F504F6050406F58305F50406F5830
              6050406F403060502FBF68009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFF
              FFFFFFFFAFAFAF9090908080805F585F3F383F3F383F4F4F4F8080806F686F50
              57505050505050505057505050505050505050505050505050504F484F4F484F
              6060605F585F5F585F808080B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              B0B0B090908F6F60506F380F703800906000C0902FBF883030281010100F0F08
              0F0F080F0F080F0F080F0F10000F080F10080F1F180F7040009F80009F6800A0
              7000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F7F7F7F5F585F
              3F383F3F383F4F4F4F8080807F7F7F2020201010100F0F0F0F0F0F0F0F0F0F0F
              0F0F080F0F0F0F0F0F0F1017103F383F6060605F585F5F585F707070AFAFAFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB0B0B090908F7048206F380070400090
              6000A0780FBF884080602F100800000000000000000000000000000000000000
              0F000030280F907800BF68009F6800A07000AF900FD0A03FE0B080FFFFFFFFFF
              FFFFFFFFAFAFAF9F9F9F7F787F4F484F3F383F3F383F5F585F6060608080805F
              585F0F080F0000000000000000000000000000000000000007002020205F585F
              6060605F585F5F585F707770909090C0C0C0FFFFFFFFFFFF0000FFFFFFFFFFFF
              B0B0B0A098906F584F6F38007060009F6800A07000AF902FB0882F3028100008
              000000000000000000000000000000001010007F5800BF6800A070009F68009F
              7000AF780FD0A030E0D090FFFFFFFFFFFFFFFFFFB0B0B09F9F9F7F787F404740
              3F383F5050505F585F5F585F7F787F7F787F2020200000000000000000000000
              000000000000000F080F4F484F6060605F585F5F585F5F585F707070A0A7A0B0
              B7B0FFFFFFFFFFFF0000FFFFFFFFFFFFB0B0AFAFA8A07050406F40008F60009F
              68009F7000A0700FBF884080782F101000000000000000000000000000000000
              2F2000907800A07000A068009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFF
              FFFFFFFFBFBFBFA0A0A08087804040403F383F4F484F5F585F5F585F60606080
              80806060600F080F0000000000000000000000000000001F181F5F585F5F585F
              5F585F5F585F5F585F7F7F7F9F989FC0C0C0FFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFB0B0AF7F68407040007F40009F68009F6800A07000AF780FBF88404F40
              0F0F08000000000000000000001010007F5800B06800A070009F68009F6800A0
              7000B09010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFB0B0B08F888F404740
              3F383F5050505F585F5F585F5F585F6067608080803037300F080F0000000000
              000000000F080F4F484F5F5F5F5F585F5F585F5F585F5F585F8F888FAFA8AFBF
              B8BFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFB0B0AF80784F70480F9060009F
              68009F68009F6800A07000C08820AF80202018000000000000000F0800403000
              906000A06800A068009F68009F6800A07800D0A030F0C060E0D8A0FFFFFFFFFF
              FFFFFFFFFFFFFFBFBFBF9097905057503F383F5050505F585F5F585F5F585F5F
              585F7F787F7070701010100000000000000F080F2027205050505F585F5F585F
              5F585F5F585F6067608F888FBFBFBFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFA0988F7F50109060009F68009F68009F6800A07000AF780FBF88
              2F6058201008000000001F1000A058009F68009F68009F68009F68009F6800AF
              9020DFA030FFD070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06F686F
              4040405050505F585F5F585F5F585F5F585F6067607F7F7F4F484F0F080F0000
              001010105050505F585F5F585F5F585F5F585F5F585F707770909790C0C7C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F
              68009F68009F68009F6800A07000A09020AF804020200F101000603800907800
              A070009F68009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFC0C0C09F989F5050504F484F5F585F5F585F5F585F5F
              585F5F585F7070707F787F1F181F0F080F3030305F585F5F585F5F585F5F585F
              5F585F6060608F888FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F68009F68009F68009F7000A078
              0FBF882F8F602F40280F8F60009F68009F70009F68009F68009F68009F6800DF
              A03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B7B0
              7070705057505F585F5F585F5F585F5F585F5F585F6060607F7F7F5F5F5F2F28
              2F5050505F585F5F585F5F585F5F585F5F585F707070909790C0C0C0FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0
              700F9F68009F68009F68009F6800A07000A0880FBF88409F680FB06000A06800
              9F68009F6800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A06067605F585F5F585F5F585F5F
              585F5F585F5F585F6F686F8080805F5F5F5F585F5F585F5F585F5F585F5F585F
              606760808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9840A070009F70009F68009F68009F70
              00A07000A0701FA07000A06800A07000A07000A07000AF7820D0A03FFFC860FF
              D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF9097906F686F5F585F5F585F5F585F5F585F5F585F5F585F6067605F58
              5F5F585F5F585F5F585F5F585F6F6F6F909090BFB8BFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFCFA040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780F
              AF9020D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A08080806067605F
              585F5F585F5F585F5F585F5F585F5F585F5F585F5F5F5F707770707770909790
              B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF90
              10AF9020CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFB0B0B09090908080807F787F7070706F6F6F6067606F6F
              6F7070708F888F909090AFA8AFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FF0A040DFC060FFC86F
              FFD07FFFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF
              B8BF9F9F9F9F989F9090908F888F9F989F9F9F9FB0B0B0C0C0C0FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFDFC89FDFB090DFC89FDFB09FF0D0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0C0C0C0BFB8
              BFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btn_EditaFornecClick
          end
          object btn_ConfirmaFornec: TSpeedButton
            Left = 93
            Top = 1
            Width = 30
            Height = 30
            Hint = 'Confirmar'
            Enabled = False
            Flat = True
            Glyph.Data = {
              36160000424D361600000000000036000000280000003A000000200000000100
              18000000000000160000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0BFC0BFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
              AFAFAFAFAFAFAFAFAFAFAFB0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F98
              9F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFAFAFAFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0
              A0B0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F
              989F9090908F888F8080808080807F787F7F78707F78708F807F9088809F988F
              B0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80
              80808080807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F60
              3F50483F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              AFA8AF9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040
              404047405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F
              78706F60605F504F50483F60380F60380F6F38006F3800703800703800704000
              70480F7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F
              484F3F383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070
              A0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFB0A8AF9F989F8F888F7F787060605F60403060380F6038008050006F38
              007040009060007F60009060009060009060007F60009F500FA0701FAFA070FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F
              8F8F8F7F787F6060604047403F383F3030304047403F383F3F383F5050504F48
              4F5050505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0A0A08F908F7F787F6F68404F
              483F4F380F6F38007040009F68009F6800A068009F68009F68009F68009F6800
              9F68009F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F
              383F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
              5F585F6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF9FA09F80808070706F50483F5F38006F38009F5800A06810B07820AF70
              0FA07000A06800A06800A06800A068009F68009F68009F68009F6800A07000AF
              983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080
              7070704F484F3030303F383F5050505F5F5F6F6F6F6067605F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9F989F8F80806060504F400F6F
              40009068009F68009F68009F6800CF780FCF780F9F68009F68009F68009F6800
              9F68009F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F5F
              585F5F585F7070707070705F585F5F585F5F585F5F585F5F585F5F585F5F585F
              5F585F5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF9F989F7F787060401F6F38008F6000A068009F68009F68000000000000
              00CF780FCF780FCF780F9F68009F68009F68009F68009F68009F68009F6800A0
              7000CF8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F
              4040403F383F5050505F585F5F585F5F585F0000000000007070707070707070
              705F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080BFBFBFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7F706F4F401070380090
              6000A06800A06800000000000000000000000000CF780FCF780FCF780F9F6800
              9F68009F68009F68009F68009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F00
              00000000000000000000007070707070707070705F585F5F585F5F585F5F585F
              5F585F5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF90908F6F60506F380F7038009F60009F6800A070000000000000000000
              00000000000000CF780FCF780FCF780F9F68009F68009F68009F6800A06800A0
              7000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090606060
              3F3F3F3F383F5057505F585F5F585F0000000000000000000000000000007070
              707070707070705F585F5F585F5F585F5F585F5F585F5F585F7070709F989FC0
              C7C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7048206F380070400090
              60009F6800A06800000000000000000000000000000000000000CF780FCF780F
              9F68009F68009F68009F6800A06800A07000AF900FD0A03FE0B080FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F00
              00000000000000000000000000000000007070707070705F585F5F585F5F585F
              5F585F5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFA098906F584F6F38007060009F68009F6800AF700F0000000000000000
              00000000000000000000000000CF780FCF780F9F68009F68009F68009F68009F
              7000AF780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F
              3F383F4047405F585F5F585F6067600000000000000000000000000000000000
              000000007070707070705F585F5F585F5F585F5F585F5F585F6067608F888FC0
              C0C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8A07050406F40008F60009F
              68009F6800A0680F000000000000000000CF780F000000000000000000000000
              CF780FCF780FCF780F9F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F5F5F00
              0000000000000000707070000000000000000000000000707070707070707070
              5F585F5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFB0B0AF7F68407040007F40009F68009F6800A0680F0000000000000000
              009F68009F6800000000000000000000000000CF780FCF780F9F6800A06800A0
              7000B09010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060
              3F383F4040405F585F5F585F5F5F5F0000000000000000005F585F5F585F0000
              000000000000000000007070707070705F585F5F585F5F585F7070709F9F9FB0
              B0B0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFC0C0BF80784F70480F9060009F
              68009F6800A070009F68009F68009F68009F68009F68009F6800000000000000
              000000000000CF780FCF780FA06800A07800D0A030FFC060E0D8A0FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F5F585F5F
              585F5F585F5F585F5F585F5F585F5F585F000000000000000000000000707070
              7070705F585F5F5F5F8F888FB0B7B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFA0988F7F50109060009F68009F6800A070009F68009F68009F68
              009F68009F68009F68009F6800000000000000000000000000CF780FA06800AF
              9020DFA030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F
              4F484F5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F0000000000000000000000007070705F585F707770909090C0C0C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC0C0B09F78208048009F
              68009F68009F68009F68009F68009F68009F68009F68009F68009F68009F6800
              000000000000000000CF780F9F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F5F585F5F
              585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F000000000000000000
              7070705F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F68009F68009F68009F68009F68
              009F68009F68009F68009F68009F68009F6800000000000000CF780F9F6800DF
              A03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              9097906060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F0000000000007070705F585F909790BFBFBFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC8BFAF804FA0
              700FA06800A06800A06800A06800A07000AF7000AF700F9F68009F68009F6800
              A06800A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F
              585F5F585F5F585F6060606067605F585F5F585F5F585F5F585F5F585F5F585F
              606760909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFCFC0B0AF9840A0780FA07000A07000A07000A068
              00A06800A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FF
              D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
              C8B0CFA040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780F
              AF9020D0982FDFA03FFFC860FFD880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90909070707060
              67605F585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790
              BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C89FD0A86FD0A040D08030AF90
              10AF9020CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F
              7F8F888F8F888F909790AFAFAFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFD0A0E0C870EFA86FD0A040D0C05FFFA040DFC060FFC86F
              FFD07FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFB0B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFC0C7C0FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD0
              9FDFC89FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B0B7B0C0C0
              C0BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btn_ConfirmaFornecClick
          end
          object Btn_CancelaFornec: TSpeedButton
            Left = 123
            Top = 1
            Width = 30
            Height = 30
            Hint = 'Cancelar'
            Enabled = False
            Flat = True
            Glyph.Data = {
              36160000424D361600000000000036000000280000003A000000200000000100
              18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
              AFAFAFAFAFAFAFAFAFAFAFB0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09FA09F9F989F9090909F98
              9F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0
              A0B0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F
              989F9090908F888F8080808080807F787F7F78707F78708F807F9088809F988F
              B0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F9090908F8F8F80
              80808080807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF9090908F888F7F787F7070706F68606058506F60
              3F50483F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040
              404047405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F8080807F
              78706F60605F504F50483F60380F60380F6F38006F3800703800703800704000
              70480F7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F8080807F787F6067605057504F
              484F3F383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070
              A0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFF9F989F8F888F7F787060605F60403060380F6038008050006F38
              007040009F68007F60009060009060009060007F60009F500FA0701FAFA070FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F
              8F8F8F7F787F6060604047403F383F3030304047403F383F3F383F5F585F4F48
              4F5050505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0A0A08F908F7F787F6F68404F
              483F4F380F6F38007040009F68009F6800A068009F68009F68009F68009F6800
              9F68009F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F
              383F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
              5F585F6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF9FA09F80808070706F50483F5F38006F38009F68009F6800CF780FCF78
              0F9F68009F68009F68009F68009F68009F68009F68009F68009F6800A07000AF
              983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080
              7070704F484F3030303F383F5F585F5F585F7070707070705F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9F989F8F80806060504F400F6F
              40009068009F68009F6800000000CF780F9F68009F68009F6800CF780FCF780F
              9F68009F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F5F
              585F0000007070705F585F5F585F5F585F7070707070705F585F5F585F5F585F
              5F585F5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF9F989F7F787060401F6F38008F6000A068009F6800000000000000CF78
              0FCF780F9F6800000000000000CF780FCF780F9F68009F68009F68009F6800A0
              7000CF8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F
              4040403F383F5050505F585F5F585F0000000000007070707070705F585F0000
              000000007070707070705F585F5F585F5F585F5F585F5F585F808080BFBFBFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7F706F4F401070380090
              6000A068009F6800000000000000000000CF780FCF780F000000000000000000
              CF780F9F68009F6800A068009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F00
              00000000000000007070707070700000000000000000007070705F585F5F585F
              5F585F5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF90908F6F60506F380F7038009F60009F68009F68000000000000000000
              000000000000000000000000000000009F68009F68009F6800A07000A06800A0
              7000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090606060
              3F3F3F3F383F5057505F585F5F585F0000000000000000000000000000000000
              000000000000005F585F5F585F5F585F5F585F5F585F5F585F7070709F989FC0
              C7C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7048206F380070400090
              60009F68009F68009F68000000000000000000000000000000000000009F6800
              9F68009F68009F6800A06800A06800A07000AF900FD0A03FE0B080FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F5F
              585F0000000000000000000000000000000000005F585F5F585F5F585F5F585F
              5F585F5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFA098906F584F6F38007060009F68009F68009F68009F68009F68000000
              00000000000000000000CF780FCF780F9F68009F68009F68009F68009F68009F
              7000AF780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F
              3F383F4047405F585F5F585F5F585F5F585F5F585F0000000000000000000000
              007070707070705F585F5F585F5F585F5F585F5F585F5F585F6067608F888FC0
              C0C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8A07050406F40008F60009F
              68009F68009F68009F68009F6800000000000000000000000000000000CF780F
              9F68009F68009F68009F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F585F5F
              585F5F585F0000000000000000000000000000007070705F585F5F585F5F585F
              5F585F5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFB0B0AF7F68407040007F40009F68009F68009F68009F68009F68000000
              00000000000000000000000000CF780FFF80009F68009F6800A06800A06800A0
              7000B09010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0606060
              3F383F4040405F585F5F585F5F585F5F585F5F585F0000000000000000000000
              000000007070708080805F585F5F585F5F585F5F585F5F585F7070709F9F9FB0
              B0B0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFC0C0BF80784F70480F9060009F
              68009F68009F68009F6800000000000000000000CF780F000000000000000000
              CF780FCF780F9F68009F6800A06800A07800D0A030FFC060E0D8A0FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFC0C0C06F6F6F4040405050505F585F5F585F5F585F5F
              585F0000000000000000007070700000000000000000007070707070705F585F
              5F585F5F585F5F5F5F8F888FB0B7B0CFC8CFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFA0988F7F50109060009F68009F68009F68009F68000000000000
              000000009F68009F6800000000000000000000CF780F9F6800A06800A06800AF
              9020DFA030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F
              4F484F5050505F585F5F585F5F585F5F585F0000000000000000005F585F5F58
              5F0000000000000000007070705F585F5F585F5F585F707770909090C0C0C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC0C0B09F78208048009F
              68009F68009F68000000000000000000009F68009F68009F68009F6800000000
              0000000000009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFBFB8BF6F686F4040405F585F5F585F5F585F00
              00000000000000005F585F5F585F5F585F5F585F0000000000000000005F585F
              5F585F5F585F707770AFA8AFC0C7C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F68009F68009F68009F68009F68
              009F68009F68009F68009F68009F68000000009F68009F68009F68009F6800DF
              A03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              9097906060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F0000005F585F5F585F5F585F5F585F909790BFBFBFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC8BFAF804FA0
              700F9F68009F68009F68009F68009F68009F68009F68009F68009F68009F6800
              9F68009F68009F6800AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C7C07F7F7F6060605F585F5F585F5F
              585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
              606760909090B0B0B0D0D0D0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFCFC0B0AF98409F68009F68009F68009F68009F68
              009F68009F68009F68009F68009F68009F68009F68009F6800BFA030FFC860FF
              D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFC0C0C08080805F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F808780BFB8BFD0D0D0FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
              C8B0CFA040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780F
              AF9020D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C090909070707060
              67605F585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790
              BFB8BFCFC8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C89FD0A86FD0A040D08030AF90
              10AF9020CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFBFBFBFA0A0A09090908080807070707077707070707F7F
              7F8F888F8F888F909790AFAFAFC0C0C0D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFD0A0E0C870EFA86FD0A040D0C05FFFA040DFC060FFC86F
              FFD07FFFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0
              D0D0B0B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFC0C7C0D0D0D0FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD0
              9FDFC89FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C7C0C0C0C0B0B7B0C0C0
              C0BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = Btn_CancelaFornecClick
          end
          object Label26: TLabel
            Left = 162
            Top = 3
            Width = 62
            Height = 15
            Caption = 'Total Nota :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 292
            Top = 3
            Width = 75
            Height = 15
            Caption = 'Total Galp'#227'o :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_TotalNota: TLabel
            Left = 229
            Top = 3
            Width = 7
            Height = 15
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_TotalGalpao: TLabel
            Left = 371
            Top = 3
            Width = 7
            Height = 15
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object pnl_Galpao: TPanel
        Left = 0
        Top = 247
        Width = 957
        Height = 227
        Align = alClient
        Color = clWindow
        ParentBackground = False
        TabOrder = 2
        object Pnl_EdtGAlpao: TPanel
          Left = 1
          Top = 1
          Width = 955
          Height = 43
          Align = alTop
          Color = clWindow
          ParentBackground = False
          TabOrder = 0
          object btn_IncGalpao: TSpeedButton
            Left = 1
            Top = 1
            Width = 30
            Height = 30
            Hint = 'Incluir Galp'#227'o'
            Enabled = False
            Flat = True
            Glyph.Data = {
              36160000424D361600000000000036000000280000003A000000200000000100
              18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFAF
              AFAFAFAFAFAFAFAFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F989F9F98
              9F9F989FA0A0A0B0B8B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFAFAFAFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0A0B0B0
              B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F989F90
              90908F888F8080808080807F787F7F78707F78708F807F9088809F988FB0B0AF
              C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80808080
              80807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F603F5048
              3F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF
              9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040404047
              405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F78706F
              60605F504F50483F60380F60380F6F38006F380070380070380070400070480F
              7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F484F3F
              383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070A0A0A0
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              B0A8AF9F989F8F888F7F787060605F60403060380F6038008050006F38007040
              009060007F60009060009060009060007F60009F500FA0701FAFA070FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F
              7F787F6060604047403F383F3030304047403F383F3F383F5050504F484F5050
              505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFA0A0A08F908F7F787F6F68404F483F4F
              380F6F38007040009F68009F6800A068009F68009F68009F68009F68009F6800
              9F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F383F5F
              585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
              6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              9FA09F80808070706F50483F5F38006F38009F5800A06810B07820AF700FA070
              00CF780FCF780FCF780FCF780F9F68009F68009F68009F6800A07000AF983FD0
              B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080707070
              4F484F3030303F383F5050505F5F5F6F6F6F6067605F585F7070707070707070
              707070705F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF9F989F8F80806060504F400F6F400090
              68009F6800A07810A06800A068009F68004020003F2000402800CF780F9F6800
              9F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F6060605F
              585F5F585F5F585F2020202020202020207070705F585F5F585F5F585F5F585F
              5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              9F989F7F787060401F6F38008F6000A06800A06800A06800A06800A07000A070
              002F18002F18002F1800CF780FA07000A07000A070009F68009F6800A07000CF
              8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F404040
              3F383F5050505F585F5F585F5F585F5F585F5F585F5F585F1F181F1F181F1F18
              1F7070705F585F5F585F5F585F5F585F5F585F5F585F808080BFBFBFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7F706F4F4010703800906000A0
              6800A06800A06800A070009F70009F68002018002018002F1800CF780FA06800
              A06800A06800A068009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F5F585F5F
              585F5F585F5F585F1010101010101F181F7070705F585F5F585F5F585F5F585F
              5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              90908F6F60506F380F7038009F60009F6800A07000A070009F68009060009F68
              00201000201000201000CF780FCF780FCF780FCF780FA07000A06800A07000CF
              780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090906060603F3F3F
              3F383F5057505F585F5F585F5F585F5F585F5050505F585F1010101010101010
              107070707070707070707070705F585F5F585F5F585F7070709F989FC0C7C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7048206F38007040009060009F
              6800A06800A068003F20003F20003F20003018001F10002F1800402800402800
              402800CF780FA06800A06800A07000AF900FD0A03FE0B080FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F5F585F20
              20202020202020201F181F1010101F181F2020202020202020207070705F585F
              5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              A098906F584F6F38007060009F68009F6800AF700FA0701030200F0F080F2F18
              000F080F0000000000000000000000002F2000CF780F9F68009F68009F7000AF
              780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F3F383F
              4047405F585F5F585F6067606060602020200F0F0F1F181F0F0F0F0000000000
              000000000000001F181F7070705F585F5F585F5F585F6067608F888FC0C0C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAFA8A07050406F40008F60009F68009F
              6800A0680FA0680F3020000F080F2F18000F080F000000000000000000000000
              2F2000CF780F9F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F5F5F5F5F5F1F
              181F0F0F0F1F181F0F0F0F0000000000000000000000001F181F7070705F585F
              5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              B0B0AF7F68407040007F40009F68009F6800A0680FA0680F30200F0F10002F18
              000F10000008000008000000000000002F2000CF780FA06800A06800A07000B0
              9010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06060603F383F
              4040405F585F5F585F5F5F5F5F5F5F2020200F080F1F181F0F080F0000000000
              000000000000001F181F7070705F585F5F585F5F585F7070709F9F9FB0B0B0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF80784F70480F9060009F68009F
              6800A07000A068009F68009F68009060002F20002F20002F20008F58008F6000
              9F6800A068009F6800A06800A07800D0A030FFC060E0D8A0FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F5F585F5F585F5F
              585F5F585F5050501F181F1F181F1F181F4F4F4F5050505F585F5F585F5F585F
              5F585F5F5F5F8F888FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFA0988F7F50109060009F68009F6800A07000A07000A07000A07000A070
              00302800302800302800A07000A07000A07000A07000A06800A06800AF9020DF
              A030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F4F484F
              5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F1F1F1F1F1F1F1F1F
              1F5F585F5F585F5F585F5F585F5F585F5F585F707770909090C0C0C0FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F68009F
              6800A06800A068009F6800AF700F9F6800302800302800302800A06800A06800
              A068009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F5F585F5F585F5F
              585F6067605F585F1F1F1F1F1F1F1F1F1F5F585F5F585F5F585F5F585F5F585F
              5F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFAFA06F9F70109F68009F6800A06800A06800A06800A070009F68
              00302800302800302800A06800A06800A068009F68009F68009F6800DFA03FFF
              C86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909790
              6060605F585F5F585F5F585F5F585F5F585F5F585F5F585F1F1F1F1F1F1F1F1F
              1F5F585F5F585F5F585F5F585F5F585F5F585F909790BFBFBFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0700FA0
              6800A06800A06800A06800A07000AF7000AF700FA07000AF700FA06800A06800
              A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F585F5F
              585F5F585F6060606067605F585F6067605F585F5F585F5F585F5F585F606760
              909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFAF9840A0780FA07000A07000A07000A06800A068
              00A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FFD89FFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
              A040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780FAF9020
              D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090907070706067605F
              585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790BFB8BF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF9010AF90
              20CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F7F8F88
              8F8F888F909790AFAFAFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FFFA040DFC060FFC86FFFD07F
              FFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0
              B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFC0C7C0FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD09FDFC8
              9FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B0B7B0C0C0C0BFB8
              BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btn_IncGalpaoClick
          end
          object btn_ExcGalpao: TSpeedButton
            Left = 62
            Top = 1
            Width = 30
            Height = 30
            Hint = 'Excluir Galp'#227'o'
            Enabled = False
            Flat = True
            Glyph.Data = {
              36160000424D361600000000000036000000280000003A000000200000000100
              18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0BFC0BFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F989F9F98
              9F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0A0B0B0
              B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F989F90
              90908F888F8080808080807F787F7F78707F78708F807F9088809F988FB0B0AF
              C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80808080
              80807F7F7F7F787F7F787F8087808F888F909790B0B0B0FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F603F5048
              3F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF
              9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040404047
              405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F78706F
              60605F504F50483F60380F60380F6F38006F380070380070380070400070480F
              7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F484F3F
              383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070A0A0A0
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              B0A8AF9F989F8F888F7F787060605F60403060380F6038008050006F38007040
              009060007F60009060009060009060007F60009F500FA0701FAFA070FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F
              7F787F6060604047403F383F3030304047403F383F3F383F5050504F484F5050
              505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFA0A0A08F908F7F787F6F68404F483F4F
              380F6F38007040009F68009F6800A068009F68009F68009F68009F68009F6800
              9F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F383F5F
              585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
              6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              9FA09F80808070706F50483F5F38006F38009F5800A06810B07820AF700FA070
              00A06800A06800A06800A068009F68009F68009F68009F6800A07000AF983FD0
              B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080707070
              4F484F3030303F383F5050505F5F5F6F6F6F6067605F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF9F989F8F80806060504F400F6F400090
              68009F6800A07810A06800A07000A0700FA0700FA06800A07000A068009F6800
              9F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F6060605F
              585F5F585F6060606060605F585F5F585F5F585F5F585F5F585F5F585F5F585F
              5F585F606760909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              9F989F7F787060401F6F38008F6000A06800A06800A06800A06800A07000A070
              00A07000A06800A06800A06800A07000A07000A070009F68009F6800A07000CF
              8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F404040
              3F383F5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080BFBFBFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7F706F4F4010703800906000A0
              6800A06800A06800A070009F70009F68009060009F7000A07000A07000A06800
              A06800A06800A068009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F5F585F5F
              585F5F585F5F585F5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F
              5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              90908F6F60506F380F7038009F60009F6800A07000A07000CF780FCF780FCF78
              0FCF780FCF780FCF780FCF780FCF780FCF780FCF780FA07000A06800A07000CF
              780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090906060603F3F3F
              3F383F5057505F585F5F585F5F585F7070707070707070707070707070707070
              707070707070707070707070705F585F5F585F5F585F7070709F989FC0C7C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7048206F38007040009060009F
              6800A06800A06800302000302000302000302000302000302000302000302000
              302000CF780FA06800A06800A07000AF900FD0A03FE0B080FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F5F585F1F
              181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F7070705F585F
              5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              A098906F584F6F38007060009F68009F6800AF700FA0701030200F0F080F2F18
              000F080F0000000000000000000000002F2000CF780F9F68009F68009F7000AF
              780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F3F383F
              4047405F585F5F585F6067606060602020200F0F0F1F181F0F0F0F0000000000
              000000000000001F181F7070705F585F5F585F5F585F6067608F888FC0C0C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAFA8A07050406F40008F60009F68009F
              6800A0680FA0680F3020000F080F2F18000F080F000000000000000000000000
              2F2000CF780F9F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F5F5F5F5F5F1F
              181F0F0F0F1F181F0F0F0F0000000000000000000000001F181F7070705F585F
              5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              B0B0AF7F68407040007F40009F68009F6800A0680FA0680F30200F0F10002F18
              000F10000000000000000000000000002F2000CF780FA06800A06800A07000B0
              9010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06060603F383F
              4040405F585F5F585F5F5F5F5F5F5F2020200F080F1F181F0F080F0000000000
              000000000000001F181F7070705F585F5F585F5F585F7070709F9F9FB0B0B0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF80784F70480F9060009F68009F
              6800A07000A068009F68009F68009060008F58008F58008F58008F58008F6000
              9F6800A068009F6800A06800A07800D0A030FFC060E0D8A0FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F5F585F5F585F5F
              585F5F585F5050504F4F4F4F4F4F4F4F4F4F4F4F5050505F585F5F585F5F585F
              5F585F5F5F5F8F888FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFA0988F7F50109060009F68009F6800A07000A07000A07000A07000A070
              00A07000A07000A07000A07000A07000A07000A07000A06800A06800AF9020DF
              A030FFD070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F4F484F
              5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F5F585F707770909090C0C0C0FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F68009F
              6800A06800A068009F6800AF700F9F68009F68009F60009F6800A06800A06800
              A068009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F5F585F5F585F5F
              585F6067605F585F5F585F5057505F585F5F585F5F585F5F585F5F585F5F585F
              5F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFAFA06F9F70109F68009F6800A06800A06800A06800A07000A070
              00A07000AF700FAF700FA06800A06800A068009F68009F68009F6800DFA03FFF
              C86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909790
              6060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F6067606067
              605F585F5F585F5F585F5F585F5F585F5F585F909790FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0700FA0
              6800A06800A06800A06800A07000AF7000AF700FA07000AF700FA06800A06800
              A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F585F5F
              585F5F585F6060606067605F585F6067605F585F5F585F5F585F5F585F606760
              909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFAF9840A0780FA07000A07000A07000A06800A068
              00A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FFD89FFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
              A040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780FAF9020
              D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090907070706067605F
              585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790BFB8BF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF9010AF90
              20CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F7F8F88
              8F8F888F909790AFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FFFA040DFC060FFC86FFFD07F
              FFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0
              B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC8
              9FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btn_ExcGalpaoClick
          end
          object btn_EditaGalpao: TSpeedButton
            Left = 32
            Top = 1
            Width = 30
            Height = 30
            Hint = 'Editar Galp'#227'o'
            Enabled = False
            Flat = True
            Glyph.Data = {
              36160000424D361600000000000036000000280000003A000000200000000100
              18000000000000160000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A09F989FA0A0A09F98
              9F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFA0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F
              989F9090908F888F8080808080807F787F7F78707F78708F807F9088809F988F
              B0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA0A0A09F9F9F9F9F9F9F
              9F9F9090909090909090909F989FAFA8AFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF9090908F888F7F787F7070706F68606058506F60
              3F50483F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              AFAFAF9F9F9F8F8F8F8080808087807F787F7077706060604F484F5F5F5F5057
              506060606F6F6F9F989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F8080807F
              78706F60605F504F50483F60380F60380F6F38006F3800703800703800704000
              70480F7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F8F8F8F7F7F7F7070705F585F40
              40403037303F3F3F3F383F3F383F3F383F3F383F4040404F484F6F686F909790
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFF9F989F8F888F7F787060605F60403060380F6038006F38006F38
              007040008F60007F60009060009060009060007F60009F500FA0701FAFA070FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF909090
              8080807F787F5F5F5F4F484F3037303F383F3F383F3F383F3F383F4047405050
              504040405050505050504040406060607F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0A0A08F908F7F787F6F68404F
              483F4F380F6F38007040007F600F7F68009F68009F68009F68009F68009F6800
              9F68009F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F7F787F6060604047403030303F383F50
              50505050505050505050505F585F5F585F5F585F5F585F5F585F5F585F5F585F
              606060808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF9FA09F80808070706F50483F5F38006F38009F68009F68009F68009F68
              009F68009F68009F68009F68009F68009F68009F68009F68009F68009F6800AF
              983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9090907F7F7F
              6067604047403030303F383F4F484F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F5F585F606060909090FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9F989F8F80806060504F400F6F
              40008F40009F6800A0700FAF700FAF700FAF700FAF700FAF7010AF7010AF7010
              AF7010AF700FA070009F68009F6800AF700FD0A040DFC89FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF9F9F9F8F8F8F7070705057503F383F3F383F4047405F585F60
              60606067606067606067606067606067606067606067606067606067605F585F
              5F585F5F585F707070A0A0A0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              B0B0B09F989F7F787060401F6F38008F60009F6820A0882FBF882FBF884FBF88
              4FBF8830BF884FBF8850BF884FBF8850BF884FBF804FBF80209F68009F6800A0
              7000CF8030F0C870FFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080806F686F
              4F484F3030303F383F6060607070707F7F7F8087808087807F7F7F8087808F88
              8F8087808F888F8087808087807077705F585F5F585F606760909090FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB0B0B090908F7F706F4F401070380090
              6000BF88409F70306F583F6F58305F50405F504F6050406F58305F50406F5830
              6050406F403060502FBF68009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFF
              FFFFFFFFAFAFAF9090908080805F585F3F383F3F383F4F4F4F8080806F686F50
              57505050505050505057505050505050505050505050505050504F484F4F484F
              6060605F585F5F585F808080B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              B0B0B090908F6F60506F380F703800906000C0902FBF883030281010100F0F08
              0F0F080F0F080F0F080F0F10000F080F10080F1F180F7040009F80009F6800A0
              7000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F7F7F7F5F585F
              3F383F3F383F4F4F4F8080807F7F7F2020201010100F0F0F0F0F0F0F0F0F0F0F
              0F0F080F0F0F0F0F0F0F1017103F383F6060605F585F5F585F707070AFAFAFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB0B0B090908F7048206F380070400090
              6000A0780FBF884080602F100800000000000000000000000000000000000000
              0F000030280F907800BF68009F6800A07000AF900FD0A03FE0B080FFFFFFFFFF
              FFFFFFFFAFAFAF9F9F9F7F787F4F484F3F383F3F383F5F585F6060608080805F
              585F0F080F0000000000000000000000000000000000000007002020205F585F
              6060605F585F5F585F707770909090C0C0C0FFFFFFFFFFFF0000FFFFFFFFFFFF
              B0B0B0A098906F584F6F38007060009F6800A07000AF902FB0882F3028100008
              000000000000000000000000000000001010007F5800BF6800A070009F68009F
              7000AF780FD0A030E0D090FFFFFFFFFFFFFFFFFFB0B0B09F9F9F7F787F404740
              3F383F5050505F585F5F585F7F787F7F787F2020200000000000000000000000
              000000000000000F080F4F484F6060605F585F5F585F5F585F707070A0A7A0B0
              B7B0FFFFFFFFFFFF0000FFFFFFFFFFFFB0B0AFAFA8A07050406F40008F60009F
              68009F7000A0700FBF884080782F101000000000000000000000000000000000
              2F2000907800A07000A068009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFF
              FFFFFFFFBFBFBFA0A0A08087804040403F383F4F484F5F585F5F585F60606080
              80806060600F080F0000000000000000000000000000001F181F5F585F5F585F
              5F585F5F585F5F585F7F7F7F9F989FC0C0C0FFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFB0B0AF7F68407040007F40009F68009F6800A07000AF780FBF88404F40
              0F0F08000000000000000000001010007F5800B06800A070009F68009F6800A0
              7000B09010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFB0B0B08F888F404740
              3F383F5050505F585F5F585F5F585F6067608080803037300F080F0000000000
              000000000F080F4F484F5F5F5F5F585F5F585F5F585F5F585F8F888FAFA8AFBF
              B8BFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFB0B0AF80784F70480F9060009F
              68009F68009F6800A07000C08820AF80202018000000000000000F0800403000
              906000A06800A068009F68009F6800A07800D0A030F0C060E0D8A0FFFFFFFFFF
              FFFFFFFFFFFFFFBFBFBF9097905057503F383F5050505F585F5F585F5F585F5F
              585F7F787F7070701010100000000000000F080F2027205050505F585F5F585F
              5F585F5F585F6067608F888FBFBFBFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFA0988F7F50109060009F68009F68009F6800A07000AF780FBF88
              2F6058201008000000001F1000A058009F68009F68009F68009F68009F6800AF
              9020DFA030FFD070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06F686F
              4040405050505F585F5F585F5F585F5F585F6067607F7F7F4F484F0F080F0000
              001010105050505F585F5F585F5F585F5F585F5F585F707770909790C0C7C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F
              68009F68009F68009F6800A07000A09020AF804020200F101000603800907800
              A070009F68009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFC0C0C09F989F5050504F484F5F585F5F585F5F585F5F
              585F5F585F7070707F787F1F181F0F080F3030305F585F5F585F5F585F5F585F
              5F585F6060608F888FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F68009F68009F68009F7000A078
              0FBF882F8F602F40280F8F60009F68009F70009F68009F68009F68009F6800DF
              A03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B7B0
              7070705057505F585F5F585F5F585F5F585F5F585F6060607F7F7F5F5F5F2F28
              2F5050505F585F5F585F5F585F5F585F5F585F707070909790C0C0C0FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0
              700F9F68009F68009F68009F6800A07000A0880FBF88409F680FB06000A06800
              9F68009F6800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A06067605F585F5F585F5F585F5F
              585F5F585F5F585F6F686F8080805F5F5F5F585F5F585F5F585F5F585F5F585F
              606760808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9840A070009F70009F68009F68009F70
              00A07000A0701FA07000A06800A07000A07000A07000AF7820D0A03FFFC860FF
              D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF9097906F686F5F585F5F585F5F585F5F585F5F585F5F585F6067605F58
              5F5F585F5F585F5F585F5F585F6F6F6F909090BFB8BFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFCFA040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780F
              AF9020D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A08080806067605F
              585F5F585F5F585F5F585F5F585F5F585F5F585F5F5F5F707770707770909790
              B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF90
              10AF9020CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFB0B0B09090908080807F787F7070706F6F6F6067606F6F
              6F7070708F888F909090AFA8AFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FF0A040DFC060FFC86F
              FFD07FFFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF
              B8BF9F9F9F9F989F9090908F888F9F989F9F9F9FB0B0B0C0C0C0FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFDFC89FDFB090DFC89FDFB09FF0D0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0C0C0C0BFB8
              BFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btn_EditaGalpaoClick
          end
          object btn_ConfGalpao: TSpeedButton
            Left = 92
            Top = 1
            Width = 30
            Height = 30
            Hint = 'Confirmar'
            Enabled = False
            Flat = True
            Glyph.Data = {
              36160000424D361600000000000036000000280000003A000000200000000100
              18000000000000160000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0BFC0BFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
              AFAFAFAFAFAFAFAFAFAFAFB0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F98
              9F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFAFAFAFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0
              A0B0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F
              989F9090908F888F8080808080807F787F7F78707F78708F807F9088809F988F
              B0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80
              80808080807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F60
              3F50483F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              AFA8AF9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040
              404047405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F
              78706F60605F504F50483F60380F60380F6F38006F3800703800703800704000
              70480F7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F
              484F3F383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070
              A0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFB0A8AF9F989F8F888F7F787060605F60403060380F6038008050006F38
              007040009060007F60009060009060009060007F60009F500FA0701FAFA070FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F
              8F8F8F7F787F6060604047403F383F3030304047403F383F3F383F5050504F48
              4F5050505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0A0A08F908F7F787F6F68404F
              483F4F380F6F38007040009F68009F6800A068009F68009F68009F68009F6800
              9F68009F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F
              383F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
              5F585F6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF9FA09F80808070706F50483F5F38006F38009F5800A06810B07820AF70
              0FA07000A06800A06800A06800A068009F68009F68009F68009F6800A07000AF
              983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080
              7070704F484F3030303F383F5050505F5F5F6F6F6F6067605F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9F989F8F80806060504F400F6F
              40009068009F68009F68009F6800CF780FCF780F9F68009F68009F68009F6800
              9F68009F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F5F
              585F5F585F7070707070705F585F5F585F5F585F5F585F5F585F5F585F5F585F
              5F585F5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF9F989F7F787060401F6F38008F6000A068009F68009F68000000000000
              00CF780FCF780FCF780F9F68009F68009F68009F68009F68009F68009F6800A0
              7000CF8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F
              4040403F383F5050505F585F5F585F5F585F0000000000007070707070707070
              705F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080BFBFBFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7F706F4F401070380090
              6000A06800A06800000000000000000000000000CF780FCF780FCF780F9F6800
              9F68009F68009F68009F68009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F00
              00000000000000000000007070707070707070705F585F5F585F5F585F5F585F
              5F585F5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF90908F6F60506F380F7038009F60009F6800A070000000000000000000
              00000000000000CF780FCF780FCF780F9F68009F68009F68009F6800A06800A0
              7000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090606060
              3F3F3F3F383F5057505F585F5F585F0000000000000000000000000000007070
              707070707070705F585F5F585F5F585F5F585F5F585F5F585F7070709F989FC0
              C7C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7048206F380070400090
              60009F6800A06800000000000000000000000000000000000000CF780FCF780F
              9F68009F68009F68009F6800A06800A07000AF900FD0A03FE0B080FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F00
              00000000000000000000000000000000007070707070705F585F5F585F5F585F
              5F585F5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFA098906F584F6F38007060009F68009F6800AF700F0000000000000000
              00000000000000000000000000CF780FCF780F9F68009F68009F68009F68009F
              7000AF780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F
              3F383F4047405F585F5F585F6067600000000000000000000000000000000000
              000000007070707070705F585F5F585F5F585F5F585F5F585F6067608F888FC0
              C0C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8A07050406F40008F60009F
              68009F6800A0680F000000000000000000CF780F000000000000000000000000
              CF780FCF780FCF780F9F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F5F5F00
              0000000000000000707070000000000000000000000000707070707070707070
              5F585F5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFB0B0AF7F68407040007F40009F68009F6800A0680F0000000000000000
              009F68009F6800000000000000000000000000CF780FCF780F9F6800A06800A0
              7000B09010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060
              3F383F4040405F585F5F585F5F5F5F0000000000000000005F585F5F585F0000
              000000000000000000007070707070705F585F5F585F5F585F7070709F9F9FB0
              B0B0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFC0C0BF80784F70480F9060009F
              68009F6800A070009F68009F68009F68009F68009F68009F6800000000000000
              000000000000CF780FCF780FA06800A07800D0A030FFC060E0D8A0FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F5F585F5F
              585F5F585F5F585F5F585F5F585F5F585F000000000000000000000000707070
              7070705F585F5F5F5F8F888FB0B7B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFA0988F7F50109060009F68009F6800A070009F68009F68009F68
              009F68009F68009F68009F6800000000000000000000000000CF780FA06800AF
              9020DFA030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F
              4F484F5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F0000000000000000000000007070705F585F707770909090C0C0C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC0C0B09F78208048009F
              68009F68009F68009F68009F68009F68009F68009F68009F68009F68009F6800
              000000000000000000CF780F9F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F5F585F5F
              585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F000000000000000000
              7070705F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F68009F68009F68009F68009F68
              009F68009F68009F68009F68009F68009F6800000000000000CF780F9F6800DF
              A03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              9097906060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F0000000000007070705F585F909790BFBFBFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC8BFAF804FA0
              700FA06800A06800A06800A06800A07000AF7000AF700F9F68009F68009F6800
              A06800A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F
              585F5F585F5F585F6060606067605F585F5F585F5F585F5F585F5F585F5F585F
              606760909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFCFC0B0AF9840A0780FA07000A07000A07000A068
              00A06800A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FF
              D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
              C8B0CFA040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780F
              AF9020D0982FDFA03FFFC860FFD880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90909070707060
              67605F585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790
              BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C89FD0A86FD0A040D08030AF90
              10AF9020CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F
              7F8F888F8F888F909790AFAFAFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFD0A0E0C870EFA86FD0A040D0C05FFFA040DFC060FFC86F
              FFD07FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFB0B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFC0C7C0FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD0
              9FDFC89FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B0B7B0C0C0
              C0BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btn_ConfGalpaoClick
          end
          object btn_CancGalpao: TSpeedButton
            Left = 122
            Top = 1
            Width = 30
            Height = 30
            Hint = 'Cancelar'
            Enabled = False
            Flat = True
            Glyph.Data = {
              36160000424D361600000000000036000000280000003A000000200000000100
              18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
              AFAFAFAFAFAFAFAFAFAFAFB0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09FA09F9F989F9090909F98
              9F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0
              A0B0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F
              989F9090908F888F8080808080807F787F7F78707F78708F807F9088809F988F
              B0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F9090908F8F8F80
              80808080807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF9090908F888F7F787F7070706F68606058506F60
              3F50483F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040
              404047405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F8080807F
              78706F60605F504F50483F60380F60380F6F38006F3800703800703800704000
              70480F7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F8080807F787F6067605057504F
              484F3F383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070
              A0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFF9F989F8F888F7F787060605F60403060380F6038008050006F38
              007040009F68007F60009060009060009060007F60009F500FA0701FAFA070FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F
              8F8F8F7F787F6060604047403F383F3030304047403F383F3F383F5F585F4F48
              4F5050505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0A0A08F908F7F787F6F68404F
              483F4F380F6F38007040009F68009F6800A068009F68009F68009F68009F6800
              9F68009F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F
              383F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
              5F585F6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF9FA09F80808070706F50483F5F38006F38009F68009F6800CF780FCF78
              0F9F68009F68009F68009F68009F68009F68009F68009F68009F6800A07000AF
              983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080
              7070704F484F3030303F383F5F585F5F585F7070707070705F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9F989F8F80806060504F400F6F
              40009068009F68009F6800000000CF780F9F68009F68009F6800CF780FCF780F
              9F68009F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F5F
              585F0000007070705F585F5F585F5F585F7070707070705F585F5F585F5F585F
              5F585F5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF9F989F7F787060401F6F38008F6000A068009F6800000000000000CF78
              0FCF780F9F6800000000000000CF780FCF780F9F68009F68009F68009F6800A0
              7000CF8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F
              4040403F383F5050505F585F5F585F0000000000007070707070705F585F0000
              000000007070707070705F585F5F585F5F585F5F585F5F585F808080BFBFBFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7F706F4F401070380090
              6000A068009F6800000000000000000000CF780FCF780F000000000000000000
              CF780F9F68009F6800A068009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F00
              00000000000000007070707070700000000000000000007070705F585F5F585F
              5F585F5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFF90908F6F60506F380F7038009F60009F68009F68000000000000000000
              000000000000000000000000000000009F68009F68009F6800A07000A06800A0
              7000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090606060
              3F3F3F3F383F5057505F585F5F585F0000000000000000000000000000000000
              000000000000005F585F5F585F5F585F5F585F5F585F5F585F7070709F989FC0
              C7C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7048206F380070400090
              60009F68009F68009F68000000000000000000000000000000000000009F6800
              9F68009F68009F6800A06800A06800A07000AF900FD0A03FE0B080FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F5F
              585F0000000000000000000000000000000000005F585F5F585F5F585F5F585F
              5F585F5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFA098906F584F6F38007060009F68009F68009F68009F68009F68000000
              00000000000000000000CF780FCF780F9F68009F68009F68009F68009F68009F
              7000AF780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F
              3F383F4047405F585F5F585F5F585F5F585F5F585F0000000000000000000000
              007070707070705F585F5F585F5F585F5F585F5F585F5F585F6067608F888FC0
              C0C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8A07050406F40008F60009F
              68009F68009F68009F68009F6800000000000000000000000000000000CF780F
              9F68009F68009F68009F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F585F5F
              585F5F585F0000000000000000000000000000007070705F585F5F585F5F585F
              5F585F5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFB0B0AF7F68407040007F40009F68009F68009F68009F68009F68000000
              00000000000000000000000000CF780FFF80009F68009F6800A06800A06800A0
              7000B09010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0606060
              3F383F4040405F585F5F585F5F585F5F585F5F585F0000000000000000000000
              000000007070708080805F585F5F585F5F585F5F585F5F585F7070709F9F9FB0
              B0B0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFC0C0BF80784F70480F9060009F
              68009F68009F68009F6800000000000000000000CF780F000000000000000000
              CF780FCF780F9F68009F6800A06800A07800D0A030FFC060E0D8A0FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFC0C0C06F6F6F4040405050505F585F5F585F5F585F5F
              585F0000000000000000007070700000000000000000007070707070705F585F
              5F585F5F585F5F5F5F8F888FB0B7B0CFC8CFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFA0988F7F50109060009F68009F68009F68009F68000000000000
              000000009F68009F6800000000000000000000CF780F9F6800A06800A06800AF
              9020DFA030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F
              4F484F5050505F585F5F585F5F585F5F585F0000000000000000005F585F5F58
              5F0000000000000000007070705F585F5F585F5F585F707770909090C0C0C0FF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC0C0B09F78208048009F
              68009F68009F68000000000000000000009F68009F68009F68009F6800000000
              0000000000009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFBFB8BF6F686F4040405F585F5F585F5F585F00
              00000000000000005F585F5F585F5F585F5F585F0000000000000000005F585F
              5F585F5F585F707770AFA8AFC0C7C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F68009F68009F68009F68009F68
              009F68009F68009F68009F68009F68000000009F68009F68009F68009F6800DF
              A03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              9097906060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F0000005F585F5F585F5F585F5F585F909790BFBFBFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC8BFAF804FA0
              700F9F68009F68009F68009F68009F68009F68009F68009F68009F68009F6800
              9F68009F68009F6800AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C7C07F7F7F6060605F585F5F585F5F
              585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
              606760909090B0B0B0D0D0D0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFCFC0B0AF98409F68009F68009F68009F68009F68
              009F68009F68009F68009F68009F68009F68009F68009F6800BFA030FFC860FF
              D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFC0C0C08080805F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
              5F5F585F5F585F5F585F5F585F5F585F808780BFB8BFD0D0D0FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
              C8B0CFA040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780F
              AF9020D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C090909070707060
              67605F585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790
              BFB8BFCFC8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C89FD0A86FD0A040D08030AF90
              10AF9020CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFBFBFBFA0A0A09090908080807070707077707070707F7F
              7F8F888F8F888F909790AFAFAFC0C0C0D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFD0A0E0C870EFA86FD0A040D0C05FFFA040DFC060FFC86F
              FFD07FFFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0
              D0D0B0B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFC0C7C0D0D0D0FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD0
              9FDFC89FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C7C0C0C0C0B0B7B0C0C0
              C0BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btn_CancGalpaoClick
          end
          object Label14: TLabel
            Left = 163
            Top = 1
            Width = 64
            Height = 15
            Caption = 'C'#243'd Galp'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 236
            Top = 1
            Width = 39
            Height = 15
            Caption = 'Galp'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 506
            Top = 1
            Width = 24
            Height = 15
            Caption = 'Tipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 651
            Top = 1
            Width = 65
            Height = 15
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit9: TDBEdit
            Left = 163
            Top = 14
            Width = 69
            Height = 23
            DataField = 'ID_GALPAO'
            DataSource = Ds_LoteGalpao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object cbx_Sexo: TDBComboBox
            Left = 508
            Top = 14
            Width = 140
            Height = 23
            DataField = 'TIPO'
            DataSource = Ds_LoteGalpao
            Items.Strings = (
              'MA - Macho  '
              'FE - Femea'
              'MI - Misto')
            TabOrder = 0
          end
          object Lkp_Galpao: TDBLookupComboBox
            Left = 238
            Top = 13
            Width = 263
            Height = 23
            DataField = 'ID_GALPAO'
            DataSource = Ds_LoteGalpao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            KeyField = 'ID_GALPAO'
            ListField = 'LKP_GALPAO'
            ListSource = Ds_Galpao
            ParentFont = False
            TabOrder = 2
          end
          object edt_QtdGalpao: TDBEdit
            Left = 653
            Top = 16
            Width = 101
            Height = 23
            DataField = 'QTDE'
            DataSource = Ds_LoteGalpao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'helvetica'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
        end
        object dbg_Galpao: TDBGrid
          Left = 1
          Top = 44
          Width = 955
          Height = 182
          Align = alClient
          DataSource = Ds_LoteGalpao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = 16
          TitleFont.Name = 'Arial'
          TitleFont.Pitch = fpVariable
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'EMPRESA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'FILIAL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_LOTE'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_GALPAO'
              Title.Caption = 'C'#243'd Galp'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESC_GALPAO'
              Title.Caption = 'Galp'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Title.Caption = 'Tipo'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DESC_TIPO'
              Title.Caption = 'Tipo'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LARG_GALPAO'
              Title.Caption = 'Larg Galp'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMPR_GALPAO'
              Title.Caption = 'Compr Galp'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AREA_GALPAO'
              Title.Caption = #193'rea Galp'#227'o'
              Visible = True
            end>
        end
      end
    end
    object Tab_Remessa: TTabSheet
      Caption = 'Remessa Ra'#231#227'o'
      ImageIndex = 3
      object dbg_Remessa: TDBGrid
        Left = 0
        Top = 0
        Width = 973
        Height = 492
        Align = alClient
        DataSource = Ds_Remessa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = 16
        TitleFont.Name = 'Arial'
        TitleFont.Pitch = fpVariable
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_LOTE'
            Title.Caption = 'Lote'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_SAIDNOTAFISC'
            Title.Caption = 'Data Envio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NR_NOTAFISC'
            Title.Caption = 'Nota Fiscal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERACAO'
            Title.Caption = 'Opera'#231#227'o'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_PRODMATEEMBA'
            Title.Caption = 'Qualidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QN_EMBAITEMNOTAFISC'
            Title.Caption = 'Quantidade'
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 492
        Width = 973
        Height = 21
        Align = alBottom
        Color = clWindow
        ParentBackground = False
        TabOrder = 1
        object DBText3: TDBText
          Left = 485
          Top = 1
          Width = 74
          Height = 16
          DataField = 'QTD_RACAO'
          DataSource = Ds_Fechamento
        end
        object Label28: TLabel
          Left = 410
          Top = 1
          Width = 72
          Height = 15
          Caption = 'Total Ra'#231#227'o :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object Tab_Retirada: TTabSheet
      Caption = 'Retiradas'
      ImageIndex = 4
      object dbg_Retirada: TDBGrid
        Left = 0
        Top = 236
        Width = 973
        Height = 277
        Align = alClient
        DataSource = Ds_Retirada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgMultiSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = 16
        TitleFont.Name = 'Arial'
        TitleFont.Pitch = fpVariable
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'EMPRESA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FILIAL'
            Visible = False
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'ID_LOTE'
            ReadOnly = True
            Title.Caption = 'Lote'
            Visible = False
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'ID_NOTAFISC'
            ReadOnly = True
            Title.Caption = 'Nota Fiscal'
            Visible = False
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'NR_NOTAFISC'
            ReadOnly = True
            Title.Caption = 'Nota Fiscal'
            Width = 80
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'DT_SAIDNOTAFISC'
            ReadOnly = True
            Title.Caption = 'Data Saida'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_AVESABAT'
            Title.Caption = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESO_AVES'
            Title.Caption = 'Peso Lote'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_UNIT'
            Title.Caption = 'Vl Unit.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TURMA'
            Title.Caption = 'Cod Turm'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Lkp_Turma'
            Title.Caption = 'Turmeiro'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Peso_Medio'
            Title.Caption = 'Peso M'#233'dio'
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'PLACAVEIC'
            ReadOnly = True
            Title.Caption = 'Placa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MORTALIDADE'
            Title.Caption = 'Mortalidade'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PER_MORTBOLETIM'
            Title.Caption = '% Mort Boletim'
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 973
        Height = 236
        Align = alTop
        Color = clWindow
        ParentBackground = False
        TabOrder = 1
        object btn_IncluirNota: TSpeedButton
          Left = 4
          Top = 208
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F0000000120B0000120B00001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777700007777777777777777777700007777777777777777777700007777
            77777FC777777777000077777777FCCC7777777700007777777FCCCCC7777777
            0000777777FCCCCCCC777777000077777FCCCCCCCCC7777700007777FCCCCCCC
            CCCC77770000777FCCCCCCCCCCCCC77700007777777FCCCCC777777700007777
            777FCCCCC777777700007777777FCCCCC777777700007777777FCCCCC7777777
            00007777777FCCCCC777777700007777777FCCCCC777777700007777777FCCCC
            C777777700007777777777777777777700007777777777777777777700007777
            77777777777777770000}
          OnClick = btn_IncluirNotaClick
        end
        object btn_RetirarNota: TSpeedButton
          Left = 35
          Top = 208
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F0000000120B0000120B00001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777700007777777777777777777700007777777777777777777700007777
            777FCCCCC777777700007777777FCCCCC777777700007777777FCCCCC7777777
            00007777777FCCCCC777777700007777777FCCCCC777777700007777777FCCCC
            C777777700007777777FCCCCC77777770000777FCCCCCCCCCCCCC77700007777
            FCCCCCCCCCCC7777000077777FCCCCCCCCC777770000777777FCCCCCCC777777
            00007777777FCCCCC7777777000077777777FCCC777777770000777777777FC7
            7777777700007777777777777777777700007777777777777777777700007777
            77777777777777770000}
          OnClick = btn_RetirarNotaClick
        end
        object Label19: TLabel
          Left = 1
          Top = 1
          Width = 137
          Height = 15
          Align = alTop
          Caption = 'Notas Fiscais e Retirada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 168
          Top = 220
          Width = 40
          Height = 15
          Caption = 'Totais :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_Quantidade: TLabel
          Left = 230
          Top = 220
          Width = 7
          Height = 15
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_Peso: TLabel
          Left = 294
          Top = 220
          Width = 7
          Height = 15
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label55: TLabel
          Left = 174
          Top = 205
          Width = 65
          Height = 15
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label56: TLabel
          Left = 272
          Top = 205
          Width = 29
          Height = 15
          Caption = 'Peso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Dbg_NFRetiradas: TDBGrid
          Left = 1
          Top = 15
          Width = 971
          Height = 190
          Align = alTop
          DataSource = Ds_NFRetirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = 16
          TitleFont.Name = 'Arial'
          TitleFont.Pitch = fpVariable
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = Dbg_NFRetiradasDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'EMPRESA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'FILIAL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NR_NOTAFISC'
              Title.Caption = 'Nota Fiscal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_SAIDNOTAFISC'
              Title.Caption = 'Data Sa'#237'da'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_NOTAFISC'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NM_MATERIAL_ITEMNOTAFISC'
              Title.Caption = 'Produto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GN_OBSEPEDIVEND'
              Title.Caption = 'Quantidade'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESODIFERE'
              Title.Caption = 'Peso Balan'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PEDIVEND'
              Title.Caption = 'Pedido'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GN_PLACVEICNOTAFISC'
              Title.Caption = 'Placa'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_UNITITEMNOTAFISC'
              Title.Caption = 'Vl Unit.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CLIENTE'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NM_DESTREMENOTAFISC'
              Title.Caption = 'Cliente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_LOTE'
              Visible = False
            end>
        end
        object Bt_Atualiza: TButton
          Left = 62
          Top = 207
          Width = 90
          Height = 25
          Caption = 'Atualizar Peso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Bt_AtualizaClick
        end
      end
    end
    object Tab_Fechamento: TTabSheet
      Caption = 'Fechamento'
      ImageIndex = 5
      object Pnl_FechaTopo: TPanel
        Left = 0
        Top = 0
        Width = 973
        Height = 239
        Align = alTop
        Color = clWindow
        ParentBackground = False
        TabOrder = 0
        object btn_RelPagamento: TSpeedButton
          Left = 500
          Top = 158
          Width = 101
          Height = 39
          Hint = 'Relat'#243'rio Pagamento'
          Caption = 'Relat'#243'rio Pagamento'
          Enabled = False
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          Glyph.Data = {
            4E010000424D4E01000000000000760000002800000012000000120000000100
            040000000000D8000000120B0000120B00001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
            DDDDDD000000DDD00000000000DDDD000000DD0777777777070DDD000000D000
            000000000070DD000000D0777777FFF77000DD000000D077777799977070DD00
            0000D0000000000000770D000000D0777777777707070D000000DD0000000000
            70700D000000DDD0FFFFFFFF07070D000000DDDD0FCCCCCF0000DD000000DDDD
            0FFFFFFFF0DDDD000000DDDDD0FCCCCCF0DDDD000000DDDDD0FFFFFFFF0DDD00
            0000DDDDDD000000000DDD000000DDDDDDDDDDDDDDDDDD000000DDDDDDDDDDDD
            DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
          Layout = blGlyphTop
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Spacing = 2
          OnClick = btn_RelPagamentoClick
        end
        object btn_ReciboTurma: TSpeedButton
          Left = 500
          Top = 198
          Width = 101
          Height = 39
          Hint = 'Recibo Turmeiro'
          Caption = 'Recibo Turmeiro'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          Glyph.Data = {
            4E010000424D4E01000000000000760000002800000012000000120000000100
            040000000000D8000000120B0000120B00001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
            DDDDDD000000DDD00000000000DDDD000000DD0777777777070DDD000000D000
            000000000070DD000000D0777777FFF77000DD000000D077777799977070DD00
            0000D0000000000000770D000000D0777777777707070D000000DD0000000000
            70700D000000DDD0FFFFFFFF07070D000000DDDD0FCCCCCF0000DD000000DDDD
            0FFFFFFFF0DDDD000000DDDDD0FCCCCCF0DDDD000000DDDDD0FFFFFFFF0DDD00
            0000DDDDDD000000000DDD000000DDDDDDDDDDDDDDDDDD000000DDDDDDDDDDDD
            DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
          Layout = blGlyphTop
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Spacing = 2
          OnClick = btn_ReciboTurmaClick
        end
        object Label34: TLabel
          Left = 419
          Top = 84
          Width = 80
          Height = 15
          Caption = 'Dt Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 420
          Top = 33
          Width = 78
          Height = 15
          Caption = 'Total Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 5
          Top = 212
          Width = 79
          Height = 15
          Caption = 'Viabilidade(%)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 16
          Top = 186
          Width = 66
          Height = 15
          Caption = 'Idade (dias)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 15
          Top = 161
          Width = 66
          Height = 15
          Caption = 'Peso M'#233'dio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 28
          Top = 134
          Width = 55
          Height = 15
          Caption = 'Diferen'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 15
          Top = 59
          Width = 67
          Height = 15
          Caption = 'Mortalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 1
          Top = 33
          Width = 81
          Height = 15
          Caption = 'Aves Abatidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 2
          Top = 6
          Width = 80
          Height = 15
          Caption = 'Aves Alojadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 183
          Top = 6
          Width = 105
          Height = 15
          Caption = 'Ra'#231#227'o Retorndada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 181
          Top = 33
          Width = 101
          Height = 15
          Caption = 'Linhagem do Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 183
          Top = 59
          Width = 103
          Height = 15
          Caption = 'Ra'#231#227'o Consumida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label37: TLabel
          Left = 216
          Top = 84
          Width = 66
          Height = 15
          Caption = 'Total Quilos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 195
          Top = 110
          Width = 86
          Height = 15
          Caption = 'Conv Alimentar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label39: TLabel
          Left = 256
          Top = 161
          Width = 25
          Height = 15
          Caption = 'I.E.P.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label40: TLabel
          Left = 218
          Top = 186
          Width = 65
          Height = 15
          Caption = 'Tec. Regi'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label41: TLabel
          Left = 419
          Top = 6
          Width = 80
          Height = 15
          Caption = 'Pre'#231'o por Ave'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label42: TLabel
          Left = 195
          Top = 134
          Width = 89
          Height = 15
          Caption = 'Ganho Peso Dia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 5
          Top = 86
          Width = 79
          Height = 15
          Caption = 'Mort. da Ficha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 415
          Top = 58
          Width = 85
          Height = 15
          Caption = 'Dt Fechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label45: TLabel
          Left = 4
          Top = 110
          Width = 75
          Height = 15
          Caption = 'Mort. 1'#170' Sem.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label46: TLabel
          Left = 581
          Top = 6
          Width = 100
          Height = 15
          Caption = 'Pre'#231'o p/ Ave Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label47: TLabel
          Left = 578
          Top = 33
          Width = 107
          Height = 15
          Caption = 'Total Receber Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 393
          Top = 110
          Width = 105
          Height = 15
          Caption = 'Bonus Peso M'#233'dio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit22: TDBEdit
          Left = 501
          Top = 80
          Width = 72
          Height = 23
          Color = clSilver
          DataField = 'DATA_PAGTO'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit21: TDBEdit
          Left = 501
          Top = 29
          Width = 72
          Height = 23
          Color = clSilver
          DataField = 'VL_TOTAL'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit20: TDBEdit
          Left = 83
          Top = 209
          Width = 72
          Height = 23
          Color = clSilver
          DataField = 'VIABILIDADE'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit19: TDBEdit
          Left = 83
          Top = 184
          Width = 72
          Height = 23
          Color = clSilver
          DataField = 'IDADE'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit18: TDBEdit
          Left = 83
          Top = 158
          Width = 72
          Height = 23
          Color = clSilver
          DataField = 'PESO_MEDIOK'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit17: TDBEdit
          Left = 83
          Top = 132
          Width = 72
          Height = 23
          Color = clSilver
          DataField = 'DIF_MORTAL'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit13: TDBEdit
          Left = 83
          Top = 55
          Width = 72
          Height = 23
          Color = clSilver
          DataField = 'MORTAL_CALC'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit16: TDBEdit
          Left = 83
          Top = 29
          Width = 72
          Height = 23
          Color = clSilver
          DataField = 'AVES_ABAT'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit15: TDBEdit
          Left = 83
          Top = 2
          Width = 72
          Height = 23
          Color = clSilver
          DataField = 'QTDE_ALOJ'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object DBEdit14: TDBEdit
          Left = 285
          Top = 2
          Width = 100
          Height = 23
          DataField = 'SOBRA_RACAO'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit23: TDBEdit
          Left = 285
          Top = 29
          Width = 100
          Height = 23
          Color = clSilver
          DataField = 'DESC_LINHAGEM'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit24: TDBEdit
          Left = 285
          Top = 55
          Width = 100
          Height = 23
          Color = clSilver
          DataField = 'RACAO_CONSUMIDA'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit25: TDBEdit
          Left = 285
          Top = 80
          Width = 100
          Height = 23
          Color = clSilver
          DataField = 'PESO_ABAT'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit26: TDBEdit
          Left = 285
          Top = 106
          Width = 100
          Height = 23
          Color = clSilver
          DataField = 'CONV_ALIMENTARK'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit27: TDBEdit
          Left = 285
          Top = 158
          Width = 100
          Height = 23
          Color = clSilver
          DataField = 'IEPK'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit28: TDBEdit
          Left = 285
          Top = 184
          Width = 192
          Height = 23
          Color = clSilver
          DataField = 'NOME_TECNICO'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit29: TDBEdit
          Left = 501
          Top = 2
          Width = 73
          Height = 23
          Color = clSilver
          DataField = 'VL_AVE'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object DBEdit30: TDBEdit
          Left = 285
          Top = 132
          Width = 100
          Height = 23
          Color = clSilver
          DataField = 'GANHO_PESO_DIAK'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
        object DBEdit31: TDBEdit
          Left = 83
          Top = 82
          Width = 72
          Height = 23
          DataField = 'MORTALIDADE'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
        end
        object Btn_Fechar: TButton
          Left = 554
          Top = 132
          Width = 73
          Height = 25
          Caption = 'Fechar Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
          OnClick = Btn_FecharClick
        end
        object DBEdit32: TDBEdit
          Left = 501
          Top = 54
          Width = 72
          Height = 23
          Color = clSilver
          DataField = 'DT_FECHAMENTO'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 20
        end
        object DBEdit33: TDBEdit
          Left = 83
          Top = 106
          Width = 72
          Height = 23
          DataField = 'MORT_PRIM_SEMANA'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
        end
        object edt_VLAveFinal: TDBEdit
          Left = 685
          Top = 2
          Width = 73
          Height = 23
          Color = clWhite
          DataField = 'PRECO_AVE_FINAL'
          DataSource = Ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
        end
        object DBEdit35: TDBEdit
          Left = 685
          Top = 29
          Width = 72
          Height = 23
          Color = clSilver
          DataField = 'TOTA_FINAL'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 23
        end
        object DBEdit36: TDBEdit
          Left = 501
          Top = 106
          Width = 72
          Height = 23
          Color = clSilver
          DataField = 'BONUS_PESOMEDIO'
          DataSource = Ds_Fechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 24
        end
        object Btn_Previsao: TButton
          Left = 480
          Top = 132
          Width = 73
          Height = 25
          Caption = 'Previs'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
          OnClick = Btn_PrevisaoClick
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 239
        Width = 973
        Height = 34
        Align = alTop
        Color = clWindow
        ParentBackground = False
        TabOrder = 1
        object btn_incLanc: TSpeedButton
          Left = 1
          Top = 1
          Width = 30
          Height = 30
          Hint = 'Incluir Lan'#231'amento'
          Enabled = False
          Flat = True
          Glyph.Data = {
            36160000424D361600000000000036000000280000003A000000200000000100
            18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFAF
            AFAFAFAFAFAFAFAFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F989F9F98
            9F9F989FA0A0A0B0B8B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFAFAFAFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0A0B0B0
            B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F989F90
            90908F888F8080808080807F787F7F78707F78708F807F9088809F988FB0B0AF
            C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80808080
            80807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F603F5048
            3F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF
            9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040404047
            405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F78706F
            60605F504F50483F60380F60380F6F38006F380070380070380070400070480F
            7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F484F3F
            383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070A0A0A0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            B0A8AF9F989F8F888F7F787060605F60403060380F6038008050006F38007040
            009060007F60009060009060009060007F60009F500FA0701FAFA070FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F
            7F787F6060604047403F383F3030304047403F383F3F383F5050504F484F5050
            505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFA0A0A08F908F7F787F6F68404F483F4F
            380F6F38007040009F68009F6800A068009F68009F68009F68009F68009F6800
            9F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F383F5F
            585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
            6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            9FA09F80808070706F50483F5F38006F38009F5800A06810B07820AF700FA070
            00CF780FCF780FCF780FCF780F9F68009F68009F68009F6800A07000AF983FD0
            B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080707070
            4F484F3030303F383F5050505F5F5F6F6F6F6067605F585F7070707070707070
            707070705F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF9F989F8F80806060504F400F6F400090
            68009F6800A07810A06800A068009F68004020003F2000402800CF780F9F6800
            9F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F6060605F
            585F5F585F5F585F2020202020202020207070705F585F5F585F5F585F5F585F
            5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            9F989F7F787060401F6F38008F6000A06800A06800A06800A06800A07000A070
            002F18002F18002F1800CF780FA07000A07000A070009F68009F6800A07000CF
            8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F404040
            3F383F5050505F585F5F585F5F585F5F585F5F585F5F585F1F181F1F181F1F18
            1F7070705F585F5F585F5F585F5F585F5F585F5F585F808080BFBFBFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7F706F4F4010703800906000A0
            6800A06800A06800A070009F70009F68002018002018002F1800CF780FA06800
            A06800A06800A068009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F5F585F5F
            585F5F585F5F585F1010101010101F181F7070705F585F5F585F5F585F5F585F
            5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            90908F6F60506F380F7038009F60009F6800A07000A070009F68009060009F68
            00201000201000201000CF780FCF780FCF780FCF780FA07000A06800A07000CF
            780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090906060603F3F3F
            3F383F5057505F585F5F585F5F585F5F585F5050505F585F1010101010101010
            107070707070707070707070705F585F5F585F5F585F7070709F989FC0C7C0FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7048206F38007040009060009F
            6800A06800A068003F20003F20003F20003018001F10002F1800402800402800
            402800CF780FA06800A06800A07000AF900FD0A03FE0B080FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F5F585F20
            20202020202020201F181F1010101F181F2020202020202020207070705F585F
            5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            A098906F584F6F38007060009F68009F6800AF700FA0701030200F0F080F2F18
            000F080F0000000000000000000000002F2000CF780F9F68009F68009F7000AF
            780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F3F383F
            4047405F585F5F585F6067606060602020200F0F0F1F181F0F0F0F0000000000
            000000000000001F181F7070705F585F5F585F5F585F6067608F888FC0C0C0FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAFA8A07050406F40008F60009F68009F
            6800A0680FA0680F3020000F080F2F18000F080F000000000000000000000000
            2F2000CF780F9F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F5F5F5F5F5F1F
            181F0F0F0F1F181F0F0F0F0000000000000000000000001F181F7070705F585F
            5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            B0B0AF7F68407040007F40009F68009F6800A0680FA0680F30200F0F10002F18
            000F10000008000008000000000000002F2000CF780FA06800A06800A07000B0
            9010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06060603F383F
            4040405F585F5F585F5F5F5F5F5F5F2020200F080F1F181F0F080F0000000000
            000000000000001F181F7070705F585F5F585F5F585F7070709F9F9FB0B0B0FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF80784F70480F9060009F68009F
            6800A07000A068009F68009F68009060002F20002F20002F20008F58008F6000
            9F6800A068009F6800A06800A07800D0A030FFC060E0D8A0FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F5F585F5F585F5F
            585F5F585F5050501F181F1F181F1F181F4F4F4F5050505F585F5F585F5F585F
            5F585F5F5F5F8F888FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFA0988F7F50109060009F68009F6800A07000A07000A07000A07000A070
            00302800302800302800A07000A07000A07000A07000A06800A06800AF9020DF
            A030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F4F484F
            5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F1F1F1F1F1F1F1F1F
            1F5F585F5F585F5F585F5F585F5F585F5F585F707770909090C0C0C0FFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F68009F
            6800A06800A068009F6800AF700F9F6800302800302800302800A06800A06800
            A068009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F5F585F5F585F5F
            585F6067605F585F1F1F1F1F1F1F1F1F1F5F585F5F585F5F585F5F585F5F585F
            5F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFAFA06F9F70109F68009F6800A06800A06800A06800A070009F68
            00302800302800302800A06800A06800A068009F68009F68009F6800DFA03FFF
            C86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909790
            6060605F585F5F585F5F585F5F585F5F585F5F585F5F585F1F1F1F1F1F1F1F1F
            1F5F585F5F585F5F585F5F585F5F585F5F585F909790BFBFBFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0700FA0
            6800A06800A06800A06800A07000AF7000AF700FA07000AF700FA06800A06800
            A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F585F5F
            585F5F585F6060606067605F585F6067605F585F5F585F5F585F5F585F606760
            909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFAF9840A0780FA07000A07000A07000A06800A068
            00A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FFD89FFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
            5F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
            A040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780FAF9020
            D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090907070706067605F
            585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790BFB8BF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF9010AF90
            20CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F7F8F88
            8F8F888F909790AFAFAFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FFFA040DFC060FFC86FFFD07F
            FFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0
            B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFC0C7C0FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD09FDFC8
            9FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B0B7B0C0C0C0BFB8
            BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = btn_incLancClick
        end
        object btn_ExcluiLanc: TSpeedButton
          Left = 62
          Top = 1
          Width = 30
          Height = 30
          Hint = 'Excluir'
          Enabled = False
          Flat = True
          Glyph.Data = {
            36160000424D361600000000000036000000280000003A000000200000000100
            18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0BFC0BFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F989F9F98
            9F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0A0B0B0
            B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F989F90
            90908F888F8080808080807F787F7F78707F78708F807F9088809F988FB0B0AF
            C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80808080
            80807F7F7F7F787F7F787F8087808F888F909790B0B0B0FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F603F5048
            3F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF
            9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040404047
            405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F78706F
            60605F504F50483F60380F60380F6F38006F380070380070380070400070480F
            7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F484F3F
            383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070A0A0A0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            B0A8AF9F989F8F888F7F787060605F60403060380F6038008050006F38007040
            009060007F60009060009060009060007F60009F500FA0701FAFA070FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F
            7F787F6060604047403F383F3030304047403F383F3F383F5050504F484F5050
            505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFA0A0A08F908F7F787F6F68404F483F4F
            380F6F38007040009F68009F6800A068009F68009F68009F68009F68009F6800
            9F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F383F5F
            585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
            6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            9FA09F80808070706F50483F5F38006F38009F5800A06810B07820AF700FA070
            00A06800A06800A06800A068009F68009F68009F68009F6800A07000AF983FD0
            B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080707070
            4F484F3030303F383F5050505F5F5F6F6F6F6067605F585F5F585F5F585F5F58
            5F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF9F989F8F80806060504F400F6F400090
            68009F6800A07810A06800A07000A0700FA0700FA06800A07000A068009F6800
            9F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F6060605F
            585F5F585F6060606060605F585F5F585F5F585F5F585F5F585F5F585F5F585F
            5F585F606760909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            9F989F7F787060401F6F38008F6000A06800A06800A06800A06800A07000A070
            00A07000A06800A06800A06800A07000A07000A070009F68009F6800A07000CF
            8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F404040
            3F383F5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
            5F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080BFBFBFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7F706F4F4010703800906000A0
            6800A06800A06800A070009F70009F68009060009F7000A07000A07000A06800
            A06800A06800A068009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F5F585F5F
            585F5F585F5F585F5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F
            5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            90908F6F60506F380F7038009F60009F6800A07000A07000CF780FCF780FCF78
            0FCF780FCF780FCF780FCF780FCF780FCF780FCF780FA07000A06800A07000CF
            780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090906060603F3F3F
            3F383F5057505F585F5F585F5F585F7070707070707070707070707070707070
            707070707070707070707070705F585F5F585F5F585F7070709F989FC0C7C0FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7048206F38007040009060009F
            6800A06800A06800302000302000302000302000302000302000302000302000
            302000CF780FA06800A06800A07000AF900FD0A03FE0B080FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F5F585F1F
            181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F7070705F585F
            5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            A098906F584F6F38007060009F68009F6800AF700FA0701030200F0F080F2F18
            000F080F0000000000000000000000002F2000CF780F9F68009F68009F7000AF
            780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F3F383F
            4047405F585F5F585F6067606060602020200F0F0F1F181F0F0F0F0000000000
            000000000000001F181F7070705F585F5F585F5F585F6067608F888FC0C0C0FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAFA8A07050406F40008F60009F68009F
            6800A0680FA0680F3020000F080F2F18000F080F000000000000000000000000
            2F2000CF780F9F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F5F5F5F5F5F1F
            181F0F0F0F1F181F0F0F0F0000000000000000000000001F181F7070705F585F
            5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            B0B0AF7F68407040007F40009F68009F6800A0680FA0680F30200F0F10002F18
            000F10000000000000000000000000002F2000CF780FA06800A06800A07000B0
            9010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06060603F383F
            4040405F585F5F585F5F5F5F5F5F5F2020200F080F1F181F0F080F0000000000
            000000000000001F181F7070705F585F5F585F5F585F7070709F9F9FB0B0B0FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF80784F70480F9060009F68009F
            6800A07000A068009F68009F68009060008F58008F58008F58008F58008F6000
            9F6800A068009F6800A06800A07800D0A030FFC060E0D8A0FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F5F585F5F585F5F
            585F5F585F5050504F4F4F4F4F4F4F4F4F4F4F4F5050505F585F5F585F5F585F
            5F585F5F5F5F8F888FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFA0988F7F50109060009F68009F6800A07000A07000A07000A07000A070
            00A07000A07000A07000A07000A07000A07000A07000A06800A06800AF9020DF
            A030FFD070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F4F484F
            5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
            5F5F585F5F585F5F585F5F585F5F585F5F585F707770909090C0C0C0FFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F68009F
            6800A06800A068009F6800AF700F9F68009F68009F60009F6800A06800A06800
            A068009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F5F585F5F585F5F
            585F6067605F585F5F585F5057505F585F5F585F5F585F5F585F5F585F5F585F
            5F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFAFA06F9F70109F68009F6800A06800A06800A06800A07000A070
            00A07000AF700FAF700FA06800A06800A068009F68009F68009F6800DFA03FFF
            C86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909790
            6060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F6067606067
            605F585F5F585F5F585F5F585F5F585F5F585F909790FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0700FA0
            6800A06800A06800A06800A07000AF7000AF700FA07000AF700FA06800A06800
            A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F585F5F
            585F5F585F6060606067605F585F6067605F585F5F585F5F585F5F585F606760
            909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFAF9840A0780FA07000A07000A07000A06800A068
            00A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FFD89FFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
            5F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
            A040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780FAF9020
            D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090907070706067605F
            585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790BFB8BF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF9010AF90
            20CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F7F8F88
            8F8F888F909790AFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FFFA040DFC060FFC86FFFD07F
            FFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0
            B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC8
            9FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = btn_ExcluiLancClick
        end
        object btn_EdtLanc: TSpeedButton
          Left = 31
          Top = 1
          Width = 30
          Height = 30
          Hint = 'Editar'
          Enabled = False
          Flat = True
          Glyph.Data = {
            36160000424D361600000000000036000000280000003A000000200000000100
            18000000000000160000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A09F989FA0A0A09F98
            9F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFA0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F
            989F9090908F888F8080808080807F787F7F78707F78708F807F9088809F988F
            B0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA0A0A09F9F9F9F9F9F9F
            9F9F9090909090909090909F989FAFA8AFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF9090908F888F7F787F7070706F68606058506F60
            3F50483F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            AFAFAF9F9F9F8F8F8F8080808087807F787F7077706060604F484F5F5F5F5057
            506060606F6F6F9F989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F8080807F
            78706F60605F504F50483F60380F60380F6F38006F3800703800703800704000
            70480F7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F8F8F8F7F7F7F7070705F585F40
            40403037303F3F3F3F383F3F383F3F383F3F383F4040404F484F6F686F909790
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFF9F989F8F888F7F787060605F60403060380F6038006F38006F38
            007040008F60007F60009060009060009060007F60009F500FA0701FAFA070FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF909090
            8080807F787F5F5F5F4F484F3037303F383F3F383F3F383F3F383F4047405050
            504040405050505050504040406060607F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0A0A08F908F7F787F6F68404F
            483F4F380F6F38007040007F600F7F68009F68009F68009F68009F68009F6800
            9F68009F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F7F787F6060604047403030303F383F50
            50505050505050505050505F585F5F585F5F585F5F585F5F585F5F585F5F585F
            606060808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFF9FA09F80808070706F50483F5F38006F38009F68009F68009F68009F68
            009F68009F68009F68009F68009F68009F68009F68009F68009F68009F6800AF
            983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9090907F7F7F
            6067604047403030303F383F4F484F5F585F5F585F5F585F5F585F5F585F5F58
            5F5F585F5F585F5F585F5F585F5F585F5F585F606060909090FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9F989F8F80806060504F400F6F
            40008F40009F6800A0700FAF700FAF700FAF700FAF700FAF7010AF7010AF7010
            AF7010AF700FA070009F68009F6800AF700FD0A040DFC89FFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF9F9F9F8F8F8F7070705057503F383F3F383F4047405F585F60
            60606067606067606067606067606067606067606067606067606067605F585F
            5F585F5F585F707070A0A0A0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            B0B0B09F989F7F787060401F6F38008F60009F6820A0882FBF882FBF884FBF88
            4FBF8830BF884FBF8850BF884FBF8850BF884FBF804FBF80209F68009F6800A0
            7000CF8030F0C870FFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080806F686F
            4F484F3030303F383F6060607070707F7F7F8087808087807F7F7F8087808F88
            8F8087808F888F8087808087807077705F585F5F585F606760909090FFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB0B0B090908F7F706F4F401070380090
            6000BF88409F70306F583F6F58305F50405F504F6050406F58305F50406F5830
            6050406F403060502FBF68009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFF
            FFFFFFFFAFAFAF9090908080805F585F3F383F3F383F4F4F4F8080806F686F50
            57505050505050505057505050505050505050505050505050504F484F4F484F
            6060605F585F5F585F808080B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            B0B0B090908F6F60506F380F703800906000C0902FBF883030281010100F0F08
            0F0F080F0F080F0F080F0F10000F080F10080F1F180F7040009F80009F6800A0
            7000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F7F7F7F5F585F
            3F383F3F383F4F4F4F8080807F7F7F2020201010100F0F0F0F0F0F0F0F0F0F0F
            0F0F080F0F0F0F0F0F0F1017103F383F6060605F585F5F585F707070AFAFAFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB0B0B090908F7048206F380070400090
            6000A0780FBF884080602F100800000000000000000000000000000000000000
            0F000030280F907800BF68009F6800A07000AF900FD0A03FE0B080FFFFFFFFFF
            FFFFFFFFAFAFAF9F9F9F7F787F4F484F3F383F3F383F5F585F6060608080805F
            585F0F080F0000000000000000000000000000000000000007002020205F585F
            6060605F585F5F585F707770909090C0C0C0FFFFFFFFFFFF0000FFFFFFFFFFFF
            B0B0B0A098906F584F6F38007060009F6800A07000AF902FB0882F3028100008
            000000000000000000000000000000001010007F5800BF6800A070009F68009F
            7000AF780FD0A030E0D090FFFFFFFFFFFFFFFFFFB0B0B09F9F9F7F787F404740
            3F383F5050505F585F5F585F7F787F7F787F2020200000000000000000000000
            000000000000000F080F4F484F6060605F585F5F585F5F585F707070A0A7A0B0
            B7B0FFFFFFFFFFFF0000FFFFFFFFFFFFB0B0AFAFA8A07050406F40008F60009F
            68009F7000A0700FBF884080782F101000000000000000000000000000000000
            2F2000907800A07000A068009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFF
            FFFFFFFFBFBFBFA0A0A08087804040403F383F4F484F5F585F5F585F60606080
            80806060600F080F0000000000000000000000000000001F181F5F585F5F585F
            5F585F5F585F5F585F7F7F7F9F989FC0C0C0FFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFB0B0AF7F68407040007F40009F68009F6800A07000AF780FBF88404F40
            0F0F08000000000000000000001010007F5800B06800A070009F68009F6800A0
            7000B09010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFB0B0B08F888F404740
            3F383F5050505F585F5F585F5F585F6067608080803037300F080F0000000000
            000000000F080F4F484F5F5F5F5F585F5F585F5F585F5F585F8F888FAFA8AFBF
            B8BFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFB0B0AF80784F70480F9060009F
            68009F68009F6800A07000C08820AF80202018000000000000000F0800403000
            906000A06800A068009F68009F6800A07800D0A030F0C060E0D8A0FFFFFFFFFF
            FFFFFFFFFFFFFFBFBFBF9097905057503F383F5050505F585F5F585F5F585F5F
            585F7F787F7070701010100000000000000F080F2027205050505F585F5F585F
            5F585F5F585F6067608F888FBFBFBFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFA0988F7F50109060009F68009F68009F6800A07000AF780FBF88
            2F6058201008000000001F1000A058009F68009F68009F68009F68009F6800AF
            9020DFA030FFD070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06F686F
            4040405050505F585F5F585F5F585F5F585F6067607F7F7F4F484F0F080F0000
            001010105050505F585F5F585F5F585F5F585F5F585F707770909790C0C7C0FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F
            68009F68009F68009F6800A07000A09020AF804020200F101000603800907800
            A070009F68009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC0C0C09F989F5050504F484F5F585F5F585F5F585F5F
            585F5F585F7070707F787F1F181F0F080F3030305F585F5F585F5F585F5F585F
            5F585F6060608F888FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F68009F68009F68009F7000A078
            0FBF882F8F602F40280F8F60009F68009F70009F68009F68009F68009F6800DF
            A03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B7B0
            7070705057505F585F5F585F5F585F5F585F5F585F6060607F7F7F5F5F5F2F28
            2F5050505F585F5F585F5F585F5F585F5F585F707070909790C0C0C0FFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0
            700F9F68009F68009F68009F6800A07000A0880FBF88409F680FB06000A06800
            9F68009F6800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A06067605F585F5F585F5F585F5F
            585F5F585F5F585F6F686F8080805F5F5F5F585F5F585F5F585F5F585F5F585F
            606760808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9840A070009F70009F68009F68009F70
            00A07000A0701FA07000A06800A07000A07000A07000AF7820D0A03FFFC860FF
            D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF9097906F686F5F585F5F585F5F585F5F585F5F585F5F585F6067605F58
            5F5F585F5F585F5F585F5F585F6F6F6F909090BFB8BFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFCFA040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780F
            AF9020D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A08080806067605F
            585F5F585F5F585F5F585F5F585F5F585F5F585F5F5F5F707770707770909790
            B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF90
            10AF9020CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFB0B0B09090908080807F787F7070706F6F6F6067606F6F
            6F7070708F888F909090AFA8AFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FF0A040DFC060FFC86F
            FFD07FFFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF
            B8BF9F9F9F9F989F9090908F888F9F989F9F9F9FB0B0B0C0C0C0FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFDFC89FDFB090DFC89FDFB09FF0D0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0C0C0C0BFB8
            BFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = btn_EdtLancClick
        end
        object btn_ConfLanc: TSpeedButton
          Left = 93
          Top = 1
          Width = 30
          Height = 30
          Hint = 'Confirmar'
          Enabled = False
          Flat = True
          Glyph.Data = {
            36160000424D361600000000000036000000280000003A000000200000000100
            18000000000000160000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0BFC0BFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
            AFAFAFAFAFAFAFAFAFAFAFB0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F98
            9F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFAFAFAFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0
            A0B0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F
            989F9090908F888F8080808080807F787F7F78707F78708F807F9088809F988F
            B0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80
            80808080807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F60
            3F50483F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            AFA8AF9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040
            404047405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F
            78706F60605F504F50483F60380F60380F6F38006F3800703800703800704000
            70480F7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F
            484F3F383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070
            A0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFB0A8AF9F989F8F888F7F787060605F60403060380F6038008050006F38
            007040009060007F60009060009060009060007F60009F500FA0701FAFA070FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F
            8F8F8F7F787F6060604047403F383F3030304047403F383F3F383F5050504F48
            4F5050505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0A0A08F908F7F787F6F68404F
            483F4F380F6F38007040009F68009F6800A068009F68009F68009F68009F6800
            9F68009F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F
            383F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
            5F585F6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFF9FA09F80808070706F50483F5F38006F38009F5800A06810B07820AF70
            0FA07000A06800A06800A06800A068009F68009F68009F68009F6800A07000AF
            983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080
            7070704F484F3030303F383F5050505F5F5F6F6F6F6067605F585F5F585F5F58
            5F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9F989F8F80806060504F400F6F
            40009068009F68009F68009F6800CF780FCF780F9F68009F68009F68009F6800
            9F68009F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F5F
            585F5F585F7070707070705F585F5F585F5F585F5F585F5F585F5F585F5F585F
            5F585F5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFF9F989F7F787060401F6F38008F6000A068009F68009F68000000000000
            00CF780FCF780FCF780F9F68009F68009F68009F68009F68009F68009F6800A0
            7000CF8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F
            4040403F383F5050505F585F5F585F5F585F0000000000007070707070707070
            705F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080BFBFBFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7F706F4F401070380090
            6000A06800A06800000000000000000000000000CF780FCF780FCF780F9F6800
            9F68009F68009F68009F68009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F00
            00000000000000000000007070707070707070705F585F5F585F5F585F5F585F
            5F585F5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFF90908F6F60506F380F7038009F60009F6800A070000000000000000000
            00000000000000CF780FCF780FCF780F9F68009F68009F68009F6800A06800A0
            7000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090606060
            3F3F3F3F383F5057505F585F5F585F0000000000000000000000000000007070
            707070707070705F585F5F585F5F585F5F585F5F585F5F585F7070709F989FC0
            C7C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7048206F380070400090
            60009F6800A06800000000000000000000000000000000000000CF780FCF780F
            9F68009F68009F68009F6800A06800A07000AF900FD0A03FE0B080FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F00
            00000000000000000000000000000000007070707070705F585F5F585F5F585F
            5F585F5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFA098906F584F6F38007060009F68009F6800AF700F0000000000000000
            00000000000000000000000000CF780FCF780F9F68009F68009F68009F68009F
            7000AF780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F
            3F383F4047405F585F5F585F6067600000000000000000000000000000000000
            000000007070707070705F585F5F585F5F585F5F585F5F585F6067608F888FC0
            C0C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8A07050406F40008F60009F
            68009F6800A0680F000000000000000000CF780F000000000000000000000000
            CF780FCF780FCF780F9F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F5F5F00
            0000000000000000707070000000000000000000000000707070707070707070
            5F585F5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFB0B0AF7F68407040007F40009F68009F6800A0680F0000000000000000
            009F68009F6800000000000000000000000000CF780FCF780F9F6800A06800A0
            7000B09010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060
            3F383F4040405F585F5F585F5F5F5F0000000000000000005F585F5F585F0000
            000000000000000000007070707070705F585F5F585F5F585F7070709F9F9FB0
            B0B0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFC0C0BF80784F70480F9060009F
            68009F6800A070009F68009F68009F68009F68009F68009F6800000000000000
            000000000000CF780FCF780FA06800A07800D0A030FFC060E0D8A0FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F5F585F5F
            585F5F585F5F585F5F585F5F585F5F585F000000000000000000000000707070
            7070705F585F5F5F5F8F888FB0B7B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFA0988F7F50109060009F68009F6800A070009F68009F68009F68
            009F68009F68009F68009F6800000000000000000000000000CF780FA06800AF
            9020DFA030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F
            4F484F5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
            5F5F585F0000000000000000000000007070705F585F707770909090C0C0C0FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC0C0B09F78208048009F
            68009F68009F68009F68009F68009F68009F68009F68009F68009F68009F6800
            000000000000000000CF780F9F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F5F585F5F
            585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F000000000000000000
            7070705F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F68009F68009F68009F68009F68
            009F68009F68009F68009F68009F68009F6800000000000000CF780F9F6800DF
            A03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            9097906060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
            5F5F585F5F585F5F585F0000000000007070705F585F909790BFBFBFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC8BFAF804FA0
            700FA06800A06800A06800A06800A07000AF7000AF700F9F68009F68009F6800
            A06800A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F
            585F5F585F5F585F6060606067605F585F5F585F5F585F5F585F5F585F5F585F
            606760909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFCFC0B0AF9840A0780FA07000A07000A07000A068
            00A06800A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FF
            D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F58
            5F5F585F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
            C8B0CFA040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780F
            AF9020D0982FDFA03FFFC860FFD880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90909070707060
            67605F585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790
            BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C89FD0A86FD0A040D08030AF90
            10AF9020CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F
            7F8F888F8F888F909790AFAFAFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFD0A0E0C870EFA86FD0A040D0C05FFFA040DFC060FFC86F
            FFD07FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFB0B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFC0C7C0FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD0
            9FDFC89FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B0B7B0C0C0
            C0BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = btn_ConfLancClick
        end
        object btn_CancLanc: TSpeedButton
          Left = 123
          Top = 1
          Width = 30
          Height = 30
          Hint = 'Cancelar'
          Enabled = False
          Flat = True
          Glyph.Data = {
            36160000424D361600000000000036000000280000003A000000200000000100
            18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
            AFAFAFAFAFAFAFAFAFAFAFB0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09FA09F9F989F9090909F98
            9F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0
            A0B0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F
            989F9090908F888F8080808080807F787F7F78707F78708F807F9088809F988F
            B0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F9090908F8F8F80
            80808080807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF9090908F888F7F787F7070706F68606058506F60
            3F50483F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040
            404047405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F8080807F
            78706F60605F504F50483F60380F60380F6F38006F3800703800703800704000
            70480F7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F8080807F787F6067605057504F
            484F3F383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070
            A0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFF9F989F8F888F7F787060605F60403060380F6038008050006F38
            007040009F68007F60009060009060009060007F60009F500FA0701FAFA070FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F
            8F8F8F7F787F6060604047403F383F3030304047403F383F3F383F5F585F4F48
            4F5050505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0A0A08F908F7F787F6F68404F
            483F4F380F6F38007040009F68009F6800A068009F68009F68009F68009F6800
            9F68009F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F
            383F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
            5F585F6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFF9FA09F80808070706F50483F5F38006F38009F68009F6800CF780FCF78
            0F9F68009F68009F68009F68009F68009F68009F68009F68009F6800A07000AF
            983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080
            7070704F484F3030303F383F5F585F5F585F7070707070705F585F5F585F5F58
            5F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9F989F8F80806060504F400F6F
            40009068009F68009F6800000000CF780F9F68009F68009F6800CF780FCF780F
            9F68009F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F5F
            585F0000007070705F585F5F585F5F585F7070707070705F585F5F585F5F585F
            5F585F5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFF9F989F7F787060401F6F38008F6000A068009F6800000000000000CF78
            0FCF780F9F6800000000000000CF780FCF780F9F68009F68009F68009F6800A0
            7000CF8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F
            4040403F383F5050505F585F5F585F0000000000007070707070705F585F0000
            000000007070707070705F585F5F585F5F585F5F585F5F585F808080BFBFBFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7F706F4F401070380090
            6000A068009F6800000000000000000000CF780FCF780F000000000000000000
            CF780F9F68009F6800A068009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F00
            00000000000000007070707070700000000000000000007070705F585F5F585F
            5F585F5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFF90908F6F60506F380F7038009F60009F68009F68000000000000000000
            000000000000000000000000000000009F68009F68009F6800A07000A06800A0
            7000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090606060
            3F3F3F3F383F5057505F585F5F585F0000000000000000000000000000000000
            000000000000005F585F5F585F5F585F5F585F5F585F5F585F7070709F989FC0
            C7C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7048206F380070400090
            60009F68009F68009F68000000000000000000000000000000000000009F6800
            9F68009F68009F6800A06800A06800A07000AF900FD0A03FE0B080FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F5F
            585F0000000000000000000000000000000000005F585F5F585F5F585F5F585F
            5F585F5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFA098906F584F6F38007060009F68009F68009F68009F68009F68000000
            00000000000000000000CF780FCF780F9F68009F68009F68009F68009F68009F
            7000AF780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F
            3F383F4047405F585F5F585F5F585F5F585F5F585F0000000000000000000000
            007070707070705F585F5F585F5F585F5F585F5F585F5F585F6067608F888FC0
            C0C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8A07050406F40008F60009F
            68009F68009F68009F68009F6800000000000000000000000000000000CF780F
            9F68009F68009F68009F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F585F5F
            585F5F585F0000000000000000000000000000007070705F585F5F585F5F585F
            5F585F5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFB0B0AF7F68407040007F40009F68009F68009F68009F68009F68000000
            00000000000000000000000000CF780FFF80009F68009F6800A06800A06800A0
            7000B09010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0606060
            3F383F4040405F585F5F585F5F585F5F585F5F585F0000000000000000000000
            000000007070708080805F585F5F585F5F585F5F585F5F585F7070709F9F9FB0
            B0B0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFC0C0BF80784F70480F9060009F
            68009F68009F68009F6800000000000000000000CF780F000000000000000000
            CF780FCF780F9F68009F6800A06800A07800D0A030FFC060E0D8A0FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC0C0C06F6F6F4040405050505F585F5F585F5F585F5F
            585F0000000000000000007070700000000000000000007070707070705F585F
            5F585F5F585F5F5F5F8F888FB0B7B0CFC8CFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFA0988F7F50109060009F68009F68009F68009F68000000000000
            000000009F68009F6800000000000000000000CF780F9F6800A06800A06800AF
            9020DFA030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F
            4F484F5050505F585F5F585F5F585F5F585F0000000000000000005F585F5F58
            5F0000000000000000007070705F585F5F585F5F585F707770909090C0C0C0FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC0C0B09F78208048009F
            68009F68009F68000000000000000000009F68009F68009F68009F6800000000
            0000000000009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFBFB8BF6F686F4040405F585F5F585F5F585F00
            00000000000000005F585F5F585F5F585F5F585F0000000000000000005F585F
            5F585F5F585F707770AFA8AFC0C7C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F68009F68009F68009F68009F68
            009F68009F68009F68009F68009F68000000009F68009F68009F68009F6800DF
            A03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            9097906060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
            5F5F585F5F585F0000005F585F5F585F5F585F5F585F909790BFBFBFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC8BFAF804FA0
            700F9F68009F68009F68009F68009F68009F68009F68009F68009F68009F6800
            9F68009F68009F6800AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C7C07F7F7F6060605F585F5F585F5F
            585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
            606760909090B0B0B0D0D0D0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFCFC0B0AF98409F68009F68009F68009F68009F68
            009F68009F68009F68009F68009F68009F68009F68009F6800BFA030FFC860FF
            D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC0C0C08080805F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
            5F5F585F5F585F5F585F5F585F5F585F808780BFB8BFD0D0D0FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
            C8B0CFA040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780F
            AF9020D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C090909070707060
            67605F585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790
            BFB8BFCFC8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C89FD0A86FD0A040D08030AF90
            10AF9020CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFBFBFBFA0A0A09090908080807070707077707070707F7F
            7F8F888F8F888F909790AFAFAFC0C0C0D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFD0A0E0C870EFA86FD0A040D0C05FFFA040DFC060FFC86F
            FFD07FFFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0
            D0D0B0B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFC0C7C0D0D0D0FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD0
            9FDFC89FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C7C0C0C0C0B0B7B0C0C0
            C0BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = btn_CancLancClick
        end
        object btn_LanctoPadrao: TSpeedButton
          Left = 153
          Top = 1
          Width = 76
          Height = 30
          Hint = 'Lan'#231'amento Padr'#227'o'
          Caption = 'Lcto Padr'#227'o'
          Flat = True
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = btn_LanctoPadraoClick
        end
      end
      object dbg_Lancto: TDBGrid
        Left = 0
        Top = 273
        Width = 973
        Height = 240
        Align = alClient
        DataSource = Ds_Lancto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = 16
        TitleFont.Name = 'Arial'
        TitleFont.Pitch = fpVariable
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'EMPRESA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FILIAL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Lkp_TIPO_LANC'
            Title.Caption = 'Tipo Lan'#231'amento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_LOTE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_LANCLOTE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DESC_LANC'
            Title.Caption = 'Lan'#231'amento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_LANC'
            Title.Caption = 'Valor'
            Width = 80
            Visible = True
          end>
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 965
    Height = 41
    Anchors = []
    ButtonHeight = 37
    ButtonWidth = 39
    Caption = 'ToolBar1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 11
    Font.Name = 'helvetica'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnMouseMove = ToolBar1MouseMove
    ExplicitWidth = 981
    object SB_PRIMEIRO: TSpeedButton
      Left = 1
      Top = 4
      Width = 40
      Height = 37
      Hint = 'Primeiro'
      Enabled = False
      Flat = True
      Glyph.Data = {
        36160000424D361600000000000036000000280000003A000000200000000100
        18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFC0BFB0B8B0B0A8AFAFA8AFAFA8AF
        B0A8AFBFB8BFBFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFBFBFBFB0B0B0AFAFAFAFAFAFAFAFAFAFAFAFBFBFBFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFC0BFB0B8
        B0A0A0A09F989F9F989F9F989F9090909F989F9FA09FAFA8A0B0A8AFBFB8BFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFB0B0B0A0A0A09F9F9F9F9F
        9F9F9F9F9090909F9F9F9F9F9FAFA8AFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC0C0C0B0B0AF9F988F9088808F807F7F78707F78707F787F808080
        8080808F888F9090909F989FAFA8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B0
        B0B09097908F888F8087807F787F7F787F7F7F7F8080808080808F8F8F909090
        9F9F9FAFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB8AFA0988F9070407F483F7040
        1F7040106F401F50483F6F603F6058506F68607070707F787F8F888F909090AF
        A8A0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB0B7B09F989F6F686F5057504047404040404047404F48
        4F5F585F5F585F6F686F7070707F7F7F8F8F8F909090AFA8AFBFBFBFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
        A0909F78407F681070480F7040007038007038006F38006F380060380F60380F
        50483F5F504F6F60607F78708080809F989FAFA8AFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A070707050505040
        40403F383F3F383F3F383F3F383F3F383F3F383F3F383F4F484F505750606760
        7F787F8080809F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFAFA070A0701F9F500F7F60009060009060009060
        007F60008F60007040006F38006F380060380060380F60403060605F7F78708F
        888F9F989FB0A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9097906067605057504F484F5050505050505050504F484F5050503F38
        3F3F383F3F383F3030303F383F4047406060607F787F8F8F8F9F9F9FAFAFAFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFA070A0781F9F
        68009F68009F68009F68009F68009F68009F68009F68009F68007F68007F600F
        7040006F38004F380F4F483F6F68407F787F8F908FA0A0A0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A06F686F5F585F5F585F5F585F5F
        585F5F585F5F585F5F585F5F585F5F585F4F4F4F4F4F4F3F383F3F383F303030
        4047405F5F5F7F7F7F8F8F8FA0A0A0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFD0B090AF983FA070009F68009F68009F68009F68009F68009F68
        009F7000A07000A0780FC0902FBF88409F68208F40006F38005F380050483F70
        706F8080809FA09FBFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0
        8080805F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F6060
        608080808080806060604047403F383F3030304F484F7070708080809F9F9FBF
        BFBFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDFC89FD0A040AF700F9F70009F
        68009F68009F68009F68009F6800A07000A0700FAF902FBF8840BF88309F7030
        A0882F9F68007F60006F40004F400F6060508F80809F989FB0A8AFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC0C0C09090906067605F585F5F585F5F585F5F585F5F
        585F5F585F5F585F6060607F787F8080807F7F7F6F686F7070705F585F4F484F
        3F383F3037305F585F8087809F9F9FAFAFAFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFC870CF8030A070009F68009F6800A07000A07000AF780FBF8840B088
        2F80602F30281080602F3028106F583FBF882FA0700F9F68008F60006F380060
        401F7F78709F989FAFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF808080
        5F585F5F585F5F585F5F585F5F585F6067608080807F787F5F585F2020205F58
        5F2020205057507F7F7F6060605F585F5050503F383F4040407F787F9F9F9FAF
        AFAFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDFA84FB0902FA070009F7000A0
        7000AF780FC08820BF884080782F30281010080010100FBF680010100F6F5830
        BF884FAF700F9F68009060007038004F40107F706F90908FAFA8AFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9F9F9F7F787F5F585F5F585F5F585F6067607F787F80
        80806060602020200F080F1010106060601010105050508087806067605F585F
        5050503F383F303730707770909090AFAFAFFFFFFFFFFFFF0000FFFFFFFFFFFF
        E0D09FD0A05FCF780FA07000A0780FA09020BF882FAF80204F400F1010000008
        000000000F080FBF68000F080F5F5040BF884FAF700F9F68009060007038006F
        380F6F605090908FAFA8AFFFFFFFFFFFFFFFFFFFFFFFFFC0C7C09F989F707070
        5F585F6060607070707F7F7F7070703037300F080F0000000000000F0F0F6060
        600F0F0F5050508087806067605F585F5050503F383F3F3F3F606060909090AF
        AFAFFFFFFFFFFFFF0000FFFFFFFFFFFFE0B080D0A03FAF900FA07000BF882FAF
        80406058202018000F08000000000000000000000F080FC0902F0F080F5F504F
        BF8830AF700F9F68009060007040006F380070482090908FB0B0AFFFFFFFFFFF
        FFFFFFFFFFFFFFB0B0B09090906F6F6F5F585F7F7F7F7F787F4F484F1010100F
        080F0000000000000000000F0F0F8080800F0F0F5057507F7F7F6067605F585F
        5050503F383F3F383F4F484F909090B0B0B0FFFFFFFFFFFF0000FFFFFFFFFFFF
        E0D090D0A030AF780F9F70008F602F20200F1008000000000000000000000000
        000000000F080FBF68000F080F605040BF884FAF700F9F68009F68007060006F
        38006F584FA09890BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C08F888F606760
        5F585F5F5F5F1F181F0F080F0000000000000000000000000000000F0F0F6060
        600F0F0F5050508087806067605F585F5F585F4047403F383F5F5F5F9F989FBF
        BFBFFFFFFFFFFFFF0000FFFFFFFFFFFFE0D07FEFA03FAF78209F700040280F10
        10000000000000000000000000000000000000000F080FBF68000F080F6F5830
        BF8850AF70109F68009F68008F60006F4000705040AFA8A0C0C0C0FFFFFFFFFF
        FFFFFFFFFFFFFFBFB8BF9F989F6F6F6F5F585F2F282F0F080F00000000000000
        00000000000000000000000F0F0F6060600F0F0F5050508F888F6067605F585F
        5F585F5050503F383F505750AFA8AFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        E0B880DFA05FB09010A070008F60006038001F10000F08000000000000000000
        000000000F1000C0902F0F10005F5040BF884FAF70109F68009F68007F400070
        40007F6840B0B0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B09F9F9F707070
        5F585F5050503030301010100F080F0000000000000000000000000F080F8080
        800F080F5050508087806067605F585F5F585F4040403F383F606060B0B0B0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFC060D0A030A078009F680090
        7800A058004030001010000000000000000000000F080FBF68000F080F6F5830
        BF8850AF70109F68009F680090600070480F80784FC0C0BFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFCFC8CFB0B7B08F888F5F5F5F5F585F5F585F5050502027200F
        080F0000000000000000000F0F0F6060600F0F0F5050508F888F6067605F585F
        5F585F5050504040406F6F6FC0C0C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFD070DFA030AF90209F7000A070009F68009060007F58002F20001010
        000F000010080FBF680010080F605040BF884FAF70109F68009F68009060007F
        5010A0988FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0909090
        7077705F585F5F585F5F585F5050504F484F1F181F0F080F0007000F0F0F6060
        600F0F0F5050508087806067605F585F5F585F5050504F484F9F989FFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFD87FE0C05FCF80109F68009F
        68009F6800A06800B068009078007F580030280F1F180FC0902F1F180F6F4030
        BF804FAF700F9F68009F68008048009F7820C0C0B0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC0C7C0AFA8AF7077705F585F5F585F5F585F5F585F5F
        5F5F5F585F4F484F2020201017108080801017104F484F8087806067605F585F
        5F585F4040406F686FBFB8BFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFC86FDFA03F9F68009F68009F6800A06800A07000A07000BF68
        00907800704000BF680070400060502FBF8020A070009F68009F68009F7010AF
        A06FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF
        9097905F585F5F585F5F585F5F585F5F585F5F585F6060605F585F3F383F6060
        603F383F4F484F7077705F585F5F585F5F585F606060909790FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0C86FD0A03FAF
        780FA07000A068009F68009F68009F6800A06800A07000BF68009F8000BF6800
        9F6800A070009F7000A0700FAF804FCFC8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B09090906067605F585F5F585F5F
        585F5F585F5F585F5F585F5F585F6060606060606060605F585F5F585F5F585F
        6060607F7F7FC0C7C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFC860BFA030CF780FAF7000A070009F70009F68
        009F6800A06800A07000A07000A07000A07000A07000A0780FAF9840CFC0B0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFBFB8BF8087807070706060605F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F5F585F5F585F606060808080C0C0C0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C860DFA03FD0982FAF9020AF780FA07000A07000A07000A07000A07000A07000
        AF700FAF9010CFA040CFC8B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB8BF9097908F888F70
        77706067605F585F5F585F5F585F5F585F5F585F5F585F606760707070909090
        C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD070E0C860DFA83FD0A030D098
        2FB0982FCF780FAF9020AF9010D08030D0A040D0A86FD0C89FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC0C0C0AFAFAF9097908F888F8F888F7F7F7F7070707077
        70707070808080909090A0A0A0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD07FFFC86FDFC060FFA040D0C05FD0A040EFA86FE0C870
        FFD0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0
        C7C0BFBFBFAFA8AFA0A0A0A0A7A0909090AFAFAFB0B0B0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB0
        9FDFC89FDFB090DFC89FDFD09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB8BFC0C0C0B0B7B0C0C0
        C0C0C7C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_PRIMEIROClick
      OnMouseMove = SB_PRIMEIROMouseMove
    end
    object SB_ANTERIOR: TSpeedButton
      Left = 41
      Top = 4
      Width = 39
      Height = 37
      Hint = 'Anterior'
      Enabled = False
      Flat = True
      Glyph.Data = {
        36160000424D361600000000000036000000280000003A000000200000000100
        18000000000000160000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFC0BFB0B8B0B0A8AFAFA8AFAFA8AF
        B0A8AFBFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFBFBFBFB0B0B0AFAFAFAFAFAFAFAFAFAFAFAFBFBFBFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFC0BFB0B8
        B0A0A0A09F989F9F989F9F989F9090909F989F9FA09FAFA8A0B0A8AFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFB0B0B0A0A0A09F9F9F9F9F
        9F9F9F9F9090909F9F9F9F9F9FAFA8AFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC0C0C0B0B0AF9F988F9088808F807F7F78707F78707F787F808080
        8080808F888F9090909F989FAFA8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B0
        B0B09097908F888F8087807F787F7F787F7F7F7F8080808080808F8F8F909090
        9F9F9FAFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB8AFA0988F9070407F483F7040
        1F7040106F401F50483F6F603F6058506F68607070707F787F8F888F909090AF
        A8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB0B7B09F989F6F686F5057504047404040404047404F48
        4F5F585F5F585F6F686F7070707F7F7F8F8F8F909090AFA8AFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
        A0909F78407F681070480F7040007038007038006F38006F380060380F60380F
        50483F5F504F6F60607F78708080809F989FAFA8AFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A070707050505040
        40403F383F3F383F3F383F3F383F3F383F3F383F3F383F4F484F505750606760
        7F787F8080809F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFAFA070A0701F9F500F7F60009060009060009060
        007F60008F60007040006F38006F380060380060380F60403060605F7F78708F
        888F9F989FB0A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9097906067605057504F484F5050505050505050504F484F5050503F38
        3F3F383F3F383F3030303F383F4047406060607F787F8F8F8F9F9F9FAFAFAFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFA070A0781F9F
        68009F68009F68009F68009F68009F68009F68009F68009F68007F68007F600F
        7040006F38004F380F4F483F6F68407F787F8F908FA0A0A0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A06F686F5F585F5F585F5F585F5F
        585F5F585F5F585F5F585F5F585F5F585F4F4F4F4F4F4F3F383F3F383F303030
        4047405F5F5F7F7F7F8F8F8FA0A0A0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFD0B090AF983FA070009F68009F68009F68009F68009F68009F68
        009F7000A07000A0780FC0902FBF88409F68208F40006F38005F380050483F70
        706F8080809FA09FBFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0
        8080805F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F6060
        608080808080806060604047403F383F3030304F484F7070708080809F9F9FBF
        BFBFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDFC89FD0A040AF700F9F70009F
        68009F68009F68009F68009F6800A07000A0700FAF902FBF8840BF88309F7030
        A0882F9F68007F60006F40004F400F6060508F80809F989FB0A8AFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF9090906067605F585F5F585F5F585F5F585F5F
        585F5F585F5F585F6060607F787F8080807F7F7F6F686F7070705F585F4F484F
        3F383F3037305F585F8087809F9F9FAFAFAFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFC870CF8030A070009F68009F68009F68009F6800A07000A07000AF78
        0FBF8840B0882F80602F3028106F583FBF882FA0700F9F68008F60006F380060
        401F7F78709F989FAFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF808080
        5F585F5F585F5F585F5F585F5F585F5F585F5F585F6067608080807F787F5F58
        5F2020205057507F7F7F6060605F585F5050503F383F4040407F787F9F9F9FAF
        AFAFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDFA84FB0902FA070009F68009F
        68009F7000A07000AF780FC08820BF884080782F30281010080010100F6F5830
        BF884FAF700F9F68009060007038004F40107F706F90908FAFA8AFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9F9F9F7F787F5F585F5F585F5F585F5F585F5F585F60
        67607F787F8080806060602020200F080F1010105050508087806067605F585F
        5050503F383F303730707770909090AFAFAFFFFFFFFFFFFF0000FFFFFFFFFFFF
        E0D09FD0A05FCF780FA070009F7000A07000A0780FA09020BF882FAF80204F40
        0F1010000008000000000F080F5F5040BF884FAF700F9F68009060007038006F
        380F6F605090908FAFA8AFFFFFFFFFFFFFFFFFFFFFFFFFC0C7C09F989F707070
        5F585F5F585F5F585F6060607070707F7F7F7070703037300F080F0000000000
        000F0F0F5050508087806067605F585F5050503F383F3F3F3F606060909090AF
        AFAFFFFFFFFFFFFF0000FFFFFFFFFFFFE0B080D0A03FAF900FA07000A07000A0
        880FBF882FAF80406058202018000F08000000000000000000000F080F5F504F
        BF8830AF700F9F68009060007040006F380070482090908FB0B0AFFFFFFFFFFF
        FFFFFFFFFFFFFFB0B0B09090906F6F6F5F585F5F585F6F686F7F7F7F7F787F4F
        484F1010100F080F0000000000000000000F0F0F5057507F7F7F6067605F585F
        5050503F383F3F383F4F484F909090B0B0B0FFFFFFFFFFFF0000FFFFFFFFFFFF
        E0D090D0A030AF780F9F7000A0701FBF88408F602F20200F1008000000000000
        000000000000000000000F080F605040BF884FAF700F9F68009F68007060006F
        38006F584FA09890BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C08F888F606760
        5F585F6067608080805F5F5F1F181F0F080F0000000000000000000000000000
        000F0F0F5050508087806067605F585F5F585F4047403F383F5F5F5F9F989FFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFE0D07FEFA03FAF78209F7000A070009F
        680F40280F1010000000000000000000000000000000000000000F080F6F5830
        BF8850AF70109F68009F68008F60006F4000705040AFA8A0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFBFB8BF9F989F6F6F6F5F585F5F585F5F5F5F2F282F0F080F00
        00000000000000000000000000000000000F0F0F5050508F888F6067605F585F
        5F585F5050503F383F505750AFA8AFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        E0B880DFA05FB09010A07000A06800B060008F60006038001F10000F08000000
        000000000000000000000F10005F5040BF884FAF70109F68009F68007F400070
        40007F6840B0B0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B09F9F9F707070
        5F585F5F585F5F585F5050503030301010100F080F0000000000000000000000
        000F080F5050508087806067605F585F5F585F4040403F383F606060B0B0B0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFE0D8A0FFC060D0A030A07800A07000A0
        68009F6800907800A058004030001010000000000000000000000F080F6F5830
        BF8850AF70109F68009F680090600070480F80784FC0C0BFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB0B7B08F888F5F5F5F5F585F5F585F5F585F5F585F50
        50502027200F080F0000000000000000000F0F0F5050508F888F6067605F585F
        5F585F5050504040406F6F6FBFBFBFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFD070DFA030AF9020A070009F68009F7000A070009F68009060007F58
        002F20001010000F000010080F605040BF884FAF70109F68009F68009060007F
        5010A0988FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0909090
        7077705F585F5F585F5F585F5F585F5F585F5050504F484F1F181F0F080F0007
        000F0F0F5050508087806067605F585F5F585F5050504F484F9F989FFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFD87FE0C05FCF8010A070009F
        68009F68009F68009F6800A06800B068009078007F580030280F1F180F6F4030
        BF804FAF700F9F68009F68008048009F7820C0C0B0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF7077705F585F5F585F5F585F5F585F5F
        585F5F585F5F5F5F5F585F4F484F2020201017104F484F8087806067605F585F
        5F585F4040406F686FBFB8BFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFD8A0FFC86FDFA03FAF7820A070009F68009F68009F6800A06800A070
        00A07000BF680090780070400060502FBF8020A070009F68009F68009F7010AF
        A06FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF
        9097906F6F6F5F585F5F585F5F585F5F585F5F585F5F585F5F585F6060605F58
        5F3F383F4F484F7077705F585F5F585F5F585F606060909790FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFD89FE0C86FD0A03FAF
        780FA07000A068009F68009F68009F6800A06800A07000BF68009F8000BF6800
        9F6800A070009F7000A0700FAF804FCFC8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B09090906067605F585F5F585F5F
        585F5F585F5F585F5F585F5F585F6060606060606060605F585F5F585F5F585F
        6060607F7F7FC0C7C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD89FFFC860BFA030CF780FAF7000A070009F70009F68
        009F6800A06800A07000A07000A07000A07000A07000A0780FAF9840CFC0B0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFBFB8BF8087807070706060605F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F5F585F5F585F606060808080C0C0C0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD880FF
        C860DFA03FD0982FAF9020AF780FA07000A07000A07000A07000A07000A07000
        AF700FAF9010CFA040CFC8B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB8BF9097908F888F70
        77706067605F585F5F585F5F585F5F585F5F585F5F585F606760707070909090
        C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD89FFFD070E0C860DFA83FD0A030D098
        2FB0982FCF780FAF9020AF9010D08030D0A040D0A86FD0C89FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC0C0C0AFAFAF9097908F888F8F888F7F7F7F7070707077
        70707070808080909090A0A0A0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8A0FFD07FFFC86FDFC060FFA040D0C05FD0A040EFA86FE0C870
        FFD0A0E0D8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0
        C7C0BFBFBFAFA8AFA0A0A0A0A7A0909090AFAFAFB0B0B0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0AFDFB0
        9FDFC89FDFB090DFC89FDFD09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_ANTERIORClick
      OnMouseMove = SB_ANTERIORMouseMove
    end
    object SB_PROXIMO: TSpeedButton
      Left = 80
      Top = 4
      Width = 39
      Height = 37
      Hint = 'Pr'#243'ximo'
      Enabled = False
      Flat = True
      Glyph.Data = {
        36160000424D361600000000000036000000280000003A000000200000000100
        18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFAF
        AFAFAFAFAFAFAFAFB0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFBFB8BFB0A8AFAFA8A09FA09F9F989F9090909F989F9F98
        9F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFAFAFAFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0A0B0B0
        B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFBFB8BFAFA8A09F989F90
        90908F888F8080808080807F787F7F78707F78708F807F9088809F988FB0B0AF
        C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80808080
        80807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F603F5048
        3F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF
        9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040404047
        405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFBFC0BFAFA8AF9F989F8080807F78706F
        60605F504F50483F60380F60380F6F38006F380070380070380070400070480F
        7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F484F3F
        383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070A0A0A0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        B0A8AF9F989F8F888F7F787060605F60403060380F6038006F38006F38007040
        008F60007F60009060009060009060007F60009F500FA0701FAFA070FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F
        7F787F6060604047403F383F3030303F383F3F383F3F383F5050504F484F5050
        505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFA0A0A08F908F7F787F6F68404F483F4F
        380F6F38007040007F600F7F68009F68009F68009F68009F68009F68009F6800
        9F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F383F4F
        4F4F4F4F4F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
        6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        9FA09F80808070706F50483F5F38006F38008F40009F6820BF8840C0902FA078
        0FA070009F70009F68009F68009F68009F68009F68009F6800A07000AF983FD0
        B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080707070
        4F484F3030303F383F4047406060608080808080806060605F585F5F585F5F58
        5F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF9F989F8F80806060504F400F6F40007F
        60009F6800A0882F9F7030BF8830BF8840AF902FA0700FA070009F68009F6800
        9F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F4F484F5F585F7070706F
        686F7F7F7F8080807F787F6060605F585F5F585F5F585F5F585F5F585F5F585F
        5F585F606760909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        9F989F7F787060401F6F38008F60009F6800A0700FBF882F6F583F3028108060
        2FB0882FBF8840AF780FA07000A070009F68009F68009F68009F6800A07000CF
        8030F0C870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F404040
        3F383F5050505F585F6060607F7F7F5057502020205F585F7F787F8080806067
        605F585F5F585F5F585F5F585F5F585F5F585F5F585F808080BFB8BFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7F706F4F40107038009060009F
        6800AF700FBF884F6F583010100F10080030281080782FBF8840C08820AF780F
        A070009F70009F68009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9090907077703037303F383F5050505F585F60676080878050
        50501010100F080F2020206060608080807F787F6067605F585F5F585F5F585F
        5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        90908F6F60506F380F7038009060009F6800AF700FBF884F5F50400F080F0000
        000008001010004F400FAF8020BF882FA09020A0780FA070009F7000A07000CF
        780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090906060603F3F3F
        3F383F5050505F585F6067608087805050500F0F0F0000000000000F080F3037
        307070707F7F7F7070706060605F585F5F585F5F585F7070709F989FFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7048206F38007040009060009F
        6800AF700FBF88305F504F0F080F0000000000000000000F0800201800605820
        AF8040BF882FA0880FA07000A07000AF900FD0A03FE0B080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F6067607F7F7F50
        57500F0F0F0000000000000000000F080F1010104F484F7F787F7F7F7F6F686F
        5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        A098906F584F6F38007060009F68009F6800AF700FBF884F6050400F080F0000
        0000000000000000000000000010080020200F8F602FBF8840A0701F9F7000AF
        780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F3F383F
        4047405F585F5F585F6067608087805050500F0F0F0000000000000000000000
        000000000F080F1F181F5F5F5F8080806067605F585F6067608F888FC0C0C0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAFA8A07050406F40008F60009F68009F
        6800AF7010BF88506F58300F080F000000000000000000000000000000000000
        10100040280F9F680FA070009F7000AF7820EFA03FE0D07FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F6067608F888F50
        50500F0F0F0000000000000000000000000000000000000F080F2F282F5F5F5F
        5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        B0B0AF7F68407040007F40009F68009F6800AF7010BF884F5F50400F10000000
        000000000000000000000F08001F10006038008F6000B06000A06800A07000B0
        9010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06060603F383F
        4040405F585F5F585F6067608087805050500F080F0000000000000000000000
        000F080F1010103030305050505F585F5F585F5F585F7070709F9F9FB0B0B0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF80784F70480F9060009F68009F
        6800AF7010BF88506F58300F080F000000000000000000101000403000A05800
        9078009F6800A06800A07000A07800D0A030F0C060E0D8A0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F6067608F888F50
        50500F0F0F0000000000000000000F080F2027205050505F585F5F585F5F585F
        5F585F5F5F5F8F888FB0B0B0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFA0988F7F50109060009F68009F6800AF7010BF884F60504010080F0F00
        001010002F20007F58009060009F6800A070009F70009F6800A07000AF9020DF
        A030FFD070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F4F484F
        5050505F585F5F585F6067608087805050500F0F0F0007000F080F1F181F4F48
        4F5050505F585F5F585F5F585F5F585F5F585F707770909090C0C0C0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F68009F
        6800AF700FBF804F6F40301F180F30280F7F5800907800B06800A068009F6800
        9F68009F68009F6800A07000CF8010E0C05FFFD87FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F6067608087804F
        484F1017102020204F484F5F585F5F5F5F5F585F5F585F5F585F5F585F5F585F
        5F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFAFA06F9F70109F68009F6800A07000BF802060502F7040009078
        00BF6800A07000A07000A068009F68009F68009F6800A07000AF7820DFA03FFF
        C86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909790
        6060605F585F5F585F5F585F7077704F484F3F383F5F585F6060605F585F5F58
        5F5F585F5F585F5F585F5F585F5F585F6F6F6F909790BFBFBFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0700F9F
        7000A070009F6800BF68009F8000BF6800A07000A068009F68009F68009F6800
        A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F585F60
        60606060606060605F585F5F585F5F585F5F585F5F585F5F585F5F585F606760
        909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFAF9840A0780FA07000A07000A07000A07000A070
        00A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FFD89FFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
        A040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780FAF9020
        D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090907070706067605F
        585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790BFB8BF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF9010AF90
        20CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F7F8F88
        8F8F888F909790AFAFAFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FF0A040DFC060FFC86FFFD07F
        FFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0
        B0B0AFAFAF909090A0A7A09F989FAFA8AFBFBFBFC0C7C0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC8
        9FDFB090DFC89FDFB09FF0D0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B0B7B0C0C0C0BFB8
        BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_PROXIMOClick
      OnMouseMove = SB_PROXIMOMouseMove
    end
    object SB_ULTIMO: TSpeedButton
      Left = 119
      Top = 4
      Width = 39
      Height = 37
      Hint = #218'ltimo'
      Enabled = False
      Flat = True
      Glyph.Data = {
        36160000424D361600000000000036000000280000003A000000200000000100
        18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0BFC0BFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFAF
        AFAFAFAFAFAFAFAFB0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F989F9F98
        9F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFAFAFAFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0A0B0B0
        B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F989F90
        90908F888F8080808080807F787F7F78707F78708F807F9088809F988FB0B0AF
        C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80808080
        80807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F603F5048
        3F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF
        9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040404047
        405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F78706F
        60605F504F50483F60380F60380F6F38006F380070380070380070400070480F
        7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F484F3F
        383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070A0A0A0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        B0A8AF9F989F8F888F7F787060605F60403060380F6038006F38006F38007040
        008F60007F60009060009060009060007F60009F500FA0701FAFA070FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F
        7F787F6060604047403F383F3030303F383F3F383F3F383F5050504F484F5050
        505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFA0A0A08F908F7F787F6F68404F483F4F
        380F6F38007040007F600F7F68009F68009F68009F68009F68009F68009F6800
        9F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F383F4F
        4F4F4F4F4F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
        6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        9FA09F80808070706F50483F5F38006F38008F40009F6820BF8840C0902FA078
        0FA070009F70009F68009F68009F68009F68009F68009F6800A07000AF983FD0
        B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080707070
        4F484F3030303F383F4047406060608080808080806060605F585F5F585F5F58
        5F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF9F989F8F80806060504F400F6F40007F
        60009F6800A0882F9F7030BF8830BF8840AF902FA0700FA070009F68009F6800
        9F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F4F484F5F585F7070706F
        686F7F7F7F8080807F787F6060605F585F5F585F5F585F5F585F5F585F5F585F
        5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        9F989F7F787060401F6F38008F60009F6800A0700FBF882F6F583F302810BF68
        0030281080602FB0882FBF8840AF780FA07000A070009F68009F6800A07000CF
        8030F0C870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F404040
        3F383F5050505F585F6060607F7F7F5057502020206060602020205F585F7F78
        7F8080806067605F585F5F585F5F585F5F585F5F585F808080BFB8BFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7F706F4F40107038009060009F
        6800AF700FBF884F6F583010100FBF680010100F10080030281080782FBF8840
        C08820AF780FA070009F7000A07000B0902FDFA84FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9090907077703037303F383F5050505F585F60676080878050
        50501010106060601010100F080F2020206060608080807F787F6067605F585F
        5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        90908F6F60506F380F7038009060009F6800AF700FBF884F5F50400F080FBF68
        000F080F0000000008001010004F400FAF8020BF882FA09020A0780FA07000CF
        780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090906060603F3F3F
        3F383F5050505F585F6067608087805050500F0F0F6060600F0F0F0000000000
        000F080F3037307070707F7F7F7070706060605F585F7070709F989FC0C7C0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7048206F38007040009060009F
        6800AF700FBF88305F504F0F080FA070000F080F0000000000000000000F0800
        201800605820AF8040BF882FA07000AF900FD0A03FE0B080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F6067607F7F7F50
        57500F0F0F5F585F0F0F0F0000000000000000000F080F1010104F484F7F787F
        7F7F7F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        A098906F584F6F38007060009F68009F6800AF700FBF884F6050400F080FA070
        000F080F00000000000000000000000000000010080020200F8F602F9F7000AF
        780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F3F383F
        4047405F585F5F585F6067608087805050500F0F0F5F585F0F0F0F0000000000
        000000000000000000000F080F1F181F5F5F5F5F585F6067608F888FC0C0C0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAFA8A07050406F40008F60009F68009F
        6800AF7010BF88506F58300F080FBF68000F080F000000000000000000000000
        00000000000010100040280F9F7000AF7820EFA03FE0D07FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F6067608F888F50
        50500F0F0F6060600F0F0F0000000000000000000000000000000000000F080F
        2F282F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF7F68407040007F40009F68009F6800AF7010BF884F5F50400F1000A070
        000F10000000000000000000000000000F08001F10006038008F6000A07000B0
        9010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06060603F383F
        4040405F585F5F585F6067608087805050500F080F5F585F0F080F0000000000
        000000000000000F080F1010103030305050505F585F7070709F9F9FB0B0B0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF80784F70480F9060009F68009F
        6800AF7010BF88506F58300F080FA070000F080F000000000000000000101000
        403000A058009078009F6800A07800D0A030F0C060E0D8A0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F6067608F888F50
        50500F0F0F5F585F0F0F0F0000000000000000000F080F2027205050505F585F
        5F585F5F5F5F8F888FB0B0B0CFC8CFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFA0988F7F50109060009F68009F6800AF7010BF884F60504010080FBF68
        0010080F0F00001010002F20007F58009060009F6800A070009F7000AF9020DF
        A030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F4F484F
        5050505F585F5F585F6067608087805050500F0F0F6060600F0F0F0007000F08
        0F1F181F4F484F5050505F585F5F585F5F585F707770909090C0C0C0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F68009F
        6800AF700FBF804F6F40301F180FA070001F180F30280F7F5800907800B06800
        A068009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F6067608087804F
        484F1017105F585F1017102020204F484F5F585F5F5F5F5F585F5F585F5F585F
        5F585F707770AFA8AFC0C7C0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFAFA06F9F70109F68009F6800A07000BF802060502F704000A070
        00704000907800BF6800A07000A07000A068009F68009F68009F6800DFA03FFF
        C86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909790
        6060605F585F5F585F5F585F7077704F484F3F383F5F585F3F383F5F585F6060
        605F585F5F585F5F585F5F585F5F585F5F585F909790BFBFBFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0700F9F
        7000A070009F6800BF68009F8000BF6800A07000A068009F68009F68009F6800
        A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F585F60
        60606060606060605F585F5F585F5F585F5F585F5F585F5F585F5F585F606760
        909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFAF9840A0780FA07000A07000A07000A07000A070
        00A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FFD89FFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
        A040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780FAF9020
        D0982FDFA03FFFC860FFD880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090907070706067605F
        585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790BFB8BF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF9010AF90
        20CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F7F8F88
        8F8F888F909790AFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FF0A040DFC060FFC86FFFD07F
        FFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0
        B0B0AFAFAF909090A0A7A09F989FAFA8AFBFBFBFC0C7C0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC8
        9FDFB090DFC89FDFB09FF0D0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B0B7B0C0C0C0BFB8
        BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_ULTIMOClick
      OnMouseMove = SB_ULTIMOMouseMove
    end
    object SB_NOVO: TSpeedButton
      Left = 166
      Top = 4
      Width = 39
      Height = 37
      Hint = 'Incluir Novo Lote'
      Enabled = False
      Flat = True
      Glyph.Data = {
        36160000424D361600000000000036000000280000003A000000200000000100
        18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFAF
        AFAFAFAFAFAFAFAFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F989F9F98
        9F9F989FA0A0A0B0B8B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFAFAFAFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0A0B0B0
        B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F989F90
        90908F888F8080808080807F787F7F78707F78708F807F9088809F988FB0B0AF
        C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80808080
        80807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F603F5048
        3F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF
        9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040404047
        405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F78706F
        60605F504F50483F60380F60380F6F38006F380070380070380070400070480F
        7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F484F3F
        383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070A0A0A0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        B0A8AF9F989F8F888F7F787060605F60403060380F6038008050006F38007040
        009060007F60009060009060009060007F60009F500FA0701FAFA070FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F
        7F787F6060604047403F383F3030304047403F383F3F383F5050504F484F5050
        505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFA0A0A08F908F7F787F6F68404F483F4F
        380F6F38007040009F68009F6800A068009F68009F68009F68009F68009F6800
        9F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F383F5F
        585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
        6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        9FA09F80808070706F50483F5F38006F38009F5800A06810B07820AF700FA070
        00CF780FCF780FCF780FCF780F9F68009F68009F68009F6800A07000AF983FD0
        B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080707070
        4F484F3030303F383F5050505F5F5F6F6F6F6067605F585F7070707070707070
        707070705F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF9F989F8F80806060504F400F6F400090
        68009F6800A07810A06800A068009F68004020003F2000402800CF780F9F6800
        9F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F6060605F
        585F5F585F5F585F2020202020202020207070705F585F5F585F5F585F5F585F
        5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        9F989F7F787060401F6F38008F6000A06800A06800A06800A06800A07000A070
        002F18002F18002F1800CF780FA07000A07000A070009F68009F6800A07000CF
        8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F404040
        3F383F5050505F585F5F585F5F585F5F585F5F585F5F585F1F181F1F181F1F18
        1F7070705F585F5F585F5F585F5F585F5F585F5F585F808080BFBFBFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7F706F4F4010703800906000A0
        6800A06800A06800A070009F70009F68002018002018002F1800CF780FA06800
        A06800A06800A068009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F5F585F5F
        585F5F585F5F585F1010101010101F181F7070705F585F5F585F5F585F5F585F
        5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        90908F6F60506F380F7038009F60009F6800A07000A070009F68009060009F68
        00201000201000201000CF780FCF780FCF780FCF780FA07000A06800A07000CF
        780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090906060603F3F3F
        3F383F5057505F585F5F585F5F585F5F585F5050505F585F1010101010101010
        107070707070707070707070705F585F5F585F5F585F7070709F989FC0C7C0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7048206F38007040009060009F
        6800A06800A068003F20003F20003F20003018001F10002F1800402800402800
        402800CF780FA06800A06800A07000AF900FD0A03FE0B080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F5F585F20
        20202020202020201F181F1010101F181F2020202020202020207070705F585F
        5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        A098906F584F6F38007060009F68009F6800AF700FA0701030200F0F080F2F18
        000F080F0000000000000000000000002F2000CF780F9F68009F68009F7000AF
        780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F3F383F
        4047405F585F5F585F6067606060602020200F0F0F1F181F0F0F0F0000000000
        000000000000001F181F7070705F585F5F585F5F585F6067608F888FC0C0C0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAFA8A07050406F40008F60009F68009F
        6800A0680FA0680F3020000F080F2F18000F080F000000000000000000000000
        2F2000CF780F9F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F5F5F5F5F5F1F
        181F0F0F0F1F181F0F0F0F0000000000000000000000001F181F7070705F585F
        5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        B0B0AF7F68407040007F40009F68009F6800A0680FA0680F30200F0F10002F18
        000F10000008000008000000000000002F2000CF780FA06800A06800A07000B0
        9010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06060603F383F
        4040405F585F5F585F5F5F5F5F5F5F2020200F080F1F181F0F080F0000000000
        000000000000001F181F7070705F585F5F585F5F585F7070709F9F9FB0B0B0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF80784F70480F9060009F68009F
        6800A07000A068009F68009F68009060002F20002F20002F20008F58008F6000
        9F6800A068009F6800A06800A07800D0A030FFC060E0D8A0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F5F585F5F585F5F
        585F5F585F5050501F181F1F181F1F181F4F4F4F5050505F585F5F585F5F585F
        5F585F5F5F5F8F888FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFA0988F7F50109060009F68009F6800A07000A07000A07000A07000A070
        00302800302800302800A07000A07000A07000A07000A06800A06800AF9020DF
        A030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F4F484F
        5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F1F1F1F1F1F1F1F1F
        1F5F585F5F585F5F585F5F585F5F585F5F585F707770909090C0C0C0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F68009F
        6800A06800A068009F6800AF700F9F6800302800302800302800A06800A06800
        A068009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F5F585F5F585F5F
        585F6067605F585F1F1F1F1F1F1F1F1F1F5F585F5F585F5F585F5F585F5F585F
        5F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFAFA06F9F70109F68009F6800A06800A06800A06800A070009F68
        00302800302800302800A06800A06800A068009F68009F68009F6800DFA03FFF
        C86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909790
        6060605F585F5F585F5F585F5F585F5F585F5F585F5F585F1F1F1F1F1F1F1F1F
        1F5F585F5F585F5F585F5F585F5F585F5F585F909790BFBFBFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0700FA0
        6800A06800A06800A06800A07000AF7000AF700FA07000AF700FA06800A06800
        A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F585F5F
        585F5F585F6060606067605F585F6067605F585F5F585F5F585F5F585F606760
        909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFAF9840A0780FA07000A07000A07000A06800A068
        00A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FFD89FFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
        A040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780FAF9020
        D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090907070706067605F
        585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790BFB8BF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF9010AF90
        20CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F7F8F88
        8F8F888F909790AFAFAFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FFFA040DFC060FFC86FFFD07F
        FFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0
        B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFC0C7C0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD09FDFC8
        9FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B0B7B0C0C0C0BFB8
        BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_NOVOClick
      OnMouseMove = SB_NOVOMouseMove
    end
    object SB_EXCLUI: TSpeedButton
      Left = 244
      Top = 4
      Width = 39
      Height = 37
      Hint = 'Excluir'
      Enabled = False
      Flat = True
      Glyph.Data = {
        36160000424D361600000000000036000000280000003A000000200000000100
        18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0BFC0BFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F989F9F98
        9F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0A0B0B0
        B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F989F90
        90908F888F8080808080807F787F7F78707F78708F807F9088809F988FB0B0AF
        C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80808080
        80807F7F7F7F787F7F787F8087808F888F909790B0B0B0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F603F5048
        3F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF
        9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040404047
        405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F78706F
        60605F504F50483F60380F60380F6F38006F380070380070380070400070480F
        7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F484F3F
        383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070A0A0A0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        B0A8AF9F989F8F888F7F787060605F60403060380F6038008050006F38007040
        009060007F60009060009060009060007F60009F500FA0701FAFA070FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F
        7F787F6060604047403F383F3030304047403F383F3F383F5050504F484F5050
        505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFA0A0A08F908F7F787F6F68404F483F4F
        380F6F38007040009F68009F6800A068009F68009F68009F68009F68009F6800
        9F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F383F5F
        585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
        6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        9FA09F80808070706F50483F5F38006F38009F5800A06810B07820AF700FA070
        00A06800A06800A06800A068009F68009F68009F68009F6800A07000AF983FD0
        B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080707070
        4F484F3030303F383F5050505F5F5F6F6F6F6067605F585F5F585F5F585F5F58
        5F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF9F989F8F80806060504F400F6F400090
        68009F6800A07810A06800A07000A0700FA0700FA06800A07000A068009F6800
        9F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F6060605F
        585F5F585F6060606060605F585F5F585F5F585F5F585F5F585F5F585F5F585F
        5F585F606760909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        9F989F7F787060401F6F38008F6000A06800A06800A06800A06800A07000A070
        00A07000A06800A06800A06800A07000A07000A070009F68009F6800A07000CF
        8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F404040
        3F383F5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080BFBFBFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7F706F4F4010703800906000A0
        6800A06800A06800A070009F70009F68009060009F7000A07000A07000A06800
        A06800A06800A068009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F5F585F5F
        585F5F585F5F585F5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F
        5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        90908F6F60506F380F7038009F60009F6800A07000A07000CF780FCF780FCF78
        0FCF780FCF780FCF780FCF780FCF780FCF780FCF780FA07000A06800A07000CF
        780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090906060603F3F3F
        3F383F5057505F585F5F585F5F585F7070707070707070707070707070707070
        707070707070707070707070705F585F5F585F5F585F7070709F989FC0C7C0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F7048206F38007040009060009F
        6800A06800A06800302000302000302000302000302000302000302000302000
        302000CF780FA06800A06800A07000AF900FD0A03FE0B080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F5F585F1F
        181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F1F181F7070705F585F
        5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        A098906F584F6F38007060009F68009F6800AF700FA0701030200F0F080F2F18
        000F080F0000000000000000000000002F2000CF780F9F68009F68009F7000AF
        780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F3F383F
        4047405F585F5F585F6067606060602020200F0F0F1F181F0F0F0F0000000000
        000000000000001F181F7070705F585F5F585F5F585F6067608F888FC0C0C0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAFA8A07050406F40008F60009F68009F
        6800A0680FA0680F3020000F080F2F18000F080F000000000000000000000000
        2F2000CF780F9F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F5F5F5F5F5F1F
        181F0F0F0F1F181F0F0F0F0000000000000000000000001F181F7070705F585F
        5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        B0B0AF7F68407040007F40009F68009F6800A0680FA0680F30200F0F10002F18
        000F10000000000000000000000000002F2000CF780FA06800A06800A07000B0
        9010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06060603F383F
        4040405F585F5F585F5F5F5F5F5F5F2020200F080F1F181F0F080F0000000000
        000000000000001F181F7070705F585F5F585F5F585F7070709F9F9FB0B0B0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF80784F70480F9060009F68009F
        6800A07000A068009F68009F68009060008F58008F58008F58008F58008F6000
        9F6800A068009F6800A06800A07800D0A030FFC060E0D8A0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F5F585F5F585F5F
        585F5F585F5050504F4F4F4F4F4F4F4F4F4F4F4F5050505F585F5F585F5F585F
        5F585F5F5F5F8F888FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFA0988F7F50109060009F68009F6800A07000A07000A07000A07000A070
        00A07000A07000A07000A07000A07000A07000A07000A06800A06800AF9020DF
        A030FFD070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F4F484F
        5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F5F585F5F585F5F585F5F585F707770909090C0C0C0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F68009F
        6800A06800A068009F6800AF700F9F68009F68009F60009F6800A06800A06800
        A068009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F5F585F5F585F5F
        585F6067605F585F5F585F5057505F585F5F585F5F585F5F585F5F585F5F585F
        5F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFAFA06F9F70109F68009F6800A06800A06800A06800A07000A070
        00A07000AF700FAF700FA06800A06800A068009F68009F68009F6800DFA03FFF
        C86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909790
        6060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F6067606067
        605F585F5F585F5F585F5F585F5F585F5F585F909790FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0700FA0
        6800A06800A06800A06800A07000AF7000AF700FA07000AF700FA06800A06800
        A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F585F5F
        585F5F585F6060606067605F585F6067605F585F5F585F5F585F5F585F606760
        909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFAF9840A0780FA07000A07000A07000A06800A068
        00A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FFD89FFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
        A040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780FAF9020
        D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090907070706067605F
        585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790BFB8BF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF9010AF90
        20CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F7F8F88
        8F8F888F909790AFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FFFA040DFC060FFC86FFFD07F
        FFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0
        B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC8
        9FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SB_EXCLUIClick
      OnMouseMove = SB_EXCLUIMouseMove
    end
    object SB_CONFIRMA: TSpeedButton
      Left = 322
      Top = 4
      Width = 40
      Height = 37
      Hint = 'Confirmar'
      Enabled = False
      Flat = True
      Glyph.Data = {
        36160000424D361600000000000036000000280000003A000000200000000100
        18000000000000160000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0BFC0BFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
        AFAFAFAFAFAFAFAFAFAFAFB0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F98
        9F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFAFAFAFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0
        A0B0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F
        989F9090908F888F8080808080807F787F7F78707F78708F807F9088809F988F
        B0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9090908F8F8F80
        80808080807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F60
        3F50483F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        AFA8AF9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040
        404047405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F
        78706F60605F504F50483F60380F60380F6F38006F3800703800703800704000
        70480F7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080807F787F6067605057504F
        484F3F383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070
        A0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFB0A8AF9F989F8F888F7F787060605F60403060380F6038008050006F38
        007040009060007F60009060009060009060007F60009F500FA0701FAFA070FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F
        8F8F8F7F787F6060604047403F383F3030304047403F383F3F383F5050504F48
        4F5050505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0A0A08F908F7F787F6F68404F
        483F4F380F6F38007040009F68009F6800A068009F68009F68009F68009F6800
        9F68009F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F
        383F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
        5F585F6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF9FA09F80808070706F50483F5F38006F38009F5800A06810B07820AF70
        0FA07000A06800A06800A06800A068009F68009F68009F68009F6800A07000AF
        983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080
        7070704F484F3030303F383F5050505F5F5F6F6F6F6067605F585F5F585F5F58
        5F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9F989F8F80806060504F400F6F
        40009068009F68009F68009F6800CF780FCF780F9F68009F68009F68009F6800
        9F68009F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F5F
        585F5F585F7070707070705F585F5F585F5F585F5F585F5F585F5F585F5F585F
        5F585F5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF9F989F7F787060401F6F38008F6000A068009F68009F68000000000000
        00CF780FCF780FCF780F9F68009F68009F68009F68009F68009F68009F6800A0
        7000CF8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F
        4040403F383F5050505F585F5F585F5F585F0000000000007070707070707070
        705F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080BFBFBFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7F706F4F401070380090
        6000A06800A06800000000000000000000000000CF780FCF780FCF780F9F6800
        9F68009F68009F68009F68009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F00
        00000000000000000000007070707070707070705F585F5F585F5F585F5F585F
        5F585F5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF90908F6F60506F380F7038009F60009F6800A070000000000000000000
        00000000000000CF780FCF780FCF780F9F68009F68009F68009F6800A06800A0
        7000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090606060
        3F3F3F3F383F5057505F585F5F585F0000000000000000000000000000007070
        707070707070705F585F5F585F5F585F5F585F5F585F5F585F7070709F989FC0
        C7C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7048206F380070400090
        60009F6800A06800000000000000000000000000000000000000CF780FCF780F
        9F68009F68009F68009F6800A06800A07000AF900FD0A03FE0B080FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F00
        00000000000000000000000000000000007070707070705F585F5F585F5F585F
        5F585F5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFA098906F584F6F38007060009F68009F6800AF700F0000000000000000
        00000000000000000000000000CF780FCF780F9F68009F68009F68009F68009F
        7000AF780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F
        3F383F4047405F585F5F585F6067600000000000000000000000000000000000
        000000007070707070705F585F5F585F5F585F5F585F5F585F6067608F888FC0
        C0C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8A07050406F40008F60009F
        68009F6800A0680F000000000000000000CF780F000000000000000000000000
        CF780FCF780FCF780F9F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F5F5F00
        0000000000000000707070000000000000000000000000707070707070707070
        5F585F5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFB0B0AF7F68407040007F40009F68009F6800A0680F0000000000000000
        009F68009F6800000000000000000000000000CF780FCF780F9F6800A06800A0
        7000B09010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060
        3F383F4040405F585F5F585F5F5F5F0000000000000000005F585F5F585F0000
        000000000000000000007070707070705F585F5F585F5F585F7070709F9F9FB0
        B0B0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFC0C0BF80784F70480F9060009F
        68009F6800A070009F68009F68009F68009F68009F68009F6800000000000000
        000000000000CF780FCF780FA06800A07800D0A030FFC060E0D8A0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F5F585F5F
        585F5F585F5F585F5F585F5F585F5F585F000000000000000000000000707070
        7070705F585F5F5F5F8F888FB0B7B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFA0988F7F50109060009F68009F6800A070009F68009F68009F68
        009F68009F68009F68009F6800000000000000000000000000CF780FA06800AF
        9020DFA030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F
        4F484F5050505F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F0000000000000000000000007070705F585F707770909090C0C0C0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC0C0B09F78208048009F
        68009F68009F68009F68009F68009F68009F68009F68009F68009F68009F6800
        000000000000000000CF780F9F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F5F585F5F
        585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F000000000000000000
        7070705F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F68009F68009F68009F68009F68
        009F68009F68009F68009F68009F68009F6800000000000000CF780F9F6800DF
        A03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9097906060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F5F585F0000000000007070705F585F909790BFBFBFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC8BFAF804FA0
        700FA06800A06800A06800A06800A07000AF7000AF700F9F68009F68009F6800
        A06800A06800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F
        585F5F585F5F585F6060606067605F585F5F585F5F585F5F585F5F585F5F585F
        606760909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCFC0B0AF9840A0780FA07000A07000A07000A068
        00A06800A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FF
        D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
        C8B0CFA040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780F
        AF9020D0982FDFA03FFFC860FFD880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90909070707060
        67605F585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790
        BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C89FD0A86FD0A040D08030AF90
        10AF9020CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F
        7F8F888F8F888F909790AFAFAFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD0A0E0C870EFA86FD0A040D0C05FFFA040DFC060FFC86F
        FFD07FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB0B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFC0C7C0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD0
        9FDFC89FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B0B7B0C0C0
        C0BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_CONFIRMAClick
      OnMouseMove = SB_CONFIRMAMouseMove
    end
    object SB_CANCEL: TSpeedButton
      Left = 362
      Top = 4
      Width = 40
      Height = 37
      Hint = 'Cancelar'
      Enabled = False
      Flat = True
      Glyph.Data = {
        36160000424D361600000000000036000000280000003A000000200000000100
        18000000000000160000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
        AFAFAFAFAFAFAFAFAFAFAFB0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09FA09F9F989F9090909F98
        9F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0
        A0B0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F
        989F9090908F888F8080808080807F787F7F78707F78708F807F9088809F988F
        B0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F9090908F8F8F80
        80808080807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF9090908F888F7F787F7070706F68606058506F60
        3F50483F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040
        404047405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F8080807F
        78706F60605F504F50483F60380F60380F6F38006F3800703800703800704000
        70480F7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F8080807F787F6067605057504F
        484F3F383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070
        A0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF9F989F8F888F7F787060605F60403060380F6038008050006F38
        007040009F68007F60009060009060009060007F60009F500FA0701FAFA070FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F
        8F8F8F7F787F6060604047403F383F3030304047403F383F3F383F5F585F4F48
        4F5050505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0A0A08F908F7F787F6F68404F
        483F4F380F6F38007040009F68009F6800A068009F68009F68009F68009F6800
        9F68009F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F
        383F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
        5F585F6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF9FA09F80808070706F50483F5F38006F38009F68009F6800CF780FCF78
        0F9F68009F68009F68009F68009F68009F68009F68009F68009F6800A07000AF
        983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080
        7070704F484F3030303F383F5F585F5F585F7070707070705F585F5F585F5F58
        5F5F585F5F585F5F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9F989F8F80806060504F400F6F
        40009068009F68009F6800000000CF780F9F68009F68009F6800CF780FCF780F
        9F68009F68009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F5F
        585F0000007070705F585F5F585F5F585F7070707070705F585F5F585F5F585F
        5F585F5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF9F989F7F787060401F6F38008F6000A068009F6800000000000000CF78
        0FCF780F9F6800000000000000CF780FCF780F9F68009F68009F68009F6800A0
        7000CF8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F
        4040403F383F5050505F585F5F585F0000000000007070707070705F585F0000
        000000007070707070705F585F5F585F5F585F5F585F5F585F808080BFBFBFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7F706F4F401070380090
        6000A068009F6800000000000000000000CF780FCF780F000000000000000000
        CF780F9F68009F6800A068009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F00
        00000000000000007070707070700000000000000000007070705F585F5F585F
        5F585F5F585F5F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF90908F6F60506F380F7038009F60009F68009F68000000000000000000
        000000000000000000000000000000009F68009F68009F6800A07000A06800A0
        7000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090606060
        3F3F3F3F383F5057505F585F5F585F0000000000000000000000000000000000
        000000000000005F585F5F585F5F585F5F585F5F585F5F585F7070709F989FC0
        C7C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7048206F380070400090
        60009F68009F68009F68000000000000000000000000000000000000009F6800
        9F68009F68009F6800A06800A06800A07000AF900FD0A03FE0B080FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F5F585F5F
        585F0000000000000000000000000000000000005F585F5F585F5F585F5F585F
        5F585F5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFA098906F584F6F38007060009F68009F68009F68009F68009F68000000
        00000000000000000000CF780FCF780F9F68009F68009F68009F68009F68009F
        7000AF780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F
        3F383F4047405F585F5F585F5F585F5F585F5F585F0000000000000000000000
        007070707070705F585F5F585F5F585F5F585F5F585F5F585F6067608F888FC0
        C0C0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8A07050406F40008F60009F
        68009F68009F68009F68009F6800000000000000000000000000000000CF780F
        9F68009F68009F68009F68009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F5F585F5F
        585F5F585F0000000000000000000000000000007070705F585F5F585F5F585F
        5F585F5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFB0B0AF7F68407040007F40009F68009F68009F68009F68009F68000000
        00000000000000000000000000CF780FFF80009F68009F6800A06800A06800A0
        7000B09010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0606060
        3F383F4040405F585F5F585F5F585F5F585F5F585F0000000000000000000000
        000000007070708080805F585F5F585F5F585F5F585F5F585F7070709F9F9FB0
        B0B0FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFC0C0BF80784F70480F9060009F
        68009F68009F68009F6800000000000000000000CF780F000000000000000000
        CF780FCF780F9F68009F6800A06800A07800D0A030FFC060E0D8A0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC0C0C06F6F6F4040405050505F585F5F585F5F585F5F
        585F0000000000000000007070700000000000000000007070707070705F585F
        5F585F5F585F5F5F5F8F888FB0B7B0CFC8CFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFA0988F7F50109060009F68009F68009F68009F68000000000000
        000000009F68009F6800000000000000000000CF780F9F6800A06800A06800AF
        9020DFA030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F
        4F484F5050505F585F5F585F5F585F5F585F0000000000000000005F585F5F58
        5F0000000000000000007070705F585F5F585F5F585F707770909090C0C0C0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC0C0B09F78208048009F
        68009F68009F68000000000000000000009F68009F68009F68009F6800000000
        0000000000009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBFB8BF6F686F4040405F585F5F585F5F585F00
        00000000000000005F585F5F585F5F585F5F585F0000000000000000005F585F
        5F585F5F585F707770AFA8AFC0C7C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F68009F68009F68009F68009F68
        009F68009F68009F68009F68009F68000000009F68009F68009F68009F6800DF
        A03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9097906060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F0000005F585F5F585F5F585F5F585F909790BFBFBFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC8BFAF804FA0
        700F9F68009F68009F68009F68009F68009F68009F68009F68009F68009F6800
        9F68009F68009F6800AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C7C07F7F7F6060605F585F5F585F5F
        585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
        606760909090B0B0B0D0D0D0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCFC0B0AF98409F68009F68009F68009F68009F68
        009F68009F68009F68009F68009F68009F68009F68009F6800BFA030FFC860FF
        D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC0C0C08080805F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F5F585F5F585F5F585F808780BFB8BFD0D0D0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
        C8B0CFA040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780F
        AF9020D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C090909070707060
        67605F585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790
        BFB8BFCFC8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C89FD0A86FD0A040D08030AF90
        10AF9020CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFBFBFBFA0A0A09090908080807070707077707070707F7F
        7F8F888F8F888F909790AFAFAFC0C0C0D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD0A0E0C870EFA86FD0A040D0C05FFFA040DFC060FFC86F
        FFD07FFFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0
        D0D0B0B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFC0C7C0D0D0D0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD0
        9FDFC89FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C7C0C0C0C0B0B7B0C0C0
        C0BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_CANCELClick
      OnMouseMove = SB_CANCELMouseMove
    end
    object Sb_Sair: TSpeedButton
      Left = 322
      Top = 41
      Width = 40
      Height = 37
      Hint = 'Sair'
      Flat = True
      Glyph.Data = {
        36160000424D361600000000000036000000280000003A000000200000000100
        18000000000000160000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8
        AFB0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAF
        A8A09FA09F9F989F9090909F989F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F90
        90909F9F9F9F9F9F9F9F9FA0A0A0B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAFA8A09F989F9090908F888F8080808080807F787F7F78
        707F78708F807F9088809F988FB0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        AFA8AF9F9F9F9090908F8F8F8080808080807F7F7F7F787F7F787F8087808F88
        8F909790B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFAFA8A09090908F888F7F
        787F7070706F68606058506F603F50483F6F401F70401070401F7F483F907040
        A0988FBFB8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9090908F8F8F7F7F7F7070706F686F5F
        585F5F585F4F484F4047404040404047405057506F686F9F989FB0B7B0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFAFA8AF9F989F8080807F78706F60605F504F50483F60380F60380F6F38
        006F380070380070380070400070480F7F68109F7840AFA090FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F
        8080807F787F6067605057504F484F3F383F3F383F3F383F3F383F3F383F3F38
        3F3F383F404040505050707070A0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB0A8AF9F989F8F888F7F787060605F60
        403060380F6038008050006F38007040009060007F6000906000906000906000
        7F60009F500FA0701FAFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F7F787F6060604047403F383F30303040
        47403F383F3F383F5050504F484F5050505050505050504F484F505750606760
        909790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        A0A0A08F908F7F787F6F68404F483F4F380F6F3800A0680F9F68009F6800A068
        009F68009F68009F68009F68009F68009F6800A070009F6800A0781FCFA070FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F
        5F5F5F4047403030303F383F6067606067606067606067606067606067606067
        606067606067606067606067605F585F6F686FA0A0A0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF9FA09F80808070706F50483F5F38006F
        38009F5800704000704000704000704000704000704000704000704000704000
        704000A070009F6800A07000AF983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9F9F9F8080807070704F484F3030303F383F5050503F383F3F
        383F3F383F3F383F3F383F3F383F3F383F3F383F3F383F3F383F6067605F585F
        5F585F808080B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        9F989F8F80806060504F400F6F40009068009F6800704000000080000080CCFF
        FFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF704000A070009F68009F7000AF700FD0
        A040DFC89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F8087805F585F
        3037303F383F5F5F5F5F5F5F3F383F000046000046B1B1B1B1B1B1B1B1B1B1B1
        B1B1B1B1B1B1B13F383F6067605F585F5F585F606760909090FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF9F989F7F787060401F6F38008F6000A0
        6800A06800704000000080000080000080CCFFFFCCFFFFCCFFFFCCFFFFCCFFFF
        704000A070009F68009F6800A07000CF8030FFC870FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9F9F9F7F787F4040403F383F5050505F585F5F585F3F383F00
        0046000046000046B1B1B1B1B1B1B1B1B1B1B1B1B1B1B13F383F6067605F585F
        5F585F5F585F808080BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        90908F7F706F4F4010703800906000A06800A0680F7040000000800000800000
        80704000CCFFFFCCFFFFCCFFFFCCFFFF704000A07000A068009F6800A07000B0
        902FDFA84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090707770303730
        3F383F5050505F585F5F585F3F383F0000460000460000463F383FB1B1B1B1B1
        B1B1B1B1B1B1B13F383F6067605F585F5F585F5F585F7F787F9F9F9FFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF90908F6F60506F380F7038009F60009F
        6800A0680F704000000080000080000080704000CCFFFFCCFFFFCCFFFFCCFFFF
        704000A07000A07000A06800A07000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9090906060603F3F3F3F383F5057505F585F5F585F3F383F00
        00460000460000463F383FB1B1B1B1B1B1B1B1B1B1B1B13F383F6067605F585F
        5F585F5F585F7070709F989FC0C7C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        90908F7048206F38007040009060009F6800A0680F7040000000800000800000
        80704000CCFFFFCCFFFFCCFFFFCCFFFF704000A07000A06800A06800A07000AF
        900FD0A03FE0B080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090904F484F3F383F
        3F383F5050505F585F5F585F3F383F0000460000460000463F383FB1B1B1B1B1
        B1B1B1B1B1B1B13F383F6067605F585F5F585F5F585F6F6F6F909090B0B0B0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFA098906F584F6F38007060009F68009F
        6800A0680F704000000080000080000080704000CCFFFFCCFFFFCCFFFFCCFFFF
        704000A070009F68009F68009F7000AF780FD0A030E0D090FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9F989F5F5F5F3F383F4047405F585F5F585F5F5F5F3F383F00
        00460000460000463F383FB1B1B1B1B1B1B1B1B1B1B1B13F383F6067605F585F
        5F585F5F585F6067608F888FC0C0C0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        AFA8A07050406F40008F60009F68009F6800A0680F7040000000800000800000
        80704000CCFFFFCCFFFFCCFFFFCCFFFF704000A070009F68009F68009F7000AF
        7820EFA03FE0D07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF5057503F383F
        5050505F585F5F585F5F5F5F3F383F0000460000460000463F383FB1B1B1B1B1
        B1B1B1B1B1B1B13F383F6067605F585F5F585F5F585F6F6F6F9F989FBFB8BFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB0B0AF7F68407040007F40009F68009F
        6800A0680F704000000080000080000080CCFFFF704000CCFFFFCCFFFFCCFFFF
        704000A07000A06800A06800A07000B09010DFA05FE0B880FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB0B0B06060603F383F4040405F585F5F585F5F5F5F3F383F00
        0046000046000046B1B1B13F383FB1B1B1B1B1B1B1B1B13F383F6067605F585F
        5F585F5F585F7070709F9F9FB0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF80784F70480F9060009F68009F6800A0680F7040000000800000800000
        80704000CCFFFFCCFFFFCCFFFFCCFFFF704000A070009F6800A06800A07800D0
        A030FFC060E0D8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F404040
        5050505F585F5F585F5F585F3F383F0000460000460000463F383FB1B1B1B1B1
        B1B1B1B1B1B1B13F383F6067605F585F5F585F5F5F5F8F888FB0B7B0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0988F7F50109060009F68009F
        6800A0680F704000000080000080000080704000CCFFFFCCFFFFCCFFFFCCFFFF
        704000A07000A06800A06800AF9020DFA030FFD070FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9F989F4F484F5050505F585F5F585F5F585F3F383F00
        00460000460000463F383FB1B1B1B1B1B1B1B1B1B1B1B13F383F6067605F585F
        5F585F707770909090C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF9F78208048009F68009F6800A068007040000000800000800000
        80704000CCFFFFCCFFFFCCFFFFCCFFFF704000A070009F68009F6800CF8010E0
        C05FFFD87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F686F
        4040405F585F5F585F5F585F3F383F0000460000460000463F383FB1B1B1B1B1
        B1B1B1B1B1B1B13F383F6067605F585F5F585F707770AFA8AFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F
        6800A06800704000000080000080000080704000CCFFFFCCFFFFCCFFFFCCFFFF
        704000A070009F68009F6800DFA03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF9097906060605F585F5F585F5F585F3F383F00
        00460000460000463F383FB1B1B1B1B1B1B1B1B1B1B1B13F383F6067605F585F
        5F585F909790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAF804FA0700FA06800A068007040007040007040007040
        007040007040007040007040007040007040009F6800AF780FD0A03FE0C86FFF
        D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7F7F7F6060605F585F5F585F3F383F3F383F3F383F3F383F3F383F3F383F3F38
        3F3F383F3F383F3F383F5F585F606760909090B0B0B0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9840A0
        780FA07000A07000A07000A07000A07000A07000A07000A07000A07000A07000
        A070009F6800BFA030FFC860FFD89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080806060605F585F5F585F5F
        585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F606060707070808780
        BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFA040AF9010AF700FA07000A07000A070
        00A07000A07000A07000AF780FAF9020D0982FDFA03FFFC860FFD880FFE0AFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9090907070706067605F585F5F585F5F585F5F585F5F585F5F58
        5F6067607077708F888F909790BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD0A86FD0A040D08030AF9010AF9020CF780FB0982FD0982FD0A030DFA83F
        E0C860FFD070FFD89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A090909080
        80807070707077707070707F7F7F8F888F8F888F909790AFAFAFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0C870EFA86FD0A0
        40D0C05FFFA040DFC060FFC86FFFD07FFFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0AFAFAF909090A0A7A0A0A0A0AFA8
        AFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC89FDFB090DFC89FDFB09FFFD0AFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = Sb_SairClick
      OnMouseMove = Sb_SairMouseMove
    end
    object SB_EDIT: TSpeedButton
      Left = 205
      Top = 4
      Width = 39
      Height = 37
      Hint = 'Editar'
      Enabled = False
      Flat = True
      Glyph.Data = {
        36160000424D361600000000000036000000280000003A000000200000000100
        18000000000000160000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A09F989FA0A0A09F98
        9F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F
        989F9090908F888F8080808080807F787F7F78707F78708F807F9088809F988F
        B0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA0A0A09F9F9F9F9F9F9F
        9F9F9090909090909090909F989FAFA8AFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF9090908F888F7F787F7070706F68606058506F60
        3F50483F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        AFAFAF9F9F9F8F8F8F8080808087807F787F7077706060604F484F5F5F5F5057
        506060606F6F6F9F989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F8080807F
        78706F60605F504F50483F60380F60380F6F38006F3800703800703800704000
        70480F7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F9F9F8F8F8F7F7F7F7070705F585F40
        40403037303F3F3F3F383F3F383F3F383F3F383F4040404F484F6F686F909790
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF9F989F8F888F7F787060605F60403060380F6038006F38006F38
        007040008F60007F60009060009060009060007F60009F500FA0701FAFA070FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF909090
        8080807F787F5F5F5F4F484F3037303F383F3F383F3F383F3F383F4047405050
        504040405050505050504040406060607F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0A0A08F908F7F787F6F68404F
        483F4F380F6F38007040007F600F7F68009F68009F68009F68009F68009F6800
        9F68009F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFAFAFAF9F9F9F8F8F8F7F787F6060604047403030303F383F50
        50505050505050505050505F585F5F585F5F585F5F585F5F585F5F585F5F585F
        606060808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF9FA09F80808070706F50483F5F38006F38009F68009F68009F68009F68
        009F68009F68009F68009F68009F68009F68009F68009F68009F68009F6800AF
        983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9090907F7F7F
        6067604047403030303F383F4F484F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F5F585F5F585F5F585F5F585F606060909090FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9F989F8F80806060504F400F6F
        40008F40009F6800A0700FAF700FAF700FAF700FAF700FAF7010AF7010AF7010
        AF7010AF700FA070009F68009F6800AF700FD0A040DFC89FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9F9F9F8F8F8F7070705057503F383F3F383F4047405F585F60
        60606067606067606067606067606067606067606067606067606067605F585F
        5F585F5F585F707070A0A0A0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        B0B0B09F989F7F787060401F6F38008F60009F6820A0882FBF882FBF884FBF88
        4FBF8830BF884FBF8850BF884FBF8850BF884FBF804FBF80209F68009F6800A0
        7000CF8030F0C870FFFFFFFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F8080806F686F
        4F484F3030303F383F6060607070707F7F7F8087808087807F7F7F8087808F88
        8F8087808F888F8087808087807077705F585F5F585F606760909090FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB0B0B090908F7F706F4F401070380090
        6000BF88409F70306F583F6F58305F50405F504F6050406F58305F50406F5830
        6050406F403060502FBF68009F6800A07000B0902FDFA84FFFFFFFFFFFFFFFFF
        FFFFFFFFAFAFAF9090908080805F585F3F383F3F383F4F4F4F8080806F686F50
        57505050505050505057505050505050505050505050505050504F484F4F484F
        6060605F585F5F585F808080B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        B0B0B090908F6F60506F380F703800906000C0902FBF883030281010100F0F08
        0F0F080F0F080F0F080F0F10000F080F10080F1F180F7040009F80009F6800A0
        7000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFAFAFAF9F9F9F7F7F7F5F585F
        3F383F3F383F4F4F4F8080807F7F7F2020201010100F0F0F0F0F0F0F0F0F0F0F
        0F0F080F0F0F0F0F0F0F1017103F383F6060605F585F5F585F707070AFAFAFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB0B0B090908F7048206F380070400090
        6000A0780FBF884080602F100800000000000000000000000000000000000000
        0F000030280F907800BF68009F6800A07000AF900FD0A03FE0B080FFFFFFFFFF
        FFFFFFFFAFAFAF9F9F9F7F787F4F484F3F383F3F383F5F585F6060608080805F
        585F0F080F0000000000000000000000000000000000000007002020205F585F
        6060605F585F5F585F707770909090C0C0C0FFFFFFFFFFFF0000FFFFFFFFFFFF
        B0B0B0A098906F584F6F38007060009F6800A07000AF902FB0882F3028100008
        000000000000000000000000000000001010007F5800BF6800A070009F68009F
        7000AF780FD0A030E0D090FFFFFFFFFFFFFFFFFFB0B0B09F9F9F7F787F404740
        3F383F5050505F585F5F585F7F787F7F787F2020200000000000000000000000
        000000000000000F080F4F484F6060605F585F5F585F5F585F707070A0A7A0B0
        B7B0FFFFFFFFFFFF0000FFFFFFFFFFFFB0B0AFAFA8A07050406F40008F60009F
        68009F7000A0700FBF884080782F101000000000000000000000000000000000
        2F2000907800A07000A068009F68009F7000AF7820EFA03FE0D07FFFFFFFFFFF
        FFFFFFFFBFBFBFA0A0A08087804040403F383F4F484F5F585F5F585F60606080
        80806060600F080F0000000000000000000000000000001F181F5F585F5F585F
        5F585F5F585F5F585F7F7F7F9F989FC0C0C0FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFB0B0AF7F68407040007F40009F68009F6800A07000AF780FBF88404F40
        0F0F08000000000000000000001010007F5800B06800A070009F68009F6800A0
        7000B09010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFB0B0B08F888F404740
        3F383F5050505F585F5F585F5F585F6067608080803037300F080F0000000000
        000000000F080F4F484F5F5F5F5F585F5F585F5F585F5F585F8F888FAFA8AFBF
        B8BFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFB0B0AF80784F70480F9060009F
        68009F68009F6800A07000C08820AF80202018000000000000000F0800403000
        906000A06800A068009F68009F6800A07800D0A030F0C060E0D8A0FFFFFFFFFF
        FFFFFFFFFFFFFFBFBFBF9097905057503F383F5050505F585F5F585F5F585F5F
        585F7F787F7070701010100000000000000F080F2027205050505F585F5F585F
        5F585F5F585F6067608F888FBFBFBFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFA0988F7F50109060009F68009F68009F6800A07000AF780FBF88
        2F6058201008000000001F1000A058009F68009F68009F68009F68009F6800AF
        9020DFA030FFD070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B06F686F
        4040405050505F585F5F585F5F585F5F585F6067607F7F7F4F484F0F080F0000
        001010105050505F585F5F585F5F585F5F585F5F585F707770909790C0C7C0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F
        68009F68009F68009F6800A07000A09020AF804020200F101000603800907800
        A070009F68009F68009F68009F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC0C0C09F989F5050504F484F5F585F5F585F5F585F5F
        585F5F585F7070707F787F1F181F0F080F3030305F585F5F585F5F585F5F585F
        5F585F6060608F888FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F68009F68009F68009F7000A078
        0FBF882F8F602F40280F8F60009F68009F70009F68009F68009F68009F6800DF
        A03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B7B0
        7070705057505F585F5F585F5F585F5F585F5F585F6060607F7F7F5F5F5F2F28
        2F5050505F585F5F585F5F585F5F585F5F585F707070909790C0C0C0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0
        700F9F68009F68009F68009F6800A07000A0880FBF88409F680FB06000A06800
        9F68009F6800A07000AF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A06067605F585F5F585F5F585F5F
        585F5F585F5F585F6F686F8080805F5F5F5F585F5F585F5F585F5F585F5F585F
        606760808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9840A070009F70009F68009F68009F70
        00A07000A0701FA07000A06800A07000A07000A07000AF7820D0A03FFFC860FF
        D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9097906F686F5F585F5F585F5F585F5F585F5F585F5F585F6067605F58
        5F5F585F5F585F5F585F5F585F6F6F6F909090BFB8BFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCFA040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780F
        AF9020D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A08080806067605F
        585F5F585F5F585F5F585F5F585F5F585F5F585F5F5F5F707770707770909790
        B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF90
        10AF9020CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB0B0B09090908080807F787F7070706F6F6F6067606F6F
        6F7070708F888F909090AFA8AFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FF0A040DFC060FFC86F
        FFD07FFFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF
        B8BF9F9F9F9F989F9090908F888F9F989F9F9F9FB0B0B0C0C0C0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFDFC89FDFB090DFC89FDFB09FF0D0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0C0C0C0BFB8
        BFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_EDITClick
      OnMouseMove = SB_EDITMouseMove
    end
    object SB_ATUAL: TSpeedButton
      Left = 283
      Top = 4
      Width = 39
      Height = 37
      Hint = 'Atualizar'
      Enabled = False
      Flat = True
      Glyph.Data = {
        36160000424D361600000000000036000000280000003A000000200000000100
        18000000000000160000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFB0A8AFAFA8AFAFA8AFB0A8AFB0B8B0BFC0BFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFAF
        AFAFAFAFAFAFAFAFB0B0B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A8AFAFA8A09FA09F9F989F9090909F98
        9F9F989F9F989FA0A0A0B0B8B0BFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFAFA8AF9F9F9F9F9F9F9090909F9F9F9F9F9F9F9F9FA0A0A0B0B0
        B0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8A09F
        989F9090908F888F8080808080807F787F7F78707F78708F807F9088809F988F
        B0B0AFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F9090908F8F8F80808080
        80807F7F7F7F787F7F787F8087808F888F909790B0B0B0C0C0C0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAFA8A09090908F888F7F787F7070706F68606058506F60
        3F50483F6F401F70401070401F7F483F907040A0988FBFB8AFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9090908F8F8F7F7F7F7070706F686F5F585F5F585F4F484F4047404040404047
        405057506F686F9F989FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFAFA8AF9F989F8080807F
        78706F60605F504F50483F60380F60380F6F38006F3800703800703800704000
        70480F7F68109F7840AFA090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F8080807F787F6067605057504F484F3F
        383F3F383F3F383F3F383F3F383F3F383F3F383F404040505050707070A0A0A0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFB0A8AF9F989F8F888F7F787060605F60403060380F6038008050006F38
        007040009060007F60009060009060009060007F60009F500FA0701FAFA070FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F8F8F8F
        7F787F6060604047403F383F3030304047403F383F3F383F5050504F484F5050
        505050505050504F484F505750606760909790FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA0A0A08F908F7F787F6F68404F
        483F4F380F6F38007040009F68009F6800A068009F68009F68009F68009F6800
        9F68009F68009F68009F6800A0781FCFA070FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA0A0A08F8F8F7F7F7F5F5F5F4047403030303F383F3F383F5F
        585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F
        6F686FA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF9FA09F80808070706F50483F5F38006F38009F5800A06810B078209F68
        009F6800CF780FCF780FCF780FCF780F9F68009F68009F68009F6800A07000AF
        983FD0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F808080707070
        4F484F3030303F383F5050505F5F5F6F6F6F5F585F5F585F7070707070707070
        707070705F585F5F585F5F585F5F585F5F585F808080B0B0B0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9F989F8F80806060504F400F6F
        40009068009F6800A07810A068009F6800CF780F000000000000000000CF780F
        9F6800A068009F68009F68009F7000AF700FD0A040DFC89FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9F9F9F8087805F585F3037303F383F5050505F585F6060605F
        585F5F585F7070700000000000000000007070705F585F5F585F5F585F5F585F
        5F585F606760909090C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF9F989F7F787060401F6F38008F6000A06800A06800A068009F6800CF78
        0F000000000000000000A06800A06800A06800A06800A068009F6800A07010A0
        7000CF8030FFC870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F787F404040
        3F383F5050505F585F5F585F5F585F5F585F7070700000000000000000005F58
        5F5F585F5F585F5F585F5F585F5F585F6060605F585F808080BFBFBFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7F706F4F401070380090
        6000A06800A068009F6800CF780F000000000000000000A06800A06800A06800
        A06800A06800A06800A07010A07010A07000B0902FDFA84FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9090907077703037303F383F5050505F585F5F585F5F585F70
        70700000000000000000005F585F5F585F5F585F5F585F5F585F5F585F606060
        6060605F585F7F787F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF90908F6F60506F380F7038009F60009F68009F6800CF780F0000000000
        00000000A06800A06800A06800A06800A06800A06800A06800A07000A07010A0
        7000CF780FD0A05FE0D09FFFFFFFFFFFFFFFFFFFFFFFFF9090906060603F3F3F
        3F383F5057505F585F5F585F7070700000000000000000005F585F5F585F5F58
        5F5F585F5F585F5F585F5F585F5F585F6060605F585F7070709F989FC0C7C0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF90908F7048206F380070400090
        60009F6800CF780F000000000000000000A06800A06800CF780FCF780FCF780F
        CF780FCF780FCF780FCF780FA06800A07000AF900FD0A03FE0B080FFFFFFFFFF
        FFFFFFFFFFFFFF9090904F484F3F383F3F383F5050505F585F70707000000000
        00000000005F585F5F585F707070707070707070707070707070707070707070
        5F585F5F585F6F6F6F909090B0B0B0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFA098906F584F6F38007060009F68009F6800CF780F000000000000A068
        00A06800A06800000000000000000000000000000000000000CF780F9F68009F
        7000AF780FD0A030E0D090FFFFFFFFFFFFFFFFFFFFFFFF9F989F5F5F5F3F383F
        4047405F585F5F585F7070700000000000005F585F5F585F5F585F0000000000
        000000000000000000000000007070705F585F5F585F6067608F888FC0C0C0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFA8A07050406F40008F60009F
        68009F6800CF780F000000000000A06800A06800A06800A06800000000000000
        000000000000000000CF780F9F68009F7000AF7820EFA03FE0D07FFFFFFFFFFF
        FFFFFFFFFFFFFFAFA8AF5057503F383F5050505F585F5F585F70707000000000
        00005F585F5F585F5F585F5F585F000000000000000000000000000000707070
        5F585F5F585F6F6F6F9F989FBFB8BFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF7F68407040007F40009F68009F6800CF780F000000000000A068
        00A06800A06800A06800A06800000000000000000000000000CF780FA06800A0
        7000B09010DFA05FE0B880FFFFFFFFFFFFFFFFFFFFFFFFB0B0B06060603F383F
        4040405F585F5F585F7070700000000000005F585F5F585F5F585F5F585F5F58
        5F0000000000000000000000007070705F585F5F585F7070709F9F9FB0B0B0FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF80784F70480F9060009F
        68009F6800CF780F000000000000000000A06800A06800A06800000000000000
        000000000000000000CF780FA06800A07800D0A030FFC060E0D8A0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF6F6F6F4040405050505F585F5F585F70707000000000
        00000000005F585F5F585F5F585F000000000000000000000000000000707070
        5F585F5F5F5F8F888FB0B7B0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFA0988F7F50109060009F68009F68009F6800A068000000000000
        00000000000000000000000000000000A06800000000000000CF780FA06800AF
        9020DFA030FFD070EFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F989F4F484F
        5050505F585F5F585F5F585F5F585F0000000000000000000000000000000000
        000000005F585F0000000000007070705F585F707770909090C0C0C0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F78208048009F
        68009F6800A06800A06800A06800000000000000000000000000000000A06800
        A06800A06800000000CF780F9F6800CF8010E0C05FFFD87FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF6F686F4040405F585F5F585F5F585F5F585F5F
        585F0000000000000000000000000000005F585F5F585F5F585F000000707070
        5F585F707770AFA8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAFA06F9F70109F68009F6800A06800A06800A06800A068
        00A06800A06800A06800A06800A06800A06800A06800A06800A068009F6800DF
        A03FFFC86FFFD8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909790
        6060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F5F585F5F585F5F585F5F585F909790BFBFBFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF804FA0
        700FA06800A06800A06800A06800A07000AF7000AF700FA07000AF700FA06800
        A06800A06800CF780FCF780FD0A03FE0C86FFFD89FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F6060605F585F5F585F5F585F5F
        585F5F585F6060606067605F585F6067605F585F5F585F5F585F707070707070
        909090B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9840A0780FA07000A07000A07000A068
        00A06800A068009F68009F68009F7000A07000AF7000CF780FBFA030FFC860FF
        D89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8080806060605F585F5F585F5F585F5F585F5F585F5F585F5F585F5F58
        5F5F585F5F585F606060707070808780BFB8BFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCFA040AF9010AF700FA07000A07000A07000A07000A07000A07000AF780F
        AF9020D0982FDFA03FFFC860FFD880FFE0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090907070706067605F
        585F5F585F5F585F5F585F5F585F5F585F6067607077708F888F909790BFB8BF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A86FD0A040D08030AF90
        10AF9020CF780FB0982FD0982FD0A030DFA83FE0C860FFD070FFD89FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA0A0A09090908080807070707077707070707F7F7F8F88
        8F8F888F909790AFAFAFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE0C870EFA86FD0A040D0C05FFFA040DFC060FFC86F
        FFD07FFFD8A0FFD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0
        B0B0AFAFAF909090A0A7A0A0A0A0AFA8AFBFBFBFC0C7C0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD0
        9FDFC89FDFB090DFC89FDFB09FFFD0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B0B7B0C0C0C0BFB8
        BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_ATUALClick
      OnMouseMove = SB_ATUALMouseMove
    end
    object btn_RelAnalitico: TSpeedButton
      Left = 410
      Top = 4
      Width = 89
      Height = 37
      Hint = 'Relat'#243'rio Analitico'
      Caption = 'Relat'#243'rio Analitico'
      Enabled = False
      Flat = True
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D8000000120B0000120B00001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDD000000DDD00000000000DDDD000000DD0777777777070DDD000000D000
        000000000070DD000000D0777777FFF77000DD000000D077777799977070DD00
        0000D0000000000000770D000000D0777777777707070D000000DD0000000000
        70700D000000DDD0FFFFFFFF07070D000000DDDD0FCCCCCF0000DD000000DDDD
        0FFFFFFFF0DDDD000000DDDDD0FCCCCCF0DDDD000000DDDDD0FFFFFFFF0DDD00
        0000DDDDDD000000000DDD000000DDDDDDDDDDDDDDDDDD000000DDDDDDDDDDDD
        DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_RelAnaliticoClick
    end
    object btn_Boletim: TSpeedButton
      Left = 499
      Top = 4
      Width = 89
      Height = 37
      Hint = 'Boletim Sanit'#225'rio'
      Caption = 'Boletim Sanit'#225'rio'
      Enabled = False
      Flat = True
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D8000000120B0000120B00001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDD000000DDD00000000000DDDD000000DD0777777777070DDD000000D000
        000000000070DD000000D0777777FFF77000DD000000D077777799977070DD00
        0000D0000000000000770D000000D0777777777707070D000000DD0000000000
        70700D000000DDD0FFFFFFFF07070D000000DDDD0FCCCCCF0000DD000000DDDD
        0FFFFFFFF0DDDD000000DDDDD0FCCCCCF0DDDD000000DDDDD0FFFFFFFF0DDD00
        0000DDDDDD000000000DDD000000DDDDDDDDDDDDDDDDDD000000DDDDDDDDDDDD
        DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_BoletimClick
    end
    object btn_RacaAves: TSpeedButton
      Left = 588
      Top = 4
      Width = 89
      Height = 37
      Hint = 'Ra'#231#227'o e Aves'
      Caption = 'Ra'#231#227'o e Aves'
      Enabled = False
      Flat = True
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D8000000120B0000120B00001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDD000000DDD00000000000DDDD000000DD0777777777070DDD000000D000
        000000000070DD000000D0777777FFF77000DD000000D077777799977070DD00
        0000D0000000000000770D000000D0777777777707070D000000DD0000000000
        70700D000000DDD0FFFFFFFF07070D000000DDDD0FCCCCCF0000DD000000DDDD
        0FFFFFFFF0DDDD000000DDDDD0FCCCCCF0DDDD000000DDDDD0FFFFFFFF0DDD00
        0000DDDDDD000000000DDD000000DDDDDDDDDDDDDDDDDD000000DDDDDDDDDDDD
        DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_RacaAvesClick
    end
    object ToolButton1: TToolButton
      Left = 158
      Top = 4
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsSeparator
      OnMouseMove = ToolButton1MouseMove
    end
    object ToolButton2: TToolButton
      Left = 402
      Top = 4
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
      OnMouseMove = ToolButton2MouseMove
    end
    object ToolButton3: TToolButton
      Left = 1
      Top = 41
      Width = 321
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
      OnMouseMove = ToolButton3MouseMove
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 545
    Width = 965
    Height = 17
    Align = alBottom
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    ExplicitTop = 584
    ExplicitWidth = 981
  end
  object Qr: TOraQuery
    KeyFields = 'ID_LOTE'
    KeySequence = 'SMART.SEQ_ID_LOTE'
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_ALOJAMENTO'
      
        '  (EMPRESA, FILIAL, ID_LOTE, DATA_ALOJAMENTO, ID_USUARIO, ID_INT' +
        'EGRADO,  FL_STATUS, DT_FECHAMENTO, SOBRA_RACAO, MORTALIDADE,  PR' +
        'ECO_AVE_FINAL, VL_PAGTO_FINAL, MORT_PRIM_SEMANA , '
      'ID_NUCLEO, DATA_INCLOTE, QTD_ALOJ  )'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :DATA_ALOJAMENTO, :ID_USUARIO, :' +
        'ID_INTEGRADO,  :FL_STATUS, :DT_FECHAMENTO, :SOBRA_RACAO, :MORTAL' +
        'IDADE, :PRECO_AVE_FINAL, :VL_PAGTO_FINAL, :MORT_PRIM_SEMANA, '
      ' :ID_NUCLEO, :DATA_INCLOTE,  :QTD_ALOJ )')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_ALOJAMENTO'
      'WHERE'
      '  ID_LOTE = :ID_LOTE')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_ALOJAMENTO'
      'SET'
      '  DATA_ALOJAMENTO = :DATA_ALOJAMENTO,'
      '  ID_USUARIO = :ID_USUARIO ,'
      ' ID_INTEGRADO = :ID_INTEGRADO,'
      '  FL_STATUS    = :FL_STATUS , '
      ' DT_FECHAMENTO = :DT_FECHAMENTO,'
      ' SOBRA_RACAO = :SOBRA_RACAO , '
      ' MORTALIDADE  = :MORTALIDADE ,'
      '  PER_MORTALIDADE = :PER_MORTALIDADE  ,'
      '   CONV_ALIMENTAR  = :CONV_ALIMENTAR ,'
      '   GANHO_PESO_DIA  = :GANHO_PESO_DIA ,            '
      '   PESO_MEDIO    = :PESO_MEDIO   ,'
      '   IEP    = :IEP          ,'
      '   PRECO_AVE   = :PRECO_AVE     ,'
      '   DATA_PAGTO  = :DATA_PAGTO     ,'
      '   VL_PAGTO  = :VL_PAGTO ,'
      '  AVES_ALOJ = :AVES_ALOJ ,'
      '  AVES_ABAT = :AVES_ABAT ,'
      '  TOT_KG      = :TOT_KG ,'
      '  IDADE        = :IDADE ,'
      '  TOTAL_RACAO = :TOTAL_RACAO,'
      '  PRECO_AVE_FINAL = :PRECO_AVE_FINAL,'
      ' VL_PAGTO_FINAL  = :VL_PAGTO_FINAL,'
      ' MORT_PRIM_SEMANA = :MORT_PRIM_SEMANA,'
      'ID_NUCLEO = :ID_NUCLEO,'
      'DATA_INCLOTE = :DATA_INCLOTE, '
      'QTD_ALOJ = :QTD_ALOJ'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_ALOJAMENTO'
      'WHERE'
      '  ID_LOTE = :ID_LOTE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  A.ID_LOTE = :ID_LOTE')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select Distinct A.EMPRESA , A.FILIAL, A.ID_LOTE, A.DATA_ALOJAMEN' +
        'TO, A.ID_USUARIO,'
      
        '           A.ID_INTEGRADO ,F.ID_FORNECEDOR, F.NM_FORNECEDOR , U.' +
        'NOME_USUARIO,'
      
        '           A.FL_STATUS, A.DT_FECHAMENTO , F.NR_CNPJFORN , A.SOBR' +
        'A_RACAO ,  A.MORTALIDADE,'
      
        '           A.PER_MORTALIDADE   , A.CONV_ALIMENTAR   , A.GANHO_PE' +
        'SO_DIA,  A.PESO_MEDIO       ,'
      
        '           A.IEP, A.PRECO_AVE, A.DATA_PAGTO, A.VL_PAGTO,  A.AVES' +
        '_ALOJ ,'
      
        '          A.AVES_ABAT, A.TOT_KG , A.IDADE ,  A.TOTAL_RACAO,  A.P' +
        'RECO_AVE_FINAL,'
      '         A.VL_PAGTO_FINAL, A.MORT_PRIM_SEMANA,'
      '       CASE WHEN A.FL_STATUS = '#39'AB'#39' THEN '#39'ABERTO'#39' '
      '                 WHEN A.FL_STATUS =  '#39'PR'#39' THEN '#39'PREVIS'#195'O'#39'  '
      '                WHEN A.FL_STATUS = '#39'FE'#39' THEN '#39'FECHADO'#39' '
      '                WHEN A.FL_STATUS = '#39'CN'#39' THEN '#39'CANCELADO'#39' '
      '           END STATUS, A.ID_NUCLEO, A.DATA_INCLOTE, A.QTD_ALOJ,'
      
        '      CASE WHEN A.FL_STATUS in ( '#39'AB'#39') THEN  TRUNC ( TRUNC(sysda' +
        'te) - TRUNC (A.DATA_ALOJAMENTO)) '
      '              ELSE A.IDADE END IDADEK , NG.DESC_NUCLEO'
      '  From INTEGRADO_ALOJAMENTO A'
      '  Left Join INTEGRADO I'
      '    On A.ID_INTEGRADO = I.ID_INTEGRADO'
      '  Left Join FORNECEDOR F'
      '    On I.ID_FORNECEDOR = F.ID_FORNECEDOR'
      '  Left Join Sct_Usuario U'
      '    On A.ID_USUARIO = U.ID_USUARIO'
      '  Left join NUCLEO_GALPAO NG'
      '    On A.ID_NUCLEO = NG.ID_NUCLEO'
      ' left Join Integrado_Alojamento_Fornec AF'
      '   On A.ID_LOTE = AF.ID_LOTE'
      ' ')
    FetchAll = True
    CachedUpdates = True
    IndexFieldNames = 'ID_LOTE'
    AfterOpen = QrAfterOpen
    BeforePost = QrBeforePost
    AfterCancel = Qr_AlojamentoFornecAfterCancel
    AfterScroll = QrAfterScroll
    Left = 432
    Top = 8
    object QrEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object QrFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object QrID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
    end
    object QrDATA_ALOJAMENTO: TDateTimeField
      FieldName = 'DATA_ALOJAMENTO'
    end
    object QrID_USUARIO: TFloatField
      FieldName = 'ID_USUARIO'
    end
    object QrID_INTEGRADO: TFloatField
      FieldName = 'ID_INTEGRADO'
      Required = True
    end
    object QrNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Size = 40
    end
    object QrID_FORNECEDOR: TFloatField
      FieldName = 'ID_FORNECEDOR'
    end
    object QrNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      Size = 40
    end
    object QrFL_STATUS: TStringField
      FieldName = 'FL_STATUS'
      Size = 2
    end
    object QrDT_FECHAMENTO: TDateTimeField
      FieldName = 'DT_FECHAMENTO'
    end
    object QrNR_CNPJFORN: TStringField
      FieldName = 'NR_CNPJFORN'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object QrSOBRA_RACAO: TFloatField
      FieldName = 'SOBRA_RACAO'
    end
    object QrMORTALIDADE: TFloatField
      FieldName = 'MORTALIDADE'
    end
    object QrPER_MORTALIDADE: TFloatField
      FieldName = 'PER_MORTALIDADE'
    end
    object QrCONV_ALIMENTAR: TFloatField
      FieldName = 'CONV_ALIMENTAR'
    end
    object QrGANHO_PESO_DIA: TFloatField
      FieldName = 'GANHO_PESO_DIA'
    end
    object QrPESO_MEDIO: TFloatField
      FieldName = 'PESO_MEDIO'
    end
    object QrIEP: TFloatField
      FieldName = 'IEP'
    end
    object QrPRECO_AVE: TFloatField
      FieldName = 'PRECO_AVE'
    end
    object QrDATA_PAGTO: TDateTimeField
      FieldName = 'DATA_PAGTO'
    end
    object QrVL_PAGTO: TFloatField
      FieldName = 'VL_PAGTO'
    end
    object QrAVES_ALOJ: TFloatField
      FieldName = 'AVES_ALOJ'
    end
    object QrAVES_ABAT: TFloatField
      FieldName = 'AVES_ABAT'
    end
    object QrTOT_KG: TFloatField
      FieldName = 'TOT_KG'
    end
    object QrIDADE: TFloatField
      FieldName = 'IDADE'
    end
    object QrTOTAL_RACAO: TFloatField
      FieldName = 'TOTAL_RACAO'
    end
    object QrPRECO_AVE_FINAL: TFloatField
      FieldName = 'PRECO_AVE_FINAL'
    end
    object QrVL_PAGTO_FINAL: TFloatField
      FieldName = 'VL_PAGTO_FINAL'
    end
    object QrMORT_PRIM_SEMANA: TFloatField
      FieldName = 'MORT_PRIM_SEMANA'
    end
    object QrSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 9
    end
    object QrID_NUCLEO: TFloatField
      FieldName = 'ID_NUCLEO'
    end
    object QrDATA_INCLOTE: TDateTimeField
      FieldName = 'DATA_INCLOTE'
    end
    object QrQTD_ALOJ: TFloatField
      FieldName = 'QTD_ALOJ'
    end
    object QrIDADEK: TFloatField
      FieldName = 'IDADEK'
    end
    object QrDESC_NUCLEO: TStringField
      FieldName = 'DESC_NUCLEO'
      Size = 30
    end
  end
  object Ds: TOraDataSource
    DataSet = Qr
    OnStateChange = DsStateChange
    Left = 464
    Top = 6
  end
  object Qr_Integrado: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_ALOJAMENTO'
      
        '  (EMPRESA, FILIAL, ID_LOTE, DATA_ALOJAMENTO, ID_USUARIO, ID_INT' +
        'EGRADO)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :DATA_ALOJAMENTO, :ID_USUARIO, :' +
        'ID_INTEGRADO)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_ALOJAMENTO'
      'WHERE'
      '  ID_LOTE = :ID_LOTE')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_ALOJAMENTO'
      'SET'
      '  DATA_ALOJAMENTO = :DATA_ALOJAMENTO,'
      '  ID_USUARIO = :ID_USUARIO,'
      '  ID_INTEGRADO = :ID_INTEGRADO'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_ALOJAMENTO'
      'WHERE'
      '  ID_LOTE = :ID_LOTE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  A.ID_LOTE = :ID_LOTE')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select I.ID_INTEGRADO , F.NM_FORNECEDOR , F.NR_CNPJFORN, I.FL_AT' +
        'IVO'
      '  From INTEGRADO I '
      ' Inner Join FORNECEDOR F  '
      '    On I.ID_FORNECEDOR = F.ID_FORNECEDOR'
      'Order BY F.NM_FORNECEDOR')
    FetchAll = True
    Left = 432
    Top = 40
    object Qr_IntegradoID_INTEGRADO: TFloatField
      FieldName = 'ID_INTEGRADO'
      Required = True
    end
    object Qr_IntegradoNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Required = True
      Size = 40
    end
    object Qr_IntegradoNR_CNPJFORN: TStringField
      FieldName = 'NR_CNPJFORN'
      Size = 14
    end
    object Qr_IntegradoFL_ATIVO: TStringField
      FieldName = 'FL_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object Ds_Integrado: TOraDataSource
    DataSet = Qr_Integrado
    Left = 464
    Top = 38
  end
  object Qr_AlojamentoFornec: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_ALOJAMENTO_FORNEC'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_FORNECEDOR, NR_NOTA, ID_LINHAGEM' +
        ', IDADE_MATRIZ, VALOR_PINTAINHO, QUANTIDADE, GTA, DATA_GTA, DATA' +
        '_RECEB, SEQ_NOTA  )'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_FORNECEDOR, :NR_NOTA, :ID_LI' +
        'NHAGEM, :IDADE_MATRIZ, :VALOR_PINTAINHO, :QUANTIDADE, :GTA, :DAT' +
        'A_GTA, :DATA_RECEB, :SEQ_NOTA  )')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_ALOJAMENTO_FORNEC'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_FORNECEDOR = :ID_FORNECEDOR and'
      '  NR_NOTA = :NR_NOTA and'
      '  SEQ_NOTA = :SEQ_NOTA')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_ALOJAMENTO_FORNEC'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  ID_LOTE = :ID_LOTE,'
      '  ID_FORNECEDOR = :ID_FORNECEDOR,'
      '  NR_NOTA = :NR_NOTA,'
      '  ID_LINHAGEM = :ID_LINHAGEM,'
      '  IDADE_MATRIZ = :IDADE_MATRIZ,'
      '  VALOR_PINTAINHO = :VALOR_PINTAINHO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  GTA                = :GTA , '
      '  DATA_GTA     = :DATA_GTA ,'
      '  DATA_RECEB  = :DATA_RECEB,'
      '  SEQ_NOTA = :SEQ_NOTA'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_FORNECEDOR = :OLD_ID_FORNECEDOR and'
      '  NR_NOTA = :OLD_NR_NOTA and'
      ' SEQ_NOTA = :OLD_SEQ_NOTA')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_ALOJAMENTO_FORNEC'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_FORNECEDOR = :ID_FORNECEDOR and'
      '  NR_NOTA = :NR_NOTA'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  AF.ID_LOTE = :ID_LOTE and'
      '  AF.ID_FORNECEDOR = :ID_FORNECEDOR and'
      '  AF.NR_NOTA = :NR_NOTA')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select AF.EMPRESA, AF.FILIAL, AF.ID_LOTE, AF.ID_FORNECEDOR, AF.N' +
        'R_NOTA, '
      
        '       AF.ID_LINHAGEM, AF.IDADE_MATRIZ, AF.VALOR_PINTAINHO, F.NM' +
        '_FORNECEDOR,'
      
        '       L.DESC_LINHAGEM, L.PRORIO_COMPRADO, AF.QUANTIDADE, AF.GTA' +
        ', AF.DATA_GTA, AF.DATA_RECEB,'
      '      AF.SEQ_NOTA   '
      '  From INTEGRADO_ALOJAMENTO_FORNEC AF '
      ' Inner Join FORNECEDOR F '
      '    On AF.ID_FORNECEDOR = F.ID_FORNECEDOR'
      ' Inner Join INTEGRADO_LINHAGEM L'
      '    On L.ID_LINHAGEM = AF.ID_LINHAGEM')
    MasterSource = Ds
    MasterFields = 'ID_LOTE'
    DetailFields = 'ID_LOTE'
    FetchAll = True
    CachedUpdates = True
    AfterOpen = Qr_AlojamentoFornecAfterOpen
    AfterInsert = Qr_AlojamentoFornecAfterInsert
    BeforePost = Qr_AlojamentoFornecBeforePost
    AfterPost = Qr_AlojamentoFornecAfterPost
    AfterCancel = Qr_AlojamentoFornecAfterCancel
    Left = 496
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_AlojamentoFornecEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object Qr_AlojamentoFornecFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object Qr_AlojamentoFornecID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_AlojamentoFornecID_FORNECEDOR: TFloatField
      FieldName = 'ID_FORNECEDOR'
    end
    object Qr_AlojamentoFornecNR_NOTA: TFloatField
      FieldName = 'NR_NOTA'
    end
    object Qr_AlojamentoFornecID_LINHAGEM: TFloatField
      FieldName = 'ID_LINHAGEM'
    end
    object Qr_AlojamentoFornecIDADE_MATRIZ: TIntegerField
      FieldName = 'IDADE_MATRIZ'
    end
    object Qr_AlojamentoFornecVALOR_PINTAINHO: TFloatField
      FieldName = 'VALOR_PINTAINHO'
      DisplayFormat = '0.0000'
    end
    object Qr_AlojamentoFornecNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Size = 40
    end
    object Qr_AlojamentoFornecDESC_LINHAGEM: TStringField
      FieldName = 'DESC_LINHAGEM'
      Size = 40
    end
    object Qr_AlojamentoFornecPRORIO_COMPRADO: TStringField
      FieldName = 'PRORIO_COMPRADO'
      FixedChar = True
      Size = 1
    end
    object Qr_AlojamentoFornecQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object Qr_AlojamentoFornecGTA: TFloatField
      FieldName = 'GTA'
    end
    object Qr_AlojamentoFornecDATA_GTA: TDateTimeField
      FieldName = 'DATA_GTA'
    end
    object Qr_AlojamentoFornecDATA_RECEB: TDateTimeField
      FieldName = 'DATA_RECEB'
    end
    object Qr_AlojamentoFornecSEQ_NOTA: TIntegerField
      FieldName = 'SEQ_NOTA'
      Required = True
    end
  end
  object Ds_AlojamentoFornec: TOraDataSource
    DataSet = Qr_AlojamentoFornec
    OnStateChange = Ds_AlojamentoFornecStateChange
    Left = 536
    Top = 6
  end
  object Qr_Linhagem: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_ALOJAMENTO'
      
        '  (EMPRESA, FILIAL, ID_LOTE, DATA_ALOJAMENTO, ID_USUARIO, ID_INT' +
        'EGRADO)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :DATA_ALOJAMENTO, :ID_USUARIO, :' +
        'ID_INTEGRADO)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_ALOJAMENTO'
      'WHERE'
      '  ID_LOTE = :ID_LOTE')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_ALOJAMENTO'
      'SET'
      '  DATA_ALOJAMENTO = :DATA_ALOJAMENTO,'
      '  ID_USUARIO = :ID_USUARIO,'
      '  ID_INTEGRADO = :ID_INTEGRADO'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_ALOJAMENTO'
      'WHERE'
      '  ID_LOTE = :ID_LOTE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  A.ID_LOTE = :ID_LOTE')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select EMPRESA, FILIAL, ID_LINHAGEM, DESC_LINHAGEM, PRORIO_COMPR' +
        'ADO '
      '  From INTEGRADO_LINHAGEM')
    FetchAll = True
    Left = 504
    Top = 40
    object Qr_LinhagemEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object Qr_LinhagemFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object Qr_LinhagemID_LINHAGEM: TFloatField
      FieldName = 'ID_LINHAGEM'
      Required = True
    end
    object Qr_LinhagemDESC_LINHAGEM: TStringField
      FieldName = 'DESC_LINHAGEM'
      Size = 40
    end
    object Qr_LinhagemPRORIO_COMPRADO: TStringField
      FieldName = 'PRORIO_COMPRADO'
      FixedChar = True
      Size = 1
    end
  end
  object Ds_Linhagem: TOraDataSource
    DataSet = Qr_Linhagem
    Left = 536
    Top = 38
  end
  object Qr_LoteGalpao: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_ALOJAMENTO_GALPAO'
      '  ( EMPRESA, FILIAL, ID_LOTE, ID_GALPAO, TIPO, QTDE )'
      'VALUES'
      '  ( :EMPRESA, :FILIAL, :ID_LOTE, :ID_GALPAO, :TIPO, :QTDE )')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_ALOJAMENTO_GALPAO'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_GALPAO = :ID_GALPAO')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_ALOJAMENTO_GALPAO'
      'SET'
      '  ID_GALPAO = :ID_GALPAO,'
      '  TIPO = :TIPO,'
      '  QTDE = :QTDE'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_GALPAO = :OLD_ID_GALPAO')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_ALOJAMENTO_GALPAO'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_GALPAO = :ID_GALPAO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  LG.ID_LOTE = :ID_LOTE and'
      '  LG.ID_GALPAO = :ID_GALPAO')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select LG.EMPRESA, LG.FILIAL, LG.ID_LOTE, LG.ID_GALPAO, LG.TIPO,' +
        ' LG.QTDE , IG.DESC_GALPAO,'
      'IG.LARG_GALPAO, IG.COMPR_GALPAO, IG.AREA_GALPAO,'
      'CASE LG.TIPO WHEN '#39'MA'#39' THEN '#39'Macho'#39
      '                    WHEN '#39'FE'#39' THEN '#39'F'#234'mea'#39
      '                    WHEN '#39'MI'#39' THEN '#39'Misto'#39' END Desc_Tipo '
      '  From INTEGRADO_ALOJAMENTO_GALPAO LG '
      ' Inner Join INTEGRADO_GALPAO IG'
      '    On LG.ID_GALPAO =  IG.ID_GALPAO')
    MasterSource = Ds
    MasterFields = 'ID_LOTE'
    DetailFields = 'ID_LOTE'
    FetchAll = True
    CachedUpdates = True
    AfterOpen = Qr_LoteGalpaoAfterOpen
    AfterInsert = Qr_LoteGalpaoAfterInsert
    BeforePost = Qr_LoteGalpaoBeforePost
    AfterPost = Qr_LoteGalpaoAfterPost
    Left = 568
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_LoteGalpaoEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object Qr_LoteGalpaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object Qr_LoteGalpaoID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_LoteGalpaoID_GALPAO: TFloatField
      FieldName = 'ID_GALPAO'
      Required = True
    end
    object Qr_LoteGalpaoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object Qr_LoteGalpaoDESC_GALPAO: TStringField
      FieldName = 'DESC_GALPAO'
      Size = 25
    end
    object Qr_LoteGalpaoLARG_GALPAO: TFloatField
      FieldName = 'LARG_GALPAO'
    end
    object Qr_LoteGalpaoCOMPR_GALPAO: TFloatField
      FieldName = 'COMPR_GALPAO'
    end
    object Qr_LoteGalpaoAREA_GALPAO: TFloatField
      FieldName = 'AREA_GALPAO'
    end
    object Qr_LoteGalpaoDESC_TIPO: TStringField
      FieldName = 'DESC_TIPO'
      FixedChar = True
      Size = 5
    end
    object Qr_LoteGalpaoQTDE: TFloatField
      FieldName = 'QTDE'
    end
  end
  object Ds_LoteGalpao: TOraDataSource
    DataSet = Qr_LoteGalpao
    OnStateChange = Ds_LoteGalpaoStateChange
    Left = 600
    Top = 6
  end
  object Qr_Galpao: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_ALOJAMENTO'
      
        '  (EMPRESA, FILIAL, ID_LOTE, DATA_ALOJAMENTO, ID_USUARIO, ID_INT' +
        'EGRADO)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :DATA_ALOJAMENTO, :ID_USUARIO, :' +
        'ID_INTEGRADO)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_ALOJAMENTO'
      'WHERE'
      '  ID_LOTE = :ID_LOTE')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_ALOJAMENTO'
      'SET'
      '  DATA_ALOJAMENTO = :DATA_ALOJAMENTO,'
      '  ID_USUARIO = :ID_USUARIO,'
      '  ID_INTEGRADO = :ID_INTEGRADO'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_ALOJAMENTO'
      'WHERE'
      '  ID_LOTE = :ID_LOTE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  A.ID_LOTE = :ID_LOTE')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      ''
      
        '  Select IG.EMPRESA, IG.FILIAL, IG.ID_GALPAO, IG.ID_INTEGRADO, I' +
        'G.DESC_GALPAO, '
      
        '       IG.LARG_GALPAO, IG.COMPR_GALPAO, IG.AREA_GALPAO, IG.ATIVO' +
        ','
      '      IG.DESC_GALPAO || '#39' - '#193'rea '#39' || IG.AREA_GALPAO  || '
      
        '      '#39' (LXC) '#39' ||IG.LARG_GALPAO ||'#39' X '#39' ||IG.COMPR_GALPAO   lkp' +
        '_Galpao'
      '  From INTEGRADO_GALPAO IG'
      'Where  IG.ID_INTEGRADO = :ID_INTEGRADO'
      '&Macro')
    MasterSource = Ds
    MasterFields = 'ID_INTEGRADO'
    DetailFields = 'ID_INTEGRADO'
    FetchAll = True
    BeforeOpen = Qr_GalpaoBeforeOpen
    BeforePost = Qr_GalpaoBeforePost
    Left = 568
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_INTEGRADO'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'Macro'
      end>
    object Qr_GalpaoEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object Qr_GalpaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object Qr_GalpaoID_GALPAO: TFloatField
      FieldName = 'ID_GALPAO'
      Required = True
    end
    object Qr_GalpaoID_INTEGRADO: TFloatField
      FieldName = 'ID_INTEGRADO'
      Required = True
    end
    object Qr_GalpaoDESC_GALPAO: TStringField
      FieldName = 'DESC_GALPAO'
      Size = 25
    end
    object Qr_GalpaoLARG_GALPAO: TFloatField
      FieldName = 'LARG_GALPAO'
    end
    object Qr_GalpaoCOMPR_GALPAO: TFloatField
      FieldName = 'COMPR_GALPAO'
    end
    object Qr_GalpaoAREA_GALPAO: TFloatField
      FieldName = 'AREA_GALPAO'
    end
    object Qr_GalpaoATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object Qr_GalpaoLKP_GALPAO: TStringField
      FieldName = 'LKP_GALPAO'
      Size = 163
    end
  end
  object Ds_Galpao: TOraDataSource
    DataSet = Qr_Galpao
    Left = 600
    Top = 38
  end
  object Qr_Retirada: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_RETIRADA'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_NOTAFISC, QTD_AVESABAT, PESO_AVE' +
        'S, TURMA, VL_UNIT, GTA , MORTALIDADE )'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_NOTAFISC, :QTD_AVESABAT, :PE' +
        'SO_AVES, :TURMA, :VL_UNIT, :GTA , :MORTALIDADE )')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_RETIRADA'
      'SET'
      '  QTD_AVESABAT = :QTD_AVESABAT,'
      '  PESO_AVES = :PESO_AVES,'
      '  TURMA = :TURMA ,'
      ' VL_UNIT = :VL_UNIT,'
      '    GTA = :GTA , '
      'MORTALIDADE = :MORTALIDADE'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_NOTAFISC = :OLD_ID_NOTAFISC')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select IR.EMPRESA , IR.FILIAL, IR.ID_LOTE , IR.ID_NOTAFISC, NF.N' +
        'R_NOTAFISC, '
      
        '       NF.DT_SAIDNOTAFISC, IR.QTD_AVESABAT, IR.PESO_AVES, IR.TUR' +
        'MA,'
      
        '       IR.VL_UNIT, NF.GN_PLACVEICNOTAFISC PLACAVEIC , IR.GTA , I' +
        'R.MORTALIDADE,'
      '      IR.PER_MORTBOLETIM '
      '  From INTEGRADO_RETIRADA IR'
      ' Inner Join NOTA_FISCAL NF '
      '   On IR.ID_NOTAFISC = NF.ID_NOTAFISC'
      'Where IR.ID_LOTE =  :ID_LOTE'
      'ORDER BY NF.NR_NOTAFISC')
    FetchAll = True
    CachedUpdates = True
    AfterOpen = Qr_RetiradaAfterOpen
    BeforePost = Qr_RetiradaBeforePost
    AfterPost = Qr_RetiradaAfterPost
    AfterCancel = Qr_RetiradaAfterCancel
    OnCalcFields = Qr_RetiradaCalcFields
    Left = 784
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_RetiradaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object Qr_RetiradaFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object Qr_RetiradaID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_RetiradaID_NOTAFISC: TFloatField
      FieldName = 'ID_NOTAFISC'
      Required = True
    end
    object Qr_RetiradaNR_NOTAFISC: TFloatField
      FieldName = 'NR_NOTAFISC'
    end
    object Qr_RetiradaDT_SAIDNOTAFISC: TDateTimeField
      FieldName = 'DT_SAIDNOTAFISC'
    end
    object Qr_RetiradaQTD_AVESABAT: TFloatField
      FieldName = 'QTD_AVESABAT'
    end
    object Qr_RetiradaPESO_AVES: TFloatField
      FieldName = 'PESO_AVES'
    end
    object Qr_RetiradaTURMA: TIntegerField
      FieldName = 'TURMA'
    end
    object Qr_RetiradaPeso_Medio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Peso_Medio'
      DisplayFormat = '#,###.000'
      Calculated = True
    end
    object Qr_RetiradaVL_UNIT: TFloatField
      FieldName = 'VL_UNIT'
    end
    object Qr_RetiradaPLACAVEIC: TStringField
      FieldName = 'PLACAVEIC'
      Size = 10
    end
    object Qr_RetiradaLkp_Turma: TStringField
      FieldKind = fkLookup
      FieldName = 'Lkp_Turma'
      LookupDataSet = Qr_Turma
      LookupKeyFields = 'TURMA'
      LookupResultField = 'NM_FORNECEDOR'
      KeyFields = 'TURMA'
      Lookup = True
    end
    object Qr_RetiradaGTA: TFloatField
      FieldName = 'GTA'
    end
    object Qr_RetiradaMORTALIDADE: TFloatField
      FieldName = 'MORTALIDADE'
    end
    object Qr_RetiradaPER_MORTBOLETIM: TFloatField
      FieldName = 'PER_MORTBOLETIM'
    end
  end
  object Ds_Retirada: TOraDataSource
    DataSet = Qr_Retirada
    OnStateChange = Ds_RetiradaStateChange
    Left = 816
    Top = 70
  end
  object Qr_Remessa: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_RETIRADA'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_NOTAFISC, QTD_AVESABAT, PESO_AVE' +
        'S, TURMA)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_NOTAFISC, :QTD_AVESABAT, :PE' +
        'SO_AVES, :TURMA)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_RETIRADA'
      'SET'
      '  QTD_AVESABAT = :QTD_AVESABAT,'
      '  PESO_AVES = :PESO_AVES,'
      '  TURMA = :TURMA'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_NOTAFISC = :OLD_ID_NOTAFISC')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'Select P.ID_LOTE, N.DT_SAIDNOTAFISC, N.NR_NOTAFISC, '
      '       ME.Nm_Prodmateemba, '
      '       CASE WHEN P.ID_TIPOPEDIVEND = 138 '
      
        '            THEN NI.QN_EMBAITEMNOTAFISC * (-1) ELSE NI.QN_EMBAIT' +
        'EMNOTAFISC END QN_EMBAITEMNOTAFISC,'
      
        '       CASE WHEN P.ID_TIPOPEDIVEND = 138 THEN '#39'Retorno'#39' ELSE '#39'Re' +
        'messa'#39' END OPERACAO '
      '  From Pedido_Venda P'
      ' Inner Join PEDIDO_VENDA_TIPO T'
      '    On P.ID_TIPOPEDIVEND = T.ID_TIPOPEDIVEND'
      ' Inner Join CLIENTE C'
      '    ON P.ID_CLIENTE = C.ID_CLIENTE'
      ' INNER JOIN Pedido_Venda_ITEM I '
      '    ON P.ID_PEDIVEND = I.ID_PEDIVEND  '
      ' Inner Join Material_Embalagem ME'
      '    On i.Id_Mateemba = ME.ID_Mateemba  '
      ' Inner Join PEDIDO_VENDA_NOTA_FISCAL PN'
      '    ON P.ID_PEDIVEND = PN.ID_PEDIVEND  '
      ' INNER JOIN NOTA_FISCAL N'
      '    ON N.ID_NOTAFISC = PN.ID_NOTAFISC   '
      ' inner Join Nota_Fiscal_Item NI'
      '    ON N.ID_NOTAFISC = NI.ID_NOTAFISC   '
      ' Where  N.FL_CANCNOTAFISC = '#39'N'#39
      '   AND ME.ID_PRODMATEEMBA in ( 7302, 7303, 7304, 7305, 7306 )'
      ' AND P.ID_LOTE = :ID_LOTE '
      ' Order By N.DT_SAIDNOTAFISC')
    FetchAll = True
    Left = 632
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'ID_LOTE'
        ParamType = ptInput
        Value = nil
      end>
    object Qr_RemessaDT_SAIDNOTAFISC: TDateTimeField
      FieldName = 'DT_SAIDNOTAFISC'
      Required = True
    end
    object Qr_RemessaNR_NOTAFISC: TFloatField
      FieldName = 'NR_NOTAFISC'
      Required = True
    end
    object Qr_RemessaNM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
    object Qr_RemessaID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
    end
    object Qr_RemessaQN_EMBAITEMNOTAFISC: TFloatField
      FieldName = 'QN_EMBAITEMNOTAFISC'
    end
    object Qr_RemessaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      FixedChar = True
      Size = 7
    end
  end
  object Ds_Remessa: TOraDataSource
    DataSet = Qr_Remessa
    Left = 664
    Top = 6
  end
  object Qr_NFRetirada: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_RETIRADA'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_NOTAFISC, QTD_AVESABAT, PESO_AVE' +
        'S, TURMA)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_NOTAFISC, :QTD_AVESABAT, :PE' +
        'SO_AVES, :TURMA)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_RETIRADA'
      'SET'
      '  QTD_AVESABAT = :QTD_AVESABAT,'
      '  PESO_AVES = :PESO_AVES,'
      '  TURMA = :TURMA'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_NOTAFISC = :OLD_ID_NOTAFISC')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select N.EMPRESA, N.FILIAL, P.ID_LOTE , N.DT_SAIDNOTAFISC, N.ID_' +
        'NOTAFISC,'
      '       N.NR_NOTAFISC, NI.NM_MATERIAL_ITEMNOTAFISC,'
      '       P.GN_OBSEPEDIVEND, B.PESODIFERE,'
      '       P.ID_PEDIVEND, N.ID_CLIENTE, N.NM_DESTREMENOTAFISC,'
      
        '      N.GN_PLACVEICNOTAFISC,  NI.VL_UNITITEMNOTAFISC, IR.ID_NOTA' +
        'FISC ID_NOTA'
      '  From Pedido_Venda P'
      ' Inner Join PEDIDO_VENDA_TIPO T'
      '    On P.ID_TIPOPEDIVEND = T.ID_TIPOPEDIVEND'
      ' INNER JOIN Pedido_Venda_ITEM I'
      '    ON P.ID_PEDIVEND = I.ID_PEDIVEND  '
      ' Inner Join Material_Embalagem ME'
      '    On i.Id_Mateemba = ME.ID_Mateemba  '
      ' Inner Join PEDIDO_VENDA_NOTA_FISCAL PN'
      '    ON P.ID_PEDIVEND = PN.ID_PEDIVEND  '
      ' INNER JOIN NOTA_FISCAL N'
      '    ON N.ID_NOTAFISC = PN.ID_NOTAFISC   '
      ' inner Join Nota_Fiscal_Item NI'
      '    ON N.ID_NOTAFISC = NI.ID_NOTAFISC   '
      'Left Join Ca_Balarodov B'
      '   ON  N.GN_PLACVEICNOTAFISC = B.PLACVEICTRAN'
      '   AND P.ID_CLIENTE = B.ID_CLIENTE'
      
        '  AND TRUNC(B.DT_PESAGEM)  Between N.DT_EMISNOTAFISC  AND N.DT_S' +
        'AIDNOTAFISC'
      ' LEFT JOIN INTEGRADO_RETIRADA IR'
      '   ON IR.ID_LOTE     = P.ID_LOTE'
      '  AND IR.ID_NOTAFISC = N.ID_NOTAFISC'
      ' Where N.FL_CANCNOTAFISC = '#39'N'#39
      '   AND ME.ID_PRODMATEEMBA  in ( 14553 , 20777 )'
      '  -- AND IR.ID_NOTAFISC IS NULL'
      ' AND P.ID_LOTE = :ID_LOTE'
      'AND P.ID_TIPOPEDIVEND NOT IN ( 73 )'
      ' Order By N.NR_NOTAFISC'
      ' ')
    FetchAll = True
    Left = 784
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_NFRetiradaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object Qr_NFRetiradaFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object Qr_NFRetiradaDT_SAIDNOTAFISC: TDateTimeField
      FieldName = 'DT_SAIDNOTAFISC'
      Required = True
    end
    object Qr_NFRetiradaID_NOTAFISC: TFloatField
      FieldName = 'ID_NOTAFISC'
      Required = True
    end
    object Qr_NFRetiradaNR_NOTAFISC: TFloatField
      FieldName = 'NR_NOTAFISC'
      Required = True
    end
    object Qr_NFRetiradaNM_MATERIAL_ITEMNOTAFISC: TStringField
      FieldName = 'NM_MATERIAL_ITEMNOTAFISC'
      Required = True
      Size = 40
    end
    object Qr_NFRetiradaGN_OBSEPEDIVEND: TStringField
      FieldName = 'GN_OBSEPEDIVEND'
      Size = 2000
    end
    object Qr_NFRetiradaPESODIFERE: TIntegerField
      FieldName = 'PESODIFERE'
      DisplayFormat = '#,###'
    end
    object Qr_NFRetiradaID_PEDIVEND: TFloatField
      FieldName = 'ID_PEDIVEND'
      Required = True
    end
    object Qr_NFRetiradaID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
    end
    object Qr_NFRetiradaNM_DESTREMENOTAFISC: TStringField
      FieldName = 'NM_DESTREMENOTAFISC'
      Required = True
      Size = 40
    end
    object Qr_NFRetiradaGN_PLACVEICNOTAFISC: TStringField
      FieldName = 'GN_PLACVEICNOTAFISC'
      Size = 10
    end
    object Qr_NFRetiradaVL_UNITITEMNOTAFISC: TFloatField
      FieldName = 'VL_UNITITEMNOTAFISC'
      Required = True
    end
    object Qr_NFRetiradaID_NOTA: TFloatField
      FieldName = 'ID_NOTA'
    end
    object Qr_NFRetiradaID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
    end
  end
  object Ds_NFRetirada: TOraDataSource
    DataSet = Qr_NFRetirada
    Left = 816
    Top = 102
  end
  object Qr_Fechamento: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_RETIRADA'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_NOTAFISC, QTD_AVESABAT, PESO_AVE' +
        'S, TURMA)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_NOTAFISC, :QTD_AVESABAT, :PE' +
        'SO_AVES, :TURMA)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_RETIRADA'
      'SET'
      '  QTD_AVESABAT = :QTD_AVESABAT,'
      '  PESO_AVES = :PESO_AVES,'
      '  TURMA = :TURMA'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_NOTAFISC = :OLD_ID_NOTAFISC')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'Select A.ID_LOTE, A.SOBRA_RACAO , A.MORTALIDADE ,'
      
        '       A.QTD_ALOJ  QTDE_ALOJ , IR.AVES_ABAT, IR.PESO_ABAT, G.QTD' +
        'E_GALPAO, I.DIAS_PAGTO,'
      '       RA.QTD_RACAO, ROUND(IR.IDADE,2) IDADE,'
      '       ROUND((IR.PESO_ABAT/IR.AVES_ABAT),3) PESO_MEDIOK,'
      '       NVL(( SELECT VAL_BONUS'
      '               FROM BONUS_PAGAMENTO'
      '              WHERE COD_BONUS = 1'
      
        '                AND PARAM_BONUS <= ROUND((IR.PESO_ABAT/IR.AVES_A' +
        'BAT),3) ) ,0)'
      '       BONUS_PESOMEDIO,'
      
        '       CASE WHEN IR.PESO_ABAT > 0 THEN  ROUND((RA.QTD_RACAO - A.' +
        'SOBRA_RACAO) / IR.PESO_ABAT , 2) END CONV_ALIMENTARK,'
      
        '       ROUND((IR.PESO_ABAT/IR.AVES_ABAT)  /  IR.IDADE,3)  GANHO_' +
        'PESO_DIAK,'
      ''
      
        '      CASE WHEN IR.PESO_ABAT > 0 AND IR.AVES_ABAT > 0 AND A.QTD_' +
        'ALOJ  > 0 THEN'
      '      ROUND((('
      '              --ROUND'
      '              ((IR.PESO_ABAT/IR.AVES_ABAT)  /  IR.IDADE --,3'
      '              ) * -- GANHO_PESO_DIAK'
      '              (( IR.AVES_ABAT /  A.QTD_ALOJ  ) * 100 * 100)'
      '             ) /'
      '              -- ROUND'
      
        '              ((RA.QTD_RACAO - A.SOBRA_RACAO) / IR.PESO_ABAT --,' +
        ' 2'
      '              )'
      '            )/100 , 2'
      '           ) END IEPK,'
      
        '      CASE WHEN IR.PESO_ABAT > 0 AND IR.AVES_ABAT > 0 AND A.QTD_' +
        'ALOJ > 0 THEN'
      '      (Select VL_GERAL'
      '         From INTEGRADO_PAGTO_FATOR'
      '        Where ROUND((('
      '              --ROUND'
      '              ((IR.PESO_ABAT/IR.AVES_ABAT)  /  IR.IDADE --,3'
      '              ) * -- GANHO_PESO_DIAK'
      '              (( IR.AVES_ABAT /  A.QTD_ALOJ  ) * 100 * 100)'
      '             ) /'
      '              -- ROUND'
      
        '              ((RA.QTD_RACAO - A.SOBRA_RACAO) / IR.PESO_ABAT --,' +
        ' 2'
      '              )'
      '            )/100 , 2'
      '           ) BETWEEN IEP_INICIO AND IEP_FIM  ) END  +'
      '       NVL(( SELECT VAL_BONUS'
      '               FROM BONUS_PAGAMENTO'
      '              WHERE COD_BONUS = 1'
      
        '                AND PARAM_BONUS <= ROUND((IR.PESO_ABAT/IR.AVES_A' +
        'BAT),3) ) ,0)'
      '                   VL_AVE,'
      '                   LIN.DESC_LINHAGEM ,'
      '                   IT.ID_TECNICO, IT.NOME_TECNICO'
      '  From INTEGRADO_ALOJAMENTO A'
      '  Inner Join Integrado I'
      '     On I.ID_INTEGRADO = A.ID_INTEGRADO'
      '  Inner Join INTEGRADO_TECNICO IT'
      '     On I.ID_TECNICO = IT.ID_TECNICO'
      '  Left Join ( SELECT IR.ID_LOTE,'
      '                     SUM(IR.QTD_AVESABAT) AVES_ABAT,'
      '                     SUM(IR.PESO_AVES) PESO_ABAT,'
      
        '                     SUM((NF.DT_SAIDNOTAFISC - A.DATA_ALOJAMENTO' +
        ') * IR.QTD_AVESABAT ) / SUM(IR.QTD_AVESABAT) - 1 IDADE'
      '                FROM INTEGRADO_RETIRADA IR'
      '               Inner Join INTEGRADO_ALOJAMENTO A'
      '                  On A.ID_LOTE = IR.ID_LOTE'
      '               Inner Join NOTA_FISCAL NF'
      '                  ON IR.ID_NOTAFISC = NF.ID_NOTAFISC'
      '               Where IR.ID_LOTE = :ID_LOTE'
      '                 AND NVL(IR.PESO_AVES,0) > 0 '
      '               GROUP BY IR.ID_LOTE  ) IR'
      '                  On A.ID_LOTE = IR.ID_LOTE'
      '  Left Join ( Select G.ID_LOTE , SUM(QTDE) QTDE_GALPAO'
      '                From INTEGRADO_ALOJAMENTO_GALPAO G'
      '               Where G.ID_LOTE = :ID_LOTE'
      '               GROUP BY G.ID_LOTE ) G'
      '    On A.ID_LOTE = G.ID_LOTE'
      ''
      '  Left Join ('
      '            Select P.ID_LOTE  ID_LOTE ,'
      
        '                   SUM( CASE WHEN P.ID_TIPOPEDIVEND = 138 THEN N' +
        'I.QN_EMBAITEMNOTAFISC * (-1)'
      
        '                             ELSE NI.QN_EMBAITEMNOTAFISC END ) Q' +
        'TD_RACAO'
      '              From Pedido_Venda P'
      '             Inner Join PEDIDO_VENDA_TIPO T'
      '                On P.ID_TIPOPEDIVEND = T.ID_TIPOPEDIVEND'
      '             Inner Join CLIENTE C'
      '                ON P.ID_CLIENTE = C.ID_CLIENTE'
      '             INNER JOIN Pedido_Venda_ITEM I'
      '                ON P.ID_PEDIVEND = I.ID_PEDIVEND'
      '             Inner Join Material_Embalagem ME'
      '                On i.Id_Mateemba = ME.ID_Mateemba'
      '             Inner Join PEDIDO_VENDA_NOTA_FISCAL PN'
      '                ON P.ID_PEDIVEND = PN.ID_PEDIVEND'
      '             INNER JOIN NOTA_FISCAL N'
      '                ON N.ID_NOTAFISC = PN.ID_NOTAFISC'
      '             inner Join Nota_Fiscal_Item NI'
      '                ON N.ID_NOTAFISC = NI.ID_NOTAFISC   '
      '             Where N.FL_CANCNOTAFISC = '#39'N'#39
      
        '               AND ME.ID_PRODMATEEMBA in ( 7302, 7303, 7304, 730' +
        '5, 7306 )'
      '               AND P.ID_LOTE =:ID_LOTE'
      '             GROUP BY P.ID_LOTE  ) RA'
      '    On A.ID_LOTE = RA.ID_LOTE'
      '  Left Join (  SELECT ID_LOTE, DESC_LINHAGEM '
      
        '                  FROM (    SELECT ROW_NUMBER() OVER (ORDER BY S' +
        'UM(AF.QUANTIDADE) desc  ) AS RNO , '
      
        '                                   AF.ID_LINHAGEM, L.DESC_LINHAG' +
        'EM, SUM(AF.QUANTIDADE) QTD,'
      '                                   AF.ID_LOTE'
      
        '                              FROM INTEGRADO_ALOJAMENTO_FORNEC A' +
        'F'
      '                             Inner JOIN INTEGRADO_LINHAGEM L'
      
        '                                On AF.ID_LINHAGEM = L.ID_LINHAGE' +
        'M '
      '                             Where AF.ID_LOTE = :ID_LOTE'
      
        '                             GROUP BY AF.ID_LOTE, AF.ID_LINHAGEM' +
        ', L.DESC_LINHAGEM'
      '                             ORDER BY QTD DESC  ) '
      '                  WHERE RNO = 1 ) LIN'
      '    On A.ID_LOTE = LIN.ID_LOTE'
      ' Where A.ID_LOTE = :ID_LOTE  '
      ' '
      ' '
      ' '
      ' ')
    FetchAll = True
    BeforeOpen = Qr_FechamentoBeforeOpen
    AfterOpen = Qr_FechamentoAfterOpen
    AfterScroll = Qr_FechamentoAfterScroll
    OnCalcFields = Qr_FechamentoCalcFields
    Left = 784
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_FechamentoID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_FechamentoSOBRA_RACAO: TFloatField
      FieldName = 'SOBRA_RACAO'
      DisplayFormat = '#,###'
    end
    object Qr_FechamentoMORTALIDADE: TFloatField
      FieldName = 'MORTALIDADE'
      DisplayFormat = '#,###'
    end
    object Qr_FechamentoAVES_ABAT: TFloatField
      FieldName = 'AVES_ABAT'
      DisplayFormat = '#,###'
    end
    object Qr_FechamentoPESO_ABAT: TFloatField
      FieldName = 'PESO_ABAT'
      DisplayFormat = '#,###'
    end
    object Qr_FechamentoQTDE_GALPAO: TFloatField
      FieldName = 'QTDE_GALPAO'
      DisplayFormat = '#,###'
    end
    object Qr_FechamentoQTD_RACAO: TFloatField
      FieldName = 'QTD_RACAO'
      DisplayFormat = '#,###'
    end
    object Qr_FechamentoQTDE_ALOJ: TFloatField
      FieldName = 'QTDE_ALOJ'
      DisplayFormat = '#,###'
    end
    object Qr_FechamentoPESO_MEDIO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PESO_MEDIO'
      DisplayFormat = '#0.000'
      Calculated = True
    end
    object Qr_FechamentoVIABILIDADE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VIABILIDADE'
      DisplayFormat = '0.0'
      Calculated = True
    end
    object Qr_FechamentoRACAO_CONSUMIDA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RACAO_CONSUMIDA'
      DisplayFormat = '#,###'
      Calculated = True
    end
    object Qr_FechamentoCONV_ALIMENTAR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CONV_ALIMENTAR'
      DisplayFormat = '#0.00'
      Calculated = True
    end
    object Qr_FechamentoIDADE: TFloatField
      FieldName = 'IDADE'
      DisplayFormat = '0.00'
    end
    object Qr_FechamentoGANHO_PESO_DIA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GANHO_PESO_DIA'
      DisplayFormat = '#0.000'
      Calculated = True
    end
    object Qr_FechamentoMORTAL_CALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MORTAL_CALC'
      DisplayFormat = '#,###'
      Calculated = True
    end
    object Qr_FechamentoDIF_MORTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DIF_MORTAL'
      DisplayFormat = '#,###'
      Calculated = True
    end
    object Qr_FechamentoIEP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'IEP'
      Calculated = True
    end
    object Qr_FechamentoPESO_MEDIOK: TFloatField
      FieldName = 'PESO_MEDIOK'
    end
    object Qr_FechamentoCONV_ALIMENTARK: TFloatField
      FieldName = 'CONV_ALIMENTARK'
      DisplayFormat = '#0.00'
    end
    object Qr_FechamentoGANHO_PESO_DIAK: TFloatField
      FieldName = 'GANHO_PESO_DIAK'
      DisplayFormat = '0.000'
    end
    object Qr_FechamentoIEPK: TFloatField
      FieldName = 'IEPK'
      DisplayFormat = '0.00'
    end
    object Qr_FechamentoVL_AVE: TFloatField
      FieldName = 'VL_AVE'
      DisplayFormat = '#0.00'
    end
    object Qr_FechamentoVL_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VL_TOTAL'
      DisplayFormat = '0,000.00'
      Calculated = True
    end
    object Qr_FechamentoDIAS_PAGTO: TIntegerField
      FieldName = 'DIAS_PAGTO'
    end
    object Qr_FechamentoDESC_LINHAGEM: TStringField
      FieldName = 'DESC_LINHAGEM'
      Size = 40
    end
    object Qr_FechamentoID_TECNICO: TFloatField
      FieldName = 'ID_TECNICO'
      Required = True
    end
    object Qr_FechamentoNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      Size = 50
    end
    object Qr_FechamentoTOTA_FINAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTA_FINAL'
      DisplayFormat = '0,000.00'
      Calculated = True
    end
    object Qr_FechamentoBONUS_PESOMEDIO: TFloatField
      FieldName = 'BONUS_PESOMEDIO'
    end
  end
  object Ds_Fechamento: TOraDataSource
    DataSet = Qr_Fechamento
    Left = 816
    Top = 134
  end
  object Qr_Lancto: TOraQuery
    KeyFields = 'ID_LANCLOTE'
    KeySequence = 'SEQ_ID_LANCLOTE'
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_ALOJ_LANCAM'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_LANCLOTE, TIPO_LANC, DESC_LANC, ' +
        'VALOR_LANC)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_LANCLOTE, :TIPO_LANC, :DESC_' +
        'LANC, :VALOR_LANC)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_ALOJ_LANCAM'
      'WHERE'
      '  ID_LANCLOTE = :ID_LANCLOTE')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_ALOJ_LANCAM'
      'SET'
      '  TIPO_LANC = :TIPO_LANC,'
      '  DESC_LANC = :DESC_LANC,'
      '  VALOR_LANC = :VALOR_LANC'
      'WHERE'
      '  ID_LANCLOTE = :OLD_ID_LANCLOTE')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_ALOJ_LANCAM'
      'WHERE'
      '  ID_LANCLOTE = :ID_LANCLOTE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LANCLOTE = :ID_LANCLOTE')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select EMPRESA, FILIAL, ID_LOTE, ID_LANCLOTE, TIPO_LANC, DESC_LA' +
        'NC, VALOR_LANC '
      '  from INTEGRADO_ALOJ_LANCAM')
    MasterSource = Ds
    MasterFields = 'ID_LOTE'
    DetailFields = 'ID_LOTE'
    FetchAll = True
    CachedUpdates = True
    AfterOpen = Qr_LanctoAfterOpen
    AfterInsert = Qr_LanctoAfterInsert
    BeforePost = Qr_LanctoBeforePost
    AfterPost = Qr_LanctoAfterPost
    AfterCancel = Qr_LanctoAfterCancel
    Left = 696
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_LanctoEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object Qr_LanctoFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object Qr_LanctoID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_LanctoID_LANCLOTE: TFloatField
      FieldName = 'ID_LANCLOTE'
      Required = True
    end
    object Qr_LanctoTIPO_LANC: TStringField
      FieldName = 'TIPO_LANC'
      FixedChar = True
      Size = 1
    end
    object Qr_LanctoDESC_LANC: TStringField
      FieldName = 'DESC_LANC'
      Size = 50
    end
    object Qr_LanctoVALOR_LANC: TFloatField
      FieldName = 'VALOR_LANC'
      DisplayFormat = '#,###.00'
    end
    object Qr_LanctoLkp_TIPO_LANC: TStringField
      FieldKind = fkLookup
      FieldName = 'Lkp_TIPO_LANC'
      LookupDataSet = VT_TIPOLANC
      LookupKeyFields = 'TIPO_LANC'
      LookupResultField = 'DES_LANC'
      KeyFields = 'TIPO_LANC'
      Lookup = True
    end
  end
  object Ds_Lancto: TOraDataSource
    DataSet = Qr_Lancto
    OnStateChange = Ds_LanctoStateChange
    Left = 728
    Top = 6
  end
  object Qr_Fator: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_RETIRADA'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_NOTAFISC, QTD_AVESABAT, PESO_AVE' +
        'S, TURMA)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_NOTAFISC, :QTD_AVESABAT, :PE' +
        'SO_AVES, :TURMA)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_RETIRADA'
      'SET'
      '  QTD_AVESABAT = :QTD_AVESABAT,'
      '  PESO_AVES = :PESO_AVES,'
      '  TURMA = :TURMA'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_NOTAFISC = :OLD_ID_NOTAFISC')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'Select VL_GERAL '
      '  From INTEGRADO_PAGTO_FATOR'
      ' Where :IEP BETWEEN IEP_INICIO AND IEP_FIM ')
    FetchAll = True
    Left = 849
    Top = 135
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IEP'
        Value = nil
      end>
    object Qr_FatorVL_GERAL: TFloatField
      FieldName = 'VL_GERAL'
    end
  end
  object Ds_Fator: TOraDataSource
    DataSet = Qr_Fator
    Left = 881
    Top = 133
  end
  object VT_TIPOLANC: TVirtualTable
    Left = 768
    Top = 16
    Data = {04000000000000000000}
    object VT_TIPOLANCTIPO_LANC: TStringField
      FieldName = 'TIPO_LANC'
    end
    object VT_TIPOLANCDES_LANC: TStringField
      FieldName = 'DES_LANC'
    end
  end
  object Qr_Turma: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_RETIRADA'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_NOTAFISC, QTD_AVESABAT, PESO_AVE' +
        'S, TURMA)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_NOTAFISC, :QTD_AVESABAT, :PE' +
        'SO_AVES, :TURMA)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_RETIRADA'
      'SET'
      '  QTD_AVESABAT = :QTD_AVESABAT,'
      '  PESO_AVES = :PESO_AVES,'
      '  TURMA = :TURMA'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_NOTAFISC = :OLD_ID_NOTAFISC')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select F.TURMA , F.ID_FORNECEDOR , F.NM_FORNECEDOR,  F.VL_AVE_TU' +
        'RMA  '
      '  From Fornecedor F'
      ' Where TURMA > 0 '
      ' Order By TURMA')
    FetchAll = True
    Left = 849
    Top = 71
    object Qr_TurmaTURMA: TIntegerField
      FieldName = 'TURMA'
    end
    object Qr_TurmaID_FORNECEDOR: TFloatField
      FieldName = 'ID_FORNECEDOR'
      Required = True
    end
    object Qr_TurmaNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Required = True
      Size = 40
    end
    object Qr_TurmaVL_AVE_TURMA: TFloatField
      FieldName = 'VL_AVE_TURMA'
    end
  end
  object Ds_Turma: TOraDataSource
    DataSet = Qr_Turma
    Left = 881
    Top = 69
  end
  object Qr_VerTurma: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_RETIRADA'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_NOTAFISC, QTD_AVESABAT, PESO_AVE' +
        'S, TURMA)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_NOTAFISC, :QTD_AVESABAT, :PE' +
        'SO_AVES, :TURMA)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_RETIRADA'
      'SET'
      '  QTD_AVESABAT = :QTD_AVESABAT,'
      '  PESO_AVES = :PESO_AVES,'
      '  TURMA = :TURMA'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_NOTAFISC = :OLD_ID_NOTAFISC')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      ' Select IR.ID_LOTE,  '
      '       MIN(CASE WHEN IR.TURMA IS NULL THEN 0 ELSE 1 END) VTURMA,'
      
        '       MIN(CASE WHEN NVL(IR.QTD_AVESABAT,0)=0 THEN 0 ELSE 1 END)' +
        ' VQTD,'
      
        '       MIN(CASE WHEN NVL(IR.PESO_AVES,0)=0 THEN 0 ELSE 1 END) VP' +
        'ESO'
      '  From INTEGRADO_RETIRADA IR'
      ' Inner Join NOTA_FISCAL NF '
      '    On IR.ID_NOTAFISC = NF.ID_NOTAFISC'
      ' Where IR.ID_LOTE = :ID_LOTE'
      '   And ( IR.TURMA IS NULL OR NVL(IR.QTD_AVESABAT,0) =0 )'
      'AND NVL(IR.PESO_AVES,0) > 0 '
      ' Group By IR.ID_LOTE')
    FetchAll = True
    BeforeOpen = Qr_VerTurmaBeforeOpen
    Left = 921
    Top = 71
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_VerTurmaID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_VerTurmaVTURMA: TFloatField
      FieldName = 'VTURMA'
    end
    object Qr_VerTurmaVQTD: TFloatField
      FieldName = 'VQTD'
    end
    object Qr_VerTurmaVPESO: TFloatField
      FieldName = 'VPESO'
    end
  end
  object Qr_Nucleo: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_RETIRADA'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_NOTAFISC, QTD_AVESABAT, PESO_AVE' +
        'S, TURMA)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_NOTAFISC, :QTD_AVESABAT, :PE' +
        'SO_AVES, :TURMA)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_RETIRADA'
      'SET'
      '  QTD_AVESABAT = :QTD_AVESABAT,'
      '  PESO_AVES = :PESO_AVES,'
      '  TURMA = :TURMA'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_NOTAFISC = :OLD_ID_NOTAFISC')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      '  SELECT N.ID_NUCLEO, N.ID_INTEGRADO, N.DESC_NUCLEO'
      '  FROM NUCLEO_GALPAO N')
    MasterSource = Ds
    MasterFields = 'ID_INTEGRADO'
    DetailFields = 'ID_INTEGRADO'
    FetchAll = True
    BeforeOpen = Qr_VerTurmaBeforeOpen
    Left = 841
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_INTEGRADO'
        Value = nil
      end>
    object Qr_NucleoID_NUCLEO: TFloatField
      FieldName = 'ID_NUCLEO'
      Required = True
    end
    object Qr_NucleoID_INTEGRADO: TFloatField
      FieldName = 'ID_INTEGRADO'
      Required = True
    end
    object Qr_NucleoDESC_NUCLEO: TStringField
      FieldName = 'DESC_NUCLEO'
      Required = True
      Size = 30
    end
  end
  object Ds_Nucleo: TOraDataSource
    DataSet = Qr_Nucleo
    Left = 865
    Top = 13
  end
  object Qr_VerQtdAloj: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_RETIRADA'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_NOTAFISC, QTD_AVESABAT, PESO_AVE' +
        'S, TURMA)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_NOTAFISC, :QTD_AVESABAT, :PE' +
        'SO_AVES, :TURMA)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_RETIRADA'
      'SET'
      '  QTD_AVESABAT = :QTD_AVESABAT,'
      '  PESO_AVES = :PESO_AVES,'
      '  TURMA = :TURMA'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_NOTAFISC = :OLD_ID_NOTAFISC')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'Select A.ID_LOTE,           '
      '       F.QTD_ALOJF  , G.QTD_ALOJG, '
      '       NVL(A.QTD_ALOJ,0)  QTD_ALOJ,'
      '       NVL(NVL( QTD_ALOJG , F.QTD_ALOJF ),0) QTD_ALOJK '
      '  From INTEGRADO_ALOJAMENTO  A'
      '  LEFT JOIN ( SELECT ID_LOTE , SUM(Quantidade) QTD_ALOJF'
      '                FROM INTEGRADO_ALOJAMENTO_FORNEC'
      '               GROUP BY ID_LOTE  ) F'
      '   ON  A.ID_LOTE = F.ID_LOTE             '
      ' LEFT JOIN ( SELECT ID_LOTE , SUM(QTDE) QTD_ALOJG '
      '               FROM INTEGRADO_ALOJAMENTO_GALPAO'
      '              GROUP BY ID_LOTE   ) G'
      '   ON  A.ID_LOTE = G.ID_LOTE             '
      'WHERE  A.ID_LOTE = :ID_LOTE')
    FetchAll = True
    BeforeOpen = Qr_VerTurmaBeforeOpen
    AfterOpen = Qr_VerQtdAlojAfterOpen
    Left = 785
    Top = 167
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_VerQtdAlojID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_VerQtdAlojQTD_ALOJ: TFloatField
      FieldName = 'QTD_ALOJ'
    end
    object Qr_VerQtdAlojQTD_ALOJK: TFloatField
      FieldName = 'QTD_ALOJK'
    end
    object Qr_VerQtdAlojQTD_ALOJF: TFloatField
      FieldName = 'QTD_ALOJF'
      DisplayFormat = '#,###'
    end
    object Qr_VerQtdAlojQTD_ALOJG: TFloatField
      FieldName = 'QTD_ALOJG'
      DisplayFormat = '#,###'
    end
  end
  object Qr_RacEngorda: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_RETIRADA'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_NOTAFISC, QTD_AVESABAT, PESO_AVE' +
        'S, TURMA)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_NOTAFISC, :QTD_AVESABAT, :PE' +
        'SO_AVES, :TURMA)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_RETIRADA'
      'SET'
      '  QTD_AVESABAT = :QTD_AVESABAT,'
      '  PESO_AVES = :PESO_AVES,'
      '  TURMA = :TURMA'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_NOTAFISC = :OLD_ID_NOTAFISC')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select MAX(NM_PRODMATEEMBA) RACAO,  MAX(N.DT_SAIDNOTAFISC) DT_UL' +
        'TSAIDA, MIN(N.DT_SAIDNOTAFISC) DT_PRIMSAIDA'
      '  From Pedido_Venda P'
      ' Inner Join PEDIDO_VENDA_TIPO T'
      '    On P.ID_TIPOPEDIVEND = T.ID_TIPOPEDIVEND'
      ' Inner Join CLIENTE C'
      '    ON P.ID_CLIENTE = C.ID_CLIENTE'
      ' INNER JOIN Pedido_Venda_ITEM I '
      '    ON P.ID_PEDIVEND = I.ID_PEDIVEND  '
      ' Inner Join Material_Embalagem ME'
      '    On i.Id_Mateemba = ME.ID_Mateemba  '
      ' Inner Join PEDIDO_VENDA_NOTA_FISCAL PN'
      '    ON P.ID_PEDIVEND = PN.ID_PEDIVEND  '
      ' INNER JOIN NOTA_FISCAL N'
      '    ON N.ID_NOTAFISC = PN.ID_NOTAFISC   '
      ' inner Join Nota_Fiscal_Item NI'
      '    ON N.ID_NOTAFISC = NI.ID_NOTAFISC   '
      ' Where  N.FL_CANCNOTAFISC = '#39'N'#39
      '   AND ME.ID_PRODMATEEMBA in (  7304, 7305 )'
      ' AND P.ID_LOTE = :ID_LOTE')
    FetchAll = True
    BeforeOpen = Qr_VerTurmaBeforeOpen
    AfterOpen = Qr_VerQtdAlojAfterOpen
    Left = 785
    Top = 199
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_RacEngordaRACAO: TStringField
      FieldName = 'RACAO'
      Size = 40
    end
    object Qr_RacEngordaDT_ULTSAIDA: TDateTimeField
      FieldName = 'DT_ULTSAIDA'
    end
    object Qr_RacEngordaDT_PRIMSAIDA: TDateTimeField
      FieldName = 'DT_PRIMSAIDA'
    end
  end
  object Qr_Direitos: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_RETIRADA'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_NOTAFISC, QTD_AVESABAT, PESO_AVE' +
        'S, TURMA)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_NOTAFISC, :QTD_AVESABAT, :PE' +
        'SO_AVES, :TURMA)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_RETIRADA'
      'SET'
      '  QTD_AVESABAT = :QTD_AVESABAT,'
      '  PESO_AVES = :PESO_AVES,'
      '  TURMA = :TURMA'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_NOTAFISC = :OLD_ID_NOTAFISC')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'Select MAX(ID_RECURSO) ID_RECURSO'
      '  From Sct_Direitos_Us'
      ' Where ID_Modulo = 9 '
      '   And ID_JANELA = 43'
      '   And ID_RECURSO in (4,5)'
      '   AND ID_Usuario = :ID_Usuario')
    FetchAll = True
    Left = 785
    Top = 239
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_Usuario'
        Value = nil
      end>
    object Qr_DireitosID_RECURSO: TFloatField
      FieldName = 'ID_RECURSO'
    end
  end
end
