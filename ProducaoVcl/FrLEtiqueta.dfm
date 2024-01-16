object FrmLEtiqueta: TFrmLEtiqueta
  Left = 772
  Top = 48
  Width = 322
  Height = 613
  Caption = 'Impress'#227'o da etiqueta'
  Color = clBackground

  Font.Color = clText
  Font.Height = -11
  Font.Name = 'helvetica'
  Font.Style = []

  PixelsPerInch = 96
  TextHeight = 13
  object RLImpresso00: TRLReport
    Left = 2
    Top = 4
    Width = 310
    Height = 574

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
    PageSetup.PaperHeight = 152.000000000000000000
    PrintQuality = pqFixedOnly
    object RLDetalhe00: TRLBand
      Left = 4
      Top = 4
      Width = 302
      Height = 565
      BandType = btTitle
      object RLEtiqueta00: TRLImage
        Left = 0
        Top = 0
        Width = 301
        Height = 564
        Scaled = True
      end
      object RLLote: TRLAngleLabel
        Left = 76
        Top = 330
        Width = 16
        Height = 108
        Alignment = taCenter
        Angle = 90.000000000000000000
        Caption = '02/08/2010 / 3456'
      end
      object RLValidade: TRLAngleLabel
        Left = 107
        Top = 369
        Width = 16
        Height = 68
        Alignment = taCenter
        Angle = 90.000000000000000000
        Caption = '01/09/2010'
      end
      object RLBarras: TRLAngleLabel
        Left = 191
        Top = 378
        Width = 74
        Height = 184
        Alignment = taCenter
        Angle = 90.000000000000000000
        AutoSize = False
        Caption = '170210203779507200002'

        Font.Color = clBlack
        Font.Height = -48
        Font.Name = 'EAN-13'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
