object FrmRegAtual: TFrmRegAtual
  Left = 629
  Top = 199
  Caption = 'ATEN'#199#195'O!'
  ClientHeight = 235
  ClientWidth = 432
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'helvetica'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 432
    Height = 235
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 440
    ExplicitHeight = 240
    object Label1: TLabel
      Left = 46
      Top = 51
      Width = 351
      Height = 22
      Caption = 'Aguarde atualiza'#231#227'o do registro atual.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'helvetica'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PB1: TProgressBar
      Left = 56
      Top = 144
      Width = 313
      Height = 18
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 368
    Top = 192
  end
end
