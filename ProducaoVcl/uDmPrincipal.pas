unit uDmPrincipal;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Ora, IdRawBase, IdRawClient, IdIcmpClient, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, CPDrv, SerialNG, SqlExpr, FMTBcd, SqlTimSt, uTExportaDados, Dialogs, jpeg, RLReport, Graphics, Provider,
  DBClient, Midas, MMSystem, DateUtils, StrUtils, Data.DBXFirebird, OraCall;

type
  TReImpressao = record
    valSeqInicial: string;
    valSeqFinal: string;
    blnFlag_ES: Boolean;
    valFlag_ES: string;
    blnFlag_CR: Boolean;
    valFlag_CR: string;
    blnFlag_DV: Boolean;
    valFlag_DV: string;
    btnProd01: Boolean;
    valProd01: string;
  end;

  TDmPrincipal = class(TDataModule)
    Serial_Balanca: TCommPortDriver;
    TCPEscolhe: TIdTCPClient;
    TCPImprime: TIdTCPClient;
    Icmp1: TIdIcmpClient;
    CnxOracle: TOraSession;
    qryPesq: TOraQuery;
    qryPesqDATATUAL: TStringField;
    qryOraProduto: TOraQuery;
    qryOraProdutoID_PRODMATEEMBA: TStringField;
    qryOraProdutoNM_PRODMATEEMBA: TStringField;
    qryOraProdutoNM_PRODREDUMATEEMBA: TStringField;
    qryOraProdutoQN_CAPAPADRMATEEMBA: TFloatField;
    qryOraProdutoQN_CAPAMEDIMATEEMBA: TFloatField;
    qryOraProdutoQN_TARAEMBAPROD: TFloatField;
    qryOraProdutoFL_TIPOEXPEMATEEMBA: TStringField;
    qryOraProdutoFL_ATIVMATEEMBA: TStringField;
    qryOraProdutoFL_EXPORTA: TStringField;
    qryOraProdutoFL_PADRAO: TStringField;
    qryOraProdutoID_MATERIAL: TFloatField;
    qryOraProdutoNM_MATERIAL: TStringField;
    qryOraProdutoID_EMBALAGEM: TFloatField;
    qryOraProdutoNM_EMBALAGEM: TStringField;
    qryOraProdutoID_MATEALMO: TFloatField;
    qryOraProdutoQN_PERC_PESOPADR: TFloatField;
    qryOraIpBalanca: TOraQuery;
    qryOraIpBalancaIPB_IP: TStringField;
    qryOraIpBalancaIPB_BALANCA: TFloatField;
    qryOraIpBalancaIPB_SEQUENCIAL: TFloatField;
    qryOraIpBalancaIPB_PERCENT_REDU_BALANC: TFloatField;
    qryOraIpBalancaIPB_PERCENT_PESO_LIVRE: TFloatField;
    qryOraIpBalancaIPB_FAIXA_DATA_ALTERACAO: TFloatField;
    qryOraIpBalancaIPB_PORTA_IMPRESSORA: TStringField;
    qryOraIpBalancaIPB_PORTA_BALANCA: TStringField;
    qryOraIpBalancaIPB_BALANCA_ESTAVEL: TStringField;
    qryOraIpBalancaIPB_BALANCA_INSTAVEL: TStringField;
    qryOraIpBalancaIPB_BALANCA_REST_01: TStringField;
    qryOraIpBalancaIPB_BALANCA_REST_02: TStringField;
    qryOraIpBalancaIPB_BALANCA_REST_03: TFloatField;
    qryOraIpBalancaIPB_TEMPO_INTEGRACAO: TFloatField;
    qryOraIpBalancaIPB_SEQTUNEL: TFloatField;
    qryOraIpBalancaIPB_ULTIMADT: TDateTimeField;
    qryOraIpBalancaIPB_DTREFESEQ: TDateTimeField;
    qryOraProducao: TOraQuery;
    qryOraLogReImpressao: TOraQuery;
    QrProducao: TOraQuery;
    QrEtiq: TOraQuery;
    QrEtiqEMPRESA: TStringField;
    QrEtiqFILIAL: TIntegerField;
    QrEtiqID_LETQ: TFloatField;
    QrEtiqID_ETIQUETA: TStringField;
    QrEtiqID_USUCADA: TFloatField;
    QrEtiqID_USUALTE: TFloatField;
    QrEtiqID_USULIBE: TFloatField;
    QrEtiqID_BALANCA: TFloatField;
    QrEtiqDT_CADASTRO: TDateTimeField;
    QrEtiqDT_ALTERACAO: TDateTimeField;
    QrEtiqDT_FINALIZADA: TDateTimeField;
    QrEtiqDT_PREVISAO: TDateTimeField;
    QrEtiqDT_APARTIR: TDateTimeField;
    QrEtiqDT_LIBERACAO: TDateTimeField;
    QrEtiqDT_IMPORTACAO: TDateTimeField;
    QrEtiqDIPOA: TStringField;
    QrEtiqLOTEEXPO: TStringField;
    QrEtiqNM_PRODUTO: TStringField;
    QrEtiqLIBERADAPOR: TStringField;
    QrEtiqOBSERVACAO: TStringField;
    QrEtiqLOCALIMAGEM: TStringField;
    QrEtiqFL_ATIVA: TStringField;
    QrEtiqFL_ALTERADA: TStringField;
    QrEtiqFL_LIBERADA: TStringField;
    QrEtiqFL_ALTERANDO: TStringField;
    QrEtiqIMAGEM: TBlobField;
    QrEtiqAtual: TOraQuery;
    QrEtiqVERSAO: TStringField;
    QrEtiqDIAS_VALIDADE: TFloatField;
    qryTemp: TOraQuery;
    CnxFireBird: TSQLConnection;
    cdsProduto: TClientDataSet;
    dspProduto: TDataSetProvider;
    qryProduto: TSQLQuery;
    cdsIpBalanca: TClientDataSet;
    dspIpBalanca: TDataSetProvider;
    qryIpBalanca: TSQLQuery;
    cdsProducao: TClientDataSet;
    dspProducao: TDataSetProvider;
    qryProducao: TSQLQuery;
    cdsProducaoX: TClientDataSet;
    dspProducaoX: TDataSetProvider;
    qryProducaoX: TSQLQuery;
    cdsLogIntegracao: TClientDataSet;
    dspLogIntegracao: TDataSetProvider;
    qryLogIntegracao: TSQLQuery;
    cdsLogReImpressao: TClientDataSet;
    dspLogReImpressao: TDataSetProvider;
    qryLogReImpressao: TSQLQuery;
    cdsLogReImpressaoX: TClientDataSet;
    dspLogReImpressaoX: TDataSetProvider;
    qryLogReImpressaoX: TSQLQuery;
    CDSEtiqExport: TClientDataSet;
    DSPEtiqExport: TDataSetProvider;
    QryEtiqExport: TSQLQuery;
    CDSUltiGrava: TClientDataSet;
    DSPUltigrava: TDataSetProvider;
    QryUltimoGrava: TSQLQuery;
    qryLimpaProducao: TSQLQuery;
    qryIpBalancaIPB_IP: TStringField;
    qryIpBalancaIPB_BALANCA: TIntegerField;
    qryIpBalancaIPB_SEQUENCIAL: TIntegerField;
    qryIpBalancaIPB_PERCENT_REDU_BALANC: TFMTBCDField;
    qryIpBalancaIPB_PERCENT_PESO_LIVRE: TFMTBCDField;
    qryIpBalancaIPB_FAIXA_DATA_ALTERACAO: TIntegerField;
    qryIpBalancaIPB_PORTA_IMPRESSORA: TStringField;
    qryIpBalancaIPB_PORTA_BALANCA: TStringField;
    qryIpBalancaIPB_BALANCA_ESTAVEL: TStringField;
    qryIpBalancaIPB_BALANCA_INSTAVEL: TStringField;
    qryIpBalancaIPB_BALANCA_REST_01: TStringField;
    qryIpBalancaIPB_BALANCA_REST_02: TStringField;
    qryIpBalancaIPB_BALANCA_REST_03: TIntegerField;
    qryIpBalancaIPB_TEMPO_INTEGRACAO: TIntegerField;
    qryIpBalancaIPB_SEQTUNEL: TIntegerField;
    qryIpBalancaIPB_ULTIMADT: TDateField;
    qryIpBalancaIPB_DTREFESEQ: TDateField;
    qryLogIntegracaoLIT_CODIGO: TFMTBCDField;
    qryLogIntegracaoLIT_DT_INICIAL: TSQLTimeStampField;
    qryLogIntegracaoLIT_DT_FINAL: TSQLTimeStampField;
    qryLogIntegracaoIPB_BALANCA: TIntegerField;
    qryLogReImpressaoLRI_BALANCA: TIntegerField;
    qryLogReImpressaoLRI_DATA_HORA: TSQLTimeStampField;
    qryLogReImpressaoLRI_IDENTIFICACAO: TStringField;
    qryLogReImpressaoLRI_INTEGRADO: TStringField;
    qryLogReImpressaoXLRI_BALANCA: TIntegerField;
    qryLogReImpressaoXLRI_DATA_HORA: TSQLTimeStampField;
    qryLogReImpressaoXLRI_IDENTIFICACAO: TStringField;
    qryLogReImpressaoXLRI_INTEGRADO: TStringField;
    QryEtiqExportDESCRICAO: TStringField;
    QryEtiqExportDT_CADASTRO: TSQLTimeStampField;
    QryEtiqExportID_PRODMATEEMBA: TStringField;
    QryEtiqExportFL_ATIVA: TStringField;
    QryEtiqExportID_USUCADA: TIntegerField;
    QryEtiqExportID_USUALTE: TIntegerField;
    QryEtiqExportDIPOA: TStringField;
    QryEtiqExportARQUIMAGEM: TStringField;
    QryEtiqExportLOTEEXPO: TStringField;
    QryEtiqExportDIAS_VALIDADE: TIntegerField;
    QryEtiqExportDT_IMPORTACAO: TDateField;
    QryEtiqExportID_ETIQUETA: TStringField;
    QryUltimoGravaMAIORVALOR: TStringField;
    cdsIpBalancaIPB_IP: TStringField;
    cdsIpBalancaIPB_BALANCA: TIntegerField;
    cdsIpBalancaIPB_SEQUENCIAL: TIntegerField;
    cdsIpBalancaIPB_PERCENT_REDU_BALANC: TFMTBCDField;
    cdsIpBalancaIPB_PERCENT_PESO_LIVRE: TFMTBCDField;
    cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO: TIntegerField;
    cdsIpBalancaIPB_PORTA_IMPRESSORA: TStringField;
    cdsIpBalancaIPB_PORTA_BALANCA: TStringField;
    cdsIpBalancaIPB_BALANCA_ESTAVEL: TStringField;
    cdsIpBalancaIPB_BALANCA_INSTAVEL: TStringField;
    cdsIpBalancaIPB_BALANCA_REST_01: TStringField;
    cdsIpBalancaIPB_BALANCA_REST_02: TStringField;
    cdsIpBalancaIPB_BALANCA_REST_03: TIntegerField;
    cdsIpBalancaIPB_TEMPO_INTEGRACAO: TIntegerField;
    cdsIpBalancaIPB_SEQTUNEL: TIntegerField;
    cdsIpBalancaIPB_ULTIMADT: TDateField;
    cdsIpBalancaIPB_DTREFESEQ: TDateField;
    cdsProducaoPRC_IDENTIFICACAO: TStringField;
    cdsProducaoPRD_CODIGO: TStringField;
    cdsProducaoPRC_DT_REGISTRO: TSQLTimeStampField;
    cdsProducaoPRC_DT_PADRAO: TSQLTimeStampField;
    cdsProducaoPRC_DT_BALANCA: TSQLTimeStampField;
    cdsProducaoPRC_BALANCA: TIntegerField;
    cdsProducaoPRC_PESO_PADRAO: TFMTBCDField;
    cdsProducaoPRC_PESO_LIQUIDO: TFMTBCDField;
    cdsProducaoPRC_TARA: TFMTBCDField;
    cdsProducaoPRC_INTEGRADO: TStringField;
    cdsProducaoPRC_DIGITO: TStringField;
    cdsProducaoPRC_CODBARRAS: TStringField;
    cdsProducaoPRC_NUMBARRAS: TStringField;
    cdsProducaoLOTEEXPO: TStringField;
    cdsLogIntegracaoLIT_CODIGO: TFMTBCDField;
    cdsLogIntegracaoLIT_DT_INICIAL: TSQLTimeStampField;
    cdsLogIntegracaoLIT_DT_FINAL: TSQLTimeStampField;
    cdsLogIntegracaoIPB_BALANCA: TIntegerField;
    cdsLogReImpressaoLRI_BALANCA: TIntegerField;
    cdsLogReImpressaoLRI_DATA_HORA: TSQLTimeStampField;
    cdsLogReImpressaoLRI_IDENTIFICACAO: TStringField;
    cdsLogReImpressaoLRI_INTEGRADO: TStringField;
    cdsLogReImpressaoXLRI_BALANCA: TIntegerField;
    cdsLogReImpressaoXLRI_DATA_HORA: TSQLTimeStampField;
    cdsLogReImpressaoXLRI_IDENTIFICACAO: TStringField;
    cdsLogReImpressaoXLRI_INTEGRADO: TStringField;
    CDSEtiqExportDESCRICAO: TStringField;
    CDSEtiqExportDT_CADASTRO: TSQLTimeStampField;
    CDSEtiqExportID_PRODMATEEMBA: TStringField;
    CDSEtiqExportFL_ATIVA: TStringField;
    CDSEtiqExportID_USUCADA: TIntegerField;
    CDSEtiqExportID_USUALTE: TIntegerField;
    CDSEtiqExportDIPOA: TStringField;
    CDSEtiqExportARQUIMAGEM: TStringField;
    CDSEtiqExportLOTEEXPO: TStringField;
    CDSEtiqExportDIAS_VALIDADE: TIntegerField;
    CDSEtiqExportDT_IMPORTACAO: TDateField;
    CDSEtiqExportID_ETIQUETA: TStringField;
    CDSUltiGravaMAIORVALOR: TStringField;
    qryProducaoXPRC_IDENTIFICACAO: TStringField;
    qryProducaoXPRD_CODIGO: TStringField;
    qryProducaoXPRC_DT_REGISTRO: TSQLTimeStampField;
    qryProducaoXPRC_DT_PADRAO: TSQLTimeStampField;
    qryProducaoXPRC_DT_BALANCA: TSQLTimeStampField;
    qryProducaoXPRC_BALANCA: TIntegerField;
    qryProducaoXPRC_PESO_PADRAO: TFMTBCDField;
    qryProducaoXPRC_PESO_LIQUIDO: TFMTBCDField;
    qryProducaoXPRC_TARA: TFMTBCDField;
    qryProducaoXPRC_INTEGRADO: TStringField;
    qryProducaoXPRC_DIGITO: TStringField;
    qryProducaoXPRC_CODBARRAS: TStringField;
    qryProducaoXPRC_NUMBARRAS: TStringField;
    qryProducaoXLOTEEXPO: TStringField;
    qryProducaoXMAT_CODIGO: TFMTBCDField;
    qryProducaoXEMB_CODIGO: TFMTBCDField;
    qryProducaoXMTA_CODIGO: TIntegerField;
    cdsProducaoXPRC_IDENTIFICACAO: TStringField;
    cdsProducaoXPRD_CODIGO: TStringField;
    cdsProducaoXPRC_DT_REGISTRO: TSQLTimeStampField;
    cdsProducaoXPRC_DT_PADRAO: TSQLTimeStampField;
    cdsProducaoXPRC_DT_BALANCA: TSQLTimeStampField;
    cdsProducaoXPRC_BALANCA: TIntegerField;
    cdsProducaoXPRC_PESO_PADRAO: TFMTBCDField;
    cdsProducaoXPRC_PESO_LIQUIDO: TFMTBCDField;
    cdsProducaoXPRC_TARA: TFMTBCDField;
    cdsProducaoXPRC_INTEGRADO: TStringField;
    cdsProducaoXPRC_DIGITO: TStringField;
    cdsProducaoXPRC_CODBARRAS: TStringField;
    cdsProducaoXPRC_NUMBARRAS: TStringField;
    cdsProducaoXLOTEEXPO: TStringField;
    cdsProducaoXMAT_CODIGO: TFMTBCDField;
    cdsProducaoXEMB_CODIGO: TFMTBCDField;
    cdsProducaoXMTA_CODIGO: TIntegerField;
    qryOraReImpressao: TOraQuery;
    qryOraReImpressaoID_IDENREGIPROD: TStringField;
    qryOraReImpressaoID_PRODMATEEMBA: TStringField;
    qryOraReImpressaoNM_PRODREDUMATEEMBA: TStringField;
    qryOraReImpressaoDT_BALAREGIPROD: TDateTimeField;
    qryOraReImpressaoQN_PESOPADRREGIPROD: TFloatField;
    qryOraReImpressaoQN_PESOLIQUREGIPROD: TFloatField;
    qryOraReImpressaoQN_TARAEMBAREGIPROD: TFloatField;
    qryOraReImpressaoFL_PADRAO: TStringField;
    qryOraReImpressaoDIGITOVER: TStringField;
    qryReImpressao: TSQLQuery;
    qryReImpressaoPRC_CODIGO: TFMTBCDField;
    qryReImpressaoPRC_IDENTIFICACAO: TStringField;
    qryReImpressaoPRD_CODIGO: TStringField;
    qryReImpressaoPRC_DT_REGISTRO: TSQLTimeStampField;
    qryReImpressaoPRC_DT_PADRAO: TSQLTimeStampField;
    qryReImpressaoPRC_DT_BALANCA: TSQLTimeStampField;
    qryReImpressaoPRC_BALANCA: TIntegerField;
    qryReImpressaoPRC_PESO_PADRAO: TFMTBCDField;
    qryReImpressaoPRC_PESO_LIQUIDO: TFMTBCDField;
    qryReImpressaoPRC_TARA: TFMTBCDField;
    qryReImpressaoPRC_INTEGRADO: TStringField;
    qryReImpressaoPRC_DIGITO: TStringField;
    qryReImpressaoPRC_CODBARRAS: TStringField;
    qryReImpressaoPRC_NUMBARRAS: TStringField;
    qryReImpressaoLOTEEXPO: TStringField;
    qryReImpressaoPRD_DESC_REDUZIDA: TStringField;
    qryReImpressaoPRD_PADRAO: TStringField;
    QrEtiqID_PRODMATEEMBA: TStringField;
    QrEtiqFORMATO_DT_VENCTO: TStringField;
    QryEtiqExportFORMATO_DT_VENCTO: TStringField;
    CDSEtiqExportFORMATO_DT_VENCTO: TStringField;
    qryOraProdutoFL_ETIQVAREJO: TStringField;
    qry_SeqLocal: TSQLQuery;
    qry_SeqLocalMAIORVALOR: TStringField;
    DSPSeqLocal: TDataSetProvider;
    CDSSeqLocal: TClientDataSet;
    CDSSeqLocalMAIORVALOR: TStringField;
    Qry_SeqServer: TOraQuery;
    Qry_SeqServerMAIOR_VALOR: TStringField;
    cdsProducaoPRC_QTCAIXA: TStringField;
    qryRecuperaProdTemp: TOraQuery;
    Sql_RecuperaProd: TOraSQL;
    SQL_ApagaProdTemp: TOraSQL;
    qryTempFire: TSQLQuery;
    qryProducaoPRC_IDENTIFICACAO: TStringField;
    qryProducaoPRD_CODIGO: TStringField;
    qryProducaoPRC_DT_REGISTRO: TSQLTimeStampField;
    qryProducaoPRC_DT_PADRAO: TSQLTimeStampField;
    qryProducaoPRC_DT_BALANCA: TSQLTimeStampField;
    qryProducaoPRC_BALANCA: TIntegerField;
    qryProducaoPRC_PESO_PADRAO: TFMTBCDField;
    qryProducaoPRC_PESO_LIQUIDO: TFMTBCDField;
    qryProducaoPRC_TARA: TFMTBCDField;
    qryProducaoPRC_INTEGRADO: TStringField;
    qryProducaoPRC_DIGITO: TStringField;
    qryProducaoPRC_CODBARRAS: TStringField;
    qryProducaoPRC_NUMBARRAS: TStringField;
    qryProducaoLOTEEXPO: TStringField;
    qryProducaoPRC_QTCAIXA: TStringField;
    qryRecuperaProdTempPRC_CODIGO: TFloatField;
    qryRecuperaProdTempPRC_IDENTIFICACAO: TStringField;
    qryRecuperaProdTempPRD_CODIGO: TStringField;
    qryRecuperaProdTempPRC_DT_REGISTRO: TStringField;
    qryRecuperaProdTempPRC_DT_PADRAO: TStringField;
    qryRecuperaProdTempPRC_DT_BALANCA: TStringField;
    qryRecuperaProdTempPRC_BALANCA: TFloatField;
    qryRecuperaProdTempPRC_PESO_PADRAO: TFloatField;
    qryRecuperaProdTempPRC_PESO_LIQUIDO: TFloatField;
    qryRecuperaProdTempPRC_TARA: TFloatField;
    qryRecuperaProdTempPRC_DIGITO: TStringField;
    qryPesoMedio: TSQLQuery;
    qryPesoMedioCOALESCE: TFMTBCDField;
    qryProdutoPRD_CODIGO: TStringField;
    qryProdutoPRD_DESCRICAO: TStringField;
    qryProdutoPRD_DESC_REDUZIDA: TStringField;
    qryProdutoPRD_PESO_PADRAO_MEDIO: TFMTBCDField;
    qryProdutoPRD_TARA: TFMTBCDField;
    qryProdutoPRD_TP_EXPEDICAO: TStringField;
    qryProdutoPRD_ATIVO: TStringField;
    qryProdutoPRD_EXPORTADO: TStringField;
    qryProdutoPRD_PADRAO: TStringField;
    qryProdutoMAT_CODIGO: TFMTBCDField;
    qryProdutoMAT_DESCRICAO: TStringField;
    qryProdutoEMB_CODIGO: TFMTBCDField;
    qryProdutoEMB_DESCRICAO: TStringField;
    qryProdutoMTA_CODIGO: TIntegerField;
    qryProdutoMAT_PERC_PESO_PADR: TFMTBCDField;
    qryProdutoFL_ETIQVAREJO: TStringField;
    cdsProdutoPRD_CODIGO: TStringField;
    cdsProdutoPRD_DESCRICAO: TStringField;
    cdsProdutoPRD_DESC_REDUZIDA: TStringField;
    cdsProdutoPRD_PESO_PADRAO_MEDIO: TFMTBCDField;
    cdsProdutoPRD_TARA: TFMTBCDField;
    cdsProdutoPRD_TP_EXPEDICAO: TStringField;
    cdsProdutoPRD_ATIVO: TStringField;
    cdsProdutoPRD_EXPORTADO: TStringField;
    cdsProdutoPRD_PADRAO: TStringField;
    cdsProdutoMAT_CODIGO: TFMTBCDField;
    cdsProdutoMAT_DESCRICAO: TStringField;
    cdsProdutoEMB_CODIGO: TFMTBCDField;
    cdsProdutoEMB_DESCRICAO: TStringField;
    cdsProdutoMTA_CODIGO: TIntegerField;
    cdsProdutoMAT_PERC_PESO_PADR: TFMTBCDField;
    cdsProdutoFL_ETIQVAREJO: TStringField;
    qryProducaoPRC_CODIGO: TLargeintField;
    cdsProducaoPRC_CODIGO: TLargeintField;
    QryEtiqExportID_ETIQEXPORT: TLargeintField;
    QryEtiqExportID_BALANCA: TLargeintField;
    CDSEtiqExportID_ETIQEXPORT: TLargeintField;
    CDSEtiqExportID_BALANCA: TLargeintField;
    qryProducaoXPRC_CODIGO: TLargeintField;
    cdsProducaoXPRC_CODIGO: TLargeintField;
    procedure Data_atual;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure Serial_BalancaReceiveData(Sender: TObject; DataPtr: Pointer; DataSize: Cardinal);
    procedure Icmp1Reply(ASender: TComponent;
      const AReplyStatus: TReplyStatus);
    procedure Verifica_etiquetas_atualizadas_disco(Produto: string; Etiqueta: string; Importacao: TDateTime);
    procedure cdsProducaoAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsProducaoBeforePost(DataSet: TDataSet);
    function conv_data(AData: TDatetime; Tipo: integer): string;
    function conv_hora(OTime: TDatetime; Tipo: integer): string;
    procedure dspProducaoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);

  private

    FUltimoProdutoPesado: string;
    FSqlReImpressao: string;

    procedure ImportaDados_Produtos;
    procedure ImportaDados_IpBalanca;
    procedure Atual_IpBalanca;

    procedure ExportaDados_Producao;
    procedure ExportaDados_IpBalanca;
    procedure Exporta_LogReImpressao;

    procedure Gera_Identificador;
    procedure ImprimeCodBarras;


    function GetSequencial: string;

    function GetDigito(CodBarr: string): string;

//    function GetPesoMedio(data, cod_prod :string) :Double;

    { Private declarations }

  public
    FDataInicial: TDateTime;
    DrPadrao: TDateTime;
    FResult, VExportou, VSoFlag, SomenteLocal, RegDuplicadoLocal , ErroChaveLocal : Boolean;
    FExportaDados: TExportaDados;
    VUltimoRegistro, VIDENTIFICACAO, VARQDIA, PDATA: string;
    VqtdEmail, Filial, DtPadrao, AchouEtiqueta, Reimpressao: Integer;


    procedure ImportaDados;
    procedure ExportaDados;

    procedure InsereNovoRegistro;
    procedure GravarRegistro;

    procedure FiltraEtiqExpo(CodProduto: string);
    procedure FiltraProduto(CodProduto: string);
    procedure FiltraProducao(CodIdentificacao: string);
    procedure ModificaData(Mais: Boolean);
    procedure ModificaDataEscolhe(DtEscolhe: TDateTime);
    procedure ModificaDataEscolhe_(DtEscolhe: TDateTime);
    procedure LogIntegracao(DtInicial, DtFinal: TDateTime);

    procedure UltimoRegistroOracle(Vregiprod: string);

    procedure CriaExportaDados;

    procedure CriaComunicaoSerial(Balanca: Boolean = True; Impressora: Boolean = True);
    procedure DestroiComunicaoSerial(Balanca: Boolean = True; Impressora: Boolean = True);

    procedure ImprimirUltimaEtiqueta;

    procedure VerificaEtiquetas(Filtro: TReImpressao);
    procedure ImprimeEtiquetas;

    procedure GravaServer(CodIdentificacao: string);

    procedure Obtem_Imagem_Etiqueta_Exportacao_Hd(ImEtiqueta: string);

    procedure Verifica_data_inicializacao;

    function Calcula_vencimento(DtImpressao: TDateTime; OsMeses: Integer; OsDias: Integer; TiraDias: Integer): string;

    procedure VerificaPeso(Balanca: Boolean);
    procedure PesaMultiplasCaixas ();
    procedure GravarRegistroCaixas();
    procedure ImportaDadosDB();

    { Public declarations }

  end;

var
  DmPrincipal: TDmPrincipal;
  ImprimeEtq: Integer;

implementation

uses uVg_VariaveisGlobais, uFrmPrincipal, uMg_MetodosGlobais, uFrmEtiqueta,
  uFrmEtiqueta1, Global, uFrmValidaLote, Math, uFrmStatus;

{$R *.dfm}

procedure TDmPrincipal.ImportaDados;
var
  n: Integer;
begin
  try
    try
      if Vg_Cnx_Itape = True then Icmp1.Host := Copy(CnxOracle.Server, 1, 8);
      if Vg_Cnx_Sorocaba = True then Icmp1.Host := Copy(CnxOracle.Server, 1, 10);
      if Vg_Cnx_Teste = True then Icmp1.Host := Copy(CnxOracle.Server, 1, 10);
      if Vg_Cnx_Guapiacu = True then Icmp1.Host := Copy(CnxOracle.Server, 1, 8);
      if Vg_Cnx_Dacar = True then Icmp1.Host := Copy(CnxOracle.Server, 1, PosEx(':', CnxOracle.Server,1) - 1 );

      FrmStatus.Memo1.Lines.Add( ' Ping : ' + Copy(CnxOracle.Server, 1, 13) );

      for n := 1 to 10 do Icmp1.Ping();

      //Conecta ao banco de dados do oracle
      if not CnxOracle.Connected then
        CnxOracle.Connect;

      //Importa os ips da balanca
      FrmStatus.Memo1.Lines.Add( 'Importa os ips da balanca' );
      try
        ImportaDados_IpBalanca;
      except on E: Exception do
          FrmPrincipal.Gravar_Log(E.Message);
        //
      end;

      FrmStatus.Memo1.Lines.Add( 'Importa os produtos' );
      //Importa os produtos
      try
        ImportaDados_Produtos;
      except on E: Exception do
          FrmPrincipal.Gravar_Log(E.Message);
        //
      end;

    except

      //Caso contrario obtem o ultimo produto pesado
      cdsProduto.Open;
      FUltimoProdutoPesado := cdsProdutoPRD_CODIGO.AsString;
      InsereNovoRegistro;

    end;

  finally

    //Nao consegui executar importação e definição então desliga bdados
    if CnxOracle.Connected then
    begin
      CnxOracle.Disconnect;
    end;

  end;
end;

procedure TDmPrincipal.DataModuleCreate(Sender: TObject);
begin
  //Desconecta o Oracle
  CnxOracle.Disconnect;

  //Desconecta banco de dados firebird
  CnxFireBird.Connected := False;
  CnxOracle.ConnectString := Vg_strCnx;
  Filial := FrmPrincipal.Filial;

  try
    //Verifica a conexão com sorocaba e define a rota
   { if Vg_Cnx_Sorocaba = True then CnxOracle.ConnectString := Vg_strCnx_Sorocaba;
    if Vg_Cnx_Itape = True then CnxOracle.ConnectString := Vg_strCnx_Itape;
    if Vg_Cnx_Teste = True then CnxOracle.ConnectString := Vg_strCnx_Teste;
    if Vg_Cnx_Guapiacu = True then CnxOracle.ConnectString := Vg_strCnx_Guapiacu;}

    //Conecta ao Oracle
    if (not CnxOracle.Connected) AND ( not FrmPrincipal.BdLocal)  then
      CnxOracle.Connect;

    //Faz a conexão com o servidor de sorocaba para as etiquetas
    FSqlReImpressao := qryOraReImpressao.SQL.Text;
  except on E: Exception do
        begin
             SomenteLocal := True;
             MessageDlg('Erro ao conectar ao servidor. O sistema funcionará apenas local.', mtWarning, [mbOK], 0);
        end;
  end;


  //Conecta ao banco de dados firebird
  try
     CnxFireBird.Connected := True;
  except on E: Exception do
    begin
         Abort;
        // MessageDlg('Erro ao conectar ao servidor Firebird. ', mtError, [mbOK], 0);
    end;
  end;

  FDataInicial := Now;

  //Abre as tabelas principais do sistema
  cdsProduto.Open;
  cdsIpBalanca.Open;
  cdsProducao.Open;
  CDSUltiGrava.Open;

  //Executa a importação de dados para o sistema
  if ( not FrmPrincipal.BdLocal )then
     ImportaDados
  else
  begin
       cdsProduto.Open;
       FUltimoProdutoPesado := cdsProdutoPRD_CODIGO.AsString;
       InsereNovoRegistro;
  end;


end;

procedure TDmPrincipal.ExportaDados;
var
  DtInicial: TDateTime;
  DtFinal: TDateTime;
begin

  DtInicial := 0;
  DtFinal := 0;

  try

    try

    //Abre o banco de dados do oracle
      if not CnxOracle.Connected then
        CnxOracle.Connect;

      try

      //Define a data inicial
        DtInicial := Now;
      //Exporta os dados
        ExportaDados_IpBalanca;
        ExportaDados_Producao;
      //GravaServer();
        Exporta_LogReImpressao;
      //Define a data final
        DtFinal := Now;

      //cria o logo da integração
        LogIntegracao(DtInicial, DtFinal);

      except on E: Exception do
        begin
          FrmPrincipal.Gravar_Log(E.Message);

           //Na exceção tambem cria o log de integração
          LogIntegracao(DtInicial, DtFinal);
        end;

      end;

    except on E: Exception do
        FrmPrincipal.Gravar_Log(E.Message);
     //
    end;

  finally

    //Ao finalizar se o oracle não estiver conectado
    if CnxOracle.Connected then
    begin

      //Desfaz a conecção com o banco de dados
      CnxOracle.Disconnect;

    end;

  end;

end;

procedure TDmPrincipal.ImportaDados_Produtos;
begin
  try
    //Faz um filtro dos produtos do almoxarifado 1
    qryOraProduto.Close;
    qryOraProduto.SQL.Clear;
    qryOraProduto.SQL.Add('SELECT');
    qryOraProduto.SQL.Add(' A.ID_PRODMATEEMBA, UPPER(A.NM_PRODMATEEMBA) AS NM_PRODMATEEMBA,');
    qryOraProduto.SQL.Add(' UPPER(A.NM_PRODREDUMATEEMBA) AS NM_PRODREDUMATEEMBA,');
    qryOraProduto.SQL.Add(' NVL(A.QN_CAPAPADRMATEEMBA, 0) AS QN_CAPAPADRMATEEMBA,');
    qryOraProduto.SQL.Add(' NVL(A.QN_CAPAMEDIMATEEMBA, 0) AS QN_CAPAMEDIMATEEMBA,');
    qryOraProduto.SQL.Add(' NVL(E.QN_TARAEMBAPROD, 0) AS QN_TARAEMBAPROD,');
    qryOraProduto.SQL.Add(' A.FL_TIPOEXPEMATEEMBA, NVL(A.FL_ATIVMATEEMBA, ''N'') AS FL_ATIVMATEEMBA,');
    qryOraProduto.SQL.Add(' A.FL_EXPORTA, A.FL_PADRAO, B.ID_MATERIAL,');
    qryOraProduto.SQL.Add(' UPPER(B.NM_MATERIAL) AS NM_MATERIAL,');
    qryOraProduto.SQL.Add(' C.ID_EMBALAGEM, UPPER(C.NM_EMBALAGEM) AS NM_EMBALAGEM,');
    qryOraProduto.SQL.Add(' D.ID_MATEALMO, A.QN_PERC_PESOPADR, A.FL_ETIQVAREJO');
    qryOraProduto.SQL.Add('FROM');
    qryOraProduto.SQL.Add(' MATERIAL_EMBALAGEM A, MATERIAL B,');
    qryOraProduto.SQL.Add(' EMBALAGEM C, MATERIAL_ALMOXARIFADO D, ');
    qryOraProduto.SQL.Add(' MATERIAL_EMBALAGEM_COMPLEMENTO E ');
    qryOraProduto.SQL.Add('WHERE');
    qryOraProduto.SQL.Add(' A.ID_MATERIAL = B.ID_MATERIAL');
    qryOraProduto.SQL.Add(' AND A.ID_EMBALAGEM = C.ID_EMBALAGEM');
    qryOraProduto.SQL.Add(' AND A.ID_MATERIAL = D.ID_MATERIAL');
    qryOraProduto.SQL.Add(' AND A.ID_EMBALAGEM = D.ID_EMBALAGEM');
    qryOraProduto.SQL.Add(' AND A.ID_MATEEMBA = E.ID_MATEEMBA ');
    qryOraProduto.SQL.Add(' AND D.ID_ALMOXARIFADO = 1');
    qryOraProduto.SQL.Add(' AND A.ID_PRODMATEEMBA LIKE ' + QuotedStr('___'));
    {
    if Vg_Cnx_Sorocaba = True then
      qryOraProduto.SQL.Add(' AND Nvl(A.FL_PRODUZ_SOR,''N'') = ''S''')
    else
      qryOraProduto.SQL.Add(' AND Nvl(A.FL_PRODUZ_ITA,''N'') = ''S''');
    }

    //existe conteudo no arquivo dai insere os registros no banco de dados do firebird
    //qryOraProduto.SQL.SaveToFile('C:\PRODUCAO.txt');
    qryOraProduto.Open;

    try
      if not qryOraProduto.IsEmpty then
      begin
        //Se produtos vazio ultimo produto ''
        if cdsProdutoPRD_CODIGO.IsNull then FUltimoProdutoPesado := ''
        else
          FUltimoProdutoPesado := cdsProdutoPRD_CODIGO.AsString;

        //Desliga o filtro
        cdsProduto.DisableControls;
        cdsProduto.Filtered := False;
        cdsProduto.Open;
        cdsProduto.First;

        //Faz limpeza incondicional na tabela produtos
        while not cdsProduto.IsEmpty do
          while not cdsProduto.Eof do cdsProduto.Delete;

        //Atualiza tabela etiq. exportação
        CDSEtiqExport.DisableControls;
        CDSEtiqExport.Filtered := False;
        CDSEtiqExport.Open;
        CDSEtiqExport.First;

        //Filtra as etiquetas liberadas e da unidade corrente
        QrEtiq.Close;
        QrEtiq.SQL.Clear;
        QrEtiq.SQL.Add('SELECT * FROM CA_ETIQUETA WHERE');
        QrEtiq.SQL.Add(' FL_ATIVA = ' + QuotedStr('S'));
        QrEtiq.SQL.Add(' AND FILIAL = ' + InttoStr(Filial));
        QrEtiq.Open;

        if QrEtiq.RecordCount > 0 then
        begin
          //Faz limpesa incondicional na tabela exportação
          while not CDSEtiqExport.IsEmpty do
            while not CDSEtiqExport.Eof do CDSEtiqExport.Delete;

          //Acrescenta os registros da tabela de etiquetas
          QrEtiq.First;
          while not QrEtiq.Eof do
          begin

            //Carrega o banco de dados do
            CDSEtiqExport.Insert;
            CDSEtiqExportID_ETIQEXPORT.AsFloat := QrEtiqID_LETQ.Value;
            CDSEtiqExportDESCRICAO.AsString := QrEtiqNM_PRODUTO.AsString;
            CDSEtiqExportDT_CADASTRO.AsDateTime := QrEtiqDT_CADASTRO.AsDateTime;
            CDSEtiqExportID_PRODMATEEMBA.AsString := QrEtiqID_PRODMATEEMBA.AsString;
            CDSEtiqExportID_ETIQUETA.Value := InttoStr(Filial) + '_' + QrEtiqID_ETIQUETA.Value;
            //CDSEtiqExportID_ETIQUETA.Value        := QrEtiqID_ETIQUETA.Value;
            CDSEtiqExportFL_ATIVA.AsString := QrEtiqFL_ATIVA.AsString;
            CDSEtiqExportID_USUCADA.AsInteger := QrEtiqID_USUCADA.AsInteger;
            CDSEtiqExportID_USUALTE.AsInteger := QrEtiqID_USUALTE.AsInteger; //Usa esse campo para alterar a etiqueta
            CDSEtiqExportDIPOA.AsString := QrEtiqDIPOA.AsString;
            CDSEtiqExportID_BALANCA.AsFloat := QrEtiqID_BALANCA.AsFloat;
            CDSEtiqExportARQUIMAGEM.AsString := QrEtiqLOCALIMAGEM.AsString;
            CDSEtiqExportLOTEEXPO.AsString := QrEtiqLOTEEXPO.AsString;
            CDSEtiqExportDIAS_VALIDADE.Value := QrEtiqDIAS_VALIDADE.AsInteger;
            CDSEtiqExportDT_IMPORTACAO.Value := QrEtiqDT_IMPORTACAO.Value;
            CDSEtiqExportFORMATO_DT_VENCTO.Value := QrEtiqFORMATO_DT_VENCTO.Value;
            CDSEtiqExport.Post;

            CDSEtiqExport.ApplyUpdates(0);

            //Verifica aqui se a etiqueta esta atualizada
            if QrEtiqIMAGEM.AsString <> '' then
              Verifica_etiquetas_atualizadas_disco(QrEtiqID_PRODMATEEMBA.AsString, InttoStr(Filial) + '_' + QrEtiqID_ETIQUETA.AsString, QrEtiqDT_IMPORTACAO.Value);

            //Proxima etiqueta
            QrEtiq.Next;

          end;

        end;


        qryOraProduto.First;

        while not qryOraProduto.Eof do
        begin

          //Insere um item de produto
          cdsProduto.Insert;

          cdsProdutoPRD_CODIGO.AsString := qryOraProdutoID_PRODMATEEMBA.AsString;
          cdsProdutoPRD_DESCRICAO.AsString := qryOraProdutoNM_PRODMATEEMBA.AsString;
          cdsProdutoPRD_DESC_REDUZIDA.AsString := qryOraProdutoNM_PRODREDUMATEEMBA.AsString;

          cdsProdutoPRD_TARA.AsFloat := qryOraProdutoQN_TARAEMBAPROD.AsFloat;

          cdsProdutoPRD_TP_EXPEDICAO.AsString := qryOraProdutoFL_TIPOEXPEMATEEMBA.AsString;
          cdsProdutoPRD_ATIVO.AsString := qryOraProdutoFL_ATIVMATEEMBA.AsString;
          cdsProdutoPRD_EXPORTADO.AsString := qryOraProdutoFL_EXPORTA.AsString;
          cdsProdutoPRD_PADRAO.AsString := qryOraProdutoFL_PADRAO.AsString;

          //percentual usado em produtos peso padrão variavel para cima e para baixo
          if not qryOraProdutoQN_PERC_PESOPADR.IsNull then
            cdsProdutoMAT_PERC_PESO_PADR.Value := qryOraProdutoQN_PERC_PESOPADR.Value;

          if cdsProdutoPRD_PADRAO.AsString = 'S' then
            cdsProdutoPRD_PESO_PADRAO_MEDIO.AsFloat := qryOraProdutoQN_CAPAPADRMATEEMBA.AsFloat
          else
            cdsProdutoPRD_PESO_PADRAO_MEDIO.AsFloat := qryOraProdutoQN_CAPAMEDIMATEEMBA.AsFloat;

          cdsProdutoMAT_CODIGO.AsInteger := qryOraProdutoID_MATERIAL.AsInteger;
          cdsProdutoMAT_DESCRICAO.AsString := qryOraProdutoNM_MATERIAL.AsString;
          cdsProdutoEMB_CODIGO.AsInteger := qryOraProdutoID_EMBALAGEM.AsInteger;
          cdsProdutoEMB_DESCRICAO.AsString := qryOraProdutoNM_EMBALAGEM.AsString;
          cdsProdutoMTA_CODIGO.AsInteger := qryOraProdutoID_MATEALMO.AsInteger;

          cdsProduto.FieldByName('FL_ETIQVAREJO').AsString := qryOraProdutoFL_ETIQVAREJO.AsString;

          cdsProduto.Post;
          cdsProduto.ApplyUpdates(0);

          //Proximo produto
          qryOraProduto.Next;
        end;
      end;
    except
      on E: Exception do FrmPrincipal.Gravar_Log(e.Message);
    end;
  finally

    cdsProduto.EnableControls;
    CDSEtiqExport.EnableControls;

    qryOraProduto.Close;

    if FUltimoProdutoPesado = '' then FUltimoProdutoPesado := cdsProdutoPRD_CODIGO.AsString;

    InsereNovoRegistro;

  end;

end;

procedure TDmPrincipal.Verifica_etiquetas_atualizadas_disco(Produto: string; Etiqueta: string; Importacao: TDateTime);
var
  Existe: Integer;
  AEtiqueta: string;
begin

  //Define o nome do arquivo
  AEtiqueta := '';
  
  if Produto <> '' then
    if Etiqueta <> '' then
      if StrData(Importacao) <> '' then
        AEtiqueta := Produto + '_' + Etiqueta + '_' + StrData(Importacao) + '.jpg';

  //Se não existir o arquivo em disco salva um novo arquivo;
  Existe := 0;

  if AEtiqueta <> '' then
    if FileExists(AEtiqueta) then Existe := 1;

  if AEtiqueta <> '' then
    if Existe = 0 then
    begin

    //Insere a imagem na janela principal
      FrmPrincipal.ObtemImagemDoBanco(TBlobField(QrEtiq.FieldByName('IMAGEM')), FrmPrincipal.ImgEtiqExpo);
    //Salva a imagem no disco
      FrmPrincipal.ImgEtiqExpo.Picture.SaveToFile(AEtiqueta);
      FrmPrincipal.ImgEtiqExpo.Picture := nil;
    //Limpa imagem do TRotateImage
      FrmPrincipal.Apaga_etiqueta;

    end;

end;

procedure TDmPrincipal.ImportaDados_IpBalanca;
var intTemp: integer;
  FILTRO, FILTRO2, CODIGOSQL: string;
  DtBal: TDateTime;
begin
  //Limpa os registros locais da producao com mais de 9 dias.
  qryLimpaProducao.ExecSQL(True);

  qryOraIpBalanca.ParamByName('IPB_IP').AsString := Vg_Ip;
  qryOraIpBalanca.Open;

  if cdsIpBalanca.IsEmpty then
  begin
    cdsIpBalanca.Insert;
    cdsIpBalancaIPB_IP.AsString := qryOraIpBalancaIPB_IP.AsString;
    cdsIpBalancaIPB_BALANCA.AsInteger := qryOraIpBalancaIPB_BALANCA.AsInteger;
    cdsIpBalancaIPB_SEQUENCIAL.AsInteger := qryOraIpBalancaIPB_SEQUENCIAL.AsInteger;
    cdsIpBalancaIPB_PERCENT_REDU_BALANC.AsFloat := qryOraIpBalancaIPB_PERCENT_REDU_BALANC.AsFloat;
    cdsIpBalancaIPB_PERCENT_PESO_LIVRE.AsFloat := qryOraIpBalancaIPB_PERCENT_PESO_LIVRE.AsFloat;
    cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO.AsInteger := qryOraIpBalancaIPB_FAIXA_DATA_ALTERACAO.AsInteger;
    cdsIpBalancaIPB_PORTA_IMPRESSORA.AsString := qryOraIpBalancaIPB_PORTA_IMPRESSORA.AsString;
    cdsIpBalancaIPB_PORTA_BALANCA.AsString := qryOraIpBalancaIPB_PORTA_BALANCA.AsString;
    cdsIpBalancaIPB_BALANCA_ESTAVEL.AsString := qryOraIpBalancaIPB_BALANCA_ESTAVEL.AsString;
    cdsIpBalancaIPB_BALANCA_INSTAVEL.AsString := qryOraIpBalancaIPB_BALANCA_INSTAVEL.AsString;
    cdsIpBalancaIPB_BALANCA_REST_01.AsString := qryOraIpBalancaIPB_BALANCA_REST_01.AsString;
    cdsIpBalancaIPB_BALANCA_REST_02.AsString := qryOraIpBalancaIPB_BALANCA_REST_02.AsString;
    cdsIpBalancaIPB_BALANCA_REST_03.AsInteger := qryOraIpBalancaIPB_BALANCA_REST_03.AsInteger;
    cdsIpBalancaIPB_TEMPO_INTEGRACAO.AsInteger := qryOraIpBalancaIPB_TEMPO_INTEGRACAO.AsInteger;
    cdsIpBalancaIPB_ULTIMADT.AsDateTime := qryOraIpBalancaIPB_ULTIMADT.AsDateTime;
    cdsIpBalancaIPB_DTREFESEQ.AsDateTime := qryOraIpBalancaIPB_DTREFESEQ.AsDateTime;
  end
  else if (qryOraIpBalancaIPB_SEQUENCIAL.AsInteger > cdsIpBalancaIPB_SEQUENCIAL.AsInteger) or
      (qryOraIpBalancaIPB_IP.AsString <> cdsIpBalancaIPB_IP.AsString) and
      (not qryOraProduto.IsEmpty) then
  begin
    cdsIpBalanca.Edit;
    cdsIpBalancaIPB_IP.AsString := qryOraIpBalancaIPB_IP.AsString;
    cdsIpBalancaIPB_BALANCA.AsInteger := qryOraIpBalancaIPB_BALANCA.AsInteger;
    cdsIpBalancaIPB_SEQUENCIAL.AsInteger := qryOraIpBalancaIPB_SEQUENCIAL.AsInteger;
    cdsIpBalancaIPB_PERCENT_REDU_BALANC.AsFloat := qryOraIpBalancaIPB_PERCENT_REDU_BALANC.AsFloat;
    cdsIpBalancaIPB_PERCENT_PESO_LIVRE.AsFloat := qryOraIpBalancaIPB_PERCENT_PESO_LIVRE.AsFloat;
    cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO.AsInteger := qryOraIpBalancaIPB_FAIXA_DATA_ALTERACAO.AsInteger;
    cdsIpBalancaIPB_PORTA_IMPRESSORA.AsString := qryOraIpBalancaIPB_PORTA_IMPRESSORA.AsString;
    cdsIpBalancaIPB_PORTA_BALANCA.AsString := qryOraIpBalancaIPB_PORTA_BALANCA.AsString;
    cdsIpBalancaIPB_BALANCA_ESTAVEL.AsString := qryOraIpBalancaIPB_BALANCA_ESTAVEL.AsString;
    cdsIpBalancaIPB_BALANCA_INSTAVEL.AsString := qryOraIpBalancaIPB_BALANCA_INSTAVEL.AsString;
    cdsIpBalancaIPB_BALANCA_REST_01.AsString := qryOraIpBalancaIPB_BALANCA_REST_01.AsString;
    cdsIpBalancaIPB_BALANCA_REST_02.AsString := qryOraIpBalancaIPB_BALANCA_REST_02.AsString;
    cdsIpBalancaIPB_BALANCA_REST_03.AsInteger := qryOraIpBalancaIPB_BALANCA_REST_03.AsInteger;

    if qryOraIpBalancaIPB_ULTIMADT.AsDateTime > cdsIpBalancaIPB_ULTIMADT.AsDateTime then
      cdsIpBalancaIPB_ULTIMADT.AsDateTime := qryOraIpBalancaIPB_ULTIMADT.AsDateTime;

    cdsIpBalancaIPB_DTREFESEQ.AsDateTime := Date();
  end;

  FILTRO := FormatDateTime('mm/dd/yyyy', Date());

  QryUltimoGrava.Close;
  QryUltimoGrava.SQL.Clear;

  QryUltimoGrava.SQL.Add(' SELECT Coalesce(Max(substring(prc_identificacao from 9 for 4)),0) MAIORVALOR ' +
    '   FROM P_PRODUCAO ' +
    '  WHERE substring(prc_identificacao from 1 for 8) = ' + COPY(FILTRO, 4, 2) +
    COPY(FILTRO, 1, 2) +
    COPY(FILTRO, 9, 2) +
    FormatFloat('00', cdsProducaoPRC_BALANCA.Value));

  QryUltimoGrava.Open;

  if QryUltimoGravaMAIORVALOR.Value <> '' then
  begin
    if (StrToInt(QryUltimoGravaMAIORVALOR.Value) <> cdsIpBalancaIPB_SEQUENCIAL.AsInteger) then
    begin
          //Acerta ultimo sequencial de acordo com a data alterada
      cdsIpBalanca.Edit;
      cdsIpBalancaIPB_SEQUENCIAL.AsInteger := StrToInt(QryUltimoGravaMAIORVALOR.Value);
      cdsIpBalancaIPB_DTREFESEQ.AsDateTime := Date();
    end
    else
    begin
      if Trunc(cdsIpBalancaIPB_DTREFESEQ.AsDateTime) < Date() then
      begin
              //Acerta ultimo sequencial de acordo com a data alterada
        cdsIpBalanca.Edit;
        cdsIpBalancaIPB_SEQUENCIAL.AsInteger := StrToInt(QryUltimoGravaMAIORVALOR.Value);
        cdsIpBalancaIPB_DTREFESEQ.AsDateTime := Date();
      end;
    end;
  end;

  if (cdsIpBalanca.State in [dsedit, dsinsert]) then
  begin
    cdsIpBalanca.Post;
    cdsIpBalanca.ApplyUpdates(0);
  end;

  qryOraIpBalanca.Close;
end;

procedure TDmPrincipal.ExportaDados_Producao;
begin
  try
    with qryOraProducao do
    begin

      Close;
      SQL.Clear;

      SQL.Add('INSERT INTO PRODUCAO_REGISTRO');
      SQL.Add('(EMPRESA, FILIAL, ID_REGIPROD, ID_IDENREGIPROD, ID_MATERIAL, ID_EMBALAGEM, ID_ALMOXARIFADO, ID_MATEALMO,');
      SQL.Add(' ID_PRODMATEEMBA, DT_REGIPROD, DT_PADRREGIPROD, DT_BALAREGIPROD, ID_BALANCA, QN_PESOPADRREGIPROD,');
      SQL.Add(' QN_PESOLIQUREGIPROD, FL_STATREGIPROD, FX_REGIPROD, QN_TARAEMBAREGIPROD, DIGITOVER, LOTEEXPO, QT_CAIXA)');
      SQL.Add('VALUES');
      SQL.Add('(:EMPRESA, :FILIAL, ID_REGIPRODMATE.NEXTVAL, :ID_IDENREGIPROD, :ID_MATERIAL, :ID_EMBALAGEM, :ID_ALMOXARIFADO, :ID_MATEALMO,');
      SQL.Add(' :ID_PRODMATEEMBA, :DT_REGIPROD, :DT_PADRREGIPROD, :DT_BALAREGIPROD, :ID_BALANCA, :QN_PESOPADRREGIPROD,');
      SQL.Add(' :QN_PESOLIQUREGIPROD, :FL_STATREGIPROD, :FX_REGIPROD, :QN_TARAEMBAREGIPROD, :DIGITOVER, :LOTEEXPO, :QT_CAIXA)');

      ParamByName('EMPRESA').ParamType := ptInput;
      ParamByName('FILIAL').ParamType := ptInput;
      ParamByName('ID_IDENREGIPROD').ParamType := ptInput;
      ParamByName('ID_MATERIAL').ParamType := ptInput;
      ParamByName('ID_EMBALAGEM').ParamType := ptInput;
      ParamByName('ID_ALMOXARIFADO').ParamType := ptInput;
      ParamByName('ID_MATEALMO').ParamType := ptInput;
      ParamByName('ID_PRODMATEEMBA').ParamType := ptInput;
      ParamByName('DT_REGIPROD').ParamType := ptInput;
      ParamByName('DT_PADRREGIPROD').ParamType := ptInput;
      ParamByName('DT_BALAREGIPROD').ParamType := ptInput;
      ParamByName('ID_BALANCA').ParamType := ptInput;
      ParamByName('QN_PESOPADRREGIPROD').ParamType := ptInput;
      ParamByName('QN_PESOLIQUREGIPROD').ParamType := ptInput;
      ParamByName('FL_STATREGIPROD').ParamType := ptInput;
      ParamByName('FX_REGIPROD').ParamType := ptInput;
      ParamByName('QN_TARAEMBAREGIPROD').ParamType := ptInput;
      ParamByName('DIGITOVER').ParamType := ptInput;
      ParamByName('LOTEEXPO').ParamType := ptInput;
      ParamByName('QT_CAIXA').ParamType := ptInput;

      ParamByName('EMPRESA').DataType := ftString;
      ParamByName('FILIAL').DataType := ftInteger;
      ParamByName('ID_IDENREGIPROD').DataType := ftString;
      ParamByName('ID_MATERIAL').DataType := ftInteger;
      ParamByName('ID_EMBALAGEM').DataType := ftInteger;
      ParamByName('ID_ALMOXARIFADO').DataType := ftInteger;
      ParamByName('ID_MATEALMO').DataType := ftInteger;
      ParamByName('ID_PRODMATEEMBA').DataType := ftString;
      ParamByName('DT_REGIPROD').DataType := ftTimeStamp;                                   
      ParamByName('DT_PADRREGIPROD').DataType := ftDateTime;
      ParamByName('DT_BALAREGIPROD').DataType := ftDateTime;
      ParamByName('ID_BALANCA').DataType := ftInteger;
      ParamByName('QN_PESOPADRREGIPROD').DataType := ftFloat;
      ParamByName('QN_PESOLIQUREGIPROD').DataType := ftFloat;
      ParamByName('FL_STATREGIPROD').DataType := ftString;
      ParamByName('FX_REGIPROD').DataType := ftString;
      ParamByName('QN_TARAEMBAREGIPROD').DataType := ftFloat;
      ParamByName('DIGITOVER').DataType := ftString;
      ParamByName('LOTEEXPO').DataType := ftString;
      ParamByName('QT_CAIXA').DataType := ftInteger;

      try
        qryProducaoX.Close;
        qryProducaoX.Open;

        cdsProducaoX.Open;
        cdsProducaoX.Filtered := False;
        cdsProducaoX.First;

        while not cdsProducaoX.Eof do
        begin
          QrProducao.Close;
          QrProducao.SQL.Clear;
          QrProducao.SQL.Text :=
            '  SELECT                              ' +
            '   PRODUCAO_REGISTRO.ID_IDENREGIPROD, ' +
            '   PRODUCAO_REGISTRO.ID_PRODMATEEMBA  ' +
            '  FROM                                ' +
            '   PRODUCAO_REGISTRO                  ' +
            ' WHERE                                ' +
            '   PRODUCAO_REGISTRO.ID_IDENREGIPROD = ''' + cdsProducaoXPRC_IDENTIFICACAO.AsString + '''';

          QrProducao.Open;

          if QrProducao.IsEmpty then
          begin

            ParamByName('EMPRESA').AsString := Vg_Empresa;
            ParamByName('FILIAL').AsInteger := Vg_Filial;
            ParamByName('ID_IDENREGIPROD').AsString := cdsProducaoXPRC_IDENTIFICACAO.AsString;
            ParamByName('ID_MATERIAL').AsInteger := cdsProducaoXMAT_CODIGO.AsInteger;
            ParamByName('ID_EMBALAGEM').AsInteger := cdsProducaoXEMB_CODIGO.AsInteger;
            ParamByName('ID_ALMOXARIFADO').AsInteger := 1;
            ParamByName('ID_MATEALMO').AsInteger := cdsProducaoXMTA_CODIGO.AsInteger;
            ParamByName('ID_PRODMATEEMBA').AsString := cdsProducaoXPRD_CODIGO.AsString;
            ParamByName('DT_REGIPROD').AsDateTime := cdsProducaoXPRC_DT_PADRAO.AsDateTime;
            ParamByName('DT_PADRREGIPROD').AsDateTime := cdsProducaoXPRC_DT_REGISTRO.AsDateTime;
            ParamByName('DT_BALAREGIPROD').AsDateTime := cdsProducaoXPRC_DT_BALANCA.AsDateTime;
            ParamByName('ID_BALANCA').AsInteger := cdsIpBalancaIPB_BALANCA.AsInteger;
            ParamByName('QN_PESOPADRREGIPROD').AsFloat := cdsProducaoXPRC_PESO_PADRAO.AsFloat;
            ParamByName('QN_PESOLIQUREGIPROD').AsFloat := cdsProducaoXPRC_PESO_LIQUIDO.AsFloat;

            {FABRICIO - 26/02/2019 - MOTIVO:  quando pesagem por pelo carregamento, caracteriza-se INVENTARIO}
            if cdsIpBalancaIPB_BALANCA.AsInteger IN [2,4,6,99] then
              ParamByName('FL_STATREGIPROD').AsString := 'ES'
            else
              ParamByName('FL_STATREGIPROD').AsString := 'IV';

            ParamByName('FX_REGIPROD').AsString := 'N';
            ParamByName('QN_TARAEMBAREGIPROD').AsFloat := cdsProducaoXPRC_TARA.AsFloat;
            ParamByName('DIGITOVER').AsString := cdsProducaoXPRC_DIGITO.AsString;
            ParamByName('LOTEEXPO').AsString := cdsProducaoXLOTEEXPO.AsString;
            ParamByName('QT_CAIXA').AsString := cdsProducaoPRC_QTCAIXA.AsString;

            try
              ExecSQL;
            except on E: Exception do
                FrmPrincipal.Gravar_Log(E.Message);
            end;
          end;

          try

            cdsProducaoX.Edit;
            if ( not SomenteLocal ) then
               cdsProducaoXPRC_INTEGRADO.AsString := 'S';
            cdsProducaoX.Post;
            cdsProducaoX.ApplyUpdates(0);

          except on E: Exception do
              FrmPrincipal.Gravar_Log(E.Message);
          end;

          cdsProducaoX.Next;
        end;
      finally
        cdsProducaoX.Close;
      end;
    end;
  except on E: Exception do
      FrmPrincipal.Gravar_Log(E.Message);
  end;
end;

procedure TDmPrincipal.InsereNovoRegistro;
var
  Imprime: Integer;
begin
  cdsProducao.Insert;

  FiltraProduto(FUltimoProdutoPesado);

end;

procedure TDmPrincipal.FiltraEtiqExpo(CodProduto: string);
var
  Etiq, Dias, Diav, Validado: Integer; //, Lote
  Etiqueta, OLote, ODias: string;
begin
    //Limpa data de vencimento
  FrmPrincipal.LbVencExpo.Caption := '';
    //Limpa a imagem e visualização da etiqueta
  FrmPrincipal.Apaga_etiqueta;


  //Filtra o arquivo de eitquetas a etiqueta desejada
  CDSEtiqExport.Filtered := False;
  CDSEtiqExport.Filter := Format('ID_PRODMATEEMBA = %s AND FL_ATIVA = ''S'' ', [CodProduto]);
  CDSEtiqExport.Filtered := True;

  //Não foi encontrada etiquetas no arquivo
  if CDSEtiqExport.RecordCount = 0 then
  begin
      //Desmarca flag impressao
    ImprimeETQ := 0;

    FrmPrincipal.Apaga_etiqueta;

    exit;
  end;

  //Foi encontrada etiquetas no arquivo
  if CDSEtiqExport.RecordCount > 0 then
  begin

      //Desmarca flag impressao
    ImprimeETQ := 1;

      //Nome da etiqueta
    Etiqueta := '';

    if CDSEtiqExportID_PRODMATEEMBA.AsString <> '' then
      if CDSEtiqExportID_ETIQUETA.Value <> '' then
        if StrData(CDSEtiqExportDT_IMPORTACAO.Value) <> '' then
        begin
          Etiqueta := CDSEtiqExportID_PRODMATEEMBA.AsString + '_' +
            CDSEtiqExportID_ETIQUETA.Value + '_' +
            StrData(CDSEtiqExportDT_IMPORTACAO.Value) + '.jpg';
        end;

    if Etiqueta <> '' then
    begin

        //Lote  := 0;
        //OLote := '';
        //OLote := CDSEtiqExportLOTEEXPO.Value;
        //If OLote <> '' then Lote := 1;

      Dias := 0;
      Diav := 0;
      Dias := CDSEtiqExportDIAS_VALIDADE.Value; //Obtem da tabela a qtd de dias
      if Dias > 0 then Diav := 1;

      Validado := 0;
        //If Lote = 1 then
      if Diav = 1 then Validado := 1;

      if Validado = 0 then
      begin
        try
          FrmValidaLote := TFrmValidaLote.Create(self);
          FrmValidaLote.EdValidade.Value := Dias;
            //FrmValidaLote.EdLote.Text      := OLote;
          FrmValidaLote.ShowModal;
            //OLote := FrmValidaLote.EdLote.Text;
          Dias := FrmValidaLote.EdValidade.Value;
            //If FrmValidaLote.EdLote.Text = ''    then Lote := 0;
            //If FrmValidaLote.EdLote.Text <> ''   then Lote := 1;
          if FrmValidaLote.EdValidade.Value = 0 then Diav := 0;
          if FrmValidaLote.EdValidade.Value > 0 then Diav := 1;
        finally
          FreeAndNil(FrmValidaLote);
        end;
      end;

      Validado := 0;
        //If Lote = 1 then
      if Diav = 1 then Validado := 1;

      if Validado = 1 then
      begin

          //Verifica a existencia da etiqueta
        Etiq := 0;
        AchouEtiqueta := 0;
        if fileExists(Etiqueta) then
        begin
          AchouEtiqueta := 1;
          Etiq := 1;
        end;

        if AchouEtiqueta = 0 then ShowMessage('PRODUTO SEM IMAGEM PARA A ETIQUETA');

          //Se existir a etiqueta
        if Etiq = 1 then
        begin

            //Desmarca flag impressao
          ImprimeETQ := 1;

            //Mostra a etiqueta na tela
            //FrmPrincipal.Apaga_etiqueta;
            //FrmPrincipal.ImgEtiqExpo.Picture.LoadFromFile(Etiqueta);
            //FrmPrincipal.ImgEtiqExpo.Visible := True;

          FrmPrincipal.Mostra_etiqueta;

            //Libera a etiqueta
          FrmEtiqueta.Free;
            //cria novamente a etiqueta
          FrmEtiqueta := TFrmEtiqueta.Create(self);

            //limpa a etiqueta da impressão
          FrmEtiqueta.RLEtiqueta00.Picture := nil;
            //Carrega a etiqueta para impressão
          FrmEtiqueta.RLEtiqueta00.Picture.LoadFromFile(Etiqueta);
            //Define o lote de exportação
            //FrmPrincipal.LblLoteExpo.Caption := OLote;

            {
            //Funcão para se converter a qtdade de meses em dias
            If Reimpressao = 0 then FrmPrincipal.LbVencExpo.Caption  := Calcula_vencimento(StrtoDate(Copy(FrmPrincipal.edtDataPadrao.Text, 1, 10)), CDSEtiqExportDIAS_VALIDADE.Value, 0, 1);
            //Data de validade da reimpressao
            If Reimpressao = 1 then FrmPrincipal.LbVencExpo.Caption  := Calcula_vencimento(StrtoDate(Copy(DmPrincipal.qryOraReImpressaoDT_BALAREGIPROD.AsString, 1, 10)), CDSEtiqExportDIAS_VALIDADE.Value, 0, 1);
            If Reimpressao = 2 then FrmPrincipal.LbVencExpo.Caption  := Calcula_vencimento(StrtoDate(Copy(DmPrincipal.qryReImpressaoPRC_DT_PADRAO.AsString, 1, 10)), CDSEtiqExportDIAS_VALIDADE.Value, 0, 1);
            }
            //Funcão para se converter a qtdade de meses em dias
          if Reimpressao = 0 then FrmPrincipal.LbVencExpo.Caption := FormatDateTime(CDSEtiqExportFORMATO_DT_VENCTO.Value, (StrtoDate(Copy(FrmPrincipal.edtDataPadrao.Text, 1, 10)) + CDSEtiqExportDIAS_VALIDADE.Value - 1)); //Calcula_vencimento(StrtoDate(Copy(FrmPrincipal.edtDataPadrao.Text, 1, 10)), CDSEtiqExportDIAS_VALIDADE.Value, 0, 1);
            //Data de validade da reimpressao
          if Reimpressao = 1 then FrmPrincipal.LbVencExpo.Caption := FormatDateTime(CDSEtiqExportFORMATO_DT_VENCTO.Value, (StrtoDate(Copy(DmPrincipal.qryOraReImpressaoDT_BALAREGIPROD.AsString, 1, 10)) + CDSEtiqExportDIAS_VALIDADE.Value - 1)); //Calcula_vencimento(StrtoDate(Copy(DmPrincipal.qryOraReImpressaoDT_BALAREGIPROD.AsString, 1, 10)), CDSEtiqExportDIAS_VALIDADE.Value, 0, 1);
          if Reimpressao = 2 then FrmPrincipal.LbVencExpo.Caption := FormatDateTime(CDSEtiqExportFORMATO_DT_VENCTO.Value, (StrtoDate(Copy(DmPrincipal.qryReImpressaoPRC_DT_PADRAO.AsString, 1, 10)) + CDSEtiqExportDIAS_VALIDADE.Value - 1)); //Calcula_vencimento(StrtoDate(Copy(DmPrincipal.qryReImpressaoPRC_DT_PADRAO.AsString, 1, 10)), CDSEtiqExportDIAS_VALIDADE.Value, 0, 1);
        end;

          //Se não existir a etiqueta
        if Etiq = 0 then
        begin

            //Faz aqui a checagem se existir rede -
            //Ler a etiqueta da base de dados -
            //Salvar ela em disco
            //Musar Etiq := 1 se achou e salvou etiqueta

            //Desmarca flag impressao
          ImprimeETQ := 0;

            //Limpa a etiqueta da tela
          FrmPrincipal.Apaga_etiqueta;
            //limpa a etiqueta da impressão
          FrmEtiqueta.RLEtiqueta00.Picture := nil;

            //Define o lote de exportação
            //FrmPrincipal.LblLoteExpo.Caption := '';

            //Define a data do vencimento
          FrmPrincipal.LbVencExpo.Caption := '';

        end;

      end;

    end;

  end

  else

  begin

        //Não tem etiqueta
    FrmPrincipal.Apaga_etiqueta;
      //FrmPrincipal.LblLoteExpo.Caption := '0';

  end;

end;

function TDmPrincipal.conv_hora(OTime: TDatetime; Tipo: integer): string;
var
  Present: TDatetime;
  THora, Hora, Minuto, Segundo: string;
  Hour, Min, Sec, MSec: Word;
  Dt: Integer;
begin
  try
    Present := OTime;
    DecodeTime(Present, Hour, Min, Sec, MSec);

    if Hour <= 9 then Hora := '0' + InttoStr(Hour);
    if Hour > 9 then Hora := InttoStr(Hour);
    if Min <= 9 then Minuto := '0' + InttoStr(Min);
    if Min > 9 then Minuto := InttoStr(Min);
    if Sec <= 9 then Segundo := '0' + InttoStr(Sec);
    if Sec > 9 then Segundo := InttoStr(Sec);

    if Tipo = 1 then THora := Hora + Minuto + Segundo;
    if Tipo = 2 then THora := InttoStr(Hour) + ':' + InttoStr(Min) + ':' + InttoStr(Sec);
    Result := THora;
  except
    Result := '00:00:00';
  end;
end;

function TDmPrincipal.conv_data(AData: TDatetime; Tipo: integer): string;
var
  Present: TDatetime;
  ODia, SDia, SMes, SAno, Inicio, Fim: string;
  Year, Month, Day, Ano: Word;
begin

  try

    if Tipo = 1 then AData := AData + 1;

    DecodeDate(AData, Year, Month, Day);

    Ano := Year - 2000;
    if Ano < 10 then SAno := '0' + InttoStr(Ano);
    if Ano > 9 then SAno := InttoStr(Ano);

    if Day < 10 then SDia := '0' + InttoStr(Day);
    if Day > 9 then SDia := InttoStr(Day);

    if Month < 10 then SMes := '0' + InttoStr(Month);
    if Month > 9 then SMes := InttoStr(Month);

    if tipo = 0 then ODia := InttoStr(Month);

    if tipo = 1 then ODia := SDia + '/' + SMes + '/' + InttoStr(Year);

    if tipo = 2 then ODia := SDia + '/' + SMes + '/' + InttoStr(Year);

    if tipo = 3 then ODia := SDia + '/' + SMes + '/' + SAno;

    Result := ODia;

  except

    Result := '1';

  end;
end;

procedure TDmPrincipal.Obtem_Imagem_Etiqueta_Exportacao_Hd(ImEtiqueta: string);
var
  Bmp: TBitmap;
  Jpg: TJPEGImage;
begin
  Bmp := TBitmap.Create;
  Jpg := TJPEGImage.Create;
  try
    Jpg.LoadFromFile(ImEtiqueta);
    Bmp.Assign(Jpg);
    FrmEtiqueta.RLEtiqueta00.Picture.Graphic.Assign(bmp);
  finally
    Jpg.Free;
    Bmp.Free;
  end;
end;

procedure TDmPrincipal.FiltraProduto(CodProduto: string);
var
  dd: string;
begin

  //Filtra o código somente se a etiqueta for da pequena
  if Vg_impressora = 0 then
  begin

    //filtra o cadastro de produtos para obter as informações da balança
    cdsProduto.Filtered := False;
    cdsProduto.Filter := Format('PRD_CODIGO = %s', [CodProduto]);
    cdsProduto.Filtered := True;

    //Porque salva mesmo sem achar o produto ?
    cdsProducaoPRD_CODIGO.AsString := CodProduto;
    cdsProducaoPRC_PESO_PADRAO.AsFloat := cdsProdutoPRD_PESO_PADRAO_MEDIO.AsFloat;
    cdsProducaoPRC_DT_REGISTRO.AsDateTime := FDataInicial;
    //cdsProducaoPRC_DT_PADRAO.AsDateTime   := Now;
    if DtPadrao = 0 then cdsProducaoPRC_DT_PADRAO.AsDateTime := Now;
    if DtPadrao = 1 then
    begin
      cdsProducaoPRC_DT_PADRAO.AsDateTime :=
        StrToDateTime(Conv_Data(DrPadrao, 2) + FormatDateTime('hh:mm:ss', now));
      //cdsProducaoPRC_DT_PADRAO.AsDateTime := StrToDateTime( Conv_Data(cdsProducaoPRC_DT_PADRAO.AsDateTime, 2) + FormatDateTime('hh:mm:ss',now));
    end;
    cdsProducaoPRC_DT_BALANCA.AsDateTime := FDataInicial;
    cdsProducaoPRC_TARA.AsFloat := cdsProdutoPRD_TARA.AsFloat;
    cdsProducaoPRC_BALANCA.AsInteger := cdsIpBalancaIPB_BALANCA.AsInteger;

  end;

  //Filtra o codigo somente se a etiqueta estiver liberada
  if Vg_impressora = 1 then
  begin

    //Coloca o codigo igual
    if FrmPrincipal.edtMaterial.Text <> '' then CodProduto := FrmPrincipal.edtMaterial.Text;

    //Filtra o arquivo de eitquetas a etiqueta desejada
    CDSEtiqExport.Filtered := False;
    CDSEtiqExport.Filter := Format('ID_PRODMATEEMBA = %s AND FL_ATIVA = ''S'' ', [CodProduto]);
    CDSEtiqExport.Filtered := True;

    CDSEtiqExport.Open;

    //Não foi encontrada etiquetas no arquivo
    if CDSEtiqExport.RecordCount = 0 then
    begin
        //Desmarca flag impressao
      ImprimeETQ := 0;
        //Limpa data de vencimento
      FrmPrincipal.LbVencExpo.Caption := '';
      FrmPrincipal.Apaga_etiqueta;
        //Zera o peso da tara para evitar mesmo de que haja impressão
      cdsProducaoPRC_TARA.AsFloat := 0;
      if Length(FrmPrincipal.edtMaterial.Text) = 3 then
        FrmPrincipal.MsgErro('Produto inválido. Etiqueta não econtrada!')
      else
        FrmPrincipal.MsgLimpar;

      FrmPrincipal.edtMaterial.SelectAll;
      Exit;
    end;

    //Foi encontrada etiquetas no arquivo
    if CDSEtiqExport.RecordCount > 0 then
    begin

      //Desmarca flag impressao
      ImprimeETQ := 1;

      //filtra o cadastro de produtos para obter as informações da balança
      cdsProduto.Filtered := False;
      cdsProduto.Filter := Format('PRD_CODIGO = %s', [CodProduto]);
      cdsProduto.Filtered := True;

      //Não encontrou o produto cadastrado
      if cdsProduto.RecordCount = 0 then
      begin
        //Desmarca flag impressao
        ImprimeETQ := 0;
        cdsProduto.Filtered := False;
        cdsProduto.Filter := '';
      end;
      //Achou o produto cadastrado
      if cdsProduto.RecordCount > 0 then
      begin

        //Desmarca flag impressao
        ImprimeETQ := 1;
        //Porque salva mesmo sem achar o produto ?
        cdsProducaoPRD_CODIGO.AsString := CodProduto;
        cdsProducaoPRC_PESO_PADRAO.AsFloat := cdsProdutoPRD_PESO_PADRAO_MEDIO.AsFloat;
        cdsProducaoPRC_DT_REGISTRO.AsDateTime := FDataInicial;
        //cdsProducaoPRC_DT_PADRAO.AsDateTime   := Now;
        if DtPadrao = 0 then cdsProducaoPRC_DT_PADRAO.AsDateTime := Now;
        if DtPadrao = 1 then
        begin
          cdsProducaoPRC_DT_PADRAO.AsDateTime :=
            StrToDateTime(Conv_Data(DrPadrao, 2) + FormatDateTime('hh:mm:ss', now));
          //cdsProducaoPRC_DT_PADRAO.AsDateTime := StrToDateTime( Conv_Data(cdsProducaoPRC_DT_PADRAO.AsDateTime, 2) + FormatDateTime('hh:mm:ss',now));
        end;
        cdsProducaoPRC_DT_BALANCA.AsDateTime := FDataInicial;
        cdsProducaoPRC_TARA.AsFloat := cdsProdutoPRD_TARA.AsFloat;
        cdsProducaoPRC_BALANCA.AsInteger := cdsIpBalancaIPB_BALANCA.AsInteger;

      end;

    end;

  end;

end;

procedure TDmPrincipal.ModificaData(Mais: Boolean);
var
  intTemp: integer;
begin

  //Abre ip balanca
  cdsIpBalanca.Active := True;

  //ALTERAR O SEQUENCIAL DE ACORDO COM A DATA
  if Mais then
  begin
    if (cdsProducaoPRC_DT_BALANCA.AsDateTime <= (cdsProducaoPRC_DT_PADRAO.AsDateTime + cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO.AsInteger - 1)) then
    begin
      FDataInicial := FDataInicial + 1;
      cdsProducaoPRC_DT_BALANCA.AsDateTime := FDataInicial;
      cdsProducaoPRC_DT_REGISTRO.AsDateTime := FDataInicial;
    end;
  end
  else
  begin
    if (cdsProducaoPRC_DT_BALANCA.AsDateTime >= (cdsProducaoPRC_DT_PADRAO.AsDateTime - cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO.AsInteger)) then
    begin
      FDataInicial := FDataInicial - 1;
      cdsProducaoPRC_DT_BALANCA.AsDateTime := FDataInicial;
      cdsProducaoPRC_DT_REGISTRO.AsDateTime := FDataInicial;
    end;
  end;
  //Verificar o maior sequencial de acordo com a data modificada
  if not cnxOracle.Connected then
  begin
    CnxOracle.Connect;
  end;

  DmPrincipal.qryOraProducao.Close;
  DmPrincipal.qryOraProducao.SQL.Clear;
  DmPrincipal.qryOraProducao.SQL.Text :=
    '  SELECT Max(SubStr(id_idenregiprod,9,4)) as maioriden ' +
    '    FROM producao_registro                 ' +
    '   WHERE Trunc(dt_balaregiprod) = :dtbal   ' +
    '     AND id_balanca = :idbal               ';
  DmPrincipal.qryOraProducao.ParamByName('dtbal').AsDate := FDataInicial;
  DmPrincipal.qryOraProducao.ParamByName('idbal').AsInteger := cdsProducaoPRC_BALANCA.AsInteger;
  try
    DmPrincipal.qryOraProducao.Open;
    if DmPrincipal.qryOraProducao.IsEmpty then
    begin
      intTemp := 1;
    end
    else
    begin
      intTemp := DmPrincipal.qryOraProducao.FieldByName('maioriden').AsInteger;
    end;
  except on E: Exception do
      FrmPrincipal.Gravar_Log(E.Message);
  end;
  DmPrincipal.qryOraProducao.Close;

  //Acerta ultimo sequencial de acordo com a data alterada
  cdsIpBalanca.Edit;
  cdsIpBalancaIPB_DTREFESEQ.AsDateTime := FDataInicial;
  cdsIpBalancaIPB_SEQUENCIAL.AsInteger := intTemp;
  cdsIpBalanca.Post;
  //ApplyUpdates(0);
  cdsIpBalanca.ApplyUpdates(0);

  if CnxOracle.Connected then
  begin
    CnxOracle.Disconnect;
  end;

end;

procedure TDmPrincipal.ModificaDataEscolhe_(DtEscolhe: TDateTime);
var
  intTemp: integer;
  vteste: string;

  DATAA, DATAE, DATAF: string;

begin

  //Abre ip balanca
  cdsIpBalanca.Active := True;

  FrmPrincipal.MsgLimpar;

  DATAA := Conv_Data(cdsProducaoPRC_DT_PADRAO.AsDateTime, 2); //Data Atual
  DATAE := Conv_Data(DtEscolhe, 2); //Data Escolhida
  DATAF := Conv_Data(Now, 1); //Data Avançada

  try

    //Verifica se a data é menor que a faixa
    if (StrToDate(DATAE) < (StrToDate(DATAA) - DmPrincipal.cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO.Value)) then
      raise Exception.Create('Favor informar uma data maior ou igual a ' +
        FormatDateTime('dd/mm/yyyy', (StrToDate(DATAA) - DmPrincipal.cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO.Value)) + '.');

    //Verifica se a data é maior que a faixa
    if (StrToDate(DATAE) > (StrToDate(DATAA) + DmPrincipal.cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO.Value)) then
      raise Exception.Create('Favor informar uma data menor ou igual a ' +
        FormatDateTime('dd/mm/yyyy', (StrToDate(DATAA) + DmPrincipal.cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO.Value)) + '.');

    FDataInicial := DtEscolhe;

    DtPadrao := 1;
    if StrtoDate(DATAE) = StrtoDate(DATAA) then DtPadrao := 0;

    cdsProducaoPRC_DT_PADRAO.AsDateTime := FDataInicial;

    if DtPadrao = 1 then DrPadrao := FDataInicial;

  except on E: Exception do
    begin
      FrmPrincipal.Gravar_Log(E.Message);
      Exit;
    end;
  end;

end;

procedure TDmPrincipal.ModificaDataEscolhe(DtEscolhe: TDateTime);
var
  intTemp: integer;
  vteste: string;

  DATAA, DATAE, DATAF: string;

begin

  DATAA := Conv_Data(cdsProducaoPRC_DT_PADRAO.AsDateTime, 2); //Data Atual
  DATAE := Conv_Data(DtEscolhe, 2); //Data Escolhida
  DATAF := Conv_Data(Now, 1); //Data Avançada

  //Verifica se a data é menor que a faixa
  if (StrToDate(DATAE) < (StrToDate(DATAA) - DmPrincipal.cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO.Value)) then
  begin
    FrmPrincipal.MsgErro('Data escolhida menor que o permitido');
    Exit;
  end;

  //Verifica se a data é maior que a faixa
  if (StrToDate(DATAE) > (StrToDate(DATAA) + DmPrincipal.cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO.Value)) then
  begin
    FrmPrincipal.MsgErro('Data escolhida maior que o permitido');
    Exit;
  end;

  try
    FDataInicial := DtEscolhe;
    cdsProducaoPRC_DT_BALANCA.AsDateTime := FDataInicial;
    cdsProducaoPRC_DT_REGISTRO.AsDateTime := FDataInicial;
  except
    FrmPrincipal.MsgErro('Data incorreta');
    Exit;
  end;

  //Verificar o maior sequencial de acordo com a data modificada
  if not CnxOracle.Connected then
  begin
    CnxOracle.Connect;
  end;

  FormatSettings.ShortDateFormat := ('dd/mm/yy');

  QryUltimoGrava.Close;
  QryUltimoGrava.SQL.Clear;
  QryUltimoGrava.SQL.Add(' SELECT Coalesce(Max(substring(prc_identificacao from 9 for 4)),1) MAIORVALOR ' +
    '   FROM P_PRODUCAO ' +
    '  WHERE substring(prc_identificacao from 1 for 8) = ' + COPY(DateToStr(FDataInicial), 1, 2) +
    COPY(DateToStr(FDataInicial), 4, 2) +
    COPY(DateToStr(FDataInicial), 7, 2) +
    FormatFloat('00', cdsProducaoPRC_BALANCA.Value));
  QryUltimoGrava.Open;

  if QryUltimoGravaMAIORVALOR.AsInteger = 1 then
  begin
    if Icmp1.ReplyStatus.BytesReceived > 0 then
    begin
      qryOraProducao.close;
      qryOraProducao.SQL.Clear;
      qryOraProducao.SQL.Add(' Select Coalesce(Max(Substr(id_idenregiprod,9,4)),''1'') As MAIORVALOR ' +
        '   From producao_registro ' +
        '  Where id_idenregiprod like ''' + COPY(DateToStr(FDataInicial), 1, 2) +
        COPY(DateToStr(FDataInicial), 4, 2) +
        COPY(DateToStr(FDataInicial), 7, 2) +
        FormatFloat('00', cdsProducaoPRC_BALANCA.Value) + '%''');

      qryOraProducao.Open;

      intTemp := qryOraProducao.FieldByName('MAIORVALOR').AsInteger;
    end
    else
    begin
      intTemp := QryUltimoGravaMAIORVALOR.AsInteger;
    end;
  end
  else
  begin
    intTemp := QryUltimoGravaMAIORVALOR.AsInteger;
  end;

{  vteste:= COPY(DateToStr(FDataInicial),1,2) + //dia
           COPY(DateToStr(FDataInicial),4,2) + //mes
           COPY(DateToStr(FDataInicial),7,2) + //ano
           FormatFloat('00',cdsProducaoPRC_BALANCA.Value) ;//balança
           //cdsProducaoPRC_BALANCA.AsString ;   //balança
  DmPrincipal.qryOraProducao.Close;
  DmPrincipal.qryOraProducao.SQL.Clear;
  DmPrincipal.qryOraProducao.SQL.Text :=
      '  SELECT Max(SubStr(id_idenregiprod,9,4)) as maioriden '+
      '    FROM producao_registro            '+
      '   WHERE id_idenregiprod LIKE ''' + vteste + '%' + ''' ';}

  FormatSettings.ShortDateFormat := ('dd/mm/yyyy');

{  try
    DmPrincipal.qryOraProducao.Open;
    if DmPrincipal.qryOraProducao.IsEmpty then
      begin
        intTemp:=1;
      end
    else
      begin
        intTemp:= StrToInt(DmPrincipal.qryOraProducao.FieldByName('maioriden').AsString);
      end;
  except
   //
  end;
  DmPrincipal.qryOraProducao.Close;}

  //Acerta ultimo sequencial de acordo com a data alterada
  cdsIpBalanca.Edit;
  cdsIpBalancaIPB_DTREFESEQ.AsDateTime := FDataInicial;
  cdsIpBalancaIPB_SEQUENCIAL.AsInteger := intTemp;
  cdsIpBalanca.Post;
  //ApplyUpdates(0);
  cdsIpBalanca.ApplyUpdates(0);

  if CnxOracle.Connected then
  begin
    CnxOracle.Disconnect;
  end;

end;

procedure TDmPrincipal.GravarRegistro;
var
  F: TextFile;
  NomeArq: string;
  Imprime: Integer;
begin
  RegDuplicadoLocal := false ;
  ErroChaveLocal    := false ;
  Imprime := 1;
  if Vg_impressora = 0 then Imprime := 1;
  if Vg_impressora = 1 then if ImprimeETQ = 1 then Imprime := 1;
  if Vg_impressora = 1 then if ImprimeETQ = 0 then Imprime := 0;
  if FrmPrincipal.edtMaterial.Text <> cdsProducaoPRD_CODIGO.AsString then Imprime := 0;

  if Imprime = 0 then
  begin
    cdsProducao.Cancel;
  end;

  if Imprime = 1 then
  begin

    try
      cdsProducao.Post;
      cdsProducao.ApplyUpdates(0);
      VIDENTIFICACAO := cdsProducaoPRC_IDENTIFICACAO.Value;

      if VExportou then
      begin
        try
          cdsProducaoX.Open;
          cdsProducaoX.Filtered := False;
          cdsProducaoX.Filter := Format('PRC_IDENTIFICACAO = %s', [VIDENTIFICACAO]);
          cdsProducaoX.Filtered := True;

          if not cdsProducaoX.IsEmpty then
          begin
            cdsProducaoX.Edit;

            if ( not SomenteLocal  ) then
               cdsProducaoXPRC_INTEGRADO.AsString := 'S';

            cdsProducaoX.Post;
            cdsProducaoX.ApplyUpdates(0);
            cdsProducaoX.Close;

          end;
        except on E: Exception do
          FrmPrincipal.Gravar_Log(E.Message);
        end;
      end;
    except on E: Exception do
      begin
        if ( PosEx( 'Key violation' , E.Message,0) > 0 ) then
        begin
          ErroChaveLocal := true ;
          FrmPrincipal.LblAviso.Visible := True;
          FrmPrincipal.LblAviso.Caption := 'Avise o TI , pesagem não foi gravada. ! ';
        end;

        if (E.Message <> 'Operation aborted') then
          FrmPrincipal.Gravar_Log(E.Message);

        VIDENTIFICACAO := '';
      end;
    end;

    //*** Grava no arquivo TXT
    //*** O ultimo registro gravado localmente.
    VARQDIA := FormatDateTime('ddmmyy', Now);
    VARQDIA := 'log' + VARQDIA + '.txt';

    if not fileExists('C:\CaaSistemas\log\' + VARQDIA) then
    begin
      NomeArq := 'C:\CaaSistemas\log\' + VARQDIA;
      AssignFile(F, NomeArq);
      Rewrite(F);
      Append(F);
      FormatSettings.DateSeparator := '/';
      FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
      Writeln(F, VIDENTIFICACAO + ' - Pr.: ' + cdsProducaoPRD_CODIGO.Value + ' - Dt.: ' + DateTimeToStr(cdsProducao.FieldByName('PRC_DT_PADRAO').AsDateTime) + ' - Dt.Bal.: ' + DateTimeToStr(cdsProducao.FieldByName('PRC_DT_BALANCA').AsDateTime) + ' - K.Padrao: ' + FormatFloat('##,##00.00', cdsProducao.FieldByName('PRC_PESO_PADRAO').AsFloat) + ' - K.Liq.: ' + FormatFloat('##,##00.00', cdsProducao.FieldByName('PRC_PESO_LIQUIDO').AsFloat) + ' - Tara: ' + FormatFloat('##,##0.00', cdsProducao.FieldByName('PRC_TARA').AsFloat) + ' - Dig.: ' + cdsProducao.FieldByName('PRC_DIGITO').AsString);
    end
    else
    begin
      NomeArq := 'C:\CaaSistemas\log\' + VARQDIA;
      AssignFile(F, NomeArq);
      Append(F);
      FormatSettings.DateSeparator := '/';
      FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
      Writeln(F, VIDENTIFICACAO + ' - Pr.: ' + cdsProducaoPRD_CODIGO.Value + ' - Dt.: ' + DateTimeToStr(cdsProducao.FieldByName('PRC_DT_PADRAO').AsDateTime) + ' - Dt.Bal.: ' + DateTimeToStr(cdsProducao.FieldByName('PRC_DT_BALANCA').AsDateTime) + ' - K.Padrao: ' + FormatFloat('##,##00.00', cdsProducao.FieldByName('PRC_PESO_PADRAO').AsFloat) + ' - K.Liq.: ' + FormatFloat('##,##00.00', cdsProducao.FieldByName('PRC_PESO_LIQUIDO').AsFloat) + ' - Tara: ' + FormatFloat('##,##0.00', cdsProducao.FieldByName('PRC_TARA').AsFloat) + ' - Dig.: ' + cdsProducao.FieldByName('PRC_DIGITO').AsString);
    end;
    CloseFile(F);

    //GRAVA O ULTIMO REGISTRO LOCAL
    if (VIDENTIFICACAO <> '') then
    begin
      with cdsIpBalanca do
      begin
        Edit;
        cdsIpBalancaIPB_SEQUENCIAL.AsInteger := StrToInt(copy(VIDENTIFICACAO, 9, 4));
        Post;
        ApplyUpdates(0);
      end;
    end;

  end;

end;

procedure TDmPrincipal.VerificaPeso(Balanca: Boolean);
var PesoMinimo: Double;
  PesoMaximo: Double;
  PercentualPesoPadrao: Double;
begin
  if cdsProdutoPRD_PADRAO.AsString = 'S' then
  begin
      // PERCENTUAL PESO PADRAO - 03_Abril_09 - Luis
    if not cdsProdutoMAT_PERC_PESO_PADR.IsNull then
    begin
      PercentualPesoPadrao := cdsProdutoMAT_PERC_PESO_PADR.AsFloat / 100;
      PesoMinimo := cdsProducaoPRC_PESO_PADRAO.AsFloat + cdsProdutoPRD_TARA.AsFloat -
        (cdsProducaoPRC_PESO_PADRAO.AsFloat * PercentualPesoPadrao);

      PesoMaximo := cdsProducaoPRC_PESO_PADRAO.AsFloat + cdsProdutoPRD_TARA.AsFloat +
        (cdsProducaoPRC_PESO_PADRAO.AsFloat * PercentualPesoPadrao);
    end
    else
    begin
          {Cod. 116 - faixa: 160/180 - min: 11,52kg  max: 12,96
          Cod. 119 - faixa: 180/200 - min: 11,88kg  max: 13,20
          Cod. 120 - faixa: 200/220 - min: 12,00kg  max: 13,20
          Cod. 161 - faixa: 220/240 - min: 11,88kg  max: 12,96
          Cod. 196 - faixa: 240/260 - min: 11,52kg  max: 12,48}
      if cdsProdutoPRD_CODIGO.Value = '116' then
      begin
        PesoMinimo := 11.52 + cdsProdutoPRD_TARA.AsFloat;
        PesoMaximo := 12.96 + cdsProdutoPRD_TARA.AsFloat;
      end
      else if cdsProdutoPRD_CODIGO.Value = '119' then
      begin
        PesoMinimo := 11.88 + cdsProdutoPRD_TARA.AsFloat;
        PesoMaximo := 13.2 + cdsProdutoPRD_TARA.AsFloat;
      end
      else if cdsProdutoPRD_CODIGO.Value = '120' then
      begin
        PesoMinimo := 12 + cdsProdutoPRD_TARA.AsFloat;
        PesoMaximo := 13.2 + cdsProdutoPRD_TARA.AsFloat;
      end
      else if cdsProdutoPRD_CODIGO.Value = '161' then
      begin
        PesoMinimo := 11.88 + cdsProdutoPRD_TARA.AsFloat;
        PesoMaximo := 12.96 + cdsProdutoPRD_TARA.AsFloat;
      end
      else if cdsProdutoPRD_CODIGO.Value = '196' then
      begin
        PesoMinimo := 11.52 + cdsProdutoPRD_TARA.AsFloat;
        PesoMaximo := 12.48 + cdsProdutoPRD_TARA.AsFloat;
      end
      else
      begin
        PesoMinimo := cdsProducaoPRC_PESO_PADRAO.AsFloat + cdsProdutoPRD_TARA.AsFloat;
        PesoMaximo := cdsProducaoPRC_PESO_PADRAO.AsFloat + cdsProdutoPRD_TARA.AsFloat +
          (cdsProducaoPRC_PESO_PADRAO.AsFloat * 0.01);
      end;
    end;
  end
  else
  begin
    if ( vg_PesaMultiCaixas = 'N' ) then
    begin
         PesoMinimo := cdsProducaoPRC_PESO_PADRAO.AsFloat + cdsProdutoPRD_TARA.AsFloat -
          (cdsProducaoPRC_PESO_PADRAO.AsFloat * (cdsIpBalancaIPB_PERCENT_PESO_LIVRE.AsFloat / 100));

         PesoMaximo := cdsProducaoPRC_PESO_PADRAO.AsFloat + cdsProdutoPRD_TARA.AsFloat +
          (cdsProducaoPRC_PESO_PADRAO.AsFloat * (cdsIpBalancaIPB_PERCENT_PESO_LIVRE.AsFloat / 100));
    end
    else
    begin
//      PesoMinimo := cdsProdutoPRD_PESO_PADRAO_MEDIO.AsFloat + cdsProdutoPRD_TARA.AsFloat -
//        (cdsProdutoPRD_PESO_PADRAO_MEDIO.AsFloat * (cdsIpBalancaIPB_PERCENT_PESO_LIVRE.AsFloat / 100));
//
//      PesoMaximo := cdsProdutoPRD_PESO_PADRAO_MEDIO.AsFloat + cdsProdutoPRD_TARA.AsFloat +
//        (cdsProdutoPRD_PESO_PADRAO_MEDIO.AsFloat * (cdsIpBalancaIPB_PERCENT_PESO_LIVRE.AsFloat / 100));
         PesoMinimo := 1;
         PesoMaximo := 100000;
    end;
  end;


  if Balanca then
  begin
    if (cdsProducaoPRC_PESO_LIQUIDO.AsFloat < PesoMinimo) or (cdsProducaoPRC_PESO_LIQUIDO.AsFloat > PesoMaximo) then
    begin
      FResult := False;
      FrmPrincipal.MsgAviso('Peso inválido. Peso Mín.: ' + FormatFloat('##,##0.00', PesoMinimo) + ' kg Peso Máx.: ' + FormatFloat('##,##0.00', PesoMaximo) + ' kg');
      Abort;
    end;
  end
  else
  begin
    FrmPrincipal.edtFaixaPeso.Text := FormatFloat('##,##0.00', PesoMinimo) + ' - ' + FormatFloat('##,##0.00', PesoMaximo) + ' kg';
  end;
end;

procedure TDmPrincipal.Gera_Identificador;
var Data: TDateTime;
  Dia, Mes, Ano: Word;
  sDia, sMes, sAno: string;
  sSeq: string;
  Balanca: string;
begin
  Data := cdsProducaoPRC_DT_BALANCA.AsDateTime;
  DecodeDate(Data, Ano, Mes, Dia);

  sDia := IntToStr(Dia);
  sMes := IntToStr(Mes);
  sAno := Copy(IntToStr(Ano), 3, 2);

  if Length(sDia) = 1 then sDia := '0' + sDia;
  if Length(sMes) = 1 then sMes := '0' + sMes;

  Balanca := FormatFloat('00', cdsIpBalancaIPB_BALANCA.AsInteger);

  sSeq := GetSequencial;

  cdsProducaoPRC_IDENTIFICACAO.AsString := sDia + sMes + sAno + Balanca + sSeq;

end;

function TDmPrincipal.GetSequencial: string;
var
  intTemp: integer;
begin
  intTemp := cdsIpBalancaIPB_SEQUENCIAL.AsInteger;

  if intTemp >= 9997 then
  begin
    FrmPrincipal.Gravar_Log('Limite da numeração por dia / balança atingido.');
    intTemp := 1;
  end
  else
    intTemp := intTemp + 1;

  cdsIpBalanca.Edit;

  if (TRUNC(cdsProducaoPRC_DT_BALANCA.AsDateTime) > TRUNC(cdsIpBalancaIPB_ULTIMADT.AsDateTime)) then
  begin
    cdsIpBalancaIPB_ULTIMADT.AsDateTime := cdsProducaoPRC_DT_BALANCA.AsDateTime;
    intTemp := 1;
  end;

  cdsIpBalancaIPB_SEQUENCIAL.AsInteger := intTemp;
  cdsIpBalanca.Post;
  cdsIpBalanca.ApplyUpdates(0);

  Result := IntToStr(intTemp);

  case Length(Result) of
    1: Result := '000' + Result;
    2: Result := '00' + Result;
    3: Result := '0' + Result;
  end;
end;

function TDmPrincipal.Calcula_vencimento(DtImpressao: TDateTime; OsMeses: Integer; OsDias: Integer; TiraDias: Integer): string;
var
  AData: TDateTime;
begin

  AData := DtImpressao;
  AData := IncMonth(AData, OsMeses);
  AData := IncDay(AData, OsDias);
  AData := AData - TiraDias;
  Result := DatetoStr(AData);

end;

procedure TDmPrincipal.ImprimeEtiquetas;
var
  Dias: Integer;
  RLProducao, RLLote, RLValidade, RLBarras, RLEan, RLCodigo, RLDescricao, RLPeso, Peso, RL_BarraVar: string;
begin

  if Vg_impressora = 0 then
  begin

    //Zera valores
    RLBarras := '';
    RLEan := '';
    RLCodigo := '';
    RLDescricao := '';
    RLPeso := '';

    //Define o codigo de barras
    RLBarras := RLBarras + qryOraReImpressaoID_IDENREGIPROD.AsString;
    RLBarras := RLBarras + qryOraReImpressaoDIGITOVER.AsString;

    // Nr do Codigo de Barras
    RLEan := RLEan + Copy(qryOraReImpressaoID_IDENREGIPROD.AsString, 1, 2) + '.';
    RLEan := RLEan + Copy(qryOraReImpressaoID_IDENREGIPROD.AsString, 3, 2) + '.';
    RLEan := RLEan + Copy(qryOraReImpressaoID_IDENREGIPROD.AsString, 5, 2) + '.';
    RLEan := RLEan + Copy(qryOraReImpressaoID_IDENREGIPROD.AsString, 7, 2) + '.';
    RLEan := RLEan + Copy(qryOraReImpressaoID_IDENREGIPROD.AsString, 9, 4) + ' ';
    RLEan := RLEan + qryOraReImpressaoID_PRODMATEEMBA.AsString + ' ';
    if qryOraReImpressaoFL_PADRAO.AsString = 'S' then
      RLEan := RLEan + StrPeso(qryOraReImpressaoQN_PESOPADRREGIPROD.AsFloat)
    else
      RLEan := RLEan + StrPeso(qryOraReImpressaoQN_PESOLIQUREGIPROD.AsFloat);
    RLEan := RLEan + ' ' + qryOraReImpressaoDIGITOVER.AsString;

    // Descricao - Conteudo
    RLCodigo := qryOraReImpressaoID_PRODMATEEMBA.AsString;
    RLDescricao := qryOraReImpressaoNM_PRODREDUMATEEMBA.AsString;
    if qryOraReImpressaoFL_PADRAO.AsString = 'S' then
      RLPeso := StrPeso(qryOraReImpressaoQN_PESOPADRREGIPROD.AsFloat)
    else
      RLPeso := StrPeso(qryOraReImpressaoQN_PESOLIQUREGIPROD.AsFloat);

    //Desliga a caixa de dialogo de impressão
    FrmEtiqueta1.RLImpresso01.PrintDialog := False;
    //Desliga a barra de progresso da impressão
    FrmEtiqueta1.RLImpresso01.ShowProgress := False;

    //Define os valores
    FrmPrincipal.Gerar_Etiqueta_Codigo(RLBarras);
    FrmEtiqueta1.RLBarras.Picture := FrmPrincipal.image3.Picture;
    FrmEtiqueta1.RLEAN.Caption := RLEan;
    FrmEtiqueta1.RLCodigo.Caption := RLCodigo;
    FrmEtiqueta1.RLDescricao.Caption := RLDescricao;
    FrmEtiqueta1.RLPeso.Caption := RLPeso;

    //Imprime a etiqueta pequena
    FrmEtiqueta1.RLImpresso01.Prepare;
    FrmEtiqueta1.RLImpresso01.Print;

  end
  else
  begin

    if AchouEtiqueta = 0 then ShowMessage('PRODUTO SEM IMAGEM PARA A ETIQUETA');

    if AchouEtiqueta = 1 then
    begin

      //Zera valores
      RLBarras := '';
      RLLote := '';
      RLValidade := '';
      Peso := '';
      RL_BarraVar := '';

      //Define o lote
      //Data_atual;
      //RLLote :=  DatetoStr(Vg_DataHora) + ' / ' + FrmPrincipal.LblLoteExpo.Caption + '-' + InttoStr(gi_IdenUsua);
      //RLLote :=  DatetoStr(Vg_DataHora);
      RLLote := RLLote + Conv_data(StrtoDate(
        Copy(qryOraReImpressaoID_IDENREGIPROD.AsString, 1, 2) + '/' +
        Copy(qryOraReImpressaoID_IDENREGIPROD.AsString, 3, 2) + '/' +
        Copy(qryOraReImpressaoID_IDENREGIPROD.AsString, 5, 2)
        ), 2);

      //Define a validade
      //RLValidade := Calcula_vencimento(StrtoDate(RLLote), CDSEtiqExportDIAS_VALIDADE.Value, 0, 1);
      RLValidade := FormatDateTime(CDSEtiqExportFORMATO_DT_VENCTO.Value, (StrtoDate(RLLote) + CDSEtiqExportDIAS_VALIDADE.Value - 1));
      FrmPrincipal.LbVencExpo.Caption := RLValidade;

      //Define o codigo de barras
      RLBarras := RLBarras + qryOraReImpressaoID_IDENREGIPROD.AsString;
      RLBarras := RLBarras + qryOraReImpressaoDIGITOVER.AsString;

      // Nr do Codigo de Barras
      RLEan := RLEan + Copy(qryOraReImpressaoID_IDENREGIPROD.AsString, 1, 2) + '.';
      RLEan := RLEan + Copy(qryOraReImpressaoID_IDENREGIPROD.AsString, 3, 2) + '.';
      RLEan := RLEan + Copy(qryOraReImpressaoID_IDENREGIPROD.AsString, 5, 2) + '.';
      RLEan := RLEan + Copy(qryOraReImpressaoID_IDENREGIPROD.AsString, 7, 2) + '.';
      RLEan := RLEan + Copy(qryOraReImpressaoID_IDENREGIPROD.AsString, 9, 4) + ' ';
      RLEan := RLEan + qryOraReImpressaoID_PRODMATEEMBA.AsString + '   ';
      if qryOraReImpressaoFL_PADRAO.AsString = 'S' then
        RLEan := RLEan + StrPeso(qryOraReImpressaoQN_PESOPADRREGIPROD.AsFloat)
      else
        RLEan := RLEan + StrPeso(qryOraReImpressaoQN_PESOLIQUREGIPROD.AsFloat);

      RLEan := RLEan + ' Kg   ' + qryOraReImpressaoDIGITOVER.AsString;

      // Descricao - Conteudo
      RLCodigo := qryOraReImpressaoID_PRODMATEEMBA.AsString;

      //Desliga a caixa de dialogo de impressão
      FrmEtiqueta.RLImpresso00.PrintDialog := False;
      //Desliga a barra de progresso da impressão
      FrmEtiqueta.RLImpresso00.ShowProgress := False;

      //Define os valores
      FrmPrincipal.Gerar_Etiqueta_Codigo(RLBarras);
      FrmEtiqueta.RLBarras.Picture := FrmPrincipal.image2.Picture;

      //FrmEtiqueta.RLLote.Caption     := RLLote;
      FrmEtiqueta.RLLote.Caption := FormatDateTime(CDSEtiqExportFORMATO_DT_VENCTO.Value, (strtodate(RLLote)));
      FrmEtiqueta.RLValidade.Caption := RLValidade;
      //FrmEtiqueta.RLEAN.Caption      := RLCodigo + ' - ' + RLEan;
      FrmEtiqueta.RLCodigo.Caption := RLCodigo;
      FrmEtiqueta.RLEAN.Caption := conv_hora(Vg_DataHora, 1) + ' - ' + RLEan;



      if qryOraReImpressaoFL_PADRAO.AsString = 'S' then
        Peso := FormatFloat('##,#00.000', qryOraReImpressaoQN_PESOPADRREGIPROD.AsFloat)
      else
        Peso := FormatFloat('##,#00.000', qryOraReImpressaoQN_PESOLIQUREGIPROD.AsFloat);

      Peso := StringReplace(Peso, ',', '', [rfReplaceAll]);

      //if ( qryOraReImpressaoID_PRODMATEEMBA.Value = '405' ) then
      if (cdsProduto.FieldByName('FL_ETIQVAREJO').AsString = 'S') then
      begin
           {FrmEtiqueta.Bar_Varejo.Visible := True;
           RL_BarraVar := RightStr( '0000' + qryOraReImpressaoID_PRODMATEEMBA.AsString , 4) + Peso  ;
           FrmEtiqueta.Bar_Varejo.Caption := RL_BarraVar;}
        FrmEtiqueta.RLBarraVar.Visible := True;
        RL_BarraVar := RightStr('0000' + qryOraReImpressaoID_PRODMATEEMBA.AsString, 4) + Peso;
        FrmPrincipal.Gerar_Etiqueta_Codigo(RL_BarraVar);
        FrmEtiqueta.RLBarraVar.Picture := FrmPrincipal.image2.Picture;
      end
      else
      begin
           //FrmEtiqueta.Bar_Varejo.Visible := False;
        FrmEtiqueta.RLBarraVar.Visible := False;
      end;

      //Imprime a etiqueta grande
      FrmEtiqueta.RLImpresso00.Prepare;

      if (Vg_Ip = '10.0.1.165') or (Vg_Ip = '10.0.7.70') then
        FrmEtiqueta.RLImpresso00.Preview
      else
        FrmEtiqueta.RLImpresso00.Print;

      //Desmarca processo de reimpressao
      Reimpressao := 0;

    end;

  end;

end;

procedure TDmPrincipal.ImprimeCodBarras; //
var
  Dias: Integer;
  RLProducao, RLLote, RLValidade, RLBarras, RLEan, RLCodigo, RLDescricao, RLPeso, RL_BarraVar, Peso: string;
begin

  if Vg_impressora = 0 then
  begin

    //Zera valores
    RLBarras := '';
    RLEan := '';
    RLCodigo := '';
    RLDescricao := '';
    RLPeso := '';
    RL_BarraVar := '';

    //Define o codigo de barras
    RLBarras := RLBarras + cdsProducaoPRC_IDENTIFICACAO.AsString;
    RLBarras := RLBarras + cdsProducaoPRC_DIGITO.AsString;

    // Nr do Codigo de Barras
    RLEan := RLEan + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 1, 2) + '.';
    RLEan := RLEan + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 3, 2) + '.';
    RLEan := RLEan + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 5, 2) + '.';
    RLEan := RLEan + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 7, 2) + '.';
    RLEan := RLEan + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 9, 4) + ' ';
    RLEan := RLEan + cdsProducaoPRD_CODIGO.AsString + ' ';
    if cdsProdutoPRD_PADRAO.AsString = 'S' then
      RLEan := RLEan + StrPeso(cdsProducaoPRC_PESO_PADRAO.AsFloat)
    else
      RLEan := RLEan + StrPeso(cdsProducaoPRC_PESO_LIQUIDO.AsFloat);
    RLEan := RLEan + ' ' + cdsProducaoPRC_DIGITO.AsString;

    // Descricao - Conteudo
    RLCodigo := cdsProducaoPRD_CODIGO.AsString;
    RLDescricao := cdsProdutoPRD_DESC_REDUZIDA.AsString;
    if cdsProdutoPRD_PADRAO.AsString = 'S' then
      RLPeso := StrPeso(cdsProducaoPRC_PESO_PADRAO.AsFloat)
    else
      RLPeso := StrPeso(cdsProducaoPRC_PESO_LIQUIDO.AsFloat);

    //Desliga a caixa de dialogo de impressão
    FrmEtiqueta1.RLImpresso01.PrintDialog := False;
    //Desliga a barra de progresso da impressão
    FrmEtiqueta1.RLImpresso01.ShowProgress := False;

    //Define os valores
    FrmPrincipal.Gerar_Etiqueta_Codigo(RLBarras);
    FrmEtiqueta1.RLBarras.Picture := FrmPrincipal.image3.Picture;
    FrmEtiqueta1.RLEAN.Caption := RLEan;
    FrmEtiqueta1.RLCodigo.Caption := RLCodigo;
    FrmEtiqueta1.RLDescricao.Caption := RLDescricao;
    FrmEtiqueta1.RLPeso.Caption := RLPeso;

    //Imprime a etiqueta pequena
    FrmEtiqueta1.RLImpresso01.Prepare;
    FrmEtiqueta1.RLImpresso01.Print;

  end
  else
  begin

    if AchouEtiqueta = 0 then ShowMessage('PRODUTO SEM IMAGEM PARA A ETIQUETA');

    if AchouEtiqueta = 1 then
    begin

      //Zera valores
      RLBarras := '';
      RLLote := '';
      RLValidade := '';
      RL_BarraVar := '';
      Peso := '';

      //Define o lote
      //Data_atual;
      //RLLote :=  DatetoStr(Vg_DataHora) + ' / ' + FrmPrincipal.LblLoteExpo.Caption + '-' + InttoStr(gi_IdenUsua);
      //RLLote :=  DatetoStr(Vg_DataHora);
      RLLote := RLLote + Conv_data(StrtoDate(
        Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 1, 2) + '/' +
        Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 3, 2) + '/' +
        Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 5, 2)
        ), 2);

      //Define a validade
      //RLValidade := Calcula_vencimento(StrtoDate(RLLote), CDSEtiqExportDIAS_VALIDADE.Value, 0, 1);
      RLValidade := FormatDateTime(CDSEtiqExportFORMATO_DT_VENCTO.Value, (StrtoDate(RLLote) + CDSEtiqExportDIAS_VALIDADE.Value - 1));
      FrmPrincipal.LbVencExpo.Caption := RLValidade;

      //Define o codigo de barras
      RLBarras := RLBarras + cdsProducaoPRC_IDENTIFICACAO.AsString;
      RLBarras := RLBarras + cdsProducaoPRC_DIGITO.AsString;

      // Nr do Codigo de Barras
      RLEan := RLEan + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 1, 2) + '.';
      RLEan := RLEan + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 3, 2) + '.';
      RLEan := RLEan + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 5, 2) + '.';
      RLEan := RLEan + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 7, 2) + '.';
      RLEan := RLEan + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 9, 4) + ' ';
      RLEan := RLEan + cdsProducaoPRD_CODIGO.AsString + '   ';
      if cdsProdutoPRD_PADRAO.AsString = 'S' then
        RLEan := RLEan + StrPeso(cdsProducaoPRC_PESO_PADRAO.AsFloat)
      else
        RLEan := RLEan + StrPeso(cdsProducaoPRC_PESO_LIQUIDO.AsFloat);
      RLEan := RLEan + ' Kg   ' + cdsProducaoPRC_DIGITO.AsString;

      // Descricao - Conteudo
      RLCodigo := cdsProducaoPRD_CODIGO.AsString;

      //Desliga a caixa de dialogo de impressão
      FrmEtiqueta.RLImpresso00.PrintDialog := False;
      //Desliga a barra de progresso da impressão
      FrmEtiqueta.RLImpresso00.ShowProgress := False;

      //Define os valores
      FrmPrincipal.Gerar_Etiqueta_Codigo(RLBarras);
      FrmEtiqueta.RLBarras.Picture := FrmPrincipal.image2.Picture;
      //FrmEtiqueta.RLLote.Caption     := RLLote;
      FrmEtiqueta.RLLote.Caption := FormatDateTime(CDSEtiqExportFORMATO_DT_VENCTO.Value, (strtodate(RLLote)));
      FrmEtiqueta.RLValidade.Caption := RLValidade;
      //FrmEtiqueta.RLEAN.Caption      := RLCodigo + ' - ' + RLEan;
      FrmEtiqueta.RLCodigo.Caption := RLCodigo;
      FrmEtiqueta.RLEAN.Caption := conv_hora(Vg_DataHora, 1) + ' - ' + RLEan;

      if cdsProdutoPRD_PADRAO.AsString = 'S' then
        Peso := FormatFloat('##,000.000', cdsProducaoPRC_PESO_PADRAO.AsFloat)
      else
        Peso := FormatFloat('##,000.000', cdsProducaoPRC_PESO_LIQUIDO.AsFloat);

      Peso := StringReplace(Peso, ',', '', [rfReplaceAll]);

      //if ( cdsProducaoPRD_CODIGO.Value = '405' ) then
      if (cdsProduto.FieldByName('FL_ETIQVAREJO').AsString = 'S') then
      begin

           //FrmEtiqueta.Bar_Varejo.Visible := true;
        RL_BarraVar := RightStr('0000' + cdsProducaoPRD_CODIGO.AsString, 4) + Peso;
           //FrmEtiqueta.Bar_Varejo.Caption := RL_BarraVar;
        FrmEtiqueta.RLBarraVar.Visible := True;
           //RL_BarraVar := RightStr( '0000' + qryOraReImpressaoID_PRODMATEEMBA.AsString , 4) + Peso  ;
        FrmPrincipal.Gerar_Etiqueta_Codigo(RL_BarraVar);
        FrmEtiqueta.RLBarraVar.Picture := FrmPrincipal.image2.Picture;
      end
      else
      begin
        FrmEtiqueta.RLBarraVar.Visible := false;
      end;

      //Imprime a etiqueta grande
      FrmEtiqueta.RLImpresso00.Prepare;

      if (Vg_Ip = '10.0.1.165') then
        FrmEtiqueta.RLImpresso00.Preview()
      else
        FrmEtiqueta.RLImpresso00.Print;

    end;

  end;

end;

procedure TDmPrincipal.ImprimirUltimaEtiqueta;
var
  Dias: Integer;
  RLProducao, RLLote, RLValidade, RLBarras, RLEan, RLCodigo, RLDescricao, RLPeso, RL_BarraVar, Peso: string;
begin

  if Vg_impressora = 0 then
  begin

    //Zera valores
    RLBarras := '';
    RLEan := '';
    RLCodigo := '';
    RLDescricao := '';
    RLPeso := '';

    //Define o codigo de barras
    RLBarras := RLBarras + qryReImpressaoPRC_IDENTIFICACAO.AsString;
    RLBarras := RLBarras + qryReImpressaoPRC_DIGITO.AsString;

    // Nr do Codigo de Barras
    RLEan := RLEan + Copy(qryReImpressaoPRC_IDENTIFICACAO.AsString, 1, 2) + '.';
    RLEan := RLEan + Copy(qryReImpressaoPRC_IDENTIFICACAO.AsString, 3, 2) + '.';
    RLEan := RLEan + Copy(qryReImpressaoPRC_IDENTIFICACAO.AsString, 5, 2) + '.';
    RLEan := RLEan + Copy(qryReImpressaoPRC_IDENTIFICACAO.AsString, 7, 2) + '.';
    RLEan := RLEan + Copy(qryReImpressaoPRC_IDENTIFICACAO.AsString, 9, 4) + ' ';
    RLEan := RLEan + qryReImpressaoPRD_CODIGO.AsString + ' ';
    if qryReImpressaoPRD_PADRAO.AsString = 'S' then
      RLEan := RLEan + StrPeso(qryReImpressaoPRC_PESO_PADRAO.AsFloat)
    else
      RLEan := RLEan + StrPeso(qryReImpressaoPRC_PESO_LIQUIDO.AsFloat);
    RLEan := RLEan + ' ' + qryReImpressaoPRC_DIGITO.AsString;

    // Descricao - Conteudo
    RLCodigo := qryReImpressaoPRD_CODIGO.AsString;
    RLDescricao := qryReImpressaoPRD_DESC_REDUZIDA.AsString;
    if qryReImpressaoPRD_PADRAO.AsString = 'S' then
      RLPeso := StrPeso(qryReImpressaoPRC_PESO_PADRAO.AsFloat)
    else
      RLPeso := StrPeso(qryReImpressaoPRC_PESO_LIQUIDO.AsFloat);

    //Desliga a caixa de dialogo de impressão
    FrmEtiqueta1.RLImpresso01.PrintDialog := False;
    //Desliga a barra de progresso da impressão
    FrmEtiqueta1.RLImpresso01.ShowProgress := False;

    //Define os valores
    FrmPrincipal.Gerar_Etiqueta_Codigo(RLBarras);
    FrmEtiqueta1.RLBarras.Picture := FrmPrincipal.image3.Picture;
    FrmEtiqueta1.RLEAN.Caption := RLEan;
    FrmEtiqueta1.RLCodigo.Caption := RLCodigo;
    FrmEtiqueta1.RLDescricao.Caption := RLDescricao;
    FrmEtiqueta1.RLPeso.Caption := RLPeso;

    //Imprime a etiqueta pequena
    FrmEtiqueta1.RLImpresso01.Prepare;
    FrmEtiqueta1.RLImpresso01.Print;

  end
  else
  begin

    //If AchouEtiqueta = 0 then ShowMessage('PRODUTO SEM IMAGEM PARA A ETIQUETA');

    if AchouEtiqueta = 1 then
    begin

      //Zera valores
      RLBarras := '';
      RLLote := '';
      RLValidade := '';

      //Define o lote
      //Data_atual;
      //RLLote :=  DatetoStr(Vg_DataHora) + ' / ' + FrmPrincipal.LblLoteExpo.Caption + '-' + InttoStr(gi_IdenUsua);
      //RLLote :=  DatetoStr(Vg_DataHora);
      RLLote := RLLote + Conv_data(StrtoDate(
        Copy(qryReImpressaoPRC_IDENTIFICACAO.AsString, 1, 2) + '/' +
        Copy(qryReImpressaoPRC_IDENTIFICACAO.AsString, 3, 2) + '/' +
        Copy(qryReImpressaoPRC_IDENTIFICACAO.AsString, 5, 2)
        ), 2);

      //Define a validade
      //RLValidade := Calcula_vencimento(StrtoDate(RLLote), CDSEtiqExportDIAS_VALIDADE.Value, 0, 1);
      RLValidade := FormatDateTime(CDSEtiqExportFORMATO_DT_VENCTO.Value, (StrtoDate(RLLote) + CDSEtiqExportDIAS_VALIDADE.Value - 1));
      FrmPrincipal.LbVencExpo.Caption := RLValidade;

      //Define o codigo de barras
      RLBarras := RLBarras + qryReImpressaoPRC_IDENTIFICACAO.AsString;
      RLBarras := RLBarras + qryReImpressaoPRC_DIGITO.AsString;

      // Nr do Codigo de Barras
      RLEan := RLEan + Copy(qryReImpressaoPRC_IDENTIFICACAO.AsString, 1, 2) + '.';
      RLEan := RLEan + Copy(qryReImpressaoPRC_IDENTIFICACAO.AsString, 3, 2) + '.';
      RLEan := RLEan + Copy(qryReImpressaoPRC_IDENTIFICACAO.AsString, 5, 2) + '.';
      RLEan := RLEan + Copy(qryReImpressaoPRC_IDENTIFICACAO.AsString, 7, 2) + '.';
      RLEan := RLEan + Copy(qryReImpressaoPRC_IDENTIFICACAO.AsString, 9, 4) + ' ';
      RLEan := RLEan + qryReImpressaoPRD_CODIGO.AsString + '   ';
      if qryReImpressaoPRD_PADRAO.AsString = 'S' then
        RLEan := RLEan + StrPeso(qryReImpressaoPRC_PESO_PADRAO.AsFloat)
      else
        RLEan := RLEan + StrPeso(qryReImpressaoPRC_PESO_LIQUIDO.AsFloat);
      RLEan := RLEan + ' Kg   ' + qryReImpressaoPRC_DIGITO.AsString;

      // Descricao - Conteudo
      RLCodigo := qryReImpressaoPRD_CODIGO.AsString;

      //Desliga a caixa de dialogo de impressão
      FrmEtiqueta.RLImpresso00.PrintDialog := False;
      //Desliga a barra de progresso da impressão
      FrmEtiqueta.RLImpresso00.ShowProgress := False;

      //Define os valores
      FrmPrincipal.Gerar_Etiqueta_Codigo(RLBarras);
      FrmEtiqueta.RLBarras.Picture := FrmPrincipal.image2.Picture;
      //FrmEtiqueta.RLLote.Caption     := RLLote;
      FrmEtiqueta.RLLote.Caption := FormatDateTime(CDSEtiqExportFORMATO_DT_VENCTO.Value, (strtodate(RLLote)));
      FrmEtiqueta.RLValidade.Caption := RLValidade;
      //FrmEtiqueta.RLEAN.Caption      := RLCodigo + ' - ' + RLEan;
      FrmEtiqueta.RLCodigo.Caption := RLCodigo;
      FrmEtiqueta.RLEAN.Caption := conv_hora(Vg_DataHora, 1) + ' - ' + RLEan;

      if qryReImpressaoPRD_PADRAO.AsString = 'S' then
        Peso := FormatFloat('##,#00.000', qryReImpressaoPRC_PESO_PADRAO.AsFloat)
      else
        Peso := FormatFloat('##,#00.000', qryReImpressaoPRC_PESO_LIQUIDO.AsFloat);

      Peso := StringReplace(Peso, ',', '', [rfReplaceAll]);

      //if ( qryReImpressaoPRD_CODIGO.Value = '405' ) then
      if (cdsProduto.FieldByName('FL_ETIQVAREJO').AsString = 'S') then
      begin
           //FrmEtiqueta.Bar_Varejo.Visible := True;
        RL_BarraVar := RightStr('0000' + qryReImpressaoPRD_CODIGO.AsString, 4) + Peso;
           //FrmEtiqueta.Bar_Varejo.Caption := RL_BarraVar;
        FrmEtiqueta.RLBarraVar.Visible := True;
        FrmPrincipal.Gerar_Etiqueta_Codigo(RL_BarraVar);
        FrmEtiqueta.RLBarraVar.Picture := FrmPrincipal.image2.Picture;

      end
      else
      begin
        FrmEtiqueta.RLBarraVar.Visible := false;
      end;

      //Imprime a etiqueta grande
      FrmEtiqueta.RLImpresso00.Prepare;


      if (Vg_Ip = '10.0.1.165') then
        FrmEtiqueta.RLImpresso00.Preview
      else
        FrmEtiqueta.RLImpresso00.Print;

      //Desmarca processo de reimpressao
      Reimpressao := 0;

    end;

  end;

end;

procedure TDmPrincipal.Data_atual;
begin

  //Verifica a Data do Sistema
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := ' Select sysdate  from  dual ';
  qryTemp.Open;
  if not (qryTemp.IsEmpty) then
  begin
    Vg_DataHora := qryTemp.FieldByName('SYSDATE').AsDateTime;
  end;

end;
                                      
procedure TDmPrincipal.ExportaDados_IpBalanca;
begin
  try

    qryOraIpBalanca.Close;
    qryOraIpBalanca.ParamByName('IPB_IP').AsString := Vg_Ip;
    qryOraIpBalanca.Open;

    if qryOraIpBalanca.IsEmpty then
    begin

      qryOraIpBalanca.Insert;
      qryOraIpBalancaIPB_IP.AsString := cdsIpBalancaIPB_IP.AsString;

    end
    else

      qryOraIpBalanca.Edit;

    qryOraIpBalancaIPB_BALANCA.AsInteger := cdsIpBalancaIPB_BALANCA.AsInteger;
    qryOraIpBalancaIPB_SEQUENCIAL.AsInteger := cdsIpBalancaIPB_SEQUENCIAL.AsInteger;
    qryOraIpBalancaIPB_PERCENT_REDU_BALANC.AsFloat := cdsIpBalancaIPB_PERCENT_REDU_BALANC.AsFloat;
    qryOraIpBalancaIPB_PERCENT_PESO_LIVRE.AsFloat := cdsIpBalancaIPB_PERCENT_PESO_LIVRE.AsFloat;
    qryOraIpBalancaIPB_FAIXA_DATA_ALTERACAO.AsFloat := cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO.AsFloat;
    qryOraIpBalancaIPB_PORTA_IMPRESSORA.AsString := cdsIpBalancaIPB_PORTA_IMPRESSORA.AsString;
    qryOraIpBalancaIPB_PORTA_BALANCA.AsString := cdsIpBalancaIPB_PORTA_BALANCA.AsString;
    qryOraIpBalancaIPB_BALANCA_ESTAVEL.AsString := cdsIpBalancaIPB_BALANCA_ESTAVEL.AsString;
    qryOraIpBalancaIPB_BALANCA_INSTAVEL.AsString := cdsIpBalancaIPB_BALANCA_INSTAVEL.AsString;
    qryOraIpBalancaIPB_BALANCA_REST_01.AsString := cdsIpBalancaIPB_BALANCA_REST_01.AsString;
    qryOraIpBalancaIPB_BALANCA_REST_02.AsString := cdsIpBalancaIPB_BALANCA_REST_02.AsString;
    qryOraIpBalancaIPB_BALANCA_REST_03.AsInteger := cdsIpBalancaIPB_BALANCA_REST_03.AsInteger;
    qryOraIpBalancaIPB_TEMPO_INTEGRACAO.AsInteger := cdsIpBalancaIPB_TEMPO_INTEGRACAO.AsInteger;
    qryOraIpBalancaIPB_ULTIMADT.AsDateTime := cdsIpBalancaIPB_ULTIMADT.AsDateTime;
    qryOraIpBalancaIPB_DTREFESEQ.AsDateTime := cdsIpBalancaIPB_DTREFESEQ.AsDateTime;

    qryOraIpBalanca.Post;

  except
   //
  end;

end;

procedure TDmPrincipal.LogIntegracao(DtInicial, DtFinal: TDateTime);
var
  Qry: TSQLQuery;
begin

  Qry := TSQLQuery.Create(Self);

  with Qry do
  try
    SQLConnection := DmPrincipal.CnxFireBird;

    SQL.Add('INSERT INTO P_LOG_INTEGRACAO');
    SQL.Add('(LIT_DT_INICIAL, LIT_DT_FINAL, IPB_BALANCA)');
    SQL.Add('VALUES');
    SQL.Add('(:LIT_DT_INICIAL, :LIT_DT_FINAL, :IPB_BALANCA)');

    ParamByName('LIT_DT_INICIAL').AsSQLTimeStamp := DateTimeToSQLTimeStamp(DtInicial);
    ParamByName('LIT_DT_FINAL').AsSQLTimeStamp := DateTimeToSQLTimeStamp(DtFinal);
    ParamByName('IPB_BALANCA').AsInteger := cdsIpBalancaIPB_BALANCA.AsInteger;

    ExecSQL;
  except
    // nao faz nada, para nao travar a thread
  end;
end;

procedure TDmPrincipal.DataModuleDestroy(Sender: TObject);
begin
  //Desliga o banco de dados firebird
  CnxOracle.Close;
  //CnxFireBird.Close;
  CnxFireBird.Connected := False;
end;

procedure TDmPrincipal.CriaComunicaoSerial(Balanca: Boolean = True; Impressora: Boolean = True);
Var  VParity: TParity;
     VDataBits: TDataBits;
     VStopBits: TStopBits;
     VSwFlow  : TSwFlowControl;
begin

  if Balanca then
  begin
       VParity    := Serial_Balanca.Parity;
       VDataBits  := Serial_Balanca.DataBits;
       VStopBits  := Serial_Balanca.StopBits;
       VSwFlow    := Serial_Balanca.SwFlow;

       if ( PBaudRate = '') then
          PBaudRate := IntToStr(Serial_Balanca.BaudRateValue);

        if ( PDataBits <> '' ) then
            Case  StrToInt(PDataBits) of
                  5: VDataBits := db5BITS ;
                  6: VDataBits := db6BITS ;
                  7: VDataBits := db7BITS ;
                  8: VDataBits := db8BITS ;
            End ;

        if ( PParity = 'NONE' ) then
           VParity := ptNONE
        else
        if ( PParity = 'EVEN'  ) then
           VParity := ptEVEN
        else
        if ( PParity =  'MARK'  ) then
           VParity := ptMARK
        else
        if ( PParity =  'ODD'   ) then
           VParity := ptODD
        else
        if ( PParity =  'SPACE' ) then
           VParity := ptSPACE;

        if (PStopBits = 'sb1BITS' ) then
           VStopBits := sb1BITS
        else
        if (PStopBits = 'sb1HALFBITS' ) then
           VStopBits := sb1HALFBITS
        else
        if (PStopBits = 'sb2BITS' ) then
           VStopBits := sb2BITS;

        if (PFlowControl = 'sfNONE' ) then
           VSwFlow   := sfNONE
        else
        if (PFlowControl = 'sfXONXOF' ) then
           VSwFlow   := sfXONXOFF;

      Serial_Balanca.PortName := cdsIpBalancaIPB_PORTA_BALANCA.AsString;
      Serial_Balanca.DataBits := VDataBits;
      Serial_Balanca.Parity    := VParity ;
      Serial_Balanca.StopBits  := VStopBits;
      Serial_Balanca.SwFlow    := VSwFlow;
      Serial_Balanca.BaudRateValue := StrToInt(PBaudRate) ;

      if not Serial_Balanca.Connect then raise Exception.Create('Erro ao estabelecer comunicação com a porta serial.');

  end;

end;

procedure TDmPrincipal.CriaExportaDados;
begin
  FExportaDados := TExportaDados.Create(False);
end;

procedure TDmPrincipal.DestroiComunicaoSerial(Balanca: Boolean = True; Impressora: Boolean = True);
begin
  //Desconecta a impressora
  if (Balanca) and (cdsIpBalancaIPB_BALANCA.Value <> 99) then
    Serial_Balanca.Disconnect;
end;

procedure TDmPrincipal.VerificaEtiquetas(Filtro: TReImpressao);
var strWhere: string;

  procedure AddConstSql(Value: string);
  begin

    strWhere := strWhere + ' AND ';
    strWhere := strWhere + Value;

  end;

begin
  if not CnxOracle.Connected then

  try

    CnxOracle.Open;

  except

    on E: Exception do raise Exception.Create('Não foi possível estabelecer a conexão com a Base Oracle.' + Chr(10) + 'Erro: ' + E.Message);

  end;

  with Filtro do
  begin

    AddConstSql(Format('A.ID_IDENREGIPROD >= %s', [QuotedStr(valSeqInicial)]));
    AddConstSql(Format('A.ID_IDENREGIPROD <= %s', [QuotedStr(valSeqFinal)]));
    if blnFlag_ES then
      AddConstSql(Format('A.FL_STATREGIPROD = %s', [QuotedStr(valFlag_ES)]));
    if blnFlag_CR then
      AddConstSql(Format('A.FL_STATREGIPROD = %s', [QuotedStr(valFlag_CR)]));
    if blnFlag_DV then
      AddConstSql(Format('A.FL_STATREGIPROD = %s', [QuotedStr(valFlag_DV)]));
    if btnProd01 then
      AddConstSql(Format('A.ID_PRODMATEEMBA = %s', [QuotedStr(valProd01)]));

  end;

  qryOraReImpressao.Close;
  qryOraReImpressao.SQL.Clear;
  qryOraReImpressao.SQL.Text := StringReplace(FSqlReImpressao, '/*TROCA*/', strWhere, []);
 // qryOraReImpressao.SQL.SaveToFile('Filtra_reimpressao.txt');
  qryOraReImpressao.Open;

end;

procedure TDmPrincipal.Exporta_LogReImpressao;
begin

  qryOraLogReImpressao.Close;
  qryOraLogReImpressao.SQL.Clear;

  qryOraLogReImpressao.SQL.Add('INSERT INTO P_LOG_REIMPRESSAO');
  qryOraLogReImpressao.SQL.Add('(LRI_BALANCA, LRI_DATA_HORA, LRI_IDENTIFICACAO)');
  qryOraLogReImpressao.SQL.Add('VALUES');
  qryOraLogReImpressao.SQL.Add('(:LRI_BALANCA, :LRI_DATA_HORA, :LRI_IDENTIFICACAO)');

  qryOraLogReImpressao.ParamByName('LRI_BALANCA').ParamType := ptInput;
  qryOraLogReImpressao.ParamByName('LRI_DATA_HORA').ParamType := ptInput;
  qryOraLogReImpressao.ParamByName('LRI_IDENTIFICACAO').ParamType := ptInput;

  qryOraLogReImpressao.ParamByName('LRI_BALANCA').DataType := ftInteger;
  qryOraLogReImpressao.ParamByName('LRI_DATA_HORA').DataType := ftTimeStamp;
  qryOraLogReImpressao.ParamByName('LRI_IDENTIFICACAO').DataType := ftString;

  try

    cdsLogReImpressaoX.Open;
    cdsLogReImpressaoX.First;

    while not cdsLogReImpressaoX.Eof do
    begin

      qryOraLogReImpressao.ParamByName('LRI_BALANCA').asInteger := cdsLogReImpressaoXLRI_BALANCA.AsInteger;
      qryOraLogReImpressao.ParamByName('LRI_DATA_HORA').AsDateTime := SQLTimeStampToDateTime(cdsLogReImpressaoXLRI_DATA_HORA.AsSQLTimeStamp);
      qryOraLogReImpressao.ParamByName('LRI_IDENTIFICACAO').AsString := cdsLogReImpressaoXLRI_IDENTIFICACAO.AsString;

      try
        qryOraLogReImpressao.ExecSQL;

        cdsLogReImpressaoX.Edit;
        cdsLogReImpressaoXLRI_INTEGRADO.AsString := 'S';
        cdsLogReImpressaoX.Post;
        //cdsLogReImpressaoX.ApplyUpdates(0);
        cdsLogReImpressaoX.ApplyUpdates(0);

      except
        //
      end;

      cdsLogReImpressaoX.Next;
    end;
  finally
    cdsLogReImpressaoX.Close;
  end;

end;

procedure TDmPrincipal.Serial_BalancaReceiveData(Sender: TObject;
  DataPtr: Pointer; DataSize: Cardinal);
var
  strAux: string;
  FPesoAtual: Double;
  blnEstavel: Boolean;
begin
  //Aqui recebe o peso da balança
  FPesoAtual := 0;
  if cdsProducao.State = dsInsert then
  try
    strAux := '';
      // Converte o que a balança envia em string
    strAux := StringOfChar(' ', DataSize);
    Move(DataPtr^, PChar(strAux)^, DataSize);
      // remove caracteres inválidos
    strAux := StringReplace(strAux, #2, '', [rfReplaceAll]);
    strAux := StringReplace(strAux, #0, '', [rfReplaceAll]);
    strAux := StringReplace(strAux, #10, '', [rfReplaceAll]);
    strAux := StringReplace(strAux, #13, '', [rfReplaceAll]);

    strAux := Copy(strAux, Pos(cdsIpBalancaIPB_BALANCA_REST_01.AsString, strAux), strtoint( PTamStrCompleta ) );


    if strAux[1] <> cdsIpBalancaIPB_BALANCA_REST_01.AsString then
       begin
             Exit;
       end
    else if (strAux[2] <> cdsIpBalancaIPB_BALANCA_ESTAVEL.AsString) and (strAux[2] <> cdsIpBalancaIPB_BALANCA_INSTAVEL.AsString) then
         begin
               Exit;
          end
    else if strAux[3] <> cdsIpBalancaIPB_BALANCA_REST_02.AsString then
         begin
               Exit;
          end
    else if Length(strAux) <> strtoint( PTamStrCompleta ) then
         begin
               Exit;
          end;

    blnEstavel := strAux[2] = cdsIpBalancaIPB_BALANCA_ESTAVEL.AsString;

    strAux := Copy(strAux, strtoint( PPosIniString ) , strtoint( PTamString) );

    FPesoAtual := StrToInt(strAux) / cdsIpBalancaIPB_BALANCA_REST_03.AsInteger;
    FPesoAtual := StrToFloat(FormatFloat('#,##0.00', FPesoAtual));

    if blnEstavel then
      FrmPrincipal.lblPesoLiquido.Text := 'Peso líquido - ESTABILIZADO'
    else
      FrmPrincipal.lblPesoLiquido.Text := 'Peso líquido - estabilizando...';

      //Aqui joga o peso
    cdsProducao.Edit;
    cdsProducaoPRC_PESO_LIQUIDO.AsFloat := FPesoAtual;

    FrmPrincipal.ControlaPeso;
    cdsProducaoLOTEEXPO.AsString := FrmPrincipal.LblLoteExpo.Caption;
  except
    cdsProducao.Edit;
    cdsProducaoPRC_PESO_LIQUIDO.AsFloat := FPesoAtual;
  end;
end;

function TDmPrincipal.GetDigito(CodBarr: string): string;

  function SomaNrs(Value: string; CalcDigito1: Boolean = True): Integer;
  var intX: Integer;
    intC: Integer;
  begin
    intC := 2;
    Result := 0;

    if CalcDigito1 then
      for intX := 1 to Length(Value) do
      begin
        Result := Result + (StrToInt(Value[intX]) * intC);
        intC := intC + 1;
      end
    else
      for intX := Length(Value) downto 1 do
      begin
        Result := Result + (StrToInt(Value[intX]) * intC);
        intC := intC + 1;
      end;
  end;

var
  intSomaNrs: Integer;
  intNr: Integer;
  intDigito: Integer;
  intDigito2: Integer;
begin
  // inicializa variáveis

  intSomaNrs := 0;
  intNr := 0;
  intDigito := -1;
  intDigito2 := -1;

  // digito 1

  intSomaNrs := SomaNrs(CodBarr);
  while not (intDigito in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) do
  begin
    intDigito := intSomaNrs - (intNr * 11);

    if intDigito = 10 then
      intDigito := 0;

    intNr := intNr + 1;
  end;

  // digito 2

  intNr := 0;
  intSomaNrs := 0;

  intSomaNrs := SomaNrs(CodBarr, False);
  while not (intDigito2 in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) do
  begin
    intDigito2 := intSomaNrs - (intNr * 11);

    if intDigito2 = 10 then
      intDigito2 := 0;

    intNr := intNr + 1;
  end;

  // exibe resultado

  Result := IntToStr(intDigito) + IntToStr(intDigito2);
end;

procedure TDmPrincipal.FiltraProducao(CodIdentificacao: string);
begin
  cdsProducao.Filtered := False;
  cdsProducao.Filter := Format('PRC_IDENTIFICACAO = %s', [CodIdentificacao]);
  cdsProducao.Filtered := True;
end;

procedure TDmPrincipal.UltimoRegistroOracle(Vregiprod: string);
begin
  try
    if not CnxOracle.Connected then
    begin
      CnxOracle.Connect;
    end;
  //Verifica o ultimo registro no Oracle
    QrProducao.Close;
    QrProducao.SQL.Clear;

    QrProducao.SQL.Text :=
      'SELECT                                     ' +
      '    PRODUCAO_REGISTRO.ID_REGIPROD,         ' +
      '    PRODUCAO_REGISTRO.ID_IDENREGIPROD,     ' +
      '    PRODUCAO_REGISTRO.ID_PRODMATEEMBA      ' +
      'FROM                                       ' +
      '    PRODUCAO_REGISTRO                      ' +
      'WHERE                                      ' +
      '    PRODUCAO_REGISTRO.ID_IDENREGIPROD LIKE ''' + COPY(Vregiprod, 1, 7) + '%''' +
      'ORDER BY PRODUCAO_REGISTRO.ID_IDENREGIPROD DESC ';
    QrProducao.Open;
    QrProducao.First;
    FrmPrincipal.edtUltimoRegServer.Caption := QrProducao.fieldByName('ID_IDENREGIPROD').AsString;
//  If (FrmPrincipal.edtUltimoRegServer.Caption = '') then
//     FrmPrincipal.edtUltimoRegServer.Caption := '0';

    QrProducao.Close;
    CnxOracle.Disconnect;

  except
   //
  end;

end;

procedure TDmPrincipal.Atual_IpBalanca;
begin
  qryOraIpBalanca.Close;
  qryOraIpBalanca.ParamByName('IPB_IP').AsString := Vg_Ip;
  qryOraIpBalanca.Open;

  if (qryOraIpBalancaIPB_SEQUENCIAL.AsInteger > cdsIpBalancaIPB_SEQUENCIAL.AsInteger) then
  begin
    cdsIpBalanca.Edit;
    cdsIpBalancaIPB_IP.AsString := qryOraIpBalancaIPB_IP.AsString;
    cdsIpBalancaIPB_BALANCA.AsInteger := qryOraIpBalancaIPB_BALANCA.AsInteger;
    cdsIpBalancaIPB_SEQUENCIAL.AsInteger := qryOraIpBalancaIPB_SEQUENCIAL.AsInteger;
    cdsIpBalancaIPB_PERCENT_REDU_BALANC.AsFloat := qryOraIpBalancaIPB_PERCENT_REDU_BALANC.AsFloat;
    cdsIpBalancaIPB_PERCENT_PESO_LIVRE.AsFloat := qryOraIpBalancaIPB_PERCENT_PESO_LIVRE.AsFloat;
    cdsIpBalancaIPB_FAIXA_DATA_ALTERACAO.AsInteger := qryOraIpBalancaIPB_FAIXA_DATA_ALTERACAO.AsInteger;
    cdsIpBalancaIPB_PORTA_IMPRESSORA.AsString := qryOraIpBalancaIPB_PORTA_IMPRESSORA.AsString;
    cdsIpBalancaIPB_PORTA_BALANCA.AsString := qryOraIpBalancaIPB_PORTA_BALANCA.AsString;
    cdsIpBalancaIPB_BALANCA_ESTAVEL.AsString := qryOraIpBalancaIPB_BALANCA_ESTAVEL.AsString;
    cdsIpBalancaIPB_BALANCA_INSTAVEL.AsString := qryOraIpBalancaIPB_BALANCA_INSTAVEL.AsString;
    cdsIpBalancaIPB_BALANCA_REST_01.AsString := qryOraIpBalancaIPB_BALANCA_REST_01.AsString;
    cdsIpBalancaIPB_BALANCA_REST_02.AsString := qryOraIpBalancaIPB_BALANCA_REST_02.AsString;
    cdsIpBalancaIPB_BALANCA_REST_03.AsInteger := qryOraIpBalancaIPB_BALANCA_REST_03.AsInteger;
    cdsIpBalanca.Post;
      //cdsIpBalanca.ApplyUpdates(0);
    cdsIpBalanca.ApplyUpdates(0);
  end;
  qryOraIpBalanca.Close;
end;

procedure TDmPrincipal.GravaServer(CodIdentificacao: string);
begin

  try
    if not CnxOracle.Connected then
    begin
      CnxOracle.Connect;
    end;

    //qryOraInsereProducao.Close;
    qryOraProducao.SQL.Clear;

    qryOraProducao.SQL.Add('INSERT INTO PRODUCAO_REGISTRO');
    qryOraProducao.SQL.Add('(EMPRESA, FILIAL, ID_REGIPROD, ID_IDENREGIPROD, ID_ALMOXARIFADO, ID_MATERIAL,ID_EMBALAGEM,ID_MATEALMO,');
    qryOraProducao.SQL.Add(' ID_PRODMATEEMBA, DT_REGIPROD, DT_PADRREGIPROD, DT_BALAREGIPROD, ID_BALANCA, QN_PESOPADRREGIPROD,');
    qryOraProducao.SQL.Add(' QN_PESOLIQUREGIPROD, FL_STATREGIPROD, FX_REGIPROD, QN_TARAEMBAREGIPROD, DIGITOVER, LOTEEXPO, QT_CAIXA)');
    qryOraProducao.SQL.Add('VALUES');
    qryOraProducao.SQL.Add('(:EMPRESA, :FILIAL, ID_REGIPRODMATE.NEXTVAL, :ID_IDENREGIPROD, :ID_ALMOXARIFADO, :ID_MATERIAL, :ID_EMBALAGEM, :ID_MATEALMO,');
    qryOraProducao.SQL.Add(' :ID_PRODMATEEMBA, :DT_REGIPROD, :DT_PADRREGIPROD, :DT_BALAREGIPROD, :ID_BALANCA, :QN_PESOPADRREGIPROD,');
    qryOraProducao.SQL.Add(' :QN_PESOLIQUREGIPROD, :FL_STATREGIPROD, :FX_REGIPROD, :QN_TARAEMBAREGIPROD, :DIGITOVER, :LOTEEXPO, :QT_CAIXA)');

    qryOraProducao.ParamByName('EMPRESA').ParamType := ptInput;
    qryOraProducao.ParamByName('FILIAL').ParamType := ptInput;
    DmPrincipal.qryOraProducao.ParamByName('ID_IDENREGIPROD').ParamType := ptInput;
    qryOraProducao.ParamByName('ID_MATERIAL').ParamType := ptInput;
    qryOraProducao.ParamByName('ID_EMBALAGEM').ParamType := ptInput;
    qryOraProducao.ParamByName('ID_ALMOXARIFADO').ParamType := ptInput;
    qryOraProducao.ParamByName('ID_MATEALMO').ParamType := ptInput;
    qryOraProducao.ParamByName('ID_PRODMATEEMBA').ParamType := ptInput;
    qryOraProducao.ParamByName('DT_REGIPROD').ParamType := ptInput;
    qryOraProducao.ParamByName('DT_PADRREGIPROD').ParamType := ptInput;
    qryOraProducao.ParamByName('DT_BALAREGIPROD').ParamType := ptInput;
    qryOraProducao.ParamByName('ID_BALANCA').ParamType := ptInput;
    qryOraProducao.ParamByName('QN_PESOPADRREGIPROD').ParamType := ptInput;
    qryOraProducao.ParamByName('QN_PESOLIQUREGIPROD').ParamType := ptInput;
    qryOraProducao.ParamByName('FL_STATREGIPROD').ParamType := ptInput;
    qryOraProducao.ParamByName('FX_REGIPROD').ParamType := ptInput;
    qryOraProducao.ParamByName('QN_TARAEMBAREGIPROD').ParamType := ptInput;
    qryOraProducao.ParamByName('DIGITOVER').ParamType := ptInput;
    qryOraProducao.ParamByName('LOTEEXPO').ParamType := ptInput;
    qryOraProducao.ParamByName('QT_CAIXA').ParamType := ptInput;

    qryOraProducao.ParamByName('EMPRESA').DataType := ftString;
    qryOraProducao.ParamByName('FILIAL').DataType := ftInteger;
    qryOraProducao.ParamByName('ID_IDENREGIPROD').DataType := ftString;
    qryOraProducao.ParamByName('ID_MATERIAL').DataType := ftInteger;
    qryOraProducao.ParamByName('ID_EMBALAGEM').DataType := ftInteger;
    qryOraProducao.ParamByName('ID_ALMOXARIFADO').DataType := ftInteger;
    qryOraProducao.ParamByName('ID_MATEALMO').DataType := ftInteger;
    qryOraProducao.ParamByName('ID_PRODMATEEMBA').DataType := ftString;
    qryOraProducao.ParamByName('DT_REGIPROD').DataType := ftDateTime;
    qryOraProducao.ParamByName('DT_PADRREGIPROD').DataType := ftDateTime;
    qryOraProducao.ParamByName('DT_BALAREGIPROD').DataType := ftDateTime;
    qryOraProducao.ParamByName('ID_BALANCA').DataType := ftInteger;
    qryOraProducao.ParamByName('QN_PESOPADRREGIPROD').DataType := ftFloat;
    qryOraProducao.ParamByName('QN_PESOLIQUREGIPROD').DataType := ftFloat;
    qryOraProducao.ParamByName('FL_STATREGIPROD').DataType := ftString;
    qryOraProducao.ParamByName('FX_REGIPROD').DataType := ftString;
    qryOraProducao.ParamByName('QN_TARAEMBAREGIPROD').DataType := ftFloat;
    qryOraProducao.ParamByName('DIGITOVER').DataType := ftString;
    qryOraProducao.ParamByName('LOTEEXPO').DataType := ftString;
    qryOraProducao.ParamByName('QT_CAIXA').DataType := ftInteger;

    qryOraProducao.ParamByName('EMPRESA').AsString := Vg_Empresa;
    qryOraProducao.ParamByName('FILIAL').AsInteger := Vg_Filial;
    //If cdsProducaoPRC_IDENTIFICACAO.Value = '' then qryOraProducao.ParamByName('ID_IDENREGIPROD').AsString := '0';
    //If cdsProducaoPRC_IDENTIFICACAO.Value <> '' then qryOraProducao.ParamByName('ID_IDENREGIPROD').AsString := cdsProducaoPRC_IDENTIFICACAO.AsString;
    qryOraProducao.ParamByName('ID_IDENREGIPROD').AsString := cdsProducaoPRC_IDENTIFICACAO.AsString;
    qryOraProducao.ParamByName('ID_MATERIAL').AsInteger := cdsProdutoMAT_CODIGO.AsInteger;
    qryOraProducao.ParamByName('ID_EMBALAGEM').AsInteger := cdsProdutoEMB_CODIGO.AsInteger;
    qryOraProducao.ParamByName('ID_ALMOXARIFADO').AsInteger := 1;
    qryOraProducao.ParamByName('ID_MATEALMO').AsInteger := cdsProdutoMTA_CODIGO.AsInteger;
    qryOraProducao.ParamByName('ID_PRODMATEEMBA').AsString := cdsProducaoPRD_CODIGO.AsString;
    qryOraProducao.ParamByName('DT_REGIPROD').AsDateTime := StrToDateTime(FormatDateTime('DD/MM/YY hh:mm:ss', now)); //cdsProducaoPRC_DT_REGISTRO.AsDateTime; 
    qryOraProducao.ParamByName('DT_PADRREGIPROD').AsDateTime := cdsProducaoPRC_DT_PADRAO.AsDateTime;
    qryOraProducao.ParamByName('DT_BALAREGIPROD').AsDateTime := cdsProducaoPRC_DT_BALANCA.AsDateTime;
    qryOraProducao.ParamByName('ID_BALANCA').AsInteger := cdsIpBalancaIPB_BALANCA.AsInteger;
    qryOraProducao.ParamByName('QN_PESOPADRREGIPROD').AsFloat := cdsProducaoPRC_PESO_PADRAO.AsFloat;
    qryOraProducao.ParamByName('QN_PESOLIQUREGIPROD').AsFloat := cdsProducaoPRC_PESO_LIQUIDO.AsFloat;

    if cdsIpBalancaIPB_BALANCA.AsInteger in [2,4,6,99] then
      qryOraProducao.ParamByName('FL_STATREGIPROD').AsString := 'ES'
    else
      qryOraProducao.ParamByName('FL_STATREGIPROD').AsString := 'IV';

    qryOraProducao.ParamByName('FX_REGIPROD').AsString := 'N';
    qryOraProducao.ParamByName('QN_TARAEMBAREGIPROD').AsFloat := cdsProducaoPRC_TARA.AsFloat;
    //If cdsProducaoPRC_DIGITO.Value = '' then qryOraProducao.ParamByName('DIGITOVER').AsString := '0';
    //If cdsProducaoPRC_DIGITO.Value <> '' then qryOraProducao.ParamByName('DIGITOVER').AsString := cdsProducaoPRC_DIGITO.AsString;
    qryOraProducao.ParamByName('DIGITOVER').AsString := cdsProducaoPRC_DIGITO.AsString;
    qryOraProducao.ParamByName('LOTEEXPO').AsString := cdsProducaoLOTEEXPO.AsString;
    qryOraProducao.ParamByName('QT_CAIXA').AsInteger := 1;

    //qryOraProducao.SQL.SaveToFile('GravaRegistro.txt');

    qryOraProducao.ExecSQL;

    CnxOracle.Disconnect;

    FrmPrincipal.lblIntegracao01.Caption := IntToStr(StrToInt(FrmPrincipal.lblIntegracao01.Caption) + 1);
    VExportou := True;
    FrmPrincipal.LblAviso.Visible := False;
    SomenteLocal := false;
    FrmPrincipal.edtUltimoRegServer.Caption := cdsProducaoPRC_IDENTIFICACAO.AsString;

  except on E: Exception do
    begin
      CnxOracle.Disconnect;
      VExportou := False;
      FrmPrincipal.LblAviso.Visible := True;
      SomenteLocal := True;
      FrmPrincipal.Gravar_Log(E.Message);
    end;
  end;
end;

procedure TDmPrincipal.Icmp1Reply(ASender: TComponent;
  const AReplyStatus: TReplyStatus);
begin
  if AReplyStatus.BytesReceived = 0 then
    VExportou := False
  else
    VExportou := True;
end;

procedure TDmPrincipal.Verifica_data_inicializacao;
var
  n: Integer;
begin
  try
    //Altera a variavel VExportou no evento Icmp1Reply do componente Icmp1.
    if Vg_Cnx_Itape = True then Icmp1.Host := Copy(CnxOracle.Server, 1, 8);
    if Vg_Cnx_Sorocaba = True then Icmp1.Host := Copy(CnxOracle.Server, 1, 10);
    if Vg_Cnx_Teste = True then Icmp1.Host := Copy(CnxOracle.Server, 1, 10);
    if Vg_Cnx_Guapiacu = True then Icmp1.Host := Copy(CnxOracle.Server, 1, 8);
    if Vg_Cnx_Dacar = True then Icmp1.Host := Copy(CnxOracle.Server, 1, PosEx(':', CnxOracle.Server,1) - 1 );


    for n := 1 to 10 do
      Icmp1.Ping();

    //Esconde a mensagem de falta de rede
    FrmPrincipal.LblAviso.Visible := False;
    SomenteLocal := false;
    FrmPrincipal.BtDesligaSom.Visible := False;

    //Atualiza a data do sistema
    Data_atual;
  except
    VExportou := False;

    //Mostra a mensagem de falta de rede
    FrmPrincipal.LblAviso.Visible := True;
    SomenteLocal := True;

    //Coloca a data do sistema
    Vg_DataHora := Date;

    //Liga o som de aviso
    try
      FrmPrincipal.LigaSomContinuo;
    except
      FrmPrincipal.BtDesligaSom.Visible := False;
    end;
  end;
end;

procedure TDmPrincipal.cdsProducaoAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
var
  n, Imprime: Integer;
begin

  FResult := True;
  VExportou := False;

  if ( vg_PesaMultiCaixas <> 'S' ) then
  begin
      if not FrmPrincipal.btnSemEtiqueta.Enabled then ImprimeCodBarras
      else
        if (FrmPrincipal.btnSemEtiqueta.Enabled) and (not FrmPrincipal.btnSemEtiqueta.Down) then ImprimeCodBarras;
  end;

    //***** altera aqui p/ cada registro
    {if StrToIntDef(FrmPrincipal.pnlContadorTotal.Caption, 0) mod 5 = 0 then
    if not CnxOracle.Connected then CriaExportaDados;}
    //if FrmPrincipal.CBLocal.Checked=False then

  try
      //Altera a variavel VExportou no evento Icmp1Reply do componente Icmp1.
    if Vg_Cnx_Itape = True then Icmp1.Host := Copy(CnxOracle.Server, 1, 8);
    if Vg_Cnx_Sorocaba = True then Icmp1.Host := Copy(CnxOracle.Server, 1, 10);
    if Vg_Cnx_Teste = True then Icmp1.Host := Copy(CnxOracle.Server, 1, 10);
    if Vg_Cnx_Guapiacu = True then Icmp1.Host := Copy(CnxOracle.Server, 1, 8);
    if Vg_Cnx_Dacar = True then Icmp1.Host := Copy(CnxOracle.Server, 1, PosEx(':', CnxOracle.Server,1) - 1 );

    for n := 1 to 10 do Icmp1.Ping();

      //Esconde a mensagem de falta de rede
    FrmPrincipal.LblAviso.Visible := False;

    FrmPrincipal.BtDesligaSom.Visible := False;

      //Atualiza a data do sistema
    if ( not SomenteLocal  ) then
       Data_atual;

  except

    VExportou := False;

      //Mostra a mensagem de falta de rede
    FrmPrincipal.LblAviso.Visible := True;
    SomenteLocal := True;
      //Coloca a data do sistema
    Vg_DataHora := Date;

      //Liga o som de aviso
    try
      FrmPrincipal.LigaSomContinuo;
    except
      FrmPrincipal.BtDesligaSom.Visible := False;
    end;

  end;

  if ( VExportou ) and ( not SomenteLocal ) and
     ( not RegDuplicadoLocal ) AND ( not ErroChaveLocal )
  then
      GravaServer(VIDENTIFICACAO)
  else
  begin
    FrmPrincipal.LblAviso.Visible := True;

    if ( RegDuplicadoLocal ) then
        FrmPrincipal.LblAviso.Caption := 'Avise o TI , pesagem esta sendo gravada somente no LOG. ! '
    else
    if ( ErroChaveLocal ) then
        FrmPrincipal.LblAviso.Caption := 'Avise o TI , pesagem não foi gravada. ! '
    else
        FrmPrincipal.LblAviso.Caption := 'Avise o TI , sistema sem Rede! Pese apenas com a data atual!';

    SomenteLocal := True;
    FrmPrincipal.lblIntegracao02.Caption := IntToStr(StrToInt(FrmPrincipal.lblIntegracao02.Caption) + 1);
  end;

end;

procedure TDmPrincipal.cdsProducaoBeforePost(DataSet: TDataSet);
var
  imprime: Integer;
  strDigito: string;
  strX: string;
  vemail: Tstrings;
  sCodBarras, sCodNumBarras: string;
begin

  FResult := true;

  if (Length(cdsProdutoPRD_CODIGO.AsString) <> 3) or (Length(FrmPrincipal.edtMaterial.Text) <> 3) then
  begin
    FResult := False;
    FrmPrincipal.MsgErro('Código de Produto inválido.');
    FrmPrincipal.edtMaterial.SelectAll;
    Abort;
  end;

  if cdsProdutoPRD_ATIVO.AsString = 'N' then
  begin
    FResult := False;
    FrmPrincipal.MsgErro('Código não ativo.');
    FrmPrincipal.edtMaterial.SelectAll;
    Abort;
  end;

  if cdsProdutoPRD_TARA.AsFloat <= 0 then
  begin
    FResult := False;
    FrmPrincipal.MsgErro('Tara inválida.');
    FrmPrincipal.edtMaterial.SelectAll;
    Abort;
  end;

  if cdsProdutoPRD_PESO_PADRAO_MEDIO.AsFloat <= 0 then
  begin
    FResult := False;
    FrmPrincipal.MsgErro('Peso padrão/médio zerado.');
    FrmPrincipal.edtMaterial.SelectAll;
    Abort;
  end;

  VerificaPeso(True);

    cdsProducaoPRC_PESO_LIQUIDO.AsFloat := cdsProducaoPRC_PESO_LIQUIDO.AsFloat - cdsProducaoPRC_TARA.AsFloat;

  if cdsProdutoPRD_PADRAO.AsString = 'N' then
    cdsProducaoPRC_PESO_PADRAO.AsFloat := 0;

    //verifica sequencial

  Gera_Identificador;

  FUltimoProdutoPesado := cdsProdutoPRD_CODIGO.AsString;
  VUltimoRegistro := cdsProducaoPRC_IDENTIFICACAO.AsString;

  FrmPrincipal.edtContador.Caption := IntToStr(StrToIntDef(FrmPrincipal.edtContador.Caption, 0) + 1);
  FrmPrincipal.pnlContadorTotal.Caption := IntToStr(StrToIntDef(FrmPrincipal.pnlContadorTotal.Caption, 0) + 1);

  FrmPrincipal.edtUltimoRegGerado.Caption := cdsProdutoPRD_CODIGO.AsString + ' - ' + cdsProducaoPRC_IDENTIFICACAO.AsString;

    // Digito verificador
  strX := cdsProducaoPRC_IDENTIFICACAO.AsString;

  strX := StringReplace(strX, ',', '', [rfReplaceAll]);
  strDigito := GetDigito(strX);

  if Length(strDigito) <> 2 then
  begin
    FResult := False;
    FrmPrincipal.MsgAviso('Digito inválido. Pese novamente.');
    FrmPrincipal.edtMaterial.SelectAll;
    Abort;
  end;

  cdsProducaoPRC_DIGITO.AsString := strDigito;

    // Fim digito verificador

    //COD DE BARRAS
  sCodBarras := sCodBarras + cdsProducaoPRC_IDENTIFICACAO.AsString;
  sCodBarras := sCodBarras + strDigito;

  cdsProducaoPRC_CODBARRAS.AsString := sCodBarras;
    //Fim do cod de Barras

    //Numero embaixo do Cód. Barras
  sCodNumBarras := sCodNumBarras + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 1, 2) + '.';
  sCodNumBarras := sCodNumBarras + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 3, 2) + '.';
  sCodNumBarras := sCodNumBarras + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 5, 2) + '.';
  sCodNumBarras := sCodNumBarras + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 7, 2) + '.';
  sCodNumBarras := sCodNumBarras + Copy(cdsProducaoPRC_IDENTIFICACAO.AsString, 9, 4) + ' ';
  sCodNumBarras := sCodNumBarras + cdsProducaoPRD_CODIGO.AsString + ' ';
  if cdsProdutoPRD_PADRAO.AsString = 'S' then
    sCodNumBarras := sCodNumBarras + StrPeso(cdsProducaoPRC_PESO_PADRAO.AsFloat)
  else
    sCodNumBarras := sCodNumBarras + StrPeso(cdsProducaoPRC_PESO_LIQUIDO.AsFloat);
  sCodNumBarras := sCodNumBarras + ' ' + cdsProducaoPRC_DIGITO.AsString;

  cdsProducaoPRC_NUMBARRAS.AsString := sCodNumBarras;
    //Fim do Num. cod Barras

end;

procedure TDmPrincipal.PesaMultiplasCaixas ();
begin
     //Verifica  se pesa Multiplas Caixas
     qryTemp.Close;
     qryTemp.SQL.Clear;
     qryTemp.SQL.Text := ' Select SP.PESAGEM_MULTIPLAS_CAIXAS  From SISTEMA_PARAMETRO SP  Where ID_PARASIST = 1   ';
     qryTemp.Open;
     if not (qryTemp.IsEmpty) then
     begin
          vg_PesaMultiCaixas := qryTemp.FieldByName('PESAGEM_MULTIPLAS_CAIXAS').AsString;
     end;
end;

procedure TDmPrincipal.GravarRegistroCaixas();
Var
  i,Caixas : Integer;
  PesoMedio, Peso : Double;
begin
  Caixas := StrtoInt( FrmPrincipal.edt_Caixas.Text );
  PesoMedio := 0 ;

  if ( Caixas > 0 ) then
  begin
    PesoMedio := RoundTo( cdsProducaoPRC_PESO_LIQUIDO.AsFloat / Caixas , -2 ) ;
    Peso      := cdsProducaoPRC_PESO_LIQUIDO.AsFloat;
    //Caixas := Round( cdsProducaoPRC_PESO_LIQUIDO.AsFloat / cdsProducaoPRC_PESO_PADRAO.AsFloat );
  end;

  if ( PesoMedio > 0 ) then
  begin

    for i := 1 to Caixas do
    begin
      if not ( cdsProducao.State in [dsedit] ) then
        cdsProducao.Edit;

      cdsProducaoPRC_PESO_LIQUIDO.AsFloat := PesoMedio;
      GravarRegistro;

      if VIDENTIFICACAO = '' then exit;

      if DmPrincipal.FResult then
      begin
        FrmPrincipal.shpReducaoPeso.Color := clWhite;
        FrmPrincipal.shpReducaoPeso.Font.Color := clBlack;
        FrmPrincipal.MsgCorreto('Gerada Caixa '+ IntToStr(i)+ ' de ' + IntToStr(Caixas) );
        InsereNovoRegistro;
      end;

    end;

    FrmPrincipal.LbUltimaPesagem.Visible := true;
    FrmPrincipal.LbUltimaPesagem.Caption := 'Última Pesagem'+#13#10;
    FrmPrincipal.LbUltimaPesagem.Caption := FrmPrincipal.LbUltimaPesagem.Caption + 'HORA : '+ TimeTostr(Now())+#13#10 ;
    FrmPrincipal.LbUltimaPesagem.Caption := FrmPrincipal.LbUltimaPesagem.Caption + 'PESO : '+ FloatToStr( Peso)+#13#10 ;
    FrmPrincipal.LbUltimaPesagem.Caption := FrmPrincipal.LbUltimaPesagem.Caption + 'CAIXAS : '+ IntToStr(Caixas) ;

  end;
end;

procedure TDmPrincipal.dspProducaoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if ( PosEx( 'to store duplicate value' , E.Message,0) > 0 ) then
    RegDuplicadoLocal := true ;

  if ( PosEx( 'Key violation' , E.Message,0) > 0 ) then
    ErroChaveLocal := true ;

  FrmPrincipal.Gravar_Log(E.Message);

end;

procedure TDmPrincipal.ImportaDadosDB();
var
  Param_Data, Data_Atual :string;
  Id_Balanca             :Integer;
begin
  qryIpBalanca.Close;
  qryIpBalanca.Open;

  Param_Data := FormatDateTime('DDMMYY', Now);
  Data_Atual := FormatDateTime('DD/MM/YYYY', Now);
  Id_Balanca := qryIpBalanca.FieldByName('IPB_BALANCA').AsInteger;

  try
    FrmPrincipal.MsgAviso('Enviando dados para o servidor!');

    FrmPrincipal.edtMaterial.ReadOnly := True;
    FrmPrincipal.DBEdit2.ReadOnly := True;

    try
      //Conecta ao Oracle
      if (not CnxOracle.Connected) AND ( not FrmPrincipal.BdLocal)  then
        CnxOracle.Connect;

      //Faz a conexão com o servidor de sorocaba para as etiquetas
      FSqlReImpressao := qryOraReImpressao.SQL.Text;
    except
      on E: Exception do
      begin
        SomenteLocal := True;
        MessageDlg('Erro ao conectar ao servidor Oracle. O sistema funcionará apenas local.', mtWarning, [mbOK], 0);
        FrmPrincipal.Gravar_Log(E.Message);
      end;
    end;

    //Conecta ao banco de dados firebird
    try
      if not CnxFireBird.Connected then
        CnxFireBird.Connected := True;
    except
      on E: Exception do
      begin
        MessageDlg('Erro ao conectar ao servidor Firebird. ', mtError, [mbOK], 0);
        FrmPrincipal.Gravar_Log(E.Message);
      end;
    end;

    SQL_ApagaProdTemp.ParamByName('DT_INI').Value := Data_Atual + ' 00:00:00';
    SQL_ApagaProdTemp.ParamByName('DT_FIM').Value := Data_Atual + ' 23:59:59';
    SQL_ApagaProdTemp.ParamByName('PRC_BALANCA').Value := Id_Balanca;

    try
      SQL_ApagaProdTemp.Execute;
    except
      on E: Exception do
      begin
        MessageDlg('Erro ao apagar dados temporarios. Avise o TI. '+ E.Message, mtError, [mbOK], 0);
        Exit;
      end;
    end;

    qryTempFire.Close;
    qryTempFire.SQL.Clear;
    qryTempFire.SQL.Add('SELECT PRC_CODIGO, PRC_IDENTIFICACAO, PRD_CODIGO, PRC_DT_REGISTRO, PRC_DT_PADRAO, PRC_DT_BALANCA, PRC_BALANCA, PRC_PESO_PADRAO, PRC_PESO_LIQUIDO, PRC_TARA, PRC_DIGITO');
    qryTempFire.SQL.Add('FROM P_PRODUCAO');
    qryTempFire.SQL.Add('WHERE substring(PRC_IDENTIFICACAO FROM 1 FOR 6) =' + Param_Data );

    try
      qryTempFire.Open;
    except
      on E: Exception do
      begin
        MessageDlg('Erro ao abrir QryTempFire. '+ E.Message, mtError, [mbOK], 0);
        Exit;
      end;
    end;

    if (qryTempFire.RecordCount > 0) then
    begin

      qryRecuperaProdTemp.Open;
      qryRecuperaProdTemp.DisableControls;

      qryTempFire.First;
      while not qryTempFire.Eof do
      begin
        qryRecuperaProdTemp.Append;
        qryRecuperaProdTemp.FieldByName('PRC_CODIGO').Value           := qryTempFire.FieldByName('PRC_CODIGO').Value;
        qryRecuperaProdTemp.FieldByName('PRC_IDENTIFICACAO').Value    := qryTempFire.FieldByName('PRC_IDENTIFICACAO').Value;
        qryRecuperaProdTemp.FieldByName('PRD_CODIGO').Value           := qryTempFire.FieldByName('PRD_CODIGO').Value;
        qryRecuperaProdTemp.FieldByName('PRC_DT_REGISTRO').AsString   := qryTempFire.FieldByName('PRC_DT_REGISTRO').AsString;
        qryRecuperaProdTemp.FieldByName('PRC_DT_PADRAO').AsString     := qryTempFire.FieldByName('PRC_DT_PADRAO').AsString;
        qryRecuperaProdTemp.FieldByName('PRC_DT_BALANCA').AsString    := qryTempFire.FieldByName('PRC_DT_BALANCA').AsString;

        qryRecuperaProdTemp.FieldByName('PRC_BALANCA').Value          := qryTempFire.FieldByName('PRC_BALANCA').Value;
        qryRecuperaProdTemp.FieldByName('PRC_PESO_PADRAO').AsString   := qryTempFire.FieldByName('PRC_PESO_PADRAO').AsString;
        qryRecuperaProdTemp.FieldByName('PRC_PESO_LIQUIDO').AsString  := qryTempFire.FieldByName('PRC_PESO_LIQUIDO').AsString;
        qryRecuperaProdTemp.FieldByName('PRC_TARA').AsString          := qryTempFire.FieldByName('PRC_TARA').AsString;
        qryRecuperaProdTemp.FieldByName('PRC_DIGITO').Value           := qryTempFire.FieldByName('PRC_DIGITO').Value;

        qryRecuperaProdTemp.Post;
        qryRecuperaProdTemp.ApplyUpdates;
        qryRecuperaProdTemp.CommitUpdates;

        qryTempFire.Next;
      end;

      qryTempFire.Close;
      qryRecuperaProdTemp.EnableControls;

      Sql_RecuperaProd.ParamByName('DT_INISTR').AsString    := Data_Atual + ' 00:00:00';
      Sql_RecuperaProd.ParamByName('DT_FIMSTR').AsString    := Data_Atual + ' 23:59:59';
      Sql_RecuperaProd.ParamByName('DT_INI').AsString       := Data_Atual + ' 00:00:00';
      Sql_RecuperaProd.ParamByName('DT_FIM').AsString       := Data_Atual + ' 23:59:59';
      Sql_RecuperaProd.ParamByName('ID_BALANCA').AsInteger  := Id_Balanca;
      Sql_RecuperaProd.ParamByName('PRC_BALANCA').AsInteger := Id_Balanca;
      Sql_RecuperaProd.ParamByName('ID_DTBAL').AsString     := Param_Data + IntToStr(Id_Balanca);


      try
        Sql_RecuperaProd.Execute;
      except
        on E: Exception do
        begin
          MessageDlg('Erro ao recuperar dados automaticamente. Avise o TI. '+ E.Message, mtError, [mbOK], 0);
          Exit;
        end;
      end;

      FrmPrincipal.edtMaterial.ReadOnly := False;
      FrmPrincipal.DBEdit2.ReadOnly := False;
      
      FrmPrincipal.MsgLimpar;
    end;
  except
    on E: Exception do
    begin
      MessageDlg('Teste. '+ E.Message, mtError, [mbOK], 0);
//      Exit;
      FrmPrincipal.Gravar_Log(E.Message);
      Exit;
    end;
  end;

end;

end.

