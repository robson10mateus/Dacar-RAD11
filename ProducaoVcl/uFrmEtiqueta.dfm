object FrmEtiqueta: TFrmEtiqueta
  Left = 615
  Top = 12
  Caption = 'Impress'#227'o da etiqueta'
  ClientHeight = 574
  ClientWidth = 305
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'helvetica'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 14
  object RLImpresso00: TRLReport
    Left = 2
    Top = 4
    Width = 310
    Height = 574
    Margins.LeftMargin = 1.000000000000000000
    Margins.TopMargin = 1.000000000000000000
    Margins.RightMargin = 1.000000000000000000
    Margins.BottomMargin = 1.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 82.000000000000000000
    PageSetup.PaperHeight = 152.000000000000000000
    PrintDialog = False
    PrintQuality = pqFixedOnly
    BeforePrint = Antes_imprimir_etiqueta
    object RLDetalhe00: TRLBand
      Left = 4
      Top = 4
      Width = 302
      Height = 565
      BandType = btTitle
      object RLEtiqueta00: TRLImage
        Left = 0
        Top = 0
        Width = 302
        Height = 565
        Align = faClient
        Scaled = True
      end
      object RLLote: TRLAngleLabel
        Left = 82
        Top = 361
        Width = 22
        Height = 10
        Alignment = taCenter
        Angle = 90.000000000000000000
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLValidade: TRLAngleLabel
        Left = 107
        Top = 361
        Width = 22
        Height = 10
        Alignment = taCenter
        Angle = 90.000000000000000000
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLBarras: TRLImage
        Left = 187
        Top = 403
        Width = 83
        Height = 169
      end
      object RLEAN: TRLAngleLabel
        Left = 286
        Top = 284
        Width = 16
        Height = 5
        Align = faRightOnly
        Alignment = taCenter
        Angle = 90.000000000000000000
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLCodigo: TRLAngleLabel
        Left = 260
        Top = 0
        Width = 42
        Height = 20
        Align = faRightTop
        Alignment = taCenter
        Angle = 90.000000000000000000
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -35
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bar_Varejo: TRLBarcode
        Left = 179
        Top = 95
        Width = 103
        Height = 66
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
        BarcodeType = bcEAN13
        Borders.Width = 0
        Caption = '0123456789'
        Orientation = boBottomToTop
        Ratio = 2.250000000000000000
        Visible = False
      end
      object RLBarraVar: TRLImage
        Left = 249
        Top = 98
        Width = 50
        Height = 101
      end
    end
  end
end
