object FrmConsApanhaRel: TFrmConsApanhaRel
  Left = 228
  Top = 175
  Width = 987
  Height = 637
  VertScrollBar.Range = 1123
  HorzScrollBar.Range = 794
  Caption = 'Relat'#243'rio de Apanha'
  Color = clBackground
  PixelsPerInch = 96
  TextHeight = 13

  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = FrmConsApanha.Ds
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []

    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail2: TRLSubDetail
      Left = 19
      Top = 38
      Width = 756
      Height = 127
      DataSource = FrmConsApanha.Ds
      object RLGroup1: TRLGroup
        Left = 0
        Top = 81
        Width = 756
        Height = 43
        DataFields = 'NM_FORNECEDOR'
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 756
          Height = 18
          object RLDBText1: TRLDBText
            Left = 1
            Top = 0
            Width = 32
            Height = 14
            AutoSize = False
            DataField = 'NR_NOTAFISC'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 35
            Top = 0
            Width = 119
            Height = 14
            AutoSize = False
            DataField = 'NM_CLIENTE'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 9
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 156
            Top = 0
            Width = 52
            Height = 14
            AutoSize = False
            DataField = 'PLACAVEIC'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 210
            Top = 0
            Width = 28
            Height = 14
            AutoSize = False
            DataField = 'ID_INTEGRADO'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 239
            Top = 0
            Width = 178
            Height = 14
            AutoSize = False
            DataField = 'NM_FORNECEDOR'
            DataSource = FrmConsApanha.Ds

            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 429
            Top = 0
            Width = 36
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD_PREVISAO'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 469
            Top = 0
            Width = 36
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'IDADE'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 509
            Top = 0
            Width = 18
            Height = 16
            Caption = 'MI'
          end
          object RLDBText8: TRLDBText
            Left = 544
            Top = 2
            Width = 36
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD_AVESABAT'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 592
            Top = 3
            Width = 36
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD_AVESABAT'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 682
            Top = 4
            Width = 36
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'LIQUIDO'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 720
            Top = 4
            Width = 34
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PESO_MEDIO'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
          object RLDBText17: TRLDBText
            Left = 636
            Top = 3
            Width = 42
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DIF_QTDE'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 18
          Width = 756
          Height = 23
          BandType = btSummary
          object RLDraw3: TRLDraw
            Left = 0
            Top = 19
            Width = 756
            Height = 3
            Align = faWidth
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DrawKind = dkLine
          end
          object RLDBResult1: TRLDBResult
            Left = 424
            Top = 2
            Width = 41
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD_PREVISAO'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            Info = riSum
            ParentFont = False
          end
          object RLDBResult2: TRLDBResult
            Left = 459
            Top = 2
            Width = 120
            Height = 14
            Alignment = taRightJustify
            DataField = 'QTD_AVESABAT'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            Info = riSum
            ParentFont = False
          end
          object RLDBResult3: TRLDBResult
            Left = 507
            Top = 2
            Width = 120
            Height = 14
            Alignment = taRightJustify
            DataField = 'QTD_AVESABAT'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            Info = riSum
            ParentFont = False
          end
          object RLDBResult4: TRLDBResult
            Left = 642
            Top = 2
            Width = 75
            Height = 14
            Alignment = taRightJustify
            DataField = 'LIQUIDO'
            DataSource = FrmConsApanha.Ds
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []

            Info = riSum
            ParentFont = False
          end
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 48
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel1: TRLLabel
          Left = 231
          Top = 22
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
          Left = 231
          Top = 6
          Width = 193
          Height = 16
          Caption = 'Previs'#227'o das apanhas de Frango'
        end
        object lbl_Periodo: TRLLabel
          Left = 296
          Top = 22
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
          Left = 4
          Top = 2
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
          Left = 44
          Top = 2
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
          Left = 4
          Top = 16
          Width = 49
          Height = 14
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          Info = itFullDate
          ParentFont = False
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 4
          Top = 30
          Width = 34
          Height = 14
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          Info = itHour
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 48
        Width = 756
        Height = 33
        BandType = btColumnHeader
        object RLLabel5: TRLLabel
          Left = 4
          Top = 0
          Width = 25
          Height = 14
          Caption = 'Nota'
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 35
          Top = 0
          Width = 35
          Height = 14
          Caption = 'Cliente'
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 159
          Top = 0
          Width = 29
          Height = 14
          Caption = 'Placa'
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 211
          Top = 0
          Width = 36
          Height = 14
          Caption = 'C'#243'd Int'
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 253
          Top = 0
          Width = 48
          Height = 14
          Caption = 'Integrado'
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 421
          Top = 0
          Width = 45
          Height = 14
          Caption = 'Previs'#227'o'
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 474
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
          Left = 511
          Top = 0
          Width = 17
          Height = 14
          Caption = 'SX'
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
          Width = 756
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
          Left = 542
          Top = 0
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
        object RLLabel21: TRLLabel
          Left = 591
          Top = 0
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
        object RLLabel22: TRLLabel
          Left = 632
          Top = 0
          Width = 50
          Height = 14
          Caption = 'Diferen'#231'a'
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 683
          Top = 0
          Width = 37
          Height = 14
          Caption = 'Liquido'
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 725
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
        object RLLabel3: TRLLabel
          Left = 533
          Top = 15
          Width = 49
          Height = 14
          Caption = 'Contadas'
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 583
          Top = 15
          Width = 46
          Height = 14
          Caption = 'Turmeiro'
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 631
          Top = 15
          Width = 51
          Height = 14
          Caption = 'Frig./Turm'
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 724
          Top = 15
          Width = 31
          Height = 14
          Caption = 'M'#233'dio'
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 0
          Top = 15
          Width = 31
          Height = 14
          Caption = 'Fiscal'
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 19
      Top = 165
      Width = 756
      Height = 42
      DataSource = FrmConsApanha.Ds_Turma
      object RLBand5: TRLBand
        Left = 0
        Top = 19
        Width = 756
        Height = 18
        object RLDBText13: TRLDBText
          Left = 363
          Top = 0
          Width = 32
          Height = 14
          Alignment = taRightJustify
          DataField = 'AVES'
          DataSource = FrmConsApanha.Ds_Turma
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 6
          Top = 0
          Width = 302
          Height = 16
          AutoSize = False
          DataField = 'TURMEIRO'
          DataSource = FrmConsApanha.Ds_Turma
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 600
          Top = 1
          Width = 65
          Height = 14
          Alignment = taRightJustify
          DataField = 'PESO_AVES'
          DataSource = FrmConsApanha.Ds_Turma
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 19
        BandType = btColumnHeader
        object RLLabel18: TRLLabel
          Left = 6
          Top = 1
          Width = 53
          Height = 15
          Caption = 'Turmeiro'
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 320
          Top = 1
          Width = 76
          Height = 15
          Caption = 'Total de Aves'
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 600
          Top = 1
          Width = 65
          Height = 15
          Caption = 'Total de Kg'
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
      end
    end
    object RLSubDetail3: TRLSubDetail
      Left = 19
      Top = 207
      Width = 756
      Height = 38
      DataSource = FrmConsApanha.Ds_Abatedouro
      object RLBand7: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 18
        BandType = btColumnHeader
        object RLLabel26: TRLLabel
          Left = 6
          Top = 1
          Width = 66
          Height = 15
          Caption = 'Abatedouro'
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 320
          Top = 1
          Width = 76
          Height = 15
          Caption = 'Total de Aves'
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLLabel28: TRLLabel
          Left = 600
          Top = 2
          Width = 65
          Height = 15
          Caption = 'Total de Kg'
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 18
        Width = 756
        Height = 18
        object RLDBText15: TRLDBText
          Left = 8
          Top = 0
          Width = 64
          Height = 14
          DataField = 'NM_CLIENTE'
          DataSource = FrmConsApanha.Ds_Abatedouro
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 363
          Top = 2
          Width = 32
          Height = 14
          Alignment = taRightJustify
          DataField = 'AVES'
          DataSource = FrmConsApanha.Ds_Abatedouro
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 600
          Top = 3
          Width = 65
          Height = 14
          Alignment = taRightJustify
          DataField = 'PESO_AVES'
          DataSource = FrmConsApanha.Ds_Abatedouro
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
        end
      end
    end
  end
end
