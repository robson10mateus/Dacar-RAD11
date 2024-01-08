object FrmSelLoteIntegrado: TFrmSelLoteIntegrado
  Left = 434
  Top = 246
  Width = 288
  Height = 172
  Caption = 'Lote Integrado'
  Color = clBackground
  PixelsPerInch = 96
  TextHeight = 13

  object dbg_Lote: TDBGrid
    Left = 0
    Top = 0
    Width = 288
    Height = 172
    Align = alClient
    ReadOnly = True
    TabOrder = 0
    TitleFont.Color = clBlack
    TitleFont.Height = 11
    TitleFont.Name = 'helvetica'
    TitleFont.Pitch = fpVariable
    TitleFont.Style = []
    TitleFont.Weight = 40
  end
  object Qr_Lote: TOraQuery
    Left = 93
    Top = 66
  end
  object Ds_Lote: TDataSource
    DataSet = Qr_Lote
    Left = 135
    Top = 66
  end
end
