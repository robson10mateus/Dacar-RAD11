unit UfrmPedVenda;

interface

uses
  Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, DB, MemDS, DBAccess, Ora, Grids,
  DBGrids, ExtCtrls, Mask, DBCtrls, {QRpCon}, {QRpConDS}, {QRpDefine},


type
  TPageControl = class(ComCtrls.TPageControl)
  protected
    function DoMouseWheel(Shift: TShiftState; WheelDelta: Integer;
      const MousePos: TPoint): Boolean; override;
  end;
  
type
  TFrmPedVenda = class(TForm)
    ToolBar1: TToolBar;
    SB_PRIMEIRO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    Sb_Sair: TSpeedButton;
    PageControl1: TPageControl;
    TsLista: TTabSheet;
    TsDetalhe: TTabSheet;
    QPediVe: TOraQuery;
    DBGrid1: TDBGrid;
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
    DBCarga: TDBEdit;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit15: TDBEdit;
    DBPlaca: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    GroupBox2: TGroupBox;
    LBOrdemI: TListBox;
    BVOLTA: TBitBtn;
    BVAI: TBitBtn;
    LBOrdemR: TListBox;
    Panel1: TPanel;
    QItem: TOraQuery;
    DSItem: TOraDataSource;
    Panel4: TPanel;
    BPESQ: TBitBtn;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    Label23: TLabel;
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
    QPediVeID_USUASIST_DIGIPEDIVEND: TIntegerField;
    QPediVeEMPRESA: TStringField;
    QPediVeFILIAL: TIntegerField;
    QPediVeID_PEDIVEND: TFloatField;
    QPediVeID_CLIENTE: TFloatField;
    QPediVeID_VENDEDOR: TFloatField;
    QPediVeDT_PEDIVEND: TDateTimeField;
    QPediVeDT_ENTRPEDIVEND: TDateTimeField;
    QPediVeDT_DIGIPEDIVEND: TDateTimeField;
    QPediVeDT_FATUPEDIVEND: TDateTimeField;
    QPediVeID_TIPOPEDIVEND: TFloatField;
    QPediVeID_FORMPAGA: TFloatField;
    QPediVeID_SITUCOBR: TFloatField;
    QPediVeID_INSTCOBR: TFloatField;
    QPediVeID_ENDECLIE_COBRANCA: TFloatField;
    QPediVeID_ENDECLIE_ENTREGA: TFloatField;
    QPediVeIE_PEDIVEND: TStringField;
    QPediVePC_DESCPEDIVEND: TFloatField;
    QPediVePC_BONIPEDIVEND: TFloatField;
    QPediVePC_DESCPADRCLIE: TFloatField;
    QPediVePC_BONIPADRCLIE: TFloatField;
    QPediVeID_CARGEXPE: TFloatField;
    QPediVeID_CONTA: TFloatField;
    QPediVeID_TIPOCOBR: TFloatField;
    QPediVeID_LOTEEDIPEDIVEND: TFloatField;
    QPediVeID_USUASIST_AUTOPEDIVEND: TIntegerField;
    QPediVeID_TIPOLOGI: TFloatField;
    QPediVeSG_TIPOFRETPEDIVEND: TStringField;
    QPediVeVL_SEGUPEDIVEND: TFloatField;
    QPediVeVL_DESPPEDIVEND: TFloatField;
    QPediVeVL_FRETPEDIVEND: TFloatField;
    QPediVeVL_DESCPEDIVEND: TFloatField;
    QPediVeVL_PEDIVEND: TFloatField;
    QPediVeGN_ESPEPEDIVEND: TStringField;
    QPediVeGN_MARCPEDIVEND: TStringField;
    QPediVeQN_VOLUPEDIVEND: TIntegerField;
    QPediVeQN_EMBAPEDIVEND: TIntegerField;
    QPediVeQN_PESOPEDIVEND: TFloatField;
    QPediVeQN_TARAPEDIVEND: TFloatField;
    QPediVeQN_EMBAEXPEPEDIVEND: TIntegerField;
    QPediVeQN_PESOPADREXPEPEDIVEND: TFloatField;
    QPediVeQN_TARAREALEXPEPEDIVEND: TFloatField;
    QPediVeQN_PESOREALEXPEPEDIVEND: TFloatField;
    QPediVeQN_FATOFRETABAT_PEDIVEND: TFloatField;
    QPediVeFL_ESPEPEDIVEND: TStringField;
    QPediVeFL_STATPEDIVEND: TStringField;
    QPediVeNR_ORDEPEDIVEND: TFloatField;
    QPediVeGN_OBSEPADR_PEDIVEND: TStringField;
    QPediVeGN_OBSEEXPEPEDIVEND: TStringField;
    QPediVeGN_OBSEPEDIVEND: TStringField;
    QPediVeFX_PEDIVEND: TStringField;
    QPediVeNM_CLIENTE: TStringField;
    QPediVeNM_FANTCLIE: TStringField;
    QPediVeNR_CNPJCLIE: TStringField;
    QPediVeNM_TIPOVEND: TStringField;
    QPediVeVL_LIMICREDCLIE: TFloatField;
    QPediVeVL_CREDATUACLIE: TFloatField;
    QPediVeFL_TIPOBLOQCLIE: TStringField;
    QPediVeFL_BLOQADMICLIE: TStringField;
    QPediVeSG_TIPOLOGR: TStringField;
    QPediVeNM_LOGRENDECLIE: TStringField;
    QPediVeNR_LOGRENDECLIE: TStringField;
    QPediVeGN_COMPENDECLIE: TStringField;
    QPediVeNM_TIPOPEDIVEND: TStringField;
    QPediVeNM_VENDEDOR: TStringField;
    QPediVeNM_FORMPAGA: TStringField;
    QPediVeNM_SITUCOBR: TStringField;
    QPediVeNM_TIPOCOBR: TStringField;
    QPediVeNM_CONTA: TStringField;
    QPediVeNM_INSTCOBR: TStringField;
    QPediVeNM_TIPOLOGI: TStringField;
    QPediVeNM_REDUUSUASIST: TStringField;
    QPediVeQN_TITUVENCCLIE: TIntegerField;
    QPediVeVL_TITUVENCCLIE: TFloatField;
    QPediVeQN_PESOBRUTPEDIVEND: TFloatField;
    QPediVeFL_CREDUSADPEDIVEND: TStringField;
    QPediVeFL_EXPOFINAPEDIVEND: TStringField;
    QPediVeNR_PEDIVEND: TIntegerField;
    QPediVeVL_FATUPEDIVEND: TFloatField;
    QPediVeVL_QUEBPEDIVEND: TFloatField;
    QPediVeVL_OUTRAJUSPEDIVEND: TFloatField;
    QPediVeVL_DEVOPEDIVEND: TFloatField;
    QPediVeQN_PESOPADRDEVOPEDIVEND: TFloatField;
    QPediVeQN_PESOREALDEVOPEDIVEND: TFloatField;
    QPediVeQN_TARAREALDEVOPEDIVEND: TFloatField;
    QPediVeQN_EMBADEVOPEDIVEND: TIntegerField;
    QPediVeFL_CONFPEDIDEVOVEND_PEDIVEND: TStringField;
    TSItem: TTabSheet;
    DBGrid2: TDBGrid;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    QrEndCli: TOraQuery;
    cbxEndeEntr: TDBLookupComboBox;
    DSEndEntrega: TOraDataSource;
    Label25: TLabel;
    Label27: TLabel;
    DBEdit25: TDBEdit;
    Label29: TLabel;
    DBEdit26: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    QrEndCobra: TOraQuery;
    DSEndCobra: TOraDataSource;
    Label34: TLabel;
    Label35: TLabel;
    DBSitCob: TDBEdit;
    Label36: TLabel;
    QrTipoCobr: TOraQuery;
    DSTipoCobr: TOraDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    Label37: TLabel;
    cbxConta: TDBLookupComboBox;
    Label38: TLabel;
    QrConta: TOraQuery;
    DSConta: TOraDataSource;
    GroupBox3: TGroupBox;
    Label39: TLabel;
    QrTipoLogi: TOraQuery;
    DStipoLogi: TOraDataSource;
    DBLookupComboBox5: TDBLookupComboBox;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBPesoPed: TDBEdit;
    DBEmbalagem: TDBEdit;
    edtTotaEmba: TDBEdit;
    edtPesoBrutTota: TDBEdit;
    DBMemo1: TDBMemo;
    Label13: TLabel;
    DBMemo2: TDBMemo;
    Label14: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    BPesqVend: TBitBtn;
    BtpesqCli: TBitBtn;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    QrTipoPed: TOraQuery;
    QrFormaPG: TOraQuery;
    QrInstCob: TOraQuery;
    QrSituCob: TOraQuery;
    DSTipoPedi: TOraDataSource;
    DsformaPg: TOraDataSource;
    DsInstCob: TOraDataSource;
    DSSituCob: TOraDataSource;
    DBFormaPagto: TDBLookupComboBox;
    SBNovo: TSpeedButton;
    SBCancel: TSpeedButton;
    SBDel: TSpeedButton;
    SBSalva: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    DBPEDIVEND: TDBEdit;
    Label42: TLabel;
    DBEdit3: TDBEdit;
    Label43: TLabel;
    DBCLI: TDBEdit;
    Label44: TLabel;
    DBEdit17: TDBEdit;
    Label45: TLabel;
    DBEdit23: TDBEdit;
    Label46: TLabel;
    DBEdit29: TDBEdit;
    Label47: TLabel;
    QrPre: TOraQuery;
    DSPre: TOraDataSource;
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
    DBCodMatEmba: TDBEdit;
    Label48: TLabel;
    DBEdit31: TDBEdit;
    Label49: TLabel;
    Btmaterial: TBitBtn;
    DBEdit32: TDBEdit;
    Label50: TLabel;
    edtQtdeEmba: TDBEdit;
    Label51: TLabel;
    DBEdit34: TDBEdit;
    edtPesoPadr: TDBEdit;
    edtValoTota: TDBEdit;
    DBLookupComboBox10: TDBLookupComboBox;
    Label52: TLabel;
    QrTipoOper: TOraQuery;
    DSTipoOper: TOraDataSource;
    QrTipoOperID_TIPOOPER: TFloatField;
    QrTipoOperNM_DESCUSOTIPOOPER: TStringField;
    Panel5: TPanel;
    edtPrecUnit: TDBEdit;
    Label53: TLabel;
    edtPrecUnitBrut: TDBEdit;
    edtDesc: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    Label64: TLabel;
    Label67: TLabel;
    Panel6: TPanel;
    Label56: TLabel;
    DBEmbaCort: TDBEdit;
    QryTemp: TOraQuery;
    QrTitu: TOraQuery;
    SBDiversos: TSpeedButton;
    PM1: TPopupMenu;
    mniValidar: TMenuItem;
    N1: TMenuItem;
    mniUltiVend: TMenuItem;
    mniTituAtra: TMenuItem;
    QPediVeNM_BAIRRO: TStringField;
    QPediVeNM_CIDADE: TStringField;
    DBEdit21: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit30: TDBEdit;
    Label57: TLabel;
    QrDireitos: TOraQuery;
    Qrprec: TOraQuery;
    edtDataPedi: TDBEdit;
    edtDataEntr: TDBEdit;
    DBIE_EXTERNO: TDBEdit;
    edtCodiClie: TDBEdit;
    DBCForPg: TDBEdit;
    DBInstCob: TDBEdit;
    DBTipVen: TDBEdit;
    OSQL: TOraSQL;
    QryClie: TOraQuery;
    ActionList1: TActionList;
    Action1: TAction;
    DBCVen: TDBEdit;
    QItemQN_CAIXCORTITEMPEDIVEND: TFloatField;
    QItemQN_EMBAEXPEITEMPEDIVEND: TFloatField;
    QItemQN_PESOPADREXPEITEMPEDIVEND: TFloatField;
    QItemQN_TARAREALEXPEITEMPEDIVEND: TFloatField;
    QItemQN_PESOREALEXPEITEMPEDIVEND: TFloatField;
    QItemFX_ITEMPEDIVEND: TStringField;
    DBPCDESC: TDBEdit;
    QryTempC: TOraQuery;
    BPesqDtEntre: TBitBtn;
    BPesqDt: TBitBtn;
    DbCAuto: TDBLookupComboBox;
    Label58: TLabel;
    QrUsuSis: TOraQuery;
    DSUsuSis: TOraDataSource;
    QPediVeCPORCOMIS: TFloatField;
    QrCartorio: TOraQuery;
    QPediVeTitCartorio: TIntegerField;
    Timer1: TTimer;
    TtulosemCartrio1: TMenuItem;
    DBRTipoFrete: TDBRadioGroup;
    QPediVeSG_ESTADO: TStringField;
    DBUF: TDBEdit;
    Label5: TLabel;
    SB_COPIA: TSpeedButton;
    mniSaldoLan: TMenuItem;
    DBEdit2: TDBEdit;
    QItemSG_UNIDMEDI: TStringField;
    Label59: TLabel;
    Label4: TLabel;
    DBEdit10: TDBEdit;
    Label26: TLabel;
    DBEdit13: TDBEdit;
    Btplaca: TBitBtn;
    CBxCidPorto: TDBLookupComboBox;
    CBxPais: TDBLookupComboBox;
    Label28: TLabel;
    Label32: TLabel;
    QPediVeID_CIDADE_ENTREGA: TFloatField;
    QPediVeID_PAIS_ENTREGA: TFloatField;
    QPediVeID_FORNECEDOR: TFloatField;
    QPediVeGN_PLACVEICTRAN: TStringField;
    QPediVeNM_FORNECEDOR: TStringField;
    QryPais: TOraQuery;
    DSPais: TOraDataSource;
    QPediVeID_PRODMATEEMBA: TStringField;
    DBEdit14: TDBEdit;
    Label33: TLabel;
    SB_PNF: TSpeedButton;
    QrCarga: TOraQuery;
    QrCargaEMPRESA: TStringField;
    QrCargaFILIAL: TIntegerField;
    QrCargaID_CARGEXPE: TFloatField;
    QrCargaDT_CARGEXPE: TDateTimeField;
    QrCargaGN_PLACVEICTRAN: TStringField;
    QrCargaDT_MONTCARGEXPE: TDateTimeField;
    QrCargaFL_STATCARGEXPE: TStringField;
    QrCargaDT_FECHCARGEXPE: TDateTimeField;
    QrCargaID_USUASIST_MONTAGEM: TFloatField;
    QrCargaID_USUASIST_FECHAMENTO: TFloatField;
    QrCargaID_USUASIST_ABERTURA: TFloatField;
    QrCargaDT_ABERCARGEXPE: TDateTimeField;
    QrCargaID_CLASCARGEXPE: TFloatField;
    QrCargaID_ITEMPROGCAMI: TFloatField;
    QrCargaDT_LIMIPEDICARGEXPE: TDateTimeField;
    QrCargaFL_IMPRCARGEXPE: TStringField;
    QrCargaNM_FORNECEDOR: TStringField;
    QrCargaNM_CLASCARGEXPE: TStringField;
    QrCargaVL_UNITFRETCARGEXPE: TFloatField;
    QrCargaNR_ORDEENTRCARGEXPE: TFloatField;
    QrCargaVL_FRETCARGEXPE: TFloatField;
    QrCargaFX_CARGEXPE: TStringField;
    QrCargaNM_USUASIST_MONTAGEM: TStringField;
    QrCargaNM_USUASIST_ABERTURA: TStringField;
    QrCargaNM_USUASIST_FECHAMENT0: TStringField;
    QItemNM_REDUEMBA: TStringField;
    QItemQN_TARAEMBAPROD_BALANCAO: TFloatField;
    DBEdit38: TDBEdit;
    Label74: TLabel;
    edtIPI: TDBEdit;
    Label60: TLabel;
    QItemVL_UNITIPI: TFloatField;
    QItemFL_IPIBASEICMS: TStringField;
    Panel7: TPanel;
    CBIPICMS: TDBCheckBox;
    Label61: TLabel;
    CBxPedArm: TDBLookupComboBox;
    Label62: TLabel;
    QrPedArm: TOraQuery;
    QPediVeID_PEDREMESSA: TFloatField;
    DSPedArm: TOraDataSource;
    DBArmazena: TDBEdit;
    DBCodCidEntre: TDBEdit;
    Label63: TLabel;
    QPediVeFL_PNF: TStringField;
    SB_Editar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    QPediVeDESCR_EMBALAGEM: TStringField;
    E_site: TEdit;
    QPediVeNR_INSCESTACLIE: TStringField;
    DB_NR_INSCESTACLIE: TDBEdit;
    QPediVeDT_CONSULTA_IE: TDateTimeField;
    QPediVePR_CONSULTA_IE: TStringField;
    DBEdit1: TDBEdit;
    QPediVeID_IBGE: TIntegerField;
    DBEdit11: TDBEdit;
    QPediVeFL_CORTE: TStringField;
    QItemVL_ITEMTABEPREC: TFloatField;
    Label65: TLabel;
    edVencPrev: TEdit;
    SpeedButton2: TSpeedButton;
    Qry_DocRef: TOraQuery;
    Dsc_DocRef: TDataSource;
    Qry_DocRefID_PEDIVEND: TFloatField;
    Qry_DocRefID_NOTAFISC: TFloatField;
    Qry_DocRefTIPO: TStringField;
    Qry_DocRefB13_REFNFE: TStringField;
    Qry_DocRefB14_CUF: TStringField;
    Qry_DocRefB14_AAMM: TStringField;
    Qry_DocRefB14_CNPJ: TStringField;
    Qry_DocRefB14_MOD: TStringField;
    Qry_DocRefB14_SERIE: TStringField;
    Qry_DocRefB14_NNF: TStringField;
    Qry_DocRefB20A_CUF: TStringField;
    Qry_DocRefB20A_AAMM: TStringField;
    Qry_DocRefB20A_IE: TStringField;
    Qry_DocRefB20A_MOD: TStringField;
    Qry_DocRefB20A_SERIE: TStringField;
    Qry_DocRefB20A_NNF: TStringField;
    Qry_DocRefB20D_CNPJ: TStringField;
    Qry_DocRefB20E_CPF: TStringField;
    Qry_DocRefB20I_REFCTE: TStringField;
    Qry_DocRefB20J_MOD: TStringField;
    Qry_DocRefB20J_NECF: TStringField;
    Qry_DocRefB20J_COO: TStringField;
    Qry_DocRefID_NFREFERENCIADA: TFloatField;
    Qry_DocRefEMPRESA: TStringField;
    Qry_DocRefFILIAL: TIntegerField;
    TsDocRef: TTabSheet;
    Panel8: TPanel;
    Dbg_DocRef: TDBGrid;
    Qry_TipoCliente: TOraQuery;
    Qry_TipoClienteFL_PESSCLIE: TStringField;
    Qry_TipoCFOP: TOraQuery;
    Qry_TipoCFOPID_TIPOPEDIVEND: TFloatField;
    GroupBox4: TGroupBox;
    Rad_NFe: TRadioButton;
    Rad_NF: TRadioButton;
    Rad_NFP: TRadioButton;
    Rad_CTE: TRadioButton;
    Rad_Cupom: TRadioButton;
    Label66: TLabel;
    Qry_ChecaDocRef: TOraQuery;
    Qry_ChecaDocRefTIPO: TStringField;
    QItemVL_DIFERENCA: TFloatField;
    sbRemCorte: TSpeedButton;
    sbContas: TSpeedButton;
    DBPedCompra: TDBEdit;
    DBItemPedCompra: TDBEdit;
    lbPedCompra: TLabel;
    lbItemPedCompra: TLabel;
    QItemSG_ORDEMCOMPRA: TStringField;
    QItemQN_ITEMORDEMCOMPRA: TIntegerField;
    QryPesqTipoPedivend: TOraQuery;
    QryPesqTipoPedivendQTDE: TFloatField;
    btnTabPre: TSpeedButton;
    cbxTabPre: TDBLookupComboBox;
    QrTabPre: TOraQuery;
    DsTabPre: TDataSource;
    QrTabPreID_TABEPREC: TFloatField;
    QrTabPreNM_TABEPREC: TStringField;
    Qry_Varejo: TOraQuery;
    Qry_VarejoID_BASE: TIntegerField;
    Qry_VarejoDESCR: TStringField;
    Qry_VarejoFILIAL: TIntegerField;
    Qry_VarejoCOD_CLIVAREJO: TIntegerField;
    Qry_VarejoUSUARIO: TStringField;
    Qry_VarejoDATABASE_LINK: TStringField;
    QrCredVend: TOraQuery;
    QrCredVendDIFERENCA: TFloatField;
    lblAviso: TLabel;
    tmrAviso: TTimer;
    N2: TMenuItem;
    SaldoProdutosCorte1: TMenuItem;
    sbSaldo: TSpeedButton;
    QryConSaldo: TOraQuery;
    SBCupom: TSpeedButton;
    qry_TipoDocRef: TOraQuery;
    QPediVeDTHORA_CORTE: TDateTimeField;
    QExcPed: TOraQuery;
    QExcPedItem: TOraQuery;
    QExcPedEMPRESA: TStringField;
    QExcPedFILIAL: TIntegerField;
    QExcPedID_PEDIVEND: TFloatField;
    QExcPedID_CLIENTE: TFloatField;
    QExcPedID_VENDEDOR: TFloatField;
    QExcPedDT_PEDIVEND: TDateTimeField;
    QExcPedDT_ENTRPEDIVEND: TDateTimeField;
    QExcPedDT_DIGIPEDIVEND: TDateTimeField;
    QExcPedID_TIPOPEDIVEND: TFloatField;
    QExcPedID_FORMPAGA: TFloatField;
    QExcPedID_CONTA: TFloatField;
    QExcPedID_USUASIST_DIGIPEDIVEND: TIntegerField;
    QExcPedQN_EMBAPEDIVEND: TIntegerField;
    QExcPedQN_PESOPEDIVEND: TFloatField;
    QExcPedQN_TARAPEDIVEND: TFloatField;
    QExcPedFL_STATPEDIVEND: TStringField;
    QExcPedVL_PEDIVEND: TFloatField;
    QExcPedDT_EXCLUPEDIVEND: TDateTimeField;
    QExcPedItemEMPRESA: TStringField;
    QExcPedItemFILIAL: TIntegerField;
    QExcPedItemID_ITEMPEDIVEND: TFloatField;
    QExcPedItemID_PEDIVEND: TFloatField;
    QExcPedItemID_MATERIAL: TFloatField;
    QExcPedItemID_EMBALAGEM: TFloatField;
    QExcPedItemID_MATEEMBA: TFloatField;
    QExcPedItemID_TIPOOPER: TFloatField;
    QExcPedItemVL_UNITITEMPEDIVEND: TFloatField;
    QExcPedItemQN_EMBAITEMPEDIVEND: TFloatField;
    QExcPedItemQN_PESOITEMPEDIVEND: TFloatField;
    QExcPedItemQN_TARAITEMPEDIVEND: TFloatField;
    QExcPedItemVL_UNITBRUTITEMPEDIVEND: TFloatField;
    QryTom: TOraQuery;
    QryRem: TOraQuery;
    QryDest: TOraQuery;
    DtsTom: TDataSource;
    DtsRem: TDataSource;
    DtsDest: TDataSource;
    QryDestID_FORNECEDOR: TFloatField;
    QryDestNM_FORNECEDOR: TStringField;
    QryRemID_FORNECEDOR: TFloatField;
    QryRemNM_FORNECEDOR: TStringField;
    QryTomID_CLIENTE: TFloatField;
    QryTomNM_CLIENTE: TStringField;
    QPediVeID_TOMADOR: TFloatField;
    QPediVeID_EMITENTE: TFloatField;
    QPediVeID_REMETENTE: TFloatField;
    QPediVeID_DESTINATARIO: TFloatField;
    QPediVeNM_REMETENTE: TStringField;
    QPediVeNM_DESTINATARIO: TStringField;
    QPediVeNM_TOMADOR: TStringField;
    edtTomadorID: TDBEdit;
    Label68: TLabel;
    edtTomador: TDBEdit;
    Label71: TLabel;
    edtRemetenteID: TDBEdit;
    btnSelecionaRemetente: TBitBtn;
    edtRemetente: TDBEdit;
    Label70: TLabel;
    edtDestinatarioID: TDBEdit;
    btnSelecionaDestinatario: TBitBtn;
    edtDestinatario: TDBEdit;
    QryCTEPedVend: TOraQuery;
    QryCTEPedVendID_PRODUTO_PREDOMINANTE: TFloatField;
    QryCTEPedVendGN_OUTRAS_CARACTERISTICAS: TStringField;
    QryCTEPedVendVL_TOTAL_MERCADORIA: TFloatField;
    QryCTEPedVendID_UNIDMEDI: TFloatField;
    QryCTEPedVendNM_TIPO_MEDIDA: TStringField;
    QryCTEPedVendQN_QUANTIDADE_CTE: TFloatField;
    QryCTEPedVendQTD_COMPONENTES_SERVICO: TFloatField;
    tabCTE: TTabSheet;
    lblProdutoPredominante: TLabel;
    edtProdutoPredominante: TDBEdit;
    cbProdutoPredominante: TDBLookupComboBox;
    edtOutrasCaracteristicas: TDBEdit;
    lblOutrasCaracteristicas: TLabel;
    lblValorTotal: TLabel;
    edtValorTotal: TDBEdit;
    cbUnidadeMedida: TDBLookupComboBox;
    lblCodUnidadeMedida: TLabel;
    lblTipoMedida: TLabel;
    edtTipoMedida: TDBEdit;
    edtQuantidade: TDBEdit;
    lblQuantidade: TLabel;
    grpCompValorPrestacao: TGroupBox;
    lblNome: TLabel;
    edtNome: TEdit;
    lblValor: TLabel;
    btnAdicionar: TButton;
    grdComponentes: TDBGrid;
    btnRemover: TButton;
    edtValor: TEdit;
    QryCTECompServ: TOraQuery;
    QryCTECompServID_CTECOMPSERV: TFloatField;
    QryCTECompServID_PEDIVEND: TFloatField;
    QryCTECompServNM_NOME: TStringField;
    QryCTECompServVL_VALOR: TFloatField;
    DsCTECompServ: TOraDataSource;
    DsUnidadeMedida: TOraDataSource;
    QryUnidadeMedida: TOraQuery;
    QryMaterialEmbalagem: TOraQuery;
    QryMaterialEmbalagemID_MATEEMBA: TFloatField;
    QryMaterialEmbalagemNM_PRODMATEEMBA: TStringField;
    QryMaterialEmbalagemID_PRODMATEEMBA: TStringField;
    DsMaterialEmbalagem: TOraDataSource;
    DsPedidoVenda: TOraDataSource;
    QryPedidoVenda: TOraQuery;
    QryPedidoVendaID_PEDIVEND: TFloatField;
    QryPedidoVendaID_PRODUTO_PREDOMINANTE: TFloatField;
    QryPedidoVendaGN_OUTRAS_CARACTERISTICAS: TStringField;
    QryPedidoVendaVL_TOTAL_MERCADORIA: TFloatField;
    QryPedidoVendaID_UNIDMEDI: TFloatField;
    QryPedidoVendaNM_TIPO_MEDIDA: TStringField;
    QryPedidoVendaQN_QUANTIDADE_CTE: TFloatField;
    QryUnidadeMedidaCTE_UNIDADE_MEDIDA: TFloatField;
    QryUnidadeMedidaCOD_UNIDADE_MEDIDA: TStringField;
    QryUnidadeMedidaNM_UNIDADE_MEDIDA: TStringField;
    QryUnidadeMedidaNM_TIPO_MEDIDA: TStringField;
    QryUnidadeMedidaID_UNIDMEDI: TFloatField;
    btn_ProdPredom: TBitBtn;
    QItemVL_UNITICMS: TFloatField;
    edt_ICMS: TDBEdit;
    lbl_ICMS: TLabel;
    QrTipoOperID_INTETIPOOPER: TStringField;
    QItemVL_DESCITEM: TFloatField;
    lbl_VLDesc: TLabel;
    edt_VlDesc: TDBEdit;
    QrTipoOperFIN_NFE: TStringField;
    QItemVL_OUTRASDESP: TFloatField;
    lbl_OutrasDesp: TLabel;
    Edt_VlOutrasDesp: TDBEdit;
    QrTipoOperFL_EXIBE_DESC: TStringField;
    Chb_Semtransportador: TDBCheckBox;
    QPediVeFL_SEMTRANSP: TStringField;
    Qry_Estado: TOraQuery;
    Qry_EstadoSG_ESTADO: TStringField;
    QPediVeFL_NFCOMPLEMENTAR: TStringField;
    rdg_NFComplementar: TDBRadioGroup;
    qry_TipoDocRefID_TIPODOCU: TFloatField;
    qry_TipoDocRefID_TIPOPEDIVEND: TFloatField;
    qry_TipoDocRefOBRIGATORIO: TStringField;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    QPediVeID_LOTE: TFloatField;
    btn_PesqLote: TBitBtn;
    Qr_ValidaLote: TOraQuery;
    Qr_ValidaLoteID_LOTE: TFloatField;
    Qr_ValidaLoteNR_CNPJFORN: TStringField;
    Qr_ValidaLoteFL_STATUS: TStringField;
    Mem_ObsExped: TDBMemo;
    Label69: TLabel;
    btn_ConfObs: TSpeedButton;
    btn_CancObs: TSpeedButton;
    Qr_ValidaProduto: TOraQuery;
    Qr_ValidaProdutoVALIDAR: TStringField;
    Qr_ValidaProdutoVALIDO: TStringField;
    lbl_BaseICMS: TLabel;
    edt_BaseICMS: TDBEdit;
    QItemVL_BASEICMS: TFloatField;
    QFeriado: TOraQuery;
    grpQtdDisponivel: TGroupBox;
    pnlQtdDisponivel: TPanel;
    qryQtdDisponivel: TOraQuery;
    SP_ESTOQUE: TOraSQL;  // ESTOCADO
    procedure Sb_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
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
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CheckBox1Click(Sender: TObject);
    procedure TsDetalheShow(Sender: TObject);
    procedure BtpesqCliClick(Sender: TObject);
    procedure BPesqVendClick(Sender: TObject);
    procedure BtmaterialClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BPTiPedClick(Sender: TObject);
    procedure SBNovoClick(Sender: TObject);
    procedure SBCancelClick(Sender: TObject);
    procedure TSItemShow(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure SBSalvaClick(Sender: TObject);
    procedure edtCodiClieExit(Sender: TObject);
    procedure DBTipVenExit(Sender: TObject);
    procedure cbxEndeEntrExit(Sender: TObject);
    procedure mniTituAtraClick(Sender: TObject);
    procedure SBDiversosClick(Sender: TObject);
    procedure DBCVenExit(Sender: TObject);
    procedure DBCForPgExit(Sender: TObject);
    procedure DBInstCobExit(Sender: TObject);
    procedure DBSitCobExit(Sender: TObject);
    procedure DBCodMatEmbaExit(Sender: TObject);
    procedure AjustTotalItem(Sender: TObject);
    procedure edtQtdeEmbaExit(Sender: TObject);
    procedure DBTipVenEnter(Sender: TObject);
    procedure edtDataPediEnter(Sender: TObject);
    procedure edtDataEntrEnter(Sender: TObject);
    procedure DBIE_EXTERNOEnter(Sender: TObject);
    procedure edtCodiClieEnter(Sender: TObject);
    procedure DBCVenEnter(Sender: TObject);
    procedure DBLookupComboBox6Enter(Sender: TObject);
    procedure cbxEndeEntrEnter(Sender: TObject);
    procedure cbxEndeCobrEnter(Sender: TObject);
    procedure DBCForPgEnter(Sender: TObject);
    procedure DBFormaPagtoEnter(Sender: TObject);
    procedure DBInstCobEnter(Sender: TObject);
    procedure DBLookupComboBox7Enter(Sender: TObject);
    procedure DBSitCobEnter(Sender: TObject);
    procedure DBLookupComboBox9Enter(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure cbxContaEnter(Sender: TObject);
    procedure DBComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox5Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBPesoPedEnter(Sender: TObject);
    procedure DBEmbalagemEnter(Sender: TObject);
    procedure edtTotaEmbaEnter(Sender: TObject);
    procedure edtPesoBrutTotaEnter(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBMemo3Enter(Sender: TObject);
    procedure edtDataPediExit(Sender: TObject);
    procedure edtDataEntrExit(Sender: TObject);
    procedure DBIE_EXTERNOExit(Sender: TObject);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure DBFormaPagtoExit(Sender: TObject);
    procedure DBLookupComboBox7Exit(Sender: TObject);
    procedure DBLookupComboBox9Exit(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure cbxContaExit(Sender: TObject);
    procedure DBComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBPesoPedExit(Sender: TObject);
    procedure DBEmbalagemExit(Sender: TObject);
    procedure edtTotaEmbaExit(Sender: TObject);
    procedure edtPesoBrutTotaExit(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure DBMemo3Exit(Sender: TObject);
    procedure PM1Popup(Sender: TObject);
    procedure mniValidarClick(Sender: TObject);
    procedure ContrCrediAnter(Sender: TObject);
    procedure QItemAfterInsert(DataSet: TDataSet);
    procedure QItemAfterDelete(DataSet: TDataSet);
    procedure QItemAfterEdit(DataSet: TDataSet);
    procedure QPediVeAfterEdit(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtQtdeEmbaEnter(Sender: TObject);
    procedure edtPrecUnitBrutEnter(Sender: TObject);
    procedure DBCodMatEmbaEnter(Sender: TObject);
    procedure edtPrecUnitBrutExit(Sender: TObject);
    procedure SBDelClick(Sender: TObject);
    procedure mniUltiVendClick(Sender: TObject);
    procedure BPesqDtEntreClick(Sender: TObject);
    procedure BPesqDtClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TtulosemCartrio1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SB_COPIAClick(Sender: TObject);
    procedure mniSaldoLanClick(Sender: TObject);
    procedure TsListaShow(Sender: TObject);
    procedure BtplacaClick(Sender: TObject);
    procedure DBPlacaEnter(Sender: TObject);
    procedure CBxCidPortoEnter(Sender: TObject);
    procedure CBxPaisEnter(Sender: TObject);
    procedure DBPlacaExit(Sender: TObject);
    procedure CBxCidPortoExit(Sender: TObject);
    procedure CBxPaisExit(Sender: TObject);
    procedure DBPlacaChange(Sender: TObject);
    procedure QPediVeID_CONTAChange(Sender: TField);
    procedure SB_PNFClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo3KeyPress(Sender: TObject; var Key: Char);
    procedure CBxPedArmEnter(Sender: TObject);
    procedure CBxPedArmExit(Sender: TObject);
    procedure DBCodCidEntreEnter(Sender: TObject);
    procedure DBCodCidEntreExit(Sender: TObject);
    procedure SB_EditarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DsformaPgDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
//    function FileExec(const aCmdLine: String; aHide, aWait,bWait: Boolean):Boolean;
    procedure OcultaCampos;
    procedure DocumentoReferenciado(Sender: TObject);
    procedure Qry_DocRefBeforeOpen(DataSet: TDataSet);
    procedure DSPediVeDataChange(Sender: TObject; Field: TField);
    procedure Qry_DocRefAfterPost(DataSet: TDataSet);
    procedure Qry_DocRefBeforePost(DataSet: TDataSet);
    procedure Qry_DocRefAfterDelete(DataSet: TDataSet);
    procedure Qry_DocRefAfterOpen(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    function  ValidaDocumentoReferenciado:boolean;
    procedure Qry_TipoClienteBeforeOpen(DataSet: TDataSet);
    procedure Dsc_DocRefStateChange(Sender: TObject);
    procedure TsDocRefShow(Sender: TObject);
    procedure Qry_TipoCFOPBeforeOpen(DataSet: TDataSet);
    procedure Dsc_DocRefDataChange(Sender: TObject; Field: TField);
    procedure Dbg_DocRefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QItemBeforePost(DataSet: TDataSet);
    procedure sbRemCorteClick(Sender: TObject);
    procedure sbContasClick(Sender: TObject);
    procedure DBPedCompraEnter(Sender: TObject);
    procedure DBItemPedCompraEnter(Sender: TObject);
    procedure DBPedCompraExit(Sender: TObject);
    procedure DBItemPedCompraExit(Sender: TObject);
    procedure btnTabPreClick(Sender: TObject);
    procedure edtCodiClieKeyPress(Sender: TObject; var Key: Char);
    procedure DBCodMatEmbaKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdeEmbaKeyPress(Sender: TObject; var Key: Char);
    procedure tmrAvisoTimer(Sender: TObject);
    procedure QItemVL_UNITITEMPEDIVENDChange(Sender: TField);
    procedure sbSaldoClick(Sender: TObject);
    procedure SBCupomClick(Sender: TObject);
    procedure qry_TipoDocRefBeforeOpen(DataSet: TDataSet);
    procedure edtTomadorIDKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure edtRemetenteIDKeyPress(Sender: TObject; var Key: Char);
    procedure edtDestinatarioIDKeyPress(Sender: TObject; var Key: Char);
    procedure btnSelecionaRemetenteClick(Sender: TObject);
    procedure btnSelecionaDestinatarioClick(Sender: TObject);
    procedure btnInfoCTEClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure edtProdutoPredominanteExit(Sender: TObject);
    procedure cbUnidadeMedidaExit(Sender: TObject);
    procedure btn_ProdPredomClick(Sender: TObject);
    procedure tabCTEShow(Sender: TObject);
    procedure QPediVeAfterScroll(DataSet: TDataSet);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btn_PesqLoteClick(Sender: TObject);
    procedure btn_ConfObsClick(Sender: TObject);
    procedure btn_CancObsClick(Sender: TObject);
    procedure DSPediVeStateChange(Sender: TObject);
    procedure DSItemStateChange(Sender: TObject);
  private
    OrdemColuna, Ordem , TitColuna  : string;
    VerTodosLotes : Boolean ;
    procedure CarregaInformacoesCTE();
    procedure ValidaInformacoesCTE();
    procedure HabilitaCamposInformacoesCTE(enabled : Boolean);
    procedure AbreQueryComParametro(qry : TOraQuery; paramName : string; paramValue : Double);
    procedure pValidaDataLanctoPedido (pDataEntrega, pDataServidor : TDateTime);

  public
     VPAIS,SELPE,VCON:INTEGER;
     VPESSOCLI,VItemInclui,ub_PermVend,vSQL: String;
     VPc_Comis,VId_Cli,ur_ValoPediAnte,VId_Pedivend,VKGFRETE,VPERIPI:Double;
     VACUMITEM:Double;
     VDATATU, dtMaxEntrega, dtEntregaInformada:TDATETIME;
     Vdtstr:String;
     VEDITPLACA,VExporta,VCopia,VNFPOSTERIOR,VPNF,VDPNF:Boolean;
     VEDITA_OBSNF,VINCLUI,VEDIT_OBS,VEDITA, VLANCMULT,valt:Boolean;
     xcolor:integer;
     VItem_Avulso,Vprorrogou,VParamComer:Boolean;
     ur_PercMaxiPrecVend:Real;
     vParticipaCorte: boolean;
     contador: integer;

  end;
const
  //Separado de decimal
  SEPARADOR_DECIMAL = ',';

  //Número máximo de componentes de serviço que poderão ser inseridos na Grid
  MAX_COMP_SERVICO = 3;

  //Índice da aba do CT-e
  INDICE_ABA_CTE = 5;

var
  FrmPedVenda: TFrmPedVenda;
  XRPM:INTEGER;

implementation

uses SysUtils, UPesquiCliente, UFrmPesqVend,global,
     UFrmPesqTPV, UFrmSeldata, UFrmPesqMatEmba, UFrmTituAtra, UFRMATRA,
     Principal, UFRMUltVend, UFrmCargaNF, UFrmCartorio, DateUtils,
     UFrmSaldoVendas, UFrmPesCaminhao, UFrmGeraVarejo, UFrmConsuObs, UFrmSite,
  UFrmGeraTelevendas, UFrmDialBanco, UFrmPedVendaConta, UFrmSaldoProdCorte,
  UFrmDialCupom, UFrmInfoCTE, StrUtils, UFrmPesqLote , ufrmAutoTabPreco;

{$R *.dfm}
{$H+}

function  ConsisteInscricaoEstadual (const Insc, UF: String): Integer;
stdcall; external 'InscE32.Dll';


procedure TFrmPedVenda.Sb_SairClick(Sender: TObject);
begin
 close;
end;

procedure TFrmPedVenda.FormActivate(Sender: TObject);
begin
{
IF LCAMPOS.Items.Count=0 THEN
 BEGIN
  With LCampos.Items do
   begin
     Add('Nº Pedido');
     Add('Cód. Cliente');
     Add('Cód. Forma Pagto.');
     Add('Cód. Vendedor');
     Add('Data Digitação');
     Add('Data Entrega');
     Add('Data Pedido');
     Add('Nº Externo Pedido');
     Add('Status (AB/AV/EC/EX/FE/CN/ZR)');
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
   PageControl1.Pages[2].TabVisible:=false;
   PageControl1.Pages[3].TabVisible:=false;
 }
end;

procedure TFrmPedVenda.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 // Não permitimos fechar a janela se estivermos editando
  if (QPediVe.State = dsInsert) or (QPediVe.State = dsEdit) then
  begin
        //MessageDlg()
        If MessageDlg('Pedido ainda esta em edição. Deseja Sair ?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
        begin
             Action := caNone;
             exit;
        end
        else
        begin
            FrmPedVenda:=Nil;
            FrmPrincipal.VEN004.Enabled:= True;
            Action:=caFree;
        end;

  end;

  // Não permitimos fechar a janela se o botão Sair estiver desativado
  if not Sb_Sair.Enabled then
  begin
    Action := caNone;
    exit;
  end;
//  FrmPrincipal.Incluir1.Visible:=false;
//  FrmPrincipal.Gravar1.Visible:=false;
//  FrmPrincipal.Validar1.Visible:= false;

  FrmPedVenda:=Nil;
  FrmPrincipal.VEN004.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmPedVenda.BtIncluirClick(Sender: TObject);
 var
  Vre:String;
begin
  If EdExpre.Text<>'' then
   Begin
     IF MResul.Lines.Count>0 then
       begin
         If RGeou.ItemIndex=0  then
            Vre:='And '
         Else
            Vre:='Or ';
       end;

//     Vre:=Vre + Lcampos.Items[LCampos.itemindex];
     Case LCampos.itemindex of
       0:Vre:=Vre + 'pedido_venda.ID_PEDIVEND';
       1:Vre:=Vre + 'pedido_venda.ID_CLIENTE';
       2:Vre:=Vre + 'pedido_venda.id_formpaga';
       3:Vre:=Vre + 'pedido_venda.ID_VENDEDOR';
       4:Vre:=Vre + 'TRUNC(pedido_venda.dt_digipedivend)';
       5:Vre:=Vre + 'pedido_venda.DT_ENTRPEDIVEND';
       6:Vre:=Vre + 'pedido_venda.dt_pedivend';
       7:Vre:=Vre + 'pedido_venda.ie_pedivend';
       8:Vre:=Vre + 'pedido_venda.fl_statpedivend ';
       9:Vre:=Vre + 'pedido_venda.id_tipopedivend';
      10:Vre:=Vre + 'pedido_venda.id_lote';
      11:Vre:=Vre + 'pedido_venda.id_conta';
      12:Vre:=Vre + 'pedido_venda.VL_PEDIVEND';

     end;


     Case CBCond.ItemIndex of
       0: Vre:=Vre + ' =  ';
       1: Vre:=Vre + ' <> ';
       2: Vre:=Vre + ' >  ';
       3: Vre:=Vre + ' >= ';
       4: Vre:=Vre + ' <  ';
       5: Vre:=Vre + ' <= ';
       6: Vre:=Vre + ' LIKE ';
     end;

     Case LCampos.itemindex of
       4..6:Vre:=Vre + 'TO_DATE(''';
          7:Vre:=Vre + '''';
          8:Vre:=Vre + '''';
     end;

   If CBCond.ItemIndex=6 then
     Vre:=Vre + '%';

     Vre:= Vre + Edexpre.text;

   If CBCond.ItemIndex=6 then
     Vre:=Vre + '%';

   //TO_DATE('25-Aug-2003 00:00:00','DD-MON-YYYY HH24:MI:SS')

     Case LCampos.itemindex of
       4..6:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
          7:Vre:=Vre + '''';
          8:Vre:=Vre + '''';
     end;

     MResul.Append(Vre);

     EdExpre.Text :='';
     BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;
end;

procedure TFrmPedVenda.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmPedVenda.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
//  BtIncluir.SetFocus;
end;

procedure TFrmPedVenda.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
  CNAE, PCNAE : String;
Begin
// TRY
   Screen.Cursor := crSQLWait;
   QPediVe.Close;
   QPediVe.SQL.Clear;
   QPediVe.SQL.Text:=' SELECT Pedido_venda.ID_USUASIST_DIGIPEDIVEND, Pedido_venda.EMPRESA, Pedido_venda.FILIAL,  '+
  '     Pedido_venda.ID_PEDIVEND, Pedido_venda.ID_CLIENTE, Pedido_venda.ID_VENDEDOR,                            '+
  '     Pedido_venda.DT_PEDIVEND, Pedido_venda.DT_ENTRPEDIVEND, Pedido_venda.DT_DIGIPEDIVEND,                   '+
  '     Pedido_venda.DT_FATUPEDIVEND, Pedido_venda.ID_TIPOPEDIVEND, Pedido_venda.ID_FORMPAGA,                   '+
  '     Pedido_venda.ID_SITUCOBR, Pedido_venda.ID_INSTCOBR, Pedido_venda.ID_ENDECLIE_COBRANCA,                  '+
  '     Pedido_venda.ID_ENDECLIE_ENTREGA, Pedido_venda.IE_PEDIVEND, Pedido_venda.PC_DESCPEDIVEND,               '+
  '     Pedido_venda.PC_BONIPEDIVEND, Cliente.PC_DESCPADRCLIE, Cliente.PC_BONIPADRCLIE,                         '+
  '     Pedido_venda.ID_CARGEXPE, Pedido_venda.ID_CONTA, Pedido_venda.ID_TIPOCOBR,                              '+
  '     Pedido_venda.ID_LOTEEDIPEDIVEND, Pedido_venda.ID_USUASIST_AUTOPEDIVEND,                                 '+
  '     Pedido_venda.ID_TIPOLOGI, Pedido_venda.SG_TIPOFRETPEDIVEND, Pedido_venda.VL_SEGUPEDIVEND,               '+
  '     Pedido_venda.VL_DESPPEDIVEND, Pedido_venda.VL_FRETPEDIVEND, Pedido_venda.VL_DESCPEDIVEND,               '+
  '     Pedido_venda.VL_PEDIVEND, Pedido_venda.GN_ESPEPEDIVEND, Pedido_venda.GN_MARCPEDIVEND,                   '+
  '     Pedido_venda.QN_VOLUPEDIVEND, Pedido_venda.QN_EMBAPEDIVEND, Pedido_venda.QN_PESOPEDIVEND,               '+
  '     Pedido_venda.QN_TARAPEDIVEND, Pedido_venda.QN_EMBAEXPEPEDIVEND, Pedido_venda.QN_PESOPADREXPEPEDIVEND,   '+
  '     Pedido_venda.QN_TARAREALEXPEPEDIVEND, Pedido_venda.QN_PESOREALEXPEPEDIVEND,                             '+
  '     Pedido_venda.QN_FATOFRETABAT_PEDIVEND, Pedido_venda.FL_ESPEPEDIVEND, Pedido_venda.FL_STATPEDIVEND,      '+
  '     Pedido_venda.NR_ORDEPEDIVEND, Pedido_venda.GN_OBSEPADR_PEDIVEND, Pedido_venda.GN_OBSEEXPEPEDIVEND,      '+
  '     Pedido_venda.GN_OBSEPEDIVEND, Pedido_venda.FX_PEDIVEND, Cliente.NM_CLIENTE, Cliente.NM_FANTCLIE,        '+
  '     Cliente.NR_CNPJCLIE, Cliente.NR_INSCESTACLIE, Venda_tipo.NM_TIPOVEND, Cliente.VL_LIMICREDCLIE, Cliente.VL_CREDATUACLIE,          '+
  '     Cliente.FL_TIPOBLOQCLIE, Cliente.FL_BLOQADMICLIE,                         '+
  '     Logradouro_tipo_2.SG_TIPOLOGR,                                      '+
  '     Cliente_endereco_2.NM_LOGRENDECLIE, Cliente_endereco_2.NR_LOGRENDECLIE,                                 '+
  '     Cliente_endereco_2.GN_COMPENDECLIE, Pedido_venda_tipo.NM_TIPOPEDIVEND,                                  '+
  '     Vendedor.NM_VENDEDOR, Forma_pagamento.NM_FORMPAGA, Cobranca_situacao.NM_SITUCOBR,                       '+
  '     Cobranca_tipo.NM_TIPOCOBR, Conta.NM_CONTA, Cobranca_instrucao.NM_INSTCOBR,                              '+
  '     Logistica_tipo.NM_TIPOLOGI, Sistema_usuario.NM_REDUUSUASIST,                                            '+
  '     Cliente.QN_TITUVENCCLIE, Cliente.VL_TITUVENCCLIE,                                                       '+
  '     Pedido_venda.QN_PESOPEDIVEND + Pedido_venda.QN_TARAPEDIVEND  QN_PESOBRUTPEDIVEND,                       '+
  '     Pedido_venda.FL_CREDUSADPEDIVEND, Pedido_venda.FL_EXPOFINAPEDIVEND,                                     '+
  '     Pedido_venda.NR_PEDIVEND, Pedido_venda.VL_FATUPEDIVEND, Pedido_venda.VL_QUEBPEDIVEND,                   '+
  '     Pedido_venda.VL_OUTRAJUSPEDIVEND, Pedido_venda.VL_DEVOPEDIVEND, Pedido_venda.QN_PESOPADRDEVOPEDIVEND,   '+
  '     Pedido_venda.QN_PESOREALDEVOPEDIVEND, Pedido_venda.QN_TARAREALDEVOPEDIVEND,                             '+
  '     Pedido_venda.QN_EMBADEVOPEDIVEND, Pedido_Venda.FL_CONFPEDIDEVOVEND_PEDIVEND,                            '+
  '     BAIRRO.nm_bairro,CIDADE.nm_cidade, CIDADE.ID_IBGE, Pedido_Venda.CPORCOMIS, ESTADO.SG_ESTADO,                            '+
  '     PEDIDO_VENDA.ID_CIDADE_ENTREGA,                                                                         '+
  '     PEDIDO_VENDA.ID_PAIS_ENTREGA,                                                                           '+
  '     PEDIDO_VENDA.ID_FORNECEDOR,                                                                             '+
  '     PEDIDO_VENDA.GN_PLACVEICTRAN,                                                                           '+
  '     FORNECEDOR.NM_FORNECEDOR,                                                                               '+
  '     Pedido_venda.ID_PRODMATEEMBA,                                                                           '+
  '     Pedido_venda.ID_PEDREMESSA,                                                                             '+
  '     Pedido_venda.FL_PNF, Pedido_venda.DESCR_EMBALAGEM,                                                      '+
  '     Pedido_venda.DT_CONSULTA_IE,                                                                            '+
  '     Pedido_venda.PR_CONSULTA_IE,                                                                            '+
  '     Pedido_venda.FL_CORTE, Pedido_venda.DTHORA_CORTE,                                                        '+
  '     PEDIDO_VENDA.ID_TOMADOR, PEDIDO_VENDA.ID_EMITENTE, PEDIDO_VENDA.ID_REMETENTE, PEDIDO_VENDA.ID_DESTINATARIO '+

  {
    Descrição: Adicionando os campos de Informações do CTE (Remetente e Destinatário)
    Autor: Vinícius Godinho Del Rio
    Data: 01/12/2014
  }
  '     ,TOMADOR.NM_CLIENTE AS NM_TOMADOR,                                                                      ' +
  '     REMETENTE.NM_CLIENTE AS NM_REMETENTE,                                                                   ' +
  '     DESTINATARIO.NM_CLIENTE AS NM_DESTINATARIO , Pedido_venda.FL_SEMTRANSP , Pedido_venda.FL_NFCOMPLEMENTAR, Pedido_venda.ID_LOTE ' +
  ' FROM PEDIDO_VENDA Pedido_venda, CLIENTE Cliente, VENDEDOR Vendedor,                                         '+
  '     PEDIDO_VENDA_TIPO Pedido_venda_tipo, FORMA_PAGAMENTO Forma_pagamento,                                   '+
  '       COBRANCA_SITUACAO Cobranca_situacao, COBRANCA_INSTRUCAO Cobranca_instrucao,                           '+
  '       CLIENTE_ENDERECO Cliente_endereco_2,                                                                  '+
  '       CONTA Conta, LOGISTICA_TIPO Logistica_tipo, SISTEMA_USUARIO Sistema_usuario,                          '+
  '       COBRANCA_TIPO Cobranca_tipo, VENDA_TIPO Venda_tipo,                                                   '+
  '       LOGRADOURO_TIPO Logradouro_tipo_2,BAIRRO,CIDADE,ESTADO,FORNECEDOR                                     '+

  {
    Descrição: Adicionando tabelas para as informações de CTE (Remetente e Destinatário)
  }
  '       ,CLIENTE TOMADOR, CLIENTE REMETENTE, CLIENTE DESTINATARIO                                             ' +

  ' WHERE  (Pedido_venda.ID_CLIENTE = Cliente.ID_CLIENTE)                                                       '+
  '          AND  (Pedido_venda.FILIAL = '+ IntTostr( gi_Filial ) +' )                                          '+
  '          AND  (Pedido_venda.ID_VENDEDOR = Vendedor.ID_VENDEDOR)                                             '+
  '          AND  (Pedido_venda.ID_TIPOPEDIVEND = Pedido_venda_tipo.ID_TIPOPEDIVEND)                            '+
  '          AND  (Pedido_venda.ID_FORMPAGA = Forma_pagamento.ID_FORMPAGA)                                      '+
  '          AND  (Pedido_venda.ID_SITUCOBR = Cobranca_situacao.ID_SITUCOBR)                                    '+
  '          AND  (Pedido_venda.ID_INSTCOBR = Cobranca_instrucao.ID_INSTCOBR)                                   '+
  '          AND  (Pedido_venda.ID_ENDECLIE_ENTREGA = Cliente_endereco_2.ID_ENDECLIE)                           '+
  '          AND  (Pedido_venda.ID_CONTA = Conta.ID_CONTA)                                                      '+
  '          AND  (Pedido_venda.ID_TIPOLOGI = Logistica_tipo.ID_TIPOLOGI)                                       '+
  '          AND  (Pedido_venda.ID_USUASIST_DIGIPEDIVEND = Sistema_usuario.ID_USUASIST)                         '+
  '          AND  (Cliente.ID_TIPOVEND = Venda_tipo.ID_TIPOVEND)                                                '+
  '          AND  (Cliente_endereco_2.ID_TIPOLOGR = Logradouro_tipo_2.ID_TIPOLOGR)                              '+
  '          AND  (Pedido_venda.ID_TIPOCOBR = Cobranca_tipo.ID_TIPOCOBR)                                        '+
  '          AND  (Cliente_endereco_2.id_bairro = BAIRRO.id_bairro)                                             '+
  '          AND  (BAIRRO.id_cidade =  CIDADE.id_cidade)                                                        '+
  '          AND  (FORNECEDOR.ID_FORNECEDOR(+) = PEDIDO_VENDA.ID_FORNECEDOR)                                    '+
  '          AND   ESTADO.ID_ESTADO(+) = CIDADE.ID_ESTADO                                                       ' +

  {
    Descrição: Adicionando os joins para as tabelas de Informações do CTE (Remetente e Destinatário)
    Autor: Vinícius Godinho Del Rio
    Data: 01/12/2014
  }
  '         AND TOMADOR.ID_CLIENTE (+) = PEDIDO_VENDA.ID_TOMADOR                                                ' +
  '         AND REMETENTE.ID_CLIENTE (+) = PEDIDO_VENDA.ID_REMETENTE                                            ' +
  '         AND DESTINATARIO.ID_CLIENTE (+) = PEDIDO_VENDA.ID_DESTINATARIO                                      ' ;

  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 30;
  QrDireitos.Open;

  if (dadosCadastraisFilial.Cnae = '') then
  begin
       CNAE  := '''0''';
       PCNAE := '0';
  end
  else
    CNAE  := dadosCadastraisFilial.Cnae ;

  IF QrDireitos.IsEmpty THEN
    Begin
     QPediVe.SQL.Add (' AND   NVL(Pedido_venda_tipo.fl_consfinatipopedivend,''S'') = ''S'' ');
     //Tira os tipos q não geram financeiro da consulta de tipos de pedidos.
     QrTipoPed.Close;
     QrTipoPed.SQL.Clear;
     QrTipoPed.SQL.Text :=
        ' SELECT DISTINCT                            '+
        '   PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND,       '+
        '   PEDIDO_VENDA_TIPO.NM_TIPOPEDIVEND,       '+
        '   NVL(PEDIDO_VENDA_TIPO.FL_CORTEPED,''N'') AS FL_CORTEPED '+
        ' FROM                                       '+
        '   PEDIDO_VENDA_TIPO,                       '+
        '   PEDIDO_VENDA_TIPO_DOCU_TIPO              '+
        ' WHERE PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPOPEDIVEND '+
        '   AND  NVL(PEDIDO_VENDA_TIPO.FL_CONSFINATIPOPEDIVEND,''S'') = ''S''                   '+
        '   AND NVL(PEDIDO_VENDA_TIPO.FL_BLOQUEADO,''N'' ) = ''N''                              '+
        '   AND ( PEDIDO_VENDA_TIPO.CNAE IS NULL OR PEDIDO_VENDA_TIPO.CNAE = '+ CNAE +') ';

//        '  AND  PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU = 1   ';
     QrTipoPed.Open;
     ub_PermVend:='N';
    end
  Else
    begin
      ub_PermVend:='S';

      QrTipoPed.close;
      if ( QrTipoPed.Params.Count > 0 ) then
         QrTipoPed.ParamByName('CNAE').Value := PCNAE ;
      QrTipoPed.Open;

    end;
      XTM:=MResul.Lines.Count;
      If XTM >0 then
        begin
         QPediVe.SQL.Add(' And ');
         QPediVe.SQL.Add(MResul.Text);
        end
       ELSE
        begin
         Screen.Cursor := crDefault;
         If MessageDlg('Exibir listagem sem filtro?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
           exit
         Else
           Screen.Cursor := crSQLWait;
        end;

      QPediVe.SQL.Add('&OrderBy');

      QPediVe.MacroByName('OrderBy').Value :='';

      IF LBOrdemR.Items.Text<>'' THEN
      BEGIN
           QPediVe.MacroByName('ORDERBY').Value := LeftStr( ' ORDER BY  ' + StringReplace( LBOrdemR.Items.Text,#$D#$A,',' ,[rfReplaceAll]), Length( ' ORDER BY  ' +  StringReplace( LBOrdemR.Items.Text, #$D#$A ,',' ,[rfReplaceAll]))-1)  ;
           //QPediVe.SQL.Add('ORDER BY ');
           //QPediVe.SQL.Add(LBOrdemR.Items.Text);
      END;
      //QPediVe.SQL.SaveToFile('C:\PEDIDO_VENDA.SQL');
      QPediVe.Open;

  //Abrir as Querys auxiliares
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
  QrUsuSis.Open;
  QryPais.Open;
  QrPedArm.Open;

  {
    Descrição: Abrindo os datasets das informações do CT-e
    Autor: Vinícius Godinho Del Rio
    Data: 16/03/2015
  }
  try

    QryMaterialEmbalagem.Open;
    QryUnidadeMedida.Open;
    AbreQueryComParametro(QryCTECompServ, 'ID_PEDIVEND', QPediVeID_PEDIVEND.Value);
    AbreQueryComParametro(QryPedidoVenda, 'ID_PEDIVEND', QPediVeID_PEDIVEND.Value);
    HabilitaCamposInformacoesCTE(False);

  except
    on E : Exception do

  end;

//  QItem.CLOSE;
//  QItem.ParamByName('ID_PEDIVEND').AsFloat := QPediVeID_PEDIVEND.Value;
//  QItem.Open;                                    i

  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 40;
  QrDireitos.Open;

//  if QrDireitos.IsEmpty then
//    DBMemo2.MaxLength := 40
//  else
//  begin
//    DBMemo2.MaxLength := 300;
//    VEDITA_OBSNF:= TRUE;
//  end;
  //Obs ainda nao foi alterada
  VEDIT_OBS:= False;
  //DIREITO PARA EMITIR NF E TODOS OS TIPOS DE PEDIDO
  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 39;
  QrDireitos.Open;
  if not QrDireitos.IsEmpty then
  begin
    SB_PNF.Enabled := True;
    VDPNF := TRUE;
  end
  else
  begin
    QrTipoPed.Close;
    QrTipoPed.SQL.Clear;
    if (ub_PermVend='N') then
    begin
      QrTipoPed.SQL.Text :=
        ' SELECT                                     '+
        '  PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND,        '+
        '  PEDIDO_VENDA_TIPO.NM_TIPOPEDIVEND,        '+
        '  NVL(PEDIDO_VENDA_TIPO.FL_CORTEPED,''N'') AS FL_CORTEPED '+
        ' FROM                                       '+
        '  PEDIDO_VENDA_TIPO,                        '+
        '  PEDIDO_VENDA_TIPO_DOCU_TIPO               '+
        ' WHERE PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPOPEDIVEND '+
        '   AND NVL(PEDIDO_VENDA_TIPO.FL_CONSFINATIPOPEDIVEND,''S'') = ''S''  '+
        '   AND PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU = 7                   '+
        '   AND NVL(PEDIDO_VENDA_TIPO.FL_BLOQUEADO,''N'' ) = ''N''            '+
        '   AND ( PEDIDO_VENDA_TIPO.CNAE IS NULL OR PEDIDO_VENDA_TIPO.CNAE = '+ CNAE +') ';

        {if gs_CNPJ2 = '58852518' then
          QrTipoPed.SQL.Text := QrTipoPed.SQL.Text + '  AND PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU in (7,14)';
        if gs_CNPJ2 = '15109348' then
          QrTipoPed.SQL.Text := QrTipoPed.SQL.Text + '  AND PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU in (7,15)';}

    end
    else if (ub_PermVend='S') then
    begin
      QrTipoPed.SQL.Text :=
        ' SELECT                                     '+
        '  PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND,        '+
        '  PEDIDO_VENDA_TIPO.NM_TIPOPEDIVEND,        '+
        '  NVL(PEDIDO_VENDA_TIPO.FL_CORTEPED,''N'') AS FL_CORTEPED '+
        ' FROM                                       '+
        '  PEDIDO_VENDA_TIPO,                        '+
        '  PEDIDO_VENDA_TIPO_DOCU_TIPO               '+
        ' WHERE PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPOPEDIVEND '+
        '  AND  PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU = 7                                     '+
        '   AND NVL(PEDIDO_VENDA_TIPO.FL_BLOQUEADO,''N'' ) = ''N''                              '+
        '   AND ( PEDIDO_VENDA_TIPO.CNAE IS NULL OR PEDIDO_VENDA_TIPO.CNAE = '+ CNAE +') ';

        {if gs_CNPJ2 = '58852518' then
          QrTipoPed.SQL.Text := QrTipoPed.SQL.Text + '  AND PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU in (7,14)';
        if gs_CNPJ2 = '15109348' then
          QrTipoPed.SQL.Text := QrTipoPed.SQL.Text + '  AND PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU in (7,15)';}

    end;
    QrTipoPed.Open;
  end;
  //Verifica direito de duplicar
  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 6;
  QrDireitos.Open;

  if not QrDireitos.IsEmpty then
    SB_COPIA.Enabled := True;
  QrDireitos.Close;

  // DIREITO DE LANÇAR MULTIPLOS PEDIDOS POR DIA POR CLIENTE
  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 44;
  QrDireitos.Open;

  if not QrDireitos.IsEmpty then
     VLANCMULT := True
  else
     VLANCMULT := False;

  QrDireitos.Close;

  PageControl1.Pages[1].Show;
  Screen.Cursor := crDefault;
  PageControl1.Pages[1].TabVisible:=true;
  PageControl1.Pages[2].TabVisible:=true;
  PageControl1.Pages[3].TabVisible:=true;
  PageControl1.Pages[4].TabVisible:= (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0);  //documentos referenciados

  {
    Descrição: Monstrando/Escondendo a aba de Informações do CT-e
    Autor: Vinícius Godinho Del Rio
    Data: 11/03/2015
  }
  PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

//  QItem.Active:=TRUE;

  SB_PRIMEIRO.Enabled:=true;
  SB_ANTERIOR.Enabled:=true;
  SB_PROXIMO.Enabled:=true;
  SB_ULTIMO.Enabled:=true;
  SBNovo.Enabled:=true;
  SBDel.Enabled:=true;
  SBDiversos.Enabled:= true;
  SB_Editar.Enabled:= true;

 // Impedimos o acesso aos campos de edição
  edtDataPedi.Enabled := False;
  edtDataEntr.Enabled := False;
  DBIE_EXTERNO.Enabled := False;
  edtCodiClie.Enabled := False;
  DBCVen.Enabled := False;
  DBTipVen.Enabled := False;
  DBLookupComboBox6.Enabled := False;
  cbxEndeEntr.Enabled := False;
//  cbxEndeCobr.Enabled := False;
  CBxCidPorto.Enabled := False;
  CBxPais.Enabled := False;
  CBxPedArm.Enabled := False;
  DBPlaca.Enabled := False;
  Btplaca.Enabled := False;
  btn_PesqLote.Enabled := False;
  DBCForPg.Enabled := False;
  DBFormaPagto.Enabled := False;
  DBInstCob.Enabled := False;
  DBLookupComboBox7.Enabled := False;
  DBSitCob.Enabled := False;
  DBLookupComboBox9.Enabled := False;
  DBLookupComboBox3.Enabled := False;
  cbxConta.Enabled := False;
//  DBComboBox2.Enabled := False;
  DBLookupComboBox5.Enabled := False;
  DBEdit7.Enabled := False;
  DBPesoPed.Enabled := False;
  DBEmbalagem.Enabled := False;
  edtTotaEmba.Enabled := False;
  mniSaldoLan.Enabled := False;
  DBCodCidEntre.Enabled := False;
  DBArmazena.Enabled := False;
  DBMemo1.Enabled := False;
  DBMemo2.Enabled := False;

  {
    Descrição: O Misael pediu para remover pois aparentemente não está sendo usado, dando lugar a novos campos.
    Autor: Vinícius Godinho Del Rio
    Data: 13/01/2015
  }
  //DBMemo3.Enabled := False;

{  DBTipVen.ReadOnly := true;
  DBLookupComboBox6.ReadOnly := true;
  cbxEndeEntr.ReadOnly := true;
  cbxEndeCobr.ReadOnly := true;
  DBCForPg.ReadOnly := true;
  DBLookupComboBox8.ReadOnly := true;
  DBInstCob.ReadOnly := true;
  DBLookupComboBox7.ReadOnly := true;
  DBSitCob.ReadOnly := true;
  DBLookupComboBox9.ReadOnly := true;
  DBLookupComboBox3.ReadOnly := true;
  cbxConta.ReadOnly := true;
  DBComboBox2.ReadOnly := true;
  DBLookupComboBox5.ReadOnly := true;
  DBEdit7.ReadOnly := true;
  DBEdit11.ReadOnly := true;
  DBEdit12.ReadOnly := true;
  DBMemo1.ReadOnly := true;
  DBMemo2.ReadOnly := true;
  DBMemo3.ReadOnly := true;}


{  cbxConta.Enabled:= True;
  DBPlaca.Enabled := True;
  Btplaca.Enabled := True;
  DBIE_EXTERNO.Enabled := True;
  If VEDITA_OBSNF then
    DBMemo2.Enabled := True; }

  If (gi_Filial <> 4) and (VDPNF = false) then
    begin
      CBIPICMS.Enabled := False;
      edtIPI.Enabled := False;
    end;
  if gi_Filial = 91 then
    begin
      QrTabPre.Close;
      QrTabPre.Open;
      cbxTabPre.Visible:= True;
      btnTabPre.Visible:= True;
    end;
  //QrTipoPed.ParamByName('CNAE').Value := dadosCadastraisFilial.Cnae;
  vSQL:= ReplaceStr (QrTipoPed.SQL.Text , ':CNAE', CNAE ) ;

  QryTom.Close;
  QryRem.Close;
  QryDest.Close;

  QryTom.Open;
  QryRem.Open;
  QryDest.Open;
end;

procedure TFrmPedVenda.DBGrid1DblClick(Sender: TObject);
begin
  PageControl1.Pages[2].Show;
end;

procedure TFrmPedVenda.BVAIClick(Sender: TObject);
begin
  LBOrdemR.Items.Add(LBOrdemI.Items[LBOrdemI.itemindex]);
  LBOrdemI.Items.Delete(LBOrdemI.itemindex);
  BVAI.Enabled:=FALSE;
end;

procedure TFrmPedVenda.BVOLTAClick(Sender: TObject);
begin
   LBOrdemI.Items.Add(LBOrdemR.Items[LBOrdemR.itemindex]);
   LBOrdemR.Items.Delete(LBOrdemR.itemindex);
   BVOLTA.Enabled:=FALSE;
end;

procedure TFrmPedVenda.LBOrdemIClick(Sender: TObject);
begin
  BVAI.Enabled :=TRUE;
end;

procedure TFrmPedVenda.LBOrdemRClick(Sender: TObject);
begin
  BVOLTA.Enabled:=TRUE;
end;

procedure TFrmPedVenda.SB_PRIMEIROClick(Sender: TObject);
begin
  If TsDetalhe.Showing then
    begin
      QPediVe.First;
      TsDetalheShow(sender);
    end;
  If TSItem.Showing then
    begin
      QItem.First;
      TSItemShow(sender);
    end;
  if TsLista.Showing or TsDocRef.Showing then
    begin
      QItem.First;
    end;

end;

procedure TFrmPedVenda.SB_ANTERIORClick(Sender: TObject);
begin
  If TsDetalhe.Showing then
    begin
      QPediVe.Prior;
      TsDetalheShow(sender);
    end;
  If TSItem.Showing then
    begin
      QItem.Prior;
      TSItemShow(sender);
    end;

    if TsLista.Showing or TsDocRef.Showing then
    begin
      QItem.Prior;
    end;

end;

procedure TFrmPedVenda.SB_PROXIMOClick(Sender: TObject);
begin
  If TsDetalhe.Showing then
    begin
      QPediVe.Next;
      TsDetalheShow(sender);
    end;
  If TSItem.Showing then
    begin
      QItem.Next;
      TSItemShow(sender);
    end;

    if TsLista.Showing or TsDocRef.Showing then
    begin
      QItem.Next;
    end;

end;

procedure TFrmPedVenda.SB_ULTIMOClick(Sender: TObject);
begin
    begin
      QPediVe.Last;
      TsDetalheShow(sender);
    end;
  If TSItem.Showing then
    begin
      QItem.Last;
      TSItemShow(sender);
    end;
  If TsLista.Showing or TsDocRef.Showing then
    begin
      QPediVe.Last;
    end;
end;

procedure TFrmPedVenda.BPESQClick(Sender: TObject);
begin
   XRPM:=2;
   FrmOriPesq:=1;
   CASE SELPE OF
     1:BEGIN
        FrmPesqCliente:=TFrmPesqCliente.Create(Self);
        FrmPesqCliente.Show;
       END;
     3:BEGIN
        FrmPesqVend:=TFrmPesqVend.Create(Self);
        FrmPesqVend.Show;
       END;
  4..6:BEGIN
        Cria_FrmSelData(Vdtstr);
        EdExpre.text:= Vdtstr;
        BtIncluir.SetFocus;
       END;

   end;
   BPESQ.Visible:=FALSE;
end;

procedure TFrmPedVenda.LCamposClick(Sender: TObject);
begin
  SELPE:=0;
  CASE LCAMPOS.ItemIndex OF
    1:SELPE:=1;
    3:SELPE:=3;
 4..6:SELPE:=6;
  END;
  if SELPE>0 then
    BPESQ.Visible:= True
  else
    BPESQ.Visible:= False;
end;

procedure TFrmPedVenda.DBGrid1Enter(Sender: TObject);
// var
 //  xtotal:double;
begin

   //xtotal:=SUM(DBGrid1.Fields[8].value);

  //Edit1.Text:=floattostr(xtotal);
end;

procedure TFrmPedVenda.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{ IF QPediVe.FieldByName('fl_cancnotafisc').AsString = 'S' then
    DBGrid1.Canvas.Brush.Color := clred;
 IF QPediVe.FieldByName('RST_COBRA').AsString = 'A' THEN
    DBGrid1.Canvas.font.Color  := clgreen;
 IF QPediVe.FieldByName('RST_COBRA').AsString = 'Q' THEN
    DBGrid1.Canvas.font.Color  := clblue;
 IF QPediVe.FieldByName('RST_COBRA').AsString = 'P' THEN
    DBGrid1.Canvas.Brush.Color := clYellow;

 DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
 }
end;

procedure TFrmPedVenda.CheckBox1Click(Sender: TObject);
begin
{
   IF VCON=1 THEN
     BEGIN
       Showmessage('VIROU ZERO.');
       VCON:=0;
       EXIT;
     END;
   Showmessage('VC CLICOU.');
   IF CheckBox1.Checked=FALSE THEN
     BEGIN
       Showmessage('TAVA CHECADO.');
       IF QPediVeRGERALOTE.Value='S' THEN
         BEGIN
          Showmessage('Não pode ser alterado. Remessa já enviada.');
          CheckBox1.Checked:=TRUE;
         END
       ELSE
         BEGIN
           Showmessage('VAI SALVAR O N');

           TBTiturec.Active:=TRUE;

           TBTiturec.Edit;
           TBTiturecRGEREMESSA.Value:='N';
           TBTiturec.Post;
           //TBTiturec.CommitUpdates;
           //TBTiturec.ApplyUpdates;
           CheckBox1.Checked:=FALSE;

        END;
     END
   ELSE
     BEGIN
       Showmessage('VAI SALVAR O S');
       TBTiturec.Active:=TRUE;
       TBTiturec.Edit;
       TBTiturecRGEREMESSA.Value:='S';
       TBTiturec.Post;
           //TBTiturec.CommitUpdates;
           //TBTiturec.ApplyUpdates;
       CheckBox1.Checked:=TRUE;
     END;

 }
end;

procedure TFrmPedVenda.TsDetalheShow(Sender: TObject);
begin
//  QrEndCobra.Close;
//  QrEndCobra.ParamByName('pi_CodiClie').AsFloat:= QPediVeID_CLIENTE.Value;
//  QrEndCobra.open;
  QrEndCli.Close;
  QrEndCli.ParamByName('pi_CodiClie').AsFloat:= QPediVeID_CLIENTE.Value;
  QrEndCli.open;
  QItem.Close;
  DBEdit8.Color := clTeal;
  If QPediVeTitCartorio.Value > 0 then
     Timer1.Enabled := True
  Else
     Timer1.Enabled := False;

  mniSaldoLan.Enabled := False;

   //Aumentar a obs do pedido para cfop 5601
  If (DBTipVen.Text='66')  then
  begin
    DBMemo1.Width := 752;
    DBMemo1.Height := 50;

    {
      Descrição: O Misael pediu para remover pois aparentemente não está sendo usado, dando lugar a novos campos.
      Autor: Vinícius Godinho Del Rio
      Data: 13/01/2015
    }
    //DBMemo3.Width := 752;
    //DBMemo3.Height := 50;
    ////DBMemo3.Top := 420;
    //DBMemo3.Top := 452;
    //DBMemo3.Left := 22;
    
  end
  else
  begin
    DBMemo1.Width := 213;
    DBMemo1.Height := 77;

    {
      Descrição: O Misael pediu para remover pois aparentemente não está sendo usado, dando lugar a novos campos.
      Autor: Vinícius Godinho Del Rio
      Data: 13/01/2015
    }
    //DBMemo3.Width := 247;
    //DBMemo3.Height := 77;
    ////DBMemo3.Top := 371;
    //DBMemo3.Top := 403;
    //DBMemo3.Left := 534;
    
  end;
end;


procedure TFrmPedVenda.BtpesqCliClick(Sender: TObject);
begin
  FrmOriPesq:=11;
  FrmPesqCliente:=TFrmPesqCliente.Create(Self);
  FrmPesqCliente.ShowModal;
end;

procedure TFrmPedVenda.BPesqVendClick(Sender: TObject);
begin
  FrmOriPesq:=11;
  FrmPesqVend:=TFrmPesqVend.Create(Self);
  FrmPesqVend.ShowModal;
end;

procedure TFrmPedVenda.BtmaterialClick(Sender: TObject);
begin
  FrmOriPesq:=11;
  FrmPesqMatEmba:=TFrmPesqMatEmba.Create(Self);
  FrmPesqMatEmba.ShowModal;
end;

procedure TFrmPedVenda.FormShow(Sender: TObject);
begin
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT SYSDATE FROM DUAL';
  qryTemp.Open;
  dtMaxEntrega:= fProximoDiaUtil(DateOf(QryTemp.FieldByName('SYSDATE').AsDateTime + 1));

//controle do key down do form
valt:=False;
IF LCAMPOS.Items.Count=0 THEN
 BEGIN
  With LCampos.Items do
   begin
     Add('Nº Pedido');
     Add('Cód. Cliente');
     Add('Cód. Forma Pagto.');
     Add('Cód. Vendedor');
     Add('Data Digitação');
     Add('Data Entrega');
     Add('Data Pedido');
     Add('Nº Externo Pedido');
     Add('Status (AB/AV/EC/EX/FE/CN/ZR)');
     Add('Cód. Tipo Pedido Venda');
     Add('Lote');
     Add('Cód. Conta');
     Add('Vl. Pedido');
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
 VEDITA:= False;

 PageControl1.Pages[1].TabVisible:=false;
 PageControl1.Pages[2].TabVisible:=false;
 PageControl1.Pages[3].TabVisible:=false;
 PageControl1.Pages[4].TabVisible:=false;

 {
    Descrição: Monstrando/Escondendo a aba de Informações do CT-e
    Autor: Vinícius Godinho Del Rio
    Data: 11/03/2015
  }
  PageControl1.Pages[5].TabVisible := False;

 OcultaCampos; 
end;

procedure TFrmPedVenda.BPTiPedClick(Sender: TObject);
begin
  FrmOriPesq:=11;
  FrmPesqTPV:=TFrmPesqTPV.Create(Self);
  FrmPesqTPV.ShowModal;
end;

procedure TFrmPedVenda.SBNovoClick(Sender: TObject);
var
  Temp: TComponent;
  li_Loop    : Integer;
  ls_PrefTag : String;
begin
  if (QPediVeFL_CORTE.Value = 'S') and (PageControl1.ActivePage = TSItem) then
    Begin
      Screen.Cursor := crDefault;
      MessageDlg('Pedido já passou pelo sistema de corte e não permite inclusão.', mtWarning, [mbOk], 0);
      Exit;
    end;

  {
    Descrição: Não permite o usuário criar novas informações do CT-e, somente editá-las.
    Autor: Vinícius Godinho Del Rio
    Data: 11/03/2015
  }
  if (PageControl1.ActivePage = tabCTE) then
  begin

    MessageDlg('Para inserir as informações do CT-e utilize o botão de Editar!', mtWarning, [mbOk], 0);
    Exit;

  end;


 //atualizar contas ativas
 QrConta.Close;
 QrConta.Open;

 // Forçamos o Exit do componente anterior
 ActiveControl := Nil;
 VINCLUI:= True;
 VEDITPLACA:= FALSE;
 VEDITA:= False;
 VItem_Avulso:=False;

  if TsDetalhe.Showing or TsLista.Showing then
  begin
  { with QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
            ' select id_pedivend                        '+
            '  FROM pedido_venda                        '+
            ' WHERE id_usuasist_digipedivend = :USUSIS  '+
            '   AND dt_entrpedivend < SYSDATE - 5       '+
            '   AND (fl_statpedivend = ''AV''           '+
            '     OR fl_statpedivend = ''AB'')          ';
      ParamByName('USUSIS').AsInteger := gi_CodiUsuaSist;
      Open;
      if not IsEmpty then
      begin
        MessageDlg('Atenção! Verifique vendas pendentes com mais de cinco dias, antes de continuar!', mtInformation,[mbOk], 0, mbOk);
        exit;
      end;
    end; }
    VPNF:= False;
    SB_PRIMEIRO.Enabled:= False;
    SB_ANTERIOR.Enabled:= False;
    SB_PROXIMO.Enabled:= False;
    SB_ULTIMO.Enabled:= False;
    SBNovo.Enabled:= False;
    SBDel.Enabled:= False;
    SBSalva.Enabled:= True;
    SBCancel.Enabled:= True;
    SBCupom.Enabled:= False;
    SB_COPIA.Enabled:= False;
    Sb_Sair.Enabled:= False;
    SB_PNF.Enabled := False;
    SB_Editar.Enabled := False;

    DBArmazena.Visible := False;
    PageControl1.Pages[0].TabVisible:= false;
    PageControl1.Pages[1].TabVisible:= false;
    PageControl1.Pages[3].TabVisible:= false;
    PageControl1.Pages[4].TabVisible:= false;

    {
      Descrição: Monstrando/Escondendo a aba de Informações do CT-e
      Autor: Vinícius Godinho Del Rio
      Data: 11/03/2015
    }
    PageControl1.Pages[5].TabVisible := False;

    PageControl1.Pages[2].Show;

    QPediVe.Insert;
    QPediVeFL_PNF.Value := 'N';
    QItem.Close;

   // Permitimos o acesso aos campos de edição
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
      if  (Temp is TDBRadioGroup) then
      begin
        TScrollBox(temp).Enabled := True;
      end;

      {
        Descrição: Desabilitando os campos de CTe
        Autor: Vinícius Godinho Del Rio
        Data: 03/12/2014
      }
      edtTomadorID.Enabled := False;
      edtTomador.Enabled := False;
      edtRemetenteID.Enabled := False;
      edtRemetente.Enabled := False;
      edtDestinatarioID.Enabled := False;
      edtDestinatario.Enabled := False;
      btnSelecionaRemetente.Enabled := False;
      btnSelecionaDestinatario.Enabled := False;



     DbCAuto.Enabled := False;
   end;
   //Alterar embalagem e peso da NF Metal.
   if (gi_filial=4) or (gi_Filial=91) then
   begin
     DBEmbalagem.Color := clBase;
     DBEmbalagem.ReadOnly := False;
     DBEmbalagem.Enabled := True;
     edtTotaEmba.Color := clBase;
     edtTotaEmba.ReadOnly := False;
     edtTotaEmba.Enabled := True;
     DBPesoPed.Color := clBase;
     DBPesoPed.ReadOnly := False;
     DBPesoPed.Enabled := True;
   end
   else
   begin
     DBEmbalagem.Color := clSilver;
     DBEmbalagem.ReadOnly := True;
     DBEmbalagem.Enabled := False;
     edtTotaEmba.Color := clSilver;
     edtTotaEmba.ReadOnly := True;
     edtTotaEmba.Enabled := False;
     DBPesoPed.Color := clSilver;
     DBPesoPed.ReadOnly := True;
     DBPesoPed.Enabled := False;
   end;

      // <CHC>
      // Se o foco estiver na query principal
      //  if qryFoco = qryForm then
      //  begin
      // <CHC>
      // Se houver atribuições automáticas a algum campo de edição
      // Atribuimos valores fixos às colunas

      qryTemp.Close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Text := ' select sysdate  from  dual ';
      qryTemp.Open;
      if not(qryTemp.IsEmpty) then
         ld_DataHora := qryTemp.FieldByName('SYSDATE').AsDateTime;
      qryTemp.close;

      QPediVe['DT_PEDIVEND']     := Date;
      QPediVe['DT_ENTRPEDIVEND'] := Date + 1;
      QPediVe['DT_DIGIPEDIVEND'] := ld_DataHora;
      QPediVe['ID_USUASIST_DIGIPEDIVEND'] := gi_CodiUsuaSist;
      QPediVe['NM_REDUUSUASIST'] := gs_NomeReduUsuaSist;
      QPediVe['FL_STATPEDIVEND'] := 'AV';
      {QPediVe['SG_TIPOFRETPEDIVEND'] := 'CIF';
      FABRICIO - 27/07/2018 - MOTIVO:NFE 4.0}
      QPediVe['SG_TIPOFRETPEDIVEND'] := '0';
      QPediVe['ID_TIPOLOGI'] := 1;
      QPediVe['PC_DESCPEDIVEND'] := 0;
      QPediVe['VL_DESCPEDIVEND'] := 0;
      QPediVe['QN_VOLUPEDIVEND'] := 0;
      QPediVe['QN_EMBAPEDIVEND'] := 0;
      QPediVe['QN_PESOPEDIVEND'] := 0;
      QPediVe['QN_TARAPEDIVEND'] := 0;
      QPediVe['QN_EMBAEXPEPEDIVEND'] := 0;
      QPediVe['QN_PESOPADREXPEPEDIVEND'] := 0;
      QPediVe['QN_TARAREALEXPEPEDIVEND'] := 0;
      QPediVe['QN_PESOREALEXPEPEDIVEND'] := 0;
      QPediVe['QN_FATOFRETABAT_PEDIVEND'] := 1;
      QPediVe['FL_ESPEPEDIVEND'] := 'NM';
      QPediVe['NR_ORDEPEDIVEND'] := 0;
      QPediVe['VL_QUEBPEDIVEND'] := 0;
      QPediVe['VL_OUTRAJUSPEDIVEND'] := 0;
      QPediVe['VL_DEVOPEDIVEND'] := 0;
      QPediVe['QN_PESOPADRDEVOPEDIVEND'] := 0;
      QPediVe['QN_PESOREALDEVOPEDIVEND'] := 0;
      QPediVe['QN_PESOREALDEVOPEDIVEND'] := 0;
      QPediVe['QN_TARAREALDEVOPEDIVEND'] := 0;
      QPediVe['QN_EMBADEVOPEDIVEND'] := 0;
      QPediVe['ID_CONTA'] := 8;
      edtQtdeEmba.Text:='0';
      edtPrecUnitBrut.Text:='0';

      // Criamos um novo ID e o associamos ao campo
      // ui_NovoID := NovoID('ID_PEDIVEND');
      // ui_NovoID := NovoID('ID_PEDIVENDMATE');
      // qryFoco['ID_PEDIVEND'] := ui_NovoID;

      // <CHC>
      // Ajustamos empresa e filial e fixo

      QPediVe.FieldByName('EMPRESA').AsString := gs_Empresa;
      QPediVe.FieldByName('FILIAL').AsInteger := gi_Filial;
      QPediVe.FieldByName('FX_PEDIVEND').AsString := 'N';
      QPediVe.FieldByName('FL_NFCOMPLEMENTAR').AsString := 'N';

      // Ajustamos as querys de endereço
      // AjustEnder(Self);

      // Damos o foco na data do pedido
      edtDataPedi.SetFocus;

  end;   //TsDetalhe.Showing

  IF TSItem.Showing THEN
  BEGIN
    VID_PEDIVEND := QPediVe['ID_PEDIVEND'];
    // Verifica se o Pedido já se encontra em uma carga.
    with QryTemp do
    begin
       Close;
       SQL.Clear;
       SQL.Text :=
         ' select id_pedivend      '+
         '   from ca_pedido_carga  '+
         '  where id_pedivend = :id_pedivend ';
       ParamByName('id_pedivend').AsFloat := QPediVe['ID_PEDIVEND'];
       Open;
       if not IsEmpty then
       begin
         MessageDlg('Este pedido já está em uma carga;' + #10+#13+
                   'Alteração não permitida ! ', mtInformation,[mbOk], 0, mbOk);
         exit;
       end;
    end;

    If QPediVe['FL_STATPEDIVEND'] = 'AB' then
    BEGIN
      QPediVe.Edit;
    END;
    If QPediVe['FL_STATPEDIVEND'] <> 'AB' then
      If QPediVe['FL_STATPEDIVEND'] <> 'AV' then
      BEGIN
        SHOWMESSAGE('O Status do Pedido não permite a Inclusão de mais Itens.');
        exit;
      END;
     {
          Descrição: VERIFICA SE O USUÁRIO DA ALTERAÇÃO É O MESMO DA DIGITAÇÃO
          VENDEDOR FÁBIO SOLICITOU
          DANIEL 20/02/2018
     }

    IF QPediVe['ID_USUASIST_DIGIPEDIVEND'] <> gi_CodiUsuaSist THEN
    BEGIN
      SHOWMESSAGE('Só é permitida a Inclusão de mais Ítens pelo usuário digitador do Pedido.');
      exit;
    END;

    {
      Descrição: Só deixa adicionar mais itens se o tipo de pedido de venda não for o de CT-e.
      de pedido de venda por de CT-e (Controle de transporte eletrônico)
      Autor: Vinícius Godinho Del Rio
      Data: 16/12/2014
    }
    if (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S') and (Qitem.RecordCount > 0) then
    begin

      ShowMessage('O tipo de pedido de venda só aceita um item incluso.');
      Exit;

    end;

    SBNovo.Enabled := false;
    SBDel.Enabled := false;
    SB_COPIA.Enabled:= false;
    SBSalva.Enabled := true;
    SBCancel.Enabled := true;
    SBCupom.Enabled := True;
    Sb_Sair.Enabled :=false;
    SB_Editar.Enabled := False;

    PageControl1.Pages[0].TabVisible:= false;
    PageControl1.Pages[1].TabVisible:= false;
    PageControl1.Pages[2].TabVisible:= false;
    PageControl1.Pages[3].Enabled := true;
    PageControl1.Pages[3].Show;
    PageControl1.Pages[4].TabVisible:= false;

    {
      Descrição: Monstrando/Escondendo a aba de Informações do CT-e
      Autor: Vinícius Godinho Del Rio
      Data: 11/03/2015
    }
    PageControl1.Pages[5].TabVisible := False;

    {DBCodMatEmba.Enabled :=  true;
    edtQtdeEmba.Enabled :=  true;
    edtPrecUnitBrut.Enabled :=  true;
    DBLookupComboBox10.Enabled :=  true;
    DBGrid2.Enabled := true;}

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
      if  (Temp is TDBRadioGroup) then
      begin
        TScrollBox(temp).Enabled := True;
      end;

    end;

    //  DBCodMatEmba.ReadOnly := false;
    //  DBCodMatEmba.TabStop  := true;

    QItem.Append;
    QItem.FieldByName('EMPRESA').AsString := gs_Empresa;
    QItem.FieldByName('FILIAL').AsInteger := gi_Filial;
    //TRANSFERE O DESCONTO DO ITEM
    QItem.FieldByName('PC_DESCITEMPEDIVEND').AsFloat:= QPediVe.FieldByName('PC_DESCPEDIVEND').AsFloat;
    QItem.FieldByName('ID_PEDIVEND').AsFloat := VID_PEDIVEND;
    DBEmbaCort.Text := '0';
    VItemInclui:='S';
    DBCodMatEmba.SetFocus;

  end;

  if PageControl1.ActivePage = TsDocRef then
  Begin
    {SBNovo.Enabled := false;
    SBDel.Enabled := false;
    SB_COPIA.Enabled:= false;
    SBSalva.Enabled := true;
    SBCancel.Enabled := true;
    Sb_Sair.Enabled :=false;
    SB_Editar.Enabled := False;}

    if Not(Rad_NFe.Checked or Rad_NF.Checked or Rad_NFP.Checked or Rad_CTE.Checked or Rad_Cupom.Checked) then
    begin
      ShowMessage('Favor, Informe o Tipo de Documento a ser Referenciado!');
      Exit;
    end;

    Qry_DocRef.Append;
  end;

end;

procedure TFrmPedVenda.SBCancelClick(Sender: TObject);
var
  li_Loop    : Integer;
  ls_PrefTag : String;
  Temp: TComponent;
begin
  VEDITPLACA:=FALSE;
  Timer1.Enabled:=False;
  DBEdit8.Color:=clteal;

  If  TSItem.Showing then
  begin // Se pelo menos um item for obrigatório e não estivermos trabalhando com o sistema de validação

    QItem.CancelUpdates;

    {If QItem.IsEmpty then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Deve existir pelo menos um item !', mtWarning, [mbOk], 0);
      SBNovoClick(Self);
      Exit;
    end;}

    pnlQtdDisponivel.Caption := '';
    pnlQtdDisponivel.Color := clBackground;
    Sb_Sair.Enabled:=true;   

  end;

  If TsDetalhe.Showing then
  begin

    QPediVe.CancelUpdates;

    DbCAuto.Enabled := False;
    DBArmazena.Visible := True;
    VItemInclui:='N';

    SB_PRIMEIRO.Enabled:=True;
    SB_ANTERIOR.Enabled:=True;
    SB_PROXIMO.Enabled:=True;
    SB_ULTIMO.Enabled:=True;

    PageControl1.Pages[0].TabVisible:=true;
    PageControl1.Pages[1].TabVisible:=true;
    PageControl1.Pages[2].TabVisible:=true;
    PageControl1.Pages[3].TabVisible:=true;
    PageControl1.Pages[4].TabVisible:= (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0);  //documentos referenciados
    PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

    Sb_Sair.Enabled:=true;

    //Impedimos o acesso aos campos de edição
    edtDataPedi.Enabled := false;
    edtDataEntr.Enabled := false;
    DBIE_EXTERNO.Enabled := false;
    edtCodiClie.Enabled := false;
    DBCVen.Enabled := false;
    DBTipVen.Enabled := false;
    DBLookupComboBox6.Enabled := false;
    cbxEndeEntr.Enabled := false;
    //cbxEndeCobr.Enabled := false;
    CBxCidPorto.Enabled := False;
    CBxPais.Enabled := False;
    CBxPedArm.Enabled := False;
    DBPlaca.Enabled := False;
    Btplaca.Enabled := False;
    btn_PesqLote.Enabled := False;
    DBCForPg.Enabled := false;
    DBFormaPagto.Enabled := False;
    DBInstCob.Enabled := false;
    DBLookupComboBox7.Enabled := false;
    DBSitCob.Enabled := false;
    DBLookupComboBox9.Enabled := false;
    DBLookupComboBox3.Enabled := false;
    cbxConta.Enabled := false;
    //DBComboBox2.Enabled := false;
    DBRTipoFrete.Enabled := False;
    rdg_NFComplementar.Enabled := False;
    DBLookupComboBox5.Enabled := False;
    DBEdit7.Enabled :=  False;
    DBPesoPed.Enabled := False;
    DBEmbalagem.Enabled := false;
    DBCodCidEntre.Enabled := False;
  end;

  SBNovo.Enabled:=true;
  SBDel.Enabled:=true;
  SB_COPIA.Enabled:= TRUE;
  SBDiversos.Enabled:= true;
  SB_Editar.Enabled := True;
  SBSalva.Enabled:=false;
  SBCancel.Enabled:=false;
  SBCupom.Enabled:= False;

  cbxConta.Enabled:= False;
  DBPlaca.Enabled := False;
  Btplaca.Enabled := False;
  btn_PesqLote.Enabled := False;
  DBIE_EXTERNO.Enabled := False;
  DBArmazena.Enabled := False;
  DBMemo1.Enabled := False;
  DBMemo2.Enabled := False;
  VEDITA:= False;

  if PageControl1.ActivePage = TsDocRef then
  Begin
    Qry_DocRef.Cancel;
  end;

  {
    Descrição: Cancela a edição das informações do CT-e
    Autor: Vinícius Godinho Del Rio
    Data: 16/03/2015
  }
  if PageControl1.ActivePage = tabCTE then
  begin

    QryPedidoVenda.Cancel;

    //Desabilitando os campos do CT-e
    HabilitaCamposInformacoesCTE(False);

    //Reabilitando os botões que foram desabilitados
    SB_PRIMEIRO.Enabled := True;
    SB_ANTERIOR.Enabled := True;
    SB_PROXIMO.Enabled := True;
    SB_ULTIMO.Enabled := True;
    SBNovo.Enabled := True;
    SBDel.Enabled := True;

    //Reabilitando as abas
    PageControl1.Pages[0].TabVisible:=true;
    PageControl1.Pages[1].TabVisible:=true;
    PageControl1.Pages[2].TabVisible:=true;
    PageControl1.Pages[3].TabVisible:=true;
    PageControl1.Pages[4].TabVisible:= (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0);
    PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

  end; 

end;

procedure TFrmPedVenda.TSItemShow(Sender: TObject);
var
   Li_Loop:integer;
   Temp : TComponent;
begin
  //Abre a Query de Tipo de Pedido
  QrTipoOper.Close;
  QrTipoOper.ParamByName('ID_TIPOPEDIVEND').AsFloat:= QPediVeID_TIPOPEDIVEND.Value;
  QrTipoOper.open;
  //Abre a Query de Preços.
  QrPre.Close;
  QrPre.ParamByName('VCodiClie').AsFloat := QPediVeID_CLIENTE.Value;
  QrPre.open;

  QItem.CLOSE;
  QItem.ParamByName('ID_PEDIVEND').AsFloat := QPediVeID_PEDIVEND.Value;
  QItem.Open;

  mniSaldoLan.Enabled := True;

  // Se for lançamento de crédito de ativo
  if ( QrTipoOperID_INTETIPOOPER.AsString = '1604' ) OR ( QPediVeFL_NFCOMPLEMENTAR.Value = 'I' ) then
  begin
       lbl_ICMS.Visible := True;
       edt_ICMS.Visible := True;
  end
  else
  begin
       lbl_ICMS.Visible := False;
       edt_ICMS.Visible := False;
  end;

  if  ( QPediVeFL_NFCOMPLEMENTAR.Value = 'I' ) then
  begin
       lbl_BASEICMS.Visible := True;
       edt_BASEICMS.Visible := True;
  end
  else
  begin
       lbl_BASEICMS.Visible := False;
       edt_BASEICMS.Visible := False;
  end;


  // Se for devolução
  if ( QrTipoOperFIN_NFE.AsString = '4' ) OR (QrTipoOperFL_EXIBE_DESC.Value = 'S' ) then
  begin
       lbl_VLDesc.Visible       := True;
       edt_VlDesc.Visible       := True;
       lbl_OutrasDesp.Visible   := True;
       Edt_VlOutrasDesp.Visible := True;
  end
  else
  begin
       lbl_VLDesc.Visible       := False;
       edt_VlDesc.Visible       := False;
       lbl_OutrasDesp.Visible   := False;
       Edt_VlOutrasDesp.Visible := False;
  end;

  {  If VItemInclui ='S' then
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
   end;
}

end;

procedure TFrmPedVenda.TabSheet1Show(Sender: TObject);
var
  li_Loop:integer;
  temp:TComponent;
begin
 // Loop para todos os componentes da janela
{ For li_Loop :=0 to ComponentCount - 1  do
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

  end;}

  If QPediVe.State in [dsInsert, dsEdit] then
     QPediVe.CancelUpdates;

  If QItem.State in [dsInsert, dsEdit] then
     QItem.CancelUpdates;

  SB_PRIMEIRO.Enabled:= False;
  SB_ANTERIOR.Enabled:= False;
  SB_PROXIMO.Enabled:= False;
  SB_ULTIMO.Enabled:= False;
  SBNovo.Enabled:= False;
  SB_COPIA.Enabled:= False;
  SBDel.Enabled:= False;
  SBSalva.Enabled:= False;
  SBCancel.Enabled:= False;
  SBCupom.Enabled:= False;
  SBDiversos.Enabled:= False;
  SB_Editar.Enabled:= False;
  PageControl1.Pages[1].TabVisible:= False;
  PageControl1.Pages[2].TabVisible:= False;
  PageControl1.Pages[3].TabVisible:= False;
  PageControl1.Pages[4].TabVisible:= false;

  {
    Descrição: Exibe/Oculta a aba de Informações do CT-e
    Autor: Vinícius Godinho Del Rio
    Data: 11/03/2015
  }
  PageControl1.Pages[5].TabVisible := False;

  //PageControl1.Pages[INDICE_ABA_CTE].TabVisible:= false;
  BtIncluir.Enabled := False;
  mniSaldoLan.Enabled := False;
end;

procedure TFrmPedVenda.SBSalvaClick(Sender: TObject);
var
  ls_QuerStat, ls_Cache, VFl_StPed: String;
  li_PrazMaxi,li_Loop  : Integer;
  tabFoco : TTabSheet;
  Temp: TComponent;
  lr_ValoPedi,lr_ValoDesc,VPEDIDO,VIPI, Preco_Maximo : Real;
  hr_limite, hr_pedido: TDateTime;
  F: TextFile;
  linha: string;
begin

  //Validamos a Forma de Pagamento
  DBCForPgExit(Self);

  //Forçamos o Exit do componente anterior
  ActiveControl := Nil;

  Timer1.Enabled:= False;
  DBEdit8.Color:=  clteal;
  If QPediVeTitCartorio.Value > 0 then
    Timer1.Enabled := True
  Else
    Timer1.Enabled := False;

  // Não pode validar o Pedido se já estiver com a carga liberada.
  {with QryTemp do
   begin
     Close;
     SQL.Clear;
     SQL.Text :=
        ' select id_pedivend      '+
        '   from ca_pedido_carga  '+
        '  where id_pedivend = :id_pedivend ';
     ParamByName('id_pedivend').AsFloat := QPediVeID_PEDIVEND.Value;
     Open;
     if not IsEmpty then
     begin
       MessageDlg('Este pedido já está em uma carga liberada para expedição;' + #10+#13+
                  'Alteração não permitida ! ', mtInformation,[mbOk], 0, mbOk);
       exit;
     end;
  end;}
  QryPesqTipoPedivend.Close;
  QryPesqTipoPedivend.ParamByName('P_TIPO_PEDIDO_VENDA').Value:= StrToInt(DBTipVen.Text);
  QryPesqTipoPedivend.Open;
  if QryPesqTipoPedivendQTDE.Value >= 1 then
  begin
    if gs_CNPJ2 <> copy(DBEdit30.Text,1,8) then
    begin
      ShowMessage('Não é possível transferir para CNPJ de base diferente.');
      exit;
    end;
  end;

  If ub_PermVend='N' then
  begin
    If cbxConta.KeyValue=8 then
    begin
      ShowMessage('Não é permitido lançar na Conta Caixa, escolha outra Conta e Situação de Cobrança, antes de Salvar.');
      cbxConta.SetFocus;
      exit;
    end;
  end;

  If (cbxConta.Text ='')  then
  begin
    ShowMessage('Escolha uma Conta antes de Salvar.');
    cbxConta.SetFocus;
    exit;
  end;

  //DanieL Gianolla - Solicitação: João Marcelo 12/11/2018
  if (QPediVeID_CONTA.Value = 2) and (gi_IdenUsua = 25) then
  begin
    MessageDlg('Conta não liberada para este usuário!', mtInformation,[mbOk], 0, mbOk);
    Abort;
  end;

  //Daniel Gianolla - Boletos a partir de 7 dias   Solicitação: João Marcelo 24/07/2018
  if ((QPediVeID_CONTA.Value <> 2) and
     ((QPediVeID_FORMPAGA.Value = 55) or (QPediVeID_FORMPAGA.Value = 56))) then
  begin
    Application.MessageBox('Forma de pagamento não disponível para este usuário', 'Comercial Dacar - Pedido de Venda', [ID_OK], smsInformation, ID_OK);
    SB_EditarClick(Sender);
    Abort;
  end;

  //Daniel Gianolla - Conta 8 para usuário Fabio Beneton  Solicitação:Valmor 03/07/2018
  if (QPediVeID_CONTA.Value = 8) and (gi_IdenUsua <> 40) then
  begin
    MessageDlg('Conta não liberada para este usuário!', mtInformation,[mbOk], 0, mbOk);
    Abort;
  end;

  // Se o foco estiver na Guia Detalhes
  If TsDetalhe.Showing then
  begin
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Add('SELECT ID_TIPODOCU FROM PEDIDO_VENDA_TIPO_DOCU_TIPO WHERE ID_TIPODOCU = 18  AND ID_TIPOPEDIVEND =' + QPediVeID_TIPOPEDIVEND.AsString );
    QryTemp.Open;
    if ( QryTemp.FieldByName('ID_TIPODOCU').Value = 18 ) AND ( QPediVeID_LOTE.AsInteger  = 0 ) then
    begin
      MessageDlg( 'O número de Lote é obrigatório para este tipo de pedido. Informe o número do lote . !', mtInformation,[mbOk], 0, mbOk);
      exit;
    end;
    //remover temporariamente
    {if QrTipoPed.FieldByName('FL_CORTEPED').Value = 'S' then
    begin
    //verifica se já expirou a hora para lançar o pedido para corte
    qrytemp.Close;
    qrytemp.sql.clear;
    qryTemp.SQL.Text:= ' select to_char(hr_limiteped,''HH24:MI'') AS hora_limite from sistema_parametro ';
    qrytemp.Open;
    hr_limite:= QryTemp.FieldByName('hora_limite').AsDateTime;

    qrytemp.sql.clear;
    qryTemp.SQL.Text:= ' select to_char(sysdate,''HH24:MI'') AS hora from dual ';
    qrytemp.Open;
    hr_pedido:= QryTemp.FieldByName('hora').AsDateTime;

    if hr_pedido > hr_limite then
      begin
        MessageDlg('A hora para lançamentos de pedidos já expirou.', mtWarning, [mbOk], 0);
        Exit;
      end;
    end;}

    //VERIFICA SE TEM PARAMETRO PARA ESTA DATA
    qrytemp.Close;
    qrytemp.sql.clear;
    qryTemp.SQL.Text :=
        ' SELECT                                 '+
        '        CA_PARAMETRO_COMERCIAL.DT_PARAMETRO   '+
        '  FROM  CA_PARAMETRO_COMERCIAL            '+
        ' WHERE                                  '+
        '        CA_PARAMETRO_COMERCIAL.DT_PARAMETRO = TO_DATE('''+ QPediVe.FieldByName('DT_ENTRPEDIVEND').AsString + ''',''' + 'DD/MM/YYYY' + ''')  ';
    qrytemp.Open;
    if qrytemp.IsEmpty then
      VParamComer:= False
    Else
      VParamComer:= True;

    // Procuramos por vendas neste dia para este cliente se não tiver Direito
    if (VLANCMULT=False) then
    begin
      qryTemp.Close;
      QryTemp.SQL.Clear;
      qryTemp.SQL.Text := '  SELECT ID_PEDIVEND                                                             '+
                          '    FROM PEDIDO_VENDA                                                            '+
                          '   WHERE ID_CLIENTE = ' + QPediVe.FieldByName('ID_CLIENTE').AsString + '         '+
                          '     AND DT_ENTRPEDIVEND = TO_DATE(''' + edtDataEntr.Text + ''',''DD/MM/YYYY'')  ';
      qryTemp.Open;
      // Se houver venda para este dia e cliente
      if not qryTemp.IsEmpty then
      begin
        MessageDlg(' Já existe pedido para este cliente nesta data de entrega. ' + #13 +
                   ' Pedido: ' + qryTemp.FieldByName('ID_PEDIVEND').AsString, mtWarning, [mbOk], 0);
        edtCodiClie.Text:='';
        edtCodiClie.SetFocus;
        exit;
      end;
      qryTemp.Close;
    end;

    DBArmazena.Visible := True;
    //Verificar se existem caracteres não permitidos nos campos memo
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text :=
                    'SELECT                                 ';
    If (DBMemo1.Text <> '') then
      QryTemp.SQL.Add(' ''' + DBMemo1.Text +  ''' ,           ');
    If (DBMemo2.Text <> '') then
      QryTemp.SQL.Add(' ''' + DBMemo2.Text +  ''' ,           ');

    {
      Descrição: O Misael pediu para remover pois aparentemente não está sendo usado, dando lugar a novos campos.
      Autor: Vinícius Godinho Del Rio
      Data: 13/01/2015
    }
    //If (DBMemo3.Text <> '') then
      //QryTemp.SQL.Add(' ''' + DBMemo3.Text +  ''' ,           ');

    QryTemp.SQL.Add('   ID_PEDIVEND                         ');
    QryTemp.SQL.Add('FROM                                   ');
    QryTemp.SQL.Add('   PEDIDO_VENDA                        ');
    QryTemp.SQL.Add('WHERE  ID_PEDIVEND = 1                 ');
    Try
      QryTemp.Open;
    Except
      QryTemp.Close;
      Screen.Cursor := crDefault;
      MessageDlg('Atenção, Existem caracteres não permitidos nos campos de Obs. altere e salve novamente. ', mtInformation,[mbOk], 0, mbOk);
      Exit;
    End;
    QryTemp.Close;


   // Tipo 16 para usuario 50 e vendedor 33
   {If (DBTipVen.Text='16') then
     If (gi_IdenUsua<>50) or (DBCVen.Text <>'33') then
     Begin
       Screen.Cursor := crDefault;
       MessageDlg('Atenção, tipo de pedido 16 permitido somente para vendedor 33 e usuario 50. ', mtInformation,[mbOk], 0, mbOk);
       Exit;
     End;

    If (gi_IdenUsua=50) and (DBCVen.Text = '33')  and (DBRTipoFrete.Value <> 'FOB')then
    Begin
      Screen.Cursor := crDefault;
      MessageDlg('Atenção, tipo de frete deve ser a pagar para vendedor 33. ', mtInformation,[mbOk], 0, mbOk);
      Exit;
    End;}

    If DBTipVen.Text='16' then
    begin
      case gi_IdenUsua of
        424, 530, 59, 462:
          Screen.Cursor := crDefault;
      else
        Screen.Cursor := crDefault;
        MessageDlg('Atenção, tipo de pedido inválido para o usuário atual.', mtInformation,[mbOk], 0, mbOk);
        Exit;
      end;
    end;

    If (VPNF = True) and (DBPlaca.Text = '') Then
    Begin
      Screen.Cursor := crDefault;
      MessageDlg('Atenção, selecione um transportador para Carga de pedido PNF. ', mtInformation,[mbOk], 0, mbOk);
      Btplaca.SetFocus;
      Exit;
    End;

   // Pegamos o percentual máximo de acréscimo ao preço normal de venda
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text :=
     'SELECT PC_MAXIPRECVENDPARASIST               '+
     '  FROM SISTEMA_PARAMETRO                     ';
    QryTemp.Open;
    ur_PercMaxiPrecVend := QryTemp.FieldByName('PC_MAXIPRECVENDPARASIST').AsFloat;

    //Verifica se o tipo de pedido confere com o estado
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text := ' select                        '+
    '           pedido_venda_tipo.id_tipopedivend,     '+
    '           cfop.nr_cfop,                          '+
    '           NVL(FL_CTE,''N'') FL_CTE               '+
    '     from                                         '+
    '           pedido_venda_tipo,                     '+
    '           tipo_oper_pedi_vend_tipo,              '+
    '           operacao_tipo,                         '+
    '           cfop                                   '+
    '     where                                        '+
    '         (pedido_venda_tipo.id_tipopedivend = tipo_oper_pedi_vend_tipo.id_tipopedivend) '+
    '     and (tipo_oper_pedi_vend_tipo.id_tipooper = operacao_tipo.id_tipooper)             '+
    '     and (operacao_tipo.id_cfop = cfop.id_cfop)                                         '+
    '     and  pedido_venda_tipo.id_tipopedivend = ' + DBTipVen.Text;
    QryTemp.Open;

    if ( QryTemp.FieldByName('FL_CTE').AsString <> 'S' ) Then  // Não faz Validação CFOP X Estado para CTE
    begin
      IF (COPY(QryTemp.FieldByName('nr_cfop').AsString,1,1)='7') AND (DBUF.Text <> 'EX') THEN
      Begin
        Screen.Cursor := crDefault;
        MessageDlg('Atenção, selecione um Tipo de Pedido compatível com a localização do Cliente.', mtInformation,[mbOk], 0, mbOk);
        DBTipVen.SetFocus;
        Exit;
      End;

      IF (COPY(QryTemp.FieldByName('nr_cfop').AsString,1,1)='6') AND ((DBUF.Text='SP') OR (DBUF.Text='EX')) THEN
      Begin
        Screen.Cursor := crDefault;
        MessageDlg('Atenção, selecione um Tipo de Pedido compatível com a localização do Cliente.', mtInformation,[mbOk], 0, mbOk);
        DBTipVen.SetFocus;
        Exit;
      End;

      IF (COPY(QryTemp.FieldByName('nr_cfop').AsString,1,1)='5') AND (UpperCase(DBUF.Text) <> 'SP') THEN
      Begin
        Screen.Cursor := crDefault;
        MessageDlg('Atenção, selecione um Tipo de Pedido compatível com a localização do Cliente.', mtInformation,[mbOk], 0, mbOk);
        DBTipVen.SetFocus;
        Exit;
      End;
    End;

    {if (VPNF = False) then
    If (gi_Filial<>5) then
    begin
     // VERIFICAMOS SE O CLIENTE É PESSOA FÍSICA
       IF  VPESSOCLI = 'F' THEN
        Begin
         IF (DBTipVen.Text<>'7') OR (QPediVe.FieldByName('ID_CONTA').AsFloat<>8) THEN
          Begin
           IF (DBTipVen.Text<>'9') OR (QPediVe.FieldByName('ID_CONTA').AsFloat<>174) THEN //(QPediVe.FieldByName('ID_CONTA').AsFloat<>8)
            Begin
             IF (DBTipVen.Text<>'19') then
              Begin
               Screen.Cursor := crDefault;
               MessageDlg(' Quando o Cliente é pessoa Física,' + #13 +
                          ' o Tipo de Pedido tem que ser 7 ou 9 e a Conta tem que ser Caixa.' + #13 +
                          ' Corrija e Salve Novamente.' , mtWarning, [mbOk], 0);
               exit;
              End;
            End;
          End;
        End;
      end;}

   //VERIFICAMOS SE É EXPORTAÇÃO
    IF (DBTipVen.Text='15') THEN
    BEGIN
      IF VPc_Comis>0 THEN
      BEGIN
        QPediVe.FieldByName('cporcomis').AsFloat := VPc_Comis;
        Screen.Cursor := crDefault;
        MessageDlg('A comissão default para esta venda é de '+ FloatToStr(VPc_Comis) + ' %. ' , mtInformation,[mbOk], 0, mbOk);
      END;

      IF  VExporta=FALSE THEN
      BEGIN
        ShowMessage('Operacao cancelada! Verifique se o Vendedor é do Tipo Exportacao, e o Pais do Cliente nao é Brasil, Obrigatorio para tipo de Pedido Exportacao.');
        Exit;
      END;
    END;

   VExporta:=FALSE;
   //Verificamos se é Doação(9) ou Bonificação(17)
   DbCAuto.Enabled := False;
    If (DBTipVen.Text='9') or (DBTipVen.Text='17') or (DBTipVen.Text='32') or (DBTipVen.Text='35') then
    begin
      If DbCAuto.Text = '' then
      begin
        ShowMessage('É obrigatória a escolha de um autorizante para Doações, Bonificações ou remessa para conserto.');
        DbCAuto.Enabled := true;
        DbCAuto.SetFocus;
        exit;
      end;
    end;

    //Se o tipo for 9 ou 17, tem que ser isento de pagto.
    If (DBTipVen.Text='9') or (DBTipVen.Text='17') then
    begin
      If (DBCForPg.Text<>'61') then
      begin
        ShowMessage('Forma de Pagto. ou Situação de Cobrança, incompatíveis com Doação ou Bonificação.');
        exit;
      end;
    end
    Else
    begin
      If (DBCForPg.Text = '61') then
      begin
        ShowMessage('Forma de Pagto. ou Situação de Cobrança, incompatíveis com Tipo de Pedido.');
        exit;
      end;
    end;

    //Verificamos se foi usado um Tipo de pedido não permitido
    IF ub_PermVend='N' THEN
    begin
      //Verifica se o Tipo de pedido gera financeiro.
      qryTemp.Close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Text := ' SELECT                    '+
      '  PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND,        '+
      '  PEDIDO_VENDA_TIPO.NM_TIPOPEDIVEND         '+
      ' FROM                                       '+
      '  PEDIDO_VENDA_TIPO,                        '+
      '  pedido_venda_tipo_docu_tipo               '+
      ' Where  PEDIDO_VENDA_TIPO.id_tipopedivend = pedido_venda_tipo_docu_tipo.id_tipopedivend  '+
      ' AND  NVL(Pedido_venda_tipo.fl_consfinatipopedivend,''S'') = ''S''  '+
      ' AND  PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND= ' + QPediVe.FieldByName('ID_TIPOPEDIVEND').AsString;
      qryTemp.Open;

      If qryTemp.IsEmpty then
      begin
        Screen.Cursor := crDefault;
        MessageDlg('Tipo de Pedido de Venda não Permitido!' + #13 +
        'Não foi possível salvar.', mtWarning, [mbOk], 0);
        qryTemp.Close;

        Exit;
      end;
    end
    Else
    begin
      IF (VNFPOSTERIOR=False) THEN
      BEGIN
        //Verifica se permite NF posterior.
        qryTemp.Close;
        qryTemp.SQL.Clear;
        qryTemp.SQL.Text := ' SELECT                    '+
        '  PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND,        '+
        '  PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU   '+
        ' FROM                                       '+
        '  PEDIDO_VENDA_TIPO,                        '+
        '  PEDIDO_VENDA_TIPO_DOCU_TIPO               '+
        ' Where  PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPOPEDIVEND  '+
        ' AND  PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU = 6  '+
        ' AND  PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND= ' + QPediVe.FieldByName('ID_TIPOPEDIVEND').AsString;

        qryTemp.Open;

        IF  (qryTemp.RecordCount > 0 ) Then
        Begin
          Screen.Cursor := crDefault;
          MessageDlg('Não Permitido Tipo de Pedido para emissão de NF posterior para este Cliente!' + #13 +
          'Não foi possível salvar.', mtWarning, [mbOk], 0);
          qryTemp.Close;
          Exit;
        End;
      End;
      qryTemp.Close;
    end;

   // Flag da operação (Inclusão / Edição / Copia)
    IF QPediVe.State = dsInsert  THEN
      ls_QuerStat := 'I'
    ELSE
      ls_QuerStat := 'E';

    If (VCopia=True) then
      ls_QuerStat := 'C';

    VCopia:=FALSE;

    qryTemp.close;
    qryTemp.sql.clear;
    // Procuramos o máximo de dias permitido de prazo para o cliente
    qryTemp.SQL.Text := ' SELECT MAX(QN_DIASPARCFORMPAGA) QN_MAXIDIAS                              '+
                      '   FROM FORMA_PAGAMENTO_PARCELA,                                          '+
                      '        CLIENTE                                                           '+
                      '   WHERE FORMA_PAGAMENTO_PARCELA.ID_FORMPAGA = CLIENTE.ID_FORMPAGA_LIMITE '+
                      '     AND CLIENTE.ID_CLIENTE = ' + IntToStr(QPediVe['ID_CLIENTE']) + '     ';
    try
      qryTemp.Open;
    except
      Screen.Cursor := crDefault;
      MessageDlg('Erro ao verificar prazo de pagamento máximo do Cliente.' + #13 +
                 'Não foi possível salvar.', mtWarning, [mbOk], 0);
      qryTemp.Close;
      Exit;
    end;

    // Se a query estiver vazia
    If qryTemp.IsEmpty then
    begin
      // Mensagem
      Screen.Cursor := crDefault;
      MessageDlg('Não foi definido um Prazo de Pagamento Máximo para o Cliente.' + #13 +
                 'Não foi possível salvar.', mtWarning, [mbOk], 0);
      qryTemp.Close;

      Exit;
    end
    Else
    begin
      // Guardamos o prazo
      li_PrazMaxi := qryTemp.FieldByName('QN_MAXIDIAS').AsInteger;
    end;

    // Procuramos o máximo de dias do prazo escolhido
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Text := 'SELECT MAX(QN_DIASPARCFORMPAGA) QN_PRAZESCO                                              '+
                      '  FROM FORMA_PAGAMENTO_PARCELA,                                                          '+
                      '       FORMA_PAGAMENTO                                                                   '+
                      ' WHERE FORMA_PAGAMENTO_PARCELA.ID_FORMPAGA = FORMA_PAGAMENTO.ID_FORMPAGA                 '+
                      '   AND FORMA_PAGAMENTO.ID_FORMPAGA = ' + QPediVe.FieldByName('ID_FORMPAGA').AsString + ' ';
    try
      qryTemp.Open;
    except
      Screen.Cursor := crDefault;
      MessageDlg('Erro ao verificar Prazo de Pagamento escolhido.' + #13 +
                 'Não foi possivel salvar.', mtWarning, [mbOk], 0);

      qryTemp.Close;

      Exit;
    end;

    // Se a query estiver vazia
    if qryTemp.IsEmpty then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Forma de Pagamento inconsistente. Contate o administrador do sistema.' + #13 +
      'Não foi possível salvar.', mtWarning, [mbOk], 0);
      qryTemp.Close;
      Exit;
    end
    else
    begin
      // Se prorrogou o prazo por final de semana ou feriado
      if Vprorrogou then
        li_PrazMaxi:= li_PrazMaxi+3;

      Vprorrogou:= False;

      // Se o prazo escolhido for maior que o permitido
      if (qryTemp.FieldByName('QN_PRAZESCO').AsInteger > li_PrazMaxi) then
      begin
        Screen.Cursor := crDefault;
        MessageDlg('Forma de Pagamento escolhida maior que o permitido para o Cliente. Verifique.' + #13 +
        'Maximo de dias Permitido: ' + IntToStr(li_PrazMaxi), mtWarning, [mbOk], 0);

        qryTemp.Close;

        // Foco na forma de pagamento
        DBCForPg.SetFocus;
        Exit;
      end;
    end;

    // <CHC>
    // Verificamos os campos inconsistentes
    // Se o desconto concedido for maior que o padrão e não há recurso de ajuste manual

    if (QPediVe.FieldByName('PC_DESCPEDIVEND').AsFloat > QPediVe.FieldByName('PC_DESCPADRCLIE').AsFloat ) THEN
    // and      (sltRecuJane.IndexOf('AJUSTE MANUAL') = -1) then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Percentual de desconto maior que o padrão para o cliente. Verifique. !', mtWarning, [mbOk], 0);

      DBPCDESC.SETFOCUS;

      Exit;
    end;

    // Verificamos a consistência entre situação de cobrança e tipo de conta
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text :=
    '  SELECT CONTA_TIPO.FL_ASSOBANCTIPOCONT   '+
    '    FROM CONTA,                           '+
    '     CONTA_TIPO                           '+
    '   WHERE ( CONTA_TIPO.ID_TIPOCONT = CONTA.ID_TIPOCONT )            '+
    '     AND ( CONTA.ID_CONTA = ' + FloattoStr(QPediVe.FieldByName('ID_CONTA').AsFloat) + ' )';
    QryTemp.Open;

    // Se o tipo de conta estiver associada a banco e a situação de cobrança não for bancária (2)
    If (QryTemp.FieldByName('FL_ASSOBANCTIPOCONT').AsString = 'S') and (QPediVe['ID_SITUCOBR'] <> 2 ) then
    begin
      // Damos o foco no componente
      DBSitCob.SetFocus;
      ShowMessage('Situação de Cobrança e Conta incompatíveis !' );

      QryTemp.Close;
      Exit;

    end;

    // Se o tipo de conta não estiver associada a banco e a situação de cobrança for bancária (2)
    If (QryTemp.FieldByName('FL_ASSOBANCTIPOCONT').AsString = 'N') and (QPediVe['ID_SITUCOBR'] = 2 ) then
    begin
      DBSitCob.SetFocus;
      SHOWMESSAGE('Situação de Cobrança e Conta incompativeis !' );

      QryTemp.Close;
      Exit;

    end;

    QryTemp.Close;

    // Se estivermos trabalhando com o sistema de validação
    // Ajustamos o status
    QPediVe.FieldByName('FL_STATPEDIVEND').AsString := 'AV';

    //*********Pesquisa Site para verificar IE - Adriana 10/11/2008*****
    if (trim(DB_NR_INSCESTACLIE.Text) <> 'ISENTO') then
    begin
      // Procuramos o permissão consulta
      qryTemp.close;
      QryTemp.sql.clear;
      qryTemp.SQL.Text :=  'SELECT PEDIDO_VENDA_TIPO.FL_CONSULTA_IE FROM PEDIDO_VENDA_TIPO '+
                        ' WHERE (PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = ' + DBTipVen.Text + ')'+
                        ' AND PEDIDO_VENDA_TIPO.FL_CONSULTA_IE = ''S''';
      qryTemp.Open;
      if not qryTemp.IsEmpty then
      begin
        Clipboard.Clear;
        DB_NR_INSCESTACLIE.Field.Text;

        if (DBUF.Text = 'SP') then
        begin
          E_site.Text := FormatFloat('00', gi_Filial) + FormatFloat('0000000000', QPediVeID_CLIENTE.Value) + DBUF.Text+DB_NR_INSCESTACLIE.Field.Text;
          AssignFile(f,'ca_sintegra.txt');
          Rewrite(f); //abre o arquivo para escrita
          Writeln(f,E_site.Text); //escreve no arquivo e desce uma linha
          Closefile(f); //fecha o handle de arquivo
        end;

        //E_site.SelectAll;
        //E_site.CopyToClipboard;
        try
          Application.CreateForm(TFrmsite, Frmsite);
          Frmsite.ShowModal;
        except;
          Frmsite.Free;
        end;

       //E_site.Clear;
       //E_site.PasteFromClipboard;

        //le arquivo ca_sintegra.txt
        AssignFile(f,'ca_sintegra.txt');
        Reset(f); //abre o arquivo para leitura;
        Readln(f,linha); //le do arquivo e desce uma linha. O conteúdo lido é transferido para a variável linha
        E_site.Text:= linha;
        Closefile(f);

        Qrytemp.Close;
        Qrytemp.SQL.Clear;
        Qrytemp.SQL.Text := 'select sysdate from dual ';
        Qrytemp.Open;


        if trim(UpperCase(E_site.Text)) <> trim('HABILITADO') then
        begin
          //If MessageDlg('Confirma bloqueio Cliente - ' + E_site.text +' ?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrYes then
          If MessageDlg('Confirma bloqueio Cliente ?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrYes then
          try
            WITH OSQL DO
            begin
              SQL.Clear;
              SQL.Text :=
              '    update                  '+
              '           cliente          '+
              '       set                  '+
              '   fl_bloqadmiclie =  ''S'' '+
              ' where                  '+
              '       id_cliente =    '+ QPediVe.FieldByName('ID_CLIENTE').AsString;
              Execute;
            end;

            WITH OSQL DO
            begin
              SQL.Clear;
              SQL.Text := 'insert into CLIENTE_BLOQUEIO '+
                         '(EMPRESA,                    '+
                         ' ID_BLOQCLIE,                '+
                         ' FILIAL,                     '+
                         ' ID_CLIENTE,                 '+
                         ' ID_MOTIBLOQ,                '+
                         ' ID_USUASIST,                '+
                         ' FL_TIPOBLOQCLIE,            '+
                         ' FX_BLOQCLIE,                '+
                         ' DT_BLOQCLIE)                '+
                         '  VALUES( ''' + gs_Empresa + ''', '+
                         '    ID_BLOQCLIE.NEXTVAL , '+
                         '    :filial,      '+
                         '    :id_cliente,  '+
                         '    :id_motibloq, '+
                         '    :id_usuasist, '+
                         '    :fl_tipobloqclie, '+
                         '    :fx_BloqClie, '+
                         '    SYSDATE)      ';
              OSQL.ParamByName('FILIAL').AsString := IntToStr(gi_filial);
              OSQL.ParamByName('ID_CLIENTE').AsString := QPediVe.FieldByName('ID_CLIENTE').AsString;
              OSQL.ParamByName('ID_MOTIBLOQ').AsString := '2';
              OSQL.ParamByName('ID_USUASIST').AsString := '2';
              OSQL.ParamByName('FL_TIPOBLOQCLIE').AsString := 'B';
              OSQL.ParamByName('FX_BLOQCLIE').AsString := 'S';
              OSQL.Execute;
            end
          except
            Screen.Cursor := crDefault;
            MessageDlg('Problema em Atualizar Bloqueio Cliente: ' + QPediVe.FieldByName('ID_Cliente').AsString +
                      ', avise o adm. do sistema. ' , mtWarning, [mbOk], 0);
            exit;
          end;

          // Limpamos o código cliente
          QPediVe['ID_CLIENTE'] := 0;
          edtCodiClie.SetFocus;
          Exit;
        end;

        // Alimenta campos para posterior atualização
        QPediVe.FieldByName('DT_CONSULTA_IE').AsDateTime := Qrytemp.FieldByName('sysdate').AsDateTime;
        QPediVe.FieldByName('PR_CONSULTA_IE').AsString := 'OK';
      end;

    end;

    // Se a operação for Inclusão
    If ls_QuerStat = 'I' then
    begin
      // Confirmamos a edição da query principal
      QPediVe.FieldByName('EMPRESA').AsString := gs_Empresa;
      QPediVe.FieldByName('FILIAL').AsInteger := gi_Filial;
      QPediVe.FieldByName('FX_PEDIVEND').AsString := 'N';
      //atualizar o flag de corte se não for passar pelo sistema de corte
      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text := ' SELECT nvl(fl_corteped,''N'') as fl_corteped ' +
                          ' FROM pedido_venda_tipo '+
                          ' WHERE id_tipopedivend = ' + DBTipVen.Text;
      QryTemp.Open;
      if QryTemp.FieldByName('fl_corteped').Value = 'N' then
      begin
        QPediVe.FieldByName('FL_CORTE').AsString := 'X';
        QPediVe.FieldByName('DTHORA_CORTE').Value := QPediVe.FieldByName('DT_DIGIPEDIVEND').Value;
      end;

      QPediVe.Post;
      try
        // Atualizamos o banco
        QPediVe.ApplyUpdates;
        VID_PEDIVEND := QPediVeID_PEDIVEND.Value;

        QPediVe.CommitUpdates;

        //Zeramos as Variaveis de Comissao
        VPc_Comis:=0;
        VPAIS:= 0;
      except
        // Se ocorreu algum erro durante a exclusão dos dados
        If gb_ErroBanc then
        begin
          // Ajustamos a variável
          gb_ErroBanc := False;
        end;

        // Restauramos o registro anterior
        QPediVe.RevertRecord;
        Exit;
      end;

    end
    // Se a operacao for Edição
    Else If ls_QuerStat = 'E' then
    begin
      // Se conseguirmos iniciar uma transação
      try
        // <CHC>
        // Se houve alteração do desconto
        If QPediVe.FieldByName('PC_DESCPEDIVEND').AsFloat <> QPediVe.FieldByName('PC_DESCPEDIVEND').OldValue then
        begin
          // Atualizamos a query dos itens
          qitem.Close;
          QItem.ParamByName('ID_PEDIVEND').AsInteger := QPediVe['ID_PEDIVEND'];
          QItem.Open;

          // Zeramos as variáveis
          lr_ValoPedi := 0;
          lr_ValoDesc := 0;

          VExporta:= False;
          QItem.First;
          // Loop para todos os itens
          while not QItem.Eof do
          begin
            // Editamos o item para ajustar o desconto
            QItem.Edit;
            QItem.FieldByName('PC_DESCITEMPEDIVEND').AsFloat := QPediVe['PC_DESCPEDIVEND'];

            // Ajustamos o total do item
            AjustTotalItem(Self);

            // Acumulamos o valor do pedido
            lr_ValoPedi := lr_ValoPedi + QItem['VL_TOTAITEMPEDIVEND'];

            // Acumulamos o valor do desconto
            lr_ValoDesc := lr_ValoDesc + (STRTOFLOAT(edtQtdeEmba.TEXT)*
                                          STRTOFLOAT(edtPesoPadr.TEXT) *
                                          STRTOFLOAT(edtPrecUnitBrut.TEXT)) - QItem['VL_TOTAITEMPEDIVEND'];

            // Gravamos
            QItem.Post;

            // Próximo registro
            QItem.Next;
          end;

         // Ajustamos o status do pedido
          QPediVe.Edit;
          QPediVe.FieldByName('FL_STATPEDIVEND').AsString := 'AV';

          // Ajustamos o valor do pedido
          QPediVe.FieldByName('VL_PEDIVEND').AsFloat := lr_ValoPedi;

          // Ajustamos o valor do desconto
          QPediVe.FieldByName('VL_DESCPEDIVEND').AsFloat := lr_ValoDesc;

          QPediVe.Post;

        end;

        if QPediVe.FieldByName('ID_TIPOPEDIVEND').AsFloat <> QPediVe.FieldByName('ID_TIPOPEDIVEND').OldValue then
        begin
          //atualizar o flag de corte se não for passar pelo sistema de corte
          QryTemp.Close;
          QryTemp.SQL.Clear;
          QryTemp.SQL.Text := ' SELECT nvl(pedido_venda_tipo.fl_corteped,''N'') as fl_corteped '+
                              ' FROM pedido_venda, pedido_venda_tipo '+
                              ' WHERE (pedido_venda.id_tipopedivend = pedido_venda_tipo.id_tipopedivend) '+
                              ' AND pedido_venda.id_pedivend = ' + IntToStr(QPediVe['ID_PEDIVEND']);
          QryTemp.Open;
          QPediVe.Edit;
          if QryTemp.FieldByName('fl_corteped').Value = 'N' then
            begin
              QPediVe.FieldByName('FL_CORTE').AsString := 'X';
              QPediVe.FieldByName('DTHORA_CORTE').Value := QPediVe.FieldByName('DT_DIGIPEDIVEND').Value;
            end
          else
            QPediVe.FieldByName('FL_CORTE').AsString := '';

          QPediVe.Post;
        end;

        // Atualizamos o banco
        QItem.ApplyUpdates;
        QPediVe.ApplyUpdates;

        // Limpamos o cache
        QItem.CommitUpdates;
        QPediVe.CommitUpdates;

      except
        // Se ocorreu algum erro durante a alteração dos dados
        If gb_ErroBanc then
        begin
          // Ajustamos a variável
          gb_ErroBanc := False;
        end;

        qITEM.RevertRecord;

      end;

    end
    Else If ls_QuerStat = 'C' then
    Begin
     //Confirmamos a edição da query principal
      QPediVe.FieldByName('EMPRESA').AsString := gs_Empresa;
      QPediVe.FieldByName('FILIAL').AsInteger := gi_Filial;
      QPediVe.FieldByName('FX_PEDIVEND').AsString := 'N';

      QPediVe.Post;
      try
        // Atualizamos o banco
        QPediVe.ApplyUpdates;
        QPediVe.CommitUpdates;

        //Zeramos as Variaveis de Comissao
        VPc_Comis:=0;
        VPAIS:= 0;

        QryTemp.Close;
        QryTemp.SQL.Clear;
        QryTemp.SQL.Text := 'SELECT Pedido_venda_item.EMPRESA,   '+
            '    Pedido_venda_item.FILIAL,                               '+
            '    Pedido_venda_item.ID_ITEMPEDIVEND,                      '+
            '    Pedido_venda_item.ID_PEDIVEND,                          '+
            '    Pedido_venda_item.ID_MATERIAL,                           '+
            '    Pedido_venda_item.ID_EMBALAGEM,                            '+
            '    Pedido_venda_item.ID_MATEEMBA,                               '+
            '    Pedido_venda_item.ID_TIPOOPER,                                 '+
            '    Pedido_venda_item.VL_UNITITEMPEDIVEND,                           '+
            '    Pedido_venda_item.QN_EMBAITEMPEDIVEND,                             '+
            '    Pedido_venda_item.QN_PESOITEMPEDIVEND,                               '+
            '    (Pedido_venda_item.QN_PESOITEMPEDIVEND *                               '+
            '     Pedido_venda_item.VL_UNITITEMPEDIVEND) VL_TOTAITEMPEDIVEND,             '+
            '    DECODE(NVL(Pedido_venda_item.QN_EMBAITEMPEDIVEND,0), 0, 0,                 '+
            '              (Pedido_venda_item.QN_PESOITEMPEDIVEND /                           '+
            '               Pedido_venda_item.QN_EMBAITEMPEDIVEND)) QN_PESOPADRITEMPEDIVEND,  '+
            '    Pedido_venda_item.QN_TARAITEMPEDIVEND,                                        '+
            '    Pedido_venda_item.QN_EMBAEXPEITEMPEDIVEND,                                    '+
            '    Pedido_venda_item.QN_PESOPADREXPEITEMPEDIVEND,                               '+
            '    Pedido_venda_item.QN_TARAREALEXPEITEMPEDIVEND,                              '+
            '    Pedido_venda_item.QN_PESOREALEXPEITEMPEDIVEND,                             '+
            '    Pedido_venda_item.QN_CAIXCORTITEMPEDIVEND,                                 '+
            '    Pedido_venda_item.VL_UNITBRUTITEMPEDIVEND,                                 '+
            '    Pedido_venda_item.PC_DESCITEMPEDIVEND ,                                    '+
            '    Pedido_venda_item.Fx_Itempedivend,                                         '+
            '    (Pedido_venda_item.QN_PESOITEMPEDIVEND *                                   '+
            '     Pedido_venda_item.VL_UNITBRUTITEMPEDIVEND) VL_TOTABRUTITEMPEDIVEND,       '+
            '    Material_embalagem.ID_PRODMATEEMBA,                                        '+
            '    Material_embalagem.NM_PRODMATEEMBA,                                        '+
            '    Embalagem.NM_EMBALAGEM,                                                    '+
            '    Embalagem.QN_TARAEMBA                                                      '+
            '  FROM PEDIDO_VENDA_ITEM Pedido_venda_item,                                    '+
            '       MATERIAL_EMBALAGEM Material_embalagem,                                  '+
            '       EMBALAGEM Embalagem                                                     '+
            '  WHERE (Pedido_venda_item.ID_MATEEMBA = Material_embalagem.ID_MATEEMBA)       '+
            '   AND (Material_embalagem.ID_EMBALAGEM = Embalagem.ID_EMBALAGEM)              '+
            '   AND (Pedido_venda_item.ID_PEDIVEND = ' + FloatToStr(VID_PEDIVEND) + ' )';

        QryTemp.Open;
        QryTemp.First;
        Qitem.open;

        While not QryTemp.Eof do
        begin
          QItem.Insert;
          qitem['EMPRESA'] := QryTemp.fieldbyname('EMPRESA').AsString;
          qitem['FILIAL'] := QryTemp.fieldbyname('FILIAL').AsInteger;
          //  qitem['ID_ITEMPEDIVEND'] := QryTemp.fieldbyname('ID_ITEMPEDIVEND').AsFloat;
          qitem['ID_PEDIVEND'] := QPediVeID_PEDIVEND.Value;
          qitem['ID_MATERIAL'] := QryTemp.fieldbyname('ID_MATERIAL').AsFloat;
          qitem['ID_EMBALAGEM'] := QryTemp.fieldbyname('ID_EMBALAGEM').AsFloat;
          qitem['ID_MATEEMBA'] := QryTemp.fieldbyname('ID_MATEEMBA').AsFloat;
          qitem['ID_TIPOOPER'] := QryTemp.fieldbyname('ID_TIPOOPER').AsFloat;


          if ( VPNF ) then
          begin
            // Pegamos o preço da tabela
            If (edtDesc.text = '0')  or (edtDesc.text = '') then
              QItem['VL_UNITBRUTITEMPEDIVEND'] := QryTemp.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsFloat
            else
              QItem['VL_UNITBRUTITEMPEDIVEND'] := RoundNExtend( (QryTemp.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsFloat  * (1 + (QItemPC_DESCITEMPEDIVEND.Value) / 100)), 2);

            QItem['VL_UNITITEMPEDIVEND'] := (QryTemp.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsFloat)  * (1 - (QPediVeVL_DESCPEDIVEND.Value) / 100);

            // Ajustamos o valor total do item
            QItem['VL_TOTAITEMPEDIVEND'] := (QryTemp.fieldbyname('QN_EMBAITEMPEDIVEND').AsFloat * QryTemp.fieldbyname('QN_PESOITEMPEDIVEND').AsFloat) * ((QryTemp.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsFloat)  * (1 - (QPediVeVL_DESCPEDIVEND.Value) / 100));

          end
          else
          begin
            // Procuramos o preço
            qrPrec.Close;
            qrPrec.ParamByName('ID_CLIENTE').AsInteger := strtoInt(DBCLI.text);
            qrPrec.ParamByName('ID_MATEEMBA').AsInteger := QryTemp.fieldbyname('ID_MATEEMBA').AsInteger;
            qrPrec.Open;

            // Se não encontramos o preço
            If qrPrec.IsEmpty then
            begin
              Screen.Cursor := crDefault;
              MessageDlg('Preço não encontrado para o produto: '+QryTemp.fieldbyname('ID_PRODMATEEMBA').AsString+' Verifique a Tabela de Preços associada ' +
                         'ao Cliente e o preço do produto para esta tabela.', mtWarning, [mbOk], 0);

              QItem['ID_PRODMATEEMBA'] := '';

              // Voltamos o foco para o código
              DBCodMatEmba.SetFocus;
              Exit;
            end;

            //Verificamos se o Produto esta ativo ou não na Tabela de Preços
            If qrPrec.FieldByName('FL_ATIVITEMTABEPREC').AsString = 'N' then
            begin
              Screen.Cursor := crDefault;
              MessageDlg('Produto indisdiponível à venda, para esta Tabela de Preço', mtWarning, [mbOk], 0);
              Screen.Cursor := crSQLWait;
            end;


            // Pegamos o preço da tabela
            If (edtDesc.text = '0')  or (edtDesc.text = '') then
              QItem['VL_UNITBRUTITEMPEDIVEND'] := qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat
            else
              QItem['VL_UNITBRUTITEMPEDIVEND'] := RoundNExtend( (qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat  * (1 + (QItemPC_DESCITEMPEDIVEND.Value) / 100)), 2);

            QItem['VL_UNITITEMPEDIVEND'] := (qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat)  * (1 - (QPediVeVL_DESCPEDIVEND.Value) / 100);

            // Ajustamos o valor total do item
            QItem['VL_TOTAITEMPEDIVEND'] := (QryTemp.fieldbyname('QN_EMBAITEMPEDIVEND').AsFloat * QryTemp.fieldbyname('QN_PESOITEMPEDIVEND').AsFloat) * ((qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat)  * (1 - (QPediVeVL_DESCPEDIVEND.Value) / 100));

          end;

          //  qitem['VL_UNITITEMPEDIVEND'] = QryTemp.fieldbyname('VL_UNITITEMPEDIVEND').AsFloat;
          qitem['QN_EMBAITEMPEDIVEND'] := QryTemp.fieldbyname('QN_EMBAITEMPEDIVEND').AsFloat;
          qitem['QN_PESOITEMPEDIVEND'] := QryTemp.fieldbyname('QN_PESOITEMPEDIVEND').AsFloat;
          qitem['QN_TARAITEMPEDIVEND'] := QryTemp.fieldbyname('QN_TARAITEMPEDIVEND').AsFloat;
          qitem['QN_EMBAEXPEITEMPEDIVEND'] := 0;
          qitem['QN_PESOPADREXPEITEMPEDIVEND'] := 0;
          qitem['QN_TARAREALEXPEITEMPEDIVEND'] := 0;
          qitem['QN_PESOREALEXPEITEMPEDIVEND'] := 0;
          qitem['QN_CAIXCORTITEMPEDIVEND'] := 0;
          //   qitem['VL_UNITBRUTITEMPEDIVEND'] = QryTemp.fieldbyname('VL_UNITBRUTITEMPEDIVEND').AsFloat;
          qitem['PC_DESCITEMPEDIVEND'] := QryTemp.fieldbyname('PC_DESCITEMPEDIVEND').AsFloat;
          qitem['FX_ITEMPEDIVEND'] := QryTemp.fieldbyname('FX_ITEMPEDIVEND').AsString;
          QItem.Post;
          QItem.ApplyUpdates;
          QItem.CommitUpdates;
          QryTemp.Next;
        end;

        QPediVe.Edit;
        // Ajustamos o Status
        QPediVe.FieldByName('FL_STATPEDIVEND').AsString := 'AV';
        // Calculamos o valor total do pedido
        QryTemp.close;
        Qrytemp.Sql.clear;
        QryTemp.SQL.Text := 'SELECT round (SUM( (VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND) - NVL(VL_DESCITEM,0) ),2) VL_PEDIVEND '+
                            '  FROM PEDIDO_VENDA_ITEM                                          '+
                            ' WHERE ID_PEDIVEND = ' + IntToStr(QPediVe['ID_PEDIVEND']) + '     ';
        QryTemp.Open;

        QPediVe.FieldByName('VL_PEDIVEND').AsFloat := qryTemp.FieldByName('VL_PEDIVEND').AsFloat;

        // Calculamos o valor total do desconto
        QryTemp.Close;
        QryTemp.SQL.Text := 'SELECT round (SUM(VL_UNITBRUTITEMPEDIVEND * QN_PESOITEMPEDIVEND) -           '+
                            '       SUM(VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND),2) VL_DESCPEDIVEND '+
                            '  FROM PEDIDO_VENDA_ITEM                                              '+
                            ' WHERE ID_PEDIVEND = ' + IntToStr(QPediVe['ID_PEDIVEND']) + '         ';
        QryTemp.Open;

        // Ajustamos o valor do desconto
        QPediVe.FieldByName('VL_DESCPEDIVEND').AsFloat := qryTemp.FieldByName('VL_DESCPEDIVEND').AsFloat;

        QryTemp.Close;


        QPediVe.Post;
        // Atualizamos o banco
        QPediVe.ApplyUpdates;
        QPediVe.CommitUpdates;

      except
        // Se ocorreu algum erro durante a exclusão dos dados
        If gb_ErroBanc then
        begin
          // Ajustamos a variável
          gb_ErroBanc := False;
        end;
        // Restauramos o registro anterior
        QPediVe.RevertRecord;
        Exit;
      end;

    End;
    // ******* Detalhe é aqui
    SB_PRIMEIRO.Enabled:= False;
    SB_ANTERIOR.Enabled:= False;
    SB_PROXIMO.Enabled:= False;
    SB_ULTIMO.Enabled:= False;
    SBNovo.Enabled:= False;
    SBDel.Enabled:= False;
    SB_COPIA.Enabled:= False;
    SBSalva.Enabled:= TRUE;
    SBCancel.Enabled:= TRUE;
    SBCupom.Enabled:= True;
    SBDiversos.Enabled:= False;
    Sb_Sair.Enabled:= False;
    PageControl1.Pages[0].TabVisible:= False;
    PageControl1.Pages[1].TabVisible:= False;
    PageControl1.Pages[2].TabVisible:= False;
    DBCodCidEntre.Enabled := False;

    PageControl1.Pages[3].Enabled := True;
    PageControl1.Pages[3].TabVisible := True;
    PageControl1.Pages[3].Show;
    PageControl1.Pages[4].TabVisible:= False;
    PageControl1.Pages[5].TabVisible := False;

    DBCodMatEmba.Enabled   := TRUE;
    edtQtdeEmba.Enabled    := TRUE;
    edtPrecUnitBrut.Enabled:= TRUE;
    Btmaterial.Enabled     := TRUE;
    //FECHAMOS A QUERY DE PEDIDOS DE ARMAZENAGEM
    QrPedArm.Close;

    DBPEDIVEND.Text := FloatToStr(VID_PEDIVEND);
    DBEmbaCort.Text := '0';
    DBCodMatEmba.SetFocus;
    VItemInclui:= 'S';
    QItem.Close;
    QItem.ParamByName('ID_PEDIVEND').AsFloat := QPediVeID_PEDIVEND.Value;
    QItem.Open;
    If (gi_filial<>4) and (VDPNF = false) then
    BEGIN
      CBIPICMS.Enabled := False;
      edtIPI.Enabled := false;
    END;
    If (ls_QuerStat <> 'C') then
    begin
      QItem.Insert;
      //TRANSFERE O DESCONTO DO ITEM
      QItem.FieldByName('PC_DESCITEMPEDIVEND').AsFloat:= QPediVe.FieldByName('PC_DESCPEDIVEND').AsFloat;
    end
    else
    begin
      mniValidar.Enabled := True;
      SBNovo.Enabled := True;
      SBDel.Enabled :=  True;
      SB_COPIA.Enabled := True;
      SBDiversos.Enabled := True;
      SBSalva.Enabled := False;
      SBCancel.Enabled := False;
      SBCupom.Enabled:= False;
      Sb_Sair.Enabled := False;
    end;

    {
      Descrição: Trazendo os dados para as informações do CT-e
      Autor: Vinícius Godinho Del Rio
      Data: 20/03/2015
    }
    if (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S') then
    begin
      AbreQueryComParametro(QryPedidoVenda, 'ID_PEDIVEND', QPediVeID_PEDIVEND.Value);
      AbreQueryComParametro(QryCTECompServ, 'ID_PEDIVEND', QPediVeID_PEDIVEND.Value);
    end;
  end
  // Se o foco estiver na query de Itens
  else  if TSItem.Showing then
  begin

    // para PNF nao olha Estoque //ESTOCADO
    If (VPNF = False) Then
    begin
      with QryTemp do
      begin
        Close;
        SQL.Clear;
        SQL.Text :=
         ' SELECT MC.FL_PRODUZ FROM MATERIAL_EMBALAGEM_COMPLEMENTO MC WHERE MC.ID_PRODMATEEMBA = :ID_ITEM';
        ParamByName('ID_ITEM').AsString := QItemID_PRODMATEEMBA.AsString;
        Open;
        if QryTemp.FieldByName('FL_PRODUZ').AsString  = 'S' then
        begin
          // nao possui qtde para ser vendida
          if StrToInt(qryQtdDisponivel.FieldByName('KG_ESTOQUE_ATUAL').AsString) < 0 then
          begin
            pnlQtdDisponivel.Color := clRed;
            Application.MessageBox('Item não possui quantidade Disponível para Venda.', 'Dacar Vendas - Inclusão de Itens no Pedido', [ID_OK], smsWarning, ID_OK);
            Exit;
          end;

          // qtde solicitada maior que a qtde disponivel
          if QItemQN_EMBAITEMPEDIVEND.AsInteger > StrToInt(qryQtdDisponivel.FieldByName('KG_ESTOQUE_ATUAL').AsString) then
          begin
            Application.MessageBox('Quantidade solicitada excede Quantidade Disponível para Venda.', 'Dacar Vendas - Inclusão de Itens no Pedido', [ID_OK], smsWarning, ID_OK);
            Exit;
          end;
        end;
      end;
    end;

    //verifica se o pedido já está em alguma carga AB.
    with QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
       ' select id_pedivend      '+
       '   from ca_pedido_carga  '+
       '  where id_pedivend = :id_pedivend ';
      ParamByName('id_pedivend').AsFloat := QPediVeID_PEDIVEND.Value;
      Open;
      if not IsEmpty then
      begin
        MessageDlg('Este pedido já está em uma carga;' + #10+#13+
                   'Alteração não permitida ! ', mtInformation,[mbOk], 0, mbOk);
        exit;
      end;
    end;

    PageControl1.Pages[0].TabVisible := false;
    PageControl1.Pages[1].TabVisible := false;
    PageControl1.Pages[2].TabVisible := false;

    mniValidar.Enabled := TRUE;

    PageControl1.Pages[3].Enabled := true;
    PageControl1.Pages[3].TabVisible := true;
    PageControl1.Pages[4].TabVisible := False;
    PageControl1.Pages[5].TabVisible := False;

    // Ajustamos o total do item
    AjustTotalItem(Self);

    // Flag da operação (Inclusão / Exclusão)
    IF QItem.State = dsInsert  THEN
      ls_QuerStat := 'I'
    ELSE
      ls_QuerStat := 'E';

    // Se o produto não foi escolhido
    If (DBCodMatEmba.Text='') then
    begin
      DBCodMatEmba.SetFocus;
      SHOWMESSAGE('O campo código de material necessita ser preenchido !' );
      Exit;
    end;

   edtQtdeEmbaExit(self);

    if (VPNF = True) then
    begin
      if StrToFloat(edtValoTota.text) = 0 then
      begin
        if MessageDlg('Valor total do item zerado, continua ?',mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrNo then
        begin
          edtPrecUnitBrut.SetFocus;
          exit;
        end;
      end;
    end;

    //so verifica o preço se não for pnf
    if (VPNF = False) then
    begin
      // Atualizamos o preço
      qrPrec.Close;
      qrPrec.ParamByName('ID_CLIENTE').AsInteger :=  QPediVe['ID_CLIENTE'];
      qrPrec.ParamByName('ID_MATEEMBA').AsInteger := QItem['ID_MATEEMBA'];
      qrPrec.Open;

      // Verificamos se  preço está dentro do mínimo
      If ((strtofloat(edtPrecUnitBrut.Text)+0.001) < (qrPrec.FieldByName('VL_MINIITEMTABEPREC').AsFloat))
      // and (QrTipoPed.FieldByName('FL_CORTEPED').Value = 'N')   28/09/2017 - Retirada verificação do corte
      then
      begin
        Screen.Cursor := crDefault;
        MessageDlg('O preço mínimo para este produto é de ' +
                   FloattoStr(qrPrec.FieldByName('VL_MINIITEMTABEPREC').AsFloat),mtWarning, [mbOk], 0);

        edtPrecUnitBrut.SetFocus;
        Exit;
      end;

      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text :=
       'SELECT PC_MAXIPRECVENDPARASIST               '+
       '  FROM SISTEMA_PARAMETRO                     ';
      QryTemp.Open;

      // Pegamos o percentual máximo de acréscimo ao preço normal de venda
      ur_PercMaxiPrecVend := QryTemp.FieldByName('PC_MAXIPRECVENDPARASIST').AsFloat;

      QryTemp.Close;

      // Verificamos se o preço está muito alto
      If (strtofloat(edtPrecUnit.Text)) >
      ((qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat + (strtofloat(edtPrecUnit.text) * ur_PercMaxiPrecVend / 100))) then
      begin
        Preco_Maximo  := ArredondaDecimal( (qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat / ((100 - ur_PercMaxiPrecVend )/100)) ,4) ;

        Screen.Cursor := crDefault;
        MessageDlg('O preço máximo para este produto é de ' +
                 FormatFloat( '0.0000', Preco_Maximo ),mtWarning, [mbOk], 0);
        edtPrecUnitBrut.SetFocus;
        Exit;
        // Pedimos confirmação
        {If MessageDlg('Confirma preço acima do recomendável ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
        edtPrecUnitBrut.SetFocus;
        Exit;
        end}
      end;

    // Verificamos o valor total do item
      If StrToFloat(edtValoTota.text) = 0 then
      begin
        // Mensagem
        Screen.Cursor := crDefault;
        MessageDlg('Não pode haver venda com valor zero.', mtWarning, [mbOk], 0);
        edtPrecUnitBrut.SetFocus;
        Exit;
      end;

      If VPERIPI = 0 then
      begin
        // Verificamos o valor Unitario e bruto são diferentes, se não tem desconto
        If (edtDesc.text = '0')  or (edtDesc.text = '') then
        begin
          If QItem['VL_UNITITEMPEDIVEND'] <> QItem['VL_UNITBRUTITEMPEDIVEND'] then
          begin
            Screen.Cursor := crDefault;
            MessageDlg('Verifique se o Valor Unitário está correto.', mtWarning, [mbOk], 0);
            // Ajustamos o foco
            edtPrecUnitBrut.SetFocus;
            Exit;
          end;
        end;
      end;

      If ls_QuerStat = 'I' then
      begin
        // <CHC>
        // Se houver necessidade de mais alguma validação
        qryTemp.close;
        qrytemp.sql.clear;
        qryTemp.SQL.Text :=
        'SELECT ID_MATEEMBA                                                        '+
        '  FROM PEDIDO_VENDA_ITEM                                                  '+
        ' WHERE (ID_PEDIVEND = ' + QPediVe.FieldByName('ID_PEDIVEND').AsString + ')'+
        '   AND (ID_MATEEMBA = ' + qitem.FieldByName('ID_MATEEMBA').AsString + ')';
        qryTemp.Open;

        If not qryTemp.IsEmpty then
        begin
          Screen.Cursor := crDefault;
          MessageDlg('Produto já cadastrado para o pedido.', mtWarning, [mbOk], 0);

          QryTemp.Close;
          DBCodMatEmba.setfocus;
          Exit;
        end;

        qryTemp.Close;

        if VParamComer then
        begin
          // Verificar se o preço está dentro do limite do parametro de vendas.
          qrytemp.sql.clear;
          qryTemp.SQL.Text :=
          ' SELECT                                                              '+
          '  PEDIDO_VENDA.DT_ENTRPEDIVEND,                                      '+
          '  MATERIAL_EMBALAGEM.ID_PRODMATEEMBA,                                '+
          '  MATERIAL_EMBALAGEM.NM_PRODMATEEMBA,                                '+
          '  CA_PARAMETRO_COMERCIAL_ITEM.VL_COTA,                               '+
          '  CA_PARAMETRO_COMERCIAL_ITEM.VL_PM,                                 '+
          '  CA_PARAMETRO_COMERCIAL_ITEM.QN_COTA,                               '+
          '  CA_PARAMETRO_COMERCIAL.GN_PLACVEICTRAN,                           '+
          '  CA_PARAMETRO_COMERCIAL.ID_VENDEDOR,                               '+
          '  CA_PARAMETRO_COMERCIAL.FL_TRAVAQN,                                '+
          '  CA_PARAMETRO_COMERCIAL.FL_TRAVAKG,                                '+
          '  SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND) PESO_ITEM,             '+
          '  SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND*PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND) VL_ITEM,     '+
          '  (CASE WHEN SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND)=0 THEN 0 ELSE (SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND*PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND)/SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND)) END) PR_MED,  '+
          '  (CA_PARAMETRO_COMERCIAL_ITEM.QN_COTA-SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND)) SALDO_KG, '+
          '  (CA_PARAMETRO_COMERCIAL_ITEM.VL_COTA - SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND*PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND)) SALDO_VL, '+
          '  (CASE WHEN ((CA_PARAMETRO_COMERCIAL_ITEM.QN_COTA-SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND))<0)                                    '+
          '   THEN CA_PARAMETRO_COMERCIAL_ITEM.VL_PM ELSE (CASE WHEN (CA_PARAMETRO_COMERCIAL_ITEM.QN_COTA-SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND))=0 '+
          '   THEN CA_PARAMETRO_COMERCIAL_ITEM.VL_PM ELSE ((CA_PARAMETRO_COMERCIAL_ITEM.VL_COTA - SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND*PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND))/ '+
          '  (CA_PARAMETRO_COMERCIAL_ITEM.QN_COTA-SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND))) END) END) PR_MIN  '+
          ' FROM                                           '+
          '  PEDIDO_VENDA_ITEM,                             '+
          '  PEDIDO_VENDA,                                    '+
          '  MATERIAL_EMBALAGEM,                                 '+
          '  CA_PARAMETRO_COMERCIAL,                                '+
          '  CA_PARAMETRO_COMERCIAL_ITEM,                             '+
          '  VENDEDOR                                                   '+
          ' WHERE                                                          '+
          '  (PEDIDO_VENDA.ID_PEDIVEND = PEDIDO_VENDA_ITEM.ID_PEDIVEND) AND  '+
          '  MATERIAL_EMBALAGEM.ID_MATEEMBA = PEDIDO_VENDA_ITEM.ID_MATEEMBA AND  '+
          '  CA_PARAMETRO_COMERCIAL_ITEM.ID_PARAMETRO = CA_PARAMETRO_COMERCIAL.ID_PARAMETRO AND     '+
          '  CA_PARAMETRO_COMERCIAL.ID_VENDEDOR = PEDIDO_VENDA.ID_VENDEDOR AND  '+
          '  PEDIDO_VENDA.DT_ENTRPEDIVEND = CA_PARAMETRO_COMERCIAL.DT_PARAMETRO AND                 '+
          '  MATERIAL_EMBALAGEM.ID_PRODMATEEMBA = CA_PARAMETRO_COMERCIAL_ITEM.ID_PRODMATEEMBA AND   '+
          '  VENDEDOR.ID_VENDEDOR = PEDIDO_VENDA.ID_VENDEDOR AND                        '+
          '  CA_PARAMETRO_COMERCIAL.ID_VENDEDOR = '+ QPediVe.FieldByName('ID_VENDEDOR').AsString +' AND      '+
          '  CA_PARAMETRO_COMERCIAL.DT_PARAMETRO = TO_DATE('''+ QPediVe.FieldByName('DT_ENTRPEDIVEND').AsString + ''',''' + 'DD/MM/YYYY' + ''')  AND   '+
          '  PEDIDO_VENDA_ITEM.ID_MATEEMBA = '+ Qitem.FieldByName('ID_MATEEMBA').AsString +'       '+
          ' GROUP BY                                                                  '+
          '  PEDIDO_VENDA.DT_ENTRPEDIVEND,                                          '+
          '  MATERIAL_EMBALAGEM.ID_PRODMATEEMBA,                                   '+
          '  MATERIAL_EMBALAGEM.NM_PRODMATEEMBA,                                  '+
          '  CA_PARAMETRO_COMERCIAL_ITEM.VL_COTA,                              '+
          '  CA_PARAMETRO_COMERCIAL_ITEM.VL_PM,                              '+
          '  CA_PARAMETRO_COMERCIAL_ITEM.QN_COTA,                           '+
          '  CA_PARAMETRO_COMERCIAL.GN_PLACVEICTRAN,                       '+
          '  CA_PARAMETRO_COMERCIAL.ID_VENDEDOR,                         '+
          '  VENDEDOR.NM_VENDEDOR,                                     '+
          '  CA_PARAMETRO_COMERCIAL.FL_TRAVAKG,                     '+
          '  CA_PARAMETRO_COMERCIAL.FL_TRAVAQN              ';

          qrytemp.Open;
          //SE TRAVA KG
          IF (qrytemp.FieldByName('FL_TRAVAKG').AsString = 'S') THEN
          BEGIN
            IF ( (QryTemp.FieldByName('SALDO_KG').AsFloat-(qItem['QN_PESOPADRITEMPEDIVEND'] * StrToFloat(edtQtdeEmba.Text))) < 0 ) THEN
            BEGIN
             Screen.Cursor := crDefault;
             MessageDlg('O peso do produto '+qrytemp.FieldByName('NM_PRODMATEEMBA').AsString+' , estourou a cota estipulada de '+FloatToStrF(QryTemp.FieldByName('QN_COTA').AsFloat,ffNumber,15,3)+' Kg.',mtInformation,[mbOk], 0, mbOk);
             exit;
            END;
          END;

          //SE TRAVA PRECO
          IF (qrytemp.FieldByName('FL_TRAVAQN').AsString = 'S') THEN
          BEGIN
            If (FloatToStrF(StrToFloat(edtPrecUnit.Text),ffNumber,15,3) < FloatToStrF(QryTemp.FieldByName('PR_MIN').AsFloat,ffNumber,15,3)) then
            begin
             Screen.Cursor := crDefault;
             MessageDlg('O preço do produto '+qrytemp.FieldByName('NM_PRODMATEEMBA').AsString+' , deve ser maior ou igual a '+ FloatToStrF(QryTemp.FieldByName('PR_MIN').AsFloat,ffNumber,15,3)+', para atender a cota estipulada.',mtInformation,[mbOk], 0, mbOk);
             exit;
            end;
          END;
          //VERIFICA SE O LANÇAMENTO ESTA DE ACORDO COM O PRECO MINIMO
          If QryTemp.FieldByName('PR_MIN').AsFloat>0 then
          begin
            If ( FloatToStrF(StrToFloat(edtPrecUnit.Text),ffNumber,15,3) < FloatToStrF(QryTemp.FieldByName('PR_MIN').AsFloat,ffNumber,15,3) ) then
            begin
              Screen.Cursor := crDefault;
              if MessageDlg('O preço do '+qrytemp.FieldByName('NM_PRODMATEEMBA').AsString+', deve ser maior ou igual a '+ FloatToStrF(QryTemp.FieldByName('PR_MIN').AsFloat,ffNumber,15,3)+', para atender a cota estipulada. Cancela a gravação?',
                 mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
               begin
                 exit;
               end;
            end;
          end;
        end; //param comer
       // ate aqui pnf
      end;
      // Se houver necessidade de alguma atribuição de valores no ato da inclusao
      qItem['ID_PEDIVEND'] :=  QPediVe['ID_PEDIVEND'];
      qItem['QN_PESOITEMPEDIVEND'] := qItem['QN_PESOPADRITEMPEDIVEND'] *
                                      strtofloat(edtQtdeEmba.Text);

      qItem['QN_TARAITEMPEDIVEND'] :=  strtofloat(edtQtdeEmba.Text) * qItem['QN_TARAEMBA'];
      qItem['QN_EMBAEXPEITEMPEDIVEND'] := 0;
      qItem['QN_PESOPADREXPEITEMPEDIVEND'] := 0;
      qItem['QN_TARAREALEXPEITEMPEDIVEND'] := 0;
      qItem['QN_PESOREALEXPEITEMPEDIVEND'] := 0;
      qItem['QN_CAIXCORTITEMPEDIVEND'] := 0;
      qItem['fx_itempedivend'] := 'N';
    end;

    QItem['QN_PESOITEMPEDIVEND'] := QItem['QN_PESOPADRITEMPEDIVEND'] *
                                      strtofloat(edtQtdeEmba.Text);
    QItem['QN_TARAITEMPEDIVEND'] :=  strtofloat(edtQtdeEmba.Text) * qItem['QN_TARAEMBA'];
    QItem.FieldByName('EMPRESA').AsString := gs_Empresa;
    QItem.FieldByName('FILIAL').AsInteger := gi_Filial;
    QItem.FieldByName('ID_PEDIVEND').AsFloat := VID_PEDIVEND;
    QItem['QN_EMBAEXPEITEMPEDIVEND'] := 0;
    QItem['QN_PESOPADREXPEITEMPEDIVEND'] := 0;
    QItem['QN_TARAREALEXPEITEMPEDIVEND'] := 0;
    QItem['QN_PESOREALEXPEITEMPEDIVEND'] := 0;
    QItem['QN_CAIXCORTITEMPEDIVEND'] := 0;
    QItem['fx_itempedivend'] := 'N';

    QItem.Post;

    try
      mniValidar.Enabled := TRUE;
      SBNovo.Enabled := True;
      SBDel.Enabled :=  True;
      SB_COPIA.Enabled := True;
      SBDiversos.Enabled := True;
      SB_Editar.Enabled := True;
      SBSalva.Enabled := False;
      SBCancel.Enabled := False;
      SBCupom.Enabled:= False;
      Sb_Sair.Enabled := False;

      Qitem.ApplyUpdates;
      QItem.CommitUpdates;

      VFl_StPed:= QPediVe.FieldByName('FL_STATPEDIVEND').AsString;

      // Colocamos em edição
      If  QPediVe.State<>DsInsert then
         If QPediVe.state<>DsEdit then
            QPediVe.Edit;
      // Ajustamos o Status
      QPediVe.FieldByName('FL_STATPEDIVEND').AsString := 'AV';

      //Gravamos o código do ProdMatEmba no pedido para uso na AP de exportação.
      If QPediVe.FieldByName('ID_PRODMATEEMBA').IsNull THEN
         QPediVe.FieldByName('ID_PRODMATEEMBA').AsString := QItemID_PRODMATEEMBA.Value;

      //Calculamos o valor total do pedido com ipi e o valor total do desconto
      QryTemp.close;
      Qrytemp.sql.clear;
      QryTemp.SQL.Text := 'SELECT SUM(( VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND) - NVL(VL_DESCITEM,0) ) VL_PEDIVEND, '+
                          '       SUM( (VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND)*NVL((VL_UNITIPI/100),0)) VL_IPI, '+
                          '       round(SUM(VL_UNITBRUTITEMPEDIVEND * QN_PESOITEMPEDIVEND) -           '+
                          '       SUM(VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND),2) VL_DESCPEDIVEND, '+
                          '       SUM(VL_OUTRASDESP) VL_OUTRASDESP                                '+
                          '  FROM PEDIDO_VENDA_ITEM                                          '+
                          ' WHERE ID_PEDIVEND = ' + IntToStr(QPediVe['ID_PEDIVEND']) + '     ';
      QryTemp.Open;

      QPediVe.FieldByName('VL_PEDIVEND').AsFloat := (qryTemp.FieldByName('VL_PEDIVEND').AsFloat + QryTemp.FieldByName('VL_IPI').AsFloat);
      QPediVe.FieldByName('VL_DESPPEDIVEND').AsFloat := qryTemp.FieldByName('VL_OUTRASDESP').AsFloat ;

      VACUMITEM:=0;
      VACUMITEM:= qryTemp.FieldByName('VL_PEDIVEND').AsFloat;

      // Ajustamos o valor do desconto
      QPediVe.FieldByName('VL_DESCPEDIVEND').AsFloat := qryTemp.FieldByName('VL_DESCPEDIVEND').AsFloat;

      QPediVe.Post;
      QryTemp.Close;
      QPediVe.ApplyUpdates;
      QPediVe.CommitUpdates;

      {if (VPNF = False) then
      begin
        //Verificamos se o Cliente possui credito suficiente
        with QryTemp do
        begin
          Close;
          SQL.Clear;
          SQL.Text := ' select  vl_limicredclie,  '+
                '         vl_credatuaclie,     '+
                '         FL_TIPOBLOQCLIE     '+
                '   from  cliente            '+
                '  where  id_cliente = '+ FloatToStr(QPediVe['ID_CLIENTE']);
          Open;
      if VFl_StPed='AB' then
      begin
        VACUMITEM:= (QItem['VL_UNITITEMPEDIVEND'] * QItem['QN_PESOITEMPEDIVEND']);
        VItem_Avulso:= True;
      end;

      if (FieldByName('FL_TIPOBLOQCLIE').AsString = 'CI') or
         (FieldByName('FL_TIPOBLOQCLIE').AsString = 'AB') then
        if (FieldByName('vl_credatuaclie').AsFloat<VACUMITEM) then
        begin
          Screen.Cursor := crDefault;
          MessageDlg('Cliente não possui crédito suficiente para este valor!', mtInformation,[mbOk], 0, mbOk);
          // Ajustamos o Status
          QItem.Delete;
          QItem.CommitUpdates;
          QItem.ApplyUpdates;
          QryTemp.Close;
          QryTemp.SQL.Text :=
                          'SELECT SUM(VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND) AS VLITEM,      '+
                          '       SUM(VL_UNITBRUTITEMPEDIVEND * QN_PESOITEMPEDIVEND) -           '+
                          '       SUM(VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND) VL_DESCPEDIVEND '+
                          '  FROM PEDIDO_VENDA_ITEM                                              '+
                          ' WHERE ID_PEDIVEND = ' + IntToStr(QPediVe['ID_PEDIVEND']) + '         ';
          QryTemp.Open;
          QPediVe.Edit;
          QPediVe.FieldByName('VL_PEDIVEND').AsFloat := qryTemp.FieldByName('VLITEM').AsFloat;
          QPediVe.FieldByName('FL_STATPEDIVEND').AsString := 'AV';
          QPediVe.Post;
          QPediVe.ApplyUpdates;
          QPediVe.CommitUpdates;
          QItem.Close;
          QItem.Open;
          DBGrid2.Refresh;
          DBCodMatEmba.SetFocus;
          exit;
        end;
      end;
     end; }

      //Expedição Manual
      If (VPNF = True) Then
      begin
        QItem.Edit;
        QItem['QN_PESOPADREXPEITEMPEDIVEND'] := QItem['QN_PESOITEMPEDIVEND'];
        QItem.Post;
        QItem.ApplyUpdates;
        QItem.CommitUpdates;
      end;
      // Confirmamos a transação

    except
      // Se ocorreu algum erro durante a alteração dos dados
      if gb_ErroBanc then
      begin
        // Ajustamos a variável
        gb_ErroBanc := False;
      end;

      QItem.CancelUpdates;
    end;

    pnlQtdDisponivel.Caption := '';
    pnlQtdDisponivel.Color := clBackground;

  end;

  cbxConta.Enabled:= False;
  DBPlaca.Enabled := False;
  Btplaca.Enabled := False;
  btn_PesqLote.Enabled := False;
  DBIE_EXTERNO.Enabled := False;
  DBArmazena.Enabled := False;
  DBMemo1.Enabled := False;
  DBMemo2.Enabled := False;

  {
    Descrição: O Misael pediu para remover pois aparentemente não está sendo usado, dando lugar a novos campos.
    Autor: Vinícius Godinho Del Rio
    Data: 13/01/2015
  }
  //DBMemo3.Enabled := False;

  VEDITA:= False;

  if PageControl1.ActivePage = TsDocRef then
  Begin
    if Not(Rad_NFe.Checked or Rad_NF.Checked or Rad_NFP.Checked or Rad_CTE.Checked or Rad_Cupom.Checked) then
    begin
      ShowMessage('Favor, Informe o Tipo de Documento a ser Referenciado!');
      Exit;
    end;

    {mniValidar.Enabled := TRUE;
    SBNovo.Enabled := True;
    SBDel.Enabled :=  True;
    SB_COPIA.Enabled := True;
    SBDiversos.Enabled := True;
    SB_Editar.Enabled := True;
    SBSalva.Enabled := False;
    SBCancel.Enabled := False;
    Sb_Sair.Enabled := False;}

    if ValidaDocumentoReferenciado then
       if Qry_DocRef.State in [dsInsert, dsEdit] then
          Qry_DocRef.Post;

    if (tabCTE.Enabled) then
    begin
      PageControl1.ActivePage := tabCTE;
    end;
  end;

  {
    Descrição: Salva as informações do CT-e
    Autor: Vinícius Godinho Del Rio
    Data: 16/03/2015
  }
  if PageControl1.ActivePage = tabCTE then
  begin

    //Verificando se o estado do dataset é inserir ou editar
    if QryPedidoVenda.State in [dsInsert, dsEdit] then
      QryPedidoVenda.Post;

    QryPedidoVenda.ApplyUpdates;
    QryCTECompServ.ApplyUpdates;

    //Reabilitando os botões que foram desabilitados
    SB_PRIMEIRO.Enabled := True;
    SB_ANTERIOR.Enabled := True;
    SB_PROXIMO.Enabled := True;
    SB_ULTIMO.Enabled := True;
    SBNovo.Enabled := True;
    SBDel.Enabled := True;
    SB_Editar.Enabled := True;
    SBSalva.Enabled := False;
    SBCancel.Enabled := False;

    //Reabilitando as abas
    PageControl1.Pages[0].TabVisible :=true;
    PageControl1.Pages[1].TabVisible :=true;
    PageControl1.Pages[2].TabVisible :=true;
    PageControl1.Pages[3].TabVisible :=true;
    PageControl1.Pages[4].TabVisible := (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0) or ( QPediVeFL_NFCOMPLEMENTAR.Value = 'S' ) or ( QPediVeFL_NFCOMPLEMENTAR.Value = 'Q' ) or ( QPediVeFL_NFCOMPLEMENTAR.Value = 'I' ) ;
    PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');


  end;

  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Add('select nvl(t.FL_PARTCORTE,''N'') AS CORTE from vendedor t where t.id_vendedor = ' + QPediVeID_VENDEDOR.AsString);
  QryTemp.Open;
  if QryTemp.FieldByName('CORTE').Value = 'S' then
    vParticipaCorte:= True
  else
    vParticipaCorte:= false
end;

procedure TFrmPedVenda.edtCodiClieExit(Sender: TObject);
VAR
  li_TituAtra:integer;
  CredDisp : Double;
begin
  edtCodiClie.Color:= clBASE;
  CredDisp := 0 ;

   // Se não estivermos em modo de edição
  If not (QPediVe.State in [dsEdit, dsInsert]) then
  begin
    Exit;
  end;

  // Se o código estiver vazio
  if edtCodiClie.Text = '' then
  begin
    // Limpamos os campos demonstrativos
    QPediVe.FieldByName('NM_CLIENTE').AsString  := '';
    QPediVe.FieldByName('NM_FANTCLIE').AsString := '';
    QPediVe.FieldByName('NR_CNPJCLIE').AsString := '';
    Exit;
  end;

  If QPediVeTitCartorio.Value > 0 then
     Timer1.Enabled := true
  Else
     Timer1.Enabled := false;

  if VPNF = false then
    If QPediVeTitCartorio.Value > 2 then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Não é permitido lançamento de Pedido para Cliente com mais de 2 Títulos em cartório !', mtWarning, [mbOk], 0);
      edtCodiClie.Text:= '';
      exit;
    end;

  // Procuramos o código
  qryTempC.Close;
  qryTempC.SQL.Clear;
  qryTempC.SQL.Text :=
  'SELECT Cliente.NM_CLIENTE,                                    '+
  '       Cliente.IE_CLIENTE,                                    '+
  '       Cliente.NM_FANTCLIE,                                   '+
  '       Cliente.NR_CNPJCLIE,                                   '+
  '       Cliente.VL_LIMICREDCLIE,                               '+
  '       Cliente.VL_CREDATUACLIE,                               '+
  '       Cliente.VL_CREDESPECLIE,                               '+
  '       Cliente.ID_TIPOPEDIVEND,                               '+
  '       Cliente.ID_FORMPAGA,                                   '+
  '       Cliente.ID_INSTCOBR,                                   '+
  '       Cliente.ID_SITUCOBR,                                   '+
  '       Cliente.ID_TIPOCOBR,                                   '+
  '       Cliente.ID_CONTA,                                      '+
  '       Cliente.ID_TIPOVEND,                                   '+
  '       Cliente.FL_BLOQADMICLIE,                               '+
  '       Cliente.FL_TIPOBLOQCLIE,                               '+
  '       Cliente.QN_TITUVENCCLIE,                               '+
  '       Cliente.VL_TITUVENCCLIE,                               '+
  '       Cliente.FL_ATIVCLIE,                                   '+
  '       Cliente_vendedor.ID_VENDEDOR,                          '+
  '       Cliente.PC_DESCPADRCLIE,                               '+
  '       Cliente.PC_BONIPADRCLIE,                               '+
  '       Cliente.FL_PESSCLIE,                                   '+
  '       CLIENTE.ID_BAIRRO,                                     '+
  '       PAIS.ID_PAIS,                                          '+
  '       CLIENTE.id_grupclie,                                   '+
  '       Cliente_vendedor.pc_comivendclie,                      '+
  '       ESTADO.SG_ESTADO,                                      '+
  '       CLIENTE.FL_NF_POSTERIOR,                               '+
  '       CLIENTE.NR_INSCESTACLIE,                               '+
  '       CLIENTE.ID_TABEPREC,                                   '+
  '       CLIENTE.GN_EMAICLIE,                                   '+
  '       TABELA_PRECO.NM_TABEPREC                               '+
  '  FROM CLIENTE,                                               '+
  '       CLIENTE_VENDEDOR,                                      '+
  '       BAIRRO, CIDADE, ESTADO, PAIS, TABELA_PRECO             '+
  ' WHERE (CLIENTE.ID_CLIENTE = CLIENTE_VENDEDOR.ID_CLIENTE (+)) '+
  '   AND  CLIENTE.ID_TABEPREC = TABELA_PRECO.ID_TABEPREC        '+
  '   AND  CLIENTE.ID_BAIRRO = BAIRRO.ID_BAIRRO                  '+
  '   AND  BAIRRO.ID_CIDADE = CIDADE.ID_CIDADE                   '+
  '   AND  CIDADE.ID_ESTADO = ESTADO.ID_ESTADO                   '+
  '   AND  ESTADO.ID_PAIS = PAIS.ID_PAIS                         '+
  '   AND ((Cliente_vendedor.FL_PADRVENDCLIE = ''S'') or         '+
  '        (Cliente_vendedor.FL_PADRVENDCLIE Is Null))           '+
  '   AND (Cliente.ID_CLIENTE = ' + edtCodiClie.Text + ')        ';
  qryTempC.Open;

  // Se não encontramos o código
  if qryTempC.IsEmpty then
  begin
    Screen.Cursor := crDefault;
    MessageDlg('Código não encontrado !', mtWarning, [mbOk], 0);
    QPediVe['ID_CLIENTE'] := 0;
    edtCodiClie.SetFocus;
    qryTempC.Close;
    Exit;
  end;

  {NOME: FABRICIO DATA:12/03/2018 MOTIVO: SOLICITAÇÃO DO VALMOR }
  if (QryTempC.FieldByName('GN_EMAICLIE').IsNull) or (QryTempC.FieldByName('GN_EMAICLIE').Value = '@') then
  begin
    Screen.Cursor := crDefault;
    MessageDlg('Cliente com Cadastro incompleto.', mtInformation, [mbOk], 0);
    SBCancelClick(sender);
    qryTempC.Close;
    Exit;
  end;

  //Verificamos se o Cliente permite Emissão de NF Posterior.
  VNFPOSTERIOR:= False;
  If (qryTempC['ID_TIPOVEND'] = 9) Then
     VNFPOSTERIOR:= True;

  If QryTempC.FieldByName('ID_TABEPREC').IsNull Then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cliente não possui tabela cadastrada. Entre em contato com o setor de cadastro de Clientes !', mtWarning, [mbOk], 0);
      QPediVe['ID_CLIENTE'] := 0;
      edtCodiClie.SetFocus;
      qryTempC.Close;
      Exit;
    end
  else
  begin
    {FABRICIO - 10/09/2018 - MOTIVO: validar se a tabela de preço esta atualiza para o dia}
    QryTemp.Close;
    QryTemp.SQL.CLEAR;
    qryTemp.SQL.Text := 'SELECT DT_ATUALIZACAO FROM TABELA_PRECO_ITEM WHERE ID_TABEPREC = ' + QryTempC.fieldbyname('ID_TABEPREC').AsString + ' AND (TO_DATE(DT_ATUALIZACAO) <> ''' + DateToStr(now) + ''' OR (DT_ATUALIZACAO IS NULL))' ;
    qryTemp.Open;

    if (qryTemp.recordcount > 0) then
    begin
      Application.MessageBox('A Tabela de Preços ' + qryTempC.fieldbyname('NM_TABEPREC').AsString + ' utilizada pelo cliente, está desatualizada.', FrmPedVenda.Caption, [ID_OK], smsInformation, ID_OK);
      if gi_IdenUsua IN [1,26,40] then
      begin
        if Application.MessageBox('Deseja continuar lançamento com Preços DESATUALIZADOS?', FrmPedVenda.Caption, [ID_YES, ID_NO], smsWarning, ID_NO) = ID_YES then
        begin
          Try
            frmAutoTabPreco:=TfrmAutoTabPreco.Create(nil);
            frmAutoTabPreco.ShowModal;
            if frmAutoTabPreco.iCodMotivo = 0 then
            begin
              SBCancelClick(Sender);
              Exit;
            end;
          Except;
            frmAutoTabPreco.Free;
          End;
        end
        else
        begin
          SBCancelClick(Sender);
          Exit;
        end;
      end
      else
      begin
        SBCancelClick(Sender);
        Exit;
      end;
    end;
  end;

  // Ajustamos os campos demonstrativos
  QPediVe['NM_CLIENTE'] := qryTempC['NM_CLIENTE' ];
  QPediVe['NM_FANTCLIE'] := qryTempC['NM_FANTCLIE'];
  QPediVe['NR_CNPJCLIE'] := qryTempC['NR_CNPJCLIE'];
  QPediVe['VL_LIMICREDCLIE'] := qryTempC['VL_LIMICREDCLIE'];
  QPediVe['VL_CREDATUACLIE'] := qryTempC['VL_CREDATUACLIE'];
  QPediVe['SG_ESTADO'] := qryTempC['SG_ESTADO'];
  QPediVe['ID_PAIS_ENTREGA'] := qryTempC['ID_PAIS'];
  QPediVe['NR_INSCESTACLIE'] := qryTempC['NR_INSCESTACLIE'];

  IF  (qryTempC['ID_PAIS'] <> 1) THEN
    QPediVe['ID_CIDADE_ENTREGA'] := 9328;   //SANTOS

  // Sugerimos os códigos
  QPediVe['ID_VENDEDOR'] := qryTempC['ID_VENDEDOR'];

  IF  qryTempC['FL_PESSCLIE'] = 'F' THEN
     VPESSOCLI:='F'
  ELSE
    VPESSOCLI:='';

  if QrTipoPed.Locate('ID_TIPOPEDIVEND', qryTempC['ID_TIPOPEDIVEND'], []) then
    QPediVe['ID_TIPOPEDIVEND'] := qryTempC['ID_TIPOPEDIVEND'];

  cbxConta.KeyValue := qryTempC.FieldByName('ID_CONTA').Asfloat;
  QPediVe['ID_CONTA'] := qryTempC.FieldByName('ID_CONTA').Asfloat;


  If (VPNF=true) then
  begin
    QPediVe['ID_TIPOPEDIVEND'] := qryTempC['ID_TIPOPEDIVEND'];
    cbxConta.KeyValue := qryTempC.FieldByName('ID_CONTA').Asfloat;
    QPediVe['ID_CONTA'] := qryTempC.FieldByName('ID_CONTA').Asfloat;
  end;

  // Lançamento para Exportação
  VPAIS:= qryTempC['ID_PAIS'];
  If (qryTempC['ID_TIPOPEDIVEND'] >= 15) AND (qryTempC['ID_TIPOPEDIVEND'] <= 26) then
  Begin
    VExporta:= true;
    QrPedArm.Open;
    CBxPedArm.Enabled := True;
  End
  Else
  Begin
    QrPedArm.Close;
    CBxPedArm.Enabled := False;
  End;

  QPediVe['ID_FORMPAGA'] := qryTempC['ID_FORMPAGA'];
  QPediVe['ID_INSTCOBR'] := qryTempC['ID_INSTCOBR'];
  QPediVe['ID_SITUCOBR'] := qryTempC['ID_SITUCOBR'];
  QPediVe['ID_TIPOCOBR'] := qryTempC['ID_TIPOCOBR'];

  QPediVe['NM_TIPOVEND'] := ' ';
  QPediVe['FL_TIPOBLOQCLIE'] := ' ';
  QPediVe['FL_BLOQADMICLIE'] := ' ';
  QPediVe['NM_TIPOCOBR'] := ' ';
  QPediVe['NM_CONTA'] := ' ';
  QPediVe['NM_TIPOLOGI'] := ' ';
  QPediVe['PC_DESCPEDIVEND'] := qryTempC['PC_DESCPADRCLIE'];
  QPediVe['PC_DESCPADRCLIE'] := qryTempC['PC_DESCPADRCLIE'];
  QPediVe['PC_BONIPEDIVEND'] := qryTempC['PC_BONIPADRCLIE'];
  QPediVe['PC_BONIPADRCLIE'] := qryTempC['PC_BONIPADRCLIE'];

  // Executamos os eventos de sair do campo para atualizar os outros campos
  DBCVenExit(Self);
  DBTipVenExit(Self);
  DBCForPgExit(Self);
  DBInstCobExit(Self);
  DBSitCobExit(Self);

  // Ajustamos as querys de endereço
  QrEndCli.Close;
  QrEndCli.ParamByName('pi_CodiClie').AsFloat:= QPediVeID_CLIENTE.Value;
  QrEndCli.open;

  // Ajustamos os códigos e chamamos os manipuladores para ajustar os campos da tela
  QPediVe['ID_ENDECLIE_ENTREGA']  := QrEndCli['ID_ENDECLIE'];

  cbxEndeEntrExit(Self);

  // Se o cliente estiver bloqueado
  if (qryTempC['FL_BLOQADMICLIE'] = 'S') and (VPNF = False) then
  begin
    Screen.Cursor := crDefault;
    MessageDlg('Este cliente está com bloqueio administrativo !', mtWarning, [mbOk], 0);
    QPediVe['ID_CLIENTE'] := 0;
    edtCodiClie.SetFocus;
    qryTempC.Close;
    Exit;
  end;

  // Se o cliente estiver inativo
  if qryTempC['FL_ATIVCLIE'] = 'N' then
  begin
    Screen.Cursor := crDefault;
    MessageDlg('Este cliente está inativo !', mtWarning, [mbOk], 0);
    QPediVe['ID_CLIENTE'] := 0;
    edtCodiClie.SetFocus;
    qryTempC.Close;
    Exit;
  end;

  If (VPNF=False) then
  begin

    // Se o cliente tiver bloqueio por crédito
    if (qryTempC.FieldByName('FL_TIPOBLOQCLIE').AsString = 'CI') or (qryTempC.FieldByName('FL_TIPOBLOQCLIE').AsString = 'AB') then
    begin
      // Se ele não tiver crédito algum
      if (qryTempC.FieldByName('VL_CREDATUACLIE').AsFloat + qryTempC.FieldByName('VL_CREDESPECLIE').AsFloat) <= 0 then
      begin
        CredDisp := qryTempC.FieldByName('VL_CREDATUACLIE').AsFloat + qryTempC.FieldByName('VL_CREDESPECLIE').AsFloat;
        Screen.Cursor := crDefault;
        MessageDlg('Este cliente está sem crédito ! A venda não poderá ser efetuada! Crédito Disponível : '+  FormatFloat('#,###.##',CredDisp )  , mtWarning, [mbOk], 0);
      end;
      // Ajustamos a flag do controle de crédito
      QPediVe.FieldByName('FL_CREDUSADPEDIVEND').AsString := 'S';

    end
    else // Se o cliente não tiver bloqueio por crédito
    begin
      // Ajustamos a flag do controle de crédito
      QPediVe.FieldByName('FL_CREDUSADPEDIVEND').AsString := 'N';
    end;

    // Se o cliente tiver bloqueio por atraso
    if (qryTempC.FieldByName('FL_TIPOBLOQCLIE').AsString = 'AT') or (qryTempC.FieldByName('FL_TIPOBLOQCLIE').AsString = 'AB') then
    begin
      // Se o cliente tiver bloqueio por qtde de títulos atrasados
      //If qryTempC.FieldByName('QN_TITUVENCCLIE').AsInteger > 0 then  //Joao Marcelo solicitou
      If qryTempC.FieldByName('QN_TITUVENCCLIE').AsInteger >= 0 then  //Joao Marcelo solicitou
      begin
        try
          VDATATU:=TRUNC(ld_DataHora);
          IF DAYOFWEEK(TRUNC(ld_DataHora))=2 THEN
             VDATATU:=TRUNC(ld_DataHora)-2;

          QrTitu.Close;
          QRTitu.SQL.clear;
          // Contamos os títulos que podem estar atrasados
          QRTitu.SQL.Text :=
          ' SELECT COUNT(*) AS TITUATRA                           '+
          ' FROM Pedido_Venda,ca_titurec,pedido_venda_tipo        '+
          ' WHERE Pedido_Venda.id_pedivend=ca_titurec.rnumedocu   '+
          ' AND Pedido_Venda.id_tipopedivend=pedido_venda_tipo.id_tipopedivend  '+
          ' AND ca_titurec.rdatavenc < TO_DATE(''' + datetostr(VDATATU) + ''',''' + 'DD/MM/YYYY' + ''')' +
          ' AND (ca_titurec.rst_cobra <> ''Q'')                            '+
          ' AND (ca_titurec.rid_cliente = ''' + floattostr(QPediVe['ID_CLIENTE']) + ''')'+
          ' AND NVL(pedido_venda_tipo.fl_consfinatipopedivend,''S'')=''S'' ';
          QRTitu.Open;

          // Se a pesquisa retornou algo
          if not QRTitu.IsEmpty then
          begin
            li_TituAtra := QrTitu.FieldByName('TITUATRA').AsInteger;
          end;

          if li_TituAtra > qryTempC.FieldByName('QN_TITUVENCCLIE').AsInteger then
          begin
            Screen.Cursor := crDefault;
            MessageDlg('Quantidade de títulos atrasados maior que o permitido !', mtWarning, [mbOk], 0);

            edtCodiClie.Text:='';
            edtCodiClie.SetFocus;

            qryTempC.Close;
            qrTitu.Close;

            FrmATRA:=TFrmATRA.Create(Self);
            FrmATRA.QRVENC.Close;
            FrmATRA.QRTOT.Close;
            FrmATRA.QRVENC.ParamByName('ID_CLIENTE').AsFLOAT := QPediVe.FieldByName('ID_CLIENTE').AsFLOAT;
            FrmATRA.QRTOT.ParamByName('ID_CLIENTE').AsFLOAT := QPediVe.FieldByName('ID_CLIENTE').AsFLOAT;
            FrmATRA.QRVENC.OPEN;
            FrmATRA.QRTOT.Open;
            FrmATRA.ShowModal;

            Exit;

          end;
        except
          Screen.Cursor := crDefault;
          MessageDlg('Não foi possível obter informações sobre crédito do cliente. !', mtWarning, [mbOk], 0);
        end;
      end;

      // Se o cliente tiver bloqueio por valor de títulos atrasados
      if qryTempC.FieldByName('VL_TITUVENCCLIE').AsInteger > 0 then
      begin
        try
          QrTitu.Close;
          QRTitu.SQL.clear;
          // Somamos os títulos que podem estar atrasados
          QRTitu.SQL.Text :=
          'SELECT SUM(rvalodocu) - SUM(rpagoinde) AS VLATRA                            '+
          '  FROM ca_titurec                                     '+
          ' WHERE rdatavenc < TO_DATE(''' + datetostr(VDATATU) + ''',''' + 'DD/MM/YYYY' + ''')' +
          '   AND (rst_cobra <> ''Q'')                            '+
          '   AND (rid_cliente = ''' + floattostr(QPediVe['ID_CLIENTE']) + ''')';
          QRTitu.Open;

          // Se o total dos títulos atrasados for maior ou igual que o permitido
          if qrTitu.Fields.Fields[0].AsFloat >=
             qryTempC.FieldByName('VL_TITUVENCCLIE').AsFloat then
          begin
            // Mensagem
            Screen.Cursor := crDefault;
            MessageDlg('Valor total de títulos atrasados maior que o permitido !', mtWarning, [mbOk], 0);
            edtCodiClie.Clear;

            // Voltamos o foco para o código
            edtCodiClie.SetFocus;

            // Destruimos os objetos
            qryTempC.Close;
            qrTitu.Close;
            Exit;
          end;
        except
          Screen.Cursor := crDefault;
          MessageDlg('Não foi possível obter informações sobre crédito do cliente. !', mtWarning, [mbOk], 0);
        end;

      end;

      qrTitu.Close;

    end;

    qryTempC.Close;

    // Procuramos por vendas neste dia para este cliente
    qryTempC.Close;
    QryTempC.SQL.Clear;
    qryTempC.SQL.Text := '  SELECT ID_PEDIVEND                                                     '+
                        '    FROM PEDIDO_VENDA                                                            '+
                        '   WHERE ID_CLIENTE = ' + QPediVe.FieldByName('ID_CLIENTE').AsString + '         '+
                        '     AND DT_ENTRPEDIVEND = TO_DATE(''' + edtDataEntr.Text + ''',''DD/MM/YYYY'')  ';
    qryTempC.Open;

    // Se houver venda para este dia e cliente
    if not qryTempC.IsEmpty then
    begin
      // Ajustamos o nº de vendas
      QPediVe.FieldByName('NR_PEDIVEND').AsInteger := QPediVe.FieldByName('NR_PEDIVEND').AsInteger+1;
      Screen.Cursor := crDefault;
      MessageDlg(' Já existe pedido para este cliente nesta data de entrega. ' + #13 +
                 ' Pedido: ' + qryTempC.FieldByName('ID_PEDIVEND').AsString, mtWarning, [mbOk], 0);
      if (VLANCMULT=False) then
      begin
         edtCodiClie.Text:='';
         edtCodiClie.SetFocus;
      end;
    end
    // Se não houver venda para este dia e cliente
    else
    begin
      // Ajustamos o nº da venda (Gambiarra)
      QPediVe.FieldByName('NR_PEDIVEND').AsInteger := 1;
    end;

  qryTempC.Close;
  end;

  //*** Verifica IBGE
  if QPediVeID_IBGE.IsNull then
  begin
    MessageDlg('Informe o CPD - Cidade do Cliente sem IBGE !', mtWarning, [mbOk], 0);
    edtCodiClie.SetFocus;
    Exit;
  end;

  QrTipoPed.Close;
  QrTipoPed.SQL.Clear;
  if gs_CNPJ2 = copy(DBEdit30.Text,1,8) then
    begin
      QrTipoPed.SQL.Add('SELECT');
      QrTipoPed.SQL.Add('  PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND,');
      QrTipoPed.SQL.Add('  PEDIDO_VENDA_TIPO.NM_TIPOPEDIVEND,');
      QrTipoPed.SQL.Add('  NVL(PEDIDO_VENDA_TIPO.FL_CORTEPED,''N'') AS FL_CORTEPED');
      QrTipoPed.SQL.Add('FROM');
      QrTipoPed.SQL.Add('  PEDIDO_VENDA_TIPO,');
      QrTipoPed.SQL.Add('  PEDIDO_VENDA_TIPO_DOCU_TIPO');
      QrTipoPed.SQL.Add('WHERE');
      QrTipoPed.SQL.Add('  PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPOPEDIVEND');
      QrTipoPed.SQL.Add('  AND PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU = 11');
      QrTipoPed.SQL.Add('  AND NVL(PEDIDO_VENDA_TIPO.FL_BLOQUEADO,''N'' ) = ''N''  ');

    end
  else
  begin
    QrTipoPed.SQL.Add(vSQL);
  end;

  QrTipoPed.Open;

//  {FABRICIO - 10/09/2018 - MOTIVO: validar se a tabela de preço esta atualiza para o dia}
//  QrPre.Close;
//  QrPre.ParamByName('VCodiClie').AsFloat := QPediVeID_CLIENTE.Value;
//  QrPre.open;
//
//  QryTemp.Close;
//  QryTemp.SQL.CLEAR;
//  qryTemp.SQL.Text := 'SELECT DT_ATUALIZACAO FROM TABELA_PRECO_ITEM WHERE ID_TABEPREC = ' + QrPre.fieldbyname('ID_TABEPREC').AsString + ' AND (TO_DATE(DT_ATUALIZACAO) <> ''' + DateToStr(now) + ''' OR (DT_ATUALIZACAO IS NULL))' ;
//  qryTemp.Open;
//
//  if (qryTemp.recordcount > 0) then
//  begin
//    Application.MessageBox('A Tabela de Preços ' + QrPre.fieldbyname('NM_TABEPREC').AsString + ' utilizada pelo cliente, está desatualizada.', FrmPedVenda.Caption, [ID_OK], smsInformation, ID_OK);
//
//    SBCancelClick(Self);
//  end;
//  QryTemp.Close;
//  qryTemp.Free;

end;

procedure TFrmPedVenda.DBTipVenExit(Sender: TObject);
var
  ls_WherAdic: String;
begin
  DBTipVen.Color :=ClBase;

  //validar se código do tipo está atribuido ao usuário
  if DBTipVen.Text <> '' then
    if not QrTipoPed.Locate('ID_TIPOPEDIVEND', DBTipVen.Text, []) then
      begin
        MessageDlg('Tipo de Pedido de Venda não permitido.'+ #10, mtWarning, [mbOk], 0);
        DBTipVen.Text:= '';
        DBTipVen.SetFocus;
        //DBLookupComboBox6.DropDown;
        exit;
      end;

  {
    Descrição: Carregando as informações do CTE dependendo do tipo de pedido de venda
    Autor: Vinícius Godinho Del Rio
    Data: 01/12/2014
  }
  CarregaInformacoesCTE();

  // Se não estivermos em modo de edição
  if not (QPediVe.State in [dsEdit, dsInsert]) then
  begin
    Exit
  end;

  // Se o código estiver vazio
  If DBTipVen.Text = '' then
  begin
    // Limpamos os campos demonstrativos
    QPediVe.FieldByName('NM_TIPOPEDIVEND').AsString := '';
    Exit;
  end;

  {NOME: FABRICIO DATA:23/01/2018 MOTIVO: NÃO APLICAR ESSA REGRA PARA DACAR
  If (DBCVen.Text='33') and (DBTipVen.Text<>'16') then
  begin
    Screen.Cursor := crDefault;
    ShowMessage('O Vendedor 33 só pode utilizar o Tipo 16.');
    DBTipVen.Text := '16';
    QPediVe.FieldByName('ID_TIPOPEDIVEND').Asfloat := 16;
    exit;
  end;}

  //Aumentar a obs do pedido para cfop 5601
  If (DBTipVen.Text='66')  then
  begin
    DBMemo1.Width := 752;
    DBMemo1.Height := 50;

    {
      Descrição: O Misael pediu para remover pois aparentemente não está sendo usado, dando lugar a novos campos.
      Autor: Vinícius Godinho Del Rio
      Data: 13/01/2015
    }
    //DBMemo3.Width := 752;
    //DBMemo3.Height := 50;
//    //DBMemo3.Top := 420;
    //DBMemo3.Left := 22;

  end
  else
  begin
    DBMemo1.Width := 213;
    DBMemo1.Height := 77;

    {
      Descrição: O Misael pediu para remover pois aparentemente não está sendo usado, dando lugar a novos campos.
      Autor: Vinícius Godinho Del Rio
      Data: 13/01/2015
    }
    //DBMemo3.Width := 247;
    //DBMemo3.Height := 77;
//    //DBMemo3.Top := 371;
    //DBMemo3.Left := 534;
    
  end;

  // Iniciamos a variavel
  ls_WherAdic := '';
    //***************
  // Se o usuário não puder trabalhar com
  // tipo de pedido que não gera financeiro
  if ub_PermVend='N' then
  begin
    ls_WherAdic := ' AND   NVL(Pedido_venda_tipo.fl_consfinatipopedivend,''S'') = ''S'' ';
  end;

  // Procuramos o código
  qryTemp.close;
  QryTemp.sql.clear;
  qryTemp.SQL.Text :=  'SELECT DISTINCT PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND,                       '+
  '       PEDIDO_VENDA_TIPO.NM_TIPOPEDIVEND                                                      '+
  '  FROM PEDIDO_VENDA_TIPO,                                                '+
  '       TIPO_OPER_PEDI_VEND_TIPO,                                         '+
  '       OPERACAO_TIPO                                                     '+
  ' WHERE (PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = ' + DBTipVen.Text + ')'+
  ls_WherAdic;
  qryTemp.Open;

  // Se não encontramos o código
  if QryTemp.IsEmpty then
  begin
    // Mensagem
    Screen.Cursor := crDefault;
    MessageDlg('Código não encontrado !', mtWarning, [mbOk], 0);

    // Voltamos o foco para o código
    DBTipVen.SetFocus;

    // Destruimos o objeto
    qryTemp.Close;
//    qryTemp.Free;

    Exit;
  end;

  // Ajustamos os campos demonstrativos
  QPediVe.FieldByName('NM_TIPOPEDIVEND').AsString := qryTemp.FieldByName('NM_TIPOPEDIVEND').AsString;

  // Ajustamos as querys de tipos de operação
  QrTipoOper.Close;
  QrTipoOper.Open;

  // Destruimos o objeto
    qryTemp.Close;

  QryTemp.sql.clear;
  qryTemp.SQL.Text := ' SELECT OBS.GN_OBSEPADRNOTAFISC, TP.ID_TIPOPEDIVEND, OBS.ID_OBSEPADRNOTAFISC '+
                      ' FROM NOTA_FISCAL_OBSERVACAO_PADRAO OBS '+
                      ' JOIN PEDIDO_VENDA_TIPO TP ON (TP.ID_OBSEPADRNOTAFISC = OBS.ID_OBSEPADRNOTAFISC) '+
                       'WHERE TP.ID_TIPOPEDIVEND = ' + DBTipVen.Text ;
  qryTemp.Open;

  // Ajustamos os campos demonstrativos
  QPediVe.FieldByName('GN_OBSEPADR_PEDIVEND').AsString := qryTemp.FieldByName('GN_OBSEPADRNOTAFISC').AsString;

  //Verificamos se é Doação(9) ou Bonificação(17)
  If (DBTipVen.Text='9') or (DBTipVen.Text='17') or (DBTipVen.Text='32') or (DBTipVen.Text='35') then
    begin
 //     QrUsuSis.Open;
      DbCAuto.Enabled := true;
      DbCAuto.SetFocus;
    end;

  If (DBTipVen.Text='15')
  OR (DBTipVen.Text='21')
  OR (DBTipVen.Text='24')
  OR (DBTipVen.Text='25')
  OR (DBTipVen.Text='26')  then
  begin
    QrPedArm.Open;
    CBxPedArm.Enabled := true;
  end
  Else
  Begin
    QrPedArm.Close;
    CBxPedArm.Enabled := False;
  end;

  //ajustar componentes
 { If (DBTipVen.Text='9') or (DBTipVen.Text='17') then
    begin
      QPediVe['ID_CONTA'] := 8;
      cbxConta.KeyValue:= 8;
      Application.ProcessMessages;
      //cbxConta.ReadOnly:= True;
      cbxConta.Enabled:= False;
    end
  else
    cbxConta.Enabled:= True;}
    //cbxConta.ReadOnly:= False;

end;

procedure TFrmPedVenda.cbxEndeEntrExit(Sender: TObject);
begin
  cbxEndeEntr.Color :=ClBase;
If (QPediVe.state=dsInsert) or (QPediVe.state=dsEdit) then
 begin
  // Ajustamos os campos demonstrativos
  QPediVe['SG_TIPOLOGR'    ] := QrEndCli['SG_TIPOLOGR'];
  QPediVe['NM_LOGRENDECLIE'] := QrEndCli['NM_LOGRENDECLIE'];
  QPediVe['NR_LOGRENDECLIE'] := QrEndCli['NR_LOGRENDECLIE'];
  QPediVe['GN_COMPENDECLIE'] := QrEndCli['GN_COMPENDECLIE'];
  QPediVe['NM_BAIRRO'] := QrEndCli['NM_BAIRRO'];
  QPediVe['NM_CIDADE'] := QrEndCli['NM_CIDADE'];
  QPediVe['ID_IBGE'] := QrEndCli['ID_IBGE'];
 end;
end;

procedure TFrmPedVenda.mniTituAtraClick(Sender: TObject);
BEGIN
//TRY
  if not (QPediVe.IsEmpty) and (QPediVe.FieldByName('ID_CLIENTE').AsFLOAT <> 0) Then
  begin
    VDATATU:=TRUNC(ld_DataHora);
        IF DAYOFWEEK(TRUNC(ld_DataHora))=2 THEN
           VDATATU:=TRUNC(ld_DataHora)-2;


        FrmATRA:=TFrmATRA.Create(Self);
        FrmATRA.QRVENC.Close;
        FrmATRA.QRTOT.Close;
        FrmATRA.QRVENC.ParamByName('ID_CLIENTE').AsFLOAT := QPediVe.FieldByName('ID_CLIENTE').AsFLOAT;
        FrmATRA.QRTOT.ParamByName('ID_CLIENTE').AsFLOAT := QPediVe.FieldByName('ID_CLIENTE').AsFLOAT;
        FrmATRA.QRVENC.OPEN;
        FrmATRA.QRTOT.Open;
        FrmATRA.ShowModal;

{    frmTituAtra := TfrmTituAtra.Create(Self);
    frmTituAtra.QRVENC.Close;
    frmTituAtra.QRTOT.Close;
//    frmTituAtra.QRVENC.ParamByName('pd_DataAtua').AsDate := VDATATU;
    frmTituAtra.QRVENC.ParamByName('ID_CLIENTE').AsFLOAT := QPediVe.FieldByName('ID_CLIENTE').AsFLOAT;
    frmTituAtra.QRTOT.ParamByName('ID_CLIENTE').AsFLOAT := QPediVe.FieldByName('ID_CLIENTE').AsFLOAT;
    frmTituAtra.QRVENC.OPEN;
    frmTituAtra.QRTOT.Open;
    frmTituAtra.ShowModal;  }
  end;

// except;
//    FrmTituAtra.Free;
// end;
end;

procedure TFrmPedVenda.SBDiversosClick(Sender: TObject);
begin
  pm1.Popup(445,88);
end;

procedure TFrmPedVenda.DBCVenExit(Sender: TObject);
begin
  DBCVen.Color:= clBASE;
    // Se não estivermos em modo de edição
  If not (QPediVe.State in [dsEdit, dsInsert]) then
  begin
    Exit
  end;

  // Se o código estiver vazio
  If DBCVen.Text = '' then
  begin
    // Limpamos os campos demonstrativos
    QPediVe.FieldByName('NM_VENDEDOR').AsString := '';
    Exit;
  end;

  // Procuramos o código
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text :=

  'SELECT VENDEDOR.NM_VENDEDOR,VENDEDOR.id_tipovendedor,CLIENTE_VENDEDOR.pc_comivendclie '+
  '  FROM VENDEDOR,                                                                      '+
  '       CLIENTE_VENDEDOR                                                              '+
  ' WHERE (CLIENTE_VENDEDOR.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR)                        '+
  '   AND (CLIENTE_VENDEDOR.ID_CLIENTE = ' + FloatToStr(QPediVe['ID_CLIENTE']) + ')   '+
  '   AND (VENDEDOR.ID_VENDEDOR = ' + DBCVen.Text + ')                               ';
  qryTemp.Open;

  // Se não encontramos o código
  If qryTemp.IsEmpty  then
  begin
    Screen.Cursor := crDefault;
    MessageDlg('Código não encontrado ou Vendedor não relacionado com Cliente!', mtWarning, [mbOk], 0);

    // Voltamos o foco para o código
    BPesqVend.SetFocus;
    qryTemp.Close;
    Exit;
  end;

  If (VPAIS>1) AND (qryTemp['id_tipovendedor']=5)  then
    Begin
      VPc_Comis:= qryTemp['pc_comivendclie'];
      VExporta:= True;
    End;

//  if QPediVe.FieldByName('id_vendedor').Value = 33 then
//    begin
//      {QPediVe.FieldByName('SG_TIPOFRETPEDIVEND').Value:= 'FOB';
//      DBRTipoFrete.Enabled:= False;
//    end
//  else
    DBRTipoFrete.Enabled:= True;

  // Ajustamos os campos demonstrativos
  QPediVe.FieldByName('NM_VENDEDOR').AsString := qryTemp.FieldByName('NM_VENDEDOR').AsString;
  qryTemp.Close;
end;

procedure TFrmPedVenda.DBCForPgExit(Sender: TObject);
 var
  Vvenc:TDateTime;
  Vdias:real;
  Vdife:real;
begin
  DBCForPg.Color:= clBASE;
  ShortDateFormat := 'dd/mm/yyyy';
  // Se não estivermos em modo de edição
  If not (QPediVe.State in [dsEdit, dsInsert]) then
  begin
    Exit;
  end;

  // Se o código estiver vazio
  if DBCForPg.Text = '' then
  begin
    // Limpamos os campos demonstrativos
    QPediVe.FieldByName('NM_FORMPAGA').AsString := '';
    Exit;
  end;

  Screen.Cursor := crSQLWait;
  // Procuramos o código
  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Text :=
  'SELECT NM_FORMPAGA, QN_DIAS                        '+
  '  FROM FORMA_PAGAMENTO                             '+
  ' WHERE (ID_FORMPAGA = ' + DBCForPg.Text + ')       ';
  QryTemp.Open;

  // Se não encontramos o código
  If qryTemp.IsEmpty then
  begin
    Screen.Cursor := crDefault;
    MessageDlg('Código não encontrado !', mtWarning, [mbOk], 0);

    // Voltamos o foco para o código
    DBCForPg.SetFocus;

    qryTemp.Close;

    Exit;
  end
  else
  begin

    // Ajustamos os campos demonstrativos
    QPediVe.FieldByName('NM_FORMPAGA').AsString := qryTemp.FieldByName('NM_FORMPAGA').AsString;

  end;
  qryTemp.Close;

 //Verificamos se o vencimento cai em final de semana ou feriado se não for 11 (à vista)
 if (DBCForPg.Text<>'11') and (DBCForPg.Text<>'61') then
 begin
  with QryTemp do
  begin
    Close;
    sql.Clear;
    SQL.Text := 'SELECT                                                           '+
                '       Forma_pagamento_parcela.NR_PARCFORMPAGA,                                                   '+
                '       Forma_pagamento_parcela.PC_PARCFORMPAGA,                                                   '+
                '       Forma_pagamento_parcela.QN_DIASPARCFORMPAGA                                               '+
                '  FROM FORMA_PAGAMENTO_PARCELA Forma_pagamento_parcela                                            '+
                ' WHERE (Forma_pagamento_parcela.ID_FORMPAGA = ' + QPediVe.FieldByName('ID_FORMPAGA').AsString + ')';
    Open;
    First;

   Vdias:=FieldByName('QN_DIASPARCFORMPAGA').AsInteger;
   Vvenc:= QPediVe.FieldByName('DT_ENTRPEDIVEND').AsDateTime+VDias;

   //Verificamos quando é mais de uma parcela - Daniel Gianolla: 18/06/2018
   While NOT EOF do
   begin
    if (Vvenc = (QPediVe.FieldByName('DT_ENTRPEDIVEND').AsDateTime+VDias)) then
    Vdias:=FieldByName('QN_DIASPARCFORMPAGA').AsInteger;
    Vvenc:= QPediVe.FieldByName('DT_ENTRPEDIVEND').AsDateTime+VDias;


    {Screen.Cursor := crDefault;
    MessageDlg('O vencimento atual é: '+DateToStr(VVenc), mtInformation, [mbOk], 0);
    Screen.Cursor := crSQLWait;
    close;}

    //Se Venc. cai no domingo.
    if (DayOfWeek(Vvenc)=1) then
      Vvenc:= Vvenc+1;

    //Se Venc. cai no sabado.
    if (DayOfWeek(Vvenc)=7) then
      Vvenc:= Vvenc+2;

    //Se Venc. cai no feríado  Daniel Gianolla 21/08/2018
    with qFeriado do
    begin

     open;
     first;
     while not eof do
     begin
      if (copy(DateToStr(Vvenc),1,5) = FieldByName('gn_dataferi').AsString) then
      begin
        Vvenc:= Vvenc+1;
        //Se Venc. cai em finais de semana.
        if (DayOfWeek(Vvenc)=1) then
          Vvenc:= Vvenc+1;
        if (DayOfWeek(Vvenc)=7) then
          Vvenc:= Vvenc+2;
      end;
      Next;
     end;
     Close;
    end;

    Next;
    end;

    Close;
  end;


  // Verificar se venc. cai no feriado.
  {with QryTemp do
  begin
    Close;
    sql.Clear;
    SQL.Text := ' select                                              '+
                '        gn_dataferi                                  '+
                '  from  feriado                                      ';
    open;
    first;
    while not eof do
    begin
      if (copy(DateToStr(Vvenc),1,5) = FieldByName('gn_dataferi').AsString) then
      begin
        Vvenc:= Vvenc+1;
        //Se Venc. cai em finais de semana.
        if (DayOfWeek(Vvenc)=1) then
          Vvenc:= Vvenc+1;
        if (DayOfWeek(Vvenc)=7) then
          Vvenc:= Vvenc+2;
      end;
      Next;
    end;
    Close;
  end;    }

  if (Vvenc <> (QPediVe.FieldByName('DT_ENTRPEDIVEND').AsDateTime+VDias)) then
  begin
    Vdife:=(Vvenc-(QPediVe.FieldByName('DT_ENTRPEDIVEND').AsDateTime+VDias));
    //Corrigimos a forma de pagto.
    with QryTemp do
    begin
      Close;
      sql.Clear;
      SQL.Text := 'SELECT                                       '+
                  '        forma_pagamento_parcela.id_formpaga, '+
                  '        forma_pagamento.nm_formpaga          '+
                  '  from  forma_pagamento_parcela,             '+
                  '        forma_pagamento                      '+
                  ' where                                       '+
                  '        forma_pagamento_parcela.id_formpaga = forma_pagamento.id_formpaga and '+
                  '        nr_parcformpaga = 1 and QN_PARCFORMPAGA = 1 AND '+
                  '        qn_diasparcformpaga = '+ FloatToStr(Vdife+VDias);
      Open;
      if IsEmpty then
      begin
        DBCForPg.Text:='';
        QPediVe.FieldByName('NM_FORMPAGA').AsString :='';
        DBCForPg.SetFocus;
        Screen.Cursor := crDefault;
        MessageDlg('Atenção! O sistema não encontrou uma data para corrigir a forma de pagto. automaticamente, escolha uma outra que não caia em finais de semana ou feriados.', mtWarning,[mbOk], 0, mbOk);
      end
      else
      begin
        DBCForPg.Text:= FloatToStr(qryTemp.FieldByName('ID_FORMPAGA').AsFloat);
        QPediVe.FieldByName('NM_FORMPAGA').AsString := qryTemp.FieldByName('NM_FORMPAGA').AsString;
        DBFormaPagto.KeyValue := qryTemp.FieldByName('ID_FORMPAGA').AsFloat;
        Screen.Cursor := crDefault;
        Vprorrogou:= True;
        MessageDlg('Sua forma de pagto. foi alterada para não cair em final de semana ou feriado.', mtInformation,[mbOk], 0, mbOk);
       //MessageDlg('O novo vencimento é: '+DateToStr(VVenc), mtInformation, [mbOk], 0);
       {if MessageDlg('Sua Forma de Pagto. foi alterada para não cair em Final de Semana. Deseja continuar ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
       begin
         SBCancelClick(Sender);
       end;   }
      end;
    end;
  end;
 end;
 Screen.Cursor := crDefault;
end;

procedure TFrmPedVenda.DBInstCobExit(Sender: TObject);
begin
  DBInstCob.Color:= clBASE;
    // Se não estivermos em modo de edição
  if not (QPediVe.State in [dsEdit, dsInsert]) then
  begin
    Exit
  end;

  // Se o código estiver vazio
  if DBInstCob.Text = '' then
  begin
    // Limpamos os campos demonstrativos
    QPediVe.FieldByName('NM_INSTCOBR').AsString := '';
    Exit;
  end;

  // Procuramos o código
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text :=
  'SELECT NM_INSTCOBR                                 '+
  '  FROM COBRANCA_INSTRUCAO                          '+
  ' WHERE (ID_INSTCOBR = ' + DBInstCob.Text + ')';
  qryTemp.Open;

  // Se não encontramos o código
  if qryTemp.IsEmpty then
  begin
    // Mensagem
    Screen.Cursor := crDefault;
    MessageDlg('Código não encontrado !', mtWarning, [mbOk], 0);

    // Voltamos o foco para o código
    DBInstCob.SetFocus;

    // Destruimos o objeto
    qryTemp.Close;

    Exit;
  end;

  // Ajustamos os campos demonstrativos
  QPediVe.FieldByName('NM_INSTCOBR').AsString := qryTemp.FieldByName('NM_INSTCOBR').AsString;

  // Destruimos o objeto
  qryTemp.Close;

end;

procedure TFrmPedVenda.DBSitCobExit(Sender: TObject);
begin
  DBSitCob.Color:= clBASE;
  // Se não estivermos em modo de edição
  if not (QPediVe.State in [dsEdit, dsInsert]) then
  begin
    Exit;
  end;

  // Se o código estiver vazio
  if DBSitCob.Text = '' then
  begin
    // Limpamos os campos demonstrativos
    QPediVe.FieldByName('NM_SITUCOBR').AsString := '';
    Exit;
  end;

  // Procuramos o código
  qryTemp.Close ;
  qryTemp.SQL.clear;
  qryTemp.SQL.Text :=
  'SELECT NM_SITUCOBR                                 '+
  '  FROM COBRANCA_SITUACAO                           '+
  ' WHERE (ID_SITUCOBR = ' + DBSitCob.Text + ')';
  qryTemp.Open;

  // Se não encontramos o código
  if qryTemp.IsEmpty then
  begin
    // Mensagem
    Screen.Cursor := crDefault;
    MessageDlg('Código não encontrado !', mtWarning, [mbOk], 0);

    // Voltamos o foco para o código
    DBSitCob.SetFocus;

    // Destruimos o objeto
    qryTemp.Close;

    Exit;
  end;

  // Ajustamos os campos demonstrativos
  QPediVe.FieldByName('NM_SITUCOBR').AsString := qryTemp.FieldByName('NM_SITUCOBR').AsString;

  // Destruimos o objeto
  qryTemp.Close;

end;


procedure TFrmPedVenda.DBCodMatEmbaExit(Sender: TObject);
begin



  DBCodMatEmba.color:=ClBase;

  // Se não estivermos em modo de edição
  if not (QItem.State in [dsEdit, dsInsert]) then
  begin
    Exit;
  end;

{  // Se o código não mudou
  if edtCodiProd.Text = us_CodiProd then
  begin
    Exit;
  end; }

  // Se o código estiver vazio
  if DBCodMatEmba.Text = '' then
  begin
    // Limpamos os campos demonstrativos
    QItem['NM_PRODMATEEMBA'] := '';
    QItem['NM_EMBALAGEM'] := '';
    QItem['QN_PESOPADRITEMPEDIVEND'] := 0;
    QItem['VL_UNITITEMPEDIVEND'] := 0;
    QItem['VL_UNITBRUTITEMPEDIVEND'] := 0;
 //   QItem['PC_DESCITEMPEDIVEND'] := 0;
    QItem['ID_TIPOOPER'] := 0;
    edtQtdeEmba.text:='0';
    edtPrecUnitBrut.text:='0';


    // Ajustamos o valor total do item
    AjustTotalItem(Self);

    Exit;
  end;

  // Procuramos o código
  qryTemp.Close;
  qryTemp.SQL.clear;
  qryTemp.SQL.Text :=
  'SELECT Material_embalagem.ID_MATEEMBA,                                    '+
  '       Material_embalagem.ID_MATERIAL,                                    '+
  '       Material_embalagem.ID_EMBALAGEM,                                   '+
  '       Material_embalagem.NM_PRODMATEEMBA,                                '+
  '       Material_embalagem.QN_CAPAPADRMATEEMBA,                            '+
  '       Material_embalagem.QN_CAPAMEDIMATEEMBA,                            '+
  '       Material_embalagem.FL_ATIVMATEEMBA,                                '+
  '       Material_embalagem.QN_TARAEMBAPROD_BALANCAO,                       '+
  '       Material_embalagem_complemento.QN_TARAEMBAPROD,                    '+
  '       Embalagem.NM_REDUEMBA,                                             '+
  '       Embalagem.QN_TARAEMBA,                                             '+
  '       MATEEMBACLASSFISCAL.PC_IPICLASFISC,                                '+
  '       UNIDADE_MEDIDA.SG_UNIDMEDI                                         '+
  '  FROM MATERIAL_EMBALAGEM Material_embalagem,                             '+
  '       EMBALAGEM Embalagem,                                               '+
  '       MATEEMBACLASSFISCAL,                                               '+
  '       MATERIAL,                                                          '+
  '       UNIDADE_MEDIDA,                                                    '+
  '       MATERIAL_EMBALAGEM_COMPLEMENTO                                     '+
  ' WHERE                                                                    '+
  '       (Material_embalagem.ID_PRODMATEEMBA = MATEEMBACLASSFISCAL.ID_PRODMATEEMBA(+))'+
  '   AND (Material_embalagem.ID_EMBALAGEM = Embalagem.ID_EMBALAGEM)                   '+
  '   AND (Material_embalagem.ID_MATERIAL  =  MATERIAL.ID_MATERIAL)                    '+
  '   AND (UNIDADE_MEDIDA.ID_UNIDMEDI = MATERIAL.ID_UNIDMEDI)                          '+
  '   AND (MATERIAL_EMBALAGEM_COMPLEMENTO.ID_MATEEMBA = MATERIAL_EMBALAGEM.ID_MATEEMBA)'+
  '   AND (Material_embalagem.ID_PRODMATEEMBA = ''' + DBCodMatEmba.Text + ''')         ';
  qryTemp.Open;

  // Se não encontramos o código
  if qryTemp.IsEmpty then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Código não encontrado! Verificar o cadastro do material', mtWarning, [mbOk], 0);
      // Voltamos o foco para o código
      DBCodMatEmba.SetFocus;
      qryTemp.Close;
      Exit;
    end;

  // Ajustamos os campos
  QItem['ID_MATERIAL']  := qryTemp['ID_MATERIAL'];
  QItem['ID_EMBALAGEM'] := qryTemp['ID_EMBALAGEM'];
  QItem['ID_MATEEMBA']  := qryTemp['ID_MATEEMBA'];
  QItem['NM_PRODMATEEMBA'] := qryTemp['NM_PRODMATEEMBA'];
  QItem['NM_REDUEMBA'] := qryTemp['NM_REDUEMBA'];
  QItem['QN_TARAEMBAPROD_BALANCAO']  := qryTemp['QN_TARAEMBAPROD_BALANCAO'];
  QItem['SG_UNIDMEDI'] := qryTemp['SG_UNIDMEDI'];
  QItem['VL_UNITIPI'] := qryTemp['PC_IPICLASFISC'];
  VPERIPI := 0;
  If (qryTemp['PC_IPICLASFISC']>0) Then
    VPERIPI := qryTemp['PC_IPICLASFISC'];

  QItem['QN_TARAEMBA'] :=  qryTemp['QN_TARAEMBAPROD'];

  QItem['ID_TIPOOPER'] := QrTipoOper['ID_TIPOOPER'];

  // Se o produto não tiver Peso Padrão
  if qryTemp.FieldByName('QN_CAPAPADRMATEEMBA').AsFloat = 0 then
  begin
    QItem['QN_PESOPADRITEMPEDIVEND'] := qryTemp.FieldByName('QN_CAPAMEDIMATEEMBA').AsFloat;
  end
  // Se o produto tiver Peso Padrão
  else
  begin
    QItem['QN_PESOPADRITEMPEDIVEND'] := qryTemp.FieldByName('QN_CAPAPADRMATEEMBA').AsFloat;
  end;

  //Verificamos se o Produto (Material x Embalegem) está ativo
  if qryTemp.FieldByName('FL_ATIVMATEEMBA').AsString = 'N' then
  begin
    MessageDlg('Este Produto não disponivel para venda', mtWarning, [mbOk], 0);
  end;

  qryTemp.Close;

  // Procuramos o preço se nao for PNF
  qrPrec.Close;
  qrPrec.ParamByName('ID_CLIENTE').AsInteger  := StrToInt(DBCLI.text);
  qrPrec.ParamByName('ID_MATEEMBA').AsInteger := QItem['ID_MATEEMBA'];
  qrPrec.Open;

  If (VPNF=False) then
  begin
    // Se não encontramos o preço
    if qrPrec.IsEmpty then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Preço não encontrado. Verifique a Tabela de Preços associada ' +
                 'ao Cliente e o preço do produto para esta tabela.', mtWarning, [mbOk], 0);

      //    us_CodiProd := '';
      QItem['ID_PRODMATEEMBA'] := '';

     // Voltamos o foco para o código
      DBCodMatEmba.SetFocus;
      Exit;
    end;

    //Verificamos se o Produto esta ativo ou não na Tabela de Preços
    if qrPrec.FieldByName('FL_ATIVITEMTABEPREC').AsString = 'N' then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Produto indisponível à venda, para esta Tabela de Preço', mtWarning, [mbOk], 0);

      QItem['ID_PRODMATEEMBA'] := '';
      QItemID_MATERIAL.AsString:= '';
      QItemID_EMBALAGEM.AsString:= '';
      QItemID_MATEEMBA.AsString:= '';
      QItemID_TIPOOPER.AsString:= '';
      QItemQN_EMBAITEMPEDIVEND.AsString     := '';
      QItemVL_UNITBRUTITEMPEDIVEND.AsString := '';
      QItemVL_UNITIPI.AsString:= '';

     // Voltamos o foco para o código
      DBCodMatEmba.SetFocus;
      Exit;
    end;
  end;

  // para PNF nao olha Estoque  //ESTOCADO
  If (VPNF = False) Then
  begin
    with QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
       ' SELECT MC.FL_PRODUZ FROM MATERIAL_EMBALAGEM_COMPLEMENTO MC WHERE MC.ID_PRODMATEEMBA = :ID_ITEM';
      ParamByName('ID_ITEM').AsString := QItemID_PRODMATEEMBA.AsString;
      Open;
      if QryTemp.FieldByName('FL_PRODUZ').AsString  = 'S' then
      begin
        // VERIFICA QTDE DISPONIVEL DO ITEM
        qryQtdDisponivel.Close;
        qryQtdDisponivel.ParamByName('PR_DATA').Value := Today;
        qryQtdDisponivel.ParamByName('PR_ITEM').Value := DBCodMatEmba.Text;
        qryQtdDisponivel.Open;

        pnlQtdDisponivel.Caption := qryQtdDisponivel.FieldByName('KG_ESTOQUE_ATUAL').AsString;

        if StrToInt(qryQtdDisponivel.FieldByName('KG_ESTOQUE_ATUAL').AsString) > 0 then
          pnlQtdDisponivel.Color := clgreen
        else
        begin
          pnlQtdDisponivel.Color := clRed;
          Application.MessageBox('Item não possui quantidade Disponível para Venda.', 'Dacar Vendas - Inclusão de Itens no Pedido', [ID_OK], smsWarning, ID_OK);
          Exit;
        end;
      end;
    end;
  end;

  if not qrPrec.IsEmpty then
  begin
    if (edtDesc.text = '0')  or (edtDesc.text = '') then
      QItem['VL_UNITBRUTITEMPEDIVEND'] := qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat
    else
      QItem['VL_UNITBRUTITEMPEDIVEND'] := RoundNExtend( (qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat  * (1 + (QItemPC_DESCITEMPEDIVEND.Value) / 100)), 2);
    QItem['VL_ITEMTABEPREC'] := qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat;
  end;

  // Ajustamos o valor total do item
  AjustTotalItem(Self);
end;

procedure TFrmPedVenda.AjustTotalItem(Sender: TObject);
Var
  VedtPrecUnitBrut,VedtDesc,VedtQtdeEmba,VedtPesoPadr,VedtPrecUnit:string;
begin
  If edtPrecUnitBrut.Text='' then
     VedtPrecUnitBrut:='0'
  Else
     VedtPrecUnitBrut:= edtPrecUnitBrut.Text;
  If edtDesc.Text='' then
     VedtDesc:='0'
  Else
     VedtDesc:=edtDesc.Text;
  If edtQtdeEmba.TEXT='' then
     VedtQtdeEmba:='0'
  Else
     VedtQtdeEmba:= edtQtdeEmba.TEXT;
  If edtPesoPadr.TEXT='' then
     VedtPesoPadr:='0'
  Else
     VedtPesoPadr:= edtPesoPadr.TEXT;
  If edtPrecUnit.text='' then
     VedtPrecUnit:='0'
  Else
     VedtPrecUnit:= edtPrecUnit.text;
  If (QItem.State = dsInsert) or (QItem.State = dsEdit) then
  begin
    //QItem['VL_UNITITEMPEDIVEND'] := RoundNExtend( (STRTOFLOAT(VedtPrecUnitBrut) * (1 - StrToFloat(VedtDesc) / 100)), 2);
    QItem['VL_UNITITEMPEDIVEND'] :=  (STRTOFLOAT(VedtPrecUnitBrut) * (1 - StrToFloat(VedtDesc) / 100));

    // Ajustamos o valor total do item
    If VPERIPI>0 Then
      QItem['VL_TOTAITEMPEDIVEND'] := (STRTOFLOAT(VedtQtdeEmba) * STRTOFLOAT(VedtPesoPadr) * STRTOFLOAT(VedtPrecUnit)) * (1 + (VPERIPI/100))
    Else
      QItem['VL_TOTAITEMPEDIVEND'] := STRTOFLOAT(VedtQtdeEmba) * STRTOFLOAT(VedtPesoPadr) * STRTOFLOAT(VedtPrecUnit);

  end;
end;

procedure TFrmPedVenda.edtQtdeEmbaExit(Sender: TObject);
begin
  // para PNF nao olha Estoque  //ESTOCADO
  If (VPNF = False) Then
  begin
    with QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
       ' SELECT MC.FL_PRODUZ FROM MATERIAL_EMBALAGEM_COMPLEMENTO MC WHERE MC.ID_PRODMATEEMBA = :ID_ITEM';
      ParamByName('ID_ITEM').AsString := QItemID_PRODMATEEMBA.AsString;
      Open;
      if QryTemp.FieldByName('FL_PRODUZ').AsString  = 'S' then
      begin
        if QItemQN_EMBAITEMPEDIVEND.AsInteger > StrToInt(qryQtdDisponivel.FieldByName('KG_ESTOQUE_ATUAL').AsString) then
        begin
          Application.MessageBox('Quantidade solicitada excede Quantidade Disponível para Venda.', 'Dacar Vendas - Inclusão de Itens no Pedido', [ID_OK], smsWarning, ID_OK);
          Exit;
        end;
      end;
    end;
  end;



  edtQtdeEmba.color:=ClBase;
  // Ajustamos o total do item
  AjustTotalItem(Self);
end;

procedure TFrmPedVenda.DBTipVenEnter(Sender: TObject);
begin
  DBTipVen.Color:= clMidlight;
end;

procedure TFrmPedVenda.edtDataPediEnter(Sender: TObject);
begin
  edtDataPedi.Color:= clMidlight;
   If QPediVe.State = DsInsert then
    begin
      BPesqDt.Visible:=TRUE;
    end;
end;

procedure TFrmPedVenda.edtDataEntrEnter(Sender: TObject);
begin
  edtDataEntr.Color:= clMidlight;
  If QPediVe.State = DsInsert then
    begin
      BPesqDtEntre.Visible:=TRUE;
    end;
end;

procedure TFrmPedVenda.DBIE_EXTERNOEnter(Sender: TObject);
begin
  DBIE_EXTERNO.Color:= clMidlight;
end;

procedure TFrmPedVenda.edtCodiClieEnter(Sender: TObject);
begin
  edtCodiClie.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBCVenEnter(Sender: TObject);
begin
  DBCVen.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBLookupComboBox6Enter(Sender: TObject);
begin
  DBLookupComboBox6.Color:= clMidlight;
end;

procedure TFrmPedVenda.cbxEndeEntrEnter(Sender: TObject);
begin
  cbxEndeEntr.Color:= clMidlight;
end;

procedure TFrmPedVenda.cbxEndeCobrEnter(Sender: TObject);
begin
//  cbxEndeCobr.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBCForPgEnter(Sender: TObject);
begin
  DBCForPg.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBFormaPagtoEnter(Sender: TObject);
begin
  DBFormaPagto.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBInstCobEnter(Sender: TObject);
begin
  DBInstCob.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBLookupComboBox7Enter(Sender: TObject);
begin
  DBLookupComboBox7.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBSitCobEnter(Sender: TObject);
begin
  DBSitCob.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBLookupComboBox9Enter(Sender: TObject);
begin
  DBLookupComboBox9.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBLookupComboBox3Enter(Sender: TObject);
begin
  DBLookupComboBox3.Color:= clMidlight;
end;

procedure TFrmPedVenda.cbxContaEnter(Sender: TObject);
begin
  cbxConta.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBComboBox2Enter(Sender: TObject);
begin
 // DBComboBox2
 DBRTipoFrete.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBLookupComboBox5Enter(Sender: TObject);
begin
  DBLookupComboBox5.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBEdit7Enter(Sender: TObject);
begin
  DBEdit7.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBPesoPedEnter(Sender: TObject);
begin
  DBPesoPed.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBEmbalagemEnter(Sender: TObject);
begin
  DBEmbalagem.Color:= clMidlight;
end;

procedure TFrmPedVenda.edtTotaEmbaEnter(Sender: TObject);
begin
  edtTotaEmba.Color:= clMidlight;
end;

procedure TFrmPedVenda.edtPesoBrutTotaEnter(Sender: TObject);
begin
  edtPesoBrutTota.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBMemo1Enter(Sender: TObject);
begin
  DBMemo1.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBMemo2Enter(Sender: TObject);
begin
  DBMemo2.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBMemo3Enter(Sender: TObject);
begin

  {
    Descrição: O Misael pediu para remover pois aparentemente não está sendo usado, dando lugar a novos campos.
    Autor: Vinícius Godinho Del Rio
    Data: 13/01/2015
  }
  //DBMemo3.Color:= clMidlight;
  
end;

procedure TFrmPedVenda.edtDataPediExit(Sender: TObject);
begin
  edtDataPedi.Color:= clBASE;
  BPesqDt.Visible := FALSE;
end;

procedure TFrmPedVenda.edtDataEntrExit(Sender: TObject);
begin
  dtEntregaInformada:= StrToDateTime(edtDataEntr.Text);
  edtDataEntr.Color:= clBASE;
  BPesqDtEntre.Visible := FALSE;
  pValidaDataLanctoPedido(dtEntregaInformada, dtMaxEntrega);
end;

procedure TFrmPedVenda.DBIE_EXTERNOExit(Sender: TObject);
begin
  DBIE_EXTERNO.Color:= clBASE;
end;

procedure TFrmPedVenda.DBLookupComboBox6Exit(Sender: TObject);
begin
  DBLookupComboBox6.Color:= clBASE;
  If (DBCVen.Text='33') and (DBTipVen.Text<>'16') then
   begin
     ShowMessage('O Vendedor 33 só pode utilizar o Tipo 16.');
     QPediVe.FieldByName('ID_TIPOPEDIVEND').Asfloat := 16;
     exit;
   end;

  {
    Descrição: Carrega as informações do CTE
    Autor: Vinícius Godinho Del Rio
    Data: 01/12/2014
  }
  CarregaInformacoesCTE();

  //Verificamos se é Doação(9) ou Bonificação(17)
  If (DBTipVen.Text='9') or (DBTipVen.Text='17') or (DBTipVen.Text='32') or (DBTipVen.Text='35') then
    begin
  //    QrUsuSis.Open;
      DbCAuto.Enabled := true;
      DbCAuto.SetFocus;
    end;

end;

procedure TFrmPedVenda.DBFormaPagtoExit(Sender: TObject);
begin
  DBFormaPagto.Color:= clBASE;
  DBCForPgExit(nil);
end;

procedure TFrmPedVenda.DBLookupComboBox7Exit(Sender: TObject);
begin
  DBLookupComboBox7.Color:= clBASE;
end;

procedure TFrmPedVenda.DBLookupComboBox9Exit(Sender: TObject);
begin
  DBLookupComboBox9.Color:= clBASE;
end;

procedure TFrmPedVenda.DBLookupComboBox3Exit(Sender: TObject);
begin
   DBLookupComboBox3.Color:= clBASE;
end;

procedure TFrmPedVenda.cbxContaExit(Sender: TObject);
begin
   cbxConta.Color:= clBASE;
end;


procedure TFrmPedVenda.DBComboBox2Exit(Sender: TObject);
begin
//  DBComboBox2
  DBRTipoFrete.Color:= clBASE;
end;

procedure TFrmPedVenda.DBLookupComboBox5Exit(Sender: TObject);
begin
  DBLookupComboBox5.Color:= clBASE;
end;

procedure TFrmPedVenda.DBEdit7Exit(Sender: TObject);
begin
  DBEdit7.Color:= clBASE;
end;

procedure TFrmPedVenda.DBPesoPedExit(Sender: TObject);
begin
  DBPesoPed.Color:= clBASE;
end;

procedure TFrmPedVenda.DBEmbalagemExit(Sender: TObject);
begin
  DBEmbalagem.Color:= clBASE;
end;

procedure TFrmPedVenda.edtTotaEmbaExit(Sender: TObject);
begin
  edtTotaEmba.Color:= clBASE;
end;

procedure TFrmPedVenda.edtPesoBrutTotaExit(Sender: TObject);
begin
  edtPesoBrutTota.Color:= clBASE;
end;

procedure TFrmPedVenda.DBMemo1Exit(Sender: TObject);
begin
  DBMemo1.Color:= clBASE;
end;

procedure TFrmPedVenda.DBMemo2Exit(Sender: TObject);
begin
  DBMemo2.Color:= clBASE;
end;

procedure TFrmPedVenda.DBMemo3Exit(Sender: TObject);
begin

  {
    Descrição: O Misael pediu para remover pois aparentemente não está sendo usado, dando lugar a novos campos.
    Autor: Vinícius Godinho Del Rio
    Data: 13/01/2015
  }
  //DBMemo3.Color:= clBASE;

end;

procedure TFrmPedVenda.PM1Popup(Sender: TObject);
begin
    // <CHC>
  // Se tivermos itens condicionados ao status do registro
  // Ajustamos os itens do menu do botão Diversos, conforme o Status
  If (QPediVe.FieldByName('FL_STATPEDIVEND').AsString = 'AV') and
     (not (QPediVe.State in [dsInsert, dsEdit])) then
  begin
    mniValidar.Enabled := True;
  end
  else
  begin
    mniValidar.Enabled := False;
  end;

  // Se o pedido estiver Expedido, Fechado ou Zerado e houver o recurso
{  if ((qryForm.FieldByName('FL_STATPEDIVEND').AsString = 'EX') or
      (qryForm.FieldByName('FL_STATPEDIVEND').AsString = 'FE') or
      (qryForm.FieldByName('FL_STATPEDIVEND').AsString = 'ZR')) and
     (not (qryForm.State in [dsInsert, dsEdit])) and
     (sltRecuJane.IndexOf('ALT-PEDIDO') >= 0) then
  begin
    mniCancPedi.Enabled := True;
    //mniCancPedi.Enabled := False;
  end
  else
  begin
    mniCancPedi.Enabled := False;
  end;   }

  // Se houver pedidos
  if not QPediVe.IsEmpty then
  begin
    mniUltiVend.Enabled := True;
  end
  else
  begin
    mniUltiVend.Enabled := False;
  end;



end;

procedure TFrmPedVenda.mniValidarClick(Sender: TObject);
var
  lr_DifeValo, lr_ValoFalt, lr_CredAtua, lr_CredEspeUsad: Real;
  li_PrazMaxi,li_Loop: Integer;
  Temp:TComponent;
  CredDisp : Double ;
begin
  ActiveControl := Nil;
  Screen.Cursor := crSQLWait;

  //Verificar se é PNF
  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Add('select nvl(fl_pnf,''N'') PNF from pedido_venda where id_pedivend = ' + QPediVeID_PEDIVEND.AsString);
  QryTemp.Open;
  if QryTemp.FieldByName('PNF').AsString = 'S' then
    VPNF:= True
  else
    VPNF:= False;
  //Verificar se é PNF

  PageControl1.Pages[4].TabVisible:= (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0) or ( rdg_NFComplementar.ItemIndex > 0 ) ;  //documentos referenciados

  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Add('SELECT ID_TIPODOCU FROM PEDIDO_VENDA_TIPO_DOCU_TIPO WHERE ID_TIPODOCU = 18  AND ID_TIPOPEDIVEND =' + QPediVeID_TIPOPEDIVEND.AsString );
  QryTemp.Open;
  if ( QryTemp.FieldByName('ID_TIPODOCU').Value = 18 ) AND ( QPediVeID_LOTE.AsInteger  = 0 ) then
  begin
       MessageDlg( 'O número de Lote é obrigatório para este tipo de pedido. Informe o número do lote . !', mtInformation,[mbOk], 0, mbOk);
       exit;
  end;

  {FABRICIO - 21/05/2018 - MOTIVO:SOLICITAÇÃO DO VALMOR, PEDIDOS INFERIORES A 200,00 SOMENTE A VISTA
  if ((QPediVeVL_PEDIVEND.Value <= 200) and (QPediVeID_FORMPAGA.Value <> 11) AND
     ((QPediVeID_TIPOPEDIVEND.Value = 6) OR (QPediVeID_TIPOPEDIVEND.Value = 18))) then   }

  //Verificamos se o pedido é inferior a 150,00    02/07/2018
  if ((QPediVeVL_PEDIVEND.Value < 150) AND
     ((QPediVeID_TIPOPEDIVEND.Value = 6) OR (QPediVeID_TIPOPEDIVEND.Value = 18))) then
  begin
    Application.MessageBox('Não é permitido lançamento de Pedido de Venda inferior a R$150,00', 'Comercial Dacar - Pedido de Venda', [ID_OK], smsInformation, ID_OK);
    SB_EditarClick(Sender);
    SBDelClick(Sender);
    Abort;
  end;

  //Pedidos abaixo de 200,00 somente Conta Bradesco 02/07/2018
  if ((QPediVeVL_PEDIVEND.Value <= 200) AND  (QPediVeID_CONTA.Value <> 2) AND
     ((gi_IdenUsua <> 40)  AND //Fabio Beneton
     ((QPediVeID_TIPOPEDIVEND.Value = 6) OR
     (QPediVeID_TIPOPEDIVEND.Value = 18)))) then
  begin
    Application.MessageBox('Pedido de Venda inferior a R$200,00 apenas Conta 02 - BRADESCO', 'Comercial Dacar - Pedido de Venda', [ID_OK], smsInformation, ID_OK);
    SB_EditarClick(Sender);
    SBDelClick(Sender);
    Abort;
  end;

  // Valida lote informado
  if ( QPediVeID_LOTE.Value > 0  ) AND ( gi_Filial = 6 ) then
  begin
       if ( VerTodosLotes ) then
          Qr_ValidaLote.MacroByName('WHERE').Value :=  ' WHERE A.FL_STATUS in ( ''AB'',''PR'',''FE'' ) '
       else
         Qr_ValidaLote.MacroByName('WHERE').Value :=  ' WHERE A.FL_STATUS in ( ''AB'',''PR'' ) ';

       Qr_ValidaLote.ParamByName('ID_LOTE').Value := QPediVeID_LOTE.Value;

       Qr_ValidaLote.Close;
       Qr_ValidaLote.Open;

       if (Qr_ValidaLote.RecordCount = 0 ) then // Verifica se o Lote existe ou esta disponível para seleção
       begin
            MessageDlg('Lote Informado não encontrado ou não disponível. Verifique !', mtInformation,[mbOk], 0, mbOk);
            exit;
       end;

       Qr_ValidaProduto.Close;
       Qr_ValidaProduto.ParamByName('ID_PEDIVEND').Value := QPediVeID_PEDIVEND.Value;
       Qr_ValidaProduto.Open;

       if (Qr_ValidaProdutoVALIDAR.Value = 'S' ) and  (Qr_ValidaProdutoVALIDO.Value = 'N' ) then
       begin
            MessageDlg('Código de Produto inválido para este tipo de pedido. Por Favor Verifique .!', mtInformation,[mbOk], 0, mbOk);
            exit;
       end;

       if ( QPediVeID_TIPOPEDIVEND.Value = 130 ) then // Verifica se é Remessa de ração
       begin
             if (Qr_ValidaLoteNR_CNPJFORN.Value <> QPediVeNR_CNPJCLIE.Value )  then // Verifica se confere CNPJ do pedido e do lote
             begin
                  MessageDlg('Lote Informado não pertence ao integrado selecionado. Verifique !', mtInformation,[mbOk], 0, mbOk);
                  exit;
             end;
       end;
  end;

  if ( rdg_NFComplementar.ItemIndex > 0 ) then
  begin
       Qry_DocRef.Close;
       Qry_DocRef.Open;
       if (Qry_DocRef.RecordCount = 0 ) then
       begin
            MessageDlg('Você selecionou a opção NF Complementar por isso deve ser informado o documento refererenciado !', mtInformation,[mbOk], 0, mbOk);
            exit;
       end;

  end
  else
  begin
       if  ( qry_TipoDocRef.RecordCount > 0 ) AND ( qry_TipoDocRefOBRIGATORIO.Value = 'S' ) then
       begin
            Qry_DocRef.Close;
            Qry_DocRef.Open;
            if ( Qry_DocRef.RecordCount = 0  ) then
            begin
                MessageDlg('Deve ser informado o documento refererenciado para este tipo de pedido!', mtInformation,[mbOk], 0, mbOk);
                TsDocRef.Show;
                exit;
            end;
       end;
  end;

//  if TsDocRef.Showing then
//    PageControl1.ActivePage := TsDetalhe;

  if (VEDITA=False) then
    begin
      with QryTemp do
        begin
          Close;
          SQL.Clear;
          SQL.Text := ' select id_pedivend      '+
                      '   from ca_pedido_carga  '+
                      '  where id_pedivend = :id_pedivend ';
          ParamByName('id_pedivend').AsFloat := QPediVeID_PEDIVEND.Value;
          Open;
          if not IsEmpty then
            begin
              MessageDlg('Este pedido já está em uma carga;' + #10+#13+
                         'Alteração não permitida ! ', mtInformation,[mbOk], 0, mbOk);
              exit;
            end;
        end;

      // Pegamos dados de crédito atualizamos
      qryClie.Close;
      qryClie.SQL.clear;

      //SE NÃO FOR NF VERIFICAMOS O LIMITE DE CREDITO
      If (VPNF=FALSE) then
        begin
          //Verifica se o Pedido está associado a um Pedido de Armazenagem.
          If (QPediVe.FieldByName('ID_PEDREMESSA').AsFloat > 0) then
            begin
              try
                WITH OSQL DO
                  begin
                    SQL.Clear;
                    SQL.Text := 'update                  '+
                                '       pedido_venda     '+
                                '   set                  '+
                                '       id_pedremessa =  '+ QPediVe.FieldByName('ID_PEDIVEND').AsString+
                                ' where                  '+
                                '       id_pedivend =    '+ QPediVe.FieldByName('ID_PEDREMESSA').AsString;
                    Execute;
                  end;
              except
                Screen.Cursor := crDefault;
                MessageDlg('Problema em salvar o No. no pedido de armazenagem: ' + QPediVe.FieldByName('ID_PEDREMESSA').AsString +
                ', avise o adm. do sistema. ' , mtWarning, [mbOk], 0);
              end;
            end;
            {  if (VItem_Avulso=true) then
            begin
            FrmPrincipal.corrigelimite(QPediVe['ID_CLIENTE']);
            VItem_Avulso:= False;
            end
            else
            begin }

          // Verifica limite parcelamento
           qryTemp.close;
           qryTemp.sql.clear;
           // Procuramos o máximo de dias permitido de prazo para o cliente
           qryTemp.SQL.Text := ' SELECT MAX(QN_DIASPARCFORMPAGA) QN_MAXIDIAS                              '+
                              '   FROM FORMA_PAGAMENTO_PARCELA,                                          '+
                              '        CLIENTE                                                           '+
                              '   WHERE FORMA_PAGAMENTO_PARCELA.ID_FORMPAGA = CLIENTE.ID_FORMPAGA_LIMITE '+
                              '     AND CLIENTE.ID_CLIENTE = ' + IntToStr(QPediVe['ID_CLIENTE']) + '     ';
           try
            qryTemp.Open;
           except
            Screen.Cursor := crDefault;
            MessageDlg('Erro ao verificar prazo de pagamento máximo do Cliente.' + #13 +
                       'Não foi possível salvar.', mtWarning, [mbOk], 0);

            qryTemp.Close;

            Exit;
           end;


          qryClie.SQL.Text := 'SELECT Cliente.VL_LIMICREDCLIE,                                      '+
                              '       Cliente.VL_CREDATUACLIE,                                      '+
                              '       Cliente.VL_CREDUSADCLIE,                                      '+
                              '       Cliente.VL_CREDESPECLIE,                                      '+
                              '       Cliente.VL_CREDESPEUSADCLIE,                                  '+
                              '       Cliente.FL_TIPOBLOQCLIE,                                      '+
                              '        Cliente.QN_TITUVENCCLIE,                                      '+
                              '        Cliente.VL_TITUVENCCLIE                                       '+
                              '   FROM CLIENTE Cliente                                               '+
                              '  WHERE (Cliente.ID_CLIENTE = ' + IntToStr(QPediVe['ID_CLIENTE']) + ')';
          qryClie.Open;

          if (qryClie.FieldByName('FL_TIPOBLOQCLIE').AsString = 'CI') or
             (qryClie.FieldByName('FL_TIPOBLOQCLIE').AsString = 'AB') then
            begin
              FrmPrincipal.corrigelimite(QPediVe['ID_CLIENTE']);

              qryClie.Close;
              qryClie.Open;

              //Verificamos se o Cliente possui credito suficiente
              if (qryClie.FieldByName('VL_CREDATUACLIE').AsFloat <= 0  {<QPediVe.FieldByName('VL_PEDIVEND').AsFloat}) then
                begin
                     CredDisp := qryClie.FieldByName('VL_LIMICREDCLIE').AsFloat -  qryClie.FieldByName('VL_CREDUSADCLIE').AsFloat ;

                     Screen.Cursor := crDefault;
                     MessageDlg('Cliente não possui crédito suficiente para este valor! Crédito Disponível : '+  FormatFloat('#,###.##',CredDisp ) , mtInformation,[mbOk], 0, mbOk);
                     // Ajustamos o Status
                     QPediVe.Edit;
                     QPediVe.FieldByName('FL_STATPEDIVEND').AsString := 'AV';
                     QPediVe.Post;
                     QPediVe.ApplyUpdates;
                     QPediVe.CommitUpdates;
                     exit;
                end;
            end;

          Qry_Varejo.Close;
          Qry_Varejo.ParamByName('Cod_CliVarejo').Value := QPediVe['ID_CLIENTE'] ;
          Qry_Varejo.Open;


          //Abre Varejo
          if ( Qry_Varejo.RecordCount > 0  ) {(QPediVe['ID_CLIENTE']=18)} then
            begin
              Application.CreateForm(TFrmGeraVarejo, FrmGeraVarejo);

              FrmGeraVarejo.pUsuario := Qry_VarejoUSUARIO.Value;
              FrmGeraVarejo.pDatabaselink := Qry_VarejoDATABASE_LINK.Value;
              FrmGeraVarejo.pUnidade      := Qry_VarejoDESCR.Value ;

              FrmGeraVarejo.ShowModal;
              if FrmGeraVarejo.VGravar=False then
                begin
                  Screen.Cursor := crDefault;
                  // Ajustamos o Status
                  QPediVe.Edit;
                  QPediVe.FieldByName('FL_STATPEDIVEND').AsString := 'AV';
                  QPediVe.Post;
                  QPediVe.ApplyUpdates;
                  QPediVe.CommitUpdates;
                  exit;
                end;
            end;

          if (QPediVe['ID_CLIENTE']=3584) then // 3584 = Televendas //8768 Ricardo  // 3695 - mercadinho carambola - testes
            begin
              Application.CreateForm(TFrmGeraTelevendas, FrmGeraTelevendas);
              FrmGeraTelevendas.ShowModal;
              if FrmGeraTelevendas.VGravar=False then
                begin
                  Screen.Cursor := crDefault;
                  // Ajustamos o Status
                  QPediVe.Edit;
                  QPediVe.FieldByName('FL_STATPEDIVEND').AsString := 'AV';
                  QPediVe.Post;
                  QPediVe.ApplyUpdates;
                  QPediVe.CommitUpdates;
                  exit;
                end;
            end;
        end;

      // Montamos os totais
      qryTemp.Close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Text := ' SELECT SUM( I.QN_EMBAITEMPEDIVEND ) QN_TOTAEMBA, '+
                          '        SUM( I.QN_TARAITEMPEDIVEND ) QN_TOTATARA, '+
                          '        SUM( CASE WHEN NVL(ME.QN_PESOVOLUMETRANSP,0) > 0 THEN  ME.QN_PESOVOLUMETRANSP * I.QN_EMBAITEMPEDIVEND  '+
                          '                  ELSE I.QN_PESOITEMPEDIVEND   END ) QN_TOTAPESO , '+
                          //'        SUM( I.QN_PESOITEMPEDIVEND ) QN_TOTAPESO, '+
                          '        SUM( I.QN_PESOITEMPEDIVEND *              '+
                          '             I.VL_UNITITEMPEDIVEND ) VL_TOTAPEDI  '+
                          '   FROM PEDIDO_VENDA_ITEM I     '+
                          '   LEFT join Material_Embalagem ME on I.ID_MATEEMBA = ME.ID_MATEEMBA '+
                          '  WHERE I.ID_PEDIVEND = ' + QPediVe.FieldByName('ID_PEDIVEND').AsString;
      qryTemp.Open;


      QPediVe.Edit;
      QPediVe['QN_EMBAPEDIVEND'] := qryTemp.FieldByName('QN_TOTAEMBA').AsInteger;
      QPediVe['QN_TARAPEDIVEND'] := qryTemp.FieldByName('QN_TOTATARA').AsFloat;
      QPediVe['QN_PESOPEDIVEND'] := qryTemp.FieldByName('QN_TOTAPESO').AsFloat;
      QPediVe['QN_PESOBRUTPEDIVEND'] := qryTemp.FieldByName('QN_TOTAPESO').AsFloat;

      // VERIFICAR SE O PEDIDO É NF - Pedido somente para emissão de NF
      If VPNF=True then
        begin
          {    try
          FrmCargaNF:=TFrmCargaNF.Create(Self);
          FrmCargaNF.Show;
          except;
          FrmCargaNF.Free;
          end; }
          //Incluimos uma Carga para o Pedido PNF
          QrCarga.open;
          QrCarga.Insert;
          QrCarga['EMPRESA'] := gs_Empresa;
          QrCarga['FILIAL']  := gi_Filial;
          QrCarga['FX_CARGEXPE'] := 'S';

          // Criamos um novo ID e o associamos ao campo
          //Substituida pela squence
          {QryTemp.close;
          QryTemp.SQL.clear;
          QryTemp.SQL.Text := ' SELECT MAX(ID_CARGEXPE) AS IDCARGA '+
                              '   FROM EXPEDICAO_CARGA             ';
          QryTemp.Open;

          QrCarga['ID_CARGEXPE'] := QryTemp['IDCARGA']+1;
          QryTemp.Close;}

          QrCarga['FL_IMPRCARGEXPE'] := 'N';
          QrCarga['ID_USUASIST_MONTAGEM'] := gi_CodiUsuaSist;
          QrCarga['NR_ORDEENTRCARGEXPE'] := 0;
          QrCarga['ID_CLASCARGEXPE'] := 1;
          QrCarga['DT_CARGEXPE'] := QPediVe['DT_ENTRPEDIVEND'];
          QrCarga['DT_LIMIPEDICARGEXPE'] := QPediVe['DT_ENTRPEDIVEND'];
          QrCarga['DT_MONTCARGEXPE'] := DATE();
          //if gi_Filial = 13 then QrCarga['FL_STATCARGEXPE'] := 'FE' else
          QrCarga['FL_STATCARGEXPE'] := 'NF';
          QrCarga['VL_FRETCARGEXPE'] := 0;
          QrCarga.FieldByName('NM_FORNECEDOR').AsString := QPediVe.FieldByName('NM_FORNECEDOR').AsString;
          QrCarga.FieldByName('GN_PLACVEICTRAN').AsString := QPediVe.FieldByName('GN_PLACVEICTRAN').AsString;
          QrCarga.FieldByName('ID_ITEMPROGCAMI').AsFloat := QPediVe.FieldByName('ID_FORNECEDOR').AsFloat;
          QrCarga.FieldByName('VL_UNITFRETCARGEXPE').AsFloat := VKGFRETE;
          QrCarga.Post;
          QrCarga.ApplyUpdates;
          QrCarga.CommitUpdates;

          //if gi_Filial = 13 then QPediVe['FL_STATPEDIVEND'] := 'FE' else
          QPediVe['FL_STATPEDIVEND'] := 'NF';
          QPediVe['id_cargexpe'] := QrCargaID_CARGEXPE.Value;

          //EXPEDIÇÃO MANUAL PEDIDO
          QPediVe['QN_PESOPADREXPEPEDIVEND'] := FrmPedVenda.QPediVe['QN_PESOPEDIVEND'];

          //ITEM DO PEDIDO: valor EXPEDIDO COPIADO NA CONFIRMAÇÃO DO ITEM
          VPNF:= False;
        end
      else
        Begin
          if (VEDIT_OBS=False) or (QPediVe['FL_STATPEDIVEND']='AV') then
            QPediVe['FL_STATPEDIVEND'] := 'AB';
        End;
    end;

  {
    Descrição: Caso o tipo de pedido de venda estiver o FL_CTE = 'S' então precisa validar se o usuário preencheu
    as informações do CT-e, pois elas são obrigatórias na geração do TXT do CT-E.
    Autor: Vinícius Godinho Del Rio
    Data: 09/03/2015
  }
  ValidaInformacoesCTE();

  try
    QPediVe.Post;

    // Atualizamos o banco
    QPediVe.ApplyUpdates;

    // Limpamos o cache
    QPediVe.CommitUpdates;

    // Destruimos os objetos
    QryTemp.Close;

    QryClie.Close;

    Sb_Sair.Enabled := true;

    VPESSOCLI := '';

  except
    Screen.Cursor := crDefault;
    MessageDlg('Erro na validação. Operação abortada !', mtError, [mbOk], 0);

    // Se ocorreu algum erro durante a exclusão dos dados
    if gb_ErroBanc then
      gb_ErroBanc := False;

    // Revertemos as atualizações
    QPediVe.CancelUpdates;

  end;

  Screen.Cursor := crDefault;

  SB_PRIMEIRO.Enabled:=True;
  SB_ANTERIOR.Enabled:=True;
  SB_PROXIMO.Enabled:= True;
  SB_ULTIMO.Enabled:= True;
  SBNovo.Enabled:= True;
  SBDel.Enabled:= True;
  SBDiversos.Enabled:= True;
  SB_COPIA.Enabled:= True;
  SB_Editar.Enabled := True;
  SBSalva.Enabled:= False;
  SBCancel.Enabled:= False;
  SBCupom.Enabled:= False;
  Sb_Sair.Enabled:= True;
  IF VDPNF THEN SB_PNF.Enabled := True;

  PageControl1.Pages[0].TabVisible:=true;
  PageControl1.Pages[1].TabVisible:=true;
  PageControl1.Pages[2].TabVisible:=true;
  PageControl1.Pages[3].TabVisible:=true;
  PageControl1.Pages[4].TabVisible:= (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0);  //documentos referenciados

  {
    Descrição: Mostra/Oculta a aba de informações do CT-e
    Autor: Vinícius Godinho Del Rio
    Data: 11/03/2015
  }
  PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');


  //PageControl1.Pages[INDICE_ABA_CTE].TabVisible:=true; //ver cfop tb

  PageControl1.Pages[0].Enabled := true;
  PageControl1.Pages[1].Enabled := true;
  PageControl1.Pages[2].Enabled := true;
  PageControl1.Pages[3].Enabled := true;
  PageControl1.Pages[4].Enabled := true;

  {
    Descrição: Mostra/Oculta a aba de informações do CT-e
    Autor: Vinícius Godinho Del Rio
    Data: 11/03/2015
  }
  PageControl1.Pages[5].Enabled := True;

  // Mudamos para a guia detalhes
  TsDetalhe.Show;
  mniValidar.Enabled := False;
  QItem.Close;

 // Impedimos o acesso aos campos de edição
  edtDataPedi.Enabled := False;
  edtDataEntr.Enabled := False;
  DBIE_EXTERNO.Enabled := False;
  edtCodiClie.Enabled := False;
  DBCVen.Enabled := False;
  DBTipVen.Enabled := False;
  DBLookupComboBox6.Enabled := False;
  cbxEndeEntr.Enabled := False;
  CBxCidPorto.Enabled := False;
  CBxPais.Enabled := False;
  CBxPedArm.Enabled := False;
  DBPlaca.Enabled := False;
  Btplaca.Enabled := False;
  btn_PesqLote.Enabled := False;
  DBCForPg.Enabled := False;
  DBFormaPagto.Enabled := False;
  DBInstCob.Enabled := False;
  DBLookupComboBox7.Enabled := False;
  DBSitCob.Enabled := False;
  DBLookupComboBox9.Enabled := False;
  DBLookupComboBox3.Enabled := False;
  cbxConta.Enabled := False;
  DBRTipoFrete.Enabled := False;
  rdg_NFComplementar.Enabled := False;
  DBLookupComboBox5.Enabled := False;
  DBEdit7.Enabled := False;
  DBPesoPed.Enabled := False;
  DBEmbalagem.Enabled := False;
  DBCodMatEmba.Enabled := False;
  edtQtdeEmba.Enabled := False;
  edtPrecUnitBrut.Enabled := False;
  Btmaterial.Enabled := False;

  cbxConta.Enabled:= False;
  DBPlaca.Enabled := False;
  Btplaca.Enabled := False;
  btn_PesqLote.Enabled := False;
  DBIE_EXTERNO.Enabled := False;
  DBArmazena.Enabled := False;
  DBMemo1.Enabled := False;
  DBMemo2.Enabled := False;

  {
    Descrição: O Misael pediu para remover pois aparentemente não está sendo usado, dando lugar a novos campos.
    Autor: Vinícius Godinho Del Rio
    Data: 13/01/2015
  }
  //DBMemo3.Enabled := False;

  {
    Descrição: Desabilitando os campos de informações do CTe
    Autor: Vinícius Godinho Del Rio
    Data: 03/12/2014
  }
  edtTomadorID.Enabled := False;
  edtTomador.Enabled := False;
  edtRemetenteID.Enabled := False;
  edtRemetente.Enabled := False;
  edtDestinatarioID.Enabled := False;
  edtDestinatario.Enabled := False;
  btnSelecionaRemetente.Enabled := False;
  btnSelecionaDestinatario.Enabled := False;

end;

procedure TFrmPedVenda.ContrCrediAnter(Sender: TObject);
begin
  // Se o pedido ainda não estiver sendo editado
  If QPediVe['FL_STATPEDIVEND'] <> 'AV' then
  begin
    qryTemp.CLOSE;
    qryTemp.SQL.CLEAR;
    qryTemp.SQL.Text :=
    'SELECT  SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND *                              '+
    '        PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND) VL_TOTAPEDI                        '+
    '  FROM  PEDIDO_VENDA_ITEM                                                          '+
    ' WHERE (PEDIDO_VENDA_ITEM.ID_PEDIVEND = ' + QPediVe.FieldByName('ID_PEDIVEND').AsString + ') '; //IntToStr(qryForm['ID_PEDIVEND']) + ')';
    qryTemp.Open;

    // Guardamos o valor do crédito usado (antes da edição)
    ur_ValoPediAnte := qryTemp.FieldByName('VL_TOTAPEDI').AsFloat;

    qryTemp.Close;
  end;
end;


procedure TFrmPedVenda.QItemAfterInsert(DataSet: TDataSet);
begin
  // Chamamos a função que controla o crédito anterior à alteração
  ContrCrediAnter(Self);
end;

procedure TFrmPedVenda.QItemAfterDelete(DataSet: TDataSet);
begin
  // Chamamos a função que controla o crédito anterior à alteração
  ContrCrediAnter(Self);

end;

procedure TFrmPedVenda.QItemAfterEdit(DataSet: TDataSet);
begin
  // Chamamos a função que controla o crédito anterior à alteração
  ContrCrediAnter(Self);

end;

procedure TFrmPedVenda.QPediVeAfterEdit(DataSet: TDataSet);
begin
  // Chamamos a função que controla o crédito anterior à alteração
  ContrCrediAnter(Self);
end;

procedure TFrmPedVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
// if (KEY=(key_F2)) THEN
// begin
//   ShowMessage('Tecla F2 pressionada.');
// end;

 //tecla Alt
 if (KEY=4131) THEN
 begin
   valt:=True;
 end;
 //Teclas Alt+I
 if (KEY=73) and (valt=True) THEN
 begin
  If FrmPedVenda.Showing then
    If FrmPedVenda.SBNovo.Enabled=True then
       FrmPedVenda.SBNovoClick(sender);
   valt:=False;
 end;
 //Teclas Alt+G
 if (KEY=71) and (valt=True) THEN
 begin
   If FrmPedVenda.SBSalva.Enabled = True then
     FrmPedVenda.SBSalvaClick(Self);
   valt:=False;
 end;
 if (KEY=86) and (valt=True) THEN
 begin
   if FrmPedVenda.mniValidar.Enabled = true then
     FrmPedVenda.mniValidarClick(Self);
   valt:=False;
 end;
 if (KEY<>71) and (KEY<>73) and (KEY<>86) and (KEY<>4131) then
 begin
   valt:=False;
 end;
end;

procedure TFrmPedVenda.edtQtdeEmbaEnter(Sender: TObject);
begin
  edtQtdeEmba.Color := clMidlight;
end;

procedure TFrmPedVenda.edtPrecUnitBrutEnter(Sender: TObject);
begin
  edtPrecUnitBrut.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBCodMatEmbaEnter(Sender: TObject);
begin
  DBCodMatEmba.Color:= clMidlight;
end;

procedure TFrmPedVenda.edtPrecUnitBrutExit(Sender: TObject);
begin
  edtPrecUnitBrut.Color:=ClBase;
  // Ajustamos o total do item
  AjustTotalItem(Self);
end;

procedure TFrmPedVenda.SBDelClick(Sender: TObject);
var
  li_Loop,Vid_Cliente: Integer;
  VId_Pedivend:Double;
  lr_DifeValo, lr_ValoFalt, lr_CredAtua, lr_CredEspeUsad: Real;
  VLocal:Tbookmark;
begin
  if (QPediVeFL_CORTE.Value = 'S') and ((PageControl1.ActivePage = TSItem) or (PageControl1.ActivePage = TsDetalhe) or (PageControl1.ActivePage = TsLista) or (PageControl1.ActivePage = tabCTE)) then
  Begin
    Screen.Cursor := crDefault;
    MessageDlg('Pedido já passou pelo sistema de corte e não permite exclusão.', mtWarning, [mbOk], 0);
    Exit;
  end;

  // Forçamos o Exit do componente anterior
  ActiveControl := Nil;

   //verifica se o pedido já está em alguma carga AB.
  with QryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
     ' select id_pedivend      '+
     '   from ca_pedido_carga  '+
     '  where id_pedivend = :id_pedivend ';
    ParamByName('id_pedivend').AsFloat := QPediVeID_PEDIVEND.Value;
    Open;
    if not IsEmpty then
    begin
      MessageDlg('Este pedido já está em uma carga;' + #10+#13+
                 'Alteração não permitida ! ', mtInformation,[mbOk], 0, mbOk);
      exit;
    end;
  end;

  // VERIFICA SE O USUÁRIO DA EXCLUSÃO É O MESMO DA DIGITAÇÃO
  if QPediVe['ID_USUASIST_DIGIPEDIVEND'] <> gi_CodiUsuaSist then
  begin
    ShowMessage('Só é permitida a Exclusão, pelo usuário digitador do Pedido.');
    exit;
  end;


  If (QPediVe['FL_STATPEDIVEND'] = 'AV') OR (QPediVe['FL_STATPEDIVEND'] = 'AB') then
    BEGIN
      If TsLista.Showing then
        TsDetalhe.Show;

      // Pedimos confirmação da exclusão
      Screen.Cursor := crDefault;
      If MessageDlg('Confirma a Exclusão ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        Vid_Cliente := QPediVe['ID_CLIENTE'];
        VId_Pedivend:= QPediVe['ID_PEDIVEND'];
        // <CHC>
        // Se a query ativa for a principal
        If (TsDetalhe.Showing) or (tabCTE.Showing) then
          begin
            // Montamos os totais
            {qryTemp.Close;
            QryTemp.SQL.Clear;
            qryTemp.SQL.Text :=
            ' SELECT SUM( QN_EMBAITEMPEDIVEND ) QN_TOTAEMBA,  '+
            '        SUM( QN_TARAITEMPEDIVEND ) QN_TOTATARA,  '+
            '        SUM( QN_PESOITEMPEDIVEND ) QN_TOTAPESO,  '+
            '        SUM( QN_PESOITEMPEDIVEND *               '+
            '            VL_UNITITEMPEDIVEND ) VL_TOTAPEDI    '+
            '  FROM PEDIDO_VENDA_ITEM Pedido_venda_item       '+
            ' WHERE ID_PEDIVEND = ' + QPediVe.FieldByName('ID_PEDIVEND').AsString ;
            qryTemp.Open;

            // Pegamos dados de crédito atualizamos
            QryClie.close;
            QryClie.SQL.clear;

            // Se a empresa for a matriz
            if (gi_Filial = 1) Or (gi_Filial = 4) then
            begin
            QryClie.SQL.Text :=
            ' SELECT Cliente.VL_LIMICREDCLIE,                                    '+
            '        Cliente.VL_CREDATUACLIE,                                    '+
            '        Cliente.VL_CREDUSADCLIE,                                    '+
            '        Cliente.VL_CREDESPECLIE,                                    '+
            '        Cliente.VL_CREDESPEUSADCLIE,                                '+
            '        Cliente.FL_TIPOBLOQCLIE,                                    '+
            '        Cliente.QN_TITUVENCCLIE,                                    '+
            '        Cliente.VL_TITUVENCCLIE                                     '+
            '  FROM  CLIENTE Cliente                                             '+
            ' WHERE (Cliente.ID_CLIENTE = ' + IntToStr(QPediVe['ID_CLIENTE']) + ')';
            end
            // Se for alguma filial
            else
            begin
            qryClie.SQL.Text :=
            'SELECT LNK_Cliente.VL_LIMICREDCLIE,                                '+
            '       LNK_Cliente.VL_CREDATUACLIE,                                '+
            '       LNK_Cliente.VL_CREDUSADCLIE,                                '+
            '       LNK_Cliente.VL_CREDESPECLIE,                                '+
            '       LNK_Cliente.VL_CREDESPEUSADCLIE,                            '+
            '       LNK_Cliente.FL_TIPOBLOQCLIE,                                '+
            '       LNK_Cliente.QN_TITUVENCCLIE,                                '+
            '       LNK_Cliente.VL_TITUVENCCLIE                                 '+
            '  FROM LNK_CLIENTE LNK_Cliente                                     '+
            ' WHERE (LNK_Cliente.ID_CLIENTE = ' + IntToStr(QPediVe['ID_CLIENTE']) + ') ';
            end;

            // Abrimos a query
            qryClie.Open;

            // Se conseguirmos iniciar uma transação
            //      if IniciTrans(dtmAPL.dtbAPL) then
            //      try
            // Se o pedido utilizou controle de crédito
            if QPediVe.FieldByName('FL_CREDUSADPEDIVEND').AsString = 'S' then
            begin
            // Se o cliente tiver bloqueio por crédito
            if (qryClie.FieldByName('FL_TIPOBLOQCLIE').AsString = 'CI') or
            (qryClie.FieldByName('FL_TIPOBLOQCLIE').AsString = 'AB') then
            begin
            // Se o pedido está confirmado
            if QPediVe['FL_STATPEDIVEND'] <> 'AV' then
            begin
            // Pegamos o total do pedido
            lr_DifeValo := qryTemp.FieldByName('VL_TOTAPEDI').AsFloat;
            end
            // Se o pedido está em manutenção
            else
            begin
            lr_DifeValo := ur_ValoPediAnte;
            end;

            // Se o crédito especial usado for suficiente para reverter a transação
            if qryClie.FieldByName('VL_CREDESPEUSADCLIE').AsFloat >= Abs(lr_DifeValo) then
            begin
            // Se estivermos na matriz
            if (gi_Filial = 1) or (gi_Filial = 4) then
            begin
            OSQL.SQL.Clear;
            OSQL.SQL.Text :=
            'UPDATE CLIENTE                                                                                            '+
            '   SET VL_CREDESPEUSADCLIE = VL_CREDESPEUSADCLIE - ' + ReplaceStr(FloatToStr(lr_DifeValo), ',', '.') + ','+
            '       VL_CREDESPECLIE = VL_CREDESPECLIE + '         + ReplaceStr(FloatToStr(lr_DifeValo), ',', '.')      +
            ' WHERE (ID_CLIENTE = ' + IntToStr(QPediVe['ID_CLIENTE'])                                              + ')';
            end
            // Se estivermos em alguma filial
            else
            begin
            OSQL.SQL.Clear;
            OSQL.SQL.Text :=
            'UPDATE LNK_CLIENTE                                                                                        '+
            '   SET VL_CREDESPEUSADCLIE = VL_CREDESPEUSADCLIE - ' + ReplaceStr(FloatToStr(lr_DifeValo), ',', '.') + ','+
            '       VL_CREDESPECLIE = VL_CREDESPECLIE + '         + ReplaceStr(FloatToStr(lr_DifeValo), ',', '.')      +
            ' WHERE (ID_CLIENTE = ' + IntToStr(QPediVe['ID_CLIENTE'])                                              + ')';
            end;

            OSQL.Execute;
            end

            // Se o crédito especial usado não for suficiente para reverter a transação
            else
            begin
            // Guardamos o crédito especial usado
            lr_CredEspeUsad := qryClie.FieldByName('VL_CREDESPEUSADCLIE').AsFloat;
            // Se estivermos na matriz
            if (gi_Filial = 1) or (gi_Filial = 4) then
            begin
            OSQL.SQL.Clear;
            OSQL.SQL.Text :=
            'UPDATE CLIENTE                                                                                                      '+
            '   SET VL_CREDESPECLIE = VL_CREDESPECLIE + ' + ReplaceStr(FloatToStr(lr_CredEspeUsad), ',', '.')               + ','+
            '       VL_CREDESPEUSADCLIE = 0                                                                                     ,'+
            '       VL_CREDUSADCLIE = VL_CREDUSADCLIE - ' + ReplaceStr(FloatToStr(lr_DifeValo - lr_CredEspeUsad), ',', '.') + ','+
            '       VL_CREDATUACLIE = VL_CREDATUACLIE + ' + ReplaceStr(FloatToStr(lr_DifeValo - lr_CredEspeUsad), ',', '.')      +
            ' WHERE (ID_CLIENTE = ' + IntToStr(QPediVe['ID_CLIENTE'])                                                        + ')';
            end
            // Se estivermos em alguma filial
            else
            begin
            OSQL.SQL.Clear;
            OSQL.SQL.Text :=
            'UPDATE LNK_CLIENTE                                                                                                  '+
            '   SET VL_CREDESPECLIE = VL_CREDESPECLIE + ' + ReplaceStr(FloatToStr(lr_CredEspeUsad), ',', '.')               + ','+
            '       VL_CREDESPEUSADCLIE = 0                                                                                     ,'+
            '       VL_CREDUSADCLIE = VL_CREDUSADCLIE - ' + ReplaceStr(FloatToStr(lr_DifeValo - lr_CredEspeUsad), ',', '.') + ','+
            '       VL_CREDATUACLIE = VL_CREDATUACLIE + ' + ReplaceStr(FloatToStr(lr_DifeValo - lr_CredEspeUsad), ',', '.')      +
            ' WHERE (ID_CLIENTE = ' + IntToStr(QPediVe['ID_CLIENTE'])                                                        + ')';
            end;
            OSQL.Execute;
            end;

            end;
            end;

            // Destruimos os objetos
            qryTemp.Close;

            qryClie.Close;

            // <CHC>
            // Atualizamos a query e apagamos os registros das tabelas associadas
            QItem.Close;
            QItem.ParamByName('ID_PEDIVEND').AsInteger := QPediVe['ID_PEDIVEND'];
            QItem.Open;

            // Loop para todos os itens
            for li_Loop := 1 to QItem.RecordCount do
            begin
            // Apagamos o Item
            QItem.Delete;
            end;

            // <CHC>
            // Atualizamos o banco
            QItem.ApplyUpdates;
            QItem.CommitUpdates;}

            //GRAVAR DADOS NA TABELA PEDIDO_EXCLUSAO_VENDA E PEDIDO_EXCLUSAO_VENDA_ITEM
            QExcPed.Open;
            QExcPedItem.Open;
            if QItem.Active = False then
              QItem.Open;

            If (QPediVe['FL_STATPEDIVEND'] = 'AB') then
            begin
              QItem.First;
              while not QItem.Eof do
              begin
                QExcPedItem.Append;
                QExcPedItemEMPRESA.Value:= QItemEMPRESA.Value;
                QExcPedItemFILIAL.Value:= QItemFILIAL.Value;
                QExcPedItemID_ITEMPEDIVEND.Value:= QItemID_ITEMPEDIVEND.Value;
                QExcPedItemID_PEDIVEND.Value:= QItemID_PEDIVEND.Value;
                QExcPedItemID_MATERIAL.Value:= QItemID_MATERIAL.Value;
                QExcPedItemID_EMBALAGEM.Value:= QItemID_EMBALAGEM.Value;
                QExcPedItemID_MATEEMBA.Value:= QItemID_MATEEMBA.Value;
                QExcPedItemID_TIPOOPER.Value:= QItemID_TIPOOPER.Value;
                QExcPedItemVL_UNITITEMPEDIVEND.Value:= QItemVL_UNITITEMPEDIVEND.Value;
                QExcPedItemQN_EMBAITEMPEDIVEND.Value:= QItemQN_EMBAITEMPEDIVEND.Value;
                QExcPedItemQN_PESOITEMPEDIVEND.Value:= QItemQN_PESOITEMPEDIVEND.Value;
                QExcPedItemQN_TARAITEMPEDIVEND.Value:= QItemQN_TARAITEMPEDIVEND.Value;
                QExcPedItemVL_UNITBRUTITEMPEDIVEND.Value:= QItemVL_UNITBRUTITEMPEDIVEND.Value;
                QExcPedItem.Post;
                QItem.Next;
              end;
              QExcPedItem.ApplyUpdates;
              QExcPedItem.CommitUpdates;

              QExcPed.Append;
              QExcPedEMPRESA.Value:= QPediVeEMPRESA.Value;
              QExcPedFILIAL.Value:= QPediVeFILIAL.Value;
              QExcPedID_PEDIVEND.Value:= QPediVeID_PEDIVEND.Value;
              QExcPedID_CLIENTE.Value:= QPediVeID_CLIENTE.Value;
              QExcPedID_VENDEDOR.Value:= QPediVeID_VENDEDOR.Value;
              QExcPedDT_PEDIVEND.Value:= QPediVeDT_PEDIVEND.Value;
              QExcPedDT_ENTRPEDIVEND.Value:= QPediVeDT_ENTRPEDIVEND.Value;
              QExcPedDT_DIGIPEDIVEND.Value:= QPediVeDT_DIGIPEDIVEND.Value;
              QExcPedID_TIPOPEDIVEND.Value:= QPediVeID_TIPOPEDIVEND.Value;
              QExcPedID_FORMPAGA.Value:= QPediVeID_FORMPAGA.Value;
              QExcPedID_CONTA.Value:= QPediVeID_CONTA.Value;
              QExcPedID_USUASIST_DIGIPEDIVEND.Value:= QPediVeID_USUASIST_DIGIPEDIVEND.Value;
              QExcPedQN_EMBAPEDIVEND.Value:= QPediVeQN_EMBAPEDIVEND.Value;
              QExcPedQN_PESOPEDIVEND.Value:= QPediVeQN_PESOPEDIVEND.Value;
              QExcPedQN_TARAPEDIVEND.Value:= QPediVeQN_TARAPEDIVEND.Value;
              QExcPedFL_STATPEDIVEND.Value:= QPediVeFL_STATPEDIVEND.Value;
              QExcPedVL_PEDIVEND.Value:= QPediVeVL_PEDIVEND.Value;
              QExcPedDT_EXCLUPEDIVEND.Value:= Now;
              QExcPed.Post;
              QExcPed.ApplyUpdates;
              QExcPed.CommitUpdates;
              QExcPed.Close;
              QExcPedItem.Close;
              QItem.Close;
            end;

            //apagamos os itens primeiro
            OSQL.SQL.Clear;;
            OSQL.SQL.Text :=
                ' DELETE PEDIDO_VENDA_ITEM  '+
                '  WHERE ID_PEDIVEND = :ID_PEDIVEND ';
            OSQL.ParamByName('ID_PEDIVEND').AsInteger := QPediVe['ID_PEDIVEND'];
            OSQL.Execute;

            QItem.Open;
            QItem.Refresh;
            QItem.Close;

            {
              Descrição: Se for pedido do tipo CT-e, deleta também os componentes de serviço caso existam
              Autor: Vinícius Godinho Del Rio
              Data: 18/03/2015
            }
            if (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S') then
            begin

              //Deleta todos os componentes de serviço do CT-e
              OSQL.SQL.Clear;
              OSQL.SQL.Text := 'DELETE CTE_COMPONENTES_SERVICO WHERE ID_PEDIVEND = :ID_PEDIVEND';
              OSQL.ParamByName('ID_PEDIVEND').AsInteger := QPediVe['ID_PEDIVEND'];
              OSQL.Execute;

              //Reabre os datasets para atualizar os campos na tela
              AbreQueryComParametro(QryCTECompServ, 'ID_PEDIVEND', QPediVe['ID_PEDIVEND']);
              //AbreQueryComParametro(QryPedidoVenda, 'ID_PEDIVEND', QPediVe['ID_PEDIVEND']);

            end;

            // Apagamos o registro da query principal
            QPediVe.Delete;

            QPediVe.ApplyUpdates;

            // <CHC>
            // Limpamos o cache
            QPediVe.CommitUpdates;

            if (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S') then
              QryPedidoVenda.Refresh;

            // <CHC>
            // Fechamos a query de itens
            //        QItem.Close;

            FrmPrincipal.corrigelimite(Vid_Cliente);

            PageControl1.Pages[0].Enabled := true;
            PageControl1.Pages[1].Enabled := true;
            PageControl1.Pages[2].Enabled := true;
            PageControl1.Pages[3].Enabled := true;
            PageControl1.Pages[4].Enabled := (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0);  //documentos referenciados

            {
              Descrição: Mostra/Oculta a aba de informações do CT-e
              Autor: Vinícius Godinho Del Rio
              Data: 11/03/2015
            }
            PageControl1.Pages[5].Enabled := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

            PageControl1.Pages[0].TabVisible := true;
            PageControl1.Pages[1].TabVisible := true;
            PageControl1.Pages[2].TabVisible := true;
            PageControl1.Pages[3].TabVisible := true;
            PageControl1.Pages[4].TabVisible := (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0);  //documentos referenciados

            {
              Descrição: Mostra/Oculta a aba de informações do CT-e
              Autor: Vinícius Godinho Del Rio
              Data: 11/03/2015
            }
            PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

          end
        // Se a query ativa for a de Itens
        else if TSItem.Showing  then
          begin
            If QItem.IsEmpty then
            Begin
              Showmessage('Não existe item para excluir.');
              exit;
            end;
            If (QPediVe['FL_STATPEDIVEND'] <> 'AB') then
            Begin
              If (QPediVe['FL_STATPEDIVEND'] <> 'AV') then
              begin
                Showmessage('Pedido não está com Status AB ou AV.');
                exit;
              end;
            end;
            PageControl1.Pages[0].Enabled := false;
            PageControl1.Pages[1].Enabled := false;
            PageControl1.Pages[2].Enabled := false;
            PageControl1.Pages[3].Enabled := true;
            PageControl1.Pages[4].Enabled := false;

            {
              Descrição: Mostra/Oculta a aba de informações do CT-e
              Autor: Vinícius Godinho Del Rio
              Data: 11/03/2015
            }
            PageControl1.Pages[5].Enabled := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

            PageControl1.Pages[0].TabVisible := false;
            PageControl1.Pages[1].TabVisible := false;
            PageControl1.Pages[2].TabVisible := false;
            PageControl1.Pages[3].TabVisible := true;
            PageControl1.Pages[4].TabVisible := False;

            {
              Descrição: Mostra/Oculta a aba de informações do CT-e
              Autor: Vinícius Godinho Del Rio
              Data: 11/03/2015
            }
            PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

            mniValidar.Enabled := TRUE;

            Vlocal:=QPediVe.GetBookmark;

            // Apagamos o registro
            QItem.Delete;

            // Atualizamos o banco
            QItem.ApplyUpdates;
            QItem.CommitUpdates;

            // <CHC>
            // Se a exclusão do item gerar a necessidade de atualizar outra tabela
            //  (um dos casos é estar trabalhando com o sistema de validação)
            // OBS.: Caso não haja objeto criado em tempo de projeto para atualizar a tabela,
            //       ajustar o manipulador do evento OnUpdateRecord da query para fazer a atualização.

            // Caso a query para atualizar a tabela exista em tempo de projeto
            // Ativamos a flag de edição interna
            // ub_EdicInte := True;

            // Ajustamos o status da tabela principal (por exemplo)
            QPediVe.Edit;
            QPediVe.FieldByName('FL_STATPEDIVEND').AsString := 'AV';

            // Calculamos o valor total do pedido
            qryTemp.Close;
            qryTemp.SQL.Text := 'SELECT            '+
                                '       SUM( (VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND) - NVL(VL_DESCITEM,0) ) VL_PEDIVEND,    '+
                                '       round(SUM(VL_UNITBRUTITEMPEDIVEND * QN_PESOITEMPEDIVEND) -           '+
                                '       SUM(VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND),2) VL_DESCPEDIVEND , COUNT(*)  ITENS'+
                                '  FROM PEDIDO_VENDA_ITEM                                              '+
                                ' WHERE ID_PEDIVEND = ' + IntToStr(QPediVe['ID_PEDIVEND']) + '         ';
            qryTemp.Open;

            if QryTemp.FieldByName('ITENS').Value = 0  then
            begin
              Screen.Cursor := crDefault;
              MessageDlg('Deve existir pelo menos um item !', mtWarning, [mbOk], 0);

              // Incluimos um item
              SBNovoClick (Self);

              Exit;
            end;

            // Ajustamos o valor do pedido
            QPediVe.FieldByName('VL_PEDIVEND').AsFloat := qryTemp.FieldByName('VL_PEDIVEND').AsFloat;

            // Ajustamos o valor do desconto
            QPediVe.FieldByName('VL_DESCPEDIVEND').AsFloat := qryTemp.FieldByName('VL_DESCPEDIVEND').AsFloat;

            QPediVe.Post;
            QPediVe.ApplyUpdates;
            QPediVe.CommitUpdates;

            //Corrige o limite.
            FrmPrincipal.corrigelimite(Vid_Cliente);

            qryTemp.Close;

            DBPEDIVEND.Text := FloattoStr(VID_PEDIVEND);

            QItem.Close;
            QItem.ParamByName('Id_Pedivend').asFLOAT := VId_Pedivend;
            QItem.Open;
            //     QPediVe.GotoBookmark(Vlocal);

            // <CHC>
            // Se pelo menos um item for obrigatório e não estivermos trabalhando com o sistema de validação
            // Se não sobrou nenhum registro

          end
        else if TsDocRef.Showing then
        Begin
          Qry_DocRef.Delete;
        End;
      end;
    END
  ELSE
  begin
    SHOWMESSAGE('Pedido fechado não pode ser excluído.');
    exit;
  end;
end;

procedure TFrmPedVenda.mniUltiVendClick(Sender: TObject);
begin

  // Se não houver um cliente
  if edtCodiClie.Text='' then
  begin
    Screen.Cursor := crDefault;
    MessageDlg('Cliente deve ser informado.', mtWarning, [mbOk], 0);
    Exit;
  end
  // Se houver um cliente
  else
  begin

    Application.CreateForm(TFrmUltVend, FrmUltVend);
    try
      FrmUltVend.QRUltVend.ParamByName('pi_IdClie').AsString := QPediVe['ID_CLIENTE'];
      FrmUltVend.QRUltVend.Open;
      FrmUltVend.QRItemVend.Open;
      FrmUltVend.ShowModal;
    Finally
      FrmUltVend.Free;
    end;

  end;

end;
procedure TFrmPedVenda.BPesqDtEntreClick(Sender: TObject);
begin
   Cria_FrmSelData(Vdtstr);
   edtDataEntr.Text := Vdtstr;
   edtDataEntr.SetFocus;
end;

procedure TFrmPedVenda.BPesqDtClick(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  edtDataPedi.Text := Vdtstr;
  edtDataEntr.SetFocus;
end;

procedure TFrmPedVenda.Timer1Timer(Sender: TObject);
begin
   inc(xcolor);
   if xcolor=2 then
    begin
     DBEdit8.Color := clRed;
     xcolor := 0;
    end
   Else
     DBEdit8.Color := clTeal;
end;

procedure TFrmPedVenda.TtulosemCartrio1Click(Sender: TObject);
begin
  TRY
  If not (QPediVe.IsEmpty) and (QPediVe.FieldByName('ID_CLIENTE').AsFLOAT <> 0) Then
  begin
    FrmCartorio:=TFrmCartorio.Create(Self);
    with FrmCartorio do
    begin
      QRCartorio.Close;
      QRCartorio.ParamByName('VCLIENTE').AsFLOAT := QPediVe.FieldByName('ID_CLIENTE').AsFLOAT;
      QRCartorio.Open;
      FrmCartorio.ShowModal;
    end;
  end;
  FINALLY
    FrmCartorio.FREE;
  END;

end;

procedure TFrmPedVenda.FormCreate(Sender: TObject);
begin
  //temporário até terminar CTe
  //TsCTe.TabVisible:= False;

  frmPrincipal.TrocaNomeSequence(Self);
  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 60;
  QrDireitos.Open;
  if not QrDireitos.IsEmpty then
    sbRemCorte.Visible:= True
  else
    sbRemCorte.Visible:= False;

  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 61;
  QrDireitos.Open;
  if not QrDireitos.IsEmpty then
    sbContas.Visible:= True
  else
    sbContas.Visible:= False;

  //cupom fiscal
  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 67;
  QrDireitos.Open;
  if not QrDireitos.IsEmpty then
    SBCupom.Visible:= True
  else
    SBCupom.Visible:= False;

  //Ver Todos Lotes
  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 76;
  QrDireitos.Open;
  
  if not QrDireitos.IsEmpty then
     VerTodosLotes := True
  else
    VerTodosLotes  := False;



  if (gi_Filial = 4) or (gi_Filial = 91) then
    begin
      DBGrid2.Columns[4].Visible:= True;
      DBGrid2.Columns[5].Visible:= True;
      lbPedCompra.Enabled:= True;
      lbItemPedCompra.Enabled:= True;
      DBPedCompra.Enabled:= True;
      DBItemPedCompra.Enabled:= True;
      DBPedCompra.TabStop:= True;
      DBItemPedCompra.TabStop:= True;
    end
  else
    begin
      DBGrid2.Columns[4].Visible:= False;
      DBGrid2.Columns[5].Visible:= False;
      lbPedCompra.Enabled:= False;
      lbItemPedCompra.Enabled:= False;
      DBPedCompra.Enabled:= False;
      DBItemPedCompra.Enabled:= False;
      DBPedCompra.TabStop:= False;
      DBItemPedCompra.TabStop:= False;
    end;

  QryConSaldo.Close;
  QryConSaldo.ParamByName('P_ID_USUARIO').Value:= gi_IdenUsua;
  QryConSaldo.Open;

  if QryConSaldo.IsEmpty then
    sbSaldo.Enabled:= False
  else
    sbSaldo.Enabled:= True;

  QryConSaldo.Close;
end;

procedure TFrmPedVenda.SB_COPIAClick(Sender: TObject);
VAR
  VSG_TIPOFRETPEDIVEND,VFL_ESPEPEDIVEND,VFL_EXPOFINAPEDIVEND,
  VFL_CREDUSADPEDIVEND,VFL_CONFPEDIDEVOVEND_PEDIVEND,VFX_PEDIVEND,
  VGN_OBSEPADR_PEDIVEND,VGN_OBSEEXPEPEDIVEND,
  VGN_OBSEPEDIVEND,VIE_PEDIVEND, VFL_CORTE, VFL_PNF, VFL_NFCOMPLEMENTAR :STRING;
  VID_TIPOLOGI, VPC_DESCPEDIVEND, VVL_DESCPEDIVEND, VQN_VOLUPEDIVEND,
  VQN_EMBAPEDIVEND, VQN_PESOPEDIVEND, VQN_TARAPEDIVEND,
  VQN_EMBAEXPEPEDIVEND,VQN_PESOPADREXPEPEDIVEND,VQN_TARAREALEXPEPEDIVEND,
  VQN_PESOREALEXPEPEDIVEND, VQN_FATOFRETABAT_PEDIVEND,
  VNR_ORDEPEDIVEND, VVL_QUEBPEDIVEND,
  VVL_OUTRAJUSPEDIVEND, VVL_DEVOPEDIVEND,
  VQN_PESOPADRDEVOPEDIVEND, VQN_PESOREALDEVOPEDIVEND,
  VQN_TARAREALDEVOPEDIVEND, VQN_EMBADEVOPEDIVEND, VID_CONTA:DOUBLE;

  VID_CLIENTE,
  VID_VENDEDOR,
  VID_TIPOPEDIVEND,
  VID_FORMPAGA,
  VID_SITUCOBR,
  VID_INSTCOBR,
  VID_ENDECLIE_COBRANCA,
  VID_ENDECLIE_ENTREGA,
  VID_TIPOCOBR,
  VID_LOTEEDIPEDIVEND,
  VVL_SEGUPEDIVEND,
  VVL_DESPPEDIVEND,
  VVL_FRETPEDIVEND,
  VVL_PEDIVEND,
  VGN_ESPEPEDIVEND,
  VGN_MARCPEDIVEND,
  VVL_FATUPEDIVEND,
  VNR_PEDIVEND,
  VPC_BONIPEDIVEND,
  VCPORCOMIS:DOUBLE;

  Temp: TComponent;
  li_Loop    : Integer;
  ls_PrefTag : String;
begin
  SB_PRIMEIRO.Enabled:= False;
  SB_ANTERIOR.Enabled:= False;
  SB_PROXIMO.Enabled:= False;
  SB_ULTIMO.Enabled:=  False;
  SBNovo.Enabled:= False;
  SBDel.Enabled:=  False;
  SBSalva.Enabled:=True;
  SBCancel.Enabled:=True;
  SBCupom.Enabled:= False;
  SB_COPIA.Enabled:= False;
  Sb_Sair.Enabled:= False;

  PageControl1.Pages[0].TabVisible:= false;
  PageControl1.Pages[1].TabVisible:= false;
  PageControl1.Pages[3].TabVisible:= false;
  PageControl1.Pages[4].TabVisible:= false;

  {
    Descrição: Mostra/Oculta a aba de informações do CT-e
    Autor: Vinícius Godinho Del Rio
    Data: 11/03/2015
  }
  PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

  PageControl1.Pages[2].Show;

 //Permitimos o acesso aos campos de edição
 For li_Loop :=0 to ComponentCount - 1  do
  begin
    Temp := Components[li_Loop];
    If  (Temp is TDBEDIT) then
      TScrollBox(temp).Enabled := True;
    If  (Temp is TDBCOMBOBOX) then
      TScrollBox(temp).Enabled := True;
    If  (Temp is TDBlookupCOMBOBOX) then
      TScrollBox(temp).Enabled := True;
    If  (Temp is Tbitbtn) then
      TScrollBox(temp).Enabled := True;
    If  (Temp is TDBMemo) then
      TScrollBox(temp).Enabled := True;
    If  (Temp is TDBRadioGroup) then
      TScrollBox(temp).Enabled := True;
   DbCAuto.Enabled := False;
  end;

  //IGUALAMOS OS VALORES A VARIAVEIS

  VID_PEDIVEND := QPediVeID_PEDIVEND.Value;

  IF NOT QPediVeSG_TIPOFRETPEDIVEND.IsNull THEN
    VSG_TIPOFRETPEDIVEND:= QPediVe['SG_TIPOFRETPEDIVEND'];
  IF NOT QPediVeID_TIPOLOGI.IsNull  THEN
    VID_TIPOLOGI:= QPediVe['ID_TIPOLOGI'];
  IF NOT QPediVePC_DESCPEDIVEND.IsNull THEN
    VPC_DESCPEDIVEND:= QPediVe['PC_DESCPEDIVEND'];
  IF NOT QPediVeVL_DESCPEDIVEND.IsNull THEN
    VVL_DESCPEDIVEND:= QPediVe['VL_DESCPEDIVEND'];
  IF NOT QPediVeQN_VOLUPEDIVEND.IsNull THEN
    VQN_VOLUPEDIVEND:= QPediVe['QN_VOLUPEDIVEND'];
  IF NOT QPediVeQN_EMBAPEDIVEND.IsNull THEN
    VQN_EMBAPEDIVEND:= QPediVe['QN_EMBAPEDIVEND'];
  IF NOT QPediVeQN_PESOPEDIVEND.IsNull THEN
    VQN_PESOPEDIVEND:= QPediVe['QN_PESOPEDIVEND'];
  IF NOT QPediVeQN_TARAPEDIVEND.IsNull THEN
    VQN_TARAPEDIVEND:= QPediVe['QN_TARAPEDIVEND'];
  IF NOT QPediVeQN_EMBAEXPEPEDIVEND.IsNull THEN
    VQN_EMBAEXPEPEDIVEND:= QPediVe['QN_EMBAEXPEPEDIVEND'];
  IF NOT QPediVeQN_PESOPADREXPEPEDIVEND.IsNull THEN
    VQN_PESOPADREXPEPEDIVEND:= QPediVe['QN_PESOPADREXPEPEDIVEND'];
  IF NOT QPediVeQN_TARAREALEXPEPEDIVEND.IsNull THEN
    VQN_TARAREALEXPEPEDIVEND:= QPediVe['QN_TARAREALEXPEPEDIVEND'];
  IF NOT QPediVeQN_PESOREALEXPEPEDIVEND.IsNull THEN
    VQN_PESOREALEXPEPEDIVEND:= QPediVe['QN_PESOREALEXPEPEDIVEND'];
  IF NOT QPediVeQN_FATOFRETABAT_PEDIVEND.IsNull THEN
    VQN_FATOFRETABAT_PEDIVEND:= QPediVe['QN_FATOFRETABAT_PEDIVEND'];
  IF NOT QPediVeFL_ESPEPEDIVEND.IsNull THEN
    VFL_ESPEPEDIVEND:=  QPediVe['FL_ESPEPEDIVEND'];
  IF NOT QPediVeNR_ORDEPEDIVEND.IsNull THEN
    VNR_ORDEPEDIVEND:=  QPediVe['NR_ORDEPEDIVEND'];
  IF NOT QPediVeVL_QUEBPEDIVEND.IsNull THEN
    VVL_QUEBPEDIVEND:=  QPediVe['VL_QUEBPEDIVEND'];
  IF NOT QPediVeVL_OUTRAJUSPEDIVEND.IsNull THEN
    VVL_OUTRAJUSPEDIVEND:= QPediVe['VL_OUTRAJUSPEDIVEND'];
  IF NOT QPediVeVL_DEVOPEDIVEND.IsNull THEN
    VVL_DEVOPEDIVEND:=  QPediVe['VL_DEVOPEDIVEND'];
  IF NOT QPediVeQN_PESOPADRDEVOPEDIVEND.IsNull THEN
    VQN_PESOPADRDEVOPEDIVEND:=  QPediVe['QN_PESOPADRDEVOPEDIVEND'];
  IF NOT QPediVeQN_PESOREALDEVOPEDIVEND.IsNull THEN
    VQN_PESOREALDEVOPEDIVEND:=  QPediVe['QN_PESOREALDEVOPEDIVEND'];
  IF NOT QPediVeQN_PESOREALDEVOPEDIVEND.IsNull THEN
    VQN_PESOREALDEVOPEDIVEND:=  QPediVe['QN_PESOREALDEVOPEDIVEND'];
  IF NOT QPediVeQN_TARAREALDEVOPEDIVEND.IsNull THEN
    VQN_TARAREALDEVOPEDIVEND:=  QPediVe['QN_TARAREALDEVOPEDIVEND'];
  IF NOT QPediVeQN_EMBADEVOPEDIVEND.IsNull THEN
    VQN_EMBADEVOPEDIVEND :=  QPediVe['QN_EMBADEVOPEDIVEND'];
  IF NOT QPediVeID_CONTA.IsNull THEN
    VID_CONTA:=  QPediVe['ID_CONTA'];
  IF NOT QPediVeID_CLIENTE.IsNull THEN
    VID_CLIENTE:= QPediVe['ID_CLIENTE'];
  IF NOT QPediVeID_VENDEDOR.IsNull THEN
    VID_VENDEDOR:= QPediVe['ID_VENDEDOR'];
  IF NOT QPediVeID_TIPOPEDIVEND.IsNull  THEN
    VID_TIPOPEDIVEND:= QPediVe['ID_TIPOPEDIVEND'];
  IF NOT QPediVeID_FORMPAGA.IsNull THEN
    VID_FORMPAGA:= QPediVe['ID_FORMPAGA'];
  IF NOT QPediVeID_SITUCOBR.IsNull THEN
    VID_SITUCOBR:= QPediVe['ID_SITUCOBR'];
  IF NOT QPediVeID_INSTCOBR.IsNull THEN
    VID_INSTCOBR:= QPediVe['ID_INSTCOBR'];
  IF NOT QPediVeID_ENDECLIE_COBRANCA.IsNull THEN
    VID_ENDECLIE_COBRANCA:= QPediVe['ID_ENDECLIE_COBRANCA'];
  IF NOT QPediVeID_ENDECLIE_ENTREGA.IsNull THEN
    VID_ENDECLIE_ENTREGA:= QPediVe['ID_ENDECLIE_ENTREGA'];
  IF NOT QPediVeID_TIPOCOBR.IsNull THEN
    VID_TIPOCOBR:= QPediVe['ID_TIPOCOBR'];

  IF NOT QPediVeID_LOTEEDIPEDIVEND.IsNull THEN
    VID_LOTEEDIPEDIVEND:= QPediVe['ID_LOTEEDIPEDIVEND'];

  IF NOT QPediVeVL_SEGUPEDIVEND.IsNull THEN
    VVL_SEGUPEDIVEND:= QPediVe['VL_SEGUPEDIVEND'];

  IF NOT QPediVeVL_DESPPEDIVEND.IsNull THEN
    VVL_DESPPEDIVEND:= QPediVe['VL_DESPPEDIVEND'];

  IF NOT QPediVeVL_FRETPEDIVEND.IsNull THEN
    VVL_FRETPEDIVEND:= QPediVe['VL_FRETPEDIVEND'];

  IF NOT QPediVeVL_PEDIVEND.IsNull THEN
    VVL_PEDIVEND:= QPediVe['VL_PEDIVEND'];

  IF NOT QPediVeGN_ESPEPEDIVEND.IsNull THEN
    VGN_ESPEPEDIVEND:= QPediVe['GN_ESPEPEDIVEND'];

  IF NOT QPediVeGN_MARCPEDIVEND.IsNull THEN
    VGN_MARCPEDIVEND:= QPediVe['GN_MARCPEDIVEND'];

  IF NOT QPediVeGN_OBSEPADR_PEDIVEND.IsNull THEN
    VGN_OBSEPADR_PEDIVEND:= QPediVe['GN_OBSEPADR_PEDIVEND'];

  IF NOT QPediVeGN_OBSEEXPEPEDIVEND.IsNull THEN
    VGN_OBSEEXPEPEDIVEND:= QPediVe['GN_OBSEEXPEPEDIVEND'];

  IF NOT QPediVeGN_OBSEPEDIVEND.IsNull THEN
    VGN_OBSEPEDIVEND:= QPediVe['GN_OBSEPEDIVEND'];

  IF NOT QPediVeVL_FATUPEDIVEND.IsNull THEN
    VVL_FATUPEDIVEND:= QPediVe['VL_FATUPEDIVEND'];

  IF NOT QPediVeFX_PEDIVEND.IsNull THEN
    VFX_PEDIVEND:= QPediVe['FX_PEDIVEND'];

  IF NOT QPediVeNR_PEDIVEND.IsNull THEN
    VNR_PEDIVEND:= QPediVe['NR_PEDIVEND'];

  IF NOT QPediVeIE_PEDIVEND.IsNull THEN
    VIE_PEDIVEND:= QPediVe['IE_PEDIVEND'];

  IF NOT QPediVePC_BONIPEDIVEND.IsNull THEN
    VPC_BONIPEDIVEND:= QPediVe['PC_BONIPEDIVEND'];

  IF NOT QPediVeCPORCOMIS.IsNull THEN
    VCPORCOMIS:= QPediVe['CPORCOMIS'];

  IF NOT QPediVeFL_CORTE.IsNull THEN
    VFL_CORTE:= QPediVe['FL_CORTE'];

  IF NOT QPediVeFL_PNF.IsNull THEN
     VFL_PNF := QPediVe['FL_PNF'];

  IF NOT QPediVeFL_NFCOMPLEMENTAR.IsNull THEN
     VFL_NFCOMPLEMENTAR := QPediVe['FL_NFCOMPLEMENTAR'];

  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := ' select sysdate  from  dual ';
  qryTemp.Open;
  if not(qryTemp.IsEmpty) then
     ld_DataHora := qryTemp.FieldByName('SYSDATE').AsDateTime;
  qryTemp.close;


  //IGUALAMOS OS VALORES AO NOVO PEDIDO
  QPediVe.Insert;
  QPediVe.FieldByName('EMPRESA').AsString := gs_Empresa;
  QPediVe.FieldByName('FILIAL').AsInteger := gi_Filial;
  QPediVe.FieldByName('FX_PEDIVEND').AsString := 'N';
  QPediVe['DT_PEDIVEND']     := Date;
  QPediVe['DT_ENTRPEDIVEND'] := Date + 1;
  QPediVe['DT_DIGIPEDIVEND'] := ld_DataHora;
  QPediVe['ID_USUASIST_DIGIPEDIVEND'] := gi_CodiUsuaSist;
  QPediVe['NM_REDUUSUASIST'] := gs_NomeReduUsuaSist;
  QPediVe['FL_STATPEDIVEND'] := 'AV';
  QPediVe['SG_TIPOFRETPEDIVEND'] := VSG_TIPOFRETPEDIVEND;
  QPediVe['ID_TIPOLOGI'] := VID_TIPOLOGI;
  QPediVe['PC_DESCPEDIVEND'] := VPC_DESCPEDIVEND;
  QPediVe['VL_DESCPEDIVEND'] := VVL_DESCPEDIVEND;
  QPediVe['QN_VOLUPEDIVEND'] := VQN_VOLUPEDIVEND;
  QPediVe['QN_EMBAPEDIVEND'] := VQN_EMBAPEDIVEND;
  QPediVe['QN_PESOPEDIVEND'] := VQN_PESOPEDIVEND;
  QPediVe['QN_TARAPEDIVEND'] := VQN_TARAPEDIVEND;
//  QPediVe['QN_EMBAEXPEPEDIVEND'] := VQN_EMBAEXPEPEDIVEND;
//  QPediVe['QN_PESOPADREXPEPEDIVEND'] := VQN_PESOPADREXPEPEDIVEND;
//  QPediVe['QN_TARAREALEXPEPEDIVEND'] := VQN_TARAREALEXPEPEDIVEND;
//  QPediVe['QN_PESOREALEXPEPEDIVEND'] := VQN_PESOREALEXPEPEDIVEND;
//  QPediVe['QN_FATOFRETABAT_PEDIVEND'] := VQN_FATOFRETABAT_PEDIVEND;
  QPediVe['FL_ESPEPEDIVEND'] := VFL_ESPEPEDIVEND;
  QPediVe['NR_ORDEPEDIVEND'] := VNR_ORDEPEDIVEND;
  QPediVe['VL_QUEBPEDIVEND'] := VVL_QUEBPEDIVEND;
//  QPediVe['VL_OUTRAJUSPEDIVEND'] := VVL_OUTRAJUSPEDIVEND;
//  QPediVe['VL_DEVOPEDIVEND'] := VVL_DEVOPEDIVEND;
//  QPediVe['QN_PESOPADRDEVOPEDIVEND'] := VQN_PESOPADRDEVOPEDIVEND;
//  QPediVe['QN_PESOREALDEVOPEDIVEND'] := VQN_PESOREALDEVOPEDIVEND;
//  QPediVe['QN_PESOREALDEVOPEDIVEND'] := VQN_PESOREALDEVOPEDIVEND;
 // QPediVe['QN_TARAREALDEVOPEDIVEND'] := VQN_TARAREALDEVOPEDIVEND;
//  QPediVe['QN_EMBADEVOPEDIVEND'] := VQN_EMBADEVOPEDIVEND;
  QPediVe['ID_CONTA'] := VID_CONTA;
  QPediVe['ID_CLIENTE']:=VID_CLIENTE;
  QPediVe['ID_VENDEDOR']:= VID_VENDEDOR;
  QPediVe['ID_TIPOPEDIVEND']:=VID_TIPOPEDIVEND;
  QPediVe['ID_FORMPAGA']:= VID_FORMPAGA;
  QPediVe['ID_SITUCOBR']:= VID_SITUCOBR;
  QPediVe['ID_INSTCOBR']:= VID_INSTCOBR;
  QPediVe['ID_ENDECLIE_COBRANCA']:= VID_ENDECLIE_COBRANCA;
  QPediVe['ID_ENDECLIE_ENTREGA']:= VID_ENDECLIE_ENTREGA;
  QPediVe['ID_TIPOCOBR']:=VID_TIPOCOBR;
  QPediVe['ID_LOTEEDIPEDIVEND']:= VID_LOTEEDIPEDIVEND;
  QPediVe['VL_SEGUPEDIVEND'] := VVL_SEGUPEDIVEND;
  QPediVe['VL_DESPPEDIVEND']:= VVL_DESPPEDIVEND ;
  QPediVe['VL_FRETPEDIVEND']:= VVL_FRETPEDIVEND ;
  QPediVe['VL_PEDIVEND']:= VVL_PEDIVEND;
  QPediVe['GN_ESPEPEDIVEND']:=  VGN_ESPEPEDIVEND;
  QPediVe['GN_MARCPEDIVEND']:=  VGN_MARCPEDIVEND;
  QPediVe['GN_OBSEPADR_PEDIVEND']:= VGN_OBSEPADR_PEDIVEND;
  QPediVe['GN_OBSEEXPEPEDIVEND']:=  VGN_OBSEEXPEPEDIVEND;
  QPediVe['GN_OBSEPEDIVEND']:= VGN_OBSEPEDIVEND;
//  QPediVe['VL_FATUPEDIVEND']:= VVL_FATUPEDIVEND;
  QPediVe['FX_PEDIVEND']:=  VFX_PEDIVEND;
  QPediVe['NR_PEDIVEND']:=  VNR_PEDIVEND;
  QPediVe['IE_PEDIVEND']:=  VIE_PEDIVEND;
  QPediVe['PC_BONIPEDIVEND']:=  VPC_BONIPEDIVEND;
  QPediVe['CPORCOMIS']:= VCPORCOMIS;
  QPediVe['FL_CORTE']:= VFL_CORTE;
  QPediVe['FL_NFCOMPLEMENTAR']:= VFL_NFCOMPLEMENTAR ;
  QPediVe['FL_PNF']:= VFL_PNF ;


  QPediVe.Post;
  QPediVe.ApplyUpdates;
  QPediVe.CommitUpdates;
//  QPediVe.Refresh;
  QPediVe.edit;
  edtCodiClieExit(nil);
  VCopia := True;
end;
//TIAGOARIONE MINHANINA
procedure TFrmPedVenda.mniSaldoLanClick(Sender: TObject);
begin
 Screen.Cursor := crSQLWait;
 Application.CreateForm(TFrmSaldoVendas,FrmSaldoVendas);
 try

   FrmSaldoVendas.qryForm.close;
   FrmSaldoVendas.Qr.close;

   FrmSaldoVendas.qryForm.ParamByName('VENDEDOR').AsFLOAT := QPediVe['ID_VENDEDOR'];
   FrmSaldoVendas.Qr.ParamByName('VENDEDOR').AsFLOAT := QPediVe['ID_VENDEDOR'];

   FrmSaldoVendas.qryForm.ParamByName('DT_ENTRE').AsDATETIME := QPediVe['DT_ENTRPEDIVEND'];
   FrmSaldoVendas.Qr.ParamByName('DT_ENTRE').AsDATETIME := QPediVe['DT_ENTRPEDIVEND'];

   FrmSaldoVendas.qryForm.ParamByName('PRODMATEEMBA').AsFLOAT := QItem['ID_PRODMATEEMBA'];
   FrmSaldoVendas.Qr.ParamByName('PRODMATEEMBA').AsFLOAT := QItem['ID_PRODMATEEMBA'];

   FrmSaldoVendas.qryForm.Open;
   FrmSaldoVendas.Qr.Open;
   Screen.Cursor := crDefault;
   FrmSaldoVendas.ShowModal;
 Except
   FrmSaldoVendas.Free;
 end;

end;

procedure TFrmPedVenda.TsListaShow(Sender: TObject);
begin
  mniSaldoLan.Enabled := False;
end;

procedure TFrmPedVenda.BtplacaClick(Sender: TObject);
begin
 If (QPediVeFL_STATPEDIVEND.Value = 'AB') THEN
      VEDITPLACA:=TRUE;
 try
   FrmPesqCaminhao:=TFrmPesqCaminhao.Create(Self);
   FrmPesqCaminhao.VORIGEM:=4;
   FrmPesqCaminhao.Show;
 except;
   FrmPesqCaminhao.Free;
 end;
end;

procedure TFrmPedVenda.DBPlacaEnter(Sender: TObject);
begin
  DBPlaca.Color:= clMidlight;
end;

procedure TFrmPedVenda.CBxCidPortoEnter(Sender: TObject);
begin
  CBxCidPorto.Color:= clMidlight;
end;

procedure TFrmPedVenda.CBxPaisEnter(Sender: TObject);
begin
  CBxPais.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBPlacaExit(Sender: TObject);
begin
  DBPlaca.Color:= clBASE;
end;

procedure TFrmPedVenda.CBxCidPortoExit(Sender: TObject);
begin
  CBxCidPorto.Color:= clBASE;
end;

procedure TFrmPedVenda.CBxPaisExit(Sender: TObject);
begin
  CBxPais.Color:= clBASE;
end;

procedure TFrmPedVenda.DBPlacaChange(Sender: TObject);
begin
  If (QPediVeFL_STATPEDIVEND.Value = 'AB') THEN
      VEDITPLACA:=TRUE;
end;

procedure TFrmPedVenda.QPediVeID_CONTAChange(Sender: TField);
begin
  If (QPediVeFL_STATPEDIVEND.Value = 'AV') OR (QPediVeFL_STATPEDIVEND.Value = 'AB') THEN
    mniValidar.Enabled := True;
end;

procedure TFrmPedVenda.SB_PNFClick(Sender: TObject);
var
  Temp: TComponent;
  li_Loop    : Integer;
begin
  // Forçamos o Exit do componente anterior
  ActiveControl := Nil;
  VPNF:= True;

  SB_PRIMEIRO.Enabled:= False;
  SB_ANTERIOR.Enabled:= False;
  SB_PROXIMO.Enabled:= False;
  SB_ULTIMO.Enabled:=  False;
  SBNovo.Enabled:= False;
  SBDel.Enabled:=  False;
  SBSalva.Enabled:= True;
  SBCancel.Enabled:= True;
  SBCupom.Enabled:= False;
  SB_COPIA.Enabled:= False;
  Sb_Sair.Enabled:= False;
  SB_PNF.Enabled := False;
  SB_Editar.Enabled := False;

  PageControl1.Pages[0].TabVisible:= false;
  PageControl1.Pages[1].TabVisible:= false;
  PageControl1.Pages[3].TabVisible:= false;
  PageControl1.Pages[4].TabVisible:= false;

  {
    Descrição: Mostra/Oculta a aba de informações do CT-e
    Autor: Vinícius Godinho Del Rio
    Data: 11/03/2015
  }
  PageControl1.Pages[5].TabVisible := False;

  PageControl1.Pages[2].Show;

  QPediVe.Insert;
  QPediVeFL_PNF.Value := 'S';
  QItem.Close;

  // Permitimos o acesso aos campos de edição
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
    if  (Temp is TDBRadioGroup) then
    begin
      TScrollBox(temp).Enabled := True;
    end;

   DbCAuto.Enabled := False;

  end;
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := ' select sysdate  from  dual ';
  qryTemp.Open;
  if not(qryTemp.IsEmpty) then
    ld_DataHora := qryTemp.FieldByName('SYSDATE').AsDateTime;
  qryTemp.close;

  // Atribuimos valores fixos às colunas
  QPediVe['DT_PEDIVEND']     := Date;
  QPediVe['DT_ENTRPEDIVEND'] := Date;
  QPediVe['DT_DIGIPEDIVEND'] := ld_DataHora;
  QPediVe['ID_USUASIST_DIGIPEDIVEND'] := gi_CodiUsuaSist;
  QPediVe['NM_REDUUSUASIST'] := gs_NomeReduUsuaSist;
  QPediVe['FL_STATPEDIVEND'] := 'AV';
  {QPediVe['SG_TIPOFRETPEDIVEND'] := 'CIF';
  FABRICIO - 27/07/2018 - MOTIVO:NFE 4.0}
  QPediVe['SG_TIPOFRETPEDIVEND'] := '0';
  QPediVe['ID_TIPOLOGI'] := 1;
  QPediVe['PC_DESCPEDIVEND'] := 0;
  QPediVe['VL_DESCPEDIVEND'] := 0;
  QPediVe['QN_VOLUPEDIVEND'] := 0;
  QPediVe['QN_EMBAPEDIVEND'] := 0;
  QPediVe['QN_PESOPEDIVEND'] := 0;
  QPediVe['QN_TARAPEDIVEND'] := 0;
  QPediVe['QN_EMBAEXPEPEDIVEND'] := 0;
  QPediVe['QN_PESOPADREXPEPEDIVEND'] := 0;
  QPediVe['QN_TARAREALEXPEPEDIVEND'] := 0;
  QPediVe['QN_PESOREALEXPEPEDIVEND'] := 0;
  QPediVe['QN_FATOFRETABAT_PEDIVEND'] := 1;
  QPediVe['FL_ESPEPEDIVEND'] := 'NM';
  QPediVe['NR_ORDEPEDIVEND'] := 0;
  QPediVe['VL_QUEBPEDIVEND'] := 0;
  QPediVe['VL_OUTRAJUSPEDIVEND'] := 0;
  QPediVe['VL_DEVOPEDIVEND'] := 0;
  QPediVe['QN_PESOPADRDEVOPEDIVEND'] := 0;
  QPediVe['QN_PESOREALDEVOPEDIVEND'] := 0;
  QPediVe['QN_PESOREALDEVOPEDIVEND'] := 0;
  QPediVe['QN_TARAREALDEVOPEDIVEND'] := 0;
  QPediVe['QN_EMBADEVOPEDIVEND'] := 0;
  QPediVe['ID_CONTA'] := 8;
  edtQtdeEmba.Text:='0';
  edtPrecUnitBrut.Text:='0';

  // Ajustamos empresa e filial e fixo
  QPediVe.FieldByName('EMPRESA').AsString := gs_Empresa;
  QPediVe.FieldByName('FILIAL').AsInteger := gi_Filial;
  QPediVe.FieldByName('FX_PEDIVEND').AsString := 'N';
  QPediVe.FieldByName('FL_NFCOMPLEMENTAR').AsString := 'N';

  // Damos o foco na data do pedido
  edtDataPedi.SetFocus;
end;

procedure TFrmPedVenda.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin

  If not (key in ['0'..'9','A'..'Z','a'..'z',chr(8),chr(32),chr(13),'.',',','$','-',':','%','(',')','/','ç','ê','é','º']) then
     key:= #0;

end;

procedure TFrmPedVenda.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
  If not (key in ['0'..'9','A'..'Z','a'..'z',chr(8),chr(32),chr(13),'.',',','$','-',':','%']) then
     key:= #0;
end;

procedure TFrmPedVenda.DBMemo3KeyPress(Sender: TObject; var Key: Char);
begin
  If not (key in ['0'..'9','A'..'Z','a'..'z',chr(8),chr(32),chr(13),'.',',','$','-',':','%']) then
     key:= #0;
end;

procedure TFrmPedVenda.CBxPedArmEnter(Sender: TObject);
begin
  CBxPedArm.Color:= clMidlight;
end;

procedure TFrmPedVenda.CBxPedArmExit(Sender: TObject);
begin
  CBxPedArm.Color:= clBASE;
end;

procedure TFrmPedVenda.DBCodCidEntreEnter(Sender: TObject);
begin
  DBCodCidEntre.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBCodCidEntreExit(Sender: TObject);
begin
  DBCodCidEntre.Color:= clBASE;
end;

procedure TFrmPedVenda.SB_EditarClick(Sender: TObject);
var
  i : Integer;
begin
{  if PageControl1.ActivePage = TsDocRef then
    Begin
      Qry_DocRef.Edit;
      Exit;
    end;}

  {
    Descrição: Prepara a edição das informações do CT-e caso a aba selecionada seja ela.
    Autor: Vinícius Godinho Del Rio
    Data: 16/03/2015
  }
  if PageControl1.ActivePage = tabCTE then
  begin

    PageControl1.Pages[INDICE_ABA_CTE].Enabled := True;

    //Habilitando os campos do CT-e
    HabilitaCamposInformacoesCTE(True);

    //Percorrendo todas as abas e deixando-as invisível
    for i := 0 to PageControl1.PageCount - 1 do
      PageControl1.Pages[i].TabVisible := False;

    //Deixando visível somente a aba do CT-e
    PageControl1.Pages[INDICE_ABA_CTE].TabVisible := True;

    //Colocando o dataset do CT-e em modo de edição
    If not (QryPedidoVenda.State in [DSEDIT,DSINSERT]) Then
        QryPedidoVenda.Edit;

    //Desabilitando botões que não podem estar ativos no momento da edição das informações do CT-e
    SB_PRIMEIRO.Enabled:= False;
    SB_ANTERIOR.Enabled:= False;
    SB_PROXIMO.Enabled:= False;
    SB_ULTIMO.Enabled:= False;
    SB_Editar.Enabled := False;
    SBNovo.Enabled := False;
    SBDel.Enabled := False;

    //Habilitando os botões que precisam estar habilitados no momento da edição das informações do CT-e
    SBSalva.Enabled := True;
    SBCancel.Enabled := True;

    //Saindo da procedure.
    Exit;

  end;

  if (QPediVeFL_CORTE.Value = 'S') then
    Begin
      Screen.Cursor := crDefault;
      MessageDlg('Pedido já passou pelo sistema de corte e não permite alteração.', mtWarning, [mbOk], 0);
      Exit;
    end;

{If (QPediVeFL_STATPEDIVEND.Value = 'AV') OR (QPediVeFL_STATPEDIVEND.Value = 'AB') then
begin

end
else
begin
 if gi_filial<>4 then
 begin
  Screen.Cursor := crDefault;
  MessageDlg('Só é permitida a alteração de pedido AB ou AV.', mtWarning, [mbOk], 0);
  Exit;
 end;
end;}

  If not (QPediVeDT_FATUPEDIVEND.IsNull) and (gi_filial<>4) Then
    Begin
      Screen.Cursor := crDefault;
      MessageDlg('Documento gerado não permite alteração.', mtWarning, [mbOk], 0);
      Exit;
    end

  else
    begin
      //Alterar embalagem e peso da NF Metal.
      if (gi_filial=4) or (gi_Filial=91) then
        begin
          DBEmbalagem.Color := clBase;
          DBEmbalagem.ReadOnly := False;
          DBEmbalagem.Enabled := True;
          edtTotaEmba.Color := clBase;
          edtTotaEmba.ReadOnly := False;
          edtTotaEmba.Enabled := True;
          DBPesoPed.Color := clBase;
          DBPesoPed.ReadOnly := False;
          DBPesoPed.Enabled := True;
        end
      else
        begin
          DBEmbalagem.Color := clSilver;
          DBEmbalagem.ReadOnly := True;
          DBEmbalagem.Enabled := False;
          edtTotaEmba.Color := clSilver;
          edtTotaEmba.ReadOnly := True;
          edtTotaEmba.Enabled := False;
          DBPesoPed.Color := clSilver;
          DBPesoPed.ReadOnly := True;
          DBPesoPed.Enabled := False;
        end;

      {
        Descrição: Habilita os campos de informações do CTe caso o tipo de pedido de venda permitir
        Autor: Vinícius Godinho Del Rio
        Data: 03/12/2014
      }
      edtTomadorID.Enabled := False;
      edtTomador.Enabled := False;

      if (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S') then
      begin

        edtRemetenteID.Enabled := True;
        edtRemetente.Enabled := True;
        edtDestinatarioID.Enabled := True;
        edtDestinatario.Enabled := True;
        btnSelecionaRemetente.Enabled := True;
        btnSelecionaDestinatario.Enabled := True;

      end
      else
      begin

        edtRemetenteID.Enabled := False;
        edtRemetente.Enabled := False;
        edtDestinatarioID.Enabled := False;
        edtDestinatario.Enabled := False;
        btnSelecionaRemetente.Enabled := False;
        btnSelecionaDestinatario.Enabled := False;

      end;

      ///////////////////////////////////

      If not (QPediVe.State in [DSEDIT,DSINSERT]) Then
        QPediVe.Edit;
      VEDITA:=True;
      mniValidar.Enabled := True;

      SB_PRIMEIRO.Enabled:= False;
      SB_ANTERIOR.Enabled:= False;
      SB_PROXIMO.Enabled:= False;
      SB_ULTIMO.Enabled:= False;

      {
      SBNovo.Enabled:= False;
      SBDel.Enabled:= False;
      SBSalva.Enabled:= True;
      SBCancel.Enabled:= True;
      SBCupom.Enabled:= False;
      SB_COPIA.Enabled:= False;
      Sb_Sair.Enabled:= False;
      SB_PNF.Enabled := False;
      SB_Editar.Enabled := False;
      }

      PageControl1.Pages[0].TabVisible:= False;
      PageControl1.Pages[1].TabVisible:= False;
      PageControl1.Pages[2].TabVisible:= True;
      PageControl1.Pages[3].TabVisible:= False;
      PageControl1.Pages[4].TabVisible:= false;

      {
        Descrição: Mostra/Oculta a aba de informações do CT-e
        Autor: Vinícius Godinho Del Rio
        Data: 11/03/2015
      }
      PageControl1.Pages[5].TabVisible := False;

      PageControl1.Pages[2].Show;

      cbxConta.Enabled     := True;
      DBPlaca.Enabled      := True;
      Btplaca.Enabled      := True;
      btn_PesqLote.Enabled := True;
      DBIE_EXTERNO.Enabled := True;
      DBArmazena.Enabled   := True;
      DBMemo1.Enabled      := True;

      {
        Descrição: O Misael pediu para remover pois aparentemente não está sendo usado, dando lugar a novos campos.
        Autor: Vinícius Godinho Del Rio
        Data: 13/01/2015
      }
      //DBMemo3.Enabled      := True;

      //Requisição feita pelo João Marcelo 07/03/2012
      //ALTERAR DATA DE ENTREGA, SOMENTE EXPORTAÇÃO 
      if (VLANCMULT = True) and (QPediVeID_TIPOPEDIVEND.Value = 15) then
        begin
          edtDataEntr.Enabled := True;
          BPesqDtEntre.Visible:= True;
        end;
      DBRTipoFrete.Enabled := True;
      CBxPais.Enabled      := True;
      //DBFormaPagto.Enabled := False;
      rdg_NFComplementar.Enabled := True;

      If VEDITA_OBSNF then
        DBMemo2.Enabled := True;
    end;
end;

procedure TFrmPedVenda.SpeedButton1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    FrmConsuObs:=TFrmConsuObs.Create(Self);
    FrmConsuObs.ShowModal;
  Except;
    FrmConsuObs.Free;
  End;
  Screen.Cursor := crDefault;
end;

{function TFrmPedVenda.FileExec(const aCmdLine: String; aHide, aWait,bWait: Boolean):Boolean;
// aHide = Se vai ser exibido ou oculto
// aWait = Se o aplicativo será executado em segundo plano
// bWait = Se o Sistema deve esperar este aplicativo ser finalizado para
// prosseguir ou não
var
  StartupInfo : TStartupInfo;
  ProcessInfo : TProcessInformation;
  lExitCode: dword;
begin
    FillChar(StartupInfo, SizeOf(TStartupInfo), 0);
    with StartupInfo do
    begin
      cb:= SizeOf(TStartupInfo);
      dwFlags:= STARTF_USESHOWWINDOW or STARTF_FORCEONFEEDBACK;
      if aHide then
      begin
        wShowWindow:= SW_HIDE
      end
      else
      begin
        wShowWindow:= SW_SHOWNORMAL;
      end;
    end;
    Result := CreateProcess(nil,PChar(aCmdLine),
nil, nil, False,NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo);

    if aWait and Result then
    begin
      WaitForInputIdle(ProcessInfo.hProcess, INFINITE);
    if bWait then
    begin
      WaitForSingleObject(ProcessInfo.hProcess,INFINITE);
      CloseHandle(ProcessInfo.hProcess);
      CloseHandle(ProcessInfo.hThread);
    end;
  end;
end;
}

procedure TFrmPedVenda.DsformaPgDataChange(Sender: TObject; Field: TField);
begin
  edVencPrev.Text:= DateToStr(QPediVe.FieldByName('DT_ENTRPEDIVEND').AsDateTime + QrFormaPG.FieldByName('QN_DIAS').AsInteger);
end;

procedure TFrmPedVenda.SpeedButton2Click(Sender: TObject);
begin
  if {(QPediVeFL_CORTE.Value = 'S') and} (QPediVeDT_FATUPEDIVEND.IsNull) then
    begin
      Application.CreateForm(TFrmDialBanco, FrmDialBanco);
      if FrmDialBanco.ShowModal = mrOk then
        begin
          QryTemp.Close;
          QryTemp.SQL.Clear;
          QryTemp.SQL.Add('UPDATE pedido_venda SET id_conta = '+QrConta.fieldbyname('ID_CONTA').AsString +' WHERE id_pedivend = ' + QPediVeID_PEDIVEND.AsString);
          QryTemp.ExecSQL;

          QPediVe.Refresh;
        end;
    end;
end;

procedure TFrmPedVenda.OcultaCampos;
var i: Smallint;
begin
  with Dbg_DocRef do
    begin
      for i := 0 to Columns.Count-1 do
        begin
          Columns.Items[i].Visible := False;
        end;
    end;
end;

procedure TFrmPedVenda.DocumentoReferenciado(Sender: TObject);
begin
  OcultaCampos;

  Rad_NFe.Font.Style := [];
  Rad_NF.Font.Style := [];
  Rad_NFP.Font.Style := [];
  Rad_CTE.Font.Style := [];
  Rad_Cupom.Font.Style := [];

  Qry_DocRef.Close;
  Qry_DocRef.Open;

  if ( Sender =  Rad_NFe ) then
    begin
      Dbg_DocRef.Columns.Items[0].Visible := True;
      Rad_NFe.Font.Style := [fsBold];
    end
  else
  if ( Sender = Rad_NF ) then
    begin
      Dbg_DocRef.Columns.Items[1].Visible := True;
      Dbg_DocRef.Columns.Items[2].Visible := True;
      Dbg_DocRef.Columns.Items[3].Visible := True;
      Dbg_DocRef.Columns.Items[4].Visible := True;
      Dbg_DocRef.Columns.Items[5].Visible := True;
      Dbg_DocRef.Columns.Items[6].Visible := True;
      Rad_NF.Font.Style := [fsBold];
    end
  else
  if ( Sender = Rad_NFP ) then
    begin
      Dbg_DocRef.Columns.Items[7].Visible := True;
      Dbg_DocRef.Columns.Items[8].Visible := True;
      Dbg_DocRef.Columns.Items[9].Visible := True;
      Dbg_DocRef.Columns.Items[10].Visible := True;
      Dbg_DocRef.Columns.Items[11].Visible := True;
      Dbg_DocRef.Columns.Items[12].Visible := True;

      if ( Qry_TipoClienteFL_PESSCLIE.Value = 'J' ) then
        Dbg_DocRef.Columns.Items[13].Visible := True
      else
        Dbg_DocRef.Columns.Items[14].Visible := True;

      Rad_NFP.Font.Style := [fsBold];
    end
  else
  if ( Sender = Rad_CTE ) then
    begin
      Dbg_DocRef.Columns.Items[15].Visible := True;
      Rad_CTE.Font.Style := [fsBold];
    end
  else
  if ( Sender = Rad_Cupom ) then
    begin
      Dbg_DocRef.Columns.Items[16].Visible := True;
      Dbg_DocRef.Columns.Items[17].Visible := True;
      Dbg_DocRef.Columns.Items[18].Visible := True;
      Rad_Cupom.Font.Style := [fsBold];
    end;
end;

procedure TFrmPedVenda.Qry_DocRefBeforeOpen(DataSet: TDataSet);
var Tipo: String;
begin
  Qry_DocRef.ParamByName('ID_PEDIVEND').Value := QPediVeID_PEDIVEND.Value;
  Qry_DocRef.ParamByName('EMPRESA').Value  := QPediVeEMPRESA.Value;
  Qry_DocRef.ParamByName('FILIAL').Value   := QPediVeFILIAL.Value;

  Tipo := ' And NFR.TIPO = ';

  if Rad_NFe.Checked   then Tipo := Tipo + '1' else
  if Rad_NF.Checked    then Tipo := Tipo + '2' else
  if Rad_NFP.Checked   then Tipo := Tipo + '3' else
  if Rad_CTE.Checked   then Tipo := Tipo + '4' else
  if Rad_Cupom.Checked then Tipo := Tipo + '5' else Tipo := ' And 0=0 ';

  Qry_DocRef.MacroByName('TIPO').Value := Tipo;
end;

procedure TFrmPedVenda.DSPediVeDataChange(Sender: TObject; Field: TField);
begin
  Rad_NFe.Checked   := False;
  Rad_NF.Checked    := False;
  Rad_NFP.Checked   := False;
  Rad_CTE.Checked   := False;
  Rad_Cupom.Checked := False;

  if ( QPediVeID_TIPOPEDIVEND.Value > 0 ) And ( QPediVeID_PEDIVEND.Value > 0 ) then
    begin
      Qry_DocRef.Close;
      Qry_DocRef.Open;

      Qry_TipoCFOP.Close;
      qry_TipoDocRef.Close;
      Qry_TipoCFOP.Open;
      qry_TipoDocRef.Open;
      PageControl1.Pages[4].TabVisible := ( (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0) ) and (PageControl1.Pages[3].TabVisible);  //(Qry_TipoCFOP.RecordCount > 0) and (PageControl1.Pages[3].TabVisible);

      {
        Descrição: Mostra/Oculta a aba de informações do CT-e
        Autor: Vinícius Godinho Del Rio
        Data: 11/03/2015
      }
      PageControl1.Pages[5].TabVisible := ((QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S') and (PageControl1.Pages[3].TabVisible));

    end;
end;

procedure TFrmPedVenda.Qry_DocRefAfterPost(DataSet: TDataSet);
begin
  Qry_DocRef.ApplyUpdates;
  Qry_DocRef.CommitUpdates;
end;

procedure TFrmPedVenda.Qry_DocRefBeforePost(DataSet: TDataSet);
begin
  if not(ValidaDocumentoReferenciado) then
     Abort;

  Qry_DocRefID_PEDIVEND.Value := QPediVeID_PEDIVEND.Value;
  Qry_DocRefEMPRESA.Value     := QPediVeEMPRESA.Value;
  Qry_DocRefFILIAL.Value      := QPediVeFILIAL.Value;

       if Rad_NFe.Checked   then Qry_DocRefTIPO.Value       := '1'
  else if Rad_NF.Checked    then Qry_DocRefTIPO.Value       := '2'
  else if Rad_NFP.Checked   then Qry_DocRefTIPO.Value       := '3'
  else if Rad_CTE.Checked   then Qry_DocRefTIPO.Value       := '4'
  else if Rad_Cupom.Checked then Qry_DocRefTIPO.Value       := '5';
end;

procedure TFrmPedVenda.Qry_DocRefAfterDelete(DataSet: TDataSet);
begin
  Qry_DocRef.ApplyUpdates;
end;

procedure TFrmPedVenda.Qry_DocRefAfterOpen(DataSet: TDataSet);
begin
  if Qry_DocRef.RecordCount > 0 then
    begin
      case Qry_DocRefTIPO.AsInteger of
        1: Rad_NFe.Checked := True ;
        2: Rad_NF.Checked := True;
        3: Rad_NFP.Checked := True;
        4: Rad_CTE.Checked := True;
        5: Rad_Cupom.Checked := True;
      end;
    end;

{  if ( Qry_DocRef.RecordCount > 0 ) and
     not( Rad_NFe.Checked or Rad_NF.Checked or Rad_NFP.Checked or Rad_CTE.Checked or Rad_Cupom.Checked )  then
    begin
            if Qry_DocRefTIPO.Value = '1' then
              begin
               Rad_NFe.Checked := True;
//               DocumentoReferenciado(Rad_NFe);
              end
       else if Qry_DocRefTIPO.Value = '2' then
              begin
               Rad_NF.Checked  := True;
//               DocumentoReferenciado(Rad_NF);
              end
       else if Qry_DocRefTIPO.Value = '3' then
              begin
               Rad_NFP.Checked := True;
//               DocumentoReferenciado(Rad_NFP);
              end
       else if Qry_DocRefTIPO.Value = '4' then
              begin
               Rad_CTE.Checked := True;
//               DocumentoReferenciado(Rad_CTE);
              end
       else if Qry_DocRefTIPO.Value = '5' then
              begin
               Rad_Cupom.Checked := True;
//               DocumentoReferenciado(Rad_Cupom);
              end
      end;}
end;

procedure TFrmPedVenda.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePage = TsDocRef then
    begin
      Qry_TipoCliente.Close;
      Qry_TipoCliente.Open;

      Qry_DocRef.Close;
      Qry_DocRef.Open;
    end;

  if PageControl1.ActivePage = TSItem then
  begin
       if ( QPediVeID_CARGEXPE.AsInteger = 0 ) AND
          ( (QPediVeFL_STATPEDIVEND.Value = 'AV')OR(QPediVeFL_STATPEDIVEND.Value = 'AB') )
       then
       begin
           Mem_ObsExped.Enabled := true;
           Mem_ObsExped.Color := clBase;
       end
       else
       begin
           Mem_ObsExped.Enabled := false;
            Mem_ObsExped.Color := clSilver;
       end;
  end;

end;

function TFrmPedVenda.ValidaDocumentoReferenciado: boolean;
var
  //Onde: String;
  vCNPJ, vCPF: String;
  IEValido : Integer;
begin
  TsDocRef.SetFocus;

  if not(Qry_DocRef.State in [dsInsert, dsEdit]) then
    begin
      Result := False;
      Exit;
    end;

  Qry_ChecaDocRef.Close;
  Qry_ChecaDocRef.SQL.Clear;

  {Onde := //' And Id_Pedivend = ' + QPediVeID_PEDIVEND.AsString +
          ' And Empresa = ''' + QPediVeEMPRESA.AsString +''''+
          ' And Filial = ' + QPediVeFILIAL.AsString;}

  if Rad_NFe.Checked then
    begin
      Qry_DocRefB13_REFNFE.Value := SoNumeros(Qry_DocRefB13_REFNFE.Value);

      if Trim(Qry_DocRefB13_REFNFE.Value) = '' then
        begin
          ShowMessage('Favor informar a Chave da NFe!');
          Result := False;
          Exit;
        end;

      {Onde := Onde + ' And TIPO = 1' +
                     ' And B13_REFNFE = ' + Qry_DocRefB13_REFNFE.AsString;}

      Qry_ChecaDocRef.SQL.Add('Select');
      Qry_ChecaDocRef.SQL.Add('  n.tipo');
      Qry_ChecaDocRef.SQL.Add('From');
      Qry_ChecaDocRef.SQL.Add('  Nota_Fiscal_Referenciada n,');
      Qry_ChecaDocRef.SQL.Add('  pedido_venda_nota_fiscal p,');
      Qry_ChecaDocRef.SQL.Add('  nota_fiscal f');
      Qry_ChecaDocRef.SQL.Add('Where');
      Qry_ChecaDocRef.SQL.Add('  p.id_pedivend = n.id_pedivend');
      Qry_ChecaDocRef.SQL.Add('  and f.id_notafisc = p.id_notafisc');
      Qry_ChecaDocRef.SQL.Add('  and n.Empresa = ' + QuotedStr(QPediVeEMPRESA.AsString));
      Qry_ChecaDocRef.SQL.Add('  and n.Filial = ' + QPediVeFILIAL.AsString);
      Qry_ChecaDocRef.SQL.Add('  and n.TIPO = 1');
      Qry_ChecaDocRef.SQL.Add('  And n.B13_REFNFE = ' + Qry_DocRefB13_REFNFE.AsString);
      Qry_ChecaDocRef.SQL.Add('  and nvl(f.fl_cancnotafisc,''N'') = ''N'' ');
    end;

  if Rad_NF.Checked then
    begin
      Qry_DocRefB14_CUF.Value    := SoNumeros(Qry_DocRefB14_CUF.Value);
      Qry_DocRefB14_AAMM.Value   := SoNumeros(Qry_DocRefB14_AAMM.Value);
      Qry_DocRefB14_MOD.Value    := SoNumeros(Qry_DocRefB14_MOD.Value);
      Qry_DocRefB14_SERIE.Value  := SoNumeros(Qry_DocRefB14_SERIE.Value);
      Qry_DocRefB14_NNF.Value    := SoNumeros(Qry_DocRefB14_NNF.Value);

      if Trim(Qry_DocRefB14_CUF.Value) = '' then
        begin
          ShowMessage('Favor informar a UF!');
          Result := False;
          Exit;
        end
      else if Length(Qry_DocRefB14_CUF.Value) = 1 then
        Qry_DocRefB14_CUF.Value := '0'+Qry_DocRefB14_CUF.Value;

      if ( Trim(Qry_DocRefB14_AAMM.Value) = '' ) or ( Length(Trim(Qry_DocRefB14_AAMM.Value)) <> 4 ) then
        begin
          ShowMessage('Favor informar Ano/Mes corretamente!');
          Result := False;
          Exit;
        end
      else
        begin
          if    ( StrToInt(Qry_DocRefB14_AAMM.Value) > StrToInt(FormatDateTime('yymm', Now)) )
              or ( StrToInt(copy(Qry_DocRefB14_AAMM.Value, 3,2)) > 12 ) then
            begin
              ShowMessage('Favor informar Ano/Mes corretamente!');
              Result := False;
              Exit;
            end;
        end;

      if Trim(Qry_DocRefB14_CNPJ.Value) = '' then
        begin
          ShowMessage('Favor informar o CNPJ!');
          Result := False;
          Exit;
        end
      else
        begin
            //retira ponto(.) e barra(/) para validação
            vCNPJ := Trim(ReplaceStr(ReplaceStr(Qry_DocRefB14_CNPJ.Value, '.', ''), '/', ''));

            if Length(vCNPJ) <> 14 then
               begin
                  ShowMessage('CNPJ Incorreto, favor verifique!');
                  Result := False;
                  Exit;
               end;

            if not(cnpj(vCNPJ)) then
               begin
                  ShowMessage('CNPJ Incorreto, favor verifique!!');
                  Result := False;
                  Exit;
               end;
        end;

      if Trim(Qry_DocRefB14_MOD.Value) = '' then
        begin
          ShowMessage('Favor informar o Modelo!');
          Result := False;
          Exit;
        end
      else if Length(Qry_DocRefB14_MOD.Value) = 1 then
              Qry_DocRefB14_MOD.Value := '0' + Qry_DocRefB14_MOD.Value;

      if Trim(Qry_DocRefB14_SERIE.Value) = '' then
        begin
          ShowMessage('Favor informar a Série!');
          Result := False;
          Exit;
        end;

      if Trim(Qry_DocRefB14_NNF.Value) = '' then
        begin
          ShowMessage('Favor informar o Nº NF!');
          Result := False;
          Exit;
        end;

      Qry_ChecaDocRef.SQL.Add('Select');
      Qry_ChecaDocRef.SQL.Add('  Tipo');
      Qry_ChecaDocRef.SQL.Add('From');
      Qry_ChecaDocRef.SQL.Add('  Nota_Fiscal_Referenciada');
      Qry_ChecaDocRef.SQL.Add('Where');
      Qry_ChecaDocRef.SQL.Add('  Empresa = ' + QuotedStr(QPediVeEMPRESA.AsString));
      Qry_ChecaDocRef.SQL.Add('  And Filial = ' + QPediVeFILIAL.AsString);
      Qry_ChecaDocRef.SQL.Add('  And TIPO = 2');
      Qry_ChecaDocRef.SQL.Add('  And B14_CNPJ  = ' + QuotedStr(Qry_DocRefB14_CNPJ.AsString));
      Qry_ChecaDocRef.SQL.Add('  And B14_MOD   = ' + Qry_DocRefB14_MOD.AsString);
      Qry_ChecaDocRef.SQL.Add('  And B14_SERIE = ' + Qry_DocRefB14_SERIE.AsString);
      Qry_ChecaDocRef.SQL.Add('  And B14_NNF   = ' + Qry_DocRefB14_NNF.AsString);

{      Onde := Onde + ' And TIPO = 2 ' +
//                     ' And B14_CUF   = ' + Qry_DocRefB14_CUF.AsString +
//                     ' And B14_AAMM  = ' + Qry_DocRefB14_AAMM.AsString +
                     ' And B14_CNPJ  = ''' + Qry_DocRefB14_CNPJ.AsString + '''' +
                     ' And B14_MOD   = ' + Qry_DocRefB14_MOD.AsString +
                     ' And B14_SERIE = ' + Qry_DocRefB14_SERIE.AsString +
                     ' And B14_NNF   = ' + Qry_DocRefB14_NNF.AsString;}
    end;

  if Rad_NFP.Checked then
    begin

      Qry_DocRefB20A_CUF.Value   := SoNumeros(Qry_DocRefB20A_CUF.Value);
      Qry_DocRefB20A_AAMM.Value  := SoNumeros(Qry_DocRefB20A_AAMM.Value);
      Qry_DocRefB20A_MOD.Value   := SoNumeros(Qry_DocRefB20A_MOD.Value);
      Qry_DocRefB20A_SERIE.Value := SoNumeros(Qry_DocRefB20A_SERIE.Value);
      Qry_DocRefB20A_NNF.Value   := SoNumeros(Qry_DocRefB20A_NNF.Value);

      if Trim(Qry_DocRefB20A_CUF.Value) = '' then
        begin
          ShowMessage('Favor informar a UF!');
          Result := False;
          Exit;
        end
      else if Length(Qry_DocRefB20A_CUF.Value) = 1 then
              Qry_DocRefB20A_CUF.Value := '0' + Qry_DocRefB20A_CUF.Value;

      if ( Trim(Qry_DocRefB20A_AAMM.Value) = '' ) or ( Length(Trim(Qry_DocRefB20A_AAMM.Value)) <> 4 ) then
        begin
          ShowMessage('Favor informar Ano/Mes corretamente!');
          Result := False;
          Exit;
        end
      else
        begin
           if    ( StrToInt(Qry_DocRefB20A_AAMM.Value) > StrToInt(FormatDateTime('yymm', Now)) )
              or ( StrToInt(copy(Qry_DocRefB20A_AAMM.Value, 3,2)) > 12 ) then
             begin
                ShowMessage('Favor informar Ano/Mes corretamente!');
                Result := False;
                Exit;
             end;
        end;

      if Trim(Qry_DocRefB20A_IE.Value) = '' then
        begin
          ShowMessage('Favor informar a I.E!');
          Result := False;
          Exit;
        end;

      // Adicionada Validação da Inscrição estadual
      IEValido := 1 ;
      Qry_Estado.Close;
      Qry_Estado.ParamByName('ID_UF').Value := Qry_DocRefB20A_CUF.Value ;
      Qry_Estado.Open;

      IEValido :=  ConsisteInscricaoEstadual ( Qry_DocRefB20A_IE.Value , Qry_EstadoSG_ESTADO.Value );

      if (IEValido = 1 ) then
      begin
           MessageDlg ('Inscrição '+ Qry_DocRefB20A_IE.Value +' inválida para UF '+Qry_DocRefB20A_CUF.Value,mtError,[mbOk],0);
           Result := False;
           Exit;
      end;

        // Adicionada Validação da Inscrição estadual

      if Trim(Qry_DocRefB20A_MOD.Value) = '' then
        begin
          ShowMessage('Favor informar o Modelo!');
          Result := False;
          Exit;
        end
      else if Length(Qry_DocRefB20A_MOD.Value) = 1 then
              Qry_DocRefB20A_MOD.Value := '0' + Qry_DocRefB20A_MOD.Value;

      if (Qry_DocRefB20A_MOD.Value <> '01') and (Qry_DocRefB20A_MOD.Value <> '04') then
         begin
            ShowMessage('Informe o Modelo 04 - NF de Produtor ou 01 - NF Avulsa.');
            Result := False;
            Exit;
         end;

      if Trim(Qry_DocRefB20A_SERIE.Value) = '' then
        begin
          ShowMessage('Favor informar a Série!');
          Result := False;
          Exit;
        end;

      if Trim(Qry_DocRefB20A_NNF.Value) = '' then
        begin
          ShowMessage('Favor informar o Nº NF!');
          Result := False;
          Exit;
        end;

      if Qry_TipoClienteFL_PESSCLIE.Value = 'J' then
        begin
          if Trim(Qry_DocRefB20D_CNPJ.Value) = '' then
            begin
              ShowMessage('Favor informar o CNPJ!');
              Result := False;
              Exit;
            end
          else
            begin
              //retira ponto(.) e barra(/) para validação
              vCNPJ := Trim(ReplaceStr(ReplaceStr(Qry_DocRefB20D_CNPJ.Value, '.', ''), '/', ''));

              if Length(vCNPJ) <> 14 then
                begin
                  ShowMessage('CNPJ Incorreto, favor verifique!');
                  Result := False;
                  Exit;
                end;

              if not(cnpj(vCNPJ)) then
                begin
                  ShowMessage('CNPJ Incorreto, favor verifique!!');
                  Result := False;
                  Exit;
                end;
            end;
        end
      else
        begin
          if Trim(Qry_DocRefB20E_CPF.Value) = '' then
            begin
              ShowMessage('Favor informar o CPF!');
              Result := False;
              Exit;
            end
          else
            begin
              //retira ponto(.) e traço(-) para validação
              vCPF := Trim(ReplaceStr(ReplaceStr(Qry_DocRefB20E_CPF.Value, '.', ''), '-', ''));

              if Length(vCPF) <> 11 then
                begin
                  ShowMessage('CPF Incorreto, favor verifique!');
                  Result := False;
                  Exit;
                end;

              if not(cpf(vCPF)) then
                begin
                  ShowMessage('CPF Incorreto, favor verifique!!');
                  Result := False;
                  Exit;
                end;
            end;
        end;

      Qry_ChecaDocRef.SQL.Add('Select');
      Qry_ChecaDocRef.SQL.Add('  n.Tipo');
      Qry_ChecaDocRef.SQL.Add('From');
      Qry_ChecaDocRef.SQL.Add('  Nota_Fiscal_Referenciada n,');
      Qry_ChecaDocRef.SQL.Add('  pedido_venda_nota_fiscal p,');
      Qry_ChecaDocRef.SQL.Add('  nota_fiscal f');
      Qry_ChecaDocRef.SQL.Add('Where');
      Qry_ChecaDocRef.SQL.Add('  p.id_pedivend = n.id_pedivend');
      Qry_ChecaDocRef.SQL.Add('  and f.id_notafisc = p.id_notafisc');
      Qry_ChecaDocRef.SQL.Add('  and n.Empresa = ' + QuotedStr(QPediVeEMPRESA.AsString));
      Qry_ChecaDocRef.SQL.Add('  and n.Filial = ' + QPediVeFILIAL.AsString);
      Qry_ChecaDocRef.SQL.Add('  and n.TIPO = 3');
      Qry_ChecaDocRef.SQL.Add('  And n.B20A_MOD   = ' + Qry_DocRefB20A_MOD.AsString);
      Qry_ChecaDocRef.SQL.Add('  And n.B20A_SERIE = ' + Qry_DocRefB20A_SERIE.AsString);
      Qry_ChecaDocRef.SQL.Add('  And n.B20A_NNF   = ' + Qry_DocRefB20A_NNF.AsString);
      {
      Onde := Onde + ' And TIPO       = 3 ' +
//                     ' And B20A_CUF   = ' + Qry_DocRefB20A_CUF.AsString +
//                     ' And B20A_AAMM  = ' + Qry_DocRefB20A_AAMM.AsString +
//                     ' And B20A_IE    = ''' + Qry_DocRefB20A_IE.AsString + '''' +
                     ' And B20A_MOD   = ' + Qry_DocRefB20A_MOD.AsString +
                     ' And B20A_SERIE = ' + Qry_DocRefB20A_SERIE.AsString +
                     ' And B20A_NNF   = ' + Qry_DocRefB20A_NNF.AsString;
       }
      {if Qry_TipoClienteFL_PESSCLIE.Value = 'J' then
         Onde := Onde + ' And B20D_CNPJ = ''' + Qry_DocRefB20D_CNPJ.AsString + ''''
      else
         Onde := Onde + ' And B20E_CPF = ''' + Qry_DocRefB20E_CPF.AsString + '''';}
      if Qry_TipoClienteFL_PESSCLIE.Value = 'J' then
        Qry_ChecaDocRef.SQL.Add(' And n.B20D_CNPJ = ' + QuotedStr(Qry_DocRefB20D_CNPJ.AsString))
      else
        Qry_ChecaDocRef.SQL.Add(' And n.B20E_CPF = ' + QuotedStr(Qry_DocRefB20E_CPF.AsString));
      Qry_ChecaDocRef.SQL.Add('  and nvl(f.fl_cancnotafisc,''N'') = ''N'' ');
    end;

  if Rad_CTE.Checked then
    begin

      Qry_DocRefB20I_REFCTE.Value := SoNumeros(Qry_DocRefB20I_REFCTE.Value);

      if Trim(Qry_DocRefB20I_REFCTE.Value) = '' then
        begin
          ShowMessage('Favor informar o CT-e!');
          Result := False;
          Exit;
        end;

      Qry_ChecaDocRef.SQL.Add('Select');
      Qry_ChecaDocRef.SQL.Add('  Tipo');
      Qry_ChecaDocRef.SQL.Add('From');
      Qry_ChecaDocRef.SQL.Add('  Nota_Fiscal_Referenciada');
      Qry_ChecaDocRef.SQL.Add('Where');
      Qry_ChecaDocRef.SQL.Add('  Empresa = ' + QuotedStr(QPediVeEMPRESA.AsString));
      Qry_ChecaDocRef.SQL.Add('  And Filial = ' + QPediVeFILIAL.AsString);
      Qry_ChecaDocRef.SQL.Add('  And TIPO = 4 ');
      Qry_ChecaDocRef.SQL.Add('  And B20I_REFCTE = ' + Qry_DocRefB20I_REFCTE.AsString);
      {Onde := Onde + ' And TIPO = 4 ' +
                     ' And B20I_REFCTE = ' + Qry_DocRefB20I_REFCTE.AsString;}
    end;

  if Rad_Cupom.Checked then
    begin

      Qry_DocRefB20J_NECF.Value := SoNumeros(Qry_DocRefB20J_NECF.Value);
      Qry_DocRefB20J_COO.Value  := SoNumeros(Qry_DocRefB20J_COO.Value);

      if Trim(Qry_DocRefB20J_MOD.Value) = '' then
        begin
          ShowMessage('Favor informar o Modelo!');
          Result := False;
          Exit;
        end
      else if Length(Qry_DocRefB20J_MOD.Value) = 1 then
              Qry_DocRefB20J_MOD.Value := '0' + Qry_DocRefB20J_MOD.Value;

      if ( Qry_DocRefB20J_MOD.Value <> '2B' ) and ( Qry_DocRefB20J_MOD.Value <> '2C' ) And ( Qry_DocRefB20J_MOD.Value <> '2D') then
        begin
          ShowMessage('Informe o modelo: 2B para Cupom Fiscal por Maquina Registradora(não ECF), 2C: para Cupom Fiscal PDV, 2D: Cupom Fiscal por ECF');
          Result := False;
          Exit;
        end;

      if Trim(Qry_DocRefB20J_NECF.Value) = '' then
         begin
           ShowMessage('Favor informar o Nº ECF!');
           Result := False;
           Exit;
         end;

      if Trim(Qry_DocRefB20J_COO.Value) = '' then
         begin
           ShowMessage('Favor informar o Nº COO!');
           Result := False;
           Exit;
         end;

      Qry_ChecaDocRef.SQL.Add('Select');
      Qry_ChecaDocRef.SQL.Add('  n.tipo');
      Qry_ChecaDocRef.SQL.Add('From');
      Qry_ChecaDocRef.SQL.Add('  Nota_Fiscal_Referenciada n,');
      Qry_ChecaDocRef.SQL.Add('  pedido_venda_nota_fiscal p,');
      Qry_ChecaDocRef.SQL.Add('  nota_fiscal f');
      Qry_ChecaDocRef.SQL.Add('Where');
      Qry_ChecaDocRef.SQL.Add('  p.id_pedivend = n.id_pedivend');
      Qry_ChecaDocRef.SQL.Add('  And f.id_notafisc = p.id_notafisc');
      Qry_ChecaDocRef.SQL.Add('  And n.Empresa = ' + QuotedStr(QPediVeEMPRESA.AsString));
      Qry_ChecaDocRef.SQL.Add('  And n.Filial = ' + QPediVeFILIAL.AsString);
      Qry_ChecaDocRef.SQL.Add('  And n.Tipo = 5 ');
      Qry_ChecaDocRef.SQL.Add('  And n.B20J_MOD  = ' + QuotedStr(Qry_DocRefB20J_MOD.AsString));
      Qry_ChecaDocRef.SQL.Add('  And n.B20J_NECF = ' + Qry_DocRefB20J_NECF.AsString);
      Qry_ChecaDocRef.SQL.Add('  And n.B20J_COO  = ' + Qry_DocRefB20J_COO.AsString);
      Qry_ChecaDocRef.SQL.Add('  and nvl(f.fl_cancnotafisc,''N'') = ''N'' ');

      {Onde := Onde + ' And Tipo = 5 ' +
                     ' And B20J_MOD  = ''' + Qry_DocRefB20J_MOD.AsString + '''' +
                     ' And B20J_NECF = ' + Qry_DocRefB20J_NECF.AsString +
                     ' And B20J_COO  = ' + Qry_DocRefB20J_COO.AsString;}
    end;


    if Qry_DocRef.State in [dsInsert,dsEdit] then
      begin
        //Qry_ChecaDocRef.MacroByName('Onde').Value := Onde;
        //Qry_ChecaDocRef.SQL.SaveToFile('C:\NFRef.sql');
        Qry_ChecaDocRef.Open;

        if Qry_ChecaDocRef.RecordCount > 0 then
          begin
              if Qry_ChecaDocRefTIPO.AsInteger = 1 then ShowMessage('NF-e já foi cadastrada!');
              if Qry_ChecaDocRefTIPO.AsInteger = 2 then ShowMessage('Nota Fiscal já foi cadastrada!');
              if Qry_ChecaDocRefTIPO.AsInteger = 3 then ShowMessage('Nota Fiscal Produtor já foi cadastrada!');
              if Qry_ChecaDocRefTIPO.AsInteger = 4 then ShowMessage('CT-e já foi cadastrado!');
              if Qry_ChecaDocRefTIPO.AsInteger = 5 then ShowMessage('Cupom Fiscal já foi cadastrado!');

              Result := False;
              Exit;
          end;
      end;

    Result := True;
end;

procedure TFrmPedVenda.Qry_TipoClienteBeforeOpen(DataSet: TDataSet);
begin
  //Qry_TipoCliente.ParamByName('EMPRESA').Value := QPediVeEMPRESA.Value;
  //Qry_TipoCliente.ParamByName('FILIAl').Value  := QPediVeFILIAL.Value;
  Qry_TipoCliente.ParamByName('ID_CLIENTE').Value := QPediVeID_CLIENTE.Value;
end;

procedure TFrmPedVenda.Dsc_DocRefStateChange(Sender: TObject);
var Em_IE: Boolean;
begin
  if PageControl1.ActivePage = TsDocRef then
    begin
      Em_IE := Qry_DocRef.State in [dsInsert, dsEdit];

      SBNovo.Enabled    := Not(Em_IE);
      SBDel.Enabled     := Not(Em_IE);
      SB_COPIA.Enabled  := Not(Em_IE);
      SBSalva.Enabled   := Em_IE;
      SBCancel.Enabled  := Em_IE;
      SBCupom.Enabled   := not(Em_IE);
      Sb_Sair.Enabled   := Not(Em_IE);
      SB_Editar.Enabled := Not(Em_IE);

      if Em_IE then
        begin
          PageControl1.Pages[0].TabVisible := false;
          PageControl1.Pages[1].TabVisible := false;
          PageControl1.Pages[2].TabVisible := false;

          mniValidar.Enabled := TRUE;

          PageControl1.Pages[3].TabVisible := False;

          PageControl1.Pages[4].Enabled := true;
          PageControl1.Pages[4].TabVisible := true;

          {
            Descrição: Mostra/Oculta a aba de informações do CT-e
            Autor: Vinícius Godinho Del Rio
            Data: 11/03/2015
          }
          PageControl1.Pages[5].TabVisible := False;

          //PageControl1.Pages[INDICE_ABA_CTE].TabVisible := false;
        end
        else
        begin
            PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');
        end;

    end;
end;

procedure TFrmPedVenda.TsDocRefShow(Sender: TObject);
begin
  if TsDocRef.Showing then
    begin
      Qry_DocRef.Close;
      Qry_DocRef.Open;
    end;
end;

procedure TFrmPedVenda.Qry_TipoCFOPBeforeOpen(DataSet: TDataSet);
begin
  Qry_TipoCFOP.ParamByName('ID_TIPOPEDIVEND').Value := QPediVeID_TIPOPEDIVEND.Value;
  //Qry_TipoCFOP.ParamByName('EMPRESA').Value := QPediVeEMPRESA.Value;
  //Qry_TipoCFOP.ParamByName('FILIAL').Value := QPediVeFILIAL.Value;
end;

procedure TFrmPedVenda.Dsc_DocRefDataChange(Sender: TObject; Field: TField);
begin
  Rad_Nfe.Enabled := ( Qry_DocRefTIPO.Value = '1' ) or ( Qry_DocRef.RecordCount = 0 );
  Rad_NF.Enabled  := ( Qry_DocRefTIPO.Value = '2' ) or ( Qry_DocRef.RecordCount = 0 );
  Rad_NFP.Enabled := ( Qry_DocRefTIPO.Value = '3' ) or ( Qry_DocRef.RecordCount = 0 );
  Rad_CTE.Enabled := ( Qry_DocRefTIPO.Value = '4' ) or ( Qry_DocRef.RecordCount = 0 );
  Rad_Cupom.Enabled := ( Qry_DocRefTIPO.Value = '5' ) or ( Qry_DocRef.RecordCount = 0 );
end;

procedure TFrmPedVenda.Dbg_DocRefKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin
//  ShowMessage(IntToStr(Key));

  if Qry_DocRef.State in [dsInsert, dsEdit] then
    begin

      //Se seta para cima ou para baixo e não validou, cancela.
      if ( key = 4117 ) or ( Key = 4115 ) then
         if not(ValidaDocumentoReferenciado) then
            begin
              Key := 0;
              Exit;
            end;

      //Enter troca por Tab
      if ( Key = 4100 ) or ( Key = 4101 ) then
         Key := 4097;
    end;
end;

procedure TFrmPedVenda.QItemBeforePost(DataSet: TDataSet);
begin
  if VPNF = False then
    begin
      //vendedor participa do corte ?
      if vParticipaCorte = True then
        begin
          if QPediVeFL_CORTE.Value = '' then
            begin
              QrCredVend.Close;
              QrCredVend.ParamByName('P_VENDEDODR').Value:= QPediVeID_VENDEDOR.Value;
              QrCredVend.ParamByName('P_PRODUTO').Value:= DBCodMatEmba.Text;
              QrCredVend.Open;

              qrPrec.Close;
              qrPrec.ParamByName('ID_CLIENTE').AsInteger  := StrToInt(DBCLI.text);
              qrPrec.ParamByName('ID_MATEEMBA').AsInteger := QItem['ID_MATEEMBA'];
              qrPrec.Open;

              if QItemVL_UNITBRUTITEMPEDIVEND.Value < Qrprec.FieldByName('VL_ITEMTABEPREC').Value then
                begin
                  if QrCredVendDIFERENCA.Value > 0 then
                    begin
                      if QItemVL_UNITBRUTITEMPEDIVEND.Value < RoundNExtend(Qrprec.FieldByName('VL_MINIITEMTABEPREC').Value,2) then
                        begin
                          ShowMessage('Valor menor que o autorizado. O valor será alterado');
                          QItemVL_UNITBRUTITEMPEDIVEND.Value:= RoundNExtend(Qrprec.FieldByName('VL_MINIITEMTABEPREC').Value,2);
                        end;
                    end
                  else if (QrCredVendDIFERENCA.Value <= 0) and (QItemVL_UNITBRUTITEMPEDIVEND.Value < RoundNExtend(Qrprec.FieldByName('VL_ITEMTABEPREC').Value,2)) then
                    begin
                      ShowMessage('Não existe crédito para dar desconto. O valor será alterado');
                      QItemVL_UNITBRUTITEMPEDIVEND.Value:= Qrprec.FieldByName('VL_ITEMTABEPREC').Value;
                    end
                  else
                    QItemVL_UNITBRUTITEMPEDIVEND.Value:= Qrprec.FieldByName('VL_ITEMTABEPREC').Value;
                  AjustTotalItem(Self);
                end;
            end;
        end; //corte
    end;//pnf

  QItemVL_DIFERENCA.Value:= (QItemQN_PESOITEMPEDIVEND.Value * QItemVL_UNITITEMPEDIVEND.Value) - (QItemQN_PESOITEMPEDIVEND.Value * QItemVL_ITEMTABEPREC.Value);

//testar
{
   - não pode ser PNF = true
   - tem q ser diferente do cliente varejo ou ser difente do tipo "copia pedido"

  if ls_QuerStat <> 'C' then
    begin
      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Add('select');
      QryTemp.SQL.Add('  nvl((round(max(i.qn_embaitempedivend)*1.5)),0) as max_ped');
      QryTemp.SQL.Add('from');
      QryTemp.SQL.Add('  pedido_venda_item i,');
      QryTemp.SQL.Add('  pedido_venda p');
      QryTemp.SQL.Add('where');
      QryTemp.SQL.Add('  p.id_pedivend = i.id_pedivend');
      QryTemp.SQL.Add('  and p.dt_pedivend >= (sysdate - 180)');
      QryTemp.SQL.Add('  and p.id_cliente = ' + QPediVeID_CLIENTE.Text);
      //QryTemp.SQL.Add('  and p.id_vendedor = ' + QPediVeID_VENDEDOR.Text);
      QryTemp.SQL.Add('  and i.id_mateemba = ' + QItemID_MATEEMBA.Text);
      QryTemp.Open;

      if QryTemp.FieldByName('max_ped').Value > 0 then
        if StrToFloat(DBCodMatEmba.Text) > QryTemp.FieldByName('max_ped').Value then
          begin
            lblAviso.Caption:= 'QTDE  LANÇADA  ACIMA  DO  MÁXIMO.  VERIFIQUE';
            contador:= 1;
            tmrAviso.Enabled:= True;
          end;
    end;
 }
end;

procedure TFrmPedVenda.sbRemCorteClick(Sender: TObject);
begin
  if QPediVe.IsEmpty then exit;

  if (QPediVeFL_CORTE.Value <> '') then
    begin
      if (QPediVeDT_FATUPEDIVEND.IsNull) then
        begin
          QryTemp.Close;
          QryTemp.SQL.Clear;
          QryTemp.SQL.Add('UPDATE PEDIDO_VENDA SET FL_CORTE = NULL');
          QryTemp.SQL.Add('  WHERE ID_PEDIVEND = ' + QPediVeID_PEDIVEND.Text);
          QryTemp.ExecSQL;
          MessageDlg('Pedido atualizado e removido do corte.', mtConfirmation, [mbOk], 0);
        end
      else
        MessageDlg('Pedido já faturado e não permite exclusão.', mtWarning, [mbOk], 0);
    end;
end;

procedure TFrmPedVenda.sbContasClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPedVendaConta, FrmPedVendaConta);
  FrmPedVendaConta.ShowModal;
  FrmPedVendaConta.Free;
end;

procedure TFrmPedVenda.DBPedCompraEnter(Sender: TObject);
begin
  DBPedCompra.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBItemPedCompraEnter(Sender: TObject);
begin
  DBItemPedCompra.Color:= clMidlight;
end;

procedure TFrmPedVenda.DBPedCompraExit(Sender: TObject);
begin
  DBPedCompra.Color:=ClBase;
end;

procedure TFrmPedVenda.DBItemPedCompraExit(Sender: TObject);
begin
  DBItemPedCompra.Color:=ClBase;
end;

procedure TFrmPedVenda.btnTabPreClick(Sender: TObject);
begin
  WITH OSQL DO
   begin
     SQL.Clear;
     SQL.Add('update cliente set ID_TABEPREC = ' + QrTabPreID_TABEPREC.Text);
     SQL.Add('where id_cliente = '+ QPediVe.FieldByName('ID_CLIENTE').AsString);
     Execute;
   end;
end;

procedure TFrmPedVenda.edtCodiClieKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8]) then
    key:= #0
end;

procedure TFrmPedVenda.DBCodMatEmbaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #8]) then
    key:= #0
end;

procedure TFrmPedVenda.edtQtdeEmbaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',',', #8]) then
    key:= #0
end;

procedure TFrmPedVenda.tmrAvisoTimer(Sender: TObject);
begin
  if lblAviso.Visible = False then
    lblAviso.Visible:= True
  else
    lblAviso.Visible:= False;

  contador:= contador + 1;
  if contador > 10 then
    begin
      lblAviso.Caption:= '';
      lblAviso.Visible:= False;
      tmrAviso.Enabled:= False;
    end;
end;

procedure TFrmPedVenda.QItemVL_UNITITEMPEDIVENDChange(Sender: TField);
begin
  {
  if StrToFloat(edtPrecUnitBrut.Text) > ((Qrprec.FieldByName('VL_ITEMTABEPREC').Value)*5) then
    begin
      lblAviso.Caption:= 'VALOR  ACIMA  DO  VALOR  DE  TABELA.  VERIFIQUE';
      contador:= 1;
      tmrAviso.Enabled:= True;
    end;
  }  
end;

procedure TFrmPedVenda.sbSaldoClick(Sender: TObject);
var
  vTotKg, vTotVen: double;
begin
  try
    Application.CreateForm(TFrmSaldoProdCorte, FrmSaldoProdCorte);
    FrmSaldoProdCorte.Caption:= 'Saldo Produtos - Corte - ' + FormatDateTime('dd/mm/yyyy', Date);
    FrmSaldoProdCorte.qrSaldo.Close;
    FrmSaldoProdCorte.qrSaldo.ParamByName('P_ID_USUARIO').Value:= gi_IdenUsua;
    FrmSaldoProdCorte.qrSaldo.Open;
    vTotKg:= 0;
    vTotVen:= 0;
    if not FrmSaldoProdCorte.qrSaldo.IsEmpty then
      begin
        FrmSaldoProdCorte.qrSaldo.First;
        while not FrmSaldoProdCorte.qrSaldo.Eof do
          begin
            vTotKg:= vTotKg + FrmSaldoProdCorte.qrSaldoTOTAL_PESO.Value;
            vTotVen:= vTotVen + FrmSaldoProdCorte.qrSaldoTOTAL.Value;
            FrmSaldoProdCorte.qrSaldo.Next;
          end;
        FrmSaldoProdCorte.edtTotPeso.Text:= FormatFloat('#,###.##',vTotKg);
        FrmSaldoProdCorte.edtTotVendas.Text:= FormatFloat('#,##0.00', vTotVen);
      end;
    FrmSaldoProdCorte.ShowModal;
  finally
    FrmSaldoProdCorte.Free;
  end;
end;

procedure TFrmPedVenda.SBCupomClick(Sender: TObject);
begin
  Application.CreateForm(TFrmDialCupom, FrmDialCupom);
  if FrmDialCupom.ShowModal = mrOK then
    begin
      FrmDialCupom.qryPesq.First;
      while not FrmDialCupom.qryPesq.Eof do
        begin
          if not (QItem.State in [dsInsert,dsEdit]) then
            SBNovoClick(nil);

          DBCodMatEmba.Text:= FrmDialCupom.qryPesqID_PRODMATEEMBA.Value;
          DBCodMatEmbaExit(nil);
          edtQtdeEmba.Text:= FrmDialCupom.qryPesqQTDE.AsString;
          edtQtdeEmbaExit(nil);
          edtPrecUnitBrut.Text:= FormatFloat('0.00',FrmDialCupom.qryPesqPR_UNIT.Value);
          edtPrecUnitBrutExit(nil);
          SBSalvaClick(nil);

          FrmDialCupom.qryPesq.Next;
        end;
    end;
  FrmDialCupom.Free;
end;

procedure TFrmPedVenda.qry_TipoDocRefBeforeOpen(DataSet: TDataSet);
begin
  qry_TipoDocRef.ParamByName('ID_TIPOPEDIVEND').Value := QPediVeID_TIPOPEDIVEND.Value;
end;

procedure TFrmPedVenda.edtTomadorIDKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8]) then
    key:= #0
end;

procedure TFrmPedVenda.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8]) then
    key:= #0
end;

procedure TFrmPedVenda.edtRemetenteIDKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8]) then
    key:= #0
end;

procedure TFrmPedVenda.edtDestinatarioIDKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8]) then
    key:= #0
end;

{
  Descrição: Abre a tela de pesquisa para buscar o Remetente
  Autor: Vinícius Godinho Del Rio
  Data: 01/12/2014
}
procedure TFrmPedVenda.btnSelecionaRemetenteClick(Sender: TObject);
begin

  //Definindo o tipo de pesquisa
  FrmOriPesq := TP_PESQUISA_CTE_REMETENTE;

  //Instanciando o form de pesquisa
  FrmPesqCliente:=TFrmPesqCliente.Create(Self);
  FrmPesqCliente.ShowModal;

end;

{
  Descrição: Abre a tela de pesquisa para buscar o Destinatário
  Autor: Vinícius Godinho Del Rio
  Data: 01/12/2014
}
procedure TFrmPedVenda.btnSelecionaDestinatarioClick(Sender: TObject);
begin

  //Definindo o tipo de pesquisa
  FrmOriPesq := TP_PESQUISA_CTE_DESTINATARIO;

  //Instanciando o form de pesquisa
  FrmPesqCliente:=TFrmPesqCliente.Create(Self);
  FrmPesqCliente.ShowModal;

end;

{
  Descrição: Carregando as informações do CTE dependendo do tipo de pedido de venda
  Autor: Vinícius Godinho Del Rio
  Data: 01/12/2014
}
procedure TFrmPedVenda.CarregaInformacoesCTE();
begin

  if (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S') then
  begin

    edtRemetenteID.Enabled := True;
    edtRemetente.Enabled := True;
    edtDestinatarioID.Enabled := True;
    edtDestinatario.Enabled := True;
    btnSelecionaDestinatario.Enabled := True;
    btnSelecionaRemetente.Enabled := True;
    //btnInfoCTE.Enabled := True;

    QPediVe.FieldByName('ID_TOMADOR').Value := QPediVe.FieldByName('ID_CLIENTE').Value;
    QPediVe.FieldByName('ID_REMETENTE').Value := QPediVe.FieldByName('ID_CLIENTE').Value;
    QPediVe.FieldByName('ID_DESTINATARIO').Value := QPediVe.FieldByName('ID_CLIENTE').Value;
    QPediVe.FieldByName('NM_TOMADOR').Value := QPediVe.FieldByName('NM_CLIENTE').Value;
    QPediVe.FieldByName('NM_REMETENTE').Value := QPediVe.FieldByName('NM_CLIENTE').Value;
    QPediVe.FieldByName('NM_DESTINATARIO').Value := QPediVe.FieldByName('NM_CLIENTE').Value;

  end
  else
  begin

    edtRemetenteID.Enabled := False;
    edtRemetente.Enabled := False;
    edtDestinatarioID.Enabled := False;
    edtDestinatario.Enabled := False;
    btnSelecionaDestinatario.Enabled := False;
    btnSelecionaRemetente.Enabled := False;
    //btnInfoCTE.Enabled := False;

    QPediVe.FieldByName('ID_TOMADOR').Clear;
    QPediVe.FieldByName('ID_REMETENTE').Clear;
    QPediVe.FieldByName('ID_DESTINATARIO').Clear;
    QPediVe.FieldByName('NM_TOMADOR').Clear;
    QPediVe.FieldByName('NM_REMETENTE').Clear;
    QPediVe.FieldByName('NM_DESTINATARIO').Clear;

  end;

end;

procedure TFrmPedVenda.btnInfoCTEClick(Sender: TObject);
var
  FrmInfoCTE : TFrmInfoCTE;
begin

  //Instancia o formulário de cadastro de informações do CT-e
   Application.CreateForm(TFrmInfoCTE, FrmInfoCTE);

   //Atribui qual é o pedido de venda em questão
   FrmInfoCTE.idPedidoVenda := QPediVeID_PEDIVEND.AsInteger;

   //Verifica se a tela de cadastro de informações do CT-e estará no modo de edição ou no modo de visualização
   if (QPediVeID_PEDIVEND.Value <> 0) and (QPediVeFL_STATPEDIVEND.Value <> 'FE') then
    FrmInfoCTE.modoTela := MODO_TELA_EDICAO
   else
    FrmInfoCTE.modoTela := MODO_TELA_VISUALIZACAO;

    //Exibe modal
   FrmInfoCTE.Show;

end;

{
  Descrição: Caso o tipo de pedido de venda estiver o FL_CTE = 'S' então precisa validar se o usuário preencheu
  as informações do CT-e, pois elas são obrigatórias na geração do TXT do CT-E.
  Autor: Vinícius Godinho Del Rio
  Data: 09/03/2015
}
procedure TfrmPedVenda.ValidaInformacoesCTE();
begin

  //Verifica se o tipo do pedido de venda é do CT-e
  if (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S') then
  begin

    //Buscando as informações do CT-e
    QryCTEPedVend.Close;
    QryCTEPedVend.ParamByName('ID_PEDIVEND').Value := QPediVeID_PEDIVEND.Value;
    QryCTEPedVend.Open;

    //Verificando se encontrou resultados
    if QryCTEPedVend.RecordCount > 0 then
    begin

      //Validando os campos
      if (QryCTEPedVendID_PRODUTO_PREDOMINANTE.IsNull) or
         (QryCTEPedVendGN_OUTRAS_CARACTERISTICAS.IsNull) or
         (QryCTEPedVendVL_TOTAL_MERCADORIA.IsNull) or
         (QryCTEPedVendID_UNIDMEDI.IsNull) or
         (QryCTEPedVendNM_TIPO_MEDIDA.IsNull) or
         (QryCTEPedVendQN_QUANTIDADE_CTE.IsNull) or
         (QryCTEPedVendQTD_COMPONENTES_SERVICO.Value = 0) then
      begin

        //Voltando o cursor para o default
        Screen.Cursor := crDefault;

        //Alertando o usuário que ele não preencheu as informações do CT-e.
        MessageDlg('Você precisa preencher todos os campos de Informação do CT-e para prosseguir.', mtWarning, [mbOk], 0);

        //Cancelando as atualizações feitas na query de pedido de venda
        QPediVe.CancelUpdates;

        //Saindo da thread
        Abort;

      end
      //Verificando se preencheu a grid de documentos referenciados
      else if (Qry_DocRef.RecordCount = 0) then
      begin

        //Voltando o cursor para o default
        Screen.Cursor := crDefault;

        //Alertando o usuário que ele não preencheu a aba de documentos referenciados
        MessageDlg('Você precisa preencher os Documentos Referenciados para prosseguir.', mtWarning, [mbOk], 0);

        //Cancelando as atualizações feitas na query de pedido de venda
        QPediVe.CancelUpdates;

        //Saindo da thread
        Abort;

      end;

    end;

  end;

end;

{
  Descrição: Habilita/Desabilita a edição dos campos
  Autor: Vinícius Godinho Del Rio
  Data: 10/03/2015
}
procedure TfrmPedVenda.HabilitaCamposInformacoesCTE(enabled : Boolean);
begin

  edtProdutoPredominante.Enabled := enabled;
  cbProdutoPredominante.Enabled := enabled;
  edtOutrasCaracteristicas.Enabled := enabled;
  edtValorTotal.Enabled := enabled;
  cbUnidadeMedida.Enabled := enabled;
  edtTipoMedida.Enabled := enabled;
  edtQuantidade.Enabled := enabled;
  edtNome.Enabled := enabled;
  edtValor.Enabled := enabled;
  btnAdicionar.Enabled := enabled;
  btnRemover.Enabled := enabled;
  btn_ProdPredom.Enabled := enabled;

  QryPedidoVenda.ReadOnly := not enabled;
  QryMaterialEmbalagem.ReadOnly := not enabled;
  QryCTECompServ.ReadOnly := not enabled;
  QryUnidadeMedida.ReadOnly := not enabled;

end;

{
  Descrição: Adiciona um componente de valor da prestação de serviço
  Autor: Vinícius Godinho Del Rio
  Data: 10/03/2015
}
procedure TfrmPedVenda.btnAdicionarClick(Sender: TObject);
begin

  //Verificando se existem menos de 3 (No documento de CT-e gerado existem apenas 3 campos)
  if QryCTECompServ.RecordCount < MAX_COMP_SERVICO then
  begin

    //Verificando se o usuário preenchei as Textboxes
    if (edtNome.Text = '') or (edtValor.Text = '') then
    begin

      ShowMessage('Não é possível adicionar um componente de serviço com o Nome ou o Valor vazio.');
      Exit;

    end;

    //Colocando a OracleQuery em modo de inserção
    QryCTECompServ.Insert;

    //Definindo os valores dos campos
    QryCTECompServID_PEDIVEND.Value := QPediVeID_PEDIVEND.Value;
    QryCTECompServNM_NOME.Value := edtNome.Text;
    QryCTECompServVL_VALOR.Value := StrToFloatDef(edtValor.Text, 0);

    //Comitando
    QryCTECompServ.Post;
    //QryCTECompServ.ApplyUpdates;

    //Limpando os campos
    edtNome.Text := '';
    edtValor.Text := '';

  end
  else
  begin

    ShowMessage('Só é possível ter ' + IntToStr(MAX_COMP_SERVICO) + ' componente(s) do valor da prestação de serviço!');

  end;

end;

{
  Descrição: Remove um componente de valor de prestação do serviço.
  Autor: Vinícius Godinho Del Rio
  Data: 10/03/2015
}
procedure TfrmPedVenda.btnRemoverClick(Sender: TObject);
begin

  //Verificando se existe registro selecionado para a exclusão
  if QryCTECompServ.RecordCount > 0 then
  begin

    //Confirmando se realmente o usuário quer excluir
    if MessageDlg('Confirma a exclusão deste componente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      //Realizando a exclusão
      QryCTECompServ.Delete;
      
    end;

  end
  else
  begin

    ShowMessage('Não existem registros para serem excluídos!');

  end;

end;

{
  Descrição: Valida se o que foi digitado é um número ou o separador numérico
  Autor: Vinícius Godinho Del Rio
  Data: 10/03/2015
}
procedure TFrmPedVenda.edtValorKeyPress(Sender: TObject; var Key: Char);
begin

  if not (Key in [#8, '0'..'9', SEPARADOR_DECIMAL]) then
    Key := #0
  else if (Key = SEPARADOR_DECIMAL) and (Pos(Key, edtValor.Text) > 0) then
    Key := #0;

end;

{
  Descrição: Busca o produto com o código digitado na DBEdit do Produto Predominante
  Autor: Vinícius Godinho Del Rio
  Data: 10/03/2015
}
procedure TFrmPedVenda.edtProdutoPredominanteExit(Sender: TObject);
var VID_Prodmateemba : string ;
begin

  //Verificando se existe algo digitado na textbox de Produto Predominante
  if edtProdutoPredominante.Text <> '' then
  begin

     VID_Prodmateemba := edtProdutoPredominante.Text ;
     if ( Length(VID_Prodmateemba ) <= 2 ) then
     begin
          VID_Prodmateemba :=  RightStr( '00'+VID_Prodmateemba , 3 );

     end;

    //Tentando localizar o produto com o código digitado na textbox de Produto Predominante
    if not QryMaterialEmbalagem.Locate('ID_PRODMATEEMBA', VID_Prodmateemba , []) then
    begin

      //Se não encontrou, exibe mensagem alertando o usuário
      MessageDlg('Código de produto inexistente.'+ VID_Prodmateemba + #10, mtWarning, [mbOk], 0);

      //Limpa a caixa de texto e joga o foco para ela
      edtProdutoPredominante.Text := '';
      edtProdutoPredominante.SetFocus;

    end;

  end;

end;

{
  Descrição: Abre uma query passando um unico parâmetro do tipo inteiro
  Autor: Vinícius Godinho Del Rio
  Data: 13/01/2015
}
procedure TfrmPedVenda.AbreQueryComParametro(qry : TOraQuery; paramName : string; paramValue : Double);
begin

  qry.Close;
  qry.ParamByName(paramName).Value := paramValue;
  qry.Open;

end;

{
  Descrição: Atualiza as informações do Tipo de Medida conforme o Cód. da Medida Escolhido
  Autor: Vinícius Godinho Del Rio
  Data: 23/03/2015
}
procedure TFrmPedVenda.cbUnidadeMedidaExit(Sender: TObject);
begin

  edtTipoMedida.Text := QryUnidadeMedidaNM_TIPO_MEDIDA.Value;

end;

procedure TFrmPedVenda.btn_ProdPredomClick(Sender: TObject);
begin
      FrmOriPesq:=13;
      FrmPesqMatEmba:=TFrmPesqMatEmba.Create(Self);
      FrmPesqMatEmba.ShowModal;
      FrmPesqMatEmba.Free;
     // edtProdutoPredominanteExit(Sender);

end;

procedure TFrmPedVenda.tabCTEShow(Sender: TObject);
begin
    AbreQueryComParametro(QryPedidoVenda, 'ID_PEDIVEND', QPediVeID_PEDIVEND.Value);
    AbreQueryComParametro(QryCTECompServ, 'ID_PEDIVEND', QPediVeID_PEDIVEND.Value);
end;

procedure TFrmPedVenda.QPediVeAfterScroll(DataSet: TDataSet);
begin
     if  not ( QPediVe.State in [ dsInsert] ) then
     begin
         if ( QPediVeFL_PNF.AsString = 'S' ) then
            VPNF := True
         else
            VPNF := False;
     end;
end;

procedure TFrmPedVenda.DBGrid1TitleClick(Column: TColumn);
var I: Integer;
begin
      for I := 0 to DBGrid1.Columns.Count - 1 do
      DBGrid1.Columns[i].Title.Font.Style := [];

      if ( QPediVe.FieldByName(Column.FieldName).FieldKind in [fkData] ) then
      begin
           Column.Title.Font.Style := [fsBold];
           OrdemColuna := Column.FieldName;
           if ( OrdemColuna <> Column.FieldName ) OR  ((OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente')  ) then
           begin
                QPediVe.IndexFieldNames := Column.FieldName+' ASC';
                Ordem := 'Crescente';
           end
           else
           begin
                QPediVe.IndexFieldNames := Column.FieldName+' DESC';;
                Ordem := 'Decrescente';
           end;

      end;
end;

procedure TFrmPedVenda.btn_PesqLoteClick(Sender: TObject);
Var CNPJ, Lote : String;
begin
     CNPJ := '';
     Lote := '';

     if ( QPediVeID_TIPOPEDIVEND.Value = 130 ) then // se for remesa de ração selecionar somente lote do Integrado
        CNPJ := QPediVeNR_CNPJCLIE.Value;

     Cria_FrmPesqLote( CNPJ, Lote, VerTodosLotes );
     if ( Lote <> '') then
        QPediVeID_LOTE.Value := StrToFloat( Lote);
end;

function TPageControl.DoMouseWheel(Shift: TShiftState; WheelDelta: Integer; const MousePos: TPoint): Boolean;
begin
  Result := true;
end;

procedure TFrmPedVenda.btn_ConfObsClick(Sender: TObject);
begin
     QPediVe.Post;
     QPediVe.ApplyUpdates;
     QPediVe.CommitUpdates;
end;

procedure TFrmPedVenda.btn_CancObsClick(Sender: TObject);
begin
     QPediVe.Cancel;
     QPediVe.CancelUpdates;
end;

procedure TFrmPedVenda.DSPediVeStateChange(Sender: TObject);
begin
     btn_ConfObs.Enabled := ( QPediVe.State in [dsedit]);
     btn_CancObs.Enabled := ( QPediVe.State in [dsedit]);
end;

procedure TFrmPedVenda.DSItemStateChange(Sender: TObject);
begin
       if ( QPediVeID_CARGEXPE.AsInteger = 0 ) AND
          ( not ( QItem.State in[dsinsert,dsedit] )) And
          ( (QPediVeFL_STATPEDIVEND.Value = 'AV')OR(QPediVeFL_STATPEDIVEND.Value = 'AB') )
       then
       begin
           Mem_ObsExped.Enabled := true;
           Mem_ObsExped.Color := clBase;
       end
       else
       begin
           Mem_ObsExped.Enabled := false;
            Mem_ObsExped.Color := clSilver;
       end;

end;

{FABRICIO - 13/09/2018 - MOTIVO: validação para entrega além de um dia da data atual}
procedure TFrmPedVenda.pValidaDataLanctoPedido(pDataEntrega, pDataServidor:TDatetime);
begin
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT SYSDATE FROM DUAL';
  qryTemp.Open;

  if (dtEntregaInformada < Trunc(QryTemp.FieldByName('SYSDATE').AsDateTime)) then
  begin
    Application.MessageBox('Não é permitido lançamento de Pedido com Data de Entrega Retroativa.', FrmPedVenda.Caption, [ID_OK], smsInformation, ID_OK);
    SBCancelClick(self);
    Exit;
  end
  else
  begin
    if (dtEntregaInformada > dtMaxEntrega) then
    begin
//      if DayOfWeek(dtMaxEntrega-1) = 6 then
//      begin
//        if not((DayOfWeek(dtEntregaInformada) in [7,1,2]) OR (qryTemp.RecordCount > 0)) then
//        begin
//          Application.MessageBox('Não é permitido lançamento de Pedido com Data de Entrega Futura, exceto Sábados, Domigos e Feriados.', FrmPedVenda.Caption, [ID_OK], smsInformation, ID_OK);
//          SBCancelClick(self);
//          Exit;
//        end;
//      end
//      else
//      begin
        Application.MessageBox('Não é permitido lançamento de Pedido com Data de Entrega Futura, exceto Sábados, Domigos e Feriados.', FrmPedVenda.Caption, [ID_OK], smsInformation, ID_OK);
        SBCancelClick(self);
        Exit;
    end;
  end;
//  end;
end;

end.
