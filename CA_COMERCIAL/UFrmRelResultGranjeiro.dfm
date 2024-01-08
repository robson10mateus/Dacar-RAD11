object FrmRelResultGranjeiro: TFrmRelResultGranjeiro
  Left = 353
  Top = 154
  Width = 865
  Height = 373
  VertScrollBar.Range = 1123
  HorzScrollBar.Range = 794
  Caption = 'Relat'#243'rio de Resultado Granjeiro'
  Color = clBackground
  PixelsPerInch = 96
  TextHeight = 13

  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = FrmResultGranjeiro.Ds
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []

    Margins.LeftMargin = 3.000000000000000000
    Margins.RightMargin = 3.000000000000000000
    object RLBand1: TRLBand
      Left = 11
      Top = 38
      Width = 772
      Height = 48
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 4
        Top = 6
        Width = 60
        Height = 14
        Caption = 'Periodo: de '
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 224
        Top = 6
        Width = 219
        Height = 16
        Caption = 'Controle de Resultados Por Granjeiro'
      end
      object RLLabel3: TRLLabel
        Left = 210
        Top = 24
        Width = 248
        Height = 16
        Caption = 'AVICULTURA GRANJA CEU AZUL LTDA '
      end
      object lbl_Periodo: TRLLabel
        Left = 69
        Top = 6
        Width = 128
        Height = 14
        Caption = '01/03/2017 A 31/03/2017 '
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 660
        Top = 6
        Width = 35
        Height = 14
        Caption = 'P'#225'gina'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 700
        Top = 6
        Width = 72
        Height = 14
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = itPageNumber
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 542
        Top = 6
        Width = 33
        Height = 14
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 42
        Width = 772
        Height = 5
        Align = faWidth
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
    end
    object RLBand2: TRLBand
      Left = 11
      Top = 86
      Width = 772
      Height = 33
      BandType = btColumnHeader
      object RLLabel5: TRLLabel
        Left = 0
        Top = 0
        Width = 43
        Height = 14
        Caption = 'Dt Saida'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 49
        Top = 0
        Width = 43
        Height = 14
        Caption = 'Ganjeiro'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 180
        Top = 0
        Width = 58
        Height = 14
        Caption = 'Quantidade'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 172
        Top = 15
        Width = 29
        Height = 14
        Caption = 'Inicial'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 220
        Top = 15
        Width = 32
        Height = 14
        Caption = 'Abate'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 259
        Top = 0
        Width = 13
        Height = 14
        Caption = '%'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 300
        Top = 0
        Width = 13
        Height = 14
        Caption = '%'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 258
        Top = 15
        Width = 37
        Height = 14
        Caption = '1'#170' Sem'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 347
        Top = 0
        Width = 27
        Height = 14
        Caption = 'Peso'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 329
        Top = 15
        Width = 27
        Height = 14
        Caption = 'Total'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 361
        Top = 15
        Width = 23
        Height = 14
        Caption = 'Ave'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 394
        Top = 0
        Width = 29
        Height = 14
        Caption = 'Idade'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 437
        Top = 0
        Width = 48
        Height = 14
        Caption = 'Consumo'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 432
        Top = 15
        Width = 27
        Height = 14
        Caption = 'Total'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 464
        Top = 15
        Width = 23
        Height = 14
        Caption = 'Ave'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 29
        Width = 772
        Height = 4
        Align = faWidth
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object RLLabel20: TRLLabel
        Left = 493
        Top = 0
        Width = 18
        Height = 14
        Caption = 'CA'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 518
        Top = 0
        Width = 17
        Height = 14
        Caption = 'IEP'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 541
        Top = 0
        Width = 24
        Height = 14
        Caption = 'GPD'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 596
        Top = 0
        Width = 49
        Height = 14
        Caption = 'Linhagem'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 652
        Top = 0
        Width = 26
        Height = 14
        Caption = 'Orig.'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 682
        Top = 1
        Width = 39
        Height = 14
        Caption = 'R$ Ave'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 681
        Top = 15
        Width = 43
        Height = 14
        Caption = '+ Bonus'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 729
        Top = 1
        Width = 29
        Height = 14
        Caption = 'Aves'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 733
        Top = 15
        Width = 15
        Height = 14
        Caption = 'M'#178
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 571
        Top = 0
        Width = 16
        Height = 14
        Caption = 'TL'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 11
      Top = 119
      Width = 772
      Height = 17
      object RLDBText1: TRLDBText
        Left = 1
        Top = 0
        Width = 47
        Height = 14
        AutoSize = False
        DataField = 'DATA_SAIDA'
        DataSource = FrmResultGranjeiro.Ds
        DisplayMask = 'DD/MM/YY'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 49
        Top = 2
        Width = 103
        Height = 13
        AutoSize = False
        DataField = 'GRANJEIRO'
        DataSource = FrmResultGranjeiro.Ds

        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 147
        Top = 0
        Width = 54
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTD_INICIAL'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 181
        Top = -1
        Width = 67
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'AVES_ABAT'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 253
        Top = 0
        Width = 28
        Height = 14
        AutoSize = False
        DataField = 'PER_PRIM_SEM'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 287
        Top = 0
        Width = 27
        Height = 14
        AutoSize = False
        DataField = 'PER_MORTALIDADE'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 321
        Top = 0
        Width = 38
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESO'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 360
        Top = 0
        Width = 32
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESO_MEDIO'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 393
        Top = 0
        Width = 19
        Height = 14
        AutoSize = False
        DataField = 'IDADE'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 415
        Top = 0
        Width = 45
        Height = 14
        AutoSize = False
        DataField = 'TOTAL_RACAO'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 460
        Top = 0
        Width = 32
        Height = 14
        AutoSize = False
        DataField = 'CONS_MEDIO'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 493
        Top = 0
        Width = 25
        Height = 14
        AutoSize = False
        DataField = 'CONV_ALIMENTAR'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 518
        Top = 0
        Width = 25
        Height = 14
        AutoSize = False
        DataField = 'IEP'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText14: TRLDBText
        Left = 544
        Top = 0
        Width = 28
        Height = 14
        AutoSize = False
        DataField = 'GANHO_PESO_DIA'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 592
        Top = 0
        Width = 55
        Height = 14
        AutoSize = False
        DataField = 'LINHAGEM'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 651
        Top = 0
        Width = 31
        Height = 14
        AutoSize = False
        DataField = 'ORIG'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 686
        Top = 0
        Width = 31
        Height = 14
        AutoSize = False
        DataField = 'PRECO_AVE_FINAL'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText18: TRLDBText
        Left = 730
        Top = 0
        Width = 31
        Height = 14
        AutoSize = False
        DataField = 'AVE_M2'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBText19: TRLDBText
        Left = 573
        Top = 0
        Width = 18
        Height = 14
        AutoSize = False
        DataField = 'TL'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 11
      Top = 136
      Width = 772
      Height = 20
      BandType = btSummary
      object RLLabel30: TRLLabel
        Left = 8
        Top = 4
        Width = 77
        Height = 14
        Caption = 'Resultado Total'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 155
        Top = 4
        Width = 45
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTD_INICIAL'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riSum
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 200
        Top = 4
        Width = 47
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'AVES_ABAT'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riSum
        ParentFont = False
      end
      object RLDBResult3: TRLDBResult
        Left = 250
        Top = 4
        Width = 34
        Height = 14
        AutoSize = False
        DataField = 'PER_PRIM_SEM'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riAverage
        ParentFont = False
      end
      object RLDBResult4: TRLDBResult
        Left = 283
        Top = 4
        Width = 30
        Height = 14
        AutoSize = False
        DataField = 'PER_MORTALIDADE'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riAverage
        ParentFont = False
      end
      object RLDBResult5: TRLDBResult
        Left = 315
        Top = 4
        Width = 43
        Height = 14
        AutoSize = False
        DataField = 'PESO'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riSum
        ParentFont = False
      end
      object RLDBResult6: TRLDBResult
        Left = 360
        Top = 4
        Width = 32
        Height = 14
        AutoSize = False
        DataField = 'PESO_MEDIO'
        DataSource = FrmResultGranjeiro.Ds
        DisplayMask = '#.###'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riAverage
        ParentFont = False
      end
      object RLDBResult7: TRLDBResult
        Left = 391
        Top = 4
        Width = 22
        Height = 14
        AutoSize = False
        DataField = 'IDADE'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riAverage
        ParentFont = False
      end
      object RLDBResult8: TRLDBResult
        Left = 417
        Top = 3
        Width = 41
        Height = 14
        AutoSize = False
        DataField = 'TOTAL_RACAO'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riSum
        ParentFont = False
      end
      object RLDBResult9: TRLDBResult
        Left = 459
        Top = 3
        Width = 28
        Height = 14
        AutoSize = False
        DataField = 'CONS_MEDIO'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riAverage
        ParentFont = False
      end
      object RLDBResult10: TRLDBResult
        Left = 490
        Top = 3
        Width = 28
        Height = 14
        AutoSize = False
        DataField = 'CONV_ALIMENTAR'
        DataSource = FrmResultGranjeiro.Ds
        DisplayMask = '#.##'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riAverage
        ParentFont = False
      end
      object RLDBResult11: TRLDBResult
        Left = 518
        Top = 3
        Width = 28
        Height = 14
        AutoSize = False
        DataField = 'IEP'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riAverage
        ParentFont = False
      end
      object RLDBResult12: TRLDBResult
        Left = 545
        Top = 3
        Width = 28
        Height = 14
        AutoSize = False
        DataField = 'GANHO_PESO_DIA'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riAverage
        ParentFont = False
      end
      object RLDBResult13: TRLDBResult
        Left = 683
        Top = 3
        Width = 28
        Height = 14
        AutoSize = False
        DataField = 'PRECO_AVE_FINAL'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riAverage
        ParentFont = False
      end
      object RLDBResult14: TRLDBResult
        Left = 731
        Top = 3
        Width = 28
        Height = 14
        AutoSize = False
        DataField = 'AVE_M2'
        DataSource = FrmResultGranjeiro.Ds
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = riAverage
        ParentFont = False
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = -1
        Width = 772
        Height = 4
        Align = faWidth
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object RLDraw4: TRLDraw
        Left = 0
        Top = 17
        Width = 772
        Height = 4
        Align = faWidth
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
    end
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 808
    Top = 120
  end
end
