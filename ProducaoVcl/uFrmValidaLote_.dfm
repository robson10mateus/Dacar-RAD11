object FrmValidaLote_: TFrmValidaLote_
  Left = 508
  Top = 409
  Width = 388
  Height = 137
  Caption = 'Dias de Validade e Lote de Exporta'#231#227'o'
  Color = clBackground

  Font.Color = clText
  Font.Height = -11
  Font.Name = 'helvetica'
  Font.Style = []

  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PnValidaLote: TPanel
    Left = 3
    Top = 2
    Width = 375
    Height = 100
    BevelWidth = 3
    TabOrder = 0
    object Label11: TLabel
      Left = 230
      Top = 12
      Width = 93
      Height = 13
      Caption = 'Lote de Exporta'#231#227'o'
    end
    object Label12: TLabel
      Left = 50
      Top = 12
      Width = 80
      Height = 13
      Caption = 'Dias de Validade'
    end
    object EdLote: TEdit
      Left = 230
      Top = 27
      Width = 94
      Height = 21
      TabOrder = 0
    end
    object BtAceitarValidaLote: TBitBtn
      Left = 15
      Top = 60
      Width = 220
      Height = 25
      Caption = 'Aceitar Dias Validade e Lote'

      Font.Color = clText
      Font.Height = -11
      Font.Name = 'helvetica'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Aceita_validacao_valores
    end
    object BtFecharValidaLote: TBitBtn
      Left = 286
      Top = 60
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = Fechar_ValidaLote
    end
    object EdValidade: TSpinEdit
      Left = 50
      Top = 27
      Width = 82
      Height = 22
      MaxValue = 999
      MinValue = 0
      TabOrder = 3
      Value = 0
    end
  end
end
