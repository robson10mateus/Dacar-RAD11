object FrmRelProgRacao: TFrmRelProgRacao
  Left = 268
  Top = 111
  Width = 971
  Height = 582
  HorzScrollBar.Range = 794
  VertScrollBar.Range = 1131
  Caption = 'Programa'#231#227'o de Ra'#231#227'o'
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
    Top = 8
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = Ds_ProgRacao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    BeforePrint = RLReport1BeforePrint
    object RLGroup1: TRLGroup
      Left = 19
      Top = 130
      Width = 756
      Height = 44
      DataFields = 'PROX_ENTREGA_RACAO'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 15
        BandType = btColumnHeader
        object RLDBText1: TRLDBText
          Left = 97
          Top = 1
          Width = 137
          Height = 11
          DataField = 'PROX_ENTREGA_RACAO'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel4: TRLLabel
          Left = 3
          Top = 2
          Width = 92
          Height = 11
          Caption = 'Envio na data --->'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 237
          Top = 1
          Width = 59
          Height = 11
          DataField = 'Dia_daSem'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 15
        Width = 756
        Height = 17
        object RLDBText2: TRLDBText
          Left = 0
          Top = 2
          Width = 24
          Height = 10
          AutoSize = False
          DataField = 'ID_LOTE'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 25
          Top = 2
          Width = 169
          Height = 10
          AutoSize = False
          DataField = 'INTEGRADO'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 197
          Top = 2
          Width = 16
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'IDADE'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 223
          Top = 2
          Width = 35
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'AVES'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 261
          Top = 2
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PREINI_PREV'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 295
          Top = 2
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PREINI_NF'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 328
          Top = 2
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'PREINI_NF - PREINI_PREV'
          DataSource = Ds_ProgRacao
          DisplayMask = '#,###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 396
          Top = 2
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'INICIAL_NF'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 362
          Top = 2
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'INICIAL_PREV'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 429
          Top = 2
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'INICIAL_NF - INICIAL_PREV'
          DataSource = Ds_ProgRacao
          DisplayMask = '#,###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 715
          Top = 1
          Width = 40
          Height = 10
          AutoSize = False
          DataField = 'ULTIMO_ENVIO'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText13: TRLDBText
          Left = 466
          Top = 2
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ENGORDA_PREV'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 501
          Top = 2
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ENGORDA_NF'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 536
          Top = 2
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = ' ENGORDA_NF - ENGORDA_PREV'
          DataSource = Ds_ProgRacao
          DisplayMask = '#,###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText19: TRLDBText
          Left = 574
          Top = 1
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ABATE_PREV'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText20: TRLDBText
          Left = 611
          Top = 1
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ABATE_NF'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText21: TRLDBText
          Left = 646
          Top = 1
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = ' ABATE_NF - ABATE_PREV'
          DataSource = Ds_ProgRacao
          DisplayMask = '#,###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel6: TRLLabel
          Left = 698
          Top = 1
          Width = 15
          Height = 11
          Caption = 'MI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 680
          Top = 1
          Width = 17
          Height = 11
          Caption = 'MC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 214
          Top = 2
          Width = 7
          Height = 10
          AutoSize = False
          DataField = 'Ult_Semana'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 32
        Width = 756
        Height = 19
        BandType = btSummary
        object RLLabel5: TRLLabel
          Left = 208
          Top = 0
          Width = 50
          Height = 11
          Caption = 'SUBTOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 261
          Top = 0
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PREINI_PREV'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult2: TRLDBResult
          Left = 295
          Top = 0
          Width = 32
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PREINI_NF'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult3: TRLDBResult
          Left = 328
          Top = 0
          Width = 32
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'PREINI_NF - PREINI_PREV'
          DataSource = Ds_ProgRacao
          DisplayMask = '#,###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult4: TRLDBResult
          Left = 362
          Top = 0
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'INICIAL_PREV'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult5: TRLDBResult
          Left = 396
          Top = 0
          Width = 32
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'INICIAL_NF'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult6: TRLDBResult
          Left = 429
          Top = 0
          Width = 32
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'INICIAL_NF - INICIAL_PREV'
          DataSource = Ds_ProgRacao
          DisplayMask = '#,###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult7: TRLDBResult
          Left = 466
          Top = 1
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ENGORDA_PREV'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult8: TRLDBResult
          Left = 502
          Top = 0
          Width = 32
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ENGORDA_NF'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult9: TRLDBResult
          Left = 536
          Top = 0
          Width = 32
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = ' ENGORDA_NF - ENGORDA_PREV'
          DataSource = Ds_ProgRacao
          DisplayMask = '#,###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult13: TRLDBResult
          Left = 574
          Top = 1
          Width = 32
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ABATE_PREV'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult14: TRLDBResult
          Left = 611
          Top = 0
          Width = 32
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ABATE_NF'
          DataSource = Ds_ProgRacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult15: TRLDBResult
          Left = 646
          Top = 0
          Width = 32
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = ' ABATE_NF - ABATE_PREV'
          DataSource = Ds_ProgRacao
          DisplayMask = '#,###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 9
          Font.Name = 'MS Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand1: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 92
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 0
        Top = 1
        Width = 756
        Height = 13
        Align = faWidth
        Alignment = taCenter
        Caption = 'Programa'#231#227'o de Ra'#231#227'o por Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 16
        Width = 756
        Height = 13
        Align = faWidth
        Alignment = taCenter
        Caption = 'C'#201'U AZUL ALIMENTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 16
        Width = 44
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 48
        Top = 0
        Width = 64
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 2
        Top = 0
        Width = 30
        Height = 13
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLMemo1: TRLMemo
        Left = 2
        Top = 40
        Width = 20
        Height = 22
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'N'#186
          'Lote')
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 26
        Top = 40
        Width = 66
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Integrado')
        ParentFont = False
      end
      object RLMemo3: TRLMemo
        Left = 201
        Top = 40
        Width = 15
        Height = 22
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Ida'
          'de')
        ParentFont = False
      end
      object RLMemo4: TRLMemo
        Left = 224
        Top = 40
        Width = 30
        Height = 33
        Alignment = taCenter
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Aves'
          'Aloja'
          'das')
        ParentFont = False
      end
      object RLMemo5: TRLMemo
        Left = 257
        Top = 40
        Width = 102
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Ra'#231#227'o Pr'#233' Inicial')
        ParentFont = False
      end
      object RLMemo6: TRLMemo
        Left = 257
        Top = 51
        Width = 36
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Prevista')
        ParentFont = False
      end
      object RLMemo7: TRLMemo
        Left = 294
        Top = 51
        Width = 35
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Enviada')
        ParentFont = False
      end
      object RLMemo8: TRLMemo
        Left = 330
        Top = 51
        Width = 29
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          '- Falta')
        ParentFont = False
      end
      object RLMemo9: TRLMemo
        Left = 362
        Top = 40
        Width = 102
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Ra'#231#227'o Inicial')
        ParentFont = False
      end
      object RLMemo10: TRLMemo
        Left = 466
        Top = 40
        Width = 102
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Ra'#231#227'o Engorda I')
        ParentFont = False
      end
      object RLMemo12: TRLMemo
        Left = 571
        Top = 40
        Width = 102
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Ra'#231#227'o Abate')
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 23
        Top = 39
        Width = 2
        Height = 32
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw2: TRLDraw
        Left = 197
        Top = 39
        Width = 4
        Height = 32
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw3: TRLDraw
        Left = 218
        Top = 39
        Width = 2
        Height = 32
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw4: TRLDraw
        Left = 255
        Top = 39
        Width = 2
        Height = 32
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw5: TRLDraw
        Left = 360
        Top = 39
        Width = 2
        Height = 32
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLMemo15: TRLMemo
        Left = 362
        Top = 51
        Width = 35
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Prevista')
        ParentFont = False
      end
      object RLMemo16: TRLMemo
        Left = 397
        Top = 51
        Width = 36
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Enviada')
        ParentFont = False
      end
      object RLMemo17: TRLMemo
        Left = 434
        Top = 51
        Width = 29
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          '- Falta')
        ParentFont = False
      end
      object RLDraw6: TRLDraw
        Left = 464
        Top = 39
        Width = 2
        Height = 32
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw7: TRLDraw
        Left = 568
        Top = 39
        Width = 2
        Height = 32
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw9: TRLDraw
        Left = 675
        Top = 39
        Width = 2
        Height = 32
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLMemo23: TRLMemo
        Left = 678
        Top = 40
        Width = 20
        Height = 30
        Alignment = taCenter
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Tipo'
          'de'
          'Ra'#231#227'o')
        ParentFont = False
      end
      object RLMemo13: TRLMemo
        Left = 725
        Top = 40
        Width = 26
        Height = 30
        Alignment = taCenter
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Data'
          #218'ltimo'
          'Envio')
        ParentFont = False
      end
      object RLMemo14: TRLMemo
        Left = 701
        Top = 40
        Width = 16
        Height = 30
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'MI'
          'MA'
          'FE')
        ParentFont = False
      end
      object RLMemo18: TRLMemo
        Left = 466
        Top = 51
        Width = 34
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Prevista')
        ParentFont = False
      end
      object RLMemo19: TRLMemo
        Left = 502
        Top = 51
        Width = 35
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Enviada')
        ParentFont = False
      end
      object RLMemo20: TRLMemo
        Left = 538
        Top = 51
        Width = 29
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          '- Falta')
        ParentFont = False
      end
      object RLMemo25: TRLMemo
        Left = 571
        Top = 51
        Width = 36
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Prevista')
        ParentFont = False
      end
      object RLMemo26: TRLMemo
        Left = 608
        Top = 51
        Width = 35
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          'Enviada')
        ParentFont = False
      end
      object RLMemo27: TRLMemo
        Left = 644
        Top = 51
        Width = 29
        Height = 11
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          '- Falta')
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 3
        Top = 72
        Width = 214
        Height = 13
        Caption = 'Favor verificar envios de RA'#199#195'O marcados com *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 19
      Top = 174
      Width = 756
      Height = 15
      BandType = btSummary
      object RLLabel8: TRLLabel
        Left = 226
        Top = 1
        Width = 32
        Height = 11
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLDBResult16: TRLDBResult
        Left = 261
        Top = 1
        Width = 32
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PREINI_PREV'
        DataSource = Ds_ProgRacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult17: TRLDBResult
        Left = 295
        Top = 1
        Width = 32
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PREINI_NF'
        DataSource = Ds_ProgRacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult18: TRLDBResult
        Left = 328
        Top = 1
        Width = 32
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataFormula = 'PREINI_NF - PREINI_PREV'
        DataSource = Ds_ProgRacao
        DisplayMask = '#,###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult19: TRLDBResult
        Left = 362
        Top = 0
        Width = 32
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'INICIAL_PREV'
        DataSource = Ds_ProgRacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult20: TRLDBResult
        Left = 396
        Top = 0
        Width = 32
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'INICIAL_NF'
        DataSource = Ds_ProgRacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult21: TRLDBResult
        Left = 429
        Top = 0
        Width = 32
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataFormula = 'INICIAL_NF - INICIAL_PREV'
        DataSource = Ds_ProgRacao
        DisplayMask = '#,###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult22: TRLDBResult
        Left = 466
        Top = 1
        Width = 32
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ENGORDA_PREV'
        DataSource = Ds_ProgRacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult23: TRLDBResult
        Left = 502
        Top = 0
        Width = 32
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ENGORDA_NF'
        DataSource = Ds_ProgRacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult24: TRLDBResult
        Left = 536
        Top = 0
        Width = 32
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataFormula = ' ENGORDA_NF - ENGORDA_PREV'
        DataSource = Ds_ProgRacao
        DisplayMask = '#,###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult28: TRLDBResult
        Left = 574
        Top = 1
        Width = 32
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ABATE_PREV'
        DataSource = Ds_ProgRacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult29: TRLDBResult
        Left = 611
        Top = 0
        Width = 32
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ABATE_NF'
        DataSource = Ds_ProgRacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult30: TRLDBResult
        Left = 646
        Top = 0
        Width = 32
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataFormula = ' ABATE_NF - ABATE_PREV'
        DataSource = Ds_ProgRacao
        DisplayMask = '#,###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 9
        Font.Name = 'MS Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 798
    Top = 7
  end
  object Qr_ProgRacao: TOraQuery
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
      
        'SELECT L.ID_LOTE,  L.INTEGRADO, L.IDADE, L.AVES, L.PROX_ENTREGA_' +
        'RACAO,'
      
        '       NVL(SUM(CASE WHEN RT.TIPO_RACAO = 7302 THEN L.AVES * RT.V' +
        'AL_CONSUMO  END ),0) PREINI_PREV,'
      
        '       NVL(SUM(CASE WHEN RT.TIPO_RACAO = 7302 THEN RE.RACAO END ' +
        '),0) PREINI_NF,'
      
        '       NVL(SUM(CASE WHEN RT.TIPO_RACAO = 7303 THEN L.AVES * RT.V' +
        'AL_CONSUMO END ),0) INICIAL_PREV,'
      
        '       NVL(SUM(CASE WHEN RT.TIPO_RACAO = 7303 THEN RE.RACAO END ' +
        '),0) INICIAL_NF,'
      
        '       NVL(SUM(CASE WHEN RT.TIPO_RACAO = 7304 THEN L.AVES * RT.V' +
        'AL_CONSUMO END ),0) ENGORDA_PREV,'
      
        '       NVL(SUM(CASE WHEN RT.TIPO_RACAO = 7304 THEN RE.RACAO END ' +
        '),0) ENGORDA_NF,'
      
        '       NVL(SUM(CASE WHEN RT.TIPO_RACAO = 7305 THEN L.AVES * RT.V' +
        'AL_CONSUMO END ),0) ENGORDAII_PREV,'
      
        '       NVL(SUM(CASE WHEN RT.TIPO_RACAO = 7305 THEN RE.RACAO END ' +
        '),0) ENGORDAII_NF,'
      
        '       NVL(SUM(CASE WHEN RT.TIPO_RACAO = 7306 THEN L.AVES * RT.V' +
        'AL_CONSUMO END ),0) ABATE_PREV,'
      
        '       NVL(SUM(CASE WHEN RT.TIPO_RACAO = 7306 THEN RE.RACAO END ' +
        '),0) ABATE_NF,'
      '       MAX(RE.ULTIMO_ENVIO) ULTIMO_ENVIO'
      
        '  FROM ( SELECT A.ID_LOTE , CASE WHEN NG.DESC_NUCLEO IS NOT NULL' +
        ' THEN  REPLACE( F.Nm_Fornecedor,'#39'E OUTRO'#39','#39#39')  ||'#39' - '#39'|| NG.DESC' +
        '_NUCLEO  ELSE REPLACE( F.Nm_Fornecedor,'#39'E OUTRO'#39','#39#39') END INTEGRA' +
        'DO ,'
      
        '                TRUNC(A.PROX_ENTREGA_RACAO) - TRUNC(A.DATA_ALOJA' +
        'MENTO) IDADE , A.QTD_ALOJ Aves,'
      '                A.PROX_ENTREGA_RACAO'
      '          From Integrado_Alojamento A'
      '         Inner join Integrado I'
      '            On I.ID_Integrado = A.ID_Integrado '
      '         Inner Join Fornecedor F'
      '            on I.Id_Fornecedor = F.Id_Fornecedor    '
      '         Left Join NUCLEO_GALPAO NG'
      '            On NG.ID_NUCLEO = A.ID_NUCLEO      '
      '         WHERE A.FL_STATUS = '#39'AB'#39'   ) L'
      ' CROSS JOIN CONSUMO_RACAO_TIPO RT       '
      
        ' LEFT Join ( Select P.ID_LOTE ID_LOTE , ME.ID_PRODMATEEMBA , SUM' +
        '(CASE WHEN P.ID_TIPOPEDIVEND = 138 THEN NI.QN_EMBAITEMNOTAFISC *' +
        ' (-1)'
      
        '                              ELSE NI.QN_EMBAITEMNOTAFISC END ) ' +
        'RACAO , '
      '                       MAX( N.DT_SAIDNOTAFISC) ULTIMO_ENVIO '
      '                  From Pedido_Venda P'
      '                 Inner Join Integrado_Alojamento A  '
      '                    on TO_CHAR(A.ID_LOTE) = P.ID_LOTE'
      '                 Inner Join PEDIDO_VENDA_TIPO T'
      '                    On P.ID_TIPOPEDIVEND = T.ID_TIPOPEDIVEND'
      '                 Inner Join CLIENTE C'
      '                    ON P.ID_CLIENTE = C.ID_CLIENTE'
      '                 INNER JOIN Pedido_Venda_ITEM I '
      '                    ON P.ID_PEDIVEND = I.ID_PEDIVEND  '
      '                 Inner Join Material_Embalagem ME'
      '                    On i.Id_Mateemba = ME.ID_Mateemba  '
      '                 Inner Join PEDIDO_VENDA_NOTA_FISCAL PN'
      '                    ON P.ID_PEDIVEND = PN.ID_PEDIVEND  '
      '                 INNER JOIN NOTA_FISCAL N'
      '                    ON N.ID_NOTAFISC = PN.ID_NOTAFISC   '
      '                 inner Join Nota_Fiscal_Item NI'
      '                    ON N.ID_NOTAFISC = NI.ID_NOTAFISC   '
      '                 Where N.FL_CANCNOTAFISC = '#39'N'#39
      
        '                   AND ME.ID_PRODMATEEMBA in ( 7302, 7303, 7304,' +
        ' 7305, 7306 )'
      '                   AND A.FL_STATUS = '#39'AB'#39
      '                 GROUP BY P.ID_LOTE , ME.ID_PRODMATEEMBA'
      '                 ) RE'
      '       On L.ID_LOTE = RE.ID_LOTE'
      '      AND RT.TIPO_RACAO = RE.ID_PRODMATEEMBA'
      'WHERE PROX_ENTREGA_RACAO >= :DataIni'
      '  AND PROX_ENTREGA_RACAO <= :DataFim'
      'AND  L.IDADE < 56'
      
        '    GROUP BY L.ID_LOTE,  L.INTEGRADO, L.IDADE, L.AVES, L.PROX_EN' +
        'TREGA_RACAO'
      'ORDER BY L.PROX_ENTREGA_RACAO ,   L.IDADE'
      ''
      ' ')
    FetchAll = True
    BeforeOpen = Qr_ProgRacaoBeforeOpen
    OnCalcFields = Qr_ProgRacaoCalcFields
    Left = 800
    Top = 40
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataIni'
        ParamType = ptInput
        Value = 42906d
      end
      item
        DataType = ftDateTime
        Name = 'DataFim'
        ParamType = ptInput
        Value = 42918d
      end>
    object Qr_ProgRacaoID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_ProgRacaoINTEGRADO: TStringField
      FieldName = 'INTEGRADO'
      Required = True
      Size = 73
    end
    object Qr_ProgRacaoIDADE: TFloatField
      FieldName = 'IDADE'
    end
    object Qr_ProgRacaoAVES: TFloatField
      FieldName = 'AVES'
      DisplayFormat = '#,###'
    end
    object Qr_ProgRacaoPROX_ENTREGA_RACAO: TDateTimeField
      FieldName = 'PROX_ENTREGA_RACAO'
    end
    object Qr_ProgRacaoPREINI_PREV: TFloatField
      FieldName = 'PREINI_PREV'
      DisplayFormat = '0,000'
    end
    object Qr_ProgRacaoPREINI_NF: TFloatField
      FieldName = 'PREINI_NF'
      DisplayFormat = '0,000'
    end
    object Qr_ProgRacaoINICIAL_PREV: TFloatField
      FieldName = 'INICIAL_PREV'
      DisplayFormat = '0,000'
    end
    object Qr_ProgRacaoINICIAL_NF: TFloatField
      FieldName = 'INICIAL_NF'
      DisplayFormat = '0,000'
    end
    object Qr_ProgRacaoENGORDA_PREV: TFloatField
      FieldName = 'ENGORDA_PREV'
      DisplayFormat = '0,000'
    end
    object Qr_ProgRacaoENGORDA_NF: TFloatField
      FieldName = 'ENGORDA_NF'
      DisplayFormat = '0,000'
    end
    object Qr_ProgRacaoENGORDAII_PREV: TFloatField
      FieldName = 'ENGORDAII_PREV'
      DisplayFormat = '0,000'
    end
    object Qr_ProgRacaoENGORDAII_NF: TFloatField
      FieldName = 'ENGORDAII_NF'
      DisplayFormat = '0,000'
    end
    object Qr_ProgRacaoABATE_PREV: TFloatField
      FieldName = 'ABATE_PREV'
      DisplayFormat = '0,000'
    end
    object Qr_ProgRacaoABATE_NF: TFloatField
      FieldName = 'ABATE_NF'
      DisplayFormat = '0,000'
    end
    object Qr_ProgRacaoULTIMO_ENVIO: TDateTimeField
      FieldName = 'ULTIMO_ENVIO'
      DisplayFormat = 'DD/MM/YY'
    end
    object Qr_ProgRacaoDia_daSem: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dia_daSem'
      Calculated = True
    end
    object Qr_ProgRacaoUlt_Semana: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ult_Semana'
      Calculated = True
    end
  end
  object Ds_ProgRacao: TOraDataSource
    DataSet = Qr_ProgRacao
    Left = 832
    Top = 38
  end
end
