object FrmRelCanhotoNFE: TFrmRelCanhotoNFE
  Left = 177
  Top = 55
  Width = 1138
  Height = 517
  VertScrollBar.Range = 783
  HorzScrollBar.Range = 1115
  Caption = 'FrmRelCanhotoNFE'
  Color = clBackground
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13

  object RLReport1: TRLReport
    Left = -8
    Top = -11
    Width = 1123
    Height = 794
    DataSource = FrmCanhotoNFE.Ds
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []

    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    PageSetup.Orientation = poLandscape
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 1085
      Height = 61
      BandType = btHeader
      object RLLabel2: TRLLabel
        Left = 0
        Top = 23
        Width = 1085
        Height = 23
        Align = faTop
        Alignment = taCenter
        Caption = 'Diferen'#231'a de Pre'#231'o por Vendedor e Item'

        Font.Color = clBlack
        Font.Height = 19
        Font.Name = 'Calibri'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object lbl_Unidade: TRLLabel
        Left = 0
        Top = 0
        Width = 1085
        Height = 23
        Align = faTop
        Alignment = taCenter
        Caption = 'CEU AZUL LTDA '

        Font.Color = clBlack
        Font.Height = 19
        Font.Name = 'Calibri'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 952
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
        Left = 990
        Top = 6
        Width = 20
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = itPageNumber
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 3
        Top = 6
        Width = 34
        Height = 14
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = itNow
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 1010
        Top = 5
        Width = 12
        Height = 16
        AutoSize = False
        Caption = '/'
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 1021
        Top = 6
        Width = 20
        Height = 14
        AutoSize = False
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        Info = itLastPageNumber
        ParentFont = False
      end
      object lbl_Data: TRLLabel
        Left = 0
        Top = 46
        Width = 54
        Height = 18
        Align = faLeftTop

        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Calibri'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLG_Vendedor: TRLGroup
      Left = 19
      Top = 80
      Width = 1085
      Height = 133
      DataFields = 'ID_VENDEDOR'
      PageBreaking = pbBeforePrint
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 1085
        Height = 19
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 0
          Top = 0
          Width = 78
          Height = 18
          Caption = 'Vendedor = '

          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 80
          Top = 0
          Width = 102
          Height = 18
          DataField = 'NM_VENDEDOR'
          DataSource = FrmCanhotoNFE.Ds

          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLG_Produto: TRLGroup
        Left = 0
        Top = 19
        Width = 1085
        Height = 87
        DataFields = 'ID_PRODMATEEMBA'
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 1085
          Height = 19
          BandType = btHeader
          object RLLabel3: TRLLabel
            Left = 1
            Top = 0
            Width = 45
            Height = 18
            Caption = 'Item = '

            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 47
            Top = 0
            Width = 63
            Height = 16
            AutoSize = False
            DataField = 'ID_PRODMATEEMBA'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 114
            Top = 0
            Width = 262
            Height = 16
            AutoSize = False
            DataField = 'NM_PRODMATEEMBA'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 19
          Width = 1085
          Height = 19
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel5: TRLLabel
            Left = 3
            Top = 1
            Width = 28
            Height = 15
            Caption = 'Data'

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 93
            Top = 1
            Width = 35
            Height = 15
            Caption = 'Docto'

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 172
            Top = 1
            Width = 40
            Height = 15
            Caption = 'C'#243'digo'

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 218
            Top = 1
            Width = 42
            Height = 15
            Caption = 'Cliente'

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 439
            Top = 1
            Width = 67
            Height = 15
            Caption = 'Quantidade'

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 525
            Top = 1
            Width = 69
            Height = 15
            Caption = 'Total Venda'

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 622
            Top = 1
            Width = 69
            Height = 15
            Caption = 'Total Tabela'

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 735
            Top = 1
            Width = 48
            Height = 15
            Caption = 'Dif Total'

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 813
            Top = 1
            Width = 64
            Height = 15
            Caption = 'Unit Venda'

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 910
            Top = 1
            Width = 64
            Height = 15
            Caption = 'Unit Tabela'

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 1028
            Top = 1
            Width = 44
            Height = 15
            Caption = 'Dif Unit'

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 38
          Width = 1085
          Height = 22
          object RLDBText4: TRLDBText
            Left = 3
            Top = 2
            Width = 74
            Height = 16
            AutoSize = False
            DataField = 'DT_EMISNOTAFISC'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 93
            Top = 2
            Width = 66
            Height = 16
            AutoSize = False
            DataField = 'NR_NOTAFISC'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 167
            Top = 2
            Width = 45
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ID_CLIENTE'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 219
            Top = 3
            Width = 210
            Height = 16
            AutoSize = False
            DataField = 'NM_CLIENTE'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 444
            Top = 3
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QUANTIDADE'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 521
            Top = 2
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTAL_VENDA'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 616
            Top = 2
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTAL_TABELA'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 709
            Top = 2
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DIF_TOTAL'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 805
            Top = 2
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'UNIT_VENDA'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 900
            Top = 2
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'UNIT_TABELA'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 997
            Top = 2
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DIF_UNIT'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
        end
        object RLBand6: TRLBand
          Left = 0
          Top = 60
          Width = 1085
          Height = 25
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel11: TRLLabel
            Left = 352
            Top = 4
            Width = 77
            Height = 15
            Caption = 'Total do Item'

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult1: TRLDBResult
            Left = 444
            Top = 4
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QUANTIDADE'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
          end
          object RLDBResult2: TRLDBResult
            Left = 521
            Top = 4
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTAL_VENDA'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
          end
          object RLDBResult7: TRLDBResult
            Left = 616
            Top = 4
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTAL_TABELA'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
          end
          object RLDBResult8: TRLDBResult
            Left = 709
            Top = 4
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DIF_TOTAL'
            DataSource = FrmCanhotoNFE.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Calibri'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
          end
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 106
        Width = 1085
        Height = 24
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel13: TRLLabel
          Left = 322
          Top = 4
          Width = 106
          Height = 15
          Caption = 'Total do Vendedor'

          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult3: TRLDBResult
          Left = 444
          Top = 4
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QUANTIDADE'
          DataSource = FrmCanhotoNFE.Ds

          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 521
          Top = 4
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTAL_VENDA'
          DataSource = FrmCanhotoNFE.Ds

          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLDBResult12: TRLDBResult
          Left = 616
          Top = 4
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTAL_TABELA'
          DataSource = FrmCanhotoNFE.Ds

          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLDBResult13: TRLDBResult
          Left = 709
          Top = 4
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DIF_TOTAL'
          DataSource = FrmCanhotoNFE.Ds

          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
      end
    end
    object RLBand8: TRLBand
      Left = 19
      Top = 213
      Width = 1085
      Height = 23
      BandType = btSummary
      object RLLabel14: TRLLabel
        Left = 363
        Top = 4
        Width = 63
        Height = 15
        Caption = 'Total Geral'

        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Calibri'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult5: TRLDBResult
        Left = 444
        Top = 4
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QUANTIDADE'
        DataSource = FrmCanhotoNFE.Ds

        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Calibri'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
      object RLDBResult6: TRLDBResult
        Left = 521
        Top = 4
        Width = 74
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTAL_VENDA'
        DataSource = FrmCanhotoNFE.Ds

        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Calibri'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
      object RLDBResult17: TRLDBResult
        Left = 616
        Top = 4
        Width = 74
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTAL_TABELA'
        DataSource = FrmCanhotoNFE.Ds

        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Calibri'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
      object RLDBResult18: TRLDBResult
        Left = 709
        Top = 4
        Width = 74
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DIF_TOTAL'
        DataSource = FrmCanhotoNFE.Ds

        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Calibri'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
    end
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 800
  end
  object RLSaveDialogSetup1: TRLSaveDialogSetup
    SaveInBackground = False
    Filter = FrmRelEstoque.RLXLSFilter1
    Left = 800
    Top = 32
  end
  object RLPrintDialogSetup1: TRLPrintDialogSetup
    Options = [rpoPageNums, rpoSelection, rpoWarning, rpoHelp, rpoDisablePrintToFile, rpoDisableCopies]
    Copies = 0
    Left = 832
    Top = 32
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 832
  end
end
