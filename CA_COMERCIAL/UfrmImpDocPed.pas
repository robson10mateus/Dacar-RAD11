unit UfrmImpDocPed;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, DB, MemDS, DBAccess, Ora, Grids,
  DBGrids, ExtCtrls, Mask, DBCtrls, math, OraSmart, Menus,
  ActnList, RLFilters, RLHTMLFilter, RLPDFFilter, VirtualTable, ImgList,
  System.ImageList, System.Actions, Winapi.Windows;

type
  TPageControl = class(ComCtrls.TPageControl)
  protected
    function DoMouseWheel(Shift: TShiftState; WheelDelta: Integer;
      const MousePos: TPoint): Boolean; virtual;
  end;

type
  TfrmImpDocPed = class(TForm)
    PageControl1: TPageControl;
    TsLista: TTabSheet;
    grdDados: TDBGrid;
    DSPediVe: TOraDataSource;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    LCampos: TListBox;
    Label1: TLabel;
    CBCond: TComboBox;
    Label2: TLabel;
    EdExpre: TEdit;
    RGeou: TRadioGroup;
    BtIncluir: TBitBtn;
    MResul: TMemo;
    BtLimpar: TBitBtn;
    BtAtivar: TBitBtn;
    GroupBox2: TGroupBox;
    LBOrdemI: TListBox;
    BVOLTA: TBitBtn;
    BVAI: TBitBtn;
    LBOrdemR: TListBox;
    QryIten: TOraQuery;
    DSItem: TOraDataSource;
    Panel4: TPanel;
    BPESQ: TBitBtn;
    QrPVTotais: TOraQuery;
    DSPVTotais: TOraDataSource;
    QrPVTotaisEMPRESA: TStringField;
    QrPVTotaisT_DESCPEDIVEND: TFloatField;
    QrPVTotaisT_PESOPADREXPEPEDIVEND: TFloatField;
    QrPVTotaisT_FATUPEDIVEND: TFloatField;
    QrPVTotaisT_QUEBPEDIVEND: TFloatField;
    QrPVTotaisT_OUTRAJUSPEDIVEND: TFloatField;
    QrPVTotaisT_DEVOPEDIVEND: TFloatField;
    QrPVTotaisT_PESOPADRDEVOPEDIVEND: TFloatField;
    QrPVTotaisTOTFINAN: TFloatField;
    QrPVTotaisT_TPESOQUEBRA: TFloatField;
    TBTiturec: TOraTable;
    TBTiturecID_TITUREC: TIntegerField;
    TBTiturecEMPRESA: TStringField;
    TBTiturecFILIAL: TIntegerField;
    TBTiturecID_USUARIO: TIntegerField;
    TBTiturecRTIPO: TStringField;
    TBTiturecRCLASSIFI: TStringField;
    TBTiturecRMOEDA: TStringField;
    TBTiturecRDATAVENC: TDateTimeField;
    TBTiturecRCODIBANC: TStringField;
    TBTiturecRCODICOBR: TStringField;
    TBTiturecRPERCCOMI: TFloatField;
    TBTiturecRNUMEDOCU: TStringField;
    TBTiturecRVALODOCU: TFloatField;
    TBTiturecRDATADOCU: TDateTimeField;
    TBTiturecRULTIPAGA: TDateTimeField;
    TBTiturecRPAGOINDE: TFloatField;
    TBTiturecRMORADIA: TFloatField;
    TBTiturecRPAGOREAL: TFloatField;
    TBTiturecROUTRDESP: TFloatField;
    TBTiturecRNUMELOTE: TStringField;
    TBTiturecRNUMEAGEN: TStringField;
    TBTiturecRGERALOTE: TStringField;
    TBTiturecROCORCOBR: TStringField;
    TBTiturecRCOBRANCA: TStringField;
    TBTiturecRBAIXAR: TStringField;
    TBTiturecRNUMECONT: TStringField;
    TBTiturecRFLAGAJUS: TStringField;
    TBTiturecRNUMEPARC: TStringField;
    TBTiturecID_MOEDA: TFloatField;
    TBTiturecROBS: TStringField;
    TBTiturecRGEREMESSA: TStringField;
    SmartQuery1: TSmartQuery;
    DSTituRec: TOraDataSource;
    QrEndCli: TOraQuery;
    DSEndEntrega: TOraDataSource;
    QrEndCobra: TOraQuery;
    DSEndCobra: TOraDataSource;
    QrTipoCobr: TOraQuery;
    DSTipoCobr: TOraDataSource;
    QrConta: TOraQuery;
    DSConta: TOraDataSource;
    QrTipoLogi: TOraQuery;
    DStipoLogi: TOraDataSource;
    QrTipoPed: TOraQuery;
    QrFormaPG: TOraQuery;
    QrInstCob: TOraQuery;
    QrSituCob: TOraQuery;
    DSTipoPedi: TOraDataSource;
    DsformaPg: TOraDataSource;
    DsInstCob: TOraDataSource;
    DSSituCob: TOraDataSource;
    QrPre: TOraQuery;
    DSPre: TOraDataSource;
    QryItenEMPRESA: TStringField;
    QryItenFILIAL: TIntegerField;
    QryItenID_ITEMPEDIVEND: TFloatField;
    QryItenID_PEDIVEND: TFloatField;
    QryItenID_MATERIAL: TFloatField;
    QryItenID_EMBALAGEM: TFloatField;
    QryItenID_MATEEMBA: TFloatField;
    QryItenID_TIPOOPER: TFloatField;
    QryItenVL_UNITITEMPEDIVEND: TFloatField;
    QryItenQN_EMBAITEMPEDIVEND: TFloatField;
    QryItenQN_PESOITEMPEDIVEND: TFloatField;
    QryItenVL_TOTAITEMPEDIVEND: TFloatField;
    QryItenQN_PESOPADRITEMPEDIVEND: TFloatField;
    QryItenQN_TARAITEMPEDIVEND: TFloatField;
    QryItenVL_UNITBRUTITEMPEDIVEND: TFloatField;
    QryItenPC_DESCITEMPEDIVEND: TFloatField;
    QryItenVL_TOTABRUTITEMPEDIVEND: TFloatField;
    QryItenID_PRODMATEEMBA: TStringField;
    QryItenNM_PRODMATEEMBA: TStringField;
    QryItenNM_EMBALAGEM: TStringField;
    QryItenQN_TARAEMBA: TFloatField;
    QrTipoOper: TOraQuery;
    DSTipoOper: TOraDataSource;
    QrTipoOperID_TIPOOPER: TFloatField;
    QrTipoOperNM_DESCUSOTIPOOPER: TStringField;
    QryTemp: TOraQuery;
    QrTitu: TOraQuery;
    PM1: TPopupMenu;
    mniGeraDocu: TMenuItem;
    qryTempC: TOraQuery;
    QrDireitos: TOraQuery;
    Qrprec: TOraQuery;
    OSQL: TOraSQL;
    QryClie: TOraQuery;
    ActionList1: TActionList;
    Action1: TAction;
    QryItenQN_CAIXCORTITEMPEDIVEND: TFloatField;
    QryItenQN_EMBAEXPEITEMPEDIVEND: TFloatField;
    QryItenQN_PESOPADREXPEITEMPEDIVEND: TFloatField;
    QryItenQN_TARAREALEXPEITEMPEDIVEND: TFloatField;
    QryItenQN_PESOREALEXPEITEMPEDIVEND: TFloatField;
    QryItenFX_ITEMPEDIVEND: TStringField;
    QrRelNota: TOraQuery;
    ImprimirBoleto1: TMenuItem;
    ImprimirNotaFiscal1: TMenuItem;
    CancelarNotaFiscal1: TMenuItem;
    VisualizarNroNotas1: TMenuItem;
    qryTempFormPaga: TOraQuery;
    qryTempInstCobr: TOraQuery;
    qryTempFormPagaParc: TOraQuery;
    qryTempBole: TOraQuery;
    qryTempPediItem: TOraQuery;
    qryTempTitu: TOraQuery;
    qryPediVend: TOraQuery;
    qryNotaFisc: TOraQuery;
    qryPediVendItem: TOraQuery;
    qryNotaFiscItem: TOraQuery;
    qryNotaFiscBaseIcms: TOraQuery;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    qryBoleto: TOraQuery;
    qryTempUpda: TOraQuery;
    qryTempDele: TOraQuery;
    VisualizarBoleto1: TMenuItem;
    GerarBoletos1: TMenuItem;
    ImprimeNFCancelada1: TMenuItem;
    NotaFiscalSalvarHTML1: TMenuItem;
    ImprimeFatura1: TMenuItem;
    QryFatura: TOraQuery;
    QryFaturaEMPRESA: TStringField;
    QryFaturaFILIAL: TIntegerField;
    QryFaturaID_FATURA: TFloatField;
    QryFaturaID_PEDIVEND: TFloatField;
    QryFaturaFL_IMPRESSO: TStringField;
    QryFaturaID_CONTA: TFloatField;
    QryFaturaDT_EMISSAO: TDateTimeField;
    QryFaturaNM_CLIENTE: TStringField;
    QryFaturaNM_LOGRENDECLIE: TStringField;
    QryFaturaNR_LOGRENDECLIE: TStringField;
    QryFaturaGN_COMPENDECLIE: TStringField;
    QryFaturaNR_CEPENDECLIE: TStringField;
    QryFaturaNM_CIDADE: TStringField;
    QryFaturaSG_ESTADO: TStringField;
    QryFaturaNR_CNPJCLIE: TStringField;
    QryFaturaNR_INSCESTACLIE: TStringField;
    QryFaturaRDATAVENC: TDateTimeField;
    QryFaturaNR_NOTAFISC: TFloatField;
    QryFaturaVL_NOTAFISC: TFloatField;
    QryFaturaDT_EMISNOTAFISC: TDateTimeField;
    QryFaturaFL_COBRPADRENDECLIE: TStringField;
    QryFaturaLOGRA_COBRA: TStringField;
    QryFaturaNR_LOGR_COBRA: TStringField;
    QryFaturaCOMPL_LOGRA_COBRA: TStringField;
    QryFaturaCEP_COBRA: TStringField;
    QryFaturaBAIRRO_COBRA: TStringField;
    QryFaturaCIDADE_COBRA: TStringField;
    QryFaturaUF_COBRA: TStringField;
    QryFaturaNM_BAIRRO: TStringField;
    QryItemNfEle: TOraQuery;
    QryNfEle: TOraQuery;
    DSNfEle: TOraDataSource;
    DSItemNfEle: TOraDataSource;
    QryItemNfEleEMPRESA: TStringField;
    QryItemNfEleFILIAL: TIntegerField;
    QryItemNfEleID_ITEMNOTAFISC: TFloatField;
    QryItemNfEleID_NOTAFISC: TFloatField;
    QryItemNfEleID_MATERIAL: TFloatField;
    QryItemNfEleID_EMBALAGEM: TFloatField;
    QryItemNfEleID_MATEEMBA: TFloatField;
    QryItemNfEleNM_MATERIAL_ITEMNOTAFISC: TStringField;
    QryItemNfEleNR_CLASFISC_ITEMNOTAFISC: TStringField;
    QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC: TStringField;
    QryItemNfEleQN_EMBAITEMNOTAFISC: TIntegerField;
    QryItemNfEleQN_PESOITEMNOTAFISC: TFloatField;
    QryItemNfEleVL_UNITITEMNOTAFISC: TFloatField;
    QryItemNfEleVL_UNITBRUTITEMNOTAFISC: TFloatField;
    QryItemNfElePC_ICMSITEMNOTAFISC: TFloatField;
    QryItemNfElePC_IPIITEMNOTAFISC: TFloatField;
    QryItemNfElePC_REDUICMSITEMNOTAFISC: TFloatField;
    QryItemNfEleVL_IPIITEMNOTAFISC: TFloatField;
    QryItemNfEleVL_ICMSITEMNOTAFISC: TFloatField;
    QryItemNfEleFL_LEGECLASITEMNOTAFISC: TIntegerField;
    QryItemNfEleID_PRODMATEEMBA_ITEMNOTAFISC: TStringField;
    QryItemNfEleVL_DESCICMSITEMNOTAFISC: TFloatField;
    QryItemNfEleVL_ITEMNOTAFISC: TFloatField;
    QryItemNfEleVL_BRUTITEMNOTAFISC: TFloatField;
    QryItemNfEleFX_ITEMNOTAFISC: TStringField;
    QryItemNfEleNR_CFOP_ITEMNOTAFISC: TStringField;
    QryItemNfEleNM_NATUOPERCFOP_ITEMNF: TStringField;
    QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC: TStringField;
    QryItemNfEleNM_SITUTRIBICMSITEMNOTAFISC: TStringField;
    QryNfEleEMPRESA: TStringField;
    QryNfEleFILIAL: TIntegerField;
    QryNfEleID_NOTAFISC: TFloatField;
    QryNfEleSG_SERINOTAFISC_NOTAFISC: TStringField;
    QryNfEleFL_TIPONOTAFISC: TStringField;
    QryNfEleDT_EMISNOTAFISC: TDateTimeField;
    QryNfEleDT_SAIDNOTAFISC: TDateTimeField;
    QryNfEleNR_CFOP_NOTAFISC: TStringField;
    QryNfEleNM_NATUOPERNOTAFISC: TStringField;
    QryNfEleID_CLIENTE: TFloatField;
    QryNfEleID_FORNECEDOR: TFloatField;
    QryNfEleNM_DESTREMENOTAFISC: TStringField;
    QryNfEleGN_ENDENOTAFISC: TStringField;
    QryNfEleNM_BAIRNOTAFISC: TStringField;
    QryNfEleNR_CEPNOTAFISC: TStringField;
    QryNfEleNM_CIDANOTAFISC: TStringField;
    QryNfEleSG_ESTANOTAFISC: TStringField;
    QryNfEleNM_PAISNOTAFISC: TStringField;
    QryNfEleNR_FONENOTAFISC: TStringField;
    QryNfEleNR_CNPJNOTAFISC: TStringField;
    QryNfEleNR_CPFNOTAFISC: TStringField;
    QryNfEleNR_IENOTAFISC: TStringField;
    QryNfEleNR_RGNOTAFISC: TStringField;
    QryNfEleVL_BASEICMSNOTAFISC: TFloatField;
    QryNfEleVL_ICMSNOTAFISC: TFloatField;
    QryNfEleVL_SEGUNOTAFISC: TFloatField;
    QryNfEleVL_OUTRDESPNOTAFISC: TFloatField;
    QryNfEleVL_IPINOTAFISC: TFloatField;
    QryNfEleVL_NOTAFISC: TFloatField;
    QryNfEleVL_BASEIPINOTAFISC: TFloatField;
    QryNfEleNM_TRANSPORTADOR_NOTAFISC: TStringField;
    QryNfEleGN_PLACVEICNOTAFISC: TStringField;
    QryNfEleNM_ENDETRANNOTAFISC: TStringField;
    QryNfEleNM_CIDATRANNOTAFISC: TStringField;
    QryNfEleSG_ESTATRANNOTAFISC: TStringField;
    QryNfEleNR_CNPJTRANNOTAFISC: TStringField;
    QryNfEleNR_CPFTRANNOTAFISC: TStringField;
    QryNfEleNR_IETRANNOTAFISC: TStringField;
    QryNfEleNR_RGTRANNOTAFISC: TStringField;
    QryNfEleQN_VOLUNOTAFISC: TIntegerField;
    QryNfEleGN_ESPENOTAFISC: TStringField;
    QryNfEleGN_MARCNOTAFISC: TStringField;
    QryNfEleNR_VOLUNOTAFISC: TIntegerField;
    QryNfEleQN_PESOBRUTNOTAFISC: TFloatField;
    QryNfEleQN_PESOLIQUNOTAFISC: TFloatField;
    QryNfEleGN_ENDEENTRNOTAFISC: TStringField;
    QryNfEleNM_BAIRENTRNOTAFISC: TStringField;
    QryNfEleNM_CIDAENTRNOTAFISC: TStringField;
    QryNfEleSG_ESTAENTRNOTAFISC: TStringField;
    QryNfEleGN_CEPENTRNOTAFISC: TStringField;
    QryNfEleFL_PESSNOTAFISC: TStringField;
    QryNfEleFL_PESSTRANNOTAFISC: TStringField;
    QryNfEleFL_TIPOFRETNOTAFISC: TStringField;
    QryNfElePC_ICMSFRETNOTAFISC: TFloatField;
    QryNfEleVL_ICMSFRETNOTAFISC: TFloatField;
    QryNfEleDT_PROCNOTAFISC: TDateTimeField;
    QryNfEleVL_DEVOIPINOTAFISC: TFloatField;
    QryNfEleFL_ZONAFRANNOTAFISC: TStringField;
    QryNfEleFL_IMPRNOTAFISC: TStringField;
    QryNfEleFL_CANCNOTAFISC: TStringField;
    QryNfEleNR_INSCESTACLIE: TStringField;
    QryNfEleNM_CLIENTE: TStringField;
    QryNfEleFL_PESSCLIE: TStringField;
    QryNfEleNR_CNPJCLIE: TStringField;
    QryNfEleNR_CPFCLIE: TStringField;
    QryNfEleNM_LOGRENDECLIE: TStringField;
    QryNfEleNR_LOGRENDECLIE: TStringField;
    QryNfEleNM_CIDADE: TStringField;
    QryNfEleID_IBGE: TIntegerField;
    QryNfEleSG_ESTADO: TStringField;
    QryNfEleNM_PAIS: TStringField;
    QryNfEleNM_BAIRRO: TStringField;
    QryNfEleFL_EXPONOTAFISC: TStringField;
    QryNfEleVL_IPIISENNOTAFISC: TFloatField;
    QryNfEleVL_IPIOUTRNOTAFISC: TFloatField;
    QryNfEleGN_OBSENOTAFISC: TStringField;
    QryNfEleVL_DESCPEDIVEND_NOTAFISC: TFloatField;
    QryNfEleVL_PRODNOTAFISC: TFloatField;
    QryNfEleSG_ESTAPLACVEICNOTAFISC: TStringField;
    QryNfEleVL_FRETNOTAFISC: TFloatField;
    QryNfEleFX_NOTAFISC: TStringField;
    QryNfEleNR_NOTAFISC: TFloatField;
    QryNfEleGN_OBSDESCNOTAFISC: TStringField;
    QryItemNfEleVL_BASEICMSITEMNOTAFISC: TFloatField;
    QryNFeBc: TOraQuery;
    QryBolNFe: TOraQuery;
    QryNfEleID_PEDIVEND: TFloatField;
    QryBolNFeEMPRESA: TStringField;
    QryBolNFeFILIAL: TIntegerField;
    QryBolNFeID_BOLETO: TFloatField;
    QryBolNFeID_PEDIVEND: TFloatField;
    QryBolNFeID_CONTA: TFloatField;
    QryBolNFeNR_BOLETO: TStringField;
    QryBolNFeNR_PARCBOLE: TIntegerField;
    QryBolNFeDT_GERABOLE: TDateTimeField;
    QryBolNFeDT_EMISBOLE: TDateTimeField;
    QryBolNFeDT_VENCBOLE: TDateTimeField;
    QryBolNFeVL_BOLETO: TFloatField;
    QryBolNFeVL_MORADIABOLE: TFloatField;
    QryBolNFeVL_MULTBOLE: TFloatField;
    QryBolNFeQN_DIASPROTBOLE: TIntegerField;
    QryBolNFeNR_SEQUBOLE: TFloatField;
    QryBolNFeFL_IMPRBOLE: TStringField;
    QryBolNFeFX_BOLETO: TStringField;
    QryBolNFeFL_CANCBOLE: TStringField;
    QryNfEleIBGEPAIS: TIntegerField;
    QryBolNFeID_FORMPAGA: TFloatField;
    QryItemNfEleNR_CLASFISC: TStringField;
    QryNfEleNR_DDDCIDA: TStringField;
    qryPisCofins: TOraQuery;
    qryPisCofinsNR_ST_PISCOFINS: TStringField;
    qryCidExpNf: TOraQuery;
    qryCidExpNfSG_ESTADO: TStringField;
    qryCidExpNfNM_CIDADE: TStringField;
    qryMaterial: TOraQuery;
    qryMaterialID_PRODMATEEMBA: TStringField;
    qryMaterialQN_EAN: TStringField;
    qryMaterialNCM: TStringField;
    qryNotas: TOraQuery;
    qryNotasID_NOTAFISC: TFloatField;
    qryNotasSG_SERINOTAFISC_NOTAFISC: TStringField;
    qryTabNCM: TOraQuery;
    qryNFEXML: TOraQuery;
    qryNFEXMLEMPRESA: TStringField;
    qryNFEXMLFILIAL: TIntegerField;
    qryNFEXMLID_NFE_XML: TFloatField;
    qryNFEXMLID_NOTAFISC: TFloatField;
    qryNFEXMLDT_EMISNOTAFISC: TStringField;
    qryNFEXMLNR_NOTAFISC: TFloatField;
    qryNFEXMLRECIBO_ENVIO: TStringField;
    qryNFEXMLRECIBO_RETORNO: TStringField;
    qryNFEXMLDATA_ENVIO: TStringField;
    qryNFEXMLNFE_NUMERO: TFloatField;
    qryNFEXMLNFE_CHAVE: TStringField;
    qryNFEXMLNFE_DT_RECEBTO: TStringField;
    qryNFEXMLNFE_PROTOCOLO: TStringField;
    qryNFEXMLNFE_CHAVE_DIGITAL: TStringField;
    qryNFEXMLNFE_LOCAL: TStringField;
    qryNFEXMLNFE_XML: TBlobField;
    qryNFEXMLENVIO: TStringField;
    qryNFEXMLRETORNO: TStringField;
    qryNFEXMLAUTORIZACAO: TStringField;
    qryNFEXMLSR_NOTAFISC: TStringField;
    qryNFEXMLLOTE: TFloatField;
    qryNFEXMLDANFE: TStringField;
    qryNFEXMLCANCELADA: TStringField;
    qryNFEXMLINUTILIZADA: TStringField;
    qryNFEXMLEMAIL: TStringField;
    qryCliente: TOraQuery;
    TmSefaz: TTimer;
    EnviarNFe1: TMenuItem;
    ImprimirDanfe1: TMenuItem;
    CancelarNFe1: TMenuItem;
    InutilizarNFe1: TMenuItem;
    EnviarEmailNFeSPdf: TMenuItem;
    EnviarEmailNFeCPdf: TMenuItem;
    CancelarComunicacaoSefaz1: TMenuItem;
    EnviarNFe21: TMenuItem;
    qryClienteID_CLIENTE: TFloatField;
    qryClienteNM_CLIENTE: TStringField;
    qryClienteGN_EMAICLIE: TStringField;
    qryClienteID_IBGE: TIntegerField;
    qryClienteNM_PAIS: TStringField;
    QryCidade: TOraQuery;
    QryCidadeNM_CIDADE: TStringField;
    QryCidadeID_IBGE: TIntegerField;
    qryTabNCMID_NCM: TFloatField;
    qryTabNCMNCM: TStringField;
    qryTabNCMDESCRICAO: TStringField;
    qryTabNCMALICOTA: TFloatField;
    QryReferenciadas: TOraQuery;
    QrTipoPedID_TIPOPEDIVEND: TFloatField;
    QrTipoPedNM_TIPOPEDIVEND: TStringField;
    qryPdCliente: TOraQuery;
    QItem: TOraQuery;
    QItemEMPRESA: TStringField;
    QItemFILIAL: TIntegerField;
    QItemID_ITEMPEDIVEND: TFloatField;
    QItemID_PEDIVEND: TFloatField;
    QItemID_MATERIAL: TFloatField;
    QItemID_EMBALAGEM: TFloatField;
    QItemID_MATEEMBA: TFloatField;
    QItemID_TIPOOPER: TFloatField;
    QItemVL_UNITITEMPEDIVEND: TFloatField;
    QItemQN_EMBAITEMPEDIVEND: TFloatField;
    QItemQN_PESOITEMPEDIVEND: TFloatField;
    QItemVL_TOTAITEMPEDIVEND: TFloatField;
    QItemQN_PESOPADRITEMPEDIVEND: TFloatField;
    QItemQN_TARAITEMPEDIVEND: TFloatField;
    QItemVL_UNITBRUTITEMPEDIVEND: TFloatField;
    QItemPC_DESCITEMPEDIVEND: TFloatField;
    QItemVL_TOTABRUTITEMPEDIVEND: TFloatField;
    QItemID_PRODMATEEMBA: TStringField;
    QItemNM_PRODMATEEMBA: TStringField;
    QItemNM_EMBALAGEM: TStringField;
    QItemQN_TARAEMBA: TFloatField;
    QItemQN_CAIXCORTITEMPEDIVEND: TFloatField;
    QItemQN_EMBAEXPEITEMPEDIVEND: TFloatField;
    QItemQN_PESOPADREXPEITEMPEDIVEND: TFloatField;
    QItemQN_TARAREALEXPEITEMPEDIVEND: TFloatField;
    QItemQN_PESOREALEXPEITEMPEDIVEND: TFloatField;
    QItemFX_ITEMPEDIVEND: TStringField;
    QItemSG_UNIDMEDI: TStringField;
    QItemNM_REDUEMBA: TStringField;
    QItemQN_TARAEMBAPROD_BALANCAO: TFloatField;
    QItemVL_UNITIPI: TFloatField;
    QItemFL_IPIBASEICMS: TStringField;
    QItemVL_ITEMTABEPREC: TFloatField;
    qryPdClienteEMPRESA: TStringField;
    qryPdClienteFILIAL: TIntegerField;
    qryPdClienteID_CLIENTE: TFloatField;
    qryPdClienteIE_CLIENTE: TStringField;
    qryPdClienteID_INTECLIE: TStringField;
    qryPdClienteNM_CLIENTE: TStringField;
    qryPdClienteNM_FANTCLIE: TStringField;
    qryPdClienteNM_REDUCLIE: TStringField;
    qryPdClienteID_TRATCLIE: TFloatField;
    qryPdClienteID_GRUPCLIE: TFloatField;
    qryPdClienteID_TIPOESTA: TFloatField;
    qryPdClienteID_ATIVECON: TFloatField;
    qryPdClienteID_TIPOVEND: TFloatField;
    qryPdClienteID_REGICOME: TFloatField;
    qryPdClienteID_REGILOGI: TFloatField;
    qryPdClienteID_SUBRLOGI: TFloatField;
    qryPdClienteID_REGISUBRLOGI: TFloatField;
    qryPdClienteID_FORNECEDOR_TRANSPORTADOR: TFloatField;
    qryPdClienteID_TIPOPEDIVEND: TFloatField;
    qryPdClienteID_FORMPAGA: TFloatField;
    qryPdClienteID_SITUCOBR: TFloatField;
    qryPdClienteID_TIPOCOBR: TFloatField;
    qryPdClienteID_INSTCOBR: TFloatField;
    qryPdClienteID_CONTA: TFloatField;
    qryPdClienteIE_CONTCONT: TStringField;
    qryPdClienteID_TIPOLOGR: TFloatField;
    qryPdClienteNM_LOGRENDECLIE: TStringField;
    qryPdClienteNR_LOGRENDECLIE: TStringField;
    qryPdClienteGN_COMPENDECLIE: TStringField;
    qryPdClienteID_BAIRRO: TFloatField;
    qryPdClienteNR_CEPENDECLIE: TStringField;
    qryPdClienteNR_CAIXPOSTENDECLIE: TStringField;
    qryPdClienteNR_CEPCAIXPOSTENDECLIE: TStringField;
    qryPdClienteNR_FONECLIE: TStringField;
    qryPdClienteNR_FAXCLIE: TStringField;
    qryPdClienteNR_FONECOMPCLIE: TStringField;
    qryPdClienteGN_URLCLIE: TStringField;
    qryPdClienteGN_EMAICLIE: TStringField;
    qryPdClienteDT_NASCCLIE: TDateTimeField;
    qryPdClienteDT_CADACLIE: TDateTimeField;
    qryPdClienteDT_PRIMCOMPCLIE: TDateTimeField;
    qryPdClienteDT_ALTECLIE: TDateTimeField;
    qryPdClienteFL_PESSCLIE: TStringField;
    qryPdClienteFL_PRIOCLIE: TIntegerField;
    qryPdClienteFL_TIPOBLOQCLIE: TStringField;
    qryPdClienteFL_BLOQADMICLIE: TStringField;
    qryPdClienteFL_ATIVCLIE: TStringField;
    qryPdClienteNR_CNPJCLIE: TStringField;
    qryPdClienteNR_INSCESTACLIE: TStringField;
    qryPdClienteNR_INSCPRODCLIE: TStringField;
    qryPdClienteNR_RGCLIE: TStringField;
    qryPdClienteGN_ORGAEXPERGCLIE: TStringField;
    qryPdClienteNR_CPFCLIE: TStringField;
    qryPdClienteNM_PAICLIE: TStringField;
    qryPdClienteNM_MAECLIE: TStringField;
    qryPdClienteQN_DIASVISICLIE: TIntegerField;
    qryPdClienteVL_LIMICREDCLIE: TFloatField;
    qryPdClienteVL_CREDATUACLIE: TFloatField;
    qryPdClienteQN_PONTLOGICLIE: TIntegerField;
    qryPdClienteGN_MENSVENDCLIE: TStringField;
    qryPdClienteGN_OBSECLIE: TStringField;
    qryPdClienteQN_DIFIENTRCLIE: TIntegerField;
    qryPdClienteVL_CREDESPECLIE: TFloatField;
    qryPdClienteVL_CREDESPEUSADCLIE: TFloatField;
    qryPdClienteQN_TITUVENCCLIE: TIntegerField;
    qryPdClienteVL_TITUVENCCLIE: TFloatField;
    qryPdClienteVL_CREDUSADCLIE: TFloatField;
    qryPdClienteID_TABEPREC: TFloatField;
    qryPdClienteFX_CLIENTE: TStringField;
    qryPdClienteID_USUASIST_BLOQ: TFloatField;
    qryPdClienteID_FORMPAGA_LIMITE: TFloatField;
    qryPdClienteFL_CONTICMSCLIE: TStringField;
    qryPdClientePC_DESCPADRCLIE: TFloatField;
    qryPdClientePC_BONIPADRCLIE: TFloatField;
    qryPdClienteFL_NF_POSTERIOR: TStringField;
    qryPdClienteFL_ARMAZENA: TStringField;
    qryPdClientePC_FRETEMAX: TFloatField;
    qryPdClienteFL_EXIBDESCNF: TStringField;
    qryPdClienteID_IBGE: TIntegerField;
    qryPdClienteNM_PAIS: TStringField;
    qryPdClienteNM_BAIRRO: TStringField;
    qryPdClienteSG_ESTADO: TStringField;
    qryPdClienteNM_CIDADE: TStringField;
    QryReferenciadasID_NFREFERENCIADA: TFloatField;
    QryReferenciadasID_PEDIVEND: TFloatField;
    QryReferenciadasEMPRESA: TStringField;
    QryReferenciadasFILIAL: TIntegerField;
    QryReferenciadasID_NOTAFISC: TFloatField;
    QryReferenciadasTIPO: TStringField;
    QryReferenciadasB13_REFNFE: TStringField;
    QryReferenciadasB14_CUF: TStringField;
    QryReferenciadasB14_AAMM: TStringField;
    QryReferenciadasB14_CNPJ: TStringField;
    QryReferenciadasB14_MOD: TStringField;
    QryReferenciadasB14_SERIE: TStringField;
    QryReferenciadasB14_NNF: TStringField;
    QryReferenciadasB20A_CUF: TStringField;
    QryReferenciadasB20A_AAMM: TStringField;
    QryReferenciadasB20A_IE: TStringField;
    QryReferenciadasB20A_MOD: TStringField;
    QryReferenciadasB20A_SERIE: TStringField;
    QryReferenciadasB20A_NNF: TStringField;
    QryReferenciadasB20D_CNPJ: TStringField;
    QryReferenciadasB20E_CPF: TStringField;
    QryReferenciadasB20I_REFCTE: TStringField;
    QryReferenciadasB20J_MOD: TStringField;
    QryReferenciadasB20J_NECF: TStringField;
    QryReferenciadasB20J_COO: TStringField;
    QryItemNfEleQN_EAN_NFE: TStringField;
    QryFormaPagaPed: TOraQuery;
    QryFormaPagaPedID_SITUCOBR: TFloatField;
    QryFormaPagaPedID_FORMPAGA: TFloatField;
    qryEANFE: TOraQuery;
    qryEANFEQN_EAN_NFE: TStringField;
    QryItemNfEleSG_ORDEMCOMPRA: TStringField;
    QryItemNfEleQN_ITEMORDEMCOMPRA: TIntegerField;
    qCTeTomador: TOraQuery;
    qCTeTomadorID_CLIENTE: TFloatField;
    qCTeTomadorNR_CNPJCLIE: TStringField;
    qCTeTomadorNR_INSCESTACLIE: TStringField;
    qCTeTomadorNM_CLIENTE: TStringField;
    qCTeTomadorNM_FANTCLIE: TStringField;
    qCTeTomadorNM_LOGRENDECLIE: TStringField;
    qCTeTomadorNR_LOGRENDECLIE: TStringField;
    qCTeTomadorNM_BAIRRO: TStringField;
    qCTeTomadorCMUN: TIntegerField;
    qCTeTomadorNM_CIDADE: TStringField;
    qCTeTomadorNR_CEPENDECLIE: TStringField;
    qCTeTomadorSG_ESTADO: TStringField;
    qCTeTomadorCPAIS: TIntegerField;
    qCTeTomadorNM_PAIS: TStringField;
    qCTeTomadorNR_FONECLIE: TStringField;
    qCTeRemDest: TOraQuery;
    qCTe: TOraQuery;
    qCTeEmitente: TOraQuery;
    qCTeEmitenteCNPJ: TStringField;
    qCTeEmitenteIE: TStringField;
    qCTeEmitenteNM_EMPRESARIAL: TStringField;
    qCTeEmitenteENDERECO: TStringField;
    qCTeEmitenteEND_NUMERO: TStringField;
    qCTeEmitenteBAIRRO: TStringField;
    qCTeEmitenteCODIGO_MUNICIPIO: TStringField;
    qCTeEmitenteCIDADE: TStringField;
    qCTeEmitenteCEP: TStringField;
    qCTeEmitenteUF: TStringField;
    qCTeRemDestID_CLIENTE: TFloatField;
    qCTeRemDestCNPJ: TStringField;
    qCTeRemDestINSCRICAO_ESTADUAL: TStringField;
    qCTeRemDestNOME: TStringField;
    qCTeRemDestLOGRADOURO: TStringField;
    qCTeRemDestNUMERO: TStringField;
    qCTeRemDestBAIRRO: TStringField;
    qCTeRemDestCOMPLEMENTO: TStringField;
    qCTeRemDestCEP: TStringField;
    qCTeRemDestMUNICIPIO_ID_IBGE: TIntegerField;
    qCTeRemDestMUNICIPIO: TStringField;
    qCTeRemDestESTADO_SIGLA: TStringField;
    qCTeRemDestESTADO_ID_IBGE: TIntegerField;
    qCTeRemDestESTADO: TStringField;
    qCTeRemDestPAIS_ID_IBGE: TIntegerField;
    qCTeRemDestPAIS: TStringField;
    qCTeRemDestTELEFONE: TStringField;
    QryInfNFE: TOraQuery;
    QryInfNFECHAVE: TStringField;
    QryCTECompServ: TOraQuery;
    QryCTECompServID_CTECOMPSERV: TFloatField;
    QryCTECompServID_PEDIVEND: TFloatField;
    QryCTECompServNM_NOME: TStringField;
    QryCTECompServVL_VALOR: TFloatField;
    qCTeID_NOTAFISC: TFloatField;
    qCTeNR_CFOP_NOTAFISC: TStringField;
    qCTeNM_NATUOPERNOTAFISC: TStringField;
    qCTeNR_NOTAFISC: TFloatField;
    qCTeFORPAG: TFloatField;
    qCTeGN_OBSENOTAFISC: TStringField;
    qCTeVL_NOTAFISC: TFloatField;
    qCTeVL_SEGUNOTAFISC: TFloatField;
    qCTeQN_PESOITEMNOTAFISC: TFloatField;
    qCTeNM_MATERIAL_ITEMNOTAFISC: TStringField;
    qCTeFL_SITUTRIBICMS_ITEMNOTAFISC: TStringField;
    qCTeQN_VOLUNOTAFISC: TIntegerField;
    qCTeQN_PESOBRUTNOTAFISC: TFloatField;
    qCTeQN_PESOLIQUNOTAFISC: TFloatField;
    qCTeGN_PLACVEICNOTAFISC: TStringField;
    qCTeGN_OBSEPADRNOTAFISC: TStringField;
    qCTeVL_IMPOBASEICMSNOTAFISC: TFloatField;
    qCTeVL_BASEICMSNOTAFISC: TFloatField;
    qCTePC_BASEICMSNOTAFISC: TFloatField;
    qCTePC_REDUICMSITEMNOTAFISC: TFloatField;
    qCTeDT_FATUPEDIVEND: TDateTimeField;
    qCTeDT_ENTRPEDIVEND: TDateTimeField;
    qCTeVL_FATUPEDIVEND: TFloatField;
    qCTeID_TOMADOR: TFloatField;
    qCTeID_REMETENTE: TFloatField;
    qCTeID_DESTINATARIO: TFloatField;
    qCTePRODUTO_PREDOMINANTE: TStringField;
    qCTeGN_OUTRAS_CARACTERISTICAS: TStringField;
    qCTeVL_TOTAL_MERCADORIA: TFloatField;
    qCTeCOD_UNIDADE_MEDIDA: TStringField;
    qCTeNM_TIPO_MEDIDA: TStringField;
    qCTeQN_QUANTIDADE_CTE: TFloatField;
    QryValidaCTE: TOraQuery;
    QryValidaCTEID_PEDIVEND: TFloatField;
    QryValidaCTEID_TOMADOR: TFloatField;
    QryValidaCTEID_EMITENTE: TFloatField;
    QryValidaCTEID_REMETENTE: TFloatField;
    QryValidaCTEID_DESTINATARIO: TFloatField;
    QryValidaCTEID_NOTAFISC: TFloatField;
    QryNfEleDTHORA_GERADOC: TDateTimeField;
    qCTeSG_SERINOTAFISC_NOTAFISC: TStringField;
    Qr_CaBase: TOraQuery;
    Qr_CaBaseID_BASE: TIntegerField;
    Qr_CaBaseNM_EMPRESARIAL: TStringField;
    Qr_CaBaseINSCRICAO_ESTADUAL: TStringField;
    Qr_CaBaseINSCRICAO_MUNICIPAL: TStringField;
    Qr_CaBaseCNPJ: TStringField;
    Qr_CaBaseCNAE: TStringField;
    Qr_CaBaseENDERECO: TStringField;
    Qr_CaBaseEND_NUMERO: TStringField;
    Qr_CaBaseBAIRRO: TStringField;
    Qr_CaBaseCIDADE: TStringField;
    Qr_CaBaseCODIGO_CIDADE: TStringField;
    Qr_CaBaseUF: TStringField;
    Qr_CaBaseCEP: TStringField;
    Qr_CaBaseCODIGO_PAIS: TStringField;
    Qr_CaBasePAIS: TStringField;
    Qr_CaBaseFONE: TStringField;
    Qr_CaBaseCODIGO_MUNICIPIO: TStringField;
    ImprimirDANFE2: TMenuItem;
    Qry_NotaNaoTransmitida: TOraQuery;
    Qry_NotaNaoTransmitidaNR_NOTAFISC: TFloatField;
    Qry_NotaNaoTransmitidaSG_SERINOTAFISC_NOTAFISC: TStringField;
    Qry_NotaNaoTransmitidaDT_EMISNOTAFISC: TDateTimeField;
    Qry_NotaNaoTransmitidaDT_SAIDNOTAFISC: TDateTimeField;
    Qry_NotaNaoTransmitidaID_NOTAFISC: TFloatField;
    Qry_NotaNaoTransmitidaNFE_CHAVE: TStringField;
    Qry_NotaNaoTransmitidaUNOMEUNEG: TStringField;
    Men_Grid: TPopupMenu;
    mnu_Todos: TMenuItem;
    SpeedButton1: TSpeedButton;
    Qry_BoletoConfere: TOraQuery;
    Qry_BoletoConfereID_PEDIVEND: TFloatField;
    Qry_BoletoConfereVL_BOLETO: TFloatField;
    Qry_BoletoConfereDIF: TFloatField;
    Qry_BoletoAjuste: TOraQuery;
    Qry_BoletoConfereVL_FIN: TFloatField;
    OraQuery1: TOraQuery;
    OraQuery1ID_MATEEMBA: TFloatField;
    OraQuery1EMPRESA: TStringField;
    OraQuery1FILIAL: TIntegerField;
    OraQuery1ID_ITEMPEDIVEND: TFloatField;
    OraQuery1ID_PEDIVEND: TFloatField;
    OraQuery1ID_MATERIAL: TFloatField;
    OraQuery1ID_EMBALAGEM: TFloatField;
    OraQuery1ID_TIPOOPER: TFloatField;
    OraQuery1VL_UNITITEMPEDIVEND: TFloatField;
    OraQuery1QN_EMBAITEMPEDIVEND: TFloatField;
    OraQuery1QN_PESOITEMPEDIVEND: TFloatField;
    OraQuery1QN_TARAITEMPEDIVEND: TFloatField;
    OraQuery1QN_EMBAEXPEITEMPEDIVEND: TFloatField;
    OraQuery1QN_PESOPADREXPEITEMPEDIVEND: TFloatField;
    OraQuery1QN_PESOTRANSP: TFloatField;
    OraQuery1QN_TARAREALEXPEITEMPEDIVEND: TFloatField;
    OraQuery1QN_PESOREALEXPEITEMPEDIVEND: TFloatField;
    OraQuery1QN_CAIXCORTITEMPEDIVEND: TFloatField;
    OraQuery1VL_UNITBRUTITEMPEDIVEND: TFloatField;
    OraQuery1FX_ITEMPEDIVEND: TStringField;
    OraQuery1FL_IPIBASEICMS: TStringField;
    OraQuery1VL_UNITIPI: TFloatField;
    OraQuery1ID_PRODMATEEMBA: TStringField;
    OraQuery1NM_PRODMATEEMBA: TStringField;
    OraQuery1QN_CAPAPADRUNIDMATEEMBA: TFloatField;
    OraQuery1QN_SITUTRIB: TStringField;
    OraQuery1NM_EMBASEC: TStringField;
    OraQuery1TARA: TFloatField;
    OraQuery1SG_UNIDMEDI: TStringField;
    OraQuery1ID_CLASFISC: TFloatField;
    OraQuery1NM_CLASFISC: TStringField;
    OraQuery1NR_CLASFISC: TStringField;
    OraQuery1PC_IPICLASFISC: TFloatField;
    OraQuery1PC_ICMSCONTESTA: TFloatField;
    OraQuery1NR_CFOP: TStringField;
    OraQuery1FL_SITUTRIBICMS: TStringField;
    OraQuery1SITUTRIB_MATEEMBA: TStringField;
    OraQuery1NR_SITUTRIBIPI: TStringField;
    OraQuery1FL_ISSTIPOOPER: TStringField;
    OraQuery1FL_IPIBASEICMSTIPOOPER: TStringField;
    OraQuery1NM_DESCNOTAFISCTIPOOPER: TStringField;
    OraQuery1FL_CONDCPRTIPOOPER: TStringField;
    OraQuery1FL_CPRTIPOOPER: TStringField;
    OraQuery1ID_INTETIPOOPER: TStringField;
    OraQuery1ID_ORIGMATE: TFloatField;
    OraQuery1NM_EMBALAGEM: TStringField;
    OraQuery1NM_TIPOEMBA: TStringField;
    OraQuery1PC_ICMSMATEESTA: TFloatField;
    OraQuery1PC_REDUICMSMATEESTA: TFloatField;
    OraQuery1MATERIAL_CFOP: TStringField;
    OraQuery1TIPODOCU: TFloatField;
    OraQuery1SG_ORDEMCOMPRA: TStringField;
    OraQuery1QN_ITEMORDEMCOMPRA: TIntegerField;
    OraQuery1VL_UNITICMS: TFloatField;
    OraQuery1FIN_NFE: TStringField;
    OraQuery1VL_OUTRASDESP: TFloatField;
    OraQuery1VL_DESCITEM: TFloatField;
    OraQuery1FL_NFCOMPLEMENTAR: TStringField;
    SpeedButton2: TSpeedButton;
    Sql_ValeCaixa: TOraSQL;
    GerarValeCaixa1: TMenuItem;
    ImprimeValeCaixa1: TMenuItem;
    SQL_ImpVale: TOraSQL;
    Qr_SaldoVale: TOraQuery;
    Qr_SaldoValeID_CLIENTE: TFloatField;
    Qr_SaldoValeID_VALE: TFloatField;
    Qr_SaldoValeSALDO: TFloatField;
    SQL_AtualizaValeAnt: TOraSQL;
    mnuCanhotos: TMenuItem;
    LanctoPesoBalanoCarga1: TMenuItem;
    Panel8: TPanel;
    SB_PRIMEIRO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SBDiversos: TSpeedButton;
    btnTXT20: TSpeedButton;
    btnTxtCte: TSpeedButton;
    btn_Cte: TSpeedButton;
    Sb_Sair: TSpeedButton;
    btnTXT142: TSpeedButton;
    EdVersao: TEdit;
    edVersaoCTe: TEdit;
    Edtversao: TEdit;
    btnNFE: TSpeedButton;
    Shape7: TShape;
    Label17: TLabel;
    Panel9: TPanel;
    lblTotalNotas: TLabel;
    QrTipoPedFL_VALIDA_SIMPLES_NAC: TStringField;
    Panel1: TPanel;
    ImageList1: TImageList;
    QImpDocPed: TSmartQuery;
    QImpDocPedID_GRUPCLIE: TFloatField;
    QImpDocPedSITUACAO: TStringField;
    QImpDocPedDT_CARGEXPE: TDateTimeField;
    QImpDocPedID_CARGEXPE: TFloatField;
    QImpDocPedFL_STATCARGEXPE: TStringField;
    QImpDocPedNR_LACRCARGEXPE: TStringField;
    QImpDocPedID_PEDIVEND: TFloatField;
    QImpDocPedID_CLIENTE: TFloatField;
    QImpDocPedFL_STATPEDIVEND: TStringField;
    QImpDocPedDT_FATUPEDIVEND: TDateTimeField;
    QImpDocPedID_TIPOPEDIVEND: TFloatField;
    QImpDocPedID_FORMPAGA: TFloatField;
    QImpDocPedID_SITUCOBR: TFloatField;
    QImpDocPedID_INSTCOBR: TFloatField;
    QImpDocPedID_CONTA: TFloatField;
    QImpDocPedDT_ENTRPEDIVEND: TDateTimeField;
    QImpDocPedEMPRESA: TStringField;
    QImpDocPedFILIAL: TIntegerField;
    QImpDocPedID_VENDEDOR: TFloatField;
    QImpDocPedVL_PEDIVEND: TFloatField;
    QImpDocPedFL_CREDUSADPEDIVEND: TStringField;
    QImpDocPedVL_TRANAUTOPEDIVEND: TFloatField;
    QImpDocPedPC_IMPOFRETAUTOPEDIVEND: TFloatField;
    QImpDocPedFL_BLOQAJUSFINAPEDIVEND: TStringField;
    QImpDocPedVL_OUTRAJUSANTPEDIVEND: TFloatField;
    QImpDocPedVL_OUTRAJUSPEDIVEND: TFloatField;
    QImpDocPedFL_COMIVEND: TStringField;
    QImpDocPedPC_COMIVEND: TFloatField;
    QImpDocPedNM_CLIENTE: TStringField;
    QImpDocPedNR_AGENBANC: TStringField;
    QImpDocPedNR_BANCO: TStringField;
    QImpDocPedNR_CONTA: TStringField;
    QImpDocPedFLAG_CEDENTE: TStringField;
    QImpDocPedNR_CODICEDECONT: TStringField;
    QImpDocPedPC_JURODIARIO: TFloatField;
    QImpDocPedSG_SERINOTAFISC: TStringField;
    QImpDocPedID_NOTAFISC: TFloatField;
    QImpDocPedNR_NOTAFISC: TFloatField;
    QImpDocPedFL_CANCNOTAFISC: TStringField;
    QImpDocPedFL_IMPRNOTAFISC: TStringField;
    QImpDocPedNM_FORMPAGA: TStringField;
    QImpDocPedNM_TIPOPEDIVEND: TStringField;
    QImpDocPedFL_VALIDA_SIMPLES_NAC: TStringField;
    QImpDocPedDTHORA_GERADOC: TDateTimeField;
    QImpDocPedNFE_PROTOCOLO: TStringField;
    QImpDocPedNFE_CHAVE: TStringField;
    QImpDocPedINUTILIZADA: TStringField;
    QImpDocPedCANC_SEFAZ: TStringField;
    QImpDocPedFL_CTE: TStringField;
    QImpDocPedID_VALE: TFloatField;
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure BVAIClick(Sender: TObject);
    procedure BVOLTAClick(Sender: TObject);
    procedure LBOrdemIClick(Sender: TObject);
    procedure LBOrdemRClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure grdDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TsDetalheShow(Sender: TObject);
    procedure BtpesqCliClick(Sender: TObject);
    procedure BPesqVendClick(Sender: TObject);
    procedure BtmaterialClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BPTiPedClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure SBDiversosClick(Sender: TObject);
    procedure ImprimirNotaFiscal1Click(Sender: TObject);
    procedure mniGeraDocuClick(Sender: TObject);
    function GeraNota(pi_CodiPedi: Integer; ps_TipoPedi: String; ps_numbole:string): Boolean;
    function NossoNumero(ps_FixoBole, ps_SequBole, ps_NumeBanc, ps_Agencia, ps_Carteira : String): String;
    function Modulo11_7(ps_String: String): String;
    function Modulo11_8(ps_String: String): String;
    function Modulo11(ps_String: String): String;
    function Modulo11_M(ps_String: String): String;
 // function AjusCredClie(VID_CLIENTE:INTEGER;Vdeb_cred:string;Vvl_dife:Double): Boolean;
//    Function AjusCredClie(pi_CodiClie: Integer; ps_TipoAjus: string; pr_ValoAjus: Real):Boolean;
    procedure ImprimirBoleto1Click(Sender: TObject);
    procedure CancelarNotaFiscal1Click(Sender: TObject);
    procedure VisualizarBoleto1Click(Sender: TObject);
    procedure VisualizarNroNotas1Click(Sender: TObject);
    procedure GerarBoletos1Click(Sender: TObject);
    procedure ImprimeNFCancelada1Click(Sender: TObject);
    procedure NotaFiscalSalvarHTML1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImprimeFatura1Click(Sender: TObject);
    procedure Enviar_TXT_NFe_1(Sender: TObject);
    procedure Enviar_TXT_NFe_2(Sender: TObject);
    procedure Contador_Txt;
    procedure ACBR_Imprimir_Danfe_NFe(Sender: TObject);
    procedure ACBR_Cancelar_NFe(Sender: TObject);
    procedure ACBR_CancelaComuincacaoSefaz(Sender: TObject);
    procedure Cancela_NFe(Sender: TObject);
    procedure ACBR_Inutilizar_NFe(Sender: TObject);
    procedure ACBR_Enviar_Email_NFe(Sender: TObject);

    function Muda_virgula_ponto(OValor: String): String;
    procedure EnviarNFe21Click(Sender: TObject);
    procedure btnTxtCteClick(Sender: TObject);
    procedure btn_NFEClick(Sender: TObject);
    procedure ImprimirDANFE2Click(Sender: TObject);
    procedure btn_CteClick(Sender: TObject);
    procedure CRTemp_QImpDocPedAfterScroll(DataSet: TDataSet);
    procedure CRTemp_QImpDocPedAfterOpen(DataSet: TDataSet);
    procedure grdDadosTitleClick(Column: TColumn);
    procedure mnu_TodosClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure GerarValeCaixa1Click(Sender: TObject);
    procedure ImprimeValeCaixa1Click(Sender: TObject);
    procedure mnuCanhotosClick(Sender: TObject);
    procedure LanctoPesoBalanoCarga1Click(Sender: TObject);
    procedure btnNFEClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);


  private
    OrdemColuna, Ordem, BASE_DACAR : string ;
    function RemoveCaracteresEspeciais(before : string) : string;
    function CorrigeTelefone(before : string) : string;
    procedure GeraArquivoCTE();
    procedure GravaHeaderCTE(var F : TextFile);
    procedure GravaInformacoesCTE(var F : TextFile);
    procedure GravaIdentificadorCTE(var F : TextFile; tipoAmbiente : string);
    procedure GravaTomador4(var F : TextFile);
    procedure GravaInformacoesComplementares(var F : TextFile);
    procedure GravaFluxo(var F : TextFile);
    procedure GravaObsFisco(var F : TextFile);
    procedure GravaEmitente(var F : TextFile);
    procedure GravaRemetente(var F : TextFile);
    procedure GravaDestinatario(var F : TextFile);
    procedure GravaValoresPrestacaoServico(var F : TextFile);
    procedure GravaComponentesValorPrestacao(var F : TextFile);
    procedure GravaValorTotalTributos(var F : TextFile);
    procedure GravaICMS00(var F : TextFile);
    procedure GravaICMS20(var F : TextFile);
    procedure GravaICMS40(var F : TextFile);
    procedure GravaICMS41(var F : TextFile);
    procedure GravaICMS51(var F : TextFile);
    procedure GravaICMS60(var F : TextFile);
    procedure GravaICMS90(var F : TextFile);
    procedure GravaICMSOutraUF(var F : TextFile);
    procedure GravaInformacoesCTeNormal(var F : TextFile);
    procedure GravaInformacoesCarga(var F : TextFile);
    procedure GravaInformacoesQuantidadeCarga(var F : TextFile);
    procedure GravaInformacoesDocumentos(var F : TextFile);
    procedure GravaInformacoesNFE(var F : TextFile);
    procedure GravaInformacoesSeguroCarga(var F : TextFile);
    procedure GravaInformacoesModal(var F : TextFile);
    procedure GravaInformacaoRodoviario(var F : TextFile);
    procedure GravaInformacaoVeiculo(var F : TextFile);
    procedure GravaInformacoesCobranca(var F : TextFile);
    procedure GravaInformacoesFatura(var F : TextFile);
    procedure GravaDuplicatas(var F : TextFile);
    procedure ReAbreQuery(qry : TOraQuery; paramName : string; paramValue : Integer);
    function GeraNumCte() : string;
    procedure VerificaValorBoleto ( ID_PEDIVEND:Integer  );
    procedure GerarValeCaixa ( ID_PEDIVEND:Integer  );

    { Private declarations }
  public
     VCONT,SELPE,VCON:INTEGER;
     VItemInclui,ub_PermVend,VisuImpri,Vdtstr:string;
     VId_Cli,ur_ValoPediAnte,VId_Pedivend,lb_TranAuto:Double;
     VDATATU:TDATETIME;
     us_MensErro:string;
     ub_AjusFretPedi, Vb_Imprime: Boolean;
     ls_StatPediVend:String;
     ur_ValoFreteAuto, ur_PercImpFretAuto, lr_ValoNota:Double;
     ls_NumeBole,VIDConta,VNMConta: String;
     Fl_ExibDesc,VFATUANTEEXPE:String;
     vezimpre:integer;
     ls_timezone: String;
     procedure ImprimeBoleto ();
  end;

var
  frmImpDocPed: TfrmImpDocPed;
  XRPM, contador: INTEGER;

  TipoReferenciados : Integer;

implementation

uses UPesquiCliente, UFrmPesqVend,global,
     UFrmPesqTPV, UFrmSeldata, UFrmPesqMatEmba, UFrmTituAtra, UFRMATRA,
     Principal, UFRMUltVend, UfrmPedVenda, UfrmQRMDNotas, UfrmQRBoleto,
     UFrmNumNota, UfrmQRBoletoPre, UFrmFatura, UFrmFaturaMetal,UFrmPesqContas,
     UfrmQRNF5601, UFrmPesCaminhao, UFrmNFMetal, UfrmDialNFe, ACBrNFe,
  UfrmDialCTe, ufrmEmissorNFe, uDadosCadastraisFilial, UFrmEditaNotaFiscal ,
  StrUtils , UFrmRelValeCaixa, ufrmCanhotosNFe , RLReport,
  UFrmLanctoPesoBalancaoCarga, ufrmConsultaGrupoClientes;

{$R *.dfm}

function TfrmImpDocPed.Muda_virgula_ponto(OValor: String): String;
var
  T, I : Integer;
  NValor : String;
begin
  //Troca a virgula pelo ponto
  T := 0;
  NValor := '';
  T := Length(OValor);
  If T > 0 then
  begin
    For I := 1 to T do
    begin
      If Copy(OValor, I, 1) <> ',' then NValor := NValor + Copy(OValor, I, 1);
      If Copy(OValor, I, 1) = ',' then NValor := NValor + '.';
    end;
  end;
  Result := NValor;
end;

procedure TfrmImpDocPed.Sb_SairClick(Sender: TObject);
begin
   close;
end;

procedure TfrmImpDocPed.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
  FrmPedVenda:=Nil;
  FrmPrincipal.VEN005.Enabled:= True;
  Action:=caFree;
end;

procedure TfrmImpDocPed.BtIncluirClick(Sender: TObject);
 var
  Vre,Vlinha:String;
  Vcampos,FA,FO:integer;
begin
  If EdExpre.Text<>'' then
   Begin
     IF MResul.Lines.Count>0 then
       begin
         If RGeou.ItemIndex=0  then
            Vre:=' AND '
         Else
         begin
            Vlinha:= MResul.Lines.Strings[MResul.Lines.Count-1];
            MResul.Lines.Strings[MResul.Lines.Count-1]:= Copy(Vlinha,1,length(Vlinha)-1);
            Vre:=' OR ';
         end;
       end;

    If  LCampos.itemindex=-1 then
      Vcampos:=0
    else
      Vcampos:=LCampos.itemindex;

     //COLOCAR PARENTESES ANTES DO AND
     If RGeou.ItemIndex=0  then
       Vre:= Vre + '(' ;

     Case LCampos.itemindex of
       0:Vre:=Vre + 'Pedido_venda.ID_FORMPAGA';
       1:Vre:=Vre + 'pedido_venda.ID_CLIENTE';
       2:Vre:=Vre + 'Pedido_venda.ID_CONTA';
       3:Vre:=Vre + 'pedido_venda.ID_VENDEDOR';
       4:Vre:=Vre + 'Expedicao_carga.DT_CARGEXPE';
       5:Vre:=Vre + 'Pedido_venda.DT_PEDIVEND';
       6:Vre:=Vre + 'Forma_pagamento.NM_FORMPAGA';
       7:Vre:=Vre + 'Cliente.NM_CLIENTE';
       8:Vre:=Vre + 'Vendedor.NM_VENDEDOR';
       9:Vre:=Vre + 'Boleto.NR_BOLETO';
      10:Vre:=Vre + 'Expedicao_carga.ID_CARGEXPE';
      11:Vre:=Vre + 'Conta.NR_CONTA';
      12:Vre:=Vre + 'Nota_fiscal.NR_NOTAFISC';
      13:Vre:=Vre + 'Pedido_venda.ID_PEDIVEND';
      14:Vre:=Vre + 'Nota_fiscal.SG_SERINOTAFISC_NOTAFISC';
      15:Vre:=Vre + 'Expedicao_carga.FL_STATCARGEXPE';
      16:Vre:=Vre + 'Pedido_venda.FL_STATPEDIVEND';
      17:Vre:=Vre + 'Pedido_venda.DT_FATUPEDIVEND';
      18:Vre:=Vre + 'TRUNC(Pedido_venda.dt_entrpedivend)';
      19:Vre:=Vre + 'Pedido_venda.ID_TIPOPEDIVEND';
      20:Vre:=Vre + 'Nota_fiscal.gn_placveicnotafisc';
      21:Vre:=Vre + 'Nota_fiscal.NR_CFOP_NOTAFISC';
      22:Vre:=Vre + '(CASE WHEN nota_fiscal_xml.id_notafisc IS NOT NULL then ''S'' ELSE ''N'' END)';
      {NOME: FABRICIO DATA:12/03/2018 MOTIVO: NOVOS FILTROS PARA EMISSÃO DE XML}
      23:Vre:=Vre + 'Nota_fiscal.FL_CANCNOTAFISC';  // NOTA CANCELADA
      24:Vre:=Vre + 'Nota_fiscal.DT_EMISNOTAFISC';  // DATA DE EMISSAO DA NOTA
      25:Vre:=Vre + 'Cliente.FL_FUNCIONARIO';
      26:Vre:=Vre + 'cliente.ID_GRUPCLIE';
     end;


     Case CBCond.ItemIndex of
       0: Vre:=Vre + ' = ';
       1: Vre:=Vre + ' <> ';
       2: Vre:=Vre + ' > ';
       3: Vre:=Vre + ' >= ';
       4: Vre:=Vre + ' < ';
       5: Vre:=Vre + ' <= ';
       6: Vre:=Vre + ' LIKE ';
       7: Vre:=Vre + ' IS NULL ';
     end;

  If CBCond.ItemIndex<7 then
   begin
     Case LCampos.itemindex of
         4..5:Vre:=Vre + 'TO_DATE(''';
         6..9:Vre:=Vre + '''';
           11:Vre:=Vre + '''';
       14..16:Vre:=Vre + '''';
       17..18:Vre:=Vre + 'TO_DATE(''';
       20..23:Vre:=Vre + '''';
       24:Vre:=Vre + 'TO_DATE(''';
       25:Vre:=Vre + '''';
     end;

  If CBCond.ItemIndex = 6 then
     Vre:=Vre + '%';

  Vre:=Vre + UpperCase(Edexpre.text);

  If CBCond.ItemIndex = 6 then
     Vre:=Vre + '%';

     //TO_DATE('25-Aug-2003 00:00:00','DD-MON-YYYY HH24:MI:SS')

     Case LCampos.itemindex of
         4..5:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
         6..9:Vre:= Vre + '''';
           11:Vre:= Vre + '''';
       14..16:Vre:= Vre + '''';
       17..18:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
       20..23:Vre:=Vre + '''';
       24:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
       25:Vre:=Vre + '''';
     end;
  end;

    Vre:=Vre+')';

    MResul.Lines.Add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;
end;

procedure TfrmImpDocPed.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TfrmImpDocPed.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
//  BtIncluir.SetFocus;
end;

procedure TfrmImpDocPed.BtAtivarClick(Sender: TObject);
VAR
  XTM,vlLinha:INTEGER;
Begin
  Screen.Cursor := crSQLWait;
  QImpDocPed.Close;
  QImpDocPed.SQL.Clear;
  QImpDocPed.SQL.Text := 'SELECT DISTINCT ' +
                         'cliente.ID_GRUPCLIE, ' +
                         'CASE WHEN ((Pedido_venda.DT_FATUPEDIVEND <> '''') AND (NOTA_FISCAL_XML.NFE_PROTOCOLO <> '''') AND (NOTA_FISCAL.FL_CANCNOTAFISC = ''N'')) then ' +
                         '''NF-e Gerada / Transmitida'' '+
                         'WHEN NOTA_FISCAL.FL_CANCNOTAFISC = ''S'' then '+
                         '''NF-e Cancelada'' '+
                         'WHEN ((Pedido_venda.DT_FATUPEDIVEND <> '''') AND (NOTA_FISCAL_XML.NFE_PROTOCOLO = '''')) then '+
                         '''NF-e Gerada / Não Transmitida'' '+
                         'ELSE '+
                         '''Aguardando Geração NF-e'' '+
                         'END AS SITUACAO, '+
                         'Expedicao_carga.DT_CARGEXPE, Expedicao_carga.ID_CARGEXPE, Expedicao_carga.FL_STATCARGEXPE, '+
                         'Expedicao_carga.NR_LACRCARGEXPE, Pedido_venda.ID_PEDIVEND, Pedido_venda.ID_CLIENTE, Pedido_venda.FL_STATPEDIVEND, '+
                         'Pedido_venda.DT_FATUPEDIVEND, Pedido_venda.ID_TIPOPEDIVEND, Pedido_venda.ID_FORMPAGA, Pedido_venda.ID_SITUCOBR, '+
                         'Pedido_venda.ID_INSTCOBR, Pedido_venda.ID_CONTA, Pedido_venda.DT_ENTRPEDIVEND, Pedido_venda.EMPRESA, '+
                         'Pedido_venda.FILIAL, Pedido_venda.ID_VENDEDOR, Pedido_venda.VL_PEDIVEND, Pedido_venda.FL_CREDUSADPEDIVEND, '+
                         'Pedido_venda.VL_TRANAUTOPEDIVEND, Pedido_Venda.PC_IMPOFRETAUTOPEDIVEND, Pedido_venda.fl_bloqajusfinapedivend, '+
                         'Pedido_venda.VL_OUTRAJUSANTPEDIVEND, Pedido_venda.VL_OUTRAJUSPEDIVEND, Vendedor.FL_COMIVEND, Vendedor.PC_COMIVEND, '+
                         'Cliente.NM_CLIENTE, Banco_agencia.NR_AGENBANC, Banco.NR_BANCO, Conta.NR_CONTA, CONTA.FLAG_CEDENTE, Conta.NR_CODICEDECONT, '+
                         'Conta.PC_JURODIARIO, Nota_fiscal_serie2.SG_SERINOTAFISC, Nota_fiscal.ID_NOTAFISC, Nota_fiscal.NR_NOTAFISC, Nota_fiscal.FL_CANCNOTAFISC, '+
                         'Nota_fiscal.FL_IMPRNOTAFISC, Nota_fiscal.gn_placveicnotafisc, Forma_pagamento.NM_FORMPAGA, Pedido_venda_tipo.NM_TIPOPEDIVEND, '+
                         'Pedido_venda.DTHORA_GERADOC, NOTA_FISCAL_XML.NFE_PROTOCOLO, NOTA_FISCAL_XML.CANCELADA CANC_SEFAZ, NOTA_FISCAL_XML.INUTILIZADA, '+
                         'NOTA_FISCAL_XML.NFE_CHAVE, Pedido_venda_tipo.FL_CTE, VALE_CAIXA.ID_VALE, Pedido_venda_tipo.FL_VALIDA_SIMPLES_NAC, CLIENTE.FL_FUNCIONARIO, ''T'' SEL ' +

                         'FROM EXPEDICAO_CARGA Expedicao_carga, PEDIDO_VENDA Pedido_venda, PEDIDO_VENDA_NOTA_FISCAL Pedido_venda_nota_fiscal, '+
                         'PEDIDO_VENDA_TIPO Pedido_venda_tipo, CLIENTE Cliente, NOTA_FISCAL_SERIE Nota_fiscal_serie, NOTA_FISCAL_SERIE Nota_fiscal_serie2, '+
                         'NOTA_FISCAL Nota_fiscal, CONTA Conta, BANCO Banco, BANCO_AGENCIA Banco_agencia, VENDEDOR Vendedor, FORMA_PAGAMENTO Forma_pagamento, '+
                         'NOTA_FISCAL_XML, VALE_CAIXA '+

                         'WHERE (Pedido_venda.ID_PEDIVEND = Pedido_venda_nota_fiscal.ID_PEDIVEND (+))          '+
                         'AND ( Pedido_venda.FILIAL = ' + inttoStr( gi_filial ) +' )                '+
                         'AND (Nota_fiscal.SG_SERINOTAFISC_NOTAFISC = Nota_fiscal_serie.SG_SERINOTAFISC (+)) '+
                         'AND (Pedido_venda_nota_fiscal.ID_NOTAFISC = Nota_fiscal.ID_NOTAFISC(+))            '+
                         'AND (Expedicao_carga.ID_CARGEXPE = Pedido_venda.ID_CARGEXPE)                       '+
                         'AND (Pedido_venda.ID_CLIENTE = Cliente.ID_CLIENTE)                                 '+
                         'AND (Pedido_venda.ID_CONTA = Conta.ID_CONTA)                                       '+
                         'AND (Conta.ID_AGENBANC = Banco_agencia.ID_AGENBANC(+))                             '+
                         'AND (Banco_agencia.ID_BANCO = Banco.ID_BANCO(+))                                   '+
                         'AND (Pedido_venda.ID_VENDEDOR = Vendedor.ID_VENDEDOR)                              '+
                         'AND (Pedido_venda.ID_TIPOPEDIVEND = Pedido_venda_tipo.ID_TIPOPEDIVEND)             '+
                         'AND (Pedido_venda_tipo.ID_SERINOTAFISC = Nota_fiscal_serie2.ID_SERINOTAFISC)       '+
                         'AND (Pedido_venda.ID_FORMPAGA = Forma_pagamento.ID_FORMPAGA)                       '+
                         'AND (nota_fiscal.id_notafisc = nota_fiscal_xml.id_notafisc(+))                     '+
                         'AND (Pedido_venda.ID_PEDIVEND = VALE_CAIXA.ID_PEDIDO (+) )                         ';

  XTM:=MResul.Lines.Count;

  If XTM >0 then
  begin
    QImpDocPed.SQL.Add('AND');
    QImpDocPed.SQL.Add(MResul.Text);
  end
  else
  begin
    Screen.Cursor := crDefault;
//    Application.MessageBox('         É necessário informar algum critério de filtro               ', PChar(frmImpDocPed.Caption), MB_OK + MB_ICONINFORMATION);
//
    if Application.MessageBox('         Exibir listagem sem filtro?                                      ', PChar(frmImpDocPed.Caption), MB_YESNO) = IDNO then
//      exit
    Else
      Screen.Cursor := crSQLWait;
  end;

  IF LBOrdemR.Items.Text<>'' then
  BEGIN
    QImpDocPed.SQL.Add('ORDER BY ');
    QImpDocPed.SQL.Add(LBOrdemR.Items.Text);
    QImpDocPed.SQL.Add(' DESC ');
  END;

  QImpDocPed.Open;
  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Text:=
               '  Select Count(*)   as VLTotal                                                       '+
               '  FROM EXPEDICAO_CARGA Expedicao_carga,                                               '+
               '       PEDIDO_VENDA Pedido_venda,                                                     '+
               '       PEDIDO_VENDA_NOTA_FISCAL Pedido_venda_nota_fiscal,                             '+
               '       PEDIDO_VENDA_TIPO Pedido_venda_tipo,                                           '+
               '       CLIENTE Cliente,                                                               '+
               '       NOTA_FISCAL_SERIE Nota_fiscal_serie,                                           '+
               '       NOTA_FISCAL_SERIE Nota_fiscal_serie2,                                          '+
               '       NOTA_FISCAL Nota_fiscal,                                                       '+
               '       CONTA Conta,                                                                   '+
               '       BANCO Banco,                                                                   '+
               '       BANCO_AGENCIA Banco_agencia,                                                   '+
               '       VENDEDOR Vendedor,                                                             '+
               '       BOLETO Boleto,                                                                 '+
               '       FORMA_PAGAMENTO Forma_pagamento ,NOTA_FISCAL_XML                               '+
               ' WHERE (Pedido_venda.ID_PEDIVEND = Pedido_venda_nota_fiscal.ID_PEDIVEND (+))          '+
               '   AND (Nota_fiscal.SG_SERINOTAFISC_NOTAFISC = Nota_fiscal_serie.SG_SERINOTAFISC (+)) '+
               '   AND (Pedido_venda_nota_fiscal.ID_NOTAFISC = Nota_fiscal.ID_NOTAFISC(+))            '+
               '   AND (Expedicao_carga.ID_CARGEXPE = Pedido_venda.ID_CARGEXPE)                       '+
               '   AND (Pedido_venda.ID_CLIENTE = Cliente.ID_CLIENTE)                                 '+
               '   AND (Pedido_venda.ID_CONTA = Conta.ID_CONTA)                                       '+
               '   AND (Conta.ID_AGENBANC = Banco_agencia.ID_AGENBANC(+))                             '+
               '   AND (Banco_agencia.ID_BANCO = Banco.ID_BANCO(+))                                   '+
               '   AND (Pedido_venda.ID_VENDEDOR = Vendedor.ID_VENDEDOR)                              '+
               '   AND (Pedido_venda.ID_PEDIVEND = Boleto.ID_PEDIVEND(+))                             '+
               '   AND (Pedido_venda.ID_TIPOPEDIVEND = Pedido_venda_tipo.ID_TIPOPEDIVEND)             '+
               '   AND (Pedido_venda_tipo.ID_SERINOTAFISC = Nota_fiscal_serie2.ID_SERINOTAFISC)       '+
               '   AND (Pedido_venda.ID_FORMPAGA = Forma_pagamento.ID_FORMPAGA)                       '+
               '   AND (nota_fiscal.id_notafisc = nota_fiscal_xml.id_notafisc(+))                     ';

  If XTM >0 then
  begin
    QryTemp.SQL.Add(' And ');
    QryTemp.SQL.Add(MResul.Text);
  end;

  QryTemp.Open;
  VCONT:= QryTemp.fieldbyname('VLTotal').AsInteger ;


  If not QImpDocPed.IsEmpty then
  begin
    grdDados.DataSource.DataSet.First;
    grdDados.DataSource.DataSet.DisableControls;
    For vlLinha := 0 to VCONT do
    begin
      grdDados.SelectedRows.CurrentRowSelected := True;
      grdDados.DataSource.DataSet.Next;
    end;

    grdDados.DataSource.DataSet.EnableControls;
    grdDados.SelectedRows.Refresh;
    grdDados.DataSource.DataSet.First;
  end;

  QrEndCli.Open;
  QrEndCobra.Open;
  QrTipoCobr.open;
  QrConta.Open;
  QrTipoLogi.Open;
  QrTipoPed.Open;
  QrFormaPG.open;
  QrInstCob.Open;
  QrSituCob.Open;
  QrPre.Open;
  QrTipoOper.open;

  PageControl1.Pages[1].Show;
  Screen.Cursor := crDefault;
  PageControl1.Pages[1].TabVisible:=true;
  SB_PRIMEIRO.Enabled:= true;
  SB_ANTERIOR.Enabled:= true;
  SB_PROXIMO.Enabled := true;
  SB_ULTIMO.Enabled :=  true;
  SBDiversos.Enabled := true;
  btnNFE.Enabled     := true;

  QImpDocPed.Last;
//  Panel4.Caption:= 'Total: ' + IntToStr(QImpDocPed.RecordCount) + '          ';
  lblTotalNotas.Caption:= 'Total: ' + IntToStr(QImpDocPed.RecordCount) + '          ';
  QImpDocPed.First;

end;

procedure TfrmImpDocPed.BVAIClick(Sender: TObject);
begin
  LBOrdemR.Items.Add(LBOrdemI.Items[LBOrdemI.itemindex]);
  LBOrdemI.Items.Delete(LBOrdemI.itemindex);
  BVAI.Enabled:=FALSE;
end;

procedure TfrmImpDocPed.BVOLTAClick(Sender: TObject);
begin
  LBOrdemI.Items.Add(LBOrdemR.Items[LBOrdemR.itemindex]);
  LBOrdemR.Items.Delete(LBOrdemR.itemindex);
  BVOLTA.Enabled:=FALSE;
end;

procedure TfrmImpDocPed.LBOrdemIClick(Sender: TObject);
begin
  BVAI.Enabled :=TRUE;
end;

procedure TfrmImpDocPed.LBOrdemRClick(Sender: TObject);
begin
  BVOLTA.Enabled:=TRUE;
end;

procedure TfrmImpDocPed.SB_PRIMEIROClick(Sender: TObject);
begin
  If TsLista.Showing then
    Begin
      QImpDocPed.First;
    End;

end;

procedure TfrmImpDocPed.SB_ANTERIORClick(Sender: TObject);
begin
  If TsLista.Showing then
    Begin
      QImpDocPed.Prior;
    End;

end;

procedure TfrmImpDocPed.SB_PROXIMOClick(Sender: TObject);
begin
  If TsLista.Showing then
    Begin
      QImpDocPed.next;
    End;

end;

procedure TfrmImpDocPed.SB_ULTIMOClick(Sender: TObject);
begin
  If TsLista.Showing then
    Begin
      QImpDocPed.Last;
    End;
end;

procedure TfrmImpDocPed.BPESQClick(Sender: TObject);
begin
// try
   XRPM:=2;
   FrmOriPesq:=8;
   CASE SELPE OF
     1:BEGIN
        FrmPesqCliente:=TFrmPesqCliente.Create(Self);
        FrmPesqCliente.ShowModal;
       END;
     2:BEGIN
         Cria_FrmPesqConta(VIDConta,VNMConta);
         EdExpre.text:= VIDConta;
        END;
     3:BEGIN
        FrmPesqVend:=TFrmPesqVend.Create(Self);
        FrmPesqVend.ShowModal;
       END;
  4..5:BEGIN
        Cria_FrmSelData(Vdtstr);
        EdExpre.text:= Vdtstr;
       END;
17..18:BEGIN
        Cria_FrmSelData(Vdtstr);
        EdExpre.text:= Vdtstr;
       END;

    20:BEGIN
        FrmPesqCaminhao:=TFrmPesqCaminhao.Create(Self);
        FrmPesqCaminhao.ShowModal;
       END;

    26:BEGIN
        frmConsultaGrupoClientes:=TfrmConsultaGrupoClientes.Create(Self);
        frmConsultaGrupoClientes.ShowModal;
       END;

   end;
// except;
//   SHOWMESSAGE('Não foi possível abrir o Form.');
//   FrmPesqCliente.Free;
//
// end;
   BPESQ.Visible:=FALSE;
end;

procedure TfrmImpDocPed.LCamposClick(Sender: TObject);
begin
  SELPE:=0;

  CASE LCAMPOS.ItemIndex OF
    1:SELPE:=1;
    2:SELPE:=2;
    3:SELPE:=3;
    4..5:SELPE:=5;
    17..18:SELPE:=5;
    20:SELPE:=20;
    24:SELPE:=5;
    26:SELPE:=26;
  END;
  if SELPE>0 then
    BPESQ.Visible:= True
  else
    BPESQ.Visible:= False;
end;

procedure TfrmImpDocPed.grdDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  i: Integer;
begin
{
 if QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString <> '' then
    grdDados.Canvas.font.Color := clTeal;
 if QImpDocPed.FieldByName('FL_IMPRNOTAFISC').AsString = 'S' then
    grdDados.Canvas.font.Color  := clLIME;
 if QImpDocPed.FieldByName('NFE_PROTOCOLO').AsString <> ''   then
    grdDados.Canvas.font.Color  := clSilver;
 if QImpDocPed.FieldByName('FL_CANCNOTAFISC').AsString = 'S' then
    grdDados.Canvas.font.Color  := clRED;

 if QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString <> '' then
    grdDados.Canvas.Brush.Color := clTeal;
 if QImpDocPed.FieldByName('FL_IMPRNOTAFISC').AsString = 'S' then
    grdDados.Canvas.Brush.Color  := clLIME;
 if QImpDocPed.FieldByName('NFE_PROTOCOLO').AsString <> ''   then
    grdDados.Canvas.Brush.Color  := clSilver;
 if QImpDocPed.FieldByName('FL_CANCNOTAFISC').AsString = 'S' then
    grdDados.Canvas.Brush.Color  := clRED;

 if gdFocused in State then
   with (Sender as TDBGrid).Canvas do
   begin
     Brush.Color:=clAqua;
     font.Color :=clBlack;
   end;}
//
// grdDados.DefaultDrawColumnCell(rect,DataCol,column,state);

  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($00DADADA)
  else
  begin
    // NOTA FISCAL GERADA E TRANSMITIDA E NAO FOI CANCELADA
    IF ((QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString <> '') AND (QImpDocPed.FieldByName('NFE_PROTOCOLO').AsString <> '') AND
       (QImpDocPed.FieldByName('FL_CANCNOTAFISC').AsString = 'N')) then
      grdDados.Canvas.Brush.Color:= $00CCFFCC
    // NOTA FISCAL CANCELADA
    else if QImpDocPed.FieldByName('FL_CANCNOTAFISC').AsString = 'S' then
      grdDados.Canvas.Brush.Color:=$00C6C6FF
    // NOTA FOI GERADA MAS NAO FOI TRANSMITIDA
    else if (QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString <> '') AND (QImpDocPed.FieldByName('NFE_PROTOCOLO').AsString = '') then
      grdDados.Canvas.Brush.Color  := $00BFFFFF
    else
    // NOTA FISCAL NAO GERADA E NAO TRANSMITIDA
      grdDados.Canvas.Brush.Color  := $00FFF2D9;
  end;

//  With grdDados do
//  begin
//    For i := 0 to SelectedRows.Count do
//    begin
//      if Rect.Top = TStringGrid(grdDados).CellRect(0, TStringGrid(grdDados).Row).Top then
//      begin
//        Canvas.FillRect(Rect);
//        Canvas.Font.Color := $000000;
//        Canvas.Brush.Color := $F0CAA6;
//        DefaultDrawDataCell(Rect, Column.Field, State)
//      end;
//    end;
//  end;

  grdDados.Canvas.Font.Color:=$000000;
  grdDados.DefaultDrawColumnCell(rect,DataCol,column,state);
//  grdDados.DataSource.DataSet.DisableControls;
//  grdDados.DataSource.DataSet.EnableControls;

  with grdDados do
  begin
    if AnsiLowerCase(Column.FieldName) = 'sel' then
    begin
      Canvas.FillRect(Rect);
      ImageList1.Draw(Canvas,Rect.Left+5,Rect.Top+1,Ord(Column.Field.AsBoolean));
    end;
  end;

end;

procedure TfrmImpDocPed.TsDetalheShow(Sender: TObject);
begin
  QrEndCobra.Close;
  QrEndCobra.ParamByName('pi_CodiClie').AsFloat:= QImpDocPedID_CLIENTE.Value;
  QrEndCobra.open;
  QrEndCli.Close;
  QrEndCli.ParamByName('pi_CodiClie').AsFloat:= QImpDocPedID_CLIENTE.Value;
  QrEndCli.open;
end;

procedure TfrmImpDocPed.BtpesqCliClick(Sender: TObject);
begin
  FrmOriPesq:=11;
  FrmPesqCliente:=TFrmPesqCliente.Create(Self);
  FrmPesqCliente.ShowModal;

end;

procedure TfrmImpDocPed.BPesqVendClick(Sender: TObject);
begin
  FrmOriPesq:=11;
  FrmPesqVend:=TFrmPesqVend.Create(Self);
  FrmPesqVend.ShowModal;
end;

procedure TfrmImpDocPed.BtmaterialClick(Sender: TObject);
begin
  FrmOriPesq:=11;
  FrmPesqMatEmba:=TFrmPesqMatEmba.Create(Self);
  FrmPesqMatEmba.ShowModal;
end;

procedure TfrmImpDocPed.FormShow(Sender: TObject);
begin

  if ( gs_CNPJ = '72457542000107' ) OR ( gs_CNPJ = '72457542999999') then  // Dacar
     BASE_DACAR := 'S'
  else
  BASE_DACAR := 'N';

  GerarValeCaixa1.Visible := (dadosCadastraisFilial.ControleCaixa = 'S');

  IF LCAMPOS.Items.Count=0 then
  BEGIN
    With LCampos.Items do
    begin
      Add('Cód. Forma Pagamento');
      Add('Código Cliente');
      Add('Código Conta');
      Add('Código Vendedor');
      Add('Data da Carga');
      Add('Data do Pedido');
      Add('Descrição Forma Pagto');
      Add('Nome Cliente');
      Add('Nome Vendedor');
      Add('Número Boleto');
      Add('Número Carga');
      Add('Número Conta');
      Add('Nº Nota Fiscal');
      Add('Nº Pedido');
      Add('Série Documento');
      Add('Status Carga');
      Add('Status do Pedido');
      Add('Data do Faturamento');
      Add('Data de Entrega do Pedido');
      Add('Cód. Tipo Pedido de Venda');
      Add('Placa do Veículo');
      Add('CFOP Nota');
      Add('Transmitida (S/N)');
      Add('Nota Cancelada');
      Add('Data de Emissão');
      Add('Funcionário (S/N)');
      Add('Grupo de Cliente');
    end;

    With LBOrdemI.Items  do
    begin
      Add('pedido_venda.ID_CLIENTE');
      Add('pedido_venda.ID_FORMPAGA');
      Add('pedido_venda.ID_VENDEDOR');
      Add('pedido_venda.DT_DIGIPEDIVEND');
      Add('pedido_venda.DT_ENTRPEDIVEND');
      Add('pedido_venda.DT_PEDIVEND');
      Add('pedido_venda.IE_PEDIVEND');
      Add('pedido_venda.ID_PEDIVEND');
    end;

    LBOrdemR.Items.Add('pedido_venda.ID_PEDIVEND');

  END;

  PageControl1.Pages[1].TabVisible:=false;
  Vb_Imprime := true;

end;

procedure TfrmImpDocPed.BPTiPedClick(Sender: TObject);
begin
  FrmOriPesq:=11;
  FrmPesqTPV:=TFrmPesqTPV.Create(Self);
  FrmPesqTPV.ShowModal;
end;

procedure TfrmImpDocPed.TabSheet1Show(Sender: TObject);
var
  li_Loop:integer;
  temp:TComponent;
begin
 // Loop para todos os componentes da janela
 For li_Loop :=0 to ComponentCount - 1  do
  begin
    Temp := Components[li_Loop];
    if  (Temp is TDBEDIT) then
    begin
      TScrollBox(temp).Enabled := True;
    end;
    if  (Temp is TDBCOMBOBOX) then
    begin
      TScrollBox(temp).Enabled := True;
    end;
    if  (Temp is TDBlookupCOMBOBOX) then
    begin
      TScrollBox(temp).Enabled := True;
    end;
    if  (Temp is Tbitbtn) then
    begin
      TScrollBox(temp).Enabled := True;
    end;
     if  (Temp is TDBMemo) then
    begin
      TScrollBox(temp).Enabled := True;
    end;

  end;

  SB_PRIMEIRO.Enabled:=false;
  SB_ANTERIOR.Enabled:=false;
  SB_PROXIMO.Enabled:=false;
  SB_ULTIMO.Enabled:=false;
  SBDiversos.Enabled:=false;
  btnNFE.Enabled := False;
  PageControl1.Pages[1].TabVisible:=false;
end;

procedure TfrmImpDocPed.SBDiversosClick(Sender: TObject);
begin
  pm1.Popup(400,88);
end;

procedure TfrmImpDocPed.ImprimirNotaFiscal1Click(Sender: TObject);
var
  //iniImpressora: TIniFile;
  li_IndeImpr: Integer;
  li_Loop: Integer;
  li_NumeNota: Integer;
  ls_SiglSeriNota: String;
  ls_NomeImpr: String;
  vlLinha, VSEQNOTA, VControlImpre: Integer;
  F : TextFile;

begin
 VSEQNOTA:=0;
 VControlImpre:=0;

  // Verificamos se foi selecionado algum pedido para emissão de boleto
 If grdDados.SelectedRows.Count = 0 then
  begin
    MessageDlg('Nenhum pedido foi selecionado para impressão de nota fiscal.' + #13 +
               'Por favor, verifique !', mtInformation, [mbOK], 0);
    Exit;
  end;

 If MessageDlg ('Confirma Impressão da Nota Fiscal ' + #13 +
                ' do(s) Pedido(s) Selecionado(s) ?', mtConfirmation,[mbOk, mbCancel], 0) = mrOk then
 begin

  // Loop para todos os pedidos selecionados
  for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
  begin

   // Verificamos se o Flag do pedido é "EX"
   If (QImpDocPed['FL_STATPEDIVEND']='EX') then
   Begin
     MessageDlg('Nota fiscal não pode ser impressa! ' + #13 + 'O pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) +
                 ' está com Status "EX" ' + #13 + 'Gere novamente ou cancele a Nota se for necessário.', mtInformation, [mbOK], 0);
     Continue;
   End;

   //Verificar se a NF tem o tipo para a cfop 5601 (sem itens com obs do pedido)
   if (QImpDocPed['ID_TIPOPEDIVEND']= 66 ) then
   begin

     FrmQRNF5601:=TFrmQRNF5601.Create(Self);
      // Posicionamos no registro a ser impresso
     grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);
     WITH FrmQRNF5601 DO
     BEGIN
      // Selecionamos a nota fiscal de acordo com o pedido
      qryNotaFisc.Close;
      qryItemNotaFisc.Close;
      qryNotaFisc.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
      qryNotaFisc.ParamByName('ps_serinotafisc').AsString := QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString;
      qryNotaFisc.ParamByName('VNOTA').AsInteger  := QImpDocPed.FieldByName('NR_NOTAFISC').AsInteger;
      qryNotaFisc.ParamByName('VCANCEL').AsString := 'N';

      qryNotaFisc.Open;
      qryItemNotaFisc.Open;

      // Verificamos se existe a nota fiscal para o pedido
      If qryNotaFisc.IsEmpty then
      begin
        MessageDlg('Nota fiscal não encontrada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !' + #13 +
                   'Por favor, verifique !', mtInformation, [mbOK], 0);
        Continue;
      end;

     IF VSEQNOTA=0 then
       VSEQNOTA:= qryNotaFisc.FieldByName('NR_NOTAFISC').AsInteger
     ELSE
       INC(VSEQNOTA);

      // Verificamos se a nota fiscal já foi impressa
      If qryNotaFisc['FL_IMPRNOTAFISC'] = 'N' then
      begin
        if MessageDlg ('Confirma impressão da nota fiscal  ' + qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                       'do pedido  ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          Exit;
      end
      else if qryNotaFisc['FL_IMPRNOTAFISC'] = 'S' then
      begin
        if MessageDlg(' Nota fiscal ' + qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                      ' do pedido  ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' já foi impressa !' + #13 +
                      ' Deseja reimprimir ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          Continue;
        end;
        VSEQNOTA:= qryNotaFisc.FieldByName('NR_NOTAFISC').AsInteger;
      end;

      // VERIFICA SE NÃO PULOU NENHUMA NF
      IF  VSEQNOTA < qryNotaFisc.FieldByName('NR_NOTAFISC').AsINTEGER then
        BEGIN
         if MessageDlg('Atenção! a próxima Nota Fiscal a ser impressa será a No. ' + qryNotaFisc.FieldByName('NR_NOTAFISC').AsString + #13 +
                       'Verifique se o Formulário de Notas está correto. Cancela a Impressão? (Sim ou Não)', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
           exit;
          end;
         INC(VSEQNOTA);
        END;

    // Pegamos o numero interno da nota e a sigla da serie
     li_NumeNota := qryNotaFisc['ID_NOTAFISC'];
     ls_SiglSeriNota := qryNotaFisc['SG_SERINOTAFISC_NOTAFISC'];


      // Imprimimos a nota fiscal
//      RL_Notas.PrintDialog := false;
      RL_Notas.Print;
      RL_Notas.DefaultFilter.Free;
     END; //FIM FrmQRNF5601
    //fim da NF 5601
   end
   else
   begin
     // NF METAL
   if (gi_Filial =4)  then
   begin
      FrmNFMetal:=TFrmNFMetal.Create(Self);
      // Posicionamos no registro a ser impresso
      grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

      // Selecionamos a nota fiscal de acordo com o pedido
      FrmNFMetal.qryNotaFisc.Close;
      FrmNFMetal.qryItemNotaFisc.Close;
      FrmNFMetal.qryNotaFisc.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
      FrmNFMetal.qryNotaFisc.ParamByName('ps_serinotafisc').AsString := QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString;
      FrmNFMetal.qryNotaFisc.ParamByName('VNOTA').AsInteger  := QImpDocPed.FieldByName('NR_NOTAFISC').AsInteger;
      FrmNFMetal.qryNotaFisc.ParamByName('VCANCEL').AsString := 'N';

      FrmNFMetal.qryNotaFisc.Open;
      FrmNFMetal.qryItemNotaFisc.Open;

      // Verificamos se existe a nota fiscal para o pedido
      If FrmNFMetal.qryNotaFisc.IsEmpty then
      begin
        MessageDlg('Nota fiscal não encontrada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !' + #13 +
                   'Por favor, verifique !', mtInformation, [mbOK], 0);
        Continue;
      end;

     IF VSEQNOTA=0 then
       VSEQNOTA:= FrmNFMetal.qryNotaFisc.FieldByName('NR_NOTAFISC').AsInteger
     ELSE
       INC(VSEQNOTA);

      // Verificamos se a nota fiscal já foi impressa
      If FrmNFMetal.qryNotaFisc['FL_IMPRNOTAFISC'] = 'N' then
      begin
        if MessageDlg ('Confirma impressão da nota fiscal  ' + FrmNFMetal.qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                       'do pedido  ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          Exit;
      end
      else if FrmNFMetal.qryNotaFisc['FL_IMPRNOTAFISC'] = 'S' then
      begin
        if MessageDlg(' Nota fiscal ' + FrmNFMetal.qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                      ' do pedido  ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' já foi impressa !' + #13 +
                      ' Deseja reimprimir ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          Continue;
        end;
        VSEQNOTA:= FrmNFMetal.qryNotaFisc.FieldByName('NR_NOTAFISC').AsInteger;
      end;

      // VERIFICA SE NÃO PULOU NENHUMA NF
      IF  VSEQNOTA<FrmNFMetal.qryNotaFisc.FieldByName('NR_NOTAFISC').AsINTEGER then
        BEGIN
         if MessageDlg('Atenção! a próxima Nota Fiscal a ser impressa será a No. ' + FrmNFMetal.qryNotaFisc.FieldByName('NR_NOTAFISC').AsString + #13 +
                       'Verifique se o Formulário de Notas está correto. Cancela a Impressão? (Sim ou Não)', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
           exit;
          end;
         INC(VSEQNOTA);
        END;

      // Verificamos se a nota fiscal anterior foi impressa
{      try
//        qryTemp := CriaQuery(False);
        qryTemp.SQL.Text :=
        'SELECT NVL(MAX(NR_NOTAFISC), 0) NR_NOTAFISC                                         '+
        '  FROM NOTA_FISCAL                                                                  '+
        ' WHERE NR_NOTAFISC < ' + IntToStr(qryForm.FieldByName('NR_NOTAFISC').AsInteger ) + ''+
        '   AND FL_CANCNOTAFISC = ''N''                                                      '+
        '   AND FL_IMPRNOTAFISC = ''N''                                                      ';
        qryTemp.Open;

        // Verificamos se a nota anterior foi impressa
        if qryTemp['NR_NOTAFISC'] > 0 then
        begin
          // Mensagem
          if MessageDlg('A nota fiscal anterior nro. ' + IntToStr(qryTemp['NR_NOTAFISC']) + ' não foi impressa.' + #13 +
                        'Deseja imprimir a nota assim mesmo ?', mtWarning, [mbYes, mbNo], 0) = mrNo then
          begin
            Exit;
          end;
        end;

      finally
        qryTemp.Close;
      end;  }

    // Pegamos o numero interno da nota e a sigla da serie
    li_NumeNota := FrmNFMetal.qryNotaFisc['ID_NOTAFISC'];
    ls_SiglSeriNota := FrmNFMetal.qryNotaFisc['SG_SERINOTAFISC_NOTAFISC'];

    // Selecionamos a impressora para a nota fiscal
    // frmQRMDNotas.frmQRNotas.PrinterSettings.PrinterIndex := li_IndeImpr;

    // Imprimimos a nota fiscal
 //   frmQRMDNotas.RL_Notas.PrintDialog :=False;
    FrmNFMetal.RL_Notas.Print;
    FrmNFMetal.RL_Notas.DefaultFilter.Free;
  // end;
    end
    else
    begin
     //NF CEUAZUL ABAT.
     FrmQRMDNotas:=TfrmQRMDNotas.Create(Self);
      // Posicionamos no registro a ser impresso
     grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

      // Selecionamos a nota fiscal de acordo com o pedido
      FrmQRMDNotas.qryNotaFisc.Close;
      FrmQRMDNotas.qryItemNotaFisc.Close;
      FrmQRMDNotas.qryNotaFisc.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
      FrmQRMDNotas.qryNotaFisc.ParamByName('ps_serinotafisc').AsString := QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString;
      FrmQRMDNotas.qryNotaFisc.ParamByName('VNOTA').AsInteger  := QImpDocPed.FieldByName('NR_NOTAFISC').AsInteger;
      FrmQRMDNotas.qryNotaFisc.ParamByName('VCANCEL').AsString := 'N';

      FrmQRMDNotas.qryNotaFisc.Open;
      FrmQRMDNotas.qryItemNotaFisc.Open;

      // Verificamos se existe a nota fiscal para o pedido
      If frmQRMDNotas.qryNotaFisc.IsEmpty then
      begin
        MessageDlg('Nota fiscal não encontrada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !' + #13 +
                   'Por favor, verifique !', mtInformation, [mbOK], 0);
        Continue;
      end;

     IF VSEQNOTA=0 then
       VSEQNOTA:= frmQRMDNotas.qryNotaFisc.FieldByName('NR_NOTAFISC').AsInteger
     ELSE
       INC(VSEQNOTA);

      // Verificamos se a nota fiscal já foi impressa
      If frmQRMDNotas.qryNotaFisc['FL_IMPRNOTAFISC'] = 'N' then
      begin
        if MessageDlg ('Confirma impressão da nota fiscal  ' + frmQRMDNotas.qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                       'do pedido  ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          Exit;
      end
      else if frmQRMDNotas.qryNotaFisc['FL_IMPRNOTAFISC'] = 'S' then
      begin
        if MessageDlg(' Nota fiscal ' + frmQRMDNotas.qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                      ' do pedido  ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' já foi impressa !' + #13 +
                      ' Deseja reimprimir ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          Continue;
        end;
        VSEQNOTA:= frmQRMDNotas.qryNotaFisc.FieldByName('NR_NOTAFISC').AsInteger;
      end;

      // VERIFICA SE NÃO PULOU NENHUMA NF
      IF  VSEQNOTA<frmQRMDNotas.qryNotaFisc.FieldByName('NR_NOTAFISC').AsINTEGER then
        BEGIN
         if MessageDlg('Atenção! a próxima Nota Fiscal a ser impressa será a No. ' + frmQRMDNotas.qryNotaFisc.FieldByName('NR_NOTAFISC').AsString + #13 +
                       'Verifique se o Formulário de Notas está correto. Cancela a Impressão? (Sim ou Não)', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
           exit;
          end;
         INC(VSEQNOTA);
        END;

      // Verificamos se a nota fiscal anterior foi impressa
{      try
//        qryTemp := CriaQuery(False);
        qryTemp.SQL.Text :=
        'SELECT NVL(MAX(NR_NOTAFISC), 0) NR_NOTAFISC                                         '+
        '  FROM NOTA_FISCAL                                                                  '+
        ' WHERE NR_NOTAFISC < ' + IntToStr(qryForm.FieldByName('NR_NOTAFISC').AsInteger ) + ''+
        '   AND FL_CANCNOTAFISC = ''N''                                                      '+
        '   AND FL_IMPRNOTAFISC = ''N''                                                      ';
        qryTemp.Open;

        // Verificamos se a nota anterior foi impressa
        if qryTemp['NR_NOTAFISC'] > 0 then
        begin
          // Mensagem
          if MessageDlg('A nota fiscal anterior nro. ' + IntToStr(qryTemp['NR_NOTAFISC']) + ' não foi impressa.' + #13 +
                        'Deseja imprimir a nota assim mesmo ?', mtWarning, [mbYes, mbNo], 0) = mrNo then
          begin
            Exit;
          end;
        end;

      finally
        qryTemp.Close;
      end;  }

    // Pegamos o numero interno da nota e a sigla da serie
    li_NumeNota := frmQRMDNotas.qryNotaFisc['ID_NOTAFISC'];
    ls_SiglSeriNota := frmQRMDNotas.qryNotaFisc['SG_SERINOTAFISC_NOTAFISC'];

    // Selecionamos a impressora para a nota fiscal
    // frmQRMDNotas.frmQRNotas.PrinterSettings.PrinterIndex := li_IndeImpr;

    // Imprimimos a nota fiscal
 //   frmQRMDNotas.RL_Notas.PrintDialog :=False;
    frmQRMDNotas.RL_Notas.Print;
    frmQRMDNotas.RL_Notas.DefaultFilter.Free;
    end; // NF CEU AZUL ABAT.
   end; // NF 5601

//   VControlImpre:= VControlImpre+1;

{   if VControlImpre>=4 then
   begin
     //Imprime uma linha a mais para acerto do papel
     AssignFile(F,'LPT1:');
     Rewrite(F);
     Writeln(F);
     Writeln(F);
     Writeln(F);
     Writeln(F);
     Writeln(F);
     Writeln(F);
     Writeln(F);
     CloseFile(F);

 //    if VControlImpre>=10 then
     VControlImpre:=0;
   end
   else
   begin   }
      //Imprime uma linha a mais para acerto do papel
     AssignFile(F,'LPT1:');
     Rewrite(F);
     Writeln(F);
     Writeln(F);
     CloseFile(F);
//   end;

   Try
     // Atualizamos a flag de impressão da nota fiscal
     qryTemp.Close;
     qryTemp.SQL.Clear;
     qryTemp.SQL.Text :=
        'UPDATE NOTA_FISCAL                                           '+
        '   SET FL_IMPRNOTAFISC = ''S''                               '+
        ' WHERE ID_NOTAFISC = ' + IntToStr(li_NumeNota) + '           '+
        '   AND SG_SERINOTAFISC_NOTAFISC = ''' + ls_SiglSeriNota + '''';

     qryTemp.ExecSQL;
   Finally
     qryTemp.Close;
   End;

  end; //loop

   // Verificamos se a query Form não está vazia
   If not QImpDocPed.IsEmpty then
   begin
      QImpDocPed.DisableControls;
     // Limpamos todas as seleções do griDados
      grdDados.DataSource.DataSet.First;
      For vlLinha := 0 to VCONT do
      begin
        grdDados.SelectedRows.CurrentRowSelected := False;
        grdDados.DataSource.DataSet.Next;
      end;

     grdDados.SelectedRows.Refresh;
     QImpDocPed.EnableControls;
   end;

 end;

end;

procedure TfrmImpDocPed.mniGeraDocuClick(Sender: TObject);
var
  lb_RegiAtua    : TBookMark;
  li_BoleTipoDocu, li_Posi : Integer;
  li_Loop, li_LoopParc: Integer;
  li_SequBole: Int64;
  ls_SequBole: String;
  lr_ValoTotaPediVend: Double;
  lr_ValoBole: Double;
  lr_ValoPrimParcBole: Double;
  lr_CentBole: Double;
  ld_DataBole, ld_DtVenc, ld_DtVencAnt : TDateTime;
  ls_ImprBole: String;
  ls_NumeTitu: String;
  ld_DataFatu: TDateTime;
  li_NumeNotaFisc,vlLinha: Integer;
  ls_NumeNotaFisc: String;
  ld_DataNotaFisc: TDateTime;
  lr_ValoNotaFisc: Double;
  lr_PercComi, lr_PercFixo: Double;
  lr_PercTotaComi: Double;
  lb_PagaComi: Boolean;
  lb_ComiVend: Boolean;
  lb_ComiVendClie: Boolean;
  lb_NotaCanc,ub_EdicInte: Boolean;
  lr_ValoComi: Double;
  lr_PercComiTota,ur_ValoFreteAuto,ur_PercImpFretAuto: Double;
  lr_DifePediFatu: Real;
  ls_WherAdic: String;
  ls_Boletos: String;
  lr_CotaDia: Real;
  ls_Moeda, ls_Geral, ls_NumeAgen: String;
  VNF,vnovoboleto,vboleto, Marca_BoleImpresso : Boolean;
  dt_DataStr : String;
begin
  Marca_BoleImpresso := false;
  Screen.Cursor := crSQLWait;

  // Verificamos se existe algum ítem selecionado
  If grdDados.SelectedRows.Count = 0 then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('Selecione um ou mais pedidos para Geração da Nota Fiscal.', 'Comercial Dacar - Geração de Notas Fiscais', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  Qry_NotaNaoTransmitida.Close;
  Qry_NotaNaoTransmitida.Open;

  if (Qry_NotaNaoTransmitida.RecordCount > 0 ) then
  begin
    if (Application.MessageBox(PChar('Atenção: A Nota Fiscal ' + Qry_NotaNaoTransmitidaNR_NOTAFISC.AsString + ' ainda não foi transmitida, ou o seu XML não foi carregado.' +#13 +

    'Deseja continuar?'), 'Comercial Dacar - Geração de Notas Fiscais', MB_YESNO) = IDNO) then
      Exit;
  end;

  //Verifica a Data do Sistema
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := ' select sysdate  from  dual ';
  qryTemp.Open;
  if not(qryTemp.IsEmpty) then
     ld_DataHora := qryTemp.FieldByName('SYSDATE').AsDateTime;

  dt_DataStr := qryTemp.FieldByName('SYSDATE').AsString;

  qryTemp.close;
  lb_NotaCanc := False;
  lb_RegiAtua := QImpDocPed.GetBookmark;

  Try
    qryTemp.Close;
    QryTemp.SQL.Clear;
    qryTemp.SQL.Text := 'SELECT Sistema_parametro.ID_TIPODOCU_BOLETO,     '+
                        '       Sistema_parametro.DT_FATUDOCU,            '+
                        '       Sistema_parametro.FL_FATUANTEEXPEPARASIST '+
                        '  FROM SISTEMA_PARAMETRO Sistema_parametro       ';
    qryTemp.Open;

    // Guardamos o valor
    li_BoleTipoDocu := qryTemp.FieldByName('ID_TIPODOCU_BOLETO').AsInteger;
    ld_DataFatu := qryTemp.FieldByName('DT_FATUDOCU').AsDateTime;
    VFATUANTEEXPE:= qryTemp.FieldByName('FL_FATUANTEEXPEPARASIST').AsString;

    // Se o valor em Sistema_parametro não estiver cadastrado
    If not (li_BoleTipoDocu > 0) then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Você deve especificar nos parâmetros do sistema ' +
                 'qual é o Código do "Boleto" em Tipos de Documentos !', mtWarning, [mbOk], 0);
      Exit;
    end;

    If qryTemp.FieldByName('DT_FATUDOCU').AsString = '' then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Você deve especificar nos parâmetros do sistema ' +
                 'qual a data de faturamento padrão !', mtWarning, [mbOk], 0);
      Exit;
    end;
  Finally
    qryTemp.Close;
  end;

  lb_RegiAtua := QImpDocPed.GetBookmark;

  // Varremos a QImpDocPed para geração dos boletos para os registros selecionados
  For li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
  begin
    // Posicionamos no registro a ser gerado os documentos
    grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

    // Verificamos o status do pedido de venda (Se for zerado não geramos documentação)
    qryTemp.Close;
    QryTemp.SQL.Clear;
    qryTemp.SQL.Text :=
    ' SELECT ID_PEDIVEND, FL_STATPEDIVEND, VL_PEDIVEND, VL_FATUPEDIVEND, ID_FORMPAGA, ID_TIPOPEDIVEND FROM PEDIDO_VENDA WHERE ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + '';
    qryTemp.Open;

    VNF:=FALSE;

    if qryTemp.FieldByName('FL_STATPEDIVEND').AsString = 'NF' then
      VNF := True;

    If VNF=False then
    BEGIN //NF
      // Verificamos se o pedido foi zerado
      If qryTemp.FieldByName('FL_STATPEDIVEND').AsString = 'ZR' then
      begin
        Screen.Cursor := crDefault;
        Application.MessageBox(PChar('Não é possível gerar a Nota Fiscal para o Pedido ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString +
                               ' pois foi encerrada a Carga sem produto expedido.'), 'Comercial Dacar - Geração de Notas Fiscais', MB_OK + MB_ICONINFORMATION);
        Screen.Cursor := crSQLWait;
        Continue;
      end;

      // Verificamos se o pedido foi cancelado
      If qryTemp.FieldByName('FL_STATPEDIVEND').AsString = 'CN' then
      begin
        Screen.Cursor := crDefault;
        Application.MessageBox(PChar('Não é possível gerar a Nota Fiscal para o Pedido ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString +
                               ' pois foi Cancelado.'), 'Comercial Dacar - Geração de Notas Fiscais', MB_OK + MB_ICONINFORMATION);
        Screen.Cursor := crSQLWait;
        Continue;
      end;

      ls_WherAdic := '';

      // Verificamos se é para faturarmos antes da expedicao
      If (VFATUANTEEXPE = 'N') then
        ls_WherAdic := ' AND (Expedicao_carga.FL_STATCARGEXPE IN ( ''EX'', ''FE'')) ';

    end;

//    {FABRICIO - 21/05/2018 - MOTIVO: SOLICITAÇÃO DO VALMOR: FATURAMENTO INFERIOR A 200,00 SOMENTE A VISTA}
//    if ((qryTemp.FieldByName('FL_STATPEDIVEND').AsString = 'FE') OR (qryTemp.FieldByName('FL_STATPEDIVEND').AsString = 'NF')) AND
//        (qryTemp.FieldByName('VL_FATUPEDIVEND').Value <= 200) AND (qryTemp.FieldByName('ID_FORMPAGA').Value <> 11) AND
//        ((qryTemp.FieldByName('ID_TIPOPEDIVEND').Value = 6) OR (qryTemp.FieldByName('ID_TIPOPEDIVEND').Value = 18)) then
//    begin
//      Application.MessageBox('Não é permitido gerar Nota Fiscal com faturamento inferior a R$200,00 se a Forma de Pagamento não for Á Vista.', 'Comercial Dacar - Geração de Notas Fiscais', MB_OK + MB_ICONINFORMATION);
//      Screen.Cursor := crSQLWait;
//      qryTemp.Close;
//      Continue;
//    end;

    // Verificamos se a carga do pedido está liberada para geração dos documentos
    qryTemp.Close;
    QryTemp.SQL.Clear;
    qryTemp.SQL.Text :=
      ' SELECT ID_CARGEXPE,                                                    '+
      '        FL_STATCARGEXPE                                                   '+
      '  FROM  EXPEDICAO_CARGA                                                    '+
      ' WHERE  ID_CARGEXPE = ' + QImpDocPed.FieldByName('ID_CARGEXPE').AsString + ''+
      '   AND  FL_STATCARGEXPE NOT IN (''MT'', ''BQ'')          '+
    ls_WherAdic;
    qryTemp.Open;

    // Se a query estiver vazia o pedido não pode gerar a documentação
    // por fazer parte de uma carga indisponível.
    If qryTemp.IsEmpty then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox(PChar('Não é possível gerar a Nota Fiscal para o Pedido ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString +
                             ' pois a Carga Nº ' + IntToStr(QImpDocPed['ID_CARGEXPE']) + ' está indisponível.'), 'Comercial Dacar - Geração de Notas Fiscais', MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crSQLWait;
      qryTemp.Close;
      Continue;
    end;

    // Verificamos se já existe nota fiscal para o pedido
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text :=
     'SELECT NOTA_FISCAL.ID_NOTAFISC                                                          '+
     '  FROM NOTA_FISCAL,                                                                     '+
     '       PEDIDO_VENDA_NOTA_FISCAL                                                         '+
     ' WHERE (NOTA_FISCAL.ID_NOTAFISC = PEDIDO_VENDA_NOTA_FISCAL.ID_NOTAFISC)                 '+
     '   AND (NOTA_FISCAL.FL_CANCNOTAFISC = ''N'')                                            '+
     '   AND (PEDIDO_VENDA_NOTA_FISCAL.ID_PEDIVEND = ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ')';
    QryTemp.Open;

    If qryTemp.IsEmpty then
    begin
      qryTemp.SQL.Text :=
       'SELECT NOTA_FISCAL.ID_NOTAFISC                                                          '+
       '  FROM NOTA_FISCAL,                                                                     '+
       '       PEDIDO_VENDA_NOTA_FISCAL                                                         '+
       ' WHERE (NOTA_FISCAL.ID_NOTAFISC = PEDIDO_VENDA_NOTA_FISCAL.ID_NOTAFISC)                 '+
       '   AND (NOTA_FISCAL.FL_CANCNOTAFISC = ''S'')                                            '+
       '   AND (PEDIDO_VENDA_NOTA_FISCAL.ID_PEDIVEND = ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ')';
      qryTemp.Open;

      If not qryTemp.IsEmpty then
      begin
        // Indicamos que encontramos a nota fiscal cancelada
        lb_NotaCanc := True;
        Screen.Cursor := crDefault;
        If MessageDlg('A nota fiscal do pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' foi cancelada !' + #13 +
                      'Deseja gerar nova nota fiscal para o pedido ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          qryTemp.Close;
          Exit;
        end;
        Screen.Cursor := crSQLWait;
      end;
    end
    else
    begin
      Screen.Cursor := crDefault;
      MessageDlg('O(s) documento(s) do pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' já  foi(ram) gerado(s) !', mtInformation, [mbOK], 0);
      Screen.Cursor := crSQLWait;
      qryTemp.Close;
      Continue;
    end;

   qryTemp.Close;
   qryTemp.SQL.Text :=
       ' select                                                                     '+
       '       id_tipodocu                                                          '+
       '  from                                                                      '+
       '       pedido_venda,                                                        '+
       '       pedido_venda_tipo_docu_tipo                                          '+
       ' where id_pedivend = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' '+
       '   and pedido_venda.id_tipopedivend = pedido_venda_tipo_docu_tipo.id_tipopedivend '+
       '   and pedido_venda_tipo_docu_tipo.id_tipodocu = 1 ';
   qryTemp.Open;

    if not QryTemp.IsEmpty then
    begin
      If ld_DataFatu > QImpDocPed.FieldByName('DT_ENTRPEDIVEND').AsDateTime then
      Begin
        Screen.Cursor := crDefault;
        MessageDlg('A Documentação não foi gerada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' devido a Data da Entrega do Pedido está incorreta.', mtInformation, [mbOK], 0);
        Screen.Cursor := crSQLWait;
        qryTemp.Close;
        Continue;
      End;
    end;

    If QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString <> '' then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Documentação já gerada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']), mtInformation, [mbOK], 0);
      Screen.Cursor := crSQLWait;
      qryTemp.Close;
      Continue;
    end;

    try
      us_MensErro := 'Geração da Nota Fiscal.';
      ub_AjusFretPedi := True;

      qryTemp.Close;
      qryTemp.SQL.Text := 'SELECT NR_BOLECONT,                                                       '+
                          '       NVL(FL_EMITBOLECONT,''N'') AS FL_EMITBOLECONT,                     '+
                          '       NR_SEQUBOLECONT,                                                   '+
                          '       VL_MAXSEQUBOLECONT, BOL_CARTEIRA                                   '+
                          '  FROM CONTA Conta                                                        '+
                          ' WHERE (Conta.ID_CONTA = ' + QImpDocPed.FieldByName('ID_CONTA').AsString + ')';
      qryTemp.Open;
      vboleto:= true;

      If  (qryTemp.FieldByName('FL_EMITBOLECONT').AsString = 'N') then
         vboleto:= false;

      If  (qryTemp.FieldByName('NR_BOLECONT').AsString = '0') AND (qryTemp.FieldByName('BOL_CARTEIRA').AsString = '0')  then
           Marca_BoleImpresso := true;

      If (qryTemp.FieldByName('NR_SEQUBOLECONT').AsString='') {OR (VNF=TRUE)} then
        li_SequBole := 0
      Else
        li_SequBole := StrToInt64(Trim(qryTemp.FieldByName('NR_SEQUBOLECONT').AsString));

      ls_NumeBole := '';

      // Geramos o numero do boleto se o sequencial for informado
      If (li_SequBole > 0) AND ( vboleto ) then
      begin
           ls_Geral := Trim(QImpDocPed.FieldByName('NR_AGENBANC').AsString);
           li_Posi := Pos('-', ls_Geral);
           If li_Posi > 0 then
              ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),4,0)
           else
             ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),4,0);

        ls_NumeBole := NossoNumero(Trim(qryTemp.FieldByName('NR_BOLECONT').AsString),
                                   Trim(qryTemp.FieldByName('NR_SEQUBOLECONT').AsString),
                                   Copy(Trim(QImpDocPed.FieldByName('NR_BANCO').AsString), 1, 3),
                                   ls_NumeAgen,
                                   Trim(qryTemp.FieldByName('BOL_CARTEIRA').AsString) );
      end;
      QryTemp.Close;

      if vboleto then
      begin
        QryTemp.SQL.Text := ' select nr_boleto     '+
                            '   from boleto        '+
                            '  where id_pedivend = '+ FloatToStr(QImpDocPed['ID_PEDIVEND']);
        QryTemp.Open;
        If Not QryTemp.IsEmpty then
          begin
            OSQL.SQL.Clear;
            OSQL.SQL.Text := ' delete boleto        '+
                            '  where id_pedivend = '+ FloatToStr(QImpDocPed['ID_PEDIVEND']);
            OSQL.Execute;
            ls_NumeBole := QryTemp.fieldbyname('nr_boleto').AsString;
            vnovoboleto:= false;
          end
        Else
         vnovoboleto:= True;

        if  ( PosEx('-', dt_DataStr,1) > 0 ) then
        begin
          ShowMessage('Formato de data inválida ' + dt_DataStr );
          Exit;
        end;

      end;

      // Geramos a nota para o pedido
      If not GeraNota(QImpDocPed['ID_PEDIVEND'], 'NM',ls_NumeBole) then
      begin
        if MessageDlg('Confirma geração dos demais documentos para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' ?',
           mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          QImpDocPed.CancelUpdates;
          QryTemp.Close;
          Screen.Cursor := crDefault;
          Exit;
        end;
        ub_AjusFretPedi := False;
      end;

      qryTemp.Close;

      if vboleto=true then
      begin
        lr_CentBole := 0;
        lr_ValoBole := 0;
        lr_ValoTotaPediVend := 0;

        us_MensErro := 'Obtenção dos Dados para os Boletos.';

        QryTemp.SQL.clear;
        qryTemp.SQL.Text := 'SELECT FL_IMPRTIPOPEDIVENDTIPODOCU                                                                            '+
                            '  FROM PEDIDO_VENDA_TIPO_DOCU_TIPO Pedido_venda_tipo_docu_tipo                                                '+
                            ' WHERE (Pedido_venda_tipo_docu_tipo.ID_TIPOPEDIVEND = ' + QImpDocPed.FieldByName('ID_TIPOPEDIVEND').AsString + ')'+
                            '   AND (Pedido_venda_tipo_docu_tipo.ID_TIPODOCU = ' + IntToStr(li_BoleTipoDocu) + ')                          ';
        qryTemp.Open;

        // Guardamos o valor
        ls_ImprBole := qryTemp.FieldByName('FL_IMPRTIPOPEDIVENDTIPODOCU').AsString;

        // Fechamos a Query
        qryTemp.Close;

        //se a filial for de Pereiras
        if (gi_Filial=6) or (gi_Filial=9) then
          VNF := False;

        // Se o pedido necessitar de impressão de boletos
        // e a situação de cobrança for bancária
        If (ls_ImprBole = 'S') AND (QImpDocPed.FieldByName('ID_SITUCOBR').AsString = '2') {AND (VNF=FALSE)} then
        begin

          // Calculamos o valor total do pedido
          // Se o pedido já foi expedido
          If (QImpDocPed['FL_STATPEDIVEND'] = 'EX') or (QImpDocPed['FL_STATPEDIVEND'] = 'FE') then
          begin
            // Calculamos o total de acordo com o peso expedido
            QryTemp.SQL.Clear;
            QryTemp.SQL.Text := 'SELECT SUM( (NVL(Pedido_venda_item.VL_UNITITEMPEDIVEND, 0) * NVL(Pedido_venda_item.QN_PESOPADREXPEITEMPEDIVEND, 0))* NVL(1+(Pedido_venda_item.vl_unitipi/100),1)) AS VL_TOTAPEDIVEND '+
                                '  FROM PEDIDO_VENDA_ITEM Pedido_venda_item,                                                                                          '+
                                '       PEDIDO_VENDA Pedido_venda,                                                                                                    '+
                                '       TIPO_OPER_PEDI_VEND_TIPO Tipo_oper_pedi_vend_tipo,                                                                            '+
                                '       OPERACAO_TIPO Operacao_tipo                                                                                                   '+
                                ' WHERE (Pedido_venda_item.ID_PEDIVEND = Pedido_venda.ID_PEDIVEND)                                                                    '+
                                '   AND (Pedido_venda.ID_TIPOPEDIVEND = Tipo_oper_pedi_vend_tipo.ID_TIPOPEDIVEND)                                                     '+
                                '   AND (Tipo_oper_pedi_vend_tipo.ID_TIPOOPER = Operacao_tipo.ID_TIPOOPER)                                                            '+
                                '   AND (Operacao_tipo.FL_GERAFINATIPOOPER = ''S'')                                                                                   '+
                                '   AND (Pedido_venda_item.ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ')                                         ';

          end
          else
          begin
            QryTemp.SQL.Clear;
            QryTemp.SQL.Text := 'SELECT SUM( (NVL(Pedido_venda_item.VL_UNITITEMPEDIVEND, 0) * NVL(Pedido_venda_item.QN_PESOITEMPEDIVEND, 0))*NVL(1+(Pedido_venda_item.vl_unitipi/100),1) - ( NVL(Pedido_venda_item.vl_Descitem,0) ) ) AS VL_TOTAPEDIVEND    '+
                                '  FROM PEDIDO_VENDA_ITEM Pedido_venda_item,                                                                                          '+
                                '       PEDIDO_VENDA Pedido_venda,                                                                                                    '+
                                '       TIPO_OPER_PEDI_VEND_TIPO Tipo_oper_pedi_vend_tipo,                                                                            '+
                                '       OPERACAO_TIPO Operacao_tipo                                                                                                   '+
                                ' WHERE (Pedido_venda_item.ID_PEDIVEND = Pedido_venda.ID_PEDIVEND)                                                                    '+
                                '   AND (Pedido_venda.ID_TIPOPEDIVEND = Tipo_oper_pedi_vend_tipo.ID_TIPOPEDIVEND)                                                     '+
                                '   AND (Tipo_oper_pedi_vend_tipo.ID_TIPOOPER = Operacao_tipo.ID_TIPOOPER)                                                            '+
                                '   AND (Operacao_tipo.FL_GERAFINATIPOOPER = ''S'')                                                                                   '+
                                '   AND (Pedido_venda_item.ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ')                                         ';

          end;
          qryTemp.Open;

          // Guardamos o Valor Total do Pedido de Venda
          lr_ValoTotaPediVend := qryTemp.FieldByName('VL_TOTAPEDIVEND').AsFloat;

          If (QImpDocPed['FL_STATPEDIVEND'] = 'EC') and (VFATUANTEEXPE = 'N') then
          begin
            if lr_ValoNota<>lr_ValoTotaPediVend then
            begin
              Screen.Cursor := crDefault;
              MessageDlg('O pedido: '+  FloatToStr(QImpDocPed['ID_PEDIVEND'])+
                     ' está com Status EC e aparentemente com valores divergentes, valor da NF: ' + FloatToStr(lr_ValoNota) + ' valor do boleto: ' + FloatToStr(lr_ValoTotaPediVend)
                   + 'Avise o TI de qualquer forma!  O Boleto não será gerado. ',mtError, [mbOK], 0);
              lr_ValoTotaPediVend:=0;
            end;

            Screen.Cursor := crSQLWait;

          end;

          if lr_ValoTotaPediVend > 0 then
          begin
            us_MensErro := 'Obtenção dos Dados para os Boletos (Formas de Pagamento).';

            qryTempFormPaga.close;
            qryTempFormPaga.SQL.Clear;
            qryTempFormPaga.SQL.Text := 'SELECT Forma_pagamento.EMPRESA,                                                            '+
                                        '       Forma_pagamento.FILIAL,                                                             '+
                                        '       Forma_pagamento.ID_FORMPAGA,                                                        '+
                                        '       Forma_pagamento.NM_FORMPAGA,                                                        '+
                                        '       Forma_pagamento.QN_PARCFORMPAGA,                                                    '+
                                        '       Forma_pagamento.QN_DIASTOLEFORMPAGA,                                                '+
                                        '       Forma_pagamento.PC_TOLEVALOFORMPAGA,                                                '+
                                        '       Forma_pagamento.FL_CENTPRIMFORMPAGA,                                                '+
                                        '       Forma_pagamento.FL_FORMPAGA,                                                        '+
                                        '       Forma_pagamento.FX_FORMPAGA                                                         '+
                                        '  FROM FORMA_PAGAMENTO Forma_pagamento                                                     '+
                                        ' WHERE (Forma_pagamento.ID_FORMPAGA = ' + QImpDocPed.FieldByName('ID_FORMPAGA').AsString + ') ';
            qryTempFormPaga.Open;

            qryTempInstCobr.Close;
            qryTempInstCobr.SQL.Clear;
            qryTempInstCobr.SQL.Text := 'SELECT Cobranca_instrucao.EMPRESA,                                                           '+
                                        '       Cobranca_instrucao.FILIAL,                                                            '+
                                        '       Cobranca_instrucao.ID_INSTCOBR,                                                       '+
                                        '       Cobranca_instrucao.NM_INSTCOBR,                                                       '+
                                        '       Cobranca_instrucao.PC_JURODIARINSTCOBR,                                               '+
                                        '       Cobranca_instrucao.FL_TIPOJUROINSTCOBR,                                               '+
                                        '       Cobranca_instrucao.QN_DIASTOLEJUROINSTCOBR,                                           '+
                                        '       Cobranca_instrucao.PC_MULTINSTCOBR,                                                   '+
                                        '       Cobranca_instrucao.QN_DIASTOLEMULTINSTCOBR,                                           '+
                                        '       Cobranca_instrucao.FL_PROTINSTCOBR,                                                   '+
                                        '       Cobranca_instrucao.QN_DIASTOLEPROTINSTCOBR,                                           '+
                                        '       Cobranca_instrucao.GN_TEXTPROTINSTCOBR,                                               '+
                                        '       Cobranca_instrucao.QN_DIASTOLEDESCINSTCOBR,                                           '+
                                        '       Cobranca_instrucao.QN_DIASTOLERECEINSTCOBR,                                           '+
                                        '       Cobranca_instrucao.FL_AVISDEBIAUTOINSTCOBR,                                           '+
                                        '       Cobranca_instrucao.GN_OBSEINSTCOBR,                                                   '+
                                        '       Cobranca_instrucao.FX_INSTCOBR                                                        '+
                                        '  FROM COBRANCA_INSTRUCAO Cobranca_instrucao                                                 '+
                                        ' WHERE (Cobranca_instrucao.ID_INSTCOBR = ' + QImpDocPed.FieldByName('ID_INSTCOBR').AsString + ')';
            qryTempInstCobr.Open;

            qryTempFormPagaParc.Close;
            qryTempFormPagaParc.sql.Clear;
            qryTempFormPagaParc.SQL.Text := 'SELECT Forma_pagamento_parcela.EMPRESA,                                                           '+
                                            '       Forma_pagamento_parcela.FILIAL,                                                            '+
                                            '       Forma_pagamento_parcela.ID_PARCFORMPAGA,                                                   '+
                                            '       Forma_pagamento_parcela.ID_FORMPAGA,                                                       '+
                                            '       Forma_pagamento_parcela.NR_PARCFORMPAGA,                                                   '+
                                            '       Forma_pagamento_parcela.PC_PARCFORMPAGA,                                                   '+
                                            '       Forma_pagamento_parcela.QN_DIASPARCFORMPAGA,                                               '+
                                            '       Forma_pagamento_parcela.FX_PARCFORMPAGA                                                    '+
                                            '  FROM FORMA_PAGAMENTO_PARCELA Forma_pagamento_parcela                                            '+
                                            ' WHERE (Forma_pagamento_parcela.ID_FORMPAGA = ' + QImpDocPed.FieldByName('ID_FORMPAGA').AsString + ' ) ' +
                                            ' ORDER BY TO_NUMBER(Forma_pagamento_parcela.NR_PARCFORMPAGA) ';
            qryTempFormPagaParc.Open;
            qryTempFormPagaParc.First;

            for li_LoopParc := 1 to qryTempFormPaga['QN_PARCFORMPAGA'] do
            begin
              lr_ValoBole := ArredondaDecimal ( (lr_ValoTotaPediVend * qryTempFormPagaParc.FieldByName('PC_PARCFORMPAGA').AsFloat)/100, 2) ;

              // Se os centavos forem para a primeira parcela
              if qryTempFormPaga['FL_CENTPRIMFORMPAGA'] = 'S' then
              begin
                // Guardamos o valor dos centavos
                lr_CentBole := lr_CentBole + (lr_ValoBole - Int(lr_ValoBole));

                // Calculamos o valor do boleto sem os centavos
                lr_ValoBole := Int(lr_ValoBole);

                // Se for a primeira parcela
                if li_LoopParc = 1 then
                begin
                  // Guardamos o valor da primeira parcela
                  lr_ValoPrimParcBole := lr_ValoBole;
                end;
              end;

              // Ajustamos a variável dos erros
              us_MensErro := 'Obtenção dos Dados para os Boletos (Geração do Sequencial).';

              IF (vnovoboleto=TRUE) then
              BEGIN
                // Calculamos o Sequencial do boleto
                // Buscamos o último NR_BOLECONT
                qryTemp.Close;
                qryTemp.SQL.Text := 'SELECT NR_BOLECONT,                                                       '+
                                    '       NR_SEQUBOLECONT,                                                   '+
                                    '       VL_MAXSEQUBOLECONT, BOL_CARTEIRA                                                 '+
                                    '  FROM CONTA Conta                                                        '+
                                    ' WHERE (Conta.ID_CONTA = ' + QImpDocPed.FieldByName('ID_CONTA').AsString + ')';
                qryTemp.Open;
                li_SequBole := StrToInt64(Trim(qryTemp.FieldByName('NR_SEQUBOLECONT').AsString));

                // Verificamos se o sequencial atingiu o valor maximo
                If li_SequBole >= qryTemp.FieldByName('VL_MAXSEQUBOLECONT').Value then
                begin
                  us_MensErro := 'Obtenção dos Dados para os Boletos (Limite do Sequencial).';
                  Raise Exception.Create('');
                end;

                //Avisamos quando o limite está perto de estourar.
                If li_SequBole+500 >= qryTemp.FieldByName('VL_MAXSEQUBOLECONT').Value then
                begin
                  ShowMessage('Atenção! Faltam menos de 500 números para esgotar o Sequencial dos Boletos, verifique.');
                end;

                ls_NumeBole := '';

                if li_SequBole > 0 then
                begin
                  ls_Geral := Trim(QImpDocPed.FieldByName('NR_AGENBANC').AsString);
                  li_Posi := Pos('-', ls_Geral);
                  If li_Posi > 0 then
                    ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),4,0)
                  else
                    ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),4,0);

                  ls_NumeBole := NossoNumero(Trim(qryTemp.FieldByName('NR_BOLECONT').AsString),
                                             Trim(qryTemp.FieldByName('NR_SEQUBOLECONT').AsString),
                                             Copy(Trim(QImpDocPed.FieldByName('NR_BANCO').AsString), 1, 3),
                                             ls_NumeAgen,
                                             Trim(qryTemp.FieldByName('BOL_CARTEIRA').AsString) );
                end;

                QryTemp.Close;
                QryTemp.SQL.Text := ' select nr_boleto    '+
                          ' from   boleto       '+
                          ' where id_pedivend = '+ FloatToStr(QImpDocPed['ID_PEDIVEND'] ) +
                          '   AND NR_PARCBOLE = '+ IntToStr( li_LoopParc ) ;
                QryTemp.Open;

                If Not QryTemp.IsEmpty then
                begin
                  ls_NumeBole := QryTemp.fieldbyname('nr_boleto').AsString;
                  vnovoboleto:= False;
                end
                Else
                  vnovoboleto:= True;

                if (li_SequBole > 0) and (vnovoboleto=True)  then
                begin
                  qryTemp.Close;
                  qryTemp.SQL.Text := 'UPDATE CONTA SET NR_SEQUBOLECONT = NR_SEQUBOLECONT + 1                     '+
                                  ' WHERE (Conta.ID_CONTA = ' + QImpDocPed.FieldByName('ID_CONTA').AsString + ') ';

                  qryTemp.ExecSQL;
                end;
              END;

              us_MensErro := 'Inclusão do Boleto.';

              qryTempBole.Close;
              qryTempBole.SQL.Clear;
              qryTempBole.SQL.Text := 'INSERT INTO BOLETO             '+
                                      '       (EMPRESA,               '+
                                      '       FILIAL,                 '+
                                      '       ID_BOLETO,              '+
                                      '       ID_PEDIVEND,            '+
                                      '       ID_CONTA,               '+
                                      '       NR_BOLETO,              '+
                                      '       NR_PARCBOLE,            '+
                                      '       DT_GERABOLE,            '+
                                      '       DT_EMISBOLE,            '+
                                      '       DT_VENCBOLE,            '+
                                      '       VL_BOLETO,              '+
                                      '       VL_MORADIABOLE,         '+
                                      '       VL_MULTBOLE,            '+
                                      '       QN_DIASPROTBOLE,        '+
                                      '       NR_SEQUBOLE,            '+
                                      '       FL_IMPRBOLE,            '+
                                      '       FX_BOLETO)              '+
                                      'VALUES (:ps_Empresa,           '+
                                      '       :pi_Filial,             '+
                                      '       ID_BOLETO.NEXTVAL,      '+
                                      '       :pi_PediVend,           '+
                                      '       :pi_Conta,              '+
                                      '       :ps_NumeBole,           '+
                                      '       :pi_ParcBole,           '+
                                      '       :pd_GeraBole,           '+
                                      '       :pd_EmisBole,           '+
                                      '       :pd_VencBole,           '+
                                      '       :pr_ValoBole,           '+
                                      '       :pr_ValoMora,           '+
                                      '       :pr_ValoMult,           '+
                                      '       :pi_DiasProt,           '+
                                      '       :pr_SequBole,           '+
                                      '       :ps_ImprBole,           '+
                                      '       :ps_Fixo)               ';

              qryTempBole.ParamByName('ps_Empresa').AsString := gs_Empresa;
              qryTempBole.ParamByName('pi_Filial').AsInteger := gi_Filial;
              qryTempBole.ParamByName('pi_PediVend').AsInteger := QImpDocPed['ID_PEDIVEND'];
              qryTempBole.ParamByName('pi_Conta').AsInteger := QImpDocPed['ID_CONTA'];
              qryTempBole.ParamByName('ps_NumeBole').AsString := ls_NumeBole;
              qryTempBole.ParamByName('pi_ParcBole').AsInteger := li_LoopParc;
              qryTempBole.ParamByName('pd_GeraBole').AsDateTime := ld_DataHora;
              qryTempBole.ParamByName('pd_EmisBole').AsDateTime := ld_DataHora;

              ld_DtVenc :=  FrmPrincipal.DiaUtil( QImpDocPed.FieldByName('DT_ENTRPEDIVEND').AsDateTime + qryTempFormPagaParc['QN_DIASPARCFORMPAGA']) ;

              // Verifica se vencimento ficou igual ao da parcela anterior
              if ( li_LoopParc > 1 ) then
              begin
                if ( ld_DtVencAnt = ld_DtVenc ) then
                  ld_DtVenc := FrmPrincipal.DiaUtil( ld_DtVenc + 1 ) ;
              end;

              ld_DtVencAnt := ld_DtVenc ;

              qryTempBole.ParamByName('pd_VencBole').AsDateTime := ld_DtVenc ; //ld_DataFatu
              qryTempBole.ParamByName('pr_ValoBole').AsFloat := lr_ValoBole;

              if ( BASE_DACAR = 'S' ) then  // Dacar
              begin
                qryTempBole.ParamByName('pr_ValoMora').AsFloat := (lr_ValoBole * QImpDocPed.FieldByName('PC_JURODIARIO').AsFloat)/100;
              end
              else
              begin
                if QImpDocPed.FieldByName('ID_CONTA').Value = 100 then
                  qryTempBole.ParamByName('pr_ValoMora').AsFloat := (lr_ValoBole * 0.003)
                else if (QImpDocPed.FieldByName('ID_CONTA').Value = 101) or (QImpDocPed.FieldByName('ID_CONTA').Value = 151) then
                   qryTempBole.ParamByName('pr_ValoMora').AsFloat := (lr_ValoBole * 0.0033)
                else if (QImpDocPed.FieldByName('ID_CONTA').Value = 143) or (QImpDocPed.FieldByName('ID_CONTA').Value = 149) or (QImpDocPed.FieldByName('ID_CONTA').Value = 162) or (QImpDocPed.FieldByName('ID_CONTA').Value = 167) then
                   qryTempBole.ParamByName('pr_ValoMora').AsFloat := (lr_ValoBole * 0.005)
                else
                   qryTempBole.ParamByName('pr_ValoMora').AsFloat := (lr_ValoBole * qryTempInstCobr.FieldByName('PC_JURODIARINSTCOBR').AsFloat)/100;
              end;

              qryTempBole.ParamByName('pr_ValoMult').AsFloat := 0;
              qryTempBole.ParamByName('pi_DiasProt').AsInteger := qryTempInstCobr['QN_DIASTOLEPROTINSTCOBR'];
              qryTempBole.ParamByName('pr_SequBole').AsFloat := li_SequBole + 1;

              if (Marca_BoleImpresso) then
                qryTempBole.ParamByName('ps_ImprBole').AsString := 'S'
              else
                qryTempBole.ParamByName('ps_ImprBole').AsString := 'N';

              qryTempBole.ParamByName('ps_Fixo').AsString := 'N';
              qryTempBole.ExecSQL;
              qryTempBole.Close;
              qryTempFormPagaParc.Next;
            end;

            if (qryTempFormPaga['FL_CENTPRIMFORMPAGA'] = 'S') and (lr_CentBole > 0) then
            begin
              qryTemp.Close;
              qryTemp.SQL.Text := 'UPDATE BOLETO SET VL_BOLETO = (VL_BOLETO + ' + ReplaceStr(FloatToStr(lr_CentBole), ',', '.') + ')'+
                                  ' WHERE (ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ')                        '+
                                  '   AND (NR_PARCBOLE = 1)                                                                          ';

              qryTemp.ExecSQL;
            end;

            If (VFATUANTEEXPE = 'N') then
            begin
              VerificaValorBoleto ( QImpDocPed.FieldByName('ID_PEDIVEND').Value );
            end;

            qryTempFormPaga.Close;
            qryTempFormPagaParc.Close;
            qryTempInstCobr.Close;
          end;
        end;

        us_MensErro := 'Atualizando Data de Geração do Boleto.';

        qryTemp.Close;
        qryTemp.SQL.Text :=
        ' UPDATE BOLETO                                                                              '+
        '    SET DT_GERABOLE = TO_DATE(''' + DateTimeToStr(ld_DataHora) + ''', ''DD/MM/YYYY HH24:MI:SS'')'+
        '  WHERE ID_PEDIVEND = ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + '';
        qryTemp.ExecSQL;
      end;

      // Ajustamos a variável dos erros

      if ( dadosCadastraisFilial.ControleCaixa = 'S' ) then
      begin
        us_MensErro := 'Gerando Vale Caixas.';
        GerarValeCaixa( QImpDocPedID_PEDIVEND.AsInteger );
      end;

      us_MensErro := 'Atualizando Data de Geração da Nota Fiscal.';
      us_MensErro := 'Atualizando Dados do Pedido de Venda.';

      ub_EdicInte := True;

      QImpDocPed.Edit;
      QImpDocPed['DT_FATUPEDIVEND'] := ld_DataFatu;
      QImpDocPed['DTHORA_GERADOC'] := ld_DataHora;

      QryTemp.Close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Text := ' SELECT NOTA_FISCAL.qn_pesobrutnotafisc  '+
                          ' FROM NOTA_FISCAL,                       '+
                          '      pedido_venda_nota_fiscal           '+
                          ' WHERE  NOTA_FISCAL.id_notafisc = pedido_venda_nota_fiscal.id_notafisc   '+
                          '  and pedido_venda_nota_fiscal.id_pedivend = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString ;
      QryTemp.Open;

      QImpDocPed['VL_TRANAUTOPEDIVEND'] := QryTemp.Fieldbyname('qn_pesobrutnotafisc').AsFloat*0.02 ;
      QImpDocPed['PC_IMPOFRETAUTOPEDIVEND'] := ur_PercImpFretAuto;

      If (QImpDocPed['FL_STATPEDIVEND'] = 'EX') or (QImpDocPed['FL_STATPEDIVEND'] = 'FE') or (QImpDocPed['FL_STATPEDIVEND'] = 'NF') then
      begin
        qryTemp.Close;
        qryTemp.SQL.Text :=
        'UPDATE PEDIDO_VENDA                                                                                                  '+
        '   SET VL_FATUPEDIVEND = (SELECT SUM(ROUND((VL_UNITITEMPEDIVEND *                                                     '+
        '                                 DECODE(QN_PESOPADREXPEITEMPEDIVEND, NULL, QN_PESOREALEXPEITEMPEDIVEND,              '+
        '                                                                        0, QN_PESOREALEXPEITEMPEDIVEND,              '+
        '                                        QN_PESOPADREXPEITEMPEDIVEND)*NVL(1+(Pedido_venda_item.vl_unitipi/100),1) ),2)) VL_FATURA                                   '+
        '                            FROM PEDIDO_VENDA_ITEM                                                                   '+
        '                           WHERE PEDIDO_VENDA_ITEM.ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ')'+
        ' WHERE ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + '                                             ';
      end
      else
      begin

        qryTemp.Close;
        qryTemp.SQL.Text :=
        'UPDATE PEDIDO_VENDA                                                                                                  '+
        '   SET VL_FATUPEDIVEND = (SELECT SUM(ROUND((VL_UNITITEMPEDIVEND *                                                     '+
        '                                 DECODE(QN_PESOPADREXPEITEMPEDIVEND, NULL, QN_PESOITEMPEDIVEND,                      '+
        '                                                                        0, QN_PESOITEMPEDIVEND,                      '+
        '                                        QN_PESOPADREXPEITEMPEDIVEND)*NVL(1+(Pedido_venda_item.vl_unitipi/100),1)),2)) VL_FATURA                                   '+
        '                            FROM PEDIDO_VENDA_ITEM                                                                   '+
        '                           WHERE PEDIDO_VENDA_ITEM.ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ')'+
        ' WHERE ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + '                                             ';
      end;
      qryTemp.ExecSQL;

      qryTemp.Close;
      QryTemp.SQL.Clear;
      qryTemp.SQL.Text :=
      ' SELECT ID_PEDIVEND, FL_STATPEDIVEND, VL_PEDIVEND, VL_FATUPEDIVEND, ID_FORMPAGA, ID_TIPOPEDIVEND FROM PEDIDO_VENDA WHERE ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + '';
      qryTemp.Open;

      {FABRICIO - 21/05/2018 - MOTIVO: SOLICITAÇÃO DO VALMOR: FATURAMENTO INFERIOR A 200,00 SOMENTE A VISTA
      if ((qryTemp.FieldByName('FL_STATPEDIVEND').AsString = 'FE') OR (qryTemp.FieldByName('FL_STATPEDIVEND').AsString = 'NF')) AND
          (qryTemp.FieldByName('VL_FATUPEDIVEND').Value <= 200) AND (qryTemp.FieldByName('ID_FORMPAGA').Value <> 11) AND
          ((qryTemp.FieldByName('ID_TIPOPEDIVEND').Value = 6) OR (qryTemp.FieldByName('ID_TIPOPEDIVEND').Value = 18)) then
      begin
        Application.MessageBox('Não é permitido gerar Nota Fiscal com faturamento inferior a R$200,00 se a Forma de Pagamento não for Á Vista.', 'Comercial Dacar - Geração de Notas Fiscais', MB_OK + MB_ICONINFORMATION);
        Screen.Cursor := crSQLWait;
        qryTemp.Close;
        Continue;
      end;}

      lr_DifePediFatu := 0;

      if (QImpDocPed['FL_STATPEDIVEND'] = 'EX') OR (QImpDocPed['FL_STATPEDIVEND'] = 'NF') then
      begin
        QImpDocPed['FL_STATPEDIVEND'] := 'FE';
        QImpDocPed['DT_FATUPEDIVEND'] := ld_DataFatu;
      end;

      QImpDocPed.Post;
      ub_EdicInte := False;

      QImpDocPed.ApplyUpdates;
      QImpDocPed.CommitUpdates;

    except
      qryTemp.Close;
      qryTempPediItem.Close;
      Screen.Cursor := crDefault;

      MessageDlg('Erro na geração dos documentos do pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !', mtError, [mbOK], 0);
      MessageDlg('Ocorrência do erro: ' + #13 +
                 us_MensErro, mtWarning, [mbOk], 0);
      Exit;
    end;
  end;

  QImpDocPed.GotoBookmark(lb_RegiAtua);

  try
    QImpDocPed.DisableControls;
    If not QImpDocPed.IsEmpty then
    begin
      grdDados.DataSource.DataSet.First;
      For vlLinha := 0 to VCONT do
      begin
        grdDados.SelectedRows.CurrentRowSelected := False;
        grdDados.DataSource.DataSet.Next;
      end;
    end;

  finally
    QImpDocPed.EnableControls;
  end;

  QImpDocPed.Refresh;

  Screen.Cursor := crDefault;

end;

Function TfrmImpDocPed.GeraNota(pi_CodiPedi: Integer;
     ps_TipoPedi: String;ps_numbole:string): Boolean;
var
  lr_ValoIPI, lr_ValoItem, lr_ValoBrutItem, lr_ValoICMS,  lr_PercICMS, lr_Frete, vl_uniticms, vl_DescItem, vl_OutDesp,
  lr_BaseICMS, lr_TotaItem, lr_TotaBrutItem, lr_BaseRedu, lr_Volumes, lr_PesoBrut, lr_PesoLiqu, lr_DescItem, lr_OutDesp,
  lr_IsenICMS, lr_OutrICMS, lr_TotaIPI, lr_IsenIPI, lr_OutrIPI, lr_BaseIPI, lr_palet, lr_BaseICMSComplem, lr_BaseIcmsItem,
  lr_ValoIcmsItem, lr_IsenIcmsItem, lr_OutrIcmsItem, lr_PcDescNotaFisc,VSITUTRIBITEM,li_idcliente: Real;

  sltPercIcms, sltBaseICMS, sltValoICMS, sltIsenICMS, sltOutrICMS: TStringList;
  li_Posicao, li_NumeNota, li_NumeNotaSeri, li_Loop, vtipodocu: Integer;

  la_SituTrib, la_DescSituTrib: array[0..10] of String;

  ls_ObseNota, ls_StatPediVend, ls_TipoFrete, VDESCRI, VNM_TIPOEMBA, VOBSDESC, OBS_FISCO, filtroAux: string;
  lb_TranAuto: Boolean;

begin
  // Damos o retorno
  Result := False;
  OBS_FISCO := '';

  // Se o pedido for do tipo Normal
  If ps_TipoPedi = 'NM' then
  begin
    // Ajustamos a variável dos erros
    us_MensErro := 'Obtenção dos Dados para a Nota Fiscal.';

    // Criamos a query para os dados do header da nota
    qryPediVend.Close;
    qryPediVend.SQL.Clear;
    qryPediVend.SQL.Text :=
      'SELECT SUBSTR(NFS.SG_SERINOTAFISC,1,3) SG_SERINOTAFISC_NOTAFISC, PARAMETRO.DT_FATUDOCU, PV.DT_ENTRPEDIVEND, '+
      'CFOP.NR_CFOP NR_CFOP_NOTAFISC, SUBSTR(CFOP.NM_NATUOPERCFOP,1,40) NM_NATUOPERNOTAFISC, C.ID_CLIENTE, '+
      'SUBSTR(C.NM_CLIENTE,1,40) NM_DESTREMENOTAFISC, C.FL_PESSCLIE FL_PESSNOTAFISC, C.FL_EXIBDESCNF FL_EXIBDESCNF, '+
      'SUBSTR(END_CLI.SG_TIPOLOGR || '' '' || C.NM_LOGRENDECLIE || '' , '' ||  C.NR_LOGRENDECLIE || '' '' || C.GN_COMPENDECLIE,1,60) GN_ENDENOTAFISC, '+
      'SUBSTR(B.NM_BAIRRO,1,40) NM_BAIRNOTAFISC, C.NR_CEPENDECLIE NR_CEPNOTAFISC, SUBSTR(CID.NM_CIDADE,1,40) NM_CIDANOTAFISC, '+
      'UF.SG_ESTADO SG_ESTANOTAFISC, SUBSTR(PAIS.NM_PAIS,1,40) NM_PAISNOTAFISC, C.NR_FONECLIE NR_FONENOTAFISC, '+
      'NVL(PV.VL_DESCPEDIVEND,0) VL_DESCPEDIVEND_NOTAFISC, NVL(PV.PC_DESCPEDIVEND,0) PC_DESCPEDIVEND, '+
      'C.NR_RGCLIE NR_RGNOTAFISC, C.NR_CPFCLIE NR_CPFNOTAFISC, NVL(PV.VL_FRETPEDIVEND,0) VL_FRETNOTAFISC, '+
      'NVL(PV.VL_SEGUPEDIVEND,0) VL_SEGUNOTAFISC, NVL(PV.VL_DESPPEDIVEND,0) VL_OUTRDESPNOTAFISC, '+
      'SUBSTR(FORN.NM_FORNECEDOR,1,40) NM_TRANSPORTADOR_NOTAFISC, SUBSTR(TRANSP.GN_PLACVEICTRAN,1,10) GN_PLACVEICNOTAFISC, '+
      'SUBSTR(END_TRANSP.SG_TIPOLOGR || '' '' || FORN.NM_LOGRFORN || '', '' || FORN.NR_LOGRFORN || '' '' || FORN.GN_COMPENDEFORN,1,60) NM_ENDETRANNOTAFISC, '+
      'FORN.FL_PESSFORN FL_PESSTRANNOTAFISC, SUBSTR(CID_TRANSP.NM_CIDADE,1,40) NM_CIDATRANNOTAFISC, UF_TRANSP.SG_ESTADO SG_ESTATRANNOTAFISC, '+
      'FORN.NR_INSCESTAFORN NR_IETRANNOTAFISC, FORN.NR_RGFORN NR_RGTRANNOTAFISC, FORN.NR_CPFFORN NR_CPFTRANNOTAFISC, '+
      'SUBSTR(LOG_TIPO.SG_TIPOLOGR || '' '' || END_ENTR.NM_LOGRENDECLIE || '', '' || END_ENTR.NR_LOGRENDECLIE || '' '' || END_ENTR.GN_COMPENDECLIE,1,60) GN_ENDEENTRNOTAFISC, '+
      'SUBSTR(BAIRRO_ENTR.NM_BAIRRO,1,40) NM_BAIRENTRNOTAFISC, SUBSTR(CIDADE_ENTR.NM_CIDADE,1,40) NM_CIDAENTRNOTAFISC, '+
      'ESTADO_ENTR.SG_ESTADO SG_ESTAENTRNOTAFISC, END_ENTR.NR_CEPENDECLIE GN_CEPENTRNOTAFISC, ' +
      ' CASE WHEN FORN.NR_CNPJFORN = ''72.457.542/0001-07'' then ' +
      '   ''3''  ' +
      ' WHEN PV.ID_USUASIST_DIGIPEDIVEND IN (73, 95, 153) AND PV.SG_TIPOFRETPEDIVEND = 1 then  '+
      '     ''1''                                                                         '+
      ' WHEN PV.ID_USUASIST_DIGIPEDIVEND IN (73, 95, 153) AND PV.SG_TIPOFRETPEDIVEND = 2 then  '+
      '     ''2''                                                                         '+
      ' WHEN PV.ID_USUASIST_DIGIPEDIVEND IN (73, 95, 153) AND PV.SG_TIPOFRETPEDIVEND = 4 then  '+
      '     ''4''                                                                         '+
      ' WHEN PV.ID_USUASIST_DIGIPEDIVEND IN (73, 95, 153) AND PV.SG_TIPOFRETPEDIVEND = 9 then  '+
      '     ''9''                                                                         '+
      ' ELSE ''0'' END AS FL_TIPOFRETNOTAFISC, ' +

//      (PV.SG_TIPOFRETPEDIVEND) FL_TIPOFRETNOTAFISC, '+
      'OP.FL_ENTRSAIDTIPOOPER, CID.FL_ZONAFRAN FL_ZONAFRANNOTAFISC, UF_TRANSP.SG_ESTADO SG_ESTAPLACVEICNOTAFISC, '+
      'PV.FL_STATPEDIVEND, FORN.FL_TRANAUTOFORN FL_TRANAUTOFORN, PARAMETRO.VL_PRECPADRTRANPARASIST VL_PRECPADRTRANPARASIST, '+
      'PARAMETRO.PC_IMPOFRETAUTOPARASIST PC_IMPOFRETAUTOPARASIST, '+

      'DECODE(C.NR_CNPJCLIE, NULL, NULL, '+
      '        SUBSTR(C.NR_CNPJCLIE,1,2) || ''.'' || SUBSTR(C.NR_CNPJCLIE,3,3) || ''.'' || '+
      '        SUBSTR(C.NR_CNPJCLIE,6,3) || ''/'' || SUBSTR(C.NR_CNPJCLIE,9,4) || ''-'' || '+
      '        SUBSTR(C.NR_CNPJCLIE,13,3)) NR_CNPJNOTAFISC, '+

      'CASE WHEN C.FL_PESSCLIE = ''J'' then C.NR_INSCESTACLIE '+
      '     WHEN C.FL_PESSCLIE = ''F'' then C.NR_INSCPRODCLIE '+
      '     END NR_IENOTAFISC, '+

      'DECODE(NVL(PV.PC_DESCPEDIVEND,0), 0, '' . '', '+
      '        ''DESCONTO (''|| TO_CHAR(PC_DESCPEDIVEND, ''999,990.00'') || ''%):... R$ '' ) GN_OBSEDESCNOTAFISC, '+

      'DECODE(FORN.NR_CNPJFORN, NULL,NULL, '+
      '        SUBSTR(FORN.NR_CNPJFORN,1,2) || ''.'' || SUBSTR(FORN.NR_CNPJFORN,3,3) || ''.'' || '+
      '        SUBSTR(FORN.NR_CNPJFORN,6,3) || ''/'' || SUBSTR(FORN.NR_CNPJFORN,9,4) || ''-'' || '+
      '        SUBSTR(FORN.NR_CNPJFORN,13,3)) NR_CNPJTRANNOTAFISC '+

      'FROM PEDIDO_VENDA PV, CLIENTE C, BAIRRO B, PAIS PAIS, PEDIDO_VENDA_TIPO PVT, PEDIDO_VENDA_TIPO_DOCU_TIPO PV_DOC, DOCUMENTO_TIPO DOC, '+
      'DOCUMENTO_CLASSIFICACAO DOC_CLASS, TIPO_OPER_PEDI_VEND_TIPO PV_OPER, OPERACAO_TIPO OP, EXPEDICAO_CARGA CARGA, FORNECEDOR FORN, '+
      'TRANSPORTADOR_VEICULO TRANSP, CIDADE CID, ESTADO UF, SISTEMA_PARAMETRO PARAMETRO, CFOP CFOP, NOTA_FISCAL_SERIE NFS, LOGRADOURO_TIPO END_CLI, '+
      'LOGRADOURO_TIPO END_TRANSP, CIDADE CID_TRANSP, ESTADO UF_TRANSP, CLIENTE_ENDERECO END_ENTR, LOGRADOURO_TIPO LOG_TIPO, CIDADE CIDADE_ENTR, '+
      'ESTADO ESTADO_ENTR, BAIRRO BAIRRO_ENTR '+

      'WHERE (PV.ID_CLIENTE = C.ID_CLIENTE) AND (C.ID_BAIRRO = B.ID_BAIRRO) AND (B.ID_CIDADE = CID.ID_CIDADE) '+
      'AND (CID.ID_ESTADO = UF.ID_ESTADO) AND (UF.ID_PAIS = PAIS.ID_PAIS) AND (PV.ID_TIPOPEDIVEND = PVT.ID_TIPOPEDIVEND) '+
      'AND (PVT.ID_TIPOPEDIVEND = PV_DOC.ID_TIPOPEDIVEND) AND (PV_DOC.ID_TIPODOCU = DOC.ID_TIPODOCU) '+
      'AND (DOC.ID_CLASDOCU = DOC_CLASS.ID_CLASDOCU) AND (PVT.ID_TIPOPEDIVEND = PV_OPER.ID_TIPOPEDIVEND) '+
      'AND (PV_OPER.ID_TIPOOPER = OP.ID_TIPOOPER) AND (OP.ID_CFOP = CFOP.ID_CFOP) AND (DOC.ID_TIPODOCU = PARAMETRO.ID_TIPODOCU_NOTAFISC) '+
      'AND (PV.ID_CARGEXPE = CARGA.ID_CARGEXPE) AND (CARGA.ID_ITEMPROGCAMI = FORN.ID_FORNECEDOR) '+
      'AND (TRANSP.ID_FORNECEDOR_TRANSPORTADOR = FORN.ID_FORNECEDOR) AND (CARGA.GN_PLACVEICTRAN = TRANSP.GN_PLACVEICTRAN) '+
      'AND (PVT.ID_SERINOTAFISC = NFS.ID_SERINOTAFISC) AND (C.ID_TIPOLOGR = END_CLI.ID_TIPOLOGR) '+
      'AND (FORN.ID_TIPOLOGR = END_TRANSP.ID_TIPOLOGR) AND (FORN.ID_CIDADE = CID_TRANSP.ID_CIDADE) '+
      'AND (CID_TRANSP.ID_ESTADO = UF_TRANSP.ID_ESTADO) AND (C.ID_CLIENTE = END_ENTR.ID_CLIENTE) '+
      'AND (END_ENTR.ID_TIPOLOGR = LOG_TIPO.ID_TIPOLOGR) AND (END_ENTR.ID_BAIRRO = BAIRRO_ENTR.ID_BAIRRO) '+
      'AND (BAIRRO_ENTR.ID_CIDADE = CIDADE_ENTR.ID_CIDADE) AND (CIDADE_ENTR.ID_ESTADO = ESTADO_ENTR.ID_ESTADO) '+
      'AND (END_ENTR.FL_ENTRPADRENDECLIE = ''S'') AND (PV.ID_PEDIVEND = ' + IntToStr(pi_CodiPedi) + ')';

    qryPediVend.Open;

    If not qryPediVend.IsEmpty then
    begin
      //Percentual de desconto do pedido
      lr_PcDescNotaFisc:= qryPediVend.FieldByName('PC_DESCPEDIVEND').AsFloat;
      ls_TipoFrete :=  qryPediVend.FieldByName('FL_TIPOFRETNOTAFISC').AsString;

      li_idcliente := qryPediVend.FieldByName('ID_CLIENTE').AsFloat;
      Fl_ExibDesc := qryPediVend.FieldByName('fl_exibdescnf').AsString;

      //Cliente nao quer o Desconto na NF
      if (Fl_ExibDesc = 'N') then
        VOBSDESC := '  '
      else
        VOBSDESC := qryPediVend.FieldByName('GN_OBSEDESCNOTAFISC').AsString;

      filtroAux := '''';

      if(gi_empresa in [66,67,68,69]) then
      begin
        filtroAux := '_' + IntToStr(gi_Filial) + '''';
      end;

      qryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Add('SELECT NM_CONTADOR, QN_ULTIVALOCONT FROM CONTADOR Contador WHERE Contador.NM_CONTADOR = '''+
                      'NR_NOTAFISC' + qryPediVend.FieldByName('SG_SERINOTAFISC_NOTAFISC').AsString + filtroAux);

      QryTemp.Open;

      li_NumeNotaSeri :=  QryTemp.FieldByname('QN_ULTIVALOCONT').AsINTEGER+1;

      QryTemp.Close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Text := 'SELECT Max(NR_NOTAFISC) AS NUMAX FROM NOTA_FISCAL WHERE sg_serinotafisc_notafisc = ''' +
                          qryPediVend.FieldByName('SG_SERINOTAFISC_NOTAFISC').AsSTRING + '''' + 'AND FILIAL = ' + IntToStr(gi_filial);

      QryTemp.Open;

      IF  li_NumeNotaSeri <> QryTemp.FieldByname('NUMAX').AsINTEGER+1 then
         MessageDlg('ATENÇÃO! O número da Nota '+IntToStr(QryTemp.FieldByname('NUMAX').AsINTEGER+1)+' pulou, verifique na hora da impressão. ',mtWarning, [mbOK], 0);

      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text:=
              ' UPDATE CONTADOR                 '+
              ' SET QN_ULTIVALOCONT = ' + INTTOSTR(li_NumeNotaSeri) +
              ' WHERE Contador.NM_CONTADOR = ''' +  'NR_NOTAFISC' + qryPediVend.FieldByName('SG_SERINOTAFISC_NOTAFISC').AsSTRING +
              filtroAux;

      try
        QryTemp.ExecSQL;
      except
        MessageDlg('Erro ao gravar próximo nº da nota fiscal. Verifique.', mtWarning, [mbOk], 0);

        qryPediVend.Close;
        qryNotaFisc.Close;
        // Damos o retorno
        Result := False;
        Exit;
      end;

      // Criamos a query da nota fiscal
      qryNotaFisc.Close;
      qryNotaFisc.SQL.Clear;
      qryNotaFisc.SQL.Text := 'INSERT INTO NOTA_FISCAL '+
                              '(EMPRESA, FILIAL, ID_NOTAFISC, NR_NOTAFISC, SG_SERINOTAFISC_NOTAFISC, '+
                              'FL_TIPONOTAFISC, DT_EMISNOTAFISC, DT_SAIDNOTAFISC, NR_CFOP_NOTAFISC, '+
                              'NM_NATUOPERNOTAFISC, ID_CLIENTE, NM_DESTREMENOTAFISC, GN_ENDENOTAFISC, '+
                              'FL_PESSNOTAFISC, NM_BAIRNOTAFISC, NR_CEPNOTAFISC, NM_CIDANOTAFISC, '+
                              'SG_ESTANOTAFISC, NM_PAISNOTAFISC, NR_FONENOTAFISC, NR_CNPJNOTAFISC, '+
                              'NR_IENOTAFISC, NR_RGNOTAFISC, NR_CPFNOTAFISC, VL_FRETNOTAFISC, '+
                              'VL_SEGUNOTAFISC, VL_OUTRDESPNOTAFISC, VL_DESCPEDIVEND_NOTAFISC, '+
                              'NM_TRANSPORTADOR_NOTAFISC, GN_PLACVEICNOTAFISC, NM_ENDETRANNOTAFISC, '+
                              'FL_PESSTRANNOTAFISC, NM_CIDATRANNOTAFISC, SG_ESTATRANNOTAFISC, '+
                              'NR_CNPJTRANNOTAFISC, NR_IETRANNOTAFISC, NR_RGTRANNOTAFISC, '+
                              'NR_CPFTRANNOTAFISC, GN_ENDEENTRNOTAFISC, NM_BAIRENTRNOTAFISC, '+
                              'NM_CIDAENTRNOTAFISC, SG_ESTAENTRNOTAFISC, GN_CEPENTRNOTAFISC, '+
                              'FL_TIPOFRETNOTAFISC, DT_PROCNOTAFISC, FL_ZONAFRANNOTAFISC, FL_IMPRNOTAFISC, '+
                              'FL_CANCNOTAFISC, FL_EXPONOTAFISC, SG_ESTAPLACVEICNOTAFISC, '+
                              'GN_ESPENOTAFISC, GN_OBSDESCNOTAFISC, FX_NOTAFISC) '+
                              'VALUES( ''' + gs_Empresa + ''', '+
                              '' + IntToStr(gi_Filial) + ', '+
                              'ID_NOTAFISC.NEXTVAL, '+
                              '' + IntToStr(li_NumeNotaSeri) + ', '+
                              '''' + qryPediVend.FieldByName('SG_SERINOTAFISC_NOTAFISC').AsString + ''',        '+
                              '''' + qryPediVend.FieldByName('FL_ENTRSAIDTIPOOPER').AsString + ''',             '+
                              'TO_DATE(''' + FormatDateTime('DD/MM/YYYY',qryPediVend.FieldByName('DT_FATUDOCU').AsDateTime) + ''',''DD/MM/YYYY''), '+
                              'TO_DATE(''' + FormatDateTime('DD/MM/YYYY',qryPediVend.FieldByName('DT_ENTRPEDIVEND').AsDateTime) + ''',''DD/MM/YYYY''), '+
                              '''' + qryPediVend.FieldByName('NR_CFOP_NOTAFISC').AsString + ''',                '+
                              '''' + TiraAcentos(qryPediVend.FieldByName('NM_NATUOPERNOTAFISC').AsString) + ''', '+
                              '' + qryPediVend.FieldByName('ID_CLIENTE').AsString + ',                          '+
                              '''' + TiraAcentos(qryPediVend.FieldByName('NM_DESTREMENOTAFISC').AsString) + ''', '+
                              '''' + TiraAcentos(qryPediVend.FieldByName('GN_ENDENOTAFISC').AsString) + ''',     '+
                              '''' + TiraAcentos(qryPediVend.FieldByName('FL_PESSNOTAFISC').AsString) + ''',     '+
                              '''' + TiraAcentos(qryPediVend.FieldByName('NM_BAIRNOTAFISC').AsString) + ''',     '+
                              '''' + TiraAcentos(qryPediVend.FieldByName('NR_CEPNOTAFISC').AsString) + ''',      '+
                              '' + QuotedStr(TiraAcentos(qryPediVend.FieldByName('NM_CIDANOTAFISC').AsString)) + ',      '+
                              '''' + qryPediVend.FieldByName('SG_ESTANOTAFISC').AsString + ''',                 '+
                              '''' + TiraAcentos(qryPediVend.FieldByName('NM_PAISNOTAFISC').AsString) + ''',     '+
                              '''' + qryPediVend.FieldByName('NR_FONENOTAFISC').AsString + ''',                 '+
                              '''' + qryPediVend.FieldByName('NR_CNPJNOTAFISC').AsString + ''',                 '+
                              '''' + qryPediVend.FieldByName('NR_IENOTAFISC').AsString + ''',                   '+
                              '''' + qryPediVend.FieldByName('NR_RGNOTAFISC').AsString + ''',                   '+
                              '''' + qryPediVend.FieldByName('NR_CPFNOTAFISC').AsString + ''',                  '+
                              '' + ReplaceStr(FloatToStr(qryPediVend.FieldByName('VL_FRETNOTAFISC').AsFloat),',','.') + ',       '+
                              '' + ReplaceStr(FloatToStr(qryPediVend.FieldByName('VL_SEGUNOTAFISC').AsFloat),',','.') + ',       '+
                              '' + ReplaceStr(FloatToStr(qryPediVend.FieldByName('VL_OUTRDESPNOTAFISC').AsFloat),',','.') + ',   '+
                              '' + ReplaceStr(FloatToStr(qryPediVend.FieldByName('VL_DESCPEDIVEND_NOTAFISC').AsFloat),',','.') + ', '+
                              '''' + TiraAcentos(qryPediVend.FieldByName('NM_TRANSPORTADOR_NOTAFISC').AsString) + ''',            '+
                              '''' + qryPediVend.FieldByName('GN_PLACVEICNOTAFISC').AsString + ''',             '+
                              '''' + TiraAcentos(qryPediVend.FieldByName('NM_ENDETRANNOTAFISC').AsString) + ''', '+
                              '''' + qryPediVend.FieldByName('FL_PESSTRANNOTAFISC').AsString + ''',             '+
                              '' + QuotedStr(TiraAcentos(qryPediVend.FieldByName('NM_CIDATRANNOTAFISC').AsString)) + ',      '+
                              '''' + qryPediVend.FieldByName('SG_ESTATRANNOTAFISC').AsString + ''',             '+
                              '''' + qryPediVend.FieldByName('NR_CNPJTRANNOTAFISC').AsString + ''',             '+
                              '''' + qryPediVend.FieldByName('NR_IETRANNOTAFISC').AsString + ''',               '+
                              '''' + qryPediVend.FieldByName('NR_RGTRANNOTAFISC').AsString + ''',               '+
                              '''' + qryPediVend.FieldByName('NR_CPFTRANNOTAFISC').AsString + ''',              '+
                              '''' + TiraAcentos(qryPediVend.FieldByName('GN_ENDEENTRNOTAFISC').AsString) + ''', '+
                              '''' + TiraAcentos(qryPediVend.FieldByName('NM_BAIRENTRNOTAFISC').AsString) + ''', '+
                              '' + QuotedStr(TiraAcentos(qryPediVend.FieldByName('NM_CIDAENTRNOTAFISC').AsString)) + ',      '+
                              '''' + qryPediVend.FieldByName('SG_ESTAENTRNOTAFISC').AsString + ''',             '+
                              '''' + qryPediVend.FieldByName('GN_CEPENTRNOTAFISC').AsString + ''',              '+
                              '''' + qryPediVend.FieldByName('FL_TIPOFRETNOTAFISC').AsString + ''',             '+
                              'TO_DATE(''' + FormatDateTime('DD/MM/YYYY', ld_DataHora) + ''', ''DD/MM/YYYY''),  '+
                              '''' + qryPediVend.FieldByName('FL_ZONAFRANNOTAFISC').AsString + ''',             '+
                              '''N'',                                                                           '+
                              '''N'',                                                                           '+
                              '''N'',                                                                           '+
                              '''' + qryPediVend.FieldByName('SG_ESTAPLACVEICNOTAFISC').AsString + ''',         '+
                              '''Granel'',                                                                 '+
                              '''' + VOBSDESC + ''',             '+
                              '''S'')                                                                           ';

      try
        qryNotaFisc.ExecSQL;
      except
        MessageDlg('Erro ao gerar nota fiscal. Verifique.', mtWarning, [mbOk], 0);

        qryPediVend.Close;
        qryNotaFisc.Close;
        Result := False;
        Exit;
      end;

      qryNotaFisc.Close;
      qryNotaFisc.SQL.Clear;
      qryNotaFisc.SQL.Text :=
                     ' SELECT               '+
                     '         EMPRESA,     '+
                     '         FILIAL,      '+
                     '         ID_NOTAFISC, '+
                     '         NR_NOTAFISC  '+
                     '   FROM  NOTA_FISCAL  '+
                     '  WHERE  EMPRESA= ''' + gs_Empresa + ''' AND     '+
                     '         FILIAL= ' + IntToStr(gi_Filial) + ' AND '+
                     '         NR_NOTAFISC=' + IntToStr(li_NumeNotaSeri) + ' AND ' +
                     '         sg_serinotafisc_notafisc = ''' + qryPediVend.FieldByName('SG_SERINOTAFISC_NOTAFISC').AsString + '''' +
                     '   Order By ID_NOTAFISC Desc ';

      qryNotaFisc.OPEN;
      li_NumeNota := qryNotaFisc.FieldByName('ID_NOTAFISC').AsInteger;
      ls_StatPediVend := qryPediVend.FieldByName('FL_STATPEDIVEND').AsString;
      ur_ValoFreteAuto := qryPediVend.FieldByName('VL_PRECPADRTRANPARASIST').AsFloat;
      ur_PercImpFretAuto := qryPediVend.FieldByName('PC_IMPOFRETAUTOPARASIST').AsFloat;

      // Flag Frete autonomo
      If qryPediVend.FieldByName('FL_TRANAUTOFORN').AsString = 'S'  then
        lb_TranAuto:= True
      Else
        lb_TranAuto:= False;

      qryPediVend.Close;
      qryNotaFisc.Close;

      us_MensErro := 'Obtenção dos Dados para os Itens da Nota Fiscal.';

      qryPediVendItem.Close;
      qryPediVendItem.SQL.Clear;
      qryPediVendItem.SQL.Text :=
                      'SELECT PI.ID_MATEEMBA, PI.EMPRESA, PI.FILIAL, PI.ID_ITEMPEDIVEND, PI.ID_PEDIVEND, PI.ID_MATERIAL, PI.ID_EMBALAGEM, PI.ID_TIPOOPER, '+
                      'PI.VL_UNITITEMPEDIVEND, PI.QN_EMBAITEMPEDIVEND, PI.QN_PESOITEMPEDIVEND, PI.QN_TARAITEMPEDIVEND, PI.QN_EMBAEXPEITEMPEDIVEND, '+
                      'PI.QN_PESOPADREXPEITEMPEDIVEND, ME.QN_SITUTRIB, ME.NM_EMBASEC, PI.VL_BASEICMS, PV.FL_NFCOMPLEMENTAR , PI.QN_TARAREALEXPEITEMPEDIVEND, '+
                      'PI.QN_PESOREALEXPEITEMPEDIVEND, PI.QN_CAIXCORTITEMPEDIVEND, PI.FX_ITEMPEDIVEND, PI.FL_IPIBASEICMS, PI.VL_UNITIPI, ME.ID_PRODMATEEMBA, ME.NM_PRODMATEEMBA, '+
                      'NVL(PI.VL_UNITBRUTITEMPEDIVEND, PI.VL_UNITITEMPEDIVEND) VL_UNITBRUTITEMPEDIVEND, ME.QN_CAPAPADRUNIDMATEEMBA, UN.SG_UNIDMEDI, '+
                      'CLF.ID_CLASFISC, CLF.NM_CLASFISC, CLF.NR_CLASFISC, ME_CLF.PC_IPICLASFISC, UF.PC_ICMSCONTESTA, CFOP.NR_CFOP, ';

                      if QImpDocPedFL_VALIDA_SIMPLES_NAC.AsString = 'S' then
                        qryPediVendItem.SQL.Text := qryPediVendItem.SQL.Text +
                        'CASE WHEN CL.OP_SIMPLES_NACIONAL = ''S'' then '+
                        '    ''00'' '+
                        'ELSE '+
                        '    NVL( ME.FL_SITUTRIBICMS, OPER.FL_SITUTRIBICMS) '+
                        'END FL_SITUTRIBICMS, '
                      else
                        qryPediVendItem.SQL.Text := qryPediVendItem.SQL.Text + 'NVL( ME.FL_SITUTRIBICMS, OPER.FL_SITUTRIBICMS) FL_SITUTRIBICMS, ' ;

                      qryPediVendItem.SQL.Text := qryPediVendItem.SQL.Text +
                      'ME.FL_SITUTRIBICMS SITUTRIB_MATEEMBA, OPER.NR_SITUTRIBIPI, '+
                      'OPER.FL_ISSTIPOOPER, OPER.FL_IPIBASEICMSTIPOOPER, OPER.NM_DESCNOTAFISCTIPOOPER, OPER.FL_CONDCPRTIPOOPER, OPER.FL_CPRTIPOOPER, '+
                      'OPER.ID_INTETIPOOPER, M.ID_ORIGMATE, EMBALAGEM.NM_EMBALAGEM, EMBALAGEM_TIPO.NM_TIPOEMBA, ME.NR_CFOP AS MATERIAL_CFOP, PI.SG_ORDEMCOMPRA, '+
                      'PI.QN_ITEMORDEMCOMPRA, PI.VL_UNITICMS, CFOP.FIN_NFE, PI.VL_OUTRASDESP, PI.VL_DESCITEM, '+

                      'CASE WHEN NVL(ME.QN_PESOVOLUMETRANSP,0) > 0 then '+
                      '    ME.QN_PESOVOLUMETRANSP * PI.QN_EMBAITEMPEDIVEND '+
                      'ELSE '+
                      '    0 END QN_PESOTRANSP, '+

                      '(CASE WHEN NVL(PI.QN_EMBAEXPEITEMPEDIVEND,0) = 0 then '+
                      '    (PI.QN_EMBAITEMPEDIVEND*ME.QN_TARAEMBAPROD_BALANCAO) '+
                      ' ELSE '+
                      '    (PI.QN_EMBAEXPEITEMPEDIVEND*ME.QN_TARAEMBAPROD_BALANCAO) END) AS TARA, '+

                      '(SELECT PC_ICMSMATEESTA '+
                      ' FROM MATERIAL_ESTADO_ICMS ME '+
                      ' WHERE ME.ID_ESTADO = UF.ID_ESTADO AND ME.ID_MATERIAL = PI.ID_MATERIAL) PC_ICMSMATEESTA, '+

                      {'(SELECT '+
                      '    CASE WHEN (CL.FL_PESSCLIE = ''F'') OR (CFOP.NR_CFOP = 5929) OR ( CL.FL_PESSCLIE = ''J'' AND CL.FL_CONTICMSCLIE = ''N'' ) then PC_REDUICMSVAREJO '+
                      '    ELSE PC_REDUICMSMATEESTA '+
                      '    END PC_REDUICMSMATEESTA '+
                      ' FROM MATERIAL_ESTADO_ICMS ME '+
                      ' WHERE ME.ID_ESTADO = UF.ID_ESTADO AND ME.ID_MATERIAL = PI.ID_MATERIAL) AS PC_REDUICMSMATEESTA, '+}

                      '(SELECT '+
                      '    CASE WHEN (CL.FL_PESSCLIE = ''F'') OR (CFOP.NR_CFOP = 5929) OR ( CL.FL_PESSCLIE = ''J'' AND CL.FL_CONTICMSCLIE = ''N'' ) then '+
                      '        PC_REDUICMSVAREJO '+
                      '    ELSE ';

                      if QImpDocPedFL_VALIDA_SIMPLES_NAC.AsString = 'S' then
                        qryPediVendItem.SQL.Text := qryPediVendItem.SQL.Text +
                        '        CASE WHEN (CL.OP_SIMPLES_NACIONAL) = ''S'' then '+
                        '            0 '+
                        '        ELSE '+
                        '           PC_REDUICMSMATEESTA '+
                        '        END '
                      else
                        qryPediVendItem.SQL.Text := qryPediVendItem.SQL.Text + ' PC_REDUICMSMATEESTA ';

                      qryPediVendItem.SQL.Text := qryPediVendItem.SQL.Text +
                      '    END PC_REDUICMSMATEESTA '+
                      ' FROM MATERIAL_ESTADO_ICMS ME '+
                      ' WHERE ME.ID_ESTADO = UF.ID_ESTADO AND ME.ID_MATERIAL = PI.ID_MATERIAL) AS PC_REDUICMSMATEESTA, '+


                      '(SELECT PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU '+
                      ' FROM PEDIDO_VENDA_TIPO_DOCU_TIPO PEDIDO_VENDA_TIPO_DOCU_TIPO '+
                      ' WHERE PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPOPEDIVEND = PV.ID_TIPOPEDIVEND AND PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU = 10 ) TIPODOCU '+

                      'FROM PEDIDO_VENDA_ITEM PI, CLASSIFICACAO_FISCAL CLF, ESTADO UF, MATERIAL M, MATERIAL_EMBALAGEM ME, UNIDADE_MEDIDA UN, OPERACAO_TIPO OPER, '+
                      'CFOP, BAIRRO, PEDIDO_VENDA PV, CLIENTE CL, CIDADE CIDADE, CLIENTE_ENDERECO LOGR, MATEEMBACLASSFISCAL ME_CLF, EMBALAGEM, EMBALAGEM_TIPO '+

                      'WHERE (PI.ID_MATEEMBA = ME.ID_MATEEMBA) AND (PI.ID_TIPOOPER = OPER.ID_TIPOOPER) '+
                      'AND (ME.ID_PRODMATEEMBA = ME_CLF.ID_PRODMATEEMBA(+)) AND (ME.ID_MATERIAL = M.ID_MATERIAL) '+
                      'AND (ME.ID_EMBALAGEM = EMBALAGEM.ID_EMBALAGEM) AND (EMBALAGEM.ID_TIPOEMBA = EMBALAGEM_TIPO.ID_TIPOEMBA) '+
                      'AND (M.ID_UNIDMEDI = UN.ID_UNIDMEDI) AND (M.ID_CLASFISC = CLF.ID_CLASFISC (+)) AND (OPER.ID_CFOP = CFOP.ID_CFOP) '+
                      'AND (PI.ID_PEDIVEND = PV.ID_PEDIVEND) AND (BAIRRO.ID_CIDADE = CIDADE.ID_CIDADE) '+
                      'AND (CIDADE.ID_ESTADO = UF.ID_ESTADO) AND (PV.ID_CLIENTE = CL.ID_CLIENTE) '+
                      'AND (PV.ID_ENDECLIE_ENTREGA = LOGR.ID_ENDECLIE) AND (LOGR.ID_BAIRRO = BAIRRO.ID_BAIRRO) '+
                      'AND (PV.ID_PEDIVEND = ' + IntToStr(pi_CodiPedi) + ')';

      qryPediVendItem.Open;

      if qryPediVendItem.FieldByName('qn_capapadrunidmateemba').AsFloat >0 then
      begin
        lr_palet:= qryPediVendItem.FieldByName('qn_capapadrunidmateemba').AsFloat;
        VNM_TIPOEMBA := qryPediVendItem.FieldByName('nm_embasec').AsString;
      end
      else
      begin
        VNM_TIPOEMBA := qryPediVendItem.FieldByName('NM_EMBALAGEM').AsString;
      end;

      // Criamos as listas para os valores
      sltPercIcms := TStringList.Create;
      sltBaseICMS := TStringList.Create;
      sltValoICMS := TStringList.Create;
      sltIsenICMS := TStringList.Create;
      sltOutrICMS := TStringList.Create;

      // Populamos a matriz de Situação Tributária
      la_SituTrib[0] := '00';
      la_SituTrib[1] := '10';
      la_SituTrib[2] := '20';
      la_SituTrib[3] := '30';
      la_SituTrib[4] := '40';
      la_SituTrib[5] := '41';
      la_SituTrib[6] := '50';
      la_SituTrib[7] := '51';
      la_SituTrib[8] := '60';
      la_SituTrib[9] := '70';
      la_SituTrib[10] := '90';

      la_DescSituTrib[0]  := 'Tributada integralmente';
      la_DescSituTrib[1]  := 'Trib. cobrança ICMS por subst. trib.';
      la_DescSituTrib[2]  := 'Com redução de base de cálculo';
      la_DescSituTrib[3]  := 'Isenta ou não trib. cobr.ICMS s/trib.';
      la_DescSituTrib[4]  := 'Isenta';
      la_DescSituTrib[5]  := 'Não tributada';
      la_DescSituTrib[6]  := 'Suspensão';
      la_DescSituTrib[7]  := 'Diferimento';
      la_DescSituTrib[8]  := 'ICMS cobrado anteriormente sub. trib.';
      la_DescSituTrib[9]  := 'Red. B.C. cobr.ICMS por sub. trib.';
      la_DescSituTrib[10] := 'Outras';

      // Criamos a query para os itens da nota
      qryNotaFiscItem.Close;
      qryNotaFiscItem.SQL.Clear;

      // Iniciamos as variaveis
      lr_ValoIPI  := 0;
      lr_ValoItem := 0;
      lr_ValoBrutItem := 0;
      lr_ValoICMS := 0;
      lr_ValoNota := 0;
      lr_PercICMS := 0;
      lr_BaseICMS := 0;
      lr_TotaItem := 0;
      lr_TotaBrutItem := 0;
      lr_BaseRedu := 0;
      lr_IsenICMS := 0;
      lr_OutrICMS := 0;
      lr_TotaIPI  := 0;
      lr_IsenIPI  := 0;
      lr_OutrIPI  := 0;
      lr_BaseIPI  := 0;
      lr_Volumes  := 0;
      lr_PesoBrut := 0;
      lr_PesoLiqu := 0;
      lr_BaseIcmsItem := 0;
      lr_ValoIcmsItem := 0;
      lr_IsenIcmsItem := 0;
      lr_OutrIcmsItem := 0;
      vl_uniticms     := 0;
      vl_OutDesp      := 0;
      vl_DescItem     := 0;
      lr_DescItem     := 0;
      lr_OutDesp      := 0;
      lr_BaseICMSComplem := 0;

      qryPediVendItem.First;

      while not qryPediVendItem.Eof do
      begin
        if (ls_StatPediVend = 'EX') or (ls_StatPediVend = 'FE') then
        begin
          if qryPediVendItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsInteger = 0 then
          begin
            qryPediVendItem.Next;
            Continue;
          end;
        end;

        // Calculamos o valor total do item
        If  qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat > 0 then
           lr_ValoItem := StrToFloat(FormatFloat('#.00',  ArredondaDecimal(( qryPediVendItem.FieldByName('VL_UNITITEMPEDIVEND').AsFloat *  qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat),2)))
        Else
           lr_ValoItem := StrToFloat(FormatFloat('#.00', ArredondaDecimal((qryPediVendItem.FieldByName('VL_UNITITEMPEDIVEND').AsFloat * qryPediVendItem.FieldByName('QN_PESOITEMPEDIVEND').AsFloat),2)));

        // Calculamos o valor total bruto do item (sem desconto)
        If qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat > 0 then
           lr_ValoBrutItem := StrToFloat(FormatFloat('#.00',ArredondaDecimal((qryPediVendItem.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsFloat * qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat),2)))
        Else
           lr_ValoBrutItem := StrToFloat(FormatFloat('#.00',ArredondaDecimal((qryPediVendItem.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsFloat * qryPediVendItem.FieldByName('QN_PESOITEMPEDIVEND').AsFloat),2)));

        // Complemento Base ICMS
        lr_BaseICMSComplem := qryPediVendItem.FieldByName('VL_BASEICMS').AsFloat;

       // Acumulamos o valor do item
        lr_TotaItem := lr_TotaItem + lr_ValoItem;

       // Acumulamos o valor do item
        lr_TotaBrutItem := lr_TotaBrutItem + lr_ValoBrutItem;

        // exe. 6501 fora do estado
        QryTemp.Close;
        QryTemp.SQL.Clear;
        QryTemp.SQL.Text := 'SELECT FL_IMPRTIPOPEDIVENDTIPODOCU                                                                            '+
                            '  FROM PEDIDO_VENDA_TIPO_DOCU_TIPO Pedido_venda_tipo_docu_tipo,                                               '+
                            '       Pedido_venda                                                                                           '+
                            ' WHERE                                                                                                        '+
                            '      Pedido_venda.ID_TIPOPEDIVEND = Pedido_venda_tipo_docu_tipo.ID_TIPOPEDIVEND                              '+
                            ' AND (Pedido_venda.ID_PEDIVEND = ' + IntToStr(pi_CodiPedi) + ')                                               '+
                            ' AND  Pedido_venda_tipo_docu_tipo.ID_TIPODOCU = 8 ';
        QryTemp.Open;
        if not QryTemp.IsEmpty then
        begin
          lr_PercICMS := 0 ;
          vtipodocu := 8;
        end
        else
        begin
          //Se o Valor do
          if (qryPediVendItem.FieldByName('PC_ICMSMATEESTA').AsString ='0') then
             lr_PercICMS := 0
          else
          begin
            // Pegamos o percentual do ICMS para o item
            If qryPediVendItem.FieldByName('PC_ICMSMATEESTA').AsFloat > 0 then
              lr_PercICMS := qryPediVendItem.FieldByName('PC_ICMSMATEESTA').AsFloat
            Else
              lr_PercICMS := qryPediVendItem.FieldByName('PC_ICMSCONTESTA').AsFloat;
          end;
        end;

        if (qryPediVendItem.FieldByName('vl_unitipi').AsFloat) >0 then
        begin
          // Calculamos o valor do IPI do Item
          lr_ValoIPI := StrToFloat(FormatFloat('#.00',(lr_ValoItem * qryPediVendItem.FieldByName('vl_unitipi').AsFloat / 100)));
          // Acumulamos o total do IPI
          lr_TotaIPI := lr_TotaIPI + StrToFloat(FormatFloat('#.00',lr_ValoIPI));
          // Acumulamos a base do IPI
          lr_BaseIPI := lr_BaseIPI + lr_ValoItem;
        end
        else
        begin
          lr_IsenIPI := lr_IsenIPI + lr_ValoItem;
        end;

        // Verificamos a situação tributária do ICMS do item
        if (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '50') then
        begin
          // Calculamos o valor da base reduzida
          if  (lr_PercICMS = 0) then
            lr_BaseRedu := 0
          else
          begin
            //Se o cliente calcula vl item sem desconto
            if (Fl_ExibDesc = 'N') then
              lr_BaseRedu := StrToFloat(FormatFloat('#.00',(lr_ValoBrutItem * (100 - qryPediVendItem.FieldByName('PC_REDUICMSMATEESTA').AsFloat) / 100 )))
            else
              lr_BaseRedu := StrToFloat(FormatFloat('#.00',(lr_ValoItem * (100 - qryPediVendItem.FieldByName('PC_REDUICMSMATEESTA').AsFloat) / 100 )));
          end;

          // Se for lançamento de crédito de ativo
          if ( qryPediVendItem.FieldByName('ID_INTETIPOOPER').AsString = '1604') OR
             ( qryPediVendItem.FieldByName('FL_NFCOMPLEMENTAR').AsString = 'I' ) then
          begin
               vl_uniticms := qryPediVendItem.FieldByName('vl_uniticms').AsFloat;
               lr_ValoICMS     := lr_ValoICMS + vl_uniticms ;
               lr_ValoIcmsItem := vl_uniticms ;
          end  // Se o IPI fizer parte da base do ICMS
          else if qryPediVendItem.FieldByName('FL_IPIBASEICMS').AsString = 'S' then
          begin
            // Calculamos o valor do imposto
            lr_ValoICMS := lr_ValoICMS + StrToFloat(FormatFloat('#.00',((lr_BaseRedu + lr_ValoIPI) * lr_PercICMS / 100)));
            lr_ValoIcmsItem := StrToFloat(FormatFloat('#.00',((lr_BaseRedu + lr_ValoIPI) * lr_PercICMS / 100)));
          end
          // Se não fizer parte
          else
          begin
            // Calculamos o valor do imposto
            lr_ValoICMS := lr_ValoICMS + StrToFloat(FormatFloat('#.00',((lr_BaseRedu * lr_PercICMS) / 100)));
            lr_ValoIcmsItem := StrToFloat(FormatFloat('#.00',((lr_BaseRedu * lr_PercICMS) / 100)));
          end;

          if ( qryPediVendItem.FieldByName('FL_NFCOMPLEMENTAR').AsString = 'I' ) then
          begin
               lr_BaseIcmsItem :=  StrToFloat( FormatFloat('#.00',lr_BaseICMSComplem ));
               lr_BaseICMS := lr_BaseICMS + lr_BaseIcmsItem ;
          end
          else
          // Acumulamos a base do Icms
          if qryPediVendItem.FieldByName('FL_IPIBASEICMS').AsString = 'S' then
          begin
            lr_BaseICMS := lr_BaseICMS + StrToFloat(FormatFloat('#.00',(lr_BaseRedu + lr_ValoIPI)));
            lr_BaseIcmsItem := StrToFloat(FormatFloat('#.00',(lr_BaseRedu + lr_ValoIPI)));
          end
          Else
          begin
            lr_BaseICMS := StrToFloat(FormatFloat('#.00',(lr_BaseICMS + lr_BaseRedu)));
            lr_BaseIcmsItem := StrToFloat(FormatFloat('#.00',lr_BaseRedu));
          end;

          // Acumulamos a base Outras
          // se o cliente for  sem desconto
          if (Fl_ExibDesc = 'N') then
          begin
            lr_OutrICMS := lr_OutrICMS + StrToFloat(FormatFloat('#.00',(lr_ValoBrutItem - lr_BaseRedu)));
            lr_OutrIcmsItem := StrToFloat(FormatFloat('#.00',(lr_ValoBrutItem - lr_BaseRedu)));
          end
          else
          begin
            lr_OutrICMS := lr_OutrICMS + StrToFloat(FormatFloat('#.00',(lr_ValoItem - lr_BaseRedu)));
            lr_OutrIcmsItem := StrToFloat(FormatFloat('#.00',(lr_ValoItem - lr_BaseRedu)));
          end;
        end
        // Se for Isento ou Não tributado
        else if (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '40') or
                (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '41') or
                (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '20') or
                (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '51') or
                (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '00') then
        begin

          // Calculamos o valor da base reduzida
          if  (lr_PercICMS = 0) then
            lr_BaseRedu := 0
          else
          begin
            // se o cliente for sem desconto
            if (Fl_ExibDesc = 'N') then
              lr_BaseRedu := StrToFloat(FormatFloat('#.00',(lr_ValoBrutItem * (100 - qryPediVendItem.FieldByName('PC_REDUICMSMATEESTA').AsFloat) / 100 )))
            else
              lr_BaseRedu := StrToFloat(FormatFloat('#.00',(lr_ValoItem * (100 - qryPediVendItem.FieldByName('PC_REDUICMSMATEESTA').AsFloat) / 100 )));
          end;

          // Se for lançamento de crédito de ativo
          if ( qryPediVendItem.FieldByName('ID_INTETIPOOPER').AsString = '1604') OR
             ( qryPediVendItem.FieldByName('FL_NFCOMPLEMENTAR').AsString = 'I' ) then
          begin
               vl_uniticms     := qryPediVendItem.FieldByName('vl_uniticms').AsFloat;
               lr_ValoICMS     := lr_ValoICMS + vl_uniticms ;
               lr_ValoIcmsItem := vl_uniticms ;
          end
          // Se o IPI fizer parte da base do ICMS
          else if qryPediVendItem.FieldByName('FL_IPIBASEICMS').AsString = 'S' then
          begin
            // Calculamos o valor do imposto
            lr_ValoICMS := StrToFloat(FormatFloat('#.00',(lr_ValoICMS + ((lr_BaseRedu + lr_ValoIPI) * lr_PercICMS / 100))));
            lr_ValoIcmsItem := StrToFloat(FormatFloat('#.00',((lr_BaseRedu + lr_ValoIPI) * lr_PercICMS / 100)));
          end
          // Se não fizer parte
          else
          begin
            // Calculamos o valor do imposto
            lr_ValoICMS := StrToFloat(FormatFloat('#.00',(lr_ValoICMS + ((lr_BaseRedu * lr_PercICMS) / 100))));
            lr_ValoIcmsItem := StrToFloat(FormatFloat('#.00',((lr_BaseRedu * lr_PercICMS) / 100)));
          end;

          if ( qryPediVendItem.FieldByName('FL_NFCOMPLEMENTAR').AsString = 'I' ) then
          begin
               lr_BaseIcmsItem :=  StrToFloat( FormatFloat('#.00',lr_BaseICMSComplem ));
               lr_BaseICMS := lr_BaseICMS + lr_BaseIcmsItem ;
          end
          else
          // Acumulamos a base do Icms
          if qryPediVendItem.FieldByName('FL_IPIBASEICMS').AsString = 'S' then
          begin
            lr_BaseICMS := lr_BaseICMS + StrToFloat(FormatFloat('#.00',(lr_BaseRedu + lr_ValoIPI)));
            lr_BaseIcmsItem := StrToFloat(FormatFloat('#.00',(lr_BaseRedu + lr_ValoIPI)));
          end
          Else
          begin
            lr_BaseICMS := StrToFloat(FormatFloat('#.00',(lr_BaseICMS + lr_BaseRedu)));
            lr_BaseIcmsItem := StrToFloat(FormatFloat('#.00',lr_BaseRedu));
          end;
        // até aqui - alteração 29/01/2007
          // se o cliente for sem desconto
          if (Fl_ExibDesc = 'N') then
          begin
            lr_IsenICMS := StrToFloat(FormatFloat('#.00',(lr_IsenICMS + (lr_ValoBrutItem-lr_BaseIcmsItem))));
            lr_IsenIcmsItem := StrToFloat(FormatFloat('#.00',(lr_ValoBrutItem-lr_BaseIcmsItem)));
          end
          else
          begin
            lr_IsenICMS := StrToFloat(FormatFloat('#.00',(lr_IsenICMS + (lr_ValoItem-lr_BaseIcmsItem))));
            lr_IsenIcmsItem := StrToFloat(FormatFloat('#.00',(lr_ValoItem-lr_BaseIcmsItem)));
          end;
        end
        // Se for os demais tipos
        else
        begin
          // se o cliente nao exibe desconto
          if (Fl_ExibDesc = 'N') then
          begin
            lr_OutrICMS := StrToFloat(FormatFloat('#.00',(lr_OutrICMS + lr_ValoBrutItem)));
            lr_OutrIcmsItem := StrToFloat(FormatFloat('#.00',lr_ValoBrutItem));
          end
          else
          begin
            lr_OutrICMS := StrToFloat(FormatFloat('#.00',(lr_OutrICMS + lr_ValoItem)));
            lr_OutrIcmsItem := StrToFloat(FormatFloat('#.00',lr_ValoItem));
          end;
        end;

        //Se for devolucao
        //if ( qryPediVendItem.FieldByName('FIN_NFE').AsString = '4') then
        //begin
         if ( qryPediVendItem.FieldByName('vl_DescItem').AsFloat > 0 ) then
         begin
              vl_DescItem :=  qryPediVendItem.FieldByName('vl_DescItem').AsFloat;
              lr_DescItem :=  lr_DescItem + vl_DescItem ;
         end;

         if ( qryPediVendItem.FieldByName('VL_OutrasDesp').AsFloat > 0 ) then
         begin
              vl_OutDesp  :=  qryPediVendItem.FieldByName('VL_OutrasDesp').AsFloat;
              lr_OutDesp   :=  lr_OutDesp + vl_OutDesp;
         end;

        //end;

        // Pegamos a posição na lista de aliquotas
        // Pesquisamos a situação tributária juntamente com a alíquota de icms
        li_Posicao := sltPercIcms.IndexOf(qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString + FloatToStr(lr_PercICMS));

        // Procuramos a aliquota do ICMS
        // Se não encontrarmos
        If  li_Posicao = -1 then
        begin
          // Adicionamos a lista
          sltPercIcms.Add(qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString + FloatToStr(lr_PercICMS));
          sltBaseICMS.Add(FloatToStr(lr_BaseIcmsItem));
          sltValoICMS.Add(FloatToStr(lr_ValoIcmsItem));
          sltIsenICMS.Add(FloatToStr(lr_IsenIcmsItem));
          sltOutrICMS.Add(FloatToStr(lr_OutrIcmsItem));
        end
        // Se encontrarmos
        else
        begin
          // Ajustamos o valor
          sltBaseICMS[li_Posicao] := FloatToStr(StrToFloat(sltBaseICMS[li_Posicao]) + lr_BaseIcmsItem);
          sltValoICMS[li_Posicao] := FloatToStr(StrToFloat(sltValoICMS[li_Posicao]) + lr_ValoIcmsItem);
          sltIsenICMS[li_Posicao] := FloatToStr(StrToFloat(sltIsenICMS[li_Posicao]) + lr_IsenIcmsItem);
          sltOutrICMS[li_Posicao] := FloatToStr(StrToFloat(sltOutrICMS[li_Posicao]) + lr_OutrIcmsItem);
        end;

        // Procuramos a descrição da Situação Tributária
        for li_Loop := 0 to 10 do
        begin
          // Verificamos a situação
          if la_SituTrib[li_Loop] = qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString then
          begin
            Break;
          end;
        end;

        // Adicionamos o item da Nota Fiscal
        qryNotaFiscItem.Close;
        qryNotaFiscItem.SQL.Clear;
        qryNotaFiscItem.SQL.Text := '  INSERT INTO NOTA_FISCAL_ITEM                                                      '+
                                    '            ( EMPRESA,                                                              '+
                                    '              FILIAL,                                                               '+
                                    '              ID_ITEMNOTAFISC,                                                      '+
                                    '              ID_NOTAFISC,                                                          '+
                                    '              ID_MATERIAL,                                                          '+
                                    '              ID_EMBALAGEM,                                                         '+
                                    '              ID_MATEEMBA,                                                          '+
                                    '              NM_MATERIAL_ITEMNOTAFISC,                                             '+
                                    '              NR_CLASFISC_ITEMNOTAFISC,                                             '+
                                    '              SG_UNIDMEDI_ITEMNOTAFISC,                                             '+
                                    '              QN_EMBAITEMNOTAFISC,                                                  '+
                                    '              QN_PESOITEMNOTAFISC,                                                  '+
                                    '              VL_UNITITEMNOTAFISC,                                                  '+
                                    '              VL_UNITBRUTITEMNOTAFISC,                                              '+
                                    '              PC_ICMSITEMNOTAFISC,                                                  '+
                                    '              vl_baseicmsitemnotafisc,                                              '+
                                    '              PC_REDUICMSITEMNOTAFISC,                                              '+
                                    '              PC_IPIITEMNOTAFISC,                                                   '+
                                    '              VL_IPIITEMNOTAFISC,                                                   '+
                                    '              VL_ICMSITEMNOTAFISC,                                                  '+
                                    '              FL_LEGECLASITEMNOTAFISC,                                              '+
                                    '              ID_PRODMATEEMBA_ITEMNOTAFISC,                                         '+
                                    '              VL_DESCICMSITEMNOTAFISC,                                              '+
                                    '              VL_ITEMNOTAFISC,                                                      '+
                                    '              VL_BRUTITEMNOTAFISC,                                                  '+
                                    '              FX_ITEMNOTAFISC,                                                      '+
                                    '              NR_CFOP_ITEMNOTAFISC,                                                 '+
                                    '              NM_NATUOPERCFOP_ITEMNF,                                               '+
                                    '              FL_SITUTRIBICMS_ITEMNOTAFISC,                                         '+
                                    '              vl_IsenIcmsItem,                                                      '+
                                    '              vl_OutrIcmsItem,                                                      '+
                                    '              NM_SITUTRIBICMSITEMNOTAFISC,                                          '+
                                    '              SG_ORDEMCOMPRA,                                                       '+
                                    '              QN_ITEMORDEMCOMPRA ,                                                  '+
                                    '              vl_uniticms ,                                                         '+
                                    '              vl_DescItem ,                                                         '+
                                    '              VL_OutrasDesp  )                                                      '+
                                    '  VALUES ( ''' + gs_Empresa + ''',                                                  '+
                                    '              ' + IntToStr(gi_Filial) + ',                                          '+
                                    '              ID_ITEMNOTAFISC.NextVal,                                              '+
                                    '              ' + IntToStr(li_NumeNota) + ',                                        '+
                                    '              ' + qryPediVendItem.FieldByName('ID_MATERIAL').AsString + ',          '+
                                    '              ' + qryPediVendItem.FieldByName('ID_EMBALAGEM').AsString + ',         '+
                                    '              ' + qryPediVendItem.FieldByName('ID_MATEEMBA').AsString + ',          '+
                                    '              :VNM_PRODMATEEMBA,  ';
                     if qryPediVendItem.FieldByName('NR_CLASFISC').AsString ='' then
                       qryNotaFiscItem.SQL.Add('              0, ')
                     else
                       qryNotaFiscItem.SQL.Add('    ''' + qryPediVendItem.FieldByName('NR_CLASFISC').AsString + ''',      ');


          qryNotaFiscItem.SQL.Add('              ''' + qryPediVendItem.FieldByName('SG_UNIDMEDI').AsString + ''',      ');

//  '              ''' + qryPediVendItem.FieldByName('NM_PRODMATEEMBA').AsString + ''',  '+

        // Ajustamos a quantidade em embalagens
        if  ( qryPediVendItem.FieldByName('FL_NFCOMPLEMENTAR').AsString = 'S' ) OR
            ( qryPediVendItem.FieldByName('FL_NFCOMPLEMENTAR').AsString = 'I' ) then
        begin
             qryNotaFiscItem.SQL.Add(' 0 , ');
        end
        else
        if  qryPediVendItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsFloat > 0 then
        begin
          qryNotaFiscItem.SQL.Add('              ' + ReplaceStr(qryPediVendItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsString,',', '.') + ', ');
        end
        Else
        begin
          qryNotaFiscItem.SQL.Add('              ' + ReplaceStr(qryPediVendItem.FieldByName('QN_EMBAITEMPEDIVEND').AsString,',', '.') + ', ');
        end;


        // Ajustamos a quantidade em peso
        if  ( qryPediVendItem.FieldByName('FL_NFCOMPLEMENTAR').AsString = 'S' ) OR
            ( qryPediVendItem.FieldByName('FL_NFCOMPLEMENTAR').AsString = 'I'  ) then
        begin
             qryNotaFiscItem.SQL.Add(' 0 , ');
        end
        else
        If qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat > 0 then
        begin
          qryNotaFiscItem.SQL.Add('              ' + ReplaceStr(qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsString,',', '.') + ', ');
        end
        else
        begin
          qryNotaFiscItem.SQL.Add('              ' + ReplaceStr(qryPediVendItem.FieldByName('QN_PESOITEMPEDIVEND').AsString,',', '.') + ', ');
        end;

        // Passamos o valor unitário
        qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                    '              ' + ReplaceStr(qryPediVendItem.FieldByName('VL_UNITITEMPEDIVEND').AsString, ',', '.') + ',     '+
                                    '              ' + ReplaceStr(qryPediVendItem.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsString, ',', '.') + ', ';

      //***  // Se for tributado integralmente pelo ICMS
        if qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '00' then
        begin
          // se o cliente sem desconto na NF

          if( qryPediVendItem.FieldByName('FL_NFCOMPLEMENTAR').AsString = 'I'  ) then
          begin
            qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                      '              ' + ReplaceStr(FloatToStr(lr_PercICMS), ',', '.') + ', ' +
                                      '              ' + ReplaceStr(FloatToStr(lr_BaseIcmsItem), ',', '.') + ', ' +
                                      '              0, ';

          end
          else
          if (Fl_ExibDesc = 'N') then
          begin
            qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                      '              ' + ReplaceStr(FloatToStr(lr_PercICMS), ',', '.') + ', ' +
                                      '              ' + ReplaceStr(FloatToStr(lr_ValoBrutItem), ',', '.') + ', ' +
                                      '              0, ';
          end
          else
          begin
            qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                      '              ' + ReplaceStr(FloatToStr(lr_PercICMS), ',', '.') + ', ' +
                                      '              ' + ReplaceStr(FloatToStr(lr_ValoItem), ',', '.') + ', ' +
                                      '              0, ';
          end;
          VSITUTRIBITEM:= 0;
        end
        // 29/01/2007 Se for tributado com redução da Base de Cálculo
        else if (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '20') or (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '50') or
                (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '40') or (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '41') then
        begin
          qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                      '              ' + ReplaceStr(FloatToStr(lr_PercICMS), ',', '.') + ', ' +
                                      '              ' + ReplaceStr(FloatToStr(lr_BaseIcmsItem), ',', '.') + ', ' +
                                      '              ' + ReplaceStr(FloatToStr(qryPediVendItem.FieldByName('PC_REDUICMSMATEESTA').AsFloat), ',', '.') + ', ';


          VSITUTRIBITEM:= qryPediVendItem.FieldByName('PC_REDUICMSMATEESTA').AsFloat;

        end
        // Se não for tributado
        else
        begin
          // se o cliente for sem desconto na NF
          if (Fl_ExibDesc = 'N') then
          begin
               if (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '51') then
                   qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                            '              0, ' +
                                            '              0, ' +
                                            '              0, '
               else
                   qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                            '              0, ' +
                                            '              ' + ReplaceStr(FloatToStr(lr_ValoBrutItem), ',', '.') + ', ' +
                                            '              0, ';
          end
          else
          begin
               if (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '51') then
                   qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                            '              0, ' +
                                            '              0, ' +
                                            '              0, '
               else
                  qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                          '              0, ' +
                                          '              ' + ReplaceStr(FloatToStr(lr_ValoItem), ',', '.') + ', ' +
                                          '              0, ';
          end;
          VSITUTRIBITEM:= 0;
        end;

        if (vtipodocu=8) then
           VSITUTRIBITEM:= 100;

        // Se for tributado pelo IPI
        if qryPediVendItem.FieldByName('VL_UNITIPI').AsFloat>0 then
        begin
          qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                      '              ' + ReplaceStr(qryPediVendItem.FieldByName('VL_UNITIPI').AsString, ',', '.') + ', ';
        end
        // Se não for tributado
        else
        begin
          qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                      '              0, ';
        end;

        // Ajustamos o restante do script
        qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                    '              ' + ReplaceStr(FloatToStr(lr_ValoIPI), ',', '.') + ',                       '+
                                    '              ' + ReplaceStr(FloatToStr(lr_ValoICMSitem), ',', '.') + ',                      '+
                                    '              ''' + qryPediVendItem.FieldByName('ID_CLASFISC').AsString + ''',             '+
                                    '              ''' + qryPediVendItem.FieldByName('ID_PRODMATEEMBA').AsString + ''',         '+
                                    '              0,                                                                           '+  // Desconto do Icms
                                    '              ' + ReplaceStr(FloatToStr(lr_ValoItem), ',', '.') + ',                      '+
                                    '              ' + ReplaceStr(FloatToStr(lr_ValoBrutItem), ',', '.') + ',                  '+
                                    '              ''S'',                                                                       ';

        //se no cadastro de material_embalagem o campo NR_CFOP tiver preenchido grava o que está na tabela, senão pega o CFOP padrão
        if not qryPediVendItem.FieldByName('MATERIAL_CFOP').IsNull and qryPediVendItem.FieldByName('TIPODOCU').Value = 10 then
          qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text + '              ''' + qryPediVendItem.FieldByName('MATERIAL_CFOP').AsString + ''',                 '
        else
          qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text + '              ''' + qryPediVendItem.FieldByName('NR_CFOP').AsString + ''',                 ';

        qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text + '              ''' + qryPediVendItem.FieldByName('NM_DESCNOTAFISCTIPOOPER').AsString + ''', ';
      //         base = vl total = 00
      //         base>0 e base < total    = 20
      //         base = 0 = 40
      //  7101 - 6501 = 50

       //correção pedida pelo Misael 05/03/2008  -  16/09/2009
       if( not qryPediVendItem.FieldByName('SITUTRIB_MATEEMBA').IsNull ) then
          qryNotaFiscItem.SQL.Add('              ''' + qryPediVendItem.FieldByName('ID_ORIGMATE').AsString+qryPediVendItem.FieldByName('SITUTRIB_MATEEMBA').AsString + ''',         ')
       else
       if not qryPediVendItem.FieldByName('MATERIAL_CFOP').IsNull and qryPediVendItem.FieldByName('TIPODOCU').Value = 10 then
          qryNotaFiscItem.SQL.Add('              ''' + qryPediVendItem.FieldByName('ID_ORIGMATE').AsString+'60' + ''',         ')
       else
          begin
            if (qryPediVendItem.FieldByName('NR_CFOP').AsString = '7101') or
               (qryPediVendItem.FieldByName('NR_CFOP').AsString = '6501') or
               (qryPediVendItem.FieldByName('QN_SITUTRIB').Value = '50') then
               begin
                  qryNotaFiscItem.SQL.Add('              ''' + qryPediVendItem.FieldByName('ID_ORIGMATE').AsString+'41' + ''',         '); //antes era 50 agora 41, pedido do Misael 23/02/2012
               end
               else
               if (qryPediVendItem.FieldByName('NR_CFOP').AsString = '1604') then  // Lançam de Crédito de Ativo
               begin
                  qryNotaFiscItem.SQL.Add('              ''' + qryPediVendItem.FieldByName('ID_ORIGMATE').AsString+'90' + ''',         ');
               end
            else
               //begin
                    if  (VSITUTRIBITEM=100) then
                      qryNotaFiscItem.SQL.Add('              ''' + qryPediVendItem.FieldByName('ID_ORIGMATE').AsString+'40' + ''',         ')
                    else if  (VSITUTRIBITEM=0) then
                      qryNotaFiscItem.SQL.Add('              ''' + qryPediVendItem.FieldByName('ID_ORIGMATE').AsString+'00' + ''',         ')
                    else
                      qryNotaFiscItem.SQL.Add('              ''' + qryPediVendItem.FieldByName('ID_ORIGMATE').AsString+'20' + ''',         ');
                  //              qryNotaFiscItem.SQL.Add('              ''' + qryPediVendItem.FieldByName('ID_ORIGMATE').AsString+qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString+ ''',         ');
               //end
          end;
             qryNotaFiscItem.SQL.Add('              ' + ReplaceStr(FloatToStr(lr_IsenIcmsItem), ',', '.') + ',                      ');
             qryNotaFiscItem.SQL.Add('              ' + ReplaceStr(FloatToStr(lr_OutrIcmsItem), ',', '.') + ',                      ');
             qryNotaFiscItem.SQL.Add('              ''' + la_DescSituTrib[li_Loop] + ''' '+ ',                                        ');
             qryNotaFiscItem.SQL.Add(QuotedStr(qryPediVendItem.FieldByName('SG_ORDEMCOMPRA').AsString)     + ',');
             qryNotaFiscItem.SQL.Add(QuotedStr(qryPediVendItem.FieldByName('QN_ITEMORDEMCOMPRA').AsString) + ',');
             qryNotaFiscItem.SQL.Add(  '  ' + ReplaceStr(FloatToStr( vl_uniticms ), ',', '.') +  ' ,');
             qryNotaFiscItem.SQL.Add(  '  ' + ReplaceStr(FloatToStr( vl_DescItem ), ',', '.') +  ' ,');
             qryNotaFiscItem.SQL.Add(  '  ' + ReplaceStr(FloatToStr( vl_OutDesp  ), ',', '.') +  ' ) ');

//                                                         qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString + ''',         ';

//                                    '              ''' + la_DescSituTrib[li_Loop] + ''')                                        ';

   (*                               '              ''' + qryPediVendItem.FieldByName('NR_CFOP').AsString + ''',                 '+
                                    '              ''' + qryPediVendItem.FieldByName('NM_DESCNOTAFISCTIPOOPER').AsString + ''', '+
                                    '              ''' + qryPediVendItem.FieldByName('ID_ORIGMATE').AsString + ''', ';
   *)


        qryNotaFiscItem.ParamByName('VNM_PRODMATEEMBA').AsString := qryPediVendItem.FieldByName('NM_PRODMATEEMBA').AsString;
        try
          //qryNotaFiscItem.SQL.SaveToFile('C:\NOTA_FISCAL_ITEM.TXT');
          qryNotaFiscItem.ExecSQL;
        except
          MessageDlg('Erro ao manipular itens da Nota Fiscal. Verifique.', mtWarning, [mbOk], 0);
          qryPediVendItem.Close;
          qryNotaFiscItem.Close;
          // Damos o retorno
          Result := False;
          Exit;
        end;

        // Acumulamos os totais para a nota
        if qryPediVendItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsInteger > 0 then
           lr_Volumes  := lr_Volumes + qryPediVendItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsInteger
        Else
           lr_Volumes  := lr_Volumes + qryPediVendItem.FieldByName('QN_EMBAITEMPEDIVEND').AsInteger;

 //*************** é aqui

        If qryPediVendItem.FieldByName('QN_PESOTRANSP').AsFloat > 0 then
        begin
             lr_PesoBrut := lr_PesoBrut + qryPediVendItem.FieldByName('QN_PESOTRANSP').AsFloat +
                                          qryPediVendItem.FieldByName('TARA').AsFloat;

        end
        else If qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat > 0 then
         begin
          lr_PesoBrut := lr_PesoBrut + qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat +
                                       qryPediVendItem.FieldByName('TARA').AsFloat;
//                                        qryPediVendItem.FieldByName('QN_TARAREALEXPEITEMPEDIVEND').AsFloat;
         end
        Else
         begin
          lr_PesoBrut := lr_PesoBrut +  qryPediVendItem.FieldByName('QN_PESOITEMPEDIVEND').AsFloat +
                                        qryPediVendItem.FieldByName('TARA').AsFloat;
//                                        qryPediVendItem.FieldByName('QN_TARAITEMPEDIVEND').AsFloat;
         end;

        If qryPediVendItem.FieldByName('QN_PESOTRANSP').AsFloat > 0 then
          lr_PesoLiqu := lr_PesoLiqu + qryPediVendItem.FieldByName('QN_PESOTRANSP').AsFloat
        else If qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat > 0 then
          lr_PesoLiqu := lr_PesoLiqu + qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat
        Else
          lr_PesoLiqu := lr_PesoLiqu + qryPediVendItem.FieldByName('QN_PESOITEMPEDIVEND').AsFloat;

        // Proximo registro
        qryPediVendItem.Next;
      end;

      // Acumulamos o valor da nota fiscal
      lr_ValoNota := StrToFloat(FormatFloat('#.00',(lr_TotaItem + lr_TotaIPI)));

      // Destruimos a query
      qryPediVendItem.Close;
      qryNotaFiscItem.Close;

    end
    // Se não encontramos os dados
    else
    begin

      MessageDlg('Pedido não disponível ou não encontrado. Verifique.', mtWarning, [mbOk], 0);

      qryPediVend.Close;
      // Damos o retorno
      Result := False;
      Exit;
    end;

    // Atualizamos as bases de icms da nota fiscal
    qryNotaFiscBaseIcms.Close;
    qryNotaFiscBaseIcms.SQL.Clear;

    For li_Loop := 0 to sltPercIcms.Count - 1 do
    begin
      qryNotaFiscBaseIcms.SQL.Text := 'INSERT INTO NOTA_FISCAL_BASE_ICMS                                                                     '+
                                      '  VALUES(''' + gs_Empresa                                  + ''',                                     '+
                                      '           ' + IntToStr(gi_Filial)                         + ',                                       '+
                                      '           ID_BASEICMSNOTAFISC.NextVal,                                       '+
                                      '           ' + IntToStr(li_NumeNota)                       + ',                                       '+
                                      '           ''' + Copy(sltPercIcms[li_Loop], 1, 2)          + ''',                                     '+
                                      '           ' + ReplaceStr(Copy(sltPercIcms[li_Loop], 3, Length(sltPercIcms[li_Loop])), ',', '.') + ','+
                                      '           ' + ReplaceStr(sltBaseICMS[li_Loop], ',', '.') + ',                                       '+
                                      '           ' + ReplaceStr(sltValoICMS[li_Loop], ',', '.') + ',                                       '+
                                      '           ' + ReplaceStr(sltIsenICMS[li_Loop], ',', '.') + ',                                       '+
                                      '           ' + ReplaceStr(sltOutrICMS[li_Loop], ',', '.') + ',                                       '+
                                      '           ''S'')';

      try
        qryNotaFiscBaseIcms.ExecSQL;
      except

        MessageDlg('Erro ao manipular Base de Icms da Nota Fiscal. Verifique.', mtWarning, [mbOk], 0);
        qryNotaFiscBaseIcms.Close;
        Result := False;
        Exit;
      end;
    end;


    qryNotaFiscBaseIcms.Close;

    // Ajustamos a variável dos erros
    us_MensErro := 'Obtenção dos Dados para a Observação da Nota Fiscal.';

    // Montamos a observação da nota fiscal
    qryTemp.Close;
    QryTemp.SQL.Clear;
    qryTemp.SQL.Text := '  SELECT DISTINCT                                                                                 '+
                        '         PEDIDO_VENDA.ID_PEDIVEND, PEDIDO_VENDA.ID_CARGEXPE,                                      '+
                        '         BOLETO.NR_BOLETO,                                                                        '+
                        '         OBS_PADR_ICMS.GN_OBSEPADRNOTAFISC OBS_ICMS,                                              '+
                        '         OBS_PADR_IPI.GN_OBSEPADRNOTAFISC  OBS_IPI,                                               '+
                        '         PEDIDO_VENDA.GN_OBSEPADR_PEDIVEND                                                        '+
                        '    FROM OPERACAO_TIPO,                                                                           '+
                        '         BOLETO,                                                                                  '+
                        '         PEDIDO_VENDA,                                                                            '+
                        '         PEDIDO_VENDA_ITEM,                                                                       '+
                        '         NOTA_FISCAL_OBSERVACAO_PADRAO OBS_PADR_ICMS,                                             '+
                        '         NOTA_FISCAL_OBSERVACAO_PADRAO OBS_PADR_IPI                                               '+
                        '   WHERE ( OPERACAO_TIPO.ID_TIPOOPER = PEDIDO_VENDA_ITEM.ID_TIPOOPER ) and                        '+
                        '         ( OPERACAO_TIPO.ID_OBSEPADRNOTAFISC_DLICMS = OBS_PADR_ICMS.ID_OBSEPADRNOTAFISC (+)) and  '+
                        '         ( OPERACAO_TIPO.ID_OBSEPADRNOTAFISC_DLIPI = OBS_PADR_IPI.ID_OBSEPADRNOTAFISC (+)) and    '+
                        '         (PEDIDO_VENDA.ID_PEDIVEND = PEDIDO_VENDA_ITEM.ID_PEDIVEND) and                           '+
                        '         ( PEDIDO_VENDA.ID_PEDIVEND = BOLETO.ID_PEDIVEND (+) ) and                                '+
                        '         ( PEDIDO_VENDA.ID_PEDIVEND = ' + IntToStr(pi_CodiPedi) + ')                              ';

    qryTemp.Open;

    // Concatenamos as observações
    qryTemp.First;
    ls_ObseNota := qryTemp.FieldByName('GN_OBSEPADR_PEDIVEND').AsString + #13 + #13 +
                   'CARGA: ' + qryTemp.FieldByName('ID_CARGEXPE').AsString + ' PEDIDO: ' + qryTemp.FieldByName('ID_PEDIVEND').AsString + #13 + #13;

//    while not qryTemp.Eof do
//    begin
//      OBS_FISCO := OBS_FISCO + qryTemp.FieldByName('OBS_ICMS').AsString +
//                     qryTemp.FieldByName('OBS_IPI').AsString;
//      // Proximo registro
//      qryTemp.Next;
//    end;

    // Calculmamos o frete
{    ur_ValoFreteAuto := (lr_PesoBrut * 0.02);

    //GRAVA O FRETE PARA O PEDIDO AQUI
     OSQL.SQL.Clear;
     OSQL.SQL.Text:= ' UPDATE  PEDIDO_VENDA ' +
                     ' SET  vl_tranautopedivend = ' + ReplaceStr(FLOATTOSTR(lr_PesoBrut * 0.02),',','.') + ' , '+
                     '      pc_impofretautopedivend =  ' + ReplaceStr(FLOATTOSTR(ur_PercImpFretAuto),',','.') +
                     ' WHERE  ( PEDIDO_VENDA.ID_PEDIVEND = ' + IntToStr(pi_CodiPedi) + ')                    ';
     OSQL.Execute;  }

    // Se o fornecedor for autônomo
    If (lb_TranAuto=true) and (ls_TipoFrete = '1')  then
    begin
      //Calculo do valor do frete
   //  select anterior ao frete fixo
   (*   '     ((PEDIDO_VENDA.QN_PESOPADREXPEPEDIVEND-(CASE WHEN PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND=0  '+
        '     then PEDIDO_VENDA.QN_PESOREALDEVOPEDIVEND ELSE PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND END)) '+
        '     * (FRETE_ABATIDO.VL_QUILFRETABAT * (LOGISTICA_SUBREGIAO.QN_FATOFRETABATSUBRLOGI-1)        '+
        '     + (TRANSPORTADOR_VEICULO.QN_FATOFRETABATVEICTRAN*FRETE_ABATIDO.VL_QUILFRETABAT))) Frete   '+
    *)

      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text :=
        'SELECT                                                                                         '+
        '  (CASE WHEN (( Nvl(CLIENTE.pc_fretemax,0) * (PEDIDO_VENDA.QN_PESOPADREXPEPEDIVEND-Nvl((CASE WHEN PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND=0 then PEDIDO_VENDA.QN_PESOREALDEVOPEDIVEND ELSE PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND END),0)) )>0) then '+
        '  (( Nvl(CLIENTE.pc_fretemax,0) * (PEDIDO_VENDA.QN_PESOPADREXPEPEDIVEND-Nvl((CASE WHEN PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND=0 then PEDIDO_VENDA.QN_PESOREALDEVOPEDIVEND ELSE PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND END),0)) )) ELSE  '+
        '  ((PEDIDO_VENDA.QN_PESOPADREXPEPEDIVEND-Nvl((CASE WHEN PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND=0 then PEDIDO_VENDA.QN_PESOREALDEVOPEDIVEND ELSE  '+
        '   PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND END),0)) * (FRETE_ABATIDO.VL_QUILFRETABAT * (logistica_subregiao.qn_fatofretabatsubrlogi-1) + (TRANSPORTADOR_VEICULO.QN_FATOFRETABATVEICTRAN*FRETE_ABATIDO.VL_QUILFRETABAT))) END) AS Frete '+
        'FROM                                                                                           '+
        '     SISTEMA_PARAMETRO,                                                                        '+
        '     EXPEDICAO_CARGA,                                                                          '+
        '     PEDIDO_VENDA,                                                                             '+
        '     TRANSPORTADOR_VEICULO,                                                                    '+
        '     FORNECEDOR,                                                                               '+
        '     VEICULO_TIPO,                                                                             '+
        '     FRETE_ABATIDO,                                                                            '+
        '     CLIENTE,                                                                                  '+
        '     LOGISTICA_SUBREGIAO                                                                       '+
        'WHERE                                                                                          '+
        '     EXPEDICAO_CARGA.ID_CARGEXPE  =  PEDIDO_VENDA.ID_CARGEXPE  AND                             '+
        '     EXPEDICAO_CARGA.ID_ITEMPROGCAMI  =  FORNECEDOR.ID_FORNECEDOR  AND                         '+
        '     EXPEDICAO_CARGA.GN_PLACVEICTRAN  =  TRANSPORTADOR_VEICULO.GN_PLACVEICTRAN AND             '+
        '     TRANSPORTADOR_VEICULO.ID_FORNECEDOR_TRANSPORTADOR  =  FORNECEDOR.ID_FORNECEDOR  AND       '+
        '     TRANSPORTADOR_VEICULO.ID_TIPOVEIC  =  VEICULO_TIPO.ID_TIPOVEIC  AND                       '+
        '     VEICULO_TIPO.ID_TIPOVEIC  =  FRETE_ABATIDO.ID_TIPOVEIC  AND                               '+
        '     PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE  AND                                         '+
        '     CLIENTE.ID_SUBRLOGI = LOGISTICA_SUBREGIAO.ID_SUBRLOGI AND                                 '+
        '     (PEDIDO_VENDA.ID_PEDIVEND = ' + IntToStr(pi_CodiPedi) + ')                                ';
      QryTemp.Open;
      If  QryTemp.IsEmpty then
        lr_Frete:= 0
      Else
        lr_Frete:= qryTemp.FieldByName('Frete').AsFloat;

      //Colocar no Pedido o Valor da Obs. da NF
      OSQL.SQL.Clear;
      OSQL.SQL.Text:= ' UPDATE  PEDIDO_VENDA ' +
                      '    SET  vl_tranautopedivend = ' + ReplaceStr(FloatToStr(lr_Frete),',','.') + ' , '+
                      '         pc_impofretautopedivend = ' + ReplaceStr(FLOATTOSTR(ur_PercImpFretAuto),',','.') +
                      '  WHERE  ( PEDIDO_VENDA.ID_PEDIVEND = ' + IntToStr(pi_CodiPedi) + ')                    ';
      OSQL.Execute;

      // Colocamos o valor do frete na observação
      ls_ObseNota := ls_ObseNota + #13 +  #13 +
                     'Preço do frete R$ ..: ' + FloatToStr(lr_Frete)+ ' Alíq.: ' + FloatToStr(ur_PercImpFretAuto) + ' % ' + #10 + #13 +
                     'Valor do Imposto R$ ..: ' + FloatToStr(((lr_Frete * ur_PercImpFretAuto) /100)) + ' ' + #10 + #13 +
                     'Demonstrativo de prestação de serviços de transportador autonomo ' +  #10 + #13 +
                     'ou empresa transportadora conforme parag. 3.o. do art. 285 do RICMS.' + #10 + #13 +
                     'Responsabilidade do recolhimento do Imposto: Emitente da Nota Fiscal.';

    end
    else
    begin
      // Zeramos o frete autonomo
      ur_ValoFreteAuto := 0;
      ur_PercImpFretAuto := 0;
    end;

    //COLOCAMOS O NUMERO DO BOLETO NA OBS. DA NOTA
    ls_ObseNota := ls_ObseNota + 'Nº Boleto: ' + ls_NumeBole;

    //se for transferência colocar o numero do lacre da carga


   // E JA

    //VERIFICAMOS SE QTDE DE MATERIAL EMBALAGEM POR CAIXA OU PALET
    if lr_palet>0 then
       lr_Volumes :=  lr_Volumes/lr_palet;

    //Cliente nao quer o Desconto na NF
    if (Fl_ExibDesc = 'N') then
      begin
        if lr_TotaIPI > 0 then
          lr_ValoNota:= lr_TotaBrutItem + lr_TotaIPI
        else
          lr_ValoNota:= lr_TotaBrutItem;
      end;
//      lr_ValoNota:= lr_TotaBrutItem;

     // Desconto NF de devolução
     if ( lr_DescItem > 0  ) then
        lr_ValoNota := lr_ValoNota - lr_DescItem ;

    // if ( lr_OutDesp > 0  ) then
    //    lr_ValoNota := lr_ValoNota + lr_OutDesp ;

    // Finalizamos a nota fiscal
    qryNotaFisc.Close;
    qryNotaFisc.SQL.Clear;
    qryNotaFisc.SQL.Text := '  UPDATE NOTA_FISCAL                                                                     '+
                            '     SET VL_BASEICMSNOTAFISC = ' + ReplaceStr(FloatToStr(lr_BaseICMS), ',', '.') + ',   '+
                            '         VL_ICMSNOTAFISC = ' + ReplaceStr(FloatToStr(lr_ValoICMS), ',', '.') + ',       '+
                            '         VL_IPINOTAFISC = ' + ReplaceStr(FloatToStr(lr_TotaIPI), ',', '.') + ',         '+
                            '         VL_NOTAFISC = round((' + ReplaceStr(FloatToStr(lr_ValoNota), ',', '.') +
                                 ' + VL_SEGUNOTAFISC + VL_OUTRDESPNOTAFISC),2),                           '+
                            '         VL_BASEIPINOTAFISC = ' + ReplaceStr(FloatToStr(lr_BaseIPI), ',', '.') + ',     '+
                            '         QN_VOLUNOTAFISC = ' + ReplaceStr(FloatToStr(lr_Volumes), ',', '.') + ',        '+
                            '         QN_PESOBRUTNOTAFISC = ' + ReplaceStr(FloatToStr(lr_PesoBrut), ',', '.') + ',   '+
                            '         QN_PESOLIQUNOTAFISC = ' + ReplaceStr(FloatToStr(lr_PesoLiqu), ',', '.') + ',   '+
                            '         PC_ICMSFRETNOTAFISC = 0,                                                       '+
                            '         VL_ICMSFRETNOTAFISC = 0,                                                       '+
                            '         VL_DEVOIPINOTAFISC = 0,                                                        '+
                            '         GN_ESPENOTAFISC = ''' +  VNM_TIPOEMBA  + ''',     '+
                            '         VL_IPIISENNOTAFISC = ' + ReplaceStr(FloatToStr(lr_IsenIPI), ',', '.') + ',     '+
                            '         VL_IPIOUTRNOTAFISC = ' + ReplaceStr(FloatToStr(lr_OutrIPI), ',', '.') + ',     '+
                            '         VL_PRODNOTAFISC = ' + ReplaceStr(FloatToStr(lr_TotaBrutItem), ',', '.') + ',   '+
                            '         VL_DESCPEDIVEND_NOTAFISC = round( ' + ReplaceStr(FloatToStr((lr_TotaBrutItem*lr_PcDescNotaFisc)/100), ',', '.') + ',2),   ';
    //Cliente nao quer o Desconto na NF
    If (lr_PcDescNotaFisc>0) and (Fl_ExibDesc = 'S')  then
       qryNotaFisc.SQL.Add('         GN_OBSDESCNOTAFISC = GN_OBSDESCNOTAFISC || ''' + (FloatToStrF(((lr_TotaBrutItem*lr_PcDescNotaFisc)/100),ffNumber,15,2))  +  ''' , ');

    qryNotaFisc.SQL.Add('         GN_OBSENOTAFISC = ''' + ls_ObseNota + '''                                      ,');
    qryNotaFisc.SQL.Add('         OBS_FISCO = ''' + OBS_FISCO + '''   ');
    qryNotaFisc.SQL.Add('   WHERE NOTA_FISCAL.ID_NOTAFISC = ' + IntToStr(li_NumeNota) +'                         ');

    try
      qryNotaFisc.ExecSQL;
    except
      MessageDlg('Erro ao manipular Totais e Obs. da Nota Fiscal. Verifique.', mtWarning, [mbOk], 0);
      qryNotaFisc.Close;
      Result := False;
      Exit;
    end;
    qryNotaFisc.Close;

    // Criamos o relacionamento nota fiscal com pedido de venda
    qryTemp.SQL.Text := 'INSERT INTO PEDIDO_VENDA_NOTA_FISCAL                        '+
                        '        ( EMPRESA,                                          '+
                        '          FILIAL,                                           '+
                        '          ID_PEDIVENDNOTAFISC,                              '+
                        '          ID_PEDIVEND,                                      '+
                        '          ID_NOTAFISC,                                      '+
                        '          FX_PEDIVENDNOTAFISC )                             '+
                        'VALUES ( ''' + gs_Empresa + ''',                            '+
                        '         ' + IntToStr(gi_Filial) + ','  +
                        '         ID_PEDIVENDNOTAFISC.NextVal  ' + ',' +
                        '         ' + IntToStr(pi_CodiPedi) +',                      '+
                        '         ' + IntToStr(li_NumeNota) +',                      '+
                        '         ''S'' )                                            ';

    try
      qryTemp.ExecSQL;
    except
      MessageDlg('Erro ao manipular relacionamento da Nota Fiscal com o Pedido. Verifique.', mtWarning, [mbOk], 0);
      qryTemp.Close;
      Result := False;
      Exit;
    end;

    // Destruimos a query
    qryTemp.Close;

    // Destruimos as StringList
    sltPercIcms.Free;
    sltBaseICMS.Free;
    sltValoICMS.Free;
    sltIsenICMS.Free;
    sltOutrICMS.Free;

    // Damos o retorno
    Result := True;

  end
  // Se o pedido for do tipo ___
  else
  if ps_TipoPedi = '___' then
  begin
    // ....
  end;
end;

function TfrmImpDocPed.NossoNumero(ps_FixoBole, ps_SequBole, ps_NumeBanc, ps_Agencia, ps_Carteira: String): String;
var
  ls_NossoNume, ls_DigiVeri, ls_Total, ls_Chave: String;
  li_Digito, li_Total, li_Loop: Integer;

begin

  if ps_NumeBanc = '399' then
  begin
    ls_NossoNume := ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole), 5, 0);     // Nosso numero sem digito verificador
    ls_DigiVeri := Modulo11_7(ls_NossoNume);      // Calculamos o digito verificador

    if (ls_DigiVeri = '0') or (ls_DigiVeri = '1') then      // Se o resto da divisao for 0 ou 1 o DV será = 0
      ls_DigiVeri := '0'
    else
      ls_DigiVeri := IntToStr(11 - StrToInt(ls_DigiVeri));

    Result := ls_NossoNume + ls_DigiVeri;
  end

  else if ps_NumeBanc = '001' then    // Se for Banco do Brasil S.A.
  begin
    ls_NossoNume := ps_FixoBole + StrZerodec(StrToInt(ps_SequBole), 5, 0);      // Pegamos o numero contido no codigo de barras
    ls_DigiVeri := Modulo11(ls_NossoNume);      // Calculamos o digito verificador

    if ls_DigiVeri = '10' then      // Se o resto da divisão for 10
    begin
      ls_DigiVeri := 'X';
    end;

    Result := ls_NossoNume + ls_DigiVeri;
  end

  // SANTANDER
  else if ps_NumeBanc = '033' then
  begin
    ls_NossoNume := ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),7,0);        // Nosso numero sem digito verificador
    ls_DigiVeri := Modulo11_7(ls_NossoNume);        // Calculamos o digito verificador

    if ls_DigiVeri = '1' then       // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
      ls_DigiVeri := '0'
    else if ls_DigiVeri <> '0' then
      ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

    Result := Copy(Trim(ls_NossoNume), Length(Trim(ps_FixoBole)) + 1, 11) + ls_DigiVeri;
  end

  // BRADESCO
  else if (ps_NumeBanc = '237') then
  begin
    if ( BASE_DACAR = 'S' ) then  // Dacar
    begin
      ls_NossoNume := StrZeroDEC(StrToInt(ps_Carteira),2,0) + StrZeroDEC(StrToInt64(ps_SequBole),11,0);      // Nosso numero sem digito verificador
      ls_DigiVeri := Modulo11_7(ls_NossoNume);      // Calculamos o digito verificador

      if ls_DigiVeri = '1' then      // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
        ls_DigiVeri := 'P'
      else if ls_DigiVeri <> '0' then
        ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

      Result := Copy(Trim(ls_NossoNume), Length(Trim(StrZeroDEC(StrToInt(ps_Carteira),2,0) )) + 1, 11) + ls_DigiVeri;
    end
    else
    begin
      if QImpDocPed.FieldByName('ID_CONTA').Value = 100 then       //banco BS Factoring
        begin
          ls_NossoNume := '19' + ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),9,0);          // Nosso numero sem digito verificador
          ls_DigiVeri := Modulo11_7(ls_NossoNume);          // Calculamos o digito verificador

          if ls_DigiVeri = '1' then          // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
            ls_DigiVeri := 'P'
          else if ls_DigiVeri <> '0' then
            ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

          Result := Copy(Trim(ls_NossoNume), Length(Trim(ps_FixoBole)) + 1, 11) + ls_DigiVeri;
        end
      else if (QImpDocPed.FieldByName('ID_CONTA').Value = 101) or (QImpDocPed.FieldByName('ID_CONTA').Value = 102) then //AD&N = 101   RED FACTOR = 102
        begin
          ls_NossoNume := '09' + StrZeroDEC(StrToInt(ps_SequBole),11,0);          // Nosso numero sem digito verificador
          ls_DigiVeri := Modulo11_7(ls_NossoNume);          // Calculamos o digito verificador

          if ls_DigiVeri = '1' then          // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
            ls_DigiVeri := 'P'
          else if ls_DigiVeri <> '0' then
            ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

          Result := Copy(Trim(ls_NossoNume), Length(Trim('09')) + 1, 11) + ls_DigiVeri;
        end
      else if (QImpDocPed.FieldByName('ID_CONTA').Value = 124) then
      begin
        ls_NossoNume := '09' + ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),10,0);
        ls_DigiVeri := Modulo11_7(ls_NossoNume);          // Calculamos o digito verificador

        if ls_DigiVeri = '1' then          // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
          ls_DigiVeri := 'P'
        else if ls_DigiVeri <> '0' then
            ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

        Result := Copy(Trim(ls_NossoNume), Length(Trim(ps_FixoBole))+2, 11) + ls_DigiVeri;
      end

      //INDUSTRIAL
      else if QImpDocPed.FieldByName('ID_CONTA').Value = 131 then
      begin
        ls_NossoNume := '19' + ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),11,0);          // Nosso numero sem digito verificador
        ls_DigiVeri := Modulo11_7(ls_NossoNume);          // Calculamos o digito verificador

        if ls_DigiVeri = '1' then          // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
          ls_DigiVeri := 'P'
        else if ls_DigiVeri <> '0' then
          ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

        Result := Copy(Trim(ls_NossoNume),3, 12) + ls_DigiVeri;
      end

      else if (QImpDocPed.FieldByName('ID_CONTA').Value = 143) or (QImpDocPed.FieldByName('ID_CONTA').Value = 149) or (QImpDocPed.FieldByName('ID_CONTA').Value = 151)
              or (QImpDocPed.FieldByName('ID_CONTA').Value = 162) or (QImpDocPed.FieldByName('ID_CONTA').Value = 167) then //SUL INVEST 143/149 AthenA 151 / DETOMASO 162 e 167
      begin
        ls_NossoNume := '19' + ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),9,0);        // Nosso numero sem digito verificador
        ls_DigiVeri := Modulo11_7(ls_NossoNume);        // Calculamos o digito verificador

        if ls_DigiVeri = '1' then
          ls_DigiVeri := 'P'
        else if ls_DigiVeri <> '0' then
          ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

        Result := Copy(Trim(ls_NossoNume), Length(Trim(ps_FixoBole)) + 1, 11) + ls_DigiVeri;
      end

      else if (QImpDocPed.FieldByName('ID_CONTA').Value = 150) then //R G
      begin
        // Nosso numero sem digito verificador
        ls_NossoNume := '09' + ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),9,0);

        // Calculamos o digito verificador
        ls_DigiVeri := Modulo11_7(ls_NossoNume);

        if ls_DigiVeri = '1' then
          begin
            ls_DigiVeri := 'P';
          end
        else if ls_DigiVeri <> '0' then
          begin
            ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));
          end;
        Result := Copy(Trim(ls_NossoNume), Length(Trim(ps_FixoBole)) + 1, 11) + ls_DigiVeri;
      end

      else if (QImpDocPed.FieldByName('ID_CONTA').Value = 144) then
      begin
        ls_NossoNume := ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),4,0);          // Pegamos o nosso numero numero
        ls_DigiVeri := Modulo11(ls_NossoNume);            // Calculamos o digito verificador
        ls_NossoNume := ls_NossoNume + ls_DigiVeri;          // Pegamos o nosso numero numero + o digito
        ls_NossoNume := '09' + FormatDateTime('yy',date) +  ls_NossoNume;
        ls_DigiVeri := Modulo11_7(ls_NossoNume);          // Calculamos o digito verificador

        if ls_DigiVeri = '1' then          // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
          ls_DigiVeri := 'P'
        else if ls_DigiVeri <> '0' then
          ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

        Result := Copy(Trim(ls_NossoNume),3, 11) + ls_DigiVeri;
      end

      else if (QImpDocPed.FieldByName('ID_CONTA').Value = 164) then //sifra alimentos
      begin
        ls_NossoNume := '19' + ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),7,0);        // Nosso numero sem digito verificador
        ls_DigiVeri := Modulo11_7(ls_NossoNume);        // Calculamos o digito verificador

        if ls_DigiVeri = '1' then        // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
          ls_DigiVeri := 'P'
        else if ls_DigiVeri <> '0' then
          ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

        Result := Copy(Trim(ls_NossoNume), 3, 11) + ls_DigiVeri;
      end
      else if (QImpDocPed.FieldByName('ID_CONTA').Value = 171) or (QImpDocPed.FieldByName('ID_CONTA').Value = 172) then //171 E 172 CREDIT BR ALIME / AVICUL
      begin
        ls_NossoNume := '19' + ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),7,0);        // Nosso numero sem digito verificador
        ls_DigiVeri := Modulo11_7(ls_NossoNume);        // Calculamos o digito verificador

        if ls_DigiVeri = '1' then        // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
          ls_DigiVeri := 'P'
        else if ls_DigiVeri <> '0' then
          ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

        Result := Copy(Trim(ls_NossoNume), 3, 11) + ls_DigiVeri;
      end

      else
      begin
        ls_NossoNume := ps_FixoBole + StrZeroDEC(StrToInt64(ps_SequBole),11,0);        // Nosso numero sem digito verificador
        ls_DigiVeri := Modulo11_7(ls_NossoNume);        // Calculamos o digito verificador

        if ls_DigiVeri = '1' then        // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
          ls_DigiVeri := 'P'
        else if ls_DigiVeri <> '0' then
          ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

        Result := Copy(Trim(ls_NossoNume), Length(Trim(ps_FixoBole)) + 1, 11) + ls_DigiVeri;
      end;
    end;
  end  // FIM BRADESCO

  //DAYCOVAL
  else if (ps_NumeBanc = '707') then
  begin
    ls_NossoNume := ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),11,0);    // Nosso numero sem digito verificador
    ls_DigiVeri := Modulo11_7(ls_NossoNume);    // Calculamos o digito verificador

    if ls_DigiVeri = '1' then    // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
      ls_DigiVeri := 'P'
    else if ls_DigiVeri <> '0' then
      ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

    Result := Copy(Trim(ls_NossoNume), Length(Trim(ps_FixoBole)) + 1, 11) + ls_DigiVeri;
  end

  //INDUSVAL
  else if (ps_NumeBanc = '653') then
  begin
    ls_NossoNume := ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),11,0);    // Nosso numero sem digito verificador
    ls_DigiVeri := Modulo11_7(ls_NossoNume);    // Calculamos o digito verificador

    if ls_DigiVeri = '1' then    // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
      ls_DigiVeri := 'P'
    else if ls_DigiVeri <> '0' then
      ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

    Result := Copy(Trim(ls_NossoNume), Length(Trim(ps_FixoBole)) + 1, 11) + ls_DigiVeri;
  end

  //ABC
  else if (ps_NumeBanc = '400') then
  begin
    ls_NossoNume := ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),11,0);    // Nosso numero sem digito verificador
    ls_DigiVeri := Modulo11_7(ls_NossoNume);    // Calculamos o digito verificador

    if ls_DigiVeri = '1' then    // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
      ls_DigiVeri := 'P'
    else if ls_DigiVeri <> '0' then
      ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

    Result := Copy(Trim(ls_NossoNume), Length(Trim(ps_FixoBole)) + 1, 11) + ls_DigiVeri;
  end

  //BIC
  else If (ps_NumeBanc = '320') then
  begin
    ls_NossoNume := '09' + ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),6,0);    // Nosso numero sem digito verificador
    ls_DigiVeri := Modulo11_7(ls_NossoNume);    // Calculamos o digito verificador

    if ls_DigiVeri = '1' then    // Se o resultado da subtração for 10 (11-ls_DigiVeri = 10), ou seja,
      ls_DigiVeri := 'P'
    else if ls_DigiVeri <> '0' then
      ls_DigiVeri := IntToStr(11-StrToInt(ls_DigiVeri));

    Result := COPY(ls_NossoNume,3,11) + ls_DigiVeri;
  end

  // BANCO SAFRA
  else if ps_NumeBanc = '422' then
  begin
    ls_NossoNume := ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),4,0);    // Pegamos o nosso numero numero
    ls_DigiVeri := Modulo11(ls_NossoNume);    // Calculamos o digito verificador
    ls_NossoNume := ls_NossoNume + ls_DigiVeri;    // Pegamos o nosso numero numero + o digito
    Result := ls_NossoNume;
  end

  // ITAU
  else if ps_NumeBanc = '341' then
  begin
    if ( BASE_DACAR = 'S' ) then  // Dacar
    begin
      if QImpDocPed.FieldByName('ID_CONTA').Value = 63 then // SOFISA
      begin
        ls_NossoNume := StrZeroDEC(StrToInt(ps_SequBole),8,0);      // Pegamos o nosso numero numero
        ls_DigiVeri := Modulo10( '1248' + '09365' + ps_Carteira + ls_NossoNume);      // Calculamos o digito verificador
        ls_NossoNume := ls_NossoNume + ls_DigiVeri;      // Pegamos o nosso numero numero + o digito
        Result := ls_NossoNume;
      end
      else if QImpDocPed.FieldByName('ID_CONTA').Value = 67 then // DAYCOVAL
      begin
        ls_NossoNume := StrZeroDEC(StrToInt(ps_SequBole),8,0);      // Pegamos o nosso numero numero
        ls_DigiVeri := Modulo10( ps_Agencia + '10123' + ps_Carteira + ls_NossoNume);      // Calculamos o digito verificador
        ls_NossoNume := ls_NossoNume + ls_DigiVeri;      // Pegamos o nosso numero numero + o digito
        Result := ls_NossoNume;
      end
      else
      begin
        ls_NossoNume := StrZeroDEC(StrToInt(ps_SequBole),8,0);      // Pegamos o nosso numero numero
        ls_DigiVeri := Modulo10( ps_Agencia + ps_FixoBole + ps_Carteira+ls_NossoNume);      // Calculamos o digito verificador
        ls_NossoNume := ls_NossoNume + ls_DigiVeri;      // Pegamos o nosso numero numero + o digito
        Result := ls_NossoNume;
      end;
    end
    else
    begin
      if QImpDocPed.FieldByName('ID_CONTA').Value = 132 then
      begin
        ls_NossoNume := StrZeroDEC(StrToInt(ps_SequBole),8,0);        // Pegamos o nosso numero numero
        ls_DigiVeri := Modulo10('8064'+ ps_FixoBole + '109'+ls_NossoNume);        // Calculamos o digito verificador
        ls_NossoNume := ls_NossoNume + ls_DigiVeri;        // Pegamos o nosso numero numero + o digito
        Result := ls_NossoNume;
      end
      else
      begin
        ls_NossoNume := StrZeroDEC(StrToInt(ps_SequBole),8,0);        // Pegamos o nosso numero numero
        ls_DigiVeri := Modulo10('0076'+ ps_FixoBole + '109'+ls_NossoNume);        // Calculamos o digito verificador
        ls_NossoNume := ls_NossoNume + ls_DigiVeri;        // Pegamos o nosso numero numero + o digito
        Result := ls_NossoNume;
      end;
    end;
  end

  // VOTORANTIM
  else if ps_NumeBanc = '655' then
  begin
    ls_NossoNume := StrZeroDEC(StrToInt(ps_SequBole),8,0);    // Pegamos o nosso numero numero
    ls_DigiVeri := Modulo10('124802707109'+ls_NossoNume);    // Calculamos o digito verificador
    ls_NossoNume := ls_NossoNume + ls_DigiVeri;    // Pegamos o nosso numero numero + o digito
    Result := ls_NossoNume;
  end

  // BANCBOSTON
  else if ps_NumeBanc = '479' then
  begin
    ls_NossoNume := StrZeroDEC(StrToInt(ps_SequBole),8,0);    // Pegamos o nosso numero numero
    ls_DigiVeri := Modulo11_8(ls_NossoNume);    // Calculamos o digito verificador
    ls_NossoNume := ls_NossoNume + ls_DigiVeri;     // Pegamos o nosso numero numero + o digito
    Result := ls_NossoNume;
  end

  // MERCANTIL
  else if ps_NumeBanc = '389' then
  begin
    ls_NossoNume := ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole),6,0);    // Pegamos o nosso numero numero
    ls_DigiVeri := Modulo11_M('0296'+ls_NossoNume);    // Calculamos o digito verificador
    ls_NossoNume := ls_NossoNume + ls_DigiVeri;     // Pegamos o nosso numero numero + o digito
    Result := ls_NossoNume;
  end

  // BANCO INTERCAP
  Else if ps_NumeBanc = '630' then
  begin
    ls_NossoNume := StrZeroDEC(StrToInt(ps_SequBole),8,0);    // Pegamos o nosso numero numero
    ls_DigiVeri := Modulo10('0076'+ ps_FixoBole + '109'+ls_NossoNume);    // Calculamos o digito verificador
    ls_NossoNume := ls_NossoNume + ls_DigiVeri;    // Pegamos o nosso numero numero + o digito
    Result := ls_NossoNume;
  end

  // CITIBANK
  else if ps_NumeBanc = '745' then
  begin
    ls_NossoNume := ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole), 5, 0);    // Nosso numero sem digito verificador
    ls_DigiVeri := Modulo11_7(ls_NossoNume);    // Calculamos o digito verificador
    if (ls_DigiVeri = '0') or (ls_DigiVeri = '1') then    // Se o resto da divisao for 0 ou 1 o DV será = 0
      ls_DigiVeri := '0'
    else
      ls_DigiVeri := IntToStr(11 - StrToInt(ls_DigiVeri));

    Result := ls_NossoNume + ls_DigiVeri;
  end

  // BANCO REAL
  else if ps_NumeBanc = '356' then
  begin
    ls_NossoNume := ps_FixoBole + StrZeroDEC(StrToInt(ps_SequBole), 5, 0);    // Nosso numero sem digito verificador
    ls_DigiVeri := Modulo11_7(ls_NossoNume);    // Calculamos o digito verificador

    if (ls_DigiVeri = '0') or (ls_DigiVeri = '1') then    // Se o resto da divisao for 0 ou 1 o DV será = 0
      ls_DigiVeri := '0'
    else
      ls_DigiVeri := IntToStr(11 - StrToInt(ls_DigiVeri));

    Result := ls_NossoNume + ls_DigiVeri;
  end;
end;

function TfrmImpDocPed.Modulo11_7(ps_String: String): String;
var
  li_Loop, li_Total, li_Fator, li_Resto, li_DV: Integer;
begin
  // Inicializamos o total e o fator
  li_Total := 0;
  li_Fator := 2;

  // Loop para todos os dígitos da string
  for li_Loop := Length(ps_String) downto 1 do
  begin
    li_Total := li_Total + (li_Fator * StrToInt(Copy(ps_String, li_Loop, 1)));

    // Ajustamos o fator
    li_Fator := li_Fator + 1;
    if li_Fator = 8 then
      li_Fator := 2;
  end;

  // Dividimos o total por 11 e pegamos o resto da divisao
  li_Resto := li_Total mod 11;

  // Calculamos o dígito
  Result := IntToStr(li_Resto);

end;

function TfrmImpDocPed.Modulo11_8(ps_String: String): String;
var
  li_Loop, li_Total, li_Fator, li_Resto, li_DV: Integer;
begin
  // Inicializamos o total e o fator
  li_Total := 0;
  li_Fator := 2;

  // Loop para todos os dígitos da string
  for li_Loop := Length(ps_String) downto 1 do
  begin
    li_Total := li_Total + (li_Fator * StrToInt(Copy(ps_String, li_Loop, 1)));

    // Ajustamos o fator
    li_Fator := li_Fator + 1;
    if li_Fator = 10 then
      li_Fator := 2;
  end;
  li_Total := li_Total*10;
  // Dividimos o total por 11 e pegamos o resto da divisao
  li_Resto := li_Total mod 11;

  If (li_Resto > 9) or (li_Resto=0) then
      Result := '0'
  Else
     Result := IntToStr(li_Resto);

end;

function TfrmImpDocPed.Modulo11(ps_String: String): String;
var
  li_Loop, li_Total, li_Fator, li_Resto, li_DV: Integer;
begin

  // Inicializamos o total e o fator
  li_Total := 0;
  li_Fator := 2;

  // Loop para todos os dígitos da string
  for li_Loop := Length(ps_String) downto 1 do
  begin
    li_Total := li_Total + (li_Fator * StrToInt(Copy(ps_String, li_Loop, 1)));

    // Ajustamos o fator
    li_Fator := li_Fator + 1;
    if li_Fator = 10 then
      li_Fator := 2;
  end;

  // Dividimos o total por 11 e pegamos o resto da divisao
  li_Resto := li_Total mod 11;

  // Calculamos o dígito
  If  li_Resto=0 then
     Result :='1';

  If  li_Resto=1 then
     Result :='0';

  If  li_Resto>1 then
     Result := IntToStr(11-li_Resto);

end;

function TfrmImpDocPed.Modulo11_M(ps_String: String): String;
var
  li_Loop, li_Total, li_Fator, li_Resto, li_DV: Integer;
begin
  // Inicializamos o total e o fator
  li_Total := 0;
  li_Fator := 2;

  // Loop para todos os dígitos da string
  for li_Loop := Length(ps_String) downto 1 do
  begin
    li_Total := li_Total + (li_Fator * StrToInt(Copy(ps_String, li_Loop, 1)));

    // Ajustamos o fator
    li_Fator := li_Fator + 1;
    if li_Fator = 10 then
      li_Fator := 2;
  end;

  // Dividimos o total por 11 e pegamos o resto da divisao
  li_Resto := li_Total mod 11;

  // Calculamos o dígito
  If  li_Resto=0 then
     Result :='0';

  If  li_Resto=1 then
     Result :='0';

  If  li_Resto>1 then
     Result := IntToStr(11-li_Resto);

end;


{Function TfrmImpDocPed.AjusCredClie(pi_CodiClie: Integer; ps_TipoAjus: string; pr_ValoAjus: Real):Boolean;
var
  lr_ValoAjus: Real;
  lr_CredAtua, lr_CredUsad, lr_CredEspe, lr_CredEspeUsad : Real;
begin
// ** OBS.: ps_TipoAjus = Deve conter <D>: Devolver crédito ou <U>: Usar crédito.

  Result := False;

  // Buscamos a situação do crédito do cliente
  qryClie.Close;
  qryClie.SQL.clear;
  qryClie.SQL.Text := 'SELECT FL_TIPOBLOQCLIE,                           '+
                      '       VL_LIMICREDCLIE,                           '+
                      '       VL_CREDATUACLIE,                           '+
                      '       VL_CREDUSADCLIE,                           '+
                      '       VL_CREDESPECLIE,                           '+
                      '       VL_CREDESPEUSADCLIE                        ';

  // Se estivermos na matriz
  if gi_Filial = 1 then
  begin
    qryClie.SQL.Text := qryClie.SQL.Text +
                        '  FROM CLIENTE                                    '+
                        ' WHERE ID_CLIENTE = ' + IntToStr(pi_CodiClie) + ' ';
  end
  else
  begin
    qryClie.SQL.Text := qryClie.SQL.Text +
                        '  FROM LNK_CLIENTE                                '+
                        ' WHERE ID_CLIENTE = ' + IntToStr(pi_CodiClie) + ' ';
  end;


  try
    qryClie.Open;
  except
    qryClie.Close;
    Exit;
  end;

  // Se o cliente não controlar credito
  if (qryClie.FieldByName('FL_TIPOBLOQCLIE').AsString <> 'AB') and
     (qryClie.FieldByName('FL_TIPOBLOQCLIE').AsString <> 'CI') then
  begin
    Result := True;
    Exit;
  end;

  // Inciamos as variáveis
  lr_CredAtua      := qryClie.FieldByName('VL_CREDATUACLIE').AsFloat;
  lr_CredUsad      := qryClie.FieldByName('VL_CREDUSADCLIE').AsFloat;
  lr_CredEspe      := qryClie.FieldByName('VL_CREDESPECLIE').AsFloat;
  lr_CredEspeUsad  := qryClie.FieldByName('VL_CREDESPEUSADCLIE').AsFloat;

  // Se formos devolver o crédito
  if ps_TipoAjus = 'D' then
  begin
    // Calculamos o especial usado
    lr_CredEspeUsad :=  lr_CredEspeUsad - pr_ValoAjus;
    // Se o especial usado for negativo, calculamos o usado
    if lr_CredEspeUsad < 0 then
    begin
      lr_CredUsad := lr_CredUsad + lr_CredEspeUsad;
      lr_CredEspeUsad := 0;
    end;

    // Calculamos o crédito atual
    lr_CredAtua := qryClie.FieldByName('VL_LIMICREDCLIE').AsFloat - lr_CredUsad;
  end
  // Se formos usar o crédito
  else
  begin
    // Calculamos o usado
    lr_CredUsad := lr_CredUsad + pr_ValoAjus;
    // Se o crédito usado for maior que o limite, atualizamos o especial usado
    if lr_CredUsad > qryClie.FieldByName('VL_LIMICREDCLIE').AsFloat then
    begin
      lr_CredEspeUsad := lr_CredEspeUsad + lr_CredUsad - qryClie.FieldByName('VL_LIMICREDCLIE').AsFloat;
      lr_CredEspe := lr_CredEspe - lr_CredEspeUsad;
      lr_CredUsad := qryClie.FieldByName('VL_LIMICREDCLIE').AsFloat;
    end;

    // Calculamos o crédito atual
    lr_CredAtua := qryClie.FieldByName('VL_LIMICREDCLIE').AsFloat - lr_CredUsad;
  end;

  // Atualizamos o crédito do cliente
  qryClie.Close;
  // Se estivermos na matriz
  if gi_Filial = 1 then
  begin
    qryClie.SQL.Text := 'UPDATE CLIENTE                                       ';
  end
  else
  begin
    qryClie.SQL.Text := 'UPDATE LNK_CLIENTE                                       ';
  end;

  qryClie.SQL.Text := qryClie.SQL.Text +
                      '   SET VL_CREDATUACLIE = ' + ReplaceStr(FloatToStr(lr_CredAtua), ',','.') + ',         '+
                      '       VL_CREDUSADCLIE = ' + ReplaceStr(FloatToStr(lr_CredUsad), ',','.') + ',         '+
                      '       VL_CREDESPECLIE = ' + ReplaceStr(FloatToStr(lr_CredEspe), ',','.') + ',         '+
                      '       VL_CREDESPEUSADCLIE  = ' + ReplaceStr(FloatToStr(lr_CredEspeUsad), ',','.') + ' '+
                      ' WHERE ID_CLIENTE = ' + IntToStr(pi_CodiClie) + '                                      ';

  try
    qryClie.ExecSQL;
  except
    qryClie.Close;
    Exit;
  end;

  qryClie.Close;

  Result := True;
end;}

procedure TfrmImpDocPed.ImprimirBoleto1Click(Sender: TObject);
var
  li_Posi    , li_Loop    , li_IndeImpr, li_QtdeParc: Integer;
  ls_CampLivr, ls_NumeBanc, ls_NumeAgen, ls_NumeCont, ls_FormVenc, ls_ValoBole: String;
  ls_Geral   , ls_Dac     , ls_DV1     , ls_DV2     , ls_DV3     : String;
  ls_LinhDig1, ls_LinhDig2, ls_LinhDig3, ls_NomeImpr, ls_NumeDocu: String;
  ls_D1      , ls_D2      , vNomeSacador, ls_dig : String;
  vPercMoraDia: double;
begin
  ImprimeBoleto();
end;

procedure TfrmImpDocPed.CancelarNotaFiscal1Click(Sender: TObject);
var
  li_Loop    : Integer;
begin
  // Cancelamento Transferido para o emissor

  // Verificamos se existe algum ítem selecionado
  if grdDados.SelectedRows.Count = 0 then
  begin
    MessageDlg('Pelo menos um pedido deve ser selecionado !', mtWarning, [mbOk], 0);
    Exit;
  end;

  // Varremos a qryForm para o cancelamento das NFs selecionadas
  for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
  begin
    // Posicionamos no registro desejado
    grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

    if (QImpDocPed.FieldByName('FL_BLOQAJUSFINAPEDIVEND').AsString = 'S') then
    begin
      MessageDlg('Atenção! Nota fiscal não pode ser Cancelada, para o pedido: ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ', pois já está Bloqueado!', mtInformation, [mbOK], 0);
      Continue;
    end;


    // Selecionamos as cargas a serem canceladas
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text :=
    'SELECT NOTA_FISCAL.ID_NOTAFISC,                                                         '+
    '       NOTA_FISCAL.NR_NOTAFISC,                                                         '+
    '       NOTA_FISCAL.FL_CANCNOTAFISC                                                      '+
    '  FROM NOTA_FISCAL,                                                                     '+
    '       PEDIDO_VENDA_NOTA_FISCAL                                                         '+
    ' WHERE (NOTA_FISCAL.ID_NOTAFISC = PEDIDO_VENDA_NOTA_FISCAL.ID_NOTAFISC)                 '+
    '   AND (NOTA_FISCAL.FL_CANCNOTAFISC = ''N'')                                            '+
    '   AND (PEDIDO_VENDA_NOTA_FISCAL.ID_PEDIVEND = ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ')';
    QryTemp.Open;

    // Verificamos se foi encontrada a nota fiscal para o pedido
    if qryTemp.IsEmpty then
    begin
      MessageDlg('Nota fiscal não encontrada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !', mtInformation, [mbOK], 0);
      Continue;
    end;

    // Posicionamos no primeiro registro da query
    qryTemp.First;

    while not qryTemp.Eof do
    begin

      // Verificamos se a nota fiscal já está cancelada
      if qryTemp.FieldByName('FL_CANCNOTAFISC').AsString = 'S' then
      begin
        MessageDlg('A Nota fiscal ' + IntToStr(qryTemp['NR_NOTAFISC']) + ' do pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' já está cancelada !' + #13 +
                   'Por favor, verifique !', mtInformation, [mbOK], 0);
        // Proximo registro
        qryTemp.Next;
        Continue;
      end;

      // Verificamos se o usuario deseja cancelar a nota fiscal
      if MessageDlg('Deseja realmente cancelar a nota fiscal ' +
                     IntToStr(QImpDocPed['NR_NOTAFISC']), mtConfirmation, [mbYes, mbNO], 0) = mrYes then
      begin
        // Cancelamos a NF
        qryTempUpda.Close;
        qryTempUpda.SQL.Clear;
        qryTempUpda.SQL.Text := 'UPDATE NOTA_FISCAL                                                     '+
                                  '   SET FL_CANCNOTAFISC = ''S''                                         '+
                                  ' WHERE ID_NOTAFISC = ' + qryTemp.FieldByName('ID_NOTAFISC').AsString;
        qryTempUpda.ExecSQL;

        // Atualizamos a data de geração no pedido de venda
        QImpDocPed.Edit;
        QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString := '';
        QImpDocPed.FieldByName('VL_OUTRAJUSANTPEDIVEND').AsFloat:= QImpDocPed.FieldByName('VL_OUTRAJUSPEDIVEND').AsFloat;
        QImpDocPed.FieldByName('VL_OUTRAJUSPEDIVEND').AsFloat:= 0;
        QImpDocPed.Post;

        // Atualizamos o banco
        QImpDocPed.ApplyUpdates;

        // Limpamos o cache
        QImpDocPed.CommitUpdates;


        MessageDlg('A Nota fiscal ' + IntToStr(qryTemp['NR_NOTAFISC']) + ' do pedido '
                  + IntToStr(QImpDocPed['ID_PEDIVEND'])
                  + ' foi cancelada com sucesso !',mtInformation, [mbOK], 0);
       end;

      // Movemos para o próximo registro
      qryTemp.Next;
    end;

  end;

  // Fechamos a query
  qryTemp.Close;
  qryTempDele.close;

end;

procedure TfrmImpDocPed.VisualizarBoleto1Click(Sender: TObject);
{var
  li_Posi    , li_Loop    , li_IndeImpr, li_QtdeParc: Integer;
  ls_CampLivr, ls_NumeBanc, ls_NumeAgen, ls_NumeCont, ls_FormVenc, ls_ValoBole: String;
  ls_Geral   , ls_Dac     , ls_DV1     , ls_DV2     , ls_DV3     : String;
  ls_LinhDig1, ls_LinhDig2, ls_LinhDig3, ls_NomeImpr, ls_NumeDocu: String;
  ls_D1      , ls_D2      , vNomeSacador: String;}
begin
  Vb_Imprime:= False;
  ImprimirBoleto1Click (nil);

  // Verificamos se foi selecionado algum pedido para emissão de boleto
(*  if grdDados.SelectedRows.Count = 0 then
  begin
    MessageDlg('Nenhum pedido foi selecionado para impressão de boleto.' + #13 +
               'Por favor, verifique !', mtInformation, [mbOK], 0);
    Exit;
  end;

  // Confirmação de impressão

  if MessageDlg ('Confirma Impressão de Boletos do(s)' + #13 +
                 '    Pedido(s) Selecionado(s) ?', mtConfirmation,
                 [mbOk, mbCancel], 0) = mrOk then
  begin

    FrmQRBoletoPre := TfrmQRBoletoPre.Create(Self);

    // Loop para todos os pedidos selecionados
    For li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
    begin

      // Posicionamos no registro a ser impresso
      grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

      // Selecionamos o(s) boletos a serem impressos
      qryBoleto.Close;
      qryBoleto.ParamByName('pi_pedivend').AsInteger := QImpDocPed['ID_PEDIVEND'];
      qryBoleto.Open;

      // Verificamos se existe(m) boleto(s) para o pedido
      If qryBoleto.IsEmpty then
      begin
        MessageDlg('Boleto(s) não encontrado(s) para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !' + #13 +
                   'Por favor, verifique !', mtInformation, [mbOK], 0);
        Continue;
      end;

      // Confere o valor financeiro do Boleto.
      qryTemp.Close;
      QryTemp.SQL.Clear;
      qryTemp.SQL.Text := ' SELECT  ID_PEDIVEND,                        '+
                        '  (NVL(vl_fatupedivend,0) -(NVL(vl_quebpedivend,0)+NVL(vl_outrajuspedivend,0)+NVL(vl_devopedivend,0))) AS vlfinan  '+
                        '   FROM PEDIDO_VENDA                  '+
                        '   WHERE ( ID_PEDIVEND = ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ')                  ';
      QryTemp.Open;

      If QryBoleto.FieldByName('VL_BOLETO').AsFloat <> QryTemp.FieldByName('vlfinan').ASFLOAT  then
        BEGIN
         OSQL.SQL.Clear;
         OSQL.SQL.Text := 'Update Boleto   '+
                     '  Set  vl_boleto = ' +  ReplaceStr(floattostr(QryTemp.FieldByName('vlfinan').ASFLOAT),',','.') + ' , ' +
                     '  vl_moradiabole = ' +  ReplaceStr(floattostr(QryTemp.FieldByName('vlfinan').ASFLOAT*0.004),',','.') +
                     '  WHERE ( ID_PEDIVEND = ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ')                  ';
         OSQL.Execute;
         qryBoleto.Close;
         qryBoleto.ParamByName('pi_pedivend').AsInteger := QImpDocPed['ID_PEDIVEND'];
         qryBoleto.Open;
        END;

      // Posicionamos no primeiro registro da query de boleto
      qryBoleto.First;

      // Iniciamos a impressão
      While not qryBoleto.Eof do
      begin

        // Verificamos se o boleto já foi impresso
        If qryBoleto.FieldByName('FL_IMPRBOLE').AsString = 'S' then
        begin
           // Verificamos se o usuário deseja imprimir novamente o boleto
           If MessageDlg ('O boleto nr. ' + qryBoleto.FieldByName('NR_BOLETO').AsString +
                          ' do pedido ' + qryBoleto.FieldByName('ID_PEDIVEND').AsString + ' já foi impresso !' + #13 +
                          'Deseja reimprimir o boleto ?', mtConfirmation,
                           [mbYes, mbNo], 0) = mrNo then
           begin
             // Proximo boleto
             qryBoleto.Next;
             Continue;
           end;
        end;

        // Se for Banco do Brasil
        If Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '001-9' then
        begin
          // Número da agência
          ls_Geral := Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString);
          li_Posi := Pos('-', ls_Geral);
          If li_Posi > 0 then
            ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),4,0)
          else
            ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),4,0);

          // Número da conta
          ls_Geral := Trim(qryBoleto.FieldByName('NR_CONTA').AsString);
          li_Posi := Pos('-', ls_Geral);
          If li_Posi > 0 then
            ls_NumeCont := StrZerodec(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),8,0)
          Else
            ls_NumeCont := StrZerodec(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),8,0);

          // Campo livre = Nosso número + Agência + Conta + Carteira
          ls_CampLivr := Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                         ls_NumeAgen + ls_NumeCont + '17';
        End

        // Se for Banco Safra
        Else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '422-7' then
        Begin

          // Número da agência
          ls_Geral := Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString);
          li_Posi := Pos('-', ls_Geral);
          If li_Posi > 0 then
            ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),5,0)
          Else
            ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),5,0);

          // Número da conta
          ls_Geral := SoNumeros(qryBoleto.FieldByName('NR_CONTA').AsString);
          ls_NumeCont := StrZerodec(StrToInt(ls_Geral),9,0);

          {// Número da conta
          ls_Geral := Trim(qryBoleto.FieldByName('NR_CONTA').AsString);
          li_Posi := Pos('-', ls_Geral);
          if li_Posi > 0 then
            ls_NumeCont := StrZero(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),9,0)
          else
            ls_NumeCont := StrZero(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),9,0);}

          // Campo livre = Sistema + Agência + Conta + Nosso número + Tipo Cobrança
          ls_CampLivr := '7' + ls_NumeAgen + ls_NumeCont +
                         Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 9) +
                         '2';
        End

        // SE FOR ITAU
        Else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '341-7' then
        Begin

          // Número da agência
          ls_NumeAgen := qryBoleto.FieldByName('NR_AGENBANC').AsString;
  {        ls_Geral := Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString);
          li_Posi := Pos('-', ls_Geral);
          if li_Posi > 0 then
            ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),5,0)
          else
            ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),5,0);
 }

          // Número da conta
          ls_Geral := SoNumeros(qryBoleto.FieldByName('NR_CONTA').AsString);
          ls_NumeCont := StrZerodec(StrToInt(ls_Geral),6,0);

          {// Número da conta
          ls_Geral := Trim(qryBoleto.FieldByName('NR_CONTA').AsString);
          li_Posi := Pos('-', ls_Geral);
          if li_Posi > 0 then
            ls_NumeCont := StrZero(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),9,0)
          else
            ls_NumeCont := StrZero(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),9,0);}

          // Campo livre = Sistema + Agência + Conta + Nosso número + Tipo Cobrança
          ls_CampLivr := '109' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 9)+
                         ls_NumeAgen + ls_NumeCont + '000';
        End

        //*****ITAU ATÉ AQUI

       // SE FOR B. BOSTON
        Else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '479-0' then
        Begin

          // Número da agência
          ls_NumeAgen := qryBoleto.FieldByName('NR_AGENBANC').AsString;
  {        ls_Geral := Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString);
          li_Posi := Pos('-', ls_Geral);
          if li_Posi > 0 then
            ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),5,0)
          else
            ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),5,0);
 }
         // Número da conta
          ls_Geral := SoNumeros(qryBoleto.FieldByName('NR_CONTA').AsString);
          ls_NumeCont := StrZerodec(StrToInt(ls_Geral),6,0);

          {// Número da conta
          ls_Geral := Trim(qryBoleto.FieldByName('NR_CONTA').AsString);
          li_Posi := Pos('-', ls_Geral);
          if li_Posi > 0 then
            ls_NumeCont := StrZero(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),9,0)
          else
            ls_NumeCont := StrZero(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),9,0);}

          // Campo livre = Sistema + Agência + Conta + Nosso número + Tipo Cobrança
          ls_CampLivr := '002061466000000' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 9)+ '8';
        End

        //*****BANK BOSTON ATÉ AQUI

        // Se for Banespa
        Else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '033-7' then
        Begin
          // Número da agência
          ls_Geral := SoNumeros(qryBoleto.FieldByName('NR_AGENBANC').AsString);
          ls_NumeAgen := StrZerodec(StrToInt(ls_Geral),3,0);

          // Número da conta
          ls_Geral := SoNumeros(qryBoleto.FieldByName('NR_CODICEDECONT').AsString);
          ls_NumeCont := StrZerodec(StrToInt(ls_Geral),8,0);

          ls_Geral := ls_NumeAgen + ls_NumeCont +
                      Copy(qryBoleto.FieldByName('NR_BOLETO').AsString, 4, 7) + '00033';

          ls_D1 := Modulo10(ls_Geral);

          ls_D2 := '-1';
          while StrToInt(ls_D2) = -1 do
          begin
            ls_D2 := BanespaD2(ls_Geral + ls_D1);

            if ls_D2 = '-1' then
            begin
              if ls_D1 = '9' then
                ls_D1 := '0'
              else
                ls_D1 := IntToStr(StrToInt(ls_D1) + 1);
            end;
          end;

          // Campo livre = Sistema + Agência + Conta + Nosso número + Tipo Cobrança
          ls_CampLivr := ls_NumeAgen                                              +
                         ls_NumeCont                                              +
                         Copy(qryBoleto.FieldByName('NR_BOLETO').AsString, 4, 7)  +
                         '00033'                                                  +
                         ls_D1                                                    +
                         ls_D2;
        End

        // Se for Bradesco
        Else if (Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '237-2')  then
        Begin
          // Número da agência
          //ls_Geral := SoNumeros(qryBoleto.FieldByName('NR_AGENBANC').AsString);
          //ls_NumeAgen := StrZero(StrToInt(ls_Geral),4,0);
          ls_Geral := Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString);
          li_Posi := Pos('-', ls_Geral);
          if li_Posi > 0 then
            ls_NumeAgen := StrZeroDec(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),4,0)
          else
            ls_NumeAgen := StrZeroDec(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),4,0);

          // Número da conta
          //ls_Geral := SoNumeros(qryBoleto.FieldByName('NR_CONTA').AsString);
          ls_Geral := Trim(qryBoleto.FieldByName('NR_CONTA').AsString);
          li_Posi := Pos('-', ls_Geral);
          if li_Posi > 0 then
            ls_NumeCont := StrZeroDec(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),7,0)
          else
            ls_NumeCont := StrZeroDec(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),7,0);

          // Campo livre = Agência(4) + Carteira(2) + Nosso Número(11)->(9+2) + Conta(7) + Zero(1)
          ls_CampLivr := ls_NumeAgen +
                         '09'        +
                         Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                         ls_NumeCont + '0';
        End

        //SE FOR BIC
        Else if (copy(qryBoleto.FieldByName('NR_BANCO').AsString,0,3) = '320') then
        Begin
          // Número da agência
          //ls_Geral := SoNumeros(qryBoleto.FieldByName('NR_AGENBANC').AsString);
          //ls_NumeAgen := StrZero(StrToInt(ls_Geral),4,0);
          ls_Geral := Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString);
          li_Posi := Pos('-', ls_Geral);
          if li_Posi > 0 then
            ls_NumeAgen := StrZeroDec(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),4,0)
          else
            ls_NumeAgen := StrZeroDec(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),4,0);

          // Número da conta
          //ls_Geral := SoNumeros(qryBoleto.FieldByName('NR_CONTA').AsString);
          ls_Geral := Trim(qryBoleto.FieldByName('NR_CONTA').AsString);
          li_Posi := Pos('-', ls_Geral);

          ls_NumeCont := '0000320';

          // Campo livre = Agência(4) + Carteira(2) + Nosso Número(11)->(9+2) + Conta(7) + Zero(1)
 {         ls_CampLivr := ls_NumeAgen
                         '09'        +
                         Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                         ls_NumeCont + '0';  }
           ls_CampLivr := '4150' + '09' +
                         Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                         ls_NumeCont + '0';

        End

        // Se for HSBC
        Else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '399-9' then
        Begin
          // Número da agência
          ls_Geral := SoNumeros(qryBoleto.FieldByName('NR_AGENBANC').AsString);
          ls_NumeAgen := StrZeroDec(StrToInt(ls_Geral),4,0);

          // Número da conta
          ls_Geral := SoNumeros(qryBoleto.FieldByName('NR_CONTA').AsString);
          ls_NumeCont := StrZeroDec(StrToInt(ls_Geral),7,0);

          // Campo livre = Nosso Número(11)->(10+1) + Agência(4) + Conta(7) + Carteira(2) + Codigo do Aplicativo de Cobranca COB(1)
          ls_CampLivr := Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                         ls_NumeAgen +
                         ls_NumeCont +
                         '00'        +
                         '1';

        End
        //Banco Mercantil
        Else if Trim(copy(qryBoleto.FieldByName('NR_BANCO').AsString,1,3)) = '389' then
        Begin
          // Número da agência
          ls_NumeAgen := (qryBoleto.FieldByName('NR_AGENBANC').AsString);

          // Número da conta = codigo do cedente
          ls_NumeCont := qryBoleto.FieldByName('NR_CODICEDECONT').AsString;;

          // Campo livre = Agência(4) + Nosso Número(11) + '000049708' + '2'
          ls_CampLivr := ls_NumeAgen + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                         qryBoleto.FieldByName('NR_CODICEDECONT').AsString +
                         '2';

        End

        Else
        Begin
          // Próximo boleto
          qryBoleto.Next;

          Continue;
        End;

        // Código do banco sem o dígito verificador
        ls_NumeBanc := Copy(Trim(qryBoleto.FieldByName('NR_BANCO').AsString), 1, 3);

         // Formato de vencimento (dias entre o vencimento e a data atual)
        ls_FormVenc := StrZeroDec(DaysBetween(StrToDate('07/10/1997'),
                                           qryBoleto.FieldByName('DT_VENCBOLE').AsDateTime), 4, 0);

        // Valor do boleto sem o ponto
//        ls_ValoBole := StrZeroDec(Trunc((qryBoleto.FieldByName('VL_BOLETO').AsFloat)*100), 10, 0);
        ls_ValoBole := StrZeroDec(((qryBoleto.FieldByName('VL_BOLETO').AsFloat)*100), 10, 0);

        If  (ls_NumeBanc = '320') then
          Begin
            ls_NumeBanc:='237';
          END;

        // Calculamos o DAC
        // ls_Dac := Modulo11(ls_NumeBanc+'9'+ls_FormVenc+ls_ValoBole+ls_CampLivr, 'DAC');
        ls_Dac := Modulo11(ls_NumeBanc+'9'+ls_FormVenc+ls_ValoBole+ls_CampLivr);


        If ls_Dac = '0' then
           ls_Dac:= '1';


        // Criamos o boleto
    //    frmQRBoletoPre := TfrmQRBoletoPre.Create(Self);

        // Selecionamos a impressora para o boleto
        // frmQRBoleto.PrinterSettings.PrinterIndex := li_IndeImpr;
 *)
        // Verificamos quantas parcelas tem o pedido
 {       qryTemp.Close;
        QryTemp.SQL.Clear;
        qryTemp.SQL.Text :=
        'SELECT COUNT(*) QN_QTDEPARC FROM BOLETO'       +
        ' WHERE (ID_PEDIVEND = ''' + qryBoleto.FieldByName('ID_PEDIVEND').AsString + ''')';
        qryTemp.Open;
        li_QtdeParc := qryTemp.FieldByName('QN_QTDEPARC').AsInteger;
        qryTemp.Close;

        // Código de barras
        frmQRBoletoPre.cdbFebraban.Caption:= ls_NumeBanc + '9' + ls_Dac + ls_FormVenc + ls_ValoBole +
                                          ls_CampLivr;

        // Linha Digitável
        ls_LinhDig1 := ls_NumeBanc + '9' + Copy(ls_CampLivr, 1, 5);
        ls_DV1 := Modulo10(ls_LinhDig1);
        ls_LinhDig1 := ls_LinhDig1 + ls_DV1;
        ls_LinhDig1 := Copy(ls_LinhDig1, 1, 5) + '.' + Copy(ls_LinhDig1, 6, 5);

        ls_LinhDig2 := Copy(ls_CampLivr, 6, 10);
        ls_DV2 := Modulo10(ls_LinhDig2);
        ls_LinhDig2 := ls_LinhDig2 + ls_DV2;
        ls_LinhDig2 := Copy(ls_LinhDig2, 1, 5) + '.' + Copy(ls_LinhDig2, 6, 6);

        ls_LinhDig3 := Copy(ls_CampLivr, 16, 10);
        ls_DV3 := Modulo10(ls_LinhDig3);
        ls_LinhDig3 := ls_LinhDig3 + ls_DV3;
        ls_LinhDig3 := Copy(ls_LinhDig3, 1, 5) + '.' + Copy(ls_LinhDig3, 6, 6);
  //******************PARAR AQUI

        frmQRBoletoPre.lblCampDigi1.Caption := ls_LinhDig1;
        frmQRBoletoPre.lblCampDigi2.Caption := ls_LinhDig2;
        frmQRBoletoPre.lblCampDigi3.Caption := ls_LinhDig3;
        frmQRBoletoPre.lblCampDigi4.Caption := ls_Dac;
        frmQRBoletoPre.lblCampDigi5.Caption := ls_FormVenc + ls_ValoBole;

       if (gi_Filial=4) then
         vNomeSacador:= 'CÉU AZUL INDÚSTRIA METALÚRGICA LTDA'
       Else
         vNomeSacador:= 'CÉU AZUL ALIMENTOS LTDA';

       if  (copy(qryBoleto.FieldByName('NR_BANCO').AsString,0,3) = '320') then
          begin
           // Nome do cedente
           frmQRBoletoPre.lblCedente1.Caption := 'BICBANCO - BANCO INDUSTRIAL E COMERCIAL S/A';
           frmQRBoletoPre.lblCedente2.Caption := 'BICBANCO - BANCO INDUSTRIAL E COMERCIAL S/A';
           frmQRBoletoPre.lblCedente3.Caption := 'BICBANCO - BANCO INDUSTRIAL E COMERCIAL S/A';
           frmQRBoletoPre.LBLSACADOR.Caption  := vNomeSacador;
          END
       ELSE
         BEGIN
          // Nome do cedente
          frmQRBoletoPre.lblCedente1.Caption := vNomeSacador;
          frmQRBoletoPre.lblCedente2.Caption := vNomeSacador;
          frmQRBoletoPre.lblCedente3.Caption := vNomeSacador;
         END;
        // Se existe NF
        If qryBoleto.FieldByName('ID_NOTAFISC').AsInteger > 0 then
        Begin

          // Se houver só uma parcela
          If li_QtdeParc = 1 then
            ls_NumeDocu := qryBoleto.FieldByName('NR_NOTAFISC').AsString
          Else
            ls_NumeDocu := qryBoleto.FieldByName('NR_NOTAFISC').AsString +  '/' +
                           qryBoleto.FieldByName('NR_PARCBOLE').AsString;

          // Número do documento
          frmQRBoletoPre.lblNumeDocu1.Caption := ls_NumeDocu;
          frmQRBoletoPre.lblNumeDocu2.Caption := ls_NumeDocu;
          frmQRBoletoPre.lblNumeDocu3.Caption := ls_NumeDocu;

          // Espécie do documento
          frmQRBoletoPre.lblEspeDocu1.Caption := 'NF';
          frmQRBoletoPre.lblEspeDocu2.Caption := 'NF';
          frmQRBoletoPre.lblEspeDocu3.Caption := 'NF';

        End
        // Se não existir NF
        Else
        Begin

          // Se houver só uma parcela
          if li_QtdeParc = 1 then
            ls_NumeDocu := qryBoleto.FieldByName('ID_PEDIVEND').AsString
          else
            ls_NumeDocu := qryBoleto.FieldByName('ID_PEDIVEND').AsString +  '/' +
                           qryBoleto.FieldByName('NR_PARCBOLE').AsString;

          // Número do documento
          frmQRBoletoPre.lblNumeDocu1.Caption := ls_NumeDocu;
          frmQRBoletoPre.lblNumeDocu2.Caption := ls_NumeDocu;
          frmQRBoletoPre.lblNumeDocu3.Caption := ls_NumeDocu;

          // Espécie do documento
          frmQRBoletoPre.lblEspeDocu1.Caption := '';
          frmQRBoletoPre.lblEspeDocu2.Caption := '';
          frmQRBoletoPre.lblEspeDocu3.Caption := '';

        End;

        // Iniciamos o caption do Uso do Banco
        frmQRBoletoPre.lblUsoBanco.Caption := '';

        // Iniciamos o caption da Carteira
        frmQRBoletoPre.lblCart1.Caption := '';
        frmQRBoletoPre.lblCart2.Caption := '';
        frmQRBoletoPre.lblCart3.Caption := '';

        // Iniciamos o caption da Data de Processamento
        frmQRBoletoPre.lblDataProc1.Caption := '';
        frmQRBoletoPre.lblDataProc2.Caption := '';
        frmQRBoletoPre.lblDataProc3.Caption := '';

        // Nome e número do banco
        // Se for Banco do Brasil
        If Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '001-9' then
        Begin

          frmQRBoletoPre.lblNomeBanc1.Caption := 'Banco Do Brasil';
          frmQRBoletoPre.lblNomeBanc2.Caption := 'Banco Do Brasil';
          frmQRBoletoPre.lblNomeBanc3.Caption := 'Banco Do Brasil';

          frmQRBoletoPre.lblNumeBanc1.Caption := '|001-9|';
          frmQRBoletoPre.lblNumeBanc2.Caption := '|001-9|';
          frmQRBoletoPre.lblNumeBanc3.Caption := '|001-9|';
        End
        // Se for Banco Safra
        Else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '422-7' then
        Begin
          frmQRBoletoPre.lblNomeBanc1.Caption := 'Banco Safra SA';
          frmQRBoletoPre.lblNomeBanc2.Caption := 'Banco Safra SA';
          frmQRBoletoPre.lblNomeBanc3.Caption := 'Banco Safra SA';

          frmQRBoletoPre.lblNumeBanc1.Caption := '|422-7|';
          frmQRBoletoPre.lblNumeBanc2.Caption := '|422-7|';
          frmQRBoletoPre.lblNumeBanc3.Caption := '|422-7|';

          // Espécie do documento
          frmQRBoletoPre.lblEspeDocu1.Caption := 'DM';
          frmQRBoletoPre.lblEspeDocu2.Caption := 'DM';
          frmQRBoletoPre.lblEspeDocu3.Caption := 'DM';

          // Carteira
          frmQRBoletoPre.lblCart1.Caption := '2';
          frmQRBoletoPre.lblCart2.Caption := '2';
          frmQRBoletoPre.lblCart3.Caption := '2';

          // Emissão
          frmQRBoletoPre.lblDataProc1.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
          frmQRBoletoPre.lblDataProc2.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
          frmQRBoletoPre.lblDataProc3.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);

        end
        //SE FOR ITAÚ
        else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '341-7' then
        begin
          frmQRBoletoPre.lblNomeBanc1.Caption := 'Banco Itaú SA';
          frmQRBoletoPre.lblNomeBanc2.Caption := 'Banco Itaú SA';
          frmQRBoletoPre.lblNomeBanc3.Caption := 'Banco Itaú SA';

          frmQRBoletoPre.lblNumeBanc1.Caption := '|341-7|';
          frmQRBoletoPre.lblNumeBanc2.Caption := '|341-7|';
          frmQRBoletoPre.lblNumeBanc3.Caption := '|341-7|';

          // Espécie do documento
          frmQRBoletoPre.lblEspeDocu1.Caption := 'DP';
          frmQRBoletoPre.lblEspeDocu2.Caption := 'DP';
          frmQRBoletoPre.lblEspeDocu3.Caption := 'DP';

          // Carteira
          frmQRBoletoPre.lblCart1.Caption := '109';
          frmQRBoletoPre.lblCart2.Caption := '109';
          frmQRBoletoPre.lblCart3.Caption := '109';

          // Emissão
          frmQRBoletoPre.lblDataProc1.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
          frmQRBoletoPre.lblDataProc2.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
          frmQRBoletoPre.lblDataProc3.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);

          frmQRBoletoPre.lblLocaPaga2.caption := 'Até o Vencimento pague preferencialmente no Itaú ou Banerj';
          frmQRBoletoPre.lblLocaPaga.caption :=  'e após o Vencimento pague somente no Itaú ou Banerj';

        end
        //FIM ITAÚ

        //SE FOR BankBoston
        else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '479-0' then
        begin
          frmQRBoletoPre.lblNomeBanc1.Caption := 'BankBoston';
          frmQRBoletoPre.lblNomeBanc2.Caption := 'BankBoston';
          frmQRBoletoPre.lblNomeBanc3.Caption := 'BankBoston';

          frmQRBoletoPre.lblNumeBanc1.Caption := '|479-0|';
          frmQRBoletoPre.lblNumeBanc2.Caption := '|479-0|';
          frmQRBoletoPre.lblNumeBanc3.Caption := '|479-0|';

          // Espécie do documento
          frmQRBoletoPre.lblEspeDocu1.Caption := 'DM';
          frmQRBoletoPre.lblEspeDocu2.Caption := 'DM';
          frmQRBoletoPre.lblEspeDocu3.Caption := 'DM';

          // Carteira
          frmQRBoletoPre.lblCart1.Caption := '2';
          frmQRBoletoPre.lblCart2.Caption := '2';
          frmQRBoletoPre.lblCart3.Caption := '2';

          // Emissão
          frmQRBoletoPre.lblDataProc1.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
          frmQRBoletoPre.lblDataProc2.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
          frmQRBoletoPre.lblDataProc3.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);

          frmQRBoletoPre.lblLocaPaga.caption := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO';

        end
        //FIM BankBoston

        // Se for Banespa
        else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '033-7' then
        begin
          frmQRBoletoPre.lblNomeBanc1.Caption := 'Banespa';
          frmQRBoletoPre.lblNomeBanc2.Caption := 'Banespa';
          frmQRBoletoPre.lblNomeBanc3.Caption := 'Banespa';

          frmQRBoletoPre.lblNumeBanc1.Caption := '|033-7|';
          frmQRBoletoPre.lblNumeBanc2.Caption := '|033-7|';
          frmQRBoletoPre.lblNumeBanc3.Caption := '|033-7|';

          // Espécie do documento
          frmQRBoletoPre.lblEspeDocu1.Caption := 'DM';
          frmQRBoletoPre.lblEspeDocu2.Caption := 'DM';
          frmQRBoletoPre.lblEspeDocu3.Caption := 'DM';

          // Carteira
          frmQRBoletoPre.lblCart1.Caption := 'COB';
          frmQRBoletoPre.lblCart2.Caption := 'COB';
          frmQRBoletoPre.lblCart3.Caption := 'COB';

          // Uso do Banco
          frmQRBoletoPre.lblUsoBanco.Caption := qryBoleto.FieldByName('NM_REDUAGENBANC').AsString;

        end

        // Se for Bradesco
        else if (Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '237-2')  OR (copy(qryBoleto.FieldByName('NR_BANCO').AsString,0,3) = '320') then
        begin
          frmQRBoletoPre.lblNomeBanc1.Caption := 'Bradesco';
          frmQRBoletoPre.lblNomeBanc2.Caption := 'Bradesco';
          frmQRBoletoPre.lblNomeBanc3.Caption := 'Bradesco';

          frmQRBoletoPre.lblNumeBanc1.Caption := '|237-2|';
          frmQRBoletoPre.lblNumeBanc2.Caption := '|237-2|';
          frmQRBoletoPre.lblNumeBanc3.Caption := '|237-2|';

          // Espécie do documento
          frmQRBoletoPre.lblEspeDocu1.Caption := 'DM';
          frmQRBoletoPre.lblEspeDocu2.Caption := 'DM';
          frmQRBoletoPre.lblEspeDocu3.Caption := 'DM';

          // Carteira
          frmQRBoletoPre.lblCart1.Caption := '009';
          frmQRBoletoPre.lblCart2.Caption := '009';
          frmQRBoletoPre.lblCart3.Caption := '009';

          // Local de pagamento
          frmQRBoletoPre.lblLocaPaga.Caption := 'PAGÁVEL PREFERENCIALMENTE EM QUALQUER AGENCIA BRADESCO';

          // Emissão
          frmQRBoletoPre.lblDataProc1.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
          frmQRBoletoPre.lblDataProc2.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
          frmQRBoletoPre.lblDataProc3.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
        end

        // Se for HSBC
        else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '399-9' then
        begin
          frmQRBoletoPre.lblNomeBanc1.Caption := 'HSBC';
          frmQRBoletoPre.lblNomeBanc2.Caption := 'HSBC';
          frmQRBoletoPre.lblNomeBanc3.Caption := 'HSBC';

          frmQRBoletoPre.lblNumeBanc1.Caption := '|399-9|';
          frmQRBoletoPre.lblNumeBanc2.Caption := '|399-9|';
          frmQRBoletoPre.lblNumeBanc3.Caption := '|399-9|';

          // Carteira
          frmQRBoletoPre.lblCart1.Caption := 'CSB';
          frmQRBoletoPre.lblCart2.Caption := 'CSB';
          frmQRBoletoPre.lblCart3.Caption := 'CSB';

          // Local de pagamento
          frmQRBoletoPre.lblLocaPaga.Caption := 'PAGAR PREFERENCIALMENTE EM AGENCIA HSBC';

          // Logotipo do banco
          frmQRBoletoPre.imgLogoBanc1.Visible := True;
          frmQRBoletoPre.imgLogoBanc2.Visible := True;
          frmQRBoletoPre.imgLogoBanc3.Visible := True;

          // Apagar nome do Banco
          frmQRBoletoPre.lblNomeBanc1.Visible := False;
          frmQRBoletoPre.lblNomeBanc2.Visible := False;
          frmQRBoletoPre.lblNomeBanc3.Visible := False;

          // Espécie do documento
          frmQRBoletoPre.lblEspeDocu1.Caption := 'PD';
          frmQRBoletoPre.lblEspeDocu2.Caption := 'PD';
          frmQRBoletoPre.lblEspeDocu3.Caption := 'PD';
        end;

        // Espécie
        frmQRBoletoPre.lblEspe1.Caption := 'Real';
        frmQRBoletoPre.lblEspe2.Caption := 'Real';
        frmQRBoletoPre.lblEspe3.Caption := 'Real';

        // Agência e Código do cedente
        // Se for o Banespa
        if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '033-7' then
        begin
          frmQRBoletoPre.lblAgencia1.Caption := Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString) + ' / ' +
                                             qryBoleto.FieldByName('NR_CODICEDECONT').AsString;
          frmQRBoletoPre.lblAgencia2.Caption := Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString) + ' / ' +
                                             qryBoleto.FieldByName('NR_CODICEDECONT').AsString;
          frmQRBoletoPre.lblAgencia3.Caption := Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString) + ' / ' +
                                             qryBoleto.FieldByName('NR_CODICEDECONT').AsString;
        end

        // Se for BankBoston
        else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '479-0' then
        begin
           frmQRBoletoPre.lblAgencia1.Caption := '6'+Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString) + '2/2061466';
           frmQRBoletoPre.lblAgencia2.Caption := '6'+Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString) + '2/2061466';
           frmQRBoletoPre.lblAgencia3.Caption := '6'+Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString) + '2/2061466';
        end


        // Se for banco Safra
        else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '422-7' then
        begin
          frmQRBoletoPre.lblAgencia1.Caption := ls_NumeAgen + ' / ' +
                                             qryBoleto.FieldByName('NR_CONTA').AsString;
          frmQRBoletoPre.lblAgencia2.Caption := ls_NumeAgen + ' / ' +
                                             qryBoleto.FieldByName('NR_CONTA').AsString;
          frmQRBoletoPre.lblAgencia3.Caption := ls_NumeAgen + ' / ' +
                                             qryBoleto.FieldByName('NR_CONTA').AsString;
        end

        // Se for banco BIC
        else if (copy(qryBoleto.FieldByName('NR_BANCO').AsString,0,3) = '320')  then
        begin
          frmQRBoletoPre.lblAgencia1.Caption := '4150-5/0000320-4';
          frmQRBoletoPre.lblAgencia2.Caption := '4150-5/0000320-4';
          frmQRBoletoPre.lblAgencia3.Caption := '4150-5/0000320-4';

          frmQRBoletoPre.lblLocaPaga.Caption := 'ATÉ O VENCIMENTO PAGÁVEL EM QUALQUER AGÊNCIA BANCÁRIA.';
          frmQRBoletoPre.lblUsoBanco.Caption := 'EXPRESSA';
        end

        // Se forem outros bancos
        else
        begin
          frmQRBoletoPre.lblAgencia1.Caption := Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString) + ' / ' +
                                             qryBoleto.FieldByName('NR_CONTA').AsString;
          frmQRBoletoPre.lblAgencia2.Caption := Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString) + ' / ' +
                                             qryBoleto.FieldByName('NR_CONTA').AsString;
          frmQRBoletoPre.lblAgencia3.Caption := Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString) + ' / ' +
                                             qryBoleto.FieldByName('NR_CONTA').AsString;
        end;

        // Nosso número (n. do boleto)
        // Se for Bradesco
        if (Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '237-2') then
        begin
          frmQRBoletoPre.lblNumeBole1.Caption := '09/' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 12, 1);
          frmQRBoletoPre.lblNumeBole2.Caption := Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 12, 1);
          frmQRBoletoPre.lblNumeBole3.Caption := '09/' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 12, 1);
        end

        // Banco Bic
        Else if  (copy(qryBoleto.FieldByName('NR_BANCO').AsString,0,3) = '320') then
        begin
          frmQRBoletoPre.lblNumeBole1.Caption := '09/' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 12, 1);
          frmQRBoletoPre.lblNumeBole2.Caption := Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 12, 1);
          frmQRBoletoPre.lblNumeBole3.Caption := '09/' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 12, 1);
        end

        //se for itaú
        else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '341-7' then
        begin
          frmQRBoletoPre.lblNumeBole1.Caption := '109/' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 8) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 9, 1);
          frmQRBoletoPre.lblNumeBole2.Caption := Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 8) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 9, 1);
          frmQRBoletoPre.lblNumeBole3.Caption := '109/' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 8) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 9, 1);
        end
        //Fim itaú
       // Se for BancBoston
        else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '479-0' then
        begin
          frmQRBoletoPre.lblNumeBole1.Caption := Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 8) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 9, 1);
          frmQRBoletoPre.lblNumeBole2.Caption := Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 8) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 9, 1);
          frmQRBoletoPre.lblNumeBole3.Caption := Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 8) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 9, 1);
        end

        // Se for Banco Safra
        else if Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '422-7' then
        begin
          frmQRBoletoPre.lblNumeBole1.Caption := Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 8) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 9, 1);
          frmQRBoletoPre.lblNumeBole2.Caption := Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 8) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 9, 1);
          frmQRBoletoPre.lblNumeBole3.Caption := Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 8) +
                                              '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 9, 1);
        end
        // Outros bancos
        else
        begin
          frmQRBoletoPre.lblNumeBole1.Caption := qryBoleto.FieldByName('NR_BOLETO').AsString;
          frmQRBoletoPre.lblNumeBole2.Caption := qryBoleto.FieldByName('NR_BOLETO').AsString;
          frmQRBoletoPre.lblNumeBole3.Caption := qryBoleto.FieldByName('NR_BOLETO').AsString;
        end;

        // Vencimento
        frmQRBoletoPre.lblDataVenc1.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_VENCBOLE').AsDateTime);
        frmQRBoletoPre.lblDataVenc2.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_VENCBOLE').AsDateTime);
        frmQRBoletoPre.lblDataVenc3.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_VENCBOLE').AsDateTime);

        // Valor do boleto
        frmQRBoletoPre.lblValoDocu1.Caption := Format('%m', [qryBoleto.FieldByName('VL_BOLETO').AsCurrency]);
        frmQRBoletoPre.lblValoDocu2.Caption := Format('%m', [qryBoleto.FieldByName('VL_BOLETO').AsCurrency]);
        frmQRBoletoPre.lblValoDocu3.Caption := Format('%m', [qryBoleto.FieldByName('VL_BOLETO').AsCurrency]);

        // Emissão
        frmQRBoletoPre.lblDataDocu1.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
        frmQRBoletoPre.lblDataDocu2.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
        frmQRBoletoPre.lblDataDocu3.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);


        // Se houver multa
        if qryBoleto.FieldByName('VL_MULTBOLE').AsFloat > 0 then
        begin
          frmQRBoletoPre.lblMoraJuro1.Caption := Format('%m', [qryBoleto.FieldByName('VL_MULTBOLE').AsCurrency]);
          frmQRBoletoPre.lblMoraJuro2.Caption := Format('%m', [qryBoleto.FieldByName('VL_MULTBOLE').AsCurrency]);
          frmQRBoletoPre.lblMoraJuro3.Caption := Format('%m', [qryBoleto.FieldByName('VL_MULTBOLE').AsCurrency]);
        end
        else
        begin
          frmQRBoletoPre.lblMoraJuro1.Caption := '';
          frmQRBoletoPre.lblMoraJuro2.Caption := '';
          frmQRBoletoPre.lblMoraJuro3.Caption := '';
        end;

        // Se existe NF
        //.... mudou para cima ^

        // Aceite
        frmQRBoletoPre.lblAceite1.Caption := 'N';
        frmQRBoletoPre.lblAceite2.Caption := 'N';
        frmQRBoletoPre.lblAceite3.Caption := 'N';

        // Primeira instrução
        frmQRBoletoPre.lblLin1Inst1.Caption := 'Valores expressos em Reais';
        frmQRBoletoPre.lblLin1Inst2.Caption := 'Valores expressos em Reais';
        frmQRBoletoPre.lblLin1Inst3.Caption := 'Valores expressos em Reais';

        // Se há cobrança de juros diarios
        if qryBoleto.FieldByName('VL_MORADIABOLE').AsFloat > 0 then
        begin
          frmQRBoletoPre.lblLin2Inst1.Caption := 'Não dispensar encargos de mora de ' +
                                             Format('%m', [qryBoleto.FieldByName('VL_MORADIABOLE').AsFloat]) +
                                             ' por dia de atraso';
          frmQRBoletoPre.lblLin2Inst2.Caption := 'Não dispensar encargos de mora de ' +
                                             Format('%m', [qryBoleto.FieldByName('VL_MORADIABOLE').AsFloat]) +
                                             ' por dia de atraso';
          frmQRBoletoPre.lblLin2Inst3.Caption := 'Não dispensar encargos de mora de ' +
                                             Format('%m', [qryBoleto.FieldByName('VL_MORADIABOLE').AsFloat]) +
                                             ' por dia de atraso';
        end
        else
        begin
          frmQRBoletoPre.lblLin2Inst1.Caption := '';
          frmQRBoletoPre.lblLin2Inst2.Caption := '';
          frmQRBoletoPre.lblLin2Inst3.Caption := '';
        end;

        // Se há instrução de protesto
        if qryBoleto.FieldByName('QN_DIASPROTBOLE').AsInteger > 0 then
        begin
          frmQRBoletoPre.lblLin3Inst1.Caption := 'Título será protestado no ' +
                                             qryBoleto.FieldByName('QN_DIASPROTBOLE').AsString +
                                             'o. dia útil do vencimento';
          frmQRBoletoPre.lblLin3Inst2.Caption := 'Título será protestado no ' +
                                             qryBoleto.FieldByName('QN_DIASPROTBOLE').AsString +
                                             'o. dia útil do vencimento';
          frmQRBoletoPre.lblLin3Inst3.Caption := 'Título será protestado no ' +
                                             qryBoleto.FieldByName('QN_DIASPROTBOLE').AsString +
                                             'o. dia útil do vencimento';
        end
        else
        begin
          frmQRBoletoPre.lblLin3Inst1.Caption := '';
          frmQRBoletoPre.lblLin3Inst2.Caption := '';
          frmQRBoletoPre.lblLin3Inst3.Caption := '';
        end;

        // Sacado
        frmQRBoletoPre.lblSacado1.Caption := qryBoleto.FieldByName('NM_CLIENTE').AsString;
        frmQRBoletoPre.lblSacado2.Caption := qryBoleto.FieldByName('NM_CLIENTE').AsString;
        frmQRBoletoPre.lblSacado3.Caption := qryBoleto.FieldByName('NM_CLIENTE').AsString;

        // CNPJ/CPF
        If qryBoleto.FieldByName('NR_CNPJCLIE').AsString <> '' then
           frmQRBoletoPre.lblCNPJ1.Caption := 'CNPJ/CPF: ' + qryBoleto.FieldByName('NR_CNPJCLIE').AsString
        Else
           frmQRBoletoPre.lblCNPJ1.Caption := 'CNPJ/CPF: ' + qryBoleto.FieldByName('NR_CPFCLIE').AsString;

        if qryBoleto.FieldByName('NR_CNPJCLIE').AsString <> '' then
           frmQRBoletoPre.lblCNPJ2.Caption := 'CNPJ/CPF: ' + qryBoleto.FieldByName('NR_CNPJCLIE').AsString
        Else
           frmQRBoletoPre.lblCNPJ2.Caption := 'CNPJ/CPF: ' + qryBoleto.FieldByName('NR_CPFCLIE').AsString;

        if qryBoleto.FieldByName('NR_CNPJCLIE').AsString <> '' then
           frmQRBoletoPre.lblCNPJ3.Caption := 'CNPJ/CPF: ' + qryBoleto.FieldByName('NR_CNPJCLIE').AsString
        Else
           frmQRBoletoPre.lblCNPJ3.Caption := 'CNPJ/CPF: ' + qryBoleto.FieldByName('NR_CPFCLIE').AsString;

        // Pedido
        frmQRBoletoPre.lblNumePedi.Caption := qryBoleto.FieldByName('ID_PEDIVEND').AsString;

        // Placa
        frmQRBoletoPre.lblNumePlac.Caption := qryBoleto.FieldByName('GN_PLACVEICTRAN').AsString;

        // Dados do cliente
        frmQRBoletoPre.lblCliente.Caption := qryBoleto.FieldByName('ID_CLIENTE').AsString + ' - '+
                                          qryBoleto.FieldByName('NM_CLIENTE').AsString;
        frmQRBoletoPre.lblTeleClie.Caption := 'Fone.: ' + qryBoleto.FieldByName('NR_FONECLIE').AsString;

        // Dados do vendedor
        frmQRBoletoPre.lblVendedor.Caption := qryBoleto.FieldByName('ID_VENDEDOR').AsString + ' - '+
                                           qryBoleto.FieldByName('NM_VENDEDOR').AsString;
        frmQRBoletoPre.lblTeleVend.Caption := 'Fone.: ' + qryBoleto.FieldByName('NR_FONEVEND').AsString;

        // Numeração
        frmQRBoletoPre.lblNumeracao.Caption := qryBoleto.FieldByName('NR_PARCBOLE').AsString + '/' +
                                            IntToStr(li_QtdeParc);


        // Endereço
        frmQRBoletoPre.lblEndereco1.Caption := qryBoleto.FieldByName('SG_TIPOLOGR').AsString + ' '  +
                                            qryBoleto.FieldByName('NM_LOGRENDECLIE').AsString + ', ' +
                                            qryBoleto.FieldByName('NR_LOGRENDECLIE').AsString;
        frmQRBoletoPre.lblEndereco3.Caption := qryBoleto.FieldByName('SG_TIPOLOGR').AsString + ' '  +
                                            qryBoleto.FieldByName('NM_LOGRENDECLIE').AsString + ', ' +
                                            qryBoleto.FieldByName('NR_LOGRENDECLIE').AsString;

        // Bairro
        frmQRBoletoPre.lblBairro1.Caption := qryBoleto.FieldByName('NM_BAIRRO').AsString;
        frmQRBoletoPre.lblBairro3.Caption := qryBoleto.FieldByName('NM_BAIRRO').AsString;

        // CEP
        frmQRBoletoPre.lblCEP1.Caption := 'Cep:' + Copy(qryBoleto.FieldByName('NR_CEPENDECLIE').AsString, 1, 5) + '-' +
                                                Copy(qryBoleto.FieldByName('NR_CEPENDECLIE').AsString, 6, 3);
        frmQRBoletoPre.lblCEP3.Caption := 'Cep:' + Copy(qryBoleto.FieldByName('NR_CEPENDECLIE').AsString, 1, 5) + '-' +
                                                Copy(qryBoleto.FieldByName('NR_CEPENDECLIE').AsString, 6, 3);

        // Cidade
        frmQRBoletoPre.lblCidade1.Caption := qryBoleto.FieldByName('NM_CIDADE').AsString;
        frmQRBoletoPre.lblCidade3.Caption := qryBoleto.FieldByName('NM_CIDADE').AsString;

        // Estado
        frmQRBoletoPre.lblEstado1.Caption := qryBoleto.FieldByName('SG_ESTADO').AsString;
        frmQRBoletoPre.lblEstado3.Caption := qryBoleto.FieldByName('SG_ESTADO').AsString;

        // Inscrição Estadual/RG
        if qryBoleto.FieldByName('NR_INSCESTACLIE').AsString <> '' then
           frmQRBoletoPre.lblInscEsta1.Caption := 'INSC/RG: ' + qryBoleto.FieldByName('NR_INSCESTACLIE').AsString
        Else
           frmQRBoletoPre.lblInscEsta1.Caption := 'INSC/RG: ' + qryBoleto.FieldByName('NR_RGCLIE').AsString;

        if qryBoleto.FieldByName('NR_INSCESTACLIE').AsString <> '' then
          frmQRBoletoPre.lblInscEsta3.Caption := 'INSC/RG: ' + qryBoleto.FieldByName('NR_INSCESTACLIE').AsString
        Else
          frmQRBoletoPre.lblInscEsta3.Caption := 'INSC/RG: ' + qryBoleto.FieldByName('NR_RGCLIE').AsString;

        // Imprimimos o boleto e destruimos o objeto
//        try
//         If VisuImpri = 'V' then
//           begin
            frmQRBoletoPre.RLReport1.Preview;
//           end
//         Else
//           frmQRBoletoPre.RLReport1.Print;

//       Finally
 //        If VisuImpri <> 'V' then
 //          begin
//            frmQRBoletoPre.RLReport1.Free;
//           end;
         VisuImpri:= '';
//       End;

        // Ajustamos o status do boleto
        qryTemp.Close;
        qryTemp.SQL.Clear;
        qryTemp.SQL.Text :=
        'UPDATE BOLETO                                                               '+
        '   SET FL_IMPRBOLE = ''S''                                                  '+
        ' WHERE (ID_BOLETO = ''' + qryBoleto.FieldByName('ID_BOLETO').AsString + ''')';
        qryTemp.ExecSQL;

        // Destruimos a query temporaria
        qryTemp.Close;


        Application.ProcessMessages;

        // Próximo boleto
        qryBoleto.Next;

        //***************PAROU ATÉ AQUI

      end;

    end;
  end;
  }
end;

procedure TfrmImpDocPed.VisualizarNroNotas1Click(Sender: TObject);
begin
 try
   FrmNumNota:=TFrmNumNota.Create(Self);
   FrmNumNota.Show;
 except;
   FrmNumNota.Free;
 end;

end;

procedure TfrmImpDocPed.GerarBoletos1Click(Sender: TObject);
var
  lb_RegiAtua    : TBookMark;
  li_SequBole: Int64;

  li_BoleTipoDocu, li_Loop, li_LoopParc, li_NumeNotaFisc, vlLinha, li_Posi, N, i: Integer;

  lr_ValoTotaPediVend, lr_ValoBole, lr_ValoPrimParcBole, lr_CentBole, lr_ValoNotaFisc,
  lr_PercComi, lr_PercFixo, lr_PercTotaComi, lr_ValoComi, lr_PercComiTota: Double;

  ld_DataFatu, ld_DataBole, ld_DtVenc , ld_DtVencAnt, ld_DataNotaFisc: TDateTime;

  ls_SequBole, ls_ImprBole, ls_NumeBole, ls_NumeTitu, ls_NumeNotaFisc,
  ls_Moeda, ls_Geral, ls_NumeAgen : String;

  lb_PagaComi, lb_ComiVend, lb_ComiVendClie, Marca_BoleImpresso, lb_NotaCanc,vnovoboleto: Boolean;

  lr_CotaDia: Real;

begin
  if grdDados.SelectedRows.Count = 0 then
  begin
    Application.MessageBox('Selecione um ou mais pedidos para Geração da Nota Fiscal.', 'Comercial Dacar - Geração dos Boletos', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  Marca_BoleImpresso := false;

  // Verificamos se o pedido ja passou pelo processo de geraçao de documentos
  if QImpDocPedDT_FATUPEDIVEND.AsString = '' then
  begin
    Application.MessageBox(PChar('O pedido '+ IntToStr(QImpDocPed['ID_PEDIVEND']) + ' não passou pelo processo de geração de documentos.'),
     'Comercial Dacar - Geração dos Boletos', MB_OK + MB_ICONINFORMATION);
    Exit;
  end
  else
  begin
    ld_DataFatu := QImpDocPed['DT_FATUPEDIVEND'];
  end;

  // Não gera boletos se a nota nao foi transmitida
  if QImpDocPedNFE_CHAVE.AsString = '' then
  begin
    Application.MessageBox(PChar('Não é possível gerar o Boleto para a Nota Fiscal ' + QImpDocPedNR_NOTAFISC.AsString + ', pois a mesma não foi transmitida.'), 'Comercial Dacar - Geração dos Boletos' , MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if Application.MessageBox('Confirma geração dos boletos?                              ', '', MB_YESNO) = IDNO then
  begin
    Exit;
  end;

  // Marcamos o registro atual
  lb_RegiAtua := QImpDocPed.GetBookmark;

  //Verifica a Data do Sistema
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT SYSDATE FROM DUAL';
  qryTemp.Open;

  if not(qryTemp.IsEmpty) then
    ld_DataHora := qryTemp.FieldByName('SYSDATE').AsDateTime;

  qryTemp.close;

  for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
  begin
    grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

    QryTemp.Close;
    QryTemp.SQL.Clear;
    qryTemp.SQL.Text := 'SELECT SISTEMA_PARAMETRO.ID_TIPODOCU_BOLETO, SISTEMA_PARAMETRO.DT_FATUDOCU FROM SISTEMA_PARAMETRO SISTEMA_PARAMETRO';
    qryTemp.Open;

    li_BoleTipoDocu := qryTemp.FieldByName('ID_TIPODOCU_BOLETO').AsInteger;

     if not (li_BoleTipoDocu > 0) then
    begin
      Application.MessageBox('É necessáio especificar nos parâmetros do sistema ' +
                 'qual é o Código do "Boleto" em Tipos de Documentos', 'Comercial Dacar - Geração dos Boletos', MB_OK + MB_ICONINFORMATION);
      qryTemp.Close;
      Exit;
    end;

    QryTemp.Close;
    QryTemp.SQL.Clear;
    qryTemp.SQL.Text := 'SELECT FL_EMITBOLECONT FROM CONTA WHERE ID_CONTA = '+ FloatToStr(QImpDocPed.FieldByName('ID_CONTA').AsFloat) ;
    qryTemp.Open;

    if (qryTemp.FieldByName('fl_emitbolecont').AsString = 'N') then
    begin
      Application.MessageBox('Esta conta não está liberada para emitir Boletos.', 'Comercial Dacar - Geração dos Boletos', MB_OK + MB_ICONINFORMATION);
      qryTemp.Close;
      Continue;
    end;

    QryTemp.Close;
    QryTemp.SQL.Clear;
    qryTemp.SQL.Text := 'SELECT ID_BOLETO FROM BOLETO WHERE ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + '';
    qryTemp.Open;

    if not qryTemp.IsEmpty then
    begin
      if Application.MessageBox(PChar('Já existe um Boleto para o pedido: ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + #10+
                                'Confirma nova emissão?'), 'Comercial Dacar - Geração dos Boletos', MB_YESNO) = IDNO then
      begin
        qryTemp.Close;
        Continue;
      end;
    end;

    QryTemp.Close;
    QryTemp.SQL.Clear;
    qryTemp.SQL.Text := 'SELECT * FROM CA_TITUREC WHERE RNUMEDOCU = ''' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + '''';
    qryTemp.Open;

    if not qryTemp.IsEmpty then
    begin
      Application.MessageBox(PChar('Já existe lançamento de Contas a Receber para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + '.' + #10 +
                             'Não é possível emitir novo Boleto.'), 'Comercial Dacar - Geração dos Boletos', MB_OK + MB_ICONINFORMATION);
      qryTemp.Close;
      Continue;
    end;

    lr_CentBole := 0;
    lr_ValoBole := 0;
    lr_ValoTotaPediVend := 0;

    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text := 'SELECT FL_IMPRTIPOPEDIVENDTIPODOCU '+
                        'FROM PEDIDO_VENDA_TIPO_DOCU_TIPO Pedido_venda_tipo_docu_tipo '+
                        'WHERE (Pedido_venda_tipo_docu_tipo.ID_TIPOPEDIVEND = ' + QImpDocPed.FieldByName('ID_TIPOPEDIVEND').AsString + ')'+
                        'AND (Pedido_venda_tipo_docu_tipo.ID_TIPODOCU = ' + IntToStr(li_BoleTipoDocu) + ')                          ';
    qryTemp.Open;
    ls_ImprBole := qryTemp.FieldByName('FL_IMPRTIPOPEDIVENDTIPODOCU').AsString;
    qryTemp.Close;

    if (ls_ImprBole = 'S') and (QImpDocPed.FieldByName('ID_SITUCOBR').AsString = '2') then
    begin
      if (QImpDocPed['FL_STATPEDIVEND'] = 'EX') or (QImpDocPed['FL_STATPEDIVEND'] = 'FE') then
      begin
        QryTemp.Close;
        QryTemp.SQL.Clear;
        QryTemp.SQL.Text := 'SELECT SUM(NVL(Pedido_venda_item.VL_UNITITEMPEDIVEND, 0) * NVL(Pedido_venda_item.QN_PESOPADREXPEITEMPEDIVEND, 0)) AS VL_TOTAPEDIVEND '+
                            '  FROM PEDIDO_VENDA_ITEM Pedido_venda_item,                                                                                          '+
                            '       PEDIDO_VENDA Pedido_venda,                                                                                                    '+
                            '       TIPO_OPER_PEDI_VEND_TIPO Tipo_oper_pedi_vend_tipo,                                                                            '+
                            '       OPERACAO_TIPO Operacao_tipo                                                                                                   '+
                            ' WHERE (Pedido_venda_item.ID_PEDIVEND = Pedido_venda.ID_PEDIVEND)                                                                    '+
                            '   AND (Pedido_venda.ID_TIPOPEDIVEND = Tipo_oper_pedi_vend_tipo.ID_TIPOPEDIVEND)                                                     '+
                            '   AND (Tipo_oper_pedi_vend_tipo.ID_TIPOOPER = Operacao_tipo.ID_TIPOOPER)                                                            '+
                            '   AND (Operacao_tipo.FL_GERAFINATIPOOPER = ''S'')                                                                                   '+
                            '   AND (Pedido_venda_item.ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ')                                         ';

      end
      else
      begin
        QryTemp.Close;
        QryTemp.SQL.Clear;
        QryTemp.SQL.Text := 'SELECT SUM(NVL(Pedido_venda_item.VL_UNITITEMPEDIVEND, 0) * NVL(Pedido_venda_item.QN_PESOITEMPEDIVEND, 0)) AS VL_TOTAPEDIVEND         '+
                            '  FROM PEDIDO_VENDA_ITEM Pedido_venda_item,                                                                                          '+
                            '       PEDIDO_VENDA Pedido_venda,                                                                                                    '+
                            '       TIPO_OPER_PEDI_VEND_TIPO Tipo_oper_pedi_vend_tipo,                                                                            '+
                            '       OPERACAO_TIPO Operacao_tipo                                                                                                   '+
                            ' WHERE (Pedido_venda_item.ID_PEDIVEND = Pedido_venda.ID_PEDIVEND)                                                                    '+
                            '   AND (Pedido_venda.ID_TIPOPEDIVEND = Tipo_oper_pedi_vend_tipo.ID_TIPOPEDIVEND)                                                     '+
                            '   AND (Tipo_oper_pedi_vend_tipo.ID_TIPOOPER = Operacao_tipo.ID_TIPOOPER)                                                            '+
                            '   AND (Operacao_tipo.FL_GERAFINATIPOOPER = ''S'')                                                                                   '+
                            '   AND (Pedido_venda_item.ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ')                                       ';
      end;

      qryTemp.Open;
      lr_ValoTotaPediVend := qryTemp.FieldByName('VL_TOTAPEDIVEND').AsFloat;
      qryTemp.Close;

      if lr_ValoTotaPediVend > 0 then
      begin
        qryTempFormPaga.close;
        qryTempFormPaga.sql.clear;
        qryTempFormPaga.SQL.Text := 'SELECT Forma_pagamento.EMPRESA,                                                            '+
                                    '       Forma_pagamento.FILIAL,                                                             '+
                                    '       Forma_pagamento.ID_FORMPAGA,                                                        '+
                                    '       Forma_pagamento.NM_FORMPAGA,                                                        '+
                                    '       Forma_pagamento.QN_PARCFORMPAGA,                                                    '+
                                    '       Forma_pagamento.QN_DIASTOLEFORMPAGA,                                                '+
                                    '       Forma_pagamento.PC_TOLEVALOFORMPAGA,                                                '+
                                    '       Forma_pagamento.FL_CENTPRIMFORMPAGA,                                                '+
                                    '       Forma_pagamento.FL_FORMPAGA,                                                        '+
                                    '       Forma_pagamento.FX_FORMPAGA                                                         '+
                                    '  FROM FORMA_PAGAMENTO Forma_pagamento                                                     '+
                                    ' WHERE (Forma_pagamento.ID_FORMPAGA = ' + QImpDocPed.FieldByName('ID_FORMPAGA').AsString + ') ';
        qryTempFormPaga.Open;

        qryTempInstCobr.close;
        qryTempInstCobr.sql.clear;
        qryTempInstCobr.SQL.Text := 'SELECT Cobranca_instrucao.EMPRESA,                                                           '+
                                    '       Cobranca_instrucao.FILIAL,                                                            '+
                                    '       Cobranca_instrucao.ID_INSTCOBR,                                                       '+
                                    '       Cobranca_instrucao.NM_INSTCOBR,                                                       '+
                                    '       Cobranca_instrucao.PC_JURODIARINSTCOBR,                                               '+
                                    '       Cobranca_instrucao.FL_TIPOJUROINSTCOBR,                                               '+
                                    '       Cobranca_instrucao.QN_DIASTOLEJUROINSTCOBR,                                           '+
                                    '       Cobranca_instrucao.PC_MULTINSTCOBR,                                                   '+
                                    '       Cobranca_instrucao.QN_DIASTOLEMULTINSTCOBR,                                           '+
                                    '       Cobranca_instrucao.FL_PROTINSTCOBR,                                                   '+
                                    '       Cobranca_instrucao.QN_DIASTOLEPROTINSTCOBR,                                           '+
                                    '       Cobranca_instrucao.GN_TEXTPROTINSTCOBR,                                               '+
                                    '       Cobranca_instrucao.QN_DIASTOLEDESCINSTCOBR,                                           '+
                                    '       Cobranca_instrucao.QN_DIASTOLERECEINSTCOBR,                                           '+
                                    '       Cobranca_instrucao.FL_AVISDEBIAUTOINSTCOBR,                                           '+
                                    '       Cobranca_instrucao.GN_OBSEINSTCOBR,                                                   '+
                                    '       Cobranca_instrucao.FX_INSTCOBR                                                        '+
                                    '  FROM COBRANCA_INSTRUCAO Cobranca_instrucao                                                 '+
                                    ' WHERE (Cobranca_instrucao.ID_INSTCOBR = ' + QImpDocPed.FieldByName('ID_INSTCOBR').AsString + ')';
        qryTempInstCobr.Open;

        qryTempFormPagaParc.close;
        qryTempFormPagaParc.sql.clear;
        qryTempFormPagaParc.SQL.Text := 'SELECT Forma_pagamento_parcela.EMPRESA,                                                           '+
                                        '       Forma_pagamento_parcela.FILIAL,                                                            '+
                                        '       Forma_pagamento_parcela.ID_PARCFORMPAGA,                                                   '+
                                        '       Forma_pagamento_parcela.ID_FORMPAGA,                                                       '+
                                        '       Forma_pagamento_parcela.NR_PARCFORMPAGA,                                                   '+
                                        '       Forma_pagamento_parcela.PC_PARCFORMPAGA,                                                   '+
                                        '       Forma_pagamento_parcela.QN_DIASPARCFORMPAGA,                                               '+
                                        '       Forma_pagamento_parcela.FX_PARCFORMPAGA                                                    '+
                                        '  FROM FORMA_PAGAMENTO_PARCELA Forma_pagamento_parcela                                            '+
                                        ' WHERE (Forma_pagamento_parcela.ID_FORMPAGA = ' + QImpDocPed.FieldByName('ID_FORMPAGA').AsString   + ' ) ' +
                                        ' ORDER BY TO_NUMBER(Forma_pagamento_parcela.NR_PARCFORMPAGA) ' ;
        qryTempFormPagaParc.Open;
        qryTempFormPagaParc.First;

        for li_LoopParc := 1 to qryTempFormPaga['QN_PARCFORMPAGA'] do
        begin
          // Calculamos o valor do boleto
          lr_ValoBole := ArredondaDecimal( (lr_ValoTotaPediVend * qryTempFormPagaParc.FieldByName('PC_PARCFORMPAGA').AsFloat)/100,2);

          // Se os centavos forem para a primeira parcela
          if qryTempFormPaga['FL_CENTPRIMFORMPAGA'] = 'S' then
          begin
            // Guardamos o valor dos centavos
            lr_CentBole := lr_CentBole + (lr_ValoBole - Int(lr_ValoBole));

            // Calculamos o valor do boleto sem os centavos
            lr_ValoBole := Int(lr_ValoBole);

            // Se for a primeira parcela
            if li_LoopParc = 1 then
            begin
              // Guardamos o valor da primeira parcela
              lr_ValoPrimParcBole := lr_ValoBole;
            end;
          end;

          // Ajustamos a variável dos erros
          us_MensErro := 'Obtenção dos Dados para os Boletos (Geração do Sequencial).';

          // Calculamos o Sequencial do boleto
          QryTemp.Close;
          QryTemp.SQL.Clear;
          qryTemp.SQL.Text := 'SELECT NR_BOLECONT,                                                       '+
                              '       NR_SEQUBOLECONT,                                                   '+
                              '       VL_MAXSEQUBOLECONT, BOL_CARTEIRA                                   '+
                              '  FROM CONTA Conta                                                        '+
                              ' WHERE (Conta.ID_CONTA = ' + QImpDocPed.FieldByName('ID_CONTA').AsString + ')';
          qryTemp.Open;

          If  (qryTemp.FieldByName('NR_BOLECONT').AsString = '0') AND (qryTemp.FieldByName('BOL_CARTEIRA').AsString = '0')  then
             Marca_BoleImpresso := true;

          // Guardamos o valor do último NR_BOLECONT
          li_SequBole := StrToInt64(Trim(qryTemp.FieldByName('NR_SEQUBOLECONT').AsString));

          // Iniciamos a variavel
          ls_NumeBole := '';

          // Verificamos se o sequencial atingiu o valor maximo
          if li_SequBole >= qryTemp.FieldByName('VL_MAXSEQUBOLECONT').Value then
          begin
            // Ajustamos a variável dos erros
            us_MensErro := 'Obtenção dos Dados para os Boletos (Limite do Sequencial).';

            Raise Exception.Create('');
          end;

          // Geramos o numero do boleto se o sequencial for informado
          if li_SequBole > 0 then
          begin
            ls_Geral := Trim(QImpDocPed.FieldByName('NR_AGENBANC').AsString);
            li_Posi := Pos('-', ls_Geral);

            If li_Posi > 0 then
              ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, li_Posi-1)),4,0)
            else
              ls_NumeAgen := StrZerodec(StrToInt(Copy(ls_Geral, 1, Length(ls_Geral)-1)),4,0);

            ls_NumeBole := NossoNumero(Trim(qryTemp.FieldByName('NR_BOLECONT').AsString),
                                       Trim(qryTemp.FieldByName('NR_SEQUBOLECONT').AsString),
                                       Copy(Trim(QImpDocPed.FieldByName('NR_BANCO').AsString), 1, 3),
                                       ls_NumeAgen,
                                       Trim(qryTemp.FieldByName('BOL_CARTEIRA').AsString)
                                        );
          end;

          // Fechamos a Query
          qryTemp.Close;

          QryTemp.SQL.Text := 'SELECT NR_BOLETO FROM BOLETO WHERE ID_PEDIVEND = '+ FloatToStr(QImpDocPed['ID_PEDIVEND']) + ' AND NR_PARCBOLE = ' + IntToStr( li_LoopParc );
          QryTemp.Open;

          If Not QryTemp.IsEmpty then
            begin
             ls_NumeBole := QryTemp.fieldbyname('nr_boleto').AsString;
             vnovoboleto:= false;
             OSQL.SQL.Clear;
             OSQL.SQL.Text := 'DELETE BOLETO WHERE ID_PEDIVEND = '+ FloatToStr(QImpDocPed['ID_PEDIVEND']) + ' AND NR_PARCBOLE = ' + IntToStr( li_LoopParc ) ;
             OSQL.Execute;
            end
          Else
            vnovoboleto:= True;

          if (li_SequBole > 0) and (vnovoboleto=true) then
          begin
            QryTemp.Close;
            QryTemp.SQL.Clear;
            qryTemp.SQL.Text := 'UPDATE CONTA SET NR_SEQUBOLECONT = NR_SEQUBOLECONT + 1 WHERE (CONTA.ID_CONTA = ' + QImpDocPed.FieldByName('ID_CONTA').AsString + ')';
            qryTemp.ExecSQL;
            qryTemp.Close;

          end;

          QryTemp.Close;
          QryTemp.SQL.Clear;

          qryTempBole.close;
          qryTempBole.sql.clear;
          qryTempBole.SQL.Text := 'INSERT INTO BOLETO (EMPRESA, FILIAL, ID_BOLETO, ID_PEDIVEND, ID_CONTA, '+
                                  'NR_BOLETO, NR_PARCBOLE, DT_GERABOLE,DT_EMISBOLE, DT_VENCBOLE,VL_BOLETO, '+
                                  'VL_MORADIABOLE,VL_MULTBOLE, QN_DIASPROTBOLE, NR_SEQUBOLE, FL_IMPRBOLE, FX_BOLETO) '+
                                  'VALUES (:ps_Empresa, :pi_Filial, ID_BOLETO.Nextval, :pi_PediVend, '+
                                  ':pi_Conta, :ps_NumeBole, :pi_ParcBole, :pd_GeraBole, :pd_EmisBole, '+
                                  ':pd_VencBole, :pr_ValoBole, :pr_ValoMora, :pr_ValoMult, :pi_DiasProt, '+
                                  ':pr_SequBole, :ps_ImprBole, :ps_Fixo)';

          qryTempBole.ParamByName('ps_Empresa').AsString := gs_Empresa;
          qryTempBole.ParamByName('pi_Filial').AsInteger := gi_Filial;
          qryTempBole.ParamByName('pi_PediVend').AsInteger := QImpDocPed['ID_PEDIVEND'];
          qryTempBole.ParamByName('pi_Conta').AsInteger := QImpDocPed['ID_CONTA'];
          qryTempBole.ParamByName('ps_NumeBole').AsString := ls_NumeBole;
          qryTempBole.ParamByName('pi_ParcBole').AsInteger := li_LoopParc;
          qryTempBole.ParamByName('pd_GeraBole').AsDateTime := ld_DataHora;
          qryTempBole.ParamByName('pd_EmisBole').AsDateTime := ld_DataHora;

          ld_DtVenc := FrmPrincipal.DiaUtil( QImpDocPed.FieldByName('DT_ENTRPEDIVEND').AsDateTime + qryTempFormPagaParc['QN_DIASPARCFORMPAGA']) ;

          if ( li_LoopParc > 1 ) then
          begin
            if ( ld_DtVencAnt = ld_DtVenc ) then
              ld_DtVenc := FrmPrincipal.DiaUtil( ld_DtVenc + 1 ) ;
          end;

          // Guarda Vencimento para comparar om o próximo
          ld_DtVencAnt := ld_DtVenc ;
          qryTempBole.ParamByName('pd_VencBole').AsDateTime := ld_DtVenc;
          qryTempBole.ParamByName('pr_ValoBole').AsFloat := lr_ValoBole;

          if ( BASE_DACAR = 'S' ) then  // Dacar
          begin
            qryTempBole.ParamByName('pr_ValoMora').AsFloat := (lr_ValoBole * QImpDocPed.FieldByName('PC_JURODIARIO').AsFloat)/100;
          end
          else
          begin
            if (QImpDocPed.FieldByName('ID_CONTA').Value = 100) then //or (QImpDocPed.FieldByName('ID_CONTA').Value = 132) or (QImpDocPed.FieldByName('ID_CONTA').Value = 155) then
              qryTempBole.ParamByName('pr_ValoMora').AsFloat := (lr_ValoBole * 0.003)
            else if (QImpDocPed.FieldByName('ID_CONTA').Value = 101) or (QImpDocPed.FieldByName('ID_CONTA').Value = 151) then
              qryTempBole.ParamByName('pr_ValoMora').AsFloat := (lr_ValoBole * 0.0033)
            else if (QImpDocPed.FieldByName('ID_CONTA').Value = 143) or (QImpDocPed.FieldByName('ID_CONTA').Value = 149) or (QImpDocPed.FieldByName('ID_CONTA').Value = 162) or (QImpDocPed.FieldByName('ID_CONTA').Value = 167) then
              qryTempBole.ParamByName('pr_ValoMora').AsFloat := (lr_ValoBole * 0.005)
            else
              qryTempBole.ParamByName('pr_ValoMora').AsFloat := (lr_ValoBole * qryTempInstCobr.FieldByName('PC_JURODIARINSTCOBR').AsFloat)/100;
          end;

          qryTempBole.ParamByName('pr_ValoMult').AsFloat := 0;
          qryTempBole.ParamByName('pi_DiasProt').AsInteger := qryTempInstCobr['QN_DIASTOLEPROTINSTCOBR'];
          qryTempBole.ParamByName('pr_SequBole').AsFloat := li_SequBole + 1;

          if (Marca_BoleImpresso) then
             qryTempBole.ParamByName('ps_ImprBole').AsString := 'S'
          else
             qryTempBole.ParamByName('ps_ImprBole').AsString := 'N';

          qryTempBole.ParamByName('ps_Fixo').AsString := 'N';
          qryTempBole.ExecSQL;
          qryTempBole.Close;
          qryTempFormPagaParc.Next;
        end;

        // Se for para colocar os centavos na primeira parcela
        If (qryTempFormPaga['FL_CENTPRIMFORMPAGA'] = 'S') and (lr_CentBole > 0) then
        begin
          QryTemp.Close;
          QryTemp.SQL.Clear;
          qryTemp.SQL.Text := 'UPDATE BOLETO SET VL_BOLETO = (VL_BOLETO + ' + ReplaceStr(FloatToStr(lr_CentBole), ',', '.') + ')'+
                              ' WHERE (ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ')                        '+
                              '   AND (NR_PARCBOLE = 1)                                                                          ';

          qryTemp.ExecSQL;
          qryTemp.Close;
        end;

        //Confere valor da NF com Boleto e ajusta na 1ª parcela se necessário
        VerificaValorBoleto ( QImpDocPed.FieldByName('ID_PEDIVEND').Value );

        // Fechamos a Query
        qryTempFormPaga.Close;
        qryTempFormPagaParc.Close;
        qryTempInstCobr.Close;

      end;
    end;

    // Atualizamos a data de geração no boleto
    QryTemp.Close;
    QryTemp.SQL.Clear;
    qryTemp.SQL.Text := 'UPDATE BOLETO SET DT_GERABOLE = TO_DATE(''' + DateTimeToStr(ld_DataHora) + ''', ''DD/MM/YYYY HH24:MI:SS'') ' +
                        'WHERE ID_PEDIVEND = ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + '';
    qryTemp.ExecSQL;

  end;

  QImpDocPed.GotoBookmark(lb_RegiAtua);

  If not QImpDocPed.IsEmpty then
  begin
    grdDados.DataSource.DataSet.First;
    grdDados.DataSource.DataSet.DisableControls;

    For vlLinha := 0 to VCONT do
      begin
        grdDados.SelectedRows.CurrentRowSelected := False;
        grdDados.DataSource.DataSet.Next;
      end;
    grdDados.DataSource.DataSet.EnableControls;

    grdDados.SelectedRows.Refresh;
  end;

  QImpDocPed.Refresh;
end;

procedure TfrmImpDocPed.ImprimeNFCancelada1Click(Sender: TObject);
var
  //iniImpressora: TIniFile;
  li_IndeImpr: Integer;
  li_Loop: Integer;
  li_NumeNota: Integer;
  ls_SiglSeriNota: String;
  ls_NomeImpr: String;
  vlLinha: Integer;
  F : TextFile;

begin
  // Verificamos se foi selecionado algum pedido para emissão de boleto
  If grdDados.SelectedRows.Count = 0 then
  begin
    MessageDlg('Nenhum pedido foi selecionado para impressão de nota fiscal.' + #13 +
               'Por favor, verifique !', mtInformation, [mbOK], 0);
    Exit;
  end;

  If MessageDlg ('Confirma Impressão da Nota Fiscal ' + #13 +
                 ' do(s) Pedido(s) Selecionado(s) ?', mtConfirmation,
                 [mbOk, mbCancel], 0) = mrOk then
  begin

    // Loop para todos os pedidos selecionados
    for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
    begin

     // Verificamos se o Flag do pedido é "EX"
     If (QImpDocPed['FL_STATPEDIVEND']='EX') then
       Begin
        MessageDlg('Nota fiscal não pode ser impressa! ' + #13 + 'O pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) +
                   ' está com Status "EX" ' + #13 + 'Gere novamente ou cancele a Nota se for necessário.', mtInformation, [mbOK], 0);
        Continue;
       End;

      frmQRMDNotas:=TfrmQRMDNotas.Create(Self);
      // Posicionamos no registro a ser impresso
      grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

      // Selecionamos a nota fiscal de acordo com o pedido
      frmQRMDNotas.qryNotaFisc.Close;
      frmQRMDNotas.qryItemNotaFisc.Close;
      frmQRMDNotas.qryNotaFisc.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
      frmQRMDNotas.qryNotaFisc.ParamByName('ps_serinotafisc').AsString := QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString;
      frmQRMDNotas.qryNotaFisc.ParamByName('VNOTA').AsInteger  := QImpDocPed.FieldByName('NR_NOTAFISC').AsInteger;
      frmQRMDNotas.qryNotaFisc.ParamByName('VCANCEL').AsString := 'S';
      frmQRMDNotas.qryNotaFisc.Open;
      frmQRMDNotas.qryItemNotaFisc.Open;

      // Verificamos se existe a nota fiscal para o pedido
      if frmQRMDNotas.qryNotaFisc.IsEmpty then
      begin
        MessageDlg('Nota fiscal não encontrada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !' + #13 +
                   'Por favor, verifique !', mtInformation, [mbOK], 0);
        Continue;
      end;

      // Verificamos se a nota fiscal já foi impressa
      if frmQRMDNotas.qryNotaFisc['FL_IMPRNOTAFISC'] = 'N' then
      begin
        if MessageDlg ('Confirma impressão da nota fiscal  ' + frmQRMDNotas.qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                       ' do pedido  ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          Exit;
        end;
      end
      else if frmQRMDNotas.qryNotaFisc['FL_IMPRNOTAFISC'] = 'S' then
      begin
        if MessageDlg('Nota fiscal ' + frmQRMDNotas.qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                      ' do pedido  ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' já foi impressa !' + #13 +
                      'Deseja reimprimir ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          Continue;
        end;
      end;

      {// Verificamos se a nota fiscal anterior foi impressa
      try
        qryTemp := CriaQuery(False);
        qryTemp.SQL.Text :=
        'SELECT NVL(MAX(NR_NOTAFISC), 0) NR_NOTAFISC                                         '+
        '  FROM NOTA_FISCAL                                                                  '+
        ' WHERE NR_NOTAFISC < ' + IntToStr(qryForm.FieldByName('NR_NOTAFISC').AsInteger ) + ''+
        '   AND FL_CANCNOTAFISC = ''N''                                                      '+
        '   AND FL_IMPRNOTAFISC = ''N''                                                      ';
        qryTemp.Open;

        // Verificamos se a nota anterior foi impressa
        if qryTemp['NR_NOTAFISC'] > 0 then
        begin
          // Mensagem
          if MessageDlg('A nota fiscal anterior nro. ' + IntToStr(qryTemp['NR_NOTAFISC']) + ' não foi impressa.' + #13 +
                        'Deseja imprimir a nota assim mesmo ?', mtWarning, [mbYes, mbNo], 0) = mrNo then
          begin
            Exit;
          end;
        end;

      finally
        qryTemp.Close;
        qryTemp.Free;
      end;}

    // Pegamos o numero interno da nota e a sigla da serie
    li_NumeNota := frmQRMDNotas.qryNotaFisc['ID_NOTAFISC'];
    ls_SiglSeriNota := frmQRMDNotas.qryNotaFisc['SG_SERINOTAFISC_NOTAFISC'];

    // Selecionamos a impressora para a nota fiscal
    // frmQRMDNotas.frmQRNotas.PrinterSettings.PrinterIndex := li_IndeImpr;

    // Imprimimos a nota fiscal
    frmQRMDNotas.RL_Notas.Print;
    frmQRMDNotas.RL_Notas.DefaultFilter.Free;

//    frmQRMDNotas.RL_Notas.Destroy;
//    frmQRMDNotas.RL_Notas.CleanupInstance;
//    frmQRMDNotas.RL_Notas.Refresh;

   //imprime uma linha a mais para acerto do papel
   AssignFile(F,'LPT1:');
   Rewrite(F);
   Writeln(F);
   Writeln(F);
   CloseFile(F);
   try
      // Atualizamos a flag de impressão da nota fiscal
      qryTemp.Close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Text :=
        'UPDATE NOTA_FISCAL                                           '+
        '   SET FL_IMPRNOTAFISC = ''S''                               '+
        ' WHERE ID_NOTAFISC = ' + IntToStr(li_NumeNota) + '           '+
        '   AND SG_SERINOTAFISC_NOTAFISC = ''' + ls_SiglSeriNota + '''';
      qryTemp.ExecSQL;

   finally
      qryTemp.Close;
   end;

  end;

  // Fechamos a query nota fiscal
  // frmQRMDNotas.qryItemNotaFisc.Close;
  // frmQRMDNotas.qryNotaFisc.Close;

  // Desmarcamos a selecao do grid Dados
  // grdDados.SelectedRows.Clear;

  // Limpamos todas as seleções do griDados
  // Verificamos se a query Form não está vazia

  If not QImpDocPed.IsEmpty then
   begin
    grdDados.DataSource.DataSet.First;
    grdDados.DataSource.DataSet.DisableControls;

    For vlLinha := 0 to VCONT do
      begin
        grdDados.SelectedRows.CurrentRowSelected := False;
        grdDados.DataSource.DataSet.Next;
      end;
     grdDados.DataSource.DataSet.EnableControls;

    grdDados.SelectedRows.Refresh;
   end;
  end;

end;

procedure TfrmImpDocPed.NotaFiscalSalvarHTML1Click(Sender: TObject);
var
  li_IndeImpr: Integer;
  li_Loop: Integer;
  li_NumeNota: Integer;
  ls_SiglSeriNota: String;
  ls_NomeImpr: String;
  vlLinha: Integer;
  F : TextFile;
begin
 // Verificamos se foi selecionado algum pedido para emissão de NF
 If grdDados.SelectedRows.Count = 0 then
  begin
    MessageDlg('Nenhum pedido foi selecionado para Salvar Nota Fiscal.' + #13 +
               'Por favor, verifique !', mtInformation, [mbOK], 0);
    Exit;
  end;

 If MessageDlg ('Confirma Salvar a Nota Fiscal em HTML, ' + #13 +
                ' do(s) Pedido(s) Selecionado(s) ?', mtConfirmation,
                [mbOk, mbCancel], 0) = mrOk then
  begin

    // Loop para todos os pedidos selecionados
    for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
    begin

     // Verificamos se o Flag do pedido é "EX"
     If (QImpDocPed['FL_STATPEDIVEND']='EX') then
     Begin
       MessageDlg('Nota fiscal não pode ser Salva em HTML! ' + #13 + 'O pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) +
                   ' está com Status "EX" ' + #13 + 'Gere novamente ou cancele a Nota se for necessário.', mtInformation, [mbOK], 0);
       Continue;
     End;

   //Verificar se a NF tem o tipo para a cfop 5601 (sem itens com obs do pedido)
   if (QImpDocPed['ID_TIPOPEDIVEND']= 66 ) then
   begin

    frmQRNF5601:=TfrmQRNF5601.Create(Self);
    with frmQRNF5601 do
    begin
     // Posicionamos no registro a ser impresso
     grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

     // Selecionamos a nota fiscal de acordo com o pedido
     qryNotaFisc.Close;
     qryItemNotaFisc.Close;
     qryNotaFisc.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
     qryNotaFisc.ParamByName('ps_serinotafisc').AsString := QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString;
     qryNotaFisc.ParamByName('VNOTA').AsInteger  := QImpDocPed.FieldByName('NR_NOTAFISC').AsInteger;
     qryNotaFisc.ParamByName('VCANCEL').AsString := 'N';

     qryNotaFisc.Open;
     qryItemNotaFisc.Open;

     // Verificamos se existe a nota fiscal para o pedido
     If qryNotaFisc.IsEmpty then
     begin
       MessageDlg('Nota fiscal não encontrada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !' + #13 +
                   'Por favor, verifique !', mtInformation, [mbOK], 0);
       Continue;
     end;

      // Verificamos se a nota fiscal já foi impressa
     If qryNotaFisc['FL_IMPRNOTAFISC'] = 'N' then
     begin
        if MessageDlg ('Confirma Salvar em HTML, a Nota Fiscal  ' + qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                       ' do pedido  ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          Exit;
        end;
     end
     else if qryNotaFisc['FL_IMPRNOTAFISC'] = 'S' then
     begin
       if MessageDlg('Nota fiscal ' + qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                     ' do pedido ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' já foi impressa !' + #13 +
                     'Deseja reimprimir ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
       begin
          Continue;
       end;
     end;

     // Pegamos o numero interno da nota e a sigla da serie
     li_NumeNota := qryNotaFisc['ID_NOTAFISC'];
     ls_SiglSeriNota := qryNotaFisc['SG_SERINOTAFISC_NOTAFISC'];

     // Preview da Nota Fiscal
     RL_Notas.Preview;
     RL_Notas.DefaultFilter.Free;
    end;
   end
   else
   begin
    if (gi_filial = 4) or (gi_Filial = 91) then
    begin
     FrmNFMetal:=TFrmNFMetal.Create(Self);
     // Posicionamos no registro a ser impresso
     grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

     // Selecionamos a nota fiscal de acordo com o pedido
     FrmNFMetal.qryNotaFisc.Close;
     FrmNFMetal.qryItemNotaFisc.Close;
     FrmNFMetal.qryNotaFisc.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
     FrmNFMetal.qryNotaFisc.ParamByName('ps_serinotafisc').AsString := QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString;
     FrmNFMetal.qryNotaFisc.ParamByName('VNOTA').AsInteger  := QImpDocPed.FieldByName('NR_NOTAFISC').AsInteger;
     FrmNFMetal.qryNotaFisc.ParamByName('VCANCEL').AsString := 'N';

     FrmNFMetal.qryNotaFisc.Open;
     FrmNFMetal.qryItemNotaFisc.Open;

     // Verificamos se existe a nota fiscal para o pedido
     If FrmNFMetal.qryNotaFisc.IsEmpty then
     begin
       MessageDlg('Nota fiscal não encontrada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !' + #13 +
                   'Por favor, verifique !', mtInformation, [mbOK], 0);
       Continue;
     end;

      // Verificamos se a nota fiscal já foi impressa
     If FrmNFMetal.qryNotaFisc['FL_IMPRNOTAFISC'] = 'N' then
     begin
        if MessageDlg ('Confirma Salvar em HTML, a Nota Fiscal  ' + FrmNFMetal.qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                       ' do pedido  ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          Exit;
        end;
     end
     else if FrmNFMetal.qryNotaFisc['FL_IMPRNOTAFISC'] = 'S' then
     begin
       if MessageDlg('Nota fiscal ' + FrmNFMetal.qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                      ' do pedido  ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' já foi impressa !' + #13 +
                      'Deseja reimprimir ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
       begin
          Continue;
       end;
     end;

     // Pegamos o numero interno da nota e a sigla da serie
     li_NumeNota := FrmNFMetal.qryNotaFisc['ID_NOTAFISC'];
     ls_SiglSeriNota := FrmNFMetal.qryNotaFisc['SG_SERINOTAFISC_NOTAFISC'];

     // Preview da Nota Fiscal
     FrmNFMetal.RL_Notas.Preview;
     FrmNFMetal.RL_Notas.DefaultFilter.Free;

    end
    else
    begin

     FrmQRMDNotas:=TfrmQRMDNotas.Create(Self);
     // Posicionamos no registro a ser impresso
     grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

     // Selecionamos a nota fiscal de acordo com o pedido
     FrmQRMDNotas.qryNotaFisc.Close;
     FrmQRMDNotas.qryItemNotaFisc.Close;
     FrmQRMDNotas.qryNotaFisc.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
     FrmQRMDNotas.qryNotaFisc.ParamByName('ps_serinotafisc').AsString := QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString;
     FrmQRMDNotas.qryNotaFisc.ParamByName('VNOTA').AsInteger  := QImpDocPed.FieldByName('NR_NOTAFISC').AsInteger;
     FrmQRMDNotas.qryNotaFisc.ParamByName('VCANCEL').AsString := 'N';

     FrmQRMDNotas.qryNotaFisc.Open;
     FrmQRMDNotas.qryItemNotaFisc.Open;

     // Verificamos se existe a nota fiscal para o pedido
     If frmQRMDNotas.qryNotaFisc.IsEmpty then
     begin
       MessageDlg('Nota fiscal não encontrada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !' + #13 +
                   'Por favor, verifique !', mtInformation, [mbOK], 0);
       Continue;
     end;

      // Verificamos se a nota fiscal já foi impressa
     If frmQRMDNotas.qryNotaFisc['FL_IMPRNOTAFISC'] = 'N' then
     begin
        if MessageDlg ('Confirma Salvar em HTML, a Nota Fiscal  ' + frmQRMDNotas.qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                       ' do pedido  ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          Exit;
        end;
     end
     else if frmQRMDNotas.qryNotaFisc['FL_IMPRNOTAFISC'] = 'S' then
     begin
       if MessageDlg('Nota fiscal ' + frmQRMDNotas.qryNotaFisc.FieldByName('NR_NOTAFISC').AsString +
                      ' do pedido  ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ' já foi impressa !' + #13 +
                      'Deseja reimprimir ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
       begin
          Continue;
       end;
     end;

     // Pegamos o numero interno da nota e a sigla da serie
     li_NumeNota := frmQRMDNotas.qryNotaFisc['ID_NOTAFISC'];
     ls_SiglSeriNota := frmQRMDNotas.qryNotaFisc['SG_SERINOTAFISC_NOTAFISC'];

     // Preview da Nota Fiscal
     frmQRMDNotas.RL_Notas.Preview;
     frmQRMDNotas.RL_Notas.DefaultFilter.Free;
    end; //filial 4
   end;

   try

     // Atualizamos a flag de impressão da nota fiscal
     qryTemp.Close;
     qryTemp.SQL.Clear;
     qryTemp.SQL.Text :=
        'UPDATE NOTA_FISCAL                                           '+
        '   SET FL_IMPRNOTAFISC = ''S''                               '+
        ' WHERE ID_NOTAFISC = ' + IntToStr(li_NumeNota) + '           '+
        '   AND SG_SERINOTAFISC_NOTAFISC = ''' + ls_SiglSeriNota + '''';

     qryTemp.ExecSQL;

   finally

     qryTemp.Close;

   end;

  end;

  // Verificamos se a query Form não está vazia
  If not QImpDocPed.IsEmpty then
   begin
    // Limpamos todas as seleções do griDados
    grdDados.DataSource.DataSet.First;
    For vlLinha := 0 to VCONT do
      begin
        grdDados.SelectedRows.CurrentRowSelected := False;
        grdDados.DataSource.DataSet.Next;
      end;
    grdDados.SelectedRows.Refresh;
   end;

  end;

end;

procedure TfrmImpDocPed.FormCreate(Sender: TObject);
begin
 frmPrincipal.TrocaNomeSequence(Self);
end;

procedure TfrmImpDocPed.ImprimeFatura1Click(Sender: TObject);
 var
   li_Loop:integer;
begin

  // Verificamos se foi selecionado algum pedido para emissão de Fatura
  if grdDados.SelectedRows.Count = 0 then
  begin
    MessageDlg('Nenhum pedido foi selecionado para impressão de Fatura.' + #13 +
               'Por favor, verifique !', mtInformation, [mbOK], 0);
    Exit;
  end;

  //Verifica a Data do Sistema
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := ' Select sysdate  from  dual ';
  qryTemp.Open;
  if not(qryTemp.IsEmpty) then
    ld_DataHora := qryTemp.FieldByName('SYSDATE').AsDateTime
  Else
    ld_DataHora := Now;
  qryTemp.close;


  // Confirmação de impressão
  if MessageDlg ('Confirma Impressão de Faturas do(s)' + #13 +
                 '    Pedido(s) Selecionado(s) ?', mtConfirmation,
                 [mbOk, mbCancel], 0) = mrOk then
  begin

    // Loop para todos os pedidos selecionados
    For li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
    begin
      // Posicionamos no registro a ser impresso
      grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

      If (gi_Filial = 4) or (gi_Filial = 91) then
        FrmFaturaMetal := TFrmFaturaMetal.Create(Self)
      Else
        FrmFatura := TFrmFatura.Create(Self);

      qryTemp.Close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Text := ' select * from  ca_fatura '+
                          ' where  id_pedivend = '+ QImpDocPed.FieldByName('ID_PEDIVEND').AsString;
      qryTemp.Open;
      if (qryTemp.IsEmpty) then
      begin
        OSQL.SQL.Clear;
        OSQL.SQL.Text :=
                    ' insert into               '+
                    ' ca_fatura                 '+
                    '  (empresa,                '+
                    '   filial,                 '+
                    '   id_fatura,              '+
                    '   id_pedivend,            '+
                    '   fl_impresso,            '+
                    '   id_conta,               '+
                    '   dt_emissao)             '+
                    ' values                    '+
                    ' ( ''CA'',                 '+
                       intToStr(gi_filial) + ', '+
                    '  seqca_fatura.nextval,    '+
                       QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ', ' +
                    '  ''S'',                   '+
                       QImpDocPed.FieldByName('ID_CONTA').AsString + ',  '+
                    ' TO_DATE(''' + DateToStr(ld_DataHora) + ''', ''DD/MM/YYYY'')' + ') ';
        OSQL.Execute;
      end;
      qryTemp.close;

      QryFatura.Close;
      QryFatura.ParamByName('VID_PEDIVEND').AsFloat := QImpDocPed.FieldByName('ID_PEDIVEND').AsFloat;
      QryFatura.Open;
      try

        If (gi_Filial = 4) or (gi_Filial = 91) then
          FrmFaturaMetal.RLReport1.Print
        Else
          FrmFatura.RLReport1.Print;

      Finally

        If (gi_Filial = 4) or (gi_Filial = 91) then
          FrmFaturaMetal.RLReport1.Free
        Else
          FrmFatura.RLReport1.Free;

      End;


    end;
  end;
end;

function ValorPorExtenso(AValor: Currency): String;
begin

end;

procedure TfrmImpDocPed.Contador_Txt;
var
  li_loop: integer;
begin
  contador:= 0;
  for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
    begin
      // Verificamos se o Flag do pedido é "EX"
      If (QImpDocPed['FL_STATPEDIVEND']='EX') then
        Continue;

      grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

    // Selecionamos a nota fiscal de acordo com o pedido
      QryNfEle.Close;
      QryNfEle.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
      QryNfEle.ParamByName('ps_serinotafisc').AsString := QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString;
      QryNfEle.ParamByName('VNOTA').AsInteger  := QImpDocPed.FieldByName('NR_NOTAFISC').AsInteger;
      QryNfEle.ParamByName('VCANCEL').AsString := 'N';
      QryNfEle.Open;
      while not QryNfEle.Eof do
        begin
          contador:= contador + 1;
          QryNfEle.Next;
        end;
    end;
end;

procedure TfrmImpDocPed.Enviar_TXT_NFe_1(Sender: TObject);
var
  li_Loop: Integer;
  li_NumeNota: Integer;
  ls_SiglSeriNota,NomeArq, tpEmis, vIE, tpAmb, vIE_t: String;
  ls_NomeImpr, ls_firma, ls_insc, ls_inscM, ls_cnpj, ls_cnae: String;
  ls_logr, ls_num, ls_bai, ls_uf, ls_cep, ls_cid, ls_codcid, ls_pais, ls_codpais, ls_fone, ls_codmun, ls_ObsF, ls_ObsC: String;
  vlLinha, VSEQNOTA, VControlImpre, VSoma: Integer;
  vPis, vCofins,vPisitem, vCofinsitem: Double;
  F : TextFile;
  vTipES: string; // NF Entrada = 0; NF Saida = 1
begin
  //TESTE 1.0.32

  VSEQNOTA:=0;
  VControlImpre:=0;

  with dadosCadastraisFilial do
  begin
    ls_firma := NomeFilial;
    ls_insc := InscricaoEstadual;
    ls_inscM := InscricaoMunicipal;
    ls_cnpj := Cnpj;
    ls_cnae := Cnae;
    ls_logr := Endereco;
    ls_num := Numero;
    ls_bai := Bairro;
    ls_cid := Cidade;
    ls_codcid := CodigoCidade;
    ls_uf := UF;
    ls_cep := Cep;
    ls_codpais := CodigoPais;
    ls_pais := Pais;
    ls_fone := Fone;
    ls_codmun := CodigoCidade;
  end;

   // Verificamos se foi selecionado algum pedido para emissão de boleto
   If grdDados.SelectedRows.Count = 0 then
   begin
      MessageDlg('Nenhum pedido foi selecionado para geração txt da nota fiscal eletronica.' + #13 +
                 'Por favor, verifique !', mtInformation, [mbOK], 0);
      Exit;
   end;

   If MessageDlg ('Confirma geração TXT, Nota Fiscal Eletronica' + #13 +
                 ' do(s) Pedido(s) Selecionado(s) ?', mtConfirmation,[mbOk, mbCancel], 0) = mrOk then
   begin



      frmDialNFe.edtNumCarga.Text:= QImpDocPedID_CARGEXPE.AsString;

      if frmDialNFe.ShowModal <> mrOK then
         exit;

      //se a pasta NFE não existir, cria
      if not DirectoryExists('C:\NFE') then
         CreateDir('C:\NFE');

      //NomeArq:='C:\NFE\teste_'+ FormatDateTime('ddmmyyhhmm', now) +'.txt';
      //tpEmis = 1 Normal / 2 Contingência

      if frmDialNFe.chkCon.Checked then
      begin
         NomeArq:='C:\NFE\C_'+frmDialNFe.edtNumCarga.Text+'.txt';
         tpEmis:= '2';
      end
      else
      begin
         NomeArq:='C:\NFE\'+frmDialNFe.edtNumCarga.Text+'.txt';
         tpEmis:= '1';
      end;

      if frmDialNFe.chkAmb.Checked then
         tpAmb:= '1'
      else
         tpAmb:= '2';

      AssignFile(F,NomeArq);
      Rewrite(F);

      Contador_Txt;
      Writeln(F,'NOTA FISCAL|'+inttostr(contador)+'|');

      // Loop para todos os pedidos selecionados
      for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
      begin
         // Verificamos se o Flag do pedido é "EX"
         If (QImpDocPed['FL_STATPEDIVEND']='EX') then
         Begin
           MessageDlg('Não pode ser gerado txt! ' + #13 + 'O pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) +
                      ' está com Status "EX" ' + #13 + 'Gere novamente ou cancele a Nota se for necessário.', mtInformation, [mbOK], 0);
           Continue;
         End;

         //NF CEUAZUL ABAT.
         //Posicionamos no registro a ser impresso
         grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

         // Selecionamos a nota fiscal de acordo com o pedido
         QryNfEle.Close;
         QryItemNfEle.Close;
         FormatSettings.shortdateformat := 'yyyy-mm-dd';


         QryNfEle.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
         QryNfEle.ParamByName('ps_serinotafisc').AsString := QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString;
         QryNfEle.ParamByName('VNOTA').AsInteger  := QImpDocPed.FieldByName('NR_NOTAFISC').AsInteger;
         QryNfEle.ParamByName('VCANCEL').AsString := 'N';

         QryNfEle.Open;

         QryItemNfEle.ParamByName('id_notafisc').AsFloat := QryNfEleID_NOTAFISC.AsFloat;
         QryItemNfEle.Open;

         QryBolNFe.Close;
         QryBolNFe.ParamByName('id_pedivend').AsInteger := QryNfEleID_PEDIVEND.AsInteger;
         QryBolNFe.open;

         while not QryNfEle.Eof do
         begin
            //Writeln(F,'NOTA FISCAL|1|');
            Writeln(F,'A|1.10||');

            {if (QryBolNFeID_FORMPAGA.AsInteger = 11) then
             Writeln(F,'B|35|0|'+QryNfEleNM_NATUOPERNOTAFISC.value+'|0|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|1|'+inttostr(QryNfEleID_IBGE.asinteger)+'|1|1|0|2|1|3|'+Trim(Edtversao.Text)+'|')
            else
             Writeln(F,'B|35|0|'+QryNfEleNM_NATUOPERNOTAFISC.value+'|1|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|1|'+inttostr(QryNfEleID_IBGE.asinteger)+'|1|1|0|2|1|3|'+Trim(Edtversao.Text)+'|');}

            //verifica se é nota fiscal de entrada ou saída
            if (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '1') or (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '2') or (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '3') then
               vTipES:= '0'
            else
               vTipES:= '1';

            if (QryBolNFeID_FORMPAGA.AsInteger = 11) then
               Writeln(F,'B|35|0|'+QryNfEleNM_NATUOPERNOTAFISC.value+'|0|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|' + vTipES + '|'+ ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(Edtversao.Text)+'|')
            else
               Writeln(F,'B|35|0|'+QryNfEleNM_NATUOPERNOTAFISC.value+'|1|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|' + vTipES + '|'+ ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(Edtversao.Text)+'|');

            Writeln(F,'C|'+ls_firma+'|'+ls_firma+'|'+ls_insc+'| |'+ls_inscM+'|'+ls_cnae+'|');
            Writeln(F,'C02|'+ls_cnpj+'|');
            Writeln(F,'C05|'+ls_logr+'|'+ls_num+'| |'+ls_bai+'|'+ls_codcid+'|'+ls_cid+'|'+ls_uf+'|'+ls_cep+'|'+ls_codpais+'|'+ls_pais+'|'+ ls_fone+'|');

            if UpperCase(QryNfElenr_inscestaclie.Value) = 'ISENTO' then
              begin
                if (QryNfEleNR_CFOP_NOTAFISC.Value = '7101') or (QryNfEleNR_CFOP_NOTAFISC.Value = '3201') then
                  vIE:= ''
                else
                  vIE:= 'ISENTO';
              end
            else
            begin
               //if (UpperCase(QryNfElesg_estado.value) = 'MS') or (UpperCase(QryNfElesg_estado.value) = 'SC') then
               vIE:= QryNfElenr_inscestaclie.value
               //else
               //vIE:= RetZero(QryNfElenr_inscestaclie.value,11);
            end;

            Writeln(F,'E|'+TiraAcentos(QryNfElenm_cliente.AsString)+'|'+ vIE +'| |');

            IF QryNfEleFL_PESSCLIE.Value = 'J' then
            BEGIN
               if copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) = '7' then
                  Writeln(F,'E02||')
               else
                  Writeln(F,'E02|'+QryNfElenr_cnpjclie.value+'|');
            END
            ELSE
            BEGIN
               Writeln(F,'E03|'+QryNfElenr_cpfclie.value+'|');
            END;

            //Writeln(F,'E05|'+TiraAcentos(QryNfElenm_logrendeclie.AsString)+'|'+QryNfElenr_logrendeclie.VALUE+'| |'+TiraAcentos(QryNfEleNM_BAIRRO.AsString)+'|'+INTTOSTR(QryNfEleID_IBGE.value)+'|'+TiraAcentos(QryNfEleNM_CIDADE.AsString)+'|'+QryNfElesg_estado.value+'|'+QryNfEleNR_CEPNOTAFISC.VALUE+'|'+inttostr(QryNfEleibgepais.asinteger)+'|'+TiraAcentos(QryNfElenm_pais.VALUE)+'|'+QryNfEleNR_DDDCIDA.AsString+QryNfEleNR_FONENOTAFISC.AsString+'|');

            //vai ler do banco...
            if copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) = '7' then
               Writeln(F,'E05|'+TiraAcentos(QryNfElenm_logrendeclie.AsString)+'|'+QryNfElenr_logrendeclie.VALUE+'| |'+TiraAcentos(QryNfEleNM_BAIRRO.AsString)+'|9999999|Exterior|'+QryNfElesg_estado.value+'|'+QryNfEleNR_CEPNOTAFISC.VALUE+'|'+inttostr(QryNfEleibgepais.asinteger)+'|'+TiraAcentos(QryNfElenm_pais.VALUE)+'|'+RemoveChar(QryNfEleNR_FONENOTAFISC.AsString)+'|')
            else
               Writeln(F,'E05|'+TiraAcentos(QryNfElenm_logrendeclie.AsString)+'|'+QryNfElenr_logrendeclie.VALUE+'| |'+TiraAcentos(QryNfEleNM_BAIRRO.AsString)+'|'+INTTOSTR(QryNfEleID_IBGE.value)+'|'+TiraAcentos(QryNfEleNM_CIDADE.AsString)+'|'+QryNfElesg_estado.value+'|'+QryNfEleNR_CEPNOTAFISC.VALUE+'|'+inttostr(QryNfEleibgepais.asinteger)+'|'+TiraAcentos(QryNfElenm_pais.VALUE)+'|'+RemoveChar(QryNfEleNR_FONENOTAFISC.AsString)+'|');

            QryNFeBc.Close;
            QryNFeBc.ParamByName('id_notafisc').AsInteger := QryNfEleID_NOTAFISC.AsInteger;
            QryNFeBc.open;

            VSoma:=1;
            //      QryItemNfEle.Open;
            QryItemNfEle.first;

            while not QryItemNfEle.Eof do
            begin
               vCofinsitem:= (QryitemNfEleVL_ITEMNOTAFISC.Value * 0.076);
               vPisitem:= (QryitemNfEleVL_ITEMNOTAFISC.Value * 0.0165);
               Writeln(F,'H|'+inttostr(Vsoma)+'| |');
               Writeln(F,'I|'+FloatToStr(QryItemNfEleID_PRODMATEEMBA_ITEMNOTAFISC.AsFloat)+'|'+ QryItemNfEleQN_EAN_NFE.Value +'|'+TiraAcentos(QryItemNfEleNM_MATERIAL_ITEMNOTAFISC.value)+'|'+ QryItemNfEleNR_CLASFISC.AsString +'| | |'+QryItemNfEleNR_CFOP_ITEMNOTAFISC.value+'|'+TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ReplaceStr(FloatToStrF(QryItemNfEleVL_UNITBRUTITEMNOTAFISC.value,ffFixed,16,5),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfEleVL_BRUTITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'||'+TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfEleVL_UNITBRUTITEMNOTAFISC.AsFloat,ffFixed,16,5),',','.')+'| | | |');
               //Writeln(F,'I|'+FloatToStr(QryItemNfEleID_PRODMATEEMBA_ITEMNOTAFISC.AsFloat)+'||'+TiraAcentos(QryItemNfEleNM_MATERIAL_ITEMNOTAFISC.value)+'|'+ QryItemNfEleNR_CLASFISC.AsString +'| | |'+QryItemNfEleNR_CFOP_ITEMNOTAFISC.value+'|'+TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ReplaceStr(FloatToStrF(QryItemNfEleVL_UNITITEMNOTAFISC.value,ffFixed,16,4),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfEleVL_ITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'||'+TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfEleVL_UNITITEMNOTAFISC.AsFloat,ffFixed,16,4),',','.')+'| | | |');
               Writeln(F,'M|');
               Writeln(F,'N|');
               //Writeln(F,'N04|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.value,2,2)+'|3|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_REDUICMSITEMNOTAFISC.value,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_ICMSITEMNOTAFISC.VALUE,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_ICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|');

               if COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '00' then
                  Writeln(F,'N02|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2)+'|3|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_ICMSITEMNOTAFISC.VALUE,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_ICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|');
                  //Writeln(F,'N02|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2)+'|3|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_REDUICMSITEMNOTAFISC.Value,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_ICMSITEMNOTAFISC.VALUE,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_ICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|');
               if COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '20' then
                  Writeln(F,'N04|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2)+'|3|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_REDUICMSITEMNOTAFISC.Value,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_ICMSITEMNOTAFISC.VALUE,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_ICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|');
               if (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '40') or (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '41') or (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '50') then
                  Writeln(F,'N06|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2)+'|');
                  //Writeln(F,'N06|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2)+'|3|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_REDUICMSITEMNOTAFISC.Value,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_ICMSITEMNOTAFISC.VALUE,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_ICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|');

               //colocar a rotina de impressão do IPI qdo for da base metal
               if (gi_Filial = 4) or (gi_Filial = 91) then //metal
               begin
                   //se produto com ipi insere as linhas
                  if QryItemNfEleVL_IPIITEMNOTAFISC.Value <> 0 then
                  begin
                     //IPI tributável
                     Writeln(F,'O|||||999|');
                     Writeln(F,'O07|50|'+ReplaceStr(floattostrF(QryItemNfEleVL_IPIITEMNOTAFISC.Value,ffFixed,15,2),',','.')+'|');
                     Writeln(F,'O10|'+ReplaceStr(floattostrF((QryItemNfEleVL_ICMSITEMNOTAFISC.Value + QryItemNfEleVL_ITEMNOTAFISC.Value),ffFixed,15,2),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfElePC_IPIITEMNOTAFISC.Value,ffFixed,5,2),',','.')+'|');
                  end
                  else
                  begin
                     //IPI Não tributável
                     Writeln(F,'O|||||999|');
                     Writeln(F,'O08|51|');
                  end;
               end;

               qryPisCofins.Close;
               qryPisCofins.ParamByName('pID').Value:= QImpDocPedID_TIPOPEDIVEND.Value;
               qryPisCofins.Open;

               if qryPisCofinsNR_ST_PISCOFINS.Value = '01' then
               begin
                  Writeln(F,'Q|');
                  //Writeln(F,'Q02|01|'+ReplaceStr(floattostrF(QryitemNfEleVL_ITEMNOTAFISC.Value,ffFixed,15,2),',','.')+'|1.65|'+ReplaceStr(FLOATTOSTRF(vPisitem,ffFixed,15,2),',','.')+'|');
                  Writeln(F,'Q02|01|'+ReplaceStr(floattostrF(QryItemNfEleVL_BRUTITEMNOTAFISC.Value,ffFixed,15,2),',','.')+'|1.65|'+ReplaceStr(FLOATTOSTRF(vPisitem,ffFixed,15,2),',','.')+'|');
                  Writeln(F,'S|');
                  //Writeln(F,'S02|01|'+ReplaceStr(FloatToStrF(QryitemNfEleVL_ITEMNOTAFISC.Value,ffFixed,15,2),',','.')+'|7.60|'+ReplaceStr(FLOATTOSTRF(vCofinsitem,ffFixed,15,2),',','.')+'|');
                  Writeln(F,'S02|01|'+ReplaceStr(FloatToStrF(QryItemNfEleVL_BRUTITEMNOTAFISC.Value,ffFixed,15,2),',','.')+'|7.60|'+ReplaceStr(FLOATTOSTRF(vCofinsitem,ffFixed,15,2),',','.')+'|');

                  vCofins:= (QryNfEleVL_NOTAFISC.Value * 0.076);
                  vPis:= (QryNfEleVL_NOTAFISC.Value * 0.0165);
               end
               else
               begin
                  Writeln(F,'Q|');
                  Writeln(F,'Q04|'+qryPisCofinsNR_ST_PISCOFINS.Value+'|');
                  Writeln(F,'S|');
                  Writeln(F,'S04|'+qryPisCofinsNR_ST_PISCOFINS.Value+'|');

                  vCofins:= 0;
                  vPis:= 0;
               end;

               VSoma:=VSoma+1;
               QryItemNfEle.Next;
            end;

            {
               //calcular se tiver ticad0o o flag da tabela OPERACAO_TIPO - cofins FL_COFTIPOOPER
               vCofins:= (QryNfEleVL_NOTAFISC.Value * 0.076);
               //calcular se tiver ticado o flag da tabela OPERACAO_TIPO - pis FL_PISTIPOOPER
               vPis:= (QryNfEleVL_NOTAFISC.Value * 0.0165);
            }

            Writeln(F,'W|');
            Writeln(F,'W02|'+ReplaceStr(floattostrF(QryNfEleVL_BASEICMSNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(floattostrF(QryNfEleVL_ICMSNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|0.00|0.00|'+ReplaceStr(floattostrF(QryNfEleVL_PRODNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(floattostrF(QryNfElevl_fretnotafisc.value,ffFixed,15,2),',','.')+'|0.00|0.00|0.00|'+ReplaceStr(floattostrF(QryNfElevl_ipinotafisc.value,ffFixed,15,2),',','.')+'|'+ReplaceStr(floattostrF(VPis,ffFixed,15,2),',','.')+'|'+ReplaceStr(floattostrF(VCofins,ffFixed,15,2),',','.')+'|0.00|'+ReplaceStr(FloatToStrF(QryNfEleVL_NOTAFISC.value,ffFixed,15,2),',','.')+'|');

            {FABRICIO - 31/07/2018 - MOTIVO:NFE 4.0
            if QryNfEleFL_TIPOFRETNOTAFISC.Value = '1' then
               Writeln(F,'X|0|')
            else
               Writeln(F,'X|1|');}
            Writeln(F,'X|'+ QryNfEleFL_TIPOFRETNOTAFISC.AsString + '|');
            //79698

            if (UpperCase(TiraAcentos(QryNfEleNM_TRANSPORTADOR_NOTAFISC.Value)) = 'O MESMO') and (RemoveChar(QryNfEleGN_PLACVEICNOTAFISC.AsString) = '') then
              begin
               Writeln(F,'X03||||||');
               Writeln(F,'X05||');
               Writeln(F,'X18||||');
               Writeln(F,'X26|||Ceu Azul Sta Rita|||');
               //Writeln(F,'X26|'+QryNfEleQN_VOLUNOTAFISC.Text+'||Ceu Azul Sta Rita||'+QryNfEleQN_PESOBRUTNOTAFISC.Text+'|'+QryNfEleQN_PESOLIQUNOTAFISC.Text+'|'); luis...06/11/2012
              end
            else
            begin
               //if UpperCase(QryNfElesg_estatrannotafisc.VALUE) = 'MS' then
               vIE_t:= QryNfElenr_ietrannotafisc.value;
               //else
               //vIE_t:= RetZero(QryNfElenr_ietrannotafisc.value,11);

               Writeln(F,'X03|'+TiraAcentos(QryNfElenm_transportador_notafisc.AsString)+'|'+ vIE_t+'|'+TiraAcentos(QryNfElenm_endetrannotafisc.AsString)+'|'+QryNfElesg_estatrannotafisc.VALUE+'|'+TiraAcentos(QryNfElenm_cidatrannotafisc.AsString)+'|');

               //Ver pedido nº 613417 - sorocaba
               if (QryNfEleNR_CPFTRANNOTAFISC.IsNull) then
               begin
                  if (QryNfElenr_cnpjtrannotafisc.IsNull) or (QryNfElenr_cnpjtrannotafisc.Value = '00.000.000/0000-00') then
                     Writeln(F,'X04||')
                  else
                     Writeln(F,'X04|'+SoNumeros(QryNfElenr_cnpjtrannotafisc.AsString)+'|');
               end
               else
                  Writeln(F,'X05|'+SoNumeros(QryNfEleNR_CPFTRANNOTAFISC.AsString) +'|');

               Writeln(F,'X18|'+ RemoveChar(QryNfEleGN_PLACVEICNOTAFISC.AsString) +'|'+ QryNfEleSG_ESTAPLACVEICNOTAFISC.AsString +'||');
               Writeln(F,'X26|'+ QryNfEleQN_VOLUNOTAFISC.AsString +'|'+ TiraAcentos(QryNfEleGN_ESPENOTAFISC.AsString) +'|Ceu Azul Sta Rita||' + ReplaceStr(FloatToStrF(QryNfEleQN_PESOLIQUNOTAFISC.AsFloat,ffFixed,15,3),',','.') +'|'+ ReplaceStr(FloatTOStrF(QryNfEleQN_PESOBRUTNOTAFISC.AsFloat,ffFixed,15,3),',','.') +'|');
            end;

            Writeln(F,'X33|' + TiraAcentos(QImpDocPedNR_LACRCARGEXPE.Value) + '|'); //lacre

            (*    Veículo
            X18 placa Placa do Veículo C Obrig 1 a 8
            X18 UF Sigla da UF C Obrig 2
            X18 RNTC Registro Nacional de Transportador de

            Volumes
            X26 qVol Quantidade de volumes transportados N Opcional 15
            X26 esp Espécie dos volumes transportados C Opcional 1 a 60
            X26 marca Marca dos volumes transportados C Opcional 1 a 60
            X26 nVol Numeração dos volumes transportados C Opcional 1 a 60
            X26 pesoL Peso Líquido (em kg) N Opcional 15 3
            X26 pesoB Peso Bruto (em kg) N Opcional 15 3   *)

            Writeln(F,'Y|');

            if (QryBolNFevl_boleto.Value > 0) then
            begin
               if (QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat>0) then
                  Writeln(F,'Y02|'+QryBolNFenr_boleto.Value+'|'+ReplaceStr(FloatToStrF(QryNfEleVL_NOTAFISC.Value,ffFixed,15,2),',','.')+'|'+ReplaceStr(FloatToStrF(QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat,ffFixed,15,2),',','.')+'|'+ReplaceStr(FloatToStrF((QryBolNFevl_boleto.AsFloat),ffFixed,15,2),',','.')+'|')
                  //Writeln(F,'Y02|'+QryBolNFenr_boleto.Value+'|'+ReplaceStr(FloatToStrF(QryBolNFevl_boleto.Value,ffFixed,15,2),',','.')+'|'+ReplaceStr(FloatToStrF(QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat,ffFixed,15,2),',','.')+'|'+ReplaceStr(FloatToStrF((QryBolNFevl_boleto.AsFloat-QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat),ffFixed,15,2),',','.')+'|')
               else
                  Writeln(F,'Y02|'+QryBolNFenr_boleto.Value+'|'+ReplaceStr(FloatToStrF(QryBolNFevl_boleto.Value,ffFixed,15,2),',','.')+'||'+ReplaceStr(FloatToStrF((QryBolNFevl_boleto.AsFloat-QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat),ffFixed,15,2),',','.')+'|');

               Writeln(F,'Y07|'+QryBolNFenr_boleto.Value+'|'+DateToStr(QryBolNFedt_vencbole.Value)+'|'+ReplaceStr(FloatToStrF(qryBolNFevl_boleto.Value,ffFixed,15,2),',','.')+'|');
            end
            else
            begin
               Writeln(F,'Y02|||||');
               Writeln(F,'Y07||||');
            end;
            //Writeln(F,'Z|TESTE|TESTE|');
            //Writeln(F,'Z04|TESTE|TESTE|');

            qryTemp.Close;
            QryTemp.SQL.Clear;
            qryTemp.SQL.Text := ' SELECT DISTINCT OBS_PADR_ICMS.GN_OBSEPADRNOTAFISC OBS_ICMS, ' +
                                '  OBS_PADR_IPI.GN_OBSEPADRNOTAFISC  OBS_IPI, '+
                                '  PEDIDO_VENDA.GN_OBSEPADR_PEDIVEND, '+
                                '  PEDIDO_VENDA.ID_PEDIVEND, '+
                                '  PEDIDO_VENDA.ID_CARGEXPE '+
                                ' FROM ' +
                                '   OPERACAO_TIPO, '+
                                '   PEDIDO_VENDA, '+
                                '   PEDIDO_VENDA_ITEM, '+
                                '   NOTA_FISCAL_OBSERVACAO_PADRAO OBS_PADR_ICMS, '+
                                '   NOTA_FISCAL_OBSERVACAO_PADRAO OBS_PADR_IPI '+
                                ' WHERE  '+
                                '   ( OPERACAO_TIPO.ID_TIPOOPER = PEDIDO_VENDA_ITEM.ID_TIPOOPER ) and '+
                                '   ( OPERACAO_TIPO.ID_OBSEPADRNOTAFISC_DLICMS = OBS_PADR_ICMS.ID_OBSEPADRNOTAFISC (+)) and '+
                                '   ( OPERACAO_TIPO.ID_OBSEPADRNOTAFISC_DLIPI = OBS_PADR_IPI.ID_OBSEPADRNOTAFISC (+)) and '+
                                '   (PEDIDO_VENDA.ID_PEDIVEND = PEDIDO_VENDA_ITEM.ID_PEDIVEND) and ' +
                                '   ( PEDIDO_VENDA.ID_PEDIVEND = ' + QImpDocPedID_PEDIVEND.AsString + ') ';

            qryTemp.Open;

            // Concatenamos as observações
            ls_ObsF:= '';
            ls_ObsC:= '';
            qryTemp.First;
            ls_ObsC:= qryTemp.FieldByName('GN_OBSEPADR_PEDIVEND').AsString + ' CARGA: ' + qryTemp.FieldByName('ID_CARGEXPE').AsString + ' PEDIDO: ' + qryTemp.FieldByName('ID_PEDIVEND').AsString;

            //ShowMessage(ls_ObsC);
            while not qryTemp.Eof do
            begin
               ls_ObsF := ls_ObsF + qryTemp.FieldByName('OBS_ICMS').AsString +
               qryTemp.FieldByName('OBS_IPI').AsString;
               qryTemp.Next;
            end;

            {Referências
            Str := StringReplace(S,#13#10,#32,[rfReplaceAll]);
            Str := StringReplace(S,#$D#$A,#32,[rfReplaceAll]);
            Str := StringReplace(S,sLineBreak,#32,[rfReplaceAll]);}
            //Fisco
            ls_ObsF:= Trim(StringReplace(ls_ObsF, #$D#$A, ' ', [rfReplaceAll]));
            ls_ObsF:= Trim(StringReplace(ls_ObsF, #9, ' ', [rfReplaceAll]));
            //Contribuinte
            ls_ObsC:= Trim(StringReplace(ls_ObsC, #$D#$A, ' ', [rfReplaceAll]));
            ls_ObsC:= Trim(StringReplace(ls_ObsC, #9, ' ', [rfReplaceAll]));
            Writeln(F,'Z|'+Trim(Copy(TiraAcentos(ls_ObsF),1,256)) + '|' + Trim(Copy(TiraAcentos(ls_ObsC),1,5000))+ '|');
            //ShowMessage(ls_ObsF);
            //ShowMessage(ls_ObsC);
            Writeln(F,'Z04||');
            QryNfEle.Next;

            //Exportação - Informar apenas na exportação.
            if copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) = '7' then
            begin
               qryCidExpNf.Close;
               qryCidExpNf.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
               qryCidExpNf.Open;

               Writeln(F,'ZA|'+ copy(qryCidExpNfSG_ESTADO.Value,1,2) + '|' + TiraAcentos(qryCidExpNfNM_CIDADE.Value) + '|');
            end;
         end;
      end;
   end;

  CloseFile(F);
  FormatSettings.shortdateformat := 'dd/mm/yyyy';
  // Verificamos se a query Form não está vazia

   If not QImpDocPed.IsEmpty then
   begin
      QImpDocPed.DisableControls;
      // Limpamos todas as seleções do griDados
      grdDados.DataSource.DataSet.First;

      For vlLinha := 0 to VCONT do
      begin
         grdDados.SelectedRows.CurrentRowSelected := False;
         grdDados.DataSource.DataSet.Next;
      end;

      grdDados.SelectedRows.Refresh;
      QImpDocPed.EnableControls;
   end;
end;

procedure TfrmImpDocPed.Enviar_TXT_NFe_2(Sender: TObject);
var
  li_Loop: Integer;
  li_NumeNota: Integer;
  ls_SiglSeriNota,NomeArq, tpEmis, vIE, tpAmb, vIE_t: String;
  ls_NomeImpr, ls_firma, ls_insc, ls_inscM, ls_cnpj, ls_cnae: String;
  ls_logr, ls_num, ls_bai, ls_uf, ls_cep, ls_cid, ls_codcid, ls_pais, ls_codpais, ls_fone, ls_codmun, ls_ObsF, ls_ObsC: String;
  vlLinha, VSEQNOTA, VControlImpre, VSoma: Integer;
  vPis, vCofins,vPisitem, vCofinsitem: Double;
  F : TextFile;
  T : Integer;
  vTipES, email, fone, P_EAN, vTipDest, vIndIEDest: string; // NF Entrada = 0; NF Saida = 1
begin
   //TESTE 1.0.32

   VSEQNOTA:=0;
   VControlImpre:=0;

    with dadosCadastraisFilial do
    begin
      ls_firma := NomeFilial;
      ls_insc := InscricaoEstadual;
      ls_inscM := InscricaoMunicipal;
      ls_cnpj := Cnpj;
      ls_cnae := Cnae;
      ls_logr := Endereco;
      ls_num := Numero;
      ls_bai := Bairro;
      ls_cid := Cidade;
      ls_codcid := CodigoCidade;
      ls_uf := UF;
      ls_cep := Cep;
      ls_codpais := CodigoPais;
      ls_pais := Pais;
      ls_fone := Fone;
      ls_codmun := CodigoCidade;
    end;

   // Verificamos se foi selecionado algum pedido para emissão de boleto
   If grdDados.SelectedRows.Count = 0 then
   begin
      MessageDlg('Nenhum pedido foi selecionado para geração txt da nota fiscal eletronica.' + #13 +
                 'Por favor, verifique !', mtInformation, [mbOK], 0);
      Exit;
   end;

   If MessageDlg ('Confirma geração TXT, Nota Fiscal Eletronica' + #13 +
                 ' do(s) Pedido(s) Selecionado(s) ?', mtConfirmation,[mbOk, mbCancel], 0) = mrOk then
   begin

       Try
        frmDialNFe := TfrmDialNFe.Create(Self);
        frmDialNFe.edtNumCarga.Text:= QImpDocPedID_CARGEXPE.AsString;
        if frmDialNFe.ShowModal <> mrOK then
          exit;
      except;
        frmEmissorNFe.Free;
      end;


      //se a pasta NFE não existir, cria
      if not DirectoryExists('C:\NFE') then
        CreateDir('C:\NFE');
      //NomeArq:='C:\NFE\teste_'+ FormatDateTime('ddmmyyhhmm', now) +'.txt';
      //tpEmis = 1 Normal / 2 Contingência
      if frmDialNFe.chkCon.Checked then
        begin
          NomeArq:='C:\NFE\C_'+frmDialNFe.edtNumCarga.Text+'.txt';
          tpEmis:= '2';
        end
      else
        begin
          NomeArq:='C:\NFE\'+frmDialNFe.edtNumCarga.Text+'.txt';
          tpEmis:= '1';
        end;

      if frmDialNFe.chkAmb.Checked then
        tpAmb:= '1'
      else
        tpAmb:= '2';

      AssignFile(F,NomeArq);
      Rewrite(F);

      Contador_Txt;
      Writeln(F,'NOTA FISCAL|'+inttostr(contador)+'|');
      // Loop para todos os pedidos selecionados
      for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
        begin
          // Verificamos se o Flag do pedido é "EX"
          If (QImpDocPed['FL_STATPEDIVEND']='EX') then
            Begin
              MessageDlg('Não pode ser gerado txt! ' + #13 + 'O pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) +
                         ' está com Status "EX" ' + #13 + 'Gere novamente ou cancele a Nota se for necessário.', mtInformation, [mbOK], 0);
              Continue;
            End;

          //NF CEUAZUL ABAT.
          //Posicionamos no registro a ser impresso
          grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

          // se for hr de verão ficará -02:00 senão -03:00 em relação a Brasilia
          qryTemp.Close;
          qryTemp.SQL.Clear;
          qryTemp.SQL.Text := 'SELECT TRIM(TO_CHAR(SysTimeStamp, ''TZR TZD'')) as hr_verao from dual';
          qryTemp.Open;
          if not(qryTemp.IsEmpty) then
             ls_timezone := qryTemp.FieldByName('hr_verao').AsString;
          qryTemp.close;


          //Verifica a Data do Sistema
          qryTemp.Close;
          qryTemp.SQL.Clear;
          qryTemp.SQL.Text := ' select sysdate  from  dual ';
          qryTemp.Open;
          if not(qryTemp.IsEmpty) then ld_DataHora := qryTemp.FieldByName('SYSDATE').AsDateTime;
          qryTemp.close;

          // Selecionamos a nota fiscal de acordo com o pedido
          QryNfEle.Close;
          QryItemNfEle.Close;
          FormatSettings.shortdateformat := 'yyyy-mm-dd';

          QryNfEle.ParamByName('pi_pedivend').AsInteger    := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
          QryNfEle.ParamByName('ps_serinotafisc').AsString := QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString;
          QryNfEle.ParamByName('VNOTA').AsInteger          := QImpDocPed.FieldByName('NR_NOTAFISC').AsInteger;
          QryNfEle.ParamByName('VCANCEL').AsString         := 'N';

          QryNfEle.Open;

          QryItemNfEle.ParamByName('id_notafisc').AsFloat := QryNfEleID_NOTAFISC.AsFloat;
          QryItemNfEle.Open;

          QryBolNFe.Close;
          QryBolNFe.ParamByName('id_pedivend').AsInteger := QryNfEleID_PEDIVEND.AsInteger;
          QryBolNFe.open;

          while not QryNfEle.Eof do
            begin
              //Writeln(F,'NOTA FISCAL|1|');
              Writeln(F,'A|3.10||');

              {if (QryBolNFeID_FORMPAGA.AsInteger = 11) then
                Writeln(F,'B|35|0|'+QryNfEleNM_NATUOPERNOTAFISC.value+'|0|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|1|'+inttostr(QryNfEleID_IBGE.asinteger)+'|1|1|0|2|1|3|'+Trim(Edtversao.Text)+'|')
              else
                Writeln(F,'B|35|0|'+QryNfEleNM_NATUOPERNOTAFISC.value+'|1|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|1|'+inttostr(QryNfEleID_IBGE.asinteger)+'|1|1|0|2|1|3|'+Trim(Edtversao.Text)+'|');}

              //verifica se é nota fiscal de entrada ou saída
              if (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '1') or (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '2') or (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '3') then
                vTipES:= '0'
              else
                vTipES:= '1';

              //verficcar se é operação interna / interestadual / exterior
              if QryNfEleSG_ESTANOTAFISC.Value = 'EX' then
                vTipDest:= '3'
              else if QryNfEleSG_ESTANOTAFISC.Value = 'SP' then
                vTipDest:= '1'
              else
                vTipDest:= '2';

              //Não é contingencia
              If tpEmis = '1' then
                begin
                  QryFormaPagaPed.Close;
                  QryFormaPagaPed.ParamByName('NumeroPedido').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
                  QryFormaPagaPed.Open;
                  //Se situacao de cobrança = 3 então forma pagamento = 2 - sem forma de pagamento
                  If QryFormaPagaPedID_SITUCOBR.Value = 3 then
                    Writeln(F,'B|35||'+QryNfEleNM_NATUOPERNOTAFISC.value+'|2|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+
                    //alterada as horas de emissão e saída
                    //FormatDateTime('yyyy-mm-dd', QryNfEledt_emisnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEledt_emisnotafisc.AsDateTime) + '-03:00' + '|'+
                    //FormatDateTime('yyyy-mm-dd', QryNfEledt_saidnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEledt_saidnotafisc.AsDateTime) + '-03:00' + '|'+
                    {
                    alterado por Luis em 20/10/2015
                    FormatDateTime('yyyy-mm-dd', QryNfEledt_emisnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + '-03:00' + '|'+
                    FormatDateTime('yyyy-mm-dd', QryNfEledt_saidnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + '-03:00' + '|'+ //antes era now
                    }
                    FormatDateTime('yyyy-mm-dd', QryNfEledt_emisnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + ls_timezone + '|'+
                    FormatDateTime('yyyy-mm-dd', QryNfEledt_saidnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + ls_timezone + '|'+ //antes era now

                    vTipES + '|' + vTipDest + '|' + ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|0|0|3|'+Trim(Edversao.Text)+'|||');

                  //Se situacao de cobrança <> 3 então veriicar se forma pagamento pedido = 11 então = 0 - a vista se diferente de 11 então 1 - a prazo
                  If QryFormaPagaPedID_SITUCOBR.Value <> 3 then
                    begin
                      If QryFormaPagaPedID_FORMPAGA.Value = 11 then
                        Writeln(F,'B|35||'+QryNfEleNM_NATUOPERNOTAFISC.value+'|0|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+
                        FormatDateTime('yyyy-mm-dd', QryNfEledt_emisnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + ls_timezone + '|' +
                        FormatDateTime('yyyy-mm-dd', QryNfEledt_saidnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + ls_timezone + '|'+
                        vTipES + '|' + vTipDest + '|' + ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|0|0|3|'+Trim(Edversao.Text)+'|||');

                      If QryFormaPagaPedID_FORMPAGA.Value <> 11 then
                        Writeln(F,'B|35||'+QryNfEleNM_NATUOPERNOTAFISC.value+'|1|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+
                        FormatDateTime('yyyy-mm-dd', QryNfEledt_emisnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + ls_timezone + '|' +
                        FormatDateTime('yyyy-mm-dd', QryNfEledt_saidnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + ls_timezone + '|'+
                        vTipES + '|' + vTipDest + '|' + ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|0|0|3|'+Trim(Edversao.Text)+'|||');
                    end;
                  QryFormaPagaPed.Close;

                {
                //Antiga forma até 140911
                if (QryBolNFeID_FORMPAGA.AsInteger = 11) then                                                                                                                                                                                                           //'+ conv_hora(QryNfEledt_emisnotafisc.AsDateTime, 3)+' - Não usar por enquanto
                  Writeln(F,'B|35||'+QryNfEleNM_NATUOPERNOTAFISC.value+'|0|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'||' + vTipES +'|' + ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(Edversao.Text)+'|||')
                  //Writeln(F,'B|35|0|'+QryNfEleNM_NATUOPERNOTAFISC.value+'|0|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|'+ conv_hora(QryNfEledt_emisnotafisc.AsDateTime, 3)+'|' + vTipES +'|' + ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(Edtversao.Text)+'|' + Conv_Data(ld_DataHora, 2) + 'T' + Conv_Hora(ld_DataHora, 3) + '|Problemas tecnicos durante a emissao|')
                else                                                                                                                                                                                                                                                    //'+ conv_hora(QryNfEledt_emisnotafisc.AsDateTime, 3)+' - Não usar por enquanto
                  Writeln(F,'B|35||'+QryNfEleNM_NATUOPERNOTAFISC.value+'|1|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'||' + vTipES + '|' +ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(Edversao.Text)+'|||');
                  //Writeln(F,'B|35|0|'+QryNfEleNM_NATUOPERNOTAFISC.value+'|1|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|'+ conv_hora(QryNfEledt_emisnotafisc.AsDateTime, 3)+'|' + vTipES + '|' +ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(Edtversao.Text)+'|' + Conv_Data(ld_DataHora, 2) + 'T' + Conv_Hora(ld_DataHora, 3) + '|Problemas tecnicos durante a emissao|');
                }

                //if (QryBolNFeID_FORMPAGA.AsInteger = 11) then
                //  Writeln(F,'B|35||'+QryNfEleNM_NATUOPERNOTAFISC.value+'|0|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|'+ conv_hora(QryNfEledt_emisnotafisc.AsDateTime, 3)+'|' + vTipES + '|0|'+ ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(EdVersao.Text)+'|||')
                //  //Writeln(F,'B|35|0|'+QryNfEleNM_NATUOPERNOTAFISC.value+'|0|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|'+ conv_hora(QryNfEledt_emisnotafisc.AsDateTime, 3)+'|' + vTipES + '|0|'+ ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(EdVersao.Text)+'|||')
                //else
                //  Writeln(F,'B|35||'+QryNfEleNM_NATUOPERNOTAFISC.value+'|1|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|'+ conv_hora(QryNfEledt_emisnotafisc.AsDateTime, 3)+'|' + vTipES + '|0|'+ ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(EdVersao.Text)+'|||');
                //  //Writeln(F,'B|35|0|'+QryNfEleNM_NATUOPERNOTAFISC.value+'|1|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|'+ conv_hora(QryNfEledt_emisnotafisc.AsDateTime, 3)+'|' + vTipES + '|0|'+ ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(EdVersao.Text)+'|||');

                end;
              //Emissão em contingencia
              If tpEmis = '2' then
                begin
                  QryFormaPagaPed.Close;
                  QryFormaPagaPed.ParamByName('NumeroPedido').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
                  QryFormaPagaPed.Open;

                  //Se situacao de cobrança = 3 então forma pagamento = 2 - sem forma de pagamento
                  If QryFormaPagaPedID_SITUCOBR.Value = 3 then
                    Writeln(F,'B|35||'+QryNfEleNM_NATUOPERNOTAFISC.value+'|2|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+
                    FormatDateTime('yyyy-mm-dd', QryNfEledt_emisnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + ls_timezone + '|' +
                    FormatDateTime('yyyy-mm-dd', QryNfEledt_saidnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + ls_timezone + '|'+
                    vTipES + '|' + vTipDest + '|' + ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|0|0|3|'+Trim(Edversao.Text)+'|' + Conv_Data(ld_DataHora, 2) + 'T' + Conv_Hora(ld_DataHora, 3) + '|Problemas tecnicos durante a emissao|');

                  //Se situacao de cobrança <> 3 então veriicar se forma pagamento pedido = 11 então = 0 - a vista se diferente de 11 então 1 - a prazo
                  If QryFormaPagaPedID_SITUCOBR.Value <> 3 then
                    begin
                      If QryFormaPagaPedID_FORMPAGA.Value = 11 then
                        Writeln(F,'B|35||'+QryNfEleNM_NATUOPERNOTAFISC.value+'|0|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+
                        FormatDateTime('yyyy-mm-dd', QryNfEledt_emisnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + ls_timezone + '|' +
                        FormatDateTime('yyyy-mm-dd', QryNfEledt_saidnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + ls_timezone + '|'+
                        vTipES + '|' + vTipDest + '|' + ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|0|0|3|'+Trim(Edversao.Text)+'|' + Conv_Data(ld_DataHora, 2) + 'T' + Conv_Hora(ld_DataHora, 3) + '|Problemas tecnicos durante a emissao|');

                      If QryFormaPagaPedID_FORMPAGA.Value <> 11 then
                        Writeln(F,'B|35||'+QryNfEleNM_NATUOPERNOTAFISC.value+'|1|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+
                        FormatDateTime('yyyy-mm-dd', QryNfEledt_emisnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + ls_timezone + '|' +
                        FormatDateTime('yyyy-mm-dd', QryNfEledt_saidnotafisc.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss', QryNfEleDTHORA_GERADOC.AsDateTime) + ls_timezone + '|'+
                        vTipES + '|' + vTipDest + '|' + ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|0|0|3|'+Trim(Edversao.Text)+'|' + Conv_Data(ld_DataHora, 2) + 'T' + Conv_Hora(ld_DataHora, 3) + '|Problemas tecnicos durante a emissao|');
                    end;
                  QryFormaPagaPed.Close;

                {
                //Antiga forma até 140911
                if (QryBolNFeID_FORMPAGA.AsInteger = 11) then                                                                                                                                                                                                           //'+ conv_hora(QryNfEledt_emisnotafisc.AsDateTime, 3)+' - Não usar por enquanto
                  Writeln(F,'B|35||'+QryNfEleNM_NATUOPERNOTAFISC.value+'|0|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'||' + vTipES +'|' + ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(Edversao.Text)+'|' + Conv_Data(ld_DataHora, 2) + 'T' + Conv_Hora(ld_DataHora, 3) + '|Problemas tecnicos durante a emissao|')
                  //Writeln(F,'B|35|0|'+QryNfEleNM_NATUOPERNOTAFISC.value+'|0|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|'+ conv_hora(QryNfEledt_emisnotafisc.AsDateTime, 3)+'|' + vTipES +'|' + ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(Edtversao.Text)+'|' + Conv_Data(ld_DataHora, 2) + 'T' + Conv_Hora(ld_DataHora, 3) + '|Problemas tecnicos durante a emissao|')
                else                                                                                                                                                                                                                                                    //'+ conv_hora(QryNfEledt_emisnotafisc.AsDateTime, 3)+' - Não usar por enquanto
                  Writeln(F,'B|35||'+QryNfEleNM_NATUOPERNOTAFISC.value+'|1|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'||' + vTipES + '|' +ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(Edversao.Text)+'|' + Conv_Data(ld_DataHora, 2) + 'T' + Conv_Hora(ld_DataHora, 3) + '|Problemas tecnicos durante a emissao|');
                  //Writeln(F,'B|35|0|'+QryNfEleNM_NATUOPERNOTAFISC.value+'|1|55|'+QryNfElesg_serinotafisc_notafisc.value+'|'+floattostr(QryNfElenr_notafisc.asfloat)+'|'+datetostr(QryNfEledt_emisnotafisc.AsDateTime)+'|'+datetostr(QryNfEledt_saidnotafisc.AsDateTime)+'|'+ conv_hora(QryNfEledt_emisnotafisc.AsDateTime, 3)+'|' + vTipES + '|' +ls_codcid +'|1|'+tpEmis+'|0|'+tpAmb+'|1|3|'+Trim(Edtversao.Text)+'|' + Conv_Data(ld_DataHora, 2) + 'T' + Conv_Hora(ld_DataHora, 3) + '|Problemas tecnicos durante a emissao|');
                }

                end;

              //Verifica a Data do Sistema
              QryReferenciadas.Close;
              QryReferenciadas.SQL.Clear;
              QryReferenciadas.SQL.Add('SELECT * FROM NOTA_FISCAL_REFERENCIADA WHERE');
              QryReferenciadas.SQL.Add(' ID_PEDIVEND = ' + QImpDocPedID_PEDIVEND.AsString);
              QryReferenciadas.Open;
              If QryReferenciadas.RecordCount > 0 then
                begin
                  Writeln(F,'BA|');
                  QryReferenciadas.First;
                    While not QryReferenciadas.Eof do
                      begin
                        If QryReferenciadasTIPO.Value = '1' then
                          Writeln(F,'BA02|' +  QryReferenciadasB13_refNFe.Value + '|');

                        If QryReferenciadasTIPO.Value = '2' then
                          begin
                            Writeln(F,'BA03|' +
                            QryReferenciadasB14_cUF.Value   + '|' +
                            QryReferenciadasB14_AAMM.Value  + '|' +
                            QryReferenciadasB14_CNPJ.Value  + '|' +
                            QryReferenciadasB14_mod.Value   + '|' +
                            QryReferenciadasB14_serie.Value + '|' +
                            QryReferenciadasB14_nNF.Value   + '|');
                          end;

                        If QryReferenciadasTIPO.Value = '3' then
                          begin
                            Writeln(F,'BA10|' +
                            QryReferenciadasB20a_cUF.Value   + '|' +
                            QryReferenciadasB20a_AAMM.Value  + '|' +
                            QryReferenciadasB20a_IE.Value    + '|' +
                            QryReferenciadasB20a_mod.Value   + '|' +
                            QryReferenciadasB20a_serie.Value + '|' +
                            QryReferenciadasB20a_nNF.Value   + '|');

                            //Escreve o CNPJ
                            If QryReferenciadasB20D_CNPJ.Value <> '' then    //CNPJ <> '' e CPF = ''
                              If QryReferenciadasB20E_CPF.Value = '' then
                                Writeln(F,'BA13|' + QryReferenciadasB20D_CNPJ.Value + '|');

                            //Escreve o CPF
                            If QryReferenciadasB20D_CNPJ.Value = ''  then    //CNPJ = '' e CPF <> ''
                              If QryReferenciadasB20E_CPF.Value <> '' then
                                Writeln(F,'BA14|' + QryReferenciadasB20E_CPF.Value + '|');

                          end;//if '3'

                        { luis 30/04/2015 analisar
                        If QryReferenciadasTIPO.Value = '4' then
                        Writeln(F,'B20i|' +  QryReferenciadasB20I_REFCTE.Value + '|'); analisar
                        }
                        If QryReferenciadasTIPO.Value = '5' then
                          begin
                            Writeln(F,'BA20|' +
                            QryReferenciadasB20J_MOD.Value  + '|' +
                            QryReferenciadasB20J_NECF.Value + '|' +
                            QryReferenciadasB20J_COO.Value  + '|');
                          end;

                        QryReferenciadas.Next;
                      end;//while
                end;//if
              QryReferenciadas.close;

              Writeln(F,'C|'+ls_firma+'|'+ls_firma+'|'+ls_insc+'| |'+ls_inscM+'|'+ls_cnae+'|3|');
              Writeln(F,'C02|'+ls_cnpj+'|');

              //Writeln(F,'C02a|'+ls_cpf+'|'); alterar / criar campo 30/04/2015 luis

              Writeln(F,'C05|'+ls_logr+'|'+ls_num+'| |'+ls_bai+'|'+ls_codcid+'|'+ls_cid+'|'+ls_uf+'|'+ls_cep+'|'+ls_codpais+'|'+ls_pais+'|'+ ls_fone+'|');

              if UpperCase(QryNfElenr_inscestaclie.Value) = 'ISENTO' then
                begin
                  if (QryNfEleNR_CFOP_NOTAFISC.Value = '7101') or (QryNfEleNR_CFOP_NOTAFISC.Value = '3201') then
                    vIE:= ''
                  else
                    vIE:= 'ISENTO';
                end
              else
                begin
                  //if (UpperCase(QryNfElesg_estado.value) = 'MS') or (UpperCase(QryNfElesg_estado.value) = 'SC') then
                    vIE:= QryNfElenr_inscestaclie.value
                  //else
                    //vIE:= RetZero(QryNfElenr_inscestaclie.value,11);
                end;

              Email := '';
              qryCliente.Close;
              qryCliente.SQL.Clear;
              qryCliente.SQL.Add('SELECT C.ID_CLIENTE, C.NM_CLIENTE, C.GN_EMAICLIE, P.ID_IBGE, P.NM_PAIS');
              qryCliente.SQL.Add(' FROM CLIENTE C, BAIRRO B, CIDADE S, ESTADO E, PAIS P');
              qryCliente.SQL.Add(' WHERE B.ID_BAIRRO = C.ID_BAIRRO AND S.ID_CIDADE = B.ID_CIDADE AND E.ID_ESTADO = S.ID_ESTADO AND P.ID_PAIS = E.ID_PAIS');
              qryCliente.SQL.Add(' AND C.ID_CLIENTE = ' + QryNfEleID_CLIENTE.AsString);
              //qryCliente.SQL.SaveToFile('Teste.txt');
              qryCliente.Open;
              If qryCliente.RecordCount > 0 then Email := qryClienteGN_EMAICLIE.Value;
              qryCliente.close;

              IF QryNfEleFL_PESSCLIE.Value = 'J' then
                begin
                  if UpperCase(QryNfElenr_inscestaclie.Value) = 'ISENTO' then
                    vIndIEDest:= '2'
                  else
                    vIndIEDest:= '1';
                end
              else
                vIndIEDest:= '9';

              if vIndIEDest = '1' then
                Writeln(F,'E|'+TiraAcentos(QryNfElenm_cliente.AsString)+'|'+ vIndIEDest +'|'+ vIE +'|||' + Email + '|')
              else
                Writeln(F,'E|'+TiraAcentos(QryNfElenm_cliente.AsString)+'|'+ vIndIEDest +'||||' + Email + '|');

              IF QryNfEleFL_PESSCLIE.Value = 'J' then
                BEGIN
                  if copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) = '7' then
                    Writeln(F,'E02||')
                  else
                    Writeln(F,'E02|'+QryNfElenr_cnpjclie.value+'|');
                END
              ELSE
                BEGIN
                  Writeln(F,'E03|'+QryNfElenr_cpfclie.value+'|');
                END;
              //Writeln(F,'E05|'+TiraAcentos(QryNfElenm_logrendeclie.AsString)+'|'+QryNfElenr_logrendeclie.VALUE+'| |'+TiraAcentos(QryNfEleNM_BAIRRO.AsString)+'|'+INTTOSTR(QryNfEleID_IBGE.value)+'|'+TiraAcentos(QryNfEleNM_CIDADE.AsString)+'|'+QryNfElesg_estado.value+'|'+QryNfEleNR_CEPNOTAFISC.VALUE+'|'+inttostr(QryNfEleibgepais.asinteger)+'|'+TiraAcentos(QryNfElenm_pais.VALUE)+'|'+QryNfEleNR_DDDCIDA.AsString+QryNfEleNR_FONENOTAFISC.AsString+'|');

              Fone := '';
              Fone := RemoveChar(QryNfEleNR_FONENOTAFISC.AsString);
              If length(Fone) < 8 then
              For t := length(Fone) to 8 do Fone := Fone + '0';

              //vai ler do banco...
              if copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) = '7' then
                Writeln(F,'E05|'+TiraAcentos(QryNfElenm_logrendeclie.AsString)+'|'+QryNfElenr_logrendeclie.VALUE+'| |'+TiraAcentos(QryNfEleNM_BAIRRO.AsString)+'|9999999|Exterior|'+QryNfElesg_estado.value+'|'+QryNfEleNR_CEPNOTAFISC.VALUE+'|'+inttostr(QryNfEleibgepais.asinteger)+'|'+TiraAcentos(QryNfElenm_pais.VALUE)+'|'+ Fone +'|')
              else
                Writeln(F,'E05|'+TiraAcentos(QryNfElenm_logrendeclie.AsString)+'|'+QryNfElenr_logrendeclie.VALUE+'| |'+TiraAcentos(QryNfEleNM_BAIRRO.AsString)+'|'+INTTOSTR(QryNfEleID_IBGE.value)+'|'+TiraAcentos(QryNfEleNM_CIDADE.AsString)+'|'+QryNfElesg_estado.value+'|'+QryNfEleNR_CEPNOTAFISC.VALUE+'|'+inttostr(QryNfEleibgepais.asinteger)+'|'+TiraAcentos(QryNfElenm_pais.VALUE)+'|'+ Fone +'|');

              QryNFeBc.Close;
              QryNFeBc.ParamByName('id_notafisc').AsInteger := QryNfEleID_NOTAFISC.AsInteger;
              QryNFeBc.open;

              VSoma:=1;
              //      QryItemNfEle.Open;
              QryItemNfEle.first;
              while not QryItemNfEle.Eof do
                begin

                  //Filtra o caodigo de barras EAN
                  P_EAN := '';
                  qryEANFE.Close;
                  qryEANFE.SQL.Clear;
                  qryEANFE.SQL.Add('SELECT QN_EAN_NFE FROM MATERIAL_EMBALAGEM WHERE ID_PRODMATEEMBA = ' + QryItemNfEleID_PRODMATEEMBA_ITEMNOTAFISC.AsString);
                  qryEANFE.Open;
                  If qryEANFE.RecordCount > 0 then P_EAN := qryEANFEQN_EAN_NFE.Value;
                  qryEANFE.Close;

                  vCofinsitem:= (QryitemNfEleVL_ITEMNOTAFISC.Value * 0.076);
                  vPisitem:= (QryitemNfEleVL_ITEMNOTAFISC.Value * 0.0165);
                  Writeln(F,'H|'+inttostr(Vsoma)+'| |');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              //

                  if (gi_Filial = 4) or (gi_Filial = 91) then
                    Writeln(F,'I|'+FloatToStr(QryItemNfEleID_PRODMATEEMBA_ITEMNOTAFISC.AsFloat)+'|'+ P_EAN +'|'+TiraAcentos(QryItemNfEleNM_MATERIAL_ITEMNOTAFISC.value)+ '|' + QryItemNfEleNR_CLASFISC.AsString + '||'+QryItemNfEleNR_CFOP_ITEMNOTAFISC.value+'|'+TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ReplaceStr(FloatToStrF(QryItemNfEleVL_UNITBRUTITEMNOTAFISC.value,ffFixed,16,5),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfEleVL_BRUTITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ P_EAN +'|'+TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfEleVL_UNITBRUTITEMNOTAFISC.AsFloat,ffFixed,16,5),',','.')+'|||||1|'+QryItemNfEleSG_ORDEMCOMPRA.Text+'|'+QryItemNfEleQN_ITEMORDEMCOMPRA.Text+'|')
                  else
                    Writeln(F,'I|'+FloatToStr(QryItemNfEleID_PRODMATEEMBA_ITEMNOTAFISC.AsFloat)+'|'+ P_EAN +'|'+TiraAcentos(QryItemNfEleNM_MATERIAL_ITEMNOTAFISC.value)+ '|' + QryItemNfEleNR_CLASFISC.AsString + '||'+QryItemNfEleNR_CFOP_ITEMNOTAFISC.value+'|'+TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ReplaceStr(FloatToStrF(QryItemNfEleVL_UNITBRUTITEMNOTAFISC.value,ffFixed,16,5),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfEleVL_BRUTITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ P_EAN +'|'+TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfEleVL_UNITBRUTITEMNOTAFISC.AsFloat,ffFixed,16,5),',','.')+'|||||1|||');

                  { descrição dos campos
                  Writeln(F,'I|'+ //I|
                            FloatToStr(QryItemNfEleID_PRODMATEEMBA_ITEMNOTAFISC.AsFloat)+'|'+//CProd|
                            P_EAN +'|'+//CEAN|
                            TiraAcentos(QryItemNfEleNM_MATERIAL_ITEMNOTAFISC.value)+ '|' + //XProd|
                            QryItemNfEleNR_CLASFISC.AsString + '|'+ //NCM|
                            '|'+//EXTIPI|
                            QryItemNfEleNR_CFOP_ITEMNOTAFISC.value+'|'+ //CFOP|
                            TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ //UCom|
                            ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ //QCom|
                            ReplaceStr(FloatToStrF(QryItemNfEleVL_UNITBRUTITEMNOTAFISC.value,ffFixed,16,5),',','.')+'|'+ //VUnCom|
                            ReplaceStr(floattostrF(QryItemNfEleVL_BRUTITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+//VProd|
                            P_EAN +'|'+ //CEANTrib|
                            TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ //UTrib|
                            ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ //QTrib|
                            ReplaceStr(floattostrF(QryItemNfEleVL_UNITBRUTITEMNOTAFISC.AsFloat,ffFixed,16,5),',','.')+'|'+ //VUnTrib|
                            '|'+ //VFrete|
                            '|'+ //VSeg|
                            '|'+ //VDesc|
                            '|'+ //vOutro|
                            '1|'+ // indTot|
                            '|'+ //xPed|
                            '|');//nItemPed|

                    }
                  //I18 - Caso seja exportação - CFOP

                  //Writeln(F,'I|'+FloatToStr(QryItemNfEleID_PRODMATEEMBA_ITEMNOTAFISC.AsFloat)+'||'+TiraAcentos(QryItemNfEleNM_MATERIAL_ITEMNOTAFISC.value)+ '|' + QryItemNfEleNR_CLASFISC.AsString + '| | |'+QryItemNfEleNR_CFOP_ITEMNOTAFISC.value+'|'+TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ReplaceStr(FloatToStrF(QryItemNfEleVL_UNITBRUTITEMNOTAFISC.value,ffFixed,16,5),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfEleVL_BRUTITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'||'+TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfEleVL_UNITBRUTITEMNOTAFISC.AsFloat,ffFixed,16,5),',','.')+'||||');
                  //Writeln(F,'I|'+FloatToStr(QryItemNfEleID_PRODMATEEMBA_ITEMNOTAFISC.AsFloat)+'||'+TiraAcentos(QryItemNfEleNM_MATERIAL_ITEMNOTAFISC.value)+'|'+ QryItemNfEleNR_CLASFISC.AsString +'| | |'+QryItemNfEleNR_CFOP_ITEMNOTAFISC.value+'|'+TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ReplaceStr(FloatToStrF(QryItemNfEleVL_UNITITEMNOTAFISC.value,ffFixed,16,4),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfEleVL_ITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'||'+TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE)+'|'+ReplaceStr(FloatToStrF(QryItemNfEleQN_PESOITEMNOTAFISC.value,ffFixed,12,4),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfEleVL_UNITITEMNOTAFISC.AsFloat,ffFixed,16,4),',','.')+'| | | |');
                  Writeln(F,'M|');
                  Writeln(F,'N|');
                  //Writeln(F,'N04|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.value,2,2)+'|3|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_REDUICMSITEMNOTAFISC.value,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_ICMSITEMNOTAFISC.VALUE,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_ICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|');

                  if COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '00' then
                    Writeln(F,'N02|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2)+'|3|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_ICMSITEMNOTAFISC.VALUE,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_ICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|');
                    //Writeln(F,'N02|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2)+'|3|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_REDUICMSITEMNOTAFISC.Value,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_ICMSITEMNOTAFISC.VALUE,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_ICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|');
                  if COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '20' then
                    Writeln(F,'N04|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2)+'|3|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_REDUICMSITEMNOTAFISC.Value,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_ICMSITEMNOTAFISC.VALUE,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_ICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|');

                  if (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '40') or (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '41') or (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '50') then
                    Writeln(F,'N06|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2)+'|||');
                    //Writeln(F,'N06|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2)+'|3|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_REDUICMSITEMNOTAFISC.Value,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_ICMSITEMNOTAFISC.VALUE,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_ICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|');
                  {
                  if (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '41') or (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '41') or (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '50') then
                    Writeln(F,'N06|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2)+'|||');
                    //Writeln(F,'N06|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2)+'|3|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_REDUICMSITEMNOTAFISC.Value,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfElePC_ICMSITEMNOTAFISC.VALUE,ffFixed,5,2),',','.')+'|'+ReplaceStr(FLOATTOSTRF(QryItemNfEleVL_ICMSITEMNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|');
                  }
                  if (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '60') then
                    Writeln(F,'N08|0|'+COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2)+'|||');

                  //colocar a rotina de impressão do IPI qdo for da base metal
                  if (gi_Filial = 4) or (gi_Filial = 91) then //metal
                  begin
                    //se produto com ipi insere as linhas
                    if QryItemNfEleVL_IPIITEMNOTAFISC.Value <> 0 then
                    begin
                      //IPI tributável
                      Writeln(F,'O|||||999|');
                      Writeln(F,'O07|50|'+ReplaceStr(floattostrF(QryItemNfEleVL_IPIITEMNOTAFISC.Value,ffFixed,15,2),',','.')+'|');
                      Writeln(F,'O10|'+ReplaceStr(floattostrF((QryItemNfEleVL_ICMSITEMNOTAFISC.Value + QryItemNfEleVL_ITEMNOTAFISC.Value),ffFixed,15,2),',','.')+'|'+ReplaceStr(floattostrF(QryItemNfElePC_IPIITEMNOTAFISC.Value,ffFixed,5,2),',','.')+'|');
                    end
                    else
                    begin
                      //IPI Não tributável
                      Writeln(F,'O|||||999|');
                      Writeln(F,'O08|51|');
                    end;
                  end;

                  qryPisCofins.Close;
                  qryPisCofins.ParamByName('pID').Value:= QImpDocPedID_TIPOPEDIVEND.Value;
                  qryPisCofins.Open;
                  if qryPisCofinsNR_ST_PISCOFINS.Value = '01' then
                   begin
                     Writeln(F,'Q|');
                     //Writeln(F,'Q02|01|'+ReplaceStr(floattostrF(QryitemNfEleVL_ITEMNOTAFISC.Value,ffFixed,15,2),',','.')+'|1.65|'+ReplaceStr(FLOATTOSTRF(vPisitem,ffFixed,15,2),',','.')+'|');
                     Writeln(F,'Q02|01|'+ReplaceStr(floattostrF(QryItemNfEleVL_BRUTITEMNOTAFISC.Value,ffFixed,15,2),',','.')+'|1.65|'+ReplaceStr(FLOATTOSTRF(vPisitem,ffFixed,15,2),',','.')+'|');
                     Writeln(F,'S|');
                     //Writeln(F,'S02|01|'+ReplaceStr(FloatToStrF(QryitemNfEleVL_ITEMNOTAFISC.Value,ffFixed,15,2),',','.')+'|7.60|'+ReplaceStr(FLOATTOSTRF(vCofinsitem,ffFixed,15,2),',','.')+'|');
                     Writeln(F,'S02|01|'+ReplaceStr(FloatToStrF(QryItemNfEleVL_BRUTITEMNOTAFISC.Value,ffFixed,15,2),',','.')+'|7.60|'+ReplaceStr(FLOATTOSTRF(vCofinsitem,ffFixed,15,2),',','.')+'|');

                     vCofins:= (QryNfEleVL_NOTAFISC.Value * 0.076);
                     vPis:= (QryNfEleVL_NOTAFISC.Value * 0.0165);
                   end
                  else
                    begin
                      Writeln(F,'Q|');
                      Writeln(F,'Q04|'+qryPisCofinsNR_ST_PISCOFINS.Value+'|');
                      Writeln(F,'S|');
                      Writeln(F,'S04|'+qryPisCofinsNR_ST_PISCOFINS.Value+'|');

                      vCofins:= 0;
                      vPis:= 0;
                    end;
                  VSoma:=VSoma+1;
                  QryItemNfEle.Next;
                end;


              {
                  //calcular se tiver ticad0o o flag da tabela OPERACAO_TIPO - cofins FL_COFTIPOOPER
                  vCofins:= (QryNfEleVL_NOTAFISC.Value * 0.076);
                  //calcular se tiver ticado o flag da tabela OPERACAO_TIPO - pis FL_PISTIPOOPER
                  vPis:= (QryNfEleVL_NOTAFISC.Value * 0.0165);
              }
              Writeln(F,'W|');
              Writeln(F,'W02|'+ReplaceStr(floattostrF(QryNfEleVL_BASEICMSNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(floattostrF(QryNfEleVL_ICMSNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|0.00|0.00|'+ReplaceStr(floattostrF(QryNfEleVL_PRODNOTAFISC.VALUE,ffFixed,15,2),',','.')+'|'+ReplaceStr(floattostrF(QryNfElevl_fretnotafisc.value,ffFixed,15,2),',','.')+'|0.00|0.00|0.00|'+ReplaceStr(floattostrF(QryNfElevl_ipinotafisc.value,ffFixed,15,2),',','.')+'|'+ReplaceStr(floattostrF(VPis,ffFixed,15,2),',','.')+'|'+ReplaceStr(floattostrF(VCofins,ffFixed,15,2),',','.')+'|0.00|'+ReplaceStr(FloatToStrF(QryNfEleVL_NOTAFISC.value,ffFixed,15,2),',','.')+'|');
              {if QryNfEleFL_TIPOFRETNOTAFISC.Value = '1' then
                Writeln(F,'X|0|')
              else
                Writeln(F,'X|1|');}
              //79698
              if (UpperCase(TiraAcentos(QryNfEleNM_TRANSPORTADOR_NOTAFISC.Value)) = 'O MESMO') and (RemoveChar(QryNfEleGN_PLACVEICNOTAFISC.AsString) = '') then
                begin
                  Writeln(F,'X|9|');
                  {Writeln(F,'X03||||||');
                  Writeln(F,'X05||');
                  Writeln(F,'X18||||');
                  Writeln(F,'X26|||Ceu Azul Sta Rita||||');}
                end
              else
                begin
                  {FABRICIO - 31/07/2018 - MOTIVO:NFE 4.0
                  if QryNfEleFL_TIPOFRETNOTAFISC.Value = '1' then
                    Writeln(F,'X|0|')
                  else
                    Writeln(F,'X|1|');}
                  Writeln(F,'X|'+ QryNfEleFL_TIPOFRETNOTAFISC.AsString + '|');

                  //if UpperCase(QryNfElesg_estatrannotafisc.VALUE) = 'MS' then
                    vIE_t:= QryNfElenr_ietrannotafisc.value;
                  //else
                    //vIE_t:= RetZero(QryNfElenr_ietrannotafisc.value,11);

                  Writeln(F,'X03|'+TiraAcentos(QryNfElenm_transportador_notafisc.AsString)+'|'+ vIE_t+'|'+TiraAcentos(QryNfElenm_endetrannotafisc.AsString)+'|'+TiraAcentos(QryNfElenm_cidatrannotafisc.AsString)+'|'+QryNfElesg_estatrannotafisc.VALUE+'|');
                  //Ver pedido nº 613417 - sorocaba
                  if (QryNfEleNR_CPFTRANNOTAFISC.IsNull) then
                    begin
                      if (QryNfElenr_cnpjtrannotafisc.IsNull) or (QryNfElenr_cnpjtrannotafisc.Value = '00.000.000/0000-00') then
                        Writeln(F,'X04||')
                      else
                        Writeln(F,'X04|'+SoNumeros(QryNfElenr_cnpjtrannotafisc.AsString)+'||');
                    end
                  else
                    Writeln(F,'X05|'+SoNumeros(QryNfEleNR_CPFTRANNOTAFISC.AsString) +'|');

                  Writeln(F,'X18|'+ UpperCase(RemoveChar(QryNfEleGN_PLACVEICNOTAFISC.AsString)) +'|'+ QryNfEleSG_ESTAPLACVEICNOTAFISC.AsString +'||');
                  Writeln(F,'X26|'+ QryNfEleQN_VOLUNOTAFISC.AsString +'|'+ TiraAcentos(QryNfEleGN_ESPENOTAFISC.AsString) +'|Ceu Azul Sta Rita||' + ReplaceStr(FloatToStrF(QryNfEleQN_PESOLIQUNOTAFISC.AsFloat,ffFixed,15,3),',','.') +'|'+ ReplaceStr(FloatTOStrF(QryNfEleQN_PESOBRUTNOTAFISC.AsFloat,ffFixed,15,3),',','.') +'|');
                  Writeln(F,'X33|' + TiraAcentos(QImpDocPedNR_LACRCARGEXPE.Value) + '|'); //lacre
                end;

                  //Writeln(F,'X33|' + TiraAcentos(QImpDocPedNR_LACRCARGEXPE.Value) + '|'); //lacre


              (*    Veículo
              X18 placa Placa do Veículo C Obrig 1 a 8
              X18 UF Sigla da UF C Obrig 2
              X18 RNTC Registro Nacional de Transportador de

              Volumes
              X26 qVol Quantidade de volumes transportados N Opcional 15
              X26 esp Espécie dos volumes transportados C Opcional 1 a 60
              X26 marca Marca dos volumes transportados C Opcional 1 a 60
              X26 nVol Numeração dos volumes transportados C Opcional 1 a 60
              X26 pesoL Peso Líquido (em kg) N Opcional 15 3
              X26 pesoB Peso Bruto (em kg) N Opcional 15 3   *)

              if (QryBolNFevl_boleto.Value > 0) then
                begin
                  Writeln(F,'Y|');
                  if (QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat>0) then
                     Writeln(F,'Y02|'+QryBolNFenr_boleto.Value+'|'+ReplaceStr(FloatToStrF(QryNfEleVL_NOTAFISC.Value,ffFixed,15,2),',','.')+'|'+ReplaceStr(FloatToStrF(QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat,ffFixed,15,2),',','.')+'|'+ReplaceStr(FloatToStrF((QryBolNFevl_boleto.AsFloat),ffFixed,15,2),',','.')+'|')
                     //Writeln(F,'Y02|'+QryBolNFenr_boleto.Value+'|'+ReplaceStr(FloatToStrF(QryBolNFevl_boleto.Value,ffFixed,15,2),',','.')+'|'+ReplaceStr(FloatToStrF(QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat,ffFixed,15,2),',','.')+'|'+ReplaceStr(FloatToStrF((QryBolNFevl_boleto.AsFloat-QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat),ffFixed,15,2),',','.')+'|')
                  else
                     Writeln(F,'Y02|'+QryBolNFenr_boleto.Value+'|'+ReplaceStr(FloatToStrF(QryBolNFevl_boleto.Value,ffFixed,15,2),',','.')+'||'+ReplaceStr(FloatToStrF((QryBolNFevl_boleto.AsFloat-QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat),ffFixed,15,2),',','.')+'|');
                  Writeln(F,'Y07|'+QryBolNFenr_boleto.Value+'|'+DateToStr(QryBolNFedt_vencbole.Value)+'|'+ReplaceStr(FloatToStrF(qryBolNFevl_boleto.Value,ffFixed,15,2),',','.')+'|');
                end;
              {else
                begin
                  Writeln(F,'Y02|||||');
                  Writeln(F,'Y07||||');
                end;}

              //Writeln(F,'Z|TESTE|TESTE|');
              //Writeln(F,'Z04|TESTE|TESTE|');

              qryTemp.Close;
              QryTemp.SQL.Clear;
              qryTemp.SQL.Text := ' SELECT DISTINCT OBS_PADR_ICMS.GN_OBSEPADRNOTAFISC OBS_ICMS, ' +
                                  ' OBS_PADR_IPI.GN_OBSEPADRNOTAFISC  OBS_IPI, '+
                                  ' PEDIDO_VENDA.GN_OBSEPADR_PEDIVEND, '+
                                  ' PEDIDO_VENDA.ID_CARGEXPE, ' +
                                  ' PEDIDO_VENDA.ID_PEDIVEND ' +
                                  ' FROM OPERACAO_TIPO, '+
                                  ' PEDIDO_VENDA, '+
                                  ' PEDIDO_VENDA_ITEM, '+
                                  ' NOTA_FISCAL_OBSERVACAO_PADRAO OBS_PADR_ICMS, '+
                                  ' NOTA_FISCAL_OBSERVACAO_PADRAO OBS_PADR_IPI '+
                                  ' WHERE ( OPERACAO_TIPO.ID_TIPOOPER = PEDIDO_VENDA_ITEM.ID_TIPOOPER ) and '+
                                  ' ( OPERACAO_TIPO.ID_OBSEPADRNOTAFISC_DLICMS = OBS_PADR_ICMS.ID_OBSEPADRNOTAFISC (+)) and '+
                                  ' ( OPERACAO_TIPO.ID_OBSEPADRNOTAFISC_DLIPI = OBS_PADR_IPI.ID_OBSEPADRNOTAFISC (+)) and '+
                                  ' (PEDIDO_VENDA.ID_PEDIVEND = PEDIDO_VENDA_ITEM.ID_PEDIVEND) and ' +
                                  ' ( PEDIDO_VENDA.ID_PEDIVEND = ' + QImpDocPedID_PEDIVEND.AsString + ') ';

              qryTemp.Open;

              // Concatenamos as observações
              ls_ObsF:= '';
              ls_ObsC:= '';
              qryTemp.First;
              ls_ObsC:= qryTemp.FieldByName('GN_OBSEPADR_PEDIVEND').AsString;
              ls_ObsC:= qryTemp.FieldByName('GN_OBSEPADR_PEDIVEND').AsString + ' CARGA: ' + qryTemp.FieldByName('ID_CARGEXPE').AsString + ' PEDIDO: ' + qryTemp.FieldByName('ID_PEDIVEND').AsString;

              //ShowMessage(ls_ObsC);
              while not qryTemp.Eof do
              begin
                ls_ObsF := ls_ObsF + qryTemp.FieldByName('OBS_ICMS').AsString +
                          qryTemp.FieldByName('OBS_IPI').AsString;
                qryTemp.Next;
              end;
              {Referências
              Str := StringReplace(S,#13#10,#32,[rfReplaceAll]);
              Str := StringReplace(S,#$D#$A,#32,[rfReplaceAll]);
              Str := StringReplace(S,sLineBreak,#32,[rfReplaceAll]);}
              //Fisco
              ls_ObsF:= Trim(StringReplace(ls_ObsF, #$D#$A, ' ', [rfReplaceAll]));
              ls_ObsF:= Trim(StringReplace(ls_ObsF, #9, ' ', [rfReplaceAll]));
              //Contribuinte
              ls_ObsC:= Trim(StringReplace(ls_ObsC, #$D#$A, ' ', [rfReplaceAll]));
              ls_ObsC:= Trim(StringReplace(ls_ObsC, #9, ' ', [rfReplaceAll]));
              Writeln(F,'Z|'+Trim(Copy(TiraAcentos(ls_ObsF),1,256)) + '|' + Trim(Copy(TiraAcentos(ls_ObsC),1,5000))+ '|');
              //ShowMessage(ls_ObsF);
              //ShowMessage(ls_ObsC);
              Writeln(F,'Z04||');
              QryNfEle.Next;



              //Exportação - Informar apenas na exportação.
              if copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) = '7' then
                begin
                  qryCidExpNf.Close;
                  qryCidExpNf.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
                  qryCidExpNf.Open;

                  Writeln(F,'ZA|'+ copy(qryCidExpNfSG_ESTADO.Value,1,2) + '|' + TiraAcentos(qryCidExpNfNM_CIDADE.Value) + '|');
                end;
            end;
        end;

   end;

  CloseFile(F);
  FormatSettings.shortdateformat := 'dd/mm/yyyy';
  // Verificamos se a query Form não está vazia
  If not QImpDocPed.IsEmpty then
    begin
      QImpDocPed.DisableControls;
      // Limpamos todas as seleções do griDados
      grdDados.DataSource.DataSet.First;
      For vlLinha := 0 to VCONT do
        begin
          grdDados.SelectedRows.CurrentRowSelected := False;
          grdDados.DataSource.DataSet.Next;
        end;
      grdDados.SelectedRows.Refresh;
      QImpDocPed.EnableControls;
    end;
end;

//Comandos NFe Monitor 1 / 2 ***************************************************

procedure TfrmImpDocPed.ACBR_Imprimir_Danfe_NFe(Sender: TObject);
var
  li_Loop, vlLinha    : Integer;
  cChaveNFe : String;
begin

  CancelaNFe := 0;

  //Apaga o arquivo de saida dos comandos para receber a resposta limpa
  If FileExists('C:\ACBrNFeMonitor\SAINFE.TXT') then Deletefile('C:\ACBrNFeMonitor\SAINFE.TXT');
  //Apaga o arquivo de entrada caso existir
  If FileExists('C:\ACBrNFeMonitor\ENTNFE.TXT') then Deletefile('C:\ACBrNFeMonitor\ENTNFE.TXT');

  // Verificamos se existe algum ítem selecionado
  if grdDados.SelectedRows.Count = 0 then
  begin
    MessageDlg('Pelo menos um pedido deve ser selecionado !', mtWarning, [mbOk], 0);
    Exit;
  end;

  //Abre o arquivo xml
  qryNFEXML.Open;

  // Varremos a qryForm para o cancelamento das NFs selecionadas
  for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
  begin

    // Posicionamos no registro desejado
    grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

    // Selecionamos a nota fiscal de acordo com o pedido
    QryNfEle.Close;
    QryItemNfEle.Close;
    FormatSettings.shortdateformat := 'yyyy-mm-dd';
    QryNfEle.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
    QryNfEle.ParamByName('ps_serinotafisc').AsString := QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString;
    QryNfEle.ParamByName('VNOTA').AsInteger  := QImpDocPed.FieldByName('NR_NOTAFISC').AsInteger;
    QryNfEle.ParamByName('VCANCEL').AsString := 'N';
    QryNfEle.Open;
    If QryNfEle.RecordCount > 0 then
    begin

      qryNFEXML.Close;
      qryNFEXML.SQL.Clear;
      qryNFEXML.SQL.Text := 'SELECT * FROM NOTA_FISCAL_XML WHERE ID_NOTAFISC = ' + QryNfEleID_NOTAFISC.AsString;
      qryNFEXML.Open;
      If qryNFEXML.RecordCount > 0 then
      begin

        If qryNFEXMLNFE_XML.AsString = '' then
        begin
          MessageDlg('A Nota Fiscal: ' + IntToStr(QImpDocPedNR_NOTAFISC.AsInteger) +
          ' Não tem um XML registrado para ela... Não poderá ser impresso o DANFE. !', mtInformation, [mbOK], 0);
          Continue;
        end;

        //Obter a chave da nfe
        cChaveNFe := '';
        cChaveNFe := qryNFEXMLNFE_CHAVE.Value;

        If cChaveNFe = '' then ShowMessage('NFE NÃO CADASTRADA NA SECRETARIA DA FAZENDA... NÃO FOI ENCONTRADO NA BASE DE DADOS O XML EMITIDO NO REGISTRO DA SECRETARIA...');

        If cChaveNFe <> '' then
        begin

          //coloca o nome final
          cChaveNFe := 'C:\ACBrNFeMonitor\Logs\' + cChaveNFe + '-nfe.xml';

          qryNFEXMLNFE_XML.SaveToFile(cChaveNFe);

          //Envia o comando para o ACBrNFe
          ACBrNfe.Gravar_ENT('NFE.ImprimirDanfe("' + cChaveNFe + '")');

          Sleep(2000);

          //Verifica retorno da impressao na danfe
          ACBrNFe.Tentando_comunicacao_Sefaz('Imprimir_Danfe_NFe', QImpDocPedNR_NOTAFISC.AsInteger, 0, 'ImpDocPed');

        end;

      end;

    end;

    QryNfEle.Close;

  end;

  //Abre o arquivo xml
  qryNFEXML.Close;

  // Verificamos se a query Form não está vazia
  If not QImpDocPed.IsEmpty then
  begin

    QImpDocPed.DisableControls;
    // Limpamos todas as seleções do griDados
    grdDados.DataSource.DataSet.First;

    For vlLinha := 0 to VCONT do
    begin
      grdDados.SelectedRows.CurrentRowSelected := False;
      grdDados.DataSource.DataSet.Next;
    end; //

    grdDados.SelectedRows.Refresh;
    QImpDocPed.EnableControls;

  end; //

  //Avisa que ja imprimiu
  FormatSettings.shortdateformat := 'dd/mm/yyyy';
  ShowMessage('TODAS AS DANFEs Impressas com sucesso...');
end;

procedure TfrmImpDocPed.ACBR_Cancelar_NFe(Sender: TObject);
var
  li_Loop    : Integer;
  cJustificativa, cChaveNFe : String;
begin

  CancelaNFe := 0;

  //Apaga o arquivo de saida dos comandos para receber a resposta limpa
  If FileExists('C:\ACBrNFeMonitor\SAINFE.TXT') then Deletefile('C:\ACBrNFeMonitor\SAINFE.TXT');
  //Apaga o arquivo de entrada caso existir
  If FileExists('C:\ACBrNFeMonitor\ENTNFE.TXT') then Deletefile('C:\ACBrNFeMonitor\ENTNFE.TXT');

  // Verificamos se existe algum ítem selecionado
  if grdDados.SelectedRows.Count = 0 then
  begin
    MessageDlg('Pelo menos um pedido deve ser selecionado !', mtWarning, [mbOk], 0);
    Exit;
  end;

  // Varremos a qryForm para o cancelamento das NFs selecionadas
  for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
  begin
    // Posicionamos no registro desejado
    grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

    if (QImpDocPed.FieldByName('FL_BLOQAJUSFINAPEDIVEND').AsString = 'S') then
    begin
      MessageDlg('Atenção! Nota fiscal não pode ser Cancelada, para o pedido: ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ', pois já está Bloqueado!', mtInformation, [mbOK], 0);
      Continue;
    end;


    // Selecionamos as cargas a serem canceladas
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text :=
    'SELECT NOTA_FISCAL.ID_NOTAFISC,                                                         '+
    '       NOTA_FISCAL.NR_NOTAFISC,                                                         '+
    '       NOTA_FISCAL.FL_CANCNOTAFISC                                                      '+
    '  FROM NOTA_FISCAL,                                                                     '+
    '       PEDIDO_VENDA_NOTA_FISCAL                                                         '+
    ' WHERE (NOTA_FISCAL.ID_NOTAFISC = PEDIDO_VENDA_NOTA_FISCAL.ID_NOTAFISC)                 '+
    '   AND (NOTA_FISCAL.FL_CANCNOTAFISC = ''N'')                                            '+
    '   AND (PEDIDO_VENDA_NOTA_FISCAL.ID_PEDIVEND = ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ')';
    QryTemp.Open;

    // Verificamos se foi encontrada a nota fiscal para o pedido
    if qryTemp.IsEmpty then
    begin
      MessageDlg('Nota fiscal não encontrada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !', mtInformation, [mbOK], 0);
      Continue;
    end;

    // Posicionamos no primeiro registro da query
    qryTemp.First;

    while not qryTemp.Eof do
    begin

      // Verificamos se a nota fiscal já está cancelada
      if qryTemp.FieldByName('FL_CANCNOTAFISC').AsString = 'S' then
      begin
        MessageDlg('A Nota fiscal ' + IntToStr(qryTemp['NR_NOTAFISC']) + ' do pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' já está cancelada !' + #13 +
                   'Por favor, verifique !', mtInformation, [mbOK], 0);
        // Proximo registro
        qryTemp.Next;
        Continue;
      end;

      // Verificamos se o usuario deseja cancelar a nota fiscal
      if MessageDlg('Deseja realmente cancelar a nota fiscal ' +
                     IntToStr(QImpDocPed['NR_NOTAFISC']), mtConfirmation, [mbYes, mbNO], 0) = mrYes then
      begin

        //Cancela nota no acbrnfe
        If not(InputQuery('Inutilizar NFe', 'Digite a Justificativa:', cJustificativa)) then exit;
        //Localiza a NFe para pegar o codigo do xml

        qryNFEXML.Close;
        qryNFEXML.SQL.Clear;
        qryNFEXML.SQL.Text := 'SELECT * FROM NOTA_FISCAL_XML WHERE ID_NOTAFISC = ' + qryTemp.FieldByName('ID_NOTAFISC').AsString;
        qryNFEXML.Open;
        If qryNFEXML.RecordCount > 0 then
        begin

          //Obter a chave da nfe
          cChaveNFe := '';
          cChaveNFe := qryNFEXMLNFE_CHAVE.Value;

          If cChaveNFe = '' then ShowMessage('NFE NÃO CANCELADA NA SECRETARIA DA FAZENDA... NÃO FOI ENCONTRADO NA BASE DE DADOS O XML EMITIDO NO REGISTRO DA SECRETARIA...');

          If cChaveNFe <> '' then
          If cJustificativa <> '' then
          begin
            //Limpa o memo
//            MemoACBrNFe.Lines.Clear;
            //Envia o comando para o ACBrNFe
            ACBrNfe.Gravar_ENT('NFE.CancelarNFe("' + cChaveNFe + '", "' + cJustificativa + '")');
            //Verifica o resultado do retorno
            //ACBrNFe.Verifica_Resposta_CancelarNFe(qryTemp.FieldByName('NR_NOTAFISC').AsInteger);
            ACBrNFe.Tentando_comunicacao_Sefaz('Cancelar_NFe', qryTemp.FieldByName('NR_NOTAFISC').AsInteger, 0, 'ImpDocPed');
            //Mostra o envio do lote na tela
            //If MemoACBrNFe.Lines.Count > 0 then PnlEnvioXml.Visible := True;
          end;

        end;

        // Cancelamos a NF
        qryTempUpda.Close;
        qryTempUpda.SQL.Clear;
        qryTempUpda.SQL.Text := 'UPDATE NOTA_FISCAL                                                     '+
                                  '   SET FL_CANCNOTAFISC = ''S''                                         '+
                                  ' WHERE ID_NOTAFISC = ' + qryTemp.FieldByName('ID_NOTAFISC').AsString;
        qryTempUpda.ExecSQL;

        // Atualizamos a data de geração no pedido de venda
        QImpDocPed.Edit;
        QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString := '';
        QImpDocPed.FieldByName('VL_OUTRAJUSANTPEDIVEND').AsFloat:= QImpDocPed.FieldByName('VL_OUTRAJUSPEDIVEND').AsFloat;
        QImpDocPed.FieldByName('VL_OUTRAJUSPEDIVEND').AsFloat:= 0;
        QImpDocPed.Post;

        // Atualizamos o banco
        QImpDocPed.ApplyUpdates;

        // Limpamos o cache
        QImpDocPed.CommitUpdates;

        // Apagamos os boletos
{        qryTempDele.Close;
        qryTempDele.sql.Clear;
        qryTempDele.SQL.Text :=
        ' DELETE FROM BOLETO               '+
        ' WHERE ID_PEDIVEND = :pi_PediVend ';
        qryTempDele.ParamByName('pi_PediVend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
        qryTempDele.ExecSQL;}

        MessageDlg('A Nota fiscal ' + IntToStr(qryTemp['NR_NOTAFISC']) + ' do pedido '
                  + IntToStr(QImpDocPed['ID_PEDIVEND'])
                  + ' foi cancelada com sucesso !',mtInformation, [mbOK], 0);
       end;

      // Movemos para o próximo registro
      qryTemp.Next;
    end;

  end;

  // Fechamos a query
  qryTemp.Close;
  qryTempDele.close;

end;

procedure TfrmImpDocPed.ACBR_CancelaComuincacaoSefaz(Sender: TObject);
begin
  ACBrNR01   := 0;
  ACBrNR02   := 0;
  ACBrModulo := '';
  CancelaNFe    := 1;
end;

procedure TfrmImpDocPed.Cancela_NFe(Sender: TObject);
begin
  ACBrNR01   := 0;
  ACBrNR02   := 0;
  ACBrModulo := '';
  CancelaNFe    := 1;
end;

procedure TfrmImpDocPed.ACBR_Inutilizar_NFe(Sender: TObject);
var
   cCNPJ, cJustificativa, nAno, nModelo, nSerie, nNumInicial, nNumFinal : String;
begin

  CancelaNFe := 0;

  //Apaga o arquivo de saida dos comandos para receber a resposta limpa
  If FileExists('C:\ACBrNFeMonitor\SAINFE.TXT') then Deletefile('C:\ACBrNFeMonitor\SAINFE.TXT');
  //Apaga o arquivo de entrada caso existir
  If FileExists('C:\ACBrNFeMonitor\ENTNFE.TXT') then Deletefile('C:\ACBrNFeMonitor\ENTNFE.TXT');

  //Apaga o memo
//  MemoACBrNFe.Lines.Clear;
  //Obtem os valores
  If not(InputQuery('Inutilizar NFe', 'Digite o Nº do CNPJ:',    cCNPJ)) then exit;
  If not(InputQuery('Inutilizar NFe', 'Digite a Justificativa:', cJustificativa)) then exit;
  If not(InputQuery('Inutilizar NFe', 'Digite o Ano:',           nAno)) then exit;
  If not(InputQuery('Inutilizar NFe', 'Digite o Modelo:',        nModelo)) then exit;
  If not(InputQuery('Inutilizar NFe', 'Digite a Série:',         nSerie)) then exit;
  If not(InputQuery('Inutilizar NFe', 'Digite o nº Inicial:',    nNumInicial)) then exit;
  If not(InputQuery('Inutilizar NFe', 'Digite o nº Final:',      nNumFinal)) then exit;
  //Comando de inutilização da nota fiscal
  If MessageDlg ('Confirma realmente inutilizar as nfes do nº: ' + nNumInicial + ' até o nº:' + nNumFinal + ' ?', mtConfirmation,[mbOk, mbCancel], 0) = mrOk then
  ACBrNfe.Gravar_ENT('NFE.InutilizarNFe( "' + cCNPJ + '", "' + cJustificativa + '", ' + nAno + ', ' + nModelo + ', ' + nSerie + ', ' + nNumInicial + ', ' + nNumFinal+ ')');
  //Verifica o resultado do retorno
  //ACBrNFe.Verifica_Resposta_InutilizarNFe(StrtoInt(nNumInicial), StrtoInt(nNumFinal));
  ACBrNFe.Tentando_comunicacao_Sefaz('InutilizarNFe', StrtoInt(nNumInicial), StrtoInt(nNumFinal), 'ImpDocPed');
  //Mostra o envio do lote na tela
  //If MemoACBrNFe.Lines.Count > 0 then PnlEnvioXml.Visible := True;
end;

procedure TfrmImpDocPed.ACBR_Enviar_Email_NFe(Sender: TObject);
var
  li_Loop, vlLinha, ComSemPdf : Integer;
  cChaveNFe : String;
  LstNF : TStringList ;
    I : Integer ;
begin
    // Verificamos se existe algum ítem selecionado
    if grdDados.SelectedRows.Count = 0 then
    begin
      MessageDlg('Pelo menos um pedido deve ser selecionado !', mtWarning, [mbOk], 0);
      Exit;
    end;

    LstNF  := TStringList.Create;

    for i := 0 to grdDados.SelectedRows.Count - 1 do
    begin
         // Posicionamos no registro desejado
         grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[i]);
         if ( QImpDocPed.FieldByName('ID_NOTAFISC').Value > 0 ) then
            LstNF.Add( QImpDocPed.FieldByName('ID_NOTAFISC').AsString);

    end;

    if ( LstNF.Count = 0  ) then
    begin
         ShowMessage('Pedidos Selecionado não possuem Numeração de Nota.');
         Exit;
    end;

    Try
        frmEmissorNFe := TfrmEmissorNFe.Create(Self);
        frmEmissorNFe.SOEMAIL := 'S';
        frmEmissorNFe.TIPOEMISSAO := 'NFE';
        frmEmissorNFe.LNotas.AddStrings( LstNF) ;
        LstNF.Free;
        frmEmissorNFe.SerNF := QImpDocPedSG_SERINOTAFISC.Value;
        //frmGeraNFE.Carga := QImpDocPedID_CARGEXPE.AsString;
        frmEmissorNFe.ShowModal;
      except;
        frmEmissorNFe.Free;
    end;

{  CancelaNFe := 0;

  //Apaga o arquivo de saida dos comandos para receber a resposta limpa
  If FileExists('C:\ACBrNFeMonitor\SAINFE.TXT') then Deletefile('C:\ACBrNFeMonitor\SAINFE.TXT');
  //Apaga o arquivo de entrada caso existir
  If FileExists('C:\ACBrNFeMonitor\ENTNFE.TXT') then Deletefile('C:\ACBrNFeMonitor\ENTNFE.TXT');

  //Define se vai ser com ou não envio de pdf
  ComSemPdf := 0;
  If Sender = EnviarEmailNFeSPdf then ComSemPdf := 0;
  If Sender = EnviarEmailNFeCPdf then ComSemPdf := 1;

  // Verificamos se existe algum ítem selecionado
  if grdDados.SelectedRows.Count = 0 then
  begin
    MessageDlg('Pelo menos um pedido deve ser selecionado !', mtWarning, [mbOk], 0);
    Exit;
  end;

  //Abre o arquivo xml
  qryNFEXML.Open;

  //Fazemos looping nos dados selecionados
  for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
  begin

    // Posicionamos no registro desejado
    grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

    //Filtramos clientes para obter o email e nome do cliente
    qryCliente.Close;
    qryCliente.SQL.Clear;
    qryCliente.SQL.Text := 'SELECT ID_CLIENTE, NM_CLIENTE, GN_EMAICLIE FROM CLIENTE WHERE ID_CLIENTE = ' + QImpDocPedID_CLIENTE.AsString;
    qryCliente.Open;
    If qryCliente.RecordCount > 0 then
    begin

      //O Cliente não tem um email cadastrado
      If qryClienteGN_EMAICLIE.Value = '' then
      begin
        MessageDlg('O Sistema não pode enviar email para o cliente ' + qryClienteNM_CLIENTE.Value + ' ref a Nota Fiscal: ' + IntToStr(QImpDocPedNR_NOTAFISC.AsInteger) +
        ' pois ele não tem um email válido cadastrado para o envio !', mtInformation, [mbOK], 0);
        Continue;
      end;

      //O Cliente tem um email valido
      If qryClienteGN_EMAICLIE.Value <> '' then
      begin

        //Fazemos o filtro paraa obter o id na nota fiscal
        QryNfEle.Close;
        QryItemNfEle.Close;
        FormatSettings.shortdateformat := 'yyyy-mm-dd';
        QryNfEle.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
        QryNfEle.ParamByName('ps_serinotafisc').AsString := QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString;
        QryNfEle.ParamByName('VNOTA').AsInteger  := QImpDocPed.FieldByName('NR_NOTAFISC').AsInteger;
        QryNfEle.ParamByName('VCANCEL').AsString := 'N';
        QryNfEle.Open;
        If QryNfEle.RecordCount > 0 then
        begin

          //Fazemos o filtro para obter o xml obtido da receita e arquivado no banco de dados
          qryNFEXML.Close;
          qryNFEXML.SQL.Clear;
          qryNFEXML.SQL.Text := 'SELECT * FROM NOTA_FISCAL_XML WHERE ID_NOTAFISC = ' + QryNfEleID_NOTAFISC.AsString;
          qryNFEXML.Open;
          If qryNFEXML.RecordCount > 0 then
          begin

            //Não encontrou um conteudo xml
            If qryNFEXMLNFE_XML.Value = '' then
            begin
              MessageDlg('A Nota Fiscal: ' + IntToStr(QImpDocPedNR_NOTAFISC.AsInteger) +
              ' Não tem um XML registrado para ela... Não poderá ser enviado o email !', mtInformation, [mbOK], 0);
              Continue;
            end;

            //Obter a chave da nfe
            cChaveNFe := '';
            cChaveNFe := qryNFEXMLNFE_CHAVE.Value;

            //Chave da nfe cadastrada não registrada
            If cChaveNFe = '' then ShowMessage('NFE NÃO CANCELADA NA SECRETARIA DA FAZENDA... NÃO FOI ENCONTRADO NA BASE DE DADOS O XML EMITIDO NO REGISTRO DA SECRETARIA...');

            //Chave da nfe registrada no banco de dados
            If cChaveNFe <> '' then
            begin

              //coloca o nome final
              cChaveNFe := 'C:\ACBrNFeMonitor\Logs\' + cChaveNFe + '-nfe.xml';

              //Salva o xml no HD
              qryNFEXMLNFE_XML.SaveToFile(cChaveNFe);

              //Envia o comando para o ACBrNFe
              ACBrNfe.Gravar_ENT('NFE.EnviarEmail("' + qryClienteGN_EMAICLIE.Value + '", "' + cChaveNFe + '", "' + InttoStr(ComSemPdf) + '")');

              //Verifica retorno do envio do email
              Verifica_Resposta_EnviarEmail(QImpDocPedNR_NOTAFISC.AsInteger, QImpDocPedID_CLIENTE.AsInteger, ComSemPdf);

            end;

          end;

        end;

      end;

    end;

    //Fecha o arquivo de notas
    QryNfEle.Close;

  end;

  //fecha o arquivo xml
  qryNFEXML.Close;

  // Verificamos se a query Form não está vazia
  If not QImpDocPed.IsEmpty then
  begin

    QImpDocPed.DisableControls;
    // Limpamos todas as seleções do griDados
    grdDados.DataSource.DataSet.First;

    //Tita a seleção linha a linha
    For vlLinha := 0 to VCONT do
    begin
      grdDados.SelectedRows.CurrentRowSelected := False;
      grdDados.DataSource.DataSet.Next;
    end; //

    //Atualiza a tela
    grdDados.SelectedRows.Refresh;
    QImpDocPed.EnableControls;

  end; //

  //Avisa que ja enviou o email
  ShowMessage('Todos os emails enviados com sucesso...');}

end;



procedure TfrmImpDocPed.EnviarNFe21Click(Sender: TObject);
var
  I, li_Loop, Sequencial, liberada, Contador: Integer;
  li_NumeNota, Ibge, O, T: Integer;
  ls_SiglSeriNota,NomeArq, tpEmis, vIE, tpAmb, vIE_t, P_EAN, P_NCM : String;
  ls_NomeImpr, ls_firma, ls_insc, ls_inscM, ls_cnpj, ls_cnae: String;
  ls_logr, ls_num, ls_bai, ls_uf, ls_cep, ls_cid, ls_codcid, ls_pais, ls_codpais, ls_fone, ls_codmun, ls_ObsF, ls_ObsC: String;
  vlLinha, VSEQNOTA, VControlImpre, VSoma: Integer;
  vPis, vCofins,vPisitem, vCofinsitem: Double;
  BSSUBSTICMS, VLSUBSTICMS : Double;
  vTipES, ArqIni, OTexto: string; // NF Entrada = 0; NF Saida = 1
  Dt_Nota : TDateTime;
begin
  //Versao 0
  Versao2 := 1;

  //TESTE 1.0.32

  VSEQNOTA:=0;
  CancelaNFe := 0;
  VControlImpre:=0;

	with dadosCadastraisFilial do
  begin
    ls_firma := NomeFilial;
    ls_insc := InscricaoEstadual;
    ls_inscM := InscricaoMunicipal;
    ls_cnpj := Cnpj;
    ls_cnae := Cnae;
    ls_logr := Endereco;
    ls_num := Numero;
    ls_bai := Bairro;
    ls_cid := Cidade;
    ls_codcid := CodigoCidade;
    ls_uf := UF;
    ls_cep := Cep;
    ls_codpais := CodigoPais;
    ls_pais := Pais;
    ls_fone := Fone;
    ls_codmun := CodigoCidade;
  end;

  // Verificamos se foi selecionado algum pedido para emissão de boleto
  If grdDados.SelectedRows.Count = 0 then
  begin
    MessageDlg('Nenhum pedido foi selecionado para geração do arquivo de lote do ACBrNFe. 2' + #13 + 'Por favor, verifique !', mtInformation, [mbOK], 0);
    Exit;
  end; //

  //Pede uma confirmação inicial para enviar o lote
  If MessageDlg ('Confirma geração do arquivo de lote do ACBrNFe. 2' + #13 + ' do(s) Pedido(s) Selecionado(s) ?',
  mtConfirmation,[mbOk, mbCancel], 0) = mrOk then
  begin

    frmDialNFe.edtNumCarga.Text := QImpDocPedID_CARGEXPE.AsString;
    if frmDialNFe.ShowModal <> mrOK then exit;
    //Define se vai ser uma emissão normal ou em contingencia
    if frmDialNFe.chkCon.Checked then
    begin
      tpEmis:= '2';
    end
    else
    begin
      tpEmis:= '1';
    end;

    Sequencial := QImpDocPedID_CARGEXPE.AsInteger;
        {
    //Filtra para ver se a nfe esta liberada
    qryNFEXML.Close;
    qryNFEXML.SQL.Clear;
    qryNFEXML.SQL.Add('SELECT * FROM NOTA_FISCAL_XML ORDER BY LOTE');
    qryNFEXML.Open;
    If qryNFEXML.RecordCount > 0 then
    begin
      qryNFEXML.Last;
      Sequencial := qryNFEXMLLOTE.AsInteger + 1;  //Erro consertar
    end;
    qryNFEXML.Close;
    }

    //Apaga o arquivo memo
//    MemoNFe.Lines.Clear;
//    MemoACBrNFe.Lines.Clear;

    //Define a pasta aonde irá gravar o arquivo ENTNFE.TXT
    If not DirectoryExists('C:\ACBrNFeMonitor\') then CreateDir('C:\ACBrNFeMonitor');
    ArqIni := 'C:\ACBrNFeMonitor\ENTNFE.TXT';
    //Apaga o arquivo de saida
    If FileExists('C:\ACBrNFeMonitor\SAINFE.TXT') then Deletefile('C:\ACBrNFeMonitor\SAINFE.TXT');
    //Apaga o arquivo de entrada
    If FileExists('C:\ACBrNFeMonitor\ENTNFE.TXT') then Deletefile('C:\ACBrNFeMonitor\ENTNFE.TXT');

    // Loop para todos os pedidos selecionados
    for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
    begin

      // Verificamos se o Flag do pedido é "EX"
      If (QImpDocPed['FL_STATPEDIVEND']='EX') then
      Begin
        MessageDlg('Não pode ser gerado o Lote! ' + #13 + 'O pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) +
        ' está com Status "EX" ' + #13 + 'Gere novamente ou cancele a Nota se for necessário.', mtInformation, [mbOK], 0);
        Continue;
      End; //

      //NF CEUAZUL ABAT.
      //Posicionamos no registro a ser impresso
      grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

      // Selecionamos a nota fiscal de acordo com o pedido
      QryNfEle.Close;
      QryItemNfEle.Close;
      FormatSettings.shortdateformat := 'yyyy-mm-dd';
      QryNfEle.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
      QryNfEle.ParamByName('ps_serinotafisc').AsString := QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString;
      QryNfEle.ParamByName('VNOTA').AsInteger  := QImpDocPed.FieldByName('NR_NOTAFISC').AsInteger;
      QryNfEle.ParamByName('VCANCEL').AsString := 'N';
      QryNfEle.Open;
      //Coloca o parâmetro da nota fiscal
      QryItemNfEle.ParamByName('id_notafisc').AsFloat := QryNfEleID_NOTAFISC.AsFloat;
      QryItemNfEle.Open;
      //Coloca o parâmetro do numero do pedido
      QryBolNFe.Close;
      QryBolNFe.ParamByName('id_pedivend').AsInteger := QryNfEleID_PEDIVEND.AsInteger;
      QryBolNFe.open;

      //Executa o procedimento a seguir nota a nota
      while not QryNfEle.Eof do
      begin

        //Filtra para ver se a nfe esta liberada
        qryNFEXML.Close;
        qryNFEXML.SQL.Clear;
        qryNFEXML.SQL.Add('SELECT * FROM NOTA_FISCAL_XML WHERE');
        qryNFEXML.SQL.Add(' NR_NOTAFISC = ' + QuotedStr(QImpDocPed.FieldByName('NR_NOTAFISC').AsString));
        qryNFEXML.SQL.Add(' AND SR_NOTAFISC = ' + QuotedStr(QImpDocPed.FieldByName('SG_SERINOTAFISC').AsString));
        qryNFEXML.Open;
        //Se estiver no banco de dados deixa ela como liberada
        If qryNFEXML.RecordCount = 0 then Liberada := 1;
        If qryNFEXML.RecordCount > 0 then Liberada := 0;

        //Se a nfe não esta cadastrada então segue em frente
        If Liberada = 1 then
        begin

          //Limpa o conteudo de comando
          Comando := '';

          //Apaga o arquivo memo
//          MemoACBrNFe.Lines.Clear;

          //Cabecalho da Nota Fiscal
          ACBr_I_Codigo          := QryNfEleID_NOTAFISC.AsString;
          ACBr_I_NaturezaOperaca := QryNfEleNM_NATUOPERNOTAFISC.Value;
          ACBr_I_FormaPag        := '1';
          ACBr_I_Modelo          := '55';
          ACBr_I_Serie           := QryNfEleSG_SERINOTAFISC_NOTAFISC.AsString;
          ACBr_I_Numero          := QryNfEleNR_NOTAFISC.AsString;
          ACBr_I_Emissao         := Conv_Data(QryNfEleDT_EMISNOTAFISC.Value, 1);
          ACBr_I_Saida           := Conv_Data(QryNfEleDT_SAIDNOTAFISC.Value, 1);
          ACBr_I_Tipo            := '1';
          ACBr_I_Finalidade      := '0';
          ACBr_I_verProc         := Edversao.Text;
          ACBr_I_cUF             := Copy(QryNfEleID_IBGE.AsString, 1, 2);       //alterei
          ACBr_I_CidadeCod       := QryNfEleID_IBGE.AsString;                   //alterei

          If tpEmis = '1' then
          begin
            ACBr_I_dhCont := '';
            ACBr_I_xJust  := '';
          end;

          If tpEmis = '2' then
          begin
            //ACBr_I_dhCont := Conv_Data(ld_DataHora, 2) + 'T' + Conv_Hora(ld_DataHora, 3);
            ACBr_I_dhCont := Conv_Data(ld_DataHora, 1);
            ACBr_I_xJust  := 'Problemas tecnicos durante a emissao';
          end;

          //Imprime no memo o cabecalho
          ACBrNFe.Memo_Cabecalho;

          // Impressao de documentos referenciados *****************************

          //Verifica a Data do Sistema
          QryReferenciadas.Close;
          QryReferenciadas.SQL.Clear;
          QryReferenciadas.SQL.Add('SELECT * FROM NOTA_FISCAL_REFERENCIADA WHERE');
          QryReferenciadas.SQL.Add(' ID_PEDIVEND = ' + QImpDocPedID_PEDIVEND.AsString);
          QryReferenciadas.Open;
          If QryReferenciadas.RecordCount > 0 then
          begin

            //Inicializa VSoma
            VSoma := 1;

            QryReferenciadas.First;
            While not QryReferenciadas.Eof do
            begin

              //Coloca a referenciada no referenciadas
              ACBrNFe.Memo_CREF(VSoma);

              If QryReferenciadasTIPO.Value = '1' then
              begin
                ACBr_R_TIPO   := 'NFE';

                ACBr_R_B13_refNFe := QryReferenciadasB13_refNFe.Value;

              end;

              If QryReferenciadasTIPO.Value = '2' then
              begin
                ACBr_R_TIPO         := 'NF';

                ACBr_R_B14_cUF    := QryReferenciadasB14_cUF.Value;
                ACBr_R_B14_AMM    := QryReferenciadasB14_AAMM.Value;
                ACBr_R_B14_CNPJ   := QryReferenciadasB14_CNPJ.Value;
                ACBr_R_B14_MODELO := QryReferenciadasB14_mod.Value;
                ACBr_R_B14_SERIE  := QryReferenciadasB14_serie.Value;
                ACBr_R_B14_nNF    := QryReferenciadasB14_nNF.Value;

              end;

              If QryReferenciadasTIPO.Value = '3' then
              begin
                ACBr_R_TIPO := 'NFP';

                ACBr_R_B20a_cUF   := QryReferenciadasB20a_cUF.Value;
                ACBr_R_B20a_AAMM  := QryReferenciadasB20a_AAMM.Value;
                ACBr_R_B20a_IE    := QryReferenciadasB20a_IE.Value;
                ACBr_R_B20a_mod   := QryReferenciadasB20a_mod.Value;
                ACBr_R_B20a_serie := QryReferenciadasB20a_serie.Value;
                ACBr_R_B20a_nNF   := QryReferenciadasB20a_nNF.Value;

                //Escreve o CNPJ
                If QryReferenciadasB20D_CNPJ.Value <> '' then    //CNPJ <> '' e CPF = ''
                If QryReferenciadasB20E_CPF.Value = ''      then
                ACBr_R_B20D_CNPJ := QryReferenciadasB20D_CNPJ.Value;

                //Escreve o CPF
                If QryReferenciadasB20D_CNPJ.Value = ''  then    //CNPJ = '' e CPF <> ''
                If QryReferenciadasB20E_CPF.Value <> ''     then
                ACBr_R_B20E_CPF := QryReferenciadasB20E_CPF.Value;

              end;

              If QryReferenciadasTIPO.Value = '4' then
              begin
                ACBr_R_TIPO   := 'CTe';

                ACBr_R_B20I_REFCTE := QryReferenciadasB20I_REFCTE.Value;

              end;

              If QryReferenciadasTIPO.Value = '5' then
              begin
                ACBr_R_TIPO   := 'ECF';

                ACBr_R_B20J_MOD  := QryReferenciadasB20J_MOD.Value;
                ACBr_R_B20J_NECF := QryReferenciadasB20J_NECF.Value;
                ACBr_R_B20J_COO  := QryReferenciadasB20J_COO.Value;

              end;

              //Imprime no memo da referenciadas
              ACBrNFe.Memo_REF;

              //Inicializa VSoma
              VSoma := VSoma + 1;

              //Proxima referenciadas
              QryReferenciadas.Next;
            end;

          end;
          QryReferenciadas.close;

          // *******************************************************************

          //verifica se é nota fiscal de entrada ou saída
          If (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '1') or
             (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '2') or
             (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '3') then vTipES:= '0' else vTipES:= '1';

          //Emitente da nota fiscal
          ACBr_E_CNPJ        := ls_cnpj;    //
          ACBr_E_IE          := ls_insc;    //
          ACBr_E_Razao       := ls_firma;   //
          ACBr_E_Fantasia    := ls_firma;   //
          ACBr_E_Fone        := ls_fone;    //
          ACBr_E_CEP         := ls_cep;     //
          ACBr_E_Logradouro  := ls_logr;    //
          ACBr_E_Numero      := ls_num;     //
          ACBr_E_Complemento := '';
          ACBr_E_Bairro      := ls_bai;     //
          ACBr_E_CidadeCod   := ls_codmun;  //
          ACBr_E_Cidade      := ls_cid;     //
          ACBr_E_UF          := ls_uf;
          ACBr_E_CRT         := '3';     //
          //Imprime no memo o emitente
          ACBrNFe.Memo_Emitente;

          //Isento
          If UpperCase(QryNfElenr_inscestaclie.Value) = 'ISENTO' then vIE:= 'ISENTO';
          //Nao isento então obtem o ie
          If UpperCase(QryNfElenr_inscestaclie.Value) <> 'ISENTO' then
          begin
            //if (UpperCase(QryNfElesg_estado.value) = 'MS') or (UpperCase(QryNfElesg_estado.value) = 'SC') then
            vIE:= QryNfElenr_inscestaclie.value;
            ACBr_D_IE := QryNfElenr_inscestaclie.value;
            //else
            //vIE:= RetZero(QryNfElenr_inscestaclie.value,11);
          end; //

          //Obtem o cnpj
          ACBr_D_CNPJCPF := QryNfElenr_cnpjclie.value;

          //Se for pessoa juridica verifica o tipo de cnpj
          If QryNfEleFL_PESSCLIE.Value = 'J' then
          begin
            If copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) = '7' then ACBr_D_CNPJCPF := '';
            If copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) <> '7' then ACBr_D_CNPJCPF := QryNfElenr_cnpjclie.value;
          end; //

          //Se não for pessoa juridica então obtem o cnpj
          If QryNfEleFL_PESSCLIE.Value <> 'J' then ACBr_D_CNPJCPF := QryNfElenr_cpfclie.value;

          //Se for cnpj tipo 7 popula dados padrões de exportação para destinatario
          If copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) = '7' then
          begin

            //Filtra para ver se a nfe esta liberada
            qryCliente.Close;
            qryCliente.SQL.Clear;
            qryCliente.SQL.Add('SELECT C.ID_CLIENTE, C.NM_CLIENTE, C.GN_EMAICLIE, P.ID_IBGE, P.NM_PAIS');
            qryCliente.SQL.Add(' FROM CLIENTE C, BAIRRO B, CIDADE S, ESTADO E, PAIS P');
            qryCliente.SQL.Add(' WHERE B.ID_BAIRRO = C.ID_BAIRRO AND S.ID_CIDADE = B.ID_CIDADE AND E.ID_ESTADO = S.ID_ESTADO AND P.ID_PAIS = E.ID_PAIS');
            qryCliente.SQL.Add(' AND C.ID_CLIENTE = ' + QryNfEleID_CLIENTE.AsString);
            qryCliente.Open;
            If qryCliente.RecordCount > 0 then
            begin
              ACBr_D_PaisCod     := qryClienteID_IBGE.AsString;
              ACBr_D_Pais        := qryClienteNM_PAIS.AsString;
              ACBr_D_Email       := qryClienteGN_EMAICLIE.AsString;
            end;
            qryCliente.Close;

            //Destinatario da Nota Fiscal
            ACBr_D_CNPJCPF        := '';
            ACBr_D_IE          := '';
            ACBr_D_ISUF        := '';
            ACBr_D_NomeRazao   := TiraAcentos(QryNfElenm_cliente.AsString);
            ACBr_D_Fone        := RemoveChar(QryNfEleNR_FONENOTAFISC.AsString);
            ACBr_D_CEP         := QryNfEleNR_CEPNOTAFISC.VALUE;
            ACBr_D_Logradouro  := TiraAcentos(QryNfElenm_logrendeclie.AsString);
            ACBr_D_Numero      := QryNfElenr_logrendeclie.VALUE;
            ACBr_D_Complemento := '';
            ACBr_D_Bairro      := TiraAcentos(QryNfEleNM_BAIRRO.AsString);
            ACBr_D_CidadeCod   := '9999999';
            ACBr_D_Cidade      := 'Exterior';
            ACBr_D_UF          := 'EX';
            //Imprime no memo o destinatario
            ACBrNFe.Memo_Destinatario;

          end; //

          //Se não for cfop tipo 7 então popula destinatario com dados do cliente
          If copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) <> '7' then
          begin

            //Filtra para ver se a nfe esta liberada
            qryCliente.Close;
            qryCliente.SQL.Clear;
            qryCliente.SQL.Add('SELECT C.ID_CLIENTE, C.NM_CLIENTE, C.GN_EMAICLIE, P.ID_IBGE, P.NM_PAIS');
            qryCliente.SQL.Add(' FROM CLIENTE C, BAIRRO B, CIDADE S, ESTADO E, PAIS P');
            qryCliente.SQL.Add(' WHERE B.ID_BAIRRO = C.ID_BAIRRO AND S.ID_CIDADE = B.ID_CIDADE AND E.ID_ESTADO = S.ID_ESTADO AND P.ID_PAIS = E.ID_PAIS');
            qryCliente.SQL.Add(' AND C.ID_CLIENTE = ' + QryNfEleID_CLIENTE.AsString);
            qryCliente.Open;
            If qryCliente.RecordCount > 0 then
            begin
              ACBr_D_PaisCod     := qryClienteID_IBGE.AsString;
              ACBr_D_Pais        := qryClienteNM_PAIS.AsString;
              ACBr_D_Email       := qryClienteGN_EMAICLIE.AsString;
            end;
            qryCliente.Close;

            //Destinatario da Nota Fiscal
            ACBr_D_CNPJCPF        := QryNfEleNR_CNPJNOTAFISC.AsString;
            ACBr_D_IE          := QryNfEleNR_IENOTAFISC.AsString;
            ACBr_D_ISUF        := '';
            ACBr_D_NomeRazao   := TiraAcentos(QryNfElenm_cliente.AsString);
            ACBr_D_Fone        := RemoveChar(QryNfEleNR_FONENOTAFISC.AsString);
            ACBr_D_CEP         := QryNfEleNR_CEPNOTAFISC.VALUE;
            ACBr_D_Logradouro  := TiraAcentos(QryNfElenm_logrendeclie.AsString);
            ACBr_D_Numero      := QryNfElenr_logrendeclie.VALUE;
            ACBr_D_Complemento := '';
            ACBr_D_Bairro      := TiraAcentos(QryNfEleNM_BAIRRO.AsString);
            ACBr_D_CidadeCod   := INTTOSTR(QryNfEleID_IBGE.value);
            ACBr_D_Cidade      := TiraAcentos(QryNfEleNM_CIDADE.AsString);
            ACBr_D_UF          := QryNfElesg_estado.value;
            //Imprime no memo o destinatario
            ACBrNFe.Memo_Destinatario;

          end; //

          QryNFeBc.Close;
          QryNFeBc.ParamByName('id_notafisc').AsInteger := QryNfEleID_NOTAFISC.AsInteger;
          QryNFeBc.open;

          VSoma:=1;
          BSSUBSTICMS := 0.00;
          VLSUBSTICMS := 0.00;

          //QryItemNfEle.Open;
          QryItemNfEle.first;
          while not QryItemNfEle.Eof do
          begin

            //Filtra para ver se a nfe esta liberada
            P_EAN := '';
            P_NCM := '';
            qryMaterial.Close;
            qryMaterial.SQL.Clear;
            qryMaterial.SQL.Add('SELECT ID_PRODMATEEMBA, QN_EAN, NCM FROM MATERIAL_EMBALAGEM WHERE');
            qryMaterial.SQL.Add(' ID_PRODMATEEMBA = ' + QryItemNfEleID_PRODMATEEMBA_ITEMNOTAFISC.AsString);
            qryMaterial.Open;
            If qryMaterial.RecordCount > 0 then P_EAN := qryMaterialQN_EAN.Value;
            qryMaterial.Close;

            vCofinsitem:= (QryitemNfEleVL_ITEMNOTAFISC.Value * 0.076);
            vPisitem:= (QryitemNfEleVL_ITEMNOTAFISC.Value * 0.0165);

            //Coloca o item da nota fiscal
            ACBrNFe.Memo_CProdutos(VSoma);
            ACBr_P_CFOP             := QryItemNfEleNR_CFOP_ITEMNOTAFISC.value;
            ACBr_P_Codigo           := FloatToStr(QryItemNfEleID_PRODMATEEMBA_ITEMNOTAFISC.AsFloat);
            ACBr_P_Descricao        := TiraAcentos(QryItemNfEleNM_MATERIAL_ITEMNOTAFISC.value);
            ACBr_P_Unidade          := TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE);
            ACBr_P_EAN              := 'SEM GTIN';
            ACBr_P_NCM              := QryItemNfEleNR_CLASFISC.AsString; //ACBr_P_NCM := P_NCM;
            ACBr_P_Quantidade       := Muda_virgula_ponto(floattostrF(QryItemNfEleQN_PESOITEMNOTAFISC.AsFloat,ffFixed,15,2));
            ACBr_P_ValorUnitario    := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_UNITBRUTITEMNOTAFISC.Value,ffFixed,15,2));
            ACBr_P_ValorTotal       := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_BRUTITEMNOTAFISC.Value,ffFixed,15,2));
            //ACBr_P_ValorUnitario    := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_UNITITEMNOTAFISC.Value,ffFixed,15,2));
            //ACBr_P_ValorTotal       := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_ITEMNOTAFISC.Value,ffFixed,15,2));
            ACBr_P_ValorDesconto    := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_DESCICMSITEMNOTAFISC.Value,ffFixed,15,2));
            ACBr_P_NumeroDI         := '';
            ACBr_P_DataRegistroDI   := '';
            ACBr_P_LocalDesembaraco := '';
            ACBr_P_UFDesembaraco    := '';
            ACBr_P_DataDesembaraco  := '';
            ACBr_P_CodigoExportador := '';
            ACBr_P_indTot           := '1';
            //Imprime no memo o produto
            ACBrNFe.Memo_Produtos;

            If COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '00' then
            begin

              //Coloca o icms do item da nota fiscal
              ACBrNFe.Memo_CICMS(VSoma);
              ACBr_IC_CST                 := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2);
              ACBr_IC_Origem              := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,1,1);
              ACBr_IC_Modalidade          := '';
              ACBr_IC_ValorBase           := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.Value,ffFixed,15,2));
              ACBr_IC_Aliquota            := Muda_virgula_ponto(floattostrF(QryItemNfElePC_ICMSITEMNOTAFISC.Value,ffFixed,15,2));
              ACBr_IC_Valor               := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_ICMSITEMNOTAFISC.Value,ffFixed,15,2));
              ACBr_IC_ModalidadeST        := '';
              ACBr_IC_PercentualMargemST  := '';
              ACBr_IC_PercentualReducaoST := '';
              ACBr_IC_ValorBaseST         := '';
              ACBr_IC_AliquotaST          := '';
              ACBr_IC_ValorST             := '';
              ACBr_IC_PercentualReducao   := QryItemNfElePC_REDUICMSITEMNOTAFISC.AsString;
              //Imprime no memo o icms
              ACBrNFe.Memo_ICMS;

            end;

            If COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '20' then
            begin

              //Coloca o icms no memo
              ACBrNFe.Memo_CICMS(VSoma);
              ACBr_IC_CST                 := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2);
              ACBr_IC_Origem              := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,1,1);
              ACBr_IC_Modalidade          := '';
              ACBr_IC_ValorBase           := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.Value,ffFixed,15,2));
              ACBr_IC_Aliquota            := Muda_virgula_ponto(floattostrF(QryItemNfElePC_ICMSITEMNOTAFISC.Value,ffFixed,15,2));
              ACBr_IC_Valor               := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_ICMSITEMNOTAFISC.Value,ffFixed,15,2));
              ACBr_IC_ModalidadeST        := '';
              ACBr_IC_PercentualMargemST  := '';
              ACBr_IC_PercentualReducaoST := '';
              ACBr_IC_ValorBaseST         := '';
              ACBr_IC_AliquotaST          := '';
              ACBr_IC_ValorST             := '';
              ACBr_IC_PercentualReducao   := QryItemNfElePC_REDUICMSITEMNOTAFISC.AsString;
              //Imprime no memo o icms
              ACBrNFe.Memo_ICMS;

              BSSUBSTICMS := BSSUBSTICMS + QryItemNfElePC_REDUICMSITEMNOTAFISC.Value;
              VLSUBSTICMS := VLSUBSTICMS + QryItemNfEleVL_ICMSITEMNOTAFISC.Value;

            end;

            If (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '40') or (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '41') or (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '50') then
            begin

              //Coloca o icms no memo
              ACBrNFe.Memo_CICMS(VSoma);
              ACBr_IC_CST                 := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2);
              ACBr_IC_Origem              := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,1,1);
              ACBr_IC_Modalidade          := '';
              ACBr_IC_ValorBase           := '0.00';
              ACBr_IC_Aliquota            := '0.00';
              ACBr_IC_Valor               := '0.00';
              ACBr_IC_ModalidadeST        := '';
              ACBr_IC_PercentualMargemST  := '';
              ACBr_IC_PercentualReducaoST := '';
              ACBr_IC_ValorBaseST         := '';
              ACBr_IC_AliquotaST          := '';
              ACBr_IC_ValorST             := '';
              ACBr_IC_PercentualReducao   := '';
              //Imprime no memo o icms
              ACBrNFe.Memo_ICMS;

            end;

            //colocar a rotina de impressão do IPI qdo for da base metal
            If gi_Filial = 4 then //metal
            begin

              //se produto com ipi insere as linhas
              If QryItemNfEleVL_IPIITEMNOTAFISC.Value <> 0 then
              begin

                //IPI do item da nota fiscal
                ACBrNFe.Memo_CIPI(VSoma);
                ACBr_IP_CST                 := '999';
                ACBr_IP_ClasseEnquadramento := '';
                ACBr_IP_CNPJProdutor        := '';
                ACBr_IP_CodigoSeloIPI       := '';
                ACBr_IP_QuantidadeSelos     := '';
                ACBr_IP_CodigoEnquadramento := '';
                ACBr_IP_ValorBase           := Muda_virgula_ponto(floattostrF((QryItemNfEleVL_ICMSITEMNOTAFISC.Value + QryItemNfEleVL_ITEMNOTAFISC.Value),ffFixed,15,2));
                ACBr_IP_Quantidade          := '';
                ACBr_IP_ValorUnidade        := '';
                ACBr_IP_Aliquota            := Muda_virgula_ponto(floattostrF(QryItemNfElePC_IPIITEMNOTAFISC.Value,ffFixed,15,2));
                ACBr_IP_Valor               := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_IPIITEMNOTAFISC.Value,ffFixed,15,2));
                //Imprime no memo o IPI
                ACBrNFe.Memo_IPI;

              end;

              If QryItemNfEleVL_IPIITEMNOTAFISC.Value = 0 then
              begin

                //Coloca o ipi no memo
                ACBrNFe.Memo_CIPI(VSoma);
                ACBr_IP_CST                 := '999 ';
                ACBr_IP_ClasseEnquadramento := '';
                ACBr_IP_CNPJProdutor        := '';
                ACBr_IP_CodigoSeloIPI       := '';
                ACBr_IP_QuantidadeSelos     := '';
                ACBr_IP_CodigoEnquadramento := '';
                ACBr_IP_ValorBase           := '0.00';
                ACBr_IP_Quantidade          := '';
                ACBr_IP_ValorUnidade        := '';
                ACBr_IP_Aliquota            := '0.00';
                ACBr_IP_Valor               := '0.00';
                //Imprime no memo o IPI
                ACBrNFe.Memo_IPI;

              end;

            end;

            qryPisCofins.Close;
            qryPisCofins.ParamByName('pID').Value:= QImpDocPedID_TIPOPEDIVEND.Value;
            qryPisCofins.Open;

            If qryPisCofinsNR_ST_PISCOFINS.Value = '01' then
            begin

              vCofins:= (QryNfEleVL_NOTAFISC.Value * 0.076);
              vPis:= (QryNfEleVL_NOTAFISC.Value * 0.0165);

              //Pis do item da nota fiscal
              ACBrNFe.Memo_CPIS(VSoma);
              ACBr_P1_CST         := qryPisCofinsNR_ST_PISCOFINS.Value;
              ACBr_P1_ValorBase   := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_BRUTITEMNOTAFISC.Value,ffFixed,15,2));
              ACBr_P1_Aliquota    := Muda_virgula_ponto(floattostrF(1.65,ffFixed,15,2));
              ACBr_P1_Valor       := Muda_virgula_ponto(floattostrF(vPis,ffFixed,15,2));
              ACBr_P1_Quantidade  := '';
              ACBr_P1_TipoCalculo := '';
              //Imprime no memo o PIS
              ACBrNFe.Memo_PIS;

              //Cofins do item da nota fiscal
              ACBrNFe.Memo_CCOFINS(VSoma);
              ACBr_CF_CST         := qryPisCofinsNR_ST_PISCOFINS.Value;
              ACBr_CF_ValorBase   := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_BRUTITEMNOTAFISC.Value,ffFixed,15,2));
              ACBr_CF_Aliquota    := Muda_virgula_ponto(floattostrF(7.60,ffFixed,15,2));
              ACBr_CF_Valor       := Muda_virgula_ponto(floattostrF(vCofins,ffFixed,15,2));
              ACBr_CF_TipoCalculo := '';
              ACBr_CF_Quantidade  := '';
              //Imprime no memo o COFINS
              ACBrNFe.Memo_COFINS;

            end;

            If qryPisCofinsNR_ST_PISCOFINS.Value = '08' then
            begin

              vCofins:= 0;
              vPis:= 0;

              //Coloca o pis no memo
              ACBrNFe.Memo_CPIS(VSoma);
              ACBr_P1_CST         := qryPisCofinsNR_ST_PISCOFINS.Value;
              ACBr_P1_ValorBase   := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_BRUTITEMNOTAFISC.Value,ffFixed,15,2));
              ACBr_P1_Aliquota    := '0.00';
              ACBr_P1_Valor       := '0.00';
              ACBr_P1_Quantidade  := '';
              ACBr_P1_TipoCalculo := '';
              //Imprime no memo o PIS
              ACBrNFe.Memo_PIS;

              //Coloca o cofins no memo
              ACBrNFe.Memo_CCOFINS(VSoma);
              ACBr_CF_CST         := qryPisCofinsNR_ST_PISCOFINS.Value;
              ACBr_CF_ValorBase   := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_BRUTITEMNOTAFISC.Value,ffFixed,15,2));
              ACBr_CF_Aliquota    := '0.00';
              ACBr_CF_Valor       := '0.00';
              ACBr_CF_TipoCalculo := '';
              ACBr_CF_Quantidade  := '';
              //Imprime no memo o COFINS
              ACBrNFe.Memo_COFINS;

            end;

            VSoma := VSoma+1;
            QryItemNfEle.Next;

          end; //

          //Totaliza a nota fiscal
          ACBr_T_BaseICMS              := Muda_virgula_ponto(floattostrF(QryNfEleVL_BASEICMSNOTAFISC.Value,ffFixed,15,2));
          ACBr_T_ValorICMS             := Muda_virgula_ponto(floattostrF(QryNfEleVL_ICMSNOTAFISC.Value,ffFixed,15,2));
          ACBr_T_ValorProduto          := Muda_virgula_ponto(floattostrF(QryNfEleVL_PRODNOTAFISC.Value,ffFixed,15,2));
          ACBr_T_BaseICMSSubstituicao  := Muda_virgula_ponto(floattostrF(BSSUBSTICMS,ffFixed,15,2));
          ACBr_T_ValorICMSSubstituicao := Muda_virgula_ponto(floattostrF(VLSUBSTICMS,ffFixed,15,2));
          ACBr_T_ValorFrete            := Muda_virgula_ponto(floattostrF(QryNfEleVL_FRETNOTAFISC.Value,ffFixed,15,2));
          ACBr_T_ValorSeguro           := Muda_virgula_ponto(floattostrF(QryNfEleVL_SEGUNOTAFISC.Value,ffFixed,15,2));
          ACBr_T_ValorDesconto         := Muda_virgula_ponto(floattostrF(QryNfEleVL_DESCPEDIVEND_NOTAFISC.Value,ffFixed,15,2));
          ACBr_T_ValorII               := '0.00';
          ACBr_T_ValorIPI              := Muda_virgula_ponto(floattostrF(QryNfEleVL_IPINOTAFISC.Value,ffFixed,15,2));
          ACBr_T_ValorPIS              := Muda_virgula_ponto(floattostrF(vPis,ffFixed,15,2));
          ACBr_T_ValorCOFINS           := Muda_virgula_ponto(floattostrF(vCofins,ffFixed,15,2));
          ACBr_T_ValorOutrasDespesas   := Muda_virgula_ponto(floattostrF(QryNfEleVL_OUTRDESPNOTAFISC.Value,ffFixed,15,2));
          ACBr_T_ValorNota             := Muda_virgula_ponto(floattostrF(QryNfEleVL_NOTAFISC.Value,ffFixed,15,2));
          //Imprime no memo o COFINS
          ACBrNFe.Memo_TotalNFe;

          //Filtra a cidade da transportadora para obter o ibge
          IBGE := 0;
          QryCidade.Close;
          QryCidade.SQL.Clear;
          QryCidade.SQL.Add('Select cidade.nm_cidade, cidade.id_ibge from nota_fiscal t, fornecedor, cidade where');
          QryCidade.SQL.Add('T.NR_NOTAFISC = ' + QImpDocPedNR_NOTAFISC.AsString);
          QryCidade.SQL.Add('and t.sg_serinotafisc_notafisc = ' + QImpDocPedSG_SERINOTAFISC.AsString);
          QryCidade.SQL.Add('and t.nm_transportador_notafisc = fornecedor.nm_fornecedor');
          QryCidade.SQL.Add('and cidade.id_cidade = fornecedor.id_cidade');
          //QryCidade.SQL.SaveToFile('IBGE_TRANPORTADORA.TXT');
          QryCidade.Open;
          If QryCidade.RecordCount > 0 then IBGE := QryCidadeID_IBGE.Value;
          QryCidade.Close;

          //Transportadora da nota fiscal
          ACBr_TR_FretePorConta := QryNfEleFL_TIPOFRETNOTAFISC.AsString;
          If QryNfEleNR_CPFTRANNOTAFISC.AsString <> ''  then ACBr_TR_CnpjCpf  := QryNfEleNR_CPFTRANNOTAFISC.AsString;
          If QryNfEleNR_CNPJTRANNOTAFISC.AsString <> '' then ACBr_TR_CnpjCpf := QryNfEleNR_CNPJTRANNOTAFISC.AsString;
          If QryNfEleNR_RGTRANNOTAFISC.AsString <> '' then ACBr_TR_IE := QryNfEleNR_RGTRANNOTAFISC.AsString;
          If QryNfEleNR_IETRANNOTAFISC.AsString <> '' then ACBr_TR_IE := QryNfEleNR_IETRANNOTAFISC.AsString;
          ACBr_TR_NomeRazao     := TiraAcentos(QryNfElenm_transportador_notafisc.AsString);
          ACBr_TR_Endereco      := TiraAcentos(QryNfEleNM_ENDETRANNOTAFISC.AsString);
          ACBr_TR_Cidade        := TiraAcentos(QryNfEleNM_CIDATRANNOTAFISC.AsString);
          ACBr_TR_UF            := QryNfEleSG_ESTATRANNOTAFISC.AsString;
          ACBr_TR_ValorServico  := '';
          ACBr_TR_ValorBase     := '';
          ACBr_TR_Aliquota      := '';
          ACBr_TR_Valor         := '';
          ACBr_TR_CFOP          := '5351';
          If IBGE > 0 then ACBr_TR_CidadeCod := InttoStr(IBGE);
          If IBGE = 0 then ACBr_TR_CidadeCod := '';
          ACBr_TR_Placa         := QryNfEleGN_PLACVEICNOTAFISC.Value;
          ACBr_TR_UFPlaca       := QryNfEleSG_ESTAPLACVEICNOTAFISC.AsString;
          ACBr_TR_RNTC          := '';
          //Imprime no memo o Transportador
          ACBrNFe.Memo_Transportador;

          //Volumes da nota fiscal
          ACBr_V_Quantidade  := QryNfEleQN_VOLUNOTAFISC.AsString;
          ACBr_V_Especie     := QryNfEleGN_ESPENOTAFISC.AsString;
          ACBr_V_Marca       := QryNfEleGN_MARCNOTAFISC.AsString;
          ACBr_V_Numeracao   := QryNfEleNR_VOLUNOTAFISC.AsString;
          ACBr_V_PesoLiquido := QryNfEleQN_PESOLIQUNOTAFISC.AsString;
          ACBr_V_PesoBruto   := QryNfEleQN_PESOBRUTNOTAFISC.AsString;
          //Imprime no memo o Volume
          ACBrNFe.Memo_Volume;

          If (QryBolNFevl_boleto.Value > 0) then
          begin

            If (QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat > 0 ) then
            begin

              //Fatura da nota fiscal
              ACBr_F_Numero        := QryNfEleNR_NOTAFISC.AsString;
              ACBr_F_ValorOriginal := Muda_virgula_ponto(FloatToStrF(QryNfEleVL_NOTAFISC.Value,ffFixed,15,2));
              ACBr_F_ValorDesconto := Muda_virgula_ponto(FloatToStrF(QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat,ffFixed,15,2));
              ACBr_F_ValorLiquido  := Muda_virgula_ponto(FloatToStrF((QryNfEleVL_NOTAFISC.Value - QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat),ffFixed,15,2));
              //Imprime no memo a Fatura
              ACBrNFe.Memo_Fatura;

              QryBolNFe.First;
              For I := 1 to QryBolNFe.RecordCount do
              begin

                //Duplicata da nota fiscal
                ACBrNFe.Memo_CDuplicata(I);
                ACBr_DP_Numero         := QryBolNFenr_boleto.Value;
                ACBr_DP_DataVencimento := Conv_Data(QryBolNFedt_vencbole.Value, 1);
                ACBr_DP_Valor          := Muda_virgula_ponto(FloatToStrF((QryBolNFevl_boleto.AsFloat),ffFixed,15,2));
                //Imprime no memo a Duplicata
                ACBrNFe.Memo_Duplicata;
                //Proximo boleto
                QryBolNFe.Next;

              end;

            end;

            If (QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat = 0 ) then
            begin

              //Fatura da nota fiscal
              ACBr_F_Numero        := QryNfEleNR_NOTAFISC.AsString;
              ACBr_F_ValorOriginal := Muda_virgula_ponto(FloatToStrF(QryNfEleVL_NOTAFISC.Value,ffFixed,15,2));
              ACBr_F_ValorDesconto := Muda_virgula_ponto(FloatToStrF(QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat,ffFixed,15,2));
              ACBr_F_ValorLiquido  := Muda_virgula_ponto(FloatToStrF((QryNfEleVL_NOTAFISC.Value - QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat),ffFixed,15,2));
              //Imprime no memo a Fatura
              ACBrNFe.Memo_Fatura;

              QryBolNFe.First;
              For I := 1 to QryBolNFe.RecordCount do
              begin

                //Duplicata da nota fiscal
                ACBrNFe.Memo_CDuplicata(I);
                ACBr_DP_Numero         := QryBolNFenr_boleto.Value;
                ACBr_DP_DataVencimento := Conv_Data(QryBolNFedt_vencbole.Value, 1);
                ACBr_DP_Valor          := Muda_virgula_ponto(FloatToStrF((QryBolNFevl_boleto.AsFloat),ffFixed,15,2));
                //Imprime no memo a Duplicata
                ACBrNFe.Memo_Duplicata;
                //Proximo boleto
                QryBolNFe.Next;

              end;

            end;

          end;

          qryTemp.Close;
          QryTemp.SQL.Clear;
          qryTemp.SQL.Text := ' SELECT DISTINCT OBS_PADR_ICMS.GN_OBSEPADRNOTAFISC OBS_ICMS, ' +
                              ' OBS_PADR_IPI.GN_OBSEPADRNOTAFISC  OBS_IPI, '+
                              ' GN_OBSEPADR_PEDIVEND '+
                              ' FROM OPERACAO_TIPO, '+
                              ' PEDIDO_VENDA, '+
                              ' PEDIDO_VENDA_ITEM, '+
                              ' NOTA_FISCAL_OBSERVACAO_PADRAO OBS_PADR_ICMS, '+
                              ' NOTA_FISCAL_OBSERVACAO_PADRAO OBS_PADR_IPI '+
                              ' WHERE ( OPERACAO_TIPO.ID_TIPOOPER = PEDIDO_VENDA_ITEM.ID_TIPOOPER ) and '+
                              ' ( OPERACAO_TIPO.ID_OBSEPADRNOTAFISC_DLICMS = OBS_PADR_ICMS.ID_OBSEPADRNOTAFISC (+)) and '+
                              ' ( OPERACAO_TIPO.ID_OBSEPADRNOTAFISC_DLIPI = OBS_PADR_IPI.ID_OBSEPADRNOTAFISC (+)) and '+
                              ' (PEDIDO_VENDA.ID_PEDIVEND = PEDIDO_VENDA_ITEM.ID_PEDIVEND) and ' +
                              ' ( PEDIDO_VENDA.ID_PEDIVEND = ' + QImpDocPedID_PEDIVEND.AsString + ') ';

          qryTemp.Open;

          //nformações complementares da nota fiscal
          ACBr_DA_Complemento := '';
          ACBrNFe.Memo_Adicional;

          I := 0;

          If Trim(QryNfEleGN_OBSDESCNOTAFISC.Value) <> '' then
          begin

            OTexto := '';
            OTexto := Trim(QryNfEleGN_OBSDESCNOTAFISC.Value);
            T := Length(OTexto);
            O := 0;
            While O <= T do
            begin

              I := I + 1;
              //Informação complementares da nota fiscal
              ACBrNFe.Memo_CInformacoes(I);
              ACBr_IF_Campo := 'NF';
              ACBr_IF_Texto := Copy(OTexto, O, 60);   //QryNfEleGN_OBSDESCNOTAFISC.Value;
              //Imprime no memo a Duplicata
              ACBrNFe.Memo_Informacoes;

              O := O + 60;
            end;

          end;

          If Trim(qryTemp.FieldByName('GN_OBSEPADR_PEDIVEND').AsString) <> '' then
          begin

            OTexto := '';
            OTexto := Trim(qryTemp.FieldByName('GN_OBSEPADR_PEDIVEND').AsString);
            T := Length(OTexto);
            O := 0;
            While O <= T do
            begin

              I := I + 1;
              //Informação complementeres do pedido de venda
              ACBrNFe.Memo_CInformacoes(I);
              ACBr_IF_Campo := 'PEDIDO';
              ACBr_IF_Texto := Copy(OTexto, O, 60);   // qryTemp.FieldByName('GN_OBSEPADR_PEDIVEND').AsString;
              //Imprime no memo a Duplicata
              ACBrNFe.Memo_Informacoes;

              O := O + 60;
            end;

          end;

          If Trim(qryTemp.FieldByName('OBS_ICMS').AsString) <> '' then
          begin

            OTexto := '';
            OTexto := Trim(qryTemp.FieldByName('OBS_ICMS').AsString);
            T := Length(OTexto);
            O := 0;
            While O <= T do
            begin

              I := I + 1;
              //Informação complementar do icms
              ACBrNFe.Memo_CInformacoes(I);
              ACBr_IF_Campo := 'ICMS';
              ACBr_IF_Texto := Copy(OTexto, O, 60);   // qryTemp.FieldByName('OBS_ICMS').AsString;
              //Imprime no memo a Duplicata
              ACBrNFe.Memo_Informacoes;

              O := O + 60;
            end;

          end;

          If Trim(qryTemp.FieldByName('OBS_IPI').AsString) <> '' then
          begin

            OTexto := '';
            OTexto := Trim(qryTemp.FieldByName('OBS_IPI').AsString);
            T := Length(OTexto);
            O := 0;
            While O <= T do
            begin

              I := I + 1;
              //Informações complementares do ipi
              ACBrNFe.Memo_CInformacoes(I);
              ACBr_IF_Campo := 'IPI';
              ACBr_IF_Texto := Copy(OTexto, O, 60);   // qryTemp.FieldByName('OBS_IPI').AsString;
              //Imprime no memo a Duplicata
              ACBrNFe.Memo_Informacoes;

              O := O + 60;
            end;

          end;

        end; //

        //Cria um novo arquivo de lote para envio
        Contador := Contador + 1;
        ACBrNFe.CriarArquivoIni(ArqIni,'', Contador, 'ImpDocPed' );

        //Encerra e envia o arquivo digital sem imprimir danfe
        ACBrNFe.CriarEnviarNFe(ArqIni,InttoStr(Sequencial), '0');

        //Aqui faz uma pausa e espera o retorno da resposta para então enviar outra nfe
        //ACBrNFe.Verifica_Resposta_CriarEnviarNFe(Sequencial);
        If CancelaNFe = 0 then ACBrNFe.Tentando_comunicacao_Sefaz('CriarEnviarNFe', Sequencial, 0, 'ImpDocPed');

        //Proxima nfe
        QryNfEle.Next;

      end; //
    end; //

    //Limpa todas as seleções na tela
    FormatSettings.shortdateformat := 'dd/mm/yyyy';

    // Verificamos se a query Form não está vazia
    If not QImpDocPed.IsEmpty then
    begin

      QImpDocPed.DisableControls;
      // Limpamos todas as seleções do griDados
      grdDados.DataSource.DataSet.First;

      For vlLinha := 0 to VCONT do
      begin
        grdDados.SelectedRows.CurrentRowSelected := False;
        grdDados.DataSource.DataSet.Next;
      end; //

      grdDados.SelectedRows.Refresh;
      QImpDocPed.EnableControls;

    end; //

    //Da um reflex novamente na tela
    QImpDocPed.disableControls;
    BtAtivar.Click;
    QImpDocPed.EnableControls;
  end; //

end;

procedure TfrmImpDocPed.btnTxtCteClick(Sender: TObject);
begin
  GeraArquivoCTE();
end;

{
  Descrição: Remove os caracteres especiais de uma string
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
function TfrmImpDocPed.RemoveCaracteresEspeciais(before : string) : string;
var
  after : string;
begin
  //Removendo o enter
  after := StringReplace(StringReplace(before, #10, ' ', [rfReplaceAll]), #13, ' ', [rfReplaceAll]);
  //Removendo o 'º'.
  after := StringReplace(after, 'º', ' ', [rfReplaceAll]);
  //Retornando string tratada
  Result := after;
end;

{
  Descrição: Corrige uma string de telefone
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
function TfrmImpDocPed.CorrigeTelefone(before : string) : string;
var
  after : string;
begin
  //Removendo os '-', '(', ')' e ' '
  after := StringReplace(before, '-', '', [rfReplaceAll]);
  after := StringReplace(after, '(', '', [rfReplaceAll]);
  after := StringReplace(after, ')', '', [rfReplaceAll]);
  after := StringReplace(after, ' ', '', [rfReplaceAll]);

  //Se a string for igual a '0', retornar vazio
  if before = '0' then
    begin
      after := '';
    end;

  //Retornando a string tratada
  Result := after;
end;

procedure TfrmImpDocPed.GeraArquivoCTE();
var
  F : TextFile;
  NomeArq, tpAmb, NumCte : string;
  i : Integer;
begin
  //Verificando se algum pedido foi selecionado para a emissão do arquivo do CT-e
  if grdDados.SelectedRows.Count = 0 then
    begin
      MessageDlg('Nenhum pedido foi selecionado para geração txt do controle de transporte eletrônico.' + #13 +
                 'Por favor, verifique !', mtInformation, [mbOK], 0);
      Exit;
    end;

  //Se na confirmação da criação do CT-e o usuário clicar em 'Cancelar', não executa o restante do código
  If MessageDlg ('Confirma geração TXT, Controle de Transporte Eletrônico' + #13 +
                 ' do(s) Pedido(s) Selecionado(s) ?', mtConfirmation,[mbOk, mbCancel], 0) <> mrOk then
    Exit;

  frmDialCTe := TfrmDialCTe.Create(Self);
  //Definindo o parâmetro de carga para a modal do CT-e
  frmDialCTe.edtNumCarga.Text := QImpDocPedID_CARGEXPE.AsString;

  //Exibindo a modal do CT-e e verificando se o usuário clicou em Ok
  if frmDialCTe.ShowModal <> mrOK then
    Exit;

  //Criando a pasta dos arquivos do CT-e caso a mesma já não exista
  if not DirectoryExists('C:\CTE') then
    CreateDir('C:\CTE');

  //Definindo o path (caminho + nome + extensão) do arquivo CT-e que será criado
  NomeArq := 'C:\CTE\' + frmDialCTe.edtNumCarga.Text + '.txt';

  //Definindo o tipo de ambiente selecionado pelo usuário na modal do CT-e
  if frmDialCTe.chkAmb.Checked then
    tpAmb := '1'
  else
    tpAmb := '2';

  //Verifica se todos os registros selecionados estão corretos
  for i := 0 to grdDados.SelectedRows.Count -1 do
    begin
      grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[i]);

      //Trazendo os dados do CT-e
      ReAbreQuery(QryValidaCTE, 'ID_NOTAFISC', Trunc(QImpDocPedID_NOTAFISC.Value));

      //Verificando se já foi gerado informações de nota fiscal para o pedido em questão
      if QryValidaCTE.IsEmpty then
        begin
          ShowMessage('Dados da nota fiscal não carregados para o pedido ' + FloatToStr(QImpDocPedID_PEDIVEND.Value) + '.');
          Abort;
        end;

      //Verificando se o tomador existe
      if QryValidaCTEID_TOMADOR.IsNull then
        begin
          ShowMessage('Pedido ' + FloatToStr(QImpDocPedID_PEDIVEND.Value) + ': O TOMADOR informado não existe ou está desativado');
          Abort;
        end;

      //Verificando se o remetente existe
      if QryValidaCTEID_REMETENTE.IsNull then
        begin
          ShowMessage('Pedido ' + FloatToStr(QImpDocPedID_PEDIVEND.Value) + ': O REMETENTE informado não existe ou está desativado');
          Exit;
        end;

      //Verificando se o destinatário existe
      if QryValidaCTEID_DESTINATARIO.IsNull then
        begin
          ShowMessage('Pedido ' + FloatToStr(QImpDocPedID_PEDIVEND.Value) + ': O DESTINATÁRIO informado não existe ou está desativado');
          Exit;
        end;
    end;

  //Trazendo os dados do emitente
  ReAbreQuery(qCTeEmitente, 'FILIAL', gi_Filial);

  //Verificando se o emitente existe
  if qCTeEmitente.IsEmpty then
    begin
      ShowMessage('Erro ao coletar dados do EMITENTE, entre em contato com o setor de TI.');
      Exit;
    end;

  //Gerando o número do CT-e que vai ser gerado
  //NumCte := GeraNumCte();  //Removido pois o campo nCTe agora é o NR_NOTAFISC.

  try
    //Criando o arquivo TXT
    AssignFile(F, NomeArq);
    Rewrite(F);

    //Gerando o Header do arquivo do CT-e
    GravaHeaderCTE(F);

    //Gerando dados no arquivo TXT do CT-e para cada linha selecionada
    for i := 0 to grdDados.SelectedRows.Count - 1 do
      begin
        //Apontando para a linha selecionada da grid
        grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[i]);

        ReAbreQuery(qCTE, 'ID_NOTAFISC', Trunc(QImpDocPedID_NOTAFISC.Value));
        ReAbreQuery(qCTeTomador, 'ID_CLIENTE', Trunc(qCTeID_TOMADOR.Value));
        ReAbreQuery(qCTeRemDest, 'ID_CLIENTE', Trunc(qCTeID_DESTINATARIO.Value));

        GravaInformacoesCTE(F);
        GravaIdentificadorCTE(F, tpAmb);
        GravaTomador4(F);
        GravaInformacoesComplementares(F);
        GravaFluxo(F);
        GravaObsFisco(F);
        GravaEmitente(F);
        GravaRemetente(F);
        GravaDestinatario(F);
        GravaValoresPrestacaoServico(F);
        GravaComponentesValorPrestacao(F);
        GravaValorTotalTributos(F);

        //Definindo qual é o tipo de ICMS a ser gravado
        if qCTeFL_SITUTRIBICMS_ITEMNOTAFISC.Value = '00' then
          GravaICMS00(F)
        else if qCTeFL_SITUTRIBICMS_ITEMNOTAFISC.Value = '20' then
          GravaICMS20(F)
        else if qCTeFL_SITUTRIBICMS_ITEMNOTAFISC.Value = '40' then
          GravaICMS40(F)
        else if qCTeFL_SITUTRIBICMS_ITEMNOTAFISC.Value = '41' then
          GravaICMS41(F)
        else if qCTeFL_SITUTRIBICMS_ITEMNOTAFISC.Value = '51' then
          GravaICMS51(F)
        else if qCTeFL_SITUTRIBICMS_ITEMNOTAFISC.Value = '60' then
          GravaICMS60(F)
        else if qCTeFL_SITUTRIBICMS_ITEMNOTAFISC.Value = '90' then
          GravaICMS90(F)
        else
          GravaICMSOutraUF(F);

        GravaInformacoesCTeNormal(F);
        GravaInformacoesCarga(F);
        GravaInformacoesQuantidadeCarga(F);
        GravaInformacoesDocumentos(F);
        GravaInformacoesNFE(F);
        GravaInformacoesSeguroCarga(F);
        GravaInformacoesModal(F);
        GravaInformacaoRodoviario(F);
        GravaInformacaoVeiculo(F);
        GravaInformacoesCobranca(F);
        GravaInformacoesFatura(F);
        GravaDuplicatas(F);
      end;

    //Exibindo mensagem de sucesso
    ShowMessage('O arquivo foi gerado com sucesso! Local do arquivo: ' + NomeArq);
  except
    on E : Exception do
      ShowMessage('Ocorreu um erro durante o processo de geração de arquivo! Por favor, contate o setor de T.I.');
  end;

  //Fechando a escrita do arquivo
  CloseFile(F);
end;

{
  Descrição: Grava informações do Header do arquivo do CT-e
  Autor: Vinícius Godinho Del Rio
  Data: 23/03/2015
}
procedure TfrmImpDocPed.GravaHeaderCTE(var F : TextFile);
var
  tag : string;
  registros : string;
begin

   //Definindo a tag da linha
   tag := 'REGISTROSCTE';

   //Definindo os valores dos campos
   registros := IntToStr(grdDados.SelectedRows.Count);

   //Gravando no arquivo
   Writeln(F, tag + '|' + registros);

end;

{
  Descrição: Grava informações do CTE no arquivo
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaInformacoesCTE(var F : TextFile);
var
  tag : string;
  versao, id : string;
begin

  //Definindo a tag da linha
  tag := 'CTE';

  //Definindo os valores dos campos
  versao := '2.00';
  id := ''; //Esse valor é preenchido através da validação realizada pelo software do Fisco

  //Gravando no arquivo
  Writeln(F, tag + '|' + versao + '|' + id + '|');

end;

{
  Descrição: Grava identificação do CTE no arquivo
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaIdentificadorCTE(var F : TextFile; tipoAmbiente : string);
var
  tag : string;
  cUF, cCT, CFOP, natOp, forPag, modelo, serie, nCT, dhEmi, tpImp, tpEmis, cDV, tpAmb, tpCTe, procEmi,
  verProc, refCTE, cMunEnv, xMunEnv, UFEnv, modal, tpServ, cMunIni, xMunIni, UFIni, cMunFim, xMunFim,
  UFFim, retira, xDetRetira, dhCont, xJust : string;
begin

  //Definindo a tag da linha
  tag := 'IDE';

  //Definindo os valores dos campos
  cUF := '35'; //TODO: Trazer essa informação do banco ao invés de deixar fixo
  cCT := ''; //TODO: Verificar de onde vem essa informação
  CFOP := QCTeNR_CFOP_NOTAFISC.Value;
  natOp := TiraAcentos(QCTeNM_NATUOPERNOTAFISC.Value);
  forPag := TiraAcentos(QCTeFORPAG.AsString);
  modelo := '57'; //Definindo 57 no próprio padrão de layout da New's Systems
  serie := qCTeSG_SERINOTAFISC_NOTAFISC.Value; //'1'; //Série única
  nCT :=   qCTeNR_NOTAFISC.AsString; //Foi alterado para trazer o número da nota fiscal -- Campo anterior: NumCTe
  dhEmi := FormatDateTime('yyyy-mm-dd', Now) + 'T' + FormatDateTime('hh:nn:ss', Now);
  tpImp := '1'; //TODO: Verificar se vai ser isso mesmo
  tpEmis := '1'; //TODO: Verificar se vai ser fixo assim
  cDV := ''; //TODO: Verificar de onde vem essa informação
  tpAmb := tipoAmbiente;
  tpCTe := '0';
  procEmi := '3';
  verProc := edVersaoCTe.Text;
  refCTE := ''; //TODO: Verificar de onde vem essa informação
  cMunEnv := QCTeEmitenteCODIGO_MUNICIPIO.AsString;
  xMunEnv := TiraAcentos(QCTeEmitenteCIDADE.Value);
  UFEnv := QCTeEmitenteUF.Value;
  modal := '01';
  tpServ := '0';
  cMunIni := QCTeEmitenteCODIGO_MUNICIPIO.AsString;
  xMunIni := TiraAcentos(QCTeEmitenteCIDADE.Value);
  UFIni := QCTeEmitenteUF.Value;
  cMunFim := QCTeRemDestMUNICIPIO_ID_IBGE.AsString;
  xMunFim := QCTeRemDestMUNICIPIO.Value;
  UFFim := QCTeRemDestESTADO_SIGLA.Value;
  retira := '1';
  xDetRetira := '';
  dhCont := '';
  xJust := '';

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             cUF + '|' +
             cCT + '|' +
             CFOP + '|' +
             natOp + '|' +
             forPag + '|' +
             modelo + '|' +
             serie + '|' +
             nCT + '|' +
             dhEmi + '|' +
             tpImp + '|' +
             tpEmis + '|' +
             cDV + '|' +
             tpAmb + '|' +
             tpCTe + '|' +
             procEmi + '|' +
             verProc + '|' +
             refCTE + '|' +
             cMunEnv + '|' +
             xMunEnv + '|' +
             UFEnv + '|' +
             modal + '|' +
             tpServ + '|' +
             cMunIni + '|' +
             xMunIni + '|' +
             UFIni + '|' +
             cMunFim + '|' +
             xMunFim + '|' +
             UFFim + '|' +
             retira + '|' +
             xDetRetira + '|' +
             dhCont + '|' +
             xJust);

end;

{
  Descrição: Grava o Tomador4 no arquivo de CTE
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaTomador4(var F : TextFile);
var
  tag : string;
  toma, CNPJ, CPF, IE, xNome, xFant, xLgr, nro, xCpl, xBairro, cMun, xMun, CEP, UF, cPais, xPais, fone : string;
begin

  //Definindo a tag da linha
  tag := 'TOMA4';

  //Definindo os valores dos campos
  toma := '4';
  CNPJ := qCTeTomadorNR_CNPJCLIE.Value;
  CPF := '';
  IE := qCTeTomadorNR_INSCESTACLIE.Value;
  xNome := TiraAcentos(qCTeTomadorNM_CLIENTE.Value);
  xFant := TiraAcentos(qCTeTomadorNM_FANTCLIE.Value);
  xLgr := TiraAcentos(qCTeTomadorNM_LOGRENDECLIE.Value);
  nro := qCTeTomadorNR_LOGRENDECLIE.Value;
  xCpl := '';
  xBairro := TiraAcentos(qCTeTomadorNM_BAIRRO.Value);
  cMun := qCTeTomadorCMUN.AsString;
  xMun := TiraAcentos(qCTeTomadorNM_CIDADE.Value);
  CEP := qCTeTomadorNR_CEPENDECLIE.Value;
  UF := qCTeTomadorSG_ESTADO.Value;
  cPais := qCTeTomadorCPAIS.AsString;
  xPais := TiraAcentos(qCTeTomadorNM_PAIS.Value);
  fone := CorrigeTelefone(qCTeTomadorNR_FONECLIE.Value);

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             toma + '|' +
             CNPJ + '|' +
             CPF + '|' +
             IE + '|' +
             xNome + '|' +
             xFant + '|' +
             xLgr + '|' +
             nro + '|' +
             xCpl + '|' +
             xBairro + '|' +
             cMun + '|' +
             xMun + '|' +
             CEP + '|' +
             UF + '|' +
             cPais + '|' +
             xPais + '|' +
             fone + '|');

end;

{
  Descrição: Grava as informações complementares do arquivo do CTE
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaInformacoesComplementares(var F : TextFile);
var
  tag : string;
  xCaracAd, xCaracSer, xEmi, origCalc, destCalc, xObs : string;
begin

  //Definindo a tag da linha
  tag := 'COMPL';

  //Definindo os valores dos campos
  xCaracAd := ''; //TODO: Verificar de onde vem
  xCaracSer := ''; //TODO: Verificar de onde vem
  xEmi := ''; //TODO: Verificar de onde vem
  origCalc := ''; //TODO: Verificar de onde vem
  destCalc := ''; //TODO: Verificar de onde vem
  xObs := RemoveCaracteresEspeciais(TiraAcentos(copy(qCTeGN_OBSENOTAFISC.Value, 1, 2000)));

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             xCaracAd + '|' +
             xCaracSer + '|' +
             xEmi + '|' +
             origCalc + '|' +
             destCalc + '|' +
             xObs + '|');

end;

{
  Descrição: Grava informações de Fluxo no arquivo do CTE
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaFluxo(var F : TextFile);
var
  tag : string;
  xOrig, xDest, xRota : string;
begin

  //Definindo a tag da linha
  tag := 'FLUXO';

  //Definindo os valores dos campos
  xOrig := ''; //TODO: Verificar de onde vem essa informação
  xDest := ''; //TODO: Verificar de onde vem essa informação
  xRota := ''; //TODO: Verificar de onde vem essa informação

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             xOrig + '|' +
             xDest + '|' +
             xRota);

end;

{
  Descrição: Grava Observação do Fisco
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaObsFisco(var F : TextFile);
var
  tag : string;
  xCampo, xTexto : string;
begin

  //Definindo a tag da linha
  tag := 'OBSFISCO';

  //Definindo valores dos campos
  xCampo := 'TIPO';
  xTexto := TiraAcentos(qCTeGN_OBSEPADRNOTAFISC.Value);

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             xCampo + '|' +
             xTexto + '|');

end;

{
  Descrição: Grava informações do Emitente no arquivo do CTE
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaEmitente(var F : TextFile);
var
  tag : string;
  CNPJ, IE, xNome, xFant, xLgr, nro, xCpl, xBairro, cMun, xMun, CEP, UF, fone : string;
begin

  //Definindo a tag da linha
  tag := 'EMIT';

  //Definindo valores dos campos
  CNPJ := qCTeEmitenteCNPJ.Value;
  IE := qCTeEmitenteIE.Value;
  xNome := TiraAcentos(qCTeEmitenteNM_EMPRESARIAL.Value);
  xFant := ''; //TODO: Trazer essa informação
  xLgr := TiraAcentos(qCTeEmitenteENDERECO.Value);
  nro := qCTeEmitenteEND_NUMERO.Value;
  xCpl := ''; //TODO: Trazer essa informação se houver
  xBairro := TiraAcentos(qCTeEmitenteBAIRRO.Value);
  cMun := qCTeEmitenteCODIGO_MUNICIPIO.AsString;
  xMun := TiraAcentos(qCTeEmitenteCIDADE.Value);
  CEP := qCTeEmitenteCEP.Value;
  UF := qCTeEmitenteUF.Value;
  fone := ''; //TODO: Trazer essa informação se houver

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             CNPJ + '|' +
             IE + '|' +
             xNome + '|' +
             xFant + '|' +
             xLgr + '|' +
             nro + '|' +
             xCpl + '|' +
             xBairro + '|' +
             cMun + '|' +
             xMun + '|' +
             CEP + '|' +
             UF + '|' +
             fone + '|');

end;

{
  Descrição: Grava as informações do Remetente no arquivo do CTE
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaRemetente(var F : TextFile);
var
  tag : string;
  CNPJ, CPF, IE, xNome, xFant, xLgr, nro, xCpl, xBairro, cMun, xMun, CEP, uf, cPais, xPais, fone : string;
begin

  //Buscando dados do Remetente
  ReAbreQuery(qCTeRemDest, 'ID_CLIENTE', Trunc(qCTeID_REMETENTE.Value));

  //Definindo a tag da linha
  tag := 'REM';

  //Definindo os valores dos campos
  CNPJ := qCTeRemDestCNPJ.Value;
  CPF := '';
  IE := qCTeRemDestINSCRICAO_ESTADUAL.Value;
  xNome := TiraAcentos(qCTeRemDestNOME.Value);
  xFant := ''; //Trazer depois esse campo
  xLgr := TiraAcentos(qCTeRemDestLOGRADOURO.Value);
  nro := qCTeRemDestNUMERO.Value;
  xCpl := TiraAcentos(qCTeRemDestCOMPLEMENTO.Value);
  xBairro := TiraAcentos(qCTeRemDestBAIRRO.Value);
  cMun := qCTeRemDestMUNICIPIO_ID_IBGE.AsString;
  xMun := TiraAcentos(qCTeRemDestMUNICIPIO.Value);
  CEP := qCTeRemDestCEP.Value;
  UF := qCTeRemDestESTADO_SIGLA.Value;
  cPais := qCTeRemDestPAIS_ID_IBGE.AsString;
  xPais := TiraAcentos(qCTeRemDestPAIS.Value);
  fone := ''; //Trazer essa informação se houver

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             CNPJ + '|' +
             CPF + '|' +
             IE + '|' +
             xNome + '|' +
             xFant + '|' +
             xLgr + '|' +
             nro + '|' +
             xCpl + '|' +
             xBairro + '|' +
             cMun + '|' +
             xMun + '|' +
             CEP + '|' +
             UF + '|' +
             cPais + '|' +
             xPais + '|' +
             fone + '|');

end;

{
  Descrição: Grava as informações de destinatário no arquivo do CT-e
  Autor: Vinícius Godinho Del Rio
  Data: 16/12/2014
}
procedure TfrmImpDocPed.GravaDestinatario(var F : TextFile);
var
  tag : string;
  CNPJ, CPF, IE, xNome, xFant, xLgr, nro, xCpl, xBairro, cMun, xMun, CEP, uf, cPais, xPais, fone : string;

begin

  //Buscando dados do Remetente
  ReAbreQuery(qCTeRemDest, 'ID_CLIENTE', Trunc(qCTeID_DESTINATARIO.Value));

  //Definindo a tag da linha
  tag := 'DEST';

  //Definindo os valores dos campos
  CNPJ := qCTeRemDestCNPJ.Value;
  CPF := '';
  IE := qCTeRemDestINSCRICAO_ESTADUAL.Value;
  xNome := TiraAcentos(qCTeRemDestNOME.Value);
  xFant := ''; //Trazer depois esse campo
  xLgr := TiraAcentos(qCTeRemDestLOGRADOURO.Value);
  nro := qCTeRemDestNUMERO.Value;
  xCpl := TiraAcentos(qCTeRemDestCOMPLEMENTO.Value);
  xBairro := TiraAcentos(qCTeRemDestBAIRRO.Value);
  cMun := qCTeRemDestMUNICIPIO_ID_IBGE.AsString;
  xMun := TiraAcentos(qCTeRemDestMUNICIPIO.Value);
  CEP := qCTeRemDestCEP.Value;
  UF := qCTeRemDestESTADO_SIGLA.Value;
  cPais := qCTeRemDestPAIS_ID_IBGE.AsString;
  xPais := TiraAcentos(qCTeRemDestPAIS.Value);
  fone := ''; //Trazer essa informação se houver

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             CNPJ + '|' +
             CPF + '|' +
             IE + '|' +
             xNome + '|' +
             xFant + '|' +
             xLgr + '|' +
             nro + '|' +
             xCpl + '|' +
             xBairro + '|' +
             cMun + '|' +
             xMun + '|' +
             CEP + '|' +
             UF + '|' +
             cPais + '|' +
             xPais + '|' +
             fone + '|');
 end;

{
  Descrição: Grava os valores de prestão de serviço no arquivo no CTE
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaValoresPrestacaoServico(var F : TextFile);
var
  tag : string;
  vTPrest, vRec : string;
begin

  //Definindo a tag da linha
  tag := 'VPREST';

  //Definindo os valores dos campos
  vTPrest := ReplaceStr(FloatToStrF(qCTeVL_NOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
  vRec := ReplaceStr(FloatToStrF(qCTeVL_NOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             vTPrest + '|' +
             vRec + '|');

end;

{
  Descrição: Grava os componentes de valor da prestação
  Autor: Vinícius Godinho Del Rio
  Data: 14/01/2015
}
procedure TfrmImpDocPed.GravaComponentesValorPrestacao(var F : TextFile);
var
  tag : string;
  xNome, vComp : string;
begin
  //Definindo a tag da linha
  tag := 'COMP';

  //Buscando as informações de componentes de valor da prestação
  QryCTECompServ.Close;
  QryCTECompServ.ParamByName('ID_PEDIVEND').Value := QImpDocPedID_PEDIVEND.Value;
  QryCTECompServ.Open;

  //Colocando o cursor na primeira linha
  QryCTECompServ.First;

  //Percorrendo todos os registros encontrados e gerando as linhas
  while not QryCTECompServ.Eof do
    begin
      //Definindo os valores que serão gravados
      xNome := QryCTECompServNM_NOME.Value;
      vComp := ReplaceStr(FloatToStrF(QryCTECompServVL_VALOR.AsFloat, ffFixed, 15, 2), ',', '.');

      //Gravando no arquivo
      Writeln(F, tag + '|' +
                 TiraAcentos(xNome) + '|' +
                 vComp + '|');

      //Indo para o próximo registro
      QryCTECompServ.Next;
    end;
end;

{
  Descrição: Gravando o valor total dos tributos
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaValorTotalTributos(var F : TextFile);
var
  tag : string;
  unkown, total : string;
  vTotalNF, vICMS: double;
begin

  //Definindo a tag da linha
  tag := 'IMP';

  vTotalNF:= qCTeVL_NOTAFISC.Value * 0.0557;
  vICMS:= qCTeVL_NOTAFISC.Value * (qCTePC_BASEICMSNOTAFISC.Value/100);


  //Definindo os valores dos campos
  unkown := ''; //Não descobri o que quer dizer esse campo.
  //total := ReplaceStr(FloatToStrF(qCTeVL_IMPOBASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2),',','.'); //'0.00';
  total:=  ReplaceStr(FloatToStrF(vTotalNF + vICMS, ffFixed, 15, 2),',','.');

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             unkown + '|' +
             total + '|');

end;

{
  Descrição: Grava informações de impostos ICMS00
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaICMS00(var F : TextFile);
var
  tag : string;
  CST, vBC, pICMS, vICMS : string;
begin

  //Definindo a tag da linha
  tag := 'ICMS00';

  //Definindo o valor dos campos
  CST := '00';
  vBC := ReplaceStr(FloatToStrF(qCTeVL_BASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
  pICMS := ReplaceStr(FloatToStrF(qCTePC_BASEICMSNOTAFISC.AsFloat,ffFixed, 4, 2), ',', '.');
  vICMS :=  ReplaceStr(FloatToStrF(qCTeVL_IMPOBASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             CST + '|' +
             vBC + '|' +
             pICMS + '|' +
             vICMS + '|');

end;

{
  Descrição: Grava informações de ICMS20
  Autor: Vinícius Godinho Del Rio
  Data: 16/12/2014
}
procedure TfrmImpDocPed.GravaICMS20(var F : TextFile);
var
  tag : string;
  CST, pRedBC, pICMS, vICMS, infAdFisco : string;
begin

  //Definindo a tag da linha
  tag := 'ICMS20';

  //Definindo os valores dos campos
  CST := '20';
  pRedBC := ReplaceStr(FloatToStrF(qCTePC_REDUICMSITEMNOTAFISC.AsFloat, ffFixed, 5, 2), ',', '.');
  pICMS := ReplaceStr(FloatToStrF(qCTeVL_BASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
  vICMS := ReplaceStr(FloatToStrF(qCTePC_BASEICMSNOTAFISC.AsFloat,ffFixed, 4, 2), ',', '.');
  infAdFisco := ReplaceStr(FloatToStrF(qCTeVL_IMPOBASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             CST + '|' +
             pRedBC + '|' +
             pICMS + '|' +
             vICMS + '|' +
             infAdFisco + '|');

end;

{
  Descrição: Grava informações de ICMS40
  Autor: Vinícius Godinho Del Rio
  Data: 16/12/2014
}
procedure TfrmImpDocPed.GravaICMS40(var F : TextFile);
var
  tag : string;
  CST : string;
begin

  //Definindo a tag da linha
  tag := 'ICMS45';

  //Definindo valores dos campos
  CST := '40';

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             CST + '|');

end;

{
  Descrição: Grava informações de ICMS41
  Autor: Vinícius Godinho Del Rio
  Data: 16/12/2014
}
procedure TfrmImpDocPed.GravaICMS41(var F : TextFile);
var
  tag : string;
  CST : string;
begin

  //Definindo a tag da linha
  tag := 'ICMS45';

  //Definindo valores dos campos
  CST := '41';

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             CST + '|');

end;

{
  Descrição: Grava informações de ICMS51
  Autor: Vinícius Godinho Del Rio
  Data: 16/12/2014
}
procedure TfrmImpDocPed.GravaICMS51(var F : TextFile);
var
  tag : string;
  CST : string;
begin

  //Definindo a tag da linha
  tag := 'ICMS45';

  //Definindo valores dos campos
  CST := '51';

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             CST + '|');

end;

{
  Descrição: Grava informações de ICMS60
  Autor: Vinícius Godinho Del Rio
  Data: 16/12/2014
}
procedure TfrmImpDocPed.GravaICMS60(var F : TextFile);
var
  tag : string;
  CST, vBCSTRest, vICMSSTRet, pICMSSTRet, vCred : string;
begin

  //Definindo a tag da linha
  tag := 'ICMS60';

  //Definindo os valores dos campos
  CST := '60';
  vBCSTRest := ReplaceStr(FloatToStrF(qCTeVL_BASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
  vICMSSTRet := ReplaceStr(FloatToStrF(qCTePC_BASEICMSNOTAFISC.AsFloat,ffFixed, 4, 2), ',', '.');
  pICMSSTRet := ReplaceStr(FloatToStrF(qCTeVL_IMPOBASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
  vCred := ''; //Verificar de onde vem essa informação

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             CST + '|' +
             vBCSTRest + '|' +
             vICMSSTRet + '|' +
             pICMSSTRet + '|' +
             vCred + '|');

end;

{
  Descrição: Grava informações de ICMS90
  Autor: Vinícius Godinho Del Rio
  Data: 16/12/2014
}
procedure TfrmImpDocPed.GravaICMS90(var F : TextFile);
var
  tag : string;
  CST, pRedBC, vBC, pICMS, vICMS, vCred, infAdFisco : string;
begin

  //Definindo a tag da linha
  tag := 'ICMS90';

  //Definindo valores dos campos
  CST := '90';
  pRedBC := ReplaceStr(FloatToStrF(qCTePC_REDUICMSITEMNOTAFISC.AsFloat, ffFixed, 5, 2), ',', '.');
  vBC := ReplaceStr(FloatToStrF(qCTeVL_BASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
  pICMS := ReplaceStr(FloatToStrF(qCTePC_BASEICMSNOTAFISC.AsFloat,ffFixed, 4, 2), ',', '.');
  vICMS := ReplaceStr(FloatToStrF(qCTeVL_IMPOBASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
  vCred := ''; //TODO: Verificar de onde vem essa informação

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             CST + '|' +
             pRedBC + '|' +
             vBC + '|' +
             pICMS + '|' +
             vICMS + '|' +
             vCred + '|');

end;

{
  Descrição: Grava informações de ICMS de outra UF
  Autor: Vinícius Godinho Del Rio
  Data: 16/12/2014
}
procedure TfrmImpDocPed.GravaICMSOutraUF(var F : TextFile);
var
  tag : string;
  CST, pRedBCOutraUF, vBCOutraUF, pICMSOutraUF, vICMSOutraUF : string;
begin
  //Definindo a tag das linhas
  tag := 'ICMSOutraUF';

  //Definindo os valores dos campos
  CST := '90';
  pRedBCOutraUF := ReplaceStr(FloatToStrF(qCTePC_REDUICMSITEMNOTAFISC.AsFloat, ffFixed, 5, 2), ',', '.');
  vBCOutraUF := ReplaceStr(FloatToStrF(qCTeVL_BASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
  pICMSOutraUF := ReplaceStr(FloatToStrF(qCTePC_BASEICMSNOTAFISC.AsFloat,ffFixed, 4, 2), ',', '.');
  vICMSOutraUF := ReplaceStr(FloatToStrF(qCTeVL_IMPOBASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             CST + '|' +
             pRedBCOutraUF + '|' +
             vBCOutraUF + '|' +
             pICMSOutraUF + '|' +
             vICMSOutraUF + '|');
end;


{
  Descrição: Grava Header de informações do CT-e Normal
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaInformacoesCTeNormal(var F : TextFile);
var
  tag : string;
begin

  //Definindo a tag da linha
  tag := 'INFCTENORM';

  //Gravando no arquivo
  Writeln(F, tag + '|');

end;

{
  Descrição: Grava informações de carga do CTE
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaInformacoesCarga(var F : TextFile);
var
  tag : string;
  vCarga, proPed, xOutCat : string;
begin

  //Definindo a tag da linha
  tag := 'INFCARGA';

  //Definindo os valores dos campos
  vCarga := ReplaceStr(FloatToStrF(qCTeVL_TOTAL_MERCADORIA.AsFloat, ffFixed, 15, 2), ',', '.');
  proPed := qCTePRODUTO_PREDOMINANTE.Value;
  xOutCat := qCTeGN_OUTRAS_CARACTERISTICAS.Value;

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             vCarga + '|' +
             TiraAcentos(proPed) + '|' +
             TiraAcentos(xOutCat) + '|');

end;

{
  Descrição: Grava informações de quantidades da carga
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaInformacoesQuantidadeCarga(var F : TextFile);
var
  tag : string;
  cUnid, tpMed, qCarga : string;
begin

  //Definindo a tag da linha
  tag := 'INFQ';

  //Definindo os valores dos campos
  cUnid := qCTeCOD_UNIDADE_MEDIDA.Value;
  tpMed := qCTeNM_TIPO_MEDIDA.Value;
  qCarga := ReplaceStr(FloatToStrF(qCTeQN_QUANTIDADE_CTE.Value,ffFixed, 15, 4), ',', '.');

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             cUnid + '|' +
             tpMed + '|' +
             qCarga + '|');

end;

{
  Descrição: Grava o header de informações de documentos no arquivo do CTE
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaInformacoesDocumentos(var F : TextFile);
var
  tag : string;
begin

  //Definindo a tag da linha
  tag := 'INFDOC';

  //Gravando no arquivo
  Writeln(F, tag + '|');

end;

{
  Descrição: Grava informações de NFE no arquivo do CTE
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaInformacoesNFE(var F : TextFile);
var
  tag : string;
  chave, PIN, dPrev : string;
begin

  //Definindo a tag da linha
  tag := 'INFNFE';

  //Buscando as chaves de nfe
  ReAbreQuery(QryInfNFE, 'ID_PEDIVEND', Trunc(QImpDocPedID_PEDIVEND.Value));

  //Inserindo todas as chaves de nfe
  while not QryInfNFE.Eof do
  begin

    //Definindo os valores dos campos
    chave := QryInfNFECHAVE.Value;
    PIN := ''; //TODO: Verificar de onde vem
    dPrev := ''; //TODO: Verificar de onde vem

    //Gravando no arquivo
    Writeln(F, tag + '|' +
               chave + '|' +
               PIN + '|' +
               dPrev);

    //Incrementando índice
    QryInfNFE.Next;

  end;

end;

{
  Descrição: Grava informações sobre o seguro da carga no arquivo do CT-e
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaInformacoesSeguroCarga(var F : TextFile);
var
  tag : string;
  respSeg, xSeg, nApol, nAver, vCarga : string;
begin

  //Definindo a tag da linha
  tag := 'SEG';

  //Definindo o valor dos campos
  respSeg := '0'; //TODO: Verificar se isso está correto
  xSeg := ''; //TODO: Verificar se vai ser preenchido
  nApol := ''; //TODO: Verificar se vai ser preenchido
  nAver := ''; //TODO: Verificar se vai ser preenchido
  vCarga := ''; //TODO: Verificar se vai ser preenchido

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             respSeg + '|' +
             xSeg + '|' +
             nApol + '|' +
             nAver + '|' +
             vCarga + '|');

end;

{
  Descrição: Grava informações da modal no arquivo do CT-e
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaInformacoesModal(var F : TextFile);
var
  tag : string;
  versaoModal : string;
begin

  //Definindo a tag da linha
  tag := 'INFMODAL';

  //Definindo os valores dos campos
  versaoModal := '2.00';

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             versaoModal + '|');

end;

{
  Descrição: Gravando informações do rodoviário
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaInformacaoRodoviario(var F : TextFile);
var
  tag : string;
  RNTRC, dPrev, lota, CIOT : string;
begin

  //Definindo a tag da linha
  tag := 'RODO';

  //Definindo valores dos campos
  RNTRC := '99999999'; //TODO: Verificar de onde vem essa informação
  dPrev := FormatDateTime('yyyy-mm-dd', qCTeDT_ENTRPEDIVEND.Value);
  lota := '0';
  CIOT := '';

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             RNTRC + '|' +
             dPrev + '|' +
             lota + '|' +
             CIOT);

end;

{
  Descrição: Grava informações referentes aos veículos
  Autor: Vinícius Godinho Del Rio
  Data: 27/02/2015
}
procedure TfrmImpDocPed.GravaInformacaoVeiculo(var F : TextFile);
var
  tag : string;
  cInt, RENAVAM, placa, tara, capKG, capM3, tpProp, tpVeic, tpRod, tpCar, UF : string;
begin

  //Definindo a tag da linha
  tag := 'VEIC';

  //Definindo os valores dos campos
  cInt := '';
  RENAVAM := '';
  placa := '';
  tara := '';
  capKG := '';
  capM3 := '';
  tpProp := '';
  tpVeic := '';
  tpRod := '';
  tpCar := '';
  UF := '';


  //Gravando no arquivo
  Writeln(F, tag + '|' +
             cInt + '|' +
             RENAVAM + '|' +
             placa + '|' +
             tara + '|' +
             capKG + '|' +
             capM3 + '|' +
             tpProp + '|' +
             tpVeic + '|' +
             tpRod + '|' +
             tpCar + '|' +
             UF);

end;

{
  Descrição: Gravando header de cobranças no arquivo do CTE
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaInformacoesCobranca(var F : TextFile);
var
  tag : string;
begin

  //Definindo a tag da linha
  tag := 'COBR';

  //Gravando no arquivo
  Writeln(F, tag + '|');

end;

{
  Descrição: Grava informações da fatura no arquivo do CT-e
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaInformacoesFatura(var F : TextFile);
var
  tag : string;
  nFat, vOrig, vDesc, vLiq : string;
begin

  //Definindo a tag da linha
  tag := 'FAT';

  //Definindo os valores dos campos
  nFat := '1';
  vOrig := ReplaceStr(FloatToStrF(qCTeVL_NOTAFISC.AsFloat,ffFixed, 15, 2), ',', '.');
  vDesc := ''; //TODO: Verificar de onde vem
  vLiq := ReplaceStr(FloatToStrF(qCTeVL_NOTAFISC.AsFloat,ffFixed, 15, 2), ',', '.');

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             nFat + '|' +
             vOrig + '|' +
             vDesc + '|' +
             vLiq + '|');

end;

{
  Descrição: Grava informações de duplicatas no arquivo do CT-e
  Autor: Vinícius Godinho Del Rio
  Data: 15/12/2014
}
procedure TfrmImpDocPed.GravaDuplicatas(var F : TextFile);
var
  tag : string;
  nDup, dVenc, vDup : string;
begin

  //Definindo a tag da linha
  tag := 'DUP';

  //Definindo os valores dos campos
  nDup := '0';
  dVenc := FormatDateTime('yyyy-mm-dd', qCTeDT_ENTRPEDIVEND.Value);
  vDup := ReplaceStr(FloatToStrF(qCTeVL_NOTAFISC.AsFloat,ffFixed, 15, 2), ',', '.');

  //Gravando no arquivo
  Writeln(F, tag + '|' +
             nDup + '|' +
             dVenc + '|' +
             vDup + '|');

end;

{
  Descrição: Reabre uma query passando apenas um parâmetro do tipo inteiro
  Autor: Vinícius Godinho Del Rio
  Data: 16/12/2014
}
procedure TfrmImpDocPed.ReAbreQuery(qry : TOraQuery; paramName : string; paramValue : Integer);
begin

  qry.Close;
  qry.ParamByName(paramName).Value := paramValue;
  qry.Open;

end;

function TfrmImpDocPed.GeraNumCte() : string;
var
  NumCTe : string;
begin

  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Add('SELECT ');
  QryTemp.SQL.Add('  NM_CONTADOR, QN_ULTIVALOCONT ');
  QryTemp.SQL.Add('FROM ');
  QryTemp.SQL.Add('  CONTADOR ');
  QryTemp.SQL.Add('WHERE ');
  QryTemp.SQL.Add('  Contador.NM_CONTADOR = ' + QuotedStr('NR_CTE'));
  QryTemp.Open;

  NumCTe:= IntToStr(QryTemp.FieldByName('QN_ULTIVALOCONT').Value + 1);

  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Add('UPDATE CONTADOR ');
  QryTemp.SQL.Add(' SET QN_ULTIVALOCONT = ' + NumCTe);
  QryTemp.SQL.Add(' WHERE NM_CONTADOR = ' + QuotedStr('NR_CTE'));

  try

    QryTemp.ExecSQL;

    Result := NumCte;

  except

    MessageDlg('Erro ao gravar próximo nº do CTe. Verifique.', mtWarning, [mbOk], 0);
    Abort;

  end;

end;

procedure TfrmImpDocPed.btn_NFEClick(Sender: TObject);
var LstNF : TStringList ;
    I : Integer ;
begin
    // Verificamos se existe algum ítem selecionado
    if grdDados.SelectedRows.Count = 0 then
    begin
      MessageDlg('Pelo menos um pedido deve ser selecionado !', mtWarning, [mbOk], 0);
      Exit;
    end;

    LstNF  := TStringList.Create;

    for i := 0 to grdDados.SelectedRows.Count - 1 do
    begin
         // Posicionamos no registro desejado
         grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[i]);
         if ( QImpDocPed.FieldByName('ID_NOTAFISC').Value > 0 ) and
            ( QImpDocPed.FieldByName('FL_CTE').AsString <> 'S' ) then
            LstNF.Add( QImpDocPed.FieldByName('ID_NOTAFISC').AsString);

    end;

    if ( LstNF.Count = 0  ) then
    begin
         ShowMessage('Pedidos Selecionado não possuem Numeração de Nota Fiscal.');
         Exit;
    end;

    Try
        frmEmissorNFe := TfrmEmissorNFe.Create(Self);
        frmEmissorNFe.LNotas.AddStrings( LstNF) ;
        LstNF.Free;
        frmEmissorNFe.SerNF := QImpDocPedSG_SERINOTAFISC.Value;
        frmEmissorNFe.TIPOEMISSAO := 'NFE';
        //frmGeraNFE.Carga := QImpDocPedID_CARGEXPE.AsString;
        frmEmissorNFe.ShowModal;
      except;
        frmEmissorNFe.Free;
    end;


end;

procedure TfrmImpDocPed.ImprimirDANFE2Click(Sender: TObject);
var LstNF : TStringList ;
    I : Integer ;
begin
    // Verificamos se existe algum ítem selecionado
    if grdDados.SelectedRows.Count = 0 then
    begin
      MessageDlg('Pelo menos um pedido deve ser selecionado !', mtWarning, [mbOk], 0);
      Exit;
    end;

    LstNF  := TStringList.Create;

    for i := 0 to grdDados.SelectedRows.Count - 1 do
    begin
         // Posicionamos no registro desejado
         grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[i]);
         if ( QImpDocPed.FieldByName('ID_NOTAFISC').Value > 0 ) then
            LstNF.Add( QImpDocPed.FieldByName('ID_NOTAFISC').AsString);

    end;

    if ( LstNF.Count = 0  ) then
    begin
         ShowMessage('Pedidos Selecionado não possuem Numeração de Nota.');
         Exit;
    end;

    Try
        frmEmissorNFe := TfrmEmissorNFe.Create(Self);
        frmEmissorNFe.SOIMPRESSAO := 'S';
        frmEmissorNFe.TIPOEMISSAO := 'NFE';
        frmEmissorNFe.LNotas.AddStrings( LstNF) ;
        LstNF.Free;
        frmEmissorNFe.SerNF := QImpDocPedSG_SERINOTAFISC.Value;
        //frmGeraNFE.Carga := QImpDocPedID_CARGEXPE.AsString;
        frmEmissorNFe.ShowModal;
    except
        frmEmissorNFe.Free;
    end;

end;

procedure TfrmImpDocPed.btn_CteClick(Sender: TObject);
var LstNF : TStringList ;
    I : Integer ;
begin
    // Verificamos se existe algum ítem selecionado
    if grdDados.SelectedRows.Count = 0 then
    begin
      MessageDlg('Pelo menos um pedido deve ser selecionado !', mtWarning, [mbOk], 0);
      Exit;
    end;

    LstNF  := TStringList.Create;

    for i := 0 to grdDados.SelectedRows.Count - 1 do
    begin
         // Posicionamos no registro desejado
         grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[i]);
         if ( QImpDocPed.FieldByName('ID_NOTAFISC').Value > 0 ) and
            ( QImpDocPed.FieldByName('FL_CTE').AsString = 'S' ) then
            LstNF.Add( QImpDocPed.FieldByName('ID_NOTAFISC').AsString);

    end;

    if ( LstNF.Count = 0  ) then
    begin
         ShowMessage('Pedidos Selecionados não possuem Numeração de Conhecimento de Transporte.');
         Exit;
    end;

    Try
        frmEmissorNFe := TfrmEmissorNFe.Create(Self);
        frmEmissorNFe.LNotas.AddStrings( LstNF) ;
        LstNF.Free;
        frmEmissorNFe.SerNF := QImpDocPedSG_SERINOTAFISC.Value;
        frmEmissorNFe.TIPOEMISSAO := 'CTE';
        //frmGeraNFE.Carga := QImpDocPedID_CARGEXPE.AsString;
        frmEmissorNFe.ShowModal;
      except;
        frmEmissorNFe.Free;
    end;

end;


procedure TfrmImpDocPed.CRTemp_QImpDocPedAfterScroll(DataSet: TDataSet);
begin
     btn_Cte.Visible := ( QImpDocPedFL_CTE.AsString = 'S');
   //  GerarValeCaixa1.Enabled := ( QImpDocPedID_VALE.AsInteger = 0   );
   //  ImprimeValeCaixa1.Enabled := ( QImpDocPedID_VALE.AsInteger > 0   );
end;

procedure TfrmImpDocPed.CRTemp_QImpDocPedAfterOpen(DataSet: TDataSet);
begin
     btn_Cte.Visible := ( QImpDocPedFL_CTE.AsString = 'S');
     //GerarValeCaixa1.Enabled   := ( QImpDocPedID_VALE.AsInteger = 0   );
     //ImprimeValeCaixa1.Enabled := ( QImpDocPedID_VALE.AsInteger > 0   );
end;

procedure TfrmImpDocPed.grdDadosTitleClick(Column: TColumn);
begin
     OrdenarGrid ( grdDados, QImpDocPed , Column,  OrdemColuna , Ordem );
     OrdemColuna := Column.FieldName;
     if (OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente') then
      Ordem := 'Crescente'
     else
      Ordem := 'Decrescente';
end;

procedure TfrmImpDocPed.ImprimeBoleto();
var
  I, li_Posi    , li_Loop    , li_IndeImpr, li_QtdeParc: Integer;
  ls_CampLivr, ls_NumeBanc, ls_NumeAgen, ls_NumeCont, ls_FormVenc, ls_ValoBole: String;
  ls_Geral   , ls_Dac     , ls_DV1     , ls_DV2     , ls_DV3     : String;
  ls_LinhDig1, ls_LinhDig2, ls_LinhDig3, ls_NomeImpr, ls_NumeDocu: String;
  ls_D1      , ls_D2      , vNomeSacador, ls_dig, vCedente, vNomeBanco, vNumeBanco, VNossoNumero : String;
  vLogo, VCarteira : String;
  vPercMoraDia: double;
begin
  vezimpre:=0;
  //Criamos o boleto
  FrmQRBoleto := TfrmQRBoleto.Create(Self);
  if (Vb_Imprime = true) then
    FrmQRBoleto.RLReport1.PrintDialog := True;

  // Verificamos se foi selecionado algum pedido para emissão de boleto
  if grdDados.SelectedRows.Count = 0 then
  begin
    MessageDlg('Nenhum pedido foi selecionado para impressão de boleto.' + #13 +
               'Por favor, verifique !', mtInformation, [mbOK], 0);
    Exit;
  end;

  grdDados.DataSource.DataSet.First;
  grdDados.DataSource.DataSet.DisableControls;
  For I:= 0 to grdDados.SelectedRows.Count - 1 do
  begin
    grdDados.SelectedRows.CurrentRowSelected := QImpDocPedFLAG_CEDENTE.AsString = 'S';
    grdDados.DataSource.DataSet.Next;
  end;
  grdDados.DataSource.DataSet.EnableControls;
  grdDados.SelectedRows.Refresh;


  // Confirmação de impressão
  if MessageDlg ('Confirma Impressão de Boletos do(s)' + #13 +
                 '    Pedido(s) Selecionado(s) ?', mtConfirmation,
                 [mbOk, mbCancel], 0) = mrOk then
  begin
    // Loop para todos os pedidos selecionados
    For li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
    begin
      // Posicionamos no registro a ser impresso
      grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

      // Não gera boletos se a nota nao foi transmitida
      if QImpDocPedNFE_CHAVE.AsString = '' then
      begin
        Application.MessageBox(PChar('Não é possível impressão do Boleto para a Nota Fiscal ' + QImpDocPedNR_NOTAFISC.AsString + ', pois a mesma não foi transmitida.'), 'Comercial Dacar - Geração dos Boletos' , MB_OK + MB_ICONINFORMATION);
        grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop+1]);
        Continue;
      end;

      // Selecionamos o(s) boletos a serem impressos
      qryBoleto.Close;
      qryBoleto.ParamByName('pi_pedivend').AsInteger := QImpDocPed['ID_PEDIVEND'];
      qryBoleto.Open;

      //Verificamos se existe(m) Boleto(s) para o pedido
      If (qryBoleto.IsEmpty)then
      begin
        MessageDlg('Boleto(s) não encontrado(s) para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !' + #13 +
                   'Por favor, verifique !', mtInformation, [mbOK], 0);
        grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop+1]);
        Continue;
      end;

      // Confere o valor financeiro do Boleto.
      QryTemp.Close;

      QryTemp.SQL.Clear;
      QryTemp.SQL.Text := ' SELECT P.ID_PEDIVEND,                                                         '+
                          '       ROUND( (NVL(P.VL_FATUPEDIVEND,0) -(NVL(P.VL_QUEBPEDIVEND,0)+NVL(P.VL_OUTRAJUSPEDIVEND,0)+NVL(P.VL_DEVOPEDIVEND,0)))/ COUNT(*),2)  AS VLFINAN,  '+
                          '       SUM(B.VL_BOLETO) VL_BOLETO, ROUND(SUM(B.VL_BOLETO)/COUNT(*),2) VL_PARC         '+
                          '   FROM PEDIDO_VENDA P                                                       '+
                          '   LEFT JOIN BOLETO B ON P.ID_PEDIVEND = B.ID_PEDIVEND                       '+
                          '  WHERE (P.ID_PEDIVEND = ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ')        '+
                          '  GROUP BY P.ID_PEDIVEND, P.VL_FATUPEDIVEND, P.VL_QUEBPEDIVEND, P.VL_OUTRAJUSPEDIVEND, P.VL_DEVOPEDIVEND ';
      QryTemp.Open;


      // Selecionamos as instruções de cobrança
      qryTempInstCobr.Close;
      qryTempInstCobr.SQL.Clear;
      qryTempInstCobr.SQL.Text := 'SELECT Cobranca_instrucao.EMPRESA,                                                           '+
                                  '       Cobranca_instrucao.FILIAL,                                                            '+
                                  '       Cobranca_instrucao.ID_INSTCOBR,                                                       '+
                                  '       Cobranca_instrucao.NM_INSTCOBR,                                                       '+
                                  '       Cobranca_instrucao.PC_JURODIARINSTCOBR,                                               '+
                                  '       Cobranca_instrucao.FL_TIPOJUROINSTCOBR,                                               '+
                                  '       Cobranca_instrucao.QN_DIASTOLEJUROINSTCOBR,                                           '+
                                  '       Cobranca_instrucao.PC_MULTINSTCOBR,                                                   '+
                                  '       Cobranca_instrucao.QN_DIASTOLEMULTINSTCOBR,                                           '+
                                  '       Cobranca_instrucao.FL_PROTINSTCOBR,                                                   '+
                                  '       Cobranca_instrucao.QN_DIASTOLEPROTINSTCOBR,                                           '+
                                  '       Cobranca_instrucao.GN_TEXTPROTINSTCOBR,                                               '+
                                  '       Cobranca_instrucao.QN_DIASTOLEDESCINSTCOBR,                                           '+
                                  '       Cobranca_instrucao.QN_DIASTOLERECEINSTCOBR,                                           '+
                                  '       Cobranca_instrucao.FL_AVISDEBIAUTOINSTCOBR,                                           '+
                                  '       Cobranca_instrucao.GN_OBSEINSTCOBR,                                                   '+
                                  '       Cobranca_instrucao.FX_INSTCOBR                                                        '+
                                  '  FROM COBRANCA_INSTRUCAO Cobranca_instrucao                                                 '+
                                  ' WHERE (Cobranca_instrucao.ID_INSTCOBR = ' + QImpDocPed.FieldByName('ID_INSTCOBR').AsString + ')';
      qryTempInstCobr.Open;

      if QryTemp.FieldByName('VLFINAN').AsFloat <> QryTemp.FieldByName('VL_PARC').ASFLOAT  then
      begin
        if ( BASE_DACAR = 'S' ) then  // Dacar
        begin
          vPercMoraDia := ( QImpDocPed.FieldByName('PC_JURODIARIO').AsFloat / 100);
        end
        else
        begin
          if (Trim(qryBoleto.FieldByName('NR_BANCO').AsString) = '023-7') or (qryBoleto.FieldByName('ID_CONTA').Value = 100) then
            vPercMoraDia:= 0.003
          else if (qryBoleto.FieldByName('ID_CONTA').Value = 101) or (qryBoleto.FieldByName('ID_CONTA').Value = 151) then
            vPercMoraDia:= 0.0033
          else if (qryBoleto.FieldByName('ID_CONTA').Value = 143) or (qryBoleto.FieldByName('ID_CONTA').Value = 149) or (qryBoleto.FieldByName('ID_CONTA').Value = 162) or (qryBoleto.FieldByName('ID_CONTA').Value = 167) then
            vPercMoraDia:= 0.005
          else
            vPercMoraDia:= 0.004;
        end;

        OSQL.SQL.Clear;
        OSQL.SQL.Text :=  ' update boleto      '+
                          '    set vl_boleto = '+  ReplaceStr(floattostr(QryTemp.FieldByName('VLFINAN').ASFLOAT),',','.') + ' , ' +
                          '        vl_moradiabole = '+  ReplaceStr(floattostr(QryTemp.FieldByName('VLFINAN').ASFLOAT*vPercMoraDia),',','.') +
                          '  where (id_pedivend = '+ IntToStr(QImpDocPed['ID_PEDIVEND']) + ')                  ';
        OSQL.Execute;

        qryBoleto.Close;
        qryBoleto.ParamByName('pi_pedivend').AsInteger := QImpDocPed['ID_PEDIVEND'];
        qryBoleto.Open;
      end;

      VerificaValorBoleto ( QImpDocPedID_PEDIVEND.AsInteger );

      // Posicionamos no primeiro registro da query de boleto
      qryBoleto.First;

      // Iniciamos a impressão
      While not qryBoleto.Eof do
      begin
        ls_NumeAgen := SoNumeros( Trim(qryBoleto.FieldByName('AGEN_SDIG').AsString)); //Sem Digito
        ls_NumeCont := SoNumeros(  Trim(qryBoleto.FieldByName('NR_CONTA').AsString));   //Sem Digito

        // Itau
        if (  Copy(Trim(qryBoleto.FieldByName('NR_BANCO').AsString), 1, 3) = '341' ) then
          ls_CampLivr := '109' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 9)+ ls_NumeAgen + ls_NumeCont + '000'
        else
        if (  Copy(Trim(qryBoleto.FieldByName('NR_BANCO').AsString), 1, 3) = '237' ) then
              ls_CampLivr := StrZerodec( StrToFloat(ls_NumeAgen) ,4,0 )+
                             StrZerodec( StrToFloat(Trim(qryBoleto.FieldByName('BOL_CARTEIRA').AsString)),2,0)+
                             StrZerodec(StrToFloat(Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11)),11,0) +
                             StrZerodec(StrToInt(Copy(ls_NumeCont, 1 , length(ls_NumeCont)-1 )),7,0)  + '0'
        else
          ls_CampLivr := ls_NumeAgen +
                         Trim(qryBoleto.FieldByName('BOL_CARTEIRA').AsString) +
                         Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                         ls_NumeCont + '0';

        // Código do banco sem o dígito verificador
        ls_NumeBanc := Copy(Trim(qryBoleto.FieldByName('NR_BANCO').AsString), 1, 3);

         // Formato de vencimento (dias entre o vencimento e a data atual)
        ls_FormVenc := StrZeroDec(DaysBetween(StrToDate('07/10/1997'),
                                           qryBoleto.FieldByName('DT_VENCBOLE').AsDateTime), 4, 0);

        // Valor do boleto sem o ponto
        ls_ValoBole := StrZeroDec(((qryBoleto.FieldByName('VL_BOLETO').AsFloat)*100), 10, 0);

        //FAZER O TESTE MUDANDO PRA MODULO11_7
        ls_Dac := Modulo11(ls_NumeBanc+'9'+ls_FormVenc+ls_ValoBole+ls_CampLivr);


        If ls_Dac = '0' then
           ls_Dac:= '1';

        // Verificamos quantas parcelas tem o pedido
        qryTemp.Close;
        QryTemp.SQL.Clear;
        qryTemp.SQL.Text :=
        'SELECT COUNT(*) QN_QTDEPARC FROM BOLETO'       +
        ' WHERE (ID_PEDIVEND = ''' + qryBoleto.FieldByName('ID_PEDIVEND').AsString + ''')';
        qryTemp.Open;
        li_QtdeParc := qryTemp.FieldByName('QN_QTDEPARC').AsInteger;
        qryTemp.Close;

        // Código de barras
        frmQRBoleto.cdbFebraban.Caption:= ls_NumeBanc + '9' + ls_Dac + ls_FormVenc + ls_ValoBole +
                                          ls_CampLivr;

        // Linha Digitável
        ls_LinhDig1 := ls_NumeBanc + '9' + Copy(ls_CampLivr, 1, 5);
        ls_DV1 := Modulo10(ls_LinhDig1);
        ls_LinhDig1 := ls_LinhDig1 + ls_DV1;
        ls_LinhDig1 := Copy(ls_LinhDig1, 1, 5) + '.' + Copy(ls_LinhDig1, 6, 5);

        ls_LinhDig2 := Copy(ls_CampLivr, 6, 10);
        ls_DV2 := Modulo10(ls_LinhDig2);
        ls_LinhDig2 := ls_LinhDig2 + ls_DV2;
        ls_LinhDig2 := Copy(ls_LinhDig2, 1, 5) + '.' + Copy(ls_LinhDig2, 6, 6);

        ls_LinhDig3 := Copy(ls_CampLivr, 16, 10);
        ls_DV3 := Modulo10(ls_LinhDig3);
        ls_LinhDig3 := ls_LinhDig3 + ls_DV3;
        ls_LinhDig3 := Copy(ls_LinhDig3, 1, 5) + '.' + Copy(ls_LinhDig3, 6, 6);

        frmQRBoleto.RLLabel1.Caption   := 'Beneficiário'; //Cedente / Sacador
        frmQRBoleto.RLLabel30.Caption  := 'Beneficiário';
        frmQRBoleto.RLLabel55.Caption  := 'Beneficiário';

        frmQRBoleto.RLLabel22.Caption  := 'Pagador';
        frmQRBoleto.RLLabel52.Caption  := 'Pagador';
        frmQRBoleto.RLLabel72.Caption  := 'Pagador';

        frmQRBoleto.RLLabel2.Caption  := 'Agência/Código do Benificiário';
        frmQRBoleto.RLLabel38.Caption := 'Agência/Código do Benificiário';
        frmQRBoleto.RLLabel59.Caption := 'Agência/Código do Benificiário';

        frmQRBoleto.lblCampDigi1.Caption := ls_LinhDig1;
        frmQRBoleto.lblCampDigi2.Caption := ls_LinhDig2;
        frmQRBoleto.lblCampDigi3.Caption := ls_LinhDig3;
        frmQRBoleto.lblCampDigi4.Caption := ls_Dac;
        frmQRBoleto.lblCampDigi5.Caption := ls_FormVenc + ls_ValoBole;
        vNomeSacador:= dadosCadastraisFilial.NomeFilial + ' / CNPJ:'+dadosCadastraisFilial.Cnpj;

        if ( qryBoleto.FieldByName('Flag_Cedente').Value = 'S' ) then
        begin
          vCedente := qryBoleto.FieldByName('Cedente').Value +' / CNPJ:'+ qryBoleto.FieldByName('NR_CNPJAGENBANC').AsString ;
          frmQRBoleto.lblCedente1.Left := 155;
          frmQRBoleto.lblCedente1.Caption := vCedente ;
          frmQRBoleto.lbl_EndCedente1.Caption := qryBoleto.FieldByName('END_AGEN').AsString;

          frmQRBoleto.lblCedente2.Left := 155;
          frmQRBoleto.lblCedente2.Caption := vCedente;
          frmQRBoleto.lbl_EndCedente2.Caption := qryBoleto.FieldByName('END_AGEN').AsString;

          frmQRBoleto.lblCedente3.Caption := vCedente;
          frmQRBoleto.lbl_EndCedente3.Caption := qryBoleto.FieldByName('END_AGEN').AsString;
        end
        else
          vCedente := vNomeSacador;

        frmQRBoleto.LBLSACADOR.Caption  := vNomeSacador;
        frmQRBoleto.LBLSACADOR1.Caption  := vNomeSacador;

        // Se existe NF
        If qryBoleto.FieldByName('ID_NOTAFISC').AsInteger > 0 then
        Begin
          // Se houver só uma parcela
          If ( li_QtdeParc = 1 ) AND ( qryBoleto.FieldByName('ID_CONTA').Value <> 13 ) then
            ls_NumeDocu := qryBoleto.FieldByName('NR_NOTAFISC').AsString
          Else
            ls_NumeDocu := qryBoleto.FieldByName('NR_NOTAFISC').AsString +  '/' +
                           qryBoleto.FieldByName('NR_PARCBOLE').AsString;

          // Número do documento
          frmQRBoleto.lblNumeDocu1.Caption := ls_NumeDocu;
          frmQRBoleto.lblNumeDocu2.Caption := ls_NumeDocu;
          frmQRBoleto.lblNumeDocu3.Caption := ls_NumeDocu;

          // Espécie do documento
          frmQRBoleto.lblEspeDocu1.Caption := 'DM';
          frmQRBoleto.lblEspeDocu2.Caption := 'DM';
          frmQRBoleto.lblEspeDocu3.Caption := 'DM';

        End
        // Se não existir NF
        Else
        Begin
          // Se houver só uma parcela
          if ( li_QtdeParc = 1 ) AND ( qryBoleto.FieldByName('ID_CONTA').Value <> 13 ) then
            ls_NumeDocu := qryBoleto.FieldByName('ID_PEDIVEND').AsString
          else
            ls_NumeDocu := qryBoleto.FieldByName('ID_PEDIVEND').AsString +  '/' +
                           qryBoleto.FieldByName('NR_PARCBOLE').AsString;

          // Número do documento
          frmQRBoleto.lblNumeDocu1.Caption := ls_NumeDocu;
          frmQRBoleto.lblNumeDocu2.Caption := ls_NumeDocu;
          frmQRBoleto.lblNumeDocu3.Caption := ls_NumeDocu;

          // Espécie do documento
          frmQRBoleto.lblEspeDocu1.Caption := '';
          frmQRBoleto.lblEspeDocu2.Caption := '';
          frmQRBoleto.lblEspeDocu3.Caption := '';

        End;
        // Iniciamos o caption do Uso do Banco
        frmQRBoleto.lblUsoBanco.Caption := qryBoleto.FieldByName('USO_BANCO').AsString;

        // Iniciamos o caption da Carteira
        frmQRBoleto.lblCart1.Caption := qryBoleto.FieldByName('BOL_CARTEIRA').AsString;
        frmQRBoleto.lblCart2.Caption := qryBoleto.FieldByName('BOL_CARTEIRA').AsString;
        frmQRBoleto.lblCart3.Caption := qryBoleto.FieldByName('BOL_CARTEIRA').AsString;

        // Iniciamos o caption da Data de Processamento
        frmQRBoleto.lblDataProc1.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
        frmQRBoleto.lblDataProc2.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
        frmQRBoleto.lblDataProc3.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);

        vNomeBanco := qryBoleto.FieldByName('BOL_NMBANCO').AsString;
        frmQRBoleto.lblNomeBanc1.Caption := vNomeBanco;
        frmQRBoleto.lblNomeBanc2.Caption := vNomeBanco;
        frmQRBoleto.lblNomeBanc3.Caption := vNomeBanco;

        vNumeBanco :=  qryBoleto.FieldByName('BOL_NUMBANCO').AsString;
        frmQRBoleto.lblNumeBanc1.Caption := vNumeBanco;
        frmQRBoleto.lblNumeBanc2.Caption := vNumeBanco;
        frmQRBoleto.lblNumeBanc3.Caption := vNumeBanco;

        vLogo := qryBoleto.FieldByName('BOL_LOGO').AsString;

        if ( vLogo <> '' ) then
        begin
          vLogo := 'C:\Smart\Imagens\'+vLogo;
          frmQRBoleto.imgLogoBanc1.Visible := true;
          frmQRBoleto.imgLogoBanc2.Visible := true;
          frmQRBoleto.imgLogoBanc3.Visible := true;

          frmQRBoleto.imgLogoBanc1.Picture.LoadFromFile(vLogo);
          frmQRBoleto.imgLogoBanc2.Picture.LoadFromFile(vLogo);
          frmQRBoleto.imgLogoBanc3.Picture.LoadFromFile(vLogo);
        end
        else
        begin
          frmQRBoleto.imgLogoBanc1.Visible := false;
          frmQRBoleto.imgLogoBanc2.Visible := false;
          frmQRBoleto.imgLogoBanc3.Visible := false;
        end;

        // Carteira
        VCarteira := qryBoleto.FieldByName('BOL_CARTEIRA').AsString;
        frmQRBoleto.lblCart1.Caption := VCarteira;
        frmQRBoleto.lblCart2.Caption := VCarteira;
        frmQRBoleto.lblCart3.Caption := VCarteira;

        // Emissão
        frmQRBoleto.lblDataProc1.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
        frmQRBoleto.lblDataProc2.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
        frmQRBoleto.lblDataProc3.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);


        frmQRBoleto.lblLocaPaga.caption  := qryBoleto.FieldByName('BOL_LOCPAGA').AsString  ;
        frmQRBoleto.lblLocaPaga2.caption := qryBoleto.FieldByName('BOL_LOCPAGA2').AsString ;


        if qryBoleto.FieldByName('ID_CONTA').AsInteger in [67,76] then
        begin
          frmQRBoleto.lblAgencia1.Caption :=  Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString) + ' / ' +
                                             qryBoleto.FieldByName('NR_CONTA').AsString;
          frmQRBoleto.lblAgencia2.Caption :=  Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString) + ' / ' +
                                             qryBoleto.FieldByName('NR_CONTA').AsString;
          frmQRBoleto.lblAgencia3.Caption :=  Trim(qryBoleto.FieldByName('NR_AGENBANC').AsString) + ' / ' +
                                             qryBoleto.FieldByName('NR_CONTA').AsString;
        end
        else
        begin
          frmQRBoleto.lblAgencia1.Caption :=  Trim(qryBoleto.FieldByName('AGEN_SDIG').AsString) + ' / ' +
                                             qryBoleto.FieldByName('NR_CONTA').AsString;
          frmQRBoleto.lblAgencia2.Caption :=  Trim(qryBoleto.FieldByName('AGEN_SDIG').AsString) + ' / ' +
                                             qryBoleto.FieldByName('NR_CONTA').AsString;
          frmQRBoleto.lblAgencia3.Caption :=  Trim(qryBoleto.FieldByName('AGEN_SDIG').AsString) + ' / ' +
                                             qryBoleto.FieldByName('NR_CONTA').AsString;
        end;


        //Nosso Número
        if (  Copy(Trim(qryBoleto.FieldByName('NR_BANCO').AsString), 1, 3) = '341' ) then
        begin
          VNossoNumero := qryBoleto.FieldByName('BOL_CARTEIRA').AsString +'/'+
                          Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 8) +
                          '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 9, 1);
        end
        else
        begin
          VNossoNumero := qryBoleto.FieldByName('BOL_CARTEIRA').AsString +'/'+
                          Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 1, 11) +
                          '-' + Copy(Trim(qryBoleto.FieldByName('NR_BOLETO').AsString), 12, 1);
        end;
        frmQRBoleto.lblNumeBole1.Caption := VNossoNumero;
        frmQRBoleto.lblNumeBole2.Caption := VNossoNumero;
        frmQRBoleto.lblNumeBole3.Caption := VNossoNumero;

        // Vencimento
        frmQRBoleto.lblDataVenc1.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_VENCBOLE').AsDateTime);
        frmQRBoleto.lblDataVenc2.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_VENCBOLE').AsDateTime);
        frmQRBoleto.lblDataVenc3.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_VENCBOLE').AsDateTime);


        //Verificar se tem Desconto
        If qryBoleto.FieldByName('VL_DESCPEDIVEND_NOTAFISC').AsFloat>0 then
        begin
          // Valor do boleto + Desconto
          frmQRBoleto.lblValoDocu1.Caption := Format('%m', [(qryBoleto.FieldByName('VL_BOLETO').AsCurrency+qryBoleto.FieldByName('VL_DESCPEDIVEND_NOTAFISC').AsCurrency)]);
          frmQRBoleto.lblValoDocu2.Caption := Format('%m', [(qryBoleto.FieldByName('VL_BOLETO').AsCurrency+qryBoleto.FieldByName('VL_DESCPEDIVEND_NOTAFISC').AsCurrency)]);
          frmQRBoleto.lblValoDocu3.Caption := Format('%m', [(qryBoleto.FieldByName('VL_BOLETO').AsCurrency+qryBoleto.FieldByName('VL_DESCPEDIVEND_NOTAFISC').AsCurrency)]);

          frmQRBoleto.LblDesc1.Caption := Format('%m', [(qryBoleto.FieldByName('VL_DESCPEDIVEND_NOTAFISC').AsCurrency)]);
          frmQRBoleto.LblDesc2.Caption := Format('%m', [(qryBoleto.FieldByName('VL_DESCPEDIVEND_NOTAFISC').AsCurrency)]);
          frmQRBoleto.LblDesc3.Caption := Format('%m', [(qryBoleto.FieldByName('VL_DESCPEDIVEND_NOTAFISC').AsCurrency)]);

          frmQRBoleto.lblVlFim1.Caption := Format('%m', [qryBoleto.FieldByName('VL_BOLETO').AsCurrency]);
          frmQRBoleto.lblVlFim2.Caption := Format('%m', [qryBoleto.FieldByName('VL_BOLETO').AsCurrency]);
          frmQRBoleto.lblVlFim3.Caption := Format('%m', [qryBoleto.FieldByName('VL_BOLETO').AsCurrency]);

        end
        else
        begin
            // Valor do boleto
          frmQRBoleto.lblValoDocu1.Caption := Format('%m', [qryBoleto.FieldByName('VL_BOLETO').AsCurrency]);
          frmQRBoleto.lblValoDocu2.Caption := Format('%m', [qryBoleto.FieldByName('VL_BOLETO').AsCurrency]);
          frmQRBoleto.lblValoDocu3.Caption := Format('%m', [qryBoleto.FieldByName('VL_BOLETO').AsCurrency]);
        end;

        // Emissão
        frmQRBoleto.lblDataDocu1.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
        frmQRBoleto.lblDataDocu2.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);
        frmQRBoleto.lblDataDocu3.Caption := FormatDateTime('dd/mm/yyyy',qryBoleto.FieldByName('DT_EMISBOLE').AsDateTime);

        // Se houver multa
        if qryBoleto.FieldByName('VL_MULTBOLE').AsFloat > 0 then
        begin
          frmQRBoleto.lblMoraJuro1.Caption := Format('%m', [qryBoleto.FieldByName('VL_MULTBOLE').AsCurrency]);
          frmQRBoleto.lblMoraJuro2.Caption := Format('%m', [qryBoleto.FieldByName('VL_MULTBOLE').AsCurrency]);
          frmQRBoleto.lblMoraJuro3.Caption := Format('%m', [qryBoleto.FieldByName('VL_MULTBOLE').AsCurrency]);
        end
        else
        begin
          frmQRBoleto.lblMoraJuro1.Caption := '';
          frmQRBoleto.lblMoraJuro2.Caption := '';
          frmQRBoleto.lblMoraJuro3.Caption := '';
        end;

        // Aceite
        frmQRBoleto.lblAceite1.Caption := 'N';
        frmQRBoleto.lblAceite2.Caption := 'N';
        frmQRBoleto.lblAceite3.Caption := 'N';


        // Especie
        if qryBoleto.FieldByName('ID_CONTA').AsInteger IN [66,67,76] then
        begin
          frmQRBoleto.lblEspe1.Caption := 'R$';
          frmQRBoleto.lblEspe2.Caption := 'R$';
          frmQRBoleto.lblEspe3.Caption := 'R$';
        end;

          // Instrução 1 --  Se há instrução de protesto
        if ( qryBoleto.FieldByName('BOL_INSTR1').AsString <> '' ) then //Mensagem Personalizada por conta
        begin
          frmQRBoleto.lblLin1Inst1.Caption := qryBoleto.FieldByName('BOL_INSTR1').AsString;
          frmQRBoleto.lblLin1Inst2.Caption := qryBoleto.FieldByName('BOL_INSTR1').AsString;

          {FABRICIO - 22/12/2020 - MOTIVO: BANCO RED tem msg específica para Ficha de Compensação}
          if qryBoleto.FieldByName('ID_CONTA').Value = 66 then
            frmQRBoleto.lblLin1Inst3.Caption := 'Informamos que o título representado pelo presente boleto foi objeto de cessão entre'
          else
            frmQRBoleto.lblLin1Inst3.Caption := qryBoleto.FieldByName('BOL_INSTR1').AsString;

        end
        else
        if qryBoleto.FieldByName('QN_DIASPROTBOLE').AsInteger > 0 then
        begin
          frmQRBoleto.lblLin1Inst1.Caption := 'Título será protestado no ' +
                                              qryBoleto.FieldByName('QN_DIASPROTBOLE').AsString +
                                                'o. dia útil do vencimento';

          frmQRBoleto.lblLin1Inst2.Caption := 'Título será protestado no ' +
                                                qryBoleto.FieldByName('QN_DIASPROTBOLE').AsString +
                                                'o. dia útil do vencimento';

          frmQRBoleto.lblLin1Inst3.Caption := 'Título será protestado no ' +
                                                qryBoleto.FieldByName('QN_DIASPROTBOLE').AsString +
                                                'o. dia útil do vencimento';
        end
        else
        begin
          frmQRBoleto.lblLin1Inst1.Caption := '';
          frmQRBoleto.lblLin1Inst2.Caption := '';
          frmQRBoleto.lblLin1Inst3.Caption := '';
        end;

        // Instrução 2 --  Se há cobrança de juros diarios
        if ( qryBoleto.FieldByName('BOL_INSTR2').AsString <> '' ) then //Mensagem Personalizada por conta
        begin
          frmQRBoleto.lblLin2Inst1.Caption := qryBoleto.FieldByName('BOL_INSTR2').AsString;
          frmQRBoleto.lblLin2Inst2.Caption := qryBoleto.FieldByName('BOL_INSTR2').AsString;

          {FABRICIO - 22/12/2020 - MOTIVO: BANCO RED tem msg específica para Ficha de Compensação}
          if qryBoleto.FieldByName('ID_CONTA').Value = 66 then
            frmQRBoleto.lblLin2Inst3.Caption := 'AVÍCOLA DACAR LTDA e RED S.A. Assim, V.Sa. deverá efetuar o pagamento apenas'
          else
            frmQRBoleto.lblLin2Inst3.Caption := qryBoleto.FieldByName('BOL_INSTR2').AsString;

        end
        else
        If qryBoleto.FieldByName('VL_MORADIABOLE').AsFloat > 0 then
        begin
          frmQRBoleto.lblLin2Inst1.Caption := 'Não dispensar encargos de mora de ' +
                                             Format('%m', [qryBoleto.FieldByName('VL_MORADIABOLE').AsFloat]) +
                                             ' por dia de atraso';
          frmQRBoleto.lblLin2Inst2.Caption := 'Não dispensar encargos de mora de ' +
                                             Format('%m', [qryBoleto.FieldByName('VL_MORADIABOLE').AsFloat]) +
                                             ' por dia de atraso';
          frmQRBoleto.lblLin2Inst3.Caption := 'Não dispensar encargos de mora de ' +
                                             Format('%m', [qryBoleto.FieldByName('VL_MORADIABOLE').AsFloat]) +
                                             ' por dia de atraso';
        end
        else
        begin
          frmQRBoleto.lblLin2Inst1.Caption := '';
          frmQRBoleto.lblLin2Inst2.Caption := '';
          frmQRBoleto.lblLin2Inst3.Caption := '';
        end;

        // // Instrução 3
        if ( qryBoleto.FieldByName('BOL_INSTR3').AsString <> '' ) then //Mensagem Personalizada por conta
        begin
          frmQRBoleto.lblLin3Inst1.Caption := qryBoleto.FieldByName('BOL_INSTR3').AsString;
          frmQRBoleto.lblLin3Inst2.Caption := qryBoleto.FieldByName('BOL_INSTR3').AsString;

          {FABRICIO - 22/12/2020 - MOTIVO: BANCO RED tem msg específica para Ficha de Compensação}
          if qryBoleto.FieldByName('ID_CONTA').Value = 66 then
            frmQRBoleto.lblLin3Inst3.Caption := 'ao RED S.A, único com poder para outorgar quitação ao titulo - contato (11) 3038-5800.'
          else
            frmQRBoleto.lblLin3Inst3.Caption := qryBoleto.FieldByName('BOL_INSTR3').AsString;
        end
        else
        begin
          frmQRBoleto.lblLin3Inst1.Caption := '';
          frmQRBoleto.lblLin3Inst2.Caption := '';
          frmQRBoleto.lblLin3Inst3.Caption := '';
          frmQRBoleto.lblLin4Inst3.Caption := '';
        end;

        frmQRBoleto.lblSacado1.Caption := qryBoleto.FieldByName('NM_CLIENTE').AsString;
        frmQRBoleto.lblSacado2.Caption := qryBoleto.FieldByName('NM_CLIENTE').AsString;
        frmQRBoleto.lblSacado3.Caption := qryBoleto.FieldByName('NM_CLIENTE').AsString;

        // CNPJ/CPF
        If qryBoleto.FieldByName('NR_CNPJCLIE').AsString <> '' then
        begin
          frmQRBoleto.lblCNPJ1.Caption := 'CNPJ/CPF: ' + qryBoleto.FieldByName('NR_CNPJCLIE').AsString;
          frmQRBoleto.lblCNPJ2.Caption := 'CNPJ/CPF: ' + qryBoleto.FieldByName('NR_CNPJCLIE').AsString;
          frmQRBoleto.lblCNPJ3.Caption := 'CNPJ/CPF: ' + qryBoleto.FieldByName('NR_CNPJCLIE').AsString;
        end
        Else
        begin
          frmQRBoleto.lblCNPJ1.Caption := 'CNPJ/CPF: ' + qryBoleto.FieldByName('NR_CPFCLIE').AsString;
          frmQRBoleto.lblCNPJ2.Caption := 'CNPJ/CPF: ' + qryBoleto.FieldByName('NR_CPFCLIE').AsString;
          frmQRBoleto.lblCNPJ3.Caption := 'CNPJ/CPF: ' + qryBoleto.FieldByName('NR_CPFCLIE').AsString;
        end;
        // Pedido
        frmQRBoleto.lblNumePedi.Caption := qryBoleto.FieldByName('ID_PEDIVEND').AsString;

        // Placa
        frmQRBoleto.lblNumePlac.Caption := qryBoleto.FieldByName('GN_PLACVEICTRAN').AsString;

        // Dados do cliente
        frmQRBoleto.lblCliente.Caption := qryBoleto.FieldByName('ID_CLIENTE').AsString + ' - '+
                                          qryBoleto.FieldByName('NM_CLIENTE').AsString;
        frmQRBoleto.lblTeleClie.Caption := 'Fone.: ' + qryBoleto.FieldByName('NR_FONECLIE').AsString;

        // Dados do vendedor
        frmQRBoleto.lblVendedor.Caption := qryBoleto.FieldByName('ID_VENDEDOR').AsString + ' - '+
                                           qryBoleto.FieldByName('NM_VENDEDOR').AsString;
        frmQRBoleto.lblTeleVend.Caption := 'Fone.: ' + qryBoleto.FieldByName('NR_FONEVEND').AsString;

        // Numeração
        frmQRBoleto.lblNumeracao.Caption := qryBoleto.FieldByName('NR_PARCBOLE').AsString + '/' +
                                            IntToStr(li_QtdeParc);
        // Endereço
        frmQRBoleto.lblEndereco1.Caption := qryBoleto.FieldByName('SG_TIPOLOGR').AsString + ' '  +
                                            qryBoleto.FieldByName('NM_LOGRENDECLIE').AsString + ', ' +
                                            qryBoleto.FieldByName('NR_LOGRENDECLIE').AsString;
        frmQRBoleto.lblEndereco3.Caption := qryBoleto.FieldByName('SG_TIPOLOGR').AsString + ' '  +
                                            qryBoleto.FieldByName('NM_LOGRENDECLIE').AsString + ', ' +
                                            qryBoleto.FieldByName('NR_LOGRENDECLIE').AsString;
        // Bairro
        frmQRBoleto.lblBairro1.Caption := qryBoleto.FieldByName('NM_BAIRRO').AsString;
        frmQRBoleto.lblBairro3.Caption := qryBoleto.FieldByName('NM_BAIRRO').AsString;

        // CEP
        frmQRBoleto.lblCEP1.Caption := 'Cep:' + Copy(qryBoleto.FieldByName('NR_CEPENDECLIE').AsString, 1, 5) + '-' +
                                                Copy(qryBoleto.FieldByName('NR_CEPENDECLIE').AsString, 6, 3);
        frmQRBoleto.lblCEP3.Caption := 'Cep:' + Copy(qryBoleto.FieldByName('NR_CEPENDECLIE').AsString, 1, 5) + '-' +
                                                Copy(qryBoleto.FieldByName('NR_CEPENDECLIE').AsString, 6, 3);
        // Cidade
        frmQRBoleto.lblCidade1.Caption := qryBoleto.FieldByName('NM_CIDADE').AsString;
        frmQRBoleto.lblCidade3.Caption := qryBoleto.FieldByName('NM_CIDADE').AsString;

        // Estado
        frmQRBoleto.lblEstado1.Caption := qryBoleto.FieldByName('SG_ESTADO').AsString;
        frmQRBoleto.lblEstado3.Caption := qryBoleto.FieldByName('SG_ESTADO').AsString;

        // Inscrição Estadual/RG
        if qryBoleto.FieldByName('NR_INSCESTACLIE').AsString <> '' then
          frmQRBoleto.lblInscEsta1.Caption := 'INSC/RG: ' + qryBoleto.FieldByName('NR_INSCESTACLIE').AsString
        Else
          frmQRBoleto.lblInscEsta1.Caption := 'INSC/RG: ' + qryBoleto.FieldByName('NR_RGCLIE').AsString;

        if qryBoleto.FieldByName('NR_INSCESTACLIE').AsString <> '' then
          frmQRBoleto.lblInscEsta3.Caption := 'INSC/RG: ' + qryBoleto.FieldByName('NR_INSCESTACLIE').AsString
        Else
          frmQRBoleto.lblInscEsta3.Caption := 'INSC/RG: ' + qryBoleto.FieldByName('NR_RGCLIE').AsString;

        try
//          FrmQRBoleto.RLPrintDialogSetup1.Copies := 1;
          if (Vb_Imprime = True) then
            FrmQRBoleto.RLReport1.Print;
          if (Vb_Imprime = False) then
          begin
            FrmQRBoleto.RLReport1.Preview;
            Vb_Imprime := True;
          end;
        Finally
          FrmQRBoleto.RLReport1.Free;
        End;

        // Ajustamos o status do boleto
        qryTemp.Close;
        qryTemp.SQL.Clear;
        qryTemp.SQL.Text :=
        'UPDATE BOLETO                                                               '+
        '   SET FL_IMPRBOLE = ''S''                                                  '+
        ' WHERE (ID_BOLETO = ''' + qryBoleto.FieldByName('ID_BOLETO').AsString + ''')';
        qryTemp.ExecSQL;

        // Destruimos a query temporaria
        qryTemp.Close;


        Application.ProcessMessages;

        // Próximo boleto
        QryBoleto.Next;
        FrmQRBoleto := TfrmQRBoleto.Create(Self);
        if (Vb_Imprime = true) then
          FrmQRBoleto.RLReport1.PrintDialog := False;

      end; // loop boleto
    end; // Loop Pedido
  end; // Confirma impressão

end;

procedure TfrmImpDocPed.mnu_TodosClick(Sender: TObject);
var
  vlLinha: Integer;
begin

  with grdDados.DataSource.DataSet do
  begin
    DisableControls;
    First;
    for vlLinha := 0 to RecordCount - 1 do
    begin
      grdDados.SelectedRows.CurrentRowSelected := True;
      Next;
    end;
    EnableControls;
  end;
  grdDados.SelectedRows.Refresh;
  grdDados.DataSource.DataSet.First;

end;

function TPageControl.DoMouseWheel(Shift: TShiftState; WheelDelta: Integer; const MousePos: TPoint): Boolean;
begin
  Result := true;
end;

procedure TfrmImpDocPed.SpeedButton1Click(Sender: TObject);
Var ls_NumeBole :String;
    lr_ValoItem , lr_ValoItem2 ,lr_ValoItem3, VL_AUX ,  VL_UNIT , PESO : Real;
    //lr_ValoItem3 : Double;
begin
     lr_ValoItem  := 0;
     lr_ValoItem2 := 0;
     lr_ValoItem3 := 0;

     OraQuery1.Close;
     OraQuery1.ParamByName('ID_PEDIVEND').Value := QImpDocPedID_PEDIVEND.Value;
     OraQuery1.Open;

     OraQuery1.First;

     WHile  not ( OraQuery1.Eof ) do
     begin
      //  If  qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat > 0 then
       // qryPediVendItem.FieldByName('VL_UNITITEMPEDIVEND').AsFloat *  qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat

           lr_ValoItem := lr_ValoItem + ( OraQuery1.FieldByName('VL_UNITITEMPEDIVEND').AsFLOAT *  OraQuery1.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFLOAT );

           VL_UNIT := OraQuery1.FieldByName('VL_UNITITEMPEDIVEND').Value;
           PESO    := OraQuery1.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').Value;


           lr_ValoItem2 := lr_ValoItem2 + ArredondaDecimal( ( VL_UNIT * PESO ),2);

           VL_AUX :=  VL_UNIT * PESO ;

           lr_ValoItem3 := lr_ValoItem3 + RoundNExtend(VL_AUX,2);
           OraQuery1.Next;
     end;

          Showmessage(' Teste SEM          - ' + FloatToStr( lr_ValoItem) +
                      '       Arredonda    - '+ FloatToStr(lr_ValoItem2 ) +
                      '       RoundNExtend - '+ FloatToStr(lr_ValoItem3 )   );

       // Else
         //  lr_ValoItem := StrToFloat(FormatFloat('#.00', RoundNExtend((qryPediVendItem.FieldByName('VL_UNITITEMPEDIVEND').AsFloat * qryPediVendItem.FieldByName('QN_PESOITEMPEDIVEND').AsFloat),2)));



{      ls_NumeBole := NossoNumero('9',
                     '65560000031',
                     '237',
                     '',
                     '9' );
Showmessage(' Teste' + ls_NumeBole) }

   // VerificaValorBoleto ( QImpDocPedID_PEDIVEND.AsInteger );

end;

procedure TfrmImpDocPed.VerificaValorBoleto (ID_PEDIVEND:Integer);
begin
     Qry_BoletoConfere.Close;
     Qry_BoletoConfere.ParamByName('ID_PEDIVEND').Value := ID_PEDIVEND ;
     Qry_BoletoConfere.Open;

     // Diferença menor que  -0,05 e acima de -0,05   não será tratado como ajuste de arredondamento
     if ( (Abs (Qry_BoletoConfereDIF.Value ) > 0) AND (Abs (Qry_BoletoConfereDIF.Value ) <= 0.05)  ) then
     begin
          Qry_BoletoAjuste.ParamByName('ID_PEDIVEND').Value := ID_PEDIVEND;
          Qry_BoletoAjuste.ParamByName('DIF').Value         := Qry_BoletoConfereDIF.Value;
          //ShowMessage('Valor Ajuste : '+ Qry_BoletoConfereDIF.AsString);
          Qry_BoletoAjuste.ExecSQL;
     end;
end;

procedure TfrmImpDocPed.SpeedButton2Click(Sender: TObject);
var Data , Dt_Venc : TDateTime;
begin
     Dt_Venc := StrTODate('25/12/2017') ;

     Data := FrmPrincipal.DiaUtil( Dt_Venc );
     ShowMessage(' Dia Util :  ' + DateTostr(Data) );

     Data := FrmPrincipal.DiaUtil( Dt_Venc + 1 );
     ShowMessage(' Dia Util :  ' + DateTostr(Data) );

     Data := FrmPrincipal.DiaUtil( Dt_Venc + 2 );
     ShowMessage(' Dia Util :  ' + DateTostr(Data) );
end;

procedure TfrmImpDocPed.GerarValeCaixa ( ID_PEDIVEND:Integer  );
begin
  try
    Sql_ValeCaixa.ParamByName('ID_PEDIVEND').Value := ID_PEDIVEND;
    Sql_ValeCaixa.ParamByName('ID_USUARIO').Value  := gi_IdenUsua;
    Sql_ValeCaixa.Execute;
  except
    on E: Exception do
    begin
         MessageDlg('Erro ao gerar o Vale Caixa para o pedido '+ intTostr(ID_PEDIVEND) + '. Erro : '+ E.Message , mtError, [mbOk], 0);
    end;
  end;

  try
    SQL_AtualizaValeAnt.ParamByName('ID_CLIENTE').Value := QImpDocPedID_CLIENTE.AsInteger;
    SQL_AtualizaValeAnt.Execute;
  except
    on E: Exception do
    begin
         MessageDlg('Erro ao atualizar vale anterior  para o pedido '+ intTostr(ID_PEDIVEND) + '. Erro : '+ E.Message , mtError, [mbOk], 0);
    end;
  end;


end;

procedure TfrmImpDocPed.GerarValeCaixa1Click(Sender: TObject);
var   lb_RegiAtua    : TBookMark;
      li_Loop        : integer;
begin
      if grdDados.SelectedRows.Count = 0 then
      begin
        // Mensagem
        MessageDlg('Nenhum pedido foi selecionado para geração do vale.' + #13 +
                   'Por favor, verifique !', mtInformation, [mbOK], 0);
        Exit;
      end;
    // Marcamos o registro atual
    lb_RegiAtua := QImpDocPed.GetBookmark;

    for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
    begin
         // Posicionamos no registro a ser gerado os documentos
         grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);
         if( QImpDocPedID_VALE.AsInteger = 0 ) then
            GerarValeCaixa ( QImpDocPedID_PEDIVEND.AsInteger );

    end;
    // Voltamos para o registro que estava selecionado
    // antes da geração dos boletos

    QImpDocPed.Refresh;

    QImpDocPed.GotoBookmark(lb_RegiAtua);


end;

procedure TfrmImpDocPed.ImprimeValeCaixa1Click(Sender: TObject);
var li_Loop : integer;
begin
  if grdDados.SelectedRows.Count = 0 then
  begin
      MessageDlg('Nenhum pedido foi selecionado para impressão do vale.' + #13 +
                 'Por favor, verifique !', mtInformation, [mbOK], 0);
      Exit;
  end;
  // Confirmação de impressão
  if MessageDlg ('Confirma Impressão do vale do(s)' + #13 + '    Pedido(s) Selecionado(s) ?', mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
  begin
    For li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
    begin
      // Posicionamos no registro a ser impresso
      grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);
      if ( QImpDocPedID_VALE.Value =  0 ) then
      begin
        Continue;
      end;

       try
         FrmRelValeCaixa := TFrmRelValeCaixa.Create(Self);
         FrmRelValeCaixa.Qr_Vale.Close;
         FrmRelValeCaixa.Qr_Vale.ParamByName('ID_VALE').Value := QImpDocPedID_VALE.Value;
         FrmRelValeCaixa.Qr_Vale.Open;
         FrmRelValeCaixa.lbl_Unidade.Caption  := dadosCadastraisFilial.NomeFilial;
         FrmRelValeCaixa.lbl_Unidade1.Caption := dadosCadastraisFilial.NomeFilial;

         FrmRelValeCaixa.lbl_Rua.caption      := dadosCadastraisFilial.Endereco +', '+ dadosCadastraisFilial.Numero ;
         FrmRelValeCaixa.lbl_Rua1.caption     := dadosCadastraisFilial.Endereco +', '+ dadosCadastraisFilial.Numero ;

         FrmRelValeCaixa.lbl_Bairro.caption   := dadosCadastraisFilial.Bairro +', '+ dadosCadastraisFilial.Cidade +' - '+ dadosCadastraisFilial.UF ;
         FrmRelValeCaixa.lbl_Bairro1.caption  := dadosCadastraisFilial.Bairro +', '+ dadosCadastraisFilial.Cidade +' - '+ dadosCadastraisFilial.UF ;

         FrmRelValeCaixa.Lbl_Fone.caption     := dadosCadastraisFilial.Fone;
         FrmRelValeCaixa.Lbl_Fone1.caption    := dadosCadastraisFilial.Fone;

        {NOME: FABRICIO DATA:23/01/2018 MOTIVO: NÃO HÁ FAX
         FrmRelValeCaixa.Lbl_FAX.caption     := 'Fax : (15) 3282-2642';
         FrmRelValeCaixa.Lbl_FAX1.caption     := 'Fax : (15) 3282-2642';}

         {NOME: FABRICIO DATA:23/01/2018 MOTIVO: NO CADASTRO NAO PERMITE COM MÁSCARA DE FORMATAÇÃO}
         FrmRelValeCaixa.Lbl_CEP.caption      := 'CEP : 18.530-000'; //+dadosCadastraisFilial.Cep;
         FrmRelValeCaixa.Lbl_CEP1.caption     := 'CEP : 18.530-000'; //+dadosCadastraisFilial.Cep;

         FrmRelValeCaixa.Lbl_CNPJ.caption     := 'CNPJ : '+dadosCadastraisFilial.Cnpj;
         FrmRelValeCaixa.Lbl_CNPJ1.caption    := 'CNPJ : '+dadosCadastraisFilial.Cnpj;

         FrmRelValeCaixa.lbl_IE.caption       := 'IE : '+dadosCadastraisFilial.InscricaoEstadual;
         FrmRelValeCaixa.lbl_IE1.caption      := 'IE : '+dadosCadastraisFilial.InscricaoEstadual;

         FrmRelValeCaixa.RLReport1.PrintDialog := False;
         FrmRelValeCaixa.RLReport1.Print;
       Finally
         FrmRelValeCaixa.RLReport1.Free;
       End;

       SQL_ImpVale.ParamByName('ID_VALE').Value := QImpDocPedID_VALE.Value;
       SQL_ImpVale.Execute;

    end;

  end;


end;

{NOME: FABRICIO DATA:06/02/2018 MOTIVO: EMISSÃO DE CANHOTOS POR CARGA}
procedure TfrmImpDocPed.mnuCanhotosClick(Sender: TObject);
var
  pRegAtual : TBookmark;
  iLoop     : Integer;
begin
  if grdDados.SelectedRows.Count = 0 then
  begin
    MessageDlg('Nenhum pedido foi selecionado para impressão do Canhoto.' + #13 + 'Por favor, verifique !', mtInformation, [mbOK], 0);
    Abort;
  end;

  // NF-e Cancelada
  if QImpDocPedFL_CANCNOTAFISC.Value = 'S' then
  begin
    MessageDlg('Não é possível gerar Canhoto para Nota Fiscal Cancelada.', mtInformation, [mbOK], 0);
    Abort;
  end;

  // se nao gerou Nota
  if QImpDocPedNR_NOTAFISC.IsNull then
  begin
    MessageDlg('Não é possível gerar Canhoto para Pedido de Venda que não gerou Nota Fiscal.', mtInformation, [mbOK], 0);
    Abort;
  end;

  // NF-e Inutilizada
  if QImpDocPedINUTILIZADA.Value = 'S' then
  begin
    MessageDlg('Não é possível gerar Canhoto para Nota Fiscal Inutilizada.', mtInformation, [mbOK], 0);
    Abort;
  end;

  // NF-e não Transmitida
  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Text := 'SELECT * FROM NOTA_FISCAL_XML WHERE ID_NOTAFISC = ' + QImpDocPedID_NOTAFISC.AsString;
  QryTemp.Open;

  if QryTemp.RecordCount = 0  then
  begin
    MessageDlg('Não é possível gerar Canhoto para Nota Fiscal não Transmitida.', mtInformation, [mbOK], 0);
    Abort;
  end;

  // Posicionamos no registro a ser impresso
  pRegAtual := QImpDocPed.GetBookmark;

  // Confirmação de impressão
  if MessageDlg ('Confirma Impressão do Canhoto?', mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
  begin
    try
      frmCanhotosNfe:= TfrmCanhotosNfe.Create(Self);
      frmCanhotosNfe.qryCanhotosNfe.Close;
      frmCanhotosNfe.qryCanhotosNfe.ParamByName('ID_CARGEXPE').Value := QImpDocPedID_CARGEXPE.Value;
      frmCanhotosNfe.qryCanhotosNfe.Open;

      frmCanhotosNfe.RLLabel5.Caption := 'RELAÇÃO DAS NOTAS FISCAIS REFERENTE A CARGA Nº ' + QImpDocPedID_CARGEXPE.AsString;
//      frmCanhotosNfe.RLPrintDialogSetup1.Copies := 1;
      frmCanhotosNfe.RLReport1.Preview;

    Finally
      frmCanhotosNfe.RLReport1.Free;
    End;
  end;

  QImpDocPed.Refresh;
  QImpDocPed.GotoBookmark(pRegAtual);

end;

procedure TfrmImpDocPed.LanctoPesoBalanoCarga1Click(Sender: TObject);
begin
  if grdDados.SelectedRows.Count = 0 then
  begin
    Application.MessageBox('Nenhuma carga foi selecionada.                                                     ', 'Comercial Dacar - Lançamento de Peso do Balanção/ Carga',MB_OK + MB_ICONINFORMATION);
    Abort;
  end;

  // NF-e Cancelada
  if QImpDocPedFL_CANCNOTAFISC.Value = 'S' then
  begin
    Application.MessageBox('Nota Fiscal ou Carga Cancelada.                                                    ', 'Comercial Dacar - Lançamento de Peso do Balanção/ Carga',MB_OK + MB_ICONINFORMATION);
    Abort;
  end;

  // se nao gerou Nota
  if QImpDocPedNR_NOTAFISC.IsNull then
  begin
    Application.MessageBox('Não é possível lançar Peso Balanção para Pedido de Venda que não gerou Nota Fiscal.', 'Comercial Dacar - Lançamento de Peso do Balanção/ Carga',MB_OK + MB_ICONINFORMATION);
    Abort;
  end;

  // NF-e Inutilizada
  if QImpDocPedINUTILIZADA.Value = 'S' then
  begin
    Application.MessageBox('Não é possível lançar Peso Balanção para Nota Fiscal Inutilizada.', 'Comercial Dacar - Lançamento de Peso do Balanção/ Carga',MB_OK + MB_ICONINFORMATION);
    Abort;
  end;

  Try
    frmLanctoPesoBalancaoCarga := TfrmLanctoPesoBalancaoCarga.Create(Self);
    frmLanctoPesoBalancaoCarga.ShowModal;
  except;
    frmLanctoPesoBalancaoCarga.Free;
  end;

end;

procedure TfrmImpDocPed.btnNFEClick(Sender: TObject);
var LstNF : TStringList ;
    I: Integer ;
begin
  grdDados.DataSource.DataSet.DisableControls;
  grdDados.DataSource.DataSet.First;

  if grdDados.SelectedRows.Count = 0 then
  begin
    Application.MessageBox('         Pelo menos um pedido deve ser selecionado.                                      ', PChar(frmImpDocPed.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  LstNF  := TStringList.Create;

  for i := 0 to grdDados.SelectedRows.Count - 1 do
  begin
      grdDados.DataSource.DataSet.First;
      grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[i]);
      if ( QImpDocPed.FieldByName('ID_NOTAFISC').Value > 0 ) and ( QImpDocPed.FieldByName('FL_CTE').AsString <> 'S' )  then
        LstNF.Add( QImpDocPed.FieldByName('ID_NOTAFISC').AsString);

    grdDados.DataSource.DataSet.Next;
  end;

  grdDados.DataSource.DataSet.First;

  if ( LstNF.Count = 0  ) then
  begin
    Application.MessageBox('         Pedidos Selecionado não possuem Numeração de Nota Fiscal.                                      ', PChar(frmImpDocPed.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  Try
    frmEmissorNFe := TfrmEmissorNFe.Create(Self);
    frmEmissorNFe.LNotas.AddStrings( LstNF) ;
    LstNF.Free;
    frmEmissorNFe.SerNF := QImpDocPedSG_SERINOTAFISC.Value;
    frmEmissorNFe.TIPOEMISSAO := 'NFE';
    frmEmissorNFe.ShowModal;
  except;
    frmEmissorNFe.Free;
  end;

  grdDados.DataSource.DataSet.EnableControls;
end;

procedure TfrmImpDocPed.PageControl1Change(Sender: TObject);
begin
  lblTotalNotas.Visible := TsLista.Showing;
end;

end.




