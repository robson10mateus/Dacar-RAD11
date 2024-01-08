object FrmGeraVarejo: TFrmGeraVarejo
  Left = 638
  Top = 146
  Width = 512
  Height = 219
  VertScrollBar.Range = 162
  ActiveControl = BtnSIM
  BorderStyle = bsDialog
  Caption = 'Gera Varejo'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 496
    Height = 162
    Align = alTop
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 512
    object lblTexto: TLabel
      Left = 157
      Top = 48
      Width = 218
      Height = 15
      Alignment = taRightJustify
      Caption = 'Confirma gerar o Varejo com o Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblPedido: TLabel
      Left = 380
      Top = 45
      Width = 42
      Height = 15
      Caption = '123456'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 103
      Width = 68
      Height = 15
      Caption = 'Para a data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 364
      Top = 103
      Width = 7
      Height = 15
      Caption = '?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_Unidade: TLabel
      Left = 68
      Top = 22
      Width = 33
      Height = 15
      Caption = 'Loja : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtData: TMaskEdit
      Left = 240
      Top = 97
      Width = 116
      Height = 32
      EditMask = '!00/00/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 19
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 162
    Width = 496
    Height = 18
    Align = alClient
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 512
    ExplicitHeight = 57
    object BtnSIM: TBitBtn
      Left = 101
      Top = 17
      Width = 75
      Height = 25
      Caption = '&Sim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 16
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      Kind = bkYes
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BtnSIMClick
    end
    object BitBtn2: TBitBtn
      Left = 336
      Top = 17
      Width = 75
      Height = 25
      Caption = '&N'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 16
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      Kind = bkNo
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object QrVarMoviFinan: TOraQuery
    KeyFields = 'id_var_movifinan'
    KeySequence = 'SMART.SEQCA_VAR_MOVIFINAN'
    SQLInsert.Strings = (
      'INSERT INTO &Schema.ca_var_movifinan&Datalink'
      
        '  (EMPRESA, FILIAL, ID_VAR_MOVIFINAN, ID_CAIXA, DT_MOVIMENTO, DE' +
        'B_CRED, VALOR, SALDO, ID_VAR_HISTORICO, FORMA_PAGTO, ID_USUARIO,' +
        ' ID_PEDIVEND, FL_STATUS)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_VAR_MOVIFINAN, :ID_CAIXA, :DT_MOVIMENT' +
        'O, :DEB_CRED, :VALOR, :SALDO, :ID_VAR_HISTORICO, :FORMA_PAGTO, :' +
        'ID_USUARIO, :ID_PEDIVEND, :FL_STATUS)')
    SQLDelete.Strings = (
      'DELETE FROM &Schema.ca_var_movifinan&Datalink'
      'WHERE'
      '  ID_VAR_MOVIFINAN = :ID_VAR_MOVIFINAN')
    SQLUpdate.Strings = (
      'UPDATE &Schema.ca_var_movifinan&Datalink'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  ID_VAR_MOVIFINAN = :ID_VAR_MOVIFINAN,'
      '  ID_CAIXA = :ID_CAIXA,'
      '  DT_MOVIMENTO = :DT_MOVIMENTO,'
      '  DEB_CRED = :DEB_CRED,'
      '  VALOR = :VALOR,'
      '  SALDO = :SALDO,'
      '  ID_VAR_HISTORICO = :ID_VAR_HISTORICO,'
      '  FORMA_PAGTO = :FORMA_PAGTO,'
      '  ID_USUARIO = :ID_USUARIO,'
      '  ID_PEDIVEND = :ID_PEDIVEND,'
      '  FL_STATUS = :FL_STATUS'
      'WHERE'
      '  ID_VAR_MOVIFINAN = :OLD_ID_VAR_MOVIFINAN')
    SQLLock.Strings = (
      'SELECT * FROM &Schema.ca_var_movifinan&Datalink'
      'WHERE'
      '  ID_VAR_MOVIFINAN = :ID_VAR_MOVIFINAN'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_VAR_MOVIFINAN = :ID_VAR_MOVIFINAN')
    LocalUpdate = True
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'select '
      '  empresa,'
      '  filial,'
      '  id_var_movifinan,'
      '  id_caixa,'
      '  dt_movimento,'
      '  deb_cred,'
      '  valor,'
      '  saldo,'
      '  id_var_historico,'
      '  forma_pagto,'
      '  id_usuario,      '
      '  id_pedivend,'
      '  fl_status'
      'from '
      '  &Schema.ca_var_movifinan&Datalink'
      'where id_pedivend = :Vid_pedivend  ')
    CachedUpdates = True
    Left = 29
    Top = 119
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Vid_pedivend'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'Schema'
      end
      item
        Name = 'Datalink'
      end>
    object QrVarMoviFinanEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object QrVarMoviFinanFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object QrVarMoviFinanID_VAR_MOVIFINAN: TFloatField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_VAR_MOVIFINAN'
      Required = True
    end
    object QrVarMoviFinanID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
    end
    object QrVarMoviFinanDT_MOVIMENTO: TDateTimeField
      FieldName = 'DT_MOVIMENTO'
    end
    object QrVarMoviFinanDEB_CRED: TStringField
      FieldName = 'DEB_CRED'
      Size = 1
    end
    object QrVarMoviFinanVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object QrVarMoviFinanSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object QrVarMoviFinanID_VAR_HISTORICO: TFloatField
      FieldName = 'ID_VAR_HISTORICO'
    end
    object QrVarMoviFinanFORMA_PAGTO: TStringField
      FieldName = 'FORMA_PAGTO'
      Size = 1
    end
    object QrVarMoviFinanID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object QrVarMoviFinanID_PEDIVEND: TFloatField
      FieldName = 'ID_PEDIVEND'
    end
    object QrVarMoviFinanFL_STATUS: TStringField
      FieldName = 'FL_STATUS'
      Size = 1
    end
  end
  object Qrytemp: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'select sysdate from dual')
    Left = 142
    Top = 119
  end
  object QrEstoque: TOraQuery
    KeyFields = 'ID_VAR_ESTOQUE'
    KeySequence = 'SMART.SEQCA_VAR_ESTOQUE'
    SQLInsert.Strings = (
      'INSERT INTO CA_VAR_ESTOQUE '
      
        '  (EMPRESA, FILIAL, ID_VAR_ESTOQUE, ID_PRODMATEEMBA, PACOTES, KG' +
        ', PR_UNITKG, PR_UNITPACOTE, DT_CADASTRO, DT_ULTSAIDA, PERAJUSTEP' +
        'RE, FL_ATIVO)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_VAR_ESTOQUE, :ID_PRODMATEEMBA, :PACOTE' +
        'S, :KG, :PR_UNITKG, :PR_UNITPACOTE, :DT_CADASTRO, :DT_ULTSAIDA, ' +
        ':PERAJUSTEPRE, :FL_ATIVO)')
    SQLDelete.Strings = (
      'DELETE FROM CA_VAR_ESTOQUE'
      'WHERE'
      '  ID_VAR_ESTOQUE = :ID_VAR_ESTOQUE')
    SQLUpdate.Strings = (
      'UPDATE CA_VAR_ESTOQUE'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  ID_VAR_ESTOQUE = :ID_VAR_ESTOQUE,'
      '  ID_PRODMATEEMBA = :ID_PRODMATEEMBA,'
      '  PACOTES = :PACOTES,'
      '  KG = :KG,'
      '  PR_UNITKG = :PR_UNITKG,'
      '  PR_UNITPACOTE = :PR_UNITPACOTE,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  DT_ULTSAIDA = :DT_ULTSAIDA,'
      '  PERAJUSTEPRE = :PERAJUSTEPRE,'
      '  FL_ATIVO = :FL_ATIVO'
      'WHERE'
      '  ID_VAR_ESTOQUE = :OLD_ID_VAR_ESTOQUE')
    SQLLock.Strings = (
      'SELECT * FROM CA_VAR_ESTOQUE'
      'WHERE'
      '  ID_VAR_ESTOQUE = :ID_VAR_ESTOQUE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_VAR_ESTOQUE = :ID_VAR_ESTOQUE')
    LocalUpdate = True
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT               '
      '  EMPRESA ,'
      '  FILIAL ,'
      '  ID_VAR_ESTOQUE,'
      '  ID_PRODMATEEMBA,'
      '  PACOTES,'
      '  KG,'
      '  PR_UNITKG,'
      '  PR_UNITPACOTE,'
      '  DT_CADASTRO,'
      '  DT_ULTSAIDA,'
      '  PERAJUSTEPRE,'
      '  FL_ATIVO '
      'FROM   '
      ' CA_VAR_ESTOQUE '
      'WHERE ID_PRODMATEEMBA = :VID_PRODMATEEMBA              ')
    CachedUpdates = True
    Left = 262
    Top = 119
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VID_PRODMATEEMBA'
        Value = nil
      end>
    object QrEstoqueEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object QrEstoqueFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object QrEstoqueID_VAR_ESTOQUE: TFloatField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_VAR_ESTOQUE'
      Required = True
    end
    object QrEstoqueID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
    object QrEstoquePACOTES: TIntegerField
      FieldName = 'PACOTES'
    end
    object QrEstoqueKG: TFloatField
      FieldName = 'KG'
    end
    object QrEstoquePR_UNITKG: TFloatField
      FieldName = 'PR_UNITKG'
    end
    object QrEstoquePR_UNITPACOTE: TFloatField
      FieldName = 'PR_UNITPACOTE'
    end
    object QrEstoqueDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
    end
    object QrEstoqueDT_ULTSAIDA: TDateTimeField
      FieldName = 'DT_ULTSAIDA'
    end
    object QrEstoquePERAJUSTEPRE: TFloatField
      FieldName = 'PERAJUSTEPRE'
    end
    object QrEstoqueFL_ATIVO: TStringField
      FieldName = 'FL_ATIVO'
      Size = 1
    end
  end
end
