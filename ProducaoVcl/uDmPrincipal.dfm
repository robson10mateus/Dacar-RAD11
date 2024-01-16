object DmPrincipal: TDmPrincipal
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 708
  Width = 1178
  object TCPEscolhe: TIdTCPClient
    ConnectTimeout = 0
    Host = '10.0.5.3'
    Port = 60000
    ReadTimeout = 1000
    Left = 42
    Top = 241
  end
  object TCPImprime: TIdTCPClient
    ConnectTimeout = 0
    Host = '10.0.5.3'
    Port = 61000
    ReadTimeout = 1000
    Left = 44
    Top = 294
  end
  object Icmp1: TIdIcmpClient
    Host = '192.168.0.250'
    ReceiveTimeout = 1000
    Port = 1521
    Protocol = 1
    ProtocolIPv6 = 58
    OnReply = Icmp1Reply
    Left = 44
    Top = 344
  end
  object CnxOracle: TOraSession
    Options.Direct = True
    Username = 'smart'
    Server = '192.168.0.6:1521:orcl'
    Connected = True
    LoginPrompt = False
    Left = 533
    Top = 22
    EncryptedPassword = '8FFF86FF87FF96FF8CFF'
  end
  object qryPesq: TOraQuery
    Session = CnxOracle
    SQL.Strings = (
      'SELECT TO_CHAR(SYSDATE,'#39'DD/MM/YYYY'#39') as DatAtual FROM dual')
    Left = 537
    Top = 98
    object qryPesqDATATUAL: TStringField
      FieldName = 'DATATUAL'
      Size = 10
    end
  end
  object qryOraProduto: TOraQuery
    Session = CnxOracle
    SQL.Strings = (
      'SELECT'
      '  A.ID_PRODMATEEMBA,'
      '  UPPER(A.NM_PRODMATEEMBA) AS NM_PRODMATEEMBA,'
      '  UPPER(A.NM_PRODREDUMATEEMBA) AS NM_PRODREDUMATEEMBA,'
      '  NVL(A.QN_CAPAPADRMATEEMBA, 0) AS QN_CAPAPADRMATEEMBA,'
      '  NVL(A.QN_CAPAMEDIMATEEMBA, 0) AS QN_CAPAMEDIMATEEMBA,'
      '  NVL(E.QN_TARAEMBAPROD, 0) AS QN_TARAEMBAPROD,'
      '  A.FL_TIPOEXPEMATEEMBA,'
      '  NVL(A.FL_ATIVMATEEMBA, '#39'N'#39') AS FL_ATIVMATEEMBA,'
      '  A.FL_EXPORTA,'
      '  A.FL_PADRAO,'
      '  B.ID_MATERIAL,'
      '  UPPER(B.NM_MATERIAL) AS NM_MATERIAL,'
      '  C.ID_EMBALAGEM,'
      '  UPPER(C.NM_EMBALAGEM) AS NM_EMBALAGEM,'
      '  D.ID_MATEALMO,'
      '  A.QN_PERC_PESOPADR,'
      '  A.FL_ETIQVAREJO'
      'FROM'
      '  MATERIAL_EMBALAGEM A,'
      '  MATERIAL B,'
      '  EMBALAGEM C,'
      '  MATERIAL_ALMOXARIFADO D,'
      '  MATERIAL_EMBALAGEM_COMPLEMENTO E'
      'WHERE'
      '  A.ID_MATERIAL = B.ID_MATERIAL'
      '  AND A.ID_EMBALAGEM = C.ID_EMBALAGEM'
      '  AND A.ID_MATERIAL = D.ID_MATERIAL'
      '  AND A.ID_EMBALAGEM = D.ID_EMBALAGEM'
      '  AND A.ID_MATEEMBA = E.ID_MATEEMBA'
      '  AND D.ID_ALMOXARIFADO = 1'
      '  and A.ID_PRODMATEEMBA like '#39'___'#39)
    FetchAll = True
    Left = 537
    Top = 147
    object qryOraProdutoID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
    object qryOraProdutoNM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
    object qryOraProdutoNM_PRODREDUMATEEMBA: TStringField
      FieldName = 'NM_PRODREDUMATEEMBA'
      Size = 15
    end
    object qryOraProdutoQN_CAPAPADRMATEEMBA: TFloatField
      FieldName = 'QN_CAPAPADRMATEEMBA'
    end
    object qryOraProdutoQN_CAPAMEDIMATEEMBA: TFloatField
      FieldName = 'QN_CAPAMEDIMATEEMBA'
    end
    object qryOraProdutoQN_TARAEMBAPROD: TFloatField
      FieldName = 'QN_TARAEMBAPROD'
    end
    object qryOraProdutoFL_TIPOEXPEMATEEMBA: TStringField
      FieldName = 'FL_TIPOEXPEMATEEMBA'
      Required = True
      Size = 2
    end
    object qryOraProdutoFL_ATIVMATEEMBA: TStringField
      FieldName = 'FL_ATIVMATEEMBA'
      Required = True
      Size = 1
    end
    object qryOraProdutoFL_EXPORTA: TStringField
      FieldName = 'FL_EXPORTA'
      Size = 1
    end
    object qryOraProdutoFL_PADRAO: TStringField
      FieldName = 'FL_PADRAO'
      Size = 1
    end
    object qryOraProdutoID_MATERIAL: TFloatField
      FieldName = 'ID_MATERIAL'
      Required = True
    end
    object qryOraProdutoNM_MATERIAL: TStringField
      FieldName = 'NM_MATERIAL'
      Required = True
      Size = 50
    end
    object qryOraProdutoID_EMBALAGEM: TFloatField
      FieldName = 'ID_EMBALAGEM'
      Required = True
    end
    object qryOraProdutoNM_EMBALAGEM: TStringField
      FieldName = 'NM_EMBALAGEM'
      Required = True
      Size = 40
    end
    object qryOraProdutoID_MATEALMO: TFloatField
      FieldName = 'ID_MATEALMO'
      Required = True
    end
    object qryOraProdutoQN_PERC_PESOPADR: TFloatField
      FieldName = 'QN_PERC_PESOPADR'
    end
    object qryOraProdutoFL_ETIQVAREJO: TStringField
      FieldName = 'FL_ETIQVAREJO'
      Size = 1
    end
  end
  object qryOraIpBalanca: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO P_IP_BALANCA'
      
        '  (IPB_IP, IPB_BALANCA, IPB_SEQUENCIAL, IPB_PERCENT_REDU_BALANC,' +
        ' IPB_PERCENT_PESO_LIVRE, IPB_FAIXA_DATA_ALTERACAO, IPB_PORTA_IMP' +
        'RESSORA, IPB_PORTA_BALANCA, IPB_BALANCA_ESTAVEL, IPB_BALANCA_INS' +
        'TAVEL, IPB_BALANCA_REST_01, IPB_BALANCA_REST_02, IPB_BALANCA_RES' +
        'T_03, IPB_TEMPO_INTEGRACAO, IPB_SEQTUNEL, IPB_ULTIMADT)'
      'VALUES'
      
        '  (:IPB_IP, :IPB_BALANCA, :IPB_SEQUENCIAL, :IPB_PERCENT_REDU_BAL' +
        'ANC, :IPB_PERCENT_PESO_LIVRE, :IPB_FAIXA_DATA_ALTERACAO, :IPB_PO' +
        'RTA_IMPRESSORA, :IPB_PORTA_BALANCA, :IPB_BALANCA_ESTAVEL, :IPB_B' +
        'ALANCA_INSTAVEL, :IPB_BALANCA_REST_01, :IPB_BALANCA_REST_02, :IP' +
        'B_BALANCA_REST_03, :IPB_TEMPO_INTEGRACAO, :IPB_SEQTUNEL, :IPB_UL' +
        'TIMADT)')
    SQLDelete.Strings = (
      'DELETE FROM P_IP_BALANCA'
      'WHERE'
      '  IPB_IP = :IPB_IP')
    SQLUpdate.Strings = (
      'UPDATE P_IP_BALANCA'
      'SET'
      '  IPB_IP = :IPB_IP,'
      '  IPB_BALANCA = :IPB_BALANCA,'
      '  IPB_SEQUENCIAL = :IPB_SEQUENCIAL,'
      '  IPB_PERCENT_REDU_BALANC = :IPB_PERCENT_REDU_BALANC,'
      '  IPB_PERCENT_PESO_LIVRE = :IPB_PERCENT_PESO_LIVRE,'
      '  IPB_FAIXA_DATA_ALTERACAO = :IPB_FAIXA_DATA_ALTERACAO,'
      '  IPB_PORTA_IMPRESSORA = :IPB_PORTA_IMPRESSORA,'
      '  IPB_PORTA_BALANCA = :IPB_PORTA_BALANCA,'
      '  IPB_BALANCA_ESTAVEL = :IPB_BALANCA_ESTAVEL,'
      '  IPB_BALANCA_INSTAVEL = :IPB_BALANCA_INSTAVEL,'
      '  IPB_BALANCA_REST_01 = :IPB_BALANCA_REST_01,'
      '  IPB_BALANCA_REST_02 = :IPB_BALANCA_REST_02,'
      '  IPB_BALANCA_REST_03 = :IPB_BALANCA_REST_03,'
      '  IPB_TEMPO_INTEGRACAO = :IPB_TEMPO_INTEGRACAO,'
      '  IPB_SEQTUNEL = :IPB_SEQTUNEL,'
      '  IPB_ULTIMADT = :IPB_ULTIMADT'
      'WHERE'
      '  IPB_IP = :OLD_IPB_IP')
    SQLRefresh.Strings = (
      'WHERE'
      '  IPB_IP = :IPB_IP')
    Session = CnxOracle
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  P_IP_BALANCA'
      'WHERE'
      '  IPB_IP = :IPB_IP'
      '')
    FetchAll = True
    Left = 539
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'IPB_IP'
        ParamType = ptInput
        Value = nil
      end>
    object qryOraIpBalancaIPB_IP: TStringField
      FieldName = 'IPB_IP'
      Required = True
      Size = 15
    end
    object qryOraIpBalancaIPB_BALANCA: TFloatField
      FieldName = 'IPB_BALANCA'
      Required = True
    end
    object qryOraIpBalancaIPB_SEQUENCIAL: TFloatField
      FieldName = 'IPB_SEQUENCIAL'
      Required = True
    end
    object qryOraIpBalancaIPB_PERCENT_REDU_BALANC: TFloatField
      FieldName = 'IPB_PERCENT_REDU_BALANC'
      Required = True
    end
    object qryOraIpBalancaIPB_PERCENT_PESO_LIVRE: TFloatField
      FieldName = 'IPB_PERCENT_PESO_LIVRE'
      Required = True
    end
    object qryOraIpBalancaIPB_FAIXA_DATA_ALTERACAO: TFloatField
      FieldName = 'IPB_FAIXA_DATA_ALTERACAO'
    end
    object qryOraIpBalancaIPB_PORTA_IMPRESSORA: TStringField
      FieldName = 'IPB_PORTA_IMPRESSORA'
      Required = True
      Size = 4
    end
    object qryOraIpBalancaIPB_PORTA_BALANCA: TStringField
      FieldName = 'IPB_PORTA_BALANCA'
      Required = True
      Size = 4
    end
    object qryOraIpBalancaIPB_BALANCA_ESTAVEL: TStringField
      FieldName = 'IPB_BALANCA_ESTAVEL'
      Required = True
      Size = 1
    end
    object qryOraIpBalancaIPB_BALANCA_INSTAVEL: TStringField
      FieldName = 'IPB_BALANCA_INSTAVEL'
      Required = True
      Size = 1
    end
    object qryOraIpBalancaIPB_BALANCA_REST_01: TStringField
      FieldName = 'IPB_BALANCA_REST_01'
      Required = True
      Size = 1
    end
    object qryOraIpBalancaIPB_BALANCA_REST_02: TStringField
      FieldName = 'IPB_BALANCA_REST_02'
      Required = True
      Size = 1
    end
    object qryOraIpBalancaIPB_BALANCA_REST_03: TFloatField
      FieldName = 'IPB_BALANCA_REST_03'
      Required = True
    end
    object qryOraIpBalancaIPB_TEMPO_INTEGRACAO: TFloatField
      FieldName = 'IPB_TEMPO_INTEGRACAO'
    end
    object qryOraIpBalancaIPB_SEQTUNEL: TFloatField
      FieldName = 'IPB_SEQTUNEL'
    end
    object qryOraIpBalancaIPB_ULTIMADT: TDateTimeField
      FieldName = 'IPB_ULTIMADT'
    end
    object qryOraIpBalancaIPB_DTREFESEQ: TDateTimeField
      FieldName = 'IPB_DTREFESEQ'
    end
  end
  object qryOraProducao: TOraQuery
    Session = CnxOracle
    FetchAll = True
    CachedUpdates = True
    Left = 539
    Top = 253
  end
  object qryOraLogReImpressao: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO PRODUCAO_REGISTRO'
      
        '  (EMPRESA, FILIAL, ID_REGIPROD, ID_IDENREGIPROD, ID_MATERIAL, I' +
        'D_EMBALAGEM, ID_ALMOXARIFADO, ID_MATEALMO, ID_PRODMATEEMBA, DT_R' +
        'EGIPROD, DT_PADRREGIPROD, DT_BALAREGIPROD, ID_BALANCA, QN_PESOPA' +
        'DRREGIPROD, QN_PESOLIQUREGIPROD, FL_STATREGIPROD, FX_REGIPROD, Q' +
        'N_TARAEMBAREGIPROD, ID_TRANREGIPROD, ID_PEDIVEND)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_REGIPROD, :ID_IDENREGIPROD, :ID_MATERI' +
        'AL, :ID_EMBALAGEM, :ID_ALMOXARIFADO, :ID_MATEALMO, :ID_PRODMATEE' +
        'MBA, :DT_REGIPROD, :DT_PADRREGIPROD, :DT_BALAREGIPROD, :ID_BALAN' +
        'CA, :QN_PESOPADRREGIPROD, :QN_PESOLIQUREGIPROD, :FL_STATREGIPROD' +
        ', :FX_REGIPROD, :QN_TARAEMBAREGIPROD, :ID_TRANREGIPROD, :ID_PEDI' +
        'VEND)')
    SQLDelete.Strings = (
      'DELETE FROM PRODUCAO_REGISTRO'
      'WHERE'
      '  EMPRESA = :EMPRESA and'
      '  FILIAL = :FILIAL and'
      '  ID_REGIPROD = :ID_REGIPROD')
    SQLUpdate.Strings = (
      'UPDATE PRODUCAO_REGISTRO'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  ID_REGIPROD = :ID_REGIPROD,'
      '  ID_IDENREGIPROD = :ID_IDENREGIPROD,'
      '  ID_MATERIAL = :ID_MATERIAL,'
      '  ID_EMBALAGEM = :ID_EMBALAGEM,'
      '  ID_ALMOXARIFADO = :ID_ALMOXARIFADO,'
      '  ID_MATEALMO = :ID_MATEALMO,'
      '  ID_PRODMATEEMBA = :ID_PRODMATEEMBA,'
      '  DT_REGIPROD = :DT_REGIPROD,'
      '  DT_PADRREGIPROD = :DT_PADRREGIPROD,'
      '  DT_BALAREGIPROD = :DT_BALAREGIPROD,'
      '  ID_BALANCA = :ID_BALANCA,'
      '  QN_PESOPADRREGIPROD = :QN_PESOPADRREGIPROD,'
      '  QN_PESOLIQUREGIPROD = :QN_PESOLIQUREGIPROD,'
      '  FL_STATREGIPROD = :FL_STATREGIPROD,'
      '  FX_REGIPROD = :FX_REGIPROD,'
      '  QN_TARAEMBAREGIPROD = :QN_TARAEMBAREGIPROD,'
      '  ID_TRANREGIPROD = :ID_TRANREGIPROD,'
      '  ID_PEDIVEND = :ID_PEDIVEND'
      'WHERE'
      '  EMPRESA = :OLD_EMPRESA and'
      '  FILIAL = :OLD_FILIAL and'
      '  ID_REGIPROD = :OLD_ID_REGIPROD')
    SQLLock.Strings = (
      'SELECT * FROM PRODUCAO_REGISTRO'
      'WHERE'
      '  EMPRESA = :EMPRESA and'
      '  FILIAL = :FILIAL and'
      '  ID_REGIPROD = :ID_REGIPROD'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  A.EMPRESA = :EMPRESA and'
      '  A.FILIAL = :FILIAL and'
      '  A.ID_REGIPROD = :ID_REGIPROD')
    Session = CnxOracle
    FetchAll = True
    Left = 537
    Top = 361
  end
  object QrProducao: TOraQuery
    Session = CnxOracle
    SQL.Strings = (
      'SELECT'
      '  PRODUCAO_REGISTRO.ID_IDENREGIPROD,'
      '  PRODUCAO_REGISTRO.ID_PRODMATEEMBA'
      'FROM'
      '  PRODUCAO_REGISTRO')
    Left = 537
    Top = 412
  end
  object QrEtiq: TOraQuery
    Session = CnxOracle
    SQL.Strings = (
      'SELECT * FROM CA_ETIQUETA WHERE FL_ATIVA = '#39'S'#39)
    Left = 542
    Top = 576
    object QrEtiqEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object QrEtiqFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object QrEtiqID_LETQ: TFloatField
      FieldName = 'ID_LETQ'
      Required = True
    end
    object QrEtiqID_ETIQUETA: TStringField
      FieldName = 'ID_ETIQUETA'
      Size = 10
    end
    object QrEtiqID_USUCADA: TFloatField
      FieldName = 'ID_USUCADA'
    end
    object QrEtiqID_USUALTE: TFloatField
      FieldName = 'ID_USUALTE'
    end
    object QrEtiqID_USULIBE: TFloatField
      FieldName = 'ID_USULIBE'
    end
    object QrEtiqID_BALANCA: TFloatField
      FieldName = 'ID_BALANCA'
    end
    object QrEtiqDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
    end
    object QrEtiqDT_ALTERACAO: TDateTimeField
      FieldName = 'DT_ALTERACAO'
    end
    object QrEtiqDT_FINALIZADA: TDateTimeField
      FieldName = 'DT_FINALIZADA'
    end
    object QrEtiqDT_PREVISAO: TDateTimeField
      FieldName = 'DT_PREVISAO'
    end
    object QrEtiqDT_APARTIR: TDateTimeField
      FieldName = 'DT_APARTIR'
    end
    object QrEtiqDT_LIBERACAO: TDateTimeField
      FieldName = 'DT_LIBERACAO'
    end
    object QrEtiqDT_IMPORTACAO: TDateTimeField
      FieldName = 'DT_IMPORTACAO'
    end
    object QrEtiqDIPOA: TStringField
      FieldName = 'DIPOA'
      Size = 4
    end
    object QrEtiqLOTEEXPO: TStringField
      FieldName = 'LOTEEXPO'
      Size = 15
    end
    object QrEtiqNM_PRODUTO: TStringField
      FieldName = 'NM_PRODUTO'
      Size = 40
    end
    object QrEtiqLIBERADAPOR: TStringField
      FieldName = 'LIBERADAPOR'
      Size = 30
    end
    object QrEtiqOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object QrEtiqLOCALIMAGEM: TStringField
      FieldName = 'LOCALIMAGEM'
      Size = 240
    end
    object QrEtiqFL_ATIVA: TStringField
      FieldName = 'FL_ATIVA'
      Size = 1
    end
    object QrEtiqFL_ALTERADA: TStringField
      FieldName = 'FL_ALTERADA'
      Size = 1
    end
    object QrEtiqFL_LIBERADA: TStringField
      FieldName = 'FL_LIBERADA'
      Size = 1
    end
    object QrEtiqFL_ALTERANDO: TStringField
      FieldName = 'FL_ALTERANDO'
      Size = 1
    end
    object QrEtiqIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      BlobType = ftOraBlob
    end
    object QrEtiqVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 4
    end
    object QrEtiqDIAS_VALIDADE: TFloatField
      FieldName = 'DIAS_VALIDADE'
    end
    object QrEtiqID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
    object QrEtiqFORMATO_DT_VENCTO: TStringField
      FieldName = 'FORMATO_DT_VENCTO'
      Size = 14
    end
  end
  object QrEtiqAtual: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CA_ETIQEXPORT_ATUAL'
      
        '  (ID_ETIQEXPORT, DT_INICIO, ID_PRODMATEEMBA, ID_USUARIO, ID_BAL' +
        'ANCA)'
      'VALUES'
      
        '  (:ID_ETIQEXPORT, :DT_INICIO, :ID_PRODMATEEMBA, :ID_USUARIO, :I' +
        'D_BALANCA)')
    SQLDelete.Strings = (
      'DELETE FROM CA_ETIQEXPORT_ATUAL'
      'WHERE'
      '  ID_ETIQEXPORT = :ID_ETIQEXPORT')
    SQLUpdate.Strings = (
      'UPDATE CA_ETIQEXPORT_ATUAL'
      'SET'
      '  ID_ETIQEXPORT = :ID_ETIQEXPORT,'
      '  DT_INICIO = :DT_INICIO,'
      '  ID_PRODMATEEMBA = :ID_PRODMATEEMBA,'
      '  ID_USUARIO = :ID_USUARIO,'
      '  ID_BALANCA = :ID_BALANCA'
      'WHERE'
      '  ID_ETIQEXPORT = :OLD_ID_ETIQEXPORT')
    SQLLock.Strings = (
      'SELECT * FROM CA_ETIQEXPORT_ATUAL'
      'WHERE'
      '  ID_ETIQEXPORT = :ID_ETIQEXPORT'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_ETIQEXPORT = :ID_ETIQEXPORT')
    Session = CnxOracle
    SQL.Strings = (
      'SELECT'
      '  CA_ETIQEXPORT_ATUAL.ID_ETIQEXPORT,'
      '  CA_ETIQEXPORT_ATUAL.DT_INICIO,'
      '  CA_ETIQEXPORT_ATUAL.ID_PRODMATEEMBA,'
      '  CA_ETIQEXPORT_ATUAL.ID_USUARIO,'
      '  CA_ETIQEXPORT_ATUAL.ID_BALANCA,'
      '  CA_ETIQEXPORT_ATUAL.ARQUIMAGEM'
      'FROM'
      '  CA_ETIQEXPORT_ATUAL'
      'WHERE'
      '  CA_ETIQEXPORT_ATUAL.ID_ETIQEXPORT = :ID_ETIQEXPORT AND'
      '  CA_ETIQEXPORT_ATUAL.ID_PRODMATEEMBA = :ID_PRODMATEEMBA AND'
      '  CA_ETIQEXPORT_ATUAL.ID_BALANCA = :ID_BALANCA')
    Left = 537
    Top = 465
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_ETIQEXPORT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID_PRODMATEEMBA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID_BALANCA'
        Value = nil
      end>
  end
  object qryTemp: TOraQuery
    Session = CnxOracle
    SQL.Strings = (
      'SELECT SYSDATE FROM DUAL')
    Left = 541
    Top = 519
  end
  object CnxFireBird: TSQLConnection
    ConnectionName = 'Producao'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver280.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver280.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=localhost:C:\caasistemas\producao\BDPRODUCAO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 43
    Top = 94
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 149
    Top = 26
    object cdsProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object cdsProdutoPRD_DESCRICAO: TStringField
      FieldName = 'PRD_DESCRICAO'
      Size = 40
    end
    object cdsProdutoPRD_DESC_REDUZIDA: TStringField
      FieldName = 'PRD_DESC_REDUZIDA'
      Size = 15
    end
    object cdsProdutoPRD_PESO_PADRAO_MEDIO: TFMTBCDField
      FieldName = 'PRD_PESO_PADRAO_MEDIO'
      Precision = 18
      Size = 6
    end
    object cdsProdutoPRD_TARA: TFMTBCDField
      FieldName = 'PRD_TARA'
      Precision = 18
      Size = 6
    end
    object cdsProdutoPRD_TP_EXPEDICAO: TStringField
      FieldName = 'PRD_TP_EXPEDICAO'
      Size = 2
    end
    object cdsProdutoPRD_ATIVO: TStringField
      FieldName = 'PRD_ATIVO'
      Size = 1
    end
    object cdsProdutoPRD_EXPORTADO: TStringField
      FieldName = 'PRD_EXPORTADO'
      Size = 1
    end
    object cdsProdutoPRD_PADRAO: TStringField
      FieldName = 'PRD_PADRAO'
      Size = 1
    end
    object cdsProdutoMAT_CODIGO: TFMTBCDField
      FieldName = 'MAT_CODIGO'
      Precision = 18
      Size = 2
    end
    object cdsProdutoMAT_DESCRICAO: TStringField
      FieldName = 'MAT_DESCRICAO'
      Size = 40
    end
    object cdsProdutoEMB_CODIGO: TFMTBCDField
      FieldName = 'EMB_CODIGO'
      Precision = 18
      Size = 2
    end
    object cdsProdutoEMB_DESCRICAO: TStringField
      FieldName = 'EMB_DESCRICAO'
      Size = 40
    end
    object cdsProdutoMTA_CODIGO: TIntegerField
      FieldName = 'MTA_CODIGO'
    end
    object cdsProdutoMAT_PERC_PESO_PADR: TFMTBCDField
      FieldName = 'MAT_PERC_PESO_PADR'
      Precision = 9
      Size = 2
    end
    object cdsProdutoFL_ETIQVAREJO: TStringField
      FieldName = 'FL_ETIQVAREJO'
      FixedChar = True
      Size = 1
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = qryProduto
    Left = 272
    Top = 22
  end
  object qryProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  P_PRODUTO')
    SQLConnection = CnxFireBird
    Left = 396
    Top = 19
    object qryProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object qryProdutoPRD_DESCRICAO: TStringField
      FieldName = 'PRD_DESCRICAO'
      Size = 40
    end
    object qryProdutoPRD_DESC_REDUZIDA: TStringField
      FieldName = 'PRD_DESC_REDUZIDA'
      Size = 15
    end
    object qryProdutoPRD_PESO_PADRAO_MEDIO: TFMTBCDField
      FieldName = 'PRD_PESO_PADRAO_MEDIO'
      Precision = 18
      Size = 6
    end
    object qryProdutoPRD_TARA: TFMTBCDField
      FieldName = 'PRD_TARA'
      Precision = 18
      Size = 6
    end
    object qryProdutoPRD_TP_EXPEDICAO: TStringField
      FieldName = 'PRD_TP_EXPEDICAO'
      Size = 2
    end
    object qryProdutoPRD_ATIVO: TStringField
      FieldName = 'PRD_ATIVO'
      Size = 1
    end
    object qryProdutoPRD_EXPORTADO: TStringField
      FieldName = 'PRD_EXPORTADO'
      Size = 1
    end
    object qryProdutoPRD_PADRAO: TStringField
      FieldName = 'PRD_PADRAO'
      Size = 1
    end
    object qryProdutoMAT_CODIGO: TFMTBCDField
      FieldName = 'MAT_CODIGO'
      Precision = 18
      Size = 2
    end
    object qryProdutoMAT_DESCRICAO: TStringField
      FieldName = 'MAT_DESCRICAO'
      Size = 40
    end
    object qryProdutoEMB_CODIGO: TFMTBCDField
      FieldName = 'EMB_CODIGO'
      Precision = 18
      Size = 2
    end
    object qryProdutoEMB_DESCRICAO: TStringField
      FieldName = 'EMB_DESCRICAO'
      Size = 40
    end
    object qryProdutoMTA_CODIGO: TIntegerField
      FieldName = 'MTA_CODIGO'
    end
    object qryProdutoMAT_PERC_PESO_PADR: TFMTBCDField
      FieldName = 'MAT_PERC_PESO_PADR'
      Precision = 9
      Size = 2
    end
    object qryProdutoFL_ETIQVAREJO: TStringField
      FieldName = 'FL_ETIQVAREJO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsIpBalanca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspIpBalanca'
    Left = 155
    Top = 94
    object cdsIpBalancaIPB_IP: TStringField
      FieldName = 'IPB_IP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object cdsIpBalancaIPB_BALANCA: TIntegerField
      FieldName = 'IPB_BALANCA'
      Required = True
    end
    object cdsIpBalancaIPB_SEQUENCIAL: TIntegerField
      FieldName = 'IPB_SEQUENCIAL'
      Required = True
    end
    object cdsIpBalancaIPB_PERCENT_REDU_BALANC: TFMTBCDField
      FieldName = 'IPB_PERCENT_REDU_BALANC'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsIpBalancaIPB_PERCENT_PESO_LIVRE: TFMTBCDField
      FieldName = 'IPB_PERCENT_PESO_LIVRE'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO: TIntegerField
      FieldName = 'IPB_FAIXA_DATA_ALTERACAO'
      Required = True
    end
    object cdsIpBalancaIPB_PORTA_IMPRESSORA: TStringField
      FieldName = 'IPB_PORTA_IMPRESSORA'
      Required = True
      Size = 4
    end
    object cdsIpBalancaIPB_PORTA_BALANCA: TStringField
      FieldName = 'IPB_PORTA_BALANCA'
      Required = True
      Size = 4
    end
    object cdsIpBalancaIPB_BALANCA_ESTAVEL: TStringField
      FieldName = 'IPB_BALANCA_ESTAVEL'
      Required = True
      Size = 1
    end
    object cdsIpBalancaIPB_BALANCA_INSTAVEL: TStringField
      FieldName = 'IPB_BALANCA_INSTAVEL'
      Required = True
      Size = 1
    end
    object cdsIpBalancaIPB_BALANCA_REST_01: TStringField
      FieldName = 'IPB_BALANCA_REST_01'
      Required = True
      Size = 1
    end
    object cdsIpBalancaIPB_BALANCA_REST_02: TStringField
      FieldName = 'IPB_BALANCA_REST_02'
      Required = True
      Size = 1
    end
    object cdsIpBalancaIPB_BALANCA_REST_03: TIntegerField
      FieldName = 'IPB_BALANCA_REST_03'
      Required = True
    end
    object cdsIpBalancaIPB_TEMPO_INTEGRACAO: TIntegerField
      FieldName = 'IPB_TEMPO_INTEGRACAO'
      Required = True
    end
    object cdsIpBalancaIPB_SEQTUNEL: TIntegerField
      FieldName = 'IPB_SEQTUNEL'
    end
    object cdsIpBalancaIPB_ULTIMADT: TDateField
      FieldName = 'IPB_ULTIMADT'
    end
    object cdsIpBalancaIPB_DTREFESEQ: TDateField
      FieldName = 'IPB_DTREFESEQ'
    end
  end
  object dspIpBalanca: TDataSetProvider
    DataSet = qryIpBalanca
    Left = 273
    Top = 94
  end
  object qryIpBalanca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  P_IP_BALANCA')
    SQLConnection = CnxFireBird
    Left = 397
    Top = 93
    object qryIpBalancaIPB_IP: TStringField
      FieldName = 'IPB_IP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object qryIpBalancaIPB_BALANCA: TIntegerField
      FieldName = 'IPB_BALANCA'
      Required = True
    end
    object qryIpBalancaIPB_SEQUENCIAL: TIntegerField
      FieldName = 'IPB_SEQUENCIAL'
      Required = True
    end
    object qryIpBalancaIPB_PERCENT_REDU_BALANC: TFMTBCDField
      FieldName = 'IPB_PERCENT_REDU_BALANC'
      Required = True
      Precision = 15
      Size = 2
    end
    object qryIpBalancaIPB_PERCENT_PESO_LIVRE: TFMTBCDField
      FieldName = 'IPB_PERCENT_PESO_LIVRE'
      Required = True
      Precision = 15
      Size = 2
    end
    object qryIpBalancaIPB_FAIXA_DATA_ALTERACAO: TIntegerField
      FieldName = 'IPB_FAIXA_DATA_ALTERACAO'
      Required = True
    end
    object qryIpBalancaIPB_PORTA_IMPRESSORA: TStringField
      FieldName = 'IPB_PORTA_IMPRESSORA'
      Required = True
      Size = 4
    end
    object qryIpBalancaIPB_PORTA_BALANCA: TStringField
      FieldName = 'IPB_PORTA_BALANCA'
      Required = True
      Size = 4
    end
    object qryIpBalancaIPB_BALANCA_ESTAVEL: TStringField
      FieldName = 'IPB_BALANCA_ESTAVEL'
      Required = True
      Size = 1
    end
    object qryIpBalancaIPB_BALANCA_INSTAVEL: TStringField
      FieldName = 'IPB_BALANCA_INSTAVEL'
      Required = True
      Size = 1
    end
    object qryIpBalancaIPB_BALANCA_REST_01: TStringField
      FieldName = 'IPB_BALANCA_REST_01'
      Required = True
      Size = 1
    end
    object qryIpBalancaIPB_BALANCA_REST_02: TStringField
      FieldName = 'IPB_BALANCA_REST_02'
      Required = True
      Size = 1
    end
    object qryIpBalancaIPB_BALANCA_REST_03: TIntegerField
      FieldName = 'IPB_BALANCA_REST_03'
      Required = True
    end
    object qryIpBalancaIPB_TEMPO_INTEGRACAO: TIntegerField
      FieldName = 'IPB_TEMPO_INTEGRACAO'
      Required = True
    end
    object qryIpBalancaIPB_SEQTUNEL: TIntegerField
      FieldName = 'IPB_SEQTUNEL'
    end
    object qryIpBalancaIPB_ULTIMADT: TDateField
      FieldName = 'IPB_ULTIMADT'
    end
    object qryIpBalancaIPB_DTREFESEQ: TDateField
      FieldName = 'IPB_DTREFESEQ'
    end
  end
  object cdsProducao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProducao'
    BeforePost = cdsProducaoBeforePost
    AfterApplyUpdates = cdsProducaoAfterApplyUpdates
    Left = 157
    Top = 141
    object cdsProducaoPRC_IDENTIFICACAO: TStringField
      FieldName = 'PRC_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 12
    end
    object cdsProducaoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object cdsProducaoPRC_DT_REGISTRO: TSQLTimeStampField
      FieldName = 'PRC_DT_REGISTRO'
    end
    object cdsProducaoPRC_DT_PADRAO: TSQLTimeStampField
      FieldName = 'PRC_DT_PADRAO'
    end
    object cdsProducaoPRC_DT_BALANCA: TSQLTimeStampField
      FieldName = 'PRC_DT_BALANCA'
    end
    object cdsProducaoPRC_BALANCA: TIntegerField
      FieldName = 'PRC_BALANCA'
    end
    object cdsProducaoPRC_PESO_PADRAO: TFMTBCDField
      FieldName = 'PRC_PESO_PADRAO'
      Precision = 15
      Size = 6
    end
    object cdsProducaoPRC_PESO_LIQUIDO: TFMTBCDField
      FieldName = 'PRC_PESO_LIQUIDO'
      Precision = 15
      Size = 6
    end
    object cdsProducaoPRC_TARA: TFMTBCDField
      FieldName = 'PRC_TARA'
      Precision = 15
      Size = 6
    end
    object cdsProducaoPRC_INTEGRADO: TStringField
      FieldName = 'PRC_INTEGRADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 1
    end
    object cdsProducaoPRC_DIGITO: TStringField
      FieldName = 'PRC_DIGITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object cdsProducaoPRC_CODBARRAS: TStringField
      FieldName = 'PRC_CODBARRAS'
      Size = 34
    end
    object cdsProducaoPRC_NUMBARRAS: TStringField
      FieldName = 'PRC_NUMBARRAS'
      Size = 40
    end
    object cdsProducaoLOTEEXPO: TStringField
      FieldName = 'LOTEEXPO'
      Size = 15
    end
    object cdsProducaoPRC_QTCAIXA: TStringField
      FieldKind = fkCalculated
      FieldName = 'PRC_QTCAIXA'
      Size = 5
      Calculated = True
    end
    object cdsProducaoPRC_CODIGO: TLargeintField
      FieldName = 'PRC_CODIGO'
    end
  end
  object dspProducao: TDataSetProvider
    DataSet = qryProducao
    OnUpdateError = dspProducaoUpdateError
    Left = 274
    Top = 145
  end
  object qryProducao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '    *'
      'FROM '
      '    P_PRODUCAO')
    SQLConnection = CnxFireBird
    Left = 398
    Top = 144
    object qryProducaoPRC_IDENTIFICACAO: TStringField
      FieldName = 'PRC_IDENTIFICACAO'
      Size = 12
    end
    object qryProducaoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object qryProducaoPRC_DT_REGISTRO: TSQLTimeStampField
      FieldName = 'PRC_DT_REGISTRO'
    end
    object qryProducaoPRC_DT_PADRAO: TSQLTimeStampField
      FieldName = 'PRC_DT_PADRAO'
    end
    object qryProducaoPRC_DT_BALANCA: TSQLTimeStampField
      FieldName = 'PRC_DT_BALANCA'
    end
    object qryProducaoPRC_BALANCA: TIntegerField
      FieldName = 'PRC_BALANCA'
    end
    object qryProducaoPRC_PESO_PADRAO: TFMTBCDField
      FieldName = 'PRC_PESO_PADRAO'
      Precision = 18
      Size = 6
    end
    object qryProducaoPRC_PESO_LIQUIDO: TFMTBCDField
      FieldName = 'PRC_PESO_LIQUIDO'
      Precision = 18
      Size = 6
    end
    object qryProducaoPRC_TARA: TFMTBCDField
      FieldName = 'PRC_TARA'
      Precision = 18
      Size = 6
    end
    object qryProducaoPRC_INTEGRADO: TStringField
      FieldName = 'PRC_INTEGRADO'
      Size = 1
    end
    object qryProducaoPRC_DIGITO: TStringField
      FieldName = 'PRC_DIGITO'
      Size = 2
    end
    object qryProducaoPRC_CODBARRAS: TStringField
      FieldName = 'PRC_CODBARRAS'
      Size = 34
    end
    object qryProducaoPRC_NUMBARRAS: TStringField
      FieldName = 'PRC_NUMBARRAS'
      Size = 40
    end
    object qryProducaoLOTEEXPO: TStringField
      FieldName = 'LOTEEXPO'
      Size = 15
    end
    object qryProducaoPRC_QTCAIXA: TStringField
      FieldName = 'PRC_QTCAIXA'
      Size = 5
    end
    object qryProducaoPRC_CODIGO: TLargeintField
      FieldName = 'PRC_CODIGO'
    end
  end
  object cdsProducaoX: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProducaoX'
    Left = 158
    Top = 193
    object cdsProducaoXPRC_IDENTIFICACAO: TStringField
      FieldName = 'PRC_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 12
    end
    object cdsProducaoXPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object cdsProducaoXPRC_DT_REGISTRO: TSQLTimeStampField
      FieldName = 'PRC_DT_REGISTRO'
    end
    object cdsProducaoXPRC_DT_PADRAO: TSQLTimeStampField
      FieldName = 'PRC_DT_PADRAO'
    end
    object cdsProducaoXPRC_DT_BALANCA: TSQLTimeStampField
      FieldName = 'PRC_DT_BALANCA'
    end
    object cdsProducaoXPRC_BALANCA: TIntegerField
      FieldName = 'PRC_BALANCA'
    end
    object cdsProducaoXPRC_PESO_PADRAO: TFMTBCDField
      FieldName = 'PRC_PESO_PADRAO'
      Precision = 15
      Size = 6
    end
    object cdsProducaoXPRC_PESO_LIQUIDO: TFMTBCDField
      FieldName = 'PRC_PESO_LIQUIDO'
      Precision = 15
      Size = 6
    end
    object cdsProducaoXPRC_TARA: TFMTBCDField
      FieldName = 'PRC_TARA'
      Precision = 15
      Size = 6
    end
    object cdsProducaoXPRC_INTEGRADO: TStringField
      FieldName = 'PRC_INTEGRADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 1
    end
    object cdsProducaoXPRC_DIGITO: TStringField
      FieldName = 'PRC_DIGITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object cdsProducaoXPRC_CODBARRAS: TStringField
      FieldName = 'PRC_CODBARRAS'
      Size = 34
    end
    object cdsProducaoXPRC_NUMBARRAS: TStringField
      FieldName = 'PRC_NUMBARRAS'
      Size = 40
    end
    object cdsProducaoXLOTEEXPO: TStringField
      FieldName = 'LOTEEXPO'
      Size = 15
    end
    object cdsProducaoXMAT_CODIGO: TFMTBCDField
      FieldName = 'MAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 15
      Size = 2
    end
    object cdsProducaoXEMB_CODIGO: TFMTBCDField
      FieldName = 'EMB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 15
      Size = 2
    end
    object cdsProducaoXMTA_CODIGO: TIntegerField
      FieldName = 'MTA_CODIGO'
    end
    object cdsProducaoXPRC_CODIGO: TLargeintField
      FieldName = 'PRC_CODIGO'
    end
  end
  object dspProducaoX: TDataSetProvider
    DataSet = qryProducaoX
    Left = 271
    Top = 195
  end
  object qryProducaoX: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  A.*,'
      '  B.MAT_CODIGO,'
      '  B.EMB_CODIGO,'
      '  B.MTA_CODIGO'
      'FROM'
      '  P_PRODUCAO A,'
      '  P_PRODUTO B'
      'WHERE'
      '  A.PRD_CODIGO = B.PRD_CODIGO'
      '  AND A.PRC_INTEGRADO IS NULL')
    SQLConnection = CnxFireBird
    Left = 397
    Top = 194
    object qryProducaoXPRC_IDENTIFICACAO: TStringField
      FieldName = 'PRC_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 12
    end
    object qryProducaoXPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object qryProducaoXPRC_DT_REGISTRO: TSQLTimeStampField
      FieldName = 'PRC_DT_REGISTRO'
    end
    object qryProducaoXPRC_DT_PADRAO: TSQLTimeStampField
      FieldName = 'PRC_DT_PADRAO'
    end
    object qryProducaoXPRC_DT_BALANCA: TSQLTimeStampField
      FieldName = 'PRC_DT_BALANCA'
    end
    object qryProducaoXPRC_BALANCA: TIntegerField
      FieldName = 'PRC_BALANCA'
    end
    object qryProducaoXPRC_PESO_PADRAO: TFMTBCDField
      FieldName = 'PRC_PESO_PADRAO'
      Precision = 15
      Size = 6
    end
    object qryProducaoXPRC_PESO_LIQUIDO: TFMTBCDField
      FieldName = 'PRC_PESO_LIQUIDO'
      Precision = 15
      Size = 6
    end
    object qryProducaoXPRC_TARA: TFMTBCDField
      FieldName = 'PRC_TARA'
      Precision = 15
      Size = 6
    end
    object qryProducaoXPRC_INTEGRADO: TStringField
      FieldName = 'PRC_INTEGRADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 1
    end
    object qryProducaoXPRC_DIGITO: TStringField
      FieldName = 'PRC_DIGITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object qryProducaoXPRC_CODBARRAS: TStringField
      FieldName = 'PRC_CODBARRAS'
      Size = 34
    end
    object qryProducaoXPRC_NUMBARRAS: TStringField
      FieldName = 'PRC_NUMBARRAS'
      Size = 40
    end
    object qryProducaoXLOTEEXPO: TStringField
      FieldName = 'LOTEEXPO'
      Size = 15
    end
    object qryProducaoXMAT_CODIGO: TFMTBCDField
      FieldName = 'MAT_CODIGO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object qryProducaoXEMB_CODIGO: TFMTBCDField
      FieldName = 'EMB_CODIGO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object qryProducaoXMTA_CODIGO: TIntegerField
      FieldName = 'MTA_CODIGO'
      ProviderFlags = []
    end
    object qryProducaoXPRC_CODIGO: TLargeintField
      FieldName = 'PRC_CODIGO'
    end
  end
  object cdsLogIntegracao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogIntegracao'
    Left = 158
    Top = 247
    object cdsLogIntegracaoLIT_CODIGO: TFMTBCDField
      FieldName = 'LIT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 15
      Size = 0
    end
    object cdsLogIntegracaoLIT_DT_INICIAL: TSQLTimeStampField
      FieldName = 'LIT_DT_INICIAL'
    end
    object cdsLogIntegracaoLIT_DT_FINAL: TSQLTimeStampField
      FieldName = 'LIT_DT_FINAL'
    end
    object cdsLogIntegracaoIPB_BALANCA: TIntegerField
      FieldName = 'IPB_BALANCA'
    end
  end
  object dspLogIntegracao: TDataSetProvider
    DataSet = qryLogIntegracao
    Left = 273
    Top = 247
  end
  object qryLogIntegracao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  P_LOG_INTEGRACAO'
      'ORDER BY'
      '  LIT_DT_INICIAL DESC')
    SQLConnection = CnxFireBird
    Left = 397
    Top = 246
    object qryLogIntegracaoLIT_CODIGO: TFMTBCDField
      FieldName = 'LIT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 15
      Size = 0
    end
    object qryLogIntegracaoLIT_DT_INICIAL: TSQLTimeStampField
      FieldName = 'LIT_DT_INICIAL'
    end
    object qryLogIntegracaoLIT_DT_FINAL: TSQLTimeStampField
      FieldName = 'LIT_DT_FINAL'
    end
    object qryLogIntegracaoIPB_BALANCA: TIntegerField
      FieldName = 'IPB_BALANCA'
    end
  end
  object cdsLogReImpressao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogReImpressao'
    Left = 158
    Top = 299
    object cdsLogReImpressaoLRI_BALANCA: TIntegerField
      FieldName = 'LRI_BALANCA'
    end
    object cdsLogReImpressaoLRI_DATA_HORA: TSQLTimeStampField
      FieldName = 'LRI_DATA_HORA'
    end
    object cdsLogReImpressaoLRI_IDENTIFICACAO: TStringField
      FieldName = 'LRI_IDENTIFICACAO'
      Size = 15
    end
    object cdsLogReImpressaoLRI_INTEGRADO: TStringField
      FieldName = 'LRI_INTEGRADO'
      Size = 1
    end
  end
  object dspLogReImpressao: TDataSetProvider
    DataSet = qryLogReImpressao
    Left = 273
    Top = 299
  end
  object qryLogReImpressao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  P_LOG_REIMPRESSAO'
      'ORDER BY'
      '  LRI_DATA_HORA DESC,'
      '  LRI_IDENTIFICACAO')
    SQLConnection = CnxFireBird
    Left = 397
    Top = 298
    object qryLogReImpressaoLRI_BALANCA: TIntegerField
      FieldName = 'LRI_BALANCA'
    end
    object qryLogReImpressaoLRI_DATA_HORA: TSQLTimeStampField
      FieldName = 'LRI_DATA_HORA'
    end
    object qryLogReImpressaoLRI_IDENTIFICACAO: TStringField
      FieldName = 'LRI_IDENTIFICACAO'
      Size = 15
    end
    object qryLogReImpressaoLRI_INTEGRADO: TStringField
      FieldName = 'LRI_INTEGRADO'
      Size = 1
    end
  end
  object cdsLogReImpressaoX: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogReImpressaoX'
    Left = 158
    Top = 353
    object cdsLogReImpressaoXLRI_BALANCA: TIntegerField
      FieldName = 'LRI_BALANCA'
    end
    object cdsLogReImpressaoXLRI_DATA_HORA: TSQLTimeStampField
      FieldName = 'LRI_DATA_HORA'
    end
    object cdsLogReImpressaoXLRI_IDENTIFICACAO: TStringField
      FieldName = 'LRI_IDENTIFICACAO'
      Size = 15
    end
    object cdsLogReImpressaoXLRI_INTEGRADO: TStringField
      FieldName = 'LRI_INTEGRADO'
      Size = 1
    end
  end
  object dspLogReImpressaoX: TDataSetProvider
    DataSet = qryLogReImpressaoX
    Left = 273
    Top = 352
  end
  object qryLogReImpressaoX: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  P_LOG_REIMPRESSAO'
      'WHERE'
      '  LRI_INTEGRADO IS NULL')
    SQLConnection = CnxFireBird
    Left = 397
    Top = 351
    object qryLogReImpressaoXLRI_BALANCA: TIntegerField
      FieldName = 'LRI_BALANCA'
    end
    object qryLogReImpressaoXLRI_DATA_HORA: TSQLTimeStampField
      FieldName = 'LRI_DATA_HORA'
    end
    object qryLogReImpressaoXLRI_IDENTIFICACAO: TStringField
      FieldName = 'LRI_IDENTIFICACAO'
      Size = 15
    end
    object qryLogReImpressaoXLRI_INTEGRADO: TStringField
      FieldName = 'LRI_INTEGRADO'
      Size = 1
    end
  end
  object CDSEtiqExport: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEtiqExport'
    Left = 158
    Top = 406
    object CDSEtiqExportDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object CDSEtiqExportDT_CADASTRO: TSQLTimeStampField
      FieldName = 'DT_CADASTRO'
    end
    object CDSEtiqExportID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 3
    end
    object CDSEtiqExportFL_ATIVA: TStringField
      FieldName = 'FL_ATIVA'
      Size = 1
    end
    object CDSEtiqExportID_USUCADA: TIntegerField
      FieldName = 'ID_USUCADA'
    end
    object CDSEtiqExportID_USUALTE: TIntegerField
      FieldName = 'ID_USUALTE'
    end
    object CDSEtiqExportDIPOA: TStringField
      FieldName = 'DIPOA'
      Size = 4
    end
    object CDSEtiqExportARQUIMAGEM: TStringField
      FieldName = 'ARQUIMAGEM'
      Size = 100
    end
    object CDSEtiqExportLOTEEXPO: TStringField
      FieldName = 'LOTEEXPO'
      Size = 15
    end
    object CDSEtiqExportDIAS_VALIDADE: TIntegerField
      FieldName = 'DIAS_VALIDADE'
    end
    object CDSEtiqExportDT_IMPORTACAO: TDateField
      FieldName = 'DT_IMPORTACAO'
    end
    object CDSEtiqExportID_ETIQUETA: TStringField
      FieldName = 'ID_ETIQUETA'
      Size = 10
    end
    object CDSEtiqExportFORMATO_DT_VENCTO: TStringField
      FieldName = 'FORMATO_DT_VENCTO'
      Size = 14
    end
    object CDSEtiqExportID_ETIQEXPORT: TLargeintField
      FieldName = 'ID_ETIQEXPORT'
      Required = True
    end
    object CDSEtiqExportID_BALANCA: TLargeintField
      FieldName = 'ID_BALANCA'
    end
  end
  object DSPEtiqExport: TDataSetProvider
    DataSet = QryEtiqExport
    Left = 273
    Top = 406
  end
  object QryEtiqExport: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '     *'
      'FROM'
      '  P_ETIQEXPORT'
      '')
    SQLConnection = CnxFireBird
    Left = 397
    Top = 405
    object QryEtiqExportDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object QryEtiqExportDT_CADASTRO: TSQLTimeStampField
      FieldName = 'DT_CADASTRO'
    end
    object QryEtiqExportID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 3
    end
    object QryEtiqExportFL_ATIVA: TStringField
      FieldName = 'FL_ATIVA'
      Size = 1
    end
    object QryEtiqExportID_USUCADA: TIntegerField
      FieldName = 'ID_USUCADA'
    end
    object QryEtiqExportID_USUALTE: TIntegerField
      FieldName = 'ID_USUALTE'
    end
    object QryEtiqExportDIPOA: TStringField
      FieldName = 'DIPOA'
      Size = 4
    end
    object QryEtiqExportARQUIMAGEM: TStringField
      FieldName = 'ARQUIMAGEM'
      Size = 100
    end
    object QryEtiqExportLOTEEXPO: TStringField
      FieldName = 'LOTEEXPO'
      Size = 15
    end
    object QryEtiqExportDIAS_VALIDADE: TIntegerField
      FieldName = 'DIAS_VALIDADE'
    end
    object QryEtiqExportDT_IMPORTACAO: TDateField
      FieldName = 'DT_IMPORTACAO'
    end
    object QryEtiqExportID_ETIQUETA: TStringField
      FieldName = 'ID_ETIQUETA'
      Size = 10
    end
    object QryEtiqExportFORMATO_DT_VENCTO: TStringField
      FieldName = 'FORMATO_DT_VENCTO'
      Size = 14
    end
    object QryEtiqExportID_ETIQEXPORT: TLargeintField
      FieldName = 'ID_ETIQEXPORT'
      Required = True
    end
    object QryEtiqExportID_BALANCA: TLargeintField
      FieldName = 'ID_BALANCA'
    end
  end
  object CDSUltiGrava: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSeqLocal'
    Left = 158
    Top = 460
    object CDSUltiGravaMAIORVALOR: TStringField
      FieldName = 'MAIORVALOR'
      Size = 12
    end
  end
  object DSPUltigrava: TDataSetProvider
    DataSet = QryUltimoGrava
    Left = 273
    Top = 459
  end
  object QryUltimoGrava: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT '
      '    MAX(PRC_IDENTIFICACAO)  AS MAIORVALOR'
      ' FROM'
      '   P_PRODUCAO')
    SQLConnection = CnxFireBird
    Left = 399
    Top = 458
    object QryUltimoGravaMAIORVALOR: TStringField
      FieldName = 'MAIORVALOR'
      Size = 12
    end
  end
  object qryLimpaProducao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'DELETE FROM  P_PRODUCAO'
      'WHERE PRC_DT_BALANCA < CURRENT_DATE -9')
    SQLConnection = CnxFireBird
    Left = 402
    Top = 553
  end
  object qryOraReImpressao: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO PRODUCAO_REGISTRO'
      
        '  (EMPRESA, FILIAL, ID_REGIPROD, ID_IDENREGIPROD, ID_MATERIAL, I' +
        'D_EMBALAGEM, ID_ALMOXARIFADO, ID_MATEALMO, ID_PRODMATEEMBA, DT_R' +
        'EGIPROD, DT_PADRREGIPROD, DT_BALAREGIPROD, ID_BALANCA, QN_PESOPA' +
        'DRREGIPROD, QN_PESOLIQUREGIPROD, FL_STATREGIPROD, FX_REGIPROD, Q' +
        'N_TARAEMBAREGIPROD, ID_TRANREGIPROD, ID_PEDIVEND)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_REGIPROD, :ID_IDENREGIPROD, :ID_MATERI' +
        'AL, :ID_EMBALAGEM, :ID_ALMOXARIFADO, :ID_MATEALMO, :ID_PRODMATEE' +
        'MBA, :DT_REGIPROD, :DT_PADRREGIPROD, :DT_BALAREGIPROD, :ID_BALAN' +
        'CA, :QN_PESOPADRREGIPROD, :QN_PESOLIQUREGIPROD, :FL_STATREGIPROD' +
        ', :FX_REGIPROD, :QN_TARAEMBAREGIPROD, :ID_TRANREGIPROD, :ID_PEDI' +
        'VEND)')
    SQLDelete.Strings = (
      'DELETE FROM PRODUCAO_REGISTRO'
      'WHERE'
      '  EMPRESA = :EMPRESA and'
      '  FILIAL = :FILIAL and'
      '  ID_REGIPROD = :ID_REGIPROD')
    SQLUpdate.Strings = (
      'UPDATE PRODUCAO_REGISTRO'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  ID_REGIPROD = :ID_REGIPROD,'
      '  ID_IDENREGIPROD = :ID_IDENREGIPROD,'
      '  ID_MATERIAL = :ID_MATERIAL,'
      '  ID_EMBALAGEM = :ID_EMBALAGEM,'
      '  ID_ALMOXARIFADO = :ID_ALMOXARIFADO,'
      '  ID_MATEALMO = :ID_MATEALMO,'
      '  ID_PRODMATEEMBA = :ID_PRODMATEEMBA,'
      '  DT_REGIPROD = :DT_REGIPROD,'
      '  DT_PADRREGIPROD = :DT_PADRREGIPROD,'
      '  DT_BALAREGIPROD = :DT_BALAREGIPROD,'
      '  ID_BALANCA = :ID_BALANCA,'
      '  QN_PESOPADRREGIPROD = :QN_PESOPADRREGIPROD,'
      '  QN_PESOLIQUREGIPROD = :QN_PESOLIQUREGIPROD,'
      '  FL_STATREGIPROD = :FL_STATREGIPROD,'
      '  FX_REGIPROD = :FX_REGIPROD,'
      '  QN_TARAEMBAREGIPROD = :QN_TARAEMBAREGIPROD,'
      '  ID_TRANREGIPROD = :ID_TRANREGIPROD,'
      '  ID_PEDIVEND = :ID_PEDIVEND'
      'WHERE'
      '  EMPRESA = :OLD_EMPRESA and'
      '  FILIAL = :OLD_FILIAL and'
      '  ID_REGIPROD = :OLD_ID_REGIPROD')
    SQLRefresh.Strings = (
      'WHERE'
      '  A.EMPRESA = :EMPRESA and'
      '  A.FILIAL = :FILIAL and'
      '  A.ID_REGIPROD = :ID_REGIPROD')
    Session = CnxOracle
    SQL.Strings = (
      'SELECT'
      '  A.ID_IDENREGIPROD,'
      '  A.ID_PRODMATEEMBA,'
      '  A.QN_PESOLIQUREGIPROD,'
      '  A.QN_PESOPADRREGIPROD,'
      '  A.QN_TARAEMBAREGIPROD,'
      '  A.DT_BALAREGIPROD,'
      '  B.FL_PADRAO,'
      '  B.NM_PRODREDUMATEEMBA,'
      '  A.DIGITOVER'
      'FROM'
      '  PRODUCAO_REGISTRO A,'
      '  MATERIAL_EMBALAGEM B'
      'WHERE'
      '  A.ID_PRODMATEEMBA = B.ID_PRODMATEEMBA'
      '  /*TROCA*/'
      'ORDER BY'
      '  A.ID_IDENREGIPROD,'
      '  A.ID_PRODMATEEMBA')
    FetchAll = True
    Left = 534
    Top = 305
    object qryOraReImpressaoID_IDENREGIPROD: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ID_IDENREGIPROD'
      Required = True
      Size = 12
    end
    object qryOraReImpressaoID_PRODMATEEMBA: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'ID_PRODMATEEMBA'
      Required = True
      Size = 5
    end
    object qryOraReImpressaoNM_PRODREDUMATEEMBA: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NM_PRODREDUMATEEMBA'
      Size = 15
    end
    object qryOraReImpressaoDT_BALAREGIPROD: TDateTimeField
      DisplayLabel = 'Dt. balan'#231'a'
      FieldName = 'DT_BALAREGIPROD'
      Required = True
      DisplayFormat = 'DD/MM/YY'
      EditMask = '!99/99/00;1;_'
    end
    object qryOraReImpressaoQN_PESOPADRREGIPROD: TFloatField
      DisplayLabel = 'Peso padr.'
      FieldName = 'QN_PESOPADRREGIPROD'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object qryOraReImpressaoQN_PESOLIQUREGIPROD: TFloatField
      DisplayLabel = 'Peso l'#237'q.'
      FieldName = 'QN_PESOLIQUREGIPROD'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object qryOraReImpressaoQN_TARAEMBAREGIPROD: TFloatField
      DisplayLabel = 'Tara'
      FieldName = 'QN_TARAEMBAREGIPROD'
      DisplayFormat = '#,##0.00'
    end
    object qryOraReImpressaoFL_PADRAO: TStringField
      FieldName = 'FL_PADRAO'
      Size = 1
    end
    object qryOraReImpressaoDIGITOVER: TStringField
      FieldName = 'DIGITOVER'
      Size = 2
    end
  end
  object qryReImpressao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  A.*,'
      '  B.PRD_DESC_REDUZIDA,'
      '  B.PRD_PADRAO'
      'FROM'
      '  P_PRODUCAO A,'
      '  P_PRODUTO B'
      'WHERE'
      '  A.PRD_CODIGO = B.PRD_CODIGO'
      '  AND PRC_CODIGO = (SELECT MAX(PRC_CODIGO) FROM P_PRODUCAO)')
    SQLConnection = CnxFireBird
    Left = 401
    Top = 515
    object qryReImpressaoPRC_CODIGO: TFMTBCDField
      FieldName = 'PRC_CODIGO'
      Precision = 15
      Size = 0
    end
    object qryReImpressaoPRC_IDENTIFICACAO: TStringField
      FieldName = 'PRC_IDENTIFICACAO'
      Size = 12
    end
    object qryReImpressaoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object qryReImpressaoPRC_DT_REGISTRO: TSQLTimeStampField
      FieldName = 'PRC_DT_REGISTRO'
    end
    object qryReImpressaoPRC_DT_PADRAO: TSQLTimeStampField
      FieldName = 'PRC_DT_PADRAO'
    end
    object qryReImpressaoPRC_DT_BALANCA: TSQLTimeStampField
      FieldName = 'PRC_DT_BALANCA'
    end
    object qryReImpressaoPRC_BALANCA: TIntegerField
      FieldName = 'PRC_BALANCA'
    end
    object qryReImpressaoPRC_PESO_PADRAO: TFMTBCDField
      FieldName = 'PRC_PESO_PADRAO'
      Precision = 18
      Size = 6
    end
    object qryReImpressaoPRC_PESO_LIQUIDO: TFMTBCDField
      FieldName = 'PRC_PESO_LIQUIDO'
      Precision = 18
      Size = 6
    end
    object qryReImpressaoPRC_TARA: TFMTBCDField
      FieldName = 'PRC_TARA'
      Precision = 18
      Size = 6
    end
    object qryReImpressaoPRC_INTEGRADO: TStringField
      FieldName = 'PRC_INTEGRADO'
      Size = 1
    end
    object qryReImpressaoPRC_DIGITO: TStringField
      FieldName = 'PRC_DIGITO'
      Size = 2
    end
    object qryReImpressaoPRC_CODBARRAS: TStringField
      FieldName = 'PRC_CODBARRAS'
      Size = 34
    end
    object qryReImpressaoPRC_NUMBARRAS: TStringField
      FieldName = 'PRC_NUMBARRAS'
      Size = 40
    end
    object qryReImpressaoLOTEEXPO: TStringField
      FieldName = 'LOTEEXPO'
      Size = 15
    end
    object qryReImpressaoPRD_DESC_REDUZIDA: TStringField
      FieldName = 'PRD_DESC_REDUZIDA'
      Size = 15
    end
    object qryReImpressaoPRD_PADRAO: TStringField
      FieldName = 'PRD_PADRAO'
      Size = 1
    end
  end
  object qry_SeqLocal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'IDENTIFICACAO'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT  Coalesce(Max(substring(a.prc_identificacao from 9 for 4)' +
        '),1) MAIORVALOR'
      'FROM P_PRODUCAO a'
      
        'WHERE substring(a.prc_identificacao from 1 for 8 ) = :IDENTIFICA' +
        'CAO')
    SQLConnection = CnxFireBird
    Left = 319
    Top = 562
    object qry_SeqLocalMAIORVALOR: TStringField
      FieldName = 'MAIORVALOR'
      ReadOnly = True
      Size = 12
    end
  end
  object DSPSeqLocal: TDataSetProvider
    DataSet = qry_SeqLocal
    Left = 233
    Top = 555
  end
  object CDSSeqLocal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'IDENTIFICACAO'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'DSPSeqLocal'
    Left = 150
    Top = 548
    object CDSSeqLocalMAIORVALOR: TStringField
      FieldName = 'MAIORVALOR'
      ReadOnly = True
      Size = 12
    end
  end
  object Qry_SeqServer: TOraQuery
    Session = CnxOracle
    SQL.Strings = (
      'SELECT MAX(SUBSTR(ID_IDENREGIPROD, 9,4)) MAIOR_VALOR '
      '  FROM PRODUCAO_REGISTRO'
      ' WHERE SUBSTR(ID_IDENREGIPROD, 1,8) = :IDENTIFICACAO')
    FetchAll = True
    CachedUpdates = True
    Left = 611
    Top = 581
    ParamData = <
      item
        DataType = ftString
        Name = 'IDENTIFICACAO'
        Value = nil
      end>
    object Qry_SeqServerMAIOR_VALOR: TStringField
      FieldName = 'MAIOR_VALOR'
      Size = 4
    end
  end
  object qryRecuperaProdTemp: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO P_PRODUCAO'
      
        '  (PRC_CODIGO, PRC_IDENTIFICACAO, PRD_CODIGO, PRC_DT_REGISTRO, P' +
        'RC_DT_PADRAO, PRC_DT_BALANCA, PRC_BALANCA, PRC_PESO_PADRAO, PRC_' +
        'PESO_LIQUIDO, PRC_TARA, PRC_DIGITO)'
      'VALUES'
      
        '  (:PRC_CODIGO, :PRC_IDENTIFICACAO, :PRD_CODIGO, :PRC_DT_REGISTR' +
        'O, :PRC_DT_PADRAO, :PRC_DT_BALANCA, :PRC_BALANCA, :PRC_PESO_PADR' +
        'AO, :PRC_PESO_LIQUIDO, :PRC_TARA, :PRC_DIGITO)')
    SQLDelete.Strings = (
      'DELETE FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    SQLUpdate.Strings = (
      'UPDATE P_PRODUCAO'
      'SET'
      '  PRC_CODIGO = :PRC_CODIGO,'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO,'
      '  PRD_CODIGO = :PRD_CODIGO,'
      '  PRC_DT_REGISTRO = :PRC_DT_REGISTRO,'
      '  PRC_DT_PADRAO = :PRC_DT_PADRAO,'
      '  PRC_DT_BALANCA = :PRC_DT_BALANCA,'
      '  PRC_BALANCA = :PRC_BALANCA,'
      '  PRC_PESO_PADRAO = :PRC_PESO_PADRAO,'
      '  PRC_PESO_LIQUIDO = :PRC_PESO_LIQUIDO,'
      '  PRC_TARA = :PRC_TARA,'
      '  PRC_DIGITO = :PRC_DIGITO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :OLD_PRC_IDENTIFICACAO')
    SQLLock.Strings = (
      'SELECT * FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    Session = CnxOracle
    SQL.Strings = (
      'SELECT '
      
        '    PRC_CODIGO, PRC_IDENTIFICACAO, PRD_CODIGO, PRC_DT_REGISTRO, ' +
        'PRC_DT_PADRAO, PRC_DT_BALANCA, PRC_BALANCA, PRC_PESO_PADRAO, PRC' +
        '_PESO_LIQUIDO, PRC_TARA, PRC_DIGITO'
      'FROM P_PRODUCAO'
      'WHERE'
      '    PRC_DT_PADRAO >= :DT_INI'
      '    AND PRC_DT_PADRAO <= :DT_FIM'
      '    AND PRC_BALANCA = :PRC_BALANCA'
      'ORDER BY PRC_IDENTIFICACAO')
    FetchAll = True
    CachedUpdates = True
    Left = 537
    Top = 412
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRC_BALANCA'
        Value = nil
      end>
    object qryRecuperaProdTempPRC_CODIGO: TFloatField
      FieldName = 'PRC_CODIGO'
    end
    object qryRecuperaProdTempPRC_IDENTIFICACAO: TStringField
      FieldName = 'PRC_IDENTIFICACAO'
      Size = 14
    end
    object qryRecuperaProdTempPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object qryRecuperaProdTempPRC_DT_REGISTRO: TStringField
      FieldName = 'PRC_DT_REGISTRO'
      Size = 25
    end
    object qryRecuperaProdTempPRC_DT_PADRAO: TStringField
      FieldName = 'PRC_DT_PADRAO'
      Size = 25
    end
    object qryRecuperaProdTempPRC_DT_BALANCA: TStringField
      FieldName = 'PRC_DT_BALANCA'
      Size = 25
    end
    object qryRecuperaProdTempPRC_BALANCA: TFloatField
      FieldName = 'PRC_BALANCA'
    end
    object qryRecuperaProdTempPRC_PESO_PADRAO: TFloatField
      FieldName = 'PRC_PESO_PADRAO'
    end
    object qryRecuperaProdTempPRC_PESO_LIQUIDO: TFloatField
      FieldName = 'PRC_PESO_LIQUIDO'
    end
    object qryRecuperaProdTempPRC_TARA: TFloatField
      FieldName = 'PRC_TARA'
    end
    object qryRecuperaProdTempPRC_DIGITO: TStringField
      FieldName = 'PRC_DIGITO'
      Size = 2
    end
  end
  object Sql_RecuperaProd: TOraSQL
    Session = CnxOracle
    AutoCommit = True
    SQL.Strings = (
      'insert into Producao_Registro'
      
        '       (   EMPRESA, FILIAL, ID_REGIPROD, ID_IDENREGIPROD,      I' +
        'D_MATERIAL,  ID_EMBALAGEM,  ID_ALMOXARIFADO,    ID_MATEALMO,   I' +
        'D_PRODMATEEMBA,   '
      
        '           DT_REGIPROD,                                         ' +
        '     '
      
        '           DT_PADRREGIPROD,                                     ' +
        '   '
      
        '           DT_BALAREGIPROD,                                     ' +
        '   '
      
        '           ID_BALANCA, QN_PESOPADRREGIPROD, QN_PESOLIQUREGIPROD,' +
        ' FL_STATREGIPROD, FX_REGIPROD, QN_TARAEMBAREGIPROD, DIGITOVER, L' +
        'OTEEXPO)'
      'SELECT '#39'CA'#39',1, ID_REGIPRODMATE.NEXTVAL , '
      ' '
      '        SUBSTR(P.PRC_IDENTIFICACAO,1,8) || SUBSTR ('#39'000'#39'||'
      '(( SELECT SUBSTR(MAX(ID_IDENREGIPROD),9,4)'
      '  From Producao_Registro P'
      
        ' WHERE DT_BALAREGIPROD >=  TO_DATE( :DT_INI ,'#39'DD/MM/YYYY HH24:MI' +
        ':SS'#39')'
      
        '   AND DT_BALAREGIPROD < TO_DATE( :DT_FIM ,'#39'DD/MM/YYYY HH24:MI:S' +
        'S'#39')'
      '   AND ID_BALANCA = :ID_BALANCA  '
      '   AND SUBSTR(ID_IDENREGIPROD,1,8) = :ID_DTBAL  )'
      '         + rownum) ,-4),'
      '        '
      
        '        M.ID_MATERIAL, M.ID_EMBALAGEM, A.ID_ALMOXARIFADO, A.ID_M' +
        'ATEALMO, M.ID_PRODMATEEMBA,'
      '       TO_DATE( PRC_DT_REGISTRO ,'#39'DD/MM/YYYY HH24:MI:SS'#39') ,'
      '       TO_DATE( PRC_DT_PADRAO   ,'#39'DD/MM/YYYY HH24:MI:SS'#39') ,'
      '       TO_DATE( PRC_DT_BALANCA  ,'#39'DD/MM/YYYY HH24:MI:SS'#39') ,'
      
        '       PRC_BALANCA, PRC_PESO_PADRAO, PRC_PESO_LIQUIDO, '#39'ES'#39','#39'N'#39',' +
        ' PRC_TARA, PRC_DIGITO, '#39'0'#39' '
      '         '
      '  FROM P_PRODUCAO P'
      ' INNER JOIN MATERIAL_EMBALAGEM M'
      '    On  M.ID_PRODMATEEMBA = TRIM(P.PRD_CODIGO)'
      ' Inner Join MATERIAL_ALMOXARIFADO A'
      '    ON M.ID_MATERIAL = A.ID_MATERIAL'
      '   AND M.ID_EMBALAGEM = A.ID_EMBALAGEM'
      '   AND A.ID_ALMOXARIFADO = 1'
      
        ' Where  TO_DATE(PRC_DT_PADRAO,'#39'DD/MM/YYYY HH24:MI:SS'#39') between T' +
        'O_DATE( :DT_INISTR ,'#39'DD/MM/YYYY HH24:MI:SS'#39') AND TO_DATE( :DT_FI' +
        'MSTR  ,'#39'DD/MM/YYYY HH24:MI:SS'#39')   '
      '   AND PRC_BALANCA = :PRC_BALANCA'
      '  AND SUBSTR(P.PRC_IDENTIFICACAO,1,8) = :ID_DTBAL'
      '  AND SUBSTR(PRC_DT_PADRAO,12,8) not in ('
      '  '
      'SELECT TO_CHAR(DT_PADRREGIPROD,'#39'HH24:MI:SS'#39')'
      '  From Producao_Registro P'
      
        ' WHERE DT_PADRREGIPROD >=  TO_DATE( :DT_INI ,'#39'DD/MM/YYYY HH24:MI' +
        ':SS'#39')'
      
        '   AND DT_PADRREGIPROD <= TO_DATE( :DT_FIM ,'#39'DD/MM/YYYY HH24:MI:' +
        'SS'#39')'
      '  AND ID_BALANCA = :ID_BALANCA   '
      ' AND SUBSTR(ID_IDENREGIPROD,1,8) = :ID_DTBAL          )'
      ' ')
    Left = 65
    Top = 515
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID_BALANCA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID_DTBAL'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DT_INISTR'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DT_FIMSTR'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'PRC_BALANCA'
        Value = nil
      end>
  end
  object SQL_ApagaProdTemp: TOraSQL
    Session = CnxOracle
    AutoCommit = True
    SQL.Strings = (
      'DELETE P_PRODUCAO'
      'WHERE '
      '    PRC_DT_PADRAO >= :DT_INI'
      '    AND PRC_DT_PADRAO <= :DT_FIM'
      '    AND  PRC_BALANCA = :PRC_BALANCA')
    Left = 32
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRC_BALANCA'
        Value = nil
      end>
  end
  object qryTempFire: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CnxFireBird
    Left = 637
    Top = 359
  end
  object qryPesoMedio: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_PROD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT coalesce(ROUND(AVG(PRC_PESO_LIQUIDO),  3),  0)'
      'FROM P_PRODUCAO'
      'WHERE'
      '    substring(PRC_IDENTIFICACAO FROM 1 FOR 6) = :DATA'
      '    AND PRD_CODIGO = :COD_PROD')
    SQLConnection = CnxFireBird
    Left = 640
    Top = 424
    object qryPesoMedioCOALESCE: TFMTBCDField
      FieldName = 'COALESCE'
      ReadOnly = True
      Precision = 18
      Size = 6
    end
  end
end
