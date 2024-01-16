object FrmConfiguracoes: TFrmConfiguracoes
  Left = 289
  Top = 156
  Caption = 'Configura'#231#245'es'
  ClientHeight = 399
  ClientWidth = 643
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'helvetica'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 68
    Height = 14
    Caption = 'Ip computador'
  end
  object Label6: TLabel
    Left = 184
    Top = 8
    Width = 39
    Height = 14
    Caption = 'Balan'#231'a'
  end
  object Label11: TLabel
    Left = 352
    Top = 8
    Width = 53
    Height = 14
    Caption = 'Sequencial'
  end
  object Label12: TLabel
    Left = 352
    Top = 50
    Width = 159
    Height = 14
    Caption = 'Faixa de altera'#231#227'o de data (dias)'
  end
  object Label7: TLabel
    Left = 184
    Top = 50
    Width = 125
    Height = 14
    Caption = '% Diferen'#231'a no peso livre'
  end
  object Label2: TLabel
    Left = 16
    Top = 50
    Width = 97
    Height = 14
    Caption = '% Redu'#231#227'o balan'#231'a'
  end
  object Label3: TLabel
    Left = 16
    Top = 98
    Width = 82
    Height = 14
    Caption = 'Porta impressora'
  end
  object Label8: TLabel
    Left = 184
    Top = 98
    Width = 66
    Height = 14
    Caption = 'Porta balan'#231'a'
  end
  object Label13: TLabel
    Left = 352
    Top = 98
    Width = 121
    Height = 14
    Caption = 'Indica'#231#227'o de estabilidade'
  end
  object Label14: TLabel
    Left = 352
    Top = 146
    Width = 61
    Height = 14
    Caption = 'Restri'#231#227'o 02'
  end
  object Label9: TLabel
    Left = 184
    Top = 146
    Width = 61
    Height = 14
    Caption = 'Restri'#231#227'o 01'
  end
  object Label4: TLabel
    Left = 16
    Top = 146
    Width = 123
    Height = 14
    Caption = 'Indica'#231#227'o de instabilidade'
  end
  object Label5: TLabel
    Left = 16
    Top = 194
    Width = 61
    Height = 14
    Caption = 'Restri'#231#227'o 03'
  end
  object Label10: TLabel
    Left = 184
    Top = 194
    Width = 140
    Height = 14
    Caption = 'Tempo - integra'#231'ao (minutos)'
  end
  object Label22: TLabel
    Left = 521
    Top = 8
    Width = 82
    Height = 14
    Caption = 'Sequencial Local'
  end
  object Label23: TLabel
    Left = 522
    Top = 50
    Width = 97
    Height = 14
    Caption = 'Sequencial Servidor'
  end
  object Panel1: TPanel
    Left = 0
    Top = 358
    Width = 643
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 357
    ExplicitWidth = 639
    object btnFechar: TButton
      Left = 458
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btnFecharClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 24
    Width = 157
    Height = 22
    TabStop = False
    Color = 16766894
    DataField = 'IPB_IP'
    DataSource = dtsConfiguracoes
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit6: TDBEdit
    Left = 184
    Top = 24
    Width = 157
    Height = 22
    TabStop = False
    Color = 16766894
    DataField = 'IPB_BALANCA'
    DataSource = dtsConfiguracoes
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit11: TDBEdit
    Left = 352
    Top = 24
    Width = 157
    Height = 22
    DataField = 'IPB_SEQUENCIAL'
    DataSource = dtsConfiguracoes
    MaxLength = 5
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 66
    Width = 157
    Height = 22
    DataField = 'IPB_PERCENT_REDU_BALANC'
    DataSource = dtsConfiguracoes
    TabOrder = 4
  end
  object DBEdit7: TDBEdit
    Left = 184
    Top = 66
    Width = 157
    Height = 22
    DataField = 'IPB_PERCENT_PESO_LIVRE'
    DataSource = dtsConfiguracoes
    TabOrder = 5
  end
  object DBEdit12: TDBEdit
    Left = 352
    Top = 66
    Width = 157
    Height = 22
    DataField = 'IPB_FAIXA_DATA_ALTERACAO'
    DataSource = dtsConfiguracoes
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 114
    Width = 157
    Height = 22
    DataField = 'IPB_PORTA_IMPRESSORA'
    DataSource = dtsConfiguracoes
    TabOrder = 7
  end
  object DBEdit8: TDBEdit
    Left = 184
    Top = 114
    Width = 157
    Height = 22
    DataField = 'IPB_PORTA_BALANCA'
    DataSource = dtsConfiguracoes
    TabOrder = 8
  end
  object DBEdit13: TDBEdit
    Left = 352
    Top = 114
    Width = 157
    Height = 22
    DataField = 'IPB_BALANCA_ESTAVEL'
    DataSource = dtsConfiguracoes
    TabOrder = 9
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 162
    Width = 157
    Height = 22
    DataField = 'IPB_BALANCA_INSTAVEL'
    DataSource = dtsConfiguracoes
    TabOrder = 10
  end
  object DBEdit9: TDBEdit
    Left = 184
    Top = 162
    Width = 157
    Height = 22
    DataField = 'IPB_BALANCA_REST_01'
    DataSource = dtsConfiguracoes
    TabOrder = 11
  end
  object DBEdit14: TDBEdit
    Left = 352
    Top = 162
    Width = 157
    Height = 22
    DataField = 'IPB_BALANCA_REST_02'
    DataSource = dtsConfiguracoes
    TabOrder = 12
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 210
    Width = 157
    Height = 22
    DataField = 'IPB_BALANCA_REST_03'
    DataSource = dtsConfiguracoes
    TabOrder = 13
  end
  object DBEdit10: TDBEdit
    Left = 184
    Top = 210
    Width = 157
    Height = 22
    DataField = 'IPB_TEMPO_INTEGRACAO'
    DataSource = dtsConfiguracoes
    TabOrder = 14
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 237
    Width = 513
    Height = 105
    Caption = 'Porta Balan'#231'a '
    TabOrder = 15
    object Label15: TLabel
      Left = 11
      Top = 16
      Width = 50
      Height = 14
      Caption = 'Baud Rate'
    end
    object Label16: TLabel
      Left = 73
      Top = 16
      Width = 43
      Height = 14
      Caption = 'Data Bits'
    end
    object Parity: TLabel
      Left = 135
      Top = 16
      Width = 27
      Height = 14
      Caption = 'Parity'
    end
    object Label17: TLabel
      Left = 207
      Top = 16
      Width = 43
      Height = 14
      Caption = 'Stop Bits'
    end
    object Label18: TLabel
      Left = 279
      Top = 16
      Width = 61
      Height = 14
      Caption = 'Flow Control'
    end
    object Label19: TLabel
      Left = 11
      Top = 58
      Width = 100
      Height = 14
      Caption = 'Tam. String Completa'
    end
    object Label20: TLabel
      Left = 123
      Top = 58
      Width = 99
      Height = 14
      Caption = 'Posic Inicial Str Peso'
    end
    object Label21: TLabel
      Left = 230
      Top = 58
      Width = 80
      Height = 14
      Caption = 'Tam. String Peso'
    end
    object edt_BaudRate: TEdit
      Left = 11
      Top = 32
      Width = 55
      Height = 22
      TabOrder = 0
      Text = '9600'
    end
    object edt_Databits: TEdit
      Left = 73
      Top = 32
      Width = 55
      Height = 22
      TabOrder = 1
      Text = '8'
    end
    object Cmb_Paridade: TComboBox
      Left = 135
      Top = 32
      Width = 65
      Height = 22
      ItemIndex = 0
      TabOrder = 2
      Text = 'NONE'
      Items.Strings = (
        'NONE'
        'EVEN'
        'MARK'
        'ODD'
        'SPACE')
    end
    object cmb_StopBits: TComboBox
      Left = 207
      Top = 32
      Width = 65
      Height = 22
      ItemIndex = 0
      TabOrder = 3
      Text = 'sb1BITS'
      Items.Strings = (
        'sb1BITS'
        'sb1HALFBITS'
        'sb2BITS')
    end
    object cmb_FlowControl: TComboBox
      Left = 279
      Top = 32
      Width = 65
      Height = 22
      ItemIndex = 0
      TabOrder = 4
      Text = 'sfNONE'
      Items.Strings = (
        'sfNONE'
        'sfXONXOF')
    end
    object edt_TamStrCompleta: TEdit
      Left = 12
      Top = 73
      Width = 106
      Height = 22
      TabOrder = 5
    end
    object edt_PosIniStr: TEdit
      Left = 124
      Top = 73
      Width = 98
      Height = 22
      TabOrder = 6
    end
    object edt_TamString: TEdit
      Left = 232
      Top = 73
      Width = 78
      Height = 22
      TabOrder = 7
    end
    object btnSalvarIni: TButton
      Left = 342
      Top = 68
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 8
      OnClick = btnSalvarIniClick
    end
  end
  object btnSalvar: TButton
    Left = 354
    Top = 205
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 16
    OnClick = btnSalvarClick
  end
  object Btn_Exportar: TButton
    Left = 434
    Top = 205
    Width = 81
    Height = 25
    Hint = 'Exportar Dados Producao'
    Caption = 'Exportar Dados'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
    OnClick = Btn_ExportarClick
  end
  object DBEdit15: TDBEdit
    Left = 521
    Top = 24
    Width = 80
    Height = 22
    Color = clSilver
    DataField = 'MAIORVALOR'
    DataSource = Ds_SeqLocal
    Enabled = False
    ReadOnly = True
    TabOrder = 18
  end
  object edt_MaxServer: TDBEdit
    Left = 521
    Top = 66
    Width = 80
    Height = 22
    Color = clSilver
    DataField = 'MAIOR_VALOR'
    DataSource = Ds_SeqServer
    Enabled = False
    ReadOnly = True
    TabOrder = 19
  end
  object Button1: TButton
    Left = 521
    Top = 96
    Width = 92
    Height = 25
    Caption = 'Analisar Registros'
    TabOrder = 20
    OnClick = Button1Click
  end
  object dtsConfiguracoes: TDataSource
    DataSet = DmPrincipal.cdsIpBalanca
    OnDataChange = dtsConfiguracoesDataChange
    Left = 368
    Top = 200
  end
  object Ds_SeqLocal: TDataSource
    DataSet = DmPrincipal.CDSSeqLocal
    Left = 584
    Top = 64
  end
  object Ds_SeqServer: TDataSource
    DataSet = DmPrincipal.Qry_SeqServer
    Left = 575
    Top = 23
  end
end
