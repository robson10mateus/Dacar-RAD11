unit UfrmPedVenda;

interface

uses
Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, DB, MemDS, DBAccess, Ora, Grids,
  DBGrids, ExtCtrls, Mask, DBCtrls, System.Actions,
  Vcl.ActnList, Vcl.Menus, OraSmart, Clipbrd, Winapi.Windows;


type
  TPageControl = class(ComCtrls.TPageControl)
  protected
    function DoMouseWheel(Shift: TShiftState; WheelDelta: Integer;
      const MousePos: TPoint): Boolean; {override;}
  end;

type
  TFrmPedVenda = class(TForm)
    PageControl1: TPageControl;
    TsLista: TTabSheet;
    TsDetalhe: TTabSheet;
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
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label20: TLabel;
    GroupBox2: TGroupBox;
    LBOrdemI: TListBox;
    BVOLTA: TBitBtn;
    BVAI: TBitBtn;
    LBOrdemR: TListBox;
    Panel1: TPanel;
    DSItem: TOraDataSource;
    BPESQ: TBitBtn;
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
    TSItem: TTabSheet;
    DBGrid2: TDBGrid;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    Label24: TLabel;
    QrEndCli: TOraQuery;
    DSEndEntrega: TOraDataSource;
    Label27: TLabel;
    QrEndCobra: TOraQuery;
    DSEndCobra: TOraDataSource;
    Label34: TLabel;
    Label35: TLabel;
    DBSitCob: TDBEdit;
    Label36: TLabel;
    QrTipoCobr: TOraQuery;
    DSTipoCobr: TOraDataSource;
    DBLTipoCobranca: TDBLookupComboBox;
    Label37: TLabel;
    DBLConta: TDBLookupComboBox;
    Label38: TLabel;
    QrConta: TOraQuery;
    DSConta: TOraDataSource;
    QrTipoLogi: TOraQuery;
    DStipoLogi: TOraDataSource;
    BPesqVend: TBitBtn;
    DBLPedidoVenda: TDBLookupComboBox;
    DBLSitCobranca: TDBLookupComboBox;
    QrTipoPed: TOraQuery;
    QrFormaPG: TOraQuery;
    QrInstCob: TOraQuery;
    QrSituCob: TOraQuery;
    DSTipoPedi: TOraDataSource;
    DsformaPg: TOraDataSource;
    DsInstCob: TOraDataSource;
    DSSituCob: TOraDataSource;
    DBLFormaPagto: TDBLookupComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    QrPre: TOraQuery;
    DSPre: TOraDataSource;
    QrTipoOper: TOraQuery;
    DSTipoOper: TOraDataSource;
    QrTipoOperID_TIPOOPER: TFloatField;
    QrTipoOperNM_DESCUSOTIPOOPER: TStringField;
    QryTemp: TOraQuery;
    QrTitu: TOraQuery;
    PM1: TPopupMenu;
    mniValidar: TMenuItem;
    mniUltiVend: TMenuItem;
    mniTituAtra: TMenuItem;
    DBEdit4: TDBEdit;
    Label57: TLabel;
    QrDireitos: TOraQuery;
    Qrprec: TOraQuery;
    edtDataPedi: TDBEdit;
    edtDataEntr: TDBEdit;
    DBIE_EXTERNO: TDBEdit;
    DBCForPg: TDBEdit;
    DBInstCob: TDBEdit;
    DBTipVen: TDBEdit;
    OSQL: TOraSQL;
    QryClie: TOraQuery;
    ActionList1: TActionList;
    Action1: TAction;
    DBCVen: TDBEdit;
    QryTempC: TOraQuery;
    BPesqDtEntre: TBitBtn;
    BPesqDt: TBitBtn;
    DbCAuto: TDBLookupComboBox;
    Label58: TLabel;
    QrUsuSis: TOraQuery;
    DSUsuSis: TOraDataSource;
    QrCartorio: TOraQuery;
    Timer1: TTimer;
    TtulosemCartrio1: TMenuItem;
    mniSaldoLan: TMenuItem;
    QryPais: TOraQuery;
    DSPais: TOraDataSource;
    DBEdit14: TDBEdit;
    Label33: TLabel;
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
    QrPedArm: TOraQuery;
    DSPedArm: TOraDataSource;
    E_site: TEdit;
    DB_NR_INSCESTACLIE: TDBEdit;
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
    QryPesqTipoPedivend: TOraQuery;
    QryPesqTipoPedivendQTDE: TFloatField;
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
    SaldoProdutosCorte1: TMenuItem;
    QryConSaldo: TOraQuery;
    qry_TipoDocRef: TOraQuery;
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
    QryCTEPedVend: TOraQuery;
    QryCTEPedVendID_PRODUTO_PREDOMINANTE: TFloatField;
    QryCTEPedVendGN_OUTRAS_CARACTERISTICAS: TStringField;
    QryCTEPedVendVL_TOTAL_MERCADORIA: TFloatField;
    QryCTEPedVendID_UNIDMEDI: TFloatField;
    QryCTEPedVendNM_TIPO_MEDIDA: TStringField;
    QryCTEPedVendQN_QUANTIDADE_CTE: TFloatField;
    QryCTEPedVendQTD_COMPONENTES_SERVICO: TFloatField;
    tabCTE: TTabSheet;
    grpCompValorPrestacao: TGroupBox;
    lblNome: TLabel;
    edtNome: TEdit;
    lblValor: TLabel;
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
    QrTipoOperID_INTETIPOOPER: TStringField;
    QrTipoOperFIN_NFE: TStringField;
    QrTipoOperFL_EXIBE_DESC: TStringField;
    Qry_Estado: TOraQuery;
    Qry_EstadoSG_ESTADO: TStringField;
    qry_TipoDocRefID_TIPODOCU: TFloatField;
    qry_TipoDocRefID_TIPOPEDIVEND: TFloatField;
    qry_TipoDocRefOBRIGATORIO: TStringField;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    btn_PesqLote: TBitBtn;
    Qr_ValidaLote: TOraQuery;
    Qr_ValidaLoteID_LOTE: TFloatField;
    Qr_ValidaLoteNR_CNPJFORN: TStringField;
    Qr_ValidaLoteFL_STATUS: TStringField;
    btn_ConfObs: TSpeedButton;
    btn_CancObs: TSpeedButton;
    Qr_ValidaProduto: TOraQuery;
    Qr_ValidaProdutoVALIDAR: TStringField;
    Qr_ValidaProdutoVALIDO: TStringField;
    QFeriado: TOraQuery;
    qryQtdDisponivel: TOraQuery;
    SP_ESTOQUE: TOraSQL;
    sqlHORA_PRODUCAO: TOraSQL;
    pnlBotoes: TPanel;
    SBSalva: TSpeedButton;
    sbSaldo: TSpeedButton;
    sbRemCorte: TSpeedButton;
    SBNovo: TSpeedButton;
    SBDiversos: TSpeedButton;
    SBDel: TSpeedButton;
    SBCupom: TSpeedButton;
    sbContas: TSpeedButton;
    SBCancel: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    Sb_Sair: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_PRIMEIRO: TSpeedButton;
    SB_PNF: TSpeedButton;
    SB_Editar: TSpeedButton;
    SB_COPIA: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    Panel9: TPanel;
    grpPedido: TGroupBox;
    Panel4: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    grpPagamento: TGroupBox;
    grpTransportes: TGroupBox;
    DBRTipoFrete: TDBRadioGroup;
    DBLookupComboBox5: TDBLookupComboBox;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBPesoPed: TDBEdit;
    DBEmbalagem: TDBEdit;
    edtTotaEmba: TDBEdit;
    edtPesoBrutTota: TDBEdit;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label26: TLabel;
    DBEdit13: TDBEdit;
    CBxCidPorto: TDBLookupComboBox;
    CBxPais: TDBLookupComboBox;
    Label28: TLabel;
    Label32: TLabel;
    CBxPedArm: TDBLookupComboBox;
    Label62: TLabel;
    DBArmazena: TDBEdit;
    DBCodCidEntre: TDBEdit;
    Label63: TLabel;
    Chb_Semtransportador: TDBCheckBox;
    DBCarga: TDBEdit;
    Label3: TLabel;
    DBPlaca: TDBEdit;
    Label21: TLabel;
    Panel12: TPanel;
    Btplaca: TBitBtn;
    Panel13: TPanel;
    grpDadosAdicionais: TGroupBox;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    DBMemo2: TDBMemo;
    SpeedButton1: TSpeedButton;
    rdg_NFComplementar: TDBRadioGroup;
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
    grpPedidoAposHorario: TGroupBox;
    edtMotivoPedidoAposHorario: TDBEdit;
    DBLInstCobranca: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    Label42: TLabel;
    DBPEDIVEND: TDBEdit;
    Label46: TLabel;
    DBEdit23: TDBEdit;
    DBCLI: TDBEdit;
    DBEdit3: TDBEdit;
    Label43: TLabel;
    DBEdit29: TDBEdit;
    Label47: TLabel;
    Panel14: TPanel;
    Label4: TLabel;
    Mem_ObsExped: TDBMemo;
    Label69: TLabel;
    Label52: TLabel;
    DBLTipoOperacaoItem: TDBLookupComboBox;
    GroupBox7: TGroupBox;
    Label48: TLabel;
    DBCodMatEmba: TDBEdit;
    Label49: TLabel;
    DBEdit31: TDBEdit;
    Btmaterial: TBitBtn;
    Label50: TLabel;
    DBEdit32: TDBEdit;
    Label59: TLabel;
    DBEdit2: TDBEdit;
    Label74: TLabel;
    DBEdit38: TDBEdit;
    Label64: TLabel;
    edtPesoPadr: TDBEdit;
    Label51: TLabel;
    edtQtdeEmba: TDBEdit;
    Label54: TLabel;
    edtPrecUnitBrut: TDBEdit;
    Label55: TLabel;
    edtDesc: TDBEdit;
    Label53: TLabel;
    edtPrecUnit: TDBEdit;
    Label67: TLabel;
    edtValoTota: TDBEdit;
    grpQtdDisponivel: TGroupBox;
    pnlQtdDisponivel: TPanel;
    GroupBox9: TGroupBox;
    CBIPICMS: TDBCheckBox;
    Label61: TLabel;
    Label60: TLabel;
    edtIPI: TDBEdit;
    lbl_ICMS: TLabel;
    edt_ICMS: TDBEdit;
    lbl_BaseICMS: TLabel;
    edt_BaseICMS: TDBEdit;
    edt_VlDesc: TDBEdit;
    Edt_VlOutrasDesp: TDBEdit;
    lbl_VLDesc: TLabel;
    lbl_OutrasDesp: TLabel;
    Label29: TLabel;
    DBEmbaCort: TDBEdit;
    GroupBox8: TGroupBox;
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
    btn_ProdPredom: TBitBtn;
    Panel5: TPanel;
    GroupBox10: TGroupBox;
    grdComponentes: TDBGrid;
    btnIncluirCTe: TSpeedButton;
    btnExcluirCTe: TSpeedButton;
    Label25: TLabel;
    edtCodiClie: TDBEdit;
    BtpesqCli: TBitBtn;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    DBEdit30: TDBEdit;
    Label31: TLabel;
    cbxEndeEntr: TDBLookupComboBox;
    DBEdit10: TDBEdit;
    DBEdit25: TDBEdit;
    Label30: TLabel;
    DBEdit26: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    GroupBox3: TGroupBox;
    Label39: TLabel;
    DBPCDESC: TDBEdit;
    Label12: TLabel;
    DBEdit21: TDBEdit;
    DBUF: TDBEdit;
    Label5: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label56: TLabel;
    Label72: TLabel;
    btnValidaPreco: TSpeedButton;
    QrPreVL_LIMICREDCLIE: TFloatField;
    QrPreVL_CREDATUACLIE: TFloatField;
    QrPreVL_CREDESPECLIE: TFloatField;
    QrPreVL_CREDESPEUSADCLIE: TFloatField;
    QrPreVL_CREDUSADCLIE: TFloatField;
    QrPreID_CLIENTE: TFloatField;
    QrPreNM_TABEPREC: TStringField;
    QrPreID_TABEPREC: TFloatField;
    mniTransfer: TMenuItem;
    lblSimplesNacional: TLabel;
    qryTempTT: TOraQuery;
    qryItensUnifica: TOraQuery;
    sqlItensUnifica: TOraSQL;
    QrTipoOperFL_ENTRSAIDTIPOOPER: TStringField;
    QPediVe: TSmartQuery;
    QPediVeTitCartorio: TIntegerField;
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
    QPediVeNR_INSCESTACLIE: TStringField;
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
    QPediVeNM_BAIRRO: TStringField;
    QPediVeNM_CIDADE: TStringField;
    QPediVeID_IBGE: TIntegerField;
    QPediVeCPORCOMIS: TFloatField;
    QPediVeSG_ESTADO: TStringField;
    QPediVeID_CIDADE_ENTREGA: TFloatField;
    QPediVeID_PAIS_ENTREGA: TFloatField;
    QPediVeID_FORNECEDOR: TFloatField;
    QPediVeGN_PLACVEICTRAN: TStringField;
    QPediVeNM_FORNECEDOR: TStringField;
    QPediVeID_PRODMATEEMBA: TStringField;
    QPediVeID_PEDREMESSA: TFloatField;
    QPediVeFL_PNF: TStringField;
    QPediVeDESCR_EMBALAGEM: TStringField;
    QPediVeDT_CONSULTA_IE: TDateTimeField;
    QPediVePR_CONSULTA_IE: TStringField;
    QPediVeFL_CORTE: TStringField;
    QPediVeDTHORA_CORTE: TDateTimeField;
    QPediVeID_TOMADOR: TFloatField;
    QPediVeID_EMITENTE: TFloatField;
    QPediVeID_REMETENTE: TFloatField;
    QPediVeID_DESTINATARIO: TFloatField;
    QPediVeNM_JUSTIFICATIVA_PRECO: TStringField;
    QPediVeFL_VALIDA_TABPRECO: TStringField;
    QPediVeID_GRUPCLIE: TFloatField;
    QPediVeFL_VENDA_FUNC: TStringField;
    QPediVeNM_TOMADOR: TStringField;
    QPediVeNM_REMETENTE: TStringField;
    QPediVeNM_DESTINATARIO: TStringField;
    QPediVeFL_SEMTRANSP: TStringField;
    QPediVeFL_NFCOMPLEMENTAR: TStringField;
    QPediVeID_LOTE: TFloatField;
    QPediVeNM_LANCTO_POS_HORARIO: TStringField;
    QPediVeSTATUS: TStringField;
    QPediVeID_PEDIREPROGRAMADO: TFloatField;
    QPediVeID_PEDUNIF_ORIGEM: TFloatField;
    QPediVeID_PEDUNIF_DESTINO: TFloatField;
    QPediVeNR_NOTAFISC: TFloatField;
    QItem: TSmartQuery;
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
    QItemVL_DIFERENCA: TFloatField;
    QItemSG_ORDEMCOMPRA: TStringField;
    QItemQN_ITEMORDEMCOMPRA: TIntegerField;
    QItemVL_UNITICMS: TFloatField;
    QItemVL_DESCITEM: TFloatField;
    QItemVL_OUTRASDESP: TFloatField;
    QItemVL_BASEICMS: TFloatField;
    QItemNM_PRODREDUMATEEMBA: TStringField;
    procedure Sb_SairClick(Sender: TObject);
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
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
    procedure DBLPedidoVendaEnter(Sender: TObject);
    procedure cbxEndeEntrEnter(Sender: TObject);
    procedure cbxEndeCobrEnter(Sender: TObject);
    procedure DBCForPgEnter(Sender: TObject);
    procedure DBLFormaPagtoEnter(Sender: TObject);
    procedure DBInstCobEnter(Sender: TObject);
    procedure DBLInstCobrancaEnter(Sender: TObject);
    procedure DBSitCobEnter(Sender: TObject);
    procedure DBLSitCobrancaEnter(Sender: TObject);
    procedure DBLTipoCobrancaEnter(Sender: TObject);
    procedure DBLContaEnter(Sender: TObject);
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
    procedure DBLPedidoVendaExit(Sender: TObject);
    procedure DBLFormaPagtoExit(Sender: TObject);
    procedure DBLInstCobrancaExit(Sender: TObject);
    procedure DBLSitCobrancaExit(Sender: TObject);
    procedure DBLTipoCobrancaExit(Sender: TObject);
    procedure DBLContaExit(Sender: TObject);
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
    procedure QItem1AfterInsert(DataSet: TDataSet);
    procedure QItem1AfterDelete(DataSet: TDataSet);
    procedure QItem1AfterEdit(DataSet: TDataSet);
    procedure CRTemp_QPediVeAfterEdit(DataSet: TDataSet);
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
    procedure CRTemp_QPediVeID_CONTAChange(Sender: TField);
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
    procedure pValidaPeriodoDigitacao();
    procedure Qry_TipoClienteBeforeOpen(DataSet: TDataSet);
    procedure Dsc_DocRefStateChange(Sender: TObject);
    procedure TsDocRefShow(Sender: TObject);
    procedure Qry_TipoCFOPBeforeOpen(DataSet: TDataSet);
    procedure Dsc_DocRefDataChange(Sender: TObject; Field: TField);
    procedure Dbg_DocRefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QItem1BeforePost(DataSet: TDataSet);
    procedure sbRemCorteClick(Sender: TObject);
    procedure sbContasClick(Sender: TObject);
    procedure edtCodiClieKeyPress(Sender: TObject; var Key: Char);
    procedure DBCodMatEmbaKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdeEmbaKeyPress(Sender: TObject; var Key: Char);
    procedure tmrAvisoTimer(Sender: TObject);
    procedure QItem1VL_UNITITEMPEDIVENDChange(Sender: TField);
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
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure edtProdutoPredominanteExit(Sender: TObject);
    procedure cbUnidadeMedidaExit(Sender: TObject);
    procedure btn_ProdPredomClick(Sender: TObject);
    procedure tabCTEShow(Sender: TObject);
    procedure CRTemp_QPediVeAfterScroll(DataSet: TDataSet);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btn_PesqLoteClick(Sender: TObject);
    procedure btn_ConfObsClick(Sender: TObject);
    procedure btn_CancObsClick(Sender: TObject);
    procedure DSPediVeStateChange(Sender: TObject);
    procedure DSItemStateChange(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnIncluirCTeClick(Sender: TObject);
    procedure btnExcluirCTeClick(Sender: TObject);
    procedure btnValidaPrecoClick(Sender: TObject);
    procedure mniTransferClick(Sender: TObject);
  private
    {VARIAVEIS}
    OrdemColuna, Ordem , TitColuna, sWhereTabPreco, sColunaTabPreco  : string;
    VerTodosLotes, LancContaCaixa : Boolean ;
    nColunaTabPreco, nDecimal: Integer;

    procedure CarregaInformacoesCTE();
    procedure ValidaInformacoesCTE();
    procedure HabilitaCamposInformacoesCTE(enabled : Boolean);
    procedure AbreQueryComParametro(qry : TOraQuery; paramName : string; paramValue : Double);
    procedure pValidaDataLanctoPedido (pDataEntrega, pDataServidor : TDateTime);
    function fValidaPrecoTabela(nQtde:Integer):Boolean;
    function fRetornaColunaPreco():string;
    procedure pValidaMultiplosPedidos(sCliente:string; dDataEntrega : TDateTime);

  public
    // VARIAVEIS INTERGER
    VPAIS, SELPE, VCON, xcolor, contador, nPedidoUnificado: integer;

    // VARIAVEIS STRING
     VPESSOCLI, VItemInclui, ub_PermVend, vSQL, Vdtstr, sDescItem, Item:String;

    // VARIAVEIS DOUBLE
     VPc_Comis,VId_Cli,ur_ValoPediAnte,VId_Pedivend,VKGFRETE,VPERIPI, VACUMITEM:Double;

    // VARIAVEIS DATA
     VDATATU, dtMaxEntrega, dtEntregaInformada:TDATETIME;

    // VARIAVEIS BOOLEAN
     VEDITPLACA, VExporta, VCopia, VNFPOSTERIOR, VPNF, VDPNF, VEDITA_OBSNF, VINCLUI,
     VEDIT_OBS, VEDITA, VLANCMULT, valt, VItem_Avulso, Vprorrogou, VParamComer,
     vParticipaCorte :boolean;

    // VARIAVEIS REAL
     ur_PercMaxiPrecVend:Real;

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

uses SysUtils, UPesquiCliente, UFrmPesqVend,global, ufrmConsultaFormaPagto,
     UFrmPesqTPV, UFrmSeldata, {UFrmPesqMatEmba,} UFrmTituAtra, UFRMATRA,
     Principal, UFRMUltVend, UFrmCargaNF, UFrmCartorio, DateUtils,
     UFrmSaldoVendas, UFrmPesCaminhao, UFrmGeraVarejo, UFrmConsuObs, UFrmSite,
     UFrmGeraTelevendas, UFrmDialBanco, UFrmPedVendaConta, UFrmSaldoProdCorte,
     UFrmDialCupom, UFrmInfoCTE, StrUtils, UFrmPesqLote , ufrmAutoTabPreco,
     ufrmConsultaContas, ufrmConsultaProdutos, uFrmJustificativaPrecoTab, uFrmAtualizaPedidoTabPreco,
     ufrmConsultaUsuarios, ufrmConsultaGrupoClientes;

{$R *.dfm}
{$H+}

function  ConsisteInscricaoEstadual (const Insc, UF: String): Integer;
stdcall; external 'InscE32.Dll';

procedure TFrmPedVenda.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPedVenda.FormClose(Sender: TObject;
var Action: TCloseAction);
begin

  if (QPediVe.State = dsInsert) or (QPediVe.State = dsEdit) then
  begin
    if Application.MessageBox('Pedido ainda em Inclusão/ Edição. Deseja realmente sair?', PChar(FrmPedVenda.Caption), MB_YESNO) = IDNO then
    begin
      Action := caNone;
      exit;
    end
    else
    begin
      SBCancelClick(Self);
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

  FrmPedVenda:=Nil;
  FrmPrincipal.VEN004.Enabled:= True;
  Action:=caFree;

end;

procedure TFrmPedVenda.BtIncluirClick(Sender: TObject);
var
  Vre:String;
begin
  If EdExpre.Text<>'' then
  begin
    if MResul.Lines.Count>0 then
    begin
      If RGeou.ItemIndex=0  then
        Vre:='AND '
      else
        Vre:='OR ';
    end;

    Case LCampos.itemindex of
      0:Vre:=Vre + 'PV.ID_PEDIVEND';
      1:Vre:=Vre + 'PV.ID_CLIENTE';
      2:Vre:=Vre + 'PV.ID_VENDEDOR';
      3:Vre:=Vre + 'PV.ID_CONTA';
      4:Vre:=Vre + 'PV.ID_TIPOPEDIVEND';
      5:Vre:=Vre + 'PV.ID_USUASIST_DIGIPEDIVEND';
      6:Vre:=Vre + 'PV.ID_FORMPAGA';
      7:Vre:=Vre + 'TRUNC(PV.DT_DIGIPEDIVEND)';
      8:Vre:=Vre + 'PV.DT_ENTRPEDIVEND';
      9:Vre:=Vre + 'PV.DT_PEDIVEND';
      10:Vre:=Vre + 'PV.IE_PEDIVEND';
      11:Vre:=Vre + 'PV.FL_STATPEDIVEND';
      12:Vre:=Vre + 'C.ID_GRUPCLIE';
      13:Vre:=Vre + 'C.FL_FUNCIONARIO';
      14:Vre:=Vre + 'C.ID_INTECLIE';
      15:Vre:=Vre + 'NF.NR_NOTAFISC';
    end;

    Case CBCond.ItemIndex of
      0: Vre:=Vre + ' = ';
      1: Vre:=Vre + ' <> ';
      2: Vre:=Vre + ' > ';
      3: Vre:=Vre + ' >= ';
      4: Vre:=Vre + ' < ';
      5: Vre:=Vre + ' <= ';
      6: Vre:=Vre + ' LIKE ';
    end;

    Case LCampos.itemindex of
      7..9:Vre:=Vre + 'TO_DATE(''';
      10..11:Vre:=Vre + '''';
      13:Vre:=Vre + '''';
    end;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

    Vre:= Vre + UpperCase(Edexpre.text);

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

    Case LCampos.itemindex of
      7..9:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
      10..11:Vre:=Vre + '''';
      13:Vre:=Vre + '''';
    end;

    MResul.Lines.Add(Vre);
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
end;

procedure TFrmPedVenda.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
  CNAE, PCNAE : String;
Begin
  XTM:= 0;
  Screen.Cursor := crSQLWait;
  QPediVe.Close;
  QPediVe.SQL.Clear;
  QPediVe.SQL.Text:=
  'SELECT PV.ID_USUASIST_DIGIPEDIVEND, PV.EMPRESA, PV.FILIAL, PV.ID_PEDIVEND, PV.ID_CLIENTE, PV.ID_VENDEDOR, PV.DT_PEDIVEND, '+
  'PV.DT_ENTRPEDIVEND, PV.DT_DIGIPEDIVEND, PV.DT_FATUPEDIVEND, PV.ID_TIPOPEDIVEND, PV.ID_FORMPAGA, PV.ID_SITUCOBR, '+
  'PV.ID_INSTCOBR, PV.ID_ENDECLIE_COBRANCA, PV.ID_ENDECLIE_ENTREGA, PV.IE_PEDIVEND, PV.PC_DESCPEDIVEND, PV.PC_BONIPEDIVEND, '+
  'C.PC_DESCPADRCLIE, C.PC_BONIPADRCLIE, PV.ID_CARGEXPE, PV.ID_CONTA, PV.ID_TIPOCOBR, PV.ID_LOTEEDIPEDIVEND, PV.ID_PEDUNIF_ORIGEM, '+
  'PV.ID_USUASIST_AUTOPEDIVEND, PV.ID_TIPOLOGI, PV.SG_TIPOFRETPEDIVEND, PV.VL_SEGUPEDIVEND, PV.VL_DESPPEDIVEND, PV.ID_PEDUNIF_DESTINO, '+
  'PV.VL_FRETPEDIVEND, PV.VL_DESCPEDIVEND, PV.VL_PEDIVEND, PV.GN_ESPEPEDIVEND, PV.GN_MARCPEDIVEND, PV.QN_VOLUPEDIVEND, '+
  'PV.QN_EMBAPEDIVEND, PV.QN_PESOPEDIVEND, PV.QN_TARAPEDIVEND, PV.QN_EMBAEXPEPEDIVEND, PV.QN_PESOPADREXPEPEDIVEND, '+
  'PV.QN_TARAREALEXPEPEDIVEND, PV.QN_PESOREALEXPEPEDIVEND, PV.QN_FATOFRETABAT_PEDIVEND, PV.FL_ESPEPEDIVEND, ID_PEDIREPROGRAMADO, '+
  'CASE PV.FL_STATPEDIVEND '+
  'WHEN ''FE'' then ''FECHADO'' '+
  'WHEN ''ZR'' then ''ZERADO'' '+
  'WHEN ''AB'' then ''ABERTO'' '+
  'WHEN ''AV'' then ''AGUARDANDO VALIDAÇÃO'' '+
  'WHEN ''CN'' then ''CANCELADO'' '+
  'WHEN ''IN'' then ''INATIVO'' '+
  'WHEN ''EC'' then ''EM CARGA'' '+
  'WHEN ''NF'' then ''NF SEM EXPEDIÇÃO'' '+
  'WHEN ''VP'' then ''AGUARDANDO VALIDAÇÃO TAB. PREÇO'' '+
  'WHEN ''RG'' then ''REQUISIÇÃO GERADA'' '+
  'WHEN ''AT'' then ''AGUARDANDO TRANSFERENCIA'' '+
  'WHEN ''FT'' then ''TRANSFERENCIA FINALIZADA'' '+
  'WHEN ''LM'' then ''AGUARDANDO LIMITE CRÉDITO'' '+
  'ELSE PV.FL_STATPEDIVEND END AS STATUS, PV.FL_STATPEDIVEND, '+
  'PV.NR_ORDEPEDIVEND, PV.GN_OBSEPADR_PEDIVEND, PV.GN_OBSEEXPEPEDIVEND, PV.GN_OBSEPEDIVEND, PV.FX_PEDIVEND, C.NM_CLIENTE, C.NM_FANTCLIE, '+
  'C.NR_CNPJCLIE, C.NR_INSCESTACLIE, TV.NM_TIPOVEND, C.VL_LIMICREDCLIE, C.VL_CREDATUACLIE, C.FL_TIPOBLOQCLIE, C.FL_BLOQADMICLIE, '+
  'LG2.SG_TIPOLOGR, ENDCLI.NM_LOGRENDECLIE, ENDCLI.NR_LOGRENDECLIE, ENDCLI.GN_COMPENDECLIE, TPV.NM_TIPOPEDIVEND, V.NM_VENDEDOR, '+
  'FPG.NM_FORMPAGA, CS.NM_SITUCOBR, TC.NM_TIPOCOBR, CT.NM_CONTA, CI.NM_INSTCOBR, LG.NM_TIPOLOGI, US.NM_REDUUSUASIST, C.QN_TITUVENCCLIE, '+
  'C.VL_TITUVENCCLIE, PV.QN_PESOPEDIVEND + PV.QN_TARAPEDIVEND  QN_PESOBRUTPEDIVEND, PV.FL_CREDUSADPEDIVEND, PV.FL_EXPOFINAPEDIVEND, '+
  'PV.NR_PEDIVEND, PV.VL_FATUPEDIVEND, PV.VL_QUEBPEDIVEND, PV.VL_OUTRAJUSPEDIVEND, PV.VL_DEVOPEDIVEND, PV.QN_PESOPADRDEVOPEDIVEND, '+
  'PV.QN_PESOREALDEVOPEDIVEND, PV.QN_TARAREALDEVOPEDIVEND, PV.QN_EMBADEVOPEDIVEND, PV.FL_CONFPEDIDEVOVEND_PEDIVEND, PV.FL_VENDA_FUNC, '+
  'BAIRRO.NM_BAIRRO,CIDADE.NM_CIDADE, CIDADE.ID_IBGE, PV.CPORCOMIS, ESTADO.SG_ESTADO, PV.ID_CIDADE_ENTREGA, PV.ID_PAIS_ENTREGA, '+
  'PV.ID_FORNECEDOR, PV.GN_PLACVEICTRAN, F.NM_FORNECEDOR, PV.ID_PRODMATEEMBA, PV.ID_PEDREMESSA, PV.FL_PNF, PV.DESCR_EMBALAGEM, '+
  'PV.DT_CONSULTA_IE, PV.PR_CONSULTA_IE, PV.FL_CORTE, PV.DTHORA_CORTE, PV.ID_TOMADOR, PV.ID_EMITENTE, PV.ID_REMETENTE, NF.NR_NOTAFISC, '+
  'PV.ID_DESTINATARIO, PV.FL_SEMTRANSP, PV.FL_NFCOMPLEMENTAR, PV.ID_LOTE, TOMADOR.NM_CLIENTE AS NM_TOMADOR, FL_VALIDA_TABPRECO, C.FL_FUNCIONARIO, '+
  'REMETENTE.NM_CLIENTE AS NM_REMETENTE, DESTINATARIO.NM_CLIENTE AS NM_DESTINATARIO, PV.NM_LANCTO_POS_HORARIO, PV.NM_JUSTIFICATIVA_PRECO, C.ID_GRUPCLIE '+
  'FROM PEDIDO_VENDA PV '+
  'INNER JOIN CLIENTE C ON (PV.ID_CLIENTE = C.ID_CLIENTE) '+
  'INNER JOIN VENDEDOR V ON (PV.ID_VENDEDOR = V.ID_VENDEDOR) '+
  'INNER JOIN PEDIDO_VENDA_TIPO TPV ON (PV.ID_TIPOPEDIVEND = TPV.ID_TIPOPEDIVEND) '+
  'INNER JOIN FORMA_PAGAMENTO FPG ON (PV.ID_FORMPAGA = FPG.ID_FORMPAGA) '+
  'INNER JOIN COBRANCA_SITUACAO CS ON (PV.ID_SITUCOBR = CS.ID_SITUCOBR) '+
  'INNER JOIN COBRANCA_INSTRUCAO CI ON (PV.ID_INSTCOBR = CI.ID_INSTCOBR) '+
  'INNER JOIN CLIENTE_ENDERECO ENDCLI ON (PV.ID_ENDECLIE_ENTREGA = ENDCLI.ID_ENDECLIE) '+
  'INNER JOIN CONTA CT ON (PV.ID_CONTA = CT.ID_CONTA) '+
  'INNER JOIN LOGISTICA_TIPO LG ON (PV.ID_TIPOLOGI = LG.ID_TIPOLOGI) '+
  'INNER JOIN SISTEMA_USUARIO US ON (PV.ID_USUASIST_DIGIPEDIVEND = US.ID_USUASIST) '+
  'INNER JOIN COBRANCA_TIPO TC ON (PV.ID_TIPOCOBR = TC.ID_TIPOCOBR) '+
  'INNER JOIN VENDA_TIPO TV ON (C.ID_TIPOVEND = TV.ID_TIPOVEND) '+
  'INNER JOIN LOGRADOURO_TIPO LG2 ON (ENDCLI.ID_TIPOLOGR = LG2.ID_TIPOLOGR) '+
  'INNER JOIN BAIRRO ON (ENDCLI.ID_BAIRRO = BAIRRO.ID_BAIRRO) '+
  'INNER JOIN CIDADE ON (BAIRRO.ID_CIDADE = CIDADE.ID_CIDADE) '+
  'LEFT OUTER JOIN ESTADO ON (ESTADO.ID_ESTADO = CIDADE.ID_ESTADO) '+
  'LEFT OUTER JOIN FORNECEDOR F ON (F.ID_FORNECEDOR = PV.ID_FORNECEDOR) '+
  'LEFT OUTER JOIN CLIENTE TOMADOR ON (TOMADOR.ID_CLIENTE = PV.ID_TOMADOR) '+
  'LEFT OUTER JOIN CLIENTE REMETENTE ON (REMETENTE.ID_CLIENTE = PV.ID_REMETENTE) '+
  'LEFT OUTER JOIN CLIENTE DESTINATARIO ON (DESTINATARIO.ID_CLIENTE = PV.ID_DESTINATARIO) '+
  'LEFT OUTER JOIN PEDIDO_VENDA_NOTA_FISCAL PNF ON (PNF.ID_PEDIVEND = PV.ID_PEDIVEND) '+
  'LEFT OUTER JOIN NOTA_FISCAL NF ON (NF.ID_NOTAFISC = PNF.ID_NOTAFISC) '+
  'WHERE PV.FILIAL = ' + IntToStr(gi_Filial) + ' AND PV.FL_STATPEDIVEND <> ''IN'' ';

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

  IF QrDireitos.IsEmpty then
    Begin
      QPediVe.SQL.Add (' AND NVL(TPV.FL_CONSFINATIPOPEDIVEND,''S'') = ''S'' ');
      //Tira os tipos q não geram financeiro da consulta de tipos de pedidos.
      QrTipoPed.Close;
      QrTipoPed.SQL.Clear;
      QrTipoPed.SQL.Text :=
        'SELECT DISTINCT TPV.ID_TIPOPEDIVEND, TPV.NM_TIPOPEDIVEND, NVL(TPV.FL_CORTEPED,''N'') AS FL_CORTEPED, TPV.FL_VALIDA_SIMPLES_NAC  '+
        'FROM PEDIDO_VENDA_TIPO TPV '+
        'INNER JOIN PEDIDO_VENDA_TIPO_DOCU_TIPO TDC ON (TPV.ID_TIPOPEDIVEND = TDC.ID_TIPOPEDIVEND ) '+
        'WHERE NVL(TPV.FL_CONSFINATIPOPEDIVEND,''S'') = ''S'' AND NVL(TPV.FL_BLOQUEADO,''N'' ) = ''N'' '+
        'AND ( TPV.CNAE IS NULL OR TPV.CNAE = ' + CNAE + ')';
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

  if MResul.Lines.Count > 0 then
  begin
    if LCampos.ItemIndex >= 0 then
      XTM:=MResul.Lines.Count
    else
    begin
      Application.MessageBox('É necessário selecionar um campo para o filtro informado.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      BtLimparClick(Self);
      Screen.Cursor := crDefault;
      Exit;
    end;
  end;

  If XTM >0 then
    begin
     QPediVe.SQL.Add(' AND ');
     QPediVe.SQL.Add(MResul.Text);
    end
  ELSE
  begin
    Screen.Cursor := crDefault;
    if Application.MessageBox('Exibir listagem sem filtro?                   ', PChar(FrmPedVenda.Caption), MB_YESNO) = IDNO then
      exit
    Else
    begin
      QPediVe.SQL.Add(' AND TO_DATE(PV.DT_DIGIPEDIVEND) >= (SELECT SYSDATE - 90 FROM DUAL) ');
      Screen.Cursor := crSQLWait;
    end;
  end;

  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 83;
  QrDireitos.Open;

  QPediVe.SQL.Add('&OrderBy');
  QPediVe.MacroByName('OrderBy').Value :='';

  IF LBOrdemR.Items.Text<>'' then
  BEGIN
    QPediVe.MacroByName('ORDERBY').Value := LeftStr( ' ORDER BY ' + StringReplace( LBOrdemR.Items.Text,#$D#$A,',' ,[rfReplaceAll]), Length( ' ORDER BY ' +  StringReplace( LBOrdemR.Items.Text, #$D#$A ,',' ,[rfReplaceAll]))-1)  ;
  END;

  QPediVe.SQL.Add(' DESC ');
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

  try
    QryMaterialEmbalagem.Open;
    QryUnidadeMedida.Open;
    AbreQueryComParametro(QryCTECompServ, 'ID_PEDIVEND', QPediVeID_PEDIVEND.Value);
    AbreQueryComParametro(QryPedidoVenda, 'ID_PEDIVEND', QPediVeID_PEDIVEND.Value);
    HabilitaCamposInformacoesCTE(False);
  except
    on E : Exception do
  end;

  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 40;
  QrDireitos.Open;

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
        'SELECT TPV.ID_TIPOPEDIVEND, TPV.NM_TIPOPEDIVEND, NVL(TPV.FL_CORTEPED,''N'') AS FL_CORTEPED, TPV.FL_VALIDA_SIMPLES_NAC  '+
        'FROM PEDIDO_VENDA_TIPO TPV ' +
        'INNER JOIN PEDIDO_VENDA_TIPO_DOCU_TIPO TDC ON (TPV.ID_TIPOPEDIVEND = TDC.ID_TIPOPEDIVEND ) '+
        'WHERE NVL(TPV.FL_CONSFINATIPOPEDIVEND,''S'') = ''S'' AND TDC.ID_TIPODOCU = 7 AND NVL(TPV.FL_BLOQUEADO,''N'' ) = ''N'' '+
        'AND (TPV.CNAE IS NULL OR TPV.CNAE = '+ CNAE +') ';
    end
    else if (ub_PermVend='S') then
    begin
      QrTipoPed.SQL.Text :=
        'SELECT TPV.ID_TIPOPEDIVEND, TPV.NM_TIPOPEDIVEND, NVL(TPV.FL_CORTEPED,''N'') AS FL_CORTEPED, TPV.FL_VALIDA_SIMPLES_NAC '+
        'FROM PEDIDO_VENDA_TIPO TPV '+
        'INNER JOIN PEDIDO_VENDA_TIPO_DOCU_TIPO TDC ON (TPV.ID_TIPOPEDIVEND = TDC.ID_TIPOPEDIVEND) '+
        'WHERE TDC.ID_TIPODOCU = 7 AND NVL(TPV.FL_BLOQUEADO,''N'' ) = ''N'' '+
        'AND (TPV.CNAE IS NULL OR TPV.CNAE = '+ CNAE +') ';
    end;

    QrTipoPed.Open;

  end;

  // Verifica direito de duplicar
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
  PageControl1.Pages[3].TabVisible:=(QPediVe.RecordCount>0);
  PageControl1.Pages[4].TabVisible:= (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0);  //documentos referenciados
  PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

  SB_PRIMEIRO.Enabled:=true;
  SB_ANTERIOR.Enabled:=true;
  SB_PROXIMO.Enabled:=true;
  SB_ULTIMO.Enabled:=true;
  SBNovo.Enabled:=true;
  SBDel.Enabled:=true;
  SBDiversos.Enabled:= true;
  SB_Editar.Enabled:= true;

  //Impedimos o acesso aos campos de edição
  edtDataPedi.Enabled := False;
  edtDataEntr.Enabled := False;
  DBIE_EXTERNO.Enabled := False;
  edtCodiClie.Enabled := False;
  DBCVen.Enabled := False;
  DBTipVen.Enabled := False;
  DBLPedidoVenda.Enabled := False;
  cbxEndeEntr.Enabled := False;
  CBxCidPorto.Enabled := False;
  CBxPais.Enabled := False;
  CBxPedArm.Enabled := False;
  DBPlaca.Enabled := False;
  Btplaca.Enabled := False;
  btn_PesqLote.Enabled := False;
  BPesqDt.Enabled := False;
  BPesqDtEntre.Enabled := False;
  DBCForPg.Enabled := False;
  DBLFormaPagto.Enabled := False;
  DBInstCob.Enabled := False;
  DBLInstCobranca.Enabled := False;
  DBSitCob.Enabled := False;
  DBLSitCobranca.Enabled := False;
  DBLTipoCobranca.Enabled := False;
  DBLConta.Enabled := False;
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
  DBCVen.Enabled := False;
  BPesqVend.Enabled := False;

  If (gi_Filial <> 4) and (VDPNF = false) then
  begin
    CBIPICMS.Enabled := False;
    edtIPI.Enabled := False;
  end;

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
    QPediVe.First;
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
    QPediVe.Prior;
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
    QPediVe.Next;
  end;

end;

procedure TFrmPedVenda.SB_ULTIMOClick(Sender: TObject);
begin

  If TsDetalhe.Showing then
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
      FrmPesqCliente.ShowModal;
    END;
    2:BEGIN
      FrmPesqVend:=TFrmPesqVend.Create(Self);
      FrmPesqVend.ShowModal;
    END;
    3:BEGIN
      frmConsultaContas:=TfrmConsultaContas.Create(Self);
      frmConsultaContas.ShowModal;
    END;
    4:BEGIN
      FrmPesqTPV:=TFrmPesqTPV.Create(Self);
      FrmPesqTPV.ShowModal;
    END;
    5:BEGIN
      frmConsultaUsuarios:=TfrmConsultaUsuarios.Create(Self);
      frmConsultaUsuarios.ShowModal;
    END;
    6:BEGIN
      frmConsultaFormaPagto:=TfrmConsultaFormaPagto.Create(Self);
      frmConsultaFormaPagto.ShowModal;
    END;
    7..9:BEGIN
      Cria_FrmSelData(Vdtstr);
      EdExpre.text:= Vdtstr;
      if Vdtstr <> '' then
        BtIncluir.SetFocus;
    END;
    12:BEGIN
      frmConsultaGrupoClientes:=TfrmConsultaGrupoClientes.Create(Self);
      frmConsultaGrupoClientes.ShowModal;
    END;
  end;

  BPESQ.Visible:=FALSE;
end;

procedure TFrmPedVenda.LCamposClick(Sender: TObject);
begin
  SELPE:=0;

  CASE LCAMPOS.ItemIndex OF
    1:SELPE:=1;
    2:SELPE:=2;
    3:SELPE:=3;
    4:SELPE:=4;
    5:SELPE:=5;
    6:SELPE:=6;
    7..9:SELPE:=7;
    12:SELPE:=12;
  END;

  BPESQ.Visible:= (SELPE > 0);

end;

procedure TFrmPedVenda.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmPedVenda.TsDetalheShow(Sender: TObject);
begin
  QrEndCli.Close;
  QrEndCli.ParamByName('pi_CodiClie').AsFloat:= QPediVeID_CLIENTE.Value;
  QrEndCli.open;
  QItem.Close;

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
  end
  else
  begin
    DBMemo1.Width := 300;
    DBMemo1.Height := 77;
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
  frmConsultaProdutos:=TfrmConsultaProdutos.Create(Self);
  frmConsultaProdutos.Show;
end;

procedure TFrmPedVenda.FormShow(Sender: TObject);
begin
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT SYSDATE FROM DUAL';
  qryTemp.Open;
  dtMaxEntrega:= fProximoDiaUtil(DateOf(QryTemp.FieldByName('SYSDATE').AsDateTime + 1));

  valt:=False;
  IF LCAMPOS.Items.Count=0 then
  BEGIN
    With LCampos.Items do
    begin
      Add('Nº Pedido de Venda');
      Add('Cód. Cliente');
      Add('Cód. Vendedor');
      Add('Cód. Conta');
      Add('Cód. Tipo Pedido Venda');
      Add('Cód. Digitador');
      Add('Tipo de Pagamento');
      Add('Data Digitação');
      Add('Data Entrega');
      Add('Data Pedido');
      Add('Nº Externo Pedido');
      Add('Status (AB/AV/EC/EX/FE/CN/ZR/VP/LM)');
      Add('Grupo de Clientes');
      Add('Funcionário (S/N)');
      Add('Cód. Interno');
      Add('Nº Nota Fiscal');
    end;

    With LBOrdemI.Items  do
    begin
      Add('PV.ID_CLIENTE');
      Add('PV.ID_FORMPAGA');
      Add('PV.ID_VENDEDOR');
      Add('PV.DT_DIGIPEDIVEND');
      Add('PV.DT_ENTRPEDIVEND');
      Add('PV.DT_PEDIVEND');
      Add('PV.IE_PEDIVEND');
      Add('PV.ID_PEDIVEND');
    end;

    LBOrdemR.Items.Add('PV.ID_PEDIVEND');
  END;

  LCAMPOS.ItemIndex:= 1;
  VEDITA:= False;
  PageControl1.Pages[1].TabVisible:=false;
  PageControl1.Pages[2].TabVisible:=false;
  PageControl1.Pages[3].TabVisible:=false;
  PageControl1.Pages[4].TabVisible:=false;
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
  li_Loop : Integer;
  ls_PrefTag : String;
  dt_HORAPRODUCAO : TDateTime;
begin

  {// VALMOR ORDENOU QUE PARA ESSE CLIENTE, SEMPRE SEJA CONSIDERADO 3 CASAS DECIMAIS, PARA PESO E VALOR
  if QPediVeID_CLIENTE.Value = 8726 then
    nDecimal := 3
  else
    nDecimal := 2;}

  if (QPediVeFL_CORTE.Value = 'S') and (PageControl1.ActivePage = TSItem) then
  Begin
    Screen.Cursor := crDefault;
    Application.MessageBox('Pedido já passou pelo sistema de corte e não permite inclusão.', PChar(FrmPedVenda.Caption),MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  {Não permite o usuário criar novas informações do CT-e, somente editá-las.}
  if (PageControl1.ActivePage = tabCTE) then
  begin
    Application.MessageBox('Para inserir as informações do CT-e utilize o botão de Editar.', PChar(FrmPedVenda.Caption),MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  QrConta.Close;
  QrConta.Open;

  ActiveControl := Nil;
  VINCLUI:= True;
  VEDITPLACA:= FALSE;
  VEDITA:= False;
  VItem_Avulso:=False;

  if TsDetalhe.Showing or TsLista.Showing then
  begin
    pValidaPeriodoDigitacao;
    VPNF:= False;
    SB_PRIMEIRO.Enabled:= False;
    SB_ANTERIOR.Enabled:= False;
    SB_PROXIMO.Enabled:= False;
    SB_ULTIMO.Enabled:= False;
    SBNovo.Enabled:= False;
    SBDel.Enabled:= False;
    SBSalva.Enabled:= True;
    SBCancel.Enabled:= True;
    SB_COPIA.Enabled:= False;
    Sb_Sair.Enabled:= False;
    SB_PNF.Enabled := False;
    SB_Editar.Enabled := False;

    DBArmazena.Visible := False;
    PageControl1.Pages[0].TabVisible:= false;
    PageControl1.Pages[1].TabVisible:= false;
    PageControl1.Pages[3].TabVisible:= false;
    PageControl1.Pages[4].TabVisible:= false;

    {Monstrando/Escondendo a aba de Informações do CT-e}
    PageControl1.Pages[5].TabVisible := False;
    PageControl1.Pages[2].Show;

    QPediVe.Insert;
    QPediVeFL_PNF.Value := 'N';
    QItem.Close;

    if (QPediVeFL_VALIDA_TABPRECO.AsString) = 'S' then
    Begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Pedido já passou pela Validação de Preço e não permite inclusão.', PChar(FrmPedVenda.Caption),MB_OK + MB_ICONINFORMATION);
      Exit;
    end;

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

      edtTomadorID.Enabled := False;
      edtTomador.Enabled := False;
      edtRemetenteID.Enabled := False;
      edtRemetente.Enabled := False;
      edtDestinatarioID.Enabled := False;
      edtDestinatario.Enabled := False;
      btnSelecionaRemetente.Enabled := False;
      btnSelecionaDestinatario.Enabled := False;
      DbCAuto.Enabled := False;
      DBCVen.Enabled := False;
      BPesqVend.Enabled := False;

    end;
    //Alterar embalagem e peso da NF Metal.
    if (gi_filial=4) or (gi_Filial=91) then
    begin
      DBEmbalagem.Color := clWindow;
      DBEmbalagem.ReadOnly := False;
      DBEmbalagem.Enabled := True;
      edtTotaEmba.Color := clWindow;
      edtTotaEmba.ReadOnly := False;
      edtTotaEmba.Enabled := True;
      DBPesoPed.Color := clWindow;
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
    if QrTipoOperFL_ENTRSAIDTIPOOPER.AsString = 'E' then
      QPediVe['SG_TIPOFRETPEDIVEND'] := '0'
    else
      QPediVe['SG_TIPOFRETPEDIVEND'] := '3';

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
    QPediVe['FL_VENDA_FUNC'] := 'N';

    edtQtdeEmba.Text:='0';
    edtPrecUnitBrut.Text:='0';
    QPediVe.FieldByName('EMPRESA').AsString := gs_Empresa;
    QPediVe.FieldByName('FILIAL').AsInteger := gi_Filial;
    QPediVe.FieldByName('FX_PEDIVEND').AsString := 'N';
    QPediVe.FieldByName('FL_NFCOMPLEMENTAR').AsString := 'N';
    edtDataPedi.SetFocus;
  end;

  IF TSItem.Showing then
  BEGIN
    if (QPediVeFL_VALIDA_TABPRECO.AsString) = 'S' then
    Begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Pedido já passou pela Validação de Preço e não permite inclusão.', PChar(FrmPedVenda.Caption),MB_OK + MB_ICONINFORMATION);
      Exit;
    end;

    pValidaPeriodoDigitacao;

    VID_PEDIVEND := QPediVe['ID_PEDIVEND'];
    // Verifica se o Pedido já se encontra em uma carga.
    with QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
      ' SELECT ID_PEDIVEND, ID_CARGEXPE FROM CA_PEDIDO_CARGA WHERE ID_PEDIVEND = :id_pedivend ';
      ParamByName('id_pedivend').AsFloat := QPediVe['ID_PEDIVEND'];
      Open;
      if not IsEmpty then
      begin
        Application.MessageBox(PChar('Este pedido já foi adicionado na carga Nº ' + QryTemp.FieldByName('ID_CARGEXPE').AsString + '.'+ #10+#13 + 'Nesse caso, a alteração não é permitida.'), PChar(FrmPedVenda.Caption),MB_OK + MB_ICONINFORMATION);
        Exit;
      end;
    end;

    If (QPediVe['FL_STATPEDIVEND'] = 'AB') or (QPediVe['FL_STATPEDIVEND'] = 'VP') OR (QPediVe['FL_STATPEDIVEND'] = 'LM') then
    BEGIN
      QPediVe.Edit;
    END
    else
    If QPediVe['FL_STATPEDIVEND'] <> 'AB' then
    begin
      If QPediVe['FL_STATPEDIVEND'] <> 'AV' then
      BEGIN
        Application.MessageBox('O Status do Pedido não permite a Inclusão de mais Itens.', PChar(FrmPedVenda.Caption),MB_OK + MB_ICONINFORMATION);
        Exit;
      END;
    end;

    {VERIFICA SE O USUÁRIO DA ALTERAÇÃO É O MESMO DA DIGITAÇÃO. VENDEDOR FÁBIO SOLICITOU. DANIEL 20/02/2018}
    IF QPediVe['ID_USUASIST_DIGIPEDIVEND'] <> gi_CodiUsuaSist then
    BEGIN
      Application.MessageBox('Inclusão de Itens permitida somente para usuário Digitador.', PChar(FrmPedVenda.Caption),MB_OK + MB_ICONINFORMATION);
      Exit;
    END;

    {Só deixa adicionar mais itens se o tipo de pedido de venda não for o de CT-e. de pedido de venda por de CT-e (Controle de transporte eletrônico)}
    if (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S') and (Qitem.RecordCount > 0) then
    begin
      Application.MessageBox('O tipo de pedido de venda só aceita um item incluso.', PChar(FrmPedVenda.Caption),MB_OK + MB_ICONINFORMATION);
      Exit;
    end;

    SBNovo.Enabled    := false;
    SBDel.Enabled     := false;
    SB_COPIA.Enabled  := false;
    SBSalva.Enabled   := true;
    SBCancel.Enabled  := true;
    Sb_Sair.Enabled   := false;
    SB_Editar.Enabled := False;

    PageControl1.Pages[0].TabVisible:= false;
    PageControl1.Pages[1].TabVisible:= false;
    PageControl1.Pages[2].TabVisible:= false;
    PageControl1.Pages[3].Enabled := true;
    PageControl1.Pages[3].Show;
    PageControl1.Pages[4].TabVisible:= false;
    PageControl1.Pages[5].TabVisible := False;

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
    if Not(Rad_NFe.Checked or Rad_NF.Checked or Rad_NFP.Checked or Rad_CTE.Checked or Rad_Cupom.Checked) then
    begin
      Application.MessageBox('Tipo de Documento Referenciado deve ser informado.', PChar(FrmPedVenda.Caption),MB_OK + MB_ICONINFORMATION);
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

  if (QItem.State = dsInsert) or (QItem.State = dsEdit) then
    QItem.CancelUpdates;

  if (QPediVe.State = dsInsert) or (QPediVe.State = dsEdit) then
    QPediVe.CancelUpdates;

  DbCAuto.Enabled := False;
  VItemInclui:='N';

  SB_PRIMEIRO.Enabled:=True;
  SB_ANTERIOR.Enabled:=True;
  SB_PROXIMO.Enabled:=True;
  SB_ULTIMO.Enabled:=True;

  PageControl1.Pages[0].TabVisible:=true;
  PageControl1.Pages[1].TabVisible:=true;
  PageControl1.Pages[2].TabVisible:=true;
  PageControl1.Pages[3].TabVisible:=(QPediVe.RecordCount>0);;
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
  DBLPedidoVenda.Enabled := false;
  cbxEndeEntr.Enabled := false;
  CBxCidPorto.Enabled := False;
  CBxPais.Enabled := False;
  CBxPedArm.Enabled := False;
  DBPlaca.Enabled := False;
  Btplaca.Enabled := False;
  btn_PesqLote.Enabled := False;
  BPesqDt.Enabled := False;
  BPesqDtEntre.Enabled := False;
  DBCForPg.Enabled := false;
  DBLFormaPagto.Enabled := False;
  DBInstCob.Enabled := false;
  DBLInstCobranca.Enabled := false;
  DBSitCob.Enabled := false;
  DBLSitCobranca.Enabled := false;
  DBLTipoCobranca.Enabled := false;
  DBLConta.Enabled := false;
  DBRTipoFrete.Enabled := False;
  rdg_NFComplementar.Enabled := False;
  DBLookupComboBox5.Enabled := False;
  DBEdit7.Enabled :=  False;
  DBPesoPed.Enabled := False;
  DBEmbalagem.Enabled := false;
  DBCodCidEntre.Enabled := False;
  grpPedidoAposHorario.Enabled := False;
  pnlQtdDisponivel.Caption := '';
  pnlQtdDisponivel.Color := clBackground;

  SBNovo.Enabled:=true;
  SBDel.Enabled:=true;
  SB_COPIA.Enabled:= TRUE;
  SBDiversos.Enabled:= true;
  SB_Editar.Enabled := True;
  SBSalva.Enabled:=false;
  SBCancel.Enabled:=false;

  DBLConta.Enabled:= False;
  DBPlaca.Enabled := False;
  Btplaca.Enabled := False;
  btn_PesqLote.Enabled := False;
  BPesqDt.Enabled := False;
  BPesqDtEntre.Enabled := False;
  DBIE_EXTERNO.Enabled := False;
  DBArmazena.Enabled := False;
  DBMemo1.Enabled := False;
  DBMemo2.Enabled := False;
  VEDITA:= False;

  if PageControl1.ActivePage = TsDocRef then
  Begin
    Qry_DocRef.Cancel;
  end;

  if PageControl1.ActivePage = tabCTE then
  begin

    QryPedidoVenda.Cancel;
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
    PageControl1.Pages[3].TabVisible:=(QPediVe.RecordCount>0);
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

  If VItemInclui ='S' then
  begin
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

end;

procedure TFrmPedVenda.TabSheet1Show(Sender: TObject);
begin

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
  SBDiversos.Enabled:= False;
  SB_Editar.Enabled:= False;
//  PageControl1.Pages[1].TabVisible:= False;
//  PageControl1.Pages[2].TabVisible:= False;
//  PageControl1.Pages[3].TabVisible:= False;
//  PageControl1.Pages[4].TabVisible:= false;
//  PageControl1.Pages[5].TabVisible := False;
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

  If QPediVeTitCartorio.Value > 0 then
    Timer1.Enabled := True
  Else
    Timer1.Enabled := False;

  QryPesqTipoPedivend.Close;
  QryPesqTipoPedivend.ParamByName('P_TIPO_PEDIDO_VENDA').Value:= StrToInt(DBTipVen.Text);
  QryPesqTipoPedivend.Open;

  if QryPesqTipoPedivendQTDE.Value >= 1 then
  begin
    if gs_CNPJ2 <> copy(DBEdit30.Text,1,8) then
    begin
      Application.MessageBox('Lançamentos de Transferências, somente para CNPJ de mesma base.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      exit;
    end;
  end;

  If ub_PermVend='N' then
  begin
    If DBLConta.KeyValue=8 then
    begin
      Application.MessageBox('Usuario sem permissão para lançamento em Conta Caixa.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      DBLConta.SetFocus;
      exit;
    end;
  end;

  If (DBLConta.Text ='')  then
  begin
    Application.MessageBox('Selecione uma Conta antes de Salvar.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
    DBLConta.SetFocus;
    exit;
  end;

  //Daniel Gianolla - Boletos a partir de 7 dias   Solicitação: João Marcelo 24/07/2018
  //Fabricio Almeida - Banco Sofisa, permitido     Solicitação: João Marcelo 29/12/2020
  if (not(QPediVeID_CONTA.AsInteger in [2,63]) and
     ((QPediVeID_FORMPAGA.Value = 55) or (QPediVeID_FORMPAGA.Value = 56))) then
  begin
    Application.MessageBox('Forma de Pagamento não disponível para esta Conta.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
    SB_EditarClick(Sender);
    Abort;
  end;

  //Lançamento de Pedido na Conta Caixa
  if (QPediVeID_CONTA.Value = 8) and (not LancContaCaixa) then
  begin
    Application.MessageBox(PChar('Usuário sem permissão para Conta ' + DBLConta.Text + '.'), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
    Abort;
  end;

  //Daniel Gianolla - Conta 8 para usuário Jéssica (antes era Fabio Beneton)  Solicitação:Valmor 03/07/2018
//  if (QPediVeID_CONTA.Value = 8) and Not(gi_IdenUsua in [79,1,120]) then
//  begin
//    Application.MessageBox('Usuário sem permissão para Conta ' + DBLConta.Text + '.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
//    Abort;
//  end;

  //Fabricio - Conta 2 bloqueada para clientes do Ricardo
  if (QPediVeID_CONTA.Value = 2) and (QPediVeID_VENDEDOR.Value = 34) then
  begin
    Application.MessageBox(PChar('Cliente sem permissão para Conta ' + DBLConta.Text + '.'), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
    DBLConta.SetFocus;
    exit;
  end;

  // Se o foco estiver na Guia Detalhes
  If TsDetalhe.Showing then
  begin
    if (grpPedidoAposHorario.Enabled) then
    begin
      if (Trim(edtMotivoPedidoAposHorario.Text) = '') then
      begin
        Application.MessageBox('Pedido lançado após horário permitido. Obrigatório preenchimento do motivo.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        edtMotivoPedidoAposHorario.SetFocus;
        Exit;
      end
      else if Length(Trim(edtMotivoPedidoAposHorario.Text)) <= 20 then
      begin
        Application.MessageBox('Motivo do lançamento após período permitido, deve conter o mínimo 20 caracteres.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        edtMotivoPedidoAposHorario.SetFocus;
        Exit;
      end
    end;

    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Add('SELECT ID_TIPODOCU FROM PEDIDO_VENDA_TIPO_DOCU_TIPO WHERE ID_TIPODOCU = 18  AND ID_TIPOPEDIVEND =' + QPediVeID_TIPOPEDIVEND.AsString );
    QryTemp.Open;
    if ( QryTemp.FieldByName('ID_TIPODOCU').Value = 18 ) AND ( QPediVeID_LOTE.AsInteger  = 0 ) then
    begin
      Application.MessageBox('É necessário informar o Nº do Lote.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      exit;
    end;

    //VERIFICA SE TEM PARAMETRO PARA ESTA DATA
    qrytemp.Close;
    qrytemp.sql.clear;
    qryTemp.SQL.Text := 'SELECT CA_PARAMETRO_COMERCIAL.DT_PARAMETRO ' +
                        'FROM CA_PARAMETRO_COMERCIAL '+
                        'WHERE CA_PARAMETRO_COMERCIAL.DT_PARAMETRO = TO_DATE('''+ QPediVe.FieldByName('DT_ENTRPEDIVEND').AsString + ''',''' + 'DD/MM/YYYY' + ''') ';
    qrytemp.Open;

    VParamComer := (qrytemp.IsEmpty);

    if not(VEDITA) then
      if not(QPediVeID_TIPOPEDIVEND.AsInteger in [9,17,32,35,135]) then // Bonificação nunca unifica
        pValidaMultiplosPedidos(QPediVe.FieldByName('ID_CLIENTE').AsString, StrToDate(edtDataEntr.Text));

    //Verificar se existem caracteres não permitidos nos campos memo
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text :=
                    'SELECT                                 ';
    If (DBMemo1.Text <> '') then
      QryTemp.SQL.Add(' ''' + DBMemo1.Text +  ''' ,           ');
    If (DBMemo2.Text <> '') then
      QryTemp.SQL.Add(' ''' + DBMemo2.Text +  ''' ,           ');

    QryTemp.SQL.Add('   ID_PEDIVEND                         ');
    QryTemp.SQL.Add('FROM                                   ');
    QryTemp.SQL.Add('   PEDIDO_VENDA                        ');
    QryTemp.SQL.Add('WHERE  ID_PEDIVEND = 1                 ');
    Try
      QryTemp.Open;
    Except
      QryTemp.Close;
      Screen.Cursor := crDefault;
      Application.MessageBox('Existem caracteres não permitidos nos campos de Observação. Altere e salve novamente.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
    End;
    QryTemp.Close;

    If DBTipVen.Text='16' then
    begin
      case gi_IdenUsua of
        424, 530, 59, 462:
          Screen.Cursor := crDefault;
      else
        Screen.Cursor := crDefault;
        Application.MessageBox('Atenção, tipo de pedido inválido para o usuário atual.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        Exit;
      end;
    end;

    If (VPNF = True) and (DBPlaca.Text = '') then
    Begin
      Screen.Cursor := crDefault;
      Application.MessageBox('É necessário informar uma Transportadora da Carga para Pedido Tipo PNF.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      Btplaca.SetFocus;
      Exit;
    End;

    //Pegamos o percentual máximo de acréscimo ao preço normal de venda
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text := 'SELECT PC_MAXIPRECVENDPARASIST FROM SISTEMA_PARAMETRO ';
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

    if ( QryTemp.FieldByName('FL_CTE').AsString <> 'S' ) then  // Não faz Validação CFOP X Estado para CTE
    begin
      IF (COPY(QryTemp.FieldByName('nr_cfop').AsString,1,1)='7') AND (DBUF.Text <> 'EX') then
      Begin
        Screen.Cursor := crDefault;
        Application.MessageBox('Atenção, selecione um Tipo de Pedido compatível com a localização do Cliente.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        DBTipVen.SetFocus;
        Exit;
      End;

      IF (COPY(QryTemp.FieldByName('nr_cfop').AsString,1,1)='6') AND ((DBUF.Text='SP') OR (DBUF.Text='EX')) then
      Begin
        Screen.Cursor := crDefault;
        Application.MessageBox('Atenção, selecione um Tipo de Pedido compatível com a localização do Cliente.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        DBTipVen.SetFocus;
        Exit;
      End;

      IF (COPY(QryTemp.FieldByName('nr_cfop').AsString,1,1)='5') AND (UpperCase(DBUF.Text) <> 'SP') then
      Begin
        Screen.Cursor := crDefault;
        Application.MessageBox('Atenção, selecione um Tipo de Pedido compatível com a localização do Cliente.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        DBTipVen.SetFocus;
        Exit;
      End;
    End;

    //VERIFICAMOS SE É EXPORTAÇÃO
    IF (DBTipVen.Text='15') then
    BEGIN
      IF VPc_Comis>0 then
      BEGIN
        QPediVe.FieldByName('cporcomis').AsFloat := VPc_Comis;
        Screen.Cursor := crDefault;
        Application.MessageBox(PChar('A comissão default para esta venda é de '+ FloatToStr(VPc_Comis) + ' %.'), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      END;

      IF  VExporta=FALSE then
      BEGIN
        Application.MessageBox('Operação Cancelada! Verifique se o Vendedor é do Tipo Exportação, e o Pais do Cliente não é Brasil. Obrigatório para tipo de Pedido Exportação.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        Exit;
      END;
    END;

    VExporta:=FALSE;
    //Verificamos se é Doação(9) ou Bonificação(17)
    DbCAuto.Enabled := False;
    If (DBTipVen.Text='9') or (DBTipVen.Text='17') or (DBTipVen.Text='32') or (DBTipVen.Text='35') or (DBTipVen.Text='135') then
    begin
      If DbCAuto.Text = '' then
      begin
        Application.MessageBox('Para Pedidos do Tipo Doações, Bonificações ou Remessa Conserto, é obrigatório informar Responsável por Autorizar.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        DbCAuto.Enabled := true;
        DbCAuto.SetFocus;
        exit;
      end;
    end;

    // Tem que ser isento de pagto tipos de venda Doação, Bonificação ou Transferencia
    If (DBTipVen.Text='9') or (DBTipVen.Text='17') or (DBTipVen.Text='14') or (DBTipVen.Text='135') or (DBTipVen.Text='29') then
    begin
      If (DBCForPg.Text<>'61') then
      begin
        Application.MessageBox('Forma de Pagamento ou Situação de Cobrança incompatíveis com Doação ou Bonificação.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        exit;
      end;
    end
    Else
    begin
      If (DBCForPg.Text = '61') then
      begin
        Application.MessageBox('Forma de Pagamento ou Situação de Cobrança incompatíveis com Tipo de Pedido.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        exit;
      end;
    end;

    //Verificamos se foi usado um Tipo de pedido não permitido
    IF ub_PermVend='N' then
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
        Application.MessageBox('Tipo de Pedido de Venda não permitido.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        qryTemp.Close;
        Exit;
      end;
    end
    Else
    begin
      IF (VNFPOSTERIOR=False) then
      BEGIN
        //Verifica se permite NF posterior.
        qryTemp.Close;
        qryTemp.SQL.Clear;
        qryTemp.SQL.Text :=
        'SELECT PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND, '+
        'PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU, PEDIDO_VENDA_TIPO.NM_TIPOPEDIVEND '+
        'FROM PEDIDO_VENDA_TIPO,  '+
        'PEDIDO_VENDA_TIPO_DOCU_TIPO               '+
        'WHERE PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPOPEDIVEND '+
        'AND PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU = 6 '+
        'AND PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = ' + QPediVe.FieldByName('ID_TIPOPEDIVEND').AsString;

        qryTemp.Open;

        IF  (qryTemp.RecordCount > 0 ) then
        Begin
          Screen.Cursor := crDefault;
          Application.MessageBox(PChar(qryTemp.FieldByName('NM_TIPOPEDIVEND').AsString + ' não permitido para emissão de NF posterior.'), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
          qryTemp.Close;
          Exit;
        End;
      End;
      qryTemp.Close;
    end;

    // Flag da operação (Inclusão / Edição / Copia)
    IF QPediVe.State = dsInsert  then
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
      Application.MessageBox('Erro ao verificar prazo de pagamento máximo do Cliente.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONWARNING);
      qryTemp.Close;
      Exit;
    end;

    // Se a query estiver vazia
    If qryTemp.IsEmpty then
    begin
      // Mensagem
      Screen.Cursor := crDefault;
      Application.MessageBox('Não foi definido um Prazo de Pagamento Máximo para o Cliente.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONWARNING);
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
      Application.MessageBox('Erro ao verificar Prazo de Pagamento escolhido.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONWARNING);
      qryTemp.Close;
      Exit;
    end;

    // Se a query estiver vazia
    if qryTemp.IsEmpty then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Forma de Pagamento inconsistente. Contate o administrador do sistema.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONWARNING);
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
        Application.MessageBox(PChar('Forma de Pagamento escolhida maior que o permitido para o Cliente. Máximo de dias Permitido: ' + IntToStr(li_PrazMaxi)), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        qryTemp.Close;

        // Foco na forma de pagamento
        DBCForPg.SetFocus;
        Exit;
      end;
    end;

    if (QPediVe.FieldByName('PC_DESCPEDIVEND').AsFloat > QPediVe.FieldByName('PC_DESCPADRCLIE').AsFloat ) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Percentual de desconto maior que o padrão para o cliente.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
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
      Application.MessageBox('Situação de Cobrança e Conta incompatíveis.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      QryTemp.Close;
      Exit;
    end;

    // Se o tipo de conta não estiver associada a banco e a situação de cobrança for bancária (2)
    If (QryTemp.FieldByName('FL_ASSOBANCTIPOCONT').AsString = 'N') and (QPediVe['ID_SITUCOBR'] = 2 ) then
    begin
      Application.MessageBox('Situação de Cobrança e Conta incompatíveis.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
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
          If Application.MessageBox('Confirma bloqueio Cliente?                 ', PChar(FrmPedVenda.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then;
          try
            WITH OSQL DO
            begin
              SQL.Clear;
              SQL.Text := 'update cliente set fl_bloqadmiclie =  ''S'' '+
                          'where id_cliente = '+ QPediVe.FieldByName('ID_CLIENTE').AsString;
              Execute;
            end;

            WITH OSQL DO
            begin
              SQL.Clear;
              SQL.Text := 'INSERT INTO CLIENTE_BLOQUEIO (EMPRESA, ID_BLOQCLIE, FILIAL, ID_CLIENTE, ID_MOTIBLOQ, ID_USUASIST, '+
                          'FL_TIPOBLOQCLIE, FX_BLOQCLIE, DT_BLOQCLIE) '+
                          'VALUES( ''' + gs_Empresa + ''', ID_BLOQCLIE.NEXTVAL, :filial, :id_cliente, :id_motibloq, '+
                          ':id_usuasist, :fl_tipobloqclie, :fx_BloqClie, SYSDATE) ';
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
            Application.MessageBox(PChar('Problema em Atualizar Bloqueio Cliente: ' + QPediVe.FieldByName('ID_Cliente').AsString +
                      ', avise o adm. do sistema.'), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
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
        If (QPediVe.FieldByName('PC_DESCPEDIVEND').AsFloat <> QPediVe.FieldByName('PC_DESCPEDIVEND').OldValue) then
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

            if QPediVe['PC_DESCPEDIVEND'] > 0 then
              QItem.FieldByName('PC_DESCITEMPEDIVEND').AsFloat := QPediVe['PC_DESCPEDIVEND']
            else
              QItem.FieldByName('PC_DESCITEMPEDIVEND').AsFloat := 0;

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
              {QItem['VL_UNITBRUTITEMPEDIVEND'] := RoundNExtend( (QryTemp.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsFloat  * (1 + (QItemPC_DESCITEMPEDIVEND.Value) / 100)), nDecimal);}

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
              Application.MessageBox(PChar('Preço não encontrado para o produto: '+QryTemp.fieldbyname('ID_PRODMATEEMBA').AsString +#13 + #10 +
              'Verifique a Tabela de Preços associada ao Cliente e o preço do produto para esta tabela.'), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);

              QItem['ID_PRODMATEEMBA'] := '';

              // Voltamos o foco para o código
              DBCodMatEmba.SetFocus;
              Exit;
            end;

            //Verificamos se o Produto esta ativo ou não na Tabela de Preços
            If qrPrec.FieldByName('FL_ATIVITEMTABEPREC').AsString = 'N' then
            begin
              Screen.Cursor := crDefault;
              Application.MessageBox('Produto indisponível para venda, para esta Tabela de Preço.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
              Screen.Cursor := crSQLWait;
            end;


            // Pegamos o preço da tabela
            If (edtDesc.text = '0')  or (edtDesc.text = '') then
              QItem['VL_UNITBRUTITEMPEDIVEND'] := qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat
            else
              QItem['VL_UNITBRUTITEMPEDIVEND'] := RoundNExtend( (qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat  * (1 + (QItemPC_DESCITEMPEDIVEND.Value) / 100)), 2);
              {QItem['VL_UNITBRUTITEMPEDIVEND'] := RoundNExtend( (qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat  * (1 + (QItemPC_DESCITEMPEDIVEND.Value) / 100)), nDecimal);}

            QItem['VL_UNITITEMPEDIVEND'] := (qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat)  * (1 - (QPediVeVL_DESCPEDIVEND.Value) / 100);

            // Ajustamos o valor total do item
            QItem['VL_TOTAITEMPEDIVEND'] := (QryTemp.fieldbyname('QN_EMBAITEMPEDIVEND').AsFloat * QryTemp.fieldbyname('QN_PESOITEMPEDIVEND').AsFloat) * ((qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat)  * (1 - (QPediVeVL_DESCPEDIVEND.Value) / 100));

          end;

          qitem['QN_EMBAITEMPEDIVEND'] := QryTemp.fieldbyname('QN_EMBAITEMPEDIVEND').AsFloat;
          qitem['QN_PESOITEMPEDIVEND'] := QryTemp.fieldbyname('QN_PESOITEMPEDIVEND').AsFloat;
          qitem['QN_TARAITEMPEDIVEND'] := QryTemp.fieldbyname('QN_TARAITEMPEDIVEND').AsFloat;
          qitem['QN_EMBAEXPEITEMPEDIVEND'] := 0;
          qitem['QN_PESOPADREXPEITEMPEDIVEND'] := 0;
          qitem['QN_TARAREALEXPEITEMPEDIVEND'] := 0;
          qitem['QN_PESOREALEXPEITEMPEDIVEND'] := 0;
          qitem['QN_CAIXCORTITEMPEDIVEND'] := 0;
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
        {QryTemp.SQL.Text := 'SELECT round (SUM( (VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND) - NVL(VL_DESCITEM,0) ),' + IntToStr(nDecimal) + ') VL_PEDIVEND '+
                            '  FROM PEDIDO_VENDA_ITEM                                          '+
                            ' WHERE ID_PEDIVEND = ' + IntToStr(QPediVe['ID_PEDIVEND']) + '     ';}
        QryTemp.Open;

        QPediVe.FieldByName('VL_PEDIVEND').AsFloat := qryTemp.FieldByName('VL_PEDIVEND').AsFloat;

        // Calculamos o valor total do desconto
        QryTemp.Close;
        QryTemp.SQL.Text := 'SELECT round (SUM(VL_UNITBRUTITEMPEDIVEND * QN_PESOITEMPEDIVEND) -           '+
                            '       SUM(VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND),2) VL_DESCPEDIVEND '+
                            '  FROM PEDIDO_VENDA_ITEM                                              '+
                            ' WHERE ID_PEDIVEND = ' + IntToStr(QPediVe['ID_PEDIVEND']) + '         ';
        {QryTemp.SQL.Text := 'SELECT round (SUM(VL_UNITBRUTITEMPEDIVEND * QN_PESOITEMPEDIVEND) -           '+
                            '       SUM(VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND),' + IntToStr(nDecimal) + ') VL_DESCPEDIVEND '+
                            '  FROM PEDIDO_VENDA_ITEM                                              '+
                            ' WHERE ID_PEDIVEND = ' + IntToStr(QPediVe['ID_PEDIVEND']) + '         ';}
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
    SBDiversos.Enabled:= False;
    Sb_Sair.Enabled:= False;
    PageControl1.Pages[0].TabVisible:= False;
    PageControl1.Pages[1].TabVisible:= False;
    PageControl1.Pages[2].TabVisible:= False;
    DBCodCidEntre.Enabled := False;
    PageControl1.Pages[3].Enabled := True;
    PageControl1.Pages[3].TabVisible := True;
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
    VItemInclui:= 'S';
    QItem.Close;
    QItem.ParamByName('ID_PEDIVEND').AsFloat := QPediVeID_PEDIVEND.Value;
    QItem.Open;
    If (gi_filial<>4) and (VDPNF = false) then
    BEGIN
      CBIPICMS.Enabled := False;
      edtIPI.Enabled := false;
    END;

    If (ls_QuerStat <> 'C')then
    begin
      QItem.Insert;
      //TRANSFERE O DESCONTO DO ITEM
      QItem.FieldByName('PC_DESCITEMPEDIVEND').AsFloat:= QPediVe.FieldByName('PC_DESCPEDIVEND').AsFloat;
    end
    else
    begin
      mniValidar.Enabled := (QPediVeID_TIPOPEDIVEND.Value <> 14);
      mniTransfer.Enabled:= QPediVeID_TIPOPEDIVEND.Value = 14;

      SBNovo.Enabled := True;
      SBDel.Enabled :=  True;
      SB_COPIA.Enabled := True;
      SBDiversos.Enabled := True;
      SBSalva.Enabled := False;
      SBCancel.Enabled := False;
      Sb_Sair.Enabled := False;
    end;

    if (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S') then
    begin
      AbreQueryComParametro(QryPedidoVenda, 'ID_PEDIVEND', QPediVeID_PEDIVEND.Value);
      AbreQueryComParametro(QryCTECompServ, 'ID_PEDIVEND', QPediVeID_PEDIVEND.Value);
    end;

    if qryItensUnifica.RecordCount > 0 then
    begin
      QItem.Open;
      qryItensUnifica.First;

      while not(qryItensUnifica.Eof) do
      begin

        if not(QItem.State in [dsInsert, dsEdit]) then
          QItem.Insert;

        QItem.FieldByName('ID_PEDIVEND').AsFloat                  := VID_PEDIVEND;
        QItem.FieldByName('EMPRESA').AsString                     := gs_Empresa;
        QItem.FieldByName('FILIAL').AsInteger                     := gi_Filial;
        QItem.FieldByName('ID_MATERIAL').AsFloat                  := qryItensUnifica.FieldByName('ID_MATERIAL').AsFloat;
        QItem.FieldByName('ID_EMBALAGEM').AsFloat                 := qryItensUnifica.FieldByName('ID_EMBALAGEM').AsFloat;
        QItem.FieldByName('ID_MATEEMBA').AsFloat                  := qryItensUnifica.FieldByName('ID_MATEEMBA').AsFloat;
        QItem.FieldByName('ID_TIPOOPER').AsFloat                  := qryItensUnifica.FieldByName('ID_TIPOOPER').AsFloat;
        QItem.FieldByName('VL_UNITITEMPEDIVEND').AsFloat          := qryItensUnifica.FieldByName('VL_UNITITEMPEDIVEND').AsFloat;
        QItem.FieldByName('QN_EMBAITEMPEDIVEND').AsFloat          := qryItensUnifica.FieldByName('QN_EMBAITEMPEDIVEND').AsFloat;
        QItem.FieldByName('QN_PESOITEMPEDIVEND').AsFloat          := qryItensUnifica.FieldByName('QN_PESOITEMPEDIVEND').AsFloat;
        QItem.FieldByName('QN_TARAITEMPEDIVEND').AsFloat          := qryItensUnifica.FieldByName('QN_TARAITEMPEDIVEND').AsFloat;
        QItem.FieldByName('FX_ITEMPEDIVEND').AsString             := qryItensUnifica.FieldByName('FX_ITEMPEDIVEND').AsString;
        QItem.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsFloat      := qryItensUnifica.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsFloat;
        QItem.FieldByName('PC_DESCITEMPEDIVEND').AsFloat          := qryItensUnifica.FieldByName('PC_DESCITEMPEDIVEND').AsFloat;
        QItem.FieldByName('VL_UNITIPI').AsFloat                   := qryItensUnifica.FieldByName('VL_UNITIPI').AsFloat;
        QItem.FieldByName('VL_ITEMTABEPREC').AsFloat              := qryItensUnifica.FieldByName('VL_ITEMTABEPREC').AsFloat;
        QItem.FieldByName('VL_DIFERENCA').AsFloat                 := qryItensUnifica.FieldByName('VL_DIFERENCA').AsFloat;
        QItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsFloat      := 0;
        QItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat  := 0;
        QItem.FieldByName('QN_TARAREALEXPEITEMPEDIVEND').AsFloat  := 0;
        QItem.FieldByName('QN_PESOREALEXPEITEMPEDIVEND').AsFloat  := 0;
        QItem.FieldByName('QN_CAIXCORTITEMPEDIVEND').AsFloat      := 0;

        QItem.Post;
        qryItensUnifica.Next;
      end;

      Qitem.ApplyUpdates;
      QItem.CommitUpdates;
      qryItensUnifica.Close;
    end;

  end
  // Se o foco estiver na query de Itens
  else  if TSItem.Showing then
  begin
    // para PNF nao olha Estoque //ESTOCADO
    If (VPNF = False) then
    begin
      if QPediVeFL_VENDA_FUNC.AsString = 'N' then
      begin
        if (QPediVeID_CLIENTE.Value <> 1085) then
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
                Application.MessageBox('Item não possui quantidade Disponível para Venda.', 'Dacar Vendas - Inclusão de Itens no Pedido', MB_OK + MB_ICONWARNING);
                Exit;
              end;

              // qtde solicitada maior que a qtde disponivel
              if QItemQN_EMBAITEMPEDIVEND.AsInteger > StrToInt(qryQtdDisponivel.FieldByName('KG_ESTOQUE_ATUAL').AsString) then
              begin
                Application.MessageBox('Quantidade solicitada excede Quantidade Disponível para Venda.', 'Dacar Vendas - Inclusão de Itens no Pedido', MB_OK + MB_ICONWARNING);
                Exit;
              end;
            end;
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
        Application.MessageBox('Este pedido já está adicionado a uma Carga. Alteração não permitida.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        exit;
      end;
    end;

    PageControl1.Pages[0].TabVisible := false;
    PageControl1.Pages[1].TabVisible := false;
    PageControl1.Pages[2].TabVisible := false;
    mniValidar.Enabled := (QPediVeID_TIPOPEDIVEND.Value <> 14);
    mniTransfer.Enabled:= QPediVeID_TIPOPEDIVEND.Value = 14;
    PageControl1.Pages[3].Enabled := true;
    PageControl1.Pages[3].TabVisible := true;
    PageControl1.Pages[4].TabVisible := False;
    PageControl1.Pages[5].TabVisible := False;

    // Ajustamos o total do item
    AjustTotalItem(Self);

    // Flag da operação (Inclusão / Exclusão)
    IF QItem.State = dsInsert  then
      ls_QuerStat := 'I'
    ELSE
      ls_QuerStat := 'E';

    // Se o produto não foi escolhido
    If (DBCodMatEmba.Text='') then
    begin
      DBCodMatEmba.SetFocus;
      Application.MessageBox('É necessário informar o Produto.              ', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
    end;

   edtQtdeEmbaExit(self);

    if (VPNF = True) then
    begin
      if QitemVL_TOTAITEMPEDIVEND.AsFloat = 0 then
      begin
        if Application.MessageBox('Valor Total do Item está zerado. Deseja continuar?', PChar(FrmPedVenda.Caption), MB_YESNO) = IDNO then
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
      qrPrec.ParamByName('ID_MATERIAL').AsInteger := QItem['ID_MATERIAL'];
      qrPrec.Open;

      //      Verificamos se  preço está dentro do mínimo
//      If ((strtofloat(edtPrecUnitBrut.Text)+0.001) < (qrPrec.FieldByName('VL_MINIITEMTABEPREC').AsFloat))
////       and (QrTipoPed.FieldByName('FL_CORTEPED').Value = 'N')   28/09/2017 - Retirada verificação do corte
//      then
//      begin
//        Screen.Cursor := crDefault;
//        Application.MessageBox('O preço mínimo para este produto é de '+ FloattoStr(qrPrec.FieldByName('VL_MINIITEMTABEPREC').AsFloat), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
//        edtPrecUnitBrut.SetFocus;
//        Exit;
//      end;

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
//      If (strtofloat(edtPrecUnit.Text)) >
//      ((qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat + (strtofloat(edtPrecUnit.text) * ur_PercMaxiPrecVend / 100))) then
//      begin
//        Preco_Maximo  := ArredondaDecimal( (qrPrec.FieldByName('VL_ITEMTABEPREC').AsFloat / ((100 - ur_PercMaxiPrecVend )/100)) ,4) ;
//
//        Screen.Cursor := crDefault;
//        Application.MessageBox('O preço máximo para este produto é de ' + FormatFloat( '0.0000', Preco_Maximo ), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
//        edtPrecUnitBrut.SetFocus;
//        Exit;
//      end;

      IF qITEMVL_TOTAITEMPEDIVEND.Value  = 0 then
      begin
        // Mensagem
        Screen.Cursor := crDefault;
        Application.MessageBox('Valores zerados. É necessário informar dados de preço e quantidade do Item.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        edtPrecUnitBrut.SetFocus;
        Exit;
      end;

//      If VPERIPI = 0 then
//      begin
//        // Verificamos o valor Unitario e bruto são diferentes, se não tem desconto
//        If (edtDesc.text = '0')  or (edtDesc.text = '') then
//        begin
//          If QItem['VL_UNITITEMPEDIVEND'] <> QItem['VL_UNITBRUTITEMPEDIVEND'] then
//          begin
//            Screen.Cursor := crDefault;
//            Application.MessageBox('Verifique se o Valor Unitário está correto.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
//            edtPrecUnitBrut.SetFocus;
//            Exit;
//          end;
//        end;
//      end;

      If ls_QuerStat = 'I' then
      begin
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
          Application.MessageBox('Produto já adicionado ao pedido.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
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
          '  (CASE WHEN SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND)=0 then 0 ELSE (SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND*PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND)/SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND)) END) PR_MED,  '+
          '  (CA_PARAMETRO_COMERCIAL_ITEM.QN_COTA-SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND)) SALDO_KG, '+
          '  (CA_PARAMETRO_COMERCIAL_ITEM.VL_COTA - SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND*PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND)) SALDO_VL, '+
          '  (CASE WHEN ((CA_PARAMETRO_COMERCIAL_ITEM.QN_COTA-SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND))<0)                                    '+
          '   then CA_PARAMETRO_COMERCIAL_ITEM.VL_PM ELSE (CASE WHEN (CA_PARAMETRO_COMERCIAL_ITEM.QN_COTA-SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND))=0 '+
          '   then CA_PARAMETRO_COMERCIAL_ITEM.VL_PM ELSE ((CA_PARAMETRO_COMERCIAL_ITEM.VL_COTA - SUM(PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND*PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND))/ '+
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
          IF (qrytemp.FieldByName('FL_TRAVAKG').AsString = 'S') then
          BEGIN
            IF ( (QryTemp.FieldByName('SALDO_KG').AsFloat-(qItem['QN_PESOPADRITEMPEDIVEND'] * StrToFloat(edtQtdeEmba.Text))) < 0 ) then
            BEGIN
              Screen.Cursor := crDefault;
              Application.MessageBox(PChar('O peso do produto ' + qrytemp.FieldByName('NM_PRODMATEEMBA').AsString + ', estourou a cota estipulada de ' + FloatToStrF(QryTemp.FieldByName('QN_COTA').AsFloat,ffNumber,15,3) + ' Kg.'),
              PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
              exit;
            END;
          END;

          //SE TRAVA PRECO
          IF (qrytemp.FieldByName('FL_TRAVAQN').AsString = 'S') then
          BEGIN
            If (FloatToStrF(StrToFloat(edtPrecUnit.Text),ffNumber,15,3) < FloatToStrF(QryTemp.FieldByName('PR_MIN').AsFloat,ffNumber,15,3)) then
            begin
              Screen.Cursor := crDefault;
              Application.MessageBox(PChar('O preço do produto ' + qrytemp.FieldByName('NM_PRODMATEEMBA').AsString + ', deve ser maior ou igual a ' + FloatToStrF(QryTemp.FieldByName('PR_MIN').AsFloat,ffNumber,15,3) + ', para atender a cota estipulada.'),
              PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
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

    QItem['QN_PESOITEMPEDIVEND'] := QItem['QN_PESOPADRITEMPEDIVEND'] * strtofloat(edtQtdeEmba.Text);
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
      mniValidar.Enabled := (QPediVeID_TIPOPEDIVEND.Value <> 14);
      mniTransfer.Enabled:= QPediVeID_TIPOPEDIVEND.Value = 14;
      SBNovo.Enabled := True;
      SBDel.Enabled :=  True;
      SB_COPIA.Enabled := True;
      SBDiversos.Enabled := True;
      SB_Editar.Enabled := True;
      SBSalva.Enabled := False;
      SBCancel.Enabled := False;
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
      If QPediVe.FieldByName('ID_PRODMATEEMBA').IsNull then
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

      {QryTemp.SQL.Text := 'SELECT SUM(( VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND) - NVL(VL_DESCITEM,0) ) VL_PEDIVEND, '+
                          '       SUM( (VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND)*NVL((VL_UNITIPI/100),0)) VL_IPI, '+
                          '       round(SUM(VL_UNITBRUTITEMPEDIVEND * QN_PESOITEMPEDIVEND) -           '+
                          '       SUM(VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND),' + IntToStr(nDecimal) + ') VL_DESCPEDIVEND, '+
                          '       SUM(VL_OUTRASDESP) VL_OUTRASDESP                                '+
                          '  FROM PEDIDO_VENDA_ITEM                                          '+
                          ' WHERE ID_PEDIVEND = ' + IntToStr(QPediVe['ID_PEDIVEND']) + '     ';}
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

      //Expedição Manual
      If (VPNF = True) then
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

  DBLConta.Enabled:= False;
  DBPlaca.Enabled := False;
  Btplaca.Enabled := False;
  btn_PesqLote.Enabled := False;
  BPesqDt.Enabled := False;
  BPesqDtEntre.Enabled := False;
  DBIE_EXTERNO.Enabled := False;
  DBArmazena.Enabled := False;
  DBMemo1.Enabled := False;
  DBMemo2.Enabled := False;
  VEDITA:= False;
  Sb_Sair.Enabled := True;

  if PageControl1.ActivePage = TsDocRef then
  Begin
    if Not(Rad_NFe.Checked or Rad_NF.Checked or Rad_NFP.Checked or Rad_CTE.Checked or Rad_Cupom.Checked) then
    begin
      Application.MessageBox('É necessário informar o Tipo de Documento Referenciado.',PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
    end;

    if ValidaDocumentoReferenciado then
       if Qry_DocRef.State in [dsInsert, dsEdit] then
          Qry_DocRef.Post;

    if (tabCTE.Enabled) then
    begin
      PageControl1.ActivePage := tabCTE;
    end;
  end;

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
    vParticipaCorte:= false;

end;

procedure TFrmPedVenda.edtCodiClieExit(Sender: TObject);
VAR
  li_TituAtra:integer;
  CredDisp : Double;
begin
  edtCodiClie.Color:= clWindow;
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
  qryTempC.SQL.Text :=  'SELECT Cliente.NM_CLIENTE, Cliente.IE_CLIENTE, Cliente.NM_FANTCLIE, cliente.fl_funcionario, '+
                        'Cliente.NR_CNPJCLIE, Cliente.VL_LIMICREDCLIE, Cliente.VL_CREDATUACLIE, '+
                        'Cliente.VL_CREDESPECLIE, Cliente.ID_TIPOPEDIVEND, Cliente.ID_FORMPAGA, '+
                        'Cliente.ID_INSTCOBR, Cliente.ID_SITUCOBR, Cliente.ID_TIPOCOBR, Cliente.ID_CONTA, '+
                        'Cliente.ID_TIPOVEND, Cliente.FL_BLOQADMICLIE, Cliente.FL_TIPOBLOQCLIE, Cliente.QN_TITUVENCCLIE, '+
                        'Cliente.VL_TITUVENCCLIE, Cliente.FL_ATIVCLIE, Cliente_vendedor.ID_VENDEDOR, '+
                        'Cliente.PC_DESCPADRCLIE, Cliente.PC_BONIPADRCLIE, Cliente.FL_PESSCLIE, CLIENTE.ID_BAIRRO, '+
                        'PAIS.ID_PAIS, CLIENTE.id_grupclie, Cliente_vendedor.pc_comivendclie, ESTADO.SG_ESTADO, '+
                        'CLIENTE.FL_NF_POSTERIOR, CLIENTE.NR_INSCESTACLIE, CLIENTE.ID_TABEPREC, TABELA_PRECO.FL_ATUALIZA, '+
                        'CLIENTE.GN_EMAICLIE, TABELA_PRECO.NM_TABEPREC, TABELA_PRECO.FX_TABEPREC, CLIENTE.OP_SIMPLES_NACIONAL, '+
                        'CLIENTE.LATITUDE, CLIENTE.LONGITUDE, CLIENTE.FL_TITUABERTO '+
                        'FROM CLIENTE, CLIENTE_VENDEDOR, BAIRRO, CIDADE, ESTADO, PAIS, TABELA_PRECO '+
                        'WHERE (CLIENTE.ID_CLIENTE = CLIENTE_VENDEDOR.ID_CLIENTE (+)) AND  CLIENTE.ID_TABEPREC = TABELA_PRECO.ID_TABEPREC '+
                        'AND CLIENTE.ID_BAIRRO = BAIRRO.ID_BAIRRO AND BAIRRO.ID_CIDADE = CIDADE.ID_CIDADE '+
                        'AND  CIDADE.ID_ESTADO = ESTADO.ID_ESTADO AND  ESTADO.ID_PAIS = PAIS.ID_PAIS '+
                        'AND ((Cliente_vendedor.FL_PADRVENDCLIE = ''S'') OR (Cliente_vendedor.FL_PADRVENDCLIE Is Null)) '+
                        'AND (Cliente.ID_CLIENTE = ' + edtCodiClie.Text + ') ';
  qryTempC.Open;

  if VPNF then
  begin
    if ((qryTempC['ID_TIPOPEDIVEND'] = 6) OR
       (qryTempC['ID_TIPOPEDIVEND'] = 7) OR
       (qryTempC['ID_TIPOPEDIVEND'] = 18)) then
    begin
      pValidaPeriodoDigitacao;
    end;
  end;

  // Se não encontramos o código
  if qryTempC.IsEmpty then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('Código não encontrado.                        ', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
    QPediVe['ID_CLIENTE'] := 0;
    edtCodiClie.SetFocus;
    qryTempC.Close;
    Exit;
  end;

  if (QryTempC.FieldByName('LATITUDE').IsNull) or (QryTempC.FieldByName('LONGITUDE').IsNull) then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('Cliente não possui Latitude/Longitude cadatrado.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
    SBCancelClick(sender);
    qryTempC.Close;
    Exit;
  end;

  {NOME: FABRICIO DATA:12/03/2018 MOTIVO: SOLICITAÇÃO DO VALMOR }
  if (QryTempC.FieldByName('GN_EMAICLIE').IsNull) or (QryTempC.FieldByName('GN_EMAICLIE').Value = '@') then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('Cliente não possui endereço de email cadastrado.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
    SBCancelClick(sender);
    qryTempC.Close;
    Exit;
  end;

  {NOME: FABRICIO DATA:21/01/2021 MOTIVO: ATUALIZAÇÃO CADASTRAL PARA OPTANTE DE SIMPLES NACIONAL}
  if (QryTempC.FieldByName('OP_SIMPLES_NACIONAL').IsNull) then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('Cliente não possui opção para Simples Nacional informada.' +#10+ 'Atualize o cadastro.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
    SBCancelClick(sender);
    qryTempC.Close;
    Exit;
  end
  else
  begin
    if QryTempC.FieldByName('OP_SIMPLES_NACIONAL').AsString = 'F' then
      lblSimplesNacional.Caption := '*** CONSUMIDOR FINAL ***'
    else if QryTempC.FieldByName('OP_SIMPLES_NACIONAL').AsString = 'S' then
      lblSimplesNacional.Caption := '*** OPTANTE SIMPLES NACIONAL ***'
    else if QryTempC.FieldByName('OP_SIMPLES_NACIONAL').AsString = 'N' then
      lblSimplesNacional.Caption := '*** NÃO OPTANTE SIMPLES NACIONAL ***'
    else
      lblSimplesNacional.Caption := '*** NÃO INFORMADO ***';
  end;

  //Verificamos se o Cliente permite Emissão de NF Posterior.
  VNFPOSTERIOR:= False;
  If (qryTempC['ID_TIPOVEND'] = 9) then
     VNFPOSTERIOR:= True;

  If QryTempC.FieldByName('ID_TABEPREC').IsNull then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Cliente não possui tabela cadastrada. Entre em contato com o setor de cadastro de Clientes.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      QPediVe['ID_CLIENTE'] := 0;
      edtCodiClie.SetFocus;
      qryTempC.Close;
      Exit;
    end
  else
  begin
    {FABRICIO - 27/11/2018 - MOTIVO: solicitado por Jessica para bloqueio de Tabela sem ajuste}
    if QryTempC.fieldbyname('FX_TABEPREC').AsString = 'N' then
    begin
      Application.MessageBox(PChar('A Tabela de Preços ' + qryTempC.fieldbyname('NM_TABEPREC').AsString + ' utilizada pelo cliente, está Inativa.'), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      SBCancelClick(Sender);
      Exit;
    end;

    // AOS SABADOS E DOMINGO NAO VALIDA TABELA DE PREÇO,
    if (not(dayofweek(Today) IN [1,7])) AND (gi_IdenUsua <> 1) AND (QryTempC.fieldbyname('FL_ATUALIZA').AsString = 'S') then
    begin
      {FABRICIO - 10/09/2018 - MOTIVO: validar se a tabela de preço esta atualiza para o dia}
      QryTemp.Close;
      QryTemp.SQL.CLEAR;
      qryTemp.SQL.Text := 'SELECT DT_ATUALIZACAO FROM TABELA_PRECO_ITEM WHERE ID_TABEPREC = ' + QryTempC.fieldbyname('ID_TABEPREC').AsString + ' AND (TO_DATE(DT_ATUALIZACAO) <> ''' + DateToStr(now) + ''' OR (DT_ATUALIZACAO IS NULL))' ;
      qryTemp.Open;

      if (qryTemp.recordcount > 0) then
      begin
        Application.MessageBox(PChar('A Tabela de Preços ' + qryTempC.fieldbyname('NM_TABEPREC').AsString + ' utilizada pelo cliente, está desatualizada.'), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        if gi_IdenUsua IN [1,79,56] then
        begin
          if Application.MessageBox('Deseja continuar lançamento com Preços DESATUALIZADOS?', PChar(FrmPedVenda.Caption), MB_YESNO + MB_ICONWARNING) = IDYES then
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
  end;

  VDATATU:=TRUNC(ld_DataHora);
    IF DAYOFWEEK(TRUNC(ld_DataHora))=2 then
      VDATATU:=TRUNC(ld_DataHora)-2;

  QrTitu.Close;
  QRTitu.SQL.clear;
  // Contamos os títulos que podem estar abertos
  QRTitu.SQL.Text :=
      ' SELECT COUNT(*) AS TITUABERTO                         '+
      ' FROM Pedido_Venda,ca_titurec,pedido_venda_tipo        '+
      ' WHERE Pedido_Venda.id_pedivend=ca_titurec.rnumedocu   '+
      ' AND Pedido_Venda.id_tipopedivend=pedido_venda_tipo.id_tipopedivend  '+
      ' AND ca_titurec.rdatavenc < TO_DATE(''' + datetostr(VDATATU) + ''',''' + 'DD/MM/YYYY' + ''')' +
      ' AND (ca_titurec.rst_cobra = ''A'')                            '+
      ' AND (ca_titurec.rid_cliente = ''' + floattostr(QPediVe['ID_CLIENTE']) + ''')'+
      ' AND NVL(pedido_venda_tipo.fl_consfinatipopedivend,''S'')=''S'' ';
  QRTitu.Open;

  if (QryTempC.FieldByName('FL_TITUABERTO').Value <> 'S') and (QRTitu.FieldByName('TITUABERTO').Value > 0) then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('Cadastro do Cliente não permite lançamento de pedido se tiver Titulos em Aberto. Entre em contato com o Financeiro.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
    SBCancelClick(sender);
    QRTitu.Close;
    Exit;
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
  QPediVe['FL_VENDA_FUNC'] := QryTempC['FL_FUNCIONARIO'];

  IF  (qryTempC['ID_PAIS'] <> 1) then
    QPediVe['ID_CIDADE_ENTREGA'] := 9328;   //SANTOS

  QryTemp.Close;
  QryTemp.SQL.CLEAR;
  qryTemp.SQL.Text := 'SELECT FL_ATIVVEND FROM VENDEDOR WHERE ID_VENDEDOR = ' + QryTempC.FieldByName('ID_VENDEDOR').AsString;
  qryTemp.Open;

  If qryTemp.FieldByName('FL_ATIVVEND').AsString = 'N' then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('Vendedor Padrão Inativo.' + #10 + 'Para prosseguir com Pedido, atualize o cadastro do Cliente/ Vendedor.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
    SBCancelClick(sender);
    qryTempC.Close;
    Exit;
  end
  else
    QPediVe['ID_VENDEDOR'] := qryTempC['ID_VENDEDOR'];

  IF  qryTempC['FL_PESSCLIE'] = 'F' then
     VPESSOCLI:='F'
  ELSE
    VPESSOCLI:='';

  if QrTipoPed.Locate('ID_TIPOPEDIVEND', qryTempC['ID_TIPOPEDIVEND'], []) then
    QPediVe['ID_TIPOPEDIVEND'] := qryTempC['ID_TIPOPEDIVEND'];

  if QPediVeID_TIPOPEDIVEND.Value = 14 then
    QPediVe['GN_OBSEPEDIVEND'] := '*** CONSUMO REFEITORIO ***';

  DBLConta.KeyValue := qryTempC.FieldByName('ID_CONTA').Asfloat;
  QPediVe['ID_CONTA'] := qryTempC.FieldByName('ID_CONTA').Asfloat;

  If (VPNF=true) then
  begin
    QPediVe['ID_TIPOPEDIVEND'] := qryTempC['ID_TIPOPEDIVEND'];
    DBLConta.KeyValue := qryTempC.FieldByName('ID_CONTA').Asfloat;
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
          IF DAYOFWEEK(TRUNC(ld_DataHora))=2 then
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
      QrTipoPed.SQL.Add('SELECT DISTINCT ');
      QrTipoPed.SQL.Add('  PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND,');
      QrTipoPed.SQL.Add('  PEDIDO_VENDA_TIPO.NM_TIPOPEDIVEND,');
      QrTipoPed.SQL.Add('  NVL(PEDIDO_VENDA_TIPO.FL_CORTEPED,''N'') AS FL_CORTEPED, PEDIDO_VENDA_TIPO.FL_VALIDA_SIMPLES_NAC ');
      QrTipoPed.SQL.Add('FROM');
      QrTipoPed.SQL.Add('  PEDIDO_VENDA_TIPO,');
      QrTipoPed.SQL.Add('  PEDIDO_VENDA_TIPO_DOCU_TIPO');
      QrTipoPed.SQL.Add('WHERE');
      QrTipoPed.SQL.Add('  PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPOPEDIVEND');
//      QrTipoPed.SQL.Add('  AND ((PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU = 11) OR (PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = 17)) ');
      QrTipoPed.SQL.Add('  AND PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND IN (14,135)');
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
//    Application.MessageBox('A Tabela de Preços ' + QrPre.fieldbyname('NM_TABEPREC').AsString + ' utilizada pelo cliente, está desatualizada.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
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
  DBTipVen.Color :=clWindow;

  //validar se código do tipo está atribuido ao usuário
  if DBTipVen.Text <> '' then
    if not QrTipoPed.Locate('ID_TIPOPEDIVEND', DBTipVen.Text, []) then
      begin
        MessageDlg('Tipo de Pedido de Venda não permitido.'+ #10, mtWarning, [mbOk], 0);
        DBTipVen.Text:= '';
        DBTipVen.SetFocus;
        //DBLPedidoVenda.DropDown;
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
  end
  else
  begin
    DBMemo1.Width := 300;
    DBMemo1.Height := 77;
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
  qryTemp.SQL.Text := ' SELECT OBS.GN_OBSEPADRNOTAFISC, TP.ID_TIPOPEDIVEND, OBS.ID_OBSEPADRNOTAFISC, OBS.NM_MSG_CONS_FINAL, OBS.NM_MSG_OPTANTE_SIMPLES '+
                      ' FROM NOTA_FISCAL_OBSERVACAO_PADRAO OBS '+
                      ' JOIN PEDIDO_VENDA_TIPO TP ON (TP.ID_OBSEPADRNOTAFISC = OBS.ID_OBSEPADRNOTAFISC) '+
                       'WHERE TP.ID_TIPOPEDIVEND = ' + DBTipVen.Text ;
  qryTemp.Open;

    if QrTipoPed.FieldByName('FL_VALIDA_SIMPLES_NAC').AsString = 'S' then
  begin
    if QryTempC.FieldByName('OP_SIMPLES_NACIONAL').AsString = 'S' then
      QPediVe.FieldByName('GN_OBSEPADR_PEDIVEND').AsString := qryTemp.FieldByName('NM_MSG_OPTANTE_SIMPLES').AsString
    else if QryTempC.FieldByName('OP_SIMPLES_NACIONAL').AsString = 'N' then
      QPediVe.FieldByName('GN_OBSEPADR_PEDIVEND').AsString := qryTemp.FieldByName('GN_OBSEPADRNOTAFISC').AsString
    else
      QPediVe.FieldByName('GN_OBSEPADR_PEDIVEND').AsString := qryTemp.FieldByName('NM_MSG_CONS_FINAL').AsString;
  end
  else
  begin
    IF QryTempC.RecordCount = 0 then
    begin
      qryTempC.Close;
      qryTempC.SQL.Clear;
      qryTempC.SQL.Text :=  'SELECT Cliente.NM_CLIENTE, Cliente.IE_CLIENTE, Cliente.NM_FANTCLIE, cliente.fl_funcionario, '+
                            'Cliente.NR_CNPJCLIE, Cliente.VL_LIMICREDCLIE, Cliente.VL_CREDATUACLIE, '+
                            'Cliente.VL_CREDESPECLIE, Cliente.ID_TIPOPEDIVEND, Cliente.ID_FORMPAGA, '+
                            'Cliente.ID_INSTCOBR, Cliente.ID_SITUCOBR, Cliente.ID_TIPOCOBR, Cliente.ID_CONTA, '+
                            'Cliente.ID_TIPOVEND, Cliente.FL_BLOQADMICLIE, Cliente.FL_TIPOBLOQCLIE, Cliente.QN_TITUVENCCLIE, '+
                            'Cliente.VL_TITUVENCCLIE, Cliente.FL_ATIVCLIE, Cliente_vendedor.ID_VENDEDOR, '+
                            'Cliente.PC_DESCPADRCLIE, Cliente.PC_BONIPADRCLIE, Cliente.FL_PESSCLIE, CLIENTE.ID_BAIRRO, '+
                            'PAIS.ID_PAIS, CLIENTE.id_grupclie, Cliente_vendedor.pc_comivendclie, ESTADO.SG_ESTADO, '+
                            'CLIENTE.FL_NF_POSTERIOR, CLIENTE.NR_INSCESTACLIE, CLIENTE.ID_TABEPREC, '+
                            'CLIENTE.GN_EMAICLIE, TABELA_PRECO.NM_TABEPREC, TABELA_PRECO.FX_TABEPREC, CLIENTE.OP_SIMPLES_NACIONAL '+
                            'FROM CLIENTE, CLIENTE_VENDEDOR, BAIRRO, CIDADE, ESTADO, PAIS, TABELA_PRECO '+
                            'WHERE (CLIENTE.ID_CLIENTE = CLIENTE_VENDEDOR.ID_CLIENTE (+)) AND  CLIENTE.ID_TABEPREC = TABELA_PRECO.ID_TABEPREC '+
                            'AND CLIENTE.ID_BAIRRO = BAIRRO.ID_BAIRRO AND BAIRRO.ID_CIDADE = CIDADE.ID_CIDADE '+
                            'AND  CIDADE.ID_ESTADO = ESTADO.ID_ESTADO AND  ESTADO.ID_PAIS = PAIS.ID_PAIS '+
                            'AND ((Cliente_vendedor.FL_PADRVENDCLIE = ''S'') OR (Cliente_vendedor.FL_PADRVENDCLIE Is Null)) '+
                            'AND (Cliente.ID_CLIENTE = ' + edtCodiClie.Text + ') ';
      qryTempC.Open;
    end;

    if QryTempC.FieldByName('OP_SIMPLES_NACIONAL').AsString = 'F' then
      QPediVe.FieldByName('GN_OBSEPADR_PEDIVEND').AsString := qryTemp.FieldByName('NM_MSG_CONS_FINAL').AsString
    else
      QPediVe.FieldByName('GN_OBSEPADR_PEDIVEND').AsString := qryTemp.FieldByName('GN_OBSEPADRNOTAFISC').AsString;
  end;


  //Verificamos se é Doação(9) ou Bonificação(17)
  If (DBTipVen.Text='9') or (DBTipVen.Text='17') or (DBTipVen.Text='32') or (DBTipVen.Text='35') or (DBTipVen.Text='135') then
  begin
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

end;

procedure TFrmPedVenda.cbxEndeEntrExit(Sender: TObject);
begin
  cbxEndeEntr.Color :=clWindow;
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

  if not (QPediVe.IsEmpty) and (QPediVe.FieldByName('ID_CLIENTE').AsFLOAT <> 0) then
  begin
    VDATATU:=TRUNC(ld_DataHora);
    IF DAYOFWEEK(TRUNC(ld_DataHora))=2 then
      VDATATU:=TRUNC(ld_DataHora)-2;

    FrmATRA:=TFrmATRA.Create(Self);
    FrmATRA.QRVENC.Close;
    FrmATRA.QRTOT.Close;
    FrmATRA.QRVENC.ParamByName('ID_CLIENTE').AsFLOAT := QPediVe.FieldByName('ID_CLIENTE').AsFLOAT;
    FrmATRA.QRTOT.ParamByName('ID_CLIENTE').AsFLOAT := QPediVe.FieldByName('ID_CLIENTE').AsFLOAT;
    FrmATRA.QRVENC.OPEN;
    FrmATRA.QRTOT.Open;
    FrmATRA.ShowModal;
  end;

end;

procedure TFrmPedVenda.SBDiversosClick(Sender: TObject);
begin
  pm1.Popup(445,88);
end;

procedure TFrmPedVenda.DBCVenExit(Sender: TObject);
begin
  DBCVen.Color:= clWindow;
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
  DBCForPg.Color:= clWindow;
  FormatSettings.shortdateformat := 'dd/mm/yyyy';
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
        DBLFormaPagto.KeyValue := qryTemp.FieldByName('ID_FORMPAGA').AsFloat;
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
  DBInstCob.Color:= clWindow;
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
//    DBInstCob.SetFocus;

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
  DBSitCob.Color:= clWindow;
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
//    DBSitCob.SetFocus;

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
  DBCodMatEmba.color:=clWindow;

  // Se não estivermos em modo de edição
  if not (QItem.State in [dsEdit, dsInsert]) then
  begin
    Exit;
  end;

  // Se o código estiver vazio
  if DBCodMatEmba.Text = '' then
  begin
    QItem['NM_PRODMATEEMBA'] := '';
    QItem['NM_EMBALAGEM'] := '';
    QItem['QN_PESOPADRITEMPEDIVEND'] := 0;
    QItem['VL_UNITITEMPEDIVEND'] := 0;
    QItem['VL_UNITBRUTITEMPEDIVEND'] := 0;
    QItem['ID_TIPOOPER'] := 0;
    edtQtdeEmba.text:='0';
    edtPrecUnitBrut.text:='0';

    AjustTotalItem(Self);
    Exit;
  end;

  qryTemp.Close;
  qryTemp.SQL.clear;
  qryTemp.SQL.Text := 'SELECT ME.ID_MATEEMBA, ME.ID_MATERIAL, ME.ID_EMBALAGEM, ME.NM_PRODMATEEMBA, ME.QN_CAPAPADRMATEEMBA, '+
                      'ME.QN_CAPAMEDIMATEEMBA, ME.FL_ATIVMATEEMBA, ME.QN_TARAEMBAPROD_BALANCAO, COM.QN_TARAEMBAPROD, '+
                      'EMB.NM_REDUEMBA, EMB.QN_TARAEMBA, MATFIS.PC_IPICLASFISC, UN.SG_UNIDMEDI, ME.NM_PRODREDUMATEEMBA '+
                      'FROM MATERIAL_EMBALAGEM ME '+
  'INNER JOIN EMBALAGEM EMB ON (EMB.ID_EMBALAGEM = ME.ID_EMBALAGEM) '+
  'INNER JOIN MATERIAL MAT ON (MAT.ID_MATERIAL = ME.ID_MATERIAL) '+
  'INNER JOIN UNIDADE_MEDIDA UN ON (UN.ID_UNIDMEDI = MAT.ID_UNIDMEDI) '+
  'INNER JOIN MATERIAL_EMBALAGEM_COMPLEMENTO COM ON (COM.ID_MATEEMBA = ME.ID_MATEEMBA) '+
  'INNER JOIN MATEEMBACLASSFISCAL MATFIS ON (MATFIS.ID_PRODMATEEMBA = ME.ID_PRODMATEEMBA) '+
  'WHERE (ME.ID_PRODMATEEMBA = ''' + DBCodMatEmba.Text + ''') ';

  qryTemp.Open;

  if qryTemp.IsEmpty then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('Código Inexistente ou Produto não cadastrado.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
    DBCodMatEmba.SetFocus;
    qryTemp.Close;
    Exit;
  end;

  QItem['ID_MATERIAL']  := qryTemp['ID_MATERIAL'];
  QItem['ID_EMBALAGEM'] := qryTemp['ID_EMBALAGEM'];
  QItem['ID_MATEEMBA']  := qryTemp['ID_MATEEMBA'];
  QItem['NM_PRODMATEEMBA'] := qryTemp['NM_PRODMATEEMBA'];
  QItem['NM_PRODREDUMATEEMBA'] := qryTemp['NM_PRODREDUMATEEMBA'];
  QItem['NM_REDUEMBA'] := qryTemp['NM_REDUEMBA'];
  QItem['QN_TARAEMBAPROD_BALANCAO']  := qryTemp['QN_TARAEMBAPROD_BALANCAO'];
  QItem['SG_UNIDMEDI'] := qryTemp['SG_UNIDMEDI'];
  QItem['VL_UNITIPI'] := qryTemp['PC_IPICLASFISC'];
  VPERIPI := 0;

  If (qryTemp['PC_IPICLASFISC']>0) then
    VPERIPI := qryTemp['PC_IPICLASFISC'];

  QItem['QN_TARAEMBA'] :=  qryTemp['QN_TARAEMBAPROD'];
  QItem['ID_TIPOOPER'] := QrTipoOper['ID_TIPOOPER'];


  if qryTemp.FieldByName('QN_CAPAPADRMATEEMBA').AsFloat = 0 then
  begin
    QItem['QN_PESOPADRITEMPEDIVEND'] := qryTemp.FieldByName('QN_CAPAMEDIMATEEMBA').AsFloat;
  end
  else
  begin
    QItem['QN_PESOPADRITEMPEDIVEND'] := qryTemp.FieldByName('QN_CAPAPADRMATEEMBA').AsFloat;
  end;

  if qryTemp.FieldByName('FL_ATIVMATEEMBA').AsString = 'N' then
  begin
    Application.MessageBox('Produto não disponível para Vendas.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  qryTemp.Close;

  // Procuramos o preço se nao for PNF
  qrPrec.Close;
  qrPrec.ParamByName('ID_CLIENTE').AsInteger  := StrToInt(DBCLI.text);
  qrPrec.ParamByName('ID_MATERIAL').AsInteger := QItem['ID_MATERIAL'];
  qrPrec.Open;

  If (VPNF=False) then
  begin
    if qrPrec.IsEmpty then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Preço do Produto não encontrado. Verifique a Tabela de Preços associada ao Cliente e o preço do produto para esta tabela.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      QItem['ID_PRODMATEEMBA'] := '';
      DBCodMatEmba.SetFocus;
      Exit;
    end;

    //Verificamos se o Produto esta ativo ou não na Tabela de Preços
    if qrPrec.FieldByName('FL_ATIVITEMTABEPREC').AsString = 'N' then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox(PChar('Produto não cadastradado para Tabela de Preço ' + QrTabPreNM_TABEPREC.AsString + '.'), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      QItem['ID_PRODMATEEMBA'] := '';
      QItemID_MATERIAL.AsString:= '';
      QItemID_EMBALAGEM.AsString:= '';
      QItemID_MATEEMBA.AsString:= '';
      QItemID_TIPOOPER.AsString:= '';
      QItemQN_EMBAITEMPEDIVEND.AsString     := '';
      QItemVL_UNITBRUTITEMPEDIVEND.AsString := '';
      QItemVL_UNITIPI.AsString:= '';
      DBCodMatEmba.SetFocus;
      Exit;
    end;
  end;

  // para PNF nao olha Estoque  //ESTOCADO
  If (VPNF = False) then
  begin
    if QPediVeFL_VENDA_FUNC.AsString = 'N' then
    begin
      if QPediVeID_CLIENTE.Value <> 1085 then
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
              Application.MessageBox('Item não possui quantidade Disponível para Venda.', 'Dacar Vendas - Inclusão de Itens no Pedido', MB_OK + MB_ICONWARNING);
              Exit;
            end;
          end;
        end;
      end;
    end;
  end;

  if not qrPrec.IsEmpty then
  begin
    if (edtDesc.text = '0')  or (edtDesc.text = '') then
      QItem['VL_UNITBRUTITEMPEDIVEND'] := qrPrec.FieldByName(fRetornaColunaPreco).AsFloat
    else
      QItem['VL_UNITBRUTITEMPEDIVEND'] := RoundNExtend( (qrPrec.FieldByName(fRetornaColunaPreco).AsFloat  * RoundNExtend((1 + (QItemPC_DESCITEMPEDIVEND.Value) / 100),2)    ), 2);
      {QItem['VL_UNITBRUTITEMPEDIVEND'] := RoundNExtend( (qrPrec.FieldByName(fRetornaColunaPreco).AsFloat  * RoundNExtend((1 + (QItemPC_DESCITEMPEDIVEND.Value) / 100),nDecimal)    ), nDecimal);}

//    QItem['VL_ITEMTABEPREC'] := qrPrec.FieldByName(fRetornaColunaPreco).AsFloat;
    QItem['VL_ITEMTABEPREC'] := RoundNExtend( (qrPrec.FieldByName(fRetornaColunaPreco).AsFloat  * RoundNExtend((1 + (QItemPC_DESCITEMPEDIVEND.Value) / 100),2)    ), 2);
    {QItem['VL_ITEMTABEPREC'] := RoundNExtend( (qrPrec.FieldByName(fRetornaColunaPreco).AsFloat  * RoundNExtend((1 + (QItemPC_DESCITEMPEDIVEND.Value) / 100),nDecimal)    ), nDecimal);}
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
//    QItem['VL_UNITITEMPEDIVEND'] := RoundNExtend( (STRTOFLOAT(VedtPrecUnitBrut) * (1 - StrToFloat(VedtDesc) / 100)), 2);
    QItem['VL_UNITITEMPEDIVEND'] :=  (STRTOFLOAT(VedtPrecUnitBrut) * (1 - StrToFloat(VedtDesc) / 100));
    {QItem['VL_UNITITEMPEDIVEND'] :=  RoundNExtend( (STRTOFLOAT(VedtPrecUnitBrut) * (1 - StrToFloat(VedtDesc) / 100)), nDecimal);}

//     Ajustamos o valor total do item
    If VPERIPI>0 then
      QItem['VL_TOTAITEMPEDIVEND'] := (STRTOFLOAT(VedtQtdeEmba) * STRTOFLOAT(VedtPesoPadr) * STRTOFLOAT(VedtPrecUnit)) * (1 + (VPERIPI/100))
    Else
      QItem['VL_TOTAITEMPEDIVEND'] := STRTOFLOAT(VedtQtdeEmba) * STRTOFLOAT(VedtPesoPadr) * STRTOFLOAT(VedtPrecUnit);

    {// Ajustamos o valor total do item
    If VPERIPI>0 then
      QItem['VL_TOTAITEMPEDIVEND'] := RoundNExtend( (STRTOFLOAT(VedtQtdeEmba) * STRTOFLOAT(VedtPesoPadr) * STRTOFLOAT(VedtPrecUnit)) * (1 + (VPERIPI/100)),nDecimal)
    Else
      QItem['VL_TOTAITEMPEDIVEND'] := RoundNExtend( STRTOFLOAT(VedtQtdeEmba) * STRTOFLOAT(VedtPesoPadr) * STRTOFLOAT(VedtPrecUnit), nDecimal);}

  end;
end;

procedure TFrmPedVenda.edtQtdeEmbaExit(Sender: TObject);
begin
  // para PNF nao olha Estoque  //ESTOCADO
  If (VPNF = False) then
  begin
    if QPediVeFL_VENDA_FUNC.AsString = 'N' then
    begin
      if QPediVeID_CLIENTE.Value <> 1085 then
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

            if QItemQN_EMBAITEMPEDIVEND.AsInteger > StrToInt(qryQtdDisponivel.FieldByName('KG_ESTOQUE_ATUAL').AsString) then
            begin
              Application.MessageBox('Quantidade solicitada excede Quantidade Disponível para Venda.', 'Dacar Vendas - Inclusão de Itens no Pedido', MB_OK + MB_ICONWARNING);
              Exit;
            end
            else
              pnlQtdDisponivel.Color := clgreen;

          end;
        end;
      end;
    end;
  end;

  edtQtdeEmba.color:=clWindow;
  // Ajustamos o total do item
  AjustTotalItem(Self);
end;

procedure TFrmPedVenda.DBTipVenEnter(Sender: TObject);
begin
  DBTipVen.Color:= clSilver;
end;

procedure TFrmPedVenda.edtDataPediEnter(Sender: TObject);
begin
  edtDataPedi.Color:= clSilver;

//  If QPediVe.State = DsInsert then
//  begin
//    BPesqDt.Visible:=TRUE;
//  end;
end;

procedure TFrmPedVenda.edtDataEntrEnter(Sender: TObject);
begin
  edtDataEntr.Color:= clSilver;

//  If QPediVe.State = DsInsert then
//  begin
//    BPesqDtEntre.Visible:=TRUE;
//  end;
end;

procedure TFrmPedVenda.DBIE_EXTERNOEnter(Sender: TObject);
begin
  DBIE_EXTERNO.Color:= clSilver;
end;

procedure TFrmPedVenda.edtCodiClieEnter(Sender: TObject);
begin
  edtCodiClie.Color:= clSilver;
end;

procedure TFrmPedVenda.DBCVenEnter(Sender: TObject);
begin
  DBCVen.Color:= clSilver;
end;

procedure TFrmPedVenda.DBLPedidoVendaEnter(Sender: TObject);
begin
  DBLPedidoVenda.Color:= clSilver;
end;

procedure TFrmPedVenda.cbxEndeEntrEnter(Sender: TObject);
begin
  cbxEndeEntr.Color:= clSilver;
end;

procedure TFrmPedVenda.cbxEndeCobrEnter(Sender: TObject);
begin
//  cbxEndeCobr.Color:= clSilver;
end;

procedure TFrmPedVenda.DBCForPgEnter(Sender: TObject);
begin
  DBCForPg.Color:= clSilver;
end;

procedure TFrmPedVenda.DBLFormaPagtoEnter(Sender: TObject);
begin
  DBLFormaPagto.Color:= clSilver;
end;

procedure TFrmPedVenda.DBInstCobEnter(Sender: TObject);
begin
  DBInstCob.Color:= clSilver;
end;

procedure TFrmPedVenda.DBLInstCobrancaEnter(Sender: TObject);
begin
  DBLInstCobranca.Color:= clSilver;
end;

procedure TFrmPedVenda.DBSitCobEnter(Sender: TObject);
begin
  DBSitCob.Color:= clSilver;
end;

procedure TFrmPedVenda.DBLSitCobrancaEnter(Sender: TObject);
begin
  DBLSitCobranca.Color:= clSilver;
end;

procedure TFrmPedVenda.DBLTipoCobrancaEnter(Sender: TObject);
begin
  DBLTipoCobranca.Color:= clSilver;
end;

procedure TFrmPedVenda.DBLContaEnter(Sender: TObject);
begin
  DBLConta.Color:= clSilver;
end;

procedure TFrmPedVenda.DBComboBox2Enter(Sender: TObject);
begin
 // DBComboBox2
 DBRTipoFrete.Color:= clSilver;
end;

procedure TFrmPedVenda.DBLookupComboBox5Enter(Sender: TObject);
begin
  DBLookupComboBox5.Color:= clSilver;
end;

procedure TFrmPedVenda.DBEdit7Enter(Sender: TObject);
begin
  DBEdit7.Color:= clSilver;
end;

procedure TFrmPedVenda.DBPesoPedEnter(Sender: TObject);
begin
  DBPesoPed.Color:= clSilver;
end;

procedure TFrmPedVenda.DBEmbalagemEnter(Sender: TObject);
begin
  DBEmbalagem.Color:= clSilver;
end;

procedure TFrmPedVenda.edtTotaEmbaEnter(Sender: TObject);
begin
  edtTotaEmba.Color:= clSilver;
end;

procedure TFrmPedVenda.edtPesoBrutTotaEnter(Sender: TObject);
begin
  edtPesoBrutTota.Color:= clSilver;
end;

procedure TFrmPedVenda.DBMemo1Enter(Sender: TObject);
begin
  DBMemo1.Color:= clSilver;
end;

procedure TFrmPedVenda.DBMemo2Enter(Sender: TObject);
begin
  DBMemo2.Color:= clSilver;
end;

procedure TFrmPedVenda.DBMemo3Enter(Sender: TObject);
begin

  {
    Descrição: O Misael pediu para remover pois aparentemente não está sendo usado, dando lugar a novos campos.
    Autor: Vinícius Godinho Del Rio
    Data: 13/01/2015
  }
  //DBMemo3.Color:= clSilver;

end;

procedure TFrmPedVenda.edtDataPediExit(Sender: TObject);
begin
  edtDataPedi.Color:= clWindow;
//  BPesqDt.Visible := FALSE;
end;

procedure TFrmPedVenda.edtDataEntrExit(Sender: TObject);
begin
  dtEntregaInformada:= StrToDateTime(edtDataEntr.Text);
  edtDataEntr.Color:= clWindow;
//  BPesqDtEntre.Visible := FALSE;
//  pValidaDataLanctoPedido(dtEntregaInformada, dtMaxEntrega);
end;

procedure TFrmPedVenda.DBIE_EXTERNOExit(Sender: TObject);
begin
  DBIE_EXTERNO.Color:= clWindow;
end;

procedure TFrmPedVenda.DBLPedidoVendaExit(Sender: TObject);
begin
  DBLPedidoVenda.Color:= clWindow;
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
  If (DBTipVen.Text='9') or (DBTipVen.Text='17') or (DBTipVen.Text='32') or (DBTipVen.Text='35') or (DBTipVen.Text='135') then
    begin
  //    QrUsuSis.Open;
      DbCAuto.Enabled := true;
      DbCAuto.SetFocus;
    end;

end;

procedure TFrmPedVenda.DBLFormaPagtoExit(Sender: TObject);
begin
  DBLFormaPagto.Color:= clWindow;
  DBCForPgExit(nil);
end;

procedure TFrmPedVenda.DBLInstCobrancaExit(Sender: TObject);
begin
  DBLInstCobranca.Color:= clWindow;
end;

procedure TFrmPedVenda.DBLSitCobrancaExit(Sender: TObject);
begin
  DBLSitCobranca.Color:= clWindow;
end;

procedure TFrmPedVenda.DBLTipoCobrancaExit(Sender: TObject);
begin
   DBLTipoCobranca.Color:= clWindow;
end;

procedure TFrmPedVenda.DBLContaExit(Sender: TObject);
begin
   DBLConta.Color:= clWindow;
end;


procedure TFrmPedVenda.DBComboBox2Exit(Sender: TObject);
begin
//  DBComboBox2
  DBRTipoFrete.Color:= clWindow;
end;

procedure TFrmPedVenda.DBLookupComboBox5Exit(Sender: TObject);
begin
  DBLookupComboBox5.Color:= clWindow;
end;

procedure TFrmPedVenda.DBEdit7Exit(Sender: TObject);
begin
  DBEdit7.Color:= clWindow;
end;

procedure TFrmPedVenda.DBPesoPedExit(Sender: TObject);
begin
  DBPesoPed.Color:= clWindow;
end;

procedure TFrmPedVenda.DBEmbalagemExit(Sender: TObject);
begin
  DBEmbalagem.Color:= clWindow;
end;

procedure TFrmPedVenda.edtTotaEmbaExit(Sender: TObject);
begin
  edtTotaEmba.Color:= clWindow;
end;

procedure TFrmPedVenda.edtPesoBrutTotaExit(Sender: TObject);
begin
  edtPesoBrutTota.Color:= clWindow;
end;

procedure TFrmPedVenda.DBMemo1Exit(Sender: TObject);
begin
  DBMemo1.Color:= clWindow;
end;

procedure TFrmPedVenda.DBMemo2Exit(Sender: TObject);
begin
  DBMemo2.Color:= clWindow;
end;

procedure TFrmPedVenda.DBMemo3Exit(Sender: TObject);
begin

  {
    Descrição: O Misael pediu para remover pois aparentemente não está sendo usado, dando lugar a novos campos.
    Autor: Vinícius Godinho Del Rio
    Data: 13/01/2015
  }
  //DBMemo3.Color:= clWindow;

end;

procedure TFrmPedVenda.PM1Popup(Sender: TObject);
begin
    // <CHC>
  // Se tivermos itens condicionados ao status do registro
  // Ajustamos os itens do menu do botão Diversos, conforme o Status
  If (QPediVe.FieldByName('FL_STATPEDIVEND').AsString = 'AV') and
     (not (QPediVe.State in [dsInsert, dsEdit])) then
  begin
    mniValidar.Enabled := (QPediVeID_TIPOPEDIVEND.Value <> 14);
    mniTransfer.Enabled:= QPediVeID_TIPOPEDIVEND.Value = 14;
  end
  else
  begin
    mniValidar.Enabled := False;
    mniTransfer.Enabled := False;
  end;

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
  if Not(gi_IdenUsua in [1,56]) then
  begin
    if ((QPediVeVL_PEDIVEND.Value < 150) AND
       ((QPediVeID_TIPOPEDIVEND.Value = 6) OR (QPediVeID_TIPOPEDIVEND.Value = 18))) then
    begin
      Application.MessageBox('Não é permitido lançamento de Pedido de Venda inferior a R$150,00', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      SB_EditarClick(Sender);
      SBDelClick(Sender);
      Abort;
    end;

    //Pedidos abaixo de 200,00 somente Conta Bradesco 02/07/2018
    //Pedidos abaixo de 200,00 somente Conta SOFISA 29/12/2020

    if ((QPediVeVL_PEDIVEND.Value <= 200) AND  not(QPediVeID_CONTA.AsInteger IN [2,63]) AND
       ((gi_IdenUsua <> 79)  AND //Jessica (antes era Fabio Beneton)
       ((QPediVeID_TIPOPEDIVEND.Value = 6) OR
       (QPediVeID_TIPOPEDIVEND.Value = 18)))) then
    begin
      Application.MessageBox('Pedido de Venda inferior a R$200,00 apenas Conta 02 - BRADESCO ou 63 - SOFISA', PChar(FrmPedVenda.Caption) , MB_OK + MB_ICONINFORMATION);
      SB_EditarClick(Sender);
      SBDelClick(Sender);
      Abort;
    end;
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
            SQL.Text := 'UPDATE PEDIDO_VENDA SET ID_PEDREMESSA = '+ QPediVe.FieldByName('ID_PEDIVEND').AsString +
                        'WHERE ID_PEDIVEND = '+ QPediVe.FieldByName('ID_PEDREMESSA').AsString;
            Execute;
          end;
        except
          Screen.Cursor := crDefault;
          MessageDlg('Problema em salvar o No. no pedido de armazenagem: ' + QPediVe.FieldByName('ID_PEDREMESSA').AsString +
          ', avise o adm. do sistema. ' , mtWarning, [mbOk], 0);
        end;
      end;

      // Verifica limite parcelamento
      qryTemp.close;
      qryTemp.sql.clear;
      // Procuramos o máximo de dias permitido de prazo para o cliente
      qryTemp.SQL.Text := 'SELECT MAX(QN_DIASPARCFORMPAGA) QN_MAXIDIAS FROM FORMA_PAGAMENTO_PARCELA, CLIENTE '+
                          'WHERE FORMA_PAGAMENTO_PARCELA.ID_FORMPAGA = CLIENTE.ID_FORMPAGA_LIMITE AND CLIENTE.ID_CLIENTE = ' + IntToStr(QPediVe['ID_CLIENTE']) + ' ';
      try
        qryTemp.Open;
      except
        Screen.Cursor := crDefault;
        MessageDlg('Erro ao verificar prazo de pagamento máximo do Cliente.' + #13 +
                   'Não foi possível salvar.', mtWarning, [mbOk], 0);

        qryTemp.Close;
        Exit;
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
    qryTempTT.Close;
    qryTempTT.SQL.Clear;
    qryTempTT.SQL.Text := 'SELECT SUM( I.QN_EMBAITEMPEDIVEND ) QN_TOTAEMBA, SUM( I.QN_TARAITEMPEDIVEND ) QN_TOTATARA, '+
                        'SUM( CASE WHEN NVL(ME.QN_PESOVOLUMETRANSP,0) > 0 then  ME.QN_PESOVOLUMETRANSP * I.QN_EMBAITEMPEDIVEND  '+
                        'ELSE I.QN_PESOITEMPEDIVEND END) QN_TOTAPESO, '+
                        'SUM( I.QN_PESOITEMPEDIVEND * I.VL_UNITITEMPEDIVEND) VL_TOTAPEDI '+
                        'FROM PEDIDO_VENDA_ITEM I '+
                        'LEFT join Material_Embalagem ME on I.ID_MATEEMBA = ME.ID_MATEEMBA '+
                        'WHERE I.ID_PEDIVEND = ' + QPediVe.FieldByName('ID_PEDIVEND').AsString;
    qryTempTT.Open;

    QPediVe.Edit;
    QPediVe['QN_EMBAPEDIVEND'] := qryTempTT.FieldByName('QN_TOTAEMBA').AsInteger;
    QPediVe['QN_TARAPEDIVEND'] := qryTempTT.FieldByName('QN_TOTATARA').AsFloat;
    QPediVe['QN_PESOPEDIVEND'] := qryTempTT.FieldByName('QN_TOTAPESO').AsFloat;
    QPediVe['QN_PESOBRUTPEDIVEND'] := qryTempTT.FieldByName('QN_TOTAPESO').AsFloat;


    // VERIFICAR SE O PEDIDO É NF - Pedido somente para emissão de NF
    If VPNF=True then
      begin
        //Incluimos uma Carga para o Pedido PNF
        QrCarga.open;
        QrCarga.Insert;
        QrCarga['EMPRESA'] := gs_Empresa;
        QrCarga['FILIAL']  := gi_Filial;
        QrCarga['FX_CARGEXPE'] := 'S';
        QrCarga['FL_IMPRCARGEXPE'] := 'N';
        QrCarga['ID_USUASIST_MONTAGEM'] := gi_CodiUsuaSist;
        QrCarga['NR_ORDEENTRCARGEXPE'] := 0;
        QrCarga['ID_CLASCARGEXPE'] := 1;
        QrCarga['DT_CARGEXPE'] := QPediVe['DT_ENTRPEDIVEND'];
        QrCarga['DT_LIMIPEDICARGEXPE'] := QPediVe['DT_ENTRPEDIVEND'];
        QrCarga['DT_MONTCARGEXPE'] := DATE();
        QrCarga['FL_STATCARGEXPE'] := 'NF';
        QrCarga['VL_FRETCARGEXPE'] := 0;
        QrCarga.FieldByName('NM_FORNECEDOR').AsString := QPediVe.FieldByName('NM_FORNECEDOR').AsString;
        QrCarga.FieldByName('GN_PLACVEICTRAN').AsString := QPediVe.FieldByName('GN_PLACVEICTRAN').AsString;
        QrCarga.FieldByName('ID_ITEMPROGCAMI').AsFloat := QPediVe.FieldByName('ID_FORNECEDOR').AsFloat;
        QrCarga.FieldByName('VL_UNITFRETCARGEXPE').AsFloat := VKGFRETE;
        QrCarga.Post;
        QrCarga.ApplyUpdates;
        QrCarga.CommitUpdates;
        QPediVe['FL_STATPEDIVEND'] := 'NF';
        QPediVe['id_cargexpe'] := QrCargaID_CARGEXPE.Value;
        QPediVe['QN_PESOPADREXPEPEDIVEND'] := FrmPedVenda.QPediVe['QN_PESOPEDIVEND'];
        VPNF:= False;
      end
    else
    Begin
      if (VEDIT_OBS=False) or (QPediVe['FL_STATPEDIVEND']='AV') then
        QPediVe['FL_STATPEDIVEND'] := 'AB';
    End;
  end;

  if QPediVe['FL_PNF'] = 'N' then
  begin
    {VALIDAÇÃO DE DISPONIBILIDADE DE CREDITO}
    qryClie.Close;
    qryClie.SQL.clear;
    qryClie.SQL.Text := 'SELECT C.VL_LIMICREDCLIE,C.VL_CREDATUACLIE,C.VL_CREDUSADCLIE,C.VL_CREDESPECLIE, C.OP_SIMPLES_NACIONAL, '+
                        'C.VL_CREDESPEUSADCLIE,C.FL_TIPOBLOQCLIE,C.QN_TITUVENCCLIE,C.VL_TITUVENCCLIE, C.ID_GRUPCLIE '+
                        'FROM CLIENTE C WHERE C.ID_CLIENTE = ' + IntToStr(QPediVe['ID_CLIENTE']);
    qryClie.Open;

    if (qryClie.FieldByName('FL_TIPOBLOQCLIE').AsString = 'CI') or (qryClie.FieldByName('FL_TIPOBLOQCLIE').AsString = 'AB') then
    begin
      FrmPrincipal.corrigelimite(QPediVe['ID_CLIENTE'], False,0);
      qryClie.Close;
      qryClie.Open;

      //Verificamos se o Cliente possui credito suficiente
      if (qryClie.FieldByName('VL_CREDATUACLIE').AsFloat <= 0 {<QPediVe.FieldByName('VL_PEDIVEND').AsFloat}) then
      begin
        CredDisp := qryClie.FieldByName('VL_LIMICREDCLIE').AsFloat -  qryClie.FieldByName('VL_CREDUSADCLIE').AsFloat ;
        Screen.Cursor := crDefault;
        Application.MessageBox(PChar('Crédito Insuficiente. R$' + FormatFloat('#,###.##', CredDisp) + #13#10 +
        'Favor consultar Setor Financeiro sobre disponibilidade para esse cliente.'), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        {DEIXA O PEDIDO PENDENTE DE VALIDAÇÃO DO CREDITO}
        QPediVe.Edit;
        QPediVe.FieldByName('FL_STATPEDIVEND').AsString := 'LM';
        QPediVe.Post;
        QPediVe.ApplyUpdates;
        QPediVe.CommitUpdates;

        if QPediVe.FieldByName('ID_PEDUNIF_ORIGEM').AsInteger <> 0 then
        begin
          sqlItensUnifica.SQL.Clear;
          sqlItensUnifica.SQL.Text := 'UPDATE PEDIDO_VENDA SET FL_STATPEDIVEND = ''CN'', ID_PEDUNIF_DESTINO = ' + QPediVeID_PEDIVEND.AsString +
          'WHERE ID_PEDIVEND = ' + QPediVe.FieldByName('ID_PEDUNIF_ORIGEM').AsString;
          sqlItensUnifica.Execute;

          sqlItensUnifica.SQL.Clear;
          sqlItensUnifica.SQL.Text := 'DELETE FROM CA_LIMITECRED WHERE ID_PEDIVEND = ' + QPediVe.FieldByName('ID_PEDUNIF_ORIGEM').AsString;
          sqlItensUnifica.Execute;
        end;

        SBCancelClick(self);
        QPediVe.Refresh;
        Exit;
      end;
    end;

    if (qryClie.FieldByName('FL_TIPOBLOQCLIE').AsString = 'CI') or
    (qryClie.FieldByName('FL_TIPOBLOQCLIE').AsString = 'AB') then
    begin
      FrmPrincipal.corrigelimite(QPediVe['ID_CLIENTE'], False,0);
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
        QPediVe.FieldByName('FL_STATPEDIVEND').AsString := 'LM';
        QPediVe.Post;
        QPediVe.ApplyUpdates;
        QPediVe.CommitUpdates;

        if QPediVe.FieldByName('ID_PEDUNIF_ORIGEM').AsInteger <> 0 then
        begin
          sqlItensUnifica.SQL.Clear;
          sqlItensUnifica.SQL.Text := 'UPDATE PEDIDO_VENDA SET FL_STATPEDIVEND = ''CN'', ID_PEDUNIF_DESTINO = ' + QPediVeID_PEDIVEND.AsString +
          'WHERE ID_PEDIVEND = ' + QPediVe.FieldByName('ID_PEDUNIF_ORIGEM').AsString;
          sqlItensUnifica.Execute;

          sqlItensUnifica.SQL.Clear;
          sqlItensUnifica.SQL.Text := 'DELETE FROM CA_LIMITECRED WHERE ID_PEDIVEND = ' + QPediVe.FieldByName('ID_PEDUNIF_ORIGEM').AsString;
          sqlItensUnifica.Execute;
        end;

        SBCancelClick(self);
        QPediVe.Refresh;

        Exit;

      end;
    end;

    if QPediVe['FL_VALIDA_TABPRECO'] <> 'S' then
    begin

      if QryClie.FieldByName('ID_GRUPCLIE').Value > 0 then
        sWhereTabPreco := 'C.ID_GRUPCLIE = ' + QryClie.FieldByName('ID_GRUPCLIE').AsString
      else
        sWhereTabPreco := 'P.ID_PEDIVEND = ' + QPediVe.FieldByName('ID_PEDIVEND').AsString;

      qryTemp.Close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Text := 'SELECT SUM(PI.QN_EMBAITEMPEDIVEND) AS QTDE FROM PEDIDO_VENDA P ' +
                          'INNER JOIN CLIENTE C ON (C.ID_CLIENTE = P.ID_CLIENTE) ' +
                          'INNER JOIN PEDIDO_VENDA_ITEM PI ON (PI.ID_PEDIVEND = P.ID_PEDIVEND) ' +
                          'WHERE P.FL_STATPEDIVEND <> ''FE'' AND P.FL_PNF = ''N'' AND ' +
                          'TO_DATE(P.DT_ENTRPEDIVEND,''DD/MM/YY'') >= (SELECT (TO_DATE(SYSDATE,''DD/MM/YY'')) FROM DUAL) AND ' + sWhereTabPreco;

      qryTemp.Open;

      if (QryClie.FieldByName('OP_SIMPLES_NACIONAL').AsString <> 'S') OR (QrTipoPed.FieldByName('FL_VALIDA_SIMPLES_NAC').AsString = 'N') then
      begin
        if qryTemp.FieldByName('QTDE').Value <= 4 then
          nColunaTabPreco := 0
        else if qryTemp.FieldByName('QTDE').Value <= 10 then
          nColunaTabPreco := 1
        else if qryTemp.FieldByName('QTDE').Value <= 30 then
          nColunaTabPreco := 2
        else if qryTemp.FieldByName('QTDE').Value <= 50 then
          nColunaTabPreco := 3
        else if qryTemp.FieldByName('QTDE').Value <= 100 then
          nColunaTabPreco := 4
        else
          nColunaTabPreco := 5;
      end
      else
      begin
        if qryTemp.FieldByName('QTDE').Value <= 4 then
          nColunaTabPreco := 6
        else if qryTemp.FieldByName('QTDE').Value <= 10 then
          nColunaTabPreco := 7
        else if qryTemp.FieldByName('QTDE').Value <= 30 then
          nColunaTabPreco := 8
        else if qryTemp.FieldByName('QTDE').Value <= 50 then
          nColunaTabPreco := 9
        else if qryTemp.FieldByName('QTDE').Value <= 100 then
          nColunaTabPreco := 10
        else
          nColunaTabPreco := 11;
      end;

      {FABRICIO - 15/06/2022 - MOTIVO: NÃO VALIDAR PREÇO AOS SABADOS E DOMINGOS - EMAIL JESSICA 15/06/22}
//      if not((dayofweek(now)) in [1,7]) then // sábado e domingo nao valida preço
//      begin
      if fValidaPrecoTabela(nColunaTabPreco) then
      begin
        if Application.MessageBox('O Pedido possue itens que estão com seu valor de Venda abaixo do definido pela Tabela de Preço.' + #13 + #10 +
          'Deseja continuar? ', PChar(FrmPedVenda.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
        begin
          Try
            frmJustificativaPrecoTab:=TfrmJustificativaPrecoTab.Create(nil);
            frmJustificativaPrecoTab.ShowModal;
            if frmJustificativaPrecoTab.iCodMotivo = 0 then
            begin
              SBCancelClick(Self);
              Exit;
            end
            else
            begin
              QPediVe['FL_VALIDA_TABPRECO'] := 'A'; // Pedido deverá passar pela validação de Preço
              QPediVe['FL_STATPEDIVEND'] := 'VP'; // Pedido deverá passar pela validação de Preço
            end;
          Except;
            frmJustificativaPrecoTab.Free;
          End;
        end
        else
        begin
          SB_EditarClick(Sender);
          SBDelClick(Sender);
          Abort;
        end;
      end;
//      end;
    end;
  end;

  ValidaInformacoesCTE();

  try
    QPediVe.Post;
    QPediVe.ApplyUpdates;
    QPediVe.CommitUpdates;
    QryTemp.Close;
    QryClie.Close;
    Sb_Sair.Enabled := true;
    VPESSOCLI := '';

    if QPediVe.FieldByName('ID_PEDUNIF_ORIGEM').AsInteger <> 0 then
    begin
      sqlItensUnifica.SQL.Clear;
      sqlItensUnifica.SQL.Text := 'UPDATE PEDIDO_VENDA SET FL_STATPEDIVEND = ''CN'', ID_PEDUNIF_DESTINO = ' + QPediVeID_PEDIVEND.AsString +
      'WHERE ID_PEDIVEND = ' + QPediVe.FieldByName('ID_PEDUNIF_ORIGEM').AsString;
      sqlItensUnifica.Execute;

      sqlItensUnifica.SQL.Clear;
      sqlItensUnifica.SQL.Text := 'DELETE FROM CA_LIMITECRED WHERE ID_PEDIVEND = ' + QPediVe.FieldByName('ID_PEDUNIF_ORIGEM').AsString;
      sqlItensUnifica.Execute;
    end;

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
  Sb_Sair.Enabled:= True;

  IF VDPNF then
    SB_PNF.Enabled := True;

  PageControl1.Pages[0].TabVisible:=true;
  PageControl1.Pages[1].TabVisible:=true;
  PageControl1.Pages[2].TabVisible:=true;
  PageControl1.Pages[3].TabVisible:=true;
  PageControl1.Pages[4].TabVisible:= (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0);  //documentos referenciados
  PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

  PageControl1.Pages[0].Enabled := true;
  PageControl1.Pages[1].Enabled := true;
  PageControl1.Pages[2].Enabled := true;
  PageControl1.Pages[3].Enabled := true;
  PageControl1.Pages[4].Enabled := true;
  PageControl1.Pages[5].Enabled := True;

  // Mudamos para a guia detalhes
  TsDetalhe.Show;
  mniValidar.Enabled := False;
  mniTransfer.Enabled := False;
  QItem.Close;

 // Impedimos o acesso aos campos de edição
  edtDataPedi.Enabled := False;
  edtDataEntr.Enabled := False;
  DBIE_EXTERNO.Enabled := False;
  edtCodiClie.Enabled := False;
  DBCVen.Enabled := False;
  DBTipVen.Enabled := False;
  DBLPedidoVenda.Enabled := False;
  cbxEndeEntr.Enabled := False;
  CBxCidPorto.Enabled := False;
  CBxPais.Enabled := False;
  CBxPedArm.Enabled := False;
  DBPlaca.Enabled := False;
  Btplaca.Enabled := False;
  btn_PesqLote.Enabled := False;
  BPesqDt.Enabled := False;
  BPesqDtEntre.Enabled := False;
  DBCForPg.Enabled := False;
  DBLFormaPagto.Enabled := False;
  DBInstCob.Enabled := False;
  DBLInstCobranca.Enabled := False;
  DBSitCob.Enabled := False;
  DBLSitCobranca.Enabled := False;
  DBLTipoCobranca.Enabled := False;
  DBLConta.Enabled := False;
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

  DBLConta.Enabled:= False;
  DBPlaca.Enabled := False;
  Btplaca.Enabled := False;
  btn_PesqLote.Enabled := False;
  BPesqDt.Enabled := False;
  BPesqDtEntre.Enabled := False;
  DBIE_EXTERNO.Enabled := False;
  DBArmazena.Enabled := False;
  DBMemo1.Enabled := False;
  DBMemo2.Enabled := False;
  edtTomadorID.Enabled := False;
  edtTomador.Enabled := False;
  edtRemetenteID.Enabled := False;
  edtRemetente.Enabled := False;
  edtDestinatarioID.Enabled := False;
  edtDestinatario.Enabled := False;
  btnSelecionaRemetente.Enabled := False;
  btnSelecionaDestinatario.Enabled := False;
  VItemInclui:='N';
  QPediVe.Refresh;
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


procedure TFrmPedVenda.QItem1AfterInsert(DataSet: TDataSet);
begin
  // Chamamos a função que controla o crédito anterior à alteração
  ContrCrediAnter(Self);
end;

procedure TFrmPedVenda.QItem1AfterDelete(DataSet: TDataSet);
begin
  // Chamamos a função que controla o crédito anterior à alteração
  ContrCrediAnter(Self);

end;

procedure TFrmPedVenda.QItem1AfterEdit(DataSet: TDataSet);
begin
  // Chamamos a função que controla o crédito anterior à alteração
  ContrCrediAnter(Self);

end;

procedure TFrmPedVenda.CRTemp_QPediVeAfterEdit(DataSet: TDataSet);
begin
  // Chamamos a função que controla o crédito anterior à alteração
  ContrCrediAnter(Self);
end;

procedure TFrmPedVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
// if (KEY=(key_F2)) then
// begin
//   ShowMessage('Tecla F2 pressionada.');
// end;

 //tecla Alt
 if (KEY=4131) then
 begin
   valt:=True;
 end;
 //Teclas Alt+I
 if (KEY=73) and (valt=True) then
 begin
  If FrmPedVenda.Showing then
    If FrmPedVenda.SBNovo.Enabled=True then
       FrmPedVenda.SBNovoClick(sender);
   valt:=False;
 end;
 //Teclas Alt+G
 if (KEY=71) and (valt=True) then
 begin
   If FrmPedVenda.SBSalva.Enabled = True then
     FrmPedVenda.SBSalvaClick(Self);
   valt:=False;
 end;
 if (KEY=86) and (valt=True) then
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
  edtQtdeEmba.Color := clSilver;
end;

procedure TFrmPedVenda.edtPrecUnitBrutEnter(Sender: TObject);
begin
  edtPrecUnitBrut.Color:= clSilver;
end;

procedure TFrmPedVenda.DBCodMatEmbaEnter(Sender: TObject);
begin
  DBCodMatEmba.Color:= clSilver;
//  Item := DBCodMatEmba.TextHint;
end;

procedure TFrmPedVenda.edtPrecUnitBrutExit(Sender: TObject);
begin
  edtPrecUnitBrut.color:=clWindow;
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
  if QPediVe.RecordCount > 0 then
  begin

    if (QPediVeFL_CORTE.Value = 'S') and ((PageControl1.ActivePage = TSItem) or (PageControl1.ActivePage = TsDetalhe) or (PageControl1.ActivePage = TsLista) or (PageControl1.ActivePage = tabCTE)) then
    Begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Pedido já passou pelo sistema de corte e não permite exclusão.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
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
        Application.MessageBox('Pedido em trâmite de Carga, alteração não permitida.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        exit;
      end;
    end;


    {//VERIFICA SE O USUÁRIO DA EXCLUSÃO É O MESMO DA DIGITAÇÃO
    if QPediVe['ID_USUASIST_DIGIPEDIVEND'] <> gi_CodiUsuaSist then
    begin
      Application.MessageBox('Exclusão válida somente para usuário digitador do Pedido.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      exit;
    end;}


    //If (QPediVe['FL_STATPEDIVEND'] = 'AV') OR (QPediVe['FL_STATPEDIVEND'] = 'AB') OR (QPediVe['FL_STATPEDIVEND'] = 'VP')then
    If (QPediVe['FL_STATPEDIVEND'] = 'AV') OR (QPediVe['FL_STATPEDIVEND'] = 'VP') OR (QPediVe['FL_STATPEDIVEND'] = 'LM')then
      BEGIN
        If TsLista.Showing then
          TsDetalhe.Show;

        Screen.Cursor := crDefault;
        if (Application.MessageBox('Deseja realmente Excluir esse Pedido?           ', PChar(FrmPedVenda.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES) then
        begin
          Vid_Cliente := QPediVe['ID_CLIENTE'];
          VId_Pedivend:= QPediVe['ID_PEDIVEND'];
          If (TsDetalhe.Showing) or (tabCTE.Showing) then
            begin

              QrDireitos.Close;
              QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
              QrDireitos.ParamByName('VRECUR').AsInteger := 7;
              QrDireitos.Open;

              if QrDireitos.IsEmpty then
              begin
                Application.MessageBox('Usuário sem permissão de Exclusão de Registro.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
                exit;
              end;

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

              if (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S') then
              begin
                OSQL.SQL.Clear;
                OSQL.SQL.Text := 'DELETE CTE_COMPONENTES_SERVICO WHERE ID_PEDIVEND = :ID_PEDIVEND';
                OSQL.ParamByName('ID_PEDIVEND').AsInteger := QPediVe['ID_PEDIVEND'];
                OSQL.Execute;

                AbreQueryComParametro(QryCTECompServ, 'ID_PEDIVEND', QPediVe['ID_PEDIVEND']);

              end;

              if QPediVeID_PEDIREPROGRAMADO.AsString <> '' then
              begin
                OSQL.SQL.Clear;
                OSQL.SQL.Text := 'UPDATE PEDIDO_VENDA SET FL_REPROGRAMADO = ''N'' WHERE ID_PEDIVEND = ' + QPediVeID_PEDIREPROGRAMADO.AsString;
                OSQL.Execute;
              end;

              // Apagamos o registro da query principal
              QPediVe.Delete;
              QPediVe.ApplyUpdates;
              QPediVe.CommitUpdates;

              if (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S') then
                QryPedidoVenda.Refresh;

              FrmPrincipal.corrigelimite(Vid_Cliente, False,0);

              PageControl1.Pages[0].Enabled := true;
              PageControl1.Pages[1].Enabled := true;
              PageControl1.Pages[2].Enabled := true;
              PageControl1.Pages[3].Enabled := true;
              PageControl1.Pages[4].Enabled := (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0);  //documentos referenciados
              PageControl1.Pages[5].Enabled := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

              PageControl1.Pages[0].TabVisible := true;
              PageControl1.Pages[1].TabVisible := true;
              PageControl1.Pages[2].TabVisible := true;
              PageControl1.Pages[3].TabVisible := true;
              PageControl1.Pages[4].TabVisible := (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0);  //documentos referenciados
              PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

            end
          else if TSItem.Showing  then
            begin
              If QItem.IsEmpty then
              Begin
                Application.MessageBox('Não existem registros de item para excluir.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
                exit;
              end;

              QrDireitos.Close;
              QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
              QrDireitos.ParamByName('VRECUR').AsInteger := 7;
              QrDireitos.Open;

              if QrDireitos.IsEmpty then
              begin
                Application.MessageBox('Usuário sem permissão de Exclusão de Registro.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
                exit;
              end;

              If (QPediVe['FL_STATPEDIVEND'] <> 'AB') then
              Begin
                If (QPediVe['FL_STATPEDIVEND'] <> 'AV') AND (QPediVe['FL_STATPEDIVEND'] <> 'LM') then
                begin
                  Application.MessageBox('Pedido que não está com Status AB ou AV, não permite exclusão.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
                  exit;
                end;
              end;
              PageControl1.Pages[0].Enabled := false;
              PageControl1.Pages[1].Enabled := false;
              PageControl1.Pages[2].Enabled := false;
              PageControl1.Pages[3].Enabled := true;
              PageControl1.Pages[4].Enabled := false;
              PageControl1.Pages[5].Enabled := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

              PageControl1.Pages[0].TabVisible := false;
              PageControl1.Pages[1].TabVisible := false;
              PageControl1.Pages[2].TabVisible := false;
              PageControl1.Pages[3].TabVisible := true;
              PageControl1.Pages[4].TabVisible := False;
              PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');

              mniValidar.Enabled := (QPediVeID_TIPOPEDIVEND.Value <> 14);
              mniTransfer.Enabled:= QPediVeID_TIPOPEDIVEND.Value = 14;

              Vlocal:=QPediVe.GetBookmark;

              QItem.Delete;
              QItem.ApplyUpdates;
              QItem.CommitUpdates;
              QPediVe.Edit;
              QPediVe.FieldByName('FL_STATPEDIVEND').AsString := 'AV';

              qryTemp.Close;
              qryTemp.SQL.Text := 'SELECT            '+
                                  '       SUM( (VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND) - NVL(VL_DESCITEM,0) ) VL_PEDIVEND,    '+
                                  '       round(SUM(VL_UNITBRUTITEMPEDIVEND * QN_PESOITEMPEDIVEND) -           '+
                                  '       SUM(VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND),2) VL_DESCPEDIVEND , COUNT(*)  ITENS'+
                                  '  FROM PEDIDO_VENDA_ITEM                                              '+
                                  ' WHERE ID_PEDIVEND = ' + IntToStr(QPediVe['ID_PEDIVEND']) + '         ';
              {qryTemp.SQL.Text := 'SELECT            '+
                                  '       SUM( (VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND) - NVL(VL_DESCITEM,0) ) VL_PEDIVEND,    '+
                                  '       round(SUM(VL_UNITBRUTITEMPEDIVEND * QN_PESOITEMPEDIVEND) -           '+
                                  '       SUM(VL_UNITITEMPEDIVEND * QN_PESOITEMPEDIVEND),' + IntToStr(nDecimal) + ') VL_DESCPEDIVEND , COUNT(*)  ITENS'+
                                  '  FROM PEDIDO_VENDA_ITEM                                              '+
                                  ' WHERE ID_PEDIVEND = ' + IntToStr(QPediVe['ID_PEDIVEND']) + '         ';}
              qryTemp.Open;

              if QryTemp.FieldByName('ITENS').Value = 0  then
              begin
                Screen.Cursor := crDefault;
                MessageDlg('Deve existir pelo menos um item !', mtWarning, [mbOk], 0);
                SBNovoClick (Self);
                Exit;
              end;

              QPediVe.FieldByName('VL_PEDIVEND').AsFloat := qryTemp.FieldByName('VL_PEDIVEND').AsFloat;
              QPediVe.FieldByName('VL_DESCPEDIVEND').AsFloat := qryTemp.FieldByName('VL_DESCPEDIVEND').AsFloat;

              QPediVe.Post;
              QPediVe.ApplyUpdates;
              QPediVe.CommitUpdates;

              FrmPrincipal.corrigelimite(Vid_Cliente, False,0);

              qryTemp.Close;

              DBPEDIVEND.Text := FloattoStr(VID_PEDIVEND);

              QItem.Close;
              QItem.ParamByName('Id_Pedivend').asFLOAT := VId_Pedivend;
              QItem.Open;
            end
          else if TsDocRef.Showing then
          Begin
            Qry_DocRef.Delete;
          End;
        end;
      END
    ELSE
    begin
      if QPediVeID_TIPOPEDIVEND.Value = 14 then
        Application.MessageBox('Pedido já Transferido para Estoque Refeitório. Exclusão não permitida.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION)
      else
        Application.MessageBox('Pedido já foi Finalizado ou Cancelado. Exclusão não permitida.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);

      Exit;
    end;
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
//  inc(xcolor);
//  if xcolor=2 then
//  begin
//    DBEdit8.Color := clRed;
//    xcolor := 0;
//  end
//  Else
//    DBEdit8.Color := clSilver;
end;

procedure TFrmPedVenda.TtulosemCartrio1Click(Sender: TObject);
begin
  TRY
  If not (QPediVe.IsEmpty) and (QPediVe.FieldByName('ID_CLIENTE').AsFLOAT <> 0) then
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
//    SBCupom.Visible:= True
  else
//    SBCupom.Visible:= False;

  //Ver Todos Lotes
  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 76;
  QrDireitos.Open;

  if not QrDireitos.IsEmpty then
     VerTodosLotes := True
  else
    VerTodosLotes  := False;

  //Autorizar Pedidos com Preço de item menor q a tabale
  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 80;
  QrDireitos.Open;

  if not QrDireitos.IsEmpty then
    btnValidaPreco.Enabled := True
  else
    btnValidaPreco.Enabled := False;

  QryConSaldo.Close;
  QryConSaldo.ParamByName('P_ID_USUARIO').Value:= gi_IdenUsua;
  QryConSaldo.Open;

  if QryConSaldo.IsEmpty then
    sbSaldo.Enabled:= False
  else
    sbSaldo.Enabled:= True;

  QryConSaldo.Close;

  QrDireitos.Close;
  QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
  QrDireitos.ParamByName('VRECUR').AsInteger := 89;
  QrDireitos.Open;

  if QrDireitos.IsEmpty then
    LancContaCaixa := False
  else
    LancContaCaixa := True;

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
//  SBCupom.Enabled:= False;
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

  IF NOT QPediVeSG_TIPOFRETPEDIVEND.IsNull then
    VSG_TIPOFRETPEDIVEND:= QPediVe['SG_TIPOFRETPEDIVEND'];
  IF NOT QPediVeID_TIPOLOGI.IsNull  then
    VID_TIPOLOGI:= QPediVe['ID_TIPOLOGI'];
  IF NOT QPediVePC_DESCPEDIVEND.IsNull then
    VPC_DESCPEDIVEND:= QPediVe['PC_DESCPEDIVEND'];
  IF NOT QPediVeVL_DESCPEDIVEND.IsNull then
    VVL_DESCPEDIVEND:= QPediVe['VL_DESCPEDIVEND'];
  IF NOT QPediVeQN_VOLUPEDIVEND.IsNull then
    VQN_VOLUPEDIVEND:= QPediVe['QN_VOLUPEDIVEND'];
  IF NOT QPediVeQN_EMBAPEDIVEND.IsNull then
    VQN_EMBAPEDIVEND:= QPediVe['QN_EMBAPEDIVEND'];
  IF NOT QPediVeQN_PESOPEDIVEND.IsNull then
    VQN_PESOPEDIVEND:= QPediVe['QN_PESOPEDIVEND'];
  IF NOT QPediVeQN_TARAPEDIVEND.IsNull then
    VQN_TARAPEDIVEND:= QPediVe['QN_TARAPEDIVEND'];
  IF NOT QPediVeQN_EMBAEXPEPEDIVEND.IsNull then
    VQN_EMBAEXPEPEDIVEND:= QPediVe['QN_EMBAEXPEPEDIVEND'];
  IF NOT QPediVeQN_PESOPADREXPEPEDIVEND.IsNull then
    VQN_PESOPADREXPEPEDIVEND:= QPediVe['QN_PESOPADREXPEPEDIVEND'];
  IF NOT QPediVeQN_TARAREALEXPEPEDIVEND.IsNull then
    VQN_TARAREALEXPEPEDIVEND:= QPediVe['QN_TARAREALEXPEPEDIVEND'];
  IF NOT QPediVeQN_PESOREALEXPEPEDIVEND.IsNull then
    VQN_PESOREALEXPEPEDIVEND:= QPediVe['QN_PESOREALEXPEPEDIVEND'];
  IF NOT QPediVeQN_FATOFRETABAT_PEDIVEND.IsNull then
    VQN_FATOFRETABAT_PEDIVEND:= QPediVe['QN_FATOFRETABAT_PEDIVEND'];
  IF NOT QPediVeFL_ESPEPEDIVEND.IsNull then
    VFL_ESPEPEDIVEND:=  QPediVe['FL_ESPEPEDIVEND'];
  IF NOT QPediVeNR_ORDEPEDIVEND.IsNull then
    VNR_ORDEPEDIVEND:=  QPediVe['NR_ORDEPEDIVEND'];
  IF NOT QPediVeVL_QUEBPEDIVEND.IsNull then
    VVL_QUEBPEDIVEND:=  QPediVe['VL_QUEBPEDIVEND'];
  IF NOT QPediVeVL_OUTRAJUSPEDIVEND.IsNull then
    VVL_OUTRAJUSPEDIVEND:= QPediVe['VL_OUTRAJUSPEDIVEND'];
  IF NOT QPediVeVL_DEVOPEDIVEND.IsNull then
    VVL_DEVOPEDIVEND:=  QPediVe['VL_DEVOPEDIVEND'];
  IF NOT QPediVeQN_PESOPADRDEVOPEDIVEND.IsNull then
    VQN_PESOPADRDEVOPEDIVEND:=  QPediVe['QN_PESOPADRDEVOPEDIVEND'];
  IF NOT QPediVeQN_PESOREALDEVOPEDIVEND.IsNull then
    VQN_PESOREALDEVOPEDIVEND:=  QPediVe['QN_PESOREALDEVOPEDIVEND'];
  IF NOT QPediVeQN_PESOREALDEVOPEDIVEND.IsNull then
    VQN_PESOREALDEVOPEDIVEND:=  QPediVe['QN_PESOREALDEVOPEDIVEND'];
  IF NOT QPediVeQN_TARAREALDEVOPEDIVEND.IsNull then
    VQN_TARAREALDEVOPEDIVEND:=  QPediVe['QN_TARAREALDEVOPEDIVEND'];
  IF NOT QPediVeQN_EMBADEVOPEDIVEND.IsNull then
    VQN_EMBADEVOPEDIVEND :=  QPediVe['QN_EMBADEVOPEDIVEND'];
  IF NOT QPediVeID_CONTA.IsNull then
    VID_CONTA:=  QPediVe['ID_CONTA'];
  IF NOT QPediVeID_CLIENTE.IsNull then
    VID_CLIENTE:= QPediVe['ID_CLIENTE'];
  IF NOT QPediVeID_VENDEDOR.IsNull then
    VID_VENDEDOR:= QPediVe['ID_VENDEDOR'];
  IF NOT QPediVeID_TIPOPEDIVEND.IsNull  then
    VID_TIPOPEDIVEND:= QPediVe['ID_TIPOPEDIVEND'];
  IF NOT QPediVeID_FORMPAGA.IsNull then
    VID_FORMPAGA:= QPediVe['ID_FORMPAGA'];
  IF NOT QPediVeID_SITUCOBR.IsNull then
    VID_SITUCOBR:= QPediVe['ID_SITUCOBR'];
  IF NOT QPediVeID_INSTCOBR.IsNull then
    VID_INSTCOBR:= QPediVe['ID_INSTCOBR'];
  IF NOT QPediVeID_ENDECLIE_COBRANCA.IsNull then
    VID_ENDECLIE_COBRANCA:= QPediVe['ID_ENDECLIE_COBRANCA'];
  IF NOT QPediVeID_ENDECLIE_ENTREGA.IsNull then
    VID_ENDECLIE_ENTREGA:= QPediVe['ID_ENDECLIE_ENTREGA'];
  IF NOT QPediVeID_TIPOCOBR.IsNull then
    VID_TIPOCOBR:= QPediVe['ID_TIPOCOBR'];

  IF NOT QPediVeID_LOTEEDIPEDIVEND.IsNull then
    VID_LOTEEDIPEDIVEND:= QPediVe['ID_LOTEEDIPEDIVEND'];

  IF NOT QPediVeVL_SEGUPEDIVEND.IsNull then
    VVL_SEGUPEDIVEND:= QPediVe['VL_SEGUPEDIVEND'];

  IF NOT QPediVeVL_DESPPEDIVEND.IsNull then
    VVL_DESPPEDIVEND:= QPediVe['VL_DESPPEDIVEND'];

  IF NOT QPediVeVL_FRETPEDIVEND.IsNull then
    VVL_FRETPEDIVEND:= QPediVe['VL_FRETPEDIVEND'];

  IF NOT QPediVeVL_PEDIVEND.IsNull then
    VVL_PEDIVEND:= QPediVe['VL_PEDIVEND'];

  IF NOT QPediVeGN_ESPEPEDIVEND.IsNull then
    VGN_ESPEPEDIVEND:= QPediVe['GN_ESPEPEDIVEND'];

  IF NOT QPediVeGN_MARCPEDIVEND.IsNull then
    VGN_MARCPEDIVEND:= QPediVe['GN_MARCPEDIVEND'];

  IF NOT QPediVeGN_OBSEPADR_PEDIVEND.IsNull then
    VGN_OBSEPADR_PEDIVEND:= QPediVe['GN_OBSEPADR_PEDIVEND'];

  IF NOT QPediVeGN_OBSEEXPEPEDIVEND.IsNull then
    VGN_OBSEEXPEPEDIVEND:= QPediVe['GN_OBSEEXPEPEDIVEND'];

  IF NOT QPediVeGN_OBSEPEDIVEND.IsNull then
    VGN_OBSEPEDIVEND:= QPediVe['GN_OBSEPEDIVEND'];

  IF NOT QPediVeVL_FATUPEDIVEND.IsNull then
    VVL_FATUPEDIVEND:= QPediVe['VL_FATUPEDIVEND'];

  IF NOT QPediVeFX_PEDIVEND.IsNull then
    VFX_PEDIVEND:= QPediVe['FX_PEDIVEND'];

  IF NOT QPediVeNR_PEDIVEND.IsNull then
    VNR_PEDIVEND:= QPediVe['NR_PEDIVEND'];

  IF NOT QPediVeIE_PEDIVEND.IsNull then
    VIE_PEDIVEND:= QPediVe['IE_PEDIVEND'];

  IF NOT QPediVePC_BONIPEDIVEND.IsNull then
    VPC_BONIPEDIVEND:= QPediVe['PC_BONIPEDIVEND'];

  IF NOT QPediVeCPORCOMIS.IsNull then
    VCPORCOMIS:= QPediVe['CPORCOMIS'];

  IF NOT QPediVeFL_CORTE.IsNull then
    VFL_CORTE:= QPediVe['FL_CORTE'];

  IF NOT QPediVeFL_PNF.IsNull then
     VFL_PNF := QPediVe['FL_PNF'];

  IF NOT QPediVeFL_NFCOMPLEMENTAR.IsNull then
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
  QPediVe['FL_ESPEPEDIVEND'] := VFL_ESPEPEDIVEND;
  QPediVe['NR_ORDEPEDIVEND'] := VNR_ORDEPEDIVEND;
  QPediVe['VL_QUEBPEDIVEND'] := VVL_QUEBPEDIVEND;
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
  QPediVe.edit;
  edtCodiClieExit(nil);
  VCopia := True;
end;


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
  If (QPediVeFL_STATPEDIVEND.Value = 'AB') then
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
  DBPlaca.Color:= clSilver;
end;

procedure TFrmPedVenda.CBxCidPortoEnter(Sender: TObject);
begin
  CBxCidPorto.Color:= clSilver;
end;

procedure TFrmPedVenda.CBxPaisEnter(Sender: TObject);
begin
  CBxPais.Color:= clSilver;
end;

procedure TFrmPedVenda.DBPlacaExit(Sender: TObject);
begin
  DBPlaca.Color:= clWindow;
end;

procedure TFrmPedVenda.CBxCidPortoExit(Sender: TObject);
begin
  CBxCidPorto.Color:= clWindow;
end;

procedure TFrmPedVenda.CBxPaisExit(Sender: TObject);
begin
  CBxPais.Color:= clWindow;
end;

procedure TFrmPedVenda.DBPlacaChange(Sender: TObject);
begin
  If (QPediVeFL_STATPEDIVEND.Value = 'AB') then
      VEDITPLACA:=TRUE;
end;

procedure TFrmPedVenda.CRTemp_QPediVeID_CONTAChange(Sender: TField);
begin
  If (QPediVeFL_STATPEDIVEND.Value = 'AV') OR (QPediVeFL_STATPEDIVEND.Value = 'AB') or (QPediVeFL_STATPEDIVEND.Value = 'LM') then
  begin
    mniValidar.Enabled := (QPediVeID_TIPOPEDIVEND.Value <> 14);
    mniTransfer.Enabled:= QPediVeID_TIPOPEDIVEND.Value = 14;
  end;
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
//  SBCupom.Enabled:= False;
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
  if QrTipoOperFL_ENTRSAIDTIPOOPER.AsString = 'E' then
    QPediVe['SG_TIPOFRETPEDIVEND'] := '0'
  else
    QPediVe['SG_TIPOFRETPEDIVEND'] := '3';

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
  CBxPedArm.Color:= clSilver;
end;

procedure TFrmPedVenda.CBxPedArmExit(Sender: TObject);
begin
  CBxPedArm.Color:= clWindow;
end;

procedure TFrmPedVenda.DBCodCidEntreEnter(Sender: TObject);
begin
  DBCodCidEntre.Color:= clSilver;
end;

procedure TFrmPedVenda.DBCodCidEntreExit(Sender: TObject);
begin
  DBCodCidEntre.Color:= clWindow;
end;

procedure TFrmPedVenda.SB_EditarClick(Sender: TObject);
var
  i : Integer;
begin
  if QPediVe.RecordCount > 0 then
  begin

    if PageControl1.ActivePage = tabCTE then
    begin

      PageControl1.Pages[INDICE_ABA_CTE].Enabled := True;
      HabilitaCamposInformacoesCTE(True);

      for i := 0 to PageControl1.PageCount - 1 do
        PageControl1.Pages[i].TabVisible := False;

      PageControl1.Pages[INDICE_ABA_CTE].TabVisible := True;

      If not (QryPedidoVenda.State in [DSEDIT,DSINSERT]) then
          QryPedidoVenda.Edit;

      SB_PRIMEIRO.Enabled:= False;
      SB_ANTERIOR.Enabled:= False;
      SB_PROXIMO.Enabled:= False;
      SB_ULTIMO.Enabled:= False;
      SB_Editar.Enabled := False;
      SBNovo.Enabled := False;
      SBDel.Enabled := False;
      SBSalva.Enabled := True;
      SBCancel.Enabled := True;
      Exit;
    end;

    if (QPediVeFL_VALIDA_TABPRECO.AsString) = 'S' then
    Begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Pedido já passou pela Validação de Preço. Alteração não permitida.', PChar(FrmPedVenda.Caption),MB_OK + MB_ICONINFORMATION);
      Exit;
    end;

    if (QPediVeFL_CORTE.Value = 'S') then
    Begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Pedido já passou pelo sistema de corte. Alteração não permitida.',PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
    end;

    If not (QPediVeDT_FATUPEDIVEND.IsNull) and (gi_filial<>4) then
      Begin
        Application.MessageBox('Pedido já foi Faturado. Alteração não permitida.',PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        Screen.Cursor := crDefault;
        Exit;
      end
    else
    begin
      //Alterar embalagem e peso da NF Metal.
      if (gi_filial=4) or (gi_Filial=91) then
        begin
          DBEmbalagem.Color := clWindow;
          DBEmbalagem.ReadOnly := False;
          DBEmbalagem.Enabled := True;
          edtTotaEmba.Color := clWindow;
          edtTotaEmba.ReadOnly := False;
          edtTotaEmba.Enabled := True;
          DBPesoPed.Color := clWindow;
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

      If not (QPediVe.State in [DSEDIT,DSINSERT]) then
        QPediVe.Edit;

      VEDITA:=True;
      mniValidar.Enabled := (QPediVeID_TIPOPEDIVEND.Value <> 14);
      mniTransfer.Enabled:= QPediVeID_TIPOPEDIVEND.Value = 14;

      SB_PRIMEIRO.Enabled:= False;
      SB_ANTERIOR.Enabled:= False;
      SB_PROXIMO.Enabled:= False;
      SB_ULTIMO.Enabled:= False;
      SBSalva.Enabled:= True;
      SBCancel.Enabled:= True;

      PageControl1.Pages[0].TabVisible:= False;
      PageControl1.Pages[1].TabVisible:= False;
      PageControl1.Pages[2].TabVisible:= True;
      PageControl1.Pages[3].TabVisible:= True;
      PageControl1.Pages[4].TabVisible:= (Qry_TipoCFOP.RecordCount > 0) or (qry_TipoDocRef.RecordCount > 0);  //documentos referenciados
      PageControl1.Pages[5].TabVisible := (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S');
      PageControl1.Pages[2].Show;

      DBLConta.Enabled     := True;
      DBPlaca.Enabled      := True;
      Btplaca.Enabled      := True;
      btn_PesqLote.Enabled := True;
      BPesqDt.Enabled      := True;
      BPesqDtEntre.Enabled := True;
      DBIE_EXTERNO.Enabled := True;
      DBMemo1.Enabled      := True;

      pValidaPeriodoDigitacao;

      if (VLANCMULT = True) and (QPediVeID_TIPOPEDIVEND.Value = 15) then
      begin
        edtDataEntr.Enabled := True;
        BPesqDtEntre.Visible:= True;
      end;
      DBRTipoFrete.Enabled := True;
      CBxPais.Enabled      := True;
      rdg_NFComplementar.Enabled := True;

      If VEDITA_OBSNF then
        DBMemo2.Enabled := True;
    end;
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
      ( (QPediVeFL_STATPEDIVEND.Value = 'AV')OR(QPediVeFL_STATPEDIVEND.Value = 'AB') or (QPediVeFL_STATPEDIVEND.Value = 'LM') )
    then
    begin
      Mem_ObsExped.Enabled := true;
      Mem_ObsExped.Color := clWindow;
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
  end;


  if Qry_DocRef.State in [dsInsert,dsEdit] then
  begin
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
    Sb_Sair.Enabled   := Not(Em_IE);
    SB_Editar.Enabled := Not(Em_IE);

    if Em_IE then
      begin
        PageControl1.Pages[0].TabVisible := false;
        PageControl1.Pages[1].TabVisible := false;
        PageControl1.Pages[2].TabVisible := false;

        mniValidar.Enabled := (QPediVeID_TIPOPEDIVEND.Value <> 14);
        mniTransfer.Enabled:= QPediVeID_TIPOPEDIVEND.Value = 14;

        PageControl1.Pages[3].TabVisible := False;
        PageControl1.Pages[4].Enabled := true;
        PageControl1.Pages[4].TabVisible := true;
        PageControl1.Pages[5].TabVisible := False;
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

procedure TFrmPedVenda.QItem1BeforePost(DataSet: TDataSet);
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

        if QItemVL_UNITBRUTITEMPEDIVEND.Value < Qrprec.FieldByName(fRetornaColunaPreco).Value then
        begin
          if QrCredVendDIFERENCA.Value > 0 then
            begin
              if QItemVL_UNITBRUTITEMPEDIVEND.Value < RoundNExtend(Qrprec.FieldByName('VL_MINIITEMTABEPREC').Value,2) then
              {if QItemVL_UNITBRUTITEMPEDIVEND.Value < RoundNExtend(Qrprec.FieldByName('VL_MINIITEMTABEPREC').Value,nDecimal) then}
                begin
                  ShowMessage('Valor menor que o autorizado. O valor será alterado');
                  QItemVL_UNITBRUTITEMPEDIVEND.Value:= RoundNExtend(Qrprec.FieldByName('VL_MINIITEMTABEPREC').Value,2);
                  {QItemVL_UNITBRUTITEMPEDIVEND.Value:= RoundNExtend(Qrprec.FieldByName('VL_MINIITEMTABEPREC').Value,nDecimal);}
                end;
            end
          else if (QrCredVendDIFERENCA.Value <= 0) and (QItemVL_UNITBRUTITEMPEDIVEND.Value < RoundNExtend(Qrprec.FieldByName(fRetornaColunaPreco).Value,2)) then
          {else if (QrCredVendDIFERENCA.Value <= 0) and (QItemVL_UNITBRUTITEMPEDIVEND.Value < RoundNExtend(Qrprec.FieldByName(fRetornaColunaPreco).Value,nDecimal)) then}
            begin
              ShowMessage('Não existe crédito para dar desconto. O valor será alterado');
              QItemVL_UNITBRUTITEMPEDIVEND.Value:= Qrprec.FieldByName(fRetornaColunaPreco).Value + RoundNExtend(((Qrprec.FieldByName(fRetornaColunaPreco).Value * QItemPC_DESCITEMPEDIVEND.Value)/100),2);
              {QItemVL_UNITBRUTITEMPEDIVEND.Value:= Qrprec.FieldByName(fRetornaColunaPreco).Value + RoundNExtend(((Qrprec.FieldByName(fRetornaColunaPreco).Value * QItemPC_DESCITEMPEDIVEND.Value)/100),nDecimal);}
            end
          else
            QItemVL_UNITBRUTITEMPEDIVEND.Value:= Qrprec.FieldByName(fRetornaColunaPreco).Value + RoundNExtend(((Qrprec.FieldByName(fRetornaColunaPreco).Value * QItemPC_DESCITEMPEDIVEND.Value)/100),2);
            {QItemVL_UNITBRUTITEMPEDIVEND.Value:= Qrprec.FieldByName(fRetornaColunaPreco).Value + RoundNExtend(((Qrprec.FieldByName(fRetornaColunaPreco).Value * QItemPC_DESCITEMPEDIVEND.Value)/100),nDecimal);}
          AjustTotalItem(Self);
        end;
      end;
    end; //corte
  end;//pnf

  QItemVL_DIFERENCA.Value:= (QItemQN_PESOITEMPEDIVEND.Value * QItemVL_UNITITEMPEDIVEND.Value) - (QItemQN_PESOITEMPEDIVEND.Value * QItemVL_ITEMTABEPREC.Value);

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

procedure TFrmPedVenda.QItem1VL_UNITITEMPEDIVENDChange(Sender: TField);
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

procedure TFrmPedVenda.btnSelecionaRemetenteClick(Sender: TObject);
begin

  FrmOriPesq := TP_PESQUISA_CTE_REMETENTE;
  FrmPesqCliente:=TFrmPesqCliente.Create(Self);
  FrmPesqCliente.ShowModal;

end;

procedure TFrmPedVenda.btnSelecionaDestinatarioClick(Sender: TObject);
begin
  FrmOriPesq := TP_PESQUISA_CTE_DESTINATARIO;
  FrmPesqCliente:=TFrmPesqCliente.Create(Self);
  FrmPesqCliente.ShowModal;
end;

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
  Application.CreateForm(TFrmInfoCTE, FrmInfoCTE);
  FrmInfoCTE.idPedidoVenda := QPediVeID_PEDIVEND.AsInteger;

  if (QPediVeID_PEDIVEND.Value <> 0) and (QPediVeFL_STATPEDIVEND.Value <> 'FE') then
    FrmInfoCTE.modoTela := MODO_TELA_EDICAO
  else
    FrmInfoCTE.modoTela := MODO_TELA_VISUALIZACAO;

  FrmInfoCTE.Show;
end;

procedure TfrmPedVenda.ValidaInformacoesCTE();
begin
  if (QrTipoPed.FindField('FL_CTE') <> nil) and (QrTipoPed.FieldByName('FL_CTE').Value = 'S') then
  begin
    QryCTEPedVend.Close;
    QryCTEPedVend.ParamByName('ID_PEDIVEND').Value := QPediVeID_PEDIVEND.Value;
    QryCTEPedVend.Open;

    if QryCTEPedVend.RecordCount > 0 then
    begin

      if (QryCTEPedVendID_PRODUTO_PREDOMINANTE.IsNull) or
         (QryCTEPedVendGN_OUTRAS_CARACTERISTICAS.IsNull) or
         (QryCTEPedVendVL_TOTAL_MERCADORIA.IsNull) or
         (QryCTEPedVendID_UNIDMEDI.IsNull) or
         (QryCTEPedVendNM_TIPO_MEDIDA.IsNull) or
         (QryCTEPedVendQN_QUANTIDADE_CTE.IsNull) or
         (QryCTEPedVendQTD_COMPONENTES_SERVICO.Value = 0) then
      begin
        Screen.Cursor := crDefault;
        MessageDlg('Você precisa preencher todos os campos de Informação do CT-e para prosseguir.', mtWarning, [mbOk], 0);
        QPediVe.CancelUpdates;
        Abort;
      end
      else if (Qry_DocRef.RecordCount = 0) then
      begin
        Screen.Cursor := crDefault;
        MessageDlg('Você precisa preencher os Documentos Referenciados para prosseguir.', mtWarning, [mbOk], 0);
        QPediVe.CancelUpdates;
        Abort;
      end;
    end;
  end;
end;

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
  btnIncluirCTe.Enabled := enabled;
  btnExcluirCTe.Enabled := enabled;
  btn_ProdPredom.Enabled := enabled;
  QryPedidoVenda.ReadOnly := not enabled;
  QryMaterialEmbalagem.ReadOnly := not enabled;
  QryCTECompServ.ReadOnly := not enabled;
  QryUnidadeMedida.ReadOnly := not enabled;
end;


procedure TFrmPedVenda.edtValorKeyPress(Sender: TObject; var Key: Char);
begin

  if not (Key in [#8, '0'..'9', SEPARADOR_DECIMAL]) then
    Key := #0
  else if (Key = SEPARADOR_DECIMAL) and (Pos(Key, edtValor.Text) > 0) then
    Key := #0;

end;


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

    if not QryMaterialEmbalagem.Locate('ID_PRODMATEEMBA', VID_Prodmateemba , []) then
    begin
      MessageDlg('Código de produto inexistente.'+ VID_Prodmateemba + #10, mtWarning, [mbOk], 0);
      edtProdutoPredominante.Text := '';
      edtProdutoPredominante.SetFocus;
    end;
  end;
end;

procedure TfrmPedVenda.AbreQueryComParametro(qry : TOraQuery; paramName : string; paramValue : Double);
begin

  qry.Close;
  qry.ParamByName(paramName).Value := paramValue;
  qry.Open;

end;

procedure TFrmPedVenda.cbUnidadeMedidaExit(Sender: TObject);
begin
  edtTipoMedida.Text := QryUnidadeMedidaNM_TIPO_MEDIDA.Value;
end;

procedure TFrmPedVenda.btn_ProdPredomClick(Sender: TObject);
begin
  FrmOriPesq:=13;
  frmConsultaProdutos:=TfrmConsultaProdutos.Create(Self);
  frmConsultaProdutos.ShowModal;
  frmConsultaProdutos.Free;
end;

procedure TFrmPedVenda.tabCTEShow(Sender: TObject);
begin
  AbreQueryComParametro(QryPedidoVenda, 'ID_PEDIVEND', QPediVeID_PEDIVEND.Value);
  AbreQueryComParametro(QryCTECompServ, 'ID_PEDIVEND', QPediVeID_PEDIVEND.Value);
end;

procedure TFrmPedVenda.CRTemp_QPediVeAfterScroll(DataSet: TDataSet);
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
  if ( QPediVe.FieldByName(Column.FieldName).FieldKind in [fkData] ) then
  begin
    OrdemColuna := Column.FieldName;
    if ( OrdemColuna <> Column.FieldName ) OR ((OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente')  ) then
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
Var
  CNPJ, Lote : String;
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
  if ( QPediVeID_CARGEXPE.AsInteger = 0 ) AND( NOT ( QItem.State IN[dsinsert,dsedit] )) AND
  ( (QPediVeFL_STATPEDIVEND.Value = 'AV') OR (QPediVeFL_STATPEDIVEND.Value = 'AB') OR (QPediVeFL_STATPEDIVEND.Value = 'LM') )
  then
  begin
    Mem_ObsExped.Enabled := true;
    Mem_ObsExped.Color := clWindow;
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
    Application.MessageBox('Não é permitido lançamento de Pedido com Data de Entrega Retroativa.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
    SBCancelClick(self);
    Exit;
  end
  else
  begin
    if (dtEntregaInformada > dtMaxEntrega) then
    begin
        Application.MessageBox('Não é permitido lançamento de Pedido com Data de Entrega Futura, exceto Sábados, Domigos e Feriados.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        SBCancelClick(self);
        Exit;
    end;
  end;
end;

procedure TFrmPedVenda.pValidaPeriodoDigitacao;
begin
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT TO_CHAR(SYSDATE,''HH24:MI'') AS HORA_ATUAL FROM DUAL';
  qryTemp.Open;

  {FABRICIO - 16/06/2022 - MOTIVO: VALMOR ALTEROU O LIMITE DO HORÁRIO DE DIGITACAO DOS PEDIDOS, INDEPENDENTE DA PRODUCAO - EMAIL 15/06/22}
  if (TimeToStr(QryTemp.FieldByName('HORA_ATUAL').AsDateTime) >= '19:15'){'18:30')} AND
     (TimeToStr(QryTemp.FieldByName('HORA_ATUAL').AsDateTime) <= '21:00')
  then
  begin
    //Verifica o tempo entre o término da Produção e a hora atual
    {qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Text :='SELECT EXTRACT(DAY FROM 24 * 60 * (' +
                       'SYSDATE - ' +
                       '(SELECT DT_REGIPROD AS FIM_PROD FROM PRODUCAO_REGISTRO ' +
                       'WHERE ID_REGIPROD = (SELECT MAX(ID_REGIPROD) FROM PRODUCAO_REGISTRO WHERE TO_CHAR(DT_REGIPROD,''DD/MM/YY'') = TO_CHAR(SYSDATE,''DD/MM/YY'')))' +
                       ')) as MINUTOS FROM DUAL';
    qryTemp.Open;

    if QryTemp.FieldByName('MINUTOS').AsInteger >= 60 then
    begin}

    QrDireitos.Close;
    QrDireitos.ParamByName('vusuario').AsInteger := gi_IdenUsua;
    QrDireitos.ParamByName('VRECUR').AsInteger := 85;
    QrDireitos.Open;

    //if (gi_IdenUsua <> 79) OR VEDITA then    // usuario não é JESSICA  ou Pedido ja havia sido digitado antes
    if (QrDireitos.IsEmpty) or (VEDITA) then
    begin
      Application.MessageBox('Período para digitação/ alteração do Pedido excedido.             ', PChar(FrmPedVenda.Caption),MB_OK + MB_ICONINFORMATION);
      SBCancelClick(Self);
      Abort;
    end
    else
    begin
      if Application.MessageBox('Período para digitação excedido. Prosseguir com Lançamento do Pedido?', PChar(FrmPedVenda.Caption),MB_YESNO + MB_ICONINFORMATION) = IDNO then
        Abort
      else
      begin
        grpPedidoAposHorario.Enabled := True;
      end;
    end;
    //end;
  end;
end;

procedure TFrmPedVenda.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid2.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmPedVenda.btnIncluirCTeClick(Sender: TObject);
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

    QryCTECompServ.Insert;
    QryCTECompServID_PEDIVEND.Value := QPediVeID_PEDIVEND.Value;
    QryCTECompServNM_NOME.Value := edtNome.Text;
    QryCTECompServVL_VALOR.Value := StrToFloatDef(edtValor.Text, 0);
    QryCTECompServ.Post;
    edtNome.Text := '';
    edtValor.Text := '';
  end
  else
  begin
    ShowMessage('Só é possível ter ' + IntToStr(MAX_COMP_SERVICO) + ' componente(s) do valor da prestação de serviço!');
  end;
end;

procedure TFrmPedVenda.btnExcluirCTeClick(Sender: TObject);
begin

  if QryCTECompServ.RecordCount > 0 then
  begin
    if MessageDlg('Confirma a exclusão deste componente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      QryCTECompServ.Delete;
  end
  else
  begin
    ShowMessage('Não existem registros para serem excluídos!');
  end;

end;

function TFrmPedVenda.fValidaPrecoTabela(nQtde:Integer): Boolean;
var
  sColuna : string;
begin
  sDescItem:= '';

  case nQtde of
    0: sColuna := 'VL_0A5CX';
    1: sColuna := 'VL_10CX';
    2: sColuna := 'VL_11A30CX';
    3: sColuna := 'VL_31A50CX';
    4: sColuna := 'VL_51A100CX';
    5: sColuna := 'VL_100CX';
    6: sColuna := 'VL_0A5CX_S';
    7: sColuna := 'VL_10CX_S';
    8: sColuna := 'VL_11A30CX_S';
    9: sColuna := 'VL_31A50CX_S';
    10: sColuna := 'VL_51A100CX_S';
    11: sColuna := 'VL_100CX_S';
  end;

  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT ID_MATERIAL, ' + sColuna + ' AS COLUNA FROM TABELA_PRECO_ITEM WHERE ID_TABEPREC = ' + QrPreID_TABEPREC.AsString + ' ORDER BY ID_MATERIAL';

  if QPediVeID_TIPOPEDIVEND.AsInteger in [6,7,18] then
  begin
    QItem.CLOSE;
    QItem.ParamByName('ID_PEDIVEND').AsFloat := QPediVeID_PEDIVEND.Value;
    QItem.Open;
    QItem.First;

    while not QItem.Eof do
    begin
      qryTemp.Filtered := False;
      qryTemp.Filter := 'ID_MATERIAL = ' + QItemID_MATERIAL.AsString;
      qryTemp.Filtered := True;
      qryTemp.Open;

      if (QryTemp.FieldByName('COLUNA').Value > QItemVL_UNITBRUTITEMPEDIVEND.Value) then
      begin
        sDescItem:= sDescItem + QItemNM_PRODREDUMATEEMBA.AsString;
        if not QItem.Eof then
          sDescItem:= sDescItem + ', ';
      end;

      qryTemp.Close;
      qryTemp.Filtered := False;
      qryTemp.Filter:= '';
      qryTemp.Filtered := True;
      qryTemp.Open;

      QItem.Next;
    end;
  end;

  Result := (Length(Trim(sDescItem))>0);
  sDescItem:= '';

end;

procedure TFrmPedVenda.btnValidaPrecoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmAtualizaPedidoTabPreco, frmAtualizaPedidoTabPreco);
  frmAtualizaPedidoTabPreco.ShowModal;
  frmAtualizaPedidoTabPreco.Free;
end;

function TFrmPedVenda.fRetornaColunaPreco: string;
begin
  qryClie.Close;
  qryClie.SQL.clear;
  qryClie.SQL.Text := 'SELECT C.VL_LIMICREDCLIE, C.VL_CREDATUACLIE, C.VL_CREDUSADCLIE, C.VL_CREDESPECLIE, C.OP_SIMPLES_NACIONAL, '+
                      'C.VL_CREDESPEUSADCLIE, C.FL_TIPOBLOQCLIE, C.QN_TITUVENCCLIE, C.VL_TITUVENCCLIE, C.ID_GRUPCLIE, C.FL_FUNCIONARIO '+
                      'FROM CLIENTE C WHERE C.ID_CLIENTE = ' + IntToStr(QPediVe['ID_CLIENTE']);
  qryClie.Open;

  if (QryClie.FieldByName('ID_GRUPCLIE').Value > 0)  AND (QryClie.FieldByName('OP_SIMPLES_NACIONAL').Value <> 'F') then
    sWhereTabPreco := 'C.ID_GRUPCLIE = ' + QryClie.FieldByName('ID_GRUPCLIE').AsString
  else
    sWhereTabPreco := 'P.ID_PEDIVEND = ' + QPediVe.FieldByName('ID_PEDIVEND').AsString;

  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT SUM(PI.QN_EMBAITEMPEDIVEND) AS QTDE FROM PEDIDO_VENDA P ' +
                      'INNER JOIN CLIENTE C ON (C.ID_CLIENTE = P.ID_CLIENTE) ' +
                      'INNER JOIN PEDIDO_VENDA_ITEM PI ON (PI.ID_PEDIVEND = P.ID_PEDIVEND) ' +
                      'WHERE P.FL_STATPEDIVEND <> ''FE'' AND P.FL_PNF = ''N'' AND ' +
                      'TO_DATE(P.DT_ENTRPEDIVEND,''DD/MM/YY'') >= (SELECT (TO_DATE(SYSDATE,''DD/MM/YY'')) FROM DUAL) AND ' + sWhereTabPreco;

  qryTemp.Open;

  if qryTemp.FieldByName('QTDE').Value <= 5 then
    sColunaTabPreco := 'VL_0A5CX'
  else if qryTemp.FieldByName('QTDE').Value <= 10 then
    sColunaTabPreco := 'VL_10CX'
  else if qryTemp.FieldByName('QTDE').Value <= 30 then
    sColunaTabPreco := 'VL_11A30CX'
  else if qryTemp.FieldByName('QTDE').Value <= 50 then
    sColunaTabPreco := 'VL_31A50CX'
  else if qryTemp.FieldByName('QTDE').Value <= 100 then
    sColunaTabPreco := 'VL_51A100CX'
  else
    sColunaTabPreco := 'VL_100CX';

  {if QrTipoPed.FieldByName('FL_VALIDA_SIMPLES_NAC').AsString = 'S' then
    if QryClie.FieldByName('OP_SIMPLES_NACIONAL').AsString = 'S' then}

  {FABRICIO - 23/05/2022 - MOTIVO: PARA CONSUMIDOR FINAL, DEVE-SE ATRIBUIR VALOR COM % DE ACRESCIMO CONFORME TABELA DE PREÇO}
  if QryClie.FieldByName('OP_SIMPLES_NACIONAL').Value = 'F' then // CONSUMIDOR FINAL
    if QryClie.FieldByName('FL_FUNCIONARIO').AsString = 'S' then // SE FOR FUNCIONARIO, VALOR DEVE SER O r$ DA ULTIMA TABELA (ACIMA DE 100CX)
      sColunaTabPreco := 'VL_100CX_S'
    else
      sColunaTabPreco := sColunaTabPreco + '_S';

  Result:=sColunaTabPreco;
end;

procedure TFrmPedVenda.mniTransferClick(Sender: TObject);
begin

  If Application.MessageBox('Dados do Pedido serão usados para gerar Requisição. Confirma geração?', PChar(FrmPedVenda.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
  begin
    QItem.CLOSE;
    QItem.ParamByName('ID_PEDIVEND').AsFloat := QPediVeID_PEDIVEND.Value;
    QItem.Open;
    QItem.First;

    if QItem.RecordCount > 0 then
    begin
      try
        WITH OSQL DO
        begin
          SQL.Clear;
          SQL.Text := 'INSERT INTO CA_REQUI '+
                      '(EMPRESA, FILIAL, ID_REQUI, DT_REQUI, DT_MAXRECEB, ID_USUARIO, OBS, CCODCENT, UCODIUNEG, VL_REQUI, FL_STATUS, DOCUMENTO, CCODCENTD, FL_PEDIDO_VENDA) '+
                      'VALUES '+
                      '(''CA'', 1, SEQCA_REQUI.NEXTVAL , TO_DATE(SYSDATE,''DD/MM/YY''), TO_DATE(SYSDATE,''DD/MM/YY'')+7, 95 , :OBS, '+
                      '''1.3.03.1'', ''01'', :VL_PEDIDO, ''AA'', :ID_PEDIDO, ''08.01'', ''S'')';

          OSQL.ParamByName('OBS').AsString := QPediVeGN_OBSEPEDIVEND.AsString + #10#13 + '[ PEDIDO DE VENDA Nº: ' + QPediVeID_PEDIVEND.AsString + ' ]';
          OSQL.ParamByName('VL_PEDIDO').AsFloat := QPediVeVL_PEDIVEND.Value;
          OSQL.ParamByName('ID_PEDIDO').AsString := QPediVeID_PEDIVEND.AsString;
          OSQL.Execute;
        end;

        QryTemp.Close;
        QryTemp.SQL.Clear;
        QryTemp.SQL.Add('SELECT ID_REQUI FROM CA_REQUI WHERE DOCUMENTO =' + QPediVeID_PEDIVEND.AsString );
        QryTemp.Open;

        while not QItem.Eof do
        begin
          WITH OSQL DO
          begin
            SQL.Clear;
            SQL.Text := 'INSERT INTO CA_REQUI_ITEM '+
                        '(EMPRESA, FILIAL, ID_REQUI_ITEM, ID_REQUI, QTDE, QTDE_ORIG, ID_MATERIAL, ID_UNIDMEDI, VL_ITEM, TOTAL_ITEM, '+
                        'ESTOQUE_ATUAL, REQUI_ATERIOR, ID_ALMOXARIFADO, FL_STATUS_ITEM) '+
                        'VALUES '+
                        '(''CA'', 1, SEQCA_REQUI_ITEM.NEXTVAL, :ID_REQUI, :QT_ITEM, :QT_ITEM_ORIG, :ID_PROD, ''01'', :VL_ITEM, :VL_TOTAL_ITEM, 0, 0, 9, ''AA'')';

            OSQL.ParamByName('ID_REQUI').AsString := QryTemp.FieldByName('ID_REQUI').AsString;
            OSQL.ParamByName('QT_ITEM').AsFloat := QItemQN_PESOITEMPEDIVEND.Value;
            OSQL.ParamByName('QT_ITEM_ORIG').AsFloat := QItemQN_PESOITEMPEDIVEND.Value;
            OSQL.ParamByName('ID_PROD').AsString := QItemID_MATERIAL.AsString;
            OSQL.ParamByName('VL_ITEM').AsFloat := QItemVL_UNITITEMPEDIVEND.Value;
            OSQL.ParamByName('VL_TOTAL_ITEM').AsFloat := QItemVL_TOTAITEMPEDIVEND.Value;
            OSQL.Execute;
          end;

          QItem.Next;
        end;

        WITH OSQL DO
        begin
          SQL.Clear;
          // STATUS RG: REQUISIÇÃO GERADA
          SQL.Text := 'UPDATE PEDIDO_VENDA SET FL_STATPEDIVEND = ''RG'', ' +
                      'GN_OBSEPEDIVEND = GN_OBSEPEDIVEND || CHR(10) || ''[ REQUISIÇÃO Nº: ' + QryTemp.FieldByName('ID_REQUI').AsString + '''|| '' ]'' ' +
                      'WHERE ID_PEDIVEND = ' + QPediVeID_PEDIVEND.AsString;
          OSQL.Execute;
        end;

        Application.MessageBox(PChar('          Requisição ' + QryTemp.FieldByName('ID_REQUI').AsString + ' inserida corretamente.          '), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);

      except
        Screen.Cursor := crDefault;
        Application.MessageBox(PChar('Erro ao gerar Requisição para Pedido : ' + QPediVeID_PEDIVEND.AsString), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
        exit;
      end;
    end
    else
    begin
      Application.MessageBox(PChar('Pedido: ' + QPediVeID_PEDIVEND.AsString + ' não possui itens lançados. Transferência não será realizada.'), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      Abort;
    end;
  end
  else
    Exit;

end;

procedure TFrmPedVenda.pValidaMultiplosPedidos(sCliente: String; dDataEntrega: TDateTime);
begin
  qryTempC.Close;
  QryTempC.SQL.Clear;
  qryTempC.SQL.Text := 'SELECT ID_PEDIVEND, ID_FORMPAGA, ID_VENDEDOR, ID_CONTA, ID_CARGEXPE FROM PEDIDO_VENDA WHERE ID_CLIENTE = ' + sCliente +
                       ' AND DT_ENTRPEDIVEND = TO_DATE(''' + DateToStr(dDataEntrega) + ''',''DD/MM/YYYY'') AND FL_STATPEDIVEND <> ''CN'' ';
  qryTempC.Open;

  if QryTempC.RecordCount > 0 then
  begin
    Application.MessageBox(PChar('Já existe um pedido lançado para este cliente, com entrega para ' + DateToStr(dDataEntrega) + '.'
    + #13 + ' Pedido: ' + qryTempC.FieldByName('ID_PEDIVEND').AsString), PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);

    if (VLANCMULT=False) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Usuário não possui permissão de Lançamentos Múltiplos a um mesmo Cliente.', PChar(FrmPedVenda.Caption), MB_OK + MB_ICONINFORMATION);
      SBCancelClick(Self);
      qryTempC.Close;
      Exit;
    end
    else
    begin
      qryClie.Close;
      qryClie.SQL.clear;
      qryClie.SQL.Text := 'SELECT FL_UNIFICAR FROM CLIENTE WHERE ID_CLIENTE = ' + sCliente;
      qryClie.Open;

      if (QryClie.FieldByName('FL_UNIFICAR').AsString = 'N') OR (qryTempC.FieldByName('ID_CARGEXPE').Value > 0) then
      begin
        QPediVe.FieldByName('NR_PEDIVEND').AsInteger := QPediVe.FieldByName('NR_PEDIVEND').AsInteger + 1;
        Screen.Cursor := crDefault;
      end
      else
      begin
        QPediVe.FieldByName('ID_FORMPAGA').AsInteger    := qryTempC.FieldByName('ID_FORMPAGA').AsInteger;
        QPediVe.FieldByName('ID_VENDEDOR').AsInteger    := qryTempC.FieldByName('ID_VENDEDOR').AsInteger;
        QPediVe.FieldByName('ID_CONTA').AsInteger       := qryTempC.FieldByName('ID_CONTA').AsInteger;
        QPediVe.FieldByName('GN_OBSEPEDIVEND').AsString := 'PEDIDO UNIFICADO: ' + qryTempC.FieldByName('ID_PEDIVEND').AsString;
        QPediVe.FieldByName('ID_PEDUNIF_ORIGEM').AsInteger := qryTempC.FieldByName('ID_PEDIVEND').AsInteger;

        qryItensUnifica.Close;
        qryItensUnifica.SQL.Clear;
        qryItensUnifica.SQL.Text := 'SELECT EMPRESA, FILIAL, ID_MATERIAL, ID_EMBALAGEM, ID_MATEEMBA, ID_TIPOOPER, VL_UNITITEMPEDIVEND, ' +
                             'QN_EMBAITEMPEDIVEND, QN_PESOITEMPEDIVEND, QN_TARAITEMPEDIVEND, QN_EMBAEXPEITEMPEDIVEND, QN_PESOPADREXPEITEMPEDIVEND, ' +
                             'QN_TARAREALEXPEITEMPEDIVEND, QN_PESOREALEXPEITEMPEDIVEND, QN_CAIXCORTITEMPEDIVEND, ' +
                             'FX_ITEMPEDIVEND, VL_UNITBRUTITEMPEDIVEND, ' +
                             'PC_DESCITEMPEDIVEND, VL_UNITIPI, VL_ITEMTABEPREC, VL_DIFERENCA ' +
                             'FROM PEDIDO_VENDA_ITEM WHERE ID_PEDIVEND = ' + qryTempC.FieldByName('ID_PEDIVEND').AsString;
        qryItensUnifica.Open;
      end;
    end;
  end
  else
    QPediVe.FieldByName('NR_PEDIVEND').AsInteger := 1;

  qryTempC.Close;

end;

end.
