object FrmDialBanco: TFrmDialBanco
  Left = 407
  Top = 289
  Width = 351
  Height = 164
  HorzScrollBar.Range = 287
  VertScrollBar.Range = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecione a conta'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 64
    Top = 39
    Width = 33
    Height = 15
    Caption = 'Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 84
    Width = 335
    Height = 41
    Align = alBottom
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 123
    ExplicitWidth = 351
    object BitBtn1: TBitBtn
      Left = 150
      Top = 6
      Width = 85
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 250
      Top = 6
      Width = 85
      Height = 28
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 64
    Top = 54
    Width = 223
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'ID_CONTA'
    ListField = 'NM_CONTA'
    ListSource = FrmPedVenda.DSConta
    ParentFont = False
    TabOrder = 1
  end
end
