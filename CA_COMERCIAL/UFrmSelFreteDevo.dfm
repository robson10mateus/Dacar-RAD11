object FrmSelFreteDevo: TFrmSelFreteDevo
  Left = 225
  Top = 120
  ActiveControl = DTIni
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Frete das Devolu'#231#245'es'
  ClientHeight = 334
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 399
    Height = 334
    Align = alClient
    BevelWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 395
    ExplicitHeight = 314
    object Label1: TLabel
      Left = 38
      Top = 56
      Width = 68
      Height = 15
      Caption = 'Data Inicial: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 45
      Top = 96
      Width = 61
      Height = 15
      Caption = 'Data Final: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 20
      Top = 150
      Width = 84
      Height = 15
      Caption = 'Transportador:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 58
      Top = 234
      Width = 181
      Height = 15
      Caption = 'C'#243'digo do colaborador pg. frete:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DTIni: TEdit
      Left = 125
      Top = 52
      Width = 98
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DtFim: TEdit
      Left = 124
      Top = 92
      Width = 98
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 105
      Top = 295
      Width = 75
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 265
      Top = 295
      Width = 75
      Height = 25
      Caption = 'Cancela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn2Click
    end
    object DcbFor: TDBLookupComboBox
      Left = 121
      Top = 180
      Width = 268
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'ID_FORNECEDOR'
      ListField = 'NM_FORNECEDOR'
      ListSource = DSFor
      ParentFont = False
      TabOrder = 3
      OnExit = DcbForExit
    end
    object EdCodFor: TEdit
      Left = 57
      Top = 180
      Width = 57
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = EdCodForExit
    end
    object EdCodCol: TEdit
      Left = 282
      Top = 228
      Width = 104
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object RGSubTotal: TRadioGroup
      Left = 257
      Top = 42
      Width = 130
      Height = 105
      Caption = 'Sub-total por:'
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Transportador'
        'Colaborador')
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
  end
  object QrFor: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  FORNECEDOR.ID_FORNECEDOR,'
      '  FORNECEDOR.NM_FORNECEDOR'
      'FROM'
      '  FORNECEDOR'
      'Order by FORNECEDOR.NM_FORNECEDOR ')
    Left = 328
  end
  object DSFor: TOraDataSource
    DataSet = QrFor
    Left = 360
  end
end
