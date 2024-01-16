object uFrmConfiguracoes: TuFrmConfiguracoes
  Left = 841
  Top = 247
  Caption = 'Configura'#231#245'es'
  ClientHeight = 283
  ClientWidth = 509
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'helvetica'
  Font.Style = []
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
  object Panel1: TPanel
    Left = 0
    Top = 242
    Width = 509
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 247
    ExplicitWidth = 517
    object btnSalvar: TButton
      Left = 338
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnFechar: TButton
      Left = 434
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = btnFecharClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 24
    Width = 157
    Height = 21
    TabStop = False
    Color = clBackground
    DataField = 'IPB_IP'
    DataSource = dtsConfiguracoes
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit6: TDBEdit
    Left = 184
    Top = 24
    Width = 157
    Height = 21
    TabStop = False
    Color = clBackground
    DataField = 'IPB_BALANCA'
    DataSource = dtsConfiguracoes
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit11: TDBEdit
    Left = 352
    Top = 24
    Width = 157
    Height = 21
    DataField = 'IPB_SEQUENCIAL'
    DataSource = dtsConfiguracoes
    MaxLength = 5
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 66
    Width = 157
    Height = 21
    DataField = 'IPB_PERCENT_REDU_BALANC'
    DataSource = dtsConfiguracoes
    TabOrder = 4
  end
  object DBEdit7: TDBEdit
    Left = 184
    Top = 66
    Width = 157
    Height = 21
    DataField = 'IPB_PERCENT_PESO_LIVRE'
    DataSource = dtsConfiguracoes
    TabOrder = 5
  end
  object DBEdit12: TDBEdit
    Left = 352
    Top = 66
    Width = 157
    Height = 21
    DataField = 'IPB_FAIXA_DATA_ALTERACAO'
    DataSource = dtsConfiguracoes
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 114
    Width = 157
    Height = 21
    DataField = 'IPB_PORTA_IMPRESSORA'
    DataSource = dtsConfiguracoes
    TabOrder = 7
  end
  object DBEdit8: TDBEdit
    Left = 184
    Top = 114
    Width = 157
    Height = 21
    DataField = 'IPB_PORTA_BALANCA'
    DataSource = dtsConfiguracoes
    TabOrder = 8
  end
  object DBEdit13: TDBEdit
    Left = 352
    Top = 114
    Width = 157
    Height = 21
    DataField = 'IPB_BALANCA_ESTAVEL'
    DataSource = dtsConfiguracoes
    TabOrder = 9
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 162
    Width = 157
    Height = 21
    DataField = 'IPB_BALANCA_INSTAVEL'
    DataSource = dtsConfiguracoes
    TabOrder = 10
  end
  object DBEdit9: TDBEdit
    Left = 184
    Top = 162
    Width = 157
    Height = 21
    DataField = 'IPB_BALANCA_REST_01'
    DataSource = dtsConfiguracoes
    TabOrder = 11
  end
  object DBEdit14: TDBEdit
    Left = 352
    Top = 162
    Width = 157
    Height = 21
    DataField = 'IPB_BALANCA_REST_02'
    DataSource = dtsConfiguracoes
    TabOrder = 12
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 210
    Width = 157
    Height = 21
    DataField = 'IPB_BALANCA_REST_03'
    DataSource = dtsConfiguracoes
    TabOrder = 13
  end
  object DBEdit10: TDBEdit
    Left = 184
    Top = 210
    Width = 157
    Height = 21
    DataField = 'IPB_TEMPO_INTEGRACAO'
    DataSource = dtsConfiguracoes
    TabOrder = 14
  end
  object dtsConfiguracoes: TDataSource
    DataSet = DmPrincipal.cdsLogReImpressao
    OnDataChange = dtsConfiguracoesDataChange
    Left = 368
    Top = 200
  end
end
