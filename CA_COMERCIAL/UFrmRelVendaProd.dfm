object FrmRelVendaProd: TFrmRelVendaProd
  Left = 560
  Top = 199
  Width = 997
  Height = 708
  HorzScrollBar.Range = 804
  VertScrollBar.Position = 42
  VertScrollBar.Range = 1142
  Caption = 'Relat'#243'rio de Vendas por Produtos'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 15
  object RLReport1: TRLReport
    Left = 10
    Top = -23
    Width = 794
    Height = 1123
    DataSource = DSDoa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsUnderline]
    object Cabecalho_Cliente: TRLBand
      Left = 38
      Top = 163
      Width = 718
      Height = 20
      BandType = btHeader
      Visible = False
      object RLCli: TRLLabel
        Left = 0
        Top = 3
        Width = 720
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 183
      Width = 718
      Height = 20
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      object RLDraw1: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 6
        Align = faTop
        DrawKind = dkLine
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 5
        Width = 30
        Height = 15
        AutoSize = False
        Caption = 'C'#243'd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 30
        Top = 5
        Width = 48
        Height = 15
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 279
        Top = 5
        Width = 46
        Height = 15
        Alignment = taRightJustify
        Caption = 'Cx. Ped'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 349
        Top = 5
        Width = 46
        Height = 15
        Alignment = taRightJustify
        Caption = 'Kg. Ped'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 403
        Top = 5
        Width = 42
        Height = 15
        Alignment = taRightJustify
        Caption = 'Unit Pv'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 461
        Top = 5
        Width = 59
        Height = 15
        Alignment = taRightJustify
        Caption = 'TT Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 525
        Top = 5
        Width = 45
        Height = 15
        Alignment = taRightJustify
        Caption = 'Cx. Exp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 579
        Top = 5
        Width = 56
        Height = 15
        Alignment = taRightJustify
        Caption = 'Kg Exped'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 645
        Top = 5
        Width = 70
        Height = 15
        Alignment = taRightJustify
        Caption = 'Vl. Faturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 203
      Width = 718
      Height = 17
      object RLDBText1: TRLDBText
        Left = 30
        Top = 1
        Width = 245
        Height = 14
        AutoSize = False
        Color = clWhite
        DataField = 'NM_PRODMATEEMBA'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 575
        Top = 1
        Width = 60
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        DataField = 'KG_EXPED'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 395
        Top = 1
        Width = 50
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        DataField = 'VL_UNIT'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 450
        Top = 1
        Width = 70
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        DataField = 'VL_TOTAL'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 0
        Top = 1
        Width = 30
        Height = 14
        AutoSize = False
        Color = clWhite
        DataField = 'ID_PRODMATEEMBA'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText9: TRLDBText
        Left = 275
        Top = 1
        Width = 50
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        DataField = 'CX_PED'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText10: TRLDBText
        Left = 330
        Top = 1
        Width = 65
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        DataField = 'KG_PED'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText11: TRLDBText
        Left = 520
        Top = 1
        Width = 50
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        DataField = 'CX_EXPED'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 640
        Top = 1
        Width = 75
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        DataField = 'VL_FATURADO'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
    end
    object RESUMO_CONTAS: TRLBand
      Left = 38
      Top = 305
      Width = 718
      Height = 110
      BandType = btSummary
      Color = clWhite
      ParentColor = False
      Transparent = False
      BeforePrint = RESUMO_CONTASBeforePrint
      object mConta: TRLMemo
        Left = 45
        Top = 93
        Width = 235
        Height = 14
        Behavior = [beSiteExpander]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object mValor: TRLMemo
        Left = 280
        Top = 93
        Width = 70
        Height = 14
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object mQtde: TRLMemo
        Left = 0
        Top = 93
        Width = 46
        Height = 14
        Behavior = [beSiteExpander]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object rlQtde: TRLLabel
        Left = 0
        Top = 72
        Width = 45
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object rlConta: TRLLabel
        Left = 45
        Top = 72
        Width = 97
        Height = 15
        Caption = 'Descri'#231#227'o Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object rlTotal: TRLLabel
        Left = 280
        Top = 72
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 88
        Width = 350
        Height = 6
        DrawKind = dkLine
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Transparent = False
      end
      object rlQtdeNF: TRLLabel
        Left = 370
        Top = 72
        Width = 45
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object rlContaNF: TRLLabel
        Left = 415
        Top = 72
        Width = 96
        Height = 15
        Caption = 'Descri'#231#227'o conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object rlTotalNF: TRLLabel
        Left = 648
        Top = 72
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object mValorNF: TRLMemo
        Left = 648
        Top = 93
        Width = 70
        Height = 14
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object mContaNF: TRLMemo
        Left = 415
        Top = 93
        Width = 235
        Height = 14
        Behavior = [beSiteExpander]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object mQtdeNF: TRLMemo
        Left = 370
        Top = 93
        Width = 46
        Height = 14
        Behavior = [beSiteExpander]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object rlPed: TRLLabel
        Left = 0
        Top = 53
        Width = 350
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'PEDIDOS LAN'#199'ADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object rlFat: TRLLabel
        Left = 368
        Top = 53
        Width = 350
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'PEDIDOS FATURADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = -2
        Top = 33
        Width = 720
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'RESUMO DE CONTAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDraw4: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 6
        Align = faTop
        DrawKind = dkLine
      end
      object RLLabel2: TRLLabel
        Left = 235
        Top = 6
        Width = 40
        Height = 14
        Alignment = taRightJustify
        Caption = 'Totais:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBResult1: TRLDBResult
        Left = 275
        Top = 5
        Width = 50
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        DataField = 'CX_PED'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBResult4: TRLDBResult
        Left = 330
        Top = 5
        Width = 65
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        DataField = 'KG_PED'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 386
        Top = 5
        Width = 59
        Height = 16
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBResult7: TRLDBResult
        Left = 450
        Top = 5
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        DataField = 'VL_TOTAL'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBResult10: TRLDBResult
        Left = 522
        Top = 5
        Width = 48
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        DataField = 'CX_EXPED'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBResult11: TRLDBResult
        Left = 575
        Top = 5
        Width = 60
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        DataField = 'KG_EXPED'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBResult12: TRLDBResult
        Left = 640
        Top = 5
        Width = 75
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        DataField = 'VL_FATURADO'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDraw3: TRLDraw
        Left = 370
        Top = 88
        Width = 350
        Height = 6
        DrawKind = dkLine
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Transparent = False
      end
    end
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 85
      BandType = btHeader
      object lblSubTitulo: TRLLabel
        Left = 0
        Top = 39
        Width = 720
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Caption = 'Vendas por Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 0
        Top = 20
        Width = 720
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'AV'#205'COLA DACAR LTDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPagina: TRLLabel
        Left = 650
        Top = 0
        Width = 50
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'P'#225'gina: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 700
        Top = 0
        Width = 20
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
      object RLLabel13: TRLLabel
        Left = 0
        Top = 57
        Width = 720
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 595
        Top = 85
        Width = 120
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = ''
      end
      object imgLogoTipo: TRLImage
        Left = 0
        Top = 7
        Width = 107
        Height = 71
        AutoSize = True
        Picture.Data = {
          07544269746D6170125A0000424D125A00000000000036000000280000006B00
          0000470000000100180000000000DC590000120B0000120B0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEFDFDFDFDFDFDFDFDFDFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFEFDFDFDFDFDFEFEFE
          FDFDFDFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFEFFFEFDFFFEFDFEFF
          FEFEFFFEFEFEFEFDFDFCFDFDFBFBFEFEFDFBFCF9FBFBF9F9FBF9FAFCFAFAFAFA
          FAF8F9FBF9FAFBF9F9FAF9F9FAF9F9FAF9F9FAF8F9FAF9F9F8FBFAF8F9FAFAFB
          FBF9FAFCFCFAFCFDFCFCFEFEFAFEFEFAFEFEFEFFFFFFFDFCFFFFFEFFFFFEFEFF
          FFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFEFCFCFFFCFCFEFBFCFEFC
          FBFCFCFCFCFCFBFCFBFCFAF9FCFCFAFAFAF9F6F4F4F6F6F6F2F2F3F1F2F3EFF2
          F0EFF2F1EFF0F1F0F2F0F1F2F1F0F2F1F0F2F1F1F3F1F0F0F2EFF0F1EEF2F1F1
          F2F2F1F2F3F2F3F3F5F4F6F8F6F6F8F8F8FBFAF9FAFBF8FCFCFBFCFCFEFDFDFC
          FEFEF9FFFFFCFFFEFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFDFEFCFBFDFAF9FB
          FAF8FAF7F7FAF9F4F8F6F1F5F6F0F2F5EFF0F0EDEEEEECEDECE8E8E9E6E5E7E4
          E2E6E5E1E6E7E4E7E7E8E8E9EAE8E6E7E5E4E4E3E6E7E5E7E8E7E7E8E6E6E6E5
          E5E4E5E2E2E1E5E4E3E3E4E2E7E9E6E9EBEBECEFF2EDF0F1F3F4F2F6F6F7F7F7
          FAF9FAFAFBFDFBFDFDFDFBFCFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFCFCFCFAFBFCFBF9FCF8
          F7FBF5F2F9F2F2F3EEF1ECEAEDE8E6E9EAE2E2E6E3E3E7DFE0E1DBDCDBE3E3E2
          E4E5E3E7E5E4EFEBEBF2EFF0F3F1F1F6F3F5F8F5F7F8F5F7F7F4F6F7F3F5F5F2
          F3F4EFF1EFEAEEE6E2E6E6E2E3DFDFE0D3D4D3D9DBDBDFDFE0E2E3E3E9E9E9EC
          EAEEEEEDF2F3F4F6F6F6F7F7FAF8F8FCFAF8FEFCFEFDFDFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEFEFEFEFDFDFDFEFEFEFCFCFCFAFAFAF9F9F9F7F7F7F5F4F6
          F0EFF1EFEFEDE8EAE4E6E5E2E5E3E7DCD9DCE4E2E0EAE9E5F0F0EDF7F7F5FDFE
          FDFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDF4F4F4EBE9EAE0DEDF
          D5D4D7DDDCDDE1E0E0E7E8E5EDEFEBF0F3EEF4F6F5F8FBF9FCFCFCFCFCFCFDFD
          FDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFF
          FDFDFDFDFDFDFEFEFEFDFDFDFCFCFCFCFCFCFAFAFAF7F7F7F6F6F6F0F0F0EEEE
          EEE7E7E6E6E7E4DCDDD9E3E3E0E9E6E8F4F0F7FEFCFFFFFFFFFFFFFCFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFBF7FFE2DDF8CFCBEAC3BEE1B6B0D4AAA4CEAAA3D0
          ABA5CEAEA8D0B9B4D7CAC6E7D9D6F1EFEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFBFAFEEEEDEFE3E2E0D8D5D5E0DDDFE5E3E6ECEBEDEFF0F1F6F6F6F9
          F9F9FCFCFCFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFDFDFDFEFEFEFCFCFCFBFBFBF9F9F9F5F5F5F2F2F2ECECECE7E7E7E4
          E4E4DDDDDDE6E6E6ECECECF8F7FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAFF
          DBD4F4B3AAD37E72B05243903B2983291579200C781E0C7B1B0C7E1D0D811F0E
          841D0C831D0C841D0C821C0C7F1B0C7D1F0C7623117534237E50418F8075B4BF
          B8DBEBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFCEAE7ECDED9E1DFDBDFE5E5E5
          EBEBEBF2F2F2F5F5F5FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          FDFDFDFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFBFCFCFCFDFD
          FDFEFDFDFEFEFEFEFDFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE
          FEFEFDFDFDFCFDFCFDFCFCFAFAFAF7F6F6F4F4F4F0F0F0EAEAEAE3E3E3E0E0E0
          E3E3E3EAEAEAFBFBFBFFFFFEFFFFFFFFFFFFFFFFFFFFFDFFCFCBEA948BC74F43
          95291A7A1D0B791F0C8126118A26109026109226119225118F24108D23118C23
          108D2511902612912814922A16932D1A952E1C94301E932F1D962E19982B1493
          250F8A1F0D7B1F107343378D8F86BFDEDBF5FFFFFFFFFFFFFFFFFFFFFDFCEDEB
          ECDBDBDCDDDDDDE5E5E5EDECECF3F2F2F7F7F7FCFCFCFDFDFDFEFEFDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFCFDFFFEFFFFFCFD
          FDFBFDFCFCFDFAFAFAFAF9F8F8F8F7F6F6F6F6F5F5F5F5F5F5F6F7F7F6F7F7F8
          F9FAF8FAFAF9FCFBF9FDFCFAFEFDFCFCFFFDFCFFFFFEFFFFFEFFFFFEFFFFFEFC
          FEFFFBFDFCFDFCFAFFF8F6FCF4F6F6EFF3F0EAEDECE7E7E8E4E3E1E2DFE0E8E8
          E8F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF5F0FFB3AAD65C529E27197B1B087D1D
          07861C088416067A180B751F12772D217C3D3285504793635AA36D66AD756DB5
          7E73B97C70B67268B06B5FAB5C4FA04839903727822716761C0B751A08782110
          862B17922D1A96301F982C1D9428188E250F861F0C754B3E8DAEA5D4FFFFFFFF
          FFFFFFFFFEFFFEFFEAE6E7D6D7D7DCDFE2E7E8E9F0F0F0F8F7F7FBFCFBFBFBFF
          FFFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFDFEFC
          FEFEFAFBFAF8F7F6F5F6F4F1F3F1ECEEEDECECECEDEAEAEBEAEAEBEAE9ECEBEA
          EFEFEEEDEFEFF1F3F3F4F5F5F5F8F6F9FAFBFBFBFDFEFCFEFFFDFEFEFCFEFFFF
          FEFEFDFCFCFBFAFBF9FAF5F5F7F1F1F5E8E9EBE3E5E6DDDFDEE0E2E1F1EFEEFE
          FCFDFFFFFFFFFFFFFFFFFFF4F2FFABA3D156499521117915057A0F0077180975
          30217F5A4B9C887FBBB2ADD8D3CEF2F3EFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F5FFD9D6F9B8
          B0DC877CBA4D409429197A1808752310862B1993301D962E1B962914931E0A81
          33257F9D96C7FFFFFFFFFFFFFFFFFFF7F7FADCDFE1D7DAD8E5E6E1EEECECF5F4
          F7F8F7FCFCFBFCFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFCFEFA
          FDFEF8FDFAF7F6F3F3F0EDEFE8E9EBE1E3E5DBE1E2D5DADCD5D5D6D5D6D7D8D9
          D9DDDCDCDCDBDAE3E1E0E9E7E6EDE8EAF4ECEEF7F1F1FAF5F3FAFAF4FCFCF6FC
          FCF8FBFBFAF8F7F9F6F4F8F1F4EEE9EDE3E3E5E2DEDCDDE7E3E7F7F3F6FFFEFF
          FFFFFFFFFFFFFFFFFFC2BFE56259A321107612007315036E31257E6D62A8B0A5
          D2E8DDFBFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFEFDFCFDFCFCFAFEFCFBFEFCFEFDFEFFFCFFFFFEFEFFFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFAFBFFC7C1EA8275B73F2D871B0A79230E882F1A
          98301D972D1A921F0C7C35287CB2AFD8FFFFFFFFFFFFFFFFFFEDE9E9DCDDDBE0
          E0E2EBEBEEF2F3F0F8F9F8FCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFDFD
          FDFDFDFCFAF8F7EFF0F0E8E8EAE2E2E4E1E2E3E9EAE9F2F2F0F6F7F7F4F7FAF2
          F5F8EDF0F2E9EAECE0E0E1DCDCDBD6D4D3DCD9DBDEDBDFE5E3E4E9EAE8EFF0ED
          F3F4F2F6F6F4F7F4F4F3EFF4EBE9ECE4E7DFDCDFDBE4E4E7F9F9F9FFFFFDFFFF
          FFFFFFFFF2EEFF928AC234257F0E006A13036C42378B8F84C0D8CFF5FFFDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFEF4F1F6EBEAECE3E1E4DDDCDDD8D7D7
          CFD2D2CACDCECCD0D1D0D3D4D7D8D9DBDADDDDDCDDDDDBDEDFDEE1E1E2E5E4E5
          E8EBE8ECEDE8ECF4F1F4FCFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D0EF7C
          74B32C1E7C1A09792A18912F1F9629198E1B0A80504894EEEAFFFFFFFFFFFFFE
          F5F2F9D6D7DBDCDED9EBECE3F0F1F0F8F8F8FBFBFBFEFEFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFEFEFEFE
          FEFEFCFCFCFAF9FDEFEFF5E4E5E9E6EAE9F4F6F3FEFFFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7F9E9EAEBD6DADBCED2D3D7DB
          DCDEE1E4E5E8EBE9E9EEEAE6EBE3E2E7DEDEE0E9E9E4FBF7F9FFFEFFFFFFFFFF
          FFFFD8D8F26962A61A0B7011006A3A24839585BFE4DCF6FFFFFFFFFFFFFFFFFF
          FFFEFFFFFFFEFEFDFCE1E3E4CFD6D4C2CAC2CBCACAD5CCD4CEC7CDCBC8CBC9C9
          CAC3C7C6C4C9C6CDCECCD5D1D1DBD9D6DADCD6E0E2E0E7E6E6E5E4E7E7E5E9E5
          E2E7E5E2E5DEDADEDADAD9DDDADCD8D6D9DAD8D9E2E1E0EEEFEAFFFFFDFFFFFF
          FFFFFFFFFFFFFAFAFFADA6D64034891706762815932E1C9924148A211376B2AD
          D5FFFFFFFFFFFFFCF8FDDEDCE0DADBD9E7E7E7F1F1F1F7F7F7FBFBFBFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFDFDFDFCFCFBF1F2F4E6E8EAF0EFF0FFFFFEFFFFFFFFFFFFEAF2F8B2BF
          CA909CAC85919F95A1AEB0BAC7CFD8DFF8FEFFFFFFFFFFFFFFFFFFFFFFFFFDF7
          F6F5E1DEDFD6D3D7D6D4D8D9D8DAD8D8D9E3E5E4F9FCF7FFFFFFFFFFFFFFFFFF
          CEC6EA5449940C006517086D6D5DA7CDC3ECFFFDFFFFFFFFFFFFFFFFFFFEF8F7
          F6F0F0F2FDFEFEFEFEFBFFFFFEFAFAFCDCDCDDC3C3BECBC8C5CDC9C9C9CAC9D4
          D7D5EAEDECF2F7F6F4F7F6F0F0F0E2DEDFD8D6D5D7D7D6DEDDDEE2E2E3E6E5E7
          E7E5E5E5E3E2E1DFDCDEDCDADADBDAD9D9DBD8D9DAD4D5D5CACBCAC2C3C2BBBC
          BCD0CED2EAE6E5FFFFFFFFFFFFFFFFFFFFFFFFBBB6E24A3C901A06762B1A9528
          199718087E766BAEFFFFFFFFFFFFFEFCFFDDDDE1D9D9D9E8E8E8F1F1F1F9F9F9
          FCFCFCFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFCFCFCF9F9F9EDEFEDEDEEE9FFFFFEFFFFFFF3F5FC5D677817
          2B440A294706284B082A5007284C0B28490D26461E334B4A5A6D98A6B4E6EFF6
          FFFFFFFFFFFFFFFFFFFBF8F8E0DCDCDDDDDBF6FAF8FFFFFFFFFFFFFFFFFFBFBB
          E2463D8D0A00632D1A7D9287C2EFEBFEFFFFFFFFFFFFFFFFFFFFFFFFFDFEFCF7
          F8F7D0D0D2F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F1F4C9CACBBFC4C5
          E8EEEEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FCFCE0E1E1D3D2D3D7D7
          D7DCDBDCDBD8DADCDADCE2E0E1DFDFDED0D2CED1D3D3D2D2D6CFCFD4E0E1E4F6
          F8FAF4F5F8E5E5E9C7C2C3BDBAB5DEDAD8F8F6F7FFFFFDFFFFFFFFFFFFAFA4D5
          2E1D831F0F812D1D951E0B815A4C94FFFFFFFFFFFFFDFDFFE1E0E0DCDCDCE9E9
          E9F3F3F3FAFAFAFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFEFEFEFBFBFBF3F3F3EEEDE9FDFCF6FDFFFFE1EFF9152B43
          102B4B102F540A2C530D2E530F2E5012325610325712355A1435590E2D510929
          4A102A4854677CC4D0DAFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFC4BDE448
          398D0B0064352886A8A2D8FAFAFFFFFFFFFFFFFFFDFFFCFFFFFFD6DDE2E2E9ED
          FFFFFFFDFFFFFFFEFFFFFFFFFAFFFF5B687C2A3D56A5B5C2FFFFFFFFFFFFF6F8
          F7EDF2EFFFFFFFFFFFFFE2EBF29CA9BA97A5B4CCD5DEFFFFFFFFFFFFFFFFFFF3
          F4F3D1D3CFCACBC8E8E9E7FCFCFCFFFDFFFFFEFEFBFAF9DCDBDDCCC8CFF4F1F6
          FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFD2D4D4C8C7C7FBFAF7FFFFFDFFFFFFFFFF
          FFFFFFFFFAF8FF897FBD1A07702B189224108B413485FFFDFFFFFFFFFFFFFFDD
          DDDDE1E0E0ECEBEBF5F5F5FCFCFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFDFDFDF9F9F9F0F0F0F4F0EEFFFFFFFFFFFF3047
          640624420B29453D546E66758C6B7B8E576B7E3F536B2C425B0F2B4604224310
          30551636581736580F2C4F0E264242576DC4D6E1FFFFFFFFFFFFD6C9EA4F4492
          080064372684B2A9D9FFFFFFFFFFFFFFFFFFFFFCFFFFFDFFFFFFFF687586091D
          3308213C5B6F88F7FEFFFFFFFFFFFFFF6E7E8D183052213B5F0017356B7E90FF
          FFFFFFFFFFFFFFFEFFFFFF96A2B00B223B08223E001530001B33384D5CC2CED5
          FFFFFFFFFFFFF9F9F7E9ECEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFAF8
          F9FFFFFFFFFFFFB2BEC9909CACF6FDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7
          DCE5FFFFFFFEFEFEFFFFFDFFFFFFD4CFEC3C2C891F0A85231289413483FFFFFF
          FFFFFFFDFCFDDADCDBE1E4E4EEF0ECF9F8F8FCFBFAFEFEFEFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFDFDFDFDFDFDF9F9F9F3F3F3F6F6F6FFFFFFC7
          D4E2000A2B65768AE5F3F7FFFFFFFBFFFFF8FEFFFFFFFFFFFFFFFAFFFFE6F0F5
          A6B4C3495C790E28440826451534591C38590E2F5104264661788B6E6A9A1806
          6B291882A49CD4FFFEFFFFFFFFFFFFFFFEFEFFDBDADAF6F4F3FFFFFFAEBCC800
          19385066835169830013362C4059E9EFF1FFFFFF30455B26415CE3F4FC536477
          001131556A83FFFFFFFFFFFFB7C3CF0013317B8DA1FFFFFFCEDCE4697F920520
          3C011F3B6C7E8FFFFFFFFFFFFFFEFFFFFFFFFFB4BFC93446594B6175C4D1DBFF
          FFFFFFFFFDFFFFFF9CA6B7001A3A00163821384DCED9DFFFFFFFFFFFFFF1F7FB
          3C5063061F37B4C1CEFFFFFFFFFDFDFCFDFBFFFFFFFFFFFF7D70B11808762113
          84463C8FFFFFFFFFFFFFF7FBFAD5DAD7E4E6E2F4F0EFFCF9F9FCFDFDFEFDFDFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFBFBFBF8F8F8EFEFEFFBFCFB
          FFFFFF7C87985B6B7EFFFFFFFFFFFFEDF7FE152D4956687DFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE6EDF28799A8243E5C0624401B38541A37560D2D5405
          1E5A51569CFFFFFFFFFFFFFEFFFFFDFBF9DDDBDABABFC1BABDBAFBFAF6FFFFFF
          717E8D05254A3B506DFFFFFFA3B1BE041E3D1E3754E4F1FB465D74001E3EB7C6
          D7FFFFFF7D8C9E00133355677CFFFFFF3F596F0023456E8694FFFFFFFFFFFFFF
          FFFFCED5E42A426400173C3C5674FAFFFFFFFFFFC9D6E2031D3B25405F062342
          011B3B8692A8FFFFFFFFFFFF2E3F5A3A5572B4C2D008213E062341B6C4CAFFFF
          FF7C92A103213F163552112C47DDE8EEFFFFFFFEFFFAFAFDFEFDFFFFFFFFFFB1
          A8D62210741D0882645DA2FFFFFFFFFFFFF4F2F1DEDBE0EAE7E9F3F1F6F6FAFA
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFBFBFBF8F8F8EEEE
          EEFEFDFDFFFFFF435164B9CED8FFFFFFFFFFFF6072860627490D243EE9F2FAFF
          FFFFF3F1EEDCDDDDEEEEF1FFFFFFFFFFFFFFFFFFFFFFFF9BB1C40F2E4A0B274C
          143557143758102F486F868EFFFFFFFFFFFFFFFBFEC8C6C7B5B9B5B8C0BDFAFC
          FCFFFFFF6C7A8A0A294E0D2544CBD6DDFFFFFFBCC8D4012042274061324B6708
          294F54687DFFFFFFFFFFFF8290A1001132647C94355169082D5042596FFFFFFF
          FFFDFEFFFDFEFFFFFFF7FCFF55697E001634415368FFFFFF788998001D3F6077
          90E6F2FA4353690013356B8298FFFFFF2C465D09284AEFF5FBD6E3EC243A5807
          1C35B9CAD57D94A60B2A4F19365D132F4E2D465CFFFFFFFFFFFEFFFDFDFDFDFE
          FDFFFFFFFFFFDCD7F03323850E016E9A90C5FFFFFFFFFFFFE7E2E4E1E1E2EBEC
          EFF4F7F4FCFBFBFDFDFEFEFEFEFFFFFFFFFFFF000000FFFFFFFEFEFEFDFDFDF9
          F9F9EEEDEDFEFEFFFFFFFF4E6073879BADFFFFFFFFFFFF8B9CB308294A0D2A45
          73879DFFFFFFFFFFFFBBC2C5E2E3E7FFFEFEFFFFFFFFFFFFBBC6D1263B541C33
          4E8B9EB3253651122A4C153758082746455571F2FAFEFFFFFFFFFFFFCECFCFB0
          B4B2F4F4F5FFFFFF9BA9B8082548112C4C586D83FFFFFFFFFFFFB1C0CE072243
          153356193658122842D3DCE4FFFFFFFFFFFF6D8095041E3A1B36521935591A2F
          4FE2ECF4FFFFFFFBFDF9FEFEFEFFFFFFFFFFFF6D7C8E0017344B617A596F8711
          2E4F1C354EF8FEFFFFFFFF596E8700153A657E973F586F0325478897ACFFFFFF
          F3F3FC2D3F550A284A607794182C4E1C355D1E37590A294B677A8DFFFFFFFFFB
          FFFFFDFEFBFEFDFFFFFFFFFFFFF5F4FF47398D0E0068D7D3F1FFFFFFFFFFFFD8
          DBDADFE4E1F2F2EDF8F9F8FDFDFDFEFEFEFFFFFFFFFFFF000000FFFFFFFFFFFF
          FDFDFDF9F9F9F4F4F4F6F9FCFFFFFF97A9B507203EFFFFFFFFFFFFDAE0E90422
          43143657152D47F9FFFFFFFFFFFEFFFEFFFFFFFFFFFFECF4F9586F83000F3036
          4E69E2ECF6FFFFFFEDF4F953677E0724411937570A2C4A2B4559E9F3F7FFFFFF
          FDFEFFCDC8CAE6E3E2FFFFFFD7DFE70D2A4C1936560A2442BFD1DEFFFFFFFFFF
          FF99A6B30623471B3757122C4C586A80FFFFFFFDFFFFFFFFFF5364790A284B1A
          385A0A27478798A7FFFFFFFCFFFBF8FDFDFCFEFEFCFFFFFDFFFF6A7A8F071F3B
          16355714365D08274794A7B5FFFFFFFFFFFF556E82001E3F1C36541634531F38
          57FFFFFFFFFFFFEBF2F81F3A550E2A4E2138571A355717375B143659072440B8
          C0CCFFFFFFFFFEFCFBFFFDFCFEFFFFFCFFFFFFFCFFFEFF4F46951F1373FFFFFF
          FFFFFFEDF3EFDAE0D7F0E9ECF5F3F4FBFBFBFDFDFDFFFFFFFFFFFF000000FFFF
          FFFFFFFFFDFDFDFBFBFBF6F6F6F4F4F6FFFFFDF7FFFF00183D314964E8F2F4FF
          FFFF293F591035590A243FA1A9B2FFFFFFFFFFFFE9F5FD8797AC0F2842001832
          8495A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9AA6B40C2546113453112D502A40
          59E7F4F5FFFFFFFBF6FBD0CED2FFFFFBFFFFFF3C526E0D3055112F54304A65FF
          FFFFFFFFFCFFFFFF69798E08264C17365A0A2545C1CEDAFFFFFFFFFFFFF3FBFF
          3149630D314F0F3556223A51F2F9FEFFFFFFFDFEFEFBFDFEFBFCFCFEFFFFFFFF
          FF57677908284D12355D173455233C54F3FDFFFFFFFFFFFFFF49586B0F2A4917
          38590C274A8EA0ADFFFFFFFFFFFFDAE3E9102B441134571B3959143657153959
          1233571A2D4BEDF5F9FFFFFFFCFFFFFDFFFEFFFEFDFFFFF9FFFFFEFFFFFF4E43
          917265A3FFFFFFFEFFFFE0E1DEE6DEE7F1EFF0F9F9F9FCFCFCFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFCFCFCF5F5F5F3F4F4FFFFFCFFFFFFAFBBCF001330
          0E2B467085973F556F113358143556263953A9B8C8708495102948001033465A
          72D7E2E9FFFFFFFFFFFFF9F9FAE0E1DFFBF7F9FFFFFFFFFFFFC6D1E020345113
          2E530C2C5132485AF6FCFEFFFFFFF2F4F4F9FBF6FFFFFFA9B5C306244519375A
          0826458696A3FFFFFFFFFFFFFEFFFF334C6A102D4F132F5139506AFFFFFFFFFF
          FDFFFFFFBDCBD40726441737580C2747798EA6FFFFFFFFFEF9FEFDFFFFFEFCFE
          FCFBFFFFFFF5FCFF344860102F501937590E2A48718395FFFFFFFFFFFFF4F8FD
          263C541132551732561A3851F6FCFEFEFFFFFFFFFFBECAD304213F1336591938
          581B385616365A112F50354A62FFFFFFFFFFFFFFFFFFFFFEFBFFFFFFFFFFFFFF
          FFFFFFFFFF4D3F7DD8D6E9FFFFFFF9F7F7D9DCDBEAEBEAF6F6F6FBFBFBFEFEFE
          FFFFFF000000FFFFFFFFFFFFFFFFFFFDFDFDF8F7F7EEF2F3F2F3F4FFFFFFFFFF
          FFC4D0DA2E4760001A3806234016345714355C13345A0C2648071D39526276BE
          C8D4FFFFFFFFFFFFFFFFFFEEF1F2D3D7D5D4D5D2E0DDDEF2F1EEFFFFFDFFFFFF
          E1EBEF2941560F2F4D102C4B4C5E74FFFFFFFFFFFFFBFFFCFFFFFFFEFFFF344A
          5D16324D1534560B284DD4DFEAFFFFFFFFFFFFD5E0EA162E4818365505234890
          9EB0FFFFFFFFFFFDFFFFFF3E506A182E4F1B36550C2B49D2DEE5FFFFFFFCFDFF
          FEFFFEFFFEFDFBFCFEFFFFFFDDE4E9192F4613335E12355A0F2943D3D5DDFFFF
          FFFFFFFFC7D2DE07253E17375A09294A798899FFFFFFFDFCFFFFFFFFA1ADBA00
          1E401A3758203754193757123A5B08294A607083FFFFFFFFFFFEFFFFFFEBF2F8
          505E74FFFFFFFFFFFFFAFEFF7F79A4FFFFFFFFFFFEE4E7E2E7E7E7F5F5F5FBFB
          FBFDFDFDFEFEFE000000FFFFFFFFFFFFFFFFFFFDFDFDFAFAF9ECF0F2E3E3E3F4
          F2EDFEFFFEFFFFFFFEFFFFCCD8E3899EAE1D365114345718375A193250E2EEF9
          FFFFFFFFFFFFFFFFFFF8FAFADBDBDBD6D6D6DDDDDDE7E7E7E6E6E6E3E3E3F0F0
          F0FFFFFEFFFFFFE6F1F42C40580E2E510425418695A0FFFFFFFCFEFCFEFDFDFF
          FFFFB9C5CE0B283F19365A0D2C533C536FFFFFFFFFFFFFFFFFFF90A1AD092545
          17365B132C4BDAE6EAFFFFFFFFFFFFC2CBD50A2342193759102F4F394F65FEFF
          FFFFFFFFFDFCFCFEFDFCFDFDFDFDFEFEFFFFFFA8B3BB071E4314395B10304F35
          4865FFFFFFFFFFFEFFFFFF899DAB03214317355B0F2848DBE0E6FFFFFFFFFEFE
          FFFFFF7081970B28491D385418375715375D15355A0925447C8FA2FFFFFFFFFF
          FF6C7D9000193A46516DFFFFFFFFFFFFF0EBF8F2EFF8FDFFFCEFECEFE8E8E9F4
          F4F4FBFBFBFEFEFEFEFEFE000000FFFFFFFFFFFFFEFEFEFDFDFDF8F8F8EEEEF1
          E1E1E2D8D6D9FAF8FBFFFEFEFFFEFFFFFFFFFFFFFF8D9CAD0C29461837570424
          48A3B2C3FFFFFFFFFFFFDFDCDBC8C8C9D0D0D0DFDEDEEAEAEAF2F2F2F2F2F2EE
          EEEEE8E8E8ECECEDF9FFFEFFFFFFE1E9EF1E38511433520C243EC3CED7FFFFFF
          FDFDFDFFFFFEFFFFFF5B72850B2A4C1A36590B28456E7E89FFFFFFFFFFFFFFFF
          FF3D5165102E50112E50435570FFFFFFFFFFFFFFFFFF74808F04244816395C0B
          274467798DFFFFFFFFFDFFFCFDFCFEFEFDFFFFFFFCFFFFFFFFFF6C7B8C062A46
          13385B0927488097A2FFFFFFFFFFFFFFFFFF4A5C70102B52122F53394F6BFFFF
          FFFFFFFFFDFFFFF8FFFF1934551634581B375B1936572A425A13314B01234493
          A2B3FFFFFFBAC2CD001E3F09284C596E80FFFFFFFFFFFFFFFEFEFFFFFEE7EBEC
          E8E9E9F5F5F5FBFBFBFEFEFEFFFFFF000000FFFFFFFFFFFFFDFDFDFBFBFBF5F5
          F4E9EBEEDEE2E8F6F6F8FFFFFDFFFFFFFEFFFFFFFFFCFFFFFCF1FAFF152D4417
          3657103359213750FCFFFFFFFFFFE6E1E0C5C5C4D5D5D5E3E3E3EFEFEFF6F6F6
          FAFAFAF7F7F7EFEFEFE5E8E8EAECEEFFFFFFFFFFFFCDD7E10F2845102F513047
          5FFAFFFFFFFFFFFEFBFAFFFFFFF2FBFF294059122E5016385A04253F8497A5FF
          FFFFFFFFFFC6D3DB0C2F4F14355A0E24428D97A5FFFFFFFDFFFFFCFEFF364C64
          052B5214365A0C27439AA5B2FFFFFFFFFDFBFFFFFFE8F0F2F9FEFEFFFFFFF3FA
          FC263F5C14345718345C0E2A45BDCBD1FFFFFFFFFFFFE2ECEE0E2B4415355909
          26488D98A4FFFFFFFCFCFCFFFFFFA7B3BE0320431B38580F315A304862A0B0BE
          041F3F02224895A5B9FFFFFF738399052648072246838CA0FFFFFFFFFEFFF4EF
          F3D9DDDDEBEBEBF8F8F8FCFCFCFEFEFEFFFFFF000000FFFFFFFFFFFFFBFBFBF9
          F9F9F1F0F0E5E7E8F8FCFAFFFFFCFFFFFF74869A7E8C98FFFFFFFBFFFEFFFFFF
          5E70830F2E4F18385A07244395A3B1FFFFFFFFFFFECCCBCBD2D2D2E4E4E4F0F0
          F0F9F9F9FAFAFAFCFCFCF8F8F8ECF0F0EBE9EAF4EDEDFFFFFEFFFFFF97A6B804
          264807224393A2B0FFFFFFFEFCFEFFFEFEFFFFFFDEE2E91B2F4B0E315212375B
          0A234995A1ADFFFFFFDDE4EC0F2C4C082F53113659152B41CAD2D9FFFFFFFFFF
          FFE3ECF21F39530D3053183555092747A2B5C4FFFFFFF5FAFA1E3148ACB5C1FF
          FFFFFFFFFF6A70A10D26521B365C16325513304DD9E4ECFFFFFFFFFFFF8692A3
          0A2A4C143458112A46DADFE2FFFFFFFFFFFEFFFFFF364C611033501137600A23
          45D6DCE6939DAF001E420323438798A3FFFFFF354C5E142F50081B3CCFDBE1FF
          FFFFF0ECEFE3E3E0EEEEEEF9F9F9FCFCFCFFFFFFFFFFFF000000FFFFFFFEFEFE
          FAFAFAF4F4F4EEEEEEF7F7F4FFFFFAFFFFFF3F566C000E2EC0CBD5FFFFFFFFFF
          FFFFFFFFD2DEE70622401B38571535561D3550FCFFFFFFFFFFE3E2E3CFCFCFDD
          DDDDEBEBEBF7F7F7FBFBFBFDFDFDFBFBFCF8F7F5F5F1F0EAE5E8F4F3F3FFFFFF
          FFFFFF4E657B0B284B233B54F4FCFDFFFEFFF9FEFFFDFFFEFFFFFFCED5E01731
          490D2C5217355D0C27448499A95B6B7B8191A471849B002449001D3C939BA5FF
          FFFFFDFEFFFFFFFFD7E1E61A334B1030520D345C062946A3A9B9FAFFFF102A47
          5D7086FFFFFFFFFFFF54499B292E7510314B1639540B3155273B56E9EAF1FFFF
          FFEDF5F80420400D31590F2F54304460F8FFFFFFFFFDFFFFFFC4CED502204119
          375A0C274996A4B9FFFFFF8995A3031E3C0423435C7185D1E5F018324D072141
          B1C1C7FFFFFFF2F3F2E7E8E3EFEFEFFAFAFAFDFDFDFEFEFEFFFFFF000000FFFF
          FFFEFEFEFAFAFAF0F0F0F0F0F0FFFFFDFFFFFF5C6E871A3253E4ECF4FFFFFFFF
          FFFFE9E5E6FFFFFEFFFFFF4F627514304C19375902224596A5B4FFFFFFFDFFFF
          CCCCCCD8D8D8E8E8E8F4F4F4FBFBFBFDFDFDFEFEFEFEFDFAF8F6F4EEEEF1EDEA
          EDFAF9F7FFFFFFE4EEF5183350022140A1B1BBFFFFFFF8FEFFF8FEFFFFFDFDFF
          FFFFD5E0E9334A660522410D3052001939304254F8F9FEFFFFFF6E798D384B60
          EAEFF3FEFFFFFFFEFDFFFEFAFFFFFFDCE7ED2D425A08274913355A14234B7583
          993A556F475D73FFFFFFF4EAFC1B0C6AAFA7DC7F929C01253C19335D152E522C
          3C5AE3E9F48796A35469802943650F2F54032144A2AEBBFFFFFFFAFFFFFFFFFF
          465972173051072542B1C2D0FFFFFFFFFFFF9FACBB092345012147283F5C263D
          5D081F3CECF5FBFFFFFFEAECEDE0E1E5F0F0F0F9F9F9FCFCFCFDFDFDFFFFFF00
          0000FFFFFFFCFCFCFBFBFBF2F2F2F6F5F5FFFFFFD5E0EA0C223EF9FFFFFFFFFF
          FFFFFDE1E3E9CACACCF9F9F8FFFFFFD4DDE40A243F133659143558263E5AFCFF
          FFFFFFFFE2E2E2D1D1D1E3E3E3F0F0F0F9F9F9FCFCFCFEFEFEFDFDFBFAFCFCF2
          F6F6F0EBF0EDEBEDFFFEF9FFFFFF8293A4012040465B70FFFFFFFDFFFFFAFEFE
          FDFCFDFFFEFDFFFFFFF6FFFF9AA9B343576B66798DECF2F9FFFFFFFFFFFDFFFF
          FFFDFEFFFFFFFFF9FBFEFEFEFEFEFDFDFBFDFCFFFFFFF2F8FC6876880C24410C
          284B041E3C0B1F38BCC6D3FFFFFF9186C1241278F8F4FFFFFFFF8295A40E2243
          11304F0A3351152E551C2846E9EEF3DAE5F01A314C0B1F37D3DDE2FFFFFFFEFD
          FDFFFFFFAEBCC50015372F455CFFFFFFFEFEFEFCFEFFFFFFFFD1DBE5465A730C
          23410A1D3D8893A8FFFFFFFFFFFFDDDADADBDCE1EDECEDF7F7F7FBFBFBFFFFFF
          FFFFFF000000FFFFFFFDFDFDF7F7F7F0F0F0FFFFFFFFFFFF5567798B9BAAFFFF
          FFF9FDFBD4D6D7C8C8C9CFD0D3E4E5E4FFFFFFFFFFFF4F62780B2E5414365803
          2242A9B6C5FFFFFFFBFAF9CFCFCDDCDCDDEBEAECF5F5F4FAFAFAFEFEFEFEFEFF
          FBFDFDFBFBFBF5F3F6EFEBECF3F4F2FFFFFFF2F8FF203954102A47E9EFF4FFFF
          FFFEFFFCF8FDFFFBFDFFFFFEF9FFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFEFFFDFD
          FEFFFDFEFEFDFFFFFDFDFDFFFEFEFEFEFFFDFEFFFFFEFEFEFEFEFFFFFFFFFFFF
          CBD4DD6A81935D7488C1CED7FFFFFFEBE9FB26197E382693524A95706DA5EBE6
          FCC6D3DA335164072A411C3653BEC5CEFFFFFFFFFFFFE1E8F0D2D7DCFFFFFFFF
          FDFDFEFEFBFFFFFFD5DDE0344D62E6EFF7FFFFFFFDFDFFFEFEFEFFFFF8FFFFFF
          FFFFFFD3E1E8CBD4E2FFFFFFFEFFFDEBECE3CDC8C9DADBD6E5E6E5F2F2F2F9F9
          F9FCFCFCFEFEFE000000FFFFFFFDFDFDF8F8F8F6F6F6FFFFFFFFFFFF29405580
          93ACFFFFFFF1F7FAC2C1C2D0CACBD7D8DBD7DBD7F9F9F9FFFFFFDCE4ED0A2446
          15365A133352374A60FFFFFFFFFFFFE0E0DAD0D2D4E6E3EAF4F2F2F8FAF9FCFD
          FDFFFEFEFFFFFFFEFCFBF9F8F7EFEFEEECECEDFCFEFEFFFFFF707D8F001738AD
          BDCBFFFFFFFDFFFCFDFEFFFDFEFCFEFEFEFCFEFEFDFFFFFEFEFFFFFFFFFFFEFE
          FFFFFDFFFFFEFEFEFFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63529C211487261B95251E9C1A
          0F89221378D2CFE8FFFFFFD9E3E7F0F6F8FFFFFFFEFDFDFEFDFEFEFFFFFFFFFF
          FEFDFEFEFEF8FDFFFCFEFDFFFFFEFFFFFFFFFFFFFFFDFEFCFEFFFFFFFEFEFDFE
          FCFDFBFEFFFEFEFFFFFFFFFFFFFFFDFFFFFFFFEBE9E7E9E5EBECEBE7E5E5E5E8
          E8E8F3F3F3FCFCFCFDFDFD000000FFFFFFFDFDFDF8F8F8F4F4F4FFFFFFFFFFFF
          364D63334861FFFFFFFFFFFFD5D4D4CCC9CBD0D3D8DADCDDE8E8E7FFFFFFFFFF
          FF5A6D840B2C4F1A385608213CC2CEDAFFFFFFF5F6F1D0D1D2DEDCE2EFEDEDF4
          F7F6FAFBFCFFFDFEFFFFFFFFFEFDFDFBFAF4F2F2E9E9E9F8F9FAFFFFFFC3CDD9
          00183C808EA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFDFFFDFFFFFD
          FFFEFEFFFBFEFFFBFFFDFEFFFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFDFFFFFDFDFEFFFFFFFFC0BBD81C0A73291D922B25B5
          2629C72B2DBD23189D2F1F7BF4F1FCFFFFFFFFFFFDFFFFFCFEFFFCFFFFFFFEFE
          FDFCFDFFFFFDFFFFFFFCFFFFFDFEFFFFFDFEFDFFFFFEFFFFFFFEFFFDFFFFFFFF
          FFFFFBFEFFFFFFFFFFFFFFFEFFFBFEFFFEFFFEFFFFFFFFFFFFFFFFFFFEFFFFFF
          FEFEFEE8E8E8EEEEEEF7F7F7FDFDFD000000FFFFFFFDFDFDF9F9F9F2F2F2FDFC
          FCFFFFFF5B6E82001633D4DCE3FFFFFFFAFAF8C4C7C9C9CED2D7D6D8DCDCDCF6
          F7FAFFFFFFE5EEF50D294517375711304E4C5F79FFFFFFFFFFFFD5D6D7D8D7DB
          EAE8E7F2F4F3FAFAFBFFFEFEFFFFFFFDFEFEFEFCFBFAF8F7EFEDEDEFEFEFFFFF
          FFF3F7FC20324C4958807A75AB4033894537888982B4ECE6F9FFFFFFFFFFFDFF
          FEFEFFFDFFFDFFFDF9FEFEF8FEFFFEFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFFFFFCFFFEFFFFFCFCFFFFFFFFFF786BA71E0F89281F
          A2292BC31C29C31D29C32B29BE1D0C849786C1FFFFFFFEFFFDFEFDFEFFFCFEDA
          D7ECFFFFFFFBFFFFF3EEF5E9E9F3FAF8FDE1DEEFFFFFFFE9E8F1F5F0F9FFFBFF
          C3BDD6CDCED9FFFFFFD0CDE4C4BFD9FFFFFFEFF1F8EAE9F6F5F4FAB9B8CDE4E2
          EFF3F1FDFFFFFFEBEBEBE9E9E9F5F5F5FCFCFC000000FFFFFFFDFDFDFAFAFAF4
          F4F4FBFBFBFFFFFFB7C5D0001B3D344B64FFFFFFFFFFFFEBF0EECBC9CAD3CFD0
          D4D4D4DEDEE0FFFFFFFFFFFF6E7E8E0C2B4C153859062242E0EBF2FFFFFFE9EA
          EBD1D0D4E6E4E3F1F0F1F8F9F9FEFDFDFEFDFFFEFEFEFEFCFCF9F7F6F0EDECE8
          E6E5FFFFFFFFFFFF3C54640C1C56342A827062B16B5DA71F0F70210B739A91C5
          FFFFFFFFFFFFFFFDFEFFFFFBFCFFF9FBFDFFFFFEFEFFFFFBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFEFEFFFEFEFFFFFEFFF9FF412F8F21
          17922724B9232CBD222CBB1B29C4242BBE241A9A554299FFFFFFFAFDFFFCFFFF
          FFFFFF6E6096E7E7F3FFFFFF7E729FD7D7E4ACA2C8524587FFFFFF8F88A7CBC3
          DC8374AA9D93C4C7C2DFC0BED07A6FA6B0A3CD8A80AEC9C5D9A398BB695D99D6
          C8EE4C3687EAEAF6FFFFFFE8E8E7E8E8E8F5F5F5FCFCFC000000FFFFFFFDFDFD
          FBFBFBF5F5F5F5F6F6FFFEFCFFFFFF1E3C59001E4377869EFFFFFFFFFFFEF0EE
          E9C7C6C9CACBCACCCBCBF5F2F4FFFFFFECF1F710294713385A0525468E9EAAFF
          FFFFF7F8F8CED1D3DEDEDEEEEDEDF7F8F8FCFCFCFDFDFEFDFDFDFCFBFBF8F6F5
          EDEBEAEBE9E8FEFCFCFFFFFF3D58723B4C78FFFFFFFFFFFFFFFFFFEAEAFB7266
          B10C0068564C99F3F3FFFFFFFFFEFDFDFFFDFEFFFFFEFEFDFDFFFFFCFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFDFCFEFFFFFFFFE4E0F4
          220F81241E9B252BC4212BBC2528BF1B29C3222EBE231DA3433390FFFFFFFDFF
          FEFAFAF7FFFFFFC4BFDA5B5190928BB7524793FFFFFF695AA4A39EC3D4D0E89E
          99B0C1BCD6584899FFFFFFFFFFFF676297F5F6FFFFFFFF5B4A94D1CDE3A398BC
          AFA9C9A6A2C1625198EEF1F7FFFFFFE6E6E6E7E7E7F5F5F5FCFCFC000000FFFF
          FFFEFEFEFCFCFCF7F7F7F3F3F3FEFEFEFFFFFFBECBD6031E40001E4298A7B8FF
          FFFFFFFFFFECEFF3CAC8C6C1C0BFD1D2D2FFFFFEFFFFFF6B7A8C0C2B4D113152
          45596EFFFFFFFFFFFFCED3D3DCDADAECE9EBF4F3F5F8FBF9FAFCFCFAFAFAF8F7
          F7F2F0F1E7E5E5E3E2E2FFFFFEFFFFFF31486268748DFFFFFFFFFFFCFFFEFEFF
          FFFFFFFFFFB8B2DD1C0D6A46338CF3F1FEFFFFFFFFFDFFFFFFFEFDFDFEFDFFFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFFFBFDFEFFFF
          FFB9B4D91B0A7F2822A8212CC0202BBF2328C41C28C3252FBD1F1A96544499FF
          FFFFFCFBFCE1D9DEFFFFFFF5F7FC685EA6D4D1EE8E89BBD9D5E8796EA9EEF0FA
          7B6CA79995AFC8C6D77265A3C6C6D9E5E7F0A29CBFA199BCD8D4EB695A96CECB
          DF9C93B9FAFEFFCCC6DF503C8AFCFFFFFFFFFFE9E9E9E9E9E9F5F5F5FCFCFC00
          0000FFFFFFFEFEFEFDFDFDFAFAFAF6F6F6F4F5F5FDFEFEFFFFFF617283092846
          09234192A0B3FFFFFFFFFFFFFEFDFED2D3D3BABCBAF0EEF0FFFFFFE5EBF21027
          43113657182F48FBFDFFFFFFFFD8DDDED7D7D6E8E4E6EFEFF2F4F6F5F5F6F6F4
          F4F4EFEFF0E7E6E9DDDCDEF1F1F1FFFFFFEBF3FD0E234585919DFFFFFFF2F4F5
          D3D5D7EFEFF0FFFFFFFFFFFFD4CDE9210A734B3C92FAFAFFFFFFFFFFFEFEFEFE
          FFFBFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFEFE
          FEFDFFFFFF9A91BF190A812B26B5252AC21F2BBE1F2ABE202AC52A2AB8190B7A
          A499CBFFFFFFFBFAFBC8C1C6FFFFFFFFFFFF897DB27B72ADDDD9EBD1CEE1E6E1
          EEFFFFFFB8B0D5CCCAE1EAE7F7F9FAFD9A8FC1A49CC4FFFFFFACA0CB9A8CBEFC
          F8FFC3BFD49E97B6E7EAF39285BCC8C0DDFFFFFFFFFFFFE8E8E8ECECECF8F8F8
          FDFDFD000000FFFFFFFEFEFEFEFEFEFBFBFBF8F8F8F2F2F2FAFAF9FFFFFFFFFF
          FF3952620A294B031F456A798EFFFFFFFFFFFFFFFFFFEEEFEBD5D5DAFFFEFFFF
          FFFF5B6B7F062747273F58FDFFFFFFFFFFD7D9D9D2D1D0E0DDDEE7E6E8EAECEC
          E9EBEBE9E8E8E1E1E2DBDBDDE9E7E8FFFEFFFFFFFF8C9CAC001631A1AFBCFFFF
          FFEFF1F4C4C9C9CED0CCEDEDECFCFFFCFFFFFFCEC7E41306687067B0FFFFFFFF
          FFFBFEFEFCFBFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFF
          FDFEFDFFFEFFFFFFFF8B81B31B0D882A27B72728C41E29C0252CC02A29BB1C0E
          954B3B91FFFFFFFFFFFFE7E9EACBCCC6F2F2EFFFFFFFCCC6E0574987FFFFFFFF
          FFFCFFFFFFFFFFFFFFFFFFDEDAE89992AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC0BCCE9A90AFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3E7E7E7F4F4
          F4F9F9F9FDFDFD000000FFFFFFFFFFFFFEFEFEFDFDFDFBFBFBF3F5F5F2F2F2FF
          FCFAFFFFFFF1FFFF334D600C2A480A26492F4260C7D2DAFFFFFFFFFFFFFFFFFF
          FFFEFEFFFFFFCED9DF0E2032C1CEDAFEFFFFFDFEFCC8C6C2CACACAD2D3D5D6D9
          DBDBDDDDDEDCDBD8D7D6D4D7D9E9EAEBFFFFFDFFFFFFD5E1EA142E4C0B2640D6
          DEEAFFFFFFEAECE8D0D1D0DEDADDDCDCDFE7EDEEFEFFFFFFFFFFA299CD090066
          BBB3DEFFFFFFFEFFFCFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFDFEFEFEFFFFFF8B84B71A0B882D28B62128C01E2BC32D2ABE20
          148E453187F5F0FEFFFFFFF9FCFCD7D4D8DAD4D6E6E5E5FFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFEF3F3F3F0EFEFFFFFFFFFFFFFEFEEEFFFFFFFFEFEFEF7F7F7F0F0
          F0F7F7F6FAFBFAFFFEFFF6F4F8F0EFF2FFFFFFFBFAFDF6F5F7EDEDEDEAEAEAF0
          F0F0F8F8F8FCFCFCFEFEFE000000FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEF5F9F8
          EEF4F4F5F5F5FFFEFDFFFFFFFFFFFF516072072442103053092643627487DDE7
          EDFFFFFFFFFFFFFFFFFFFEFFFFECF2F6FFFFFFFFFFFFE0DEDDC1BFC0C1C4C5C5
          C8CACECECED5D3D2D8D5D4E6E6E8F7F8FBFFFFFFFFFFFFDCE4E8273D520F2B47
          3E5267FDFFFFFFFFFFE0E2DEDDDEDEE8E5E8E8E7E8E2E5E6F0F0F2FFFFFFFFFF
          FF574B9633247BFDF7FFFFFFFDFCFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFDFEFEFEFFFFFFA6A0CB1907812A27A92629C7212DBF
          231EA12A1E83EEE7FDFFFFFFFEFEFFDDE0E0DDDCD9E6E4DFE6E6E6F6F6F6FFFF
          FFFFFFFEFDFDFDE8E8E8DADADADCDCDCF1F1F1FFFFFFFFFFFFFFFFFFF5F5F5DF
          DFDFE0E0E0E0E0E0E8E8E8FDFCFDFFFFFFFFFFFFFEFDFFE8E7E9DEDDDFEAEAEA
          F1F1F1F7F7F7FCFCFCFCFCFCFFFFFF000000FFFFFFFFFFFFFFFFFFFDFDFDFFFF
          FFFDFDFCF6F9F6EFF3F3F4F4F4FFFDFAFFFFFFFFFFFF8196A40725400E2F5109
          2A4C112B475F6E7EC6CED9F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBF5F4F6
          F4F4F5F3F3F1F7F6F0FDFBF8FFFFFFFFFFFFFFFFFFFFFFFFA1B2C1122E4B1030
          4F0B253CBAC6CFFFFFFFFBFBFADBDCDBE2E3E4EFEEF0F1F1F0ECEDEAE7E7E5F6
          F9F8FFFFFFDFD9F4150567988BC7FFFFFFFDFEFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFEFDFFFDFFFFFFFFDDD9F1210B8125209A2A2A
          C32429BC1B11819D96CFFFFFFFFFFCFFDED9DFD5D9D4E4E7E1EEECECEDEDEDED
          EDEDF0F0F0ECECECEDEDEDE8E8E8EAEAEAEAEAEAE9E9E9EEEEEEEFEFEFEAEAEA
          ECECECECECECF1F1F1F0F0F0ECECECEAEAEAF2F1F3F1F0F2EBEAECE5E5E6EEEE
          EEF4F4F4F9F9F9FBFBFBFDFDFDFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFD
          FDFDFFFFFFFFFDFCFFFDFAF5FAF9EEF3F4F3F2F4FEFBFCFFFFFFFFFFFFC9D7DE
          384F640A2745143252102D4D07234628415E7C8895C3C7CAEDF2F4FDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF5FBA7B5C242546808244110
          33590223476B8094FFFFFFFFFFFFE8E6E6DDDDDDECECEEF6F5F6F7F8F7F7F6F1
          EDEFE9E8EAEAFFFFFFFFFFFF7268AA291C79F7F6FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFEFDFFFFFFFCFFFFFF6153A01B
          0E882A27B22924B7281782ECEAF7FFFFFFEBE6E8CFCCCBDBDBDBE5E6E9EEEBF3
          F2F2F2F2F2F2F1F1F1F0F0F0F2F2F2F5F5F5F7F7F7F5F5F5F3F3F3F1F1F1F2F2
          F2F1F1F1F3F3F3F7F7F7F8F8F8F8F8F8F5F6F3F2F2F2F0F0EFF0EFF1EFEEF0F3
          F3F3F7F7F7FAFCF9FCFCFCFEFEFEFEFEFEFEFEFEFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFBFDFCF3F8F6EFF4F4EBEDF1F9F7FAFFFF
          FEFFFFFFFFFFFF97A9BD243E5B0B28471131521132570B294A06254111304B31
          4D655C73887A8A998C98A3909BA78E99A870809042586C1B344F082441143151
          15365A032347586A81FFFFFFFFFFFFF6F5F5DDDCDCE8E7E7F1F2F3F8F9FAFDFC
          FBFBF9F8F2F3F1EBE9E8F7F5F6FFFFFFDFDAF3110563A8A2D1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFEFFFFFDFFFFFFFFFFFF
          EBEAF83226851B138A271C9F3E2B8AFDFEFFFFFFFFD9D4D4CAC7C7D3D4D2E0DF
          E1E8E7ECF0EFF0F4F4F4F6F6F6F8F8F8FAFAFAFCFCFCFCFCFCFCFCFCFAFAFAF9
          F9F9F9F9F9F9F9F9FBFBFBFDFDFDFCFCFCFCFCFCFCFDFBF9FAF8F8F8F8F6F7F6
          F8F9F8FAFAFAFDFEFCFDFEFCFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFFFBFCFFFFFEFEFEFDF7F7FAF5EEF2F2ED
          EFF1F0EFEFFEFCFCFFFFFFFFFFFFFDFFFFA2B0BF344E67072849092B4E0E3153
          1136571032540E2E4D0F29480E27450A254509264B0829500E31551436571937
          58102E4C0C26457B8C9CFFFFFFFFFFFFFBFAF9DFE1E0E2E2E3F3EFF2F8F6F7F9
          FCFCFCFEFDFEFCFBF8F5F7EEECEDEAEAE9FFFFFFFFFFFF5449934D3F96FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFDFFFFFDFFFF
          FFFFFEFEFFFFFFE8E9F7493E911C0B773C2790FFFFFFFFFFFEFFFFFDE8E4EACF
          D2CBD2D3CEDBDADCE5E5E4EFEFEFF6F6F6FAFAFAFCFCFCFEFEFEFEFEFEFDFDFD
          FDFDFDFCFCFCFCFCFCFDFDFDFDFDFDFEFEFEFEFEFEFDFDFDFDFDFDFDFDFDFCFC
          FCFCFCFCFDFDFDFEFEFEFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFEFCFDFEFFFEFFFFFDFDFEFDFC
          F9FAFAF1F3F3F1F1F2EEEDEEF7F6F6FEFDFCFFFFFFFFFFFFFFFFFFD1DAE27485
          98324963132B480B2749092A4D0E2D4F122E4E1431511331541131540E2C4D0E
          2A48112B474D6176D0DBE2FFFFFFFFFFFDFBFAF9E1E0E0DDE3E2ECEDEFFBF5F7
          FDFBFBFAFDFDFBFEFEFDFCFBFBF9FAECEDF1E5E6E4F9FAF5FFFFFFB2A9DA1905
          6BDFDFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF
          FFFCFFFDFFFEFEFDFEFEFDFFFFFFFFFFFF9284C114036E685DA3EFF0FDFFFFFF
          FFFFFFFCFCFCE0E2DFD3D2D4D7D7D7E5E5E5EDEDEDF7F7F7FCFCFCFEFEFEFFFF
          FFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFD
          FDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFBFFFEFFFFFC
          FFFEFBFFFDFDFDFBFCF9F9F9F8EEF0F3EEF2F1F2F0EBF7F5F2FCFDFCFFFFFEFF
          FFFFFFFFFFFFFFFFDFE4E8ABB6C6798BA05D718951657D435A713A526A39516A
          5869809AA6B2DFE8EEFFFFFFFFFFFFFFFFFEF2F5F3DFE2E3E4E2E5E9EEEFF4F5
          F7FEF9FAFFFEFEFCFFFCFCFEFEFFFDFEF7F5F7EDF0F0E0E0DFECECE8FFFFFFF2
          ECFD24106F9D99D0FFFFFFFFFEFFFEFEFFFFFEFFFFFEFFFFFFFFFFFEFFFFFEFF
          FEFEFEFFFFFFFFFFFFFFFFFDFEFFFBFDFEFEFFFFFDFFFFFFB4B3DD221074230F
          75A69DCFFFFFFFFFFFFFFFFFFFFCFAF9E5E5E5D7D7D7E7E7E7F3F3F3FAFAFAFC
          FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
          FFFFFFFEFFFFFEFFFEFEFEFDFDFDFCFCFCFBFBFBF6F6F6F4F4F3F0F0F0EFEFEF
          EFEFEFF8F8F8FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8F8E9E9E9E2E2E2E8E9E9F0F0F0F6
          F6F6FBFBFBFDFDFDFDFEFEFEFEFEFCFCFCF9F8FAF4F1F7EBE7E8DDDBD9D6DAD8
          FEFFFFFFFFFF574A92574E99FFFFFFFCFDFFFDFCFCFFFCFFFFFDFFFEFFFCFFFD
          FFFFFEFFFFFFFFFBF7FFC4CCEEF1F4FFFFFFFFFBFEFCFFFDFEFEFEFEFFFFFFF2
          F0FD6D64AD0B006A372B80BFB9DCFFFFFFFFFFFFFFFFFFEDEDEDE0E0E0EDEDED
          F7F7F7FCFCFCFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFEFEFEFDFDFDFBFBFBF8F8
          F8F4F4F4F2F2F2EEEEEEF1F1F1EDEDEDF6F5F5F8F8F8FDFDFDFDFDFDFDFDFDFE
          FDFDFFFEFEFEFEFDFEFEFEFBFBFBF4F4F4EAEAEAE7E7E7E8E8E8EEEEEEF2F2F2
          F8F8F8FCFCFCFDFDFDFEFEFEFEFEFEFDFDFDFAFAFAF4F5F4ECE9EAE1DEE2E5E6
          E5FCFBFDFFFFFFFFFFFFA29AD3220E78F0ECFBFEFFFEFDFEF8FDFDFEFFFFFCFC
          FFFAFFFFFEFFFFFFF1ECFC382E920200782C1C8DE2DAF2FFFFFFFEFEFDF7FFF7
          F9FEF9FFFFFFFFFFFFDBD4EB54479317076D4F4196CAC4E4FFFFFFFFFFFFE2E2
          E2EAEAEAF5F5F5FBFBFBFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFD
          FDFDFDFDFDFCFCFCF8F8F8F8F8F8F2F2F2F1F1F1F1F1F1E7E7E7EAEAEAEEEEEE
          F1F1F1F0F0F0EFEFEFEEEEEEF0F0F0EAEAEAEAEAEAEDEDEDF0F0F0F5F5F5F7F7
          F7FAFAFAFBFBFBFEFEFEFEFEFEFFFFFFFEFEFEFCFCFCF6F6F6EEEFECE3E2DEE8
          EBECFFFFFFFFFFFFFDF6FF9E97C3443690210B7BB3A9DCFFFFFFFDFFFAFEFEFE
          FCFFFCFCFEFFFDFFFDFFFFFF8E90C7160F8CCDC9FC2E21956B66B3FFFFFFFEFE
          FFFEFDFCFEFFFFFFFEFEFFFDFFFFFFFFFFFFFF7369BC0E00732E2771FFFFFFFF
          FFFFE8E8E8E9E9E9F6F6F6FBFBFBFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFEFEFEFDFDFDFEFEFEFDFDFDFCFCFCFBFBFBF8F8F8F7F7F7F6F6F6F3F3
          F3F2F2F2F1F1F1F1F1F1F1F1F1F1F1F1F2F2F2F4F4F4F4F4F4F8F8F8F9F9F9FA
          FAFAFDFDFDFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFAFAFAF1F1F1E7E8E6
          EBEDEAFCFFFFFFFFFFD3CBE8352585130880281B9529129058479DFFFFFFFDFE
          FFFEFDFDFFFDFFFDFDFFFCFDFEFFFFFFA9ADD30E077A786DC41A107E918CC7FF
          FFFFFCFEFEFFFEFDFDFEFDFFFFFFFFFFFFC8C4E43C34830F00717163AEF5F6FD
          FFFFFFFDFDFDE7E7E7EEEEEEF8F8F8FDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFEFEFEFCFCFCFC
          FCFCFBFBFBFBFBFBF9F9F9F9F9F9F9F9F9F9F9F9FAFAFAFAFAFAFBFBFBFBFBFB
          FDFDFDFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF8F8F8EDED
          EDE6E6E8FAFBFEFFFFFFD2CAE5200C751E199A252ABB2E2AC02A1A9B210C79C1
          BAE1FFFFFFFFFCFEFFFDFEFDFEFBFEFDFFFFFEFFFFFFFF897BC1281A85706BB0
          FFFCFFFFFEFFFAFDFEFEFFFEFFFFFFE9EBFB665AA20A006445338ED2CBEFFFFF
          FFFFFFFFFFFFFEEAEAEAE8E8E8F3F3F3FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFD
          FEFEFEFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFEFEFEFDFDFDFEFE
          FEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF5
          F5F5E8E8E8F1F2F2FFFFFFFAF9FF3C298224169A272FBA1D2EBD252DBC2821AA
          29188D3A2A88F9F9FFFFFFFDFFFFF9FFFFFBFDFBFCFEFBFFFDFDFFFFFFFFFFFF
          FFFFFFFFFEFFFFF9FFFEFDFFFEFFFFFFA097C9160469201174AAA1D1FFFFFFFF
          FFFFFFFFFDF5F6F8E8E8E8E6E6E6F1F1F1F7F7F7FCFCFCFDFDFDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          FAFAFAF4F4F4EAEAEAF9FAF8FFFFFFA89CCE170884292BB7202CBD1D2BBD212A
          BF292DBD251D982111845E4DA4FFFFFFFFFFFFFFFEFDFEFEFEFFFEFEFEFFFCFE
          FFF7FEFFF6FEFDFFFEFEFEFAFFFDFFFFFFCCC8E80500657569ACFDFAFFFFFFFF
          FEFFFFF8FBFAEAE9E9EAE6E7EBEBEBF2F2F2F8F8F8FCFCFCFDFDFDFEFEFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFBFBFBF3F3F3F2F2F2FCFEFAFFFFFF6053971C1693272DC1222CC124
          28C32227C6232AC12D2AB3251B95220C845C489EF8F7FEFFFFFFFFFFFFFFFFFD
          FEFEFEFCFEFDFFFEFDFFFEFEFFFFFCFFFFFFE0D9F72614784A3990FFFFFFFFFF
          FFFEFCFFEAEEEEDEE4E1E9EAEBF1EFEFF5F5F5FAFAFAFCFCFCFDFDFDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFDFDFDFBFBFBF3F3F3F4F4F3FDFCFDFFFFFF786EA217047A201798
          2523AA272AB22729B32724B92627B42929B3261C912711872E1C82A39BC8FCFA
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFF9B92C7130172362D81FAF7FFFF
          FFFFF9F8F9E0DEE2E0E1E1EBEBEBF2F2F2F9F8FAFBFBFBFCFCFCFEFEFEFEFEFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF5F5F5EFEFEFF5F8F8F8FFFDFFFFFFBCB7
          D854469C3220912B1A9528198F2B178E2A1A9A262FBE1E2CB1271C9B3116931C
          09802616875B49A19184B7A098BF8680B65B50A31A067312006C7A6AB2FDFEFF
          FFFFFFFFFCFFE4E3E5E3E2E2ECECECF6F6F6FAFAFBFBFBFDFDFDFDFEFEFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDF9F9F9EDEDEDE8E7EAF7F7FAFF
          FDFFFFFFFFFFFFFF52419726168D2C21A12C27B82529C2262BBC1F2DBE232BC3
          2B24AF2A1E972C199629118F1B0C86170A831D0F861E0E7B857FB8EDEFFAFFFF
          FFFFFFFFFCFBFDEAE9EBE2E2E2EEEEEEF6F7F5F9F9FAFCFDFCFEFDFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFBFBFBF2F2F2E9E7E5
          EFEBE8FFFFFFFFFDFF4435881D0E91292AB7222BC11E2BBE222AC12328C0202B
          C1212BC3262CC2232DC0212CB8202CAF2127B22E2AAF2D1A9D402D8BFFFFFFFF
          FFFFFDFFFFF5F4F8E5E5E4E6E6E6F0F0EFF5F6F4FAFBF9FDFDFDFEFEFEFFFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBFBF4F4
          F4EAEAEAF7F7F6FFFFFFA5A4CC14057F2F29B7272AC6202AC21F2AC4212BC221
          2CC02C2ABB251EAA2828B92329BE222BC11F2CC11F2EBC2E29BE1A077EA695CC
          FFFFFFFDFEFCE1E3E4DCDFDFEAEAE9F1F2EFF7F8F6FBFCFAFEFFFDFDFDFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFC
          FCFCF7F7F7F0EEF0FBF9FBFFFFFFB5B4D71305751C178E2825A92D27BB2828BA
          1F25B42C1DA3301594221A951F2BB4232AC32626C42025C72B2CBD1D14934334
          8AFFFFFFFFFFFFECEBEDDBD9E0EBEBE5F3F4F2F8F9F7FCFDFBFDFCFDFDFDFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFDFDFDFDFDF9F9F9F4F5F3F9F7F2FFFDFFFFFFFFE1E0F25A4E9C1F12741406
          721307741B127A3B2C90291A932429AF1E2EC11C29C3242CC1292DBA251A9A20
          0E7BE1D8FAFFFFFFFAFEFBDEDFE3E7E4EAF4F3EFF9F9F8FCFCFCFDFDFDFDFDFD
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFEFEFDFDFDF5F7F7F0F4F5F7F6F9FFFDFEFFFFFFFFFFFFFF
          FBFFE0D8F0DDD4E8FFFFFFC5B2E01C0A822A2BB7272BB92A25B92920A71B0D84
          231679D5D1EDFFFFFFFFFFFEE8E8E6E1E4E4EFF1EFF9F8F7FDFDFDFEFEFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFBFBFBF3F4F4F3F2F2F1F1F1FBFBFA
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC7E315046618057D1405781805782816
          7D7E70B3FFFCFFFFFFFFFFFFFFEDECECE3E3E3EDEDEDF6F6F6FCFAFDFEFEFEFD
          FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDF9F9F9F7F7F7F1F1
          F1F1F1F1F2F2F2F1F1F1F0F0F0F3F2F4FFFEFFFFFFFFF3F1FFD2D0E5CDCBE1DE
          DBF2FFFFFFFFFFFFFFFFFFFFFEFFEDEDEFE8E8E7EFF0EDF6F6F6FAFAFAFEFDFF
          FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFEFEFEFB
          FBFBF9F9F9F5F5F5F4F4F4F0F0F0EFEFEFEEECEDF9F5F3FFFFFBFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEF6F5F7EAE9EBEAE9EAF0F0EFF6F7F5FBFBFBFCFC
          FCFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FCFCFCFDFDFDFDFDFDFBFBFBFCFCFCFAFAFAF6F6F6F2F4EFEFF5EBF0F0F4F2F0
          F5F4F3F4F3F4F2F1F3ECECF0EBEAE9EFECEBECEEEFEFF5F6F4F9FAF8FCFDFBFD
          FCFDFEFEFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFEFEFEFCFBFCFBFBFAF5F6FAF3
          F0FAF4F3F4F7F4F5F6F1F8F1F1F0EFF3EDF0F3F2F6F6F5F8FAF7FBFCFAFDFEFC
          FEFFFDFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      end
    end
    object Cabecalho_Vendedor: TRLBand
      Left = 38
      Top = 123
      Width = 718
      Height = 20
      BandType = btHeader
      Visible = False
      object RLVen: TRLLabel
        Left = 0
        Top = 3
        Width = 720
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Cabecalho_Digitador: TRLBand
      Left = 38
      Top = 143
      Width = 718
      Height = 20
      BandType = btHeader
      Visible = False
      object RLDigitador: TRLLabel
        Left = -2
        Top = 3
        Width = 720
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RES_PROD_NAO_EXP: TRLBand
      Left = 38
      Top = 245
      Width = 718
      Height = 60
      AutoExpand = False
      BandType = btSummary
      Color = clWhite
      ParentColor = False
      Transparent = False
      BeforePrint = RES_PROD_NAO_EXPBeforePrint
      object memQtdePedido: TRLMemo
        Left = 309
        Top = 48
        Width = 90
        Height = 14
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object memQtdeExpe: TRLMemo
        Left = 410
        Top = 48
        Width = 90
        Height = 14
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object memProduto: TRLMemo
        Left = 0
        Top = 48
        Width = 300
        Height = 14
        Behavior = [beSiteExpander]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lblProduto: TRLLabel
        Left = 0
        Top = 28
        Width = 300
        Height = 16
        AutoSize = False
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object lblQtdePedido: TRLLabel
        Left = 310
        Top = 28
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Qtde Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object lblQtdeExpe: TRLLabel
        Left = 410
        Top = 28
        Width = 90
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Qtde Expedida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDraw5: TRLDraw
        Left = 0
        Top = 43
        Width = 720
        Height = 6
        DrawKind = dkLine
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Transparent = False
      end
      object lblDiferenca: TRLLabel
        Left = 510
        Top = 28
        Width = 90
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Diferen'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object memDiferenca: TRLMemo
        Left = 510
        Top = 48
        Width = 90
        Height = 14
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lblLegenda: TRLLabel
        Left = -2
        Top = 6
        Width = 720
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Resumo por Produto N'#227'o Expedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDraw7: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 6
        Align = faTop
        DrawKind = dkLine
        Transparent = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 220
      Width = 718
      Height = 25
      BandType = btSummary
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLDBResult2: TRLDBResult
        Left = 450
        Top = 5
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        DataField = 'VL_TOTAL'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 235
        Top = 6
        Width = 40
        Height = 14
        Alignment = taRightJustify
        Caption = 'Totais:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBResult3: TRLDBResult
        Left = 575
        Top = 5
        Width = 60
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        DataField = 'KG_EXPED'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBResult5: TRLDBResult
        Left = 275
        Top = 5
        Width = 50
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        DataField = 'CX_PED'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBResult6: TRLDBResult
        Left = 330
        Top = 5
        Width = 65
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        DataField = 'KG_PED'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBResult8: TRLDBResult
        Left = 522
        Top = 5
        Width = 48
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        DataField = 'CX_EXPED'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 392
        Top = 5
        Width = 53
        Height = 16
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBResult9: TRLDBResult
        Left = 640
        Top = 5
        Width = 75
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        DataField = 'VL_FATURADO'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDraw10: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 6
        Align = faTop
        DrawKind = dkLine
        Transparent = False
      end
    end
    object FOOTER_2: TRLBand
      Left = 38
      Top = 415
      Width = 718
      Height = 15
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.FixedTop = True
      Transparent = False
      object RLSystemInfo2: TRLSystemInfo
        Left = 515
        Top = 2
        Width = 200
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object lblUsuario: TRLLabel
        Left = 0
        Top = 2
        Width = 44
        Height = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
  end
  object DSDoa: TOraDataSource
    DataSet = FrmSelVenProd.Qr
    Left = 4
    Top = 41
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 4
    Top = 69
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 4
    Top = 97
  end
end
