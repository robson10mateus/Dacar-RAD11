object FrmRelRemessaRacao: TFrmRelRemessaRacao
  Left = 342
  Top = 211
  Width = 826
  Height = 515
  HorzScrollBar.Range = 794
  VertScrollBar.Range = 1123
  Caption = 'Relat'#243'rio Remessa Ra'#231#227'o'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDefault
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 15
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = FrmConsRemessaRacao.Ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 50
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 4
        Top = 6
        Width = 60
        Height = 14
        Caption = 'Periodo: de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 260
        Top = 6
        Width = 120
        Height = 16
        Caption = 'Remessas de ra'#231#227'o'
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 636
        Top = 6
        Width = 35
        Height = 14
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 676
        Top = 6
        Width = 72
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 542
        Top = 6
        Width = 33
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 43
        Width = 718
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
      Left = 38
      Top = 88
      Width = 718
      Height = 18
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel5: TRLLabel
        Left = 18
        Top = -1
        Width = 32
        Height = 16
        Caption = 'Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 56
        Top = -1
        Width = 65
        Height = 16
        Caption = 'Integrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 369
        Top = -1
        Width = 74
        Height = 16
        Caption = 'Data Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 472
        Top = -1
        Width = 29
        Height = 16
        Caption = 'N.F.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 504
        Top = -1
        Width = 76
        Height = 16
        Caption = 'Tipo Ra'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 682
        Top = -1
        Width = 34
        Height = 16
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 106
      Width = 718
      Height = 21
      object RLDBText1: TRLDBText
        Left = 11
        Top = 2
        Width = 41
        Height = 12
        Alignment = taRightJustify
        DataField = 'ID_LOTE'
        DataSource = FrmConsRemessaRacao.Ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 56
        Top = 2
        Width = 305
        Height = 16
        AutoSize = False
        DataField = 'NM_FORNECEDOR'
        DataSource = FrmConsRemessaRacao.Ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 363
        Top = 2
        Width = 81
        Height = 16
        AutoSize = False
        DataField = 'DT_SAIDNOTAFISC'
        DataSource = FrmConsRemessaRacao.Ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 446
        Top = 2
        Width = 56
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'NR_NOTAFISC'
        DataSource = FrmConsRemessaRacao.Ds
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
        Left = 503
        Top = 2
        Width = 145
        Height = 16
        AutoSize = False
        DataField = 'NM_PRODMATEEMBA'
        DataSource = FrmConsRemessaRacao.Ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 649
        Top = 2
        Width = 67
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QN_EMBAITEMNOTAFISC'
        DataSource = FrmConsRemessaRacao.Ds
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
    object RLBand4: TRLBand
      Left = 38
      Top = 127
      Width = 718
      Height = 21
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel11: TRLLabel
        Left = 388
        Top = 2
        Width = 55
        Height = 16
        Caption = 'TOTAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 639
        Top = 2
        Width = 67
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QN_EMBAITEMNOTAFISC'
        DataSource = FrmConsRemessaRacao.Ds
        Info = riSum
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 445
        Top = 2
        Width = 57
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'NR_NOTAFISC'
        DataSource = FrmConsRemessaRacao.Ds
        Info = riCount
        Text = ''
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 712
    Top = 24
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 760
    Top = 24
  end
end
