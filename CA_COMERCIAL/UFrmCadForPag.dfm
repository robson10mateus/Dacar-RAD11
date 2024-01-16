object FrmCadForPag: TFrmCadForPag
  Left = 381
  Top = 271
  ActiveControl = PageControl1
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Forma de Pagamento'
  ClientHeight = 388
  ClientWidth = 647
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 647
    Height = 388
    Align = alClient
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 643
    ExplicitHeight = 387
    object PageControl1: TPageControl
      Left = 1
      Top = 41
      Width = 645
      Height = 346
      ActivePage = TabParcela
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 641
      ExplicitHeight = 345
      object TabCriterio: TTabSheet
        Caption = 'Criterios'
        OnShow = TabCriterioShow
        object Lbl_Filtro: TLabel
          Left = 13
          Top = 8
          Width = 27
          Height = 15
          Caption = 'Filtro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Lbl_Cond: TLabel
          Left = 272
          Top = 44
          Width = 56
          Height = 15
          Caption = 'Condi'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Lbl_Expr: TLabel
          Left = 272
          Top = 93
          Width = 62
          Height = 15
          Caption = 'Express'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object LCampos: TListBox
          Left = 6
          Top = 24
          Width = 260
          Height = 265
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
        end
        object CBCond: TComboBox
          Left = 336
          Top = 40
          Width = 114
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 1
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
        object RGeou: TRadioGroup
          Left = 459
          Top = 28
          Width = 90
          Height = 34
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
          TabOrder = 2
        end
        object BtIncluir: TBitBtn
          Left = 558
          Top = 32
          Width = 75
          Height = 23
          Caption = '&Incluir'
          Default = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 16
          Font.Name = 'Segoe UI'
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
          TabOrder = 4
          OnClick = BtIncluirClick
        end
        object BtLimpar: TBitBtn
          Left = 558
          Top = 61
          Width = 75
          Height = 23
          Caption = 'Limpar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 16
          Font.Name = 'Segoe UI'
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
          Left = 558
          Top = 90
          Width = 75
          Height = 22
          Caption = '&Ativar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 16
          Font.Name = 'Segoe UI'
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
        object MResul: TMemo
          Left = 283
          Top = 127
          Width = 301
          Height = 162
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object EdExpr: TEdit
          Left = 336
          Top = 90
          Width = 168
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnChange = EdExprChange
          OnKeyPress = EdExprKeyPress
        end
        object BitBtn2: TBitBtn
          Left = 500
          Top = 90
          Width = 20
          Height = 20
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
            3333333333333333033333333333333000333333333333000333333333333100
            3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
            3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
            33333333333333333333}
          ParentFont = False
          TabOrder = 7
          Visible = False
        end
      end
      object TabLista: TTabSheet
        Caption = 'Lista'
        ImageIndex = 1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 657
          Height = 297
          DataSource = DtSrcCadForPag
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = 16
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_FORMPAGA'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NM_FORMPAGA'
              Width = 205
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QN_PARCFORMPAGA'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PC_TOLEVALOFORMPAGA'
              Width = 185
              Visible = True
            end>
        end
        object Panel4: TPanel
          Left = 2
          Top = 416
          Width = 786
          Height = 48
          Color = clWindow
          ParentBackground = False
          TabOrder = 1
          object Label1: TLabel
            Left = 17
            Top = 7
            Width = 40
            Height = 15
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 102
            Top = 7
            Width = 172
            Height = 15
            Caption = 'Descri'#231#227'o da Tabela de Pre'#231'os'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Edit4: TEdit
            Left = 16
            Top = 21
            Width = 65
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'Edit4'
          end
          object Edit5: TEdit
            Left = 100
            Top = 21
            Width = 299
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = 'Edit5'
          end
        end
      end
      object TabDetalhes: TTabSheet
        Caption = 'Detalhes'
        ImageIndex = 2
        object Panel3: TPanel
          Left = 8
          Top = 14
          Width = 633
          Height = 265
          Color = clWindow
          ParentBackground = False
          TabOrder = 0
          object Label14: TLabel
            Left = 24
            Top = 64
            Width = 196
            Height = 15
            Caption = 'Descri'#231#227'o da Forma de Pagamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 24
            Top = 16
            Width = 40
            Height = 15
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 24
            Top = 112
            Width = 65
            Height = 15
            Caption = 'N'#186' Parcelas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lblFormaPagtoNfe: TLabel
            Left = 96
            Top = 112
            Width = 101
            Height = 15
            Caption = 'Forma Pagto NF-e'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBNmForPag: TDBEdit
            Left = 24
            Top = 80
            Width = 297
            Height = 23
            DataField = 'NM_FORMPAGA'
            DataSource = DtSrcCadForPag
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 15
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 8
            ParentFont = False
            TabOrder = 0
          end
          object DBCodForPag: TDBEdit
            Left = 24
            Top = 32
            Width = 49
            Height = 23
            Color = clSilver
            DataField = 'ID_FORMPAGA'
            DataSource = DtSrcCadForPag
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 15
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 11
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object GroupBox1: TGroupBox
            Left = 16
            Top = 160
            Width = 241
            Height = 81
            Caption = 'Faixas de Toler'#226'ncia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object Label5: TLabel
              Left = 8
              Top = 29
              Width = 110
              Height = 15
              Caption = 'Dias do Vencimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 120
              Top = 29
              Width = 125
              Height = 15
              Caption = 'Valor das Parcelas (%)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBPcParForPag: TDBEdit
              Left = 120
              Top = 45
              Width = 97
              Height = 23
              DataField = 'PC_TOLEVALOFORMPAGA'
              DataSource = DtSrcCadForPag
              MaxLength = 13
              TabOrder = 0
            end
          end
          object DBNrParForPag: TDBComboBox
            Left = 24
            Top = 128
            Width = 57
            Height = 23
            DataField = 'QN_PARCFORMPAGA'
            DataSource = DtSrcCadForPag
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10'
              '11'
              '12'
              '13'
              '14'
              '15'
              '16'
              '17'
              '18'
              '19'
              '20'
              '21'
              '22'
              '23'
              '24'
              '25'
              '26'
              '27'
              '28'
              '29'
              '30'
              '31'
              '32'
              '33'
              '34'
              '35'
              '36'
              '37'
              '38'
              '39'
              '40'
              '41'
              '42'
              '43'
              '44'
              '45'
              '46'
              '47'
              '48'
              '49'
              '50'
              '51'
              '52'
              '53'
              '54'
              '55'
              '56'
              '57'
              '58'
              '59'
              '60'
              '61'
              '62'
              '63'
              '64'
              '65'
              '66'
              '67'
              '68'
              '69'
              '70')
            TabOrder = 2
          end
          object DBComboBox1: TDBComboBox
            Left = 25
            Top = 205
            Width = 56
            Height = 23
            DataField = 'QN_DIASTOLEFORMPAGA'
            DataSource = DtSrcCadForPag
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10'
              '11'
              '12'
              '13'
              '14'
              '15'
              '16'
              '17'
              '18'
              '19'
              '20'
              '21'
              '22'
              '23'
              '24'
              '25'
              '26'
              '27'
              '28'
              '29'
              '30'
              '31'
              '32'
              '33'
              '34'
              '35'
              '36'
              '37'
              '38'
              '39'
              '40'
              '41'
              '42'
              '43'
              '44'
              '45'
              '46'
              '47'
              '48'
              '49'
              '50'
              '51'
              '52'
              '53'
              '54'
              '55'
              '56'
              '57'
              '58'
              '59'
              '60'
              '61'
              '62'
              '63'
              '64'
              '65'
              '66'
              '67'
              '68'
              '69'
              '70')
            TabOrder = 3
          end
          object cbxFormaPagtoNfe: TDBComboBox
            Left = 96
            Top = 128
            Width = 160
            Height = 23
            DataField = 'NU_FORMA_PAGTO_NFE'
            DataSource = DtSrcCadForPag
            Items.Strings = (
              '01 - DINHEIRO'
              '02 - CHEQUE'
              '03 - CART'#195'O DE CR'#201'DITO'
              '04 - CART'#195'O DE D'#201'BITO'
              '05 - CR'#201'DITO LOJA'
              '10 - VALE ALIMENTA'#199#195'O'
              '11 - VALE REFEI'#199#195'O'
              '12 - VALE PRESENTE'
              '13 - VALE COMBUST'#205'VEL'
              '15 - BOLETO BANC'#193'RIO'
              '90 - SEM PAGAMENTO'
              '99 - OUTROS')
            TabOrder = 4
          end
        end
      end
      object TabParcela: TTabSheet
        Caption = 'Parcelas'
        ImageIndex = 3
        object Label8: TLabel
          Left = 8
          Top = 184
          Width = 65
          Height = 15
          Caption = 'N'#186' Parcelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 8
          Top = 232
          Width = 56
          Height = 15
          Caption = '% Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 129
          Top = 232
          Width = 71
          Height = 15
          Caption = 'Dias Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBGrid2: TDBGrid
          Left = 8
          Top = 8
          Width = 633
          Height = 161
          DataSource = DtSrcCadFormPagPar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = 16
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NR_PARCFORMPAGA'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PC_PARCFORMPAGA'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QN_DIASPARCFORMPAGA'
              Width = 70
              Visible = True
            end>
        end
        object DBNrParForPagPar: TDBEdit
          Left = 8
          Top = 200
          Width = 41
          Height = 23
          DataField = 'NR_PARCFORMPAGA'
          DataSource = DtSrcCadFormPagPar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 15
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 16
          ParentFont = False
          TabOrder = 1
        end
        object DBPcParForPagPar: TDBEdit
          Left = 10
          Top = 248
          Width = 97
          Height = 23
          DataField = 'PC_PARCFORMPAGA'
          DataSource = DtSrcCadFormPagPar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 15
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 16
          ParentFont = False
          TabOrder = 3
        end
        object DBDiaParForPagPar: TDBComboBox
          Left = 128
          Top = 248
          Width = 65
          Height = 23
          DataField = 'QN_DIASPARCFORMPAGA'
          DataSource = DtSrcCadFormPagPar
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31'
            '32'
            '33'
            '34'
            '35'
            '36'
            '37'
            '38'
            '39'
            '40'
            '41'
            '42'
            '43'
            '44'
            '45'
            '46'
            '47'
            '48'
            '49'
            '50'
            '51'
            '52'
            '53'
            '54'
            '55'
            '56'
            '57'
            '58'
            '59'
            '60'
            '61'
            '62'
            '63'
            '64'
            '65'
            '66'
            '67'
            '68'
            '69'
            '70')
          TabOrder = 2
        end
      end
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 645
      Height = 40
      ButtonHeight = 31
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
      ExplicitWidth = 641
      object SB_PRIMEIRO: TSpeedButton
        Left = 0
        Top = 0
        Width = 35
        Height = 31
        Hint = 'Primeiro'
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
      end
      object SB_ANTERIOR: TSpeedButton
        Left = 35
        Top = 0
        Width = 35
        Height = 31
        Hint = 'Anterior'
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
      end
      object SB_PROXIMO: TSpeedButton
        Left = 70
        Top = 0
        Width = 35
        Height = 31
        Hint = 'Pr'#243'ximo'
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
      end
      object SB_ULTIMO: TSpeedButton
        Left = 105
        Top = 0
        Width = 35
        Height = 31
        Hint = #218'ltimo'
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
      end
      object SB_NOVO: TSpeedButton
        Left = 140
        Top = 0
        Width = 35
        Height = 31
        Hint = 'Incluir'
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
      end
      object SB_EXCLUI: TSpeedButton
        Left = 175
        Top = 0
        Width = 35
        Height = 31
        Hint = 'Excluir'
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
        OnClick = SB_EXCLUIClick
      end
      object SB_CONFIRMA: TSpeedButton
        Left = 210
        Top = 0
        Width = 35
        Height = 31
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
      end
      object SB_CANCEL: TSpeedButton
        Left = 245
        Top = 0
        Width = 35
        Height = 31
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
      end
      object Sb_Sair: TSpeedButton
        Left = 280
        Top = 0
        Width = 35
        Height = 31
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
      end
      object SB_EDIT: TSpeedButton
        Left = 315
        Top = 0
        Width = 35
        Height = 31
        Hint = 'Editar'
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
      end
      object ToolButton1: TToolButton
        Left = 350
        Top = 0
        Width = 11
        Caption = 'ToolButton1'
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 361
        Top = 0
        Width = 283
        Caption = 'ToolButton3'
        ImageIndex = 1
        Style = tbsSeparator
      end
    end
  end
  object QryCadFormPagPar: TOraQuery
    KeyFields = 'ID_PARCFORMPAGA'
    KeySequence = 'SMART.ID_PARCFORMPAGA'
    SQLInsert.Strings = (
      'INSERT INTO forma_pagamento_parcela'
      
        '  (EMPRESA, FILIAL, ID_PARCFORMPAGA, ID_FORMPAGA, NR_PARCFORMPAG' +
        'A, PC_PARCFORMPAGA, QN_DIASPARCFORMPAGA, FX_PARCFORMPAGA)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_PARCFORMPAGA, :ID_FORMPAGA, :NR_PARCFO' +
        'RMPAGA, :PC_PARCFORMPAGA, :QN_DIASPARCFORMPAGA, :FX_PARCFORMPAGA' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM forma_pagamento_parcela'
      'WHERE'
      '  ID_PARCFORMPAGA = :ID_PARCFORMPAGA')
    SQLUpdate.Strings = (
      'UPDATE forma_pagamento_parcela'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  ID_PARCFORMPAGA = :ID_PARCFORMPAGA,'
      '  ID_FORMPAGA = :ID_FORMPAGA,'
      '  NR_PARCFORMPAGA = :NR_PARCFORMPAGA,'
      '  PC_PARCFORMPAGA = :PC_PARCFORMPAGA,'
      '  QN_DIASPARCFORMPAGA = :QN_DIASPARCFORMPAGA,'
      '  FX_PARCFORMPAGA = :FX_PARCFORMPAGA'
      'WHERE'
      '  ID_PARCFORMPAGA = :OLD_ID_PARCFORMPAGA')
    SQLLock.Strings = (
      'SELECT * FROM forma_pagamento_parcela'
      'WHERE'
      '  ID_PARCFORMPAGA = :ID_PARCFORMPAGA'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_PARCFORMPAGA = :ID_PARCFORMPAGA')
    LocalUpdate = True
    SQL.Strings = (
      'SELECT distinct'
      '  forma_pagamento_parcela.empresa,'
      '  forma_pagamento_parcela.filial,'
      '  forma_pagamento_parcela.id_parcformpaga,'
      '  forma_pagamento_parcela.id_formpaga,'
      '  forma_pagamento_parcela.nr_parcformpaga,'
      '  forma_pagamento_parcela.pc_parcformpaga,'
      '  forma_pagamento_parcela.qn_diasparcformpaga,'
      '  forma_pagamento_parcela.fx_parcformpaga'
      'FROM '
      '  forma_pagamento_parcela'
      'where '
      '  forma_pagamento_parcela.id_formpaga = :id_formpaga '
      ''
      '')
    MasterSource = DtSrcCadForPag
    MasterFields = 'ID_FORMPAGA'
    DetailFields = 'ID_FORMPAGA'
    FetchAll = True
    CachedUpdates = True
    Left = 516
    Top = 34
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_formpaga'
        Value = nil
      end>
    object QryCadFormPagParEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object QryCadFormPagParFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object QryCadFormPagParID_PARCFORMPAGA: TFloatField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_PARCFORMPAGA'
    end
    object QryCadFormPagParID_FORMPAGA: TFloatField
      FieldName = 'ID_FORMPAGA'
      Required = True
    end
    object QryCadFormPagParNR_PARCFORMPAGA: TStringField
      DisplayLabel = 'N'#186' Parcela'
      FieldName = 'NR_PARCFORMPAGA'
      Size = 3
    end
    object QryCadFormPagParPC_PARCFORMPAGA: TFloatField
      DisplayLabel = 'Perc. Parcela'
      FieldName = 'PC_PARCFORMPAGA'
    end
    object QryCadFormPagParQN_DIASPARCFORMPAGA: TIntegerField
      DisplayLabel = 'Dias Parcela'
      FieldName = 'QN_DIASPARCFORMPAGA'
    end
    object QryCadFormPagParFX_PARCFORMPAGA: TStringField
      FieldName = 'FX_PARCFORMPAGA'
      Size = 1
    end
  end
  object DtSrcCadFormPagPar: TOraDataSource
    DataSet = QryCadFormPagPar
    Left = 584
    Top = 32
  end
  object DtSrcCadForPag: TOraDataSource
    DataSet = QryCadForPag
    Left = 262
    Top = 34
  end
  object QrDireitos: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT '
      '  id_modulo,'
      '  id_janela,'
      '  id_recurso,'
      '  id_usuario'
      ' FROM sct_direitos_us'
      'WHERE id_modulo=9'
      '  AND id_recurso=:VRECUR'
      '  AND id_janela = 32'
      '  AND id_usuario=:VUSUARIO')
    Left = 382
    Top = 26
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VRECUR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VUSUARIO'
        Value = nil
      end>
  end
  object QryCadForPag: TSmartQuery
    KeyFields = 'ID_FORMPAGA'
    KeySequence = 'ID_FORMPAGA'
    SQLInsert.Strings = (
      'INSERT INTO forma_pagamento'
      
        '  (EMPRESA, FILIAL, ID_FORMPAGA, NM_FORMPAGA, QN_PARCFORMPAGA, Q' +
        'N_DIASTOLEFORMPAGA, PC_TOLEVALOFORMPAGA, FL_CENTPRIMFORMPAGA, FL' +
        '_FORMPAGA, FX_FORMPAGA, QN_DIAS, NU_FORMA_PAGTO_NFE)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_FORMPAGA, :NM_FORMPAGA, :QN_PARCFORMPA' +
        'GA, :QN_DIASTOLEFORMPAGA, :PC_TOLEVALOFORMPAGA, :FL_CENTPRIMFORM' +
        'PAGA, :FL_FORMPAGA, :FX_FORMPAGA, :QN_DIAS, :NU_FORMA_PAGTO_NFE)')
    SQLDelete.Strings = (
      'DELETE FROM forma_pagamento'
      'WHERE'
      '  ID_FORMPAGA = :ID_FORMPAGA')
    SQLUpdate.Strings = (
      'UPDATE forma_pagamento'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  ID_FORMPAGA = :ID_FORMPAGA,'
      '  NM_FORMPAGA = :NM_FORMPAGA,'
      '  QN_PARCFORMPAGA = :QN_PARCFORMPAGA,'
      '  QN_DIASTOLEFORMPAGA = :QN_DIASTOLEFORMPAGA,'
      '  PC_TOLEVALOFORMPAGA = :PC_TOLEVALOFORMPAGA,'
      '  FL_CENTPRIMFORMPAGA = :FL_CENTPRIMFORMPAGA,'
      '  FL_FORMPAGA = :FL_FORMPAGA,'
      '  FX_FORMPAGA = :FX_FORMPAGA,'
      '  QN_DIAS = :QN_DIAS,'
      '  NU_FORMA_PAGTO_NFE = :NU_FORMA_PAGTO_NFE'
      'WHERE'
      '  ID_FORMPAGA = :OLD_ID_FORMPAGA')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_FORMPAGA = :ID_FORMPAGA')
    SQLLock.Strings = (
      'SELECT * FROM forma_pagamento'
      'WHERE'
      '  ID_FORMPAGA = :ID_FORMPAGA'
      'FOR UPDATE NOWAIT')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT '
      '  forma_pagamento.empresa,'
      '  forma_pagamento.filial,'
      '  forma_pagamento.id_formpaga,'
      '  forma_pagamento.nm_formpaga,'
      '  forma_pagamento.qn_parcformpaga,'
      '  forma_pagamento.qn_diastoleformpaga,'
      '  forma_pagamento.pc_tolevaloformpaga,'
      '  forma_pagamento.fl_centprimformpaga,'
      '  forma_pagamento.fl_formpaga,'
      '  forma_pagamento.fx_formpaga,'
      '  forma_pagamento.qn_dias,'
      '  forma_pagamento.Nu_FORMA_PAGTO_NFE'
      'FROM '
      '   forma_pagamento')
    CachedUpdates = True
    LockMode = lmNone
    Options.SetFieldsReadOnly = False
    Options.ExtendedFieldsInfo = False
    Left = 216
    Top = 32
    object QryCadForPagEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object QryCadForPagFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object QryCadForPagID_FORMPAGA: TFloatField
      FieldName = 'ID_FORMPAGA'
      Required = True
    end
    object QryCadForPagNM_FORMPAGA: TStringField
      FieldName = 'NM_FORMPAGA'
      Required = True
      Size = 40
    end
    object QryCadForPagQN_PARCFORMPAGA: TIntegerField
      FieldName = 'QN_PARCFORMPAGA'
      Required = True
    end
    object QryCadForPagQN_DIASTOLEFORMPAGA: TIntegerField
      FieldName = 'QN_DIASTOLEFORMPAGA'
      Required = True
    end
    object QryCadForPagPC_TOLEVALOFORMPAGA: TFloatField
      FieldName = 'PC_TOLEVALOFORMPAGA'
      Required = True
    end
    object QryCadForPagFL_CENTPRIMFORMPAGA: TStringField
      FieldName = 'FL_CENTPRIMFORMPAGA'
      Required = True
      Size = 2
    end
    object QryCadForPagFL_FORMPAGA: TStringField
      FieldName = 'FL_FORMPAGA'
      Required = True
      Size = 2
    end
    object QryCadForPagFX_FORMPAGA: TStringField
      FieldName = 'FX_FORMPAGA'
      Required = True
      Size = 1
    end
    object QryCadForPagQN_DIAS: TIntegerField
      FieldName = 'QN_DIAS'
    end
    object QryCadForPagNU_FORMA_PAGTO_NFE: TStringField
      FieldName = 'NU_FORMA_PAGTO_NFE'
      Size = 25
    end
  end
end
