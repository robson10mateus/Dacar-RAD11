object FrmCorte: TFrmCorte
  Left = 454
  Top = 229
  Width = 800
  Height = 551
  VertScrollBar.Range = 58
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o de Cortes dos Pedidos'
  Color = clWindow
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 10
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 788
    Height = 455
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
    OnMouseMove = PageControl1MouseMove
    ExplicitWidth = 784
    ExplicitHeight = 454
    object TabCriterio: TTabSheet
      Caption = 'Crit'#233'rio'
      object Label6: TLabel
        Left = 312
        Top = 74
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
        Left = 304
        Top = 120
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
        Top = 59
        Width = 266
        Height = 390
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
        Top = 161
        Width = 493
        Height = 288
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
        Left = 377
        Top = 69
        Width = 144
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
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
        Left = 376
        Top = 116
        Width = 270
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnChange = EdExpreChange
      end
      object RGeou: TRadioGroup
        Left = 541
        Top = 63
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
        Left = 683
        Top = 59
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
        TabOrder = 5
        OnClick = BtIncluirClick
      end
      object BtLimpar: TBitBtn
        Left = 683
        Top = 88
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
        TabOrder = 7
        OnClick = BtLimparClick
      end
      object BtAtivar: TBitBtn
        Left = 683
        Top = 117
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
        TabOrder = 9
        OnClick = BtAtivarClick
      end
      object BPESQ: TBitBtn
        Left = 624
        Top = 118
        Width = 21
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
        TabOrder = 6
        Visible = False
        OnClick = BPESQClick
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 780
        Height = 44
        Align = alTop
        Color = clWindow
        ParentBackground = False
        TabOrder = 8
        ExplicitWidth = 776
        object Label1: TLabel
          Left = 319
          Top = 14
          Width = 48
          Height = 15
          Caption = 'Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtCodiProd: TEdit
          Left = 378
          Top = 11
          Width = 63
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = edtCodiProdExit
        end
        object BPesqProduto: TBitBtn
          Left = 443
          Top = 12
          Width = 21
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
          TabOrder = 2
          OnClick = BPesqProdutoClick
        end
        object edtNomeProd: TEdit
          Left = 464
          Top = 11
          Width = 293
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
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
      object grdados: TDBGrid
        Left = 0
        Top = 0
        Width = 780
        Height = 321
        Align = alTop
        Color = clWhite
        DataSource = DS
        FixedColor = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = 16
        TitleFont.Name = 'Arial'
        TitleFont.Pitch = fpVariable
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = grdadosDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_PEDIVEND'
            Title.Caption = 'Pedido'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_PEDIVEND'
            Title.Caption = 'Data Pedido'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Title.Caption = 'C'#243'd. Cli.'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_CLIENTE'
            Title.Caption = 'Nome Cliente'
            Width = 290
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_UNITITEMPEDIVEND'
            Title.Caption = 'Pre'#231'o Venda'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QN_EMBAITEMPEDIVEND'
            Title.Caption = 'Cx. Pedida'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QN_CAIXCORTITEMPEDIVEND'
            Title.Caption = 'Cortado'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QN_CAIXACORT'
            Title.Caption = 'Corte'
            Width = 55
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 321
        Width = 780
        Height = 104
        Align = alClient
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 13
          Top = 8
          Width = 353
          Height = 105
          Caption = 'Criterios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label4: TLabel
            Left = 16
            Top = 32
            Width = 48
            Height = 15
            Caption = 'Produto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 19
            Top = 65
            Width = 43
            Height = 15
            Caption = '% Pedi.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 168
            Top = 65
            Width = 58
            Height = 15
            Caption = 'Total Cxs.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtPercCort: TEdit
            Left = 70
            Top = 61
            Width = 82
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object EdNomeProd: TEdit
            Left = 71
            Top = 28
            Width = 265
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edtCaixCort: TEdit
            Left = 234
            Top = 61
            Width = 101
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnChange = edtCaixCortChange
          end
        end
        object GroupBox2: TGroupBox
          Left = 370
          Top = 8
          Width = 336
          Height = 105
          Caption = 'Totais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label10: TLabel
            Left = 13
            Top = 40
            Width = 39
            Height = 15
            Caption = 'Pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 91
            Top = 40
            Width = 31
            Height = 15
            Caption = 'Corte'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 170
            Top = 40
            Width = 71
            Height = 15
            Caption = 'Programado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 259
            Top = 40
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
          object Label14: TLabel
            Left = 156
            Top = 56
            Width = 4
            Height = 15
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 242
            Top = 56
            Width = 7
            Height = 15
            Caption = '='
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdtPedido: TEdit
            Left = 9
            Top = 56
            Width = 68
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edtCortado: TEdit
            Left = 88
            Top = 56
            Width = 66
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            OnChange = edtCortadoChange
          end
          object edtProgramado: TEdit
            Left = 167
            Top = 56
            Width = 73
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            OnChange = edtProgramadoChange
          end
          object EdtDiferenca: TEdit
            Left = 255
            Top = 56
            Width = 73
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
        end
        object btnCalcular: TBitBtn
          Left = 712
          Top = 63
          Width = 74
          Height = 25
          Caption = 'Calcular'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 16
          Font.Name = 'helvetica'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000DFDF9FA06060
            A06060A06060A06060A06060A06060A06060A06060A06060A06060303030FFFF
            FFFFFFFFFFFFFFFFFFFFDFDF6080800080400080600080400080600080400080
            4000804000806000804000606060FFFFFFFFFFFFFFFFFFFFFFFFDFDF60808000
            CFCFCF804000CFCFCF804000DFDFDFDFDFDFCFCFCF804000804000606060FFFF
            FFFFFFFFFFFFFFFFFFFFDFDF6080800080400080600080400080600080400080
            6000804000806000804000606060FFFFFFFFFFFFFFFFFFFFFFFFDFDF60808000
            CFCFCF804000CFCFCF804000CFCFCF804000CFCFCF804000804000606060FFFF
            FFFFFFFFFFFFFFFFFFFFDFDF6080800080400080600080400080600080400080
            6000804000806000804000606060FFFFFFFFFFFFFFFFFFFFFFFFDFDF60808000
            CFCFCF804000CFCFCF804000CFCFCF804000CFCFCF804000804000606060FFFF
            FFFFFFFFFFFFFFFFFFFFDFDF6080800080400080600080400080600080400080
            6000804000806000804000606060FFFFFFFFFFFFFFFFFFFFFFFFDFDF60808000
            CFCFCF804000CFCFCF804000CFCFCF804000CFCFCF804000804000606060FFFF
            FFFFFFFFFFFFFFFFFFFFDFDF6080800080400080600080400080600080400080
            6000804000806000804000606060FFFFFFFFFFFFFFFFFFFFFFFFDFDF60808000
            CFCFCF804000CFCFCF804000CFCFCF804000CFCFCF804000804000606060FFFF
            FFFFFFFFFFFFFFFFFFFFDFDF6080800080800080800080800080800080800080
            8000808000808000804000606060FFFFFFFFFFFFFFFFFFFFFFFFDFDF60404000
            DFDF9FFFFF7FFFFF7FFFFF7FFFFF7FFFFF7FFFFF7FBFBF00804000606060FFFF
            FFFFFFFFFFFFFFFFFFFFDFDF6040400060606060606060606060606060606060
            6060606060707030804000606060FFFFFFFFFFFFFFFFFFFFFFFFDFDF60BFBF00
            BFBF00BFBF00BFBF00BFBF00BFBF00BFBF00BFBF00BFBF009F5F00606060FFFF
            FFFFFFFFFFFFFFFFFFFF30303060606060606060606060606060606060606060
            6060606060606060606060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 2
          OnClick = btnCalcularClick
        end
      end
    end
    object TabDetalhe: TTabSheet
      Caption = 'Detalhe'
      ImageIndex = 1
      object Label16: TLabel
        Left = 14
        Top = 15
        Width = 39
        Height = 15
        Caption = 'Pedido'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 14
        Top = 60
        Width = 68
        Height = 15
        Caption = 'Data Pedido'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 138
        Top = 58
        Width = 73
        Height = 15
        Caption = 'Data Entrega'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 14
        Top = 105
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 89
        Top = 105
        Width = 75
        Height = 15
        Caption = 'Nome Cliente'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 14
        Top = 150
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 88
        Top = 150
        Width = 90
        Height = 15
        Caption = 'Nome Vendedor'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 12
        Top = 29
        Width = 64
        Height = 23
        DataField = 'ID_PEDIVEND'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'helvetica'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 12
        Top = 74
        Width = 112
        Height = 23
        DataField = 'DT_PEDIVEND'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'helvetica'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 135
        Top = 74
        Width = 115
        Height = 23
        DataField = 'DT_ENTRPEDIVEND'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'helvetica'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 12
        Top = 119
        Width = 64
        Height = 23
        DataField = 'ID_CLIENTE'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'helvetica'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit3: TDBEdit
        Left = 87
        Top = 119
        Width = 426
        Height = 23
        DataField = 'NM_CLIENTE'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'helvetica'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 12
        Top = 164
        Width = 64
        Height = 23
        DataField = 'ID_VENDEDOR'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'helvetica'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit7: TDBEdit
        Left = 85
        Top = 164
        Width = 428
        Height = 23
        DataField = 'NM_VENDEDOR'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'helvetica'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object grpProduto: TGroupBox
        Left = 12
        Top = 197
        Width = 512
        Height = 126
        Caption = 'Dados do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'helvetica'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object Label23: TLabel
          Left = 11
          Top = 20
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = DBEdit8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 87
          Top = 20
          Width = 123
          Height = 15
          Caption = 'Descri'#231#227'o do Produto'
          FocusControl = DBEdit9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 11
          Top = 69
          Width = 72
          Height = 15
          Caption = 'Pre'#231'o Venda'
          FocusControl = DBEdit10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 377
          Top = 69
          Width = 109
          Height = 15
          Caption = 'Embalagens Atuais'
          FocusControl = DBEdit11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 243
          Top = 69
          Width = 125
          Height = 15
          Caption = 'Embalagens Cortadas'
          FocusControl = DBEdit12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 120
          Top = 69
          Width = 112
          Height = 15
          Caption = 'Embalagens Pedido'
          FocusControl = DBEdit13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit8: TDBEdit
          Left = 10
          Top = 34
          Width = 64
          Height = 23
          DataField = 'ID_PRODMATEEMBA'
          DataSource = DS
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 85
          Top = 34
          Width = 413
          Height = 23
          DataField = 'NM_PRODMATEEMBA'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 10
          Top = 83
          Width = 97
          Height = 23
          DataField = 'VL_UNITITEMPEDIVEND'
          DataSource = DS
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 375
          Top = 83
          Width = 123
          Height = 23
          DataField = 'QN_EMBAITEMPEDIVEND'
          DataSource = DS
          TabOrder = 3
        end
        object DBEdit12: TDBEdit
          Left = 240
          Top = 83
          Width = 127
          Height = 23
          DataField = 'QN_CAIXCORTITEMPEDIVEND'
          DataSource = DS
          TabOrder = 4
        end
        object DBEdit13: TDBEdit
          Left = 117
          Top = 83
          Width = 114
          Height = 23
          DataField = 'QN_CAIXORIGITEMPEDIVEND'
          DataSource = DS
          TabOrder = 5
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 788
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
    ExplicitWidth = 784
    object SB_PRIMEIRO: TSpeedButton
      Left = 0
      Top = 0
      Width = 40
      Height = 37
      Hint = 'Primeiro'
      Enabled = False
      Flat = True
      Glyph.Data = {
        0E100000424D0E100000000000003600000028000000330000001A0000000100
        180000000000D80F0000120B0000120B00000000000000000000FEFEFFFCFCFC
        FDFDFEF6F7FAD1D2E7CACBE4C9CAE4C8C9E3C5C7E2C9CAE4C9CAE4C9CAE4C9CA
        E4C9CAE4C9CAE4C9CAE4C9CAE4C9CAE4C9CAE4C9CAE4CBCAE4C2C3E0C2C3E1E5
        E7F2FFFFFFFFFFFFFCFCFCFDFDFDF6F6F6CECECEC2C2C2BFBFBFC0C0C0BDBDBD
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C2C2C2BBBBBBB5B5B5DFDFDFFFFFFFFFFFFF000000FFFFFFFFFFFEF1F1F8D8
        D8EBDFDFEED7D8EBD7D8EBD8D9ECD7D8EBD5D5EBD7D8EBD7D8EBD7D8EBD7D8EB
        D7D8EBD7D8EBD7D8EBD7D8EBD7D8EBD7D8EBD7D8EBDCDDEDE5E5F2C1C2E0D2D3
        E9FFFFFFFFFFFFF3F3F3D4D4D4DADADAD2D2D2D1D1D1D3D3D3D1D1D1CECECED2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D1D1D1
        D5D5D5E3E3E3BCBCBCC6C6C6FEFEFE000000FFFFFFFCFCFDE5E5F1D5D6EBD4D5
        E9D5D6EAD5D6EAD5D6EAD5D6EAD6D7EBD3D4E9D5D6EAD5D6EAD6D7EAD5D6EAD5
        D6EAD5D6EAD5D6EAD5D6EAD5D6EAD5D6EAD5D6EAD4D5EAE1E2F0BDBEDEF3F3F9
        FFFFFEE3E3E3CECECECECECECFCFCFCFCFCFCFCFCFCFCFCFD0D0D0CDCDCDCECE
        CED0D0D0D0D0D0CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCD
        CDCDDADADABABABAEBEBEB000000FFFFFEF2F2F8D8D8EBD7D8EBD8D8EBD8D8EB
        D8D8EBD8D8EBD8D8EBD8D8ECD9D9EBD5D7EAD7D8EBD6D7EAD8D8EBD8D8EBD8D8
        EBD8D8EBD8D8EBD8D8EBD8D8EBD8D8EBD8D8EBD6D8EBE3E3F1CECFE7F8F7F5D3
        D3D3D1D1D1D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D3D3D3CFCFCFD1D1D1
        D0D0D0D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D1D1
        D1DDDDDDC7C7C7000000FFFFFFE7E9F3D7D7ECDBDBEDDBDBEDDBDBEDDBDBEDDB
        DBEDDBDBEDDBDBEDDBDBEDDBDBECDBDCEDDCDDEEDADAEBDBDBEDDBDBEDDBDBED
        DBDBEDDBDBEDDBDBEDDBDBEDDBDBEDD9D9EBE3E3F1CFD0E7EEEEECCFCFCFD5D5
        D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D6D6D6D7D7D7D4
        D4D4D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D4D4D4DDDDDD
        CACACA000000FFFFFFE9E9F3DADAEDDCDDEEDCDDEEDCDDEEDCDDEEDCDDEEDCDD
        EEDCDDEEDCDDEEDCDDEDDCDEEFDEDFEEDFE0EFDBDCEDDBDCEDDCDDEEDCDDEEDC
        DDEEDCDDEEDCDDEEDCDDEEDCDCEEE2E2F0D4D4EAEDEDEBD3D3D3D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D9D9D9DBDBDBD6D6
        D6D6D6D6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7DDDDDDCECECE00
        0000FEFEFFE7E9F3DCDCEDDFDEEEDFDEEEDFDEEEDFDEEEDFDEEEDFDEEEDFDEEF
        DEDEEEDEDEEFDDDDEDE0E0EFDFDFEFE0E0EFDDDEEEDFDEEEDFDEEEDEDEEEDDDD
        EEDEDEEFDEDEEEDEDEEEE3E3F0D0D2E9ECECEAD5D5D5DADADAD9D9D9D9D9D9D9
        D9D9D9D9D9D9D9D9D9D9DAD9D9D9D9D9D9D7D7D7DBDBDBDADADADBDBDBD8D8D8
        D9D9D9D9D9D9D9D9D9D8D8D8D9D9D9D9D9D9D9D9D9DFDFDFCACACA000000FEFE
        FEE8E9F3DEDFEFE1E2F0E1E2F0E1E2F0E1E2F0E1E2F0E1E2F0DFE0EEE9EAF4FC
        FDFDF6F6FADEDFEFE1E2F0E1E2F0E4E4F1E1E2F0E0E1F0E1E2F0F7F6FAFCFDFE
        E7E8F3DEDEEEE5E7F3D0D1E9ECECEAD9D9DADDDDDDDDDCDDDDDCDDDDDCDDDDDC
        DDDCDCDDDBDBDAE4E4E4FCFCFBF7F7F8DBDBDBDDDDDDDDDDDDE0E0E0DCDCDDDC
        DCDCDDDDDDF2F2F2FEFEFEE4E4E4DADADAE1E1E1CBCBCB000000FEFEFDE9E9F4
        E2E2F0E3E3F1E3E3F1E3E3F1E3E3F0E3E3F0E9E9F2FCFCFED8D9EC3D3FA07B7D
        BEF8F8FCE2E2F0E3E3F0E2E3F0E3E3F0EFEFF7FBFCFD9092C82C2F98DDDDEEE7
        E7F2EBEBF4CED0E7ECEDEADEDFDDDFE0DEDFE0DEDFE0DEDFE0DEDFE0DEE3E4E2
        FAFAFAE0DFE12D2C2D525152F4F4F3DFE0DEDEE0DDDEDFDDDFDEDDEAEAECFCFB
        FC908F92000000D4D4D4E4E5E3E8E9E6CBCCCB000000FEFEFEE8E9F3E5E5F1E6
        E6F2E6E6F2E5E5F1ECECF5F6F6FAE4E4F17273B914178A1B1F8E6567B4FFFFFF
        E4E4F1E6E6F2F5F5F9EBECF5C2C2DF4547A31B1E8F272B95D0D1E7EEEFF6EDED
        F5CECFE7EBECE9E0E2DFE2E3E1E2E3E1E1E2E0E8E9E7F3F4F3ECECEB686A6800
        00000000003A393BFEFFFEE1E2E0E2E3E1F1F2F0EDEDECC0C0C0353436000000
        000000C1C1C1EEEFEDE9EAE8C9CAC9000000FEFDFDE9EAF4E8E8F3E8E9F3E8E9
        F4FBFBFCE6E6F2A0A2D0282B95171A8D2A2D961D208F6467B3FFFFFFEEEFF6FC
        FCFEC4C5E16062B12D30973E41A14447A33A3D9DD0D1E8F1F1F8EFF0F6CDCDE6
        EDEDE9E6E5E5E6E6E5E4E5E4F9F9F9E9EAE99797971415140000000707080000
        00383837FFFFFFEBECEBFDFDFDC1C1C15757570707071E1E1E2626250C0C0CC1
        C1C1F1F2F1EDEDEDC9C9C9000000FEFDFDEAEBF5EBEBF4E9E9F4FFFFFFA8A9D4
        4245A2272A952D309833359A33359A2326936C6FB6FFFFFFE4E5F17172B92F32
        98262A953C3E9E4649A34D51A7393B9DD6D6EAF2F2F8F3F3F8CCCDE5EEECEAED
        E8E9E8E6E6FFFFFFA8A8A8272727060505080909101111101110030302404040
        FFFFFFEDEDED6463641111110302021919192728283030300A0A0AC8C8C8F1F1
        F1F1F1F0C9C8C9000000FCFCFDEBEBF5EBEBF5FFFFFF888BC56A6BB68385C22B
        2E96494BA54D4FA74E50A83E42A08586C3ECEDF65456AAA1A3D135379B3F41A0
        4C4EA74A4CA55F61B05F61B0ECECF6F5F5F9F4F3F9CBCCE5ECECEAEAEBE8FFFF
        FF9090923C3C3B8484840806062C2728342F303631312321225D5D5DFBFBFB30
        30308D8D8D2323231A1818332D2F302D2D454343373535E4E4E4F6F7F6F0F1EF
        C8C9C7000000FCFCFDEAEAF4FAFAFCFFFFFFEEEFF75658ACB5B6DAD1D2E85154
        A93D3F9F4042A1383B9D7D7EC0FFFFFF999ACC6969B5F5F7FA7E80BF3F42A13C
        3E9F3E409E5E60B0EAEBF5FFFFFEF8F8FBCACBE5EBEBE7F8F9F7FFFFFFFFFFFF
        3A3A3A959595D3D2D24243431C1D1D1E1E1E191919565656FFFFFF9E9E9E4545
        45E7E7E7807F7F2020201B1A1A201E1E333131E3E4E4FFFFFFF7F9F7C7C7C600
        0000FCFCFDEDEDF6FDFDFDFBFBFCFFFFFFFFFFFF9899CC787BBDBABBDD999ACC
        5B5DAE2326927779BCFFFFFFFFFFFFE0E1EF6265B2ABACD5B4B5D97E80BF3B3D
        9E2E3198E5E4F2FFFFFFFCFCFDC9CAE4EEEDEBFCFDFCFBFBFBFFFFFFFFFFFF97
        97975C5C5CACACAC8D8D8D4747470202024C4C4CFFFFFFFFFFFFE6E6E6545454
        909191ADADAD6E6E6E232222000000D9D9D9FFFFFFFCFCFCC7C7C7000000FCFC
        FDEEEEF6FDFDFDFAFAFCFAFAFCFCFCFDFFFFFFE6E7F29294C98283C1A9AAD490
        92C87173B9FFFFFFF8F8FBFFFFFEFFFFFFAAABD58384C28B8DC5BEBEDF4D4EA6
        DEDEEFFFFFFFFDFDFECDCDE5EEEEEBFEFEFEFAFAFAFAFAFAFBFBFBFFFFFFEAEA
        EA8A8A8A6C6C6C9292928A8A8A505050FFFFFFF9F9F9FFFFFFFFFFFFACACAC6F
        6F6F767676AFAFAF2E2E2ED1D1D1FFFFFFFDFDFDCACACA000000FCFCFDEEEEF6
        FBFBFCF9F9FBF9F9FBF9F9FBF9F9FCFEFEFEFFFFFFD3D4E98485C231359A5B5D
        AEFFFFFFF6F6FAF8F8FBF9F9FCFFFFFFF3F3F9B1B3D85355AA212593D9DAECFF
        FFFFFFFFFFCBCBE5EEEEECFCFCFCF9F9F9F9F9F9F9F9F9F9F9F9FEFEFEFFFFFF
        D0D0D07C7B7B1313132F2F2FFFFFFFF6F6F6F8F8F8F9F9F9FFFFFFF7F7F7ABAB
        AB414141000000CACACAFFFFFFFFFFFFC9C9C9000000FCFCFDEDEDF5FBFBFCF8
        F8FCF9F9FCF9F9FCF9F9FCF8F8FBF9F9FCFFFFFFFFFFFFCCCCE6E8E8F3FCFCFD
        F8F8FBF9F9FCF8F8FBF9F9FCFBFBFDFFFFFFFFFFFFB5B5DBFFFFFFF8F8FBFFFF
        FFC8C8E3EDEDEAFBFBFBF7F7F7F7F8F8F7F8F8F7F7F7F7F7F7F7F7F7FFFFFFFF
        FFFFCECECEDCDDDDFBFBFBF8F8F8F8F8F8F7F7F7F7F7F7FAFAFAFFFFFFFFFFFF
        A8A9A9FFFFFFF8F8F8FFFFFFC5C5C5000000FCFCFDEDEDF5F9F9FBF8F8FBF8F8
        FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF7F6FBFFFFFEFCFCFDF7F7FAF7F7FAF8
        F8FBF8F8FBF8F8FBF8F8FBF7F7FAF9F8FCFFFFFFF8F8FBF8F8FBFFFFFFC8C9E3
        EDEDEAFAFAFAF8F7F7F9F7F7F8F7F7F8F7F7F8F7F7F8F7F7F9F7F7F8F5F5FFFD
        FDFFFEFEF8F6F6F8F6F6F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7FAF7F7FFFFFFF9
        F6F6F8F7F7FFFFFFC5C5C5000000FCFCFDEBECF5F8F8FBF5F5FAF5F5FAF5F5FA
        F5F5FAF6F6FAF6F6FAF4F5F9F3F4F9F5F5F9F5F5FAF5F5FAF5F5FAF5F5FAF5F5
        FAF5F5FAF5F5FAF5F5FAF5F5FAF5F5FAF5F5FAF5F5FAFFFFFEC7C7E2ECECE9F8
        F8F8F5F4F4F7F4F4F7F4F4F7F4F4F6F5F5F8F5F5F5F3F3F5F2F2F6F4F4F6F4F4
        F7F4F4F7F4F4F7F4F4F7F4F4F7F4F4F7F4F4F7F4F4F6F4F4F6F4F4F7F4F4F5F4
        F4FFFFFFC4C4C4000000FCFCFDEBECF5F8F8FBF5F5F9F5F5FAF5F5FAF5F5FAF6
        F6FAF3F3F8F3F3F8F4F5F9F6F5FAF5F5FAF5F5FAF5F5FAF5F5FAF5F5FAF5F5FA
        F5F5FAF5F5FAF5F5FAF5F5FAF5F5FAF5F5F9FDFDFECBCCE5EAEAE8F8F8F8F4F4
        F4F5F4F4F5F4F4F5F4F4F5F5F5F2F1F1F2F2F2F4F4F4F5F4F4F5F4F4F5F4F4F5
        F4F4F5F4F4F5F4F4F5F4F4F5F4F4F5F4F4F5F4F4F5F4F4F5F4F4F4F4F4FDFDFD
        C9C9C9000000FCFCFDEBEBF5F6F6FAF4F4F8F4F4F9F4F4F9F3F4F9F0F0F7F4F4
        F8F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4
        F4F9F4F4F9F4F4F9F3F3F8F6F6FAF1F1F8E3E3F0E9E9E8F7F7F7F2F2F2F3F3F3
        F3F3F3F3F3F3EFEFEFF1F1F1F3F3F3F2F3F3F3F3F3F2F3F3F2F3F3F2F3F3F2F3
        F3F2F3F3F2F3F3F2F3F3F2F3F3F2F3F3F3F3F3F3F3F3F3F3F3F0F0F0E1E1E100
        0000FFFFFFF0F0F7EAEAF4F5F5F9F4F4F9F3F3F9F0F0F7F3F3F9F3F3F9F3F3F9
        F3F3F8F3F3F8F3F3F8F3F3F8F3F3F8F3F3F8F3F3F8F3F3F8F3F3F8F3F3F8F3F3
        F8F3F3F8F4F4F9F6F6FAE0E1EFFFFFFFF3F3F3E4E4E4F6F6F6F2F3F3F3F2F2F1
        EFEFF3F0F0F5F2F2F4F2F2F4F2F2F4F2F2F4F2F2F4F2F2F4F2F2F4F2F2F4F2F2
        F4F2F2F4F2F2F4F2F2F5F2F2F3F2F2F2F2F2F4F4F4DFDFDFFDFDFD000000FFFF
        FFF9F9FCEAEBF5EAE9F3F3F4F9F1F2F8F4F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3
        F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F5F5FA
        F2F2F8E7E7F3F3F4F9FFFFFFFBFBFBE8E8E8E6E6E6F1F1F1F1F0F0F4F1F1F4F2
        F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3F2F2F3
        F2F2F3F2F2F4F2F2F4F3F3F2F2F2E4E4E4F0F0F0FFFFFF000000FFFFFFFFFFFF
        FBFCFDEAEAF4E3E4F1E4E5F2E9EAF4E8E9F3E8E9F3E8E9F3E8E9F3E8E9F3E8E9
        F3E8E9F3E8E9F3E8E9F3E8E9F3E8E9F3E8E9F3E8E9F3E8E9F3E9EAF4ECECF5F6
        F6FAFEFEFFFEFEFEFFFFFFFCFCFCE8E8E8E0E0E0E0E0E0E8E7E7E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E9E9E9F3F3F3FEFEFEFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFEFBFBFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD
        FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFDFDFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFCFCFCFBFCFCFBFCFCFBFCFCFB
        FCFCFBFCFCFBFCFCFBFCFCFBFCFCFBFCFCFBFCFCFBFCFCFBFCFCFBFCFCFBFCFC
        FBFBFBFCFCFCFFFFFFFFFFFFFFFFFF000000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_PRIMEIROClick
      OnMouseMove = SB_PRIMEIROMouseMove
    end
    object SB_ANTERIOR: TSpeedButton
      Left = 40
      Top = 0
      Width = 40
      Height = 37
      Hint = 'Anterior'
      Enabled = False
      Flat = True
      Glyph.Data = {
        460E0000424D460E000000000000360000002800000030000000190000000100
        180000000000100E0000120B0000120B00000000000000000000FFFFFEFFFFFF
        F1F1F8E9EAF3E9E9F3E8E9F3E9E9F3E9E9F3E9E9F3E9E9F3E9E9F4E8E9F3E8E8
        F3E8E8F3E8E8F3E9E9F3E9E9F3E9E9F3E8E9F3E9E9F4EAEAF4F4F4F9FFFFFFFF
        FFFFFEFEFEFFFFFFF2F2F2E6E6E6E6E6E6E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5
        E5E5E5E5E5E5E5E5E5E4E4E4E4E4E4E6E6E6E5E5E5E5E5E5E5E5E5E6E6E6E7E7
        E7EFEFEFFFFFFFFFFFFFFFFFFFE6E7F2F0F0F7F4F4FAF4F4F9F4F4F9F4F4F9F4
        F4F9F4F4F9F4F4F9F4F4F9F4F4F9F3F3F9F2F2F8F2F2F8F3F4F9F4F4F9F4F4F9
        F4F4F9F4F4F9F5F5FAEDEDF6ECECF5FFFFFFFFFFFFE8E8E8EAEAEAF4F4F4F2F2
        F2F3F3F3F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F3F3F3F2F2F2F0F0F0F1F1F1F2
        F2F2F3F3F3F2F2F2F3F3F3F2F2F2F4F4F4EDEDEDE4E4E4FFFFFFF3F3F9F0F0F7
        F4F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4
        F9F3F4F9F3F4F9F0F0F7F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F4F5F9EBEBF4F9
        F9FCF6F6F6E9E9E9F3F3F3F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2
        F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2EFEFEFF2F2F2F2F2F2F2F2F2F2F2F2F2F2
        F2F3F3F3EDEDEDF1F1F1DFDFEFF8F8FBF4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4
        F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F1F2F8F4F4F9
        F4F4F9F4F4F9F4F4F9F4F4F9F7F7FAEDEDF8D9D9D8F8F8F8F3F3F3F3F3F3F3F3
        F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F0F0F0F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F5F5F5E7E7E7DADAECF8F8FB
        F6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6
        FAF6F6FAF6F6FAF9F9FBFFFFFFFFFFFFF6F6FAF6F6FAF6F6FAF6F6FAF5F5FAF0
        F0FACCCCCAF9F9F9F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F7F7F7FFFFFFFFFFFFF6F6F6F5F5F5F5F5
        F5F5F5F5F5F5F5E9E9E9DDDDEEF9F9FBF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6
        F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF7F7FBFFFFFFF8F8FB6365B25253A9
        FFFFFFF7F7FBF7F7FAF7F7FAF7F7FBEEEEF9C8C8C6FAFAFAF5F5F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F6F6F6FFFFFFFF
        FFFF5E5E5E222222F7F7F7F6F6F6F6F6F6F6F6F6F7F7F7E5E5E5DEDEEEFAFAFC
        F7F7FBF7F7FBF7F7FBF7F7FBF7F7FBF7F7FBF7F7FBF7F7FBF7F7FBF7F7FBFFFF
        FFFFFFFF9799CC15198C4043A11D2090F4F4F8F7F7FBF7F7FBF6F6FAF8F7FBF0
        F1FAC8C8C7FCFCFCF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6FEFEFEFFFFFF9E9E9E0000001B1B1B000000CECECEFAFAFAF6F6
        F6F5F5F5F7F7F7E9E9E9DEDEEEFCFCFDF9F9FCF9F9FCF9F9FCF9F9FCF9F9FCF9
        F9FCF9F9FCF9F9FCFCFCFDFFFFFFC9CAE43033992C2F97D1D1E8B6B7DB1E2190
        F6F6FBFCFCFDF6F6FAF3F4F9F8F8FBF1F1FBC8C8C7FDFDFDF8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FBFBFBFFFFFFD6D6D61E1E1E000000B4
        B4B4C8C8C8000000D4D4D4FFFFFFF6F6F6F3F3F3F7F7F7EAEAEADFDFEEFCFCFD
        F8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBFAFAFCFFFFFFF3F3F95B5DAE171B
        8DA0A1D0E5E6F24F51A832349A2C2E97F7F7FAFCFBFDF8F8FBF7F7FAF9F9FCEF
        F0FAC9C9C8FEFEFEF8F8F8F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FFFFFF
        FFFFFF575757000000767676EBEBEB4444440C0C0C0C0C0CD4D4D4FFFFFFF8F8
        F8F6F6F6F9F9F9E8E8E8DFDFEFFDFDFEFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFF
        FFFFFFFFFF8F90C7181C8D6A6CB5F2F2F87E80BF2F31984043A14447A32E3198
        F8F8FBFAFAFCF9F9FCFAFAFCFCFCFDF1F2FACACAC9FFFFFFFAFAFAFAFAFAFAFA
        FAFAFAFAFAFAFAFFFFFFFFFFFF939393000000393939EBEBEB8181810B0B0B1F
        1F1F252525101010D6D6D6FEFEFEF8F8F8FBFBFBFCFCFCEAEAEADDDDEEFFFFFE
        FCFCFDFCFCFDFCFCFDFDFDFDFFFFFFBFC0DF3033993E40A0DEDFEEB4B5DA3437
        9B3F41A04649A44749A44749A432349AF6F6FAFEFDFEFCFCFDFCFCFDFEFDFEF0
        F0FAC7C7C6FFFFFFFCFCFCFCFCFCFCFCFCFCFCFCFFFFFFCBCBCB1B1B1B0F0F0F
        C7C7C7BEBEBE1A1A1A1C1C1C272727282828282828141414D5D5D5FFFFFFFCFC
        FCFCFCFCFEFEFEE8E8E8DADAECFBFBFDFEFEFEFDFDFDFEFEFEFFFFFF5A5CAE2E
        3198B4B6DADFE0EF4D4FA73B3E9E484BA5494CA5494CA5494CA5484BA534379B
        FAFAFCFFFFFEFCFCFDFEFEFEF7F6FAEFEFFAC6C6C5F9F9F9FEFEFEFDFDFDFDFD
        FDFFFFFF565656050505909090E8E8E83E3E3E1818182929292B2B2B2B2B2B2B
        2B2B2A2A2A161616D9D9D9FFFFFFFCFCFCFEFEFEF9F9F9E5E5E5DCDCEDEEEFF7
        F7F7FAFFFFFFFFFFFFE0E1F0232692888AC48385C23C3F9F4D4FA75051A85051
        A85051A85051A85052A84F51A83B3E9FFCFDFDFFFFFFFFFFFFF4F5F9EDEDF5F0
        F0FAC8C8C7EDEDEDF4F4F4FFFFFFFFFFFFFCFCFC0000005C5C5C8787871A1A1A
        2E2E2E3232323232323232323232323232323131311F1F1FDCDCDCFFFFFFFFFF
        FFF5F5F5EBEBEBE6E6E6DADCECEEEEF6EBEBF5EAEAF4EEEEF6FAF9FCBFC0E026
        2994191D8E2D30982E31982E31982E31982E31982E31982E31982E3198181C8D
        EDEEF6F0F1F7EAEAF4EBEBF5ECECF5F0F0FAC7C7C6EDEDEDE8E8E8E8E8E8EBEB
        EBF5F5F5CBCBCB1313130000000A0A0A0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
        0B0B0C0C0C000000C9C9C9F2F2F2E7E7E7E8E8E8E9E9E9E6E6E6DBDBEDEAEAF5
        E7E8F3E8E8F3E7E8F3E7E8F3F0F0F7FFFFFE888AC415188B212492292C96292C
        962A2D962A2D962A2D962A2D9615188BE8E8F3EAEAF4E8E8F3E8E8F3E7E8F3F0
        F0FAC6C6C5E9E9E9E4E4E4E4E4E4E4E4E4E4E4E4ECECECFFFFFF8C8C8C000000
        000000060606060606060606070707070707070707000000C3C3C3EAEAEAE4E4
        E4E5E5E5E4E4E4E6E6E6D8D9ECE8E8F3E6E6F2E6E6F2E6E6F2E6E6F2E6E6F2E7
        E7F2F5F5F9E8E9F35B5EAE191C8D2B2E972E31982E31982E31982E3198191D8E
        E6E6F2E8E8F3E6E6F2E6E6F2E5E5F1F0F1FBC5C5C4E6E6E6E2E2E2E2E2E2E2E2
        E2E2E2E2E2E2E2E2E2E2F1F1F1F0F0F05757570000000606060C0C0C0C0C0C0C
        0C0C0C0C0C000000C1C1C1E8E8E8E2E2E2E2E2E2E1E1E1E6E6E6D8D9EBE4E4F1
        E5E5F1E4E5F1E4E5F1E4E5F1E4E5F1E4E5F1E4E4F1E8E8F3F9F9FBC2C3E1383B
        9D23269331349932359A32359A1E2190E3E3F1E7E7F2E4E5F1E4E5F1E4E4F1F0
        F0FAC6C6C5E0E0E0E1E1E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E3E3E3
        F5F5F5CBCBCB2626260000000E0E0E101010101010000000BFBFBFE6E6E6E0E0
        E0E0E0E0E0E0E0E5E5E5DADAECE1E1EFE0E0EFE2E3F0E1E2F0E1E2F0E1E2F0E1
        E2F0E1E2F0DFDFEFE0E1F0E8E9F3F7F7FB9798CB282A952E319837399C232693
        E0E0EFE4E5F1E1E2F0E1E2F0E0E1EFF0F0FAC7C7C6DEDEDEDADADADEDEDEDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDADADADBDBDBE3E3E3F8F8F89A9A9A0B0B0B09
        0909151515030303BCBCBCE3E3E3DDDDDDDDDDDDDCDCDCE5E5E5D9DAECE0E0EF
        DEDEEEDEDEEEE0DFEFDFDFEFDFDFEFDFDFEFDCDDEEDFDFEEDFDFEFDFDFEFE0E0
        EFEBEBF4E8E8F36E70B72629941C1F8FE2E2F0E1E1EFDFDFEFDFDFEFDEDEEEF0
        F1FAC7C7C6DCDCDCD9D9D9D8D8D8DBDBDBDADADADADADADADADAD7D7D7D9D9D9
        DADADADADADADBDBDBE5E5E5ECECEC696969020202000000C0C0C0DFDFDFDADA
        DADADADAD9D9D9E5E5E5D9DAECDDDDEEDDDDEEDBDCEDDBDCEDDDDEEEDDDDEEDA
        DBEDDDDDEEDDDDEEDDDDEEDDDDEEDDDDEEDDDDEEDFDFEFEDEDF5C3C4E1B3B4D9
        E4E4F1DDDDEEDDDDEEDDDDEEDBDBEDF1F1FAC9C9C7D9D9D9D8D8D8D6D6D6D5D5
        D5D8D8D8D8D8D8D6D6D6D8D8D8D8D8D8D7D7D7D7D7D7D7D7D7D7D7D7D9D9D9E8
        E8E8C7C7C79A9A9AE3E3E3D8D8D8D7D7D7D7D7D7D6D6D6E5E5E5D6D6EADADBEC
        DADBECDBDBECDADBECD8D9EBD8D9EBDADAECDBDBECDADBECDADBECDADBECDADB
        ECDADBECDADBECDADBECDFDFEEE0E0EFDADBECDADBECDADBECDADBECD7D7EBF5
        F5FDC4C4C3D5D5D5D5D5D5D5D5D5D5D5D5D3D3D3D2D2D2D4D4D4D5D5D5D5D5D5
        D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D8D8D8DCDCDCD5D5D5D5D5D5D5D5
        D5D5D5D5D2D2D2E8E8E8CBCBE5DADBEDD8D9EBD9D9EBD9D9EBD9D9EBD6D7EBD8
        D9EBD8D8EBD9D9EBD9D9EBD9D9EBD9D9EBD9D9EBD9D9EBD9D9EBD9D9EBD9D9EB
        D9D9EBD9D9EBD9D9EBD8D8EBD7D8EBFFFFFFBEBEBDD9D9D9D2D2D2D3D3D3D3D3
        D3D2D2D2D0D0D0D2D2D2D2D2D2D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
        D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D2D2D2CECECEF6F6F6CDCDE6E3E3F1
        D4D5E9D5D6EAD4D5EAD6D7EBD6D8EBD6D7EAD3D4E9D5D6EAD6D7EBD6D7EAD6D7
        EAD6D7EAD6D7EAD6D7EAD6D7EAD6D7EAD6D7EAD6D7EAD4D5EAD3D4E9EBEBF5FF
        FFFFCCCCCCD6D6D6D0D0D0CFCFCFCECECED0D0D0D1D1D1D0D0D0CECECECECECE
        D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0CECE
        CECCCCCCE4E4E4FFFFFFFFFFFFB4B5D9DDDDEEDDDDEED5D5EAD5D5EAD5D5EAD5
        D5EAD5D5EAD2D3E9D4D4E9D5D5EAD5D5EAD5D5EAD5D5EAD5D5EAD5D5EAD5D5EA
        D4D5EAD5D5EADFE0EFDBDCEDF8F8FBFFFFFFFFFFFFB0B0B0D0D0D0DBDBDBCECE
        CECECECECECECECECECECECECECCCCCCCDCDCDCECECECECECECECECECECECECE
        CECECECECECECECECECECECECECED9D9D9D6D6D6F3F3F3FFFFFFFFFFFFFFFFFF
        D4D5E9C8C9E4D1D2E8D1D2E8D1D2E8D1D2E8D1D2E8D2D2E8D0D1E8D1D1E7D1D2
        E8D1D2E8D1D2E8D1D2E8D1D2E8D1D2E8D1D2E8D4D5EADADAECFCFCFDFFFFFFFF
        FFFFFFFFFFFFFFFFD6D6D6BDBDBDCACACACACACACACACACACACACACACACACACA
        CACACAC9C9C9CACACACACACACACACACACACACACACACACACACACACACDCDCDD3D3
        D3F7F7F7FFFFFFFFFFFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_ANTERIORClick
      OnMouseMove = SB_ANTERIORMouseMove
    end
    object SB_PROXIMO: TSpeedButton
      Left = 80
      Top = 0
      Width = 40
      Height = 37
      Hint = 'Pr'#243'ximo'
      Enabled = False
      Flat = True
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D0000120B0000120B00000000000000000000FFFFFFFFFFFF
        EBEBF5D9DAECCECEE6CCCDE6CCCDE6CCCDE6CCCDE6CCCDE6CCCDE6CDCDE6CCCD
        E5CBCCE5CDCDE6CCCDE6CCCDE6CCCDE6CCCDE6CDCEE6C6C7E2D6D7EBFFFFFFFF
        FFFFFFFFFFFFFFFFEBEBEBD4D4D4C7C7C7C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
        C4C4C4C5C5C5C4C4C4C3C3C3C5C5C5C4C4C4C4C4C4C4C4C4C4C4C4C6C6C6BEBE
        BECCCCCCFFFFFFFFFFFFFFFFFFEDEDF5DEDEEED5D5EAD4D5EAD5D5EAD5D5EAD5
        D5EAD5D5EAD5D5EAD5D5EAD5D5EAD5D5EAD4D4E9D3D4E9D5D5EAD5D5EAD5D5EA
        D6D6EAD2D3E8DDDDEEDADAECBDBDDEFFFFFFFFFFFFEDEDEDD8D8D8CFCFCFCDCD
        CDCECECECECECECECECECECECECECECECECECECECECECECECECDCDCDCCCCCCCE
        CECECECECECECECECFCFCFCBCBCBD6D6D6D8D8D8ADADADFFFFFFFDFDFEDFDFEF
        D3D5E9D6D7EAD6D7EBD6D7EBD6D7EBD6D7EBD6D7EBD6D7EBD6D7EBD6D7EBD6D7
        EBD6D8EBD5D6EAD5D5EAD7D8EBD7D8EBD6D6EAD6D7EBD6D7EAD6D7EAD8D9EBDC
        DDEEFFFFFFDCDCDCCDCDCDD0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0
        D0D0D0D0D0D0D0D0D0D0D0D0CFCFCFCECECED1D1D1D1D1D1D0D0D0D0D0D0D0D0
        D0CFCFCFD8D8D8D3D3D3EFF0F7D4D5EAD9D9ECD9D9ECD9D9ECD9D9ECD9D9ECD9
        D9ECD9D9ECD9D9ECD9D9ECD9D9ECD9D9ECD9D9ECDADAECD9D9EBD8D8EBD6D6EB
        D9DAECDAD9ECD9D9ECD9D9EBE0E1EFCCCDE6F3F3F0CDCDCDD3D3D3D3D3D3D3D3
        D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D4D4D4D3
        D3D3D2D2D2CFCFCFD3D3D3D4D4D4D3D3D3D3D3D3D9D9D9C7C7C7E4E5F1D9DAEC
        DADBECDADBECDADBECDCDDEDE7E7F3E2E2F0DADBECDADBECDADBECDADBECDADB
        ECDADBECDADBECDBDBEDD9DAECD9DAECD9DAECD9DAECDBDBECDADBECDADAECD7
        D7EDE5E5E2D3D3D3D5D5D5D5D5D5D5D5D5D6D6D6E3E4E3DEDEDED5D5D5D5D5D5
        D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D4D4D4D4D4D4D3D3D3D4D4D4D5D5
        D5D5D5D5D5D5D5D0D0D0E4E4F1DDDDEEDEDEEEDEDEEEE0E0EFDCDCED6062B0A5
        A7D3F4F4F9E3E3F1DEDEEEDEDEEEDEDEEEDEDEEFDEDEEFDCDDEDDDDDEEDEDEEF
        DEDEEFDCDDEDDCDDEEDEDEEFDEDEEED8DAECE3E3E1D8D8D8D9D9D9D9D9D9DADA
        DBDDDDDC4A494B8F8D90F3F2F3E0E0DFD9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D7
        D7D7D7D7D7D9D9D9D9D9D9D7D7D7D7D7D7D9D9D9DADADAD1D1D1E4E4F1E0E0EF
        E0E0EFE0E0EFE7E8F3A4A5D2252994292C954A4CA6CCCDE5F2F2F8E3E3F0E0E0
        EFE0E0EFDDDDEEDFDFEEE0E0EFE0E0EFE0E0EFE0E0EFDEDFEEDEDEEEE1E1F0D6
        D8ECE3E3E1DADADADBDBDBDBDBDBE2E3E2A4A5A4000002080709242425BCBCBC
        F3F3F2DFDFDFDBDBDBDBDBDBD8D8D8D9D9D9DBDBDBDBDBDBDBDBDBDBDBDBD9D9
        D9D9D9D9DDDDDDD0D0D0E5E5F2E2E3F0E2E3F1E2E3F1EAEBF5A9AAD4272A9535
        389B3134991F2291686AB4E7E8F3F0F1F7E0E1F0E2E3F0E2E3F1E2E3F1E2E3F1
        E2E3F1E2E3F1E2E4F1E1E2F0E1E2F0D6D7ECE5E4E2E0DEDEE0DEDEE1DEDEE7E6
        E5AAABAA030204151416100F12000000464547DEDEDEF0F0F0DCDDDDDFDEDEE1
        DEDEE0DEDEE0DEDEE0DEDEE0DEDEE1DFDFDFDDDDDDDDDDCFCFCFE6E6F2E5E5F2
        E5E5F2E5E5F2EEEDF6AAABD4222592303399303399303399292C951E21908A8B
        C5FBFBFCEFEEF6E5E5F2E5E5F2E5E5F2E5E5F2E5E5F2E5E5F2E6E6F2E5E5F2D4
        D4EBE5E5E3E3E1E1E3E1E1E4E1E1EAEAE9ACACAB0000000F0E100F0E100F0E10
        0707060000006B6B6BF8F8F8EEEDEDE4E2E2E3E1E1E3E1E1E3E1E1E3E1E1E3E1
        E1E4E2E2E2E2E2CDCDCDE6E6F2E7E7F2E6E7F2E6E7F2EFF0F7ABACD51E22902D
        30982D30982D30982C2F982C2F971F2391272A95B0B1D8FFFFFFECECF5E6E7F2
        E6E7F2E6E7F2E6E7F2E6E7F2E9EAF4D4D5EBE6E6E3E6E4E3E6E4E3E6E4E3EEEC
        ECADAEAE0000000A0A0A0A0A0A0A0B0A090909090909000000000000999999FF
        FFFFECEBEAE6E4E3E6E4E3E6E4E3E6E4E3E6E4E3E7E7E7CECECEE6E6F3E9E9F4
        E9E9F4E8E8F3F0F0F7AAACD5171A8D2629942629942629942629942629942629
        9424279313168B3E40A0D3D4E9FAF9FCE8E8F3E7E8F3E8E8F3E9E9F4EDEDF6D4
        D5EBE6E6E3E9E7E6E8E7E6E7E5E5EEEDECAEAEAE000000030303020202020202
        030303030303030303000000000000141414C5C4C3FFFDFCE7E5E4E7E5E4E7E6
        E5E9E7E6EBEBEBCECECEE7E8F3EDEDF6EEEEF6F7F7FAFFFFFFBCBDDE34379B43
        46A34345A24346A34346A34346A34346A34346A23B3E9F35389B282B958889C4
        FFFFFFF9F9FCF4F4F9ECECF5EFF0F7D4D4EBE7E7E4EAECE9EAEBEAF5F5F5FFFF
        FFC1C1C11111112424242424242424242424242424242424242424241C1C1C12
        1212060606646465FFFFFFF8F9F9F3F3F3E9E9EAEEEFEBCECECFE8E8F3F3F3F9
        FFFFFFFEFEFEFFFFFFC1C2E13D40A04B4DA64C4EA64C4EA64C4EA64C4EA64749
        A4373A9C9193C9F4F4F94749A434389BFFFFFFFEFEFEFFFFFEFCFCFEF2F1F8D3
        D4EBE7E7E4F1F2F0FFFFFFFFFFFFFFFFFFC7C7C71B1B1B2D2D2D2E2E2E2E2E2E
        2E2E2E2E2E2E292929161616747474F4F4F4343434080808FFFFFFFFFFFFFFFF
        FFFDFDFDF1F1EFCECECDE8E8F3FEFEFEFCFCFDFCFCFDFFFFFFBDBEDE393C9D47
        4AA4474AA4474AA44547A335389C6668B4EBECF59091C81B1F8F797BBDFCFCFD
        FEFEFEFCFCFDFCFCFDFDFDFDFCFCFDD1D2EAE7E7E4FEFEFEFCFCFCFCFCFCFFFF
        FFC2C2C2171717292929292929292929262626161616434343E5E5E58A8A8A00
        0000585858F7F7F7FFFFFFFCFCFCFCFCFCFDFDFDFDFDFECBCBCBEDEEF6FDFDFD
        FBFBFDFAFAFCFFFFFFBDBEDE36399C4547A34446A3383A9D4548A3D7D7EBB9BA
        DC2528934C4EA6E3E3F1FFFFFFFEFEFEFBFBFDFBFBFDFBFBFDFBFBFDFFFFFFD2
        D2E9EEEDEBFDFDFDFBFBFBFAFAFAFFFFFFC3C3C3131313262626252525181818
        212121C7C7C7B9B9B9060606252525D6D6D6FFFFFFFFFFFFFBFBFBFBFBFBFBFB
        FBFBFBFBFFFFFFCDCDCDEAEBF5FAFAFCF9F8FBF8F8FBFFFFFFBBBCDD33369B39
        3C9E32359AB1B2D9DBDBED3B3E9F2C2E96BEBFDEFFFFFFFEFEFEF9F9FBF9F9FB
        F9F9FBF9F9FBF9F9FBF9F9FBFEFEFED2D2E9EAEAE7FAFBFBF8F8F8F7F8F8FFFF
        FFC1C1C10F0F0F1A1A1A0C0C0C9A9A9ADCDCDC242424010101A9A9A9FFFFFFFF
        FFFFF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FFFFFFCECECEECEDF5F7F7FA
        F5F5F9F7F8FAFFFFFFBBBCDC292B958586C3ECECF55F61B116198C9596CBFFFF
        FFFFFFFFF9F9FCF9F9FCF8F8FCF8F8FCF8F8FCF8F8FCF8F8FCF8F8FCFDFDFDD2
        D3EAEDECEAF7F6F6F4F3F3F7F6F6FFFFFFC0C0C0040404656565EBEBEB515151
        000000787878FFFFFFFFFFFFF9F9F9F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8
        F8F9F8F8FDFDFDCDCDCDECECF5F7F7FBF5F5FAF6F6FAFFFFFFB6B6DA31349A93
        94CA0E1188696BB5F9F9FCFFFFFFF9F9FCF8F8FBF8F8FBF8F8FBF8F8FBF8F8FB
        F8F8FBF8F8FBF8F8FBF8F8FBFDFDFED1D2EAECECE9F9F7F7F6F4F4F8F5F5FFFF
        FFBBBBBB060606898989000000444444F2F2F2FFFFFFFAF9F9F9F7F7F9F7F7F9
        F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7FAF7F7FCFCFCCDCDCDE8E8F3F8F8FB
        F7F7FBF7F7FBFAFAFCCECEE60E11883E41A0DDDEEEFFFFFFFAFAFCF7F7FBF7F7
        FBF7F7FBF7F7FBF7F7FBF7F7FBF7F7FBF7F7FBF7F7FBF7F7FBF6F6FBFBFBFCD1
        D2EAE8E7E5F8F7F7F7F6F6F7F6F6F9F8F8D6D6D6000000161616CECECEFFFFFF
        FAFAFAF6F6F6F6F6F6F7F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F7F6F6FAFAFACDCDCDEAEAF4F6F6FAF6F6FAF6F6FAF7F7FAFCFCFDF1F2F8FF
        FFFFFCFCFDF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FA
        F6F6FAF6F6FAF6F6FAF6F6FAF9F9FCD2D3E9EAE9E7F5F6F6F5F5F5F5F5F5F6F6
        F6FBFBFBF1F1F1FFFFFFFDFDFDF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F9F9F9CDCDCDEBEBF4F5F5FA
        F5F5F9F5F4F9F5F4F9F5F5FAF5F5FAF3F4F9F5F5FAF5F4F9F5F4F9F5F4F9F5F4
        F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F4F4F9F9F9FCDD
        DDEFE9E9E7F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F2F2F2F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F3F3F3F9F9F9D9D9D9EBEBF5F6F6FAF3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F1
        F2F8F2F2F8F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9
        F3F4F9F3F4F9F3F4F9F4F5F9E9EAF4FBFBFEE9E9E8F4F4F4F2F2F2F2F2F2F2F2
        F2F2F2F2F2F2F2F0F0F0F0F0F0F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2
        F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F3F3F3E9E9E9F6F6F6FFFFFFE2E2F0
        F5F5FAF4F5F9F4F4F9F4F5F9F4F4F9F4F5F9F2F2F8F3F4F9F3F3F8F4F4F9F4F5
        F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F5F9F4F4F9F5F5F9EEEEF6EBECF5FF
        FFFFFFFFFFDEDEDEF4F4F4F3F3F3F2F2F2F3F3F3F3F3F3F3F3F3F1F1F1F2F2F2
        F2F2F2F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F2F2F2F3F3
        F3EDEDEDE6E6E6FFFFFFFFFFFFFFFFFFEBEBF4E9E9F4E8E8F3E8E8F3E8E8F3E8
        E8F3E8E8F3E7E8F3E5E5F2E8E8F3E8E8F3E8E8F3E8E8F3E8E8F3E8E8F3E8E8F3
        E8E8F3E9E9F3E9E9F4F3F3F9FFFFFFFFFFFFFFFFFFFFFFFFE8E8E8E6E6E6E5E5
        E5E4E4E4E5E5E5E5E5E5E5E5E5E4E4E4E2E2E2E5E5E5E5E5E5E5E5E5E5E5E5E5
        E5E5E5E5E5E5E5E5E4E4E4E6E6E6E6E6E6F0F0F0FFFFFFFFFFFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_PROXIMOClick
      OnMouseMove = SB_PROXIMOMouseMove
    end
    object SB_ULTIMO: TSpeedButton
      Left = 120
      Top = 0
      Width = 40
      Height = 37
      Hint = #218'ltimo'
      Enabled = False
      Flat = True
      Glyph.Data = {
        460E0000424D460E000000000000360000002800000030000000190000000100
        180000000000100E0000120B0000120B00000000000000000000FDFDFDFFFFFF
        F9F9FCDADAECD4D5E9CFCFE7CFD0E7D1D2E8D1D1E8D1D1E8D1D1E8D1D1E8D1D1
        E8D1D1E8D1D1E8D1D1E8D1D1E8D1D1E8D1D2E8D1D1E8C7C8E3D5D5EAFFFFFFFF
        FFFFFEFEFEFFFFFFF1F1F1D3D3D3CCCCCCC7C7C7C9C9C9CACACACACACACACACA
        CACACACACACACACACACACACACACACACACACACACACACACACACACACAC8C8C8BBBB
        BBDBDBDBFFFFFFFFFFFFFFFFFFF6F6FADDDDEEDEDEEED3D4E9D4D4E9D3D3E9D2
        D3E8D4D4EAD4D4E9D4D4E9D4D4E9D4D4E9D4D4E9D4D4E9D4D4E9D4D4E9D4D4E9
        D4D4E9D4D4E9DFDFEFDDDDEEB4B5DAFFFFFFFFFFFFEFEFEFD8D8D8D5D5D5CCCC
        CCCDCDCDCBCBCBCCCCCCCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
        CDCDCDCDCDCDCDCDCDCDCDCECECEDFDFDFCCCCCCB7B7B7FFFFFFFFFFFFEAEBF4
        D3D4E9D5D6EAD6D7EBD6D7EBD7D8EBD5D7EAD5D6EAD7D8EBD6D7EBD6D7EBD6D7
        EBD6D7EBD6D7EBD6D7EBD6D7EBD6D7EBD6D7EBD6D7EBD5D6EAD5D5EAE2E2F0CB
        CBE5FFFFFFE0E0E0CCCCCCCFCFCFD0D0D0D0D0D0D1D1D1CFCFCFCFCFCFD1D1D1
        D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0CFCF
        CFD2D2D2CDCDCDDDDDDDF9F9FBD7D8EBD9D9EBD9D9ECD9D9ECD9D9ECD9D9ECD9
        D9ECD7D7EBD6D7EBD9D9ECD9D9ECD9D9ECD9D9ECD9D9ECD9D9ECD9D9ECD9D9EC
        D9D9ECD9D9ECD9D9ECD9D9EBDBDCEDC8C9E5F6F6F4CECECED3D3D3D3D3D3D3D3
        D3D3D3D3D3D3D3D3D3D3D0D0D0D1D1D1D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
        D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D2D2D2DDDDDDC4C4C4F0F0F8D8D8EB
        DADBECDADBECDADBECDADBECDADBECDADBECDBDBEDD9D9ECD8D8EBDBDBECDADB
        ECDADBECDADBECDADBECDADBECDADBECDADBECDADBECDADBECDADBECDBDBEDD1
        D2EAE2E2E3D3D3D3D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D2D2D2
        D3D3D3D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5
        D5D5D5D5D4D4D4CECECEEDEDF5DBDCEDDDDDEEDDDDEEDDDDEEDDDDEEDDDDEEDD
        DDEEDDDDEEDDDEEEDCDDEEDBDBEDDDDEEEDDDDEEDDDDEEDDDDEEDDDDEEDDDDEE
        DDDDEEDDDDEEDDDDEEDDDDEEDEDFEFD3D4EAE1E1E3D7D7D7D8D8D8D8D8D8D8D8
        D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D6D6D6D6D6D6D8D8D8D8D8D8D8D8D8D8
        D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D9D9D9CDCDCDECEDF5DEDDEE
        DFDFEEDFDFEEDFDFEEDFDFEEDFDFEEDFDFEEDFDFEEDFDFEEDFDFEFDEDEEEDDDD
        EDE0E0EFDFDFEEDFDFEEDFDFEEDFDFEEDFDFEEDFDFEEDFDFEFE0DFEFDDDEEED4
        D4EBE1E1E2D9D9D9DADADADADADADADADADADADADADADADADADADADADADADADA
        DADADAD9D9D9D9D9D9DADADADADADADADADADADADADADADADADADADADADADADA
        DADADADAD8D8D8CECECEECEDF5E0E1EFE1E2F0EAEBF4F2F2F8E6E6F2E1E2F0E1
        E2F0E1E2F0E1E2F0E1E2F0E1E2F0E5E6F2F2F1F8E9E9F4E1E2F0E1E2F0E1E2F0
        E1E2F0E1E2F0E1E2F0DFDFEFE2E3F1D4D5EBE2E2E3DCDCDCDDDDDDEBECEBEEEE
        EEE0E0E0DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDE5E5E5EFEFEFE3E3E3DD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDCDCDCDADADADFDFDFCECECEEDECF6E3E4F1
        EDEDF59A9CCD4447A3D3D3E9F5F6FAE6E6F2E4E4F1E4E4F1E4E4F1E9E9F3C4C5
        E2313499B6B7DBFBFBFDE8E8F3E4E4F1E4E5F1E3E3F0E2E2F0E5E5F1E6E6F2D5
        D5EBE4E4E5E0E1DEEEEFED5C5B5D403F44E2E1E3F0F0F1E1E2E0E0E1DFE0E1DF
        E0E1DFE9EAE8909090211F22C9C8C9F6F6F6E3E4E1E0E1DFE0E2DFDEDFDDDFE0
        DEE1E2DFE2E2E2CDCDCDEBECF5E6E6F2F2F2F88284C12629941F22907072B9F2
        F3F8F3F3F9E6E7F2E6E6F2EEEEF6AFB0D72226922124925356AAE1E1F0F6F6FA
        E7E7F3E5E5F1E7E7F2E6E6F2E9E9F4D5D6ECE3E3E4E2E4E1F5F6F43F3E400504
        0800000079797AFBFCFAEDEEECE2E3E1E2E3E1F0F1EF74737402010300000055
        5555EEEFEDF1F2F0E3E4E2E2E3E1E2E4E1E2E3E1E6E6E6CDCDCDECECF5E9E9F4
        F6F6FA8385C12326932D30982427931E21909D9ECEFFFFFFEFEFF7F0F0F8B1B2
        D81C1F8F2C2F972528931C1F8E8082C0F9F9FBF3F3F9E9EAF4E9EAF4EBECF5D4
        D5EBE4E4E5E7E7E6FAFAFA3D3D3D0303030A0A0A000000080808ADADAEFFFFFF
        EAEAEAF3F3F37373740000000A090B0000000100018A8A8AFFFFFFEDEDEEE7E6
        E6E6E6E6E9E9E9CCCCCCEBECF5EBEBF4F8F7FB8182C02427933033993033992F
        32981F229134379BCFD0E7FFFFFFB7B8DB2023913033992F329834379B2F3299
        292C95ACADD6FDFDFEEAEBF4EFEFF6D5D5EBE6E5E7EEE9EAFFFBFC393A3A0505
        050E0E0E0E0E0E0A0B0B0000002C2C2CE4E4E4FFFFFF7979780000000D0E0C0C
        0D0B141514080808141414C1C1C1FBF6F7EDE8E8ECECEDCCCCCCEBECF5EDEEF6
        FFFFFF9E9FCF4648A44F51A84F51A84B4DA6393B9D999BCD5658ABC2C3E1D1D1
        E84042A14F51A84F51A84C4EA73A3E9E787ABC8082C08385C2FFFFFFEFF0F7D5
        D5EBE5E6E6ECEDEAFFFFFF6060602C2B2B3731323631322F292A1E1B1CA7A8A8
        101010F1F1F19996972A25263631323732332D2C2C1617178585853F3F3FA7A7
        A7FCFCFCEEF0EDCCCDCBEBEBF5F7F7FAFFFFFF9798CB3D3F9F4548A336399C5D
        60AFE8E9F48284C17678BBFFFFFFC7C8E4383B9D4749A43A3D9E474AA4D8D8EB
        A7A9D35C5EAFECECF5FFFFFEFBFBFCD5D5EBE5E5E6FAFCF9FFFFFF5656562121
        21252525101010626262EAEAEA4C4C4C818181FFFFFF8D8D8D1C1C1C27272716
        15153F4040E4E4E47272725C5C5CF8F8F8FFFFFFF7F8F6CCCDCBEBEBF5FEFEFE
        FFFFFF9596CA2E31983A3D9EC9CAE4B8B9DC494BA5DBDCEDFFFFFFFFFFFFC4C4
        E12D31982E3198AAABD5D5D6EA474AA4BABBDDFFFFFFFFFFFFFAFAFCFEFEFED6
        D6EBE8E8EAFEFEFEFFFFFF5353530C0C0C2C2C2CD9D9D98686863D3D3DF1F1F1
        FFFFFFFFFFFF8989890B0C0C161616BCBCBCB0B0B02A2A2AD2D2D2FFFFFFFEFE
        FEF9F9F9FFFFFFCACACAEEEEF6FCFCFDFFFFFF898CC58889C4E0E1EF494CA5A6
        A7D3FFFFFFFFFFFFFBFBFCFFFFFFBABBDD5F61B0ECECF55F61B08284C1FFFFFF
        FFFFFFFBFBFCFBFBFCFBFBFCFDFDFDD6D6EBECECEEFDFDFCFFFFFF434343A2A2
        A2C1C1C1232323BCBCBCFFFFFFFFFFFFFBFBFBFFFFFF7B7B7B6E6E6EDEDEDE2D
        2D2D929292FFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFDFDFDCBCBCBECEDF6FAFAFC
        FFFFFF8385C14244A17173B9FFFFFFFFFFFFF9F9FCF9F9FBF9F9FCFEFEFEB9BA
        DC393B9D585AACF0F0F7FFFFFFFAFAFCF9F9FBF9F9FBF9F9FBF9F9FBFDFDFDD6
        D7EBE9E9EBFBFBFAFFFFFF3A3A3A2A2A2A7B7B7BFFFFFFFFFFFFF9F9F9F9F9F9
        F9F9F9FFFFFF767676222222575757FFFFFFFFFFFFF9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9FEFEFECBCBCBEDEDF6FAFAFCFBFBFDF0F0F8DFE0EFFFFFFFFAFAFCF9
        F9FCF9F9FCF8F8FBF5F5FAFAFAFCFDFDFDD0D1E8FFFFFFFCFCFDF9F9FCF9F9FC
        F9F9FCF9F9FCF9F9FCF9F9FCFCFCFDD6D7ECE9E9EBFBFBFAFBFCFCE0E0E0EDED
        EDFFFFFFF9F9F9F8F8F8F9F9F9F7F7F7F4F4F4FBFBFBF1F1F1D8D8D8FFFFFFFA
        FBFBF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FCFCFCCCCCCCECECF5F8F8FB
        F8F8FBFAFAFCFCFCFDF8F8FBF8F8FBF8F8FBF6F6FAF5F5F9F8F8FBF8F8FBF9F9
        FBFDFDFDF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBFBFBFCD6
        D6ECE9E8EBFAF7F7F9F7F7FDFBFBFCFAFAF9F7F7F9F7F7F9F7F7F6F4F4F7F4F4
        FAF7F7F9F7F7FBF9F9FEFBFBF9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7
        F7F9F7F7FCFBFBCCCCCCEBECF5F7F7FBF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF3
        F3F9F5F5F9F6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FA
        F6F6FAF6F6FAF6F6FAF6F6FAFAFAFCD5D6EBE8E8EAF9F7F6F7F5F5F7F5F5F7F5
        F5F7F5F5F7F5F5F4F2F2F6F4F4F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7
        F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5FBFAFACACACAECEDF5F6F6FA
        F6F6FAF6F6FAF6F6FAF5F5FAF2F2F8F5F5FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6
        FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF9F9FBD6
        D7ECECECEBF5F6F6F4F5F5F4F5F5F5F5F5F4F4F4F1F1F1F4F4F4F5F5F5F4F5F5
        F4F5F5F4F5F5F4F5F5F4F5F5F4F5F5F4F5F5F4F5F5F4F5F5F4F5F5F4F5F5F4F5
        F5F4F5F5FAFAFAD1D1D1EBEBF5F8F8FBF3F4F9F4F4F9F4F3F9F2F2F8F4F4F9F4
        F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9F4F4F9
        F4F4F9F4F4F9F4F4F9F4F4F9F7F8FBDFDFF0E9E9E8F5F5F5F3F3F3F3F3F3F1F1
        F1F1F1F1F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F2F2F2F8F8F8DCDCDCF8F8FBEBEBF4
        F5F5FAF2F3F8F2F2F8F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4
        F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F9F3F4F8F4F4F9EEEEF6F5
        F5FBEFEFEFEFEFEFF4F4F4F0F0F0F2F1F1F5F2F2F4F2F2F4F2F2F4F2F2F4F2F2
        F4F2F2F4F2F2F4F2F2F4F2F2F4F2F2F4F2F2F4F2F2F4F2F2F4F2F2F5F2F2F2F2
        F2F4F4F4E4E4E4FCFCFCFFFFFFEDEDF5E9E9F4F4F4F9F3F4F9F3F3F9F3F3F9F3
        F3F9F3F3F9F3F3F9F3F3F9F3F3F9F3F3F9F3F3F9F3F3F9F3F3F9F3F3F9F3F3F9
        F3F3F9F3F3F9F4F5F9EEEEF6EBEBF4FFFFFFFFFFFFE2E2E2EBEBEBF2F2F2F3F2
        F2F3F1F1F3F1F1F3F1F1F3F1F1F3F1F1F3F1F1F3F1F1F3F1F1F3F1F1F3F1F1F3
        F1F1F3F1F1F3F1F1F3F1F1F3F1F1F5F5F5E6E6E6EFEFEFFFFFFFFFFFFFFFFFFE
        F2F2F8E9E9F4EAEAF4EAEAF4EAEAF4EAEAF4EAEAF4EAEAF4EAEAF4EAEAF4EAEA
        F4EAEAF4EAEAF4EAEAF4EAEAF4EAEAF4EAEAF4EAEAF4EAEAF5F4F4F9FFFFFFFF
        FFFFFFFFFFFFFFFFECECECE6E6E6E6E6E6E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7F8F8F8FFFFFFFFFFFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_ULTIMOClick
      OnMouseMove = SB_ULTIMOMouseMove
    end
    object SB_NOVO: TSpeedButton
      Left = 160
      Top = 0
      Width = 40
      Height = 37
      Hint = 'Incluir'
      Enabled = False
      Flat = True
      Glyph.Data = {
        0E100000424D0E100000000000003600000028000000340000001A0000000100
        180000000000D80F0000120B0000120B00000000000000000000FAFFF2FFFFF1
        FFFFEADE9373B85E2FB5541CB6551BBB571CBF5417C9591DC8571EBF4F13CF62
        24D0692AB2571AB45B1EBB591DBA5719B9551BB5541CAD511EB45E30EEA27EFF
        FFE3FFFFEBFFFDECFDFEFCF8FDFEFDFFFEA8A9A572706F6967666A6A6A6C6C6C
        6D6D6D6D6D6D6E6E6E6E6E6E7373737B7B7B6C6C6C6969696C6C6C6C6C6C6A6A
        6A6969696C6C6C767676B2B2B2FFFFFFFFFFFFFAFAFAFFFFF0FFE2CB70331971
        2000872B008B2A00913100993600A03200A232009F3000A33700A03500A74002
        B050149235009632009B3600963200922E008F2F008225007B2600813E1DFFF6
        DAFFFFF0FFFFFCDEE3E45E615F3E3F3D3F403E4444444646464949494A4A4A4A
        4A4A4A4A4A4848484B4B4B5252526262624C4C4C4848484A4A4A454545454545
        4343433F3F3F414141616161F6F6F6FDFDFDFFFFE1803D1E7620008A2B009430
        009A3900993A009D3B00AA3C00AC3D00A73B05A53D08A83F06A63E03AD440BBF
        571CA93E04A039009F39009B3700982E00983001902C0279210085411EFFFFEA
        FFFCF6595D5E4040404444444D4C4E4B4A4C4E4E4E5252524F4F4F5050505454
        545252525353535252525858586C6C6C4F4F4F5252525555554B4B4B4A4A4A4C
        4C4C474747404040616161FFFFFFEA926A832700922A009A31009E3700A13D00
        9E3C00A43D00B24102AE40069D3E0D8F390B923D0D913A08973C09A2400AAB40
        06AE4405A43D00A33B00AC3C07A231009B2C00932A017B2000E8A98DB4A39A41
        45464A4A4A504F514D4C50515256535254515151595959585858595959555555
        5757575858585555555656565C5C5C5151515353535757575353534D4D4D5151
        514A4A4A414141B8B8B8B04415982A009B2900AB3B06A13700A63E00A63B00B3
        4209B84306AA400AC57851D19878CA9A78CC9C78D69D76B66C3CA8440AB44304
        AD4304A83D00AA3600A93300A52F009F3000902700AE66447B675C454A4B4F51
        5259585A5352565655595A595B5D5D5D5D5D5D575757888888A3A3A3A3A3A3A6
        A6A6ACACAC7777775B5B5B6464645A5A5A565656565656545454505050515151
        4B4B4B7D7D7DB43B09AC3400AB3000AC3500B14002AD3F00B7440BB44007BE44
        08AA420DF8B899FFFFEBFFFFECFFFFEDFFFFE7DEA077AB470CB94603B74804B7
        4607B03A00B33903AA3200A934019B2D009A4A256F594D4F54554D4F50555456
        58575B5E5D615B5A5C5E5E5E5B5B5B5F5F5FC6C6C6FFFFFFFFFFFFFEFEFEFDFD
        FDACACAC6161615B5B5B5C5C5C6060605656565C5C5C5A5A5A5252525252526A
        6A6ABA3D0AAF3100B63603B73902B23B00C95516C04A0FC0480DC94D0DAD4712
        F2BA9DFFFFF4FFFEF8FFFEF7FFFFEFDD9F7BAD480AC64F04BE4801BE4906CD55
        19B53C04B23B04A834009D2E009F4F26776155555A5B585A5A5C5B5D605F616D
        6C6E676767626262656565636363C0C0C0FCFCFCFEFEFEFFFFFFFFFFFFABABAB
        6363636666666363635E5E5E7777775B5B5B5858585C5C5C525252676767BC3E
        08B13200BA3400C23B03C64506C04503D95E20D25717C94D06AC490BECB89AFF
        FDF2FFFEFEFFFDFAFFFDEFDEA27EB4500FCA5102CA5004C94D07C3480AD4591F
        B73903B13701A73400A14D237A6052595B5C5E5E5E5E5E5E6060606464647575
        756F6F6F696969606060C2C2C2FFFFFFFCFCFCFAFAFAFFFFFFAAAAAA6565655F
        5F5F6666666464646969697979796060606060605D5D5D6A6A6AC0450DAF2E00
        C83B02CF3D03C83C00CF4903C74B05DC6319DF6813B7580FF1C19DFFFFF2FFFA
        F7FFFBF7FFFFEFDAA279B8530ED45804D45205CA4600CB470BC7440BDA531FBB
        3702B23700A5491E7F5C52666163656061656362686967606361656565767676
        7777776B6B6BC4C4C4FFFFFFFBFBFBFEFEFEFDFDFDB0B0B06767676B6B6B6969
        696767676363636767677878785F5F5F5D5D5D696969B73902BE3B02C93801CB
        3C03C34106B33F04AE460BAC4B0BB6570E964B0DE0BA9AFFFFF4FFFDF8FFFFFA
        FFFFF2CC9F7E9C4D14AE4D0BB54B0EB4450DAF3A07BA3D0BC53B06D0450DB531
        00AD4D257F5C4F6762636863646664646767676769696A6A6A6868686A6A6A6B
        6B6BC0C0C0FEFEFEFFFFFFFCFCFCFFFFFFA7A7A76969696A6A6A6C6C6C656565
        6A6A6A6767676666666D6D6D636363696969C23A06C03602CE3D0ABB390AD676
        4EFFC9A4FDC4A4F6C5A5F9C6A6EBC3A7F8E6D5FFFFF8FEFEF8FFFFFCFFFEFAF8
        DFD5E7C1A9F3C4A8F1C0A6FDC1A4FFC5A6CB6239C13B05CB3B01C13703AB4822
        7C5F5062676568676968666C97959BD1D0D4CDCCCECCCCCCCACACACCCCCCE7E7
        E7FCFCFCFFFFFFFDFDFDFEFEFEE4E4E4CDCDCDCACACACCCCCCCBCBCBD3D3D386
        86866969696868686666666A6A6AC23601C93B06CB3905B4370AE79A7AFFFFEB
        FFFFF1FFFFF2FFFDF5FFFFF8FFFFF9FDFFF9FAFEF9FBFCFAFFFBFDFFFDFEFFFE
        F8FFFFF7FFFEF7FFFFF4FFFEEBD47A58B83902CF3D01C33603AD4724765C4B63
        6D676265696B696FABA7ADFFFDFFFEFDFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFA
        FBFBFBFFFFFFFFFFFFFFFFFFFCFCFCFCFCFCFFFFFFFFFFFFFFFFFF9797976969
        69686868676767686868C74101C53A00D13D01B23503DA9477FFFDEEFFFEF5FF
        FDFAFFFEFFFFFAFBFDFFFCFAFFFCF3FAF7F7FCFBFDFFFFFEFEFEFFFFFCFFFDF8
        FFFCF9FFFDF5FFFDECC77556B43A06CA3E03BF3802AB49217B5F4E686D6B676B
        6C6D6C6EAEA9AAFFFEFFFFFFFFFDFDFDFAFAFAFEFEFEFFFFFFFFFFFFFDFDFDF7
        F7F7FDFDFDFCFCFCFDFDFDFFFFFFFEFEFEFCFCFCFCFCFC9595956B6B6B6A6A6A
        696969656565C24000C43C00E14B0BC54512E49B7DFFFFEEFFFEF2FFFFF9FFF8
        F5FFFFFCFDFFF9F8FEF9FDFFFFFBFDFDF8F9F7FFFFF9FFFFF6FFFDF0FFFFF5FF
        FFF2FFFFEAD3825FC14915D1470CC43D05A7451B8261516A6D6B6A6F6E6C6E6E
        B7B4B0FFFFFCFCFAF9FDFDFDFDFDFDFDFDFDFBFBFBFFFFFFFFFFFFFCFCFCFCFC
        FCFBFBFBFCFCFCFEFEFEFBFBFBFBFBFBFFFFFFA3A3A37070707070706E6E6E64
        6464CD5214E05B1DE34B10CF4814F7A17DFFFFE6FFFFE7FFFFEAFFFFEDFFFFF0
        FFFFF5FFFDF5FFFBFCFEF8F9FFFDF8FFFFF3FFFFEDFFFFE7FFFFE7FFFFE2FFFF
        DEE68D61CD4F18DD5114D24D11AA471B8E695B848281757B7A6F7875B7BBB6FD
        FEFAFFFFFEFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFAFAFAFFFFFFF9F9F9FCFCFC
        FDFDFDFFFFFFFFFFFFFFFFFFFEFEFEA1A1A1787878787878757575636363B237
        00E26025E65216DF541CD76F40E4966BDA9A71D59B71D5986CC08E6AF2D7C3FF
        FFF8FFF9F9FFFCF9FFFFF7E4C7B2CA9471DA996CD89868DF9767F19E6BD16934
        D55318E25718D24D11A44214825D4F888686747B787079768C938EA8AEA9A9AA
        A8A7A7A7A6A6A6AAAAAADCDCDCFFFFFFFEFEFEFEFEFEFFFFFFD0D0D0A7A7A7A8
        A8A8A8A8A8A8A8A8B0B0B08585857B7B7B7B7B7B787878606060B63700DC571D
        DD4F12E55819D55717CB5718CC5A1BC75614D25C15B4531BEEBCA0FFFFF7FFFE
        FBFFFFF8FFFDEDD8A182B75120D2591BCF5918CC5916CB5718CF5416DE5719DB
        5313D55317A144177454477E7D7F767B7A7B807E797E7C737876767676797979
        787878737373C2C2C2FFFFFFFDFDFDFBFBFBFFFFFFB0B0B07070707A7A7A7B7B
        7B7272727979797A7A7A7A7A7A7C7C7C7979795D5D5DB33500DC5A1EE35B19E6
        5B16E86117E65F13E65D11ED6414F06411CB5815FBBFA1FFFDF5FFFCF9FFFEF7
        FFFFF0EBA784CE561BF5631BEE5F14E96014DD5C13E05E19E25A18E05A1AD254
        14A1441776564B7E7D81807E7E7C7D7B7B7E7C7B7E7C7C7C7C80808081818176
        7676C9C9C9FFFFFFFAFAFAFFFFFFFDFDFDB9B9B97B7B7B7F7F7F8181817F7F7F
        7D7D7D7F7F7F7C7C7C7E7E7E7B7B7B5C5C5CB23900DC611FE25E18E55E12E764
        15EE6E1CE06112E36513E56611BF5A16F0BEA0FFFFF8FEFCFBFFFCF7FFFFF0E8
        A983C85718F0681AE75D10EC6618EE7022DB5B12E25D19E25D1AD95617A54418
        745147878186857C7F867E7F7D7B7A8A8B897F7F7F7E7E7E808080797979C8C8
        C8FFFFFFFDFDFDFCFCFCFEFEFEB6B6B67D7D7D8080807F7F7F8383838989897B
        7B7B7F7F7F7E7E7E7E7E7E595959AD3900DB611FE7641AE66012E56213E86718
        FD7D30E56818E16412C15C18FDC4A4FFFCECFFFFF7FFFFF4FFFFE9ECA77FCE5F
        1BE56211EA6416EA6718EC7121EE7224E26118E3611CD85A1AA0411572524782
        7E838A8086877E818684837F807C9293917E7E7E7D7D7D787878CACACAFEFEFE
        FDFDFDFEFEFEFFFFFFB7B7B77A7A7A7F7F7F7B7B7B7F7F7F8989898C8C8C7E7E
        7E8383837A7A7A5B5B5BA83800DF6726E55E14EF6518EC6920E5631DE75F17FF
        7830EE6B22CB5A1BFFC69AFFFFE3FFFFE9FFFFE7FFFDDEFFB282D05B16E76415
        EB661CE46419DB6212EE7827F07525DC6117D15E1B9442136D5647808586837F
        858480857F82807B817C7C7D7B939393848484767676D5D5D5FFFFFFFFFFFFFE
        FEFEFFFFFFBCBCBC7B7B7B8383838181818181817F7F7F8484848E8E8E7D7D7D
        8181815858589D3903D36529E8651CF0661AE7621EE4621DF26A22EB6119F874
        2ED75F1DD27439CF7E4BC67B4FC7794ECE784AD16D33E16921E96819E7641BED
        6C23E16616DE6613E86F20E5712AC85E219A52286853448287867E7C82828185
        7D82808086817D807E7E7E7E8F8F8F7E7E7E8787879191919696969191918D8D
        8D8989897E7E7E8484847E7E7E8181818282828383838888888484847B7B7B64
        6464CB7C51A84C19E36927F16B25E86522EB6924EA6619EE6B1AE8691AE76E1F
        DC6A1DD3651DD16623D16525D56425DC6722DF671BE7691BEB6A21E7641BEA6B
        1CE96C1CE2661FDD6C2E9F4113D49476997F7376717087818686828781838380
        83818686868383837E7E7E8686868888887D7D7D8181817D7D7D838383858585
        8282828181818282828282828383838282827E7E7E8787876E6E6E979797FFFD
        DF662100CA6630E26E2FDD6426E46927E76A1FEC721FE66D1DE26C1BE76E1EE7
        6E1FE0691EDE661EE86F27E26921E77025E46B21E96B24E96922E96D1FE36C21
        DA6B2DBB5B2D6A2406FFFEEDFFFBF34A43408782848C8B8D8686868385858181
        818686868787878484848484848A8A8A83838387878784848483838386868687
        87878B8B8B8484848484848787878B8B8B7C7C7C3C3C3CFFFFFFFFFFF4F3D1BA
        602100A75222CE6631E27034E4722CE06D24E27128E3742BE2702AE1712BE477
        33E37632DF6D27E16F29DF702CDF6E2BE36B29E7702BE27128CC6723A54D1E63
        2305FFE8DDFFFFFBFFFCF7D2D1CD424341696B6B818384898B8C8D8D8D8C8C8C
        8585858B8B8B8B8B8B8989898A8A8A8B8B8B8585858B8B8B8C8C8C8585858686
        868A8A8A8888888282826969693F3F3FE7E7E7FFFFFFFFFDF8FFFFF4FFFFE4CB
        865BA8481AA53A01A73900AF4000AB3F00AB3E00A83A00A83C00A53D00BC5411
        B44501AE3E00A73B00AA3C00B44001AD3A00AA3E00B25615DC8F68FFFEEAFFFE
        FCF9FCFFFFFFFEFFFFFBF9FCFA878C8B5C5E5F494B4C4F4E504C4C4C4D4D4D4D
        4D4D4D4D4D4A4A4A5151516363635555554D4D4D4B4B4B4F4F4F4D4D4D4C4C4C
        5050505D5D5D959595FFFFFFFFFFFFFDFDFD}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SB_NOVOClick
      OnMouseMove = SB_NOVOMouseMove
    end
    object SB_EXCLUI: TSpeedButton
      Left = 200
      Top = 0
      Width = 40
      Height = 37
      Hint = 'Excluir'
      Enabled = False
      Flat = True
      Glyph.Data = {
        DE100000424DDE100000000000003600000028000000360000001A0000000100
        180000000000A8100000120B0000120B00000000000000000000EBEBEBDBDBDB
        E1E0DFFFFEF1FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF7FFFFF9FFFFF9FFFF
        F9FFFFF9FFFFF8FFFFF7FFFFF9FFFFF9FFFFF9FFFFF9FFFFF8FFFFF7FFFFFAFF
        FFF4E7E7E4D8D8D8E8E8E8EBEBEBDBDBDBE0E0E0F8F8F8FCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFBFBFBFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFBFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFBFBFBFDFDFDFAFAFAE5E5E5D8D8D8E8E8E80000D7D7
        D7EFEEECFFFFFF758DF90832F90E37F8153CFA143BF9143BF8153BFA153BF915
        3BF9153BF9153BF9153BF9153CFA143AF8153BFA153BFA143BF9153BF9133AF9
        012DF95674F8FFFFFFFEFCF6D5D5D5D7D7D7EEEEEEFFFFFFB7B7B78181818383
        8388888887878786868688888887878787878787878787878787878788888886
        86868888888888888787878787878686867D7D7DA7A7A7FFFFFFFAFAFAD5D5D5
        0000E2E2E0FFFFFF0028F53752FAC3BDFCB5B1FCB1B0F8B1AFFBB2B0FCB2B0FC
        B2B0FBB2B0FCB2B0FCB2B0FCB2B0FCB2B0FCB2B0FCB1AEFBB4B2FAB2AFFCB2B0
        FCB2B0FCC7C1FA6071FA000CF7F9FBFFEEEDE9E1E1E1FFFFFF7B7B7B999999DD
        DDDDD7D7D7D4D4D4D5D5D5D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6
        D6D6D6D6D6D6D5D5D5D6D6D6D6D6D6D6D6D6D6D6D6DEDEDEADADAD7B7B7BFCFC
        FCEBEBEB0000FFFFF5607AF5465DF6707EF6001FF4001BF5001DF4001CF5001C
        F6001CF5001CF5001CF5001CF5001CF5001CF5001CF5001CF5001CF5001EF500
        1BF5001DF6001CF5001AF44D62F67B86F6173CF3FFFFFEFAFAFAABABAB9E9E9E
        B3B3B37A7A7A7B7B7B7A7A7A7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B
        7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7A7A7AA2A2A2B8
        B8B8858585FEFEFE0000FFFFFC0023EF5164F2001AF00027EF0028F00029F000
        29F00028EF0028F00029F00029F00029F00029F00029F00028F00028EF0029F0
        0028F00028F00027EF0027F00027F0001EF0324CF10021EFFFFFFEFEFEFE7878
        78A2A2A278787878787878787878787878787878787878787878787878787878
        7878787878787878787878787878787878787878787878787878787878787878
        787878919191777777FEFEFE0000FFFFFD0020E80020EB0024EB0025EC0025EC
        0125EC0125EC0025EC001EEB0011EA0010EA0010EA0011EA0011EA0011E90016
        EB0125EC0125EC0125EC0023EC1B3BEB0A2CEA0022EC0020EC0016E9F1F3FAFE
        FEFE747474767676767676767676767676777777777777767676767676757575
        7575757575757575757575757575757676767777777777777777777676768383
        837A7A7A767676767676747474F5F5F50000FFFFFD0015E40021E90023E90023
        E90023E90023E90023E9001DE9324EE9DDE1F7D0D6F7CED5F8D0D7F6CCD3F7D8
        DFF99BA7F10015E70023E90023E90023E90224E81D3BE70A2BE70021E9000BE5
        F4F7FBFEFEFE7272727575757575757575757575757575757575757575758E8E
        8EEAEAEAE4E4E4E3E3E3E3E3E3E2E2E2E9E9E9C6C6C674747475757575757575
        7575757575828282797979747474727272F7F7F70000FFFFF70019DF001FE300
        22E30022E30022E30022E30022E30014E1929FF0F0F1FAD1D6F6F3F4F8C2C9F4
        FFFFFDB9C0F3FFFFFF0007DF0022E30022E30022E30022E3001EE31A38E21836
        E20006E1F5F7FBFBFBFB70707072727272727272727272727272727272727271
        7171C1C1C1F5F5F5E4E4E4F6F6F6DBDBDBFEFEFED6D6D6FFFFFF707070727272
        7272727272727272727272727E7E7E7D7D7D707070F8F8F80000FFFFFD132FDA
        0221DE001EDE0020DE0020DE0020DE0020DE000DDCC8CEF45E72E76275E7A0AB
        F22843DED5DAF7000DDAFFFFFF0015DA001EDE0020DE0020DE0020DE0020DE00
        1CDD122FDD001CDAF4F5FCFEFEFE7777777070706F6F6F6F6F6F6F6F6F6F6F6F
        6F6F6F6E6E6EDEDEDEA3A3A3A5A5A5C9C9C9838383E6E6E66D6D6DFFFFFF6D6D
        6D6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F7777776D6D6DF8F8F80000FFFF
        FF000ED51B35DA0F2BDB001CDB001EDB001EDB001EDB0007D8F9FAFA374EDF9A
        A6EDA5AFF2324BDEFFFFFB0000D1FFFFFF1D37DC0018DA001EDB001EDB011EDA
        001DDA001EDB001BDB000FD8F2F4F6FFFFFF6B6B6B7B7B7B7575756E6E6E6E6E
        6E6E6E6E6E6E6E6C6C6CFAFAFA8B8B8BC4C4C4CCCCCC888888FDFDFD696969FF
        FFFF7D7D7D6D6D6D6E6E6E6E6E6E6E6E6E6D6D6D6E6E6E6D6D6D6C6C6CF4F4F4
        0000FFFFFF000ED00015D5011DD3001AD4001BD5001CD5001BD50000CEFFFFFF
        0A23D4C5CAF29FAAEF3046D8FFFFFF0000C9FFFFFF4B5CDF0013D3001CD5001B
        D4001BD4001BD5001CD5001CD50001D1F4F6FAFFFFFF6868686B6B6B6A6A6A6A
        6A6A6B6B6B6B6B6B6B6B6B676767FFFFFF6F6F6FDCDCDCC7C7C7848484FFFFFF
        656565FFFFFF9595956A6A6A6B6B6B6A6A6A6A6A6A6B6B6B6B6B6B6A6A6A6868
        68F7F7F70000FFFFFF000DCB1A28D41525D40A1FD20017D00013CF0012CE0018
        CDFFFFFF0000C8F1F2FA9CA5ED3145D5FFFFFF0006CAE6E7F67682E3000CCF00
        18D00007CD0012D00019D10019D10019D10001CCF6F6FBFFFFFF666666777777
        7575756E6E6E686868686868676767676767FFFFFF646464F6F6F6C5C5C58383
        83FFFFFF656565EEEEEEADADAD68686868686867676768686869696969696968
        6868666666F8F8F80000FFFFFF000DC75750DF504DDD514DDE524EDD4F4EDA2D
        33D64954D8FFFFFF0000BCFFFFFF959EE82F42D1FFFFFF1629CDB6BDEEA3AAEA
        000BC50000C6D4D7F24A59D7000FCB0017CC0017CC0000C7F6F6FBFFFFFF6464
        64989898959595969696969696949494828282919191FFFFFF5E5E5EFFFFFFBF
        BFBF808080FFFFFF727272D2D2D2C7C7C7636363636363E3E3E3919191666666
        666666666666636363F8F8F80000FFFFFF000BC35855E35050E15050E15150DF
        5150E14B49DF9896EAFFFFFE2A2BD3FFFFFF969EE62C3CCCFFFFFF3D4BCF9298
        E5CCD0F00000C05864D5FFFFFF0007C30015C60016C70016C70000C1F6F7FBFF
        FFFF6262629C9C9C999999999999989898999999949494C0C0C0FFFFFF7F7F7F
        FFFFFFBEBEBE7C7C7CFFFFFF868686BCBCBCDEDEDE606060979797FFFFFF6262
        62636363646464636363606060F8F8F80000FFFFFF0009BF625EE55958E15958
        E05A58E35958E24F4DE1BDBCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF5F7F80000B8FFFFFF3441CA000AC00113C30113C30113C30000BD
        F5F7FBFFFFFF606060A2A2A29D9D9D9C9C9C9E9E9E9D9D9D979797D6D6D6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F75C5C5CFFFFFF7F
        7F7F6060606262626262626262625E5E5EF8F8F80000FFFFFF0009BA6A65E960
        5FE56160E66160E66160E65F5EE66969E79491EA9999EB8384EA7C7DEB8181EA
        8887EB8889EB8D8DED393ED2BFC2E9D9DAF10000B3000EBB0011BD0011BE0011
        BE0000B7F3F4F9FFFFFF5D5D5DA7A7A7A2A2A2A3A3A3A3A3A3A3A3A3A2A2A2A8
        A8A8BEBEBEC2C2C2B7B7B7B4B4B4B6B6B6B9B9B9BABABABDBDBD868686D4D4D4
        E5E5E55A5A5A5E5E5E5F5F5F5F5F5F5F5F5F5B5B5BF6F6F60000FFFFFF0007B5
        716EED6866E96866E96866E96866E96866E96664E9625FE75F5DE47978E6CECD
        F4A9A8ED5A58E76260E85B59E78F8CECFFFFFFFFFFFF7A7EE00D19C20007B400
        04B50006B60000B0F6F6FBFFFFFF5B5B5BAEAEAEA8A8A8A8A8A8A8A8A8A8A8A8
        A8A8A8A7A7A7A3A3A3A1A1A1AFAFAFE1E1E1CBCBCBA0A0A0A4A4A4A0A0A0BCBC
        BCFFFFFFFFFFFFADADAD6868685A5A5A5B5B5B5B5B5B585858F8F8F80000FFFF
        FF0006B27B77F1716EEB716EEB716EEB716EEB716EEB716EEB6C69EB9998EDFF
        FFFBFFFFFAF6F6FA5F5CE9706DEB6563E8FFFFFEC1C1F0DCDDF66763EB7A76EF
        7D78F16B69E66162E00006B7F1F4F9FFFFFF595959B4B4B4ADADADADADADADAD
        ADADADADADADADADADADAAAAAAC3C3C3FDFDFDFDFDFDF8F8F8A3A3A3ACACACA6
        A6A6FFFFFFD9D9D9E9E9E9A7A7A7B3B3B3B5B5B5A8A8A8A0A0A05B5B5BF5F5F5
        0000FFFFFF0003AC817EF37776EE7776EE7776EE7775EE7776EE7776EE7776EE
        5F5CEBE4E3F8FFFFFEFFFFFA8C8BED6664EDDBD9F7E3E4F8625FEC6C6AEC7775
        EE7776EE7776EE7876EE8582F50810B8F1F2F9FFFFFF565656B9B9B9B2B2B2B2
        B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A4A4EEEEEEFFFFFFFDFDFDBCBCBC
        A9A9A9E8E8E8EEEEEEA6A6A6ABABABB2B2B2B2B2B2B2B2B2B2B2B2BBBBBB6060
        60F5F5F50000FFFFFF0002A88B86F87F7BF0807CF1817EF07F7CF07773F07772
        F06C68EEC3C3F3FFFFFFFFFFFC6E6BED9491EE9A98EDFFFFFF7975EF7E7BF180
        7CF1807CF17F7BF07F7CF0807CF18A86F70A0FB6EFF0F7FFFFFF545454BFBFBF
        B6B6B6B7B7B7B7B7B7B6B6B6B2B2B2B1B1B1ABABABDBDBDBFFFFFFFEFEFEACAC
        ACC0C0C0C3C3C3FFFFFFB2B2B2B6B6B6B7B7B7B7B7B7B6B6B6B6B6B6B7B7B7BE
        BEBE606060F3F3F30000FFFFFF0001A69290FB8584F38583F18080F2AEADF4E2
        E1F7DDDDF9FFFFFCFFFFFFF7F7FC8685F28180F38281F38584F29090F08180F3
        8584F38584F38583F18484F28584F38584F3908FF90D12B5F0F0F7FFFFFF5353
        53C6C6C6BCBCBCBABABAB9B9B9D1D1D1ECECECEBEBEBFEFEFEFFFFFFFAFAFABC
        BCBCBABABABABABABBBBBBC0C0C0BABABABCBCBCBCBCBCBABABABBBBBBBCBCBC
        BCBCBCC4C4C4616161F3F3F30000FFFFFF0000949D9AFF8F8CF78E8CF68D8AF5
        8A87F68583F3AEADF7BAB8F8A1A0F5807DF48C89F68E8BF68E8BF68E8BF68C89
        F58D8BF58E8BF68D8BF58E8CF68E8BF68E8BF68E8BF6A19DFF0000A1F7F7FAFF
        FFFF4A4A4ACDCDCDC2C2C2C1C1C1C0C0C0BFBFBFBBBBBBD2D2D2D8D8D8CBCBCB
        B9B9B9C0C0C0C1C1C1C1C1C1C1C1C1BFBFBFC0C0C0C1C1C1C0C0C0C1C1C1C1C1
        C1C1C1C1C1C1C1CECECE505050F8F8F80000FFFFFF3033AB4D4CCDA5A2FF9692
        F99692F99491F29592F8928EF9908DF8928FF89692F99692F99692F99692F996
        92F99692F99592F99794F49592F89692F99692F99692F9A09CFF7B7BE900008F
        FFFFFFFFFFFF6E6E6E8D8D8DD1D1D1C6C6C6C6C6C6C2C2C2C5C5C5C4C4C4C3C3
        C3C4C4C4C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C4C4C4C5C5C5C6
        C6C6C6C6C6C6C6C6CECECEB2B2B2474747FFFFFF0000EEEEEBF0F0F80000805D
        5BD3B3B0FFAAA7FFAAA8FFAAA7FFA9A7FFAAA7FFAAA7FFAAA7FFAAA7FFAAA7FF
        AAA7FFAAA7FFAAA7FFA9A7FFAAA7FFA9A7FFAAA7FFAAA7FFB3AFFF7D7BE60000
        82B9BAE0FDFDF7EDEDEDF4F4F4404040979797D8D8D8D3D3D3D4D4D4D3D3D3D3
        D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
        D3D3D3D3D3D3D3D3D3D7D7D7B1B1B1414141CCCCCCFAFAFA0000D5D5D5FFFFFF
        E6E7F30706910000851413A51514A51514A51413A41413A41514A51414A51414
        A51514A51514A51413A41413A41514A51414A51514A51313A41F1DA900008F00
        0086BBBBE0FFFFFFD6D6D6D5D5D5FFFFFFEDEDED4C4C4C4343435C5C5C5D5D5D
        5D5D5D5C5C5C5C5C5C5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5C5C5C5C5C5C5D5D
        5D5D5D5D5D5D5D5C5C5C636363484848434343CDCDCDFFFFFFD6D6D60000E5E5
        E5D4D5D5F1F1EDFFFFFFF8F9FADCDCEDDEDEEEDEDEEEDEDEEEDEDEEEDDDCECDE
        DEEEDEDEEEDEDEEEDCDCECDEDEEEDEDEEEDEDEEEDEDEEEDEDEEEDEDEEEDEDEED
        E8E8EFFFFFFFFBFBF5D5D5D5E1E1E1E5E5E5D5D5D5EFEFEFFFFFFFF9F9F9E5E5
        E5E6E6E6E6E6E6E6E6E6E6E6E6E4E4E4E6E6E6E6E6E6E6E6E6E4E4E4E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6ECECECFFFFFFF8F8F8D5D5D5E1E1E1
        0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SB_EXCLUIClick
      OnMouseMove = SB_EXCLUIMouseMove
    end
    object SB_EDIT: TSpeedButton
      Left = 240
      Top = 0
      Width = 40
      Height = 37
      Hint = 'Editar'
      Enabled = False
      Flat = True
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D0000120B0000120B00000000000000000000FFFFF5F6FFFE
        BDFDFF72F1FB27DCF51DDAF71EDCF71EDFF81DDDFB1ADEF91FDDF920DDF81CDE
        F920DDF826DDF922DDF71BDDFA1FDDF825DBF61EDFF661F1FAC0FBFEFDFFFFFF
        FDFFFBFBFBFFFFFFF8F8F8EAEAEAD4D4D4D2D2D2D4D4D4D5D5D5D5D5D5D6D6D6
        D4D4D4D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D4D4D4D4D4D4D3D3D3D6D6D6E7E7
        E7F7F7F7FEFEFEFDFDFDFDFFFA9BF5FF32CBF717B6ED16BAEC06B4EF00B6F700
        BBF200B8FA00C0F500C1F200C2F500BFF300C0F500BEF400BCF400BAF600B7F4
        00B5F100AFF102B2F42CC6F497F2FDF9FDFDFFFEFDF1F1F1C9C9C9B5B5B5B9B9
        B9B3B3B3B7B7B7B8B8B8B9B9B9BDBDBDBDBDBDBFBFBFBCBCBCBDBDBDBBBBBBBA
        BABAB8B8B8B7B7B7B5B5B5AFAFAFB3B3B3C4C4C4EEEEEEFCFCFCCBFDFE36CFF4
        00AEF700B0F814C0F613C4FC07BEFC04C5FE03C0FA05C8FD01C8FD03CAFE01C4
        FB03C5FB00C6FE03C5FE03C2FD00C0FC03BFFE00BAFF00B2FD00B0F52FC9EEB7
        FDFFFFFAF9CBCBCBB0B0B0B2B2B2BEBEBEC3C3C3BDBDBDC3C3C3BEBEBEC5C5C5
        C5C5C5C7C7C7C2C2C2C2C2C2C2C2C2C3C3C3C0C0C0BEBEBEBEBEBEBABABAB4B4
        B4B0B0B0C6C6C6F7F7F77EF3FB0EB1EF00BAFE00BFFC18E0FF1ADDFF0DD5FF0B
        D9FF09DDFF00C7FF00CCFF00BAF703D9FF03CFFF03D2FF00C9FF05D8FF06D5FF
        00C3FF0EDAFF06B3F700B5FE08B1EF5DEFFCFDEDEBB3B3B3BBBBBBBDBDBDDADA
        DAD8D8D8D1D1D1D6D6D6D6D6D6C5C5C5C9C9C9BABABAD3D3D3CBCBCBCDCDCDC7
        C7C7D3D3D3D1D1D1C1C1C1D6D6D6B5B5B5B8B8B8B1B1B1E8E8E839DFF800B1F1
        00BEFA28E8FF00395E0862880E92B40353790861841AADDC117FB138CEFC0061
        8B12A8CE1480AB41E4F60058781186A834C2EA05477218DBFF00B5FC00B1F50E
        D9FCEDD7D3B0B0B0BCBCBCE3E3E33C3C3C6363638F8F8F545454606060ACACAC
        818181CDCDCD626262A6A6A6818181DBDBDB585858838383C0C0C04B4B4BD6D6
        D6B6B6B6B2B2B2D1D1D139DCF800B7F200BBFC55FFFF0400003A889B2C8CA419
        344F40A9BD124D6727577367EBFC00193139CBDD2141571C4656194158335F6F
        2540511A5A750DDAFF00BAFC00B4F307D6FCECD5D0B5B5B5BABABAF8F8F80000
        008686868A8A8A363636A5A5A54D4D4D595959E4E4E41B1B1BC4C4C442424246
        46464343435F5F5F4141415C5C5CD4D4D4BABABAB4B4B4CFCFCF38DDF900B9F4
        00BBFC4FFCFF000000307F952F91AB0B3A5631B6C81450692D657B66DBE7000F
        2030C6D72196AD00000532E2F0204052334F5B0C2E441AEAFF00BEFC00B8F703
        D7FEEED7D2B7B7B7BABABAF5F5F50000007E7E7E8F8F8F3C3C3CB0B0B0505050
        656565D4D4D4101010BEBEBE919191020202D7D7D74141414F4F4F313131E2E2
        E2BDBDBDB8B8B8D1D1D12EDDF900BCFA00BCFD44EDFF00294304597A2A98B60E
        4B5F0864761FBADD1E92B81C798E0A343A07809014CBE413596E21FCFF0E687A
        0C4D62237E9B0CD7FF00C4FF00BBF400D8FDEFD7D2BABABABCBCBCE8E8E82B2B
        2B5959599696964B4B4B616161B6B6B69292927575753232327A7A7AC3C3C359
        5959EEEEEE6565654C4C4C7D7D7DD2D2D2C1C1C1B8B8B8D1D1D137DFF900BAF4
        01C2FF00BCF614F6FF12F0FF08EBFF20FFFF0EEDFF02E2FF06F1FF1AF4FF37FF
        FF1AEAFF0BDDFF15EAFF00D1FD16E7FF1DEEFF04DEFF00C6FE02C2FC02BEF105
        D8FCEED7D3B8B8B8C2C2C2BBBBBBEBEBEBE5E5E5E1E1E1F5F5F5E2E2E2D9D9D9
        E5E5E5E9E9E9F9F9F9E1E1E1D5D5D5E2E2E2CACACAE0E0E0E5E5E5D6D6D6C2C2
        C2C1C1C1BBBBBBD1D1D12FDAFA03BFF501C6FC01CBFC08D8FC0BD6F61BAAC117
        A3BF11F0FF0DDBF60ABCD008DBF60FE5FF1AE5FF11E1FF00D2FD00D3FE00D0FA
        00CFF800CEFC00C6FF02C3FD00BFF200D9FDECD3CFBDBDBDC3C3C3C6C6C6D0D0
        D0CDCDCDA3A3A39E9E9EE7E7E7D1D1D1B3B3B3D1D1D1DEDEDEDDDDDDD8D8D8CC
        CCCCCCCCCCCACACAC9C9C9C8C8C8C3C3C3C2C2C2BCBCBCD0D0D02FDBFA01BFF8
        00CBFF0CCBF1195970146D89198EA806536E33AEB6156B7C1097AB1CB5C30D46
        4F1694A935BECE2BECFF00D1F700D4FD00D0FD00CDFE01C9FF01C4FD00C3F500
        D6FEEDD5D0BDBDBDC7C7C7C5C5C55959596C6C6C8B8B8B535353A7A7A7676767
        919191ACACAC4444448E8E8EB7B7B7E2E2E2C8C8C8CECECECACACAC7C7C7C5C5
        C5C2C2C2BEBEBECECECE33D9FA00BEF400C6FB12D0F72BC1DC28C4E526DEFF28
        EBFF00222E35C1CF2DE9FF62EEFF00282B51F3F82A4F512D7D8333FFFF00D2F9
        03CEF702CDF900CBFC00C4FB00C2F600D3FFECD4CFBBBBBBC2C2C2CACACABBBB
        BBC0C0C0D7D7D7E2E2E2222222BABABADFDFDFE7E7E7242424E8E8E84C4C4C77
        7777FFFFFFC9C9C9C7C7C7C7C7C7C6C6C6C0C0C0BEBEBECECECE2FDAF919C6F8
        19CEFC17D3FF17DBFF20DFFF22DEFE26DFFF37FFFF1EECFF1BDCFD69FFFF1251
        5A409B9A000509020000257F8854F7FF2CE2FF1FDAFE19D6FF1ACFFD11C4F600
        D1FFEAD3CEC3C3C3CACACACECECED5D5D5D8D8D8D7D7D7D9D9D9F9F9F9E1E1E1
        D5D5D5FFFFFF4E4E4E939393050505000000797979EFEFEFDBDBDBD4D4D4D0D0
        D0CBCBCBC2C2C2CCCCCC2CD8FA26C8F82FD6FE28D7FD2CD8FE29DBFB2ADCFA31
        DAFE23E3F826E3F426DDFB3FFAFF1F787C00000063A8B267F6FF03050C2C7A7F
        4AEDFD29DFFD28D6FD33D4FE28CDFA05D2FEE8D2CDC6C6C6D2D2D2D1D1D1D3D3
        D3D5D5D5D5D5D5D5D5D5D9D9D9D9D9D9D7D7D7F1F1F1727272000000A5A5A5ED
        EDED070707757575E3E3E3D8D8D8D1D1D1D1D1D1CACACACDCDCD33D3FB26CDFB
        2ADBF92CDDF92CD9FD29DBFB2DDEFD36D9FF2BE3FD2FE0F82BE0FC23E4FF4EE6
        EF1547461D333867FFFF46C0CD0B1E232C7C8348F0FF22DBFC31D8FD27D0F802
        D0FFE7D0CACACACAD4D4D4D6D6D6D3D3D3D4D4D4D7D7D7D5D5D5DBDBDBD8D8D8
        D9D9D9DDDDDDDCDCDC424242323232F8F8F8B9B9B91E1E1E787878E8E8E8D4D4
        D4D4D4D4CDCDCDCBCBCB34D4FC26D1FC2FDBFD30DBFA34DBFE34DBFE32DEFF38
        DDFE2CE2FD34E2FD30E0FC2FDDFF31E9FF55EEF514242704000382FFFF49C0CC
        081117338D9759FFFF35D3F92ED4FC00CAFFE7D0CACDCDCDD5D5D5D5D5D5D6D6
        D6D6D6D6D7D7D7D8D8D8DADADADADADAD9D9D9D6D6D6E1E1E1E4E4E423232300
        0000FFFFFFBABABA121212888888FEFEFED0D0D0CFCFCFC8C8C828D1FC30D4F9
        4BE4F74AE4F633E1FE34DDFF3BDEFC32E5F62FE4F831E2FB36DFFE38E2FD33E0
        FA32EAFE60FFFF1546500A000085FFFF316C6C00000044A9B455F7FF3CDAF805
        CDFDE3CDC8CFCFCFDCDCDCDDDDDDDBDBDBD8D8D8D9D9D9DBDBDBDBDBDBDADADA
        DADADADBDBDBD9D9D9E0E0E0FCFCFC444444000000F7F7F7666666000000A3A3
        A3EEEEEED4D4D4C9C9C92BD5F932D9F73BE4F73EE3F746E2FD44E0FD40E1FA36
        E5FB3CE2FD32E5FE37E5FD39E2FA38E6FB31E2FB3FE9FE5FFFFF172B2C000304
        00000011151751DCE646E9FF3DDCFB05D1FEE6D0CBD2D2D2DBDBDBDBDBDBDCDC
        DCDADADADBDBDBDDDDDDDBDBDBDCDCDCDCDCDCDADADADEDEDEDBDBDBE1E1E1FF
        FFFF292929030303000000151515D4D4D4E1E1E1D7D7D7CBCBCB2FD4FA37DBFA
        3BE3FD3CDFFD46E3FD4FE5F84AE4F935E4FD41E1FE3BE4FE3EE3FC40E4FC3BE3
        FD3BE4FA3CE1F93EEAFF58E9F014474D10282B5ED0D347F6FF40E0FB3BDBFE08
        D2FFE6D0CBD5D5D5DCDCDCD9D9D9DDDDDDDEDEDEDDDDDDDCDCDCDBDBDBDDDDDD
        DCDCDCDCDCDCDBDBDBDCDCDCDADADAE3E3E3DFDFDF454545262626C8C8C8ECEC
        ECD9D9D9D6D6D6CDCDCD36D0FB36D9F941E7FF3CDEFD42E5FE49E3F94AE4FA3F
        E5FE42E5FF46E4FF40E6FC3FE7F943E6FB3EE9F93FE8FB44E2FF4BEEFF55E7F3
        52DDEC49F1FF39E7F943E3FC3CDFFE0DCBFFE1CCC6D4D4D4DFDFDFD9D9D9DEDE
        DEDCDCDCDDDDDDDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDFDFDFE0E0E0DFDFDFDC
        DCDCE7E7E7DEDEDED5D5D5E7E7E7DDDDDDDCDCDCD9D9D9C9C9C97DE4F22FD3F0
        3FE9FF4EEBFE3FE8F93DE6FF41E7FF45E9FC46E8FD48E8FD43E8FE41EBFC45EB
        FA42E9FE40E9FF40E9FC4AE8F945E9FF41E5FF42E8FF44E7F747EDFF30D6F449
        DFF8EFDEDCCDCDCDE1E1E1E3E3E3DFDFDFDFDFDFE0E0E0E0E0E0E0E0E0E1E1E1
        E1E1E1E2E2E2E2E2E2E1E1E1E2E2E2E1E1E1DFDFDFE2E2E2E0E0E0E1E1E1DEDE
        DEE4E4E4D1D1D1D9D9D9BCF4F730C8E530E3FE49ECFC46EDF743EAFD46E9FE45
        ECFB4DEBF74CE8FB4AE8FD44EBFD44EAFD4DE6FE4DE7FC45EBFA4AECF84FE9FC
        4DE6FB49E9F946F2FC35E9FF2DC8E89DF3F8FAF0EFC3C3C3DBDBDBE4E4E4E3E3
        E3E2E2E2E1E1E1E3E3E3E1E1E1E0E0E0E1E1E1E2E2E2E1E1E1E0E0E0E0E0E0E1
        E1E1E2E2E2E1E1E1DFDFDFE0E0E0E7E7E7E0E0E0C4C4C4EDEDEDF2FDFF8AE2EF
        2AC4E734DBF646EEFF44EFFF46EBFF46EBFF3FF0FD47EEFE43EEFE3EEFFF41ED
        FF48EDFF49EFFE45EFFD41EFFD46EEFD46F0FC4AF0FF33DFF42BC7E688DEF0F3
        FFFAFEFBFCDEDEDEC0C0C0D4D4D4E5E5E5E6E6E6E4E4E4E3E3E3E5E5E5E5E5E5
        E5E5E5E5E5E5E4E4E4E5E5E5E6E6E6E4E4E4E5E5E5E5E5E5E6E6E6E7E7E7D7D7
        D7C3C3C3DBDBDBFDFDFDFFFDFEFCFFFEB6F2F55DD9F808C6F105CBEC08C9EF0A
        C5F305C9F407CAF206CBF207CBF008CCEF07CBEF08C8F109C8F306C8F407CAF2
        07CBF004C3F24AD3FAADECF5FDFDFEFFFFF6FDFDFEFEFEFEEDEDEDD6D6D6C2C2
        C2C3C3C3C3C3C3C0C0C0C3C3C3C5C5C5C5C5C5C5C5C5C5C5C5C4C4C4C3C3C3C3
        C3C3C3C3C3C5C5C5C4C4C4C0C0C0D0D0D0E9E9E9FDFDFDFDFDFD}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SB_EDITClick
      OnMouseMove = SB_EDITMouseMove
    end
    object SB_CONFIRMA: TSpeedButton
      Left = 280
      Top = 0
      Width = 40
      Height = 37
      Hint = 'Confirmar'
      Enabled = False
      Flat = True
      Glyph.Data = {
        760E0000424D760E000000000000360000002800000032000000180000000100
        180000000000400E0000120B0000120B0000000000000000000087B977319816
        339C1B359C1D38AC302FAB3031A93232AA3034A93132AA3032AA3034A93132AA
        3032AA3034A93132AA3032AA3034A93132AA3032AA3034A93132AA3034A9312F
        AB2D43A3449898985757575C5C5C5D5D5D6E6E6E6D6D6D6D6D6D6D6D6D6D6D6D
        6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D
        6D6D6D6D6D6D6D6D6D6D6C6C6C73737300004A9D36399D1B399A1F35A02935A9
        3236A93136A93236A83536A83436A83436A83436A83436A83436A83436A83436
        A83436A83436A83436A83436A83436A83436A83436A83536A93136A7356A6A6A
        5C5C5C5D5D5D6565656E6E6E6D6D6D6E6E6E6F6F6F6E6E6E6E6E6E6E6E6E6E6E
        6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6F
        6F6F6D6D6D6E6E6E00004FA03A399C1D349A1D37A72E35A93036AA3036AA3136
        A83436A93336A93336A93435A93336A93336A93336A93336A93336A93336A933
        36A93336A93336A93336A93336A93435A93137A7366D6D6D5D5D5D5C5C5C6B6B
        6B6D6D6D6D6D6D6E6E6E6E6E6E6E6E6E6E6E6E6F6F6F6E6E6E6E6E6E6E6E6E6E
        6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6F6F6F6D6D6D6E6E6E
        000051A03A369D1C2F9E1F37AA3135AA3036AA3035AA3135A83436A83336A934
        32A73028A12632A83036A83435A93436A93435A83436A83436A83436A83436A8
        3336A83436A83435A93137A7366D6D6D5D5D5D5F5F5F6E6E6E6D6D6D6D6D6D6E
        6E6E6E6E6E6E6E6E6F6F6F6C6C6C6464646C6C6C6E6E6E6F6F6F6F6F6F6E6E6E
        6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6D6D6D6E6E6E0000509F3B3A9C1A
        349F2A35AB3136A93335A93336A93037A83134A73630A729359B2DBBE9B841A0
        3E2CA82636A83435A83337AA3035A93136A93135A93131A83534A93336A93135
        AA3239A7366D6D6D5B5B5B6565656E6E6E6E6E6E6E6E6E6D6D6D6D6D6D6E6E6E
        686868646464D1D1D16F6F6F6767676E6E6E6E6E6E6D6D6D6D6D6D6D6D6D6D6D
        6D6D6D6D6E6E6E6D6D6D6E6E6E6E6E6E0000509F3B389C1A38A43135AA3236A8
        3436A93436A83632AA2F2BAD242C9930CFEDD2FFFFFFE9FAEE409F3C2CA72A2F
        AB2F35A93336AA3035A93036AA3033AA3236AB3136A92C33A628359F2B6D6D6D
        5B5B5B6B6B6B6E6E6E6E6E6E6F6F6F6F6F6F6D6D6D696969636363DEDEDEFFFF
        FFF2F2F26E6E6E6969696D6D6D6E6E6E6D6D6D6D6D6D6D6D6D6E6E6E6E6E6E6B
        6B6B676767656565000053A13E329F1C36A83435A93136A83436A93435A83330
        AB2E329730D9F1D8FFFFFFFFFDFFFFFFFFF0FEEF469A482DA72A36A83335AA31
        36AB3235A93136A82C36A62637A42137A4203AA1287070705E5E5E6E6E6E6D6D
        6D6E6E6E6F6F6F6E6E6E6D6D6D646464E5E5E5FFFFFFFEFEFEFFFFFFF7F7F770
        70706969696E6E6E6E6E6E6F6F6F6D6D6D6A6A6A666666636363626262646464
        0000529F3932A42535A93237A92E36A73435A7352EA926309B2FE0FAE3FFFEFF
        FEFCFFFAFFFDFDFDFFFFFAFFF0FFF44BA3472DA72336AA3034A62A32A42636A4
        2337A32237A4203BA5203AA1286C6C6C6565656E6E6E6C6C6C6E6E6E6E6E6E68
        6868656565EDEDEDFFFFFFFEFEFEFDFDFDFEFEFEFDFDFDF8F8F8757575656565
        6D6D6D6868686565656464646363636262626363636464640000519F3836A72E
        34AB3037A83330AC2C2CA828379E3AD9F7D6FFFEFFFBFEFEFEFFFEFFFFFFFFFF
        FFFFFEFDFFFFFFEEFFEC4DA0432AA11833A81C37A62138A42238A52237A5233B
        A52137A2286C6C6C6B6B6B6E6E6E6E6E6E6C6C6C6868686B6B6BE7E7E7FFFFFF
        FDFDFDFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFF6F6F67272725D5D5D6262626464
        6463636364646464646463636365656500004DA23A34AC3034AA3037A7342CAA
        28409E3BDCF6DFFFFFFFFFFAFFFEFEFDFEFFFEFFFFFFFFFFFFFEFFFBFFFEFEFF
        FFFFF9FFF94F9E3F31A21637A52238A42338A52237A5233BA52137A2286E6E6E
        6E6E6E6D6D6D6E6E6E6969696D6D6DE9E9E9FFFFFFFDFDFDFEFEFEFFFFFFFFFF
        FFFFFFFFFDFDFDFFFFFFFFFFFFFCFCFC6F6F6F5C5C5C64646464646464646464
        646463636365656500004EA93F32AB3431A73330A925399D3EE4FBE7FFFBFFFB
        FEFFFCFFFBFFFCFFFFFFFFFFFFFFFFFFFFFBFDFDFAFFFBFCFFFCFFFCFFFBFFF9
        52A4402DA11936A52238A42437A5223AA42137A2287474746F6F6F6C6C6C6767
        676B6B6BF0F0F0FDFDFDFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFCFCFCFD
        FDFDFEFEFEFEFEFEFCFCFC7272725D5D5D646464646464646464636363656565
        00004EAB4E34AA2F32A8293D9D35E7FEEDFFFFFFFDFFFDFFFEFEFFFDFFFFFFFF
        ECF9E84D9835D2EDCBFFFFFFFFFDFFFFFEFFFEFFFDFFFFFFF8FFF852A54428A0
        1636A52238A42236A52134A2277D7D7D6D6D6D696969696969F3F3F3FFFFFFFE
        FEFEFFFFFFFEFEFEFFFFFFF1F1F1676767DCDCDCFFFFFFFEFEFEFFFFFFFEFEFE
        FFFFFFFCFCFC7575755B5B5B646464636363636363646464000050AB5232AC26
        42A042F3FFFCFFFBFFFFFEFBF9FEFEFFFFFDFFFFFFEAF9E7419B291EA7112790
        1CD2EDCBFFFFFFFFFAFFFDFFFBFEFEFFFFFEFFFFFFFF58A8492E9C1935A52234
        A42037A5337E7E7E696969717171F9F9F9FDFDFDFDFDFDFCFCFCFEFEFEFFFFFF
        F0F0F06262625C5C5C565656DCDCDCFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFF
        FF7979795B5B5B6464646262626C6C6C000052AB4C2EAD2F319F2F9DCC90FFFF
        FFFFFDFFFDFFFEFFFFFFE2F6DC3C99272AA31D3AA32335A51D31941DC4E7BEFF
        FFFFFFFCFFFCFFFEFDFDFDFFFEFFFFFFFF59A94B299F1334A52B41AD497C7C7C
        6E6E6E676767AEAEAEFFFFFFFEFEFEFEFEFEFFFFFFE9E9E96060606060606363
        63616161595959D3D3D3FFFFFFFEFEFEFEFEFEFDFDFDFFFFFFFFFFFF7A7A7A59
        5959686868777777000052AE4932A82734A722259A1296C78AFFFFFFFFFFFFE1
        F4DD3A9A2730A51B37A72439A82336A62135A71D319823BFE4BCFFFFFFFEFFFE
        FBFFFDFEFDFFFFFFFFFFFFFF6AB36537AC3D3CAB487C7C7C6868686565655656
        56A9A9A9FFFFFFFFFFFFE9E9E96161616060606666666666666464646262625E
        5E5ED0D0D0FFFFFFFFFFFFFDFDFDFEFEFEFFFFFFFFFFFF8C8C8C727272737373
        00004E9A3933971B38971B36981625890E8DC084E3F6DB388A212F9415349619
        37961937951A35951734931D31970F2C8312BEDFB9FFFFFFFFFBFFFBFEFDFCFB
        FCFFFFFF8BCC922DA5393DAA496A6A6A5959595959595757574C4C4CA2A2A2E9
        E9E95656565555555858585858585858585656565858585353534B4B4BCCCCCC
        FFFFFFFDFDFDFDFDFDFCFCFCFFFFFFACACAC69696973737300004B9136308C15
        358E15358B18368D152E860C2E88132E8B12348C16378E13348D17348D17348D
        18348D16348E14318C11257C08BEDDB0FFFFFFFFFFFFFFFFFF81AE6E2A991B2D
        A83037A73D6464645151515252525252525151514949494E4E4E4F4F4F515151
        5151515252525252525353535252525151514F4F4F424242C7C7C7FFFFFFFFFF
        FFFFFFFF8E8E8E5A5A5A6B6B6B6F6F6F00004D9134338E16368E16388E16378D
        16378E18318E16368D18368D18368E16358D18358D17358D18358E17368D1937
        8E19308E12267B0BBDD6B6FFFFFF82AD6B1C790632A63035AA3236A736636363
        5252525252525252525252525353535252525353535353535252525353535252
        52535353535353535353545454505050434343C6C6C6FFFFFF8C8C8C4040406B
        6B6B6E6E6E6E6E6E0000458329368D18368D17378D18358E18358D17368D1836
        8E17358E17358D18368E18368E18368E18368E18358E17358D17358E1733900D
        35801762A0462A7D0C318D133DA83237A93336A7365656565353535252525353
        5353535352525253535353535353535353535353535353535353535353535353
        53535252525353534F4F4F4C4C4C7373734545455050506D6D6D6E6E6E6E6E6E
        00004C832B2C7D0C368E19368C19368E17368D17368E18368D18368D18368D18
        368D18368D18368D18368D18368D18368E17368B1C358D183189182C89103390
        13358D173BA83335A93237A83657575745454554545453535353535352525253
        5353535353535353535353535353535353535353535353535353535353545454
        5353535151514D4D4D5252525252526E6E6E6E6E6E6F6F6F00004C7F2A2F780C
        308514349017348E18358E18368D18368E17368E17368E17368E17368E17368E
        17358E17368E17368E17348D17328C12358E16348E15368E16338D1839AB3332
        AA3138A5385555554242424D4D4D545454535353535353535353535353535353
        5353535353535353535353535353535353535353535252524F4F4F5252525252
        525252525353536F6F6F6E6E6E6E6E6E00004782232F7B022F780D388C14368F
        16348F15358E16368E16358E16358E16358E16358E16368E17368E17368F1733
        8C15338B14358D17368E18358D18378E163290193AAA3336A93131AA2E535353
        3F3F3F4343435050505353535252525252525252525252525252525252525252
        525353535353535353535151515050505252525353535353535252525555556F
        6F6F6D6D6D6C6C6C000073985D2571002D72032F7903348A10318B112E8C1130
        8B12308B12308B12308B12308B122F8A122F8A122D88102E8811308B12308B11
        308B112F8B113289112F8E1634A6302DA4293799387B7B7B3939393B3B3B3E3E
        3E4D4D4D4E4E4E4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E4E4E4E4E4E4C
        4C4C4D4D4D4F4F4F4E4E4E4E4E4E4E4E4E4D4D4D5252526B6B6B676767686868
        0000FFFFFE7FA76A66964B659549689D4F6CA65869A6566AA6556AA6556AA655
        69A5546AA65468A55369A4546BA6556AA65469A5536AA7526AA7526AA7526AA4
        5469A9586CBB6965BB6BD7EFDBFFFFFF8989897171716F6F6F7676767F7F7F7E
        7E7E7E7E7E7E7E7E7E7E7E7D7D7D7D7D7D7C7C7C7C7C7C7E7E7E7D7D7D7C7C7C
        7D7D7D7D7D7D7D7D7D7C7C7C818181929292909090E3E3E30000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_CONFIRMAClick
      OnMouseMove = SB_CONFIRMAMouseMove
    end
    object SB_CANCEL: TSpeedButton
      Left = 320
      Top = 0
      Width = 40
      Height = 37
      Hint = 'Cancelar'
      Enabled = False
      Flat = True
      Glyph.Data = {
        0E100000424D0E100000000000003600000028000000340000001A0000000100
        180000000000D80F0000120B0000120B00000000000000000000ADDCFE3767F2
        184DF80849FE0043F80045FC0241FD0341FE0145FE0243F40F46F30F4CFD0040
        F8003FFF003FFF0040FC0242FE023EF8154DFD0540FA0041FD0040FA0040FE02
        3CF73E65F3C5DCFFEAECF18281806B6B6B6B6B6B646464666666656565656565
        6262626565656565656E6E6E6060606161616363636565656161616363636F6F
        6F6565655E5E5E646464636363606060828282F4F4F42B67EE0E49E30845FE04
        46FF0148FF0143FD0543FF0541FF0346FF0141FC0440FA033EFB0A46FF003DFF
        003DFF013EFF023FFF0340FE0840FE033FFD003CFF0242FF023CFD083FFE0437
        E04D72EC6E768B63625E6868686666666B6B6B69696966666667676767676766
        66666363636262626B6B6B626262636363626262686868626262606060646464
        676767626262616161676767545454828282014AF7054CF8003FF20034F20140
        F4003DF10039EA0138E9003AF00036F2003AF3002FEF012FED033DF7002CE900
        34F00031ED002FED002EEF0036F10339F10030EA0232F00337F30039F50D45DB
        565F7C6F6D695C5C5C5858585E5E5E5959595C5C5C5252526161615555555959
        595454544F4F4F5F5F5F4B4B4B5353535454545050504F4F4F5555555C5C5C53
        53535353535959595959595E5E5E0349FC1C56F57CA7FFA6D6FF3F73FD6999EA
        668ED987ACFD486EE5749DFD557CF482A3FAB2D2FF224CCD98C2FC729BFD6E92
        F9A3C7FE8EB6FF628AE93D64E188ADFF7C9FE5476CC55283FF1849E359617D70
        6F6AC4C4C4F4F4F4929292A7A7A79D9D9DC4C4C47C7C7CB3B3B3929292C1C1C1
        F6F6F6626262E3E3E3BABABAA9A9A9DEDEDED7D7D7A6A6A66D6D6DCCCCCCB3B3
        B37B7B7BA8A8A85E5E5E0249FB5689EE7996CB2F58CB2F5DC2CBEBFF9DBDFF81
        A3EC819FECBFDAFAAEC6FB617AB84964C55271C6B0D3FF476AD494B2FA4562C3
        203EBF8DACF5E6FEFF455FAAD3ECFFAAC3FD406AE8133FD858607CABAAA5A2A2
        A26A6A6A676767FEFEFECCCCCCA9A9A9B1B1B1F1F1F1D5D5D58080806E6E6E7B
        7B7BE7E7E7757575C2C2C26F6F6F505050BDBDBDFFFFFF676767FFFFFFD9D9D9
        8080805A5A5A004EFC3E7CF273A1DB6499F02E62D287A5EE7EA4E83C70F2A3D4
        FF3D66D795B8FF6E8DD17290E54469C8A5CCFA3A65D17FA6F84063F40A2FE85A
        7BEDBED8FF223CADB5CCF77F9AD35786FA0C41DC5C6584989691B4B4B4ABABAB
        6D6D6DB7B7B7B6B6B6858585F3F3F36F6F6FCDCDCD9E9E9EA5A5A5777777E6E6
        E6787878C3C3C37E7E7E4F4F4F959595EAEAEA464646E8E8E8A9A9A9A4A4A45A
        5A5A0151FE0D57F24484F0569BF70C4DDD3063DE3269EA1858F22262F72B65EC
        3E6FEA5280EE608DFD1745E05686FA487BFA3466F72455FA0D3FF6224EF0395F
        F2163DE24E79F75784F4174BE92958F0626A8672716C9C9C9CB3B3B36464647C
        7C7C8383837575757B7B7B7B7B7B8686869A9A9AACACAC606060A7A7A79B9B9B
        8181817171716161616C6C6C7B7B7B5858589C9C9CA0A0A06767677575750455
        FF0656F90256F20156F7004EFA044DFA0046FB064CFE0045F41559F5336CF80B
        3FDB0025D40532DE0029DB0136E80740F30340EF114EF70B45F90035F9063EFF
        0035F80035EF0137F14066FE646B8573726E7272726E6E6E6E6E6E6D6D6D6565
        656C6C6C6666667373738383835757573F3F3F4D4D4D4A4A4A5454545F5F5F64
        64646E6E6E6565655959596363635959595656565B5B5B808080065BFD065CFC
        0056F70660FE0057F90353FF034CFF0A4EFF0C4EF21248C95479D7ABBEFAD4E1
        FDCFE0FDA3BBFE4F72DB0E3FD00646F10749FA0C4DFF0444FC003FFD003EFF01
        42FF043FFC1C46E068708D7876727373737B7B7B7272727272726F6F6F6E6E6E
        6B6B6B595959868686CECECEF0F0F0EBEBEBCCCCCC8080805353536161616666
        66707070686868626262606060646464636363636363045BF6025CFB005AFC00
        58F3025AFB0154FE0C56FF0F4EE7426DD0CAE9FFE4FEFFD3E8FFCDE1FBCADFFA
        D2ECFFE3FFFFC0E0FF3861D00740E40243F00648F70344FA003DF90040FB033F
        FF1642E0686F8C7C7B767575757171717575757272727575756666667C7C7CFF
        FFFFFFFFFFFAFAFAEBEBEBECECECF9F9F9FFFFFFF8F8F8767676595959626262
        6666666868686464646363636363635E5E5E0B65FA0764FB0362FE005CF60059
        F80658FE094EE64E80DEE8FFFFDDF1FE7C9FE34071EA1E55E91C51E74673EE76
        96D5E1EDF6EEFBFF4772DA0640E30848FB0345F80144F90043FC003CFE1747E9
        6D759383827D7C7C7C747474747474747474666666949494FFFFFFFCFCFCB0B0
        B08787876C6C6C6A6A6A888888A7A7A7F6F6F6FFFFFF8585855A5A5A68686864
        64646464646565656262626565650765FA0F72FD066DFA0A6AF90964FC0051F0
        447AE0D2EDFED2F4FF4373CF0F4BD7084BEA034CF5054EFB0E41CA5671BEDBEC
        FAFAFFFFD3E4FC4168E1003CF10844FC0245FA0044FD0040FF1045E76C76938E
        8C878383838080807C7C7C6A6A6A8C8C8CFBFBFBFFFFFF7A7A7A626262676767
        6A6A6A6B6B6B535353797979F4F4F4FFFFFFF4F4F47D7D7D5C5C5C6969696666
        666666666363636363630268FB137AFE0E76F70E71F50C6AF51064F08FBAF6FF
        FFFF3E75CC004EE40454FB0656FF0252FB0048E83D69D3D6E8FFECFFFF7893BC
        FFFFFF8CA4F10C43F10645F70447FC0045FC0043FF1146E4727C9993928D8A8A
        8A8686868181817A7A7AC8C8C8FFFFFF7F7F7F6464647272726F6F6F71717163
        6363777777F9F9F9FFFFFF959595FFFFFFB8B8B8636363646464666666666666
        6666666464640170F81582FD1980F61379F41973EE4588E1CDF2FFA7C2F61C5C
        DD0E63FF0658FC0053FD044EE94F76C1EEFFFFE5F9FE4170E2073FBFAFCAF3CD
        E9FF3E65DE0547E70049F70047F80849FF1D49DF747C979998938C8C8C8F8F8F
        848484959595FFFFFFCDCDCD7272727D7D7D7575757575756767677E7E7EFFFF
        FFFFFFFF8282824D4D4DD4D4D4FDFDFD7A7A7A6262626767676767676D6D6D65
        65650074F8218FFF3798FF2089FD1A7AEA5A98DCD7FFFF6C94D31B68EB0264FF
        0A66FF1057E14173D2E8FFFFD1EDFE5683DE0242E2205EF47EA0DBE4FFFF4F74
        D10B4CEC0045F70047F70547FF2251EE747D99A6A5A0A9A9A99B9B9B848484A3
        A3A3FFFFFF9F9F9F7A7A7A8282827E7E7E696969818181FFFFFFFDFDFD919191
        5D5D5D787878ACACACFFFFFF8484846262626B6B6B6464646767677272720073
        F42C94FF3D9BFE2790FF1C7DEA5F9FDBD4FFFF5A8FD2146DEB016CFA0663E751
        87D8D7EDFFDEFAFF5185DF004BED004CFC215FF06D8DD3E7FFFF5076CD0A4AEF
        0047FF034DFA0042FF0F47EC747F9CA9A7A3AAAAAAA1A1A18B8B8BA9A9A9FFFF
        FF9A9A9A7C7C7C828282757575939393F9F9F9FFFFFF9191916666666E6E6E77
        77779A9A9AFFFFFF8787876565656969696969696767676767670F78EE2E96FF
        2892F81E8FFD2487F05F9FDAD1FFFF609AD81275F00669E5488AD2CFEEFFFAFF
        FF417AD90D58E20557FA0254FF1050DF688ACDE6FFFF5A7BD40C48F20049FF04
        4EFB0049FE124DE77D86A3A8A6A29D9D9D9A9A9A939393ACACACFFFFFFA6A6A6
        848484767676959595FAFAFAFFFFFF8989896E6E6E7272727070706B6B6B9191
        91FFFFFF8C8C8C6363636B6B6B6D6D6D6A6A6A6A6A6A167EEE2D98FF2195FD18
        8FFA2890F6529BE3C9FBFF99C4E82675D4448DD9DBFCFFDFFEFF5787D20757E7
        025CFB025BF9085AFF1B55DDA2BFECD1EEFF4068DC094AF5034EFF004BFA004C
        FC104FDD7D87A0ADABA7A6A6A69F9F9F9C9C9CA7A7A7FFFFFFC9C9C980808099
        9999FFFFFFFFFFFF9393936C6C6C787878757575797979656565CCCCCCFFFFFF
        7F7F7F6868686F6F6F6C6C6C6969696868680880F327A0FF239AFF2098FD2394
        F93090F2A4D6FBF9FFFF7A9BBEDDFFFFDEF6FC5690E50861EE0C68FA0868FE01
        5FFC0350F33C69D9FDFFFF98BEF81155ED034EFB014EFE004CFB004EFD1254E1
        7F8BA4B3B1ADA7A7A7A3A3A39E9E9E9D9D9DDFDFDFFFFFFF9E9E9EFFFFFFFDFD
        FD9F9F9F7777778080807B7B7B7B7B7B6A6A6A7E7E7EFFFFFFCBCBCB6E6E6E6D
        6D6D6D6D6D6C6C6C6E6E6E6D6D6D0386EE28A7FF239DFB26A0FB2096F71D8EF3
        65AFEBD7F9FEF0FFFFD5EFF96897D3206FE7056BFF076CFF0666F6075BE1356B
        E0BDDCFFD7F1FD5082DF0250EE0153FC0052FA0253F8004FFB1255E2828DA8B7
        B5B0A9A9A9ACACACA3A3A39A9A9AB8B8B8FEFEFEFFFFFFF6F6F69E9E9E818181
        8484848484847F7F7F6C6C6C7A7A7AEDEDEDFFFFFF9191916A6A6A6E6E6E7171
        716F6F6F6C6C6C707070078DE92DAEFF2CA8FD28A4F825A2FD1F99FC2C91E57F
        C5F6E6FFFFCEF1FC5D9DE71E6DDE0E64E3065BDD105DD95F9DEABDDFFBE2FEFF
        6D9CF21355DD0A59FB0055F90658FB0454F40052FC1054E48590ABBBB9B5AEAE
        AEABABABADADADA3A3A39A9A9ACACACAFFFFFFF8F8F8ACACAC7878787878786B
        6B6B717171ABABABEAEAEAFFFFFFAEAEAE6B6B6B7575757272727474746F6F6F
        6F6F6F6E6E6E118CE639B3FF2FA8FC2AA6FF1F9EFC249FFF2799FA2E8DE470B3
        F3CEF9FFE0FAFFDDF4FDD9EDFDDBE9FCE3F5FDE1FAFFDAFEFF6098ED0D5BDB0B
        5EF60C5BFF0856FD0553F90658FE0054FF0A55E28593ADBEBCB7B1B1B1AFAFAF
        ACACACAFAFAFA5A5A5989898BCBCBCFFFFFFFFFFFFFEFEFEF0F0F0F5F5F5FFFF
        FFFFFFFFFFFFFFA2A2A26A6A6A7676767979797373737070707272727373736F
        6F6F1591F134AEFF39B1FE2BA9FE29A8FF27A3FC28A1FE299EFD2B91EB509AE2
        A5D4FCC2E8F8CBECFBCDE8FAC0E0F98CBCF72A6CD01162DE116BF90A61FC0357
        F80A5DFE0457FE0055FC004CF4387CFF8694ACBCBAB6B8B8B8B3B3B3B1B1B1AA
        AAAAACACACA8A8A89B9B9B9F9F9FDDDDDDEBEBEBF0F0F0EEEEEEEBEBEBC4C4C4
        7575757676768383837B7B7B7474747878787777777272726A6A6A9696960A8D
        EA36B5FF30ACFC2FAFFD2BADFD2BA9F729A6FD24A1FE2399F62C9DF62D96EE1D
        83E42284EF1C7BEF096AEA0068EA086DF80D6AFB186CFC1468FB0762FA005AFE
        0058FF005AFB0558F63069E78893A9C1C0BCB4B4B4B5B5B5B3B3B3AFAFAFB0B0
        B0AFAFAFA5A5A5A7A7A79F9F9F9191919292928C8C8C7D7D7D7A7A7A8282827E
        7E7E8383838383837B7B7B7A7A7A747474757575727272808080369DEC30A2EE
        35B5FF2BB0FF2FB3FF35B0FE2CA9FF29AAFF29A6FF26A0FE2097FD1E92FE1889
        FF1180FF0E7DFF0A79FF0773FF066CFD086AFD0D6BFE0665FB005EFF005CFF07
        62FB0751D75381E49AA2B5AEADAABDBDBDB7B7B7BCBCBCB9B9B9B5B5B5B8B8B8
        B4B4B4ACACACA7A7A7A2A2A29C9C9C9595959090909191918C8C8C8282828181
        818282827E7E7E787878787878787878656565929292A0EEFD399FEC0C8FED07
        92F2088EEC148DEC0C89F00384F20886F10984EF087FF1077BF40879F70576F4
        0270F3066FF7056EF8036CFC0068FD0166FB0367FA0062FF0060FF035BF43D7F
        F3BCE6FFEBF1F5A8A7A69797979B9B9B9696969696969595959191919393938F
        8F8F8D8D8D8C8C8C8989898888888686868484848181818484848080807D7D7D
        7E7E7E7B7B7B7B7B7B757575959595F5F5F5}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_CANCELClick
      OnMouseMove = SB_CANCELMouseMove
    end
    object SB_ATUAL: TSpeedButton
      Left = 360
      Top = 0
      Width = 40
      Height = 37
      Hint = 'Atualizar'
      Enabled = False
      Flat = True
      Glyph.Data = {
        0E100000424D0E100000000000003600000028000000330000001A0000000100
        180000000000D80F0000120B0000120B00000000000000000000FEFBFFF6F5F8
        D5D4D8AFA7B3746094563F73483264432F5E3F2B53402A594228594427574127
        5541285640285A402659442B5E41285C47305E49325F533E66776488A69BABCC
        C8CFF5F2F4FDFDFDFFFEFFEAE9EBBDBEBA9696946460624F4D4E454545424242
        3C3C3C3F3F3F3D3D3D3B3B3B3A3A3A3E3E3E3D3D3D3C3C3C4040404141414444
        444D4D4D5E5E5E898989BABABADEDEDEFDFDFD000000FBF9FCFFFFFFFFFFFFBC
        91D97127C75C09BA660CC56C0BC97012CD6F0CCF740DD1740ECD6E0ECA7713D7
        6F0FCE6C0FCC690ECB6C0ECA690EC6670EC25E09BA6625C6AD81DCFEEEFFFFFF
        FFFEFBFFFDFCFDFFFFFFEFEFEDA1A29D65635F6363636A6A6B6C6C6C6F6F6F6F
        6F6F6F6F6F7171717373737777777070706E6E6E6D6D6D6C6C6C6B6B6B656565
        606060959595E2E2E2FFFFFFFFFFFF000000FDFEFFFCF4FCA178CA3C00954A00
        965800A46300AF7200C07300CA7300C96D00C26700BD6C08C36000B65900AF59
        00AE5A00B15700AB5800AE5600AC5000A83F009C3300938556BBFAF3FBFFFEFE
        FFFFFFE2E2E26D6E6C403F414847484C4B4C5656565D5D5D5A5A5A5959595858
        585858586060605454545151515151515252524D4D4D4C4C4C4949494F4F4F3F
        3F3F606060D8D8D8FFFFFF000000FFFFFFC19DE24A089C40009252009E6100AB
        6900AC6F03B16800B46200A46200A85E00AC5800A854029D45008C4A008B4A00
        905102964B00954400914500943A008B37008535008BA87CDBFFFFFFF8F8F783
        83803D3F3C4443485B595E5353565B5B5B646464505050565656595959565656
        5353535252524747475252524949495252524E4E4E4A4A4A4A4A4A4141413838
        386D6D6DF5F5F5000000FEFBFF8051C130009A641BAEEDACFDBE71D9A34EDAAA
        56EAB267CFFEC6FDD393F99152C3D58DE2EFA6FFEBA6F0C680F9FFD9FFCD82EE
        D094EAC490E8B176EBB27FDFAE7CBE410994581DABFFFFFFDEDFDB494A443F3F
        3ECBC9CD9B9A9DBBBBBAA4A4A4595959FFFFFFD0D0D0B2B2B2898989EDEDEDD7
        D7D7CACACACACACAF2F2F2C3C3C3C1C1C1B2B2B2C0C0C08F8F8F9E9E9E2E2E2E
        DADADA000000F8E7FC6B32BE4000AC3C008FF2CFFAC691DE904BBFAF6EDABB7E
        D08557A9B889C5DFC1E4A869CCE191EF540392A756D9B163CF9966BA9961BCFF
        D1FF6E3BA2FFDEFFA675C54100984D0EA7F4DDFFC8C7C34D4D4A433E44918D92
        FFFFFF888B89B0B0B06B6B6BE8E8E8828282C2C2C2FFFFFF9191917E7E7E8686
        86969696BBBBBB717171DFDFDFB2B2B2BCBCBCD9D9D9757575393939B2B2B200
        0000F6E3FB6D2DB74B00A849009C7F42AF7F35BF9C4FC9B373C7A45BCF8138B3
        9542C7A543D57215A7B153D66E10AF9539D09E44C5BB8FD37A3BAE8B44C3641B
        B1BA89D18F50CA4A01A8500CA9F0D7FFC4C3C24D4B4C58545A4D4A4EAFB1AF64
        6765B6B5B6868787A4A4A47C7C7C7D7D7DA1A1A16666667E7E7E7C7C7C838383
        BBBBBB8E8E8E8686867474749B9B9BA1A1A17575753F3F3FAFAFAF000000F7E0
        FC722CBD5400B35900B25800B15C00B2670AB27317B46A05B17000B87C00C95D
        00A6A554D27705B97C00C87900C47806BE6D01B16B02B46801B66F11C0570AA4
        5200A84D00B1550DADF4D9FFC6C3C44E4D4E59555C5B585C5959585C5E5C6463
        636566665A5A5A6262625F5F5F5858589A9A9A5858586262626363636060605F
        5F5F5D5D5D6464646565655858585555554B4B4BACACAC000000F7E1FC6E2EBC
        5000AF6200BF6400C56A02C36C00C17805CA870CD88800CF7600B78A38BEFFF5
        FF751C9D6C00A96E00B77B00C88500D37D00CE7400C56900BA6F11CA6206BE57
        00B7560EA7EFD9FEC2C0C05251525B585D625F62626262616161616161727272
        696969626262555555CCCCCCD3D3D34F4F4F5959595F5F5F6565656767676262
        626161616868686464645C5C5C4A4A4AAEAEAE000000F4E2FB692DB75400B362
        00BB6402BE7000C57A00CB7A00CB7600CE8200C99B43C8F8E2FEFFFFFFE9D8EA
        D6B7DDB879D1801FB96C00BD7B00CD7902C96F01C36700C36E06C65C00B65A10
        A7F1D8FFC2C0C15154515D5B5B65605F6361616363646464646565656363636C
        6C6CC3C3C3FFFFFFF9F9F9DDDDDDCCCCCC8888885E5E5E626262676767636363
        6060606868686363634C4C4CACACAC000000F5E1FB6A2DBA5300B66601C36803
        C07500CA7D00CF6C00BD802ABC7B0EBF9958BBFFFFFCFFFFFFFFFFFFFFFFFFFF
        FFFFF6E2FF7525AF6400B97701CE7100CA6B01C46800C05F00BA5B10ABF1D7FF
        C0BEBF5055515F5F5B6763626663656664666869684F4F4F989898636363DCDC
        DCFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEB8B8B858585863636367676763636360
        60605F5F5F505050A9A9A9000000F5E0FA6D29BB5700BC6700C76900C87200C9
        7300CB6D0EB6ECD7F0D8B5EA7019A3A062C2FFFFFF9141BBA865CFF5D7F9FFFF
        FFEED0F67C1FC17100C96F00CA6B00C76A01C36000BF5A0DB0F1D5FFBDBABF53
        565362635D6464616562646666675858589A9A9AFFFFFF979797636363EFEFEF
        DDDDDD787878C5C5C5FFFFFFFFFFFFABABAB5B5B5B6565656464646464646161
        61515151AAAAAA000000F5E0FA6D2AB85500B96600C56601CA7605CF6B00BDB3
        6ADAFFFFFFFBE9FE9935D67000B6CA92DA9518D68000C88D34BCFCE5FCFFFFFF
        BD7DDD6F03BE6F05CB6A02C76200BF5C00C0590AB1F0D3FFBDB9BE5254526060
        5C6663616969696666676E6E6EF0F0F0FFFFFFC6C6C66B6B6B747474C8C8C865
        6565666666B9B9B9FFFFFFECECEC7575756666666969696060606060604E4E4E
        AAAAAA000000F5E3F96E2CB76606C9841BDE8020DF8B26E37A21B7E3D1E9FFFF
        FFB270DB8013CDA429EC9714DC9F2DE2AF3AEB8912C4A64DD4FFFFFFE9D3EF8D
        3EC48922DE8423E17D1DDB700FD3570CAAEED4FFBEBCBC5E5E5B7773747D7B7A
        828383747474AAAAAAFFFFFFECECEC7C7C7C8080808686867979799191918686
        86717171E4E4E4FFFFFFBBBBBB7070708585857C7C7C7878785D5D5DA5A5A500
        0000F2E3F86E35B97B22D88827DF862CDE8625D98734BFEADDF0FFFFFF8934C1
        991EE8A027E69D26E9902CE4992FE4AB34ED6300A5FFFFFFECE1F39750C88B22
        DA852BDE872BDF8125DD5A12A7EDD8FABABAB66868668A878A86828583848479
        7A7AB6B6B6FFFFFFD9D9D96969698989898A8A8A8787878686868D8D8D777777
        B7B7B7FFFFFFC6C6C67A7A7A828282858585858585656565A3A3A3000000F1E2
        F66A2CB37B22D4892EDB892EE48728DE8336C2E9DFF1FFFFFF8C39C89921EAA0
        2BE69C2AE88C30E1912FE0A232F15C00ACFFFFFFEEE2F49A57CB8828DD882FDD
        892DDE8225E15B11ABEDD7FAB7B6B76667688A888C8685858786897E7D7EB9B9
        B9FFFFFFDEDEDE6C6C6C8A8A8A8989898787878888888989897B7B7BB8B8B8FF
        FFFFC8C8C87C7C7C898989858585898989686868A2A2A2000000F3E3F7702CBA
        7D20D98C32DD8D30E58E2DE57829C5E3D0EDFFFFFFBB81E1801BD0A22EEFA02E
        E98424D49C38E68E24D98F37CDFFFFFFEAD7EE9048C6872CDF8B33E18C31E387
        29E65A10AAEDD7FAB5B5B6656966898C8B8A898C8C8A8C7E7E7EADADADF9F9F9
        F1F1F18585858686868C8C8C8585858484848F8F8F787878D6D6D6FFFFFFBFBF
        BF7C7C7C8B8B8B8888888D8D8D6B6B6BA2A2A2000000F2E3F76B29BC7F20E28F
        37E59036E19833E78326D7B780E3FFFFFFF3E8F9914BCA8625D68B28D6D697E8
        7B1DC39131D5F1C1F9FFFFFFD5A7F18A34D69030E28D33E68E34E68C30EA5811
        A6EAD7F6B3B7AF666C649091908F8B918E8F8C8A8B868A8A8AF3F3F3FDFDFDC7
        C7C77F7F7F808080AAAAAAA2A2A27B7B7BADADADFFFFFFFAFAFAA0A0A0848484
        8D8D8D8E8E8E9090906D6D6DA0A0A0000000F2E4F66D2DB88227E3923AED9037
        E99C3BEEA13DF48136CCEAD4EFFFFFFFF6E9FEA27CCA713FB0FFFFFFBA8BDD89
        3CCCDEB4F4FCF7F99A5AD29035E99A3FEE8D36E79339E88B31F05B13B3EAD5F8
        B3B5B26A6B6F96929A93948C91938C979896848484ADADADFFFFFFFFFFFFD1D1
        D1949494BFBFBFF7F7F7898989AEAEAEFDFDFDCECECE8080809A9A9A93939390
        9090959595727272A0A0A0000000F1E5F46F2CB3882AE5983FEF913CEB983DE9
        9D3CEB953BE99253CDECD1F2FFFFFFFFFFFFFDF6FFFBFFFFFFFCFFB789D58230
        D7B076DE8332D3983BEA9C43ED9A46ED983EEF9334FE570DB3E5D3F1B1B3B06F
        6D729B979E9695909595949393959999997D7D7DCECECEFCFCFCFFFFFFFFFFFF
        F7F7F7FFFFFFECECEC898989AAAAAA9292929393939494949999999797979797
        977474749D9D9D000000F5EEF77733BD8827E69E45F09440EC9B43EC9D3FE99D
        40EE9540E99854CFC497DFE4C9F5F7E2FFFFFFFFFFF8FFBF89E59537EF8F33E9
        9C41EE9A40ED9841EC9F47ECA348F39235F65D16B5F1E1FCBABBB9706E729F9A
        9F98959695959A9797999796959C9C9C8E8E8EADADADD4D4D4EEEEEEFBFBFBFF
        FFFFEBEBEB9797978F8F8F9696969797979696969797979C9C9C9D9D9D737373
        A6A6A6000000FBFAFC7D45B57A20DBA145F39B42EE9C44EBA144EFA243F19D41
        F09B3DEF9439E7983FE5863DC7FFFFFFC191E48D3AD69F40EF9D41F79E40F59A
        42F39440F19A40EEA54AF48A32E4501091FFFFFFCFCECF535054A4A1A29D9C9C
        989C9A9699979B9A9B9999999A9A9A949494919191909090C5C5C5F4F4F49797
        979696969A9A9A9999999B9B9B9999999999999A9A9AA2A2A24F4F4FCECECE00
        0000FFFFFFC4A8DE5A14A89B3CF0AA4EFCA649F9A547FCA344FAA748FCA247FA
        A448F7A64BF5943BEBDB8AF38531D3A44BF9A447FCA347F8A249F6A24AF7A54A
        F8A64BFF9E40FC5203A5B491D2FFFFFFF9F9F9828183787472A7A7A59AA09A9C
        A19F9F9F9F9D9D9D9F9F9FA1A1A1A0A0A0969696B4B4B4A3A3A3969696A0A0A0
        9F9F9F9F9F9F9F9F9FA1A1A1A1A1A1A4A4A4828282757575F7F7F7000000FEFF
        FDFBFAF89879B15816A77B23DB953BF19A3FF59A3DF59C41F4973CF5993FF69A
        41F29D40F79233F0A142F59E40F49C3EF59D3DF59F3FF5A03DF49D39F87B24E2
        5A0EB0835AA8F7F6F6FFFEFFFFFFFFDCDBDA716F6E706C6C909493999C9B9E9E
        9E9C9C9C9D9D9D9C9C9C9B9B9B9D9D9D9595959999999F9F9F9D9D9D9E9E9E9D
        9D9D9C9C9C9C9C9C9393937575756A6A6AC8C8C8FFFFFF000000FEFAFBFFFFFF
        FBF9F9B89DD37C45B66D2BB36422AB6321AA6521AB6422AA6523AD6020AA6724
        AB6924AF6B26B26621AD6520AD671EAC6720AA6921AB6922AE7C46BCAE8CC9F6
        F2F7FFFFFFF6FAFFF8FDFDFFFFFFE7E6E59F9C9D787A7C696B6B6B6B6B6A6A6A
        6A6A6A6A6A6A6B6B6B6C6C6C6B6B6B7171716B6B6B6B6B6B6C6C6C6B6B6B6D6D
        6D6A6A6A767676939393DADADAFFFFFFFFFFFF000000FFFCF9FBF9FBFBFFFFFF
        FFFFFAF9FCEEDDF2E9D6EDEAD9EDEBD7EFEBDBEDEBDAEEE9D7EDEAD8EFE9DBED
        EBDBF1EAD7EFE9D8EFEBD8EFE9DAEDE9DDEEEADEEEFBF9FCFFFFFFFFFFFFFAFD
        FEF4FEFFF3F9F9FAFCF8FFFFFFFFFFFFF4F3F5E9E9E9EAEAEAEAEAEAEAEAEAEA
        EAEAE9E9E9EBEBEBE9E9E9E9E9E9E8E8E8E9E9E9E9E9E9EAEAEAE9E9E9E9E9E9
        F0F0F0FFFFFFFFFFFFFFFFFFFCFCFC000000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_ATUALClick
      OnMouseMove = SB_ATUALMouseMove
    end
    object Sb_Sair: TSpeedButton
      Left = 400
      Top = 0
      Width = 40
      Height = 37
      Hint = 'Sair'
      Flat = True
      Glyph.Data = {
        2E0A0000424D2E0A00000000000036000000280000001D0000001D0000000100
        180000000000F8090000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFDF8F7F4F3F3F0F3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3
        EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF4
        F4F1FCFCF9FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFEEEEEBBDBDC59697
        A78C8D9C8B8C9B8C8C9B8C8D9B8C8D9B8C8D9B8C8C9B8B8C9B8B8C9B8B8C9C8B
        8B9C8A8B9C8A8B9B8A8A9B8A8A9C89899C89899B89899A8D8D9DA1A1B0D4D4D5
        FBFBF8FFFFFFFFFFFF00FFFFFFEEEEEC999BBD4F51C1373BDD393FE93C42EB3D
        42EC3E43EE3E43F13E43F23D42F33C42F63B40F83B3EFA393DFC393DFC3A3EFC
        3B3EFC3B3FFE3B3EFE3D41FA3E45F93D43F13C40D26667AFC6C6CBFCFCFAFFFF
        FF00FFFFFDB3B4CC3A3BCF2829CB1211BA0302B90202BF0202C20202C60202CB
        0202CF0202D30101D60000DA0000DF0303E10A0BE40F13E51519E61921E71F28
        E8232EE92734EB303DED4A57F4414BE7696BB7E3E2E4FFFFFF00F9F9F66464CC
        1212C40000B00000B50000BA0000C00000C20000C60000CB0000CE0000D10000
        D60808DC0D0DE10203E30000E30002E40B11E6131BE71922E81D29E9212FEA26
        35EB2738ED3C4EF43139D0BCBBD0FFFFFF00F5F5F22B2BCF0000AB0000B30000
        B70000BB0000BF0000C30000C60000C72E2ED87272E69B9BEFADADF3B1B1F5A8
        A8F58E8FF25E61EE161DE70811E61B23E91F2AEA232FEB2837EB2C3DEE3042F0
        2838E49899C9FFFFFE00F4F4F11818C20000AA0000B20000B60000BA0000BF00
        00C00404C78F8FE8DADAF8FBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEEFD
        C9CBF85D63EF0611E61D29EA232FEB2837EB2D3DEE3244F02336E6898BC6FFFF
        FE00F4F4F11515BB0000AA0000B20000B50000B90000BC1515C7C2C2F1FFFFFF
        FFFFFFFFFFFFFFFFFFF6F6FAEAEAF7FFFFFDFFFFFFFFFFFFFFFFFFF2F2FE8A8F
        F30B16E7222EEB2836EB2C3CEE3243F02133E38A8CC4FFFFFE00F4F4F11616B6
        0000A80000B10000B30000B60808BEC6C6F0FFFFFFFFFFFFFFFFFFA0A0E32A2A
        D00A0AD20B0BD91012D85759DEE6E6F6FFFFFFFFFFFFFDFCFE848AF30E1CE827
        34EA2B3AED3142F11F31E08A8BC1FFFFFE00F4F4F11515B00000A80303B10303
        B40000B49A9AE3FFFFFFFFFFFFFFFFFF3535C80000CB0000D30000D80000DD00
        00DF0000E30000DAB6B8EEFFFFFFFFFFFFECECFD4D58EE1D2AEA2A37ED3040F0
        1E2FDC898BBFFFFFFF00F4F4F01616AB0606A91010B30909B54848C9E2E2F6FF
        FFFFFFFFFF5656CD0000CB0505D00000D20000D60000DA0000DE0000E20004E5
        0000DBDADAF4FFFFFFFFFFFFB4B7F71623E92635ED2D3DF01A2BD98A8ABCFFFF
        FE00F4F4F11717A40B0BA61919B50C0CB48686DAFEFEFFFFFFFFCECEEC1111C6
        2222D02727D42424D71818D80B0BDA0303DD0000E00002E30001E53034DFFFFF
        FFFFFFFFD6D8FB3F49ED1F2DEB2A39EE1827D6898BBCFFFFFE00F4F4F117179E
        1010A62020B61919B6A9A9E4FFFFFFFFFFFF7D7DDA2222CB2A2ACF2C2CD42E2E
        D73131DB3434DF2929E01616E10808E30101E30000E1F1F1F9FFFFFFE7E9FC5E
        66EF1724EA2633EC1422D3898ABCFFFFFE00F4F4F118189A1818A72727B72C2C
        BBB6B6E7FFFFFFFFFFFF6565D52C2CCA3232CF3434D33535D63434D93535DD3B
        3BE14040E43333E61B1BE50003E3C7C8F7FFFFFFEEF0FD6A70EF111DE8212DEA
        101CD18889BCFFFFFE00F4F4F11818941E1EA63030B82F2FB8B5B5E6FFFFFFFF
        FFFF7777DB3434CA3B3BCF3B3BD23E3ED55555DE6464E34747DF4242E24848E6
        4949E92A2BE7DBDCFAFFFFFFEBECFC6165ED0E17E81C27E80C16CE8889BCFFFF
        FE00F4F4F118188F2323A53A3AB92F2FB6A4A4DEFFFFFFFFFFFFB3B3E93939C8
        4242CF4040D26262DCD3D3F6E4E4FA8B8BEA4B4BE14E4EE44D4DE75858EAFFFF
        FFFFFFFFDCDCF94145E80B12E7171FE8060DCC8888BBFFFFFE00F3F3F118188A
        2A2AA54343B93939B88080CFEFEFF8FFFFFFFEFEFE5656CF4545CD4646D07D7D
        DFFFFFFFFFFFFFBABAF25C5CE25454E34646E2B3B3F4FFFFFFFFFFFFC3C4F511
        14E1060BE50F15E60005C98788BBFFFFFE00F3F3F11919883030A54A4ABA4848
        BB4E4EBBD3D3EBFFFFFFFFFFFFDDDDF54C4CCC4A4ACF8383DFFFFFFFFFFFFFBE
        BEF16464E04E4EDE8E8EEBFFFFFFFFFFFFFBFBFCA6A6EB3636E80609E40507E5
        0000C78686BAFFFFFE00F3F3F11A1A873636A55353BA5151BB4C4CBE8585C9F7
        F7FAFFFFFFFFFFFFE5E5F75B5BD08787DEFFFFFFFFFFFFC0C0F16464DDADADED
        FDFDFFFFFFFFFFFFFFDDDDF36868E17272EC3B3BE70000E20000C38686BAFFFF
        FE00F3F3F11A1A863D3DA55C5CBC5B5BBC5D5DC14F4FBDA2A2D1FFFFFFFFFFFF
        FFFFFF9999DF8989DCFFFFFFFFFFFFBFBFEEA0A0E8FAFAFEFFFFFFFFFFFFEDED
        F57272D57373E87878E97F7FEA3030E20000BC8585BAFFFFFE00F3F3F11B1B85
        4949AA6565BD6363BE6565C16666C35656BD9595C8F8F8FADEDEEC6767C79393
        DEFFFFFFFFFFFFC4C4EF9090DDEAEAF5FFFFFDDFDFEC7171CF7979E67E7EE480
        80E58585E87F7FEA0A0ABA8282B8FFFFFF00F2F2F11D1D845656AE6C6CBD6A6A
        BE6C6CC16E6EC47070C86969C66262B46060BB6E6ECE9B9BDCFFFFFFFFFFFFCB
        CBF07B7BD98383CD9898CF7171CE8181E28484E18686E28787E38989E49797EA
        3131BC8686B8FFFFFE00F2F2F11F1F816A6AB67272BE7272BF7474C27575C477
        77C67979C97A7ACC7C7CCE7878CDA1A1DDFFFFFFFFFFFFCFCFEF8B8BDB8484DB
        8585DC8A8ADF8B8BDE8D8DDF8E8EE09090E19292E29B9BE64444BD8A8AB9FFFF
        FF00F4F4F22C2C8A7C7CBE7979BE7A7AC07C7CC27E7EC58080C78080CA8282CB
        8484CD8181CDA3A3DBFFFFFFFFFFFFC9C9EA8F8FD78E8ED99191DB9191DC9393
        DD9595DE9797DE9797DF9A9AE0A0A0E26767C59292BEFFFFFF00FAFAFA5757A4
        8585BF8080BF8282C18484C38686C58787C88989CA8A8ACC8C8CCD8C8CCF9595
        D1BCBCD9C8C8DEA3A3D69393D69797D89898DA9A9ADA9B9BDC9D9DDC9E9EDDA0
        A0DDA2A2DDA3A3DD9191D1B4B4D1FFFFFF00FFFFFF9E9EC98383BF8B8BC18888
        C18B8BC48C8CC58E8EC88F8FCA9191CC9292CD9393CF9393CF9191CB9494CC97
        97D39C9CD79D9DD89F9FD9A0A0D9A2A2DAA3A3DAA5A5DBA6A6DBA6A6D9BEBEE4
        9D9DCFE4E4EDFFFFFF00FFFFFFE7E7F18D8DC5A3A3CEA8A8D0A1A1CEA2A2CFA6
        A6D1A7A7D2A8A8D4AAAAD5ACACD7AEAED9AFAFDBB1B1DDB3B3DEB4B4DFB7B7DF
        B8B8E0BABAE1BBBBE1BDBDE1BFBFE3C3C3E4D9D9EEBEBEE0C2C2DDFBFBFCFFFF
        FF00FFFFFFFFFFFFE6E6F1A6A6D29292C99999CD9F9FD0A2A2D1A3A3D2A6A6D3
        A9A9D4AAAAD6ADADD7AFAFD8B1B1DAB4B4DBB4B4DDB8B8DDB9B9DFBCBCDFBDBD
        E0BDBDE0BEBEE0B8B8DCACACD7CDCDE5F9F9FBFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
        FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFE
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = Sb_SairClick
      OnMouseMove = Sb_SairMouseMove
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 496
    Width = 788
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
    ExplicitTop = 495
    ExplicitWidth = 784
  end
  object DS: TOraDataSource
    DataSet = Qr
    Left = 472
    Top = 8
  end
  object QryTemp: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO PEDIDO_VENDA_ITEM'
      
        '  (EMPRESA, FILIAL, ID_ITEMPEDIVEND, ID_PEDIVEND, ID_MATERIAL, I' +
        'D_EMBALAGEM, ID_MATEEMBA, ID_TIPOOPER, VL_UNITITEMPEDIVEND, QN_E' +
        'MBAITEMPEDIVEND, QN_PESOITEMPEDIVEND, QN_TARAITEMPEDIVEND, QN_EM' +
        'BAEXPEITEMPEDIVEND, QN_PESOPADREXPEITEMPEDIVEND, QN_TARAREALEXPE' +
        'ITEMPEDIVEND, QN_PESOREALEXPEITEMPEDIVEND, QN_CAIXCORTITEMPEDIVE' +
        'ND, FX_ITEMPEDIVEND, VL_UNITBRUTITEMPEDIVEND, PC_DESCITEMPEDIVEN' +
        'D, VL_UNITOUTROSAJUSTE, MOTIVO_AJUSTE)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_ITEMPEDIVEND, :ID_PEDIVEND, :ID_MATERI' +
        'AL, :ID_EMBALAGEM, :ID_MATEEMBA, :ID_TIPOOPER, :VL_UNITITEMPEDIV' +
        'END, :QN_EMBAITEMPEDIVEND, :QN_PESOITEMPEDIVEND, :QN_TARAITEMPED' +
        'IVEND, :QN_EMBAEXPEITEMPEDIVEND, :QN_PESOPADREXPEITEMPEDIVEND, :' +
        'QN_TARAREALEXPEITEMPEDIVEND, :QN_PESOREALEXPEITEMPEDIVEND, :QN_C' +
        'AIXCORTITEMPEDIVEND, :FX_ITEMPEDIVEND, :VL_UNITBRUTITEMPEDIVEND,' +
        ' :PC_DESCITEMPEDIVEND, :VL_UNITOUTROSAJUSTE, :MOTIVO_AJUSTE)')
    SQLDelete.Strings = (
      'DELETE FROM PEDIDO_VENDA_ITEM'
      'WHERE'
      '  ID_ITEMPEDIVEND = :ID_ITEMPEDIVEND')
    SQLUpdate.Strings = (
      'UPDATE PEDIDO_VENDA_ITEM'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  ID_ITEMPEDIVEND = :ID_ITEMPEDIVEND,'
      '  ID_PEDIVEND = :ID_PEDIVEND,'
      '  ID_MATERIAL = :ID_MATERIAL,'
      '  ID_EMBALAGEM = :ID_EMBALAGEM,'
      '  ID_MATEEMBA = :ID_MATEEMBA,'
      '  ID_TIPOOPER = :ID_TIPOOPER,'
      '  VL_UNITITEMPEDIVEND = :VL_UNITITEMPEDIVEND,'
      '  QN_EMBAITEMPEDIVEND = :QN_EMBAITEMPEDIVEND,'
      '  QN_PESOITEMPEDIVEND = :QN_PESOITEMPEDIVEND,'
      '  QN_TARAITEMPEDIVEND = :QN_TARAITEMPEDIVEND,'
      '  QN_EMBAEXPEITEMPEDIVEND = :QN_EMBAEXPEITEMPEDIVEND,'
      '  QN_PESOPADREXPEITEMPEDIVEND = :QN_PESOPADREXPEITEMPEDIVEND,'
      '  QN_TARAREALEXPEITEMPEDIVEND = :QN_TARAREALEXPEITEMPEDIVEND,'
      '  QN_PESOREALEXPEITEMPEDIVEND = :QN_PESOREALEXPEITEMPEDIVEND,'
      '  QN_CAIXCORTITEMPEDIVEND = :QN_CAIXCORTITEMPEDIVEND,'
      '  FX_ITEMPEDIVEND = :FX_ITEMPEDIVEND,'
      '  VL_UNITBRUTITEMPEDIVEND = :VL_UNITBRUTITEMPEDIVEND,'
      '  PC_DESCITEMPEDIVEND = :PC_DESCITEMPEDIVEND,'
      '  VL_UNITOUTROSAJUSTE = :VL_UNITOUTROSAJUSTE,'
      '  MOTIVO_AJUSTE = :MOTIVO_AJUSTE'
      'WHERE'
      '  ID_ITEMPEDIVEND = :OLD_ID_ITEMPEDIVEND')
    SQLLock.Strings = (
      'SELECT * FROM PEDIDO_VENDA_ITEM'
      'WHERE'
      '  ID_ITEMPEDIVEND = :ID_ITEMPEDIVEND'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_ITEMPEDIVEND = :ID_ITEMPEDIVEND')
    LocalUpdate = True
    Session = FrmPrincipal.DB
    SQL.Strings = (
      '  SELECT PEDIDO_VENDA_ITEM.ID_ITEMPEDIVEND,'
      '         PEDIDO_VENDA_ITEM.ID_MATEEMBA,'
      '         MATERIAL_EMBALAGEM.NM_PRODMATEEMBA,'
      '         MATERIAL_EMBALAGEM.ID_PRODMATEEMBA,'
      
        '         DECODE(NVL(QN_CAPAPADRMATEEMBA, 0), 0, QN_CAPAMEDIMATEE' +
        'MBA,'
      
        '                                             QN_CAPAPADRMATEEMBA' +
        ') QN_PESOPADRITEMPEDIVEND,'
      '         EMBALAGEM.QN_TARAEMBA,'
      '         PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND,'
      '         PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND,'
      '         PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND,'
      '         PEDIDO_VENDA_ITEM.QN_TARAITEMPEDIVEND,'
      '         PEDIDO_VENDA_ITEM.QN_CAIXCORTITEMPEDIVEND,'
      '         ( PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND +'
      
        '           NVL(PEDIDO_VENDA_ITEM.QN_CAIXCORTITEMPEDIVEND, 0) ) Q' +
        'N_CAIXORIGITEMPEDIVEND,'
      '         0 QN_CAIXACORT,'
      '         PEDIDO_VENDA_ITEM.VL_UNITBRUTITEMPEDIVEND,'
      '         PEDIDO_VENDA_ITEM.PC_DESCITEMPEDIVEND,'
      '         PEDIDO_VENDA.ID_PEDIVEND,'
      '         PEDIDO_VENDA.ID_CLIENTE,'
      '         VENDEDOR.ID_VENDEDOR,'
      '         VENDEDOR.NM_VENDEDOR,'
      '         CLIENTE.NM_CLIENTE,'
      '         CLIENTE_ENDERECO.NM_LOGRENDECLIE,'
      '         CLIENTE_ENDERECO.NR_LOGRENDECLIE,'
      '         CLIENTE_ENDERECO.GN_COMPENDECLIE,'
      '         BAIRRO.NM_BAIRRO,'
      '         CIDADE.NM_CIDADE,'
      '         PEDIDO_VENDA.DT_PEDIVEND,'
      '         PEDIDO_VENDA.DT_ENTRPEDIVEND'
      '    FROM BAIRRO,'
      '         CIDADE,'
      '         CLIENTE,'
      '         CLIENTE_ENDERECO,'
      '         LOGISTICA_REGIAO,'
      '         LOGISTICA_SUBREGIAO,'
      '         MATERIAL,'
      '         EMBALAGEM,'
      '         MATERIAL_EMBALAGEM,'
      '         PEDIDO_VENDA,'
      '         PEDIDO_VENDA_ITEM,'
      '         PEDIDO_VENDA_TIPO,'
      '         REGIAO_COMERCIAL,'
      '         VENDEDOR,'
      '         LOGRADOURO_TIPO LOGRADOURO_TIPO_V,'
      '         LOGRADOURO_TIPO LOGRADOURO_TIPO_CE,'
      '         LOGRADOURO_TIPO LOGRADOURO_TIPO_C'
      
        '   WHERE ( PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIV' +
        'END ) and'
      
        '         ( PEDIDO_VENDA_ITEM.ID_MATEEMBA = MATERIAL_EMBALAGEM.ID' +
        '_MATEEMBA ) and'
      
        '         ( MATERIAL_EMBALAGEM.ID_MATERIAL = MATERIAL.ID_MATERIAL' +
        ' ) and'
      
        '         ( MATERIAL_EMBALAGEM.ID_EMBALAGEM = EMBALAGEM.ID_EMBALA' +
        'GEM ) and'
      '         ( PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE ) and'
      
        '         ( PEDIDO_VENDA.ID_ENDECLIE_ENTREGA = CLIENTE_ENDERECO.I' +
        'D_ENDECLIE ) and'
      '         ( CLIENTE_ENDERECO.ID_BAIRRO = BAIRRO.ID_BAIRRO ) and'
      '         ( BAIRRO.ID_CIDADE = CIDADE.ID_CIDADE ) and'
      '         ( PEDIDO_VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR ) and'
      
        '         ( PEDIDO_VENDA.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO.ID_T' +
        'IPOPEDIVEND ) and'
      
        '         ( CLIENTE.ID_REGICOME = REGIAO_COMERCIAL.ID_REGICOME ) ' +
        'and'
      
        '         ( CLIENTE.ID_REGILOGI = LOGISTICA_REGIAO.ID_REGILOGI ) ' +
        'and'
      
        '         ( CLIENTE.ID_SUBRLOGI = LOGISTICA_SUBREGIAO.ID_SUBRLOGI' +
        ' ) and'
      
        '         ( LOGRADOURO_TIPO_V.ID_TIPOLOGR = VENDEDOR.ID_TIPOLOGR ' +
        ') and'
      
        '         ( LOGRADOURO_TIPO_CE.ID_TIPOLOGR = CLIENTE_ENDERECO.ID_' +
        'TIPOLOGR ) and'
      
        '         ( LOGRADOURO_TIPO_C.ID_TIPOLOGR = CLIENTE.ID_TIPOLOGR )' +
        ' '
      '')
    FetchAll = True
    CachedUpdates = True
    Left = 528
    Top = 8
  end
  object QryClie: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO PEDIDO_VENDA_ITEM'
      
        '  (EMPRESA, FILIAL, ID_ITEMPEDIVEND, ID_PEDIVEND, ID_MATERIAL, I' +
        'D_EMBALAGEM, ID_MATEEMBA, ID_TIPOOPER, VL_UNITITEMPEDIVEND, QN_E' +
        'MBAITEMPEDIVEND, QN_PESOITEMPEDIVEND, QN_TARAITEMPEDIVEND, QN_EM' +
        'BAEXPEITEMPEDIVEND, QN_PESOPADREXPEITEMPEDIVEND, QN_TARAREALEXPE' +
        'ITEMPEDIVEND, QN_PESOREALEXPEITEMPEDIVEND, QN_CAIXCORTITEMPEDIVE' +
        'ND, FX_ITEMPEDIVEND, VL_UNITBRUTITEMPEDIVEND, PC_DESCITEMPEDIVEN' +
        'D, VL_UNITOUTROSAJUSTE, MOTIVO_AJUSTE)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_ITEMPEDIVEND, :ID_PEDIVEND, :ID_MATERI' +
        'AL, :ID_EMBALAGEM, :ID_MATEEMBA, :ID_TIPOOPER, :VL_UNITITEMPEDIV' +
        'END, :QN_EMBAITEMPEDIVEND, :QN_PESOITEMPEDIVEND, :QN_TARAITEMPED' +
        'IVEND, :QN_EMBAEXPEITEMPEDIVEND, :QN_PESOPADREXPEITEMPEDIVEND, :' +
        'QN_TARAREALEXPEITEMPEDIVEND, :QN_PESOREALEXPEITEMPEDIVEND, :QN_C' +
        'AIXCORTITEMPEDIVEND, :FX_ITEMPEDIVEND, :VL_UNITBRUTITEMPEDIVEND,' +
        ' :PC_DESCITEMPEDIVEND, :VL_UNITOUTROSAJUSTE, :MOTIVO_AJUSTE)')
    SQLDelete.Strings = (
      'DELETE FROM PEDIDO_VENDA_ITEM'
      'WHERE'
      '  ID_ITEMPEDIVEND = :ID_ITEMPEDIVEND')
    SQLUpdate.Strings = (
      'UPDATE PEDIDO_VENDA_ITEM'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  ID_ITEMPEDIVEND = :ID_ITEMPEDIVEND,'
      '  ID_PEDIVEND = :ID_PEDIVEND,'
      '  ID_MATERIAL = :ID_MATERIAL,'
      '  ID_EMBALAGEM = :ID_EMBALAGEM,'
      '  ID_MATEEMBA = :ID_MATEEMBA,'
      '  ID_TIPOOPER = :ID_TIPOOPER,'
      '  VL_UNITITEMPEDIVEND = :VL_UNITITEMPEDIVEND,'
      '  QN_EMBAITEMPEDIVEND = :QN_EMBAITEMPEDIVEND,'
      '  QN_PESOITEMPEDIVEND = :QN_PESOITEMPEDIVEND,'
      '  QN_TARAITEMPEDIVEND = :QN_TARAITEMPEDIVEND,'
      '  QN_EMBAEXPEITEMPEDIVEND = :QN_EMBAEXPEITEMPEDIVEND,'
      '  QN_PESOPADREXPEITEMPEDIVEND = :QN_PESOPADREXPEITEMPEDIVEND,'
      '  QN_TARAREALEXPEITEMPEDIVEND = :QN_TARAREALEXPEITEMPEDIVEND,'
      '  QN_PESOREALEXPEITEMPEDIVEND = :QN_PESOREALEXPEITEMPEDIVEND,'
      '  QN_CAIXCORTITEMPEDIVEND = :QN_CAIXCORTITEMPEDIVEND,'
      '  FX_ITEMPEDIVEND = :FX_ITEMPEDIVEND,'
      '  VL_UNITBRUTITEMPEDIVEND = :VL_UNITBRUTITEMPEDIVEND,'
      '  PC_DESCITEMPEDIVEND = :PC_DESCITEMPEDIVEND,'
      '  VL_UNITOUTROSAJUSTE = :VL_UNITOUTROSAJUSTE,'
      '  MOTIVO_AJUSTE = :MOTIVO_AJUSTE'
      'WHERE'
      '  ID_ITEMPEDIVEND = :OLD_ID_ITEMPEDIVEND')
    SQLLock.Strings = (
      'SELECT * FROM PEDIDO_VENDA_ITEM'
      'WHERE'
      '  ID_ITEMPEDIVEND = :ID_ITEMPEDIVEND'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_ITEMPEDIVEND = :ID_ITEMPEDIVEND')
    LocalUpdate = True
    Session = FrmPrincipal.DB
    SQL.Strings = (
      '  SELECT PEDIDO_VENDA_ITEM.ID_ITEMPEDIVEND,'
      '         PEDIDO_VENDA_ITEM.ID_MATEEMBA,'
      '         MATERIAL_EMBALAGEM.NM_PRODMATEEMBA,'
      '         MATERIAL_EMBALAGEM.ID_PRODMATEEMBA,'
      
        '         DECODE(NVL(QN_CAPAPADRMATEEMBA, 0), 0, QN_CAPAMEDIMATEE' +
        'MBA,'
      
        '                                             QN_CAPAPADRMATEEMBA' +
        ') QN_PESOPADRITEMPEDIVEND,'
      '         EMBALAGEM.QN_TARAEMBA,'
      '         PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND,'
      '         PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND,'
      '         PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND,'
      '         PEDIDO_VENDA_ITEM.QN_TARAITEMPEDIVEND,'
      '         PEDIDO_VENDA_ITEM.QN_CAIXCORTITEMPEDIVEND,'
      '         ( PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND +'
      
        '           NVL(PEDIDO_VENDA_ITEM.QN_CAIXCORTITEMPEDIVEND, 0) ) Q' +
        'N_CAIXORIGITEMPEDIVEND,'
      '         0 QN_CAIXACORT,'
      '         PEDIDO_VENDA_ITEM.VL_UNITBRUTITEMPEDIVEND,'
      '         PEDIDO_VENDA_ITEM.PC_DESCITEMPEDIVEND,'
      '         PEDIDO_VENDA.ID_PEDIVEND,'
      '         PEDIDO_VENDA.ID_CLIENTE,'
      '         VENDEDOR.ID_VENDEDOR,'
      '         VENDEDOR.NM_VENDEDOR,'
      '         CLIENTE.NM_CLIENTE,'
      '         CLIENTE_ENDERECO.NM_LOGRENDECLIE,'
      '         CLIENTE_ENDERECO.NR_LOGRENDECLIE,'
      '         CLIENTE_ENDERECO.GN_COMPENDECLIE,'
      '         BAIRRO.NM_BAIRRO,'
      '         CIDADE.NM_CIDADE,'
      '         PEDIDO_VENDA.DT_PEDIVEND,'
      '         PEDIDO_VENDA.DT_ENTRPEDIVEND'
      '    FROM BAIRRO,'
      '         CIDADE,'
      '         CLIENTE,'
      '         CLIENTE_ENDERECO,'
      '         LOGISTICA_REGIAO,'
      '         LOGISTICA_SUBREGIAO,'
      '         MATERIAL,'
      '         EMBALAGEM,'
      '         MATERIAL_EMBALAGEM,'
      '         PEDIDO_VENDA,'
      '         PEDIDO_VENDA_ITEM,'
      '         PEDIDO_VENDA_TIPO,'
      '         REGIAO_COMERCIAL,'
      '         VENDEDOR,'
      '         LOGRADOURO_TIPO LOGRADOURO_TIPO_V,'
      '         LOGRADOURO_TIPO LOGRADOURO_TIPO_CE,'
      '         LOGRADOURO_TIPO LOGRADOURO_TIPO_C'
      
        '   WHERE ( PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIV' +
        'END ) and'
      
        '         ( PEDIDO_VENDA_ITEM.ID_MATEEMBA = MATERIAL_EMBALAGEM.ID' +
        '_MATEEMBA ) and'
      
        '         ( MATERIAL_EMBALAGEM.ID_MATERIAL = MATERIAL.ID_MATERIAL' +
        ' ) and'
      
        '         ( MATERIAL_EMBALAGEM.ID_EMBALAGEM = EMBALAGEM.ID_EMBALA' +
        'GEM ) and'
      '         ( PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE ) and'
      
        '         ( PEDIDO_VENDA.ID_ENDECLIE_ENTREGA = CLIENTE_ENDERECO.I' +
        'D_ENDECLIE ) and'
      '         ( CLIENTE_ENDERECO.ID_BAIRRO = BAIRRO.ID_BAIRRO ) and'
      '         ( BAIRRO.ID_CIDADE = CIDADE.ID_CIDADE ) and'
      '         ( PEDIDO_VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR ) and'
      
        '         ( PEDIDO_VENDA.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO.ID_T' +
        'IPOPEDIVEND ) and'
      
        '         ( CLIENTE.ID_REGICOME = REGIAO_COMERCIAL.ID_REGICOME ) ' +
        'and'
      
        '         ( CLIENTE.ID_REGILOGI = LOGISTICA_REGIAO.ID_REGILOGI ) ' +
        'and'
      
        '         ( CLIENTE.ID_SUBRLOGI = LOGISTICA_SUBREGIAO.ID_SUBRLOGI' +
        ' ) and'
      
        '         ( LOGRADOURO_TIPO_V.ID_TIPOLOGR = VENDEDOR.ID_TIPOLOGR ' +
        ') and'
      
        '         ( LOGRADOURO_TIPO_CE.ID_TIPOLOGR = CLIENTE_ENDERECO.ID_' +
        'TIPOLOGR ) and'
      
        '         ( LOGRADOURO_TIPO_C.ID_TIPOLOGR = CLIENTE.ID_TIPOLOGR )' +
        ' '
      '')
    FetchAll = True
    CachedUpdates = True
    Left = 584
    Top = 8
  end
  object OSQL: TOraSQL
    Session = FrmPrincipal.DB
    AutoCommit = True
    Left = 640
    Top = 16
  end
  object Qr: TSmartQuery
    SQLInsert.Strings = (
      'INSERT INTO PEDIDO_VENDA_ITEM'
      
        '  (EMPRESA, FILIAL, ID_ITEMPEDIVEND, ID_PEDIVEND, ID_MATERIAL, I' +
        'D_EMBALAGEM, ID_MATEEMBA, ID_TIPOOPER, VL_UNITITEMPEDIVEND, QN_E' +
        'MBAITEMPEDIVEND, QN_PESOITEMPEDIVEND, QN_TARAITEMPEDIVEND, QN_EM' +
        'BAEXPEITEMPEDIVEND, QN_PESOPADREXPEITEMPEDIVEND, QN_TARAREALEXPE' +
        'ITEMPEDIVEND, QN_PESOREALEXPEITEMPEDIVEND, QN_CAIXCORTITEMPEDIVE' +
        'ND, FX_ITEMPEDIVEND, VL_UNITBRUTITEMPEDIVEND, PC_DESCITEMPEDIVEN' +
        'D, VL_UNITOUTROSAJUSTE, MOTIVO_AJUSTE)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_ITEMPEDIVEND, :ID_PEDIVEND, :ID_MATERI' +
        'AL, :ID_EMBALAGEM, :ID_MATEEMBA, :ID_TIPOOPER, :VL_UNITITEMPEDIV' +
        'END, :QN_EMBAITEMPEDIVEND, :QN_PESOITEMPEDIVEND, :QN_TARAITEMPED' +
        'IVEND, :QN_EMBAEXPEITEMPEDIVEND, :QN_PESOPADREXPEITEMPEDIVEND, :' +
        'QN_TARAREALEXPEITEMPEDIVEND, :QN_PESOREALEXPEITEMPEDIVEND, :QN_C' +
        'AIXCORTITEMPEDIVEND, :FX_ITEMPEDIVEND, :VL_UNITBRUTITEMPEDIVEND,' +
        ' :PC_DESCITEMPEDIVEND, :VL_UNITOUTROSAJUSTE, :MOTIVO_AJUSTE)')
    SQLDelete.Strings = (
      'DELETE FROM PEDIDO_VENDA_ITEM'
      'WHERE'
      '  ID_ITEMPEDIVEND = :ID_ITEMPEDIVEND')
    SQLUpdate.Strings = (
      'UPDATE PEDIDO_VENDA_ITEM'
      'SET'
      '  ID_ITEMPEDIVEND = :ID_ITEMPEDIVEND,'
      '  ID_PEDIVEND = :ID_PEDIVEND,'
      '  ID_MATEEMBA = :ID_MATEEMBA,'
      '  VL_UNITITEMPEDIVEND = :VL_UNITITEMPEDIVEND,'
      '  QN_EMBAITEMPEDIVEND = :QN_EMBAITEMPEDIVEND,'
      '  QN_PESOITEMPEDIVEND = :QN_PESOITEMPEDIVEND,'
      '  QN_TARAITEMPEDIVEND = :QN_TARAITEMPEDIVEND,'
      '  QN_CAIXCORTITEMPEDIVEND = :QN_CAIXCORTITEMPEDIVEND,'
      '  VL_UNITBRUTITEMPEDIVEND = :VL_UNITBRUTITEMPEDIVEND,'
      '  PC_DESCITEMPEDIVEND = :PC_DESCITEMPEDIVEND'
      'WHERE'
      '  ID_ITEMPEDIVEND = :OLD_ID_ITEMPEDIVEND')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_ITEMPEDIVEND = :ID_ITEMPEDIVEND')
    SQLLock.Strings = (
      'SELECT * FROM PEDIDO_VENDA_ITEM'
      'WHERE'
      '  ID_ITEMPEDIVEND = :ID_ITEMPEDIVEND'
      'FOR UPDATE NOWAIT')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  PEDIDO_VENDA_ITEM.ID_ITEMPEDIVEND,'
      '  PEDIDO_VENDA_ITEM.ID_MATEEMBA,'
      '  MATERIAL_EMBALAGEM.NM_PRODMATEEMBA,'
      '  MATERIAL_EMBALAGEM.ID_PRODMATEEMBA,'
      '  DECODE(NVL(QN_CAPAPADRMATEEMBA, 0), 0, QN_CAPAMEDIMATEEMBA,'
      
        '                                             QN_CAPAPADRMATEEMBA' +
        ') AS QN_PESOPADRITEMPEDIVEND,'
      '  EMBALAGEM.QN_TARAEMBA,'
      '  PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND,'
      '  PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND,'
      '  PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND,'
      '  PEDIDO_VENDA_ITEM.QN_TARAITEMPEDIVEND,'
      '  PEDIDO_VENDA_ITEM.QN_CAIXCORTITEMPEDIVEND,'
      '  ( PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND +'
      
        '           NVL(PEDIDO_VENDA_ITEM.QN_CAIXCORTITEMPEDIVEND, 0) ) A' +
        'S QN_CAIXORIGITEMPEDIVEND,'
      '  0 AS QN_CAIXACORT,'
      '  PEDIDO_VENDA_ITEM.VL_UNITBRUTITEMPEDIVEND,'
      '  PEDIDO_VENDA_ITEM.PC_DESCITEMPEDIVEND,'
      '  PEDIDO_VENDA.ID_PEDIVEND,'
      '  PEDIDO_VENDA.ID_CLIENTE,'
      '  VENDEDOR.ID_VENDEDOR,'
      '  VENDEDOR.NM_VENDEDOR,'
      '  CLIENTE.NM_CLIENTE,'
      '  CLIENTE_ENDERECO.NM_LOGRENDECLIE,'
      '  CLIENTE_ENDERECO.NR_LOGRENDECLIE,'
      '  CLIENTE_ENDERECO.GN_COMPENDECLIE,'
      '  BAIRRO.NM_BAIRRO,'
      '  CIDADE.NM_CIDADE,'
      '  PEDIDO_VENDA.DT_PEDIVEND,'
      '  PEDIDO_VENDA.DT_ENTRPEDIVEND,'
      '  PEDIDO_VENDA.FL_CREDUSADPEDIVEND'
      'FROM'
      '  BAIRRO,'
      '  CIDADE,'
      '  CLIENTE,'
      '  CLIENTE_ENDERECO,'
      '  LOGISTICA_REGIAO,'
      '  LOGISTICA_SUBREGIAO,'
      '  MATERIAL,'
      '  EMBALAGEM,'
      '  MATERIAL_EMBALAGEM,'
      '  PEDIDO_VENDA,'
      '  PEDIDO_VENDA_ITEM,'
      '  PEDIDO_VENDA_TIPO,'
      '  REGIAO_COMERCIAL,'
      '  VENDEDOR,'
      '  LOGRADOURO_TIPO LOGRADOURO_TIPO_V,'
      '  LOGRADOURO_TIPO LOGRADOURO_TIPO_CE,'
      '  LOGRADOURO_TIPO LOGRADOURO_TIPO_C'
      'WHERE'
      '  (PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND) AND'
      
        '  (PEDIDO_VENDA_ITEM.ID_MATEEMBA = MATERIAL_EMBALAGEM.ID_MATEEMB' +
        'A) AND'
      '  (MATERIAL_EMBALAGEM.ID_MATERIAL = MATERIAL.ID_MATERIAL) AND'
      '  (MATERIAL_EMBALAGEM.ID_EMBALAGEM = EMBALAGEM.ID_EMBALAGEM) AND'
      '  (PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE) AND'
      
        '  (PEDIDO_VENDA.ID_ENDECLIE_ENTREGA = CLIENTE_ENDERECO.ID_ENDECL' +
        'IE) AND'
      '  (CLIENTE_ENDERECO.ID_BAIRRO = BAIRRO.ID_BAIRRO) AND'
      '  (BAIRRO.ID_CIDADE = CIDADE.ID_CIDADE) AND'
      '  (PEDIDO_VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR) AND'
      
        '  (PEDIDO_VENDA.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO.ID_TIPOPEDIV' +
        'END) AND'
      '  (CLIENTE.ID_REGICOME = REGIAO_COMERCIAL.ID_REGICOME) AND'
      '  (CLIENTE.ID_REGILOGI = LOGISTICA_REGIAO.ID_REGILOGI) AND'
      '  (CLIENTE.ID_SUBRLOGI = LOGISTICA_SUBREGIAO.ID_SUBRLOGI) AND'
      '  (LOGRADOURO_TIPO_V.ID_TIPOLOGR = VENDEDOR.ID_TIPOLOGR) AND'
      
        '  (LOGRADOURO_TIPO_CE.ID_TIPOLOGR = CLIENTE_ENDERECO.ID_TIPOLOGR' +
        ') AND'
      '  (LOGRADOURO_TIPO_C.ID_TIPOLOGR = CLIENTE.ID_TIPOLOGR)')
    CachedUpdates = True
    LockMode = lmNone
    Options.SetFieldsReadOnly = False
    Options.ExtendedFieldsInfo = False
    Left = 504
    Top = 24
    object QrID_ITEMPEDIVEND: TFloatField
      FieldName = 'ID_ITEMPEDIVEND'
      Required = True
    end
    object QrID_MATEEMBA: TFloatField
      FieldName = 'ID_MATEEMBA'
    end
    object QrNM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
    object QrID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
    object QrQN_PESOPADRITEMPEDIVEND: TFloatField
      FieldName = 'QN_PESOPADRITEMPEDIVEND'
    end
    object QrQN_TARAEMBA: TFloatField
      FieldName = 'QN_TARAEMBA'
      Required = True
    end
    object QrVL_UNITITEMPEDIVEND: TFloatField
      FieldName = 'VL_UNITITEMPEDIVEND'
      Required = True
    end
    object QrQN_EMBAITEMPEDIVEND: TFloatField
      FieldName = 'QN_EMBAITEMPEDIVEND'
      Required = True
    end
    object QrQN_PESOITEMPEDIVEND: TFloatField
      FieldName = 'QN_PESOITEMPEDIVEND'
      Required = True
    end
    object QrQN_TARAITEMPEDIVEND: TFloatField
      FieldName = 'QN_TARAITEMPEDIVEND'
      Required = True
    end
    object QrQN_CAIXCORTITEMPEDIVEND: TFloatField
      FieldName = 'QN_CAIXCORTITEMPEDIVEND'
      Required = True
    end
    object QrQN_CAIXORIGITEMPEDIVEND: TFloatField
      FieldName = 'QN_CAIXORIGITEMPEDIVEND'
    end
    object QrQN_CAIXACORT: TFloatField
      FieldName = 'QN_CAIXACORT'
    end
    object QrVL_UNITBRUTITEMPEDIVEND: TFloatField
      FieldName = 'VL_UNITBRUTITEMPEDIVEND'
    end
    object QrPC_DESCITEMPEDIVEND: TFloatField
      FieldName = 'PC_DESCITEMPEDIVEND'
    end
    object QrID_PEDIVEND: TFloatField
      FieldName = 'ID_PEDIVEND'
      Required = True
    end
    object QrID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object QrID_VENDEDOR: TFloatField
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object QrNM_VENDEDOR: TStringField
      FieldName = 'NM_VENDEDOR'
      Required = True
      Size = 40
    end
    object QrNM_CLIENTE: TStringField
      FieldName = 'NM_CLIENTE'
      Size = 60
    end
    object QrNM_LOGRENDECLIE: TStringField
      FieldName = 'NM_LOGRENDECLIE'
      Required = True
      Size = 40
    end
    object QrNR_LOGRENDECLIE: TStringField
      FieldName = 'NR_LOGRENDECLIE'
      Required = True
      Size = 8
    end
    object QrGN_COMPENDECLIE: TStringField
      FieldName = 'GN_COMPENDECLIE'
    end
    object QrNM_BAIRRO: TStringField
      FieldName = 'NM_BAIRRO'
      Required = True
      Size = 30
    end
    object QrNM_CIDADE: TStringField
      FieldName = 'NM_CIDADE'
      Required = True
      Size = 40
    end
    object QrDT_PEDIVEND: TDateTimeField
      FieldName = 'DT_PEDIVEND'
      Required = True
    end
    object QrDT_ENTRPEDIVEND: TDateTimeField
      FieldName = 'DT_ENTRPEDIVEND'
      Required = True
    end
    object QrFL_CREDUSADPEDIVEND: TStringField
      FieldName = 'FL_CREDUSADPEDIVEND'
      Size = 1
    end
  end
end
