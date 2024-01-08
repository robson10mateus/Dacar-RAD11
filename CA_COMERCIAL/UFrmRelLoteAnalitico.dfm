object FrmRelLoteAnalitico: TFrmRelLoteAnalitico
  Left = 325
  Top = 61
  Width = 928
  Height = 599
  HorzScrollBar.Range = 794
  VertScrollBar.Range = 1123
  Caption = 'Relat'#243'rio Analitico'
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
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Margins.TopMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = Ds_Lote
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    BeforePrint = RLReport1BeforePrint
    object RLB_Cabecalho: TRLBand
      Left = 38
      Top = 19
      Width = 718
      Height = 75
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 224
        Top = 2
        Width = 248
        Height = 22
        Caption = 'Relat'#243'rio Anal'#237'tico do Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 19
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 6
        Top = 39
        Width = 83
        Height = 16
        Caption = 'INTEGRADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 302
        Top = 23
        Width = 121
        Height = 16
        Caption = 'AVES ALOJADAS :'
      end
      object RLDBText1: TRLDBText
        Left = 95
        Top = 39
        Width = 370
        Height = 16
        AutoSize = False
        DataField = 'NM_FORNECEDOR'
        DataSource = Ds_Lote
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 426
        Top = 23
        Width = 116
        Height = 16
        DataField = 'AVES_ALOJADAS'
        DataSource = Ds_Lote
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 6
        Top = 23
        Width = 41
        Height = 16
        Caption = 'LOTE:'
      end
      object RLDBText3: TRLDBText
        Left = 50
        Top = 23
        Width = 56
        Height = 16
        DataField = 'ID_LOTE'
        DataSource = Ds_Lote
        Text = ''
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 70
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel29: TRLLabel
        Left = 557
        Top = 39
        Width = 41
        Height = 16
        Caption = 'CNPJ:'
      end
      object RLLabel32: TRLLabel
        Left = 118
        Top = 23
        Width = 58
        Height = 16
        Caption = 'STATUS:'
      end
      object RLDBText19: TRLDBText
        Left = 184
        Top = 23
        Width = 54
        Height = 16
        DataField = 'STATUS'
        DataSource = Ds_Lote
        Text = ''
      end
      object RLDBText22: TRLDBText
        Left = 601
        Top = 39
        Width = 98
        Height = 16
        AutoSize = False
        DataField = 'NR_CNPJFORN'
        DataSource = Ds_Lote
        Text = ''
      end
      object RLDBText31: TRLDBText
        Left = 451
        Top = 39
        Width = 103
        Height = 16
        AutoSize = False
        DataField = 'DESC_NUCLEO'
        DataSource = Ds_Lote
        Text = ''
      end
      object RLLabel43: TRLLabel
        Left = 7
        Top = 56
        Width = 57
        Height = 16
        Caption = 'BAIRRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLLabel44: TRLLabel
        Left = 234
        Top = 56
        Width = 56
        Height = 16
        Caption = 'CIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLDBText34: TRLDBText
        Left = 67
        Top = 56
        Width = 165
        Height = 16
        AutoSize = False
        DataField = 'NM_BAIRFORN'
        DataSource = Ds_Lote
        Text = ''
      end
      object RLDBText35: TRLDBText
        Left = 292
        Top = 56
        Width = 202
        Height = 16
        AutoSize = False
        DataField = 'NM_CIDADE'
        DataSource = Ds_Lote
        Text = ''
      end
    end
    object RLSubRetiradas: TRLSubDetail
      Left = 38
      Top = 135
      Width = 718
      Height = 91
      DataSource = Ds_Retirada
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        BandType = btTitle
        object RLLabel7: TRLLabel
          Left = 316
          Top = 4
          Width = 86
          Height = 18
          Align = faCenter
          Caption = 'RETIRADAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial Black'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 2
          Align = faTop
          DrawKind = dkLine
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 21
        BandType = btColumnHeader
        object RLLabel8: TRLLabel
          Left = 6
          Top = 3
          Width = 74
          Height = 16
          Caption = 'Nota Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 99
          Top = 3
          Width = 66
          Height = 16
          Caption = 'Data Real'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 193
          Top = 3
          Width = 93
          Height = 16
          Caption = 'Aves Abatidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 299
          Top = 3
          Width = 67
          Height = 16
          Caption = 'Peso Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 384
          Top = 3
          Width = 78
          Height = 16
          Caption = 'Peso M'#233'dio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 477
          Top = 3
          Width = 45
          Height = 16
          Caption = 'Turma'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel42: TRLLabel
          Left = 527
          Top = 3
          Width = 78
          Height = 16
          Caption = 'Abatedouro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 46
        Width = 718
        Height = 19
        object RLDBText6: TRLDBText
          Left = -7
          Top = 2
          Width = 87
          Height = 15
          Alignment = taRightJustify
          DataField = 'NR_NOTAFISC'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 99
          Top = 2
          Width = 112
          Height = 15
          DataField = 'DT_SAIDNOTAFISC'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 478
          Top = 2
          Width = 44
          Height = 15
          DataField = 'TURMA'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 379
          Top = 2
          Width = 81
          Height = 15
          Alignment = taRightJustify
          DataField = 'PESO_MEDIO'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 192
          Top = 2
          Width = 94
          Height = 15
          Alignment = taRightJustify
          DataField = 'QTD_AVESABAT'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 293
          Top = 2
          Width = 73
          Height = 15
          Alignment = taRightJustify
          DataField = 'PESO_AVES'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText33: TRLDBText
          Left = 527
          Top = 4
          Width = 153
          Height = 15
          DataField = 'NM_DESTREMENOTAFISC'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 65
        Width = 718
        Height = 22
        BandType = btColumnFooter
        object RLDBResult1: TRLDBResult
          Left = 140
          Top = 2
          Width = 146
          Height = 16
          Alignment = taRightJustify
          DataField = 'QTD_AVESABAT'
          DataSource = Ds_Retirada
          Info = riSum
          Text = ''
          BeforePrint = RLDBResult1BeforePrint
        end
        object RLLabel14: TRLLabel
          Left = 6
          Top = 2
          Width = 44
          Height = 16
          Caption = 'Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 244
          Top = 0
          Width = 123
          Height = 16
          Alignment = taRightJustify
          DataField = 'PESO_AVES'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult3: TRLDBResult
          Left = 136
          Top = 2
          Width = 325
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'RLDBResult2.value / RLDBResult1.value '
          DataSource = Ds_Retirada
          DisplayMask = '##,###.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLSubFornecedor: TRLSubDetail
      Left = 38
      Top = 94
      Width = 718
      Height = 41
      DataSource = Ds_Fornecedor
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 20
        BandType = btColumnHeader
        object RLLabel5: TRLLabel
          Left = 6
          Top = 3
          Width = 111
          Height = 16
          Caption = 'Origem das Aves'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 334
          Top = 3
          Width = 100
          Height = 16
          Caption = 'Linhagem Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 490
          Top = 3
          Width = 78
          Height = 16
          Caption = 'Quantidade'
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
        Left = 0
        Top = 20
        Width = 718
        Height = 20
        object RLDBText4: TRLDBText
          Left = 6
          Top = 1
          Width = 74
          Height = 15
          DataField = 'FORN_AVES'
          DataSource = Ds_Fornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 334
          Top = 1
          Width = 64
          Height = 15
          DataField = 'LINHAGEM'
          DataSource = Ds_Fornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 488
          Top = 1
          Width = 80
          Height = 15
          Alignment = taRightJustify
          DataField = 'QUANTIDADE'
          DataSource = Ds_Fornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLSubRemessa: TRLSubDetail
      Left = 38
      Top = 226
      Width = 718
      Height = 141
      DataSource = Ds_Remessa
      object RLBand8: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        BandType = btTitle
        object RLLabel16: TRLLabel
          Left = 284
          Top = 4
          Width = 150
          Height = 18
          Align = faCenter
          Caption = 'REMESSA DE RA'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial Black'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 2
          Align = faTop
          DrawKind = dkLine
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 21
        BandType = btColumnHeader
        object RLLabel17: TRLLabel
          Left = 6
          Top = 3
          Width = 74
          Height = 16
          Caption = 'Nota Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 99
          Top = 3
          Width = 72
          Height = 16
          Caption = 'Data Envio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 202
          Top = 3
          Width = 70
          Height = 16
          Caption = 'Qualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 420
          Top = 3
          Width = 78
          Height = 16
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 507
          Top = 3
          Width = 70
          Height = 16
          Caption = 'P. Entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel41: TRLLabel
          Left = 591
          Top = 3
          Width = 66
          Height = 16
          Caption = 'Opera'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 46
        Width = 718
        Height = 19
        object RLDBText13: TRLDBText
          Left = -7
          Top = 4
          Width = 87
          Height = 15
          Alignment = taRightJustify
          DataField = 'NR_NOTAFISC'
          DataSource = Ds_Remessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 99
          Top = 3
          Width = 112
          Height = 15
          DataField = 'DT_SAIDNOTAFISC'
          DataSource = Ds_Remessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 202
          Top = 3
          Width = 126
          Height = 15
          DataField = 'NM_PRODMATEEMBA'
          DataSource = Ds_Remessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText16: TRLDBText
          Left = 351
          Top = 3
          Width = 146
          Height = 15
          Alignment = taRightJustify
          DataField = 'QN_EMBAITEMNOTAFISC'
          DataSource = Ds_Remessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText30: TRLDBText
          Left = 507
          Top = 3
          Width = 35
          Height = 15
          DataField = 'PREV'
          DataSource = Ds_Remessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText32: TRLDBText
          Left = 590
          Top = 3
          Width = 69
          Height = 15
          DataField = 'OPERACAO'
          DataSource = Ds_Remessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 65
        Width = 718
        Height = 75
        AutoExpand = False
        BandType = btSummary
        object RLLabel22: TRLLabel
          Left = 3
          Top = 23
          Width = 63
          Height = 16
          Caption = 'Resumo :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 4
          Top = 40
          Width = 76
          Height = 16
          Caption = 'Rac. Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 4
          Top = 57
          Width = 68
          Height = 16
          Caption = 'P. M'#233'dio :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 95
          Top = 23
          Width = 89
          Height = 16
          Caption = 'PR'#201'- INICIAL '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 98
          Top = 40
          Width = 81
          Height = 16
          Alignment = taRightJustify
          DataField = 'PRE_INICIAL'
          DataSource = Ds_ResumoRacao
          Text = ''
        end
        object RLLabel26: TRLLabel
          Left = 219
          Top = 23
          Width = 55
          Height = 16
          Caption = 'INICIAL '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 6
          Top = 3
          Width = 44
          Height = 16
          Caption = 'Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 292
          Top = 3
          Width = 205
          Height = 16
          Alignment = taRightJustify
          DataField = 'QN_EMBAITEMNOTAFISC'
          DataSource = Ds_Remessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBText18: TRLDBText
          Left = 223
          Top = 40
          Width = 47
          Height = 16
          Alignment = taRightJustify
          DataField = 'INICIAL'
          DataSource = Ds_ResumoRacao
          Text = ''
        end
        object RLLabel28: TRLLabel
          Left = 306
          Top = 23
          Width = 68
          Height = 16
          Caption = 'ENGORDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 420
          Top = 23
          Width = 42
          Height = 16
          Caption = 'FINAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 305
          Top = 40
          Width = 69
          Height = 16
          Alignment = taRightJustify
          DataField = 'ENGORDA'
          DataSource = Ds_ResumoRacao
          Text = ''
        end
        object RLDBText21: TRLDBText
          Left = 414
          Top = 40
          Width = 48
          Height = 16
          Alignment = taRightJustify
          DataField = 'ABATE'
          DataSource = Ds_ResumoRacao
          Text = ''
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 19
          Width = 718
          Height = 4
          DrawKind = dkLine
        end
        object lbl_Pre_inicial: TRLLabel
          Left = 95
          Top = 57
          Width = 84
          Height = 16
          Alignment = taRightJustify
          BeforePrint = lbl_Pre_inicialBeforePrint
        end
        object lbl_Inicial: TRLLabel
          Left = 213
          Top = 57
          Width = 57
          Height = 16
          Alignment = taRightJustify
          BeforePrint = lbl_InicialBeforePrint
        end
        object lbl_Engorda: TRLLabel
          Left = 302
          Top = 57
          Width = 72
          Height = 16
          Alignment = taRightJustify
          BeforePrint = lbl_EngordaBeforePrint
        end
        object lbl_Final: TRLLabel
          Left = 410
          Top = 57
          Width = 52
          Height = 16
          Alignment = taRightJustify
          BeforePrint = lbl_FinalBeforePrint
        end
      end
    end
    object RLBand11: TRLBand
      Left = 38
      Top = 425
      Width = 718
      Height = 22
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 5
        Top = 4
        Width = 73
        Height = 16
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 564
        Top = 4
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 674
        Top = 4
        Width = 112
        Height = 16
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel31: TRLLabel
        Left = 653
        Top = 3
        Width = 18
        Height = 16
        Caption = 'de'
      end
    end
    object RLSubDadosAnt: TRLSubDetail
      Left = 38
      Top = 367
      Width = 718
      Height = 58
      DataSource = Ds_DadosAnt
      object RLBand12: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 34
        BandType = btColumnHeader
        object RLLabel33: TRLLabel
          Left = 18
          Top = 18
          Width = 51
          Height = 16
          Caption = 'INICIAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 283
          Top = 4
          Width = 151
          Height = 18
          Align = faCenterTop
          Caption = 'DADOS ANTERIORES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial Black'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel35: TRLLabel
          Left = 104
          Top = 18
          Width = 64
          Height = 16
          Caption = 'MORT.(%)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 192
          Top = 18
          Width = 30
          Height = 16
          Caption = 'C.A.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 242
          Top = 18
          Width = 44
          Height = 16
          Caption = 'G.P.D.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel38: TRLLabel
          Left = 301
          Top = 18
          Width = 32
          Height = 16
          Caption = 'P.M.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel39: TRLLabel
          Left = 354
          Top = 18
          Width = 36
          Height = 16
          Caption = 'I.E.F.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel40: TRLLabel
          Left = 410
          Top = 18
          Width = 44
          Height = 16
          Caption = 'SA'#205'DA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw5: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 4
          Align = faTop
          DrawKind = dkLine
        end
      end
      object RLBand13: TRLBand
        Left = 0
        Top = 34
        Width = 718
        Height = 22
        object RLDBText23: TRLDBText
          Left = 17
          Top = 3
          Width = 132
          Height = 16
          DataField = 'DATA_ALOJAMENTO'
          DataSource = Ds_DadosAnt
          Text = ''
        end
        object RLDBText24: TRLDBText
          Left = 37
          Top = 3
          Width = 130
          Height = 16
          Alignment = taRightJustify
          DataField = 'PER_MORTALIDADE'
          DataSource = Ds_DadosAnt
          Text = ''
        end
        object RLDBText25: TRLDBText
          Left = 101
          Top = 3
          Width = 121
          Height = 16
          Alignment = taRightJustify
          DataField = 'CONV_ALIMENTAR'
          DataSource = Ds_DadosAnt
          Text = ''
        end
        object RLDBText26: TRLDBText
          Left = 163
          Top = 3
          Width = 123
          Height = 16
          Alignment = taRightJustify
          DataField = 'GANHO_PESO_DIA'
          DataSource = Ds_DadosAnt
          Text = ''
        end
        object RLDBText27: TRLDBText
          Left = 243
          Top = 3
          Width = 90
          Height = 16
          Alignment = taRightJustify
          DataField = 'PESO_MEDIO'
          DataSource = Ds_DadosAnt
          Text = ''
        end
        object RLDBText28: TRLDBText
          Left = 365
          Top = 3
          Width = 25
          Height = 16
          Alignment = taRightJustify
          DataField = 'IEP'
          DataSource = Ds_DadosAnt
          Text = ''
        end
        object RLDBText29: TRLDBText
          Left = 408
          Top = 3
          Width = 117
          Height = 16
          DataField = 'DT_FECHAMENTO'
          DataSource = Ds_DadosAnt
          Text = ''
        end
      end
      object RLBand14: TRLBand
        Left = 0
        Top = 56
        Width = 718
        Height = 4
        BandType = btColumnFooter
        object RLDraw6: TRLDraw
          Left = 0
          Top = -1
          Width = 718
          Height = 5
          Align = faBottom
          DrawKind = dkLine
        end
      end
    end
  end
  object Qr_Lote: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_ALOJAMENTO'
      
        '  (EMPRESA, FILIAL, ID_LOTE, DATA_ALOJAMENTO, ID_USUARIO, ID_INT' +
        'EGRADO,  FL_STATUS, DT_FECHAMENTO )'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :DATA_ALOJAMENTO, :ID_USUARIO, :' +
        'ID_INTEGRADO,  :FL_STATUS, :DT_FECHAMENTO )')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_ALOJAMENTO'
      'WHERE'
      '  ID_LOTE = :ID_LOTE')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_ALOJAMENTO'
      'SET'
      '  DATA_ALOJAMENTO = :DATA_ALOJAMENTO,'
      '  ID_USUARIO = :ID_USUARIO ,'
      '  FL_STATUS    = :FL_STATUS , '
      ' DT_FECHAMENTO = :DT_FECHAMENTO'
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
      'Select A.ID_LOTE, --A.ID_INTEGRADO ,F.ID_FORNECEDOR, '
      '       F.NM_FORNECEDOR ,  NG.DESC_NUCLEO,'
      '       A.DATA_ALOJAMENTO, '
      '       A.FL_STATUS, '
      '       CASE WHEN A.FL_STATUS = '#39'AB'#39' THEN '#39'ABERTO'#39' '
      '                 WHEN A.FL_STATUS =  '#39'PR'#39' THEN '#39'PREVIS'#195'O'#39'  '
      '                WHEN A.FL_STATUS = '#39'FE'#39' THEN '#39'FECHADO'#39' '
      '                WHEN A.FL_STATUS = '#39'CN'#39' THEN '#39'CANCELADO'#39' '
      '           END STATUS,'
      '       A.DT_FECHAMENTO,  A.QTD_ALOJ AVES_ALOJADAS,'
      '   A.SOBRA_RACAO, A.MORTALIDADE, F.NR_CNPJFORN,'
      'F.NM_LOGRFORN, F.NM_BAIRFORN , C.NM_CIDADE '
      '  From INTEGRADO_ALOJAMENTO A'
      '  Left Join INTEGRADO I'
      '    On A.ID_INTEGRADO = I.ID_INTEGRADO'
      '  Left Join FORNECEDOR F'
      '    On I.ID_FORNECEDOR = F.ID_FORNECEDOR'
      '  Left join NUCLEO_GALPAO NG'
      '    On A.ID_NUCLEO = NG.ID_NUCLEO  '
      ' LEFT JOIN CIDADE C'
      '   ON F.ID_CIDADE = C.ID_CIDADE'
      '  --Left Join INTEGRADO_ALOJAMENTO_GALPAO AG'
      '   -- On A.ID_LOTE = AG.ID_LOTE   '
      ' Where A.ID_LOTE = :ID_LOTE '
      ' ')
    FetchAll = True
    Left = 88
    Top = 65133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_LoteID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_LoteNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Size = 40
    end
    object Qr_LoteFL_STATUS: TStringField
      FieldName = 'FL_STATUS'
      Size = 2
    end
    object Qr_LoteSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 8
    end
    object Qr_LoteDT_FECHAMENTO: TDateTimeField
      FieldName = 'DT_FECHAMENTO'
    end
    object Qr_LoteAVES_ALOJADAS: TFloatField
      FieldName = 'AVES_ALOJADAS'
      DisplayFormat = '0,###'
    end
    object Qr_LoteSOBRA_RACAO: TFloatField
      FieldName = 'SOBRA_RACAO'
      DisplayFormat = '0,###'
    end
    object Qr_LoteMORTALIDADE: TFloatField
      FieldName = 'MORTALIDADE'
      DisplayFormat = '0,###'
    end
    object Qr_LoteDATA_ALOJAMENTO: TDateTimeField
      FieldName = 'DATA_ALOJAMENTO'
    end
    object Qr_LoteNR_CNPJFORN: TStringField
      FieldName = 'NR_CNPJFORN'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object Qr_LoteDESC_NUCLEO: TStringField
      FieldName = 'DESC_NUCLEO'
      Size = 30
    end
    object Qr_LoteNM_LOGRFORN: TStringField
      FieldName = 'NM_LOGRFORN'
      Size = 40
    end
    object Qr_LoteNM_BAIRFORN: TStringField
      FieldName = 'NM_BAIRFORN'
      Size = 30
    end
    object Qr_LoteNM_CIDADE: TStringField
      FieldName = 'NM_CIDADE'
      Size = 40
    end
  end
  object Ds_Lote: TOraDataSource
    DataSet = Qr_Lote
    Left = 128
    Top = 65131
  end
  object Qr_Retirada: TOraQuery
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
      'Select IR.ID_LOTE, NF.NR_NOTAFISC, '
      
        '       NF.DT_SAIDNOTAFISC, IR.QTD_AVESABAT, IR.PESO_AVES, IR.TUR' +
        'MA,'
      ' NF.ID_CLIENTE, NF.NM_DESTREMENOTAFISC'
      '  From INTEGRADO_RETIRADA IR'
      ' Inner Join NOTA_FISCAL NF '
      '   On IR.ID_NOTAFISC = NF.ID_NOTAFISC'
      'Where IR.ID_LOTE =  :ID_LOTE'
      ' AND NVL(IR.PESO_AVES,0) > 0')
    FetchAll = True
    CachedUpdates = True
    OnCalcFields = Qr_RetiradaCalcFields
    Left = 272
    Top = 65133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_RetiradaID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_RetiradaNR_NOTAFISC: TFloatField
      FieldName = 'NR_NOTAFISC'
      Required = True
    end
    object Qr_RetiradaDT_SAIDNOTAFISC: TDateTimeField
      FieldName = 'DT_SAIDNOTAFISC'
      Required = True
    end
    object Qr_RetiradaQTD_AVESABAT: TFloatField
      FieldName = 'QTD_AVESABAT'
      DisplayFormat = '0,###'
    end
    object Qr_RetiradaPESO_AVES: TFloatField
      FieldName = 'PESO_AVES'
      DisplayFormat = '0,###'
    end
    object Qr_RetiradaTURMA: TIntegerField
      FieldName = 'TURMA'
    end
    object Qr_RetiradaPESO_MEDIO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PESO_MEDIO'
      DisplayFormat = '#,###.000'
      Calculated = True
    end
    object Qr_RetiradaID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
    end
    object Qr_RetiradaNM_DESTREMENOTAFISC: TStringField
      FieldName = 'NM_DESTREMENOTAFISC'
      Required = True
      Size = 40
    end
  end
  object Ds_Retirada: TOraDataSource
    DataSet = Qr_Retirada
    Left = 304
    Top = 65131
  end
  object Qr_Fornecedor: TOraQuery
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
      'SELECT AF.ID_LOTE, FA.NM_FORNECEDOR FORN_AVES,'
      '       L.DESC_LINHAGEM LINHAGEM, AF.Quantidade'
      ''
      '  FROM INTEGRADO_ALOJAMENTO_FORNEC AF '
      '  Left Join FORNECEDOR FA '
      '    On AF.ID_FORNECEDOR = FA.ID_FORNECEDOR'
      '  Left Join INTEGRADO_LINHAGEM L'
      '    On L.ID_LINHAGEM = AF.ID_LINHAGEM   '
      ' Where AF.ID_LOTE = :ID_LOTE ')
    FetchAll = True
    CachedUpdates = True
    Left = 176
    Top = 65133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_FornecedorID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_FornecedorFORN_AVES: TStringField
      FieldName = 'FORN_AVES'
      Size = 40
    end
    object Qr_FornecedorLINHAGEM: TStringField
      FieldName = 'LINHAGEM'
      Size = 40
    end
    object Qr_FornecedorQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0,###'
    end
  end
  object Ds_Fornecedor: TOraDataSource
    DataSet = Qr_Fornecedor
    Left = 208
    Top = 65131
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
      'Select P.ID_LOTE , N.DT_SAIDNOTAFISC, N.NR_NOTAFISC, '
      '       ME.ID_PRODMATEEMBA, ME.Nm_Prodmateemba,'
      
        '       SUM( CASE WHEN P.ID_TIPOPEDIVEND = 138 THEN NI.QN_EMBAITE' +
        'MNOTAFISC * (-1) '
      
        '                 ELSE NI.QN_EMBAITEMNOTAFISC  END ) QN_EMBAITEMN' +
        'OTAFISC,'
      
        '       CASE WHEN P.ID_TIPOPEDIVEND = 138 THEN '#39'Retorno'#39' ELSE '#39'Re' +
        'messa'#39' END OPERACAO,'
      
        '     A.DATA_ALOJAMENTO + ( CEIL((N.DT_SAIDNOTAFISC - A.DATA_ALOJ' +
        'AMENTO   ) / 7)  * 7 + '
      '           TRUNC(     '
      '           ( SUM( SUM(NI.QN_EMBAITEMNOTAFISC )) '
      
        '            OVER (ORDER BY N.ID_NOTAFISC ROWS BETWEEN UNBOUNDED ' +
        'PRECEDING AND CURRENT ROW)  -'
      '           ( (( SELECT SUM(VAL_CONSUMO) CONS_ACUM '
      '                FROM CONSUMO_RACAO_SEMANA '
      
        '                WHERE SEMANA <= CEIL((N.DT_SAIDNOTAFISC - A.DATA' +
        '_ALOJAMENTO   ) / 7) + 1 ) * A.QTD_ALOJ ) - (A.QTD_ALOJ* RP.VAL_' +
        'CONSUMO)) ) / TRUNC((A.QTD_ALOJ * RP.VAL_CONSUMO) / 7) )        ' +
        '                    '
      '     ) Prev'
      '  From Pedido_Venda P'
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
      ' INNER JOIN INTEGRADO_ALOJAMENTO A'
      '    ON P.ID_LOTE = A.ID_LOTE'
      ' Left Join CONSUMO_RACAO_SEMANA   RP'
      
        '    on  RP.SEMANA = CEIL((N.DT_SAIDNOTAFISC - A.DATA_ALOJAMENTO ' +
        '  ) / 7) + 1 '
      ' Where P.ID_LOTE = :ID_LOTE'
      '   AND N.FL_CANCNOTAFISC = '#39'N'#39
      '   AND ME.ID_PRODMATEEMBA in ( 7302, 7303, 7304, 7305, 7306 ) '
      'GROUP BY P.ID_LOTE, N.NR_NOTAFISC, '
      '       ME.ID_PRODMATEEMBA, ME.Nm_Prodmateemba,'
      '       N.ID_NOTAFISC,'
      
        '       N.DT_SAIDNOTAFISC, A.DATA_ALOJAMENTO, RP.VAL_CONSUMO, A.Q' +
        'TD_ALOJ,'
      '      P.ID_TIPOPEDIVEND'
      ' Order By N.DT_SAIDNOTAFISC, N.NR_NOTAFISC ')
    FetchAll = True
    CachedUpdates = True
    Left = 648
    Top = 30
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
    object Qr_RemessaID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
    object Qr_RemessaNM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
    object Qr_RemessaPREV: TDateTimeField
      FieldName = 'PREV'
    end
    object Qr_RemessaID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
    end
    object Qr_RemessaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      FixedChar = True
      Size = 7
    end
    object Qr_RemessaQN_EMBAITEMNOTAFISC: TFloatField
      FieldName = 'QN_EMBAITEMNOTAFISC'
      DisplayFormat = '#,###'
    end
  end
  object Ds_Remessa: TOraDataSource
    DataSet = Qr_Remessa
    Left = 392
    Top = 65131
  end
  object Qr_ResumoRacao: TOraQuery
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
      ' Select SUM(CASE WHEN ME.ID_PRODMATEEMBA = 7302 THEN '
      
        '                 CASE WHEN P.ID_TIPOPEDIVEND = 138 THEN NI.QN_EM' +
        'BAITEMNOTAFISC * (-1) '
      '                      ELSE NI.QN_EMBAITEMNOTAFISC  END '
      '                   ELSE 0 END ) PRE_INICIAL,'
      '        SUM(CASE WHEN ME.ID_PRODMATEEMBA = 7303 THEN '
      
        '                 CASE WHEN P.ID_TIPOPEDIVEND = 138 THEN NI.QN_EM' +
        'BAITEMNOTAFISC * (-1) '
      '                      ELSE NI.QN_EMBAITEMNOTAFISC  END '
      '        ELSE 0 END ) INICIAL,'
      '        SUM(CASE WHEN ME.ID_PRODMATEEMBA in( 7304,7305 ) THEN '
      
        '                 CASE WHEN P.ID_TIPOPEDIVEND = 138 THEN NI.QN_EM' +
        'BAITEMNOTAFISC * (-1) '
      '                      ELSE NI.QN_EMBAITEMNOTAFISC  END '
      '        ELSE 0 END ) ENGORDA,'
      '        SUM(CASE WHEN ME.ID_PRODMATEEMBA = 7306 THEN '
      
        '                 CASE WHEN P.ID_TIPOPEDIVEND = 138 THEN NI.QN_EM' +
        'BAITEMNOTAFISC * (-1) '
      '                      ELSE NI.QN_EMBAITEMNOTAFISC  END '
      '        ELSE 0 END ) ABATE'
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
      ' Where P.ID_LOTE = :ID_LOTE'
      '   AND N.FL_CANCNOTAFISC = '#39'N'#39
      '   AND ME.ID_PRODMATEEMBA in ( 7302, 7303, 7304, 7305, 7306 ) ')
    FetchAll = True
    CachedUpdates = True
    Left = 432
    Top = 65133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = Null
      end>
    object Qr_ResumoRacaoPRE_INICIAL: TFloatField
      FieldName = 'PRE_INICIAL'
      DisplayFormat = '#,###'
    end
    object Qr_ResumoRacaoINICIAL: TFloatField
      FieldName = 'INICIAL'
      DisplayFormat = '#,###'
    end
    object Qr_ResumoRacaoENGORDA: TFloatField
      FieldName = 'ENGORDA'
      DisplayFormat = '#,###'
    end
    object Qr_ResumoRacaoABATE: TFloatField
      FieldName = 'ABATE'
      DisplayFormat = '#,###'
    end
  end
  object Ds_ResumoRacao: TOraDataSource
    DataSet = Qr_ResumoRacao
    Left = 464
    Top = 65131
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 702
    Top = 7
  end
  object Qr_DadosAnt: TOraQuery
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
    SQL.Strings = (
      'Select * '
      
        '  from ( Select  ROW_NUMBER() OVER (ORDER BY A.DT_FECHAMENTO des' +
        'c  ) AS RNO , A.DATA_ALOJAMENTO, '
      
        '                 A.PER_MORTALIDADE, A.CONV_ALIMENTAR, A.GANHO_PE' +
        'SO_DIA, '
      '                 A.PESO_MEDIO, A.IEP, A.DT_FECHAMENTO'
      '            From INTEGRADO_ALOJAMENTO A'
      '           where FL_STATUS = '#39'FE'#39' '
      '             AND ID_INTEGRADO =  :ID_INTEGRADO '
      '             AND ID_LOTE <> :ID_LOTE  )'
      'WHERE RNO <= 2')
    FetchAll = True
    Left = 648
    Top = 86
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_INTEGRADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_DadosAntRNO: TFloatField
      FieldName = 'RNO'
    end
    object Qr_DadosAntDATA_ALOJAMENTO: TDateTimeField
      FieldName = 'DATA_ALOJAMENTO'
    end
    object Qr_DadosAntPER_MORTALIDADE: TFloatField
      FieldName = 'PER_MORTALIDADE'
      DisplayFormat = '#0.0'
    end
    object Qr_DadosAntCONV_ALIMENTAR: TFloatField
      FieldName = 'CONV_ALIMENTAR'
      DisplayFormat = '#0.00'
    end
    object Qr_DadosAntGANHO_PESO_DIA: TFloatField
      FieldName = 'GANHO_PESO_DIA'
      DisplayFormat = '#0.000'
    end
    object Qr_DadosAntPESO_MEDIO: TFloatField
      FieldName = 'PESO_MEDIO'
      DisplayFormat = '#0.000'
    end
    object Qr_DadosAntIEP: TFloatField
      FieldName = 'IEP'
      DisplayFormat = '#0.00'
    end
    object Qr_DadosAntDT_FECHAMENTO: TDateTimeField
      FieldName = 'DT_FECHAMENTO'
    end
  end
  object Ds_DadosAnt: TOraDataSource
    DataSet = Qr_DadosAnt
    Left = 718
    Top = 102
  end
end
