object FrmXmlEmail: TFrmXmlEmail
  Left = 313
  Top = 35
  ActiveControl = PageControl1
  Caption = 'Enviar e Receber XML - 1.0.1.20 - 19/01/2013'
  ClientHeight = 658
  ClientWidth = 1060
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Relatorio: TMemo
    Left = 564
    Top = 560
    Width = 815
    Height = 51
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1060
    Height = 658
    ActivePage = PgTsEnviar
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 1056
    ExplicitHeight = 657
    object PgTsEnviar: TTabSheet
      Caption = #160#160#160'Enviar Email'#160#160#160#160#160#160#160#160#160#160
      object PnTopo: TPanel
        Left = 0
        Top = 0
        Width = 1052
        Height = 227
        Align = alTop
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 1048
        object ScrollBox5: TScrollBox
          Left = 480
          Top = 1
          Width = 571
          Height = 225
          HorzScrollBar.Range = 361
          VertScrollBar.Range = 225
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          TabOrder = 0
          ExplicitWidth = 567
          object Label14: TLabel
            Left = -2
            Top = 161
            Width = 66
            Height = 15
            Alignment = taRightJustify
            Caption = 'Mensagem:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtPara: TEdit
            Left = 0
            Top = 33
            Width = 287
            Height = 23
            Hint = 'Endere'#231'o de email destino'
            Color = 14024703
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object edtCC: TEdit
            Left = 0
            Top = 59
            Width = 287
            Height = 23
            Hint = 'Com C'#243'pia'
            Color = 14024703
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object edtCCO: TEdit
            Left = 0
            Top = 85
            Width = 287
            Height = 23
            Hint = 'Com C'#243'pia Oculta'
            Color = 14024703
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object edtAssunto: TEdit
            Left = 0
            Top = 111
            Width = 287
            Height = 23
            Color = 14024703
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object cbxPrioridade: TComboBox
            Left = 0
            Top = 137
            Width = 98
            Height = 23
            Color = 14024703
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ItemIndex = 2
            ParentFont = False
            TabOrder = 4
            Text = 'Baixa'
            Items.Strings = (
              'Alta'
              'Normal'
              'Baixa')
          end
          object cbxConfirmaLeitura: TCheckBox
            Left = 103
            Top = 132
            Width = 187
            Height = 20
            Caption = '&Solicitar confirma'#231#227'o leitura'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object BtnEnviar: TBitBtn
            Left = 297
            Top = 100
            Width = 64
            Height = 42
            Caption = '&ENVIAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = 16
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550B30555000
              0000557F57F557777777550B305508888880557F57F575555557550B30508888
              8805557F57F7FFFFFF75550B300000000055557F5777777777F5550300000000
              0055557F777F555F77F555007800000070555F77557F5F7757F5007888000077
              70557755557F775557F508888800777770557F555577555557F5088808077777
              70557FF5757F555557F5098988077777705577F7557F555557F5999888077777
              705577755575F55557550988888077770555775555575FFF7555088888888000
              55557F55555577775555088888880755555575F5555F77555555508888075555
              5555575FFF775555555555000755555555555577775555555555}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 6
            OnClick = Enviar_email
          end
          object BtnFechar: TBitBtn
            Left = 296
            Top = 6
            Width = 64
            Height = 42
            Caption = '&Fechar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 16
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              04000000000068010000120B0000120B00001000000010000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
              F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
              000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
              338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
              45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
              3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
              F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
              000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
              338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
              4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
              8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
              333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
              0000}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 7
            OnClick = Fecha_Email
          end
          object mmMensagem: TMemo
            Left = 0
            Top = 176
            Width = 571
            Height = 49
            Align = alBottom
            Color = 14024703
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 8
            ExplicitWidth = 567
          end
          object edtDe: TEdit
            Left = 0
            Top = 7
            Width = 287
            Height = 23
            Hint = 'Seu endere'#231'o de email'
            Color = 14024703
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
          end
          object BitBtn1: TBitBtn
            Left = 297
            Top = 53
            Width = 64
            Height = 42
            Caption = '&Padr'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 16
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
              333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
              C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
              F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
              F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
              00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
              3333333373FF7333333333333000333333333333377733333333333333333333
              3333333333333333333333333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 11
            OnClick = Abre_configuracao_padrao
          end
          object BitBtn3: TBitBtn
            Left = 105
            Top = 151
            Width = 256
            Height = 25
            Caption = 'Envio autom'#225'tico dos Emails'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = 16
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
            OnClick = Enviar_automaticamente_emails
          end
        end
        object ScrollBox6: TScrollBox
          Left = 1
          Top = 1
          Width = 479
          Height = 225
          HorzScrollBar.Range = 475
          VertScrollBar.Range = 221
          Align = alLeft
          AutoScroll = False
          BorderStyle = bsNone
          TabOrder = 1
          object Label1: TLabel
            Left = 457
            Top = 10
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
          object Label2: TLabel
            Left = 453
            Top = 64
            Width = 22
            Height = 15
            Alignment = taRightJustify
            Caption = 'C.C:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 441
            Top = 90
            Width = 34
            Height = 15
            Alignment = taRightJustify
            Caption = 'C.C.O:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 425
            Top = 117
            Width = 50
            Height = 15
            Alignment = taRightJustify
            Caption = 'Assunto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 413
            Top = 142
            Width = 62
            Height = 15
            Alignment = taRightJustify
            Caption = 'Prioridade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 445
            Top = 38
            Width = 30
            Height = 15
            Alignment = taRightJustify
            Caption = 'Para:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object gbxLocalXML: TGroupBox
            Left = 5
            Top = 159
            Width = 469
            Height = 62
            Caption = ' Local aonde est'#227'o os XMLs Armazenados: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object spbLocalizaOrigem: TSpeedButton
              Left = 433
              Top = 25
              Width = 23
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
              OnClick = Localiza_local
            end
            object Label11: TLabel
              Left = 16
              Top = 28
              Width = 34
              Height = 15
              Alignment = taRightJustify
              Caption = 'Local:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtLocalOrigem: TEdit
              Left = 53
              Top = 25
              Width = 375
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
          end
          object gbxPeriodo: TGroupBox
            Left = 5
            Top = 2
            Width = 400
            Height = 154
            Caption = 'Per'#237'odo e Dados do Cliente: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Shape1: TShape
              Left = 1
              Top = 6
              Width = 5
              Height = 5
            end
            object Label9: TLabel
              Left = 267
              Top = 54
              Width = 42
              Height = 15
              Alignment = taRightJustify
              Caption = 'C'#243'digo:'
              FocusControl = edtCodigo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 13
              Top = 121
              Width = 38
              Height = 15
              Alignment = taRightJustify
              Caption = '&Raz'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 18
              Top = 88
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
            object Label7: TLabel
              Left = 34
              Top = 54
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
              Left = 145
              Top = 53
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
              Left = 266
              Top = 87
              Width = 44
              Height = 15
              Alignment = taRightJustify
              Caption = 'Nr.Nota:'
              FocusControl = edtNrNota
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtCodigo: TEdit
              Left = 314
              Top = 50
              Width = 71
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
            object cbxRazao: TComboBox
              Left = 58
              Top = 118
              Width = 329
              Height = 23
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnChange = Escolheu_cliente
            end
            object edtCNPJ: TEdit
              Left = 57
              Top = 84
              Width = 195
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
            end
            object edtDataIni: TMaskEdit
              Left = 56
              Top = 50
              Width = 82
              Height = 23
              EditMask = '!99/99/0000;1;_'
              MaxLength = 10
              TabOrder = 7
              Text = '  /  /    '
            end
            object edtDataFim: TMaskEdit
              Left = 171
              Top = 50
              Width = 82
              Height = 23
              EditMask = '!99/99/0000;1;_'
              MaxLength = 10
              TabOrder = 3
              Text = '  /  /    '
              OnExit = Sai_data_final
            end
            object edtNrNota: TEdit
              Left = 314
              Top = 84
              Width = 71
              Height = 23
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object RdPasta: TRadioButton
              Left = 306
              Top = 21
              Width = 75
              Height = 17
              Hint = 'Os XMLs est'#227'o armazenados em uma Pasta'
              Caption = 'Da Pasta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnClick = Mudou_local_xml
            end
            object RdBDados: TRadioButton
              Left = 181
              Top = 21
              Width = 120
              Height = 17
              Hint = 'Os XMLs est'#227'o armazenados no banco de daods'
              Caption = 'Do Banco Dados '
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              TabStop = True
              OnClick = Mudou_local_xml
            end
            object RdReenviar: TRadioButton
              Left = 8
              Top = 21
              Width = 172
              Height = 17
              Hint = 'Os XMLs est'#227'o armazenados no banco de daods'
              Caption = 'Reenviar do BDados XML'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              OnClick = Mudou_local_xml
            end
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 559
        Width = 1052
        Height = 69
        Align = alBottom
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 558
        ExplicitWidth = 1048
        object lblCodigo: TLabel
          Left = 544
          Top = 8
          Width = 3
          Height = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblRazao: TLabel
          Left = 544
          Top = 27
          Width = 3
          Height = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCNPJ: TLabel
          Left = 544
          Top = 47
          Width = 3
          Height = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 485
          Top = 8
          Width = 42
          Height = 15
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 485
          Top = 27
          Width = 38
          Height = 15
          Caption = 'Raz'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 485
          Top = 47
          Width = 49
          Height = 15
          Caption = 'N'#186' CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GroupBox4: TGroupBox
          Left = 5
          Top = 5
          Width = 469
          Height = 59
          Caption = ' Armazenamento dos arquivos que ja foram enviados: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Microsoft Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object spbLocalizaDestino: TSpeedButton
            Left = 434
            Top = 23
            Width = 23
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
            OnClick = Localiza_local
          end
          object Label12: TLabel
            Left = 16
            Top = 26
            Width = 34
            Height = 15
            Alignment = taRightJustify
            Caption = 'Local:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtLocalDestino: TEdit
            Left = 53
            Top = 23
            Width = 375
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
        end
      end
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 227
        Width = 1052
        Height = 332
        HorzScrollBar.Range = 481
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 3
        ExplicitWidth = 1048
        ExplicitHeight = 331
        object ScrollBox2: TScrollBox
          Left = 481
          Top = 0
          Width = 571
          Height = 332
          VertScrollBar.Range = 93
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          TabOrder = 0
          ExplicitWidth = 567
          ExplicitHeight = 331
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 571
            Height = 15
            Align = alTop
            Caption = 'XML Anexado para envio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 567
          end
          object lbxAnexo: TListBox
            Left = 0
            Top = 15
            Width = 571
            Height = 239
            Align = alClient
            BorderStyle = bsNone
            Color = 14024703
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ItemHeight = 15
            ParentFont = False
            TabOrder = 1
            ExplicitWidth = 567
            ExplicitHeight = 238
          end
          object PnlLogin: TPanel
            Left = 0
            Top = 254
            Width = 571
            Height = 78
            Align = alBottom
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 2
            ExplicitTop = 253
            ExplicitWidth = 567
            object Label6: TLabel
              Left = 7
              Top = 25
              Width = 47
              Height = 15
              Caption = '&Usu'#225'rio:'
              FocusControl = edtUsuario
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 15
              Top = 52
              Width = 39
              Height = 15
              Caption = 'Senha:'
              Color = clBackground
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object edtUsuario: TEdit
              Left = 59
              Top = 21
              Width = 299
              Height = 23
              Hint = 'Nome do Usu'#225'rio do Email'
              Color = 14024703
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnExit = Salva_saiu_usuario
            end
            object edtSenha: TEdit
              Left = 59
              Top = 49
              Width = 299
              Height = 23
              Hint = 'Senha secreta do email'
              Color = 14024703
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnExit = Salva_saiu_senha
            end
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 571
              Height = 15
              Align = alTop
              Caption = 'Digite o Nome de Usu'#225'rio e Senha do seu Email:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 2
              ExplicitWidth = 567
            end
          end
        end
        object ScrollBox3: TScrollBox
          Left = 0
          Top = 0
          Width = 355
          Height = 332
          VertScrollBar.Range = 149
          Align = alLeft
          AutoScroll = False
          BorderStyle = bsNone
          TabOrder = 1
          ExplicitHeight = 331
          object Panel3: TPanel
            Left = 0
            Top = 201
            Width = 355
            Height = 18
            Align = alBottom
            Caption = 'XML referente ao Nr.Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            ExplicitTop = 200
          end
          object lbxEnviar: TListBox
            Left = 0
            Top = 18
            Width = 355
            Height = 183
            Align = alClient
            BorderStyle = bsNone
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ItemHeight = 15
            ParentFont = False
            TabOrder = 1
            ExplicitHeight = 182
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 355
            Height = 18
            Align = alTop
            Caption = 'XML referente ao CNPJ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
          end
          object lbxNota: TListBox
            Left = 0
            Top = 219
            Width = 355
            Height = 113
            Align = alBottom
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = 15
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ItemHeight = 15
            ParentFont = False
            TabOrder = 3
            ExplicitTop = 218
          end
        end
        object ScrollBox4: TScrollBox
          Left = 355
          Top = 0
          Width = 126
          Height = 332
          HorzScrollBar.Range = 119
          VertScrollBar.Range = 27
          Align = alLeft
          AutoScroll = False
          BorderStyle = bsNone
          TabOrder = 2
          ExplicitHeight = 331
          DesignSize = (
            126
            332)
          object btnAnexarUm: TBitBtn
            Left = 4
            Top = 224
            Width = 115
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = '&Anexar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = 16
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FF3333333333333447333333333333377FFF33333333333744473333333
              333337773FF3333333333444447333333333373F773FF3333333334444447333
              33333373F3773FF3333333744444447333333337F333773FF333333444444444
              733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
              999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
              33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
              333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
              33333777333333333333CC333333333333337733333333333333}
            Layout = blGlyphRight
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 0
            OnClick = Anexar_um_xml
            ExplicitTop = 223
          end
          object btnEnviarArquivo: TBitBtn
            Left = 4
            Top = 2
            Width = 115
            Height = 25
            Caption = 'Anexar do &HD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 16
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FF3333333333333447333333333333377FFF33333333333744473333333
              333337773FF3333333333444447333333333373F773FF3333333334444447333
              33333373F3773FF3333333744444447333333337F333773FF333333444444444
              733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
              999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
              33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
              333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
              33333777333333333333CC333333333333337733333333333333}
            Layout = blGlyphRight
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 1
            OnClick = Anexar_arquivo
          end
          object btnAnexarTodos: TBitBtn
            Left = 4
            Top = 250
            Width = 115
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = 'Anexar &Todos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = 16
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FF3333333333333447333333333333377FFF33333333333744473333333
              333337773FF3333333333444447333333333373F773FF3333333334444447333
              33333373F3773FF3333333744444447333333337F333773FF333333444444444
              733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
              999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
              33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
              333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
              33333777333333333333CC333333333333337733333333333333}
            Layout = blGlyphRight
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 2
            OnClick = Anexar_todos_xml
            ExplicitTop = 249
          end
          object btnNEnviarEste: TBitBtn
            Left = 4
            Top = 276
            Width = 115
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = '&N'#227'o Enviar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = 16
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
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
            ParentFont = False
            TabOrder = 3
            OnClick = Nao_enviar_esse_xml
            ExplicitTop = 275
          end
          object btnNEnviarTodos: TBitBtn
            Left = 4
            Top = 302
            Width = 115
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #209' &Enviar Todos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = 16
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
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
            ParentFont = False
            TabOrder = 4
            OnClick = Nao_enviar_todos_xml
            ExplicitTop = 301
          end
        end
      end
      object PnlPadrao: TPanel
        Left = 84
        Top = 229
        Width = 666
        Height = 323
        BevelWidth = 3
        ParentBackground = False
        TabOrder = 2
        Visible = False
        object spbLocalizaOrigem_: TSpeedButton
          Left = 623
          Top = 23
          Width = 23
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
          OnClick = Localiza_local
        end
        object spbLocalizaDestino_: TSpeedButton
          Left = 622
          Top = 51
          Width = 23
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
          OnClick = Localiza_local
        end
        object Label18: TLabel
          Left = 109
          Top = 81
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
        object Label19: TLabel
          Left = 105
          Top = 139
          Width = 22
          Height = 15
          Alignment = taRightJustify
          Caption = 'C.C:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 93
          Top = 168
          Width = 34
          Height = 15
          Alignment = taRightJustify
          Caption = 'C.C.O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 77
          Top = 197
          Width = 50
          Height = 15
          Alignment = taRightJustify
          Caption = 'Assunto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 65
          Top = 224
          Width = 62
          Height = 15
          Alignment = taRightJustify
          Caption = 'Prioridade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 97
          Top = 110
          Width = 30
          Height = 15
          Alignment = taRightJustify
          Caption = 'Para:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 60
          Top = 251
          Width = 66
          Height = 15
          Alignment = taRightJustify
          Caption = 'Mensagem:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 45
          Top = 28
          Width = 82
          Height = 15
          Alignment = taRightJustify
          Caption = 'Local a Enviar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 16
          Top = 54
          Width = 112
          Height = 15
          Alignment = taRightJustify
          Caption = 'Local dos Enviados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 428
          Top = 80
          Width = 47
          Height = 15
          Alignment = taRightJustify
          Caption = 'Usuario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtDe_: TEdit
          Left = 132
          Top = 77
          Width = 287
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object edtPara_: TEdit
          Left = 132
          Top = 105
          Width = 287
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object edtCC_: TEdit
          Left = 132
          Top = 134
          Width = 287
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object edtCCO_: TEdit
          Left = 132
          Top = 163
          Width = 287
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object edtAssunto_: TEdit
          Left = 132
          Top = 192
          Width = 287
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object cbxPrioridade_: TComboBox
          Left = 132
          Top = 221
          Width = 98
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ItemIndex = 2
          ParentFont = False
          TabOrder = 9
          Text = 'Baixa'
          Items.Strings = (
            'Alta'
            'Normal'
            'Baixa')
        end
        object mmMensagem_: TMemo
          Left = 132
          Top = 249
          Width = 519
          Height = 48
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 12
        end
        object edtLocalOrigem_: TEdit
          Left = 132
          Top = 23
          Width = 484
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object edtLocalDestino_: TEdit
          Left = 132
          Top = 49
          Width = 484
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object edtUsuario_: TEdit
          Left = 480
          Top = 77
          Width = 165
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object BtFechaPadrao: TBitBtn
          Left = 557
          Top = 130
          Width = 90
          Height = 30
          Caption = '&Fechar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 16
          Font.Name = 'Microsoft Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            04000000000068010000120B0000120B00001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
            F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
            000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
            338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
            45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
            3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
            F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
            000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
            338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
            4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
            8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
            333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
            0000}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 8
          OnClick = Fecha_configuracao_padrao
        end
        object BtSalvaPadrao: TBitBtn
          Left = 482
          Top = 187
          Width = 165
          Height = 30
          Caption = 'Salvar como padr'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 16
          Font.Name = 'Microsoft Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 10
          OnClick = Salva_configuracao_padrao
        end
        object cbxConfirmaLeitura_: TCheckBox
          Left = 238
          Top = 215
          Width = 187
          Height = 31
          Caption = '&Solicitar confirma'#231#227'o leitura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
      end
    end
    object PgTsReceber: TTabSheet
      Caption = #160#160#160'Receber XML dos Fornecedores'#160#160#160#160#160#160#160#160#160#160
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 557
        Width = 1052
        Height = 71
        Align = alBottom
        Caption = '  Importar XML Recebidos para o Banco de Dados XML:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 561
        ExplicitWidth = 1072
        object Progresso: TProgressBar
          Left = 20
          Top = 32
          Width = 609
          Height = 18
          TabOrder = 1
        end
        object btnImportarXmlAgora: TBitBtn
          Left = 652
          Top = 16
          Width = 182
          Height = 50
          Caption = 'IMPORTAR XML AGORA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = 16
          Font.Name = 'Microsoft Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
            00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
            00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
            00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
            0003737FFFFFFFFF7F7330099999999900333777777777777733}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 1052
        Height = 102
        Align = alTop
        Caption = '  Dados da Conta do Email:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 1072
        object Label31: TLabel
          Left = 23
          Top = 20
          Width = 87
          Height = 15
          Alignment = taRightJustify
          Caption = 'Conta de Email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 288
          Top = 39
          Width = 47
          Height = 15
          Caption = 'Usu'#225'rio:'
          FocusControl = edXUsuario
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 527
          Top = 38
          Width = 39
          Height = 15
          Caption = 'Senha:'
          Color = clBackground
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object edXDe: TEdit
          Left = 21
          Top = 35
          Width = 260
          Height = 23
          Hint = 'Seu endere'#231'o de email'
          Color = 14024703
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = 'edmil.montagnoli@ceuazul.ind.br'
        end
        object edXUsuario: TEdit
          Left = 339
          Top = 35
          Width = 181
          Height = 23
          Hint = 'Nome do Usu'#225'rio do Email'
          Color = 14024703
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Text = 'edmil.montagnoli'
          OnExit = Salva_saiu_usuario
        end
        object edXSenha: TEdit
          Left = 572
          Top = 34
          Width = 181
          Height = 23
          Hint = 'Senha secreta do email'
          Color = 14024703
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Text = 'ed1000de'
          OnExit = Salva_saiu_senha
        end
        object BitBtn2: TBitBtn
          Left = 765
          Top = 34
          Width = 64
          Height = 45
          Caption = '&Fechar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 16
          Font.Name = 'Microsoft Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            04000000000068010000120B0000120B00001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
            F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
            000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
            338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
            45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
            3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
            F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
            000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
            338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
            4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
            8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
            333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
            0000}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
          OnClick = Fecha_Email
        end
        object btnAbrirPastaEmail: TBitBtn
          Left = 21
          Top = 67
          Width = 344
          Height = 25
          Caption = 'Conectar e Abir Pasta do Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = 16
          Font.Name = 'Microsoft Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
            333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
            C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
            F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
            F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
            00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
            3333333373FF7333333333333000333333333333377733333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 3
          OnClick = Abrir_pasta_email
        end
        object btnDesconectarEmail: TBitBtn
          Left = 410
          Top = 67
          Width = 344
          Height = 25
          Caption = 'Desconectar-se do Email'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = 16
          Font.Name = 'Microsoft Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 4
          OnClick = Desconectar_email
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 486
        Width = 1052
        Height = 71
        Align = alBottom
        Caption = '  Local aonde os XMLs ser'#227'o Armazenados:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ExplicitTop = 490
        ExplicitWidth = 1072
        object SpeedButton2: TSpeedButton
          Left = 620
          Top = 28
          Width = 23
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
          OnClick = Localiza_local
        end
        object Label35: TLabel
          Left = 14
          Top = 32
          Width = 34
          Height = 15
          Alignment = taRightJustify
          Caption = 'Local:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edXLocalDestino: TEdit
          Left = 53
          Top = 28
          Width = 560
          Height = 23
          Color = 14024703
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = 'C;\Temp'
        end
        object btnReceberXmlPasta: TBitBtn
          Left = 652
          Top = 14
          Width = 182
          Height = 50
          Caption = '&RECEBER XML PARA PASTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = 16
          Font.Name = 'Microsoft Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550B30555000
            0000557F57F557777777550B305508888880557F57F575555557550B30508888
            8805557F57F7FFFFFF75550B300000000055557F5777777777F5550300000000
            0055557F777F555F77F555007800000070555F77557F5F7757F5007888000077
            70557755557F775557F508888800777770557F555577555557F5088808077777
            70557FF5757F555557F5098988077777705577F7557F555557F5999888077777
            705577755575F55557550988888077770555775555575FFF7555088888888000
            55557F55555577775555088888880755555575F5555F77555555508888075555
            5555575FFF775555555555000755555555555577775555555555}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
          OnClick = Receber_xml
        end
      end
      object GroupBox5: TGroupBox
        Left = 239
        Top = 102
        Width = 813
        Height = 384
        Align = alClient
        Caption = 'Emails encontrados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object SpeedButton1: TSpeedButton
          Left = 620
          Top = 28
          Width = 23
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
          OnClick = Localiza_local
        end
        object ScrollBox7: TScrollBox
          Left = 2
          Top = 228
          Width = 809
          Height = 154
          HorzScrollBar.Range = 380
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          TabOrder = 0
          object ScrollBox9: TScrollBox
            Left = 0
            Top = 0
            Width = 380
            Height = 154
            VertScrollBar.Range = 15
            Align = alLeft
            AutoScroll = False
            BorderStyle = bsNone
            TabOrder = 0
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 380
              Height = 15
              Align = alTop
              Caption = 'Mensagem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
            object EmailMensagem: TListBox
              Left = 0
              Top = 15
              Width = 380
              Height = 139
              Align = alClient
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ItemHeight = 15
              ParentFont = False
              TabOrder = 1
            end
          end
          object ScrollBox10: TScrollBox
            Left = 380
            Top = 0
            Width = 429
            Height = 154
            VertScrollBar.Range = 15
            Align = alClient
            AutoScroll = False
            BorderStyle = bsNone
            TabOrder = 1
            object Panel10: TPanel
              Left = 0
              Top = 0
              Width = 429
              Height = 15
              Align = alTop
              Caption = 'Anexos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
              ExplicitWidth = 449
            end
            object EmailAnexo: TListBox
              Left = 0
              Top = 15
              Width = 429
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ItemHeight = 15
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object ScrollBox8: TScrollBox
          Left = 2
          Top = 17
          Width = 809
          Height = 211
          HorzScrollBar.Range = 471
          Align = alTop
          AutoScroll = False
          BorderStyle = bsNone
          TabOrder = 1
          object scbAssunto: TScrollBox
            Left = 0
            Top = 0
            Width = 380
            Height = 211
            VertScrollBar.Range = 15
            Align = alLeft
            AutoScroll = False
            BorderStyle = bsNone
            TabOrder = 0
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 380
              Height = 15
              Align = alTop
              Caption = 'Assunto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
            object EmailAssunto: TListBox
              Left = 0
              Top = 15
              Width = 380
              Height = 196
              Align = alClient
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ItemHeight = 15
              ParentFont = False
              TabOrder = 1
            end
          end
          object scbDe: TScrollBox
            Left = 380
            Top = 0
            Width = 338
            Height = 211
            VertScrollBar.Range = 15
            Align = alClient
            AutoScroll = False
            BorderStyle = bsNone
            TabOrder = 1
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 338
              Height = 15
              Align = alTop
              Caption = 'De'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
              ExplicitWidth = 358
            end
            object EmailDe: TListBox
              Left = 0
              Top = 15
              Width = 338
              Height = 196
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ItemHeight = 15
              ParentFont = False
              TabOrder = 1
            end
          end
          object scbData: TScrollBox
            Left = 718
            Top = 0
            Width = 91
            Height = 211
            VertScrollBar.Range = 15
            Align = alRight
            AutoScroll = False
            BorderStyle = bsNone
            TabOrder = 2
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 91
              Height = 15
              Align = alTop
              Caption = 'Data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
            object EmailData: TListBox
              Left = 0
              Top = 15
              Width = 91
              Height = 196
              Align = alClient
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ItemHeight = 15
              ParentFont = False
              TabOrder = 1
            end
          end
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 102
        Width = 239
        Height = 384
        Align = alLeft
        Caption = '  Pastas do Email - Selecione a pasta '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object SpeedButton3: TSpeedButton
          Left = 620
          Top = 28
          Width = 23
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
          OnClick = Localiza_local
        end
        object EmailPastas: TListBox
          Left = 2
          Top = 17
          Width = 235
          Height = 365
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ItemHeight = 15
          ParentFont = False
          TabOrder = 0
          OnClick = Clicou_pasta
        end
      end
    end
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 425
    Top = 220
  end
  object IdSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 526
    Top = 223
  end
  object IdIMAP4: TIdIMAP4
    SASLMechanisms = <>
    MilliSecsToWaitToClearBuffer = 10
    Left = 323
    Top = 220
  end
  object Qry_Cliente: TOraQuery
    SQL.Strings = (
      
        'Select t.id_cliente, t.nm_cliente, t.nr_cnpjclie, t.nr_inscestac' +
        'lie, t.gn_emaiclie, n.dt_emisnotafisc, n.dt_saidnotafisc, n.nr_n' +
        'otafisc, n.vl_notafisc, x.nfe_xml, n.SG_SERINOTAFISC_NOTAFISC, n' +
        '.id_notafisc , n.Filial'
      ' from cliente t, nota_fiscal n, nota_fiscal_xml x where '
      ' n.id_cliente = t.id_cliente '
      ' and x.id_notafisc (+) = n.id_notafisc '
      ' and x.nfe_xml is null'
      ' and n.dt_saidnotafisc >= '#39'23/02/2011'#39
      ' and n.dt_saidnotafisc <= '#39'23/02/2011'#39
      ' and t.gn_emaiclie is not null'
      ' and n.fl_cancnotafisc <> '#39'S'#39
      ' order by t.nm_cliente')
    Left = 102
    Top = 93
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
    object Qry_ClienteFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
  end
  object qryNFEXML: TOraQuery
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
    SQL.Strings = (
      'SELECT * FROM NOTA_FISCAL_XML')
    CachedUpdates = True
    Left = 27
    Top = 95
    object qryNFEXMLEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object qryNFEXMLFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object qryNFEXMLID_NFE_XML: TFloatField
      FieldName = 'ID_NFE_XML'
      Required = True
    end
    object qryNFEXMLID_NOTAFISC: TFloatField
      FieldName = 'ID_NOTAFISC'
      Required = True
    end
    object qryNFEXMLDT_EMISNOTAFISC: TStringField
      FieldName = 'DT_EMISNOTAFISC'
      Required = True
    end
    object qryNFEXMLNR_NOTAFISC: TFloatField
      FieldName = 'NR_NOTAFISC'
      Required = True
    end
    object qryNFEXMLRECIBO_ENVIO: TStringField
      FieldName = 'RECIBO_ENVIO'
    end
    object qryNFEXMLRECIBO_RETORNO: TStringField
      FieldName = 'RECIBO_RETORNO'
    end
    object qryNFEXMLDATA_ENVIO: TStringField
      FieldName = 'DATA_ENVIO'
    end
    object qryNFEXMLNFE_NUMERO: TFloatField
      FieldName = 'NFE_NUMERO'
    end
    object qryNFEXMLNFE_CHAVE: TStringField
      FieldName = 'NFE_CHAVE'
      Size = 60
    end
    object qryNFEXMLNFE_DT_RECEBTO: TStringField
      FieldName = 'NFE_DT_RECEBTO'
    end
    object qryNFEXMLNFE_PROTOCOLO: TStringField
      FieldName = 'NFE_PROTOCOLO'
    end
    object qryNFEXMLNFE_CHAVE_DIGITAL: TStringField
      FieldName = 'NFE_CHAVE_DIGITAL'
      Size = 40
    end
    object qryNFEXMLNFE_LOCAL: TStringField
      FieldName = 'NFE_LOCAL'
      Size = 240
    end
    object qryNFEXMLNFE_XML: TBlobField
      FieldName = 'NFE_XML'
      BlobType = ftOraBlob
    end
    object qryNFEXMLENVIO: TStringField
      FieldName = 'ENVIO'
      Size = 1
    end
    object qryNFEXMLRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 1
    end
    object qryNFEXMLAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      Size = 1
    end
    object qryNFEXMLSR_NOTAFISC: TStringField
      FieldName = 'SR_NOTAFISC'
      Size = 3
    end
    object qryNFEXMLLOTE: TFloatField
      FieldName = 'LOTE'
    end
    object qryNFEXMLDANFE: TStringField
      FieldName = 'DANFE'
      Size = 1
    end
    object qryNFEXMLCANCELADA: TStringField
      FieldName = 'CANCELADA'
      Size = 1
    end
    object qryNFEXMLINUTILIZADA: TStringField
      FieldName = 'INUTILIZADA'
      Size = 1
    end
    object qryNFEXMLEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 1
    end
  end
  object Qry_Vendedor: TOraQuery
    SQL.Strings = (
      
        'SELECT v.gn_emaivend FROM pedido_venda P, pedido_venda_nota_fisc' +
        'al F, nota_fiscal N, vendedor V WHERE'
      'v.id_vendedor     = p.id_vendedor'
      'AND p.id_pedivend = f.id_pedivend'
      'AND f.id_notafisc = n.id_notafisc'
      'AND n.id_notafisc = 732555')
    Left = 182
    Top = 93
    object Qry_VendedorGN_EMAIVEND: TStringField
      FieldName = 'GN_EMAIVEND'
      Size = 200
    end
  end
end
