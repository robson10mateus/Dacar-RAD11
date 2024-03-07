object FrmCarregaNFe: TFrmCarregaNFe
  Left = 28
  Top = 58
  Width = 1272
  Height = 675
  HorzScrollBar.Range = 521
  VertScrollBar.Range = 15
  ActiveControl = XmlSaida
  Caption = 'Importa'#231#227'o do XML NFE Entrada / Saida - 1.0.2.29 - 30/10/2013'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 15
    Top = 0
    Width = 476
    Height = 621
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 474
      Height = 177
      Align = alTop
      ParentBackground = False
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 9
        Top = 4
        Width = 457
        Height = 137
        Caption = ' Per'#237'odo de Data ou Numera'#231#227'o de Notas Fiscais:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Shape1: TShape
          Left = 1
          Top = 6
          Width = 5
          Height = 5
          Shape = stCircle
        end
        object DataMenos: TSpeedButton
          Left = 5
          Top = 20
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333FF3333333333333003333333333333F77F33333333333009033
            333333333F7737F333333333009990333333333F773337FFFFFF330099999000
            00003F773333377777770099999999999990773FF33333FFFFF7330099999000
            000033773FF33777777733330099903333333333773FF7F33333333333009033
            33333333337737F3333333333333003333333333333377333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object DataMais: TSpeedButton
          Left = 31
          Top = 20
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333FF3333333333333003333
            3333333333773FF3333333333309003333333333337F773FF333333333099900
            33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
            99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
            33333333337F3F77333333333309003333333333337F77333333333333003333
            3333333333773333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object Label10: TLabel
          Left = 10
          Top = 109
          Width = 76
          Height = 15
          Alignment = taRightJustify
          Caption = '&Raz'#227'o Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 69
          Top = 24
          Width = 18
          Height = 15
          Alignment = taRightJustify
          Caption = 'De:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 194
          Top = 24
          Width = 22
          Height = 15
          Alignment = taRightJustify
          Caption = 'At'#233':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 26
          Top = 53
          Width = 62
          Height = 15
          Alignment = taRightJustify
          Caption = 'De N'#186' Nota:'
          FocusControl = edtNrNotaI
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 54
          Top = 82
          Width = 34
          Height = 15
          Alignment = taRightJustify
          Caption = 'CNPJ:'
          FocusControl = edtCNPJ
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 194
          Top = 53
          Width = 22
          Height = 15
          Alignment = taRightJustify
          Caption = 'At'#233':'
          FocusControl = edtNrNotaF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cbxRazao: TComboBox
          Left = 93
          Top = 107
          Width = 357
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object edtDataIni: TMaskEdit
          Left = 93
          Top = 20
          Width = 82
          Height = 23
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
        end
        object edtDataFim: TMaskEdit
          Left = 222
          Top = 20
          Width = 82
          Height = 23
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 4
          Text = '  /  /    '
        end
        object edtNrNotaI: TEdit
          Left = 93
          Top = 49
          Width = 82
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object edtCNPJ: TEdit
          Left = 93
          Top = 78
          Width = 212
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
        object edtNrNotaF: TEdit
          Left = 222
          Top = 49
          Width = 82
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object BitBtn1: TBitBtn
          Left = 311
          Top = 72
          Width = 138
          Height = 31
          Caption = '&Filtrar NF(s)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 16
          Font.Name = 'Microsoft Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = Executa_filtro_notas_fiscais
        end
        object GroupBox1: TGroupBox
          Left = 311
          Top = 10
          Width = 138
          Height = 57
          Caption = 'Xml de: '
          TabOrder = 6
          object XmlEntrada: TRadioButton
            Left = 57
            Top = 34
            Width = 74
            Height = 17
            Caption = 'Entrada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = Marca_ES
          end
          object XmlSaida: TRadioButton
            Left = 57
            Top = 12
            Width = 74
            Height = 17
            Caption = 'Sa'#237'da'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            TabStop = True
            OnClick = Marca_ES
          end
        end
      end
      object cbxCompletar: TCheckBox
        Left = 8
        Top = 144
        Width = 129
        Height = 31
        Caption = 'Completar XMLs'
        TabOrder = 1
      end
      object rdbTodas: TRadioButton
        Left = 117
        Top = 150
        Width = 55
        Height = 17
        Hint = 'Filtra todas as notas'
        Caption = 'Todas'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = True
      end
      object rdbNCanceladas: TRadioButton
        Left = 173
        Top = 158
        Width = 103
        Height = 17
        Hint = 'Filtra somente as n'#227'o canceladas'
        Caption = 'N'#227'o Canceladas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object rdbSCanceladas: TRadioButton
        Left = 173
        Top = 141
        Width = 125
        Height = 17
        Hint = 'Filtra somente as canceladas'
        Caption = 'Somente Canceladas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object rdbSNFe: TRadioButton
        Left = 412
        Top = 142
        Width = 56
        Height = 17
        Hint = 'Filtra somente notas modelo 55'
        Caption = '= NFE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object rdbPRC: TCheckBox
        Left = 342
        Top = 159
        Width = 121
        Height = 17
        Caption = 'Prod.Rural com CPF'
        TabOrder = 6
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 178
      Width = 474
      Height = 18
      Align = alTop
      Caption = 'Notas Fiscais Filtradas'
      ParentBackground = False
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 196
      Width = 474
      Height = 208
      Align = alClient
      BorderStyle = bsNone
      DataSource = Dts_Notas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = 16
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CNPJ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFOP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_NOTA'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NR_NOTA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_EMISSAO'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_SAIDA'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CLIENTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NM_CLIENTE'
          Visible = True
        end>
    end
    object Panel14: TPanel
      Left = 1
      Top = 404
      Width = 474
      Height = 36
      Align = alBottom
      BevelInner = bvLowered
      ParentBackground = False
      TabOrder = 3
      object spbLocalizaDestino: TSpeedButton
        Left = 445
        Top = 8
        Width = 22
        Height = 22
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F3333337F3333377F8F8F8F773
          333337333333373F3333078F8F8F870333337F333333337F333307F8F8F8F703
          33337F333333337F3333078F8F8F8703333373F333333373333377F8F8F8F773
          333337F3333337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        OnClick = Localiza_local_xml
      end
      object Label4: TLabel
        Left = 9
        Top = 12
        Width = 64
        Height = 15
        Alignment = taRightJustify
        Caption = 'Pasta XML:'
        FocusControl = edtLocal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtLocal: TEdit
        Left = 78
        Top = 8
        Width = 363
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edtLocalKeyPress
      end
    end
    object ListaXML: TListBox
      Left = 1
      Top = 440
      Width = 474
      Height = 144
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 4
    end
    object Panel15: TPanel
      Left = 1
      Top = 584
      Width = 474
      Height = 36
      Align = alBottom
      BevelInner = bvLowered
      ParentBackground = False
      TabOrder = 5
      object SpeedButton1: TSpeedButton
        Left = 445
        Top = 8
        Width = 22
        Height = 22
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F3333337F3333377F8F8F8F773
          333337333333373F3333078F8F8F870333337F333333337F333307F8F8F8F703
          33337F333333337F3333078F8F8F8703333373F333333373333377F8F8F8F773
          333337F3333337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        OnClick = Localiza_movidas_xml
      end
      object Label6: TLabel
        Left = 4
        Top = 12
        Width = 103
        Height = 15
        Alignment = taRightJustify
        Caption = 'Mover para Pasta:'
        FocusControl = edtMovidas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtMovidas: TEdit
        Left = 112
        Top = 8
        Width = 329
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edtLocalKeyPress
      end
    end
  end
  object Panel4: TPanel
    Left = 506
    Top = 0
    Width = 735
    Height = 621
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 739
      Height = 42
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 735
      object Sb_Sair: TSpeedButton
        Left = 719
        Top = 6
        Width = 31
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
        OnClick = Saindo
      end
      object Label2: TLabel
        Left = 284
        Top = 5
        Width = 102
        Height = 15
        Alignment = taRightJustify
        Caption = 'NFs. encontradas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 260
        Top = 23
        Width = 124
        Height = 15
        Alignment = taRightJustify
        Caption = 'NFs. N'#227'o adicionadas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 160
        Top = 5
        Width = 61
        Height = 15
        Alignment = taRightJustify
        Caption = 'Todas NFs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAtualizar: TBitBtn
        Left = 0
        Top = 7
        Width = 141
        Height = 30
        Caption = '&Atualizar  XML'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Atualiza_bdados_xml
      end
      object edtTodas: TEdit
        Left = 225
        Top = 0
        Width = 53
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = '0'
      end
      object edtIncluidas: TEdit
        Left = 390
        Top = 0
        Width = 53
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = '0'
      end
      object edtNIncluidas: TEdit
        Left = 390
        Top = 21
        Width = 53
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Text = '0'
      end
      object CF01: TRadioButton
        Left = 452
        Top = 7
        Width = 141
        Height = 17
        Caption = 'CFOP < 5000 ou = 7101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object CF03: TRadioButton
        Left = 597
        Top = 7
        Width = 105
        Height = 17
        Caption = 'Toda checagem'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = True
      end
      object CF02: TRadioButton
        Left = 452
        Top = 24
        Width = 234
        Height = 17
        Caption = 'Desconsiderar checagem do CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 238
      Width = 739
      Height = 18
      Align = alTop
      Caption = 'Notas Fiscais N'#227'o Incluidas'
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 735
      object ckbMensagens: TCheckBox
        Left = 8
        Top = 0
        Width = 239
        Height = 17
        Caption = 'Mostrar mensagens dos erros encontrados'
        TabOrder = 0
      end
      object btnAbreAuditoria: TButton
        Left = 568
        Top = 0
        Width = 179
        Height = 19
        Caption = 'Abrir Auditoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Abre_auditoria
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 256
      Width = 739
      Height = 366
      Align = alClient
      BevelOuter = bvLowered
      ParentBackground = False
      TabOrder = 2
      ExplicitWidth = 735
      ExplicitHeight = 365
      object Progresso: TProgressBar
        Left = 1
        Top = 350
        Width = 737
        Height = 15
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 349
        ExplicitWidth = 733
      end
      object DBGrid3: TDBGrid
        Left = 1
        Top = 1
        Width = 552
        Height = 349
        Align = alClient
        BorderStyle = bsNone
        DataSource = Dts_XMLN
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
            FieldName = 'CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFOP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_NOTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NR_NOTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_EMISSAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_SAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_CLIENTE'
            Visible = True
          end>
      end
      object pnlAuditoria: TPanel
        Left = 553
        Top = 1
        Width = 185
        Height = 349
        Align = alRight
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 1
        Visible = False
        ExplicitLeft = 549
        ExplicitHeight = 348
        object MemXml: TMemo
          Left = 1
          Top = 16
          Width = 183
          Height = 296
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitHeight = 295
        end
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 183
          Height = 15
          Align = alTop
          Caption = 'Auditoria da escritura'#231#227'o:'
          ParentBackground = False
          TabOrder = 1
        end
        object Panel16: TPanel
          Left = 1
          Top = 312
          Width = 183
          Height = 36
          Align = alBottom
          BevelInner = bvLowered
          ParentBackground = False
          TabOrder = 2
          ExplicitTop = 311
          object BitBtn2: TBitBtn
            Left = 9
            Top = 5
            Width = 75
            Height = 25
            Caption = 'Imprimir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Imprime_auditoria
          end
          object btnFechaAuditoria: TBitBtn
            Left = 99
            Top = 5
            Width = 75
            Height = 25
            Caption = 'Fechar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Fecha_auditoria
          end
        end
      end
    end
    object Panel10: TPanel
      Left = 0
      Top = 42
      Width = 739
      Height = 18
      Align = alTop
      Caption = 'Notas Fiscais Incluidas'
      ParentBackground = False
      TabOrder = 3
      ExplicitWidth = 735
    end
    object Panel11: TPanel
      Left = 0
      Top = 60
      Width = 739
      Height = 178
      Align = alTop
      BevelOuter = bvLowered
      ParentBackground = False
      TabOrder = 4
      ExplicitWidth = 735
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 737
        Height = 176
        Align = alClient
        BorderStyle = bsNone
        DataSource = Dts_XMLI
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
            FieldName = 'CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFOP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_NOTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NR_NOTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_EMISSAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_SAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_CLIENTE'
            Visible = True
          end>
      end
    end
  end
  object Panel9: TPanel
    Left = 491
    Top = 0
    Width = 15
    Height = 621
    Align = alLeft
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object Panel5: TPanel
    Left = 1241
    Top = 0
    Width = 15
    Height = 621
    Align = alRight
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
  end
  object pnlStatus: TPanel
    Left = 0
    Top = 621
    Width = 1256
    Height = 15
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
  end
  object Panel13: TPanel
    Left = 0
    Top = 0
    Width = 15
    Height = 621
    Align = alLeft
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
  end
  object XMLDoc: TXMLDocument
    Left = 360
    Top = 224
    DOMVendorDesc = 'MSXML'
  end
  object Qry_Cliente: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select t.id_cliente, t.nm_cliente, t.nr_cnpjclie, t.nr_inscestac' +
        'lie, t.gn_emaiclie, n.dt_emisnotafisc, n.dt_saidnotafisc, n.nr_n' +
        'otafisc, n.vl_notafisc, x.nfe_xml, n.SG_SERINOTAFISC_NOTAFISC, n' +
        '.id_notafisc '
      ' from cliente t, nota_fiscal n, nota_fiscal_xml x where '
      ' n.id_cliente = t.id_cliente '
      ' and x.id_notafisc (+) = n.id_notafisc '
      ' and x.nfe_xml is null'
      ' and n.dt_saidnotafisc >= '#39'23/02/2011'#39
      ' and n.dt_saidnotafisc <= '#39'23/02/2011'#39
      ' and t.gn_emaiclie is not null'
      ' and n.fl_cancnotafisc <> '#39'S'#39
      ' order by t.nm_cliente')
    Left = 50
    Top = 245
    object Qry_ClienteID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object Qry_ClienteNM_CLIENTE: TStringField
      FieldName = 'NM_CLIENTE'
      Required = True
      Size = 40
    end
    object Qry_ClienteNR_CNPJCLIE: TStringField
      FieldName = 'NR_CNPJCLIE'
      Size = 14
    end
    object Qry_ClienteNR_INSCESTACLIE: TStringField
      FieldName = 'NR_INSCESTACLIE'
    end
    object Qry_ClienteGN_EMAICLIE: TStringField
      FieldName = 'GN_EMAICLIE'
      Size = 200
    end
    object Qry_ClienteDT_EMISNOTAFISC: TDateTimeField
      FieldName = 'DT_EMISNOTAFISC'
      Required = True
    end
    object Qry_ClienteDT_SAIDNOTAFISC: TDateTimeField
      FieldName = 'DT_SAIDNOTAFISC'
      Required = True
    end
    object Qry_ClienteNR_NOTAFISC: TFloatField
      FieldName = 'NR_NOTAFISC'
      Required = True
    end
    object Qry_ClienteVL_NOTAFISC: TFloatField
      FieldName = 'VL_NOTAFISC'
    end
    object Qry_ClienteNFE_XML: TBlobField
      FieldName = 'NFE_XML'
      BlobType = ftOraBlob
    end
    object Qry_ClienteSG_SERINOTAFISC_NOTAFISC: TStringField
      FieldName = 'SG_SERINOTAFISC_NOTAFISC'
      Required = True
      Size = 3
    end
    object Qry_ClienteID_NOTAFISC: TFloatField
      FieldName = 'ID_NOTAFISC'
      Required = True
    end
  end
  object Qry_XMLI: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'Select  F.NR_CPFCLIE AS CPF, N.VL_NOTAFISC AS VALOR, '
      
        ' F.NR_CNPJCLIE AS CNPJ, N.NR_CFOP_NOTAFISC AS CFOP, N.ID_NOTAFIS' +
        'C AS ID_NOTA,'
      
        ' N.NR_NOTAFISC AS NR_NOTA, N.DT_EMISNOTAFISC AS DT_EMISSAO, N.dt' +
        '_saidnotafisc AS DT_SAIDA,'
      
        ' N.SG_SERINOTAFISC_NOTAFISC AS SERIE, N.ID_CLIENTE AS ID_CLIENTE' +
        ', F.NM_CLIENTE AS NM_CLIENTE'
      
        ' from nota_fiscal N, CLIENTE F, nota_fiscal_xml x where F.ID_CLI' +
        'ENTE = N.ID_CLIENTE'
      ' and x.id_notafisc (+) = n.id_notafisc and x.nfe_xml is not null'
      
        ' and n.dt_saidnotafisc >= TO_DATE('#39'22/03/2011 00:00:00'#39','#39'DD/MM/Y' +
        'YYY HH24:MI:SS'#39')'
      
        ' and n.dt_saidnotafisc <= TO_DATE('#39'23/03/2011 23:59:00'#39','#39'DD/MM/Y' +
        'YYY HH24:MI:SS'#39')')
    Left = 547
    Top = 111
    object Qry_XMLICNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object Qry_XMLICPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object Qry_XMLICFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 4
    end
    object Qry_XMLIID_NOTA: TFloatField
      DisplayLabel = 'ID'
      FieldName = 'ID_NOTA'
      Required = True
    end
    object Qry_XMLINR_NOTA: TFloatField
      DisplayLabel = 'N'#186' NF'
      FieldName = 'NR_NOTA'
      Required = True
    end
    object Qry_XMLIDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Required = True
    end
    object Qry_XMLIDT_SAIDA: TDateTimeField
      DisplayLabel = 'Dt. Sa'#237'da'
      FieldName = 'DT_SAIDA'
      Required = True
    end
    object Qry_XMLISERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Required = True
      Size = 3
    end
    object Qry_XMLIID_CLIENTE: TFloatField
      DisplayLabel = 'Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object Qry_XMLINM_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NM_CLIENTE'
      Required = True
      Size = 40
    end
    object Qry_XMLIVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object Dts_XMLI: TDataSource
    DataSet = Qry_XMLI
    Left = 722
    Top = 111
  end
  object Dts_XMLN: TDataSource
    DataSet = Qry_XMLN
    Left = 718
    Top = 304
  end
  object Qry_Notas: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select F.NR_CPFCLIE AS CPF, N.VL_NOTAFISC AS VALOR, F.NR_CNPJCLI' +
        'E AS CNPJ, N.NR_CFOP_NOTAFISC AS CFOP,'
      
        ' N.ID_NOTAFISC AS ID_NOTA, N.NR_NOTAFISC AS NR_NOTA, N.DT_EMISNO' +
        'TAFISC AS DT_EMISSAO,'
      
        ' N.dt_saidnotafisc  AS DT_SAIDA, N.SG_SERINOTAFISC_NOTAFISC AS S' +
        'ERIE, N.ID_CLIENTE AS ID_CLIENTE,'
      
        ' F.NM_CLIENTE AS NM_CLIENTE, '#39#39' AS CHAVE_NFE from nota_fiscal N,' +
        ' CLIENTE F where N.ID_CLIENTE = F.ID_CLIENTE'
      
        ' and N.DT_EMISNOTAFISC >= TO_DATE('#39'01/03/2012 00:00:00'#39','#39'DD/MM/Y' +
        'YYY HH24:MI:SS'#39')'
      
        ' and N.DT_EMISNOTAFISC <= TO_DATE('#39'14/03/2012 23:59:00'#39','#39'DD/MM/Y' +
        'YYY HH24:MI:SS'#39')'
      ' order by n.nr_notafisc')
    CachedUpdates = True
    Left = 51
    Top = 299
    object Qry_NotasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object Qry_NotasCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object Qry_NotasCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 4
    end
    object Qry_NotasID_NOTA: TFloatField
      DisplayLabel = 'ID'
      FieldName = 'ID_NOTA'
      Required = True
    end
    object Qry_NotasNR_NOTA: TFloatField
      DisplayLabel = 'N'#186' NF'
      FieldName = 'NR_NOTA'
      Required = True
    end
    object Qry_NotasDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Required = True
    end
    object Qry_NotasDT_SAIDA: TDateTimeField
      DisplayLabel = 'Dt. Sa'#237'da'
      FieldName = 'DT_SAIDA'
      Required = True
    end
    object Qry_NotasSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Required = True
      Size = 3
    end
    object Qry_NotasID_CLIENTE: TFloatField
      DisplayLabel = 'Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object Qry_NotasNM_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NM_CLIENTE'
      Required = True
      Size = 40
    end
    object Qry_NotasCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      FixedChar = True
      Size = 1
    end
    object Qry_NotasVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object Dts_Notas: TDataSource
    DataSet = Qry_Notas
    Left = 274
    Top = 284
  end
  object Qry_NFEXML: TOraQuery
    KeyFields = 'ID_NFE_XML'
    KeySequence = 'ID_NFEXML'
    SQLInsert.Strings = (
      'INSERT INTO NOTA_FISCAL_XML'
      
        '  (EMPRESA, FILIAL, ID_NFE_XML, ID_NOTAFISC, DT_EMISNOTAFISC, NR' +
        '_NOTAFISC, RECIBO_ENVIO, RECIBO_RETORNO, DATA_ENVIO, NFE_NUMERO,' +
        ' NFE_CHAVE, NFE_DT_RECEBTO, NFE_PROTOCOLO, NFE_CHAVE_DIGITAL, NF' +
        'E_LOCAL, NFE_XML, ENVIO, RETORNO, AUTORIZACAO, SR_NOTAFISC)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_NFE_XML, :ID_NOTAFISC, :DT_EMISNOTAFIS' +
        'C, :NR_NOTAFISC, :RECIBO_ENVIO, :RECIBO_RETORNO, :DATA_ENVIO, :N' +
        'FE_NUMERO, :NFE_CHAVE, :NFE_DT_RECEBTO, :NFE_PROTOCOLO, :NFE_CHA' +
        'VE_DIGITAL, :NFE_LOCAL, empty_blob(), :ENVIO, :RETORNO, :AUTORIZ' +
        'ACAO, :SR_NOTAFISC)'
      'RETURNING'
      
        '  EMPRESA, FILIAL, ID_NFE_XML, ID_NOTAFISC, DT_EMISNOTAFISC, NR_' +
        'NOTAFISC, RECIBO_ENVIO, RECIBO_RETORNO, DATA_ENVIO, NFE_NUMERO, ' +
        'NFE_CHAVE, NFE_DT_RECEBTO, NFE_PROTOCOLO, NFE_CHAVE_DIGITAL, NFE' +
        '_LOCAL, NFE_XML, ENVIO, RETORNO, AUTORIZACAO, SR_NOTAFISC'
      'INTO'
      
        '  :EMPRESA, :FILIAL, :ID_NFE_XML, :ID_NOTAFISC, :DT_EMISNOTAFISC' +
        ', :NR_NOTAFISC, :RECIBO_ENVIO, :RECIBO_RETORNO, :DATA_ENVIO, :NF' +
        'E_NUMERO, :NFE_CHAVE, :NFE_DT_RECEBTO, :NFE_PROTOCOLO, :NFE_CHAV' +
        'E_DIGITAL, :NFE_LOCAL, :NFE_XML, :ENVIO, :RETORNO, :AUTORIZACAO,' +
        ' :SR_NOTAFISC')
    SQLDelete.Strings = (
      'DELETE FROM NOTA_FISCAL_XML'
      'WHERE'
      '  ID_NFE_XML = :ID_NFE_XML')
    SQLUpdate.Strings = (
      'UPDATE NOTA_FISCAL_XML'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  ID_NFE_XML = :ID_NFE_XML,'
      '  ID_NOTAFISC = :ID_NOTAFISC,'
      '  DT_EMISNOTAFISC = :DT_EMISNOTAFISC,'
      '  NR_NOTAFISC = :NR_NOTAFISC,'
      '  RECIBO_ENVIO = :RECIBO_ENVIO,'
      '  RECIBO_RETORNO = :RECIBO_RETORNO,'
      '  DATA_ENVIO = :DATA_ENVIO,'
      '  NFE_NUMERO = :NFE_NUMERO,'
      '  NFE_CHAVE = :NFE_CHAVE,'
      '  NFE_DT_RECEBTO = :NFE_DT_RECEBTO,'
      '  NFE_PROTOCOLO = :NFE_PROTOCOLO,'
      '  NFE_CHAVE_DIGITAL = :NFE_CHAVE_DIGITAL,'
      '  NFE_LOCAL = :NFE_LOCAL,'
      '  NFE_XML = empty_blob(),'
      '  ENVIO = :ENVIO,'
      '  RETORNO = :RETORNO,'
      '  AUTORIZACAO = :AUTORIZACAO,'
      '  SR_NOTAFISC = :SR_NOTAFISC'
      'WHERE'
      '  ID_NFE_XML = :OLD_ID_NFE_XML'
      'RETURNING'
      
        '  EMPRESA, FILIAL, ID_NFE_XML, ID_NOTAFISC, DT_EMISNOTAFISC, NR_' +
        'NOTAFISC, RECIBO_ENVIO, RECIBO_RETORNO, DATA_ENVIO, NFE_NUMERO, ' +
        'NFE_CHAVE, NFE_DT_RECEBTO, NFE_PROTOCOLO, NFE_CHAVE_DIGITAL, NFE' +
        '_LOCAL, NFE_XML, ENVIO, RETORNO, AUTORIZACAO, SR_NOTAFISC'
      'INTO'
      
        '  :EMPRESA, :FILIAL, :ID_NFE_XML, :ID_NOTAFISC, :DT_EMISNOTAFISC' +
        ', :NR_NOTAFISC, :RECIBO_ENVIO, :RECIBO_RETORNO, :DATA_ENVIO, :NF' +
        'E_NUMERO, :NFE_CHAVE, :NFE_DT_RECEBTO, :NFE_PROTOCOLO, :NFE_CHAV' +
        'E_DIGITAL, :NFE_LOCAL, :NFE_XML, :ENVIO, :RETORNO, :AUTORIZACAO,' +
        ' :SR_NOTAFISC')
    SQLLock.Strings = (
      'SELECT * FROM NOTA_FISCAL_XML'
      'WHERE'
      '  ID_NFE_XML = :ID_NFE_XML'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_NFE_XML = :ID_NFE_XML')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT * FROM NOTA_FISCAL_XML')
    CachedUpdates = True
    Left = 51
    Top = 355
    object Qry_NFEXMLEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object Qry_NFEXMLFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object Qry_NFEXMLID_NFE_XML: TFloatField
      FieldName = 'ID_NFE_XML'
    end
    object Qry_NFEXMLID_NOTAFISC: TFloatField
      FieldName = 'ID_NOTAFISC'
      Required = True
    end
    object Qry_NFEXMLDT_EMISNOTAFISC: TStringField
      FieldName = 'DT_EMISNOTAFISC'
      Required = True
    end
    object Qry_NFEXMLNR_NOTAFISC: TFloatField
      FieldName = 'NR_NOTAFISC'
      Required = True
    end
    object Qry_NFEXMLRECIBO_ENVIO: TStringField
      FieldName = 'RECIBO_ENVIO'
    end
    object Qry_NFEXMLRECIBO_RETORNO: TStringField
      FieldName = 'RECIBO_RETORNO'
    end
    object Qry_NFEXMLDATA_ENVIO: TStringField
      FieldName = 'DATA_ENVIO'
    end
    object Qry_NFEXMLNFE_NUMERO: TFloatField
      FieldName = 'NFE_NUMERO'
    end
    object Qry_NFEXMLNFE_CHAVE: TStringField
      FieldName = 'NFE_CHAVE'
      Size = 60
    end
    object Qry_NFEXMLNFE_DT_RECEBTO: TStringField
      FieldName = 'NFE_DT_RECEBTO'
    end
    object Qry_NFEXMLNFE_PROTOCOLO: TStringField
      FieldName = 'NFE_PROTOCOLO'
    end
    object Qry_NFEXMLNFE_CHAVE_DIGITAL: TStringField
      FieldName = 'NFE_CHAVE_DIGITAL'
      Size = 40
    end
    object Qry_NFEXMLNFE_LOCAL: TStringField
      FieldName = 'NFE_LOCAL'
      Size = 240
    end
    object Qry_NFEXMLNFE_XML: TBlobField
      FieldName = 'NFE_XML'
      BlobType = ftOraBlob
    end
    object Qry_NFEXMLENVIO: TStringField
      FieldName = 'ENVIO'
      Size = 1
    end
    object Qry_NFEXMLRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 1
    end
    object Qry_NFEXMLAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      Size = 1
    end
    object Qry_NFEXMLSR_NOTAFISC: TStringField
      FieldName = 'SR_NOTAFISC'
      Size = 3
    end
    object Qry_NFEXMLLOTE: TFloatField
      FieldName = 'LOTE'
    end
    object Qry_NFEXMLDANFE: TStringField
      FieldName = 'DANFE'
      Size = 1
    end
    object Qry_NFEXMLCANCELADA: TStringField
      FieldName = 'CANCELADA'
      Size = 1
    end
    object Qry_NFEXMLINUTILIZADA: TStringField
      FieldName = 'INUTILIZADA'
      Size = 1
    end
    object Qry_NFEXMLEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 1
    end
  end
  object Qry_XMLN: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      ' SELECT '
      '   F.NR_CPFCLIE AS CPF, '
      '   N.VL_NOTAFISC AS VALOR, '
      '   N.VL_ICMSNOTAFISC AS ICMS,'
      '   F.NR_CNPJCLIE AS CNPJ, '
      '   N.NR_CFOP_NOTAFISC AS CFOP, '
      '   N.ID_NOTAFISC AS ID_NOTA, '
      '   N.NR_NOTAFISC AS NR_NOTA,'
      '   N.DT_EMISNOTAFISC AS DT_EMISSAO, '
      '   N.dt_saidnotafisc AS DT_SAIDA, '
      '   N.SG_SERINOTAFISC_NOTAFISC AS SERIE, '
      '   N.ID_CLIENTE AS ID_CLIENTE, '
      '   F.NM_CLIENTE AS NM_CLIENTE'
      ' from '
      '   nota_fiscal N, '
      '   CLIENTE F, '
      '   nota_fiscal_xml x '
      ' where '
      '   F.ID_CLIENTE = N.ID_CLIENTE'
      '   and x.id_notafisc (+) = n.id_notafisc '
      '   and x.nfe_xml is null'
      '   and nvl(N.fl_cancnotafisc,'#39'N'#39')= '#39'N'#39
      
        '   and N.DT_EMISNOTAFISC >= TO_DATE('#39'01/11/2013'#39','#39'DD/MM/YYYY HH2' +
        '4:MI:SS'#39')'
      
        '   and N.DT_EMISNOTAFISC <= TO_DATE('#39'30/11/2013'#39','#39'DD/MM/YYYY HH2' +
        '4:MI:SS'#39')')
    Left = 543
    Top = 303
    object Qry_XMLNCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object Qry_XMLNVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object Qry_XMLNICMS: TFloatField
      FieldName = 'ICMS'
    end
    object Qry_XMLNCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object Qry_XMLNCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 4
    end
    object Qry_XMLNID_NOTA: TFloatField
      FieldName = 'ID_NOTA'
      Required = True
    end
    object Qry_XMLNNR_NOTA: TFloatField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object Qry_XMLNDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Required = True
    end
    object Qry_XMLNDT_SAIDA: TDateTimeField
      FieldName = 'DT_SAIDA'
      Required = True
    end
    object Qry_XMLNSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 3
    end
    object Qry_XMLNID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
    end
    object Qry_XMLNNM_CLIENTE: TStringField
      FieldName = 'NM_CLIENTE'
      Required = True
      Size = 40
    end
  end
  object OraSql: TOraQuery
    Session = FrmPrincipal.DB
    CachedUpdates = True
    Left = 919
    Top = 307
  end
  object Qry_NFEXML_: TOraQuery
    KeyFields = 'ID_NFE_E_XML'
    KeySequence = 'ID_NFEXML_E'
    SQLInsert.Strings = (
      'INSERT INTO CA_MOVIFISCAL_E_XML'
      
        '  (EMPRESA, FILIAL, ID_NFE_E_XML, ID_MOVIFISCAL, DT_ENTRADA, NR_' +
        'NOTA, SERIE, RECIBO_ENVIO, RECIBO_RETORNO, DATA_ENVIO, NFE_NUMER' +
        'O, NFE_CHAVE, NFE_DT_RECEBTO, NFE_PROTOCOLO, NFE_CHAVE_DIGITAL, ' +
        'NFE_LOCAL, NFE_XML, ENVIO, RETORNO, AUTORIZACAO, LOTE, DANFE, CA' +
        'NCELADA, INUTILIZADA, EMAIL)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_NFE_E_XML, :ID_MOVIFISCAL, :DT_ENTRADA' +
        ', :NR_NOTA, :SERIE, :RECIBO_ENVIO, :RECIBO_RETORNO, :DATA_ENVIO,' +
        ' :NFE_NUMERO, :NFE_CHAVE, :NFE_DT_RECEBTO, :NFE_PROTOCOLO, :NFE_' +
        'CHAVE_DIGITAL, :NFE_LOCAL, empty_blob(), :ENVIO, :RETORNO, :AUTO' +
        'RIZACAO, :LOTE, :DANFE, :CANCELADA, :INUTILIZADA, :EMAIL)'
      'RETURNING'
      '  NFE_XML'
      'INTO'
      '  :NFE_XML')
    SQLDelete.Strings = (
      'DELETE FROM CA_MOVIFISCAL_E_XML'
      'WHERE'
      '  ID_NFE_E_XML = :ID_NFE_E_XML')
    SQLUpdate.Strings = (
      'UPDATE CA_MOVIFISCAL_E_XML'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  ID_NFE_E_XML = :ID_NFE_E_XML,'
      '  ID_MOVIFISCAL = :ID_MOVIFISCAL,'
      '  DT_ENTRADA = :DT_ENTRADA,'
      '  NR_NOTA = :NR_NOTA,'
      '  SERIE = :SERIE,'
      '  RECIBO_ENVIO = :RECIBO_ENVIO,'
      '  RECIBO_RETORNO = :RECIBO_RETORNO,'
      '  DATA_ENVIO = :DATA_ENVIO,'
      '  NFE_NUMERO = :NFE_NUMERO,'
      '  NFE_CHAVE = :NFE_CHAVE,'
      '  NFE_DT_RECEBTO = :NFE_DT_RECEBTO,'
      '  NFE_PROTOCOLO = :NFE_PROTOCOLO,'
      '  NFE_CHAVE_DIGITAL = :NFE_CHAVE_DIGITAL,'
      '  NFE_LOCAL = :NFE_LOCAL,'
      '  NFE_XML = empty_blob(),'
      '  ENVIO = :ENVIO,'
      '  RETORNO = :RETORNO,'
      '  AUTORIZACAO = :AUTORIZACAO,'
      '  LOTE = :LOTE,'
      '  DANFE = :DANFE,'
      '  CANCELADA = :CANCELADA,'
      '  INUTILIZADA = :INUTILIZADA,'
      '  EMAIL = :EMAIL'
      'WHERE'
      '  ID_NFE_E_XML = :OLD_ID_NFE_E_XML'
      'RETURNING'
      '  NFE_XML'
      'INTO'
      '  :NFE_XML')
    SQLLock.Strings = (
      'SELECT * FROM CA_MOVIFISCAL_E_XML'
      'WHERE'
      '  ID_NFE_E_XML = :ID_NFE_E_XML'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_NFE_E_XML = :ID_NFE_E_XML')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT * FROM CA_MOVIFISCAL_E_XML')
    CachedUpdates = True
    Left = 159
    Top = 355
    object Qry_NFEXML_EMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object Qry_NFEXML_FILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object Qry_NFEXML_ID_NFE_E_XML: TFloatField
      FieldName = 'ID_NFE_E_XML'
      Required = True
    end
    object Qry_NFEXML_ID_MOVIFISCAL: TFloatField
      FieldName = 'ID_MOVIFISCAL'
      Required = True
    end
    object Qry_NFEXML_DT_ENTRADA: TDateTimeField
      FieldName = 'DT_ENTRADA'
      Required = True
    end
    object Qry_NFEXML_NR_NOTA: TFloatField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object Qry_NFEXML_SERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object Qry_NFEXML_RECIBO_ENVIO: TStringField
      FieldName = 'RECIBO_ENVIO'
    end
    object Qry_NFEXML_RECIBO_RETORNO: TStringField
      FieldName = 'RECIBO_RETORNO'
    end
    object Qry_NFEXML_DATA_ENVIO: TStringField
      FieldName = 'DATA_ENVIO'
    end
    object Qry_NFEXML_NFE_NUMERO: TFloatField
      FieldName = 'NFE_NUMERO'
    end
    object Qry_NFEXML_NFE_CHAVE: TStringField
      FieldName = 'NFE_CHAVE'
      Size = 60
    end
    object Qry_NFEXML_NFE_DT_RECEBTO: TStringField
      FieldName = 'NFE_DT_RECEBTO'
    end
    object Qry_NFEXML_NFE_PROTOCOLO: TStringField
      FieldName = 'NFE_PROTOCOLO'
    end
    object Qry_NFEXML_NFE_CHAVE_DIGITAL: TStringField
      FieldName = 'NFE_CHAVE_DIGITAL'
      Size = 40
    end
    object Qry_NFEXML_NFE_LOCAL: TStringField
      FieldName = 'NFE_LOCAL'
      Size = 240
    end
    object Qry_NFEXML_NFE_XML: TBlobField
      FieldName = 'NFE_XML'
      BlobType = ftOraBlob
    end
    object Qry_NFEXML_ENVIO: TStringField
      FieldName = 'ENVIO'
      Size = 1
    end
    object Qry_NFEXML_RETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 1
    end
    object Qry_NFEXML_AUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      Size = 1
    end
    object Qry_NFEXML_LOTE: TFloatField
      FieldName = 'LOTE'
    end
    object Qry_NFEXML_DANFE: TStringField
      FieldName = 'DANFE'
      Size = 1
    end
    object Qry_NFEXML_CANCELADA: TStringField
      FieldName = 'CANCELADA'
      Size = 1
    end
    object Qry_NFEXML_INUTILIZADA: TStringField
      FieldName = 'INUTILIZADA'
      Size = 1
    end
    object Qry_NFEXML_EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 1
    end
  end
  object Qry_Cliente_: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'Select t.id_cliente, t.nm_cliente, t.nr_cnpjclie, t.nr_inscestac' +
        'lie, t.gn_emaiclie, n.Dt_Entrada, n.Dt_Embarque, n.nr_nota, n.vl' +
        '_totalnf, x.nfe_xml, n.serie, n.id_movifiscal'
      ' from cliente t, ca_movifiscal_e n, ca_movifiscal_e_xml x where '
      ' n.id_cliente = t.id_cliente '
      ' and x.id_movifiscal (+) = n.id_movifiscal '
      ' and x.nfe_xml is null'
      ' and n.dt_entrada >= '#39'23/02/2011'#39
      ' and n.dt_entrada <= '#39'23/02/2011'#39
      ' and t.gn_emaiclie is not null'
      ' and n.Fl_Cancel <> '#39'S'#39
      ' order by t.nm_cliente;')
    Left = 154
    Top = 245
    object FloatField1: TFloatField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NM_CLIENTE'
      Required = True
      Size = 40
    end
    object StringField2: TStringField
      FieldName = 'NR_CNPJCLIE'
      Size = 14
    end
    object StringField3: TStringField
      FieldName = 'NR_INSCESTACLIE'
    end
    object StringField4: TStringField
      FieldName = 'GN_EMAICLIE'
      Size = 200
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DT_EMISNOTAFISC'
      Required = True
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DT_SAIDNOTAFISC'
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'NR_NOTAFISC'
      Required = True
    end
    object FloatField3: TFloatField
      FieldName = 'VL_NOTAFISC'
    end
    object BlobField1: TBlobField
      FieldName = 'NFE_XML'
      BlobType = ftOraBlob
    end
    object StringField5: TStringField
      FieldName = 'SG_SERINOTAFISC_NOTAFISC'
      Required = True
      Size = 3
    end
    object FloatField4: TFloatField
      FieldName = 'ID_NOTAFISC'
      Required = True
    end
  end
  object Qry_NotasCHV: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT * FROM ca_movifiscal_e WHERE id_movifiscal = 2234')
    CachedUpdates = True
    Left = 153
    Top = 299
    object Qry_NotasCHVEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object Qry_NotasCHVFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object Qry_NotasCHVID_MOVIFISCAL: TFloatField
      FieldName = 'ID_MOVIFISCAL'
      Required = True
    end
    object Qry_NotasCHVID_PEDIVEND: TFloatField
      FieldName = 'ID_PEDIVEND'
    end
    object Qry_NotasCHVID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
    end
    object Qry_NotasCHVDT_ENTRPEDIVEND: TDateTimeField
      FieldName = 'DT_ENTRPEDIVEND'
    end
    object Qry_NotasCHVSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object Qry_NotasCHVNR_NOTA: TFloatField
      FieldName = 'NR_NOTA'
    end
    object Qry_NotasCHVCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object Qry_NotasCHVSITUTRIBUTARIA: TStringField
      FieldName = 'SITUTRIBUTARIA'
      Size = 3
    end
    object Qry_NotasCHVALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object Qry_NotasCHVVL_TOTALNF: TFloatField
      FieldName = 'VL_TOTALNF'
    end
    object Qry_NotasCHVVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object Qry_NotasCHVDCA: TStringField
      FieldName = 'DCA'
      Size = 3
    end
    object Qry_NotasCHVOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object Qry_NotasCHVFL_CANCEL: TStringField
      FieldName = 'FL_CANCEL'
      Size = 1
    end
    object Qry_NotasCHVID_ESTADO: TFloatField
      FieldName = 'ID_ESTADO'
    end
    object Qry_NotasCHVID_PAIS: TFloatField
      FieldName = 'ID_PAIS'
    end
    object Qry_NotasCHVMEMOEXP: TStringField
      FieldName = 'MEMOEXP'
      Size = 1
    end
    object Qry_NotasCHVFL_CFOP: TStringField
      FieldName = 'FL_CFOP'
      Size = 2
    end
    object Qry_NotasCHVBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object Qry_NotasCHVISENTAS_ICMS: TFloatField
      FieldName = 'ISENTAS_ICMS'
    end
    object Qry_NotasCHVOUTRAS_ICMS: TFloatField
      FieldName = 'OUTRAS_ICMS'
    end
    object Qry_NotasCHVBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object Qry_NotasCHVALIQ_IPI: TFloatField
      FieldName = 'ALIQ_IPI'
    end
    object Qry_NotasCHVISENTAS_IPI: TFloatField
      FieldName = 'ISENTAS_IPI'
    end
    object Qry_NotasCHVOUTRAS_IPI: TFloatField
      FieldName = 'OUTRAS_IPI'
    end
    object Qry_NotasCHVVL_IPI: TFloatField
      FieldName = 'VL_IPI'
    end
    object Qry_NotasCHVDT_EMBARQUE: TDateTimeField
      FieldName = 'DT_EMBARQUE'
    end
    object Qry_NotasCHVID_FORNECEDOR: TFloatField
      FieldName = 'ID_FORNECEDOR'
    end
    object Qry_NotasCHVUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object Qry_NotasCHVDT_ENTRADA: TDateTimeField
      FieldName = 'DT_ENTRADA'
    end
    object Qry_NotasCHVDESDOBRAMENTO: TStringField
      FieldName = 'DESDOBRAMENTO'
      Size = 1
    end
    object Qry_NotasCHVCTB: TStringField
      FieldName = 'CTB'
      Size = 4
    end
    object Qry_NotasCHVID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object Qry_NotasCHVFL_BLOQ: TStringField
      FieldName = 'FL_BLOQ'
      Size = 1
    end
    object Qry_NotasCHVDT_BLOQ: TDateTimeField
      FieldName = 'DT_BLOQ'
    end
    object Qry_NotasCHVIPI_NAOCREDTOT: TFloatField
      FieldName = 'IPI_NAOCREDTOT'
    end
    object Qry_NotasCHVDT_DIGITACAO: TDateTimeField
      FieldName = 'DT_DIGITACAO'
    end
    object Qry_NotasCHVID_ESPECIE: TFloatField
      FieldName = 'ID_ESPECIE'
    end
    object Qry_NotasCHVVL_IR: TFloatField
      FieldName = 'VL_IR'
    end
    object Qry_NotasCHVVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object Qry_NotasCHVVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
    object Qry_NotasCHVVL_CSLL: TFloatField
      FieldName = 'VL_CSLL'
    end
    object Qry_NotasCHVVL_ISS: TFloatField
      FieldName = 'VL_ISS'
    end
    object Qry_NotasCHVVL_INSS: TFloatField
      FieldName = 'VL_INSS'
    end
    object Qry_NotasCHVNR_SERVICO: TStringField
      FieldName = 'NR_SERVICO'
      Size = 5
    end
    object Qry_NotasCHVVL_NF_DEV: TFloatField
      FieldName = 'VL_NF_DEV'
    end
    object Qry_NotasCHVCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 44
    end
  end
end
