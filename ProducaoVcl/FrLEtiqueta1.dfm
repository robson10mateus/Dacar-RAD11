object FrmLEtiqueta1: TFrmLEtiqueta1
  Left = 772
  Top = 457
  Width = 324
  Height = 200
  Caption = 'Impress'#227'o da etiqueta'
  Color = clBackground

  Font.Color = clText
  Font.Height = -11
  Font.Name = 'helvetica'
  Font.Style = []

  PixelsPerInch = 96
  TextHeight = 13
  object RLImpresso01: TRLReport
    Left = 2
    Top = 4
    Width = 310
    Height = 159

    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 1.000000000000000000
    Margins.TopMargin = 1.000000000000000000
    Margins.RightMargin = 1.000000000000000000
    Margins.BottomMargin = 1.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 82.000000000000000000
    PageSetup.PaperHeight = 42.000000000000000000
    PrintQuality = pqFixedOnly
    object RLDetalhe01: TRLBand
      Left = 4
      Top = 4
      Width = 302
      Height = 149
      BandType = btTitle
      object RLCeu: TRLLabel
        Left = 67
        Top = 10
        Width = 165
        Height = 40
        Caption = 'C'#201'U AZUL'

        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'Chicago'
        Font.Style = []
        ParentFont = False
      end
      object RLBarras: TRLLabel
        Left = 78
        Top = 50
        Width = 140
        Height = 41
        Alignment = taCenter
        AutoSize = False
        Caption = '240710101401405200007'

        Font.Color = clBlack
        Font.Height = -37
        Font.Name = 'EAN-13'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 1
        Top = 12
        Width = 300
        Height = 5
        DrawKind = dkLine
        Pen.Width = 2
      end
      object RLDraw2: TRLDraw
        Left = 1
        Top = 44
        Width = 300
        Height = 5
        DrawKind = dkLine
        Pen.Width = 2
      end
      object RLEAN: TRLLabel
        Left = 32
        Top = 92
        Width = 238
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Caption = '24.07.10.1.01401 405 20.00.07'

        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLCodigo: TRLLabel
        Left = 4
        Top = 125
        Width = 49
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        Caption = '405'

        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDescricao: TRLLabel
        Left = 55
        Top = 125
        Width = 171
        Height = 19
        AutoSize = False
        Caption = 'PEITO RESFR.SR'

        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPeso: TRLLabel
        Left = 229
        Top = 125
        Width = 68
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        Caption = '20.00'

        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 7
        Top = 110
        Width = 36
        Height = 13
        Caption = 'C'#243'digo'

        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'helvetica'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 47
        Top = 110
        Width = 51
        Height = 13
        Caption = 'Descri'#231#227'o'

        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'helvetica'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 248
        Top = 110
        Width = 27
        Height = 13
        Caption = 'Peso'

        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'helvetica'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
