object FrmNFMetal: TFrmNFMetal
  Left = -4
  Top = -4
  Width = 800
  Height = 581
  HorzScrollBar.Range = 816
  VertScrollBar.Position = 99
  VertScrollBar.Range = 1000
  Caption = 'FrmNFMetal'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 15
  object RL_Notas: TRLReport
    Left = 0
    Top = -155
    Width = 816
    Height = 1056
    Margins.LeftMargin = 0.000000000000000000
    Margins.TopMargin = 0.000000000000000000
    Margins.RightMargin = 0.000000000000000000
    Margins.BottomMargin = 0.000000000000000000
    DataSource = dtsItemNotaFisc
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    PageSetup.PaperSize = fpLetter
    BeforePrint = RL_NotasBeforePrint
    object RLBand1: TRLBand
      Left = 0
      Top = 0
      Width = 816
      Height = 242
      BandType = btColumnHeader
      object qrlNotaFiscSaid: TRLLabel
        Left = 536
        Top = 42
        Width = 11
        Height = 16
        Caption = 'X'
      end
      object qrlNotaFiscEntr: TRLLabel
        Left = 611
        Top = 42
        Width = 11
        Height = 16
        Caption = 'X'
      end
      object qrlNumeNotaCabe: TRLLabel
        Left = 665
        Top = 38
        Width = 146
        Height = 19
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 15
        Top = 111
        Width = 127
        Height = 13
        AutoSize = False
        DataField = 'NM_NATUOPERNOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Tahoma'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 308
        Top = 111
        Width = 107
        Height = 13
        DataField = 'NR_CFOP_NOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Tahoma'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 15
        Top = 147
        Width = 128
        Height = 14
        DataField = 'NM_DESTREMENOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object qrtCNPJCPF: TRLDBText
        Left = 519
        Top = 147
        Width = 99
        Height = 14
        DataField = 'NR_CNPJNOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 708
        Top = 147
        Width = 96
        Height = 14
        DataField = 'DT_EMISNOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 15
        Top = 171
        Width = 101
        Height = 14
        DataField = 'GN_ENDENOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 379
        Top = 170
        Width = 99
        Height = 14
        DataField = 'NM_BAIRNOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 601
        Top = 170
        Width = 93
        Height = 14
        DataField = 'NR_CEPNOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 708
        Top = 170
        Width = 97
        Height = 14
        DataField = 'DT_SAIDNOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 15
        Top = 194
        Width = 99
        Height = 14
        DataField = 'NM_CIDANOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText11: TRLDBText
        Left = 353
        Top = 194
        Width = 101
        Height = 14
        DataField = 'NR_FONENOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 485
        Top = 194
        Width = 18
        Height = 14
        AutoSize = False
        DataField = 'SG_ESTANOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText13: TRLDBText
        Left = 517
        Top = 194
        Width = 82
        Height = 14
        DataField = 'NR_IENOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLDBText22: TRLDBText
      Left = 71
      Top = 472
      Width = 124
      Height = 14
      DataField = 'GN_OBSDESCNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText23: TRLDBText
      Left = 15
      Top = 509
      Width = 148
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VL_BASEICMSNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText24: TRLDBText
      Left = 15
      Top = 531
      Width = 147
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VL_FRETNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText25: TRLDBText
      Left = 15
      Top = 568
      Width = 147
      Height = 14
      AutoSize = False
      DataField = 'NM_TRANSPORTADOR_NOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText26: TRLDBText
      Left = 170
      Top = 509
      Width = 147
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VL_ICMSNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText27: TRLDBText
      Left = 170
      Top = 531
      Width = 147
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VL_SEGUNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText28: TRLDBText
      Left = 328
      Top = 531
      Width = 140
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VL_OUTRDESPNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText29: TRLDBText
      Left = 477
      Top = 531
      Width = 147
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VL_IPINOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText30: TRLDBText
      Left = 632
      Top = 509
      Width = 143
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VL_PRODNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object qrlNumeNotaRoda: TRLLabel
      Left = 692
      Top = 992
      Width = 92
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 16
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object qrtTRANCNPJCPF: TRLDBText
      Left = 612
      Top = 568
      Width = 127
      Height = 14
      DataField = 'NR_CNPJTRANNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBMemo1: TRLDBMemo
      Left = 24
      Top = 671
      Width = 302
      Height = 231
      AutoSize = False
      Behavior = [beSiteExpander]
      DataField = 'GN_OBSENOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
    end
    object RLDBText4: TRLDBText
      Left = 632
      Top = 531
      Width = 143
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VL_NOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText31: TRLDBText
      Left = 478
      Top = 563
      Width = 33
      Height = 17
      AutoSize = False
      DataField = 'FL_TIPOFRETNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText32: TRLDBText
      Left = 495
      Top = 568
      Width = 89
      Height = 14
      AutoSize = False
      DataField = 'GN_PLACVEICNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText33: TRLDBText
      Left = 584
      Top = 568
      Width = 33
      Height = 17
      AutoSize = False
      DataField = 'SG_ESTAPLACVEICNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText34: TRLDBText
      Left = 15
      Top = 591
      Width = 135
      Height = 14
      AutoSize = False
      DataField = 'NM_ENDETRANNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText35: TRLDBText
      Left = 399
      Top = 593
      Width = 147
      Height = 14
      AutoSize = False
      DataField = 'NM_CIDATRANNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText36: TRLDBText
      Left = 584
      Top = 592
      Width = 33
      Height = 17
      AutoSize = False
      DataField = 'SG_ESTATRANNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText37: TRLDBText
      Left = 612
      Top = 592
      Width = 125
      Height = 14
      AutoSize = False
      DataField = 'NR_IETRANNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText38: TRLDBText
      Left = 15
      Top = 614
      Width = 106
      Height = 14
      AutoSize = False
      DataField = 'QN_EMBAPEDIVEND'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText39: TRLDBText
      Left = 142
      Top = 614
      Width = 106
      Height = 14
      AutoSize = False
      DataField = 'DESCR_EMBALAGEM'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText40: TRLDBText
      Left = 262
      Top = 614
      Width = 106
      Height = 14
      AutoSize = False
      DataField = 'GN_MARCNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText41: TRLDBText
      Left = 399
      Top = 614
      Width = 106
      Height = 14
      AutoSize = False
      DataField = 'NR_VOLUNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText42: TRLDBText
      Left = 523
      Top = 614
      Width = 130
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QN_PESOPEDIVEND'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText43: TRLDBText
      Left = 659
      Top = 614
      Width = 116
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QN_PESOPEDIVEND'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText44: TRLDBText
      Left = 612
      Top = 568
      Width = 125
      Height = 14
      AutoSize = False
      DataField = 'NR_CNPJTRANNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText45: TRLDBText
      Left = 212
      Top = 1001
      Width = 56
      Height = 14
      AutoSize = False
      DataField = 'ID_CLIENTE'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText46: TRLDBText
      Left = 270
      Top = 1001
      Width = 401
      Height = 14
      AutoSize = False
      DataField = 'NM_DESTREMENOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLBand2: TRLBand
      Left = 0
      Top = 242
      Width = 816
      Height = 15
      AutoExpand = False
      AutoSize = True
      Completion = ctMaxBands
      object RLDBText14: TRLDBText
        Left = 54
        Top = 1
        Width = 154
        Height = 14
        DataField = 'NM_MATERIAL_ITEMNOTAFISC'
        DataSource = dtsItemNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText15: TRLDBText
        Left = 353
        Top = 0
        Width = 27
        Height = 14
        AutoSize = False
        DataField = 'FL_SITUTRIBICMS_ITEMNOTAFISC'
        DataSource = dtsItemNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText16: TRLDBText
        Left = 383
        Top = 0
        Width = 31
        Height = 14
        AutoSize = False
        DataField = 'SG_UNIDMEDI_ITEMNOTAFISC'
        DataSource = dtsItemNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText17: TRLDBText
        Left = 403
        Top = 0
        Width = 77
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QN_PESOITEMNOTAFISC'
        DataSource = dtsItemNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText19: TRLDBText
        Left = 486
        Top = 0
        Width = 74
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VL_UNITBRUTITEMNOTAFISC'
        DataSource = dtsItemNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText20: TRLDBText
        Left = 541
        Top = 0
        Width = 120
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VL_BRUTITEMNOTAFISC'
        DataSource = dtsItemNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText21: TRLDBText
        Left = 650
        Top = 0
        Width = 47
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PC_ICMSITEMNOTAFISC'
        DataSource = dtsItemNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText18: TRLDBText
        Left = 0
        Top = 0
        Width = 57
        Height = 15
        AutoSize = False
        DataField = 'ID_PRODMATEEMBA_ITEMNOTAFISC'
        DataSource = dtsItemNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText47: TRLDBText
        Left = 680
        Top = 0
        Width = 47
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PC_IPIITEMNOTAFISC'
        DataSource = dtsItemNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText48: TRLDBText
        Left = 729
        Top = 0
        Width = 45
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VL_IPIITEMNOTAFISC'
        DataSource = dtsItemNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  object qryNotaFisc: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  Nota_fiscal.EMPRESA,'
      '  Nota_fiscal.FILIAL,'
      '  Nota_fiscal.ID_NOTAFISC,'
      '  Nota_fiscal.SG_SERINOTAFISC_NOTAFISC,'
      '  Nota_fiscal.FL_TIPONOTAFISC,'
      '  Nota_fiscal.DT_EMISNOTAFISC,'
      '  Nota_fiscal.DT_SAIDNOTAFISC,'
      '  Nota_fiscal.NR_CFOP_NOTAFISC,'
      '  Nota_fiscal.NM_NATUOPERNOTAFISC,'
      '  Nota_fiscal.ID_CLIENTE,'
      '  Nota_fiscal.ID_FORNECEDOR,'
      '  Nota_fiscal.NM_DESTREMENOTAFISC,'
      '  Nota_fiscal.GN_ENDENOTAFISC,'
      '  Nota_fiscal.NM_BAIRNOTAFISC,'
      '  Nota_fiscal.NR_CEPNOTAFISC,'
      '  Nota_fiscal.NM_CIDANOTAFISC,'
      '  Nota_fiscal.SG_ESTANOTAFISC,'
      '  Nota_fiscal.NM_PAISNOTAFISC,'
      '  Nota_fiscal.NR_FONENOTAFISC,'
      '  Nota_fiscal.NR_CNPJNOTAFISC,'
      '  Nota_fiscal.NR_CPFNOTAFISC,'
      '  Nota_fiscal.NR_IENOTAFISC,'
      '  Nota_fiscal.NR_RGNOTAFISC,'
      '  Nota_fiscal.VL_BASEICMSNOTAFISC,'
      '  Nota_fiscal.VL_ICMSNOTAFISC,'
      '  Nota_fiscal.VL_SEGUNOTAFISC,'
      '  Nota_fiscal.VL_OUTRDESPNOTAFISC,'
      '  Nota_fiscal.VL_IPINOTAFISC,'
      
        '  DECODE(Nota_fiscal.ID_CLIENTE,6684,Nota_fiscal.VL_PRODNOTAFISC' +
        ','
      
        '                                             Nota_fiscal.VL_NOTA' +
        'FISC) AS VL_NOTAFISC,'
      '  Nota_fiscal.VL_BASEIPINOTAFISC,'
      '  Nota_fiscal.NM_TRANSPORTADOR_NOTAFISC,'
      '  Nota_fiscal.GN_PLACVEICNOTAFISC,'
      '  Nota_fiscal.NM_ENDETRANNOTAFISC,'
      '  Nota_fiscal.NM_CIDATRANNOTAFISC,'
      '  Nota_fiscal.SG_ESTATRANNOTAFISC,'
      '  Nota_fiscal.NR_CNPJTRANNOTAFISC,'
      '  Nota_fiscal.NR_CPFTRANNOTAFISC,'
      '  Nota_fiscal.NR_IETRANNOTAFISC,'
      '  Nota_fiscal.NR_RGTRANNOTAFISC,'
      '  Nota_fiscal.QN_VOLUNOTAFISC,'
      '  Nota_fiscal.GN_ESPENOTAFISC,'
      '  Nota_fiscal.GN_MARCNOTAFISC,'
      '  Nota_fiscal.NR_VOLUNOTAFISC,'
      '  Nota_fiscal.QN_PESOBRUTNOTAFISC,'
      '  Nota_fiscal.QN_PESOLIQUNOTAFISC,'
      '  Nota_fiscal.GN_ENDEENTRNOTAFISC,'
      '  Nota_fiscal.NM_BAIRENTRNOTAFISC,'
      '  Nota_fiscal.NM_CIDAENTRNOTAFISC,'
      '  Nota_fiscal.SG_ESTAENTRNOTAFISC,'
      '  Nota_fiscal.GN_CEPENTRNOTAFISC,'
      '  Nota_fiscal.FL_PESSNOTAFISC,'
      '  Nota_fiscal.FL_PESSTRANNOTAFISC,'
      '  Nota_fiscal.FL_TIPOFRETNOTAFISC,'
      '  Nota_fiscal.PC_ICMSFRETNOTAFISC,'
      '  Nota_fiscal.VL_ICMSFRETNOTAFISC,'
      '  Nota_fiscal.DT_PROCNOTAFISC,'
      '  Nota_fiscal.VL_DEVOIPINOTAFISC,'
      '  Nota_fiscal.FL_ZONAFRANNOTAFISC,'
      '  Nota_fiscal.FL_IMPRNOTAFISC,'
      '  Nota_fiscal.FL_CANCNOTAFISC,'
      '  Nota_fiscal.FL_EXPONOTAFISC,'
      '  Nota_fiscal.VL_IPIISENNOTAFISC,'
      '  Nota_fiscal.VL_IPIOUTRNOTAFISC,'
      '  Nota_fiscal.GN_OBSENOTAFISC,'
      '  Nota_fiscal.VL_DESCPEDIVEND_NOTAFISC,'
      '  Nota_fiscal.VL_PRODNOTAFISC,'
      '  Nota_fiscal.SG_ESTAPLACVEICNOTAFISC,'
      '  Nota_fiscal.VL_FRETNOTAFISC,'
      '  Nota_fiscal.FX_NOTAFISC,'
      '  Nota_fiscal.NR_NOTAFISC,'
      '  Nota_fiscal.GN_OBSDESCNOTAFISC,'
      '  PEDIDO_VENDA.DESCR_EMBALAGEM,'
      
        '  (CASE WHEN (PEDIDO_VENDA.DESCR_EMBALAGEM IS NOT NULL) THEN PED' +
        'IDO_VENDA.QN_PESOPEDIVEND ELSE NULL END) AS QN_PESOPEDIVEND,'
      
        '  (CASE WHEN (PEDIDO_VENDA.DESCR_EMBALAGEM IS NOT NULL) THEN PED' +
        'IDO_VENDA.QN_EMBAPEDIVEND ELSE NULL END) AS QN_EMBAPEDIVEND'
      'FROM'
      '  NOTA_FISCAL Nota_fiscal,'
      '  PEDIDO_VENDA_NOTA_FISCAL Pedido_venda_nota_fiscal,'
      '  PEDIDO_VENDA'
      'WHERE'
      
        '  (Pedido_venda_nota_fiscal.ID_NOTAFISC = Nota_fiscal.ID_NOTAFIS' +
        'C) AND'
      '  (Pedido_venda_nota_fiscal.ID_PEDIVEND = :pi_pedivend) AND'
      '  (Nota_fiscal.SG_SERINOTAFISC_NOTAFISC = :ps_serinotafisc) AND'
      '  (Nota_fiscal.FL_CANCNOTAFISC = :VCANCEL) AND'
      '  (Nota_fiscal.NR_NOTAFISC = :VNOTA) AND'
      
        '  PEDIDO_VENDA.ID_PEDIVEND = Pedido_venda_nota_fiscal.ID_PEDIVEN' +
        'D')
    Left = 112
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pi_pedivend'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ps_serinotafisc'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VCANCEL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VNOTA'
        Value = nil
      end>
    object qryNotaFiscEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object qryNotaFiscFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object qryNotaFiscID_NOTAFISC: TFloatField
      FieldName = 'ID_NOTAFISC'
      Required = True
    end
    object qryNotaFiscSG_SERINOTAFISC_NOTAFISC: TStringField
      FieldName = 'SG_SERINOTAFISC_NOTAFISC'
      Required = True
      Size = 3
    end
    object qryNotaFiscFL_TIPONOTAFISC: TStringField
      FieldName = 'FL_TIPONOTAFISC'
      Required = True
      Size = 1
    end
    object qryNotaFiscDT_EMISNOTAFISC: TDateTimeField
      FieldName = 'DT_EMISNOTAFISC'
      Required = True
    end
    object qryNotaFiscDT_SAIDNOTAFISC: TDateTimeField
      FieldName = 'DT_SAIDNOTAFISC'
      Required = True
    end
    object qryNotaFiscNR_CFOP_NOTAFISC: TStringField
      FieldName = 'NR_CFOP_NOTAFISC'
      Required = True
      Size = 4
    end
    object qryNotaFiscNM_NATUOPERNOTAFISC: TStringField
      FieldName = 'NM_NATUOPERNOTAFISC'
      Required = True
      Size = 40
    end
    object qryNotaFiscID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
    end
    object qryNotaFiscID_FORNECEDOR: TFloatField
      FieldName = 'ID_FORNECEDOR'
    end
    object qryNotaFiscNM_DESTREMENOTAFISC: TStringField
      FieldName = 'NM_DESTREMENOTAFISC'
      Required = True
      Size = 40
    end
    object qryNotaFiscGN_ENDENOTAFISC: TStringField
      FieldName = 'GN_ENDENOTAFISC'
      Required = True
      Size = 60
    end
    object qryNotaFiscNM_BAIRNOTAFISC: TStringField
      FieldName = 'NM_BAIRNOTAFISC'
      Size = 40
    end
    object qryNotaFiscNR_CEPNOTAFISC: TStringField
      FieldName = 'NR_CEPNOTAFISC'
      Size = 8
    end
    object qryNotaFiscNM_CIDANOTAFISC: TStringField
      FieldName = 'NM_CIDANOTAFISC'
      Size = 40
    end
    object qryNotaFiscSG_ESTANOTAFISC: TStringField
      FieldName = 'SG_ESTANOTAFISC'
      Size = 2
    end
    object qryNotaFiscNM_PAISNOTAFISC: TStringField
      FieldName = 'NM_PAISNOTAFISC'
      Size = 40
    end
    object qryNotaFiscNR_FONENOTAFISC: TStringField
      FieldName = 'NR_FONENOTAFISC'
      Size = 14
    end
    object qryNotaFiscNR_CNPJNOTAFISC: TStringField
      FieldName = 'NR_CNPJNOTAFISC'
      Size = 19
    end
    object qryNotaFiscNR_CPFNOTAFISC: TStringField
      FieldName = 'NR_CPFNOTAFISC'
      Size = 14
    end
    object qryNotaFiscNR_IENOTAFISC: TStringField
      FieldName = 'NR_IENOTAFISC'
    end
    object qryNotaFiscNR_RGNOTAFISC: TStringField
      FieldName = 'NR_RGNOTAFISC'
    end
    object qryNotaFiscVL_BASEICMSNOTAFISC: TFloatField
      FieldName = 'VL_BASEICMSNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_ICMSNOTAFISC: TFloatField
      FieldName = 'VL_ICMSNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_SEGUNOTAFISC: TFloatField
      FieldName = 'VL_SEGUNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_OUTRDESPNOTAFISC: TFloatField
      FieldName = 'VL_OUTRDESPNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_IPINOTAFISC: TFloatField
      FieldName = 'VL_IPINOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_NOTAFISC: TFloatField
      FieldName = 'VL_NOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_BASEIPINOTAFISC: TFloatField
      FieldName = 'VL_BASEIPINOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscNM_TRANSPORTADOR_NOTAFISC: TStringField
      FieldName = 'NM_TRANSPORTADOR_NOTAFISC'
      Size = 40
    end
    object qryNotaFiscGN_PLACVEICNOTAFISC: TStringField
      FieldName = 'GN_PLACVEICNOTAFISC'
      Size = 10
    end
    object qryNotaFiscNM_ENDETRANNOTAFISC: TStringField
      FieldName = 'NM_ENDETRANNOTAFISC'
      Size = 60
    end
    object qryNotaFiscNM_CIDATRANNOTAFISC: TStringField
      FieldName = 'NM_CIDATRANNOTAFISC'
      Size = 40
    end
    object qryNotaFiscSG_ESTATRANNOTAFISC: TStringField
      FieldName = 'SG_ESTATRANNOTAFISC'
      Size = 2
    end
    object qryNotaFiscNR_CNPJTRANNOTAFISC: TStringField
      FieldName = 'NR_CNPJTRANNOTAFISC'
      Size = 19
    end
    object qryNotaFiscNR_CPFTRANNOTAFISC: TStringField
      FieldName = 'NR_CPFTRANNOTAFISC'
      Size = 14
    end
    object qryNotaFiscNR_IETRANNOTAFISC: TStringField
      FieldName = 'NR_IETRANNOTAFISC'
    end
    object qryNotaFiscNR_RGTRANNOTAFISC: TStringField
      FieldName = 'NR_RGTRANNOTAFISC'
    end
    object qryNotaFiscQN_VOLUNOTAFISC: TIntegerField
      FieldName = 'QN_VOLUNOTAFISC'
      DisplayFormat = '###,##0.00'
    end
    object qryNotaFiscGN_ESPENOTAFISC: TStringField
      FieldName = 'GN_ESPENOTAFISC'
      Size = 40
    end
    object qryNotaFiscGN_MARCNOTAFISC: TStringField
      FieldName = 'GN_MARCNOTAFISC'
      Size = 40
    end
    object qryNotaFiscNR_VOLUNOTAFISC: TIntegerField
      FieldName = 'NR_VOLUNOTAFISC'
    end
    object qryNotaFiscQN_PESOBRUTNOTAFISC: TFloatField
      FieldName = 'QN_PESOBRUTNOTAFISC'
      DisplayFormat = '###,##0.00'
    end
    object qryNotaFiscQN_PESOLIQUNOTAFISC: TFloatField
      FieldName = 'QN_PESOLIQUNOTAFISC'
      DisplayFormat = '###,##0.00'
    end
    object qryNotaFiscGN_ENDEENTRNOTAFISC: TStringField
      FieldName = 'GN_ENDEENTRNOTAFISC'
      Size = 60
    end
    object qryNotaFiscNM_BAIRENTRNOTAFISC: TStringField
      FieldName = 'NM_BAIRENTRNOTAFISC'
      Size = 40
    end
    object qryNotaFiscNM_CIDAENTRNOTAFISC: TStringField
      FieldName = 'NM_CIDAENTRNOTAFISC'
      Size = 40
    end
    object qryNotaFiscSG_ESTAENTRNOTAFISC: TStringField
      FieldName = 'SG_ESTAENTRNOTAFISC'
      Size = 2
    end
    object qryNotaFiscGN_CEPENTRNOTAFISC: TStringField
      FieldName = 'GN_CEPENTRNOTAFISC'
      Size = 8
    end
    object qryNotaFiscFL_PESSNOTAFISC: TStringField
      FieldName = 'FL_PESSNOTAFISC'
      Size = 1
    end
    object qryNotaFiscFL_PESSTRANNOTAFISC: TStringField
      FieldName = 'FL_PESSTRANNOTAFISC'
      Size = 1
    end
    object qryNotaFiscFL_TIPOFRETNOTAFISC: TStringField
      FieldName = 'FL_TIPOFRETNOTAFISC'
      Size = 1
    end
    object qryNotaFiscPC_ICMSFRETNOTAFISC: TFloatField
      FieldName = 'PC_ICMSFRETNOTAFISC'
      DisplayFormat = '###,##0.00'
    end
    object qryNotaFiscVL_ICMSFRETNOTAFISC: TFloatField
      FieldName = 'VL_ICMSFRETNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscDT_PROCNOTAFISC: TDateTimeField
      FieldName = 'DT_PROCNOTAFISC'
    end
    object qryNotaFiscVL_DEVOIPINOTAFISC: TFloatField
      FieldName = 'VL_DEVOIPINOTAFISC'
      DisplayFormat = '#,###,###.00'
    end
    object qryNotaFiscFL_ZONAFRANNOTAFISC: TStringField
      FieldName = 'FL_ZONAFRANNOTAFISC'
      Size = 1
    end
    object qryNotaFiscFL_IMPRNOTAFISC: TStringField
      FieldName = 'FL_IMPRNOTAFISC'
      Size = 1
    end
    object qryNotaFiscFL_CANCNOTAFISC: TStringField
      FieldName = 'FL_CANCNOTAFISC'
      Size = 1
    end
    object qryNotaFiscFL_EXPONOTAFISC: TStringField
      FieldName = 'FL_EXPONOTAFISC'
      Size = 1
    end
    object qryNotaFiscVL_IPIISENNOTAFISC: TFloatField
      FieldName = 'VL_IPIISENNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_IPIOUTRNOTAFISC: TFloatField
      FieldName = 'VL_IPIOUTRNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscGN_OBSENOTAFISC: TStringField
      FieldName = 'GN_OBSENOTAFISC'
      Size = 400
    end
    object qryNotaFiscVL_DESCPEDIVEND_NOTAFISC: TFloatField
      FieldName = 'VL_DESCPEDIVEND_NOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_PRODNOTAFISC: TFloatField
      FieldName = 'VL_PRODNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscSG_ESTAPLACVEICNOTAFISC: TStringField
      FieldName = 'SG_ESTAPLACVEICNOTAFISC'
      Size = 2
    end
    object qryNotaFiscVL_FRETNOTAFISC: TFloatField
      FieldName = 'VL_FRETNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscFX_NOTAFISC: TStringField
      FieldName = 'FX_NOTAFISC'
      Required = True
      Size = 1
    end
    object qryNotaFiscNR_NOTAFISC: TFloatField
      FieldName = 'NR_NOTAFISC'
      Required = True
    end
    object qryNotaFiscGN_OBSDESCNOTAFISC: TStringField
      FieldName = 'GN_OBSDESCNOTAFISC'
      Size = 60
    end
    object qryNotaFiscDESCR_EMBALAGEM: TStringField
      FieldName = 'DESCR_EMBALAGEM'
    end
    object qryNotaFiscQN_PESOPEDIVEND: TFloatField
      FieldName = 'QN_PESOPEDIVEND'
    end
    object qryNotaFiscQN_EMBAPEDIVEND: TFloatField
      FieldName = 'QN_EMBAPEDIVEND'
    end
  end
  object qryItemNotaFisc: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT EMPRESA,'
      '       FILIAL,'
      '       ID_ITEMNOTAFISC,'
      '       ID_NOTAFISC,'
      '       ID_MATERIAL,'
      '       ID_EMBALAGEM,'
      '       ID_MATEEMBA,'
      '       NM_MATERIAL_ITEMNOTAFISC,'
      '       NR_CLASFISC_ITEMNOTAFISC,'
      '       SG_UNIDMEDI_ITEMNOTAFISC,'
      '       QN_EMBAITEMNOTAFISC,'
      '       QN_PESOITEMNOTAFISC,'
      '       VL_UNITITEMNOTAFISC,'
      '       VL_UNITBRUTITEMNOTAFISC,       '
      '       PC_ICMSITEMNOTAFISC,'
      '       PC_IPIITEMNOTAFISC,'
      '       PC_REDUICMSITEMNOTAFISC,'
      '       VL_IPIITEMNOTAFISC,'
      '       VL_ICMSITEMNOTAFISC,'
      '       FL_LEGECLASITEMNOTAFISC,'
      '       ID_PRODMATEEMBA_ITEMNOTAFISC,'
      '       VL_DESCICMSITEMNOTAFISC,'
      '       VL_ITEMNOTAFISC,'
      '       VL_BRUTITEMNOTAFISC,'
      '       FX_ITEMNOTAFISC,'
      '       NR_CFOP_ITEMNOTAFISC,'
      '       NM_NATUOPERCFOP_ITEMNF,'
      '       FL_SITUTRIBICMS_ITEMNOTAFISC,'
      '       NM_SITUTRIBICMSITEMNOTAFISC'
      '  FROM NOTA_FISCAL_ITEM Nota_fiscal_item'
      ' WHERE Nota_fiscal_item.ID_NOTAFISC = :id_notafisc')
    MasterSource = dtsNotaFisc
    MasterFields = 'ID_NOTAFISC'
    DetailFields = 'id_notafisc'
    Left = 144
    Top = 217
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_notafisc'
        Value = nil
      end>
    object qryItemNotaFiscEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object qryItemNotaFiscFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object qryItemNotaFiscID_ITEMNOTAFISC: TFloatField
      FieldName = 'ID_ITEMNOTAFISC'
      Required = True
    end
    object qryItemNotaFiscID_NOTAFISC: TFloatField
      FieldName = 'ID_NOTAFISC'
      Required = True
    end
    object qryItemNotaFiscID_MATERIAL: TFloatField
      FieldName = 'ID_MATERIAL'
      Required = True
    end
    object qryItemNotaFiscID_EMBALAGEM: TFloatField
      FieldName = 'ID_EMBALAGEM'
      Required = True
    end
    object qryItemNotaFiscID_MATEEMBA: TFloatField
      FieldName = 'ID_MATEEMBA'
      Required = True
    end
    object qryItemNotaFiscNM_MATERIAL_ITEMNOTAFISC: TStringField
      FieldName = 'NM_MATERIAL_ITEMNOTAFISC'
      Required = True
      Size = 40
    end
    object qryItemNotaFiscNR_CLASFISC_ITEMNOTAFISC: TStringField
      FieldName = 'NR_CLASFISC_ITEMNOTAFISC'
      Size = 8
    end
    object qryItemNotaFiscSG_UNIDMEDI_ITEMNOTAFISC: TStringField
      FieldName = 'SG_UNIDMEDI_ITEMNOTAFISC'
      Required = True
      Size = 3
    end
    object qryItemNotaFiscQN_EMBAITEMNOTAFISC: TIntegerField
      FieldName = 'QN_EMBAITEMNOTAFISC'
      Required = True
      DisplayFormat = '#,###,##0.00'
    end
    object qryItemNotaFiscQN_PESOITEMNOTAFISC: TFloatField
      FieldName = 'QN_PESOITEMNOTAFISC'
      Required = True
      DisplayFormat = '#,###,##0.00'
    end
    object qryItemNotaFiscVL_UNITITEMNOTAFISC: TFloatField
      FieldName = 'VL_UNITITEMNOTAFISC'
      Required = True
      DisplayFormat = '###,###,##0.00###'
    end
    object qryItemNotaFiscVL_UNITBRUTITEMNOTAFISC: TFloatField
      FieldName = 'VL_UNITBRUTITEMNOTAFISC'
      DisplayFormat = '###,###,##0.00###'
    end
    object qryItemNotaFiscPC_ICMSITEMNOTAFISC: TFloatField
      FieldName = 'PC_ICMSITEMNOTAFISC'
      Required = True
    end
    object qryItemNotaFiscPC_IPIITEMNOTAFISC: TFloatField
      FieldName = 'PC_IPIITEMNOTAFISC'
      Required = True
    end
    object qryItemNotaFiscPC_REDUICMSITEMNOTAFISC: TFloatField
      FieldName = 'PC_REDUICMSITEMNOTAFISC'
      Required = True
      DisplayFormat = '#,###,##0.00'
    end
    object qryItemNotaFiscVL_IPIITEMNOTAFISC: TFloatField
      FieldName = 'VL_IPIITEMNOTAFISC'
      Required = True
      DisplayFormat = '###,###,##0.00'
    end
    object qryItemNotaFiscVL_ICMSITEMNOTAFISC: TFloatField
      FieldName = 'VL_ICMSITEMNOTAFISC'
      Required = True
      DisplayFormat = '###,###,##0.00'
    end
    object qryItemNotaFiscFL_LEGECLASITEMNOTAFISC: TIntegerField
      FieldName = 'FL_LEGECLASITEMNOTAFISC'
    end
    object qryItemNotaFiscID_PRODMATEEMBA_ITEMNOTAFISC: TStringField
      FieldName = 'ID_PRODMATEEMBA_ITEMNOTAFISC'
      Required = True
      Size = 3
    end
    object qryItemNotaFiscVL_DESCICMSITEMNOTAFISC: TFloatField
      FieldName = 'VL_DESCICMSITEMNOTAFISC'
      Required = True
      DisplayFormat = '###,###,##0.00'
    end
    object qryItemNotaFiscVL_ITEMNOTAFISC: TFloatField
      FieldName = 'VL_ITEMNOTAFISC'
      Required = True
      DisplayFormat = '###,###,##0.00###'
    end
    object qryItemNotaFiscVL_BRUTITEMNOTAFISC: TFloatField
      FieldName = 'VL_BRUTITEMNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryItemNotaFiscFX_ITEMNOTAFISC: TStringField
      FieldName = 'FX_ITEMNOTAFISC'
      Required = True
      Size = 1
    end
    object qryItemNotaFiscNR_CFOP_ITEMNOTAFISC: TStringField
      FieldName = 'NR_CFOP_ITEMNOTAFISC'
      Size = 4
    end
    object qryItemNotaFiscNM_NATUOPERCFOP_ITEMNF: TStringField
      FieldName = 'NM_NATUOPERCFOP_ITEMNF'
      Size = 40
    end
    object qryItemNotaFiscFL_SITUTRIBICMS_ITEMNOTAFISC: TStringField
      FieldName = 'FL_SITUTRIBICMS_ITEMNOTAFISC'
      Size = 3
    end
    object qryItemNotaFiscNM_SITUTRIBICMSITEMNOTAFISC: TStringField
      FieldName = 'NM_SITUTRIBICMSITEMNOTAFISC'
      Size = 40
    end
  end
  object dtsNotaFisc: TOraDataSource
    DataSet = qryNotaFisc
    Left = 168
    Top = 280
  end
  object dtsItemNotaFisc: TOraDataSource
    DataSet = qryItemNotaFisc
    Left = 184
    Top = 225
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 312
    Top = 281
  end
  object RLHTML: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 344
    Top = 281
  end
end
