object FrmValidaLote: TFrmValidaLote
  Left = 511
  Top = 359
  Caption = 'Dias de Validade'
  ClientHeight = 98
  ClientWidth = 235
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'helvetica'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 14
  object PnValidaLote: TPanel
    Left = 3
    Top = 2
    Width = 238
    Height = 100
    BevelWidth = 3
    TabOrder = 0
    object Label12: TLabel
      Left = 80
      Top = 11
      Width = 80
      Height = 14
      Caption = 'Dias de Validade'
    end
    object BtAceitarValidaLote: TBitBtn
      Left = 15
      Top = 60
      Width = 120
      Height = 25
      Caption = 'Aceitar Validade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'helvetica'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Aceita_validacao_valores
    end
    object BtFecharValidaLote: TBitBtn
      Left = 150
      Top = 60
      Width = 70
      Height = 25
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = Fechar_ValidaLote
    end
    object EdValidade: TSpinEdit
      Left = 80
      Top = 26
      Width = 82
      Height = 22
      MaxValue = 999
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
  end
end
