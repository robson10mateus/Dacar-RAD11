object FrmSelRelDoa: TFrmSelRelDoa
  Left = 452
  Top = 217
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Doa'#231#227'o'
  ClientHeight = 379
  ClientWidth = 407
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 407
    Height = 379
    Align = alClient
    BevelWidth = 3
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 77
      Top = 44
      Width = 115
      Height = 15
      Caption = 'Data Entrega Inicial: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 82
      Top = 84
      Width = 108
      Height = 15
      Caption = 'Data Entrega Final: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 31
      Top = 225
      Width = 49
      Height = 15
      Caption = 'Clientes:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DTIni: TEdit
      Left = 214
      Top = 40
      Width = 100
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
      Left = 215
      Top = 80
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
      Left = 56
      Top = 296
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
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 272
      Top = 296
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
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object RGTipoPedi: TRadioGroup
      Left = 122
      Top = 130
      Width = 134
      Height = 72
      Caption = 'Tipo de Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Doa'#231#227'o'
        'Bonifica'#231#227'o')
      ParentFont = False
      TabOrder = 6
    end
    object DcbCliente: TDBLookupComboBox
      Left = 117
      Top = 247
      Width = 279
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'ID_CLIENTE'
      ListField = 'NM_CLIENTE'
      ListSource = DSCliente
      ParentFont = False
      TabOrder = 3
      OnExit = DcbClienteExit
    end
    object CBCliente: TCheckBox
      Left = 30
      Top = 247
      Width = 18
      Height = 22
      TabOrder = 5
    end
    object EdCodCli: TEdit
      Left = 53
      Top = 248
      Width = 57
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnExit = EdCodCliExit
    end
  end
  object QrCliente: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  CLIENTE.ID_CLIENTE,'
      '  CLIENTE.NM_CLIENTE'
      'FROM'
      '  CLIENTE'
      'Order by CLIENTE.NM_CLIENTE ')
    Left = 224
  end
  object DSCliente: TOraDataSource
    DataSet = QrCliente
    Left = 256
  end
end
