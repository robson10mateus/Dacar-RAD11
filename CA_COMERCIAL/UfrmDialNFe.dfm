object frmDialNFe: TfrmDialNFe
  Left = 319
  Top = 220
  Width = 417
  Height = 158
  HorzScrollBar.Range = 413
  VertScrollBar.Range = 135
  ActiveControl = edtNumCarga
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Nota Fiscal Eletr'#244'nica - TXT'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 11
    Top = 54
    Width = 53
    Height = 15
    Caption = 'N'#186' Carga:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 97
    Width = 413
    Height = 38
    Align = alBottom
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    ExplicitTop = 120
    ExplicitWidth = 417
    object btnOK: TBitBtn
      Left = 199
      Top = 5
      Width = 85
      Height = 28
      Enabled = False
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
    object btnCan: TBitBtn
      Left = 290
      Top = 5
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
  object chkCon: TCheckBox
    Left = 236
    Top = 22
    Width = 177
    Height = 31
    Caption = 'Gerar em Conting'#234'ncia ?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtNumCarga: TEdit
    Left = 73
    Top = 45
    Width = 146
    Height = 23
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = edtNumCargaChange
    OnKeyPress = edtNumCargaKeyPress
  end
  object chkAmb: TCheckBox
    Left = 236
    Top = 66
    Width = 172
    Height = 31
    Caption = 'Ambiente de Produ'#231#227'o ?'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 3
  end
end
