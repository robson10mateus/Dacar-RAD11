object FrmEntradaSaidaCaixas: TFrmEntradaSaidaCaixas
  Left = 307
  Top = 312
  Width = 1473
  Height = 666
  VertScrollBar.Range = 45
  ActiveControl = PageControl1
  Caption = 'Comercial Dacar - Controle de Caixas'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 45
    Width = 1461
    Height = 583
    Align = alClient
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1457
    ExplicitHeight = 582
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1459
      Height = 581
      ActivePage = TabFiltro
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 1455
      ExplicitHeight = 580
      object TabFiltro: TTabSheet
        Caption = 'Filtro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        object Lbl_Cond: TLabel
          Left = 280
          Top = 40
          Width = 56
          Height = 15
          Caption = 'Condi'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object Lbl_Expr: TLabel
          Left = 280
          Top = 90
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
        object Lbl_Filtro: TLabel
          Left = 10
          Top = 10
          Width = 27
          Height = 15
          Caption = 'Filtro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 280
          Top = 140
          Width = 64
          Height = 15
          Caption = 'Data Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 460
          Top = 140
          Width = 59
          Height = 15
          Caption = 'Data Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object LCampos: TListBox
          Left = 10
          Top = 30
          Width = 260
          Height = 450
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ItemHeight = 15
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnClick = LCamposClick
        end
        object MResul: TMemo
          Left = 280
          Top = 192
          Width = 500
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
          Left = 350
          Top = 35
          Width = 200
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
            'Menor ou igual a'
            'Contendo')
        end
        object EdExpr: TEdit
          Left = 350
          Top = 85
          Width = 315
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnChange = EdExprChange
        end
        object RGeou: TRadioGroup
          Left = 591
          Top = 30
          Width = 99
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
          Left = 705
          Top = 30
          Width = 75
          Height = 23
          Caption = '&Incluir'
          Default = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 16
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
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
          Left = 705
          Top = 60
          Width = 75
          Height = 23
          Caption = 'Limpar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 16
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
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
          TabOrder = 6
          OnClick = BtLimparClick
        end
        object BtAtivar: TBitBtn
          Left = 705
          Top = 90
          Width = 75
          Height = 21
          Caption = '&Ativar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 16
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
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
          TabOrder = 8
          OnClick = BtAtivarClick
        end
        object BPESQ: TBitBtn
          Left = 665
          Top = 85
          Width = 20
          Height = 23
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
            3333333333333333033333333333333000333333333333000333333333333100
            3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
            3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
            33333333333333333333}
          ParentFont = False
          TabOrder = 10
          Visible = False
          OnClick = BPESQClick
        end
        object Edit1: TMaskEdit
          Left = 350
          Top = 135
          Width = 99
          Height = 23
          EditMask = '!99/99/0000;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 7
          Text = '  /  /    '
        end
        object Edit2: TMaskEdit
          Left = 525
          Top = 135
          Width = 99
          Height = 23
          EditMask = '!99/99/0000;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 9
          Text = '  /  /    '
        end
      end
      object TabLista: TTabSheet
        Caption = 'Lista'
        ImageIndex = 1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 1451
          Height = 551
          Align = alClient
          DataSource = DsQr
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = 16
          TitleFont.Name = 'Arial'
          TitleFont.Pitch = fpVariable
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_ENTREGA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = []
              Title.Caption = 'DATA ENTREGA'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = 16
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpVariable
              Title.Font.Style = [fsBold]
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD_ENTREGUE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = []
              Title.Caption = 'QTD. ENTREGUE'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = 16
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpVariable
              Title.Font.Style = [fsBold]
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD_DEVOLVIDA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = []
              Title.Caption = 'QTD. DEVOLVIDA'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = 16
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpVariable
              Title.Font.Style = [fsBold]
              Width = 300
              Visible = True
            end>
        end
      end
      object TabDetalhe: TTabSheet
        Caption = 'Detalhe'
        ImageIndex = 2
        object PanelEntradaCaixas: TPanel
          Left = 0
          Top = 430
          Width = 1451
          Height = 121
          Align = alClient
          Color = clWindow
          ParentBackground = False
          TabOrder = 0
          object Label1: TLabel
            Left = 1
            Top = 1
            Width = 125
            Height = 15
            Align = alTop
            Alignment = taCenter
            Caption = 'Compra Caixas Novas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGrid3: TDBGrid
            Left = 1
            Top = 16
            Width = 1449
            Height = 104
            Align = alClient
            DataSource = DsEntradaCaixa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = 16
            TitleFont.Name = 'Arial'
            TitleFont.Pitch = fpVariable
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid3DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'DT_RECEBI'
                Title.Caption = 'Dt. Recebimento'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ORDEMCOMPRA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = 12
                Font.Name = 'Arial'
                Font.Pitch = fpVariable
                Font.Style = []
                ReadOnly = True
                Title.Caption = 'Ordem Compra'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORNECEDOR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = 12
                Font.Name = 'Arial'
                Font.Pitch = fpVariable
                Font.Style = []
                ReadOnly = True
                Title.Caption = 'Fornecedor'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MATERIAL'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = 12
                Font.Name = 'Arial'
                Font.Pitch = fpVariable
                Font.Style = []
                ReadOnly = True
                Title.Caption = 'Material'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE_RECEBI'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = 12
                Font.Name = 'Arial'
                Font.Pitch = fpVariable
                Font.Style = []
                ReadOnly = True
                Title.Caption = 'Qtd. Caixa'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VL_ITEM'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = 12
                Font.Name = 'Arial'
                Font.Pitch = fpVariable
                Font.Style = []
                ReadOnly = True
                Title.Caption = 'Valor Item'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL_ITEM'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = 12
                Font.Name = 'Arial'
                Font.Pitch = fpVariable
                Font.Style = []
                ReadOnly = True
                Title.Caption = 'Valor Total'#13#10
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOCUMENTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = 12
                Font.Name = 'Arial'
                Font.Pitch = fpVariable
                Font.Style = []
                Title.Caption = 'N'#186' Nota Fiscal'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DT_NF'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = 12
                Font.Name = 'Arial'
                Font.Pitch = fpVariable
                Font.Style = []
                Title.Caption = 'Data Nota fiscal'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end>
          end
        end
        object PanelSaidaCaixas: TPanel
          Left = 0
          Top = 230
          Width = 1451
          Height = 200
          Align = alTop
          Color = clWindow
          ParentBackground = False
          TabOrder = 1
          object Label3: TLabel
            Left = 1
            Top = 1
            Width = 102
            Height = 15
            Align = alTop
            Alignment = taCenter
            Caption = 'Vendas de Sucata'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGrid4: TDBGrid
            Left = 1
            Top = 16
            Width = 1449
            Height = 183
            Align = alClient
            DataSource = DsCaixaSucata
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = 16
            TitleFont.Name = 'Arial'
            TitleFont.Pitch = fpVariable
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid4DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'DT_PEDIVEND'
                ReadOnly = True
                Title.Caption = 'Data Pedido'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PEDIVEND'
                ReadOnly = True
                Title.Caption = 'C'#243'd Pedido'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLIENTE'
                ReadOnly = True
                Title.Caption = 'Cliente'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBS_CAIXA_SUCATA'
                Title.Caption = 'Obs.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD_CAIXA_SUCATA'
                ReadOnly = True
                Title.Caption = 'Qtd. Caixa'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PESO_CAIXA_SUCATA'
                ReadOnly = True
                Title.Caption = 'Peso Caixa'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_CAIXA_ITEM'
                ReadOnly = True
                Title.Caption = 'Valor Item'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_CAIXA_TOTAL'
                Title.Caption = 'Valor Total'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end>
          end
        end
        object PanelRetornoCaixas: TPanel
          Left = 0
          Top = 0
          Width = 1451
          Height = 230
          Align = alTop
          Color = clWindow
          ParentBackground = False
          TabOrder = 2
          object Label2: TLabel
            Left = 1
            Top = 1
            Width = 59
            Height = 15
            Align = alTop
            Alignment = taCenter
            Caption = 'Devolu'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGrid2: TDBGrid
            Left = 1
            Top = 16
            Width = 1449
            Height = 213
            Align = alClient
            DataSource = DsDetalhe
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = 16
            TitleFont.Name = 'Arial'
            TitleFont.Pitch = fpVariable
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'DATA_ENTREGA'
                Title.Caption = 'Data Entrega'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_VALE'
                Title.Caption = 'Vale Caixa'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PEDIDO'
                Title.Caption = 'N'#186' Pedido'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLIENTE'
                Title.Caption = 'Cliente'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SALDO_ANTERIOR'
                Title.Caption = 'Saldo Anterior'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SALDO'
                Title.Caption = 'Saldo Atual'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD_ENTREGUE'
                Title.Caption = 'Qtd. Entrega'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD_DEVOLVIDA'
                Title.Caption = 'Qtd. Devolvida'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENDEDOR'
                Title.Caption = 'Vendedor'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = 16
                Title.Font.Name = 'Arial'
                Title.Font.Pitch = fpVariable
                Title.Font.Style = [fsBold]
                Width = 350
                Visible = True
              end>
          end
        end
      end
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 1461
    Height = 45
    Align = alTop
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 1457
    object SB_PRIMEIRO: TSpeedButton
      Left = 1
      Top = 5
      Width = 35
      Height = 35
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
    end
    object SB_ANTERIOR: TSpeedButton
      Left = 36
      Top = 5
      Width = 35
      Height = 35
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
    end
    object SB_PROXIMO: TSpeedButton
      Left = 71
      Top = 5
      Width = 35
      Height = 35
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
    end
    object SB_ULTIMO: TSpeedButton
      Left = 106
      Top = 5
      Width = 35
      Height = 35
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
    end
    object btnImprimir: TSpeedButton
      Left = 365
      Top = 5
      Width = 35
      Height = 35
      Enabled = False
      Flat = True
      Glyph.Data = {
        0E100000424D0E100000000000003600000028000000340000001A0000000100
        180000000000D80F0000120B0000120B00000000000000000000FFD9FFA12E5A
        8708408903458A00498A004E89004D87004C8B01488802448601408806438B09
        489B18578F01468900447E01477D02468700448B00438C02428A02428A014581
        0442992C64FFE0FFFFF7FE5F6A62464A454B4C484749434D4E4A494A48474747
        4747474545454444444646464B4B4B5858584343434343434444444444444545
        454545454545454545454747473F3F3F6A6A6AF8F8F8A32D5D7B023587064186
        00438D024C83004687004A8400458700428B004382003A88034282003E8D0749
        8D00448900448100437F00438600418A00408B003F8900418700428200417704
        3D82335A705F6837413B4043414647454344404344424242424040404141413E
        3E3E3E3E3E3F3F3F414141494949424242424242424242414141414141414141
        4040404040404141414747473838386060608601408803428B03458A00478400
        448B024C8500468E014A8E00469000448C003F9205488F04478E034790024990
        024992044B88003F9103468F014492014590024586003F8A0244840140680B38
        5942503E49474446474241434345464648494747474343434242424545454444
        444A4A4A4949494B4B4B4444444F4F4F45454547474748484843434347474746
        464645454544444440404040404091014A91034A89004483003F8407457E0641
        8208447E003C87054284003A8C08448706417E003C8004407C003D8405438503
        408B094681013C8406418504418403408304428503428B0141700A3A60475540
        4B4946454749454A4041453E3F434544464141414949493D3D3D444444444444
        4040404141413F3F3F4646464545454040404545454949494242424343433B3B
        3B49494944444444444498004D8F00468B0644A7316497315A983C5F9135588A
        2B5069062EA13B6577113BA5406DC2618D953662B75B8697386494325EB85783
        943A656208339A3C6B973466BF5A8D75053B8A05436E0635634B57414A474845
        476B64696C6B6F6B6C706160626161613838386B6B6B4B4B4B7474748E8E8E69
        69698585856A6A6A6767678888886D6D6D3737377272726A6A6A8D8D8D383838
        484848474747A2015797004F92104FF082B2F99DC0FFC5E0D17F9CFFB1CE7D27
        49FCA4C8FFC0E49B4367EC95BB8D385EBF6C92FCA9CFAA5679F6A6C9D185A7EF
        A2C7D788B1DF8AB6AC537EBE558682013C740D3A654D5746504A5E595AB2ABAE
        BCB8BDDEDFE3A3A2A4CACACA595959C2C2C2DCDCDC767676B0B0B06666669797
        97CBCBCB7F7F7FC8C8C8A6A6A6C3C3C3A6A6A6AEAEAE8181818080803F3F3F43
        43439E0059980256920E55E877B1FFD1FFCA7198E48BB3F098C0FFA6CEF296BF
        F397C0CF7299E486AF9D3F68FFB1DDC66891F69FC3D07FA05C0B2CFFD6F96A14
        3CF69CC7E488B1A43A6985023B730A376D565E4752485D5A56B1ACABF4F2F298
        9A9BADADADB8B8B8C5C5C5B9B9B9BABABA979797B3B3B3747474D0D0D08F8F8F
        C5C5C5A1A1A13B3B3BECECEC4C4C4CC4C4C4AEAEAE6E6E6E3F3F3F494949A101
        5B9A01568D024C890B4C8F1A537305399024599E35686B07377C1D497C214863
        0B2F872F53751A417E2049690A36660A337F244B6B0933D16C998017488E2556
        881E4D7A07398F0644770D3C634C544D585052514D5651505353534648486060
        606E6E6E4141415353535858583F3F3F5E5E5E4B4B4B5555554343433E3E3E59
        59593838389C9C9C4C4C4C5454545555553D3D3D484848484848A1004FA30552
        9B044D94004697064B91034691064A9C19588F1A51710C39600A2C5D122E540B
        255A132E55092B5E08326D083B7A074082034083003C880244840140A6266188
        03418D0043770B406C536147534D50514F534E4F4B4B4B4D4F504A4A4A5B5B5B
        5B5B5B4242423B3B3B4141413A3A3A3F3F3F3C3C3C3E3E3E3E3E3E4545454747
        473E3E3E4444444A4A4A626262484848474747464646AA0451A5014EA4034FA2
        034D9F024C9B044D8E034686074479073DFFB5E1FFEBFFFFF1FFFFF4FFFFF3FF
        FFF1FFFFEDFFFFA3D273023B8408448904438F02458E00448C00429C0E539101
        4A6F043D7056664B54515152505955545251534E4D4F4F4F4F474747494949D1
        D1D1FFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFFFFFFC8C8C8393939434343494949
        4747474646464444444E4E4E474747464646AF0256B40A5CAC0556A1004E9D05
        4E8C07467910436F123F6A0836FFA9D1FFF0FFFFF6FFFFF8FFFFF6FFFFF6FFFF
        F2FFE299B9600830721843720C3C7C01399009478E00458D004690004B710940
        7457665B615C55554F5754505550524B474C535254535353424242C5C5C5FFFF
        FFFDFDFDFFFFFFFFFFFFFEFEFEFFFFFFB5B5B53E3E3E4C4C4C4B4B4B3D3D3D4A
        4A4A474747464646474747484848B1045ABC0F65B40A5DB2105E950147EF7AB1
        FFEDFFFFF1FFBD7D9BAC718DF0CADCDFC7D3D7C4CDDDCDD4DBCBD2EACFD99968
        7CD89EB7FFEDFFFFECFFD56B9A7C00378B02468E00488E004872083D78596860
        66615B5F5961625E4B474CB0ACB1FEFDFFFFFFFFA2A2A2999999DADADAD1D1D1
        D5D5D5D3D3D3D3D3D3E0E0E08A8A8ABBBBBBFFFFFFFAFAFA9797973D3D3D4848
        48474747474747494949AD035BC61B71BE1165B2105E980A4BE684B2FFF6FFFF
        F8FFFCECF7E8D4E0E4CFD7E4D2D9E7D5DCD8CCD2DAD4D9DAD2D9EAD2DEFFF0FF
        FFF7FFFFF1FFCA749C78063B88054892034C93014975073B7758676E7774606B
        68555F5F575A5FB0AEB4FDFCFEFFFFFFF6F6F6DFDFDFDEDEDEE0E0E0D7D7D7DC
        DCDCDEDEDEDADADAE0E0E0F6F6F6FFFFFFFBFBFBA0A0A0404040494949484848
        484848494949AE075EC51C72C1146ABA15669C0E51F08DBBFFF4FFFFFEFFFFFC
        FFFFFAFFFFFAFFFFF8FFFFF7FFFFF5FFFFFBFFFFFBFFFFF6FFFFF8FFFFF5FFFF
        F4FFC7749A7B093F8300438F00499300457B0C3E7A59676C757263706E626C6C
        55595AB4B3B5FEFEFEFFFFFFFDFDFDFDFDFDFFFFFFFDFDFDFDFDFDFFFFFFFFFF
        FFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFA1A1A13F3F3F4A4A4A4949494949494A
        4A4ACA267BC82479C71D75C21C71AD145FCF588FDFA0BABD99A7C597AAC796AA
        C291A5C093A6BF98ADBE99ADB992A2CAA0B1C096A8BC94A6BA99A8D099B2A642
        6C82023D8E044B93034C9601457808379D7A847B7F796E73716F747266676394
        9591C0C1BFB6B6B6B5B5B5B5B5B5AEAEAEB3B3B3B7B7B7AEAEAEAEAEAEB8B8B8
        ADADADAFAFAFAEAEAEB2B2B27474744949494A4A4A4949494949494A4A4AAF06
        5CE0378DCD207AC81E76AC105DED71ADFFC3E2F5C4D8FCC2DAFFCDE7FFCCE5FF
        CDE5F9CCE6F3C7DEFFCBE2FFD5E9FFCEE4EBBED1E3BFD0FFD0E9C15A87890541
        8E02499000499803457B0B3A7F5C668D8F897A7B797374726D6D67AAAAA4DFDD
        DCD7D7D7DCDCDCE1E1E1E4E4E4DCDCDCDBDBDBE2E2E2DEDEDEE1E1E1E5E5E5D0
        D0D0D5D5D5E7E7E78A8A8A4343434B4B4B4A4A4A4A4A4A4B4B4BBD0962E32F88
        D9227DCF2278B51D68F887C0FFF0FFFFF4FFFFE7FD8C556EA672899A6B819B6F
        86976A849A6A8497677F784B5EFFF5FFFFF7FFD1A3BADA7EA97C013B8D034A94
        014B9600447F0F3F8463718489878181817D787A746F6EC2BDBCFFFFFFFEFEFE
        F3F3F38787879494949797979090908F8F8F8F8F8F919191707070FFFFFFFCFC
        FCB8B8B8A4A4A44545454C4C4C4B4B4B4B4B4B4C4C4CC40665E92E8AE52A86D4
        257CB91F6CFF8BC6FFEBFFFFF3FFFFD2EED59CB5FFF5FFFFF4FFFFF6FFFFF5FF
        FFEFFFFFF4FFB48699FFF4FFFFF4FFF3BBD8D778A58206428D014898004B9C02
        497C0B3D826574848F8D8183848582847A7376C2BCBDFFFDFDFFFFFFE8E8E8BC
        BCBCFEFEFEFEFEFEFFFFFFFEFEFEFFFFFFFFFFFFA6A6A6FCFCFCFFFFFFD5D5D5
        A3A3A34040404C4C4C4B4B4B4B4B4B4D4D4DC60566F33594E52A86DC2B82C522
        73F971B3FFDCFFFFD7FDFFBCE3DE9AB9FFF7FFFFFBFFFFFBFFFFFCFFFFF9FFFF
        F7FFC0879CFFCFEAFFD8F9FFBDE7C6548A87024199054B9B004A9D0048820D44
        806678869493828A8A7F83847C7B7DB0AFB1F4F4F4F1F1F1D8D8D8BFBFBFFFFF
        FFFFFFFFFAFAFAFFFFFFFCFCFCFFFFFFA7A7A7E5E5E5EEEEEEDCDCDC8C8C8C42
        42424E4E4E4E4E4E4A4A4A505050C9076BF43596EB328EDF2B84DC2E82CA2C79
        BB3C7A95265E7E1449F8AAD3FFF7FFFEFBFDFFFFFEFEFAF9FBFAFCFFF9FFE19E
        B96E0E36700A3A7A07409A1756A7195C9400469C0049A0004A7E094085697C8B
        9998848F8D888E8D7D81827F81828888886F6F6F626262CCCCCCFBFBFBFDFDFD
        FFFFFFF9F9F9FDFDFDFFFFFFBABABA4040404747474A4A4A5858586565654C4C
        4C4F4F4F4A4A4A4F4F4FC60B6EF43A9AEA3290E9308CE72A86DE2781D02D7ED7
        48919E2166F9A4D8FFF6FFFBFFFFFFFDF9FFFFFBFDFBFAFFF7FFE497B97C0A3F
        910C4B95034B97024CA8135DB41C679B034C9E0049810A418F6F80919C9A8790
        8D89908B8C8F8D8484848080809292926F6F6FCECECEFFFFFFFDFDFDFBFBFBFF
        FFFFFDFDFDFBFBFBBBBBBB4949495151515454544C4C4C5757576161614A4A4A
        515151525252C90D6DF43A9AF23997EF3392F53292EB2B88E12B83CE2B7CBA30
        7DFFA6DFFFF2FFFFFAFFFFF7FAFFF9FBFFFAFFFFF5FFF194C18B08479C044DAB
        0957A6075797004AA60A57B0135DA4064D810B408D697A979D9C929B988C9390
        898B8B908E8E898989828282838383CFCFCFFCFCFCFFFFFFF9F9F9FFFFFFFDFD
        FDFFFFFFBBBBBB5050505353535454545656565252525A5A5A5E5E5E4C4C4C48
        4848D10E6EFF419EF53592F33692F73794ED318AE93387DB3380B5226CFFABE5
        FFEAFFFFF3FFFFF4FFFFF4FFFFF1FFFFECFFFF9CD2920447A80753A8004EA401
        52A40152A90553A20048A00045820B3E956E839B9EA28D94978F969993929696
        9193918F8F878787787878D6D6D6FFFFFFFBFBFBFBFBFBFFFFFFFFFFFFFFFFFF
        C5C5C54F4F4F5757575353535757575050504C4C4C5353534E4E4E545454C009
        61FF469FFB3A95FB3A95F33692F13791EB3086E73588CF2C7DD74B92D36498C0
        5F8BB75982B35480B34E81BF4C85B83072A30852B20958B10557AB0356A0004D
        A60050A3024D9E084A7D1040926E7FA2A3A792969B93969B9996989590919391
        918C8C8C8383839999999A9A9A9A9A9A9595959090908A8A8A8C8C8C7676765A
        5A5A5B5B5B5A5A5A5454545656565858584C4C4C505050575757CC2E7BDE3788
        FF48A1FF3D9AFD3C9DFC3A9EFF3E9EF73796EE3396DF2C89D2287AC3246EBA26
        6EB01D67B01363B00E60AF0C5EB40C5FAF0155B5065DAB0057A80158A402549C
        0751870845913B63957986929292A2A1A5A29EA3A29E9DA29F9B9A98979C9C9C
        9898988B8B8B8484847A7A7A7777776D6D6D6868686363635E5E5E6464645E5E
        5E5A5A5A5A5A5A5252525050505A5A5A494949737373FFCFFFCE307CC10760D7
        116FCB066CCB066CCE096DCD056ACC046FCD066EC80260C50760BA0A63D3247E
        BE0664B9015FB4015CB00059B5045BB3015AAE0059A9015AA30357940750AD3A
        73FFE4FFFFF5FF838482716B70736E7076716E6F6C676F6D6C6C6C6C67676767
        67676969696464646565657777776262625D5D5D6262625656565B5B5B5A5A5A
        5757575959595959594F4F4F777777FAFAFA}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnImprimirClick
    end
    object Sb_Sair: TSpeedButton
      Left = 400
      Top = 5
      Width = 35
      Height = 35
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
    end
    object rgpTipoRel: TRadioGroup
      Left = 155
      Top = 5
      Width = 200
      Height = 35
      Caption = 'Tipo de Relat'#243'rio'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Anal'#237'tico'
        'Sint'#233'tico')
      ParentFont = False
      TabOrder = 0
    end
  end
  object Qr: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'SELECT VC.DATA_ENTREGA,  nvl(SUM(VC.QTD_ENTREGUE),0) QTD_ENTREGU' +
        'E, nvl(SUM(VC.QTD_DEVOLVIDA),0) QTD_DEVOLVIDA'
      'FROM VALE_CAIXA VC, CLIENTE CL'
      'WHERE '
      '    VC.FL_STATUS = '#39'FE'#39
      '    AND VC.ID_CLIENTE = CL.ID_CLIENTE'
      
        '    AND TRUNC(VC.DATA_ENTREGA) BETWEEN TO_DATE(:DtInicial, '#39'DD/M' +
        'M/YYYY'#39') AND TO_DATE(:DtFinal, '#39'DD/MM/YYYY'#39')'
      '&Macro'
      'group by VC.DATA_ENTREGA'
      'ORDER BY VC.DATA_ENTREGA DESC')
    FetchAll = True
    CachedUpdates = True
    Left = 968
    Top = 9
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DtInicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DtFinal'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'Macro'
      end>
  end
  object DsQr: TOraDataSource
    DataSet = Qr
    Left = 1000
    Top = 8
  end
  object QrDetalhe: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT '
      '    VC.DATA_ENTREGA, VC.ID_VALE, VC.ID_PEDIDO, '
      '    (VC.ID_CLIENTE || '#39' - '#39' || Cl.NM_CLIENTE) CLIENTE, '
      '    NVL(VC.SALDO_ANTERIOR,0) SALDO_ANTERIOR,'
      
        '    NVL( VC.SALDO_ANTERIOR,0)  + NVL( VC.QTD_ENTREGUE,0) -  NVL(' +
        'VC.QTD_DEVOLVIDA,0) SALDO,'
      '    NVL(VC.QTD_ENTREGUE,0) QTD_ENTREGUE, '
      '    NVL(VC.QTD_DEVOLVIDA,0) QTD_DEVOLVIDA,'
      '    (VC.ID_VENDEDOR || '#39' - '#39' || V.NM_VENDEDOR) vendedor'
      'FROM '
      '    VALE_CAIXA VC'
      'INNER JOIN CLIENTE Cl ON VC.ID_CLIENTE = Cl.ID_CLIENTE'
      'LEFT JOIN VENDEDOR V ON VC.ID_VENDEDOR = V.ID_VENDEDOR'
      'WHERE'
      '    VC.FL_STATUS = '#39'FE'#39
      '&Macro'
      'ORDER BY VC.ID_CLIENTE, VC.DATA_ENTREGA DESC, VC.ID_VALE'
      '')
    MasterSource = DsQr
    MasterFields = 'DATA_ENTREGA'
    DetailFields = 'DATA_ENTREGA'
    Left = 1041
    Top = 9
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATA_ENTREGA'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'Macro'
      end>
    object QrDetalheDATA_ENTREGA: TDateTimeField
      FieldName = 'DATA_ENTREGA'
      Required = True
    end
    object QrDetalheID_VALE: TFloatField
      FieldName = 'ID_VALE'
      Required = True
    end
    object QrDetalheID_PEDIDO: TFloatField
      FieldName = 'ID_PEDIDO'
    end
    object QrDetalheCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 103
    end
    object QrDetalheSALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
    end
    object QrDetalheSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object QrDetalheQTD_ENTREGUE: TFloatField
      FieldName = 'QTD_ENTREGUE'
    end
    object QrDetalheQTD_DEVOLVIDA: TFloatField
      FieldName = 'QTD_DEVOLVIDA'
    end
    object QrDetalheVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 83
    end
  end
  object DsDetalhe: TOraDataSource
    DataSet = QrDetalhe
    Left = 1073
    Top = 9
  end
  object QrSaidaSucata: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT '
      
        '    PV.ID_PEDIVEND, PV.DT_PEDIVEND, (PV.ID_CLIENTE || '#39' - '#39' || C' +
        'L.NM_FANTCLIE) CLIENTE, '
      
        '    TO_CHAR(PVI.VL_UNITITEMPEDIVEND, '#39'999999D99'#39') VALOR_CAIXA_IT' +
        'EM, TO_CHAR(PV.VL_FATUPEDIVEND, '#39'999999D99'#39') VALOR_CAIXA_TOTAL, '
      
        '    PV.QN_EMBAPEDIVEND QTD_CAIXA_SUCATA, PV.QN_PESOREALEXPEPEDIV' +
        'END PESO_CAIXA_SUCATA, PV.GN_OBSEPEDIVEND OBS_CAIXA_SUCATA'
      'FROM '
      '    PEDIDO_VENDA PV, '
      '    PEDIDO_VENDA_ITEM PVI,'
      '    CLIENTE CL'
      'WHERE'
      '    PV.ID_TIPOPEDIVEND = 157'
      '    AND PV.FL_STATPEDIVEND = '#39'FE'#39
      '    AND PV.ID_CLIENTE = CL.ID_CLIENTE'
      '    AND PV.ID_PEDIVEND = PVI.ID_PEDIVEND')
    MasterSource = DsQr
    MasterFields = 'DATA_ENTREGA'
    DetailFields = 'DT_PEDIVEND'
    Left = 800
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATA_ENTREGA'
        Value = nil
      end>
  end
  object DsCaixaSucata: TOraDataSource
    DataSet = QrSaidaSucata
    Left = 832
    Top = 8
  end
  object QrEntradaCaixa: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT '
      '    OC.ID_ORDEMCOMPRA, OCM.DT_RECEBI, '
      '    (OCM.ID_MATERIAL || '#39' - '#39' || MT.NM_MATERIAL) MATERIAL, '
      '    NVL(OCM.QTDE_RECEBI,0) QTDE_RECEBI, '
      '    TO_CHAR(OCM.VL_ITEM, '#39'999999D99'#39') VL_ITEM, '
      '    TO_CHAR(OCM.TOTAL_ITEM, '#39'999999D99'#39') TOTAL_ITEM, '
      '    OC.DOCUMENTO, OCM.DT_NF, '
      '    (F.ID_FORNECEDOR || '#39' - '#39' || F.NM_FORNECEDOR) FORNECEDOR'
      'FROM '
      '    CA_ORDEMCOMPRA OC,'
      '    CA_ORDEMCOMPRA_MAT OCM,'
      '    MATERIAL MT,'
      '    FORNECEDOR F'
      'WHERE'
      '    OC.ID_ORDEMCOMPRA = OCM.ID_ORDEMCOMPRA'
      '    AND OC.FL_STATUS = '#39'FE'#39
      '    AND OC.CCODCENTD = '#39'09.74'#39
      '    AND MT.ID_MATERIAL = OCM.ID_MATERIAL'
      '    AND F.ID_FORNECEDOR = OC.ID_FORNECEDOR'
      '    '
      'ORDER BY OC.ID_ORDEMCOMPRA DESC')
    MasterSource = DsQr
    MasterFields = 'DATA_ENTREGA'
    DetailFields = 'DT_MAXRECEB'
    Left = 888
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATA_ENTREGA'
        Value = nil
      end>
  end
  object DsEntradaCaixa: TOraDataSource
    DataSet = QrEntradaCaixa
    Left = 912
    Top = 8
  end
  object QrTemp: TOraQuery
    SQL.Strings = (
      'SELECT to_date(SYSDATE, '#39'dd/mm/yyyy'#39') DATA FROM DUAL')
    Left = 1264
    Top = 8
  end
  object QrRel: TOraQuery
    SQL.Strings = (
      'SELECT '
      
        '    VC.DATA_ENTREGA,  nvl(SUM(VC.QTD_ENTREGUE),0) QTD_ENTREGUE, ' +
        'nvl(SUM(VC.QTD_DEVOLVIDA),0) QTD_DEVOLVIDA,'
      '    (   SELECT NVL(SUM(OCM.QTDE_RECEBI),0) QTDE_RECEBI'
      '        FROM'
      '            CA_ORDEMCOMPRA OC,'
      '            CA_ORDEMCOMPRA_MAT OCM'
      '        WHERE'
      '            OC.ID_ORDEMCOMPRA = OCM.ID_ORDEMCOMPRA'
      '            AND OCM.DT_RECEBI = VC.DATA_ENTREGA'
      '            AND OC.FL_STATUS = '#39'FE'#39
      '            AND OC.CCODCENTD = '#39'09.74'#39' ) QTDE_RECEBI,'
      '    (   SELECT '
      '        NVL(SUM(PV.QN_EMBAPEDIVEND),0) QTD_CAIXA_SUCATA'
      '    FROM '
      '        PEDIDO_VENDA PV, '
      '        PEDIDO_VENDA_ITEM PVI,'
      '        CLIENTE CL'
      '    WHERE'
      '        PV.ID_TIPOPEDIVEND = 157'
      '        AND PV.FL_STATPEDIVEND = '#39'FE'#39
      '        AND PV.ID_CLIENTE = CL.ID_CLIENTE'
      '        AND PV.DT_PEDIVEND = VC.DATA_ENTREGA'
      
        '        AND PV.ID_PEDIVEND = PVI.ID_PEDIVEND    ) QTD_CAIXA_SUCA' +
        'TA'
      'FROM VALE_CAIXA VC, CLIENTE CL'
      'WHERE '
      '    VC.FL_STATUS = '#39'FE'#39
      '    AND VC.ID_CLIENTE = CL.ID_CLIENTE'
      
        '    AND TRUNC(VC.DATA_ENTREGA) BETWEEN TO_DATE(:DtInicial, '#39'DD/M' +
        'M/YYYY'#39') AND TO_DATE(:DtFinal, '#39'DD/MM/YYYY'#39')'
      '&Macro'
      'group by VC.DATA_ENTREGA'
      'ORDER BY VC.DATA_ENTREGA DESC')
    Left = 1376
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DtInicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DtFinal'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'Macro'
      end>
  end
  object QrRelAnalitico: TOraQuery
    SQL.Strings = (
      'SELECT '
      '    VC.DATA_ENTREGA,'
      '    (VC.ID_CLIENTE || '#39' - '#39' || Cl.NM_CLIENTE) CLIENTE, '
      
        '    NVL( VC.SALDO_ANTERIOR,0)  + NVL( VC.QTD_ENTREGUE,0) -  NVL(' +
        'VC.QTD_DEVOLVIDA,0) SALDO,'
      '    NVL(VC.QTD_ENTREGUE,0) QTD_ENTREGUE, '
      '    NVL(VC.QTD_DEVOLVIDA,0) QTD_DEVOLVIDA,'
      '    (VC.ID_VENDEDOR || '#39' - '#39' || V.NM_VENDEDOR) vendedor,'
      
        '    C.NM_CIDADE, (EC.ID_MOTORISTA || '#39' - '#39' || EC.MOTORISTA) MOTO' +
        'RISTA, VC.NO_PLACAVEICULO'
      'FROM '
      '    VALE_CAIXA VC'
      'INNER JOIN CLIENTE CL ON (VC.ID_CLIENTE = CL.ID_CLIENTE)'
      'LEFT JOIN VENDEDOR V ON (VC.ID_VENDEDOR = V.ID_VENDEDOR)'
      'INNER JOIN BAIRRO B ON (CL.ID_BAIRRO = B.ID_BAIRRO)'
      'INNER JOIN CIDADE C ON (B.ID_CIDADE = C.ID_CIDADE)'
      'INNER JOIN PEDIDO_VENDA PV ON (VC.ID_PEDIDO = PV.ID_PEDIVEND)'
      
        'INNER JOIN EXPEDICAO_CARGA EC ON (PV.ID_CARGEXPE = EC.ID_CARGEXP' +
        'E)'
      'WHERE'
      '    VC.FL_STATUS = '#39'FE'#39
      '    --AND VC.ID_CLIENTE = CL.ID_CLIENTE'
      
        '    AND TRUNC(VC.DATA_ENTREGA) BETWEEN TO_DATE(:DtInicial, '#39'DD/M' +
        'M/YYYY'#39') AND TO_DATE(:DtFinal, '#39'DD/MM/YYYY'#39')'
      '&Macro'
      'ORDER BY VC.DATA_ENTREGA DESC, VC.ID_CLIENTE, VC.ID_VALE')
    Left = 1416
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DtInicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DtFinal'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'Macro'
      end>
  end
end
