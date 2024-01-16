unit ufrmEmissorNFe;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, Ora, MemDS, DBAccess,
  Grids, DBGrids, blcksock,acbrutil, Buttons,IniFiles, ShellAPI, Menus, ExtActns,Windows,
  Math, {JvMemoryDataset, JvCsvData,} DBCtrls, DateUtils, OraSmart;

type
  TfrmEmissorNFe = class(TForm)
    pgc_EmissorNFE: TPageControl;
    TabSheet2: TTabSheet;
    dbg_Notas: TDBGrid;
    TabSheet1: TTabSheet;
    btn_Status: TButton;
    Mem_Status: TMemo;
    Mem_RespStatus: TMemo;
    TabSheet3: TTabSheet;
    MemoACBrNFe: TMemo;
    MemoNFe: TMemo;
    QryFormaPagaPed: TOraQuery;
    QryFormaPagaPedID_SITUCOBR: TFloatField;
    QryFormaPagaPedID_FORMPAGA: TFloatField;
    QryTemp: TOraQuery;
    QryCidade: TOraQuery;
    QryCidadeNM_CIDADE: TStringField;
    QryCidadeID_IBGE: TIntegerField;
    qryPisCofins: TOraQuery;
    qryPisCofinsNR_ST_PISCOFINS: TStringField;
    qryMaterial: TOraQuery;
    qryMaterialID_PRODMATEEMBA: TStringField;
    qryMaterialQN_EAN: TStringField;
    qryMaterialNCM: TStringField;
    QryNFeBc: TOraQuery;
    qryCliente: TOraQuery;
    qryClienteID_CLIENTE: TFloatField;
    qryClienteNM_CLIENTE: TStringField;
    qryClienteGN_EMAICLIE: TStringField;
    qryClienteID_IBGE: TIntegerField;
    qryClienteNM_PAIS: TStringField;
    QryReferenciadas: TOraQuery;
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
    QryBolNFe: TOraQuery;
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
    QryBolNFeID_FORMPAGA: TFloatField;
    QryItemNfEle: TOraQuery;
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
    QryItemNfEleVL_BASEICMSITEMNOTAFISC: TFloatField;
    QryItemNfEleNR_CLASFISC: TStringField;
    QryItemNfEleQN_EAN_NFE: TStringField;
    QryItemNfEleSG_ORDEMCOMPRA: TStringField;
    QryItemNfEleQN_ITEMORDEMCOMPRA: TIntegerField;
    QryNfEle: TOraQuery;
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
    QryNfEleID_PEDIVEND: TFloatField;
    QryNfEleIBGEPAIS: TIntegerField;
    QryNfEleNR_DDDCIDA: TStringField;
    QryNfEleDTHORA_GERADOC: TDateTimeField;
    QryNfEleFIN_NFE: TStringField;
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
    Ds_CaBase: TOraDataSource;
    DSPediVe: TOraDataSource;
    pnlBotoes: TPanel;
    chkAmb: TCheckBox;
    pnl_Mensagem: TPanel;
    QryItemNfEleVL_DESCITEM: TFloatField;
    Mem_Resultado: TMemo;
    Mem_Nfe: TMemo;
    Mem_Erro: TMemo;
    btn_txt: TButton;
    pnlCarta: TPanel;
    lbl_Caracter: TLabel;
    Label3: TLabel;
    pnAguarde: TPanel;
    Label4: TLabel;
    lbl_Processo: TLabel;
    edt_PastaXML: TEdit;
    Label5: TLabel;
    btnAbreXML: TSpeedButton;
    btnAbrePDF: TSpeedButton;
    edt_PastaPDF: TEdit;
    Label8: TLabel;
    Label6: TLabel;
    edt_Evento: TEdit;
    btn_AbreEvento: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Abrir1: TMenuItem;
    QryNfEleCESTA_BASICA: TStringField;
    QryItemNfEleVL_OUTRASDESP: TFloatField;
    qryTempUpda: TOraQuery;
    pnl_Testes: TPanel;
    Edt_ChaveNFE: TEdit;
    Button1: TButton;
    pnl_Erro: TPanel;
    QryNfEleFL_SEMTRANSP: TStringField;
    QryNfEleNR_INSCPRODCLIE: TStringField;
    btn_Chave: TButton;
    QryNfEleFORPAG: TFloatField;
    Qry_CTE: TOraQuery;
    Qry_CTEID_TOMADOR: TFloatField;
    Qry_CTENM_TOMADOR: TStringField;
    Qry_CTETCOD_MUN: TIntegerField;
    Qry_CTETMUNICIPIO: TStringField;
    Qry_CTETUF: TStringField;
    Qry_CTETUF_IBGE: TIntegerField;
    Qry_CTETESTADO: TStringField;
    Qry_CTEID_REMETENTE: TFloatField;
    Qry_CTENM_REMETENTE: TStringField;
    Qry_CTERCOD_MUN: TIntegerField;
    Qry_CTERMUNICIPIO: TStringField;
    Qry_CTERUF: TStringField;
    Qry_CTERUF_IBGE: TIntegerField;
    Qry_CTERESTADO: TStringField;
    Qry_CTEID_DESTINATARIO: TFloatField;
    Qry_CTENM_DESTINATARIO: TStringField;
    Qry_CTEDCOD_MUN: TIntegerField;
    Qry_CTEDMUNICIPIO: TStringField;
    Qry_CTEDUF: TStringField;
    Qry_CTEDUF_IBGE: TIntegerField;
    Qry_CTEDESTADO: TStringField;
    Qry_CTET_CNPJ: TStringField;
    Qry_CTET_IE: TStringField;
    Qry_CTET_NM_FANT: TStringField;
    Qry_CTET_LOGR: TStringField;
    Qry_CTET_NROLOGR: TStringField;
    Qry_CTET_BAIRRO: TStringField;
    Qry_CTET_CEP: TStringField;
    Qry_CTET_TIPOPESSOA: TStringField;
    Qry_CTET_CPF: TStringField;
    Qry_CTET_CPAIS: TIntegerField;
    Qry_CTET_PAIS: TStringField;
    Qry_CTET_FONE: TStringField;
    Qry_CTET_EMAIL: TStringField;
    Qry_CTER_CNPJ: TStringField;
    Qry_CTER_IE: TStringField;
    Qry_CTER_NOMFAN: TStringField;
    Qry_CTER_LOGR: TStringField;
    Qry_CTER_NUMLOGR: TStringField;
    Qry_CTER_BAIRRO: TStringField;
    Qry_CTER_CEP: TStringField;
    Qry_CTER_TIPOPESSOA: TStringField;
    Qry_CTER_CPF: TStringField;
    Qry_CTER_CPAIS: TIntegerField;
    Qry_CTER_PAIS: TStringField;
    Qry_CTER_FONE: TStringField;
    Qry_CTER_EMAIL: TStringField;
    Qry_CTED_CNPJ: TStringField;
    Qry_CTED_IE: TStringField;
    Qry_CTED_NOMFAN: TStringField;
    Qry_CTED_LOGR: TStringField;
    Qry_CTED_NUMLOGR: TStringField;
    Qry_CTED_BAIRRO: TStringField;
    Qry_CTED_CEP: TStringField;
    Qry_CTED_TIPOPESSOA: TStringField;
    Qry_CTED_CPF: TStringField;
    Qry_CTED_CPAIS: TIntegerField;
    Qry_CTED_PAIS: TStringField;
    Qry_CTED_FONE: TStringField;
    Qry_CTED_EMAIL: TStringField;
    QryCTECompServ: TOraQuery;
    QryCTECompServID_CTECOMPSERV: TFloatField;
    QryCTECompServID_PEDIVEND: TFloatField;
    QryCTECompServNM_NOME: TStringField;
    QryCTECompServVL_VALOR: TFloatField;
    QryNFeBcEMPRESA: TStringField;
    QryNFeBcFILIAL: TIntegerField;
    QryNFeBcID_BASEICMSNOTAFISC: TFloatField;
    QryNFeBcID_NOTAFISC: TFloatField;
    QryNFeBcFL_SITUTRIBICMS_BASEICMSNF: TStringField;
    QryNFeBcPC_BASEICMSNOTAFISC: TFloatField;
    QryNFeBcVL_BASEICMSNOTAFISC: TFloatField;
    QryNFeBcVL_IMPOBASEICMSNOTAFISC: TFloatField;
    QryNFeBcVL_ISENBASEICMSNOTAFISC: TFloatField;
    QryNFeBcVL_OUTRBASEICMSNOTAFISC: TFloatField;
    QryNFeBcFX_BASEICMSNOTAFISC: TStringField;
    QryItemNfEleFL_SITUTRIBICMS: TStringField;
    QryNfEleVL_TOTAL_MERCADORIA: TFloatField;
    QryNfEleGN_OUTRAS_CARACTERISTICAS: TStringField;
    QryNfElePRODUTO_PREDOMINANTE: TStringField;
    QryNfEleCOD_UNIDADE_MEDIDA: TStringField;
    QryNfEleNM_TIPO_MEDIDA: TStringField;
    QryNfEleQN_QUANTIDADE_CTE: TFloatField;
    pnlCartaCte: TPanel;
    btnCartaCTeOK: TButton;
    btn_CartaCTECancela: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Qry_NotaNaoTransmitida: TOraQuery;
    Qry_NotaNaoTransmitidaNR_NOTAFISC: TFloatField;
    Qry_NotaNaoTransmitidaSG_SERINOTAFISC_NOTAFISC: TStringField;
    Qry_NotaNaoTransmitidaDT_EMISNOTAFISC: TDateTimeField;
    Qry_NotaNaoTransmitidaDT_SAIDNOTAFISC: TDateTimeField;
    Qry_NotaNaoTransmitidaID_NOTAFISC: TFloatField;
    Qry_NotaNaoTransmitidaNFE_CHAVE: TStringField;
    Qry_NotaNaoTransmitidaUNOMEUNEG: TStringField;
    Qry_Grupo: TOraQuery;
    Ds_Grupo: TOraDataSource;
    Qry_GrupoGRUPO: TStringField;
    Qry_Campo: TOraQuery;
    Ds_Campo: TOraDataSource;
    Lkp_Grupo: TDBLookupComboBox;
    Lkp_Campo: TDBLookupComboBox;
    Qry_CampoGRUPO: TStringField;
    Qry_CampoCAMPO: TStringField;
    Edt_ValorCorrecao: TMemo;
    Label1: TLabel;
    EdVersao: TEdit;
    btn_Consulta: TButton;
    edt_Consulta: TEdit;
    DBNavigator1: TDBNavigator;
    btn_ConsCanc: TButton;
    Men_Grid: TPopupMenu;
    mnu_Todos: TMenuItem;
    QryNfEleFL_CONTICMSCLIE: TStringField;
    QryNfEleFL_NFCOMPLEMENTAR: TStringField;
    QryItemNfEleCEST: TStringField;
    qryMaterialNR_EANTRIB: TStringField;
    QryFormaPagaPedNU_FORMA_PAGTO_NFE: TStringField;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    mem_Carta: TMemo;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    btnConfirmaCC: TSpeedButton;
    btnCancelarCC: TSpeedButton;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    Panel6: TPanel;
    GroupBox3: TGroupBox;
    Panel7: TPanel;
    btnVisualizarNfe: TSpeedButton;
    btnTransmitirNfe: TSpeedButton;
    btnImprimirNfe: TSpeedButton;
    btnDANFENfe: TSpeedButton;
    btnCartaCorrecaoNfe: TSpeedButton;
    btnInutilizarNfe: TSpeedButton;
    btnCancelarNfe: TSpeedButton;
    btnEmailNfe: TSpeedButton;
    Sb_Sair: TSpeedButton;
    Panel8: TPanel;
    btn_Preview: TButton;
    btn_NfeSocket: TButton;
    btn_Danfe: TButton;
    btn_DanfePDF: TButton;
    btn_SalvarXML: TButton;
    btn_Carta: TButton;
    btn_InutilizarNFe: TButton;
    btn_CancelaNFE: TButton;
    btn_Email: TButton;
    chkCon: TCheckBox;
    btn_EditarNF: TButton;
    SpeedButton1: TSpeedButton;
    qryNFEXML: TSmartQuery;
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
    qryNFEXMLNFE_SEQEVENTO: TIntegerField;
    qryNFEXML_Teste: TSmartQuery;
    qryNFEXML_TesteEMPRESA: TStringField;
    qryNFEXML_TesteFILIAL: TIntegerField;
    qryNFEXML_TesteID_NFE_XML: TFloatField;
    qryNFEXML_TesteID_NOTAFISC: TFloatField;
    qryNFEXML_TesteDT_EMISNOTAFISC: TStringField;
    qryNFEXML_TesteNR_NOTAFISC: TFloatField;
    qryNFEXML_TesteRECIBO_ENVIO: TStringField;
    qryNFEXML_TesteRECIBO_RETORNO: TStringField;
    qryNFEXML_TesteDATA_ENVIO: TStringField;
    qryNFEXML_TesteNFE_NUMERO: TFloatField;
    qryNFEXML_TesteNFE_CHAVE: TStringField;
    qryNFEXML_TesteNFE_DT_RECEBTO: TStringField;
    qryNFEXML_TesteNFE_PROTOCOLO: TStringField;
    qryNFEXML_TesteNFE_CHAVE_DIGITAL: TStringField;
    qryNFEXML_TesteNFE_LOCAL: TStringField;
    qryNFEXML_TesteNFE_XML: TBlobField;
    qryNFEXML_TesteENVIO: TStringField;
    qryNFEXML_TesteRETORNO: TStringField;
    qryNFEXML_TesteAUTORIZACAO: TStringField;
    qryNFEXML_TesteSR_NOTAFISC: TStringField;
    qryNFEXML_TesteLOTE: TFloatField;
    qryNFEXML_TesteDANFE: TStringField;
    qryNFEXML_TesteCANCELADA: TStringField;
    qryNFEXML_TesteINUTILIZADA: TStringField;
    qryNFEXML_TesteEMAIL: TStringField;
    qryNFEXML_TesteNFE_SEQEVENTO: TIntegerField;
    QImpDocPed: TSmartQuery;
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
    QImpDocPedIE_PEDIVEND: TStringField;
    QImpDocPedFL_COMIVEND: TStringField;
    QImpDocPedPC_COMIVEND: TFloatField;
    QImpDocPedNM_CLIENTE: TStringField;
    QImpDocPedNR_AGENBANC: TStringField;
    QImpDocPedNR_BANCO: TStringField;
    QImpDocPedNR_CONTA: TStringField;
    QImpDocPedNR_CODICEDECONT: TStringField;
    QImpDocPedSG_SERINOTAFISC: TStringField;
    QImpDocPedID_NOTAFISC: TFloatField;
    QImpDocPedNR_NOTAFISC: TFloatField;
    QImpDocPedFL_CANCNOTAFISC: TStringField;
    QImpDocPedFL_IMPRNOTAFISC: TStringField;
    QImpDocPedGN_PLACVEICNOTAFISC: TStringField;
    QImpDocPedDT_EMISNOTAFISC: TDateTimeField;
    QImpDocPedNM_NATUOPERNOTAFISC: TStringField;
    QImpDocPedNM_FORMPAGA: TStringField;
    QImpDocPedNM_TIPOPEDIVEND: TStringField;
    QImpDocPedDTHORA_GERADOC: TDateTimeField;
    QImpDocPedID_NFE_XML: TFloatField;
    QImpDocPedNFE_PROTOCOLO: TStringField;
    QImpDocPedNFE_CHAVE: TStringField;
    QImpDocPedNFE_SEQEVENTO: TIntegerField;
    QImpDocPedCANCELADA: TStringField;
    QImpDocPedINUTILIZADA: TStringField;
    QImpDocPedSG_SERINOTAFISC_NOTAFISC: TStringField;
    QImpDocPedTIPOEMI: TStringField;
    QImpDocPedGN_EMAICLIE: TStringField;
    QImpDocPedDT_AUTORIZACAO: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_NfeSocketClick(Sender: TObject);
    procedure btn_StatusClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_DanfeClick(Sender: TObject);
    procedure btn_DanfePDFClick(Sender: TObject);
    procedure CRTemp_QImpDocPedAfterScroll(DataSet: TDataSet);
    procedure btn_CancelaNFEClick(Sender: TObject);
    procedure dbg_NotasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_InutilizarNFeClick(Sender: TObject);
    procedure btn_txtClick(Sender: TObject);
    procedure chkAmbClick(Sender: TObject);
    procedure CRTemp_QImpDocPedBeforeOpen(DataSet: TDataSet);
    procedure btn_SalvarXMLClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_PreviewClick(Sender: TObject);
    procedure btnCartaOKClick(Sender: TObject);
    procedure btn_CartaClick(Sender: TObject);
    procedure mem_CartaChange(Sender: TObject);
    procedure btnAbreXMLClick(Sender: TObject);
    procedure btnAbrePDFClick(Sender: TObject);
    procedure btn_AbreEventoClick(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_EditarNFClick(Sender: TObject);
    procedure btn_ChaveClick(Sender: TObject);
    procedure btnCartaCTeOKClick(Sender: TObject);
    procedure btn_CartaCTECancelaClick(Sender: TObject);
    procedure btn_EmailClick(Sender: TObject);
    procedure pgc_EmissorNFEChange(Sender: TObject);
    procedure btn_ConsultaClick(Sender: TObject);
    procedure btn_ConsCancClick(Sender: TObject);
    procedure dbg_NotasTitleClick(Column: TColumn);
    procedure mnu_TodosClick(Sender: TObject);
    procedure btnConfirmaCCClick(Sender: TObject);
    procedure btnCancelarCCClick(Sender: TObject);
    procedure btnVisualizarNfeClick(Sender: TObject);
    procedure btnTransmitirNfeClick(Sender: TObject);
    procedure btnImprimirNfeClick(Sender: TObject);
    procedure btnDANFENfeClick(Sender: TObject);
    procedure btnXMLNfeClick(Sender: TObject);
    procedure btnCartaCorrecaoNfeClick(Sender: TObject);
    procedure btnEmailNfeClick(Sender: TObject);
    procedure btnCancelarNfeClick(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnInutilizarNfeClick(Sender: TObject);
  private
    { Private declarations }
    fSocket : TBlockSocket;
    MonitorAberto : Boolean;
    MSgResposta , RetArqXml, ArqXMlProc, ArqXMLCarta, RetNR_NOTA, RetSER_NOTA, Resp_Erro, ArqPDF: String ;
    PastaXML, PastaEvento, PastaInutil, PastaDANFE : String ;
    ContResp : Integer;
    function Permitir_GeracaoNFe (ID_PEDIDO : Integer; NR_NOTA , SERIE : String ): Boolean ;
    procedure PreencheDadosACBR( ID_PEDIDO : Integer; NR_NOTA , SERIE : String );
    procedure HabilitaBotoes ();
    function Muda_virgula_ponto(OValor: String): String;
    function RespStatusServico( ): String ;
    function RespConectar() : String ;
    function RespGeraNFe() : String ;
    function RespDanfe( TIPO : String ) : String ;
    function RespCancelaNFe() : String ;
    function RespInutilizaNFe ( PulouNum : Boolean; NR_NOTA , SERIE , ANO : String ) :String;
    function RespPreview () : String;
    function RespMonitor( TIPO : String ) : String ;
    {$H+}
    function FComandoCCE ( xCorrecao : String ; SeqEve : String ) : String;
    function RespCartaCorrecao () : String;
    procedure MensagemEspera(Exibe : Boolean; Texto : String );
    procedure ParametrosAcbr();
    procedure dgCreateProcess(const FileName: string);
    Function CancelaNFSistema( ID_PEDIDO : Integer ): Boolean ;
    procedure PreviewCTE ();
    procedure PreencheDadosCTE( ID_PEDIDO : Integer; NR_NOTA , SERIE : String );
    procedure GerarCTE ();
    function RespGeraCTE() : String ;
    procedure CartaCorrecaoCTE ();
    function FComandoCartaCTE ( SeqEve, GrupoCTe, CampoCTe, ValorCTe, NrItemCTe: String ) : String;
    function RespConsulta( ): String ;
    procedure ConsultaNFE();
  public
    { Public declarations }
    LNotas :TStringList;
    SerNF : String ;
    TIPOEMISSAO : String ;
    OrdemColuna , Ordem : string ;
    SOIMPRESSAO , SOEMAIL : String;
  end;

var
  frmEmissorNFe: TfrmEmissorNFe;

implementation

Uses Global, ACBrNFe , StrUtils, UFrmEditaNotaFiscal, ACBrCTe ;
{$R *.dfm}

procedure TfrmEmissorNFe.FormCreate(Sender: TObject);
begin
  pgc_EmissorNFE.ActivePage := TabSheet2 ;
  TabSheet1.TabVisible := false;
  TabSheet3.TabVisible := false;
  LNotas := TStringList.Create();
  fSocket := TBlockSocket.Create;
  MonitorAberto := False;
  MSgResposta   := '';
  SOIMPRESSAO := 'N';
  SOEMAIL     := 'N';

end;

procedure TfrmEmissorNFe.FormShow(Sender: TObject);
var i : Integer;
    SNotas : string;
begin
  SNotas := '';

  if ( dadosCadastraisFilial.SerieCertificado = '') then
  begin
    Application.MessageBox('Não foi possível obter a série do certificado da filial. Informe o TI.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  for i := 0 to LNotas.Count - 1 do
  begin
    if ( i = 0 ) then
      SNotas := LNotas[i]
    else
      SNotas := SNotas + ' , '+  LNotas[i] ;
  end;

  LNotas.Free;
  fSocket.Connect( 'localhost', '3436');

  if ( RespConectar ()  <> '0' ) then
  begin
    MonitorAberto := false ;
    Application.MessageBox('O Monitor de Transmissão (ACBr) não esta em execução.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if ( TIPOEMISSAO = 'NFE' ) then
  begin
    fSocket.SendString('NFe.Ativo'+ #13+#10+'.'+#13+#10);
    TabSheet2.Caption := 'Emissão da NF-e';
  end
  else
  if ( TIPOEMISSAO = 'CTE' ) then
  begin
    fSocket.SendString('CTe.Ativo'+ #13+#10+'.'+#13+#10);
    TabSheet2.Caption := 'Gerar CTe';
    btn_Preview.Caption := 'Preview CTe';
    btn_NfeSocket.Caption := 'Gerar CTe';
    btn_Danfe.Caption := 'DACTE';
    btn_DanfePDF.Caption := 'DACTE PDF';
    btn_InutilizarNFe.Caption := 'Inutilizar CTe';
    btn_CancelaNFE.Caption := 'Cancelar CTe';
  end;

  if ( RespMonitor('') <> '0' ) then
  begin
    MonitorAberto := False;
    Application.MessageBox('O Monitor de Transmissão (ACBr) não esta em execução.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end
  else
    MonitorAberto := true ;

  QImpDocPed.Close;
  QImpDocPed.MacroByName('Notas').Value := SNotas ;
  QImpDocPed.Open;

  Qr_CaBase.Close;
  Qr_CaBase.ParamByName('FILIAL').Value := gi_Filial;
  Qr_CaBase.Open;

  HabilitaBotoes ();

  If not QImpDocPed.IsEmpty then
  begin
    dbg_Notas.DataSource.DataSet.First;
    For i := 0 to QImpDocPed.RecordCount - 1 do
    begin
      dbg_Notas.SelectedRows.CurrentRowSelected := True;
      dbg_Notas.DataSource.DataSet.Next;
    end;
      dbg_Notas.SelectedRows.Refresh;
  end;

  dbg_Notas.DataSource.DataSet.First;

  if ( SOIMPRESSAO <> 'S' ) AND ( SOEMAIL <> 'S' ) then
  begin
    if ( TIPOEMISSAO = 'NFE' ) then
    begin
      fSocket.SendString('NFe.SetCertificado("'+dadosCadastraisFilial.SerieCertificado+'") '+ #13+#10+'.'+#13+#10);
      MemoACBrNFe.Lines.Add( 'NFe.SetCertificado("'+dadosCadastraisFilial.SerieCertificado+'") '+ #13+#10+'.'+#13+#10);
    end
    else if ( TIPOEMISSAO = 'CTE' ) then
    begin
      fSocket.SendString('CTe.SetCertificado("'+dadosCadastraisFilial.SerieCertificado+'") '+ #13+#10+'.'+#13+#10);
      MemoACBrNFe.Lines.Add( 'CTe.SetCertificado("'+dadosCadastraisFilial.SerieCertificado+'") '+ #13+#10+'.'+#13+#10);
    end;

    Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Carregando Certificado... ' );
    RespMonitor('CERTIFICADO');
  end;

  if (gs_LogUsua = 'denilson' ) then
    pnl_Testes.Visible := true
  else
  begin
    pnl_Testes.Visible := false;
    chkAmb.Checked := True;
  end;

  ParametrosAcbr();

  if ( SOIMPRESSAO = 'S' ) then
  begin
    mnu_TodosClick(sender);
    btn_DanfeClick(sender);
  end;

  if( SOEMAIL = 'S' ) then
  begin
    mnu_TodosClick(sender);
    btnEmailNfeClick(sender);
  end;

  frmEmissorNFe.WindowState := wsMaximized;

end;

function TfrmEmissorNFe.Permitir_GeracaoNFe (ID_PEDIDO : Integer; NR_NOTA , SERIE : String ): Boolean ;
VAR
  Liberada : Boolean ;
begin
  Liberada := True ;

  if ( not QImpDocPed.Locate('ID_PEDIVEND', ID_PEDIDO,[]) ) then
  begin
    Mem_Resultado.Lines.Add( 'O Pedido de Venda '+ IntToStr(ID_PEDIDO) + ' não foi localizado.' );
    Liberada := False;
  end
  else
  begin
    // Verificamos se o Flag do pedido é "EX"
    If (QImpDocPed['FL_STATPEDIVEND']='EX') then
    Begin
      Mem_Resultado.Lines.Add( 'O pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) +
         ' está com Status "EX" ' + #13 + 'Gere novamente ou cancele a Nota se for necessário.');
      Liberada := False;
      Exit;
    End;

    // Verificar se esta cancelada
    If (QImpDocPedFL_CANCNOTAFISC.Value='S') OR (QImpDocPedCANCELADA.Value='S') then
    Begin
      Mem_Resultado.Lines.Add( 'Não pode ser gerado a '+TIPOEMISSAO+'! ' + #13 + 'A Nota ' + QImpDocPedNR_NOTAFISC.AsString +
         ' está cancelada .');
      Liberada := False;
      Exit;
    End;

    //Filtra para ver se a nfe esta liberada
    if ( chkAmb.Checked ) then
    begin
      qryNFEXML.Close;
      qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
      qryNFEXML.Open;
    end
    else
    begin
      qryNFEXML_Teste.Close;
      qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
      qryNFEXML_Teste.Open;
    end;

    //Se estiver no banco de dados deixa ela como liberada
    if ( chkAmb.Checked ) then
    begin
      If qryNFEXML.RecordCount = 0 then Liberada := True;
      If qryNFEXML.RecordCount > 0 then Liberada := False;
    end
    else
    begin
      If qryNFEXML_Teste.RecordCount = 0 then Liberada := True;
      If qryNFEXML_Teste.RecordCount > 0 then Liberada := False;
    end;

    //Para testes considerar como liberada
    //Liberada := True;

    If ( not Liberada ) then
    begin
      Mem_Erro.Lines.Add('Já foi gerada '+TIPOEMISSAO+' para esta Nota : '+  QImpDocPedNR_NOTAFISC.AsString );
      Result := false;
    end;

    Result := Liberada ;
  end;
end;

procedure TfrmEmissorNFe.PreencheDadosACBR( ID_PEDIDO : Integer; NR_NOTA , SERIE : String );
var ls_NomeImpr, ls_firma, ls_insc, ls_inscM, ls_cnpj, ls_cnae: String;
     ls_logr, ls_num, ls_bai, ls_uf, ls_cep, ls_cid, ls_codcid, ls_pais, ls_codpais, ls_fone,
     ls_codmun, ls_ObsF, ls_ObsC: String;
     tpEmis ,vTipES,vIE, P_EAN, P_NCM, OTexto, Boleto , RCestaBasica, P_EANTrib : string;
     Liberada ,VSoma,IBGE, I, T, O, Contador, Sequencial: Integer;
     BSSUBSTICMS, VLSUBSTICMS : Double;
     vPis, vCofins,vPisitem, vCofinsitem, VTotDesconto , VTotOutDesp : Double;
begin
  Qr_CaBase.Close;
  Qr_CaBase.Open;

  RCestaBasica := 'N';

  with dadosCadastraisFilial do
  begin
    ls_firma   := NomeFilial;
    ls_insc    := InscricaoEstadual;
    ls_inscM   := InscricaoMunicipal;
    ls_cnpj    := Cnpj;
    ls_cnae    := Cnae;
    ls_logr    := Endereco;
    ls_num     := Numero;
    ls_bai     := Bairro;
    ls_cid     := Cidade;
    ls_codcid  := CodigoCidade;
    ls_uf      := UF;
    ls_cep     := Cep;
    ls_codpais := CodigoPais;
    ls_pais    := Pais;
    ls_fone    := Fone;
    ls_codmun  := CodigoCidade;
  end;

  if chkCon.Checked then
  begin
    tpEmis:= '2';
  end
  else
  begin
    tpEmis:= '1';
  end;

  // Selecionamos a nota fiscal de acordo com o pedido
  QryNfEle.Close;
  QryItemNfEle.Close;
  FormatSettings.shortdateformat := 'yyyy-mm-dd';
  QryNfEle.ParamByName('pi_pedivend').AsInteger := ID_PEDIDO;
  QryNfEle.ParamByName('ps_serinotafisc').AsString := SERIE;
  QryNfEle.ParamByName('VNOTA').AsInteger  := StrToInt( NR_NOTA );
  QryNfEle.ParamByName('VCANCEL').AsString := 'N';
  QryNfEle.Open;
  //Coloca o parâmetro da nota fiscal
  QryItemNfEle.ParamByName('id_notafisc').AsFloat := QryNfEleID_NOTAFISC.AsFloat;
  QryItemNfEle.Open;
  //Coloca o parâmetro do numero do pedido
  QryBolNFe.Close;
  QryBolNFe.ParamByName('id_pedivend').AsInteger := QryNfEleID_PEDIVEND.AsInteger;
  QryBolNFe.open;

  //Limpa o conteudo de comando
  Comando := '';

  if ( QryNfEleCESTA_BASICA.Value = 'CB' ) then
    RCestaBasica := 'S' ;

  //Cabecalho da Nota Fiscal

  Randomize;
  ACBr_I_Codigo          :=   IntToStr(  RandomRange( 1,99999999 )  ) ;//QryNfEleID_NOTAFISC.AsString;

  if ( RCestaBasica = 'S' ) then
    ACBr_I_NaturezaOperaca := 'DISTR MERC EMPREGADOS'
  else
    ACBr_I_NaturezaOperaca := QryNfEleNM_NATUOPERNOTAFISC.Value;

  //verficcar se é operação interna / interestadual / exterior
  if QryNfEleSG_ESTANOTAFISC.Value = 'EX' then
    ACBr_I_idDest := '3'
  else if QryNfEleSG_ESTANOTAFISC.Value = 'SP' then
    ACBr_I_idDest := '1'
  else
     ACBr_I_idDest := '2';

  QryFormaPagaPed.Close;
  QryFormaPagaPed.ParamByName('NumeroPedido').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
  QryFormaPagaPed.Open;

  //Se situacao de cobrança = 3 então forma pagamento = 2 - sem forma de pagamento
  If QryFormaPagaPedID_SITUCOBR.Value = 3 then
    ACBr_I_FormaPag        := '2'
  else
  begin
    //Se situacao de cobrança <> 3 então verificar se forma pagamento pedido = 11 então = 0 - a vista se diferente de 11 então 1 - a prazo
    If QryFormaPagaPedID_FORMPAGA.Value = 11 then
      ACBr_I_FormaPag        := '0'
    else
      ACBr_I_FormaPag        := '1';
  end;

  ACBr_I_Modelo          := '55';
  ACBr_I_Serie           := QryNfEleSG_SERINOTAFISC_NOTAFISC.AsString;
  ACBr_I_Numero          := QryNfEleNR_NOTAFISC.AsString;
  ACBr_I_Emissao         := Conv_Data(QryNfEleDT_EMISNOTAFISC.Value, 1);
  ACBr_I_Saida           := Conv_Data(QryNfEleDT_SAIDNOTAFISC.Value, 1);

  if (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '1') or (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '2') or (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '3') then
    ACBr_I_Tipo := '0'
  else
    ACBr_I_Tipo := '1';

  if ( QryNfEleFIN_NFE.Value = '2' ) or ( QryNfEleFIN_NFE.Value = '3' ) or( QryNfEleFIN_NFE.Value = '4' ) then
    ACBr_I_Finalidade      := QryNfEleFIN_NFE.Value
  else
    ACBr_I_Finalidade      := '1';

  { 1=NF-e normal;
    2=NF-e complementar;
    3=NF-e de ajuste;
    4=Devolução de mercadoria.  }

  ACBr_I_verProc         := Edversao.Text ;// GlbVersao; // versão do aplicativo emissor   //Edversao.Text;
  ACBr_I_cUF             := Copy( ls_codmun , 1, 2); //alterei QryNfEleID_IBGE.AsString
  ACBr_I_CidadeCod       := ls_codmun ;              //alterei QryNfEleID_IBGE.AsString
  ACBr_I_procEmi         := '0'; // Emitido com aplicativo do contribuinte

  If ( QryNfEleFL_PESSCLIE.Value = 'F' ) OR    // Pesoa Fisica
    (( QryNfEleFL_PESSCLIE.Value = 'J' ) AND ( QryNfEleFL_CONTICMSCLIE.Value = 'N' )  ) // Pesso Juridica Não Contribuinte
  then
    ACBr_I_indFinal := '1'   // 1=Consumidor final;
  else
    ACBr_I_indFinal := '0';  // -- 0=Normal;


  If tpEmis = '1' then
  begin
    ACBr_I_dhCont := '';
    ACBr_I_xJust  := '';
  end;

  If tpEmis = '2' then
  begin
    ACBr_I_dhCont := Conv_Data(ld_DataHora, 1);
    ACBr_I_xJust  := 'Problemas tecnicos durante a emissao';
  end;

  //Imprime no memo o cabecalho
  ACBrNFe.Memo_Cabecalho;

  // Impressao de documentos referenciados *****************************

  QryReferenciadas.Close;
  QryReferenciadas.ParamByName('ID_PEDIVEND').Value := QImpDocPedID_PEDIVEND.AsString;
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
        ACBr_R_TIPO   := 'CTE';
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

  //verifica se é nota fiscal de entrada ou saída
  If (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '1') or
     (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '2') or
     (copy(QryNfEleNR_CFOP_NOTAFISC.Value,1,1) = '3') then vTipES:= '0' else vTipES:= '1';

  //Emitente da nota fiscal
  ACBr_E_CNPJ        := ls_cnpj;
  ACBr_E_IE          := ls_insc;
  ACBr_E_Razao       := ls_firma;
  ACBr_E_Fantasia    := ls_firma;

  ACBr_E_Fone        := ls_fone;
  ACBr_E_CEP         := ls_cep;
  ACBr_E_Logradouro  := ls_logr;
  ACBr_E_Numero      := ls_num;
  ACBr_E_Complemento := '';
  ACBr_E_Bairro      := ls_bai;
  ACBr_E_CidadeCod   := ls_codmun;
  ACBr_E_Cidade      := ls_cid;
  ACBr_E_UF          := ls_uf;
  ACBr_E_IM          := ls_inscM;
  ACBr_E_CNAE        := ls_cnae;
  ACBr_E_CRT         := '3';
  //Imprime no memo o emitente
  ACBrNFe.Memo_Emitente;

  //Isento
  If UpperCase(QryNfElenr_inscestaclie.Value) = 'ISENTO' then vIE:= 'ISENTO';
  //Nao isento então obtem o ie
  If UpperCase(QryNfElenr_inscestaclie.Value) <> 'ISENTO' then
  begin
    vIE:= QryNfElenr_inscestaclie.value;
    ACBr_D_IE := QryNfElenr_inscestaclie.value;
  end;

  // IE de Produtor Rural Pessoa Fisica
  If ( QryNfEleFL_PESSCLIE.Value = 'F' ) AND ( QryNfEleNR_INSCPRODCLIE.Value <> '' ) then
  begin
    vIE:= QryNfEleNR_INSCPRODCLIE.Value;
    ACBr_D_IE := QryNfEleNR_INSCPRODCLIE.Value;
  end;

  //Se for pessoa juridica verifica o tipo de cnpj
  If QryNfEleFL_PESSCLIE.Value = 'J' then
  begin
    If copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) = '7' then ACBr_D_CNPJCPF := '';
    If copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) <> '7' then ACBr_D_CNPJCPF := QryNfElenr_cnpjclie.value;
  end;

  //Se não for pessoa juridica então obtem o cpf
  If QryNfEleFL_PESSCLIE.Value <> 'J' then ACBr_D_CNPJCPF := QryNfElenr_cpfclie.value;

  //Se for cnpj tipo 7 popula dados padrões de exportação para destinatario
  If copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) = '7' then
  begin
    //Filtra para ver se a nfe esta liberada
    qryCliente.Close;
    qryCliente.ParamByName('ID_CLIENTE').Value := QryNfEleID_CLIENTE.AsString;
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

   if ( QryNfEleCESTA_BASICA.Value = 'CB' ) then
     RCestaBasica := 'S' ;

    if ( RCestaBasica = 'S' ) then
      ACBr_D_NomeRazao   := 'DIVERSOS DISTR MERC EMPREGADOS'
    else
      ACBr_D_NomeRazao   := TiraAcentos(QryNfElenm_cliente.AsString);

    ACBr_D_Fone        := RemoveChar(QryNfEleNR_FONENOTAFISC.AsString);
    if ( Length( ACBr_D_Fone ) < 8 ) then
      For t := length(ACBr_D_Fone) to 8 do ACBr_D_Fone := ACBr_D_Fone + '0';

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

  end;

  //Se não for cfop tipo 7 então popula destinatario com dados do cliente
  If copy(QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value,1,1) <> '7' then
  begin
    //Filtra para ver se a nfe esta liberada
    qryCliente.Close;
    qryCliente.ParamByName('ID_CLIENTE').Value := QryNfEleID_CLIENTE.AsString;
    qryCliente.Open;
    If qryCliente.RecordCount > 0 then
    begin
      ACBr_D_PaisCod     := qryClienteID_IBGE.AsString;
      ACBr_D_Pais        := qryClienteNM_PAIS.AsString;
      ACBr_D_Email       := qryClienteGN_EMAICLIE.AsString;
    end;
    qryCliente.Close;

    //Destinatario da Nota Fiscal
    //Se não for pessoa juridica então obtem o cnpj
    If QryNfEleFL_PESSCLIE.Value = 'J' then
      ACBr_D_CNPJCPF := QryNfEleNR_CNPJNOTAFISC.AsString
    else
      ACBr_D_CNPJCPF := QryNfElenr_cpfclie.value;

    if ( QryNfEleNR_IENOTAFISC.AsString <> 'ISENTO' ) then
       ACBr_D_IE          := QryNfEleNR_IENOTAFISC.AsString
    else
    begin
      if (QryNfEleNR_CFOP_NOTAFISC.Value = '7101') or (QryNfEleNR_CFOP_NOTAFISC.Value = '3201') OR ( QryNfEleFL_CONTICMSCLIE.Value = 'N') then
        ACBr_D_IE := ''
      else
        ACBr_D_IE := 'ISENTO';
    end;

    if (QryNfEleFL_PESSCLIE.Value = 'J') then
    begin
      if   ( UpperCase(QryNfElenr_inscestaclie.Value) = 'ISENTO' ) AND ( QryNfEleFL_CONTICMSCLIE.Value <> 'N' )  then
        ACBr_D_indIEDest := '2' // Isento
      else
        if ( QryNfEleFL_CONTICMSCLIE.Value = 'N' ) then
          ACBr_D_indIEDest := '9' //Não Contribuinte
        else
          ACBr_D_indIEDest := '1'; //Contribuinte
    end
    else    // Pessoa Fisica com Inscrição estadual Ex. Produtor Rural do MS
    if (QryNfEleFL_PESSCLIE.Value = 'F') AND (QryNfEleNR_INSCPRODCLIE.AsString <> '' ) then
      ACBr_D_indIEDest := '1'
    else
      ACBr_D_indIEDest := '9';

    ACBr_D_ISUF        := '';

    if ( RCestaBasica = 'S' ) then
      ACBr_D_NomeRazao   := 'DIVERSOS DISTR MERC EMPREGADOS'
    else
      ACBr_D_NomeRazao   := TiraAcentos(QryNfElenm_cliente.AsString);

    ACBr_D_Fone        := RemoveChar(QryNfEleNR_FONENOTAFISC.AsString);

    if ( Length( ACBr_D_Fone ) < 8 ) then
      For t := length(ACBr_D_Fone) to 8 do ACBr_D_Fone := ACBr_D_Fone + '0';

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
  end;

  QryNFeBc.Close;
  QryNFeBc.ParamByName('id_notafisc').AsInteger := QryNfEleID_NOTAFISC.AsInteger;
  QryNFeBc.open;

  VSoma:=1;
  BSSUBSTICMS := 0.00;
  VLSUBSTICMS := 0.00;
  VTotDesconto := 0.00;
  VTotOutDesp  := 0.00;

  QryItemNfEle.first;
  while not QryItemNfEle.Eof do
  begin
    //Filtra para ver se a nfe esta liberada
    P_EAN := '';
    P_EANTrib := '';
    P_NCM := '';
    qryMaterial.Close;
    qryMaterial.ParamByName('ID_PRODMATEEMBA').Value := QryItemNfEleID_PRODMATEEMBA_ITEMNOTAFISC.AsString;
    qryMaterial.Open;
    If qryMaterial.RecordCount > 0 then
    begin
      {FABRICIO - 27/07/2018 - MOTIVO:NFE 4.0}
      P_EAN := qryMaterialQN_EAN.Value;
      P_EANTrib := qryMaterialNR_EANTRIB.Value;
    end;
    qryMaterial.Close;

    vCofinsitem:= (QryitemNfEleVL_ITEMNOTAFISC.Value * 0.076);
    vPisitem:= (QryitemNfEleVL_ITEMNOTAFISC.Value * 0.0165);

    //Coloca o item da nota fiscal
    ACBrNFe.Memo_CProdutos(VSoma);
    ACBr_P_CFOP             := QryItemNfEleNR_CFOP_ITEMNOTAFISC.value;
    ACBr_P_Codigo           := FloatToStr(QryItemNfEleID_PRODMATEEMBA_ITEMNOTAFISC.AsFloat);
    ACBr_P_Descricao        := TiraAcentos(QryItemNfEleNM_MATERIAL_ITEMNOTAFISC.value);
    ACBr_P_Unidade          := TiraAcentos(QryItemNfEleSG_UNIDMEDI_ITEMNOTAFISC.VALUE);
    {FABRICIO - 26/07/2018 - MOTIVO:NFE 4.0}
    ACBr_P_EAN              := P_EAN;
    ACBr_P_EANTrib          := P_EANTrib;
    ACBr_P_NCM              := QryItemNfEleNR_CLASFISC.AsString; //ACBr_P_NCM := P_NCM;
    ACBr_P_CEST             := RemoveChar(QryItemNfEleCEST.AsString) ;

    ACBr_P_Quantidade       := Muda_virgula_ponto(floattostrF(QryItemNfEleQN_PESOITEMNOTAFISC.AsFloat,ffFixed,12,4));
    ACBr_P_ValorUnitario    := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_UNITBRUTITEMNOTAFISC.Value,ffFixed,21,10));
    ACBr_P_ValorTotal       := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_BRUTITEMNOTAFISC.Value,ffFixed,15,2));
    ACBr_P_ValorDesconto    := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_DESCITEM.Value,ffFixed,15,2)) ;//Muda_virgula_ponto(floattostrF(QryItemNfEleVL_DESCICMSITEMNOTAFISC.Value,ffFixed,15,2));
    ACBr_P_vOutro           := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_OUTRASDESP.Value,ffFixed,15,2)) ;
    ACBr_P_NumeroDI         := '';
    ACBr_P_DataRegistroDI   := '';
    ACBr_P_LocalDesembaraco := '';
    ACBr_P_UFDesembaraco    := '';
    ACBr_P_DataDesembaraco  := '';
    ACBr_P_CodigoExportador := '';
    ACBr_P_indTot           := '1';
    ACBr_P_xPed             := QImpDocPedIE_PEDIVEND.AsString;

    if ACBr_P_CFOP = '5662' then
    begin
      ACBr_Combu_cProdANP := '620501001'; // código ANP
      ACBr_Combu_descANP  := 'CICLO OTTO'; //  descrição ANP
      ACBr_Combu_UFCons   := 'SP'; //  uf do consumo
    end;

    //Imprime no memo o produto
    ACBrNFe.Memo_Produtos;

    // Complemento de ICMS
    if ( QryNfEleFL_NFCOMPLEMENTAR.AsString = 'I' ) then
    begin
      //Coloca o icms no memo
      ACBrNFe.Memo_CICMS(VSoma);
      ACBr_IC_CST                 := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2);
      ACBr_IC_Origem              := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,1,1);
      ACBr_IC_Modalidade          := '1';
      ACBr_IC_ValorBase           := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.Value,ffFixed,15,2)); //'';
      ACBr_IC_Aliquota            := '';
      ACBr_IC_Valor               := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_ICMSITEMNOTAFISC.Value,ffFixed,15,2));
      ACBr_IC_ModalidadeST        := '';
      ACBr_IC_PercentualMargemST  := '';
      ACBr_IC_PercentualReducaoST := '';
      ACBr_IC_ValorBaseST         := '';
      ACBr_IC_AliquotaST          := '';
      ACBr_IC_ValorST             := '';
      //Imprime no memo o icms
      ACBrNFe.Memo_ICMS;

    end
    else
    // Nota de crédito de ativo
    if (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '90'  )  AND ( QryItemNfEleNR_CFOP_ITEMNOTAFISC.Value = '1604' )  then
    begin
      //Coloca o icms do item da nota fiscal
      ACBrNFe.Memo_CICMS(VSoma);
      ACBr_IC_CST                 := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2);
      ACBr_IC_Origem              := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,1,1);
      ACBr_IC_Modalidade          := '3';
      ACBr_IC_ValorBase           := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.Value,ffFixed,15,2));
      ACBr_IC_Aliquota            := Muda_virgula_ponto(floattostrF(QryItemNfElePC_ICMSITEMNOTAFISC.Value,ffFixed,15,2));
      ACBr_IC_Valor               := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_ICMSITEMNOTAFISC.Value,ffFixed,15,2));

      //Imprime no memo o icms
      ACBrNFe.Memo_ICMS;
    end
    else
    If (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '00') then
    begin
      //Coloca o icms do item da nota fiscal
      ACBrNFe.Memo_CICMS(VSoma);
      ACBr_IC_CST                 := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2);
      ACBr_IC_Origem              := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,1,1);
      ACBr_IC_Modalidade          := '1';
      ACBr_IC_ValorBase           := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.Value,ffFixed,15,2));
      ACBr_IC_Aliquota            := Muda_virgula_ponto(floattostrF(QryItemNfElePC_ICMSITEMNOTAFISC.Value,ffFixed,15,2));
      ACBr_IC_Valor               := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_ICMSITEMNOTAFISC.Value,ffFixed,15,2));
      ACBr_IC_ModalidadeST        := '';
      ACBr_IC_PercentualMargemST  := '';
      ACBr_IC_PercentualReducaoST := '';
      ACBr_IC_ValorBaseST         := '';
      ACBr_IC_AliquotaST          := '';
      ACBr_IC_ValorST             := '';

      if ( RCestaBasica <> 'S' ) then
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
      ACBr_IC_Modalidade          := '1';
      ACBr_IC_ValorBase           := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_BASEICMSITEMNOTAFISC.Value,ffFixed,15,2));
      ACBr_IC_Aliquota            := Muda_virgula_ponto(floattostrF(QryItemNfElePC_ICMSITEMNOTAFISC.Value,ffFixed,15,2));
      ACBr_IC_Valor               := Muda_virgula_ponto(floattostrF(QryItemNfEleVL_ICMSITEMNOTAFISC.Value,ffFixed,15,2));
      ACBr_IC_ModalidadeST        := '';
      ACBr_IC_PercentualMargemST  := '';
      ACBr_IC_PercentualReducaoST := '';
      ACBr_IC_ValorBaseST         := '';
      ACBr_IC_AliquotaST          := '';
      ACBr_IC_ValorST             := '';

      if ( RCestaBasica <> 'S' ) then
        ACBr_IC_PercentualReducao   := QryItemNfElePC_REDUICMSITEMNOTAFISC.AsString;
      //Imprime no memo o icms
      ACBrNFe.Memo_ICMS;
    end;

    If (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '40') or
       (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '41') or
       (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '50') or
       (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '51') or
       (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '90') or
       (COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2) = '60') then
    begin
      //Coloca o icms no memo
      ACBrNFe.Memo_CICMS(VSoma);
      ACBr_IC_CST                 := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,2,2);
      ACBr_IC_Origem              := COPY(QryItemNfEleFL_SITUTRIBICMS_ITEMNOTAFISC.Value,1,1);
      ACBr_IC_Modalidade          := '1';
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

    If qryPisCofinsNR_ST_PISCOFINS.Value = '06' then
    begin
      vCofins:= 0;
      vPis:= 0;
      //Coloca o pis no memo
      ACBrNFe.Memo_CPIS(VSoma);
      ACBr_P1_CST         := qryPisCofinsNR_ST_PISCOFINS.Value;
      ACBr_P1_ValorBase   := '0.00';
      ACBr_P1_Aliquota    := '0.00';
      ACBr_P1_Valor       := '0.00';
      ACBr_P1_Quantidade  := '';
      ACBr_P1_TipoCalculo := '';
      //Imprime no memo o PIS
      ACBrNFe.Memo_PIS;

      //Coloca o cofins no memo
      ACBrNFe.Memo_CCOFINS(VSoma);
      ACBr_CF_CST         := qryPisCofinsNR_ST_PISCOFINS.Value;
      ACBr_CF_ValorBase   := '0.00';
      ACBr_CF_Aliquota    := '0.00';
      ACBr_CF_Valor       := '0.00';
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

    VTotDesconto := VTotDesconto + QryItemNfEleVL_DESCITEM.Value;
    VTotOutDesp  := VTotOutDesp  + QryItemNfEleVL_OUTRASDESP.Value;
    VSoma := VSoma+1;
    QryItemNfEle.Next;
  end;

  //Totaliza a nota fiscal
  ACBr_T_BaseICMS              := Muda_virgula_ponto(floattostrF(QryNfEleVL_BASEICMSNOTAFISC.Value,ffFixed,15,2));
  ACBr_T_ValorICMS             := Muda_virgula_ponto(floattostrF(QryNfEleVL_ICMSNOTAFISC.Value,ffFixed,15,2));
  ACBr_T_ValorProduto          := Muda_virgula_ponto(floattostrF(QryNfEleVL_PRODNOTAFISC.Value,ffFixed,15,2));
  ACBr_T_BaseICMSSubstituicao  := Muda_virgula_ponto(floattostrF(BSSUBSTICMS,ffFixed,15,2));
  ACBr_T_ValorICMSSubstituicao := Muda_virgula_ponto(floattostrF(VLSUBSTICMS,ffFixed,15,2));
  ACBr_T_ValorFrete            := Muda_virgula_ponto(floattostrF(QryNfEleVL_FRETNOTAFISC.Value,ffFixed,15,2));
  ACBr_T_ValorSeguro           := Muda_virgula_ponto(floattostrF(QryNfEleVL_SEGUNOTAFISC.Value,ffFixed,15,2));
  ACBr_T_ValorDesconto         := Muda_virgula_ponto(floattostrF(VTotDesconto,ffFixed,15,2)); //Muda_virgula_ponto(floattostrF(QryNfEleVL_DESCPEDIVEND_NOTAFISC.Value,ffFixed,15,2));
  ACBr_T_ValorII               := '0.00';
  ACBr_T_ValorIPI              := Muda_virgula_ponto(floattostrF(QryNfEleVL_IPINOTAFISC.Value,ffFixed,15,2));
  ACBr_T_ValorPIS              := Muda_virgula_ponto(floattostrF(vPis,ffFixed,15,2));
  ACBr_T_ValorCOFINS           := Muda_virgula_ponto(floattostrF(vCofins,ffFixed,15,2));
  ACBr_T_ValorOutrasDespesas   := Muda_virgula_ponto(floattostrF(QryNfEleVL_OUTRDESPNOTAFISC.Value,ffFixed,15,2));
  ACBr_T_ValorNota             := Muda_virgula_ponto(floattostrF(QryNfEleVL_NOTAFISC.Value,ffFixed,15,2));
  //Imprime no memo o COFINS
  ACBrNFe.Memo_TotalNFe;

  if ((UpperCase(TiraAcentos(QryNfEleNM_TRANSPORTADOR_NOTAFISC.Value)) = 'O MESMO') and
     (RemoveChar(QryNfEleGN_PLACVEICNOTAFISC.AsString) = '')) or
     (QryNfEleFL_TIPOFRETNOTAFISC.AsString = '9' ) then
  begin
    ACBr_TR_FretePorConta := '9';
    ACBrNFe.Memo_Transportador;
  end
  else if ( QryNfEleFL_SEMTRANSP.Value = 'S' ) then // Desconhecido
  begin
    {FABRICIO - 31/07/2018 - MOTIVO: NFE 4.0
    if ( QryNfEleFL_TIPOFRETNOTAFISC.AsString = '1' ) then
       ACBr_TR_FretePorConta := '0'
     else
       ACBr_TR_FretePorConta := '1';}
    ACBr_TR_FretePorConta := QryNfEleFL_TIPOFRETNOTAFISC.AsString;
    ACBrNFe.Memo_Transportador;
  end
  else
  begin
    //Filtra a cidade da transportadora para obter o ibge
    IBGE := 0;
    QryCidade.Close;
    QryCidade.ParamByName('NR_NOTA').Value := QImpDocPedNR_NOTAFISC.AsString;
    QryCidade.ParamByName('NR_SER').Value  := QImpDocPedSG_SERINOTAFISC.AsString;
    QryCidade.Open;
    If QryCidade.RecordCount > 0 then IBGE := QryCidadeID_IBGE.Value;
    QryCidade.Close;

    //Transportadora da nota fiscal
    if (UpperCase(TiraAcentos(QryNfEleNM_TRANSPORTADOR_NOTAFISC.Value)) = 'O MESMO') and (RemoveChar(QryNfEleGN_PLACVEICNOTAFISC.AsString) = '') then
    begin
      ACBr_TR_FretePorConta := '9'
    end
    else
    {FABRICIO - 31/07/2018 - MOTIVO:NFE 4.0
      if ( QryNfEleFL_TIPOFRETNOTAFISC.AsString = '1' ) then
        ACBr_TR_FretePorConta := '0'
      else
        ACBr_TR_FretePorConta := '1';}
    ACBr_TR_FretePorConta := QryNfEleFL_TIPOFRETNOTAFISC.AsString;

    If QryNfEleNR_CPFTRANNOTAFISC.AsString <> ''  then ACBr_TR_CnpjCpf  := QryNfEleNR_CPFTRANNOTAFISC.AsString;
    If QryNfEleNR_CNPJTRANNOTAFISC.AsString <> '' then ACBr_TR_CnpjCpf := QryNfEleNR_CNPJTRANNOTAFISC.AsString;

    If QryNfEleNR_IETRANNOTAFISC.AsString <> '' then
      ACBr_TR_IE := QryNfEleNR_IETRANNOTAFISC.AsString
    else
      ACBr_TR_IE := '' ;

    ACBr_TR_NomeRazao     := TiraAcentos(QryNfElenm_transportador_notafisc.AsString);
    ACBr_TR_Endereco      := TiraAcentos(QryNfEleNM_ENDETRANNOTAFISC.AsString);
    ACBr_TR_Cidade        := TiraAcentos(QryNfEleNM_CIDATRANNOTAFISC.AsString);
    ACBr_TR_UF            := QryNfEleSG_ESTATRANNOTAFISC.AsString;

    //Grupo Retenção ICMS transporte
    ACBr_TR_ValorServico  := '';
    ACBr_TR_ValorBase     := '';
    ACBr_TR_Aliquota      := '';
    ACBr_TR_Valor         := '';
    ACBr_TR_CFOP          := '5351';
    If IBGE > 0 then ACBr_TR_CidadeCod := InttoStr(IBGE);
    If IBGE = 0 then ACBr_TR_CidadeCod := '';

    ACBr_TR_Placa         := RemoveChar(QryNfEleGN_PLACVEICNOTAFISC.Value);
    if ( ACBr_TR_Placa <> '' )  then
       ACBr_TR_UFPlaca       := QryNfEleSG_ESTAPLACVEICNOTAFISC.AsString;
    ACBr_TR_RNTC          := '';
    //Imprime no memo o Transportador
    ACBrNFe.Memo_Transportador;

    //Volumes da nota fiscal
    ACBr_V_Quantidade  := QryNfEleQN_VOLUNOTAFISC.AsString;
    ACBr_V_Especie     := QryNfEleGN_ESPENOTAFISC.AsString;
    ACBr_V_Marca       := QryNfEleGN_MARCNOTAFISC.AsString; // Ceu Azul Sta Rita
    ACBr_V_Numeracao   := QryNfEleNR_VOLUNOTAFISC.AsString;
    ACBr_V_PesoLiquido := QryNfEleQN_PESOLIQUNOTAFISC.AsString;
    ACBr_V_PesoBruto   := QryNfEleQN_PESOBRUTNOTAFISC.AsString;
    //Imprime no memo o Volume
    ACBrNFe.Memo_Volume;
  end;

  If (QryBolNFevl_boleto.Value > 0) then
  begin

    If (QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat > 0 ) then
    begin

      //Fatura da nota fiscal
      ACBr_F_Numero        := QryNfEleNR_NOTAFISC.AsString;
      ACBr_F_ValorOriginal := Muda_virgula_ponto(FloatToStrF(QryNfEleVL_NOTAFISC.Value,ffFixed,15,2));
      ACBr_F_ValorDesconto := Muda_virgula_ponto(FloatToStrF(QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat,ffFixed,15,3));
      ACBr_F_ValorLiquido  := Muda_virgula_ponto(FloatToStrF((QryNfEleVL_NOTAFISC.Value - QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat),ffFixed,15,3));
      //Imprime no memo a Fatura
      ACBrNFe.Memo_Fatura;

      QryBolNFe.First;
      For I := 1 to QryBolNFe.RecordCount do
      begin
        //Duplicata da nota fiscal
        ACBrNFe.Memo_CDuplicata(I);
        {FABRICIO - 10/05/2018 - MOTIVO: A PEDIDO DO FINANCEIRO, ATRIBUIR NO XML O NUMERO DA NOTA FISCAL QUANDO CLIENTE FOR CAVICCHIOLLI, PAGUE MENOS OU INCOFAP
        if StrToInt(FloatToStr(QImpDocPedID_CONTA.Value)) IN [16,35,32] then
          ACBr_DP_Numero         := FloatToStr(QImpDocPedNR_NOTAFISC.Value)
        else
          ACBr_DP_Numero         := QryBolNFenr_boleto.Value;}

        {FABRICIO - 03/09/2018 - MOTIVO:SEQ DE DUPLICATA DEVE SER COM ATE 03 DIGITOS. ALTERAÇÃO AMBIENTE EM 03/09/2018}
        ACBr_DP_Numero         := StrZerodec(i,3,0);
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
        {FABRICIO - 10/05/2018 - MOTIVO: A PEDIDO DO FINANCEIRO, ATRIBUIR NO XML O NUMERO DA NOTA FISCAL QUANDO CLIENTE FOR CAVICCHIOLLI, PAGUE MENOS OU INCOFAP
        if StrToInt(FloatToStr(QImpDocPedID_CONTA.Value)) IN [16,35,32] then
          ACBr_DP_Numero         := FloatToStr(QImpDocPedNR_NOTAFISC.Value)
        else
          ACBr_DP_Numero         := QryBolNFenr_boleto.Value;}

        {FABRICIO - 03/09/2018 - MOTIVO:SEQ DE DUPLICATA DEVE SER COM ATE 03 DIGITOS. ALTERAÇÃO AMBIENTE EM 03/09/2018}
        ACBr_DP_Numero         := StrZerodec(i,3,0);
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
  qryTemp.SQL.Text := ' Select NF.ID_NOTAFISC , NF.OBS_FISCO,  NF.GN_OBSENOTAFISC '+
                     '   From Pedido_Venda_Nota_Fiscal P '+
                     '  Inner Join NOTA_FISCAL NF '+
                     '     ON P.EMPRESA = NF.EMPRESA '+
                     '    AND P.FILIAL  = NF.FILIAL  '+
                     '    AND P.Id_Notafisc = NF.ID_NOTAFISC '+
                     '   Where P.ID_PEDIVEND =' + QImpDocPedID_PEDIVEND.AsString ;

  qryTemp.Open;
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

  If Trim(qryTemp.FieldByName('OBS_FISCO').AsString) <> '' then
  begin
    //Informações complementares da nota fiscal
    ACBr_DA_Fisco       :=  Trim(qryTemp.FieldByName('OBS_FISCO').AsString);
    ACBr_DA_Fisco :=StringReplace( ACBr_DA_Fisco , #$D#$A,' ',[rfReplaceAll]);
    ACBr_DA_Fisco :=StringReplace( ACBr_DA_Fisco , #9,    ' ',[rfReplaceAll]);
  end;

  If Trim(qryTemp.FieldByName('GN_OBSENOTAFISC').AsString) <> '' then
  begin
    //Informações complementares da nota fiscal
    ACBr_DA_Complemento := Trim(qryTemp.FieldByName('GN_OBSENOTAFISC').AsString);
  end;

  // Adiciona Referenciadas nas Informações adicionais
  QryReferenciadas.Close;
  QryReferenciadas.ParamByName('ID_PEDIVEND').Value := QImpDocPedID_PEDIVEND.AsString;
  QryReferenciadas.Open;
  If QryReferenciadas.RecordCount > 0 then
  begin
    QryReferenciadas.First;
    While not QryReferenciadas.Eof do
    begin
      If QryReferenciadasTIPO.Value = '1' then
      begin
        ACBr_DA_Complemento := ACBr_DA_Complemento +  ' - NFE referenciada ' + QryReferenciadasB13_refNFe.Value;

      end;

      If QryReferenciadasTIPO.Value = '2' then
      begin
        ACBr_DA_Complemento := ACBr_DA_Complemento + ' - NF referenciada '+ QryReferenciadasB14_nNF.Value + ' Série ' + QryReferenciadasB14_serie.Value + ' CNPJ ' + QryReferenciadasB14_CNPJ.Value ;
      end;

      If QryReferenciadasTIPO.Value = '3' then
      begin
        ACBr_DA_Complemento := ACBr_DA_Complemento +  ' - NFP referenciada ' + QryReferenciadasB20a_nNF.Value + ' Série ' + QryReferenciadasB20a_serie.Value  ;

        //Escreve o CNPJ
        If QryReferenciadasB20D_CNPJ.Value <> '' then    //CNPJ <> '' e CPF = ''
          ACBr_DA_Complemento := ACBr_DA_Complemento + ' CNPJ  ' + QryReferenciadasB20D_CNPJ.Value;

        //Escreve o CPF
        If QryReferenciadasB20E_CPF.Value <> ''     then
          ACBr_DA_Complemento := ACBr_DA_Complemento + ' CPF ' + QryReferenciadasB20E_CPF.Value;

      end;

      If QryReferenciadasTIPO.Value = '4' then
      begin
        ACBr_DA_Complemento := ACBr_DA_Complemento +  ' - CTE referenciado ' + QryReferenciadasB20I_REFCTE.Value ;
      end;

      If QryReferenciadasTIPO.Value = '5' then
      begin
        ACBr_DA_Complemento := ACBr_DA_Complemento + ' - ECF referenciado COO ' +QryReferenciadasB20J_COO.Value + ' ECF ' + QryReferenciadasB20J_NECF.Value + ' Modelo ' +QryReferenciadasB20J_MOD.Value ;
      end;
      QryReferenciadas.Next;
    end;
  end;
  // Adiciona Referenciadas nas Informações adicionais

  if ( ACBr_DA_Complemento <> '' ) then
  begin
    ACBr_DA_Complemento := StringReplace( ACBr_DA_Complemento , #$D#$A,' ',[rfReplaceAll]);
    ACBr_DA_Complemento := StringReplace( ACBr_DA_Complemento , #9,    ' ',[rfReplaceAll]);
    ACBr_DA_Complemento := StringReplace( ACBr_DA_Complemento , #$D,' ',[rfReplaceAll]);
    ACBr_DA_Complemento := StringReplace( ACBr_DA_Complemento , #13,    ' ',[rfReplaceAll]);
    ACBr_DA_Complemento := StringReplace( ACBr_DA_Complemento , #10,    ' ',[rfReplaceAll]);
    ACBr_DA_Complemento := StringReplace( ACBr_DA_Complemento , 'Nº',  'Nro.',[rfReplaceAll]);
  end;

  ACBrNFe.Memo_Adicional;

  {NOME: FABRICIO DATA:23/02/2018 MOTIVO: CLIENTE PAGUE MENOS SOLICITOU A INCLUSÃO DO NUMERO DO PEDIDO COMO UMA TAG SEPARADA DENTRO DO XML}
//  ACBr_CP_xPed := QImpDocPedIE_PEDIVEND.AsString;

  ACBrNFE.Memo_Compra;

  {FABRICIO - 26/07/2018 - MOTIVO:NFE 4.0 - NF Ajuste ou Devolução}
  if (QryNfEleFIN_NFE.Value = '3') OR (QryNfEleFIN_NFE.Value = '4') then
    ACBr_PG_tPag := '90' // tipo 90 - SEM PAGAMENTO, e nao informa valor
  else
  begin
    ACBr_PG_tPag := Copy(QryFormaPagaPedNU_FORMA_PAGTO_NFE.Value,1,2);
    ACBr_PG_vPag := Muda_virgula_ponto(FloatToStrF((QryNfEleVL_NOTAFISC.Value - QryNfEleVL_DESCPEDIVEND_NOTAFISC.AsFloat),ffFixed,15,3));
  end;

  // Dacar Ainda nao se utiliza mais de uma opção de pagamento para mesma NF-e
  ACBrNFE.Memo_CPagto(1);
  ACBrNFE.Memo_Pagto;

  FormatSettings.shortdateformat := 'dd/mm/yyyy';

end;


procedure TfrmEmissorNFe.btn_NfeSocketClick(Sender: TObject);
var  i , NotaTransmitida : Integer ;
    Msg_Erro , Resp_NFE, Email, Continua   : string;
begin
  Versao2 := 1;
  Msg_Erro := '';
  Continua := 'N';
  NotaTransmitida := 0 ;

  if ( UpperCase( TIPOEMISSAO ) ='NFE' ) then
  begin
    //Manter verificação se o Monitor ficar na mesma maquina onde gerar a NFE
    fSocket.SendString('NFe.Ativo'+ #13+#10+'.'+#13+#10);

    if ( RespMonitor('') <> '0' ) then
    begin
      MensagemEspera(false,'');
      MonitorAberto := False;
      Application.MessageBox('O Monitor de Transmissão de Nota Fiscal Eletrônica não esta em execução.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
    end
    else
      MonitorAberto := true ;

    If Application.MessageBox('Confirma geração da Nota Fiscal Eletrônica para o(s) Pedido(s) selecionado(s)?', PChar(frmEmissorNFe.Caption), MB_OKCANCEL + MB_ICONINFORMATION) = IDOK then
    begin
      Screen.Cursor := crSQLWait;
      MensagemEspera(true,'Gerando NFe.');

      QImpDocPed.First;
      QImpDocPed.DisableControls;
      dbg_Notas.Enabled := False;

      for i := 0 to dbg_Notas.SelectedRows.Count - 1 do
      begin
        // Posicionamos no registro desejado
        dbg_Notas.DataSource.DataSet.GotoBookmark(dbg_Notas.SelectedRows.Items[i]);

        RetArqXml   := '';
        RetNR_NOTA  := '';
        RetSER_NOTA := '';
        Email       := QImpDocPedGN_EMAICLIE.AsString;

        if ( chkAmb.Checked ) AND( Continua = 'N' ) then
        begin
          Qry_NotaNaoTransmitida.Close;
          Qry_NotaNaoTransmitida.ParamByName('NR_NOTAFISC').Value := QImpDocPedNR_NOTAFISC.AsString;
          Qry_NotaNaoTransmitida.Open;

          if (Qry_NotaNaoTransmitida.RecordCount > 0 )  then
          begin
            if (Application.MessageBox(PChar('A NF-e ' + Qry_NotaNaoTransmitidaNR_NOTAFISC.AsString + ' da empresa '+ Qry_NotaNaoTransmitidaUNOMEUNEG.AsString +
              ' não foi transmitida ou o XML não foi carregado. Providencie a regularização da Nota. Deseja continuar mesmo assim?'), PChar(frmEmissorNFe.Caption), MB_YESNO + MB_ICONWARNING) = IDNO) then          begin
              MensagemEspera(false,'');
              Screen.Cursor := crDefault;
              QImpDocPed.EnableControls;
              dbg_Notas.Enabled := true;
              exit;
            end
            else
              Continua := 'S' ;
          end;
        end;

        if (  Permitir_GeracaoNFe ( QImpDocPedID_PEDIVEND.AsInteger, QImpDocPedNR_NOTAFISC.AsString, QImpDocPedSG_SERINOTAFISC.AsString ) ) then
        begin
          MensagemEspera( true , 'Gerando NFe para Nota ' +QImpDocPedNR_NOTAFISC.AsString   );
          ACBrNFe.Comando := '';
          //Apaga o arquivo memo
          MemoACBrNFe.Lines.Clear;
          try
            PreencheDadosACBR( QImpDocPedID_PEDIVEND.AsInteger, QImpDocPedNR_NOTAFISC.AsString, QImpDocPedSG_SERINOTAFISC.Value   );
          except
            On E : Exception do
            begin
              MensagemEspera(false,'');
              ShowMessage('Erro ao obter dados para geração da NFe . '+ E.Message);
              QImpDocPed.Close;
              QImpDocPed.Open;
              Screen.Cursor := crDefault;
              QImpDocPed.EnableControls;
              dbg_Notas.Enabled := true;
              Exit;
            end
          end;

          Mem_Nfe.Lines.Add('---------------Inicio Geração NF : '+QImpDocPedNR_NOTAFISC.AsString+'---------------');
          fSocket.SendString( 'NFe.CriarEnviarNFe("' + ACBrNFe.Comando + '" ,1 ,1  ) '+ #13+#10+'.'+#13+#10);
          MemoACBrNFe.Lines.Add( 'NFe.CriarEnviarNFe("' + ACBrNFe.Comando + '" ,1 ,1  ) '+ #13+#10+'.'+#13+#10 );
          Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Gerando NFE ' + QImpDocPedNR_NOTAFISC.AsString );
          ContResp := 0;
          Resp_Erro := '2';
          Resp_NFE :=  RespGeraNFe() ;

          if( Resp_Erro = '0' ) then
          begin
            Mem_Resultado.Lines.Add('NFe '+QImpDocPedNR_NOTAFISC.AsString +' gerada . ');
            NotaTransmitida := NotaTransmitida + 1 ;

            // para ambiente de homologação troca e-mail
            if ( chkAmb.Checked = false ) AND ( Email <> 'N') then
              Email := gs_EmailTeste;

            // Enviar e-mail
            if ( RetArqXml <> '') AND ( Email <> '') AND ( gs_EnviaEmailNFe = 'S' ) then
            begin
              fSocket.SendString   ('NFe.EnviarEmail( "'+ Trim(Email) +'" , "'+ Trim(RetArqXml) +'" , "1" ,"Referente NFe '+QImpDocPedNR_NOTAFISC.AsString+' - '+dadosCadastraisFilial.NomeFilial+'" ) '+ #13+#10+'.'+#13+#10);
              MemoACBrNFe.Lines.Add('NFe.EnviarEmail( "'+ Trim(Email) +'" , "'+ Trim(RetArqXml) +'" , "1" ,"Referente NFe '+QImpDocPedNR_NOTAFISC.AsString+' - '+gs_Empresa+'" ) '+ #13+#10+'.'+#13+#10);
              Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Enviando Email ' + QImpDocPedNR_NOTAFISC.AsString );
              Mem_Resultado.Lines.Add('Enviando e-mail '+QImpDocPedNR_NOTAFISC.AsString +'  . ');
              RespDanfe('NORMAL');
            end;
          end
          else if ( ( Resp_Erro = '1' )  ) then
          begin
            Msg_Erro := Msg_Erro + 'A NFe '+ QImpDocPedNR_NOTAFISC.AsString + ' não foi gerada.'  ;
            Mem_Resultado.Lines.Add('NFe '+QImpDocPedNR_NOTAFISC.AsString +' não foi gerada.');
          end
          else if ( ( Resp_Erro = '3' )  ) then
          begin
            Msg_Erro := Msg_Erro + 'A NFe '+ QImpDocPedNR_NOTAFISC.AsString + ' foi DENEGADA . '  ;
            Mem_Resultado.Lines.Add('NFe '+QImpDocPedNR_NOTAFISC.AsString +' foi DENEGADA .');

            if  ( chkAmb.Checked = true ) AND ( QImpDocPedFL_CANCNOTAFISC.AsString <> 'S') then
            begin
              if ( CancelaNFSistema ( QImpDocPedID_PEDIVEND.AsInteger ) = false ) then
              begin
                MessageDlg('Erro ao cancelar Nota fiscal ' + IntToStr(qryTemp['NR_NOTAFISC']) + ' do pedido '
                + IntToStr(QImpDocPed['ID_PEDIVEND']),mtError, [mbOK], 0);
                Exit;
              end;
            end;
          end
          else if ( ContResp >= 10  ) then
          begin
            Mem_Resultado.Lines.Add('NFe '+QImpDocPedNR_NOTAFISC.AsString +' não foi gerada. Não foi possivel obter resposta do Servidor.');
            Application.MessageBox(PChar('NFe '+QImpDocPedNR_NOTAFISC.AsString +' não foi gerada. Não foi possivel obter resposta do Servidor.'), PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
          end;

           Mem_Nfe.Lines.Add('---------------Fim Geração NF : '+QImpDocPedNR_NOTAFISC.AsString+'---------------');
        end
      end;

      MensagemEspera(false,'');
      QImpDocPed.EnableControls;
      dbg_Notas.Enabled := true;

      Application.MessageBox(PChar('Notas Fiscais Eletrônicas ' + IntToStr(NotaTransmitida) + ' transmitidas com sucesso. '+ Msg_Erro), PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
      QImpDocPed.Close;
      QImpDocPed.Open;

       // Seleciona itens do grid novamente
      If not QImpDocPed.IsEmpty then
      begin
        dbg_Notas.DataSource.DataSet.First;
        For i := 0 to QImpDocPed.RecordCount - 1 do
        begin
          dbg_Notas.SelectedRows.CurrentRowSelected := (QImpDocPedID_NFE_XML.Value > 0 ) ;
          dbg_Notas.DataSource.DataSet.Next;
        end;
          dbg_Notas.SelectedRows.Refresh;
      end;
      Screen.Cursor := crDefault;
    end;
  end
  else
  begin
    //Manter verificação se o Monitor ficar na mesma maquina onde gerar a NFE
    fSocket.SendString('CTe.Ativo'+ #13+#10+'.'+#13+#10);

    if ( RespMonitor('') <> '0' ) then
    begin
      MensagemEspera(false,'');
      MonitorAberto := False;
      Application.MessageBox('O Monitor de Transmissão de Conhecimento de Transporte Eletrônico não esta em execução.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
    end
    else
      MonitorAberto := true ;

    GerarCTE();
  end;

  HabilitaBotoes();
end;

procedure TfrmEmissorNFe.btn_StatusClick(Sender: TObject);
begin
  if ( UPPERCASE(TIPOEMISSAO) = 'NFE' ) then
  begin
    fSocket.SendString( 'NFe.StatusServico' + #13+#10+'.'+#13+#10);
    MemoACBrNFe.Lines.Add('NFe.StatusServico' + #13+#10+'.'+#13+#10);
    RespStatusServico ;
  end
  else
  begin
    fSocket.SendString( 'CTe.StatusServico' + #13+#10+'.'+#13+#10);
    MemoACBrNFe.Lines.Add('CTe.StatusServico' + #13+#10+'.'+#13+#10);
    RespStatusServico ;
  end;
end;

procedure TfrmEmissorNFe.FormDestroy(Sender: TObject);
begin
  fSocket.CloseSocket;
  fSocket.Free;
end;

function TfrmEmissorNFe.Muda_virgula_ponto(OValor: String): String;
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

function TfrmEmissorNFe.RespStatusServico( ): String ;
var
  Resposta , Linha , Mensagem  : String;
  TResp   : TStringList;
  i , Erro : Integer ;
begin
  Erro := 0 ;
  TResp := TStringList.Create;
  MSgResposta := '';

  Mem_Status.Lines.Add('Inicio Consulta ===>'+TimeToStr(Now));

  Resposta := fSocket.RecvTerminated(5000, #3);
  MemoNFe.Lines.Add(Resposta);

  TResp.SetText(  PWideChar( Resposta ) );
  for i := 0 to  TResp.Count - 1 do
  begin
    Linha := TResp.Strings[i];
  //Mostra mensagem de erro
    If Trim(Copy(Linha, 1, 5)) = 'ERRO:' then
    begin
      Erro := 1;
      MSgResposta := Copy(Linha, 6, Length(Linha) - 5);
    end;

    If Trim(Copy(Linha, 1, 3)) = 'OK:' then
    begin
      Erro := 0;
    end;

    if ( Erro = 0 ) And (UpperCase(Trim(Copy(Linha, 1, 5))) = 'CSTAT') then
    begin
      if ( Copy(Linha, 7, Length(Linha) - 6) <> '107' ) then
        Erro := 1;
    end;

    if ( Erro = 0 ) And (UpperCase(Trim(Copy(Linha, 1, 7))) = 'XMOTIVO') then
    begin
      MSgResposta := Copy(Linha, 9, Length(Linha) - 8);
    end;

    if (Length( Linha) > 0 ) AND ( Erro = 1 ) then
      Mem_RespStatus.Lines.Add(Linha);
  end;

  if ( Erro = 1 ) then
  begin
    ShowMessage('Erro.' + MSgResposta );
  end
  else
  begin
    ShowMessage( MSgResposta );
    Mem_RespStatus.Lines.Add(MSgResposta)
  end;

  Mem_Status.Lines.Add(Resposta);
  Mem_Status.Lines.Add('Fim==============>'+TimeToStr(Now));

end;

function TfrmEmissorNFe.RespConectar() : String ;
var
  Erro ,Resposta , Linha  : String;
  TResp   : TStringList;
  i   : Integer ;
  ObterStatus : Boolean;
begin
  Erro := '2' ;
  MSgResposta := '';
  ContResp := ContResp + 1 ;
  TResp := TStringList.Create;
  Resposta := fSocket.RecvTerminated(2000, #3);
  MemoNFe.Lines.Add(Resposta);
  TResp.SetText( PWideChar( Resposta ) );

  for i := 0 to TResp.Count - 1 do
  begin
    Linha := TResp.Strings[i];
    If ( Trim(Copy(Linha, 1, 23)) = 'Esperando por comandos.' ) then
    begin
      Erro        := '0';
      MSgResposta := Trim(Copy(Linha, 1, 23)) ;
    end;
  end;

  if ( Erro = '2' ) then
  begin
    Resp_Erro := '2';
    Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : Aguardando Resposta . Tentativa :' + IntToStr(ContResp)  );
    if ( ContResp <= 2 ) then
      RespConectar()
    else
    Erro := '1' ;
  end;

  if ( Erro = '1' ) then
  begin
    MSgResposta :=  'Falha de Comunicação com o ACBR NFe Monitor.';
    ShowMessage(MSgResposta);
  end;

  MemoACBrNFe.Lines.Add(Resposta);
  TResp.Free;
  Result := Erro ;
end;

procedure TfrmEmissorNFe.HabilitaBotoes ();
begin
  btn_Status.Visible         := MonitorAberto AND (SOIMPRESSAO <> 'S') ;
//  btn_InutilizarNFe.Visible  := MonitorAberto AND (SOIMPRESSAO <> 'S') ;
  btnInutilizarNfe.Visible  := MonitorAberto AND (SOIMPRESSAO <> 'S') ;
  chkAmb.Visible             := MonitorAberto;
  btn_txt.Visible            := MonitorAberto AND (SOIMPRESSAO <> 'S') ;

//  btn_Preview.Visible     := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) AND (SOIMPRESSAO <> 'S') ;
  btnVisualizarNfe.Visible:= ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) AND (SOIMPRESSAO <> 'S') ;
//  btn_NfeSocket.Visible   := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) AND (SOIMPRESSAO <> 'S') ;//AND ( QImpDocPedNFE_CHAVE.AsString = '') AND ( QImpDocPedFL_CANCNOTAFISC.Value <> 'S' ) ;
  btnTransmitirNfe.Visible   := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) AND (SOIMPRESSAO <> 'S') ;//AND ( QImpDocPedNFE_CHAVE.AsString = '') AND ( QImpDocPedFL_CANCNOTAFISC.Value <> 'S' ) ;
//  btn_Danfe.Visible       := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) ;//AND ( QImpDocPedNFE_CHAVE.Value <> '') AND ( QImpDocPedFL_CANCNOTAFISC.Value <> 'S' );
  btnImprimirNfe.Visible       := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) ;
//  btn_DanfePDF.Visible    := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) ;//AND ( QImpDocPedNFE_CHAVE.Value <> '') AND ( QImpDocPedFL_CANCNOTAFISC.Value <> 'S' );
  btnDANFENfe.Visible    := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) ;
//  btn_SalvarXML.Visible   := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) AND ( QImpDocPedNFE_CHAVE.Value <> '') AND ( QImpDocPedCANCELADA.Value <> 'S' ) AND (SOIMPRESSAO <> 'S');
//  btnXMLNfe.Visible   := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) AND ( QImpDocPedNFE_CHAVE.Value <> '') AND ( QImpDocPedCANCELADA.Value <> 'S' ) AND (SOIMPRESSAO <> 'S');
//  btn_Carta.Visible       := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) AND ( QImpDocPedNFE_CHAVE.Value <> '') AND ( QImpDocPedCANCELADA.Value <> 'S' ) AND (SOIMPRESSAO <> 'S');
  btnCartaCorrecaoNfe.Visible       := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) AND ( QImpDocPedNFE_CHAVE.Value <> '') AND ( QImpDocPedCANCELADA.Value <> 'S' ) AND (SOIMPRESSAO <> 'S');
//  btn_CancelaNFE.Visible  := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) AND ( QImpDocPedNFE_CHAVE.Value <> '') AND ( QImpDocPedCANCELADA.Value <> 'S' ) AND (SOIMPRESSAO <> 'S');
  btnCancelarNfe.Visible  := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) AND ( QImpDocPedNFE_CHAVE.Value <> '') AND ( QImpDocPedCANCELADA.Value <> 'S' ) AND (SOIMPRESSAO <> 'S');
  btn_EditarNF.Visible    := ( QImpDocPed.RecordCount > 0 ) AND  ( QImpDocPedNR_NOTAFISC.Value <> 0  ) AND ( QImpDocPedNFE_CHAVE.Value =  '') AND ( QImpDocPedCANCELADA.Value <> 'S' ) AND (SOIMPRESSAO <> 'S') ;
end;

function TfrmEmissorNFe.RespGeraNFe() : String ;
var
  Resposta , Linha , Mensagem , TagAutorizacao, ChaveNFe, Protocolo, ArqXml, Status , Dt_Receb, DigVal : String;
  TResp   : TStringList;
  i , Erro, ID_NF_XML  : Integer ;
  ObterStatus, ObterRetorno , ConcatResp : Boolean;
begin
  ID_NF_XML := 0 ;
  ObterStatus := False;
  ObterRetorno := False;
  ConcatResp := False;
  TResp := TStringList.Create;
  MSgResposta := '';
  Resposta := fSocket.RecvTerminated(5000, #3);
  ContResp := ContResp + 1 ;
  MemoNfe.Lines.Add('=================== nº' + IntToStr( ContResp ));
  MemoNfe.Lines.Add(Resposta);

  Erro := 2 ; // Aguarda Resposta
  TagAutorizacao := '[NFE'+QImpDocPedNR_NOTAFISC.AsString+']';
  TResp.SetText(  PWideChar( Resposta ) );

  for i := 0 to  TResp.Count - 1 do
  begin
    Linha := TResp.Strings[i];

    if ( ConcatResp )  then
    begin
      MSgResposta := MSgResposta + Linha ;
    end;

    //Mostra mensagem de erro
    If UpperCase(Trim(Copy(Linha, 1, 5))) = 'ERRO:' then
    begin
      Erro := 1;
      Resp_Erro := '1';
      MSgResposta := MSgResposta + Linha ;
      ConcatResp := True ;
    end;

    If UpperCase(Trim(Copy(Linha, 1, 3))) = 'OK:' then
    begin
      Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : ' + Linha);
      MSgResposta := MSgResposta + Linha ;
      Erro := 2; // Espera resposta de Autorização
      Resp_Erro := '2' ;
    end;

    If UpperCase(Trim(Copy(Linha, 1, Length('[RETORNO]')))) = '[RETORNO]' then
    begin
      ObterRetorno := True;
    end;

    If UpperCase(Trim(Copy(Linha, 1, Length(TagAutorizacao)))) = UpperCase(TagAutorizacao) then
    begin
      ObterStatus  := True; // se achou Tag de retorno busca status
      ObterRetorno := False;
    end;

    if ( ObterRetorno ) then
    begin
      if UpperCase(Trim(Copy(Linha, 1, 6))) = 'CSTAT=' then
      begin
        Status := Trim(Copy(Linha, 7, Length(Linha) - 6 ));
        if  ( Status = '100' ) then
        begin
          Erro := 0 ;
          Resp_Erro := '0';
        end
        else if  ( Status = '302' ) then
        begin
          Erro := 3 ;
          Resp_Erro := '3';
        end
        else
        begin
          Erro := 1 ;
          Resp_Erro := '1';
        end;
      end;

      if (UpperCase(Trim(Copy(Linha, 1, 8))) = 'XMOTIVO=' ) AND ( Erro = 1 ) then
      begin
        Mem_Nfe.Lines.Add(   DateTimeToStr( Now() ) + ' : ' + Trim(Copy(Linha, 9, Length(Linha) - 8 )) );
        MSgResposta := MSgResposta +' '+Trim(Copy(Linha, 9, Length(Linha) - 8 )) ;
      end;

    end;

    if ( ObterStatus ) then
    begin
      If UpperCase(Trim(Copy(Linha, 1, 6))) = 'CSTAT=' then
      begin
        Status := Trim(Copy(Linha, 7, Length(Linha) - 6 ));
        if  ( Status = '100' ) then
        begin
          Erro := 0 ;
          Resp_Erro := '0';
        end
        else if  ( Status = '302' ) then
        begin
          Erro := 3 ;
          Resp_Erro := '3';
        end
        else
        begin
          Erro := 1 ;
          Resp_Erro := '1';
        end;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 8))) = 'XMOTIVO=' then
      begin
        Mem_Nfe.Lines.Add(   DateTimeToStr( Now() ) + ' : ' + Trim(Copy(Linha, 9, Length(Linha) - 8 )) );
        MSgResposta := MSgResposta +' '+Trim(Copy(Linha, 9, Length(Linha) - 8 )) ;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 6))) = 'CHNFE=' then
      begin
        ChaveNFe := Trim(Copy(Linha, 7, Length(Linha) - 6 )) ;
        Mem_Nfe.Lines.Add( 'Chave NFe : ' + ChaveNFe );
        MSgResposta := MSgResposta + 'Chave NFe : ' + ChaveNFe;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 6))) = 'NPROT=' then
      begin
        Protocolo := Trim(Copy(Linha, 7, Length(Linha) - 6 )) ;
        Mem_Nfe.Lines.Add('Protocolo : ' + Protocolo ) ;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 9))) = 'DHRECBTO=' then
      begin
        Dt_Receb := Trim(Copy(Linha, 10, Length(Linha) - 9 )) ;
        Mem_Nfe.Lines.Add('Dt Recebimento : ' + Dt_Receb ) ;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 7))) = 'DIGVAL=' then
      begin
        DigVal := Trim(Copy(Linha, 8, Length(Linha) - 7 )) ;
        Mem_Nfe.Lines.Add('DigVal : ' + DigVal ) ;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 8))) = 'ARQUIVO=' then
      begin
        ArqXml := Trim(Copy(Linha, 9, Length(Linha) - 8 )) ;
        Mem_Nfe.Lines.Add( 'Arquivo XML : ' + ArqXml );
        RetArqXml := ArqXml;
      end;
    end;
    if (Erro = 1 ) then
    begin
      Mensagem :=  Mensagem + Linha;
    end;
  end;

  if (Erro = 1) then
  begin
    Mem_Nfe.Lines.Add('Erro. NFe Não gerada.'  + MSgResposta);
    Mem_Erro.Lines.Add('Erro. NFe '+ QImpDocPedNR_NOTAFISC.AsString + ' Não gerada.'  + MSgResposta);
  end;

  if ( ObterStatus ) AND (( Erro = 0 ) OR ( Erro = 3 ) )  then
  begin
    if ( ChaveNFe <> '') AND ( Protocolo <> '') and ( ArqXml <> '' ) then
    begin
      if (chkAmb.Checked ) then
      begin
        qryNFEXML.Insert;
        qryNFEXMLEmpresa.Value         := QImpDocPedEMPRESA.Value;
        qryNFEXMLFILIAL.Value          := QImpDocPedFILIAL.Value;
        qryNFEXMLID_NOTAFISC.Value     := QImpDocPedID_NOTAFISC.Value;
        qryNFEXMLDT_EMISNOTAFISC.Value := QImpDocPedDT_EMISNOTAFISC.AsString;
        qryNFEXMLNR_NOTAFISC.Value     := QImpDocPedNR_NOTAFISC.Value;
        qryNFEXMLRECIBO_RETORNO.Value  := Protocolo;
        qryNFEXMLDATA_ENVIO.Value      := DateTimeToStr( Now());
        qryNFEXMLNFE_NUMERO.Value      := QImpDocPedNR_NOTAFISC.Value;
        qryNFEXMLNFE_CHAVE.Value       := ChaveNFe  ;
        qryNFEXMLNFE_DT_RECEBTO.Value  := Dt_Receb  ;
        qryNFEXMLNFE_PROTOCOLO.Value   := Protocolo ;
        qryNFEXMLNFE_CHAVE_DIGITAL.Value := DigVal;
        qryNFEXMLNFE_LOCAL.Value         := ArqXml;
        qryNFEXMLNFE_XML.LoadFromFile(ArqXml);
        qryNFEXMLRETORNO.Value           := 'S';
        if ( Erro = 1 )  then
           qryNFEXMLAUTORIZACAO.Value       := 'S'
        else
           qryNFEXMLAUTORIZACAO.Value       := 'N'  ;
        qryNFEXMLSR_NOTAFISC.Value       := QImpDocPedSG_SERINOTAFISC.Value;
        qryNFEXML.Post;
        qryNFEXML.ApplyUpdates;
        qryNFEXML.CommitUpdates;
      end
      else
      begin
        qryNFEXML_Teste.Insert;
        qryNFEXML_TesteEmpresa.Value         := QImpDocPedEMPRESA.Value;
        qryNFEXML_TesteFILIAL.Value          := QImpDocPedFILIAL.Value;
        qryNFEXML_TesteID_NOTAFISC.Value     := QImpDocPedID_NOTAFISC.Value;
        qryNFEXML_TesteDT_EMISNOTAFISC.Value := QImpDocPedDT_EMISNOTAFISC.AsString;
        qryNFEXML_TesteNR_NOTAFISC.Value     := QImpDocPedNR_NOTAFISC.Value;
        qryNFEXML_TesteRECIBO_RETORNO.Value  := Protocolo;
        qryNFEXML_TesteDATA_ENVIO.Value      := DateTimeToStr( Now());
        qryNFEXML_TesteNFE_NUMERO.Value      := QImpDocPedNR_NOTAFISC.Value;
        qryNFEXML_TesteNFE_CHAVE.Value       := ChaveNFe  ;
        qryNFEXML_TesteNFE_DT_RECEBTO.Value  := Dt_Receb  ;
        qryNFEXML_TesteNFE_PROTOCOLO.Value   := Protocolo ;
        qryNFEXML_TesteNFE_CHAVE_DIGITAL.Value := DigVal;
        qryNFEXML_TesteNFE_LOCAL.Value         := ArqXml;
        qryNFEXML_TesteNFE_XML.LoadFromFile(ArqXml);
        qryNFEXML_TesteRETORNO.Value           := 'S';
        if ( Erro = 1 )  then
           qryNFEXML_TesteAUTORIZACAO.Value       := 'S'
        else
           qryNFEXML_TesteAUTORIZACAO.Value       := 'N';

        qryNFEXML_TesteSR_NOTAFISC.Value       := QImpDocPedSG_SERINOTAFISC.Value;
        qryNFEXML_Teste.Post;
        qryNFEXML_Teste.ApplyUpdates;
        qryNFEXML_Teste.CommitUpdates;
      end;

        RetNR_NOTA  := QImpDocPedNR_NOTAFISC.AsString ;
        RetSER_NOTA := QImpDocPedSG_SERINOTAFISC.Value;
    end;
    Mem_Nfe.Lines.Add('NFe gerada : '+ QImpDocPedNR_NOTAFISC.AsString+'. '+MSgResposta);
    Result := IntToStr(Erro);
  end;

  TResp.Free;
  if ( Erro = 2 ) then
  begin
    //AguardaReposta( Tipo );
    Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : Aguardando Resposta. ( '+intTostr(ContResp)+' ).');

    if ( ContResp <= 10 ) then
      RespGeraNFe()
    else
    begin
      MSgResposta :=  MSgResposta + ' Não foi possível obter resposta.';
      Mem_Nfe.Lines.Add('NFe NÃO foi gerada : '+ QImpDocPedNR_NOTAFISC.AsString+'. '+MSgResposta);
      ShowMessage( 'NFe  ' +QImpDocPedNR_NOTAFISC.AsString+ ' NÃO foi gerada !!!' + MSgResposta );
      Mem_Erro.Lines.Add('Erro. NFe Não gerada.'  + MSgResposta);
      Erro := 1;
      Resp_Erro := '1';
    end;
  end;

  Result := IntToStr(Erro);
end;

function TfrmEmissorNFe.RespDanfe( TIPO : String ) : String ;
var
  Erro ,Resposta , Linha  : String;
  TResp   : TStringList;
  i   : Integer ;
  ObterStatus : Boolean;
begin
  Erro := '2' ;
  MSgResposta := '';
  ContResp := ContResp + 1 ;
  TResp := TStringList.Create;
  Resposta := fSocket.RecvTerminated(5000, #3);
  MemoNFe.Lines.Add(Resposta);
  TResp.SetText( PWideChar( Resposta ) );

  for i := 0 to TResp.Count - 1 do
  begin
    Linha := TResp.Strings[i];
    If ( Trim(Copy(Linha, 1, 3)) = 'OK:' ) then
    begin
      Erro        := '0';
      MSgResposta := Linha ;
    end;

    If ( Trim(Copy(Linha, 1, 5)) = 'ERRO:' ) then
    begin
      Erro        := '1';
      MSgResposta := Linha ;
    end;

  end;


  if ( Erro = '1' ) then
  begin
    Mem_Erro.Lines.Add(' DANF-e da NF '+ QImpDocPedNR_NOTAFISC.ASString + ', não foi Impressa.'+ MSgResposta);
  end;

  if ( Erro = '2' ) then
  begin
    Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : Aguardando Resposta Impressão DANF-e. Tentativa :' + IntToStr(ContResp)  );
    if ( ContResp <= 10 ) then
      RespDanfe( TIPO )
    else
      Erro := '1' ;
  end;

  if ( Erro = '0' ) then
  begin
    if (TIPO = 'NORMAL') then
      Mem_Resultado.Lines.Add('DANF-e da NF '+ QImpDocPedNR_NOTAFISC.ASString + ' foi Impressa.')
    else if (TIPO = 'PDF') then
    begin
      ArqPDF := copy( MSgResposta, 24, length(MSgResposta) - 23 ) ;
      Mem_Resultado.Lines.Add( 'DANF-e da NF '+ QImpDocPedNR_NOTAFISC.ASString + ' salvo.' + MSgResposta )  ;
    end;
  end;

  Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : '+ MSgResposta);
  MemoACBrNFe.Lines.Add(Resposta);
  TResp.Free;
  Result := Erro ;
end;

procedure TfrmEmissorNFe.btn_DanfeClick(Sender: TObject);
Var ArqXml : string;
    i, l : Integer;
    stlXml : TStringList;
begin
  Screen.Cursor := crSQLWait;
  QImpDocPed.First;

  stlXml:= TStringList.Create;

  for i := 0 to dbg_Notas.SelectedRows.Count - 1 do
  begin
     // Posicionamos no registro desejado
     dbg_Notas.DataSource.DataSet.GotoBookmark(dbg_Notas.SelectedRows.Items[i]);

{FABRICIO - 25/09/2018 - MOTIVO: MELHORIA, ENVIADO TODOS AS DANFES DE UMA UNICA X PARA IMPRESSORA, SEM PRECISAR CONFIRMAR}
//     ArqXml := '';
//     ContResp := 0 ;

    if ( chkAmb.Checked ) then
    begin
      qryNFEXML.Close;
      qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
      qryNFEXML.Open;

      if ( qryNFEXML.RecordCount > 0 ) then
      begin
        {if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
          ArqXml  := PastaXML+qryNFEXMLNFE_CHAVE.AsString+'-nfe.xml'
        else
          ArqXml  := PastaXML+qryNFEXMLNFE_CHAVE.AsString+'-cte.xml';

        qryNFEXMLNFE_XML.SaveToFile(ArqXml);}

      {FABRICIO - 25/09/2018 - MOTIVO: MELHORIA, ENVIADO TODOS AS DANFES DE UMA UNICA X PARA IMPRESSORA, SEM PRECISAR CONFIRMAR}
        if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
          stlXml.Add(PastaXML + qryNFEXMLNFE_CHAVE.AsString+'-nfe.xml')
        else
          stlXml.Add(PastaXML + qryNFEXMLNFE_CHAVE.AsString+'-cte.xml');
      end;
    end
    else
    begin
      qryNFEXML_Teste.Close;
      qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
      qryNFEXML_Teste.Open;

      if ( qryNFEXML_Teste.RecordCount > 0 ) then
      begin
        {if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
          ArqXml := PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-nfe.xml'
        else
          ArqXml := PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-cte.xml' ;

        qryNFEXML_TesteNFE_XML.SaveToFile(ArqXml);

      {FABRICIO - 25/09/2018 - MOTIVO: MELHORIA, ENVIADO TODOS AS DANFES DE UMA UNICA X PARA IMPRESSORA, SEM PRECISAR CONFIRMAR}
        if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
          stlXml.Add(PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-nfe.xml')
        else
          stlXml.Add(PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-cte.xml') ;
      end;
    end;
  end;

    if ( QImpDocPedFL_CANCNOTAFISC.AsString = 'S' ) OR (QImpDocPedCANCELADA.AsString = 'S') then
    begin
      Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' foi cancelada .' );
    end
//    else if ( ArqXml <> '' ) then
    else if ( stlXml.Count > 0 ) then
    begin
      if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
      begin
        for l := 0 to stlXml.Count - 1 do
        begin
//          fSocket.SendString   ('NFe.ImprimirDanfe( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
//          MemoACBrNFe.Lines.Add('NFe.ImprimirDanfe( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
          {FABRICIO - 25/09/2018 - MOTIVO: MELHORIA, ENVIADO TODOS AS DANFES DE UMA UNICA X PARA IMPRESSORA, SEM PRECISAR CONFIRMAR}
          fSocket.SendString   ('NFe.ImprimirDanfe( "'+ Trim(stlXml.Strings [ l ]) +'" ) '+ #13+#10+'.'+#13+#10);
          MemoACBrNFe.Lines.Add('NFe.ImprimirDanfe( "'+ Trim(stlXml.Strings [ l ]) +'" ) '+ #13+#10+'.'+#13+#10);
          Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Gerando DANFE ' + QImpDocPedNR_NOTAFISC.AsString );
          RespDanfe('NORMAL');
        end;

      end
      else
      begin
        for l := 0 to stlXml.Count - 1 do
        begin
//          fSocket.SendString   ('CTe.imprimirdacte( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
//          MemoACBrNFe.Lines.Add('CTe.imprimirdacte( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
          {FABRICIO - 25/09/2018 - MOTIVO: MELHORIA, ENVIADO TODOS AS DANFES DE UMA UNICA X PARA IMPRESSORA, SEM PRECISAR CONFIRMAR}
          fSocket.SendString   ('CTe.imprimirdacte( "'+ Trim(stlXml.Strings [ l ]) +'" ) '+ #13+#10+'.'+#13+#10);
          MemoACBrNFe.Lines.Add('CTe.imprimirdacte( "'+ Trim(stlXml.Strings [ l ]) +'" ) '+ #13+#10+'.'+#13+#10);
          Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Gerando DACTE ' + QImpDocPedNR_NOTAFISC.AsString );
          RespDanfe('NORMAL');
        end;
      end;

    end
    else
      Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' não possui XML para gerar a Danfe.' );
//  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmEmissorNFe.btn_DanfePDFClick(Sender: TObject);
Var ArqXml : string;
    i : integer;
begin
  Screen.Cursor := crSQLWait;

  QImpDocPed.First;
  for i := 0 to dbg_Notas.SelectedRows.Count - 1 do
  begin
    // Posicionamos no registro desejado
    dbg_Notas.DataSource.DataSet.GotoBookmark(dbg_Notas.SelectedRows.Items[i]);

    ArqXml := '';
    ArqXml := '';
    ContResp := 0 ;

    if ( chkAmb.Checked ) then
    begin
      qryNFEXML.Close;
      qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
      qryNFEXML.Open;

      if ( qryNFEXML.RecordCount > 0 ) then
      begin
        if ( UPPERCASE (TIPOEMISSAO)= 'NFE') then
           ArqXml  := PastaXML+qryNFEXMLNFE_CHAVE.AsString+'-nfe.xml'
        else
          ArqXml  := PastaXML+qryNFEXMLNFE_CHAVE.AsString+'-cte.xml';

        qryNFEXMLNFE_XML.SaveToFile(ArqXml);
      end;
    end
    else
    begin
      qryNFEXML_Teste.Close;
      qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
      qryNFEXML_Teste.Open;

      if ( qryNFEXML_Teste.RecordCount > 0 ) then
      begin
        if ( UPPERCASE (TIPOEMISSAO)= 'NFE') then
          ArqXml  := PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-nfe.xml'
        else
          ArqXml  := PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-cte.xml';

        qryNFEXML_TesteNFE_XML.SaveToFile(ArqXml);
      end;
    end;

    if ( QImpDocPedFL_CANCNOTAFISC.AsString = 'S' ) OR(QImpDocPedCANCELADA.AsString = 'S') then
    begin
      Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' foi cancelada .' );
    end
    else if ( ArqXml <> '' ) then
    begin
      if ( UPPERCASE (TIPOEMISSAO)= 'NFE') then
      begin
        fSocket.SendString   ('NFe.ImprimirDanfePDF( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
        MemoACBrNFe.Lines.Add('NFe.ImprimirDanfePDF( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
        Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Gerando DANFE PDF ' + QImpDocPedNR_NOTAFISC.AsString );
        RespDanfe('PDF');
      end
      else
      begin
        fSocket.SendString   ('cte.imprimirdactepdf( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
        MemoACBrNFe.Lines.Add('cte.imprimirdactepdf( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
        Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Gerando DACTE PDF ' + QImpDocPedNR_NOTAFISC.AsString );
        RespDanfe('PDF');
      end;
    end
    else
      Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' não possui XML para gerar a DANFE/DACTE .' );
  end;

  Screen.Cursor := crDefault;
  frmEmissorNFe.SetFocus;
  frmEmissorNFe.WindowState := wsMaximized;
end;

procedure TfrmEmissorNFe.CRTemp_QImpDocPedAfterScroll(DataSet: TDataSet);
begin
  HabilitaBotoes();
end;

procedure TfrmEmissorNFe.btn_CancelaNFEClick(Sender: TObject);
var cJustificativa , Resp_CancelaNFE : string ;
var Segundos : integer;
begin
  cJustificativa := '';
  ContResp := 0;
  Resp_CancelaNFE := '2';

  if dbg_Notas.SelectedRows.Count = 0 then
  begin
    MessageDlg('Pelo menos um pedido deve ser selecionado !', mtWarning, [mbOk], 0);
    Exit;
  end;

  if dbg_Notas.SelectedRows.Count > 1 then
  begin
    MessageDlg('Somente um pedido deve ser selecionado para Cancelamento !', mtWarning, [mbOk], 0);
    Exit;
  end;

  Segundos := SecondsBetween( Now(), QImpDocPedDT_AUTORIZACAO.Value);
  if ( Segundos > 86400 ) then
  begin
    MessageDlg('Cancelamento ultrapassou prazo máximo de 24 Horas ! ' + DateTimeToStr( IncHour( QImpDocPedDT_AUTORIZACAO.Value,24 )) , mtWarning, [mbOk], 0);
    Exit;
  end;

  if ( InputQuery('Cancelamento NF SEFAZ' + QImpDocPedNR_NOTAFISC.AsString  , 'Informe a justificativa :', cJustificativa )) then
  begin
    if ( Length( cJustificativa) < 15 ) then
    begin
      ShowMessage('A Justificativa deve ter pelo menos 15 caracteres .');
      Exit;
    end;

    if ( QImpDocPedNFE_CHAVE.Value = '' ) then
    begin
      if ( UPPERCASE(TIPOEMISSAO) = 'NFE'  ) then
        ShowMessage(' Nota sem a chave da NFE não pode ser cancelada.')
      else
        ShowMessage(' Nota sem a chave da CTE não pode ser cancelada.') ;
      Exit;
    end;

    if ( QImpDocPedCANCELADA.Value = 'S' ) then
    begin
      if ( UPPERCASE(TIPOEMISSAO) = 'NFE'  ) then
        ShowMessage(' Nota Fiscal eletronica já foi Cancelada ')
      else
        ShowMessage(' Conhecimento de Transporte já foi Cancelado ');
      Exit;
    end;

    if ( UPPERCASE(TIPOEMISSAO) = 'NFE'  ) then
    begin
      fSocket.SendString   ('NFe.CancelarNFe( "'+ QImpDocPedNFE_CHAVE.Value+ '", "' + cJustificativa  +'" ) '+ #13+#10+'.'+#13+#10);
      MemoACBrNFe.Lines.Add('NFe.CancelarNFe( "'+ QImpDocPedNFE_CHAVE.Value + '", "' + cJustificativa  +'" ) '+ #13+#10+'.'+#13+#10);
      Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Cancelando NFe ' + QImpDocPedNR_NOTAFISC.AsString );
    end
    else
    begin
      fSocket.SendString   ('Cte.cancelarcte( "'+ QImpDocPedNFE_CHAVE.Value+ '", "' + cJustificativa  +'" ) '+ #13+#10+'.'+#13+#10);
      MemoACBrNFe.Lines.Add('Cte.cancelarcte( "'+ QImpDocPedNFE_CHAVE.Value + '", "' + cJustificativa  +'" ) '+ #13+#10+'.'+#13+#10);
      Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Cancelando CTe ' + QImpDocPedNR_NOTAFISC.AsString );
    end;

    Resp_Erro := '2';
    Resp_CancelaNFE :=  RespCancelaNFe();

    if (  Resp_Erro = '0' ) then
    begin
      // Atualiza NF
      if ( chkAmb.Checked ) then
      begin
        qryNFEXML.Close;
        qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
        qryNFEXML.Open;

        qryNFEXML.Edit;
        qryNFEXMLCANCELADA.Value := 'S';
        qryNFEXML.Post;
        qryNFEXML.ApplyUpdates;
        qryNFEXML.CommitUpdates;

        if ( QImpDocPedFL_CANCNOTAFISC.AsString <> 'S') then
        begin
          if ( CancelaNFSistema ( QImpDocPedID_PEDIVEND.AsInteger ) = false ) then
          begin
            MessageDlg('Erro ao cancelar Nota fiscal ' + IntToStr(QImpDocPed['NR_NOTAFISC']) + ' do pedido '
            + IntToStr(QImpDocPed['ID_PEDIVEND']),mtError, [mbOK], 0);
            Exit;
          end;
        end;
      end
      else
      begin
        qryNFEXML_Teste.Close;
        qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
        qryNFEXML_Teste.Open;
        qryNFEXML_Teste.Edit;
        qryNFEXML_TesteCANCELADA.Value := 'S';
        qryNFEXML_Teste.Post;
        qryNFEXML_Teste.ApplyUpdates;
        qryNFEXML_Teste.CommitUpdates;

        if( gi_Filial = 52 ) then
        if ( QImpDocPedFL_CANCNOTAFISC.AsString <> 'S') then
        begin
          if ( CancelaNFSistema ( QImpDocPedID_PEDIVEND.AsInteger ) = false ) then
          begin
            MessageDlg('Erro ao cancelar Nota fiscal ' + IntToStr(QImpDocPed['NR_NOTAFISC']) + ' do pedido '
            + IntToStr(QImpDocPed['ID_PEDIVEND']),mtError, [mbOK], 0);
            Exit;
          end;
        end;
      end;

      QImpDocPed.Close;
      QImpDocPed.Open;
    end
    else  if ( Resp_Erro = '1' ) then
    begin
      Mem_Resultado.Lines.Add(' Erro no Cancelamento. Nota  : '+ QImpDocPedNR_NOTAFISC.AsString+'. ('+Resp_CancelaNFE+')' );
    end
    else  if ( ContResp >= 10  ) then
    begin
      Mem_Resultado.Lines.Add(' Sem retorno de Cancelamento. Confirmar no Portal da SEFAZ  : '+ QImpDocPedNR_NOTAFISC.AsString+'. ('+Resp_CancelaNFE+')' );
    end;
  end;

end;

function TfrmEmissorNFe.RespCancelaNFe() : String ;
var
  Erro ,Resposta , Linha ,TagAutorizacao , Status,ChaveNFe, Protocolo : String;
  TResp   : TStringList;
  i   : Integer ;
  ObterStatus , ConcatResp : Boolean;
begin
  Erro := '2' ;
  MSgResposta := '';
  ConcatResp := False;
  ContResp := ContResp + 1;
  TResp := TStringList.Create;

  Resposta := fSocket.RecvTerminated(5000, #3);
  MemoNFe.Lines.Add(Resposta);
  TagAutorizacao := '[CANCELAMENTO]';

  TResp.SetText( PWideChar( Resposta ) );

  for i := 0 to TResp.Count - 1 do
  begin
    Linha := TResp.Strings[i];
    If ( UpperCase(Trim(Copy(Linha, 1, 3))) = 'OK:' ) then
      Mem_Nfe.Lines.Add(   DateTimeToStr( Now() ) + ' : ' + Linha );

    If UpperCase(Trim(Copy(Linha, 1, Length(TagAutorizacao)))) = UpperCase(TagAutorizacao) then
      ObterStatus := True; // se achou Tag de retorno busca status

    if ( ObterStatus ) then
    begin
      If UpperCase(Trim(Copy(Linha, 1, 6))) = 'CSTAT=' then
      begin
        Status := Trim(Copy(Linha, 7, Length(Linha) - 6 ));
        if  ( Status = '135' )   then
        begin
          Erro := '0' ;
          Resp_Erro := '0';
        end
        else
        begin
          Erro := '1' ;
          Resp_Erro := '1';
        end;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 8))) = 'XMOTIVO=' then
      begin

        Mem_Nfe.Lines.Add(   DateTimeToStr( Now() ) + ' : ' + Trim(Copy(Linha, 9, Length(Linha) - 8 )) );
        MSgResposta := MSgResposta +' '+Trim(Copy(Linha, 9, Length(Linha) - 8 )) ;
      end;

      if ( UPPERCASE(TIPOEMISSAO) = 'NFE' ) then
      begin
        If UpperCase(Trim(Copy(Linha, 1, 6))) = 'CHNFE=' then
          ChaveNFe := Trim(Copy(Linha, 7, Length(Linha) - 6 )) ;
      end
      else
      begin
        If UpperCase(Trim(Copy(Linha, 1, 6))) = 'CHCTE=' then
          ChaveNFe := Trim(Copy(Linha, 7, Length(Linha) - 6 )) ;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 6))) = 'NPROT=' then
        Protocolo := Trim(Copy(Linha, 7, Length(Linha) - 6 )) ;

    end;

    if ( ConcatResp )  then
      MSgResposta := MSgResposta + Linha ;

    If ( Trim(Copy(Linha, 1, 5)) = 'ERRO:' ) then
    begin
      Erro        := '1';
      Resp_Erro   := '1';
      MSgResposta := MSgResposta + Linha ;
      ConcatResp := True;
    end;
  end;

  if ( Erro = '1' ) then
  begin
    Mem_Erro.Lines.Add( ' Não foi possível fazer o cancelamento. '+ MSgResposta);
    ShowMessage( ' Não foi possível fazer o cancelamento. '+ MSgResposta);
  end;

  Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : '+ MSgResposta);
  MemoACBrNFe.Lines.Add(Resposta);

  if ( ObterStatus ) AND (Erro = '0') then
  begin
    if ( UPPERCASE(TIPOEMISSAO) = 'NFE' ) then
    begin
      Mem_Nfe.Lines.Add('NFe Cancelada : '+ QImpDocPedNR_NOTAFISC.AsString+'. '+MSgResposta);
      Mem_Resultado.Lines.Add('NFe Cancelada : '+ QImpDocPedNR_NOTAFISC.AsString+'. '+MSgResposta);
      ShowMessage( 'NFe  ' +QImpDocPedNR_NOTAFISC.AsString+ ' Cancelada !!!' + MSgResposta );
    end
    else
    begin
      Mem_Nfe.Lines.Add('CTe Cancelada : '+ QImpDocPedNR_NOTAFISC.AsString+'. '+MSgResposta);
      Mem_Resultado.Lines.Add('CTe Cancelada : '+ QImpDocPedNR_NOTAFISC.AsString+'. '+MSgResposta);
      ShowMessage( 'CTe  ' +QImpDocPedNR_NOTAFISC.AsString+ ' Cancelada !!!' + MSgResposta );
    end;
  end;

  TResp.Free;

  if ( Erro = '2' ) then
  begin
    if ( UPPERCASE(TIPOEMISSAO) = 'NFE' ) then
      Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : Aguardando Resposta Cancelamento NFe. Tentativa :' + IntToStr(ContResp)  )
    else
      Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : Aguardando Resposta Cancelamento CTe. Tentativa :' + IntToStr(ContResp)  );

    if ( ContResp <= 10 ) then
      RespCancelaNFe()
    else
    begin
      Erro := '1' ;
      Resp_Erro := '1';
    end;
  end;

  Result := Erro ;
end;

procedure TfrmEmissorNFe.dbg_NotasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//   NFE Gerada
//  if QImpDocPed.FieldByName('NFE_PROTOCOLO').AsString <> ''   then
//    dbg_Notas.Canvas.font.Color  := clSilver;
//
//  if QImpDocPed.FieldByName('FL_IMPRNOTAFISC').AsString = 'S' then
//    dbg_Notas.Canvas.font.Color  := clLIME;
//
//  if (QImpDocPed.FieldByName('FL_CANCNOTAFISC').AsString = 'S') OR
//    (QImpDocPed.FieldByName('CANCELADA').AsString = 'S') then
//    dbg_Notas.Canvas.font.Color  := clRED;
//
//  if gdFocused in State then
//   with (Sender as TDBGrid).Canvas do
//   begin
//     Brush.Color:=clAqua;
//     font.Color :=clBlack;
//   end;
//
//   dbg_Notas.DefaultDrawColumnCell(rect,DataCol,column,state);




{  // NOTA FISCAL GERADA E TRANSMITIDA E NAO FOI CANCELADA
  IF ((QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString <> '') AND (QImpDocPed.FieldByName('NFE_PROTOCOLO').AsString <> '') AND
     (QImpDocPed.FieldByName('FL_CANCNOTAFISC').AsString = 'N')) then
    dbg_Notas.Canvas.Brush.Color:=$00CCFFCC
  // NOTA FISCAL CANCELADA
  else if QImpDocPed.FieldByName('FL_CANCNOTAFISC').AsString = 'S' then
    dbg_Notas.Canvas.Brush.Color:=$00C6C6FF
  // NOTA FOI GERADA MAS NAO FOI TRANSMITIDA
  else if (QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString <> '') AND (QImpDocPed.FieldByName('NFE_PROTOCOLO').AsString = '') then
    dbg_Notas.Canvas.Brush.Color  := $00BFFFFF
  else
  // NOTA FISCAL NAO GERADA E NAO TRANSMITIDA
    dbg_Notas.Canvas.Brush.Color  := $00FFF2D9;

  dbg_Notas.DefaultDrawColumnCell(rect,DataCol,column,state);}



  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($00DADADA)
  else
  begin
    // NOTA FISCAL GERADA E TRANSMITIDA E NAO FOI CANCELADA
    IF ((QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString <> '') AND (QImpDocPed.FieldByName('NFE_PROTOCOLO').AsString <> '') AND
       (QImpDocPed.FieldByName('FL_CANCNOTAFISC').AsString = 'N')) then
      dbg_Notas.Canvas.Brush.Color:= $00CCFFCC
    // NOTA FISCAL CANCELADA
    else if QImpDocPed.FieldByName('FL_CANCNOTAFISC').AsString = 'S' then
      dbg_Notas.Canvas.Brush.Color:=$00C6C6FF
    // NOTA FOI GERADA MAS NAO FOI TRANSMITIDA
    else if (QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString <> '') AND (QImpDocPed.FieldByName('NFE_PROTOCOLO').AsString = '') then
      dbg_Notas.Canvas.Brush.Color  := $00BFFFFF
    else
    // NOTA FISCAL NAO GERADA E NAO TRANSMITIDA
      dbg_Notas.Canvas.Brush.Color  := $00FFF2D9;
  end;

  dbg_Notas.Canvas.Font.Color:=$000000;
  dbg_Notas.DefaultDrawColumnCell(rect,DataCol,column,state);

end;

procedure TfrmEmissorNFe.btn_InutilizarNFeClick(Sender: TObject);
var cCNPJ, cJustificativa, nAno, nModelo, nSerie, nNumInicial, nNumFinal, TipoE : String;
    PulouNum : Boolean;
begin
  ContResp := 0;

  //Obtem os valores
  cCNPJ   := SoNumeros( gs_CNPJ );
  nAno    := RightStr( DateToStr( Now()),2) ;
  nModelo := '55';
  nSerie      := QImpDocPed.FieldByName('SG_SERINOTAFISC_NOTAFISC').AsString;
  nNumInicial := QImpDocPed.FieldByName('NR_NOTAFISC').AsString;
  nNumFinal   := QImpDocPed.FieldByName('NR_NOTAFISC').AsString;

  if (UPPERCASE (TIPOEMISSAO)= 'NFE' ) then
     TipoE := 'NFe'
  else
     TipoE := 'CTe';

  if not(InputQuery('Inutilizar '+TipoE, 'Digite a Série:',           nSerie)) then exit;
  if not(InputQuery('Inutilizar '+TipoE, 'Digite o nº Inicial:', nNumInicial)) then exit;
  if not(InputQuery('Inutilizar '+TipoE, 'Digite o nº Final:',     nNumFinal)) then exit;
  if not(InputQuery('Inutilizar '+TipoE, 'Digite o Ano(AA):',           nAno)) then exit;

  if not(InputQuery('Inutilizar '+TipoE, 'Digite a Justificativa:', cJustificativa)) then exit;

  if ( Length(cJustificativa) < 15 ) then
  begin
    Application.MessageBox('A Justificativa deve ter pelo menos 15 caracteres.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if Application.MessageBox(PChar('Confirma Inutilização da ' + TipoE + ' do(s) Pedido(s) Selecionado(s)?'), PChar(frmEmissorNFe.Caption),
   MB_OKCANCEL + MB_ICONINFORMATION) = IDOK then
  begin
    if (UPPERCASE (TIPOEMISSAO)= 'NFE' ) then
    begin
      fSocket.SendString   ( 'NFe.InutilizarNFe("' + cCNPJ+'","'+ cJustificativa+'",'+ Trim(nAno)+','+Trim(nModelo)+','+Trim(nSerie)+','+Trim(nNumInicial)+','+Trim(nNumFinal) +') '+ #13+#10+'.'+#13+#10);
      MemoACBrNFe.Lines.Add( 'NFe.InutilizarNFe("' + cCNPJ+'","'+ cJustificativa+'",'+ Trim(nAno)+','+Trim(nModelo)+','+Trim(nSerie)+','+Trim(nNumInicial)+','+Trim(nNumFinal) +') '+ #13+#10+'.'+#13+#10);
      Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Inutilização de NFe de '+ nNumInicial + ' a ' + nNumFinal );
    end
    else
    begin
      fSocket.SendString   ( 'CTe.inutilizarcte("' + cCNPJ+'","'+ cJustificativa+'",'+ Trim(nAno)+','+Trim(nModelo)+','+Trim(nSerie)+','+Trim(nNumInicial)+','+Trim(nNumFinal) +') '+ #13+#10+'.'+#13+#10);
      MemoACBrNFe.Lines.Add( 'CTe.inutilizarcte("' + cCNPJ+'","'+ cJustificativa+'",'+ Trim(nAno)+','+Trim(nModelo)+','+Trim(nSerie)+','+Trim(nNumInicial)+','+Trim(nNumFinal) +') '+ #13+#10+'.'+#13+#10);
      Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Inutilização de CTe de '+ nNumInicial + ' a ' + nNumFinal );
    end;

    if ( nNumInicial = QImpDocPed.FieldByName('NR_NOTAFISC').AsString ) then
      PulouNum := false
    else
      PulouNum := true;

    if ( not qryNFEXML.Active ) then
    begin
      qryNFEXML.Close;
      qryNFEXML.Open;
    end;

    if (  RespInutilizaNFe( PulouNum, nNumInicial, nSerie, nAno  ) = '0' ) then
    begin
      // Atualiza NF
      if ( chkAmb.Checked ) then
      begin
        qryNFEXML.Close;
        qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
        qryNFEXML.Open;


        if( not PulouNum ) then
          if ( QImpDocPedFL_CANCNOTAFISC.AsString <> 'S') then
          begin
            if ( CancelaNFSistema ( QImpDocPedID_PEDIVEND.AsInteger ) = false ) then
            begin
              MessageDlg('Erro ao cancelar Nota fiscal ' + IntToStr(QImpDocPed['NR_NOTAFISC']) + ' do pedido '
              + IntToStr(QImpDocPed['ID_PEDIVEND']),mtError, [mbOK], 0);
              Exit;
            end;
          end;
      end
      else
      begin
        qryNFEXML_Teste.Close;
        qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
        qryNFEXML_Teste.Open;
      end;

      QImpDocPed.Close;
      QImpDocPed.Open;
    end

  end;
end;

function TfrmEmissorNFe.RespInutilizaNFe(PulouNum : Boolean ; NR_NOTA , SERIE, ANO : String ) :String;
var
  Erro ,Resposta , Linha ,TagAutorizacao , Status,ChaveNFe, Protocolo, Dt_Receb, ArqInutil : String;
  TResp   : TStringList;
  i   : Integer ;
  ObterStatus , ConcatResp : Boolean;
begin
  Erro := '2' ;
  MSgResposta := '';
  ConcatResp := False;
  ContResp := ContResp + 1;
  TResp := TStringList.Create;

  Resposta := fSocket.RecvTerminated(5000, #3);
  MemoNFe.Lines.Add(Resposta);
  TagAutorizacao := '[INUTILIZACAO]';

  TResp.SetText( PWideChar( Resposta ) );

  for i := 0 to TResp.Count - 1 do
  begin
    Linha := TResp.Strings[i];
    If ( Trim(Copy(Linha, 1, 3)) = 'OK:' ) then
      Mem_Nfe.Lines.Add(   DateTimeToStr( Now() ) + ' : ' + Linha );

    If UpperCase(Trim(Copy(Linha, 1, Length(TagAutorizacao)))) = TagAutorizacao then
      ObterStatus := True; // se achou Tag de retorno busca status

    if ( ObterStatus ) then
    begin
      If UpperCase(Trim(Copy(Linha, 1, 6))) = 'CSTAT=' then
      begin
        Status := Trim(Copy(Linha, 7, Length(Linha) - 6 ));
        if  ( Status = '102' )   then
          Erro := '0'
        else
          Erro := '1' ;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 8))) = 'XMOTIVO=' then
      begin
        Mem_Nfe.Lines.Add(   DateTimeToStr( Now() ) + ' : ' + Trim(Copy(Linha, 9, Length(Linha) - 8 )) );
        MSgResposta := MSgResposta +' '+Trim(Copy(Linha, 9, Length(Linha) - 8 )) ;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 9))) = 'DHRECBTO=' then
      begin
        Dt_Receb := Trim(Copy(Linha, 10, Length(Linha) - 9 )) ;
        Mem_Nfe.Lines.Add('Dt Recebimento : ' + Dt_Receb ) ;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 6))) = 'NPROT=' then
      begin
        Protocolo := Trim(Copy(Linha, 7, Length(Linha) - 6 )) ;
        Mem_Nfe.Lines.Add('Protocolo : ' + Protocolo ) ;
      end;

    end;

    if ( ConcatResp )  then
      MSgResposta := MSgResposta + Linha ;

    If ( Trim(Copy(Linha, 1, 5)) = 'ERRO:' ) then
    begin
      Erro        := '1';
      MSgResposta := MSgResposta + Linha ;
      ConcatResp := True;
    end;
  end;

  if ( Erro = '1' ) then
  begin
    Mem_Erro.Lines.Add( 'Não foi possível fazer a Inutilização.'+ MSgResposta);
    ShowMessage( 'Não foi possível fazer a Inutilização.'+ MSgResposta);
  end;

  Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : '+ MSgResposta);
  MemoACBrNFe.Lines.Add(Resposta);

  if ( Status = '102' ) AND (Erro = '0') then
  begin
    if  ( not PulouNum ) then
    begin
      ArqInutil := '35'+RightStr( ANO,2)+
                   SoNumeros( gs_CNPJ ) +'55'+
                   ArqInutil +StrZerodec( QImpDocPedSG_SERINOTAFISC.AsFloat,3,0) +
                   StrZerodec( QImpDocPedNR_NOTAFISC.Value,9,0) +
                   StrZerodec( QImpDocPedNR_NOTAFISC.Value,9,0) ;
    end
    else
    begin
      ArqInutil := '35'+RightStr( ANO,2)+
                   SoNumeros( gs_CNPJ ) +'55'+
                   ArqInutil +StrZerodec( StrToFloat( SERIE ) ,3,0) +
                   StrZerodec( StrToFloat( NR_NOTA ) ,9,0) +
                   StrZerodec( StrToFloat( NR_NOTA ),9,0) ;
    end;

    ArqInutil := PastaInutil + ArqInutil + '-inu.xml';

    if (chkAmb.Checked ) then
    begin
      if  ( not PulouNum ) then
      begin
        qryNFEXML.Insert;
        qryNFEXMLEmpresa.Value         := QImpDocPedEMPRESA.Value;
        qryNFEXMLFILIAL.Value          := QImpDocPedFILIAL.Value;
        qryNFEXMLID_NOTAFISC.Value     := QImpDocPedID_NOTAFISC.Value;
        qryNFEXMLDT_EMISNOTAFISC.Value := QImpDocPedDT_EMISNOTAFISC.AsString;
        qryNFEXMLNR_NOTAFISC.Value     := QImpDocPedNR_NOTAFISC.Value;
        qryNFEXMLRECIBO_RETORNO.Value  := Protocolo;
        qryNFEXMLDATA_ENVIO.Value      := DateTimeToStr( Now());
        qryNFEXMLNFE_NUMERO.Value      := QImpDocPedNR_NOTAFISC.Value;
        qryNFEXMLNFE_DT_RECEBTO.Value  := Dt_Receb  ;
        qryNFEXMLNFE_PROTOCOLO.Value   := Protocolo ;
        qryNFEXMLNFE_LOCAL.Value       := ArqInutil;
        qryNFEXMLNFE_XML.LoadFromFile(ArqInutil);
        qryNFEXMLRETORNO.Value         := 'S';
        qryNFEXMLAUTORIZACAO.Value     := 'N';
        qryNFEXMLSR_NOTAFISC.Value     := QImpDocPedSG_SERINOTAFISC.Value;
        qryNFEXMLINUTILIZADA.Value     := 'S';
        qryNFEXML.Post;
        qryNFEXML.ApplyUpdates;
        qryNFEXML.CommitUpdates;
      end
      else
      begin
        qryNFEXML.Insert;
        qryNFEXMLEmpresa.Value         := gs_Empresa;
        qryNFEXMLFILIAL.Value          := gi_Filial;
        qryNFEXMLID_NOTAFISC.Value     := 0;
        qryNFEXMLDT_EMISNOTAFISC.Value := DateTimeToStr( Now());
        qryNFEXMLNR_NOTAFISC.Value     := StrToFloat( NR_NOTA ) ;
        qryNFEXMLRECIBO_RETORNO.Value  := Protocolo;
        qryNFEXMLDATA_ENVIO.Value      := DateTimeToStr( Now());
        qryNFEXMLNFE_NUMERO.Value      := StrToFloat( NR_NOTA );
        qryNFEXMLNFE_DT_RECEBTO.Value  := Dt_Receb  ;
        qryNFEXMLNFE_PROTOCOLO.Value   := Protocolo ;
        qryNFEXMLNFE_LOCAL.Value       := ArqInutil;
        qryNFEXMLNFE_XML.LoadFromFile(ArqInutil);
        qryNFEXMLRETORNO.Value         := 'S';
        qryNFEXMLAUTORIZACAO.Value     := 'N';
        qryNFEXMLSR_NOTAFISC.Value     := SERIE;
        qryNFEXMLINUTILIZADA.Value     := 'S';
        qryNFEXML.Post;
        qryNFEXML.ApplyUpdates;
        qryNFEXML.CommitUpdates;
      end;
    end
    else
    begin
      if  ( not PulouNum ) then
      begin
        qryNFEXML_Teste.Insert;
        qryNFEXML_TesteEmpresa.Value         := QImpDocPedEMPRESA.Value;
        qryNFEXML_TesteFILIAL.Value          := QImpDocPedFILIAL.Value;
        qryNFEXML_TesteID_NOTAFISC.Value     := QImpDocPedID_NOTAFISC.Value;
        qryNFEXML_TesteDT_EMISNOTAFISC.Value := QImpDocPedDT_EMISNOTAFISC.AsString;
        qryNFEXML_TesteNR_NOTAFISC.Value     := QImpDocPedNR_NOTAFISC.Value;
        qryNFEXML_TesteRECIBO_RETORNO.Value  := Protocolo;
        qryNFEXML_TesteDATA_ENVIO.Value      := DateTimeToStr( Now());
        qryNFEXML_TesteNFE_NUMERO.Value      := QImpDocPedNR_NOTAFISC.Value;
        qryNFEXML_TesteNFE_DT_RECEBTO.Value  := Dt_Receb  ;
        qryNFEXML_TesteNFE_PROTOCOLO.Value   := Protocolo ;
        qryNFEXML_TesteNFE_LOCAL.Value       := ArqInutil;
        qryNFEXML_TesteNFE_XML.LoadFromFile(ArqInutil);
        qryNFEXML_TesteRETORNO.Value         := 'S';
        qryNFEXML_TesteSR_NOTAFISC.Value     := QImpDocPedSG_SERINOTAFISC.Value;
        qryNFEXML_TesteINUTILIZADA.Value     :='S';
        qryNFEXML_Teste.Post;
        qryNFEXML_Teste.ApplyUpdates;
        qryNFEXML_Teste.CommitUpdates;
      end
      else
      begin
        qryNFEXML_Teste.Insert;
        qryNFEXML_TesteEmpresa.Value         := gs_Empresa;
        qryNFEXML_TesteFILIAL.Value          := gi_Filial;
        qryNFEXML_TesteID_NOTAFISC.Value     := 0;
        qryNFEXML_TesteDT_EMISNOTAFISC.Value := DateTimeToStr( Now());
        qryNFEXML_TesteNR_NOTAFISC.Value     := StrToFloat(NR_NOTA);
        qryNFEXML_TesteRECIBO_RETORNO.Value  := Protocolo;
        qryNFEXML_TesteDATA_ENVIO.Value      := DateTimeToStr( Now());
        qryNFEXML_TesteNFE_NUMERO.Value      := StrToFloat(NR_NOTA);
        qryNFEXML_TesteNFE_DT_RECEBTO.Value  := Dt_Receb  ;
        qryNFEXML_TesteNFE_PROTOCOLO.Value   := Protocolo ;
        qryNFEXML_TesteNFE_LOCAL.Value       := ArqInutil;
        qryNFEXML_TesteNFE_XML.LoadFromFile(ArqInutil);
        qryNFEXML_TesteRETORNO.Value         := 'S';
        qryNFEXML_TesteSR_NOTAFISC.Value     := SERIE;
        qryNFEXML_TesteINUTILIZADA.Value     :='S';
        qryNFEXML_Teste.Post;
        qryNFEXML_Teste.ApplyUpdates;
        qryNFEXML_Teste.CommitUpdates;
      end;
    end;

      Mem_Nfe.Lines.Add('Inutilização concluida . '+MSgResposta);
      ShowMessage( 'Inutilização concluida .' + MSgResposta );
  end;

  if ( Erro = '2' ) then
  begin
    Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : Aguardando Resposta Inutilização . Tentativa :' + IntToStr(ContResp)  );
    if ( ContResp <= 10 ) then
      RespInutilizaNFe(PulouNum, NR_NOTA , SERIE, ANO )
    else
      Erro := '1' ;
  end;

  TResp.Free;
  Result := Erro ;
end;

procedure TfrmEmissorNFe.btn_txtClick(Sender: TObject);
var Resp_NFE , Msg_Erro : string;
begin
  fSocket.SendString( MemoACBrNFe.Text + #13+#10+'.'+#13+#10 );
  Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Gerando NFE ' + QImpDocPedNR_NOTAFISC.AsString );
  ContResp := 0;
  Resp_NFE :=  RespGeraNFe() ;

  if( Resp_NFE = '0' ) then
  begin
    Mem_Resultado.Lines.Add('NFe '+QImpDocPedNR_NOTAFISC.AsString +' Gerada . ');
  end
  else if( Resp_NFE = '1' ) then
  begin
    Msg_Erro := Msg_Erro + 'A NFe não gerada : ' + QImpDocPedNR_NOTAFISC.AsString  ;
    Mem_Resultado.Lines.Add('NFe '+QImpDocPedNR_NOTAFISC.AsString +' Não Gerada . ');
  end
  else if ( ContResp >= 10  ) then
  begin
    Mem_Resultado.Lines.Add('NFe '+QImpDocPedNR_NOTAFISC.AsString +' Não Gerada . Não foi possivel obter resposta!!');
    Showmessage('Não foi possivel obter resposta!!');
  end;

  Mem_Nfe.Lines.Add('---------------Fim Geração NF : '+QImpDocPedNR_NOTAFISC.AsString+'---------------');
  Showmessage('Geração Finalizada .'+ Msg_Erro  );
  QImpDocPed.Close;
  QImpDocPed.Open;
end;

procedure TfrmEmissorNFe.chkAmbClick(Sender: TObject);
begin

  Screen.Cursor := crSQLWait;
  fSocket.CloseSocket;
  fSocket.Connect( 'localhost', '3436');

  if ( RespConectar ()  <> '0' ) then
  begin
    ModalResult := mrCancel;
    Close;
  end;

  if (chkAmb.Checked ) then
  begin
    fSocket.SendString('NFe.SetAmbiente(1) '+ #13+#10+'.'+#13+#10);
    MemoACBrNFe.Lines.Add( 'NFe.SetAmbiente(1) '+ #13+#10+'.'+#13+#10);
    Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Alterado para ambiente de Produção ' );
    RespMonitor('AMBIENTE');
    qryNFEXML_Teste.Close;
    qryNFEXML.Close;
    qryNFEXML.Open;
    frmEmissorNFe.Caption :=  'Emissor NFe';
  end
  Else
  begin
    fSocket.SendString('NFe.SetAmbiente(2) '+ #13+#10+'.'+#13+#10);
    MemoACBrNFe.Lines.Add( 'NFe.SetAmbiente(2) '+ #13+#10+'.'+#13+#10);
    Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Alterado para ambiente de Homologação ' );
    RespMonitor('AMBIENTE');
    qryNFEXML.Close;
    qryNFEXML_Teste.Close;
    qryNFEXML_Teste.Open;
    frmEmissorNFe.Caption :=  'Emissor NFe - Ambiente de Homologação.' ;
  end;

  QImpDocPed.Close;
  QImpDocPed.Open;
  Screen.Cursor := crDefault;
end;

procedure TfrmEmissorNFe.CRTemp_QImpDocPedBeforeOpen(DataSet: TDataSet);
begin
  if ( chkAmb.Checked ) then
    QImpDocPed.MacroByName('NOTA_XML').Value := 'NOTA_FISCAL_XML'
  else
    QImpDocPed.MacroByName('NOTA_XML').Value := 'NOTA_FISCAL_XML_Teste'
end;

procedure TfrmEmissorNFe.btn_SalvarXMLClick(Sender: TObject);
Var CNPJ,CHAVE : string;
    i : Integer;
begin
  CNPJ  := '';
  CHAVE := '';
  Screen.Cursor := crSQLWait;

  QImpDocPed.First;
  for i := 0 to dbg_Notas.SelectedRows.Count - 1 do
  begin
    // Posicionamos no registro desejado
    dbg_Notas.DataSource.DataSet.GotoBookmark(dbg_Notas.SelectedRows.Items[i]);
    ContResp := 0 ;
    CNPJ  := gs_CNPJ;
    CHAVE := QImpDocPedNFE_CHAVE.Value;

    if ( CHAVE <> '' ) then
    begin
      qryNFEXML.Close;
      qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
      qryNFEXML.Open;

      if( UPPERCASE(TIPOEMISSAO) = 'NFE' ) then
      begin
        qryNFEXMLNFE_XML.SaveToFile(PastaXML+CHAVE+'-nfe.xml');
        Mem_Resultado.Lines.Add('XML salvo em '+PastaXML+CHAVE+'-nfe.xml');
      end
      else
      begin
        qryNFEXMLNFE_XML.SaveToFile(PastaXML+CHAVE+'-cte.xml');
        Mem_Resultado.Lines.Add('XML salvo em '+PastaXML+CHAVE+'-cte.xml');
      end;
    end
    else
      Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' não possui XML .' );
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmEmissorNFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TfrmEmissorNFe.btn_PreviewClick(Sender: TObject);
Var
  Resp, ArqXML, ArqPDFPrev : String ;
begin
  Resp   := '';
  ArqXML := '';
  ACBrNFe.Comando := '';
  ACBrCTe.Comando := '';
  ArqPDF := '';

  Screen.Cursor := crSQLWait;

  If ( UpperCase( TIPOEMISSAO ) ='NFE' ) then
  begin
    MensagemEspera(true,'VISUALIZAÇÃO DA NF-e: '+  QImpDocPedNR_NOTAFISC.AsString );
    MemoACBrNFe.Lines.Clear;
    try
      PreencheDadosACBR( QImpDocPedID_PEDIVEND.AsInteger, QImpDocPedNR_NOTAFISC.AsString, QImpDocPedSG_SERINOTAFISC.Value   );
    except
      On E : Exception do
      begin
        MensagemEspera(false,'');
        ShowMessage('Erro ao obter dados para geração da NFe . '+ E.Message);
        QImpDocPed.Close;
        QImpDocPed.Open;
        Screen.Cursor := crDefault;
        Exit;
      end
    end;

    Mem_Nfe.Lines.Add('OBTENDO DADOS PARA VISUALIZAÇÃO DA NF-e: '+QImpDocPedNR_NOTAFISC.AsString + '. AGUARDE!');

    fSocket.SendString( 'NFe.CriarNFe("' + ACBrNFe.Comando + '"    ) '+ #13+#10+'.'+#13+#10);
    MemoACBrNFe.Lines.Add( 'NFe.CriarNFe("' + ACBrNFe.Comando + '"    ) '+ #13+#10+'.'+#13+#10 );
    Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ': GERANDO VISUALIZAÇÃO DA NF-e: ' + QImpDocPedNR_NOTAFISC.AsString );

    ContResp := 0;
    ArqXMlProc := '';
    Resp_Erro := '2';

    Resp := RespPreview();
    if ( Resp_Erro = '0' ) then
    begin
      ArqXml := trim(ArqXMlProc);

      if ( ArqXml <> '' ) then
      begin
        fSocket.SendString( 'NFE.ValidarNFe("' + ArqXML + '"    ) '+ #13+#10+'.'+#13+#10);
        MemoACBrNFe.Lines.Add( 'NFE.ValidarNFe("' + ArqXML + '" ) '+ #13+#10+'.'+#13+#10 );
        Resp := '';
      end;

      ContResp := 0;
      Resp_Erro := '2';

      Resp := RespMonitor( 'VALIDAR' );

      if ( Resp_Erro = '0' ) then
      begin
        if ( ArqXml <> '' ) then
        begin
          ContResp := 0;
          fSocket.SendString   ('NFe.ImprimirDanfePDF( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
          MemoACBrNFe.Lines.Add('NFe.ImprimirDanfePDF( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
          Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ': VISUALIZAÇÃO DA DANF-e: ' + QImpDocPedNR_NOTAFISC.AsString );
          RespDanfe('PDF');

          if ( ArqPDF <> '' ) and ( RightStr(ArqPDF,4) = '.pdf'  ) then
          begin
            try
              ArqPDFPrev := ReplaceStr(LowerCase(ArqPDF),'-nfe','prev');
              DeleteFile( Pchar(ArqPDFPrev) );
              RenameFile(ArqPDF , ArqPDFPrev );
              DeleteFile( Pchar(ArqPDF) );
              ArqPDF := ArqPDFPrev;
              ShellExecute( 0,'open',Pchar( TRIM(ArqPDF) ) ,'' ,'',SW_SHOWNORMAL);
            except
            end;
              frmEmissorNFe.SetFocus;
          end;
        end
        else
          Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' não possui XML para gerar a Danfe.' );
      end;
    end;
    MensagemEspera(false,'');
  End
  Else If ( UpperCase( TIPOEMISSAO ) = 'CTE') then
  begin
    PreviewCTE();
  End;
    Screen.Cursor := crDefault;

end;

function TfrmEmissorNFe.RespPreview() : String ;
var
  Erro ,Resposta , Linha , MsgErro, ArqXMlPrev , ArqXml  : String;
  TResp   : TStringList;
  i   : Integer ;
  ObterStatus : Boolean;
begin
  Erro := '2' ;
  MSgResposta := '';
  MsgErro     := '';
  ContResp := ContResp + 1 ;
  TResp := TStringList.Create;
  Resposta := fSocket.RecvTerminated(5000, #3);
  MemoNFe.Lines.Add(Resposta);

  TResp.SetText( PWideChar( Resposta ) );

  for i := 0 to TResp.Count - 1 do
  begin
    Linha := TResp.Strings[i];
    If ( Trim(Copy(Linha, 1, 3)) = 'OK:' ) then
    begin
      Erro        := '2';
      MSgResposta := Trim(Linha) ;
    end;

    If ( Trim(Copy(Linha, 1, 7)) = 'OK: C:\' ) then
    begin
      Erro        := '0';
      MSgResposta := Trim(Linha) ;

      ArqXMlProc := Copy(Linha, 4, Length(Linha)-3 ) ;
      ArqXml := trim(ArqXMlProc);

      if ( UpperCase (TIPOEMISSAO) = 'CTE' ) then
        ArqXMlPrev := ReplaceStr( ArqXml,'-cte','prev')
      else
        ArqXMlPrev := ReplaceStr( ArqXml,'-nfe','prev');

      DeleteFile( Pchar(ArqXMlPrev) );
      RenameFile(ArqXml , ArqXMlPrev );
      DeleteFile( Pchar(ArqXml) );
      ArqXMlProc := ArqXMlPrev ;
    end;

    If ( Trim(Copy(Linha, 1, 3)) = 'C:\' ) then
    begin
      Erro        := '0';
      MSgResposta := Trim(Linha) ;
      ArqXMlProc := Copy(Linha, 4, Length(Linha)-3 ) ;
    end;

    If ( Trim(Copy(Linha, 1, 5)) = 'ERRO:' ) then
    begin
      Erro        := '1';
      MSgResposta := Trim(Linha) ;
    end;

    if (  Erro = '1' ) then
      MsgErro := MsgErro+'. '+Trim(Linha);
  end;

  if ( Erro = '0' ) then
  begin
    MSgResposta :=  'Preview da NF '+QImpDocPedNR_NOTAFISC.AsString+' criado .';//+MSgResposta;
    Mem_Resultado.Lines.Add(MSgResposta);
    Resp_Erro := '0';
  end;

  if ( Erro = '1' ) then
  begin
    MSgResposta :=  'Erro no preview da NF '+QImpDocPedNR_NOTAFISC.AsString+' '+MSgResposta;
    Mem_Erro.Lines.Add( MsgErro );
    Resp_Erro := '1';
    ShowMessage(MSgResposta);
  end;

  if ( Erro = '2' ) then
  begin
    Resp_Erro := '2';
    Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : Aguardando Resposta . Tentativa :' + IntToStr(ContResp)  );
    if ( ContResp <= 10 ) then
      RespPreview()
    else
    Erro := '1' ;
  end;

  MemoACBrNFe.Lines.Add(Resposta);
  TResp.Free;
  Result := Erro ;
end;

function TfrmEmissorNFe.RespMonitor(TIPO : String) : String ;
var
  Erro ,Resposta , Linha, MsgErro  : String;
  TResp   : TStringList;
  i   : Integer ;
  ObterStatus : Boolean;
begin
  Erro := '2' ;
  MSgResposta := '';
  MsgErro     := '';
  ContResp := ContResp + 1 ;
  TResp := TStringList.Create;
  Resposta := fSocket.RecvTerminated(5000, #3);
  MemoNFe.Lines.Add(Resposta);

  TResp.SetText( PWideChar( Resposta ) );

  for i := 0 to TResp.Count - 1 do
  begin
    Linha := TResp.Strings[i];
    If ( Trim(Copy(Linha, 1, 3)) = 'OK:' ) then
    begin
      Erro        := '0';
      MSgResposta := Trim(Linha) ;
    end;

    If ( Trim(Copy(Linha, 1, 5)) = 'ERRO:' ) then
    begin
      Erro        := '1';
      MSgResposta := Trim(Linha) ;

    end;

    if (Erro = '1' ) then
      MsgErro := MsgErro + '.'+ Trim(Linha);
  end;

  if ( Erro = '0' ) then
  begin
    Resp_Erro := '0';
    if (  TIPO = 'VALIDAR' ) then
       MSgResposta :=  'NF foi validada.'
    else if ( TIPO = 'CERTIFICADO' ) then
       MSgResposta :=  'Certificado carregado.'
    else if ( TIPO ='IMPCARTACOR' ) then
        MSgResposta :=  'Carta de Correção foi salva.' + MSgResposta
    else if (TIPO = 'AMBIENTE' ) then
       begin
            if (chkAmb.Checked) then
               MSgResposta :=  'Ambiente de Produção.'
            else
               MSgResposta :=  'Ambiente de Homologação.' ;

       end
    else if (TIPO = 'GERARCHAVE' ) then
    begin
         Edt_ChaveNFE.Text :=  Copy(MSgResposta,8, 44);

    end;
    Mem_Resultado.Lines.Add(MSgResposta);
  end;

  if ( Erro = '1' ) then
  begin
    Resp_Erro := '1';

    if (  TIPO = 'VALIDAR' ) then
       MSgResposta :=  'NF não foi validada.' + MSgResposta
    else if ( TIPO = 'CERTIFICADO') then
       MSgResposta :=  'Falha ao carregar certificado.'+ MSgResposta
    else if (TIPO = 'AMBIENTE' ) then
       MSgResposta :=  'Falha ao configurar ambiente.'+ MSgResposta;

    Mem_Erro.Lines.Add(MsgErro);
    ShowMessage(MSgResposta);
  end;

  if ( Erro = '2' ) then
  begin
    Resp_Erro := '2';
    Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : Aguardando Resposta . Tentativa :' + IntToStr(ContResp)  );
    if ( ContResp <= 10 ) then
      RespMonitor(TIPO)
    else
    Erro := '1' ;
  end;

  MemoACBrNFe.Lines.Add(Resposta);
  TResp.Free;
  Result := Erro ;
end;

function TfrmEmissorNFe.FComandoCCE ( xCorrecao : String ; SeqEve : String ) : String;
var Comando : WideString ;
    Nr_Nota , Chave  : String;
begin
  Comando := '';

  Nr_Nota := QImpDocPedNR_NOTAFISC.AsString;
  Chave   := QImpDocPedNFE_CHAVE.AsString;

  Comando := Comando + '[CCE]'                    + CHR(10) + CHR(10);
  Comando := Comando + 'idLote='+NR_NOTA          + CHR(13) + CHR(10);
  Comando := Comando + '[EVENTO001]'              + CHR(13) + CHR(10);
  Comando := Comando + 'chNFe=' + Chave           + CHR(13) + CHR(10);
  Comando := Comando + 'cOrgao='+ Copy(Chave,1,2) + CHR(13) + CHR(10);
  Comando := Comando + 'CNPJ=' + gs_CNPJ          + CHR(13) + CHR(10);
  Comando := Comando + 'dhEvento='+ Conv_data(Now(),1) + ' '+ Conv_hora(Now(),3) + CHR(13) + CHR(10) ;
  {FABRICIO - 05/09/2018 - MOTIVO: ERRO:FALHA NO SCHEMA XML DA NOTA. FALTA ESSE CAMPO A SER ENVIADO}
  Comando := Comando + 'tpEvento=110110'          + CHR(13) + CHR(10);
  Comando := Comando + 'nSeqEvento='+SeqEve           + CHR(13) + CHR(10);
  Comando := Comando + 'xCorrecao='+TRIM(xCorrecao)     + CHR(13) + CHR(10);

  Result := Comando;

end;


function TfrmEmissorNFe.RespCartaCorrecao () : String;
var
  Erro ,Resposta , Linha, MsgErro  : String;
  TResp   : TStringList;
  i   : Integer ;
  ObterStatus : Boolean;
begin
  Erro := '2' ;
  MSgResposta := '';
  MsgErro     := '';
  ObterStatus := false;
  ContResp := ContResp + 1 ;
  TResp := TStringList.Create;
  Resposta := fSocket.RecvTerminated(5000, #3);
  MemoNFe.Lines.Add(Resposta);
  TResp.SetText( PWideChar( Resposta ) );

  for i := 0 to TResp.Count - 1 do
  begin
    Linha := TResp.Strings[i];
    If ( Trim(Copy(Linha, 1, 3)) = 'OK:' ) then
    begin
      Erro        := '2';
      MSgResposta := Trim(Linha) ;
    end;

    If ( Trim(Copy(Linha, 1, 5)) = 'ERRO:' ) then
    begin
      Erro        := '1';
      MSgResposta := Trim(Linha) ;

    end;

    If (UpperCase(Trim(Copy(Linha, 1, 7))) = '[EVENTO' ) then
    begin
      ObterStatus := true;
    end;

    If ( ObterStatus )  then
    begin
      If ( UpperCase(Trim(Copy(Linha, 1, 6))) = 'CSTAT=' ) then
      begin
        If ( UpperCase(Trim(Copy(Linha, 1, 9))) = 'CSTAT=135' ) then
           Erro        := '0'
        else
           Erro        := '1';
      end;

      if ( Erro  = '0' ) And  ( UpperCase(Trim(Copy(Linha, 1, 8))) = 'XMOTIVO=' ) then
      begin
        MSgResposta := Trim(Linha) ;

      end;
    end;

    if (Erro = '1' ) then
      MsgErro := MsgErro + '.'+ Trim(Linha);

  end;

  if ( Erro = '0' ) then
  begin
    Resp_Erro := '0';
    MSgResposta := 'Carta de correção registrada. '+ MSgResposta ;
    Mem_Resultado.Lines.Add(MSgResposta);
  end;

  if ( Erro = '1' ) then
  begin
    Resp_Erro := '1';
    MSgResposta :=  'Erro na carta de correção.' + MSgResposta ;
    Mem_Erro.Lines.Add(MsgErro);
    ShowMessage(MSgResposta);
  end;

  if ( Erro = '2' ) then
  begin
    Resp_Erro := '2';
    Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : Aguardando Resposta . Tentativa :' + IntToStr(ContResp)  );
    if ( ContResp <= 10 ) then
      RespCartaCorrecao ()
    else
      Erro := '1' ;
  end;

  MemoACBrNFe.Lines.Add(Resposta);
  TResp.Free;
  Result := Erro ;

end;

procedure TfrmEmissorNFe.btnCartaOKClick(Sender: TObject);
var cJustificativa : string ;
    ComandoCCE , SeqEve : String;
begin
  cJustificativa := '';
  ContResp       :=  0;
  ArqXMLCarta    := '';
  cJustificativa :=  ReplaceStr( mem_Carta.Lines.GetText ,#13#10,'|') ;


  if ( Length( cJustificativa) < 15 ) then
  begin
    Application.MessageBox('O texto da Carta de Correção deve conter no mínimo 15 caracteres.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if ( Length( cJustificativa) > 1000 ) then
  begin
    Application.MessageBox('O texto da Carta de Correção deve conter no máximo 1000 caracteres.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  mem_Carta.Clear;

  if ( QImpDocPedNFE_CHAVE.Value = '' ) then
  begin
    Application.MessageBox('Nota Fiscal sem Chave de Acesso. Não é permitido gerar Carta de Correção.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if ( chkAmb.Checked ) then
  begin
    qryNFEXML.Close;
    qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPedID_NFE_XML.AsString;
    qryNFEXML.Open;

    if ( qryNFEXMLNFE_SEQEVENTO.ISNULL  ) OR ( qryNFEXMLNFE_SEQEVENTO.Value = 0 ) then
       SeqEve :=  '1'
    else
        SeqEve :=  IntTostr( qryNFEXMLNFE_SEQEVENTO.Value + 1 );
  end
  else
  begin
    qryNFEXML_Teste.Close;
    qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPedID_NFE_XML.AsString;
    qryNFEXML_Teste.Open;
    SeqEve :=  qryNFEXML_TesteNFE_SEQEVENTO.AsString;

    if ( qryNFEXML_TesteNFE_SEQEVENTO.ISNULL  ) OR ( qryNFEXML_TesteNFE_SEQEVENTO.Value = 0 ) then
      SeqEve :=  '1'
    else
      SeqEve :=  IntTostr( qryNFEXML_TesteNFE_SEQEVENTO.Value + 1 );
  end;

  ComandoCCE := FComandoCCE ( cJustificativa , SeqEve ) ;

  fSocket.SendString   ('NFE.EnviarEvento( "'+ ComandoCCE+'" ) '+ #13+#10+'.'+#13+#10);
  MemoACBrNFe.Lines.Add('NFE.EnviarEvento( "'+ ComandoCCE+'" ) '+ #13+#10+'.'+#13+#10);
  Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Carta de Correção NFe ' + QImpDocPedNR_NOTAFISC.AsString );

  ContResp := 0;
  if (  RespCartaCorrecao () = '0' ) then
  begin
    if ( chkAmb.Checked ) then
    begin
      qryNFEXML.Edit;
      qryNFEXMLNFE_SEQEVENTO.Value := StrToint( SeqEve ) ;
      qryNFEXML.Post;
      qryNFEXML.ApplyUpdates;
      qryNFEXML.CommitUpdates;
    end
    else
    begin
      qryNFEXML_Teste.Edit;
      qryNFEXML_TesteNFE_SEQEVENTO.Value := StrToint( SeqEve );
      qryNFEXML_Teste.Post;
      qryNFEXML_Teste.ApplyUpdates;
      qryNFEXML_Teste.CommitUpdates;
    end;

    if ( Length (SeqEve) = 1 ) then
      ArqXMLCarta := PastaEvento + '110110' + QImpDocPedNFE_CHAVE.AsString + '0'+SeqEve+'-procEventoNFe.xml'
    else
      ArqXMLCarta := PastaEvento + '110110' + QImpDocPedNFE_CHAVE.AsString + SeqEve+'-procEventoNFe.xml';


    fSocket.SendString   ('NFE.ImprimirEventoPDF( "'+ ArqXMLCarta+'"  ) '+ #13+#10+'.'+#13+#10);
    MemoACBrNFe.Lines.Add('NFE.ImprimirEventoPDF( "'+ ArqXMLCarta+'"  )   '+ #13+#10+'.'+#13+#10);
    Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Impressão Carta de correção NFe ' + QImpDocPedNR_NOTAFISC.AsString );

    ContResp := 0;
    RespMonitor( 'IMPCARTACOR');

    fSocket.SendString   ('NFE.ImprimirEvento( "'+ ArqXMLCarta+'"  ) '+ #13+#10+'.'+#13+#10);
    MemoACBrNFe.Lines.Add('NFE.ImprimirEvento( "'+ ArqXMLCarta+'"  )   '+ #13+#10+'.'+#13+#10);
    Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Impressão Carta de correção NFe ' + QImpDocPedNR_NOTAFISC.AsString );

    ContResp := 0;
    RespMonitor( 'IMPCARTACOR');

  end;

  pnlCarta.Visible := false;

end;

procedure TfrmEmissorNFe.btn_CartaClick(Sender: TObject);
begin

  if( UpperCase(TIPOEMISSAO) = 'NFE' ) then
  begin
    pnlCarta.Top     := 0 ;
    pnlCarta.Left    := 0 ;
    pnlCarta.Visible := true;
    mem_Carta.SetFocus;
  end
  else
  begin
    pnlCartaCte.Top     := 0 ;
    pnlCartaCte.Left    := 0 ;
    pnlCartaCte.Visible := true;
    Qry_Grupo.Close;
    Qry_Campo.Close;
    Qry_Grupo.Open;
    Qry_Campo.Open;
  end;

end;

procedure TfrmEmissorNFe.mem_CartaChange(Sender: TObject);
begin
  lbl_Caracter.Caption := '['+ IntToStr( Length( mem_Carta.Lines.GetText)) +']';
end;

procedure TfrmEmissorNFe.MensagemEspera( Exibe : Boolean; Texto : String );
begin
  pnAguarde.Top := 0;
  pnAguarde.Left := 0 ;
  pnAguarde.Visible := Exibe ;
  pnAguarde.Caption := Texto ;
  Application.ProcessMessages;
end;

procedure TfrmEmissorNFe.ParametrosAcbr();
var vArqINI: TIniFile;
    VAmb : String ;
begin
  vArqINI:= TIniFile.Create('C:\ACBrMonitorPLUS\ACBrMonitor.ini');
  PastaXML := vArqINI.ReadString(    'Arquivos',  'PathNFe',  '');
  PastaXML := PastaXML+'\';
  PastaDANFE := vArqINI.ReadString( 'DANFE',  'PathPDF',  '');
  edt_PastaXML.Text        := PastaXML;
  edt_PastaPDF.Text        := vArqINI.ReadString( 'DANFE',  'PathPDF',  '');
  PastaEvento              := vArqINI.ReadString( 'Arquivos',  'PathEvento',  '');
  PastaEvento              := PastaEvento+'\';
  edt_Evento.Text          := PastaEvento;
  PastaInutil              := vArqINI.ReadString( 'Arquivos','PathInu','');
  PastaInutil              := PastaInutil+'\';

  VAmb := vArqINI.ReadString( 'WebService',  'Ambiente',  '');
  if ( VAmb = '0' ) then
    chkAmb.Checked := true
  else
    chkAmb.Checked := false ;

  vArqINI.Free;

  if ( chkAmb.Checked ) then
    frmEmissorNFe.Caption :=  'Emissor NFe'
  else
    frmEmissorNFe.Caption :=  'Emissor NFe - Ambiente de Homologação.' ;

end;

procedure TfrmEmissorNFe.btnAbreXMLClick(Sender: TObject);
begin
  try
    RunCommand( TRIM(edt_PastaXML.Text));
  except
  end;
end;

procedure TfrmEmissorNFe.btnAbrePDFClick(Sender: TObject);
begin
  try
    RunCommand(TRIM(edt_PastaPDF.Text));
  except
  end;
end;

procedure TfrmEmissorNFe.btn_AbreEventoClick(Sender: TObject);
begin
  try
    RunCommand(TRIM(edt_Evento.Text));
  except
  end;
end;

procedure TfrmEmissorNFe.Abrir1Click(Sender: TObject);
Var Documento : String;
begin
  Documento := TRIM(Mem_Resultado.SelText) ;
  if ( Documento <> '' ) and ( ( RightStr(Documento,4) = '.pdf'  ) OR ( RightStr(Documento,4) = '.xml'  ) ) then
  begin
      ShellExecute( 0,'open',Pchar( Documento ) ,'' ,'',SW_SHOWNORMAL);
  end;

end;

procedure TfrmEmissorNFe.dgCreateProcess(const FileName: string);
var ProcInfo: TProcessInformation;
    StartInfo: TStartupInfo;
begin
  FillMemory(@StartInfo, sizeof(StartInfo), 0);
  StartInfo.cb := sizeof(StartInfo);
  CreateProcess(
               'AcroRd32.exe',
               PChar(FileName),
               nil, Nil, False,
               NORMAL_PRIORITY_CLASS,
               nil, nil,
               StartInfo,
               ProcInfo);
  CloseHandle(ProcInfo.hProcess);
  CloseHandle(ProcInfo.hThread);
end;

Function TfrmEmissorNFe.CancelaNFSistema( ID_PEDIDO : Integer): Boolean;
Var li_Loop : integer ;
    Retorno , Continua : Boolean ;
begin
  Retorno  := False;
  Continua := True;

  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Text := ' SELECT FL_BLOQAJUSFINAPEDIVEND FROM PEDIDO_VENDA WHERE ID_PEDIVEND = ' + IntToStr( ID_PEDIDO ) ;
  QryTemp.Open;

  if (QryTemp.FieldByName('FL_BLOQAJUSFINAPEDIVEND').AsString = 'S') then
  begin
    Application.MessageBox(PChar('A Nota Fiscal do pedido '+ IntToStr( ID_PEDIDO ) + ' foi Cancelada. Informe ao Setor Financeiro, pois já esta Bloqueado.'), PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Retorno  := false;
  end;

  if ( Continua ) then
  begin
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
    '   AND (PEDIDO_VENDA_NOTA_FISCAL.ID_PEDIVEND = ' + IntToStr( ID_PEDIDO ) + ')';
    QryTemp.Open;

    // Verificamos se foi encontrada a nota fiscal para o pedido
    if qryTemp.IsEmpty then
    begin
      Application.MessageBox(PChar('A Nota Fiscal do pedido '+ IntToStr( ID_PEDIDO ) + ' não foi encontrada.'), PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
      Retorno := false;
    end;

    if ( Continua ) then
    begin
      // Posicionamos no primeiro registro da query
      qryTemp.First;
      while not qryTemp.Eof do
      begin
        // Verificamos se a nota fiscal já está cancelada
        if qryTemp.FieldByName('FL_CANCNOTAFISC').AsString = 'S' then
        begin
          Application.MessageBox('A Nota Fiscal já Cancelada.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
          Continua := False;
          Retorno := false;
          // Proximo registro
          qryTemp.Next;
        end;

        if ( Continua ) then
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
          Retorno := true;
        end;
        // Movemos para o próximo registro
        qryTemp.Next;
      end;
        // Fechamos a query
        qryTemp.Close;
        qryTempUpda.close;
    end;
  end;
  Result := Retorno;
end;

procedure TfrmEmissorNFe.Button1Click(Sender: TObject);
begin
  fSocket.SendString( 'NFe.DownloadNFe("' + gs_CNPJ +'" , "'+ Edt_ChaveNFE.Text + '"    ) '+ #13+#10+'.'+#13+#10);
end;

procedure TfrmEmissorNFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // CTRL  + 0
  if (Shift = [ssCtrl]) and (Key = 48) then
  begin
    TabSheet1.TabVisible := true;
    TabSheet3.TabVisible := true;
  end;
  // CTRL  + 1
  if (Shift = [ssCtrl]) and (Key = 49) then
  begin
    TabSheet1.TabVisible := false;
    TabSheet3.TabVisible := false;
  end;
end;

procedure TfrmEmissorNFe.btn_EditarNFClick(Sender: TObject);
begin
  Try
    FrmEditaNotaFiscal := TFrmEditaNotaFiscal.Create(Self);
    FrmEditaNotaFiscal.ID_NOTAFISC := QImpDocPedID_NOTAFISC.AsInteger;
    FrmEditaNotaFiscal.ShowModal;
  except;
    FrmEditaNotaFiscal.Free;
  end;
end;

procedure TfrmEmissorNFe.btn_ChaveClick(Sender: TObject);
begin
  Randomize;
  fSocket.SendString( 'NFe.GerarChave("35" ,"'+IntToStr(  RandomRange( 1,99999999 )  ){QImpDocPedID_NOTAFISC.AsString}+'","55" ,  "' +
  QImpDocPedSG_SERINOTAFISC_NOTAFISC.AsString + '" ,"'+QImpDocPedNR_NOTAFISC.AsString +'" , "'+
  QImpDocPedTIPOEMI.AsString+'" , "'+
  QImpDocPedDT_EMISNOTAFISC.AsString+'", "'+  gs_CNPJ  +'" ) '+ #13+#10+'.'+#13+#10);
  RespMonitor('GERARCHAVE');
end;

procedure TfrmEmissorNFe.PreviewCTE ();
Var ContResp : Integer ;
    ArqPDFPrev, ArqXml, Resp : string;
begin
  MensagemEspera(true,'Preview CTe '+  QImpDocPedNR_NOTAFISC.AsString );
  //Apaga o arquivo memo
  MemoACBrNFe.Lines.Clear;

  Qry_CTE.Close;
  Qry_CTE.ParamByName('ID_PEDIVEND').Value := QImpDocPedID_PEDIVEND.Value;
  Qry_CTE.Open;

  try
    PreencheDadosCTE( QImpDocPedID_PEDIVEND.AsInteger, QImpDocPedNR_NOTAFISC.AsString, QImpDocPedSG_SERINOTAFISC.Value   );
  except
    On E : Exception do
    begin
      MensagemEspera(false,'');
      ShowMessage('Erro ao obter dados para geração da CTe . '+ E.Message);
      QImpDocPed.Close;
      QImpDocPed.Open;
      Screen.Cursor := crDefault;
      Exit;
    end
  end;

  Mem_Nfe.Lines.Add('---------------Inicio Preview NF : '+QImpDocPedNR_NOTAFISC.AsString+'---------------');

  fSocket.SendString( 'Cte.CriarCTe("' + ACBrCTe.Comando + '"    ) '+ #13+#10+'.'+#13+#10);
  MemoACBrNFe.Lines.Add( 'Cte.CriarCTe("' + ACBrCTe.Comando + '"    ) '+ #13+#10+'.'+#13+#10 );
  Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Gerando Preview ' + QImpDocPedNR_NOTAFISC.AsString );

  ContResp := 0;
  ArqXMlProc := '';
  Resp_Erro := '2';

  Resp := RespPreview();
  if ( Resp_Erro = '0' ) then
  begin
    ArqXml := trim(ArqXMlProc);

    if ( ArqXml <> '' ) then
    begin
      fSocket.SendString( 'CTE.ValidarCTe("' + ArqXML + '"    ) '+ #13+#10+'.'+#13+#10);
      MemoACBrNFe.Lines.Add( 'CTE.ValidarCTe("' + ArqXML + '" ) '+ #13+#10+'.'+#13+#10 );
      Resp := '';
    end;

    ContResp := 0;
    Resp_Erro := '2';

    Resp := RespMonitor( 'VALIDAR' );

    if ( Resp_Erro = '0' ) then
    begin

      if ( ArqXml <> '' ) then
      begin
        ContResp := 0;
        fSocket.SendString   ('CTE.imprimirdactepdf( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
        MemoACBrNFe.Lines.Add('CTE.imprimirdactepdf( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
        Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Preview DACTE ' + QImpDocPedNR_NOTAFISC.AsString );
        RespDanfe('PDF');

        if ( ArqPDF <> '' ) and ( RightStr(ArqPDF,4) = '.pdf'  ) then
        begin
          try
            ArqPDFPrev := ReplaceStr( ArqPDF,'-cte','prev');
            DeleteFile( Pchar(ArqPDFPrev) );
            RenameFile(ArqPDF , ArqPDFPrev );
            DeleteFile( Pchar(ArqPDF) );
            ArqPDF := ArqPDFPrev;
            ShellExecute( 0,'open',Pchar( TRIM(ArqPDF) ) ,'' ,'',SW_SHOWNORMAL);
          except
          end;

          frmEmissorNFe.SetFocus;
        end;

      end
      else
       Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' não possui XML para gerar a Danfe.' );
    end;

  end;

  MensagemEspera(false,'');

end;

procedure TfrmEmissorNFe.PreencheDadosCTE( ID_PEDIDO : Integer; NR_NOTA , SERIE : String );
Var ls_firma, ls_insc, ls_inscM, ls_cnpj, ls_cnae: String;
     ls_logr, ls_num, ls_bai, ls_uf, ls_cep, ls_cid, ls_codcid, ls_pais, ls_codpais, ls_fone,
     ls_codmun : String;
     i , ItemNFRef : integer;
     vTotalNF, vICMS: double;
begin
  ItemNFRef := 0;
  with dadosCadastraisFilial do
  begin
    ls_firma   := NomeFilial ;
    ls_insc    := InscricaoEstadual ;
    ls_inscM   := InscricaoMunicipal ;
    ls_cnpj    := Cnpj;
    ls_cnae    := Cnae;
    ls_logr    := Endereco;
    ls_num     := Numero;
    ls_bai     := Bairro;
    ls_cid     := Cidade;
    ls_codcid  := CodigoCidade;
    ls_uf      := UF;
    ls_cep     := Cep;
    ls_codpais := CodigoPais;
    ls_pais    := Pais;
    ls_fone    := Fone;
    ls_codmun  := CodigoCidade;
  end;


  QryNfEle.Close;
  QryItemNfEle.Close;
  FormatSettings.shortdateformat := 'yyyy-mm-dd';
  QryNfEle.ParamByName('pi_pedivend').AsInteger := ID_PEDIDO;
  QryNfEle.ParamByName('ps_serinotafisc').AsString := SERIE;
  QryNfEle.ParamByName('VNOTA').AsInteger  := StrToInt( NR_NOTA );
  QryNfEle.ParamByName('VCANCEL').AsString := 'N';
  QryNfEle.Open;
  //Coloca o parâmetro da nota fiscal
  QryItemNfEle.ParamByName('id_notafisc').AsFloat := QryNfEleID_NOTAFISC.AsFloat;
  QryItemNfEle.Open;

  CTE_I_cUF        := Copy( ls_codmun , 1, 2) ;
  Randomize;
  CTE_I_cCT        := IntToStr( RandomRange( 1,9999999 )  ) ;
  CTE_I_CFOP       := QryNfEleNR_CFOP_NOTAFISC.Value ;
  CTE_I_natOp      := TiraAcentos(QryNfEleNM_NATUOPERNOTAFISC.Value) ;
  CTE_I_forPag     := QryNfEleFORPAG.AsString ;

  CTE_I_mod        := '57' ;
  CTE_I_serie      := QryNfEleSG_SERINOTAFISC_NOTAFISC.AsString ;
  CTE_I_nCT        := QryNfEleNR_NOTAFISC.AsString ;
  CTE_I_dhEmi      := Conv_Data(QryNfEleDT_EMISNOTAFISC.Value, 1);
  CTE_I_tpImp      := '1' ;
  CTE_I_tpemis     := '1' ;

  CTE_I_procEmi    := '0' ;
  CTE_I_verProc    := '2.0.25' ;
  CTE_I_tpCTe      := '0' ;  // 0 - CT-e Normal; 1 - CT-e de Complemento de Valores; 2 -CT-e de Anulação;
                             //3 - CT-e Substituto
  CTE_I_refCTe     := '' ;
  CTE_I_cMunEnv    := ls_codcid ;
  CTE_I_xMunEnv    := TiraAcentos(ls_cid) ;
  CTE_I_UFEnv      := ls_uf ;
  CTE_I_modal      := '01' ;  //01-Rodoviário; 02-Aéreo;03-Aquaviário;04-Ferroviário;05-Dutoviário;06-Multimodal;

  CTE_I_tpServ     := '0' ;
  CTE_I_cMunIni    := Qry_CTERCOD_MUN.AsString;
  CTE_I_xMunIni    := TiraAcentos(Qry_CTERMUNICIPIO.AsString) ;
  CTE_I_UFIni      := Qry_CTERUF.AsString;

  CTE_I_cMunFim    := Qry_CTEDCOD_MUN.AsString ;
  CTE_I_xMunFim    := TiraAcentos(Qry_CTEDMUNICIPIO.AsString) ;
  CTE_I_UFFim      := Qry_CTEDUF.AsString ;

  CTE_I_retira     := '1' ;
  CTE_I_xDetRetira := '' ;

  CTE_I_T4Toma  := '4' ;

  if ( Qry_CTET_TIPOPESSOA.AsString = 'J' ) then
  begin
    CTE_I_T4CNPJCPF  :=  RemoveChar(Qry_CTET_CNPJ.AsString);
    CTE_I_T4IE       := RemoveChar(Qry_CTET_IE.AsString );
  end
  else
    CTE_I_T4CNPJCPF  := RemoveChar(Qry_CTET_CPF.AsString) ;

  CTE_I_T4xNome := TiraAcentos(Qry_CTENM_TOMADOR.AsString) ;
  CTE_I_T4XFant := TiraAcentos(Qry_CTET_NM_FANT.AsString) ;

  if (RemoveChar(Qry_CTET_FONE.AsString) <> '0' ) then
     CTE_I_T4fone  := RemoveChar(Qry_CTET_FONE.AsString) ;

  CTE_I_T4xLgr  := TiraAcentos(Qry_CTET_LOGR.AsString) ;
  CTE_I_T4nro   := Qry_CTET_NROLOGR.AsString ;
  CTE_I_T4xCpl  := '' ;
  CTE_I_T4xBairro := TiraAcentos(Qry_CTET_BAIRRO.AsString) ;
  CTE_I_T4cMun  := Qry_CTETCOD_MUN.AsString ;
  CTE_I_T4xMun  := TiraAcentos(Qry_CTETMUNICIPIO.AsString) ;
  CTE_I_T4CEP   := RemoveChar(Qry_CTET_CEP.AsString) ;
  CTE_I_T4UF    := Qry_CTETUF.AsString ;
  CTE_I_T4cPais := Qry_CTET_CPAIS.AsString ;
  CTE_I_T4xPais := TiraAcentos(Qry_CTET_PAIS.AsString) ;
  CTE_I_T4email := Qry_CTET_EMAIL.AsString ;

  ACBrCTe.Memo_Identificacao;

  CTE_C_xObs     := RemoveCaracteresEspeciais(TiraAcentos(copy(QryNfEleGN_OBSENOTAFISC.Value, 1, 2000)));

  ACBrCTe.Memo_Complemento ;

  CTE_E_CNPJ    := ls_cnpj ;
  CTE_E_IE      := ls_insc ;
  CTE_E_xNome   := TiraAcentos( ls_firma ) ;
  CTE_E_xFant   := TiraAcentos( ls_firma ) ;
  CTE_E_xLgr    := TiraAcentos(ls_logr) ;
  CTE_E_nro     := ls_num ;
  CTE_E_xCpl    := '' ;
  CTE_E_xBairro := TiraAcentos(ls_bai ) ;
  CTE_E_cMun    := ls_codmun ;
  CTE_E_xMun    := TiraAcentos( ls_cid );
  CTE_E_CEP     := ls_cep ;
  CTE_E_UF      := ls_uf ;
  CTE_E_fone    := ls_fone ;
  ACBrCTe.Memo_Emitente;

  if ( Qry_CTER_TIPOPESSOA.AsString = 'J' ) then
    CTE_R_CNPJCPF := RemoveChar(Qry_CTER_CNPJ.AsString)
  else
    CTE_R_CNPJCPF := RemoveChar(Qry_CTER_CPF.AsString) ;

  CTE_R_IE      := RemoveChar(Qry_CTER_IE.AsString) ;
  CTE_R_xNome   := TiraAcentos(Qry_CTENM_REMETENTE.AsString) ;
  CTE_R_xFant   := TiraAcentos(Qry_CTER_NOMFAN.AsString) ;
  if (RemoveChar(Qry_CTER_FONE.AsString) <> '0' ) then
    CTE_R_fone    := RemoveChar(Qry_CTER_FONE.AsString) ;

  CTE_R_xLgr    := TiraAcentos(Qry_CTER_LOGR.AsString) ;
  CTE_R_nro     := Qry_CTER_NUMLOGR.AsString ;
  CTE_R_xCpl    := '' ;
  CTE_R_xBairro := TiraAcentos(Qry_CTER_BAIRRO.AsString) ;
  CTE_R_cMun    := Qry_CTERCOD_MUN.AsString;
  CTE_R_xMun    := TiraAcentos(Qry_CTERMunicipio.AsString ) ;
  CTE_R_CEP     := Qry_CTER_CEP.AsString ;
  CTE_R_UF      := Qry_CTERUF.AsString ;
  CTE_R_PaisCod := Qry_CTER_CPAIS.AsString ;
  CTE_R_Pais    := TiraAcentos(Qry_CTER_PAIS.AsString) ;
  CTE_R_Email   := Qry_CTER_EMAIL.AsString ;

  ACBrCTe.Memo_Remetente;



  if ( Qry_CTED_TIPOPESSOA.AsString = 'J' ) then
    CTE_D_CNPJCPF := RemoveChar(Qry_CTED_CNPJ.AsString)
  else
    CTE_D_CNPJCPF := RemoveChar(Qry_CTED_CPF.AsString) ;

  CTE_D_IE      := RemoveChar(Qry_CTED_IE.AsString );
  CTE_D_xNome   := TiraAcentos(Qry_CTENM_DESTINATARIO.AsString) ;

  if (RemoveChar(Qry_CTED_FONE.AsString) <> '0' ) then
    CTE_D_fone    := RemoveChar(Qry_CTED_FONE.AsString) ;

  CTE_D_xLgr    := TiraAcentos(Qry_CTED_LOGR.AsString) ;
  CTE_D_nro     := Qry_CTED_NUMLOGR.AsString ;
  CTE_D_xCpl    := '' ;
  CTE_D_xBairro := TiraAcentos(Qry_CTED_BAIRRO.AsString) ;
  CTE_D_cMun    := Qry_CTEDCOD_MUN.AsString ;
  CTE_D_xMun    := TiraAcentos(Qry_CTEDMUNICIPIO.AsString) ;
  CTE_D_CEP     := RemoveChar(Qry_CTED_CEP.AsString) ;
  CTE_D_UF      := Qry_CTEDUF.AsString ;
  CTE_D_cPais   := Qry_CTED_CPAIS.AsString ;
  CTE_D_xPais   := TiraAcentos(Qry_CTED_PAIS.AsString) ;

  ACBrCTe.Memo_Destinatario;

  CTE_VP_vTPrest := Muda_virgula_ponto(floattostrF(QryNfEleVL_NOTAFISC.AsFloat,ffFixed,15,2));;
  CTE_VP_vRec    := Muda_virgula_ponto(floattostrF(QryNfEleVL_NOTAFISC.AsFloat,ffFixed,15,2)); ;
  ACBrCTe.Memo_ValorPrestServico ;

  QryCTECompServ.Close;
  QryCTECompServ.ParamByName('ID_PEDIVEND').Value := QImpDocPedID_PEDIVEND.Value;
  QryCTECompServ.Open;

  i := 0 ;

  while not QryCTECompServ.Eof do
  begin
    i := i + 1 ;
    ACBrCTe.Memo_CabComponenteServico(i);
    CTE_CS_xNome := TiraAcentos( QryCTECompServNM_NOME.AsString ) ;
    CTE_CS_vComp := Muda_virgula_ponto(floattostrF(QryCTECompServVL_VALOR.AsFloat,ffFixed,15,2));
    ACBrCTe.Memo_ComponenteServico;
    QryCTECompServ.Next;
  end;

  vTotalNF:= QryNfEleVL_NOTAFISC.Value * 0.0557;
  vICMS:= QryNfEleVL_NOTAFISC.Value * ( QryItemNfElePC_ICMSITEMNOTAFISC.Value/100);
  CTE_VT_vComp      := ReplaceStr(FloatToStrF(vTotalNF + vICMS, ffFixed, 15, 2),',','.');
  CTE_VT_infAdFisco := '';
  ACBrCTe.Memo_ValorTotalTributo;

  //ICMS
  if ( QryItemNfEleFL_SITUTRIBICMS.AsString = '00' )  then
  begin
    CTE_II_vBC   := ReplaceStr(FloatToStrF(QryNfEleVL_BASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
    CTE_II_pICMS := ReplaceStr(FloatToStrF(QryItemNfElePC_ICMSITEMNOTAFISC.AsFloat,ffFixed, 3, 2), ',', '.');
    CTE_II_vICMS := ReplaceStr(FloatToStrF(QryItemNfEleVL_ICMSITEMNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
  end
  else if ( QryItemNfEleFL_SITUTRIBICMS.AsString = '20' )  then
  begin
    CTE_II_vBC   := ReplaceStr(FloatToStrF(QryNfEleVL_BASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
    CTE_II_pICMS := ReplaceStr(FloatToStrF(QryItemNfElePC_ICMSITEMNOTAFISC.AsFloat,ffFixed, 4, 2), ',', '.');
    CTE_II_vICMS := ReplaceStr(FloatToStrF(QryItemNfEleVL_ICMSITEMNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
    CTE_II_pRedBC := ReplaceStr(FloatToStrF(QryItemNfElePC_REDUICMSITEMNOTAFISC.AsFloat, ffFixed, 5, 2), ',', '.');
  end
  else if ( QryItemNfEleFL_SITUTRIBICMS.AsString = '60' )  then
  begin
    CTE_II_vBCSTRet   := ReplaceStr(FloatToStrF(QryNfEleVL_BASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');;
    CTE_II_vICMSSTRet := ReplaceStr(FloatToStrF(QryItemNfEleVL_ICMSITEMNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');;
    CTE_II_pICMSSTRet := ReplaceStr(FloatToStrF(QryItemNfElePC_ICMSITEMNOTAFISC.AsFloat,ffFixed, 4, 2), ',', '.');
    CTE_II_vCred      := '';
  end
  else if ( QryItemNfEleFL_SITUTRIBICMS.AsString = '90' )  then
  begin
    CTE_II_vBC   := ReplaceStr(FloatToStrF(QryNfEleVL_BASEICMSNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
    CTE_II_pICMS := ReplaceStr(FloatToStrF(QryItemNfElePC_ICMSITEMNOTAFISC.AsFloat,ffFixed, 4, 2), ',', '.');
    CTE_II_vICMS := ReplaceStr(FloatToStrF(QryItemNfEleVL_ICMSITEMNOTAFISC.AsFloat, ffFixed, 15, 2), ',', '.');
    CTE_II_pRedBC := ReplaceStr(FloatToStrF(QryItemNfElePC_REDUICMSITEMNOTAFISC.AsFloat, ffFixed, 5, 2), ',', '.');
    CTE_II_vCred  := '';
  end ;

  ACBrCTe.Memo_InfoImpostos( QryItemNfEleFL_SITUTRIBICMS.AsString );

  CTE_CA_vCarga  := ReplaceStr(FloatToStrF(QryNfEleVL_TOTAL_MERCADORIA.AsFloat, ffFixed, 15, 2), ',', '.');
  CTE_CA_proPred := TiraAcentos(QryNfElePRODUTO_PREDOMINANTE.Value) ;
  CTE_CA_xOutCat := TiraAcentos(QryNfEleGN_OUTRAS_CARACTERISTICAS.Value) ;

  CTE_IQ_cUnid   := QryNfEleCOD_UNIDADE_MEDIDA.Value ;
  CTE_IQ_tpMed   := TiraAcentos(QryNfEleNM_TIPO_MEDIDA.Value) ;
  CTE_IQ_qCarga  := ReplaceStr(FloatToStrF(QryNfEleQN_QUANTIDADE_CTE.AsFloat,ffFixed, 15, 4), ',', '.');

  ACBrCTe.Memo_Carga;

  QryReferenciadas.Close;
  QryReferenciadas.ParamByName('ID_PEDIVEND').Value := QImpDocPedID_PEDIVEND.AsString;
  QryReferenciadas.Open;

  If QryReferenciadas.RecordCount > 0 then
  begin
    //Inicializa VSoma
    ItemNFRef := 1;
    QryReferenciadas.First;
    While not QryReferenciadas.Eof do
    begin
      //Coloca a referenciada no referenciadas
      ACBrCTE.Memo_CREF(ItemNFRef);
      CTE_Chave := QryReferenciadasB13_REFNFE.AsString;
      ACBrCTE.Memo_REF;
      ItemNFRef := ItemNFRef + 1;
      QryReferenciadas.Next;
    end;
  end;

  CTE_RO_RNTRC   := '99999999' ;
  CTE_RO_dPrev   := Conv_Data( QryNfEleDT_SAIDNOTAFISC.Value,1);
  CTE_RO_lota    := '0' ;

  CTE_CO_nFat    := '1' ;
  CTE_CO_vOrig   := ReplaceStr(FloatToStrF(QryNfEleVL_NOTAFISC.AsFloat,ffFixed, 15, 2), ',', '.') ;
  CTE_CO_vDesc   := '' ;
  CTE_CO_vLiq    := ReplaceStr(FloatToStrF(QryNfEleVL_NOTAFISC.AsFloat,ffFixed, 15, 2), ',', '.') ;

  CTE_CO_nDup   := '0';
  CTE_CO_dVenc  := Conv_Data( QryNfEleDT_SAIDNOTAFISC.Value, 1 );
  CTE_CO_vDup   := ReplaceStr(FloatToStrF(QryNfEleVL_NOTAFISC.AsFloat,ffFixed, 15, 2), ',', '.');
  CTE_respSeg   := '0' ;

  ACBrCTe.Memo_Final;

  FormatSettings.shortdateformat := 'dd/mm/yyyy';
end;

procedure TfrmEmissorNFe.GerarCTE();
var  i : Integer ;
    Msg_Erro , Resp_NFE  : string;
begin
  If MessageDlg ('Confirma geração do CTe.' + #13 + ' do(s) Pedido(s) Selecionado(s) ?',
  mtConfirmation,[mbOk, mbCancel], 0) = mrOk then
  begin
    Screen.Cursor := crSQLWait;
    MensagemEspera(true,'Gerando CTe.');

    QImpDocPed.First;
    for i := 0 to dbg_Notas.SelectedRows.Count - 1 do
    begin
      // Posicionamos no registro desejado
      dbg_Notas.DataSource.DataSet.GotoBookmark(dbg_Notas.SelectedRows.Items[i]);

      RetArqXml   := '';
      RetNR_NOTA  := '';
      RetSER_NOTA := '';

      Qry_NotaNaoTransmitida.Close;
      Qry_NotaNaoTransmitida.ParamByName('NR_NOTAFISC').Value := QImpDocPedNR_NOTAFISC.AsString;
      Qry_NotaNaoTransmitida.Open;

      if (Qry_NotaNaoTransmitida.RecordCount > 0 ) then
      begin
          if ( MessageDlg(' Atenção!!! A Nota ' + Qry_NotaNaoTransmitidaNR_NOTAFISC.AsString + ' da empresa '+ Qry_NotaNaoTransmitidaUNOMEUNEG.AsString+ #13 +
            'não foi transmitida ou o XML não foi carregado . Providencie a regularização da Nota. Deseja continuar mesmo assim ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo ) then
          begin
               MensagemEspera( false,'');
               Screen.Cursor := crDefault;
               exit;
          end;
      end;

      if (  Permitir_GeracaoNFe ( QImpDocPedID_PEDIVEND.AsInteger, QImpDocPedNR_NOTAFISC.AsString, QImpDocPedSG_SERINOTAFISC.AsString ) ) then
      begin
        MensagemEspera( true , 'Gerando CTe para Nota ' +QImpDocPedNR_NOTAFISC.AsString   );

        ACBrCTe.Comando := '';
        //Apaga o arquivo memo
        MemoACBrNFe.Lines.Clear;

        Qry_CTE.Close;
        Qry_CTE.ParamByName('ID_PEDIVEND').Value := QImpDocPedID_PEDIVEND.Value;
        Qry_CTE.Open;

        try
           PreencheDadosCTE( QImpDocPedID_PEDIVEND.AsInteger, QImpDocPedNR_NOTAFISC.AsString, QImpDocPedSG_SERINOTAFISC.Value   );
        except
          On E : Exception do
          begin
            MensagemEspera(false,'');
            ShowMessage('Erro ao obter dados para geração da CTe . '+ E.Message);
            QImpDocPed.Close;
            QImpDocPed.Open;
            Screen.Cursor := crDefault;
            Exit;
          end
        end;

        Mem_Nfe.Lines.Add('---------------Inicio Geração CTe : '+QImpDocPedNR_NOTAFISC.AsString+'---------------');

        fSocket.SendString( 'CTe.criarenviarcte("' + ACBrCTe.Comando + '" ,1 ,1  ) '+ #13+#10+'.'+#13+#10);
        MemoACBrNFe.Lines.Add( 'CTe.criarenviarcte("' + ACBrCTe.Comando + '" ,1 ,1  ) '+ #13+#10+'.'+#13+#10 );
        Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Gerando CTe ' + QImpDocPedNR_NOTAFISC.AsString );

        ContResp := 0;
        Resp_Erro := '2';

        Resp_NFE :=  RespGeraCTE() ;

        if( Resp_Erro = '0' ) then
        begin
          Mem_Resultado.Lines.Add('CTe '+QImpDocPedNR_NOTAFISC.AsString +' gerada . ');
        end
        else if ( ( Resp_Erro = '1' )  ) then
        begin
          Msg_Erro := Msg_Erro + 'A CTe '+ QImpDocPedNR_NOTAFISC.AsString + ' não foi gerada . '  ;
          Mem_Resultado.Lines.Add('CTe '+QImpDocPedNR_NOTAFISC.AsString +' não gerada . ');
        end
        else if ( ContResp >= 10  ) then
        begin
          Mem_Resultado.Lines.Add('CTe '+QImpDocPedNR_NOTAFISC.AsString +' Não Gerada . Não foi possivel obter resposta!!');
          Showmessage('Não foi possivel obter resposta!!');
        end;

        Mem_Nfe.Lines.Add('---------------Fim Geração CTe : '+QImpDocPedNR_NOTAFISC.AsString+'---------------');

      end; //Permitir_GeracaoNFe

    end; // For

    MensagemEspera(false,'');

    Showmessage('Geração Finalizada .'+ Msg_Erro  );
    QImpDocPed.Close;
    QImpDocPed.Open;

    if not QImpDocPed.IsEmpty then
    begin
      dbg_Notas.DataSource.DataSet.First;
      For i := 0 to QImpDocPed.RecordCount - 1 do
      begin
        dbg_Notas.SelectedRows.CurrentRowSelected := (QImpDocPedID_NFE_XML.Value > 0 ) ;
        dbg_Notas.DataSource.DataSet.Next;
      end;
      dbg_Notas.SelectedRows.Refresh;
    end;

    Screen.Cursor := crDefault;

  end;
end;

function TfrmEmissorNFe.RespGeraCTE() : String ;
var
  Resposta , Linha , Mensagem , TagAutorizacao, ChaveNFe, Protocolo, ArqXml, Status , Dt_Receb, DigVal  : String;
  TResp   : TStringList;
  i , Erro, ID_NF_XML : Integer ;
  ObterStatus, ObterRetorno , ConcatResp : Boolean;
begin
  // Erro := 0 ;
  ID_NF_XML := 0 ;
  ObterStatus := False;
  ObterRetorno := False;
  ConcatResp := False;
  TResp := TStringList.Create;
  MSgResposta := '';
  Resposta := fSocket.RecvTerminated(5000, #3);
  ContResp := ContResp + 1 ;
  MemoNfe.Lines.Add('=================== nº' + IntToStr( ContResp ));
  MemoNfe.Lines.Add(Resposta);

  Erro := 2 ; // Aguarda Resposta
  TagAutorizacao := '[CTE'+QImpDocPedNR_NOTAFISC.AsString+']';
  TResp.SetText(  PWideChar( Resposta ) );
  for i := 0 to  TResp.Count - 1 do
  begin
    Linha := TResp.Strings[i];

    if ( ConcatResp )  then
    begin
       MSgResposta := MSgResposta + Linha ;
    end;

    //Mostra mensagem de erro
    If Trim(Copy(Linha, 1, 5)) = 'ERRO:' then
    begin
     Erro := 1;
     Resp_Erro := '1';
     MSgResposta := MSgResposta + Linha ;
     ConcatResp := True ;
     //Mensagem := Copy(Linha, 6, Length(Linha) - 5);
    end;

    If Trim(Copy(Linha, 1, 3)) = 'OK:' then
    begin
      Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : ' + Linha);
      MSgResposta := MSgResposta + Linha ;
      Erro := 2; // Espera resposta de Autorização
      Resp_Erro := '2' ;
    end;

    If UpperCase(Trim(Copy(Linha, 1, Length('[RETORNO]')))) = '[RETORNO]' then
    begin
      ObterRetorno := True;
    end;

    If UpperCase(Trim(Copy(Linha, 1, Length(TagAutorizacao)))) = UpperCase(TagAutorizacao) then
    begin
      ObterStatus  := True; // se achou Tag de retorno busca status
      ObterRetorno := False;
    end;

    if ( ObterRetorno ) then
    begin
      if UpperCase(Trim(Copy(Linha, 1, 6))) = 'CSTAT=' then
      begin
        Status := Trim(Copy(Linha, 7, Length(Linha) - 6 ));
        if  ( Status = '100' ) then
        begin
          Erro := 0 ;
          Resp_Erro := '0';
        end
        else
        begin
         Erro := 1 ;
         Resp_Erro := '1';
        end;
      end;

      if (UpperCase(Trim(Copy(Linha, 1, 8))) = 'XMOTIVO=' ) AND ( Erro = 1 ) then
      begin
        Mem_Nfe.Lines.Add(   DateTimeToStr( Now() ) + ' : ' + Trim(Copy(Linha, 9, Length(Linha) - 8 )) );

        MSgResposta := MSgResposta +' '+Trim(Copy(Linha, 9, Length(Linha) - 8 )) ;
      end;
    end;

    if ( ObterStatus ) then
    begin
      If UpperCase(Trim(Copy(Linha, 1, 6))) = 'CSTAT=' then
      begin
        Status := Trim(Copy(Linha, 7, Length(Linha) - 6 ));
        if  ( Status = '100' ) then
        begin
          Erro := 0 ;
          Resp_Erro := '0';
        end
        else
        begin
          Erro := 1 ;
          Resp_Erro := '1';
        end;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 8))) = 'XMOTIVO=' then
      begin

        Mem_Nfe.Lines.Add(   DateTimeToStr( Now() ) + ' : ' + Trim(Copy(Linha, 9, Length(Linha) - 8 )) );
        MSgResposta := MSgResposta +' '+Trim(Copy(Linha, 9, Length(Linha) - 8 )) ;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 6))) = 'CHCTE=' then
      begin
        ChaveNFe := Trim(Copy(Linha, 7, Length(Linha) - 6 )) ;
        Mem_Nfe.Lines.Add( 'Chave CTe : ' + ChaveNFe );
        MSgResposta := MSgResposta + 'Chave CTe : ' + ChaveNFe;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 6))) = 'NPROT=' then
      begin
        Protocolo := Trim(Copy(Linha, 7, Length(Linha) - 6 )) ;
        Mem_Nfe.Lines.Add('Protocolo : ' + Protocolo ) ;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 9))) = 'DHRECBTO=' then
      begin
        Dt_Receb := Trim(Copy(Linha, 10, Length(Linha) - 9 )) ;
        Mem_Nfe.Lines.Add('Dt Recebimento : ' + Dt_Receb ) ;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 7))) = 'DIGVAL=' then
      begin
        DigVal := Trim(Copy(Linha, 8, Length(Linha) - 7 )) ;
        Mem_Nfe.Lines.Add('DigVal : ' + DigVal ) ;
      end;

      If UpperCase(Trim(Copy(Linha, 1, 8))) = 'ARQUIVO=' then
      begin
        ArqXml := Trim(Copy(Linha, 9, Length(Linha) - 8 )) ;
        Mem_Nfe.Lines.Add( 'Arquivo XML : ' + ArqXml );
        RetArqXml := ArqXml;
      end;
    end;

    if (Erro = 1 ) then
    begin
      Mensagem :=  Mensagem + Linha;
    end;
  end;

  if (Erro = 1) then
  begin
    Mem_Nfe.Lines.Add('Erro. CTe Não gerada.'  + MSgResposta);
    Mem_Erro.Lines.Add('Erro. CTe '+ QImpDocPedNR_NOTAFISC.AsString + ' Não gerada.'  + MSgResposta);
  end;

  if ( ObterStatus ) AND (Erro = 0) then
  begin
    if ( ChaveNFe <> '') AND ( Protocolo <> '') and ( ArqXml <> '' ) then
    begin
      if (chkAmb.Checked ) then
      begin
        qryNFEXML.Insert;
        qryNFEXMLEmpresa.Value         := QImpDocPedEMPRESA.Value;
        qryNFEXMLFILIAL.Value          := QImpDocPedFILIAL.Value;
        qryNFEXMLID_NOTAFISC.Value     := QImpDocPedID_NOTAFISC.Value;
        qryNFEXMLDT_EMISNOTAFISC.Value := QImpDocPedDT_EMISNOTAFISC.AsString;
        qryNFEXMLNR_NOTAFISC.Value     := QImpDocPedNR_NOTAFISC.Value;
        qryNFEXMLRECIBO_RETORNO.Value  := Protocolo;
        qryNFEXMLDATA_ENVIO.Value      := DateTimeToStr( Now());
        qryNFEXMLNFE_NUMERO.Value      := QImpDocPedNR_NOTAFISC.Value;
        qryNFEXMLNFE_CHAVE.Value       := ChaveNFe  ;
        qryNFEXMLNFE_DT_RECEBTO.Value  := Dt_Receb  ;
        qryNFEXMLNFE_PROTOCOLO.Value   := Protocolo ;
        qryNFEXMLNFE_CHAVE_DIGITAL.Value := DigVal;
        qryNFEXMLNFE_LOCAL.Value         := ArqXml;
        qryNFEXMLNFE_XML.LoadFromFile(ArqXml);
        qryNFEXMLRETORNO.Value           := 'S';
        qryNFEXMLAUTORIZACAO.Value       := 'S';
        qryNFEXMLSR_NOTAFISC.Value       := QImpDocPedSG_SERINOTAFISC.Value;
        qryNFEXML.Post;
        qryNFEXML.ApplyUpdates;
        qryNFEXML.CommitUpdates;
      end
      else
      begin
        qryNFEXML_Teste.Insert;
        qryNFEXML_TesteEmpresa.Value         := QImpDocPedEMPRESA.Value;
        qryNFEXML_TesteFILIAL.Value          := QImpDocPedFILIAL.Value;
        qryNFEXML_TesteID_NOTAFISC.Value     := QImpDocPedID_NOTAFISC.Value;
        qryNFEXML_TesteDT_EMISNOTAFISC.Value := QImpDocPedDT_EMISNOTAFISC.AsString;
        qryNFEXML_TesteNR_NOTAFISC.Value     := QImpDocPedNR_NOTAFISC.Value;
        qryNFEXML_TesteRECIBO_RETORNO.Value  := Protocolo;
        qryNFEXML_TesteDATA_ENVIO.Value      := DateTimeToStr( Now());
        qryNFEXML_TesteNFE_NUMERO.Value      := QImpDocPedNR_NOTAFISC.Value;
        qryNFEXML_TesteNFE_CHAVE.Value       := ChaveNFe  ;
        qryNFEXML_TesteNFE_DT_RECEBTO.Value  := Dt_Receb  ;
        qryNFEXML_TesteNFE_PROTOCOLO.Value   := Protocolo ;
        qryNFEXML_TesteNFE_CHAVE_DIGITAL.Value := DigVal;
        qryNFEXML_TesteNFE_LOCAL.Value         := ArqXml;
        qryNFEXML_TesteNFE_XML.LoadFromFile(ArqXml);
        qryNFEXML_TesteRETORNO.Value           := 'S';
        qryNFEXML_TesteAUTORIZACAO.Value       := 'S';
        qryNFEXML_TesteSR_NOTAFISC.Value       := QImpDocPedSG_SERINOTAFISC.Value;
        qryNFEXML_Teste.Post;
        qryNFEXML_Teste.ApplyUpdates;
        qryNFEXML_Teste.CommitUpdates;
      end;

      RetNR_NOTA  := QImpDocPedNR_NOTAFISC.AsString ;
      RetSER_NOTA := QImpDocPedSG_SERINOTAFISC.Value;
    end;

    Mem_Nfe.Lines.Add('CTe gerada : '+ QImpDocPedNR_NOTAFISC.AsString+'. '+MSgResposta);
    Result := IntToStr(Erro);
  end;

  TResp.Free;
  if ( Erro = 2 ) then
  begin
    //AguardaReposta( Tipo );
    Mem_Nfe.Lines.Add(DateTimeToStr( Now() ) + ' : Aguardando Resposta. ( '+intTostr(ContResp)+' ).');

    if ( ContResp <= 10 ) then
      RespGeraCTe()
    else
    begin
      MSgResposta :=  MSgResposta + ' Não foi possível obter resposta.';
      Mem_Nfe.Lines.Add('CTe NÃO foi gerada : '+ QImpDocPedNR_NOTAFISC.AsString+'. '+MSgResposta);
      ShowMessage( 'CTe  ' +QImpDocPedNR_NOTAFISC.AsString+ ' NÃO foi gerada !!!' + MSgResposta );
      Mem_Erro.Lines.Add('Erro. CTe Não gerada.'  + MSgResposta);
      Erro := 1;
      Resp_Erro := '1';
    end;
  end;
  Result := IntToStr(Erro);
end;

procedure TfrmEmissorNFe.CartaCorrecaoCTE ();
var     ComandoCCE , SeqEve , GrupoCTe, CampoCTe, ValorCTe, NrItemCTe : String;
begin
  ContResp    :=  0;
  ArqXMLCarta := '';
  GrupoCTe    := '';
  CampoCTe    := '';
  ValorCTe    := '';
  NrItemCTe   := '';

  if ( QImpDocPedNFE_CHAVE.Value = '' ) then
  begin
    Application.MessageBox('Nota Fiscal sem Chave de CTE. Não é permitido gerar Carta de Correção.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if ( Lkp_Grupo.Text = '' ) then
  begin
    Application.MessageBox('Selecione um Grupo.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if ( Lkp_Campo.Text = '' ) then
  begin
    Application.MessageBox('Selecione um Campo.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if ( Edt_ValorCorrecao.Text = '' ) then
  begin
    Application.MessageBox('Informe um novo Valor para o campo selecionado.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if ( chkAmb.Checked ) then
  begin
    qryNFEXML.Close;
    qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPedID_NFE_XML.AsString;
    qryNFEXML.Open;

    if ( qryNFEXMLNFE_SEQEVENTO.ISNULL  ) OR ( qryNFEXMLNFE_SEQEVENTO.Value = 0 ) then
      SeqEve :=  '1'
    else
      SeqEve :=  IntTostr( qryNFEXMLNFE_SEQEVENTO.Value + 1 );
  end
  else
  begin
    qryNFEXML_Teste.Close;
    qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPedID_NFE_XML.AsString;
    qryNFEXML_Teste.Open;
    SeqEve :=  qryNFEXML_TesteNFE_SEQEVENTO.AsString;

    if ( qryNFEXML_TesteNFE_SEQEVENTO.ISNULL  ) OR ( qryNFEXML_TesteNFE_SEQEVENTO.Value = 0 ) then
      SeqEve :=  '1'
    else
      SeqEve :=  IntTostr( qryNFEXML_TesteNFE_SEQEVENTO.Value + 1 );
  end;

  GrupoCTe := Lkp_Grupo.Text;
  CampoCTe := Lkp_Campo.Text;
  ValorCTe := RemoveCaracteresEspeciais(TiraAcentos(copy(Edt_ValorCorrecao.Text, 1, 2000)));

  ComandoCCE := FComandoCartaCTE ( SeqEve, GrupoCTe, CampoCTe, ValorCTe, NrItemCTe ) ;
  fSocket.SendString   ('cte.cartadecorrecao( "'+ ComandoCCE+'" ) '+ #13+#10+'.'+#13+#10);
  MemoACBrNFe.Lines.Add('cte.cartadecorrecao( "'+ ComandoCCE+'" ) '+ #13+#10+'.'+#13+#10);
  Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Carta de correção CTe' + QImpDocPedNR_NOTAFISC.AsString );

  ContResp := 0;

  if (  RespCartaCorrecao () = '0' ) then
  begin
    if ( chkAmb.Checked ) then
    begin
      qryNFEXML.Edit;
      qryNFEXMLNFE_SEQEVENTO.Value := StrToint( SeqEve ) ;
      qryNFEXML.Post;
      qryNFEXML.ApplyUpdates;
      qryNFEXML.CommitUpdates;
    end
    else
    begin
      qryNFEXML_Teste.Edit;
      qryNFEXML_TesteNFE_SEQEVENTO.Value := StrToint( SeqEve );
      qryNFEXML_Teste.Post;
      qryNFEXML_Teste.ApplyUpdates;
      qryNFEXML_Teste.CommitUpdates;
    end;

    if(  MessageDlg('Deseja imprimir a carta de correção ?',  mtConfirmation,
       [mbYes, mbNo], 0) = mrYes ) then
    begin
      if ( Length (SeqEve) = 1 ) then
        ArqXMLCarta :=  PastaEvento + '110110' + QImpDocPedNFE_CHAVE.AsString + '0'+SeqEve+'-procEventoCTe.xml'
      else
        ArqXMLCarta := PastaEvento + '110110' + QImpDocPedNFE_CHAVE.AsString + SeqEve+'-procEventoCTe.xml';

      fSocket.SendString   ('CTe.imprimirevento( "'+ ArqXMLCarta+'"  ) '+ #13+#10+'.'+#13+#10);
      MemoACBrNFe.Lines.Add('CTe.imprimirevento( "'+ ArqXMLCarta+'"  )   '+ #13+#10+'.'+#13+#10);
      Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Impressão Carta de correção CTe ' + QImpDocPedNR_NOTAFISC.AsString );

      ContResp := 0;
      RespMonitor( 'IMPCARTACOR');
    end;
  end;

  pnlCartaCte.Visible := false;
  Edt_ValorCorrecao.Clear      ;
  Lkp_Grupo.ListFieldIndex := 0;
  Lkp_Campo.ListFieldIndex := 0;

end;

function TfrmEmissorNFe.FComandoCartaCTE (  SeqEve,GrupoCTe, CampoCTe, ValorCTe, NrItemCTe : String ) : String;
var Comando : WideString ;
    Nr_Nota , Chave  : String;
begin
  Comando := '';
  Nr_Nota := QImpDocPedNR_NOTAFISC.AsString;
  Chave   := QImpDocPedNFE_CHAVE.AsString;

  Comando := Comando + '[EVENTO]'                 + CHR(10) + CHR(10);
  Comando := Comando + 'idLote='+NR_NOTA          + CHR(13) + CHR(10);
  Comando := Comando + '[EVENTO001]'              + CHR(13) + CHR(10);
  Comando := Comando + 'chCTe=' + Chave           + CHR(13) + CHR(10);
  Comando := Comando + 'cOrgao='+ Copy(Chave,1,2) + CHR(13) + CHR(10);
  Comando := Comando + 'CNPJ=' + gs_CNPJ          + CHR(13) + CHR(10);
  Comando := Comando + 'dhEvento='+ Conv_data(Now(),1) + ' '+ Conv_hora(Now(),3) + CHR(13) + CHR(10) ;
  Comando := Comando + 'tpEvento=110110'           + CHR(13) + CHR(10);
  Comando := Comando + 'nSeqEvento='+SeqEve        + CHR(13) + CHR(10);
  Comando := Comando + '[DETEVENTO001]'            + CHR(13) + CHR(10);
  Comando := Comando + 'grupoAlterado=' + GrupoCTe + CHR(13) + CHR(10);
  Comando := Comando + 'campoAlterado=' + CampoCTe + CHR(13) + CHR(10);
  Comando := Comando + 'valorAlterado=' + ValorCTe + CHR(13) + CHR(10);
  Comando := Comando + 'nroItemAlterado=' + NrItemCTe + CHR(13) + CHR(10);

  Result := Comando;

end;


procedure TfrmEmissorNFe.btnCartaCTeOKClick(Sender: TObject);
begin
  CartaCorrecaoCTE ();
end;

procedure TfrmEmissorNFe.btn_CartaCTECancelaClick(Sender: TObject);
begin
  Edt_ValorCorrecao.Clear      ;
  Lkp_Grupo.ListFieldIndex := 0;
  Lkp_Campo.ListFieldIndex := 0;
  pnlCartaCte.Visible := false ;
end;

procedure TfrmEmissorNFe.btn_EmailClick(Sender: TObject);
Var
  ArqXml, Email : string;
  i : Integer;
begin
  Screen.Cursor := crSQLWait;
  QImpDocPed.First;
  Email := '' ;

  for i := 0 to dbg_Notas.SelectedRows.Count - 1 do
  begin
    // Posicionamos no registro desejado
    dbg_Notas.DataSource.DataSet.GotoBookmark(dbg_Notas.SelectedRows.Items[i]);

    ArqXml := '';
    ContResp := 0 ;
    Email := QImpDocPedGN_EMAICLIE.AsString;

    // para ambiente de homologação troca e-mail
    if ( chkAmb.Checked = false ) AND ( Email <> 'N') then
      Email := gs_EmailTeste;

    if ( Email <> '' ) then // E-mail cadastrado
    begin
      if ( chkAmb.Checked ) then
      begin
        qryNFEXML.Close;
        qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;

        qryNFEXML.Open;

        if ( qryNFEXML.RecordCount > 0 ) then
        begin
        if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
          ArqXml  := PastaXML+qryNFEXMLNFE_CHAVE.AsString+'-nfe.xml'
        else
          ArqXml  := PastaXML+qryNFEXMLNFE_CHAVE.AsString+'-cte.xml';

         qryNFEXMLNFE_XML.SaveToFile(ArqXml);
        end;
      end
      else
      begin
        qryNFEXML_Teste.Close;
        qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
        qryNFEXML_Teste.Open;

        if ( qryNFEXML_Teste.RecordCount > 0 ) then
        begin
          if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
            ArqXml := PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-nfe.xml'
          else
           ArqXml := PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-cte.xml' ;

          qryNFEXML_TesteNFE_XML.SaveToFile(ArqXml);
        end;
      end;

      if ( QImpDocPedFL_CANCNOTAFISC.AsString = 'S' ) OR (QImpDocPedCANCELADA.AsString = 'S') then
      begin
        Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' foi cancelada .' );
      end
      else if ( ArqXml <> '' ) then
      begin
        if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
        begin
          fSocket.SendString   ('NFe.EnviarEmail( "'+ Trim(Email) +'" , "'+ Trim(ArqXml) +'" , "1"  ) '+ #13+#10+'.'+#13+#10);
          MemoACBrNFe.Lines.Add('NFe.EnviarEmail( "'+ Trim(Email) +'" , "'+ Trim(ArqXml) +'" , "1"  ) '+ #13+#10+'.'+#13+#10);
          Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Enviando Email ' + QImpDocPedNR_NOTAFISC.AsString );
          RespDanfe('NORMAL');
        end
      end
      else
         Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' não possui XML para envio do e-mail.' );
    end; // E-mail cadastrado
  end;
  Screen.Cursor := crDefault;

end;


procedure TfrmEmissorNFe.pgc_EmissorNFEChange(Sender: TObject);
begin
  if ( pgc_EmissorNFE.ActivePage = TabSheet1 ) then
  begin
    Edt_ChaveNFE.Text := QImpDocPedNFE_CHAVE.Value;
  end;
end;

procedure TfrmEmissorNFe.btn_ConsultaClick(Sender: TObject);
Var ArqXml : string;
begin
  edt_Consulta.Text := '';
  ConsultaNFE();
  RespConsulta( );
end;

function TfrmEmissorNFe.RespConsulta( ): String ;
var
  Resposta , Linha , Mensagem, Status  : String;
  TResp   : TStringList;
  i , Erro : Integer ;
begin
  Erro := 0 ;
  Status := ' ';
  TResp := TStringList.Create;
  MSgResposta := '';
  Mem_Status.Lines.Add('Inicio Consulta ===>'+TimeToStr(Now));

  Resposta := fSocket.RecvTerminated(5000, #3);
  MemoNFe.Lines.Add(Resposta);

  TResp.SetText(  PWideChar( Resposta ) );
  for i := 0 to  TResp.Count - 1 do
  begin
    Linha := TResp.Strings[i];
    //Mostra mensagem de erro
    If Trim(Copy(Linha, 1, 5)) = 'ERRO:' then
    begin
      Erro := 1;
      MSgResposta := Copy(Linha, 6, Length(Linha) - 5);
    end;

    If Trim(Copy(Linha, 1, 3)) = 'OK:' then
    begin
      Erro := 0;
    end;

    if ( Erro = 0 ) And (UpperCase(Trim(Copy(Linha, 1, 5))) = 'CSTAT') then
    begin
      Status := Copy(Linha, 7, Length(Linha) - 6);

      if ( Copy(Linha, 7, Length(Linha) - 6) <> '100' ) then
        Erro := 1;
    end;

    if {( Erro = 0 ) And} (UpperCase(Trim(Copy(Linha, 1, 7))) = 'XMOTIVO') then
    begin
      MSgResposta := Copy(Linha, 9, Length(Linha) - 8);
    end;

    if (Length( Linha) > 0 ) AND ( Erro = 1 ) then
       Mem_RespStatus.Lines.Add(Linha);
  end;

  if ( Erro <> 1 ) then
  begin
    edt_Consulta.Text := Status + ' : '+ MSgResposta ;
    Mem_RespStatus.Lines.Add(MSgResposta)
  end;

   Mem_Status.Lines.Add(Resposta);
   Mem_Status.Lines.Add('Fim==============>'+TimeToStr(Now));
   Result := Status + ' : '+ MSgResposta ;

end;

procedure TfrmEmissorNFe.ConsultaNFE();
Var ArqXml : string;
begin
  if ( chkAmb.Checked ) then
  begin
    qryNFEXML.Close;
    qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
    qryNFEXML.Open;

    if ( qryNFEXML.RecordCount > 0 ) then
    begin
      if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
        ArqXml  := PastaXML+qryNFEXMLNFE_CHAVE.AsString+'-nfe.xml'
      else
        ArqXml  := PastaXML+qryNFEXMLNFE_CHAVE.AsString+'-cte.xml';

      qryNFEXMLNFE_XML.SaveToFile(ArqXml);
    end;
  end
  else
  begin
    qryNFEXML_Teste.Close;
    qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
    qryNFEXML_Teste.Open;

    if ( qryNFEXML_Teste.RecordCount > 0 ) then
    begin
      if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
        ArqXml := PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-nfe.xml'
      else
        ArqXml := PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-cte.xml' ;

      qryNFEXML_TesteNFE_XML.SaveToFile(ArqXml);
    end;
  end;

  fSocket.SendString( ' NFe.ConsultarNFe( "'+ Trim(ArqXml) +'"   ) '+ #13+#10+'.'+#13+#10);
end;

procedure TfrmEmissorNFe.btn_ConsCancClick(Sender: TObject);
Var Resposta : string ;
begin
  ConsultaNFE();
  Resposta := RespConsulta( );
  if ( copy( Resposta,1,3) = '101'  ) then
  begin
    Application.MessageBox('Cancelamento Confirmado.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);

    if ( chkAmb.Checked ) then
    begin
      if ( QImpDocPedFL_CANCNOTAFISC.AsString <> 'S') then
      begin
        qryNFEXML.Close;
        qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
        qryNFEXML.Open;

        qryNFEXML.Edit;
        qryNFEXMLCANCELADA.Value := 'S';
        qryNFEXML.Post;
        qryNFEXML.ApplyUpdates;
        qryNFEXML.CommitUpdates;

        if ( CancelaNFSistema ( QImpDocPedID_PEDIVEND.AsInteger ) = false ) then
        begin
          Application.MessageBox(PChar('Erro ao cancelar Nota fiscal ' + IntToStr(qryTemp['NR_NOTAFISC']) + ' do pedido '
            + IntToStr(QImpDocPed['ID_PEDIVEND'])), PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
          Exit;
        end;

      end;
    end
    else
    begin
      qryNFEXML_Teste.Close;
      qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
      qryNFEXML_Teste.Open;

      qryNFEXML_Teste.Edit;
      qryNFEXML_TesteCANCELADA.Value := 'S';
      qryNFEXML_Teste.Post;
      qryNFEXML_Teste.ApplyUpdates;
      qryNFEXML_Teste.CommitUpdates;

      if( gi_Filial = 52 ) then
      if ( QImpDocPedFL_CANCNOTAFISC.AsString <> 'S') then
      begin
        if ( CancelaNFSistema ( QImpDocPedID_PEDIVEND.AsInteger ) = false ) then
        begin
          Application.MessageBox(PChar('Erro ao cancelar Nota fiscal ' + IntToStr(qryTemp['NR_NOTAFISC']) + ' do pedido '
            + IntToStr(QImpDocPed['ID_PEDIVEND'])), PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
          Exit;
        end;
      end;
    end;
  end
  else
  begin
    Application.MessageBox(PChar('Cancelamento não Confirmado.' + Resposta), PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
  end;

end;

procedure TfrmEmissorNFe.dbg_NotasTitleClick(Column: TColumn);
begin
  OrdenarGrid ( dbg_Notas, QImpDocPed , Column,  OrdemColuna , Ordem );
  OrdemColuna := Column.FieldName;
  if (OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente') then
    Ordem := 'Crescente'
  else
    Ordem := 'Decrescente';
end;

procedure TfrmEmissorNFe.mnu_TodosClick(Sender: TObject);
var vlLinha: Integer;
begin
  with dbg_Notas.DataSource.DataSet do
  begin
    DisableControls;
    First;
    for vlLinha := 0 to RecordCount - 1 do
    begin
      dbg_Notas.SelectedRows.CurrentRowSelected := True;
      Next;
    end;
    EnableControls;
  end;

  dbg_Notas.SelectedRows.Refresh;
end;

procedure TfrmEmissorNFe.btnConfirmaCCClick(Sender: TObject);
var cJustificativa : string ;
    ComandoCCE , SeqEve : String;
begin
  cJustificativa := '';
  ContResp       :=  0;
  ArqXMLCarta    := '';
  cJustificativa :=  ReplaceStr( mem_Carta.Lines.GetText ,#13#10,'|') ;


  if ( Length( cJustificativa) < 15 ) then
  begin
    Application.MessageBox('O texto da Carta de Correção deve conter no mínimo 15 caracteres.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if ( Length( cJustificativa) > 1000 ) then
  begin
    Application.MessageBox('O texto da Carta de Correção deve conter no máximo 1000 caracteres.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  mem_Carta.Clear;

  if ( QImpDocPedNFE_CHAVE.Value = '' ) then
  begin
    Application.MessageBox('Nota Fiscal sem Chave de Acesso. Não é permitido gerar Carta de Correção.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if ( chkAmb.Checked ) then
  begin
    qryNFEXML.Close;
    qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPedID_NFE_XML.AsString;
    qryNFEXML.Open;

    if ( qryNFEXMLNFE_SEQEVENTO.ISNULL  ) OR ( qryNFEXMLNFE_SEQEVENTO.Value = 0 ) then
       SeqEve :=  '1'
    else
        SeqEve :=  IntTostr( qryNFEXMLNFE_SEQEVENTO.Value + 1 );
  end
  else
  begin
    qryNFEXML_Teste.Close;
    qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPedID_NFE_XML.AsString;
    qryNFEXML_Teste.Open;
    SeqEve :=  qryNFEXML_TesteNFE_SEQEVENTO.AsString;

    if ( qryNFEXML_TesteNFE_SEQEVENTO.ISNULL  ) OR ( qryNFEXML_TesteNFE_SEQEVENTO.Value = 0 ) then
      SeqEve :=  '1'
    else
      SeqEve :=  IntTostr( qryNFEXML_TesteNFE_SEQEVENTO.Value + 1 );
  end;

  ComandoCCE := FComandoCCE ( cJustificativa , SeqEve ) ;

  fSocket.SendString   ('NFE.EnviarEvento( "'+ ComandoCCE+'" ) '+ #13+#10+'.'+#13+#10);
  MemoACBrNFe.Lines.Add('NFE.EnviarEvento( "'+ ComandoCCE+'" ) '+ #13+#10+'.'+#13+#10);
  Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Carta de Correção NFe ' + QImpDocPedNR_NOTAFISC.AsString );

  ContResp := 0;
  if (  RespCartaCorrecao () = '0' ) then
  begin
    if ( chkAmb.Checked ) then
    begin
      qryNFEXML.Edit;
      qryNFEXMLNFE_SEQEVENTO.Value := StrToint( SeqEve ) ;
      qryNFEXML.Post;
      qryNFEXML.ApplyUpdates;
      qryNFEXML.CommitUpdates;
    end
    else
    begin
      qryNFEXML_Teste.Edit;
      qryNFEXML_TesteNFE_SEQEVENTO.Value := StrToint( SeqEve );
      qryNFEXML_Teste.Post;
      qryNFEXML_Teste.ApplyUpdates;
      qryNFEXML_Teste.CommitUpdates;
    end;

    if ( Length (SeqEve) = 1 ) then
      ArqXMLCarta := PastaEvento + '110110' + QImpDocPedNFE_CHAVE.AsString + '0'+SeqEve+'-procEventoNFe.xml'
    else
      ArqXMLCarta := PastaEvento + '110110' + QImpDocPedNFE_CHAVE.AsString + SeqEve+'-procEventoNFe.xml';


    fSocket.SendString   ('NFE.ImprimirEventoPDF( "'+ ArqXMLCarta+'"  ) '+ #13+#10+'.'+#13+#10);
    MemoACBrNFe.Lines.Add('NFE.ImprimirEventoPDF( "'+ ArqXMLCarta+'"  )   '+ #13+#10+'.'+#13+#10);
    Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Impressão Carta de correção NFe ' + QImpDocPedNR_NOTAFISC.AsString );

    ContResp := 0;
    RespMonitor( 'IMPCARTACOR');

    fSocket.SendString   ('NFE.ImprimirEvento( "'+ ArqXMLCarta+'"  ) '+ #13+#10+'.'+#13+#10);
    MemoACBrNFe.Lines.Add('NFE.ImprimirEvento( "'+ ArqXMLCarta+'"  )   '+ #13+#10+'.'+#13+#10);
    Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Impressão Carta de correção NFe ' + QImpDocPedNR_NOTAFISC.AsString );

    ContResp := 0;
    RespMonitor( 'IMPCARTACOR');

  end;

  pnlCarta.Visible := false;

end;

procedure TfrmEmissorNFe.btnCancelarCCClick(Sender: TObject);
begin
  mem_Carta.Clear;
  pnlCarta.Visible := false;
end;

procedure TfrmEmissorNFe.btnVisualizarNfeClick(Sender: TObject);
Var
  Resp, ArqXML, ArqPDFPrev : String ;
begin
  Resp   := '';
  ArqXML := '';
  ACBrNFe.Comando := '';
  ACBrCTe.Comando := '';
  ArqPDF := '';

  Screen.Cursor := crSQLWait;

  If ( UpperCase( TIPOEMISSAO ) ='NFE' ) then
  begin
    MensagemEspera(true,'VISUALIZAÇÃO DA NF-e: '+  QImpDocPedNR_NOTAFISC.AsString );
    MemoACBrNFe.Lines.Clear;
    try
      PreencheDadosACBR( QImpDocPedID_PEDIVEND.AsInteger, QImpDocPedNR_NOTAFISC.AsString, QImpDocPedSG_SERINOTAFISC.Value   );
    except
      On E : Exception do
      begin
        MensagemEspera(false,'');
        ShowMessage('Erro ao obter dados para geração da NFe . '+ E.Message);
        QImpDocPed.Close;
        QImpDocPed.Open;
        Screen.Cursor := crDefault;
        Exit;
      end
    end;

    Mem_Nfe.Lines.Add('OBTENDO DADOS PARA VISUALIZAÇÃO DA NF-e: '+QImpDocPedNR_NOTAFISC.AsString + '. AGUARDE!');

    fSocket.SendString( 'NFe.CriarNFe("' + ACBrNFe.Comando + '"    ) '+ #13+#10+'.'+#13+#10);
    MemoACBrNFe.Lines.Add( 'NFe.CriarNFe("' + ACBrNFe.Comando + '"    ) '+ #13+#10+'.'+#13+#10 );
    Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ': GERANDO VISUALIZAÇÃO DA NF-e: ' + QImpDocPedNR_NOTAFISC.AsString );

    ContResp := 0;
    ArqXMlProc := '';
    Resp_Erro := '2';

    Resp := RespPreview();
    if ( Resp_Erro = '0' ) then
    begin
      ArqXml := trim(ArqXMlProc);

      if ( ArqXml <> '' ) then
      begin
        fSocket.SendString( 'NFE.ValidarNFe("' + ArqXML + '"    ) '+ #13+#10+'.'+#13+#10);
        MemoACBrNFe.Lines.Add( 'NFE.ValidarNFe("' + ArqXML + '" ) '+ #13+#10+'.'+#13+#10 );
        Resp := '';
      end;

      ContResp := 0;
      Resp_Erro := '2';

      Resp := RespMonitor( 'VALIDAR' );

      if ( Resp_Erro = '0' ) then
      begin
        if ( ArqXml <> '' ) then
        begin
          ContResp := 0;
          fSocket.SendString   ('NFe.ImprimirDanfePDF( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
          MemoACBrNFe.Lines.Add('NFe.ImprimirDanfePDF( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
          Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ': VISUALIZAÇÃO DA DANF-e: ' + QImpDocPedNR_NOTAFISC.AsString );
          RespDanfe('PDF');

          if ( ArqPDF <> '' ) and ( RightStr(ArqPDF,4) = '.pdf'  ) then
          begin
            try
              ArqPDFPrev := ReplaceStr(LowerCase(ArqPDF),'-nfe','prev');
              DeleteFile( Pchar(ArqPDFPrev) );
              RenameFile(ArqPDF , ArqPDFPrev );
              DeleteFile( Pchar(ArqPDF) );
              ArqPDF := ArqPDFPrev;
              ShellExecute( 0,'open',Pchar( TRIM(ArqPDF) ) ,'' ,'',SW_SHOWNORMAL);
            except
            end;
              frmEmissorNFe.SetFocus;
          end;
        end
        else
          Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' não possui XML para gerar a Danfe.' );
      end;
    end;
    MensagemEspera(false,'');
  End
  Else If ( UpperCase( TIPOEMISSAO ) = 'CTE') then
  begin
    PreviewCTE();
  End;
    Screen.Cursor := crDefault;


end;

procedure TfrmEmissorNFe.btnTransmitirNfeClick(Sender: TObject);
var  i , NotaTransmitida : Integer ;
    Msg_Erro , Resp_NFE, Email, Continua   : string;
begin
  Versao2 := 1;
  Msg_Erro := '';
  Continua := 'N';
  NotaTransmitida := 0 ;

  if ( UpperCase( TIPOEMISSAO ) ='NFE' ) then
  begin
    //Manter verificação se o Monitor ficar na mesma maquina onde gerar a NFE
    fSocket.SendString('NFe.Ativo'+ #13+#10+'.'+#13+#10);

    if ( RespMonitor('') <> '0' ) then
    begin
      MensagemEspera(false,'');
      MonitorAberto := False;
      Application.MessageBox('O Monitor de Transmissão de Nota Fiscal Eletrônica não esta em execução.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
    end
    else
      MonitorAberto := true ;

    If Application.MessageBox('Confirma geração da Nota Fiscal Eletrônica para o(s) Pedido(s) selecionado(s)?', PChar(frmEmissorNFe.Caption), MB_OKCANCEL + MB_ICONINFORMATION) = IDOK then
    begin
      Screen.Cursor := crSQLWait;
      MensagemEspera(true,'Gerando NFe.');

      QImpDocPed.First;
      QImpDocPed.DisableControls;
      dbg_Notas.Enabled := False;

      for i := 0 to dbg_Notas.SelectedRows.Count - 1 do
      begin
        // Posicionamos no registro desejado
        dbg_Notas.DataSource.DataSet.GotoBookmark(dbg_Notas.SelectedRows.Items[i]);

        RetArqXml   := '';
        RetNR_NOTA  := '';
        RetSER_NOTA := '';
        Email       := QImpDocPedGN_EMAICLIE.AsString;

        if ( chkAmb.Checked ) AND( Continua = 'N' ) then
        begin
          Qry_NotaNaoTransmitida.Close;
          Qry_NotaNaoTransmitida.ParamByName('NR_NOTAFISC').Value := QImpDocPedNR_NOTAFISC.AsString;
          Qry_NotaNaoTransmitida.Open;

          if (Qry_NotaNaoTransmitida.RecordCount > 0 )  then
          begin
            if (Application.MessageBox(PChar('A NF-e ' + Qry_NotaNaoTransmitidaNR_NOTAFISC.AsString + ' da empresa '+ Qry_NotaNaoTransmitidaUNOMEUNEG.AsString +
              ' não foi transmitida ou o XML não foi carregado. Providencie a regularização da Nota. Deseja continuar mesmo assim?'), PChar(frmEmissorNFe.Caption), MB_YESNO) ) = IDNO then
            begin
              MensagemEspera(false,'');
              Screen.Cursor := crDefault;
              QImpDocPed.EnableControls;
              dbg_Notas.Enabled := true;
              exit;
            end
            else
              Continua := 'S' ;
          end;
        end;

        if (  Permitir_GeracaoNFe ( QImpDocPedID_PEDIVEND.AsInteger, QImpDocPedNR_NOTAFISC.AsString, QImpDocPedSG_SERINOTAFISC.AsString ) ) then
        begin
          MensagemEspera( true , 'Gerando NFe para Nota ' +QImpDocPedNR_NOTAFISC.AsString   );
          ACBrNFe.Comando := '';
          //Apaga o arquivo memo
          MemoACBrNFe.Lines.Clear;
          try
            PreencheDadosACBR( QImpDocPedID_PEDIVEND.AsInteger, QImpDocPedNR_NOTAFISC.AsString, QImpDocPedSG_SERINOTAFISC.Value   );
          except
            On E : Exception do
            begin
              MensagemEspera(false,'');
              ShowMessage('Erro ao obter dados para geração da NFe . '+ E.Message);
              QImpDocPed.Close;
              QImpDocPed.Open;
              Screen.Cursor := crDefault;
              QImpDocPed.EnableControls;
              dbg_Notas.Enabled := true;
              Exit;
            end
          end;

          Mem_Nfe.Lines.Add('---------------Inicio Geração NF : '+QImpDocPedNR_NOTAFISC.AsString+'---------------');
          fSocket.SendString( 'NFe.CriarEnviarNFe("' + ACBrNFe.Comando + '" ,1 ,1  ) '+ #13+#10+'.'+#13+#10);
          MemoACBrNFe.Lines.Add( 'NFe.CriarEnviarNFe("' + ACBrNFe.Comando + '" ,1 ,1  ) '+ #13+#10+'.'+#13+#10 );
          Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Gerando NFE ' + QImpDocPedNR_NOTAFISC.AsString );
          ContResp := 0;
          Resp_Erro := '2';
          Resp_NFE :=  RespGeraNFe() ;

          if( Resp_Erro = '0' ) then
          begin
            Mem_Resultado.Lines.Add('NFe '+QImpDocPedNR_NOTAFISC.AsString +' gerada . ');
            NotaTransmitida := NotaTransmitida + 1 ;

            // para ambiente de homologação troca e-mail
            if ( chkAmb.Checked = false ) AND ( Email <> 'N') then
              Email := gs_EmailTeste;

            // Enviar e-mail
            if ( RetArqXml <> '') AND ( Email <> '') AND ( gs_EnviaEmailNFe = 'S' ) then
            begin
              fSocket.SendString   ('NFe.EnviarEmail( "'+ Trim(Email) +'" , "'+ Trim(RetArqXml) +'" , "1" ,"Referente NFe '+QImpDocPedNR_NOTAFISC.AsString+' - '+dadosCadastraisFilial.NomeFilial+'" ) '+ #13+#10+'.'+#13+#10);
              MemoACBrNFe.Lines.Add('NFe.EnviarEmail( "'+ Trim(Email) +'" , "'+ Trim(RetArqXml) +'" , "1" ,"Referente NFe '+QImpDocPedNR_NOTAFISC.AsString+' - '+gs_Empresa+'" ) '+ #13+#10+'.'+#13+#10);
              Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Enviando Email ' + QImpDocPedNR_NOTAFISC.AsString );
              Mem_Resultado.Lines.Add('Enviando e-mail '+QImpDocPedNR_NOTAFISC.AsString +'  . ');
              RespDanfe('NORMAL');
            end;
          end
          else if ( ( Resp_Erro = '1' )  ) then
          begin
            Msg_Erro := Msg_Erro + 'A NFe '+ QImpDocPedNR_NOTAFISC.AsString + ' não foi gerada.'  ;
            Mem_Resultado.Lines.Add('NFe '+QImpDocPedNR_NOTAFISC.AsString +' não foi gerada.');
          end
          else if ( ( Resp_Erro = '3' )  ) then
          begin
            Msg_Erro := Msg_Erro + 'A NFe '+ QImpDocPedNR_NOTAFISC.AsString + ' foi DENEGADA . '  ;
            Mem_Resultado.Lines.Add('NFe '+QImpDocPedNR_NOTAFISC.AsString +' foi DENEGADA .');

            if  ( chkAmb.Checked = true ) AND ( QImpDocPedFL_CANCNOTAFISC.AsString <> 'S') then
            begin
              if ( CancelaNFSistema ( QImpDocPedID_PEDIVEND.AsInteger ) = false ) then
              begin
                MessageDlg('Erro ao cancelar Nota fiscal ' + IntToStr(qryTemp['NR_NOTAFISC']) + ' do pedido '
                + IntToStr(QImpDocPed['ID_PEDIVEND']),mtError, [mbOK], 0);
                Exit;
              end;
            end;
          end
          else if ( ContResp >= 10  ) then
          begin
            Mem_Resultado.Lines.Add('NFe '+QImpDocPedNR_NOTAFISC.AsString +' não foi gerada. Não foi possivel obter resposta do Servidor.');
            Application.MessageBox(PChar('NFe '+QImpDocPedNR_NOTAFISC.AsString +' não foi gerada. Não foi possivel obter resposta do Servidor.'), PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
          end;

           Mem_Nfe.Lines.Add('---------------Fim Geração NF : '+QImpDocPedNR_NOTAFISC.AsString+'---------------');
        end
      end;

      MensagemEspera(false,'');
      QImpDocPed.EnableControls;
      dbg_Notas.Enabled := true;

      Application.MessageBox(PChar('Notas Fiscais Eletrônicas ' + IntToStr(NotaTransmitida) + ' transmitidas com sucesso. '+ Msg_Erro), PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
      QImpDocPed.Close;
      QImpDocPed.Open;

       // Seleciona itens do grid novamente
      If not QImpDocPed.IsEmpty then
      begin
        dbg_Notas.DataSource.DataSet.First;
        For i := 0 to QImpDocPed.RecordCount - 1 do
        begin
          dbg_Notas.SelectedRows.CurrentRowSelected := (QImpDocPedID_NFE_XML.Value > 0 ) ;
          dbg_Notas.DataSource.DataSet.Next;
        end;
          dbg_Notas.SelectedRows.Refresh;
      end;
      Screen.Cursor := crDefault;
    end;
  end
  else
  begin
    //Manter verificação se o Monitor ficar na mesma maquina onde gerar a NFE
    fSocket.SendString('CTe.Ativo'+ #13+#10+'.'+#13+#10);

    if ( RespMonitor('') <> '0' ) then
    begin
      MensagemEspera(false,'');
      MonitorAberto := False;
      Application.MessageBox('O Monitor de Transmissão de Conhecimento de Transporte Eletrônico não esta em execução.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
    end
    else
      MonitorAberto := true ;

    GerarCTE();
  end;

  HabilitaBotoes();

end;

procedure TfrmEmissorNFe.btnImprimirNfeClick(Sender: TObject);
Var ArqXml : string;
    i, l : Integer;
    stlXml : TStringList;
begin
  Screen.Cursor := crSQLWait;
  QImpDocPed.First;

  stlXml:= TStringList.Create;

  for i := 0 to dbg_Notas.SelectedRows.Count - 1 do
  begin
     dbg_Notas.DataSource.DataSet.GotoBookmark(dbg_Notas.SelectedRows.Items[i]);

    if ( chkAmb.Checked ) then
    begin
      qryNFEXML.Close;
      qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
      qryNFEXML.Open;

      if ( qryNFEXML.RecordCount > 0 ) then
      begin
        if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
          stlXml.Add(PastaXML + qryNFEXMLNFE_CHAVE.AsString+'-nfe.xml')
        else
          stlXml.Add(PastaXML + qryNFEXMLNFE_CHAVE.AsString+'-cte.xml');
      end;
    end
    else
    begin
      qryNFEXML_Teste.Close;
      qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
      qryNFEXML_Teste.Open;

      if ( qryNFEXML_Teste.RecordCount > 0 ) then
      begin
        if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
          stlXml.Add(PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-nfe.xml')
        else
          stlXml.Add(PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-cte.xml') ;
      end;
    end;
  end;

  if ( QImpDocPedFL_CANCNOTAFISC.AsString = 'S' ) OR (QImpDocPedCANCELADA.AsString = 'S') then
  begin
    Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' foi cancelada .' );
  end
  else if ( stlXml.Count > 0 ) then
  begin
    if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
    begin
      for l := 0 to stlXml.Count - 1 do
      begin
        fSocket.SendString   ('NFe.ImprimirDanfe( "'+ Trim(stlXml.Strings [ l ]) +'" ) '+ #13+#10+'.'+#13+#10);
        MemoACBrNFe.Lines.Add('NFe.ImprimirDanfe( "'+ Trim(stlXml.Strings [ l ]) +'" ) '+ #13+#10+'.'+#13+#10);
        Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Gerando DANFE ' + QImpDocPedNR_NOTAFISC.AsString );
        RespDanfe('NORMAL');
      end;

    end
    else
    begin
      for l := 0 to stlXml.Count - 1 do
      begin
        fSocket.SendString   ('CTe.imprimirdacte( "'+ Trim(stlXml.Strings [ l ]) +'" ) '+ #13+#10+'.'+#13+#10);
        MemoACBrNFe.Lines.Add('CTe.imprimirdacte( "'+ Trim(stlXml.Strings [ l ]) +'" ) '+ #13+#10+'.'+#13+#10);
        Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Gerando DACTE ' + QImpDocPedNR_NOTAFISC.AsString );
        RespDanfe('NORMAL');
      end;
    end;
  end
  else
    Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' não possui XML para gerar a Danfe.' );

  Screen.Cursor := crDefault;

end;

procedure TfrmEmissorNFe.btnDANFENfeClick(Sender: TObject);
Var ArqXml, s : string;
    i : integer;
begin
  Screen.Cursor := crSQLWait;

  QImpDocPed.First;
  for i := 0 to dbg_Notas.SelectedRows.Count - 1 do
  begin
    // Posicionamos no registro desejado
    dbg_Notas.DataSource.DataSet.GotoBookmark(dbg_Notas.SelectedRows.Items[i]);

    ArqXml := '';
    ContResp := 0 ;

    if ( chkAmb.Checked ) then
    begin
      qryNFEXML.Close;
      qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
      qryNFEXML.Open;


      if ( qryNFEXML.RecordCount > 0 ) then
      begin
        if ( UPPERCASE (TIPOEMISSAO)= 'NFE') then
          ArqXml  := PastaXML+qryNFEXMLNFE_CHAVE.AsString+'-nfe.xml'
        else
          ArqXml  := PastaXML+qryNFEXMLNFE_CHAVE.AsString+'-cte.xml';

        qryNFEXMLNFE_XML.SaveToFile(ArqXml);
      end;
    end
    else
    begin
      qryNFEXML_Teste.Close;
      qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
      qryNFEXML_Teste.Open;

      if ( qryNFEXML_Teste.RecordCount > 0 ) then
      begin
        if ( UPPERCASE (TIPOEMISSAO)= 'NFE') then
          ArqXml  := PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-nfe.xml'
        else
          ArqXml  := PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-cte.xml';

        qryNFEXML_TesteNFE_XML.SaveToFile(ArqXml);
      end;
    end;

    if ( QImpDocPedFL_CANCNOTAFISC.AsString = 'S' ) OR(QImpDocPedCANCELADA.AsString = 'S') then
    begin
      Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' foi cancelada .' );
    end
    else if ( ArqXml <> '' ) then
    begin
      if ( UPPERCASE (TIPOEMISSAO)= 'NFE') then
      begin
        fSocket.SendString   ('NFe.ImprimirDanfePDF( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
        MemoACBrNFe.Lines.Add('NFe.ImprimirDanfePDF( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
        Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Gerando DANFE PDF ' + QImpDocPedNR_NOTAFISC.AsString );
        RespDanfe('PDF');
      end
      else
      begin
        fSocket.SendString   ('cte.imprimirdactepdf( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
        MemoACBrNFe.Lines.Add('cte.imprimirdactepdf( "'+ Trim(ArqXml) +'" ) '+ #13+#10+'.'+#13+#10);
        Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Gerando DACTE PDF ' + QImpDocPedNR_NOTAFISC.AsString );
        RespDanfe('PDF');
      end;
    end
    else
      Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' não possui XML para gerar a DANFE/DACTE .' );
  end;

  Screen.Cursor := crDefault;
  frmEmissorNFe.SetFocus;
  frmEmissorNFe.WindowState := wsMaximized;

end;

procedure TfrmEmissorNFe.btnXMLNfeClick(Sender: TObject);
Var CNPJ,CHAVE : string;
    i : Integer;
begin
  CNPJ  := '';
  CHAVE := '';
  Screen.Cursor := crSQLWait;

  QImpDocPed.First;
  for i := 0 to dbg_Notas.SelectedRows.Count - 1 do
  begin
    // Posicionamos no registro desejado
    dbg_Notas.DataSource.DataSet.GotoBookmark(dbg_Notas.SelectedRows.Items[i]);
    ContResp := 0 ;
    CNPJ  := gs_CNPJ;
    CHAVE := QImpDocPedNFE_CHAVE.Value;

    if ( CHAVE <> '' ) then
    begin
      qryNFEXML.Close;
      qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
      qryNFEXML.Open;

      if( UPPERCASE(TIPOEMISSAO) = 'NFE' ) then
      begin
//        qryNFEXMLNFE_XML.SaveToFile(PastaXML+CHAVE+'-nfe.xml');
//        Mem_Resultado.Lines.Add('XML salvo em '+PastaXML+CHAVE+'-nfe.xml');
        qryNFEXMLNFE_XML.SaveToFile(PastaXML+QImpDocPedNR_NOTAFISC.AsString+'_'+QImpDocPedNM_CLIENTE.AsString+'.xml');
        Mem_Resultado.Lines.Add('XML salvo em '+PastaXML+QImpDocPedNR_NOTAFISC.AsString+'_'+QImpDocPedNM_CLIENTE.AsString+'.xml');
      end
      else
      begin
        qryNFEXMLNFE_XML.SaveToFile(PastaXML+CHAVE+'-cte.xml');
        Mem_Resultado.Lines.Add('XML salvo em '+PastaXML+CHAVE+'-cte.xml');
      end;
    end
    else
      Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString+'_'+QImpDocPedNM_CLIENTE.AsString + ' não possui XML .' );
  end;

  Screen.Cursor := crDefault;

end;

procedure TfrmEmissorNFe.btnCartaCorrecaoNfeClick(Sender: TObject);
begin
  if( UpperCase(TIPOEMISSAO) = 'NFE' ) then
  begin
    pnlCarta.Top     := 0 ;
    pnlCarta.Left    := 0 ;
    pnlCarta.Visible := true;
    mem_Carta.SetFocus;
  end
  else
  begin
    pnlCartaCte.Top     := 0 ;
    pnlCartaCte.Left    := 0 ;
    pnlCartaCte.Visible := true;
    Qry_Grupo.Close;
    Qry_Campo.Close;
    Qry_Grupo.Open;
    Qry_Campo.Open;
  end;
end;

procedure TfrmEmissorNFe.btnEmailNfeClick(Sender: TObject);
Var ArqXml, Email : string;
    i : Integer;
begin
  Screen.Cursor := crSQLWait;
  QImpDocPed.First;
  Email := '' ;

  for i := 0 to dbg_Notas.SelectedRows.Count - 1 do
  begin
    // Posicionamos no registro desejado
    dbg_Notas.DataSource.DataSet.GotoBookmark(dbg_Notas.SelectedRows.Items[i]);

    ArqXml := '';
    ContResp := 0 ;
    Email := QImpDocPedGN_EMAICLIE.AsString;

    // para ambiente de homologação troca e-mail
    if ( chkAmb.Checked = false ) AND ( Email <> 'N') then
      Email := gs_EmailTeste;

    if ( Email <> '' ) then // E-mail cadastrado
    begin
      if ( chkAmb.Checked ) then
      begin
        qryNFEXML.Close;
        qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;

        qryNFEXML.Open;

        if ( qryNFEXML.RecordCount > 0 ) then
        begin
        if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
          ArqXml  := PastaXML+qryNFEXMLNFE_CHAVE.AsString+'-nfe.xml'
        else
          ArqXml  := PastaXML+qryNFEXMLNFE_CHAVE.AsString+'-cte.xml';

         qryNFEXMLNFE_XML.SaveToFile(ArqXml);
        end;
      end
      else
      begin
        qryNFEXML_Teste.Close;
        qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
        qryNFEXML_Teste.Open;

        if ( qryNFEXML_Teste.RecordCount > 0 ) then
        begin
          if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
            ArqXml := PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-nfe.xml'
          else
           ArqXml := PastaXML+qryNFEXML_TesteNFE_CHAVE.AsString+'-cte.xml' ;

          qryNFEXML_TesteNFE_XML.SaveToFile(ArqXml);
        end;
      end;

      if ( QImpDocPedFL_CANCNOTAFISC.AsString = 'S' ) OR (QImpDocPedCANCELADA.AsString = 'S') then
      begin
        Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' foi cancelada .' );
      end
      else if ( ArqXml <> '' ) then
      begin
        if ( UPPERCASE(TIPOEMISSAO) = 'NFE'   ) then
        begin
          fSocket.SendString   ('NFe.EnviarEmail( "'+ Trim(Email) +'" , "'+ Trim(ArqXml) +'" , "1"  ) '+ #13+#10+'.'+#13+#10);
          MemoACBrNFe.Lines.Add('NFe.EnviarEmail( "'+ Trim(Email) +'" , "'+ Trim(ArqXml) +'" , "1"  ) '+ #13+#10+'.'+#13+#10);
          Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Enviando Email ' + QImpDocPedNR_NOTAFISC.AsString );
          RespDanfe('NORMAL');
        end
      end
      else
         Mem_Resultado.Lines.Add( ' A Nota ' + QImpDocPedNR_NOTAFISC.AsString + ' não possui XML para envio do e-mail.' );
    end; // E-mail cadastrado
  end;

  Screen.Cursor := crDefault;

end;

procedure TfrmEmissorNFe.btnCancelarNfeClick(Sender: TObject);
var cJustificativa , Resp_CancelaNFE : string ;
var Segundos : integer;
begin
  cJustificativa := '';
  ContResp := 0;
  Resp_CancelaNFE := '2';

  if dbg_Notas.SelectedRows.Count = 0 then
  begin
    MessageDlg('Pelo menos um pedido deve ser selecionado !', mtWarning, [mbOk], 0);
    Exit;
  end;

  if dbg_Notas.SelectedRows.Count > 1 then
  begin
    MessageDlg('Somente um pedido deve ser selecionado para Cancelamento !', mtWarning, [mbOk], 0);
    Exit;
  end;

  Segundos := SecondsBetween( Now(), QImpDocPedDT_AUTORIZACAO.Value);
  if ( Segundos > 86400 ) then
  begin
    MessageDlg('Cancelamento ultrapassou prazo máximo de 24 Horas ! ' + DateTimeToStr( IncHour( QImpDocPedDT_AUTORIZACAO.Value,24 )) , mtWarning, [mbOk], 0);
    Exit;
  end;

  if ( InputQuery('Cancelamento NF SEFAZ' + QImpDocPedNR_NOTAFISC.AsString  , 'Informe a justificativa :', cJustificativa )) then
  begin
    if ( Length( cJustificativa) < 15 ) then
    begin
      ShowMessage('A Justificativa deve ter pelo menos 15 caracteres .');
      Exit;
    end;

    if ( QImpDocPedNFE_CHAVE.Value = '' ) then
    begin
      if ( UPPERCASE(TIPOEMISSAO) = 'NFE'  ) then
        ShowMessage(' Nota sem a chave da NFE não pode ser cancelada.')
      else
        ShowMessage(' Nota sem a chave da CTE não pode ser cancelada.') ;
      Exit;
    end;

    if ( QImpDocPedCANCELADA.Value = 'S' ) then
    begin
      if ( UPPERCASE(TIPOEMISSAO) = 'NFE'  ) then
        ShowMessage(' Nota Fiscal eletronica já foi Cancelada ')
      else
        ShowMessage(' Conhecimento de Transporte já foi Cancelado ');
      Exit;
    end;

    if ( UPPERCASE(TIPOEMISSAO) = 'NFE'  ) then
    begin
      fSocket.SendString   ('NFe.CancelarNFe( "'+ QImpDocPedNFE_CHAVE.Value+ '", "' + cJustificativa  +'" ) '+ #13+#10+'.'+#13+#10);
      MemoACBrNFe.Lines.Add('NFe.CancelarNFe( "'+ QImpDocPedNFE_CHAVE.Value + '", "' + cJustificativa  +'" ) '+ #13+#10+'.'+#13+#10);
      Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Cancelando NFe ' + QImpDocPedNR_NOTAFISC.AsString );
    end
    else
    begin
      fSocket.SendString   ('Cte.cancelarcte( "'+ QImpDocPedNFE_CHAVE.Value+ '", "' + cJustificativa  +'" ) '+ #13+#10+'.'+#13+#10);
      MemoACBrNFe.Lines.Add('Cte.cancelarcte( "'+ QImpDocPedNFE_CHAVE.Value + '", "' + cJustificativa  +'" ) '+ #13+#10+'.'+#13+#10);
      Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Cancelando CTe ' + QImpDocPedNR_NOTAFISC.AsString );
    end;

    Resp_Erro := '2';
    Resp_CancelaNFE :=  RespCancelaNFe();

    if (  Resp_Erro = '0' ) then
    begin
      // Atualiza NF
      if ( chkAmb.Checked ) then
      begin
        qryNFEXML.Close;
        qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
        qryNFEXML.Open;

        qryNFEXML.Edit;
        qryNFEXMLCANCELADA.Value := 'S';
        qryNFEXML.Post;
        qryNFEXML.ApplyUpdates;
        qryNFEXML.CommitUpdates;

        if ( QImpDocPedFL_CANCNOTAFISC.AsString <> 'S') then
        begin
          if ( CancelaNFSistema ( QImpDocPedID_PEDIVEND.AsInteger ) = false ) then
          begin
            MessageDlg('Erro ao cancelar Nota fiscal ' + IntToStr(QImpDocPed['NR_NOTAFISC']) + ' do pedido '
            + IntToStr(QImpDocPed['ID_PEDIVEND']),mtError, [mbOK], 0);
            Exit;
          end;
        end;
      end
      else
      begin
        qryNFEXML_Teste.Close;
        qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
        qryNFEXML_Teste.Open;
        qryNFEXML_Teste.Edit;
        qryNFEXML_TesteCANCELADA.Value := 'S';
        qryNFEXML_Teste.Post;
        qryNFEXML_Teste.ApplyUpdates;
        qryNFEXML_Teste.CommitUpdates;

        if( gi_Filial = 52 ) then
        if ( QImpDocPedFL_CANCNOTAFISC.AsString <> 'S') then
        begin
          if ( CancelaNFSistema ( QImpDocPedID_PEDIVEND.AsInteger ) = false ) then
          begin
            MessageDlg('Erro ao cancelar Nota fiscal ' + IntToStr(QImpDocPed['NR_NOTAFISC']) + ' do pedido '
            + IntToStr(QImpDocPed['ID_PEDIVEND']),mtError, [mbOK], 0);
            Exit;
          end;
        end;
      end;

      QImpDocPed.Close;
      QImpDocPed.Open;
    end
    else  if ( Resp_Erro = '1' ) then
    begin
      Mem_Resultado.Lines.Add(' Erro no Cancelamento. Nota  : '+ QImpDocPedNR_NOTAFISC.AsString+'. ('+Resp_CancelaNFE+')' );
    end
    else  if ( ContResp >= 10  ) then
    begin
      Mem_Resultado.Lines.Add(' Sem retorno de Cancelamento. Confirmar no Portal da SEFAZ  : '+ QImpDocPedNR_NOTAFISC.AsString+'. ('+Resp_CancelaNFE+')' );
    end;
  end;

end;

procedure TfrmEmissorNFe.Sb_SairClick(Sender: TObject);
begin
   close;
end;

procedure TfrmEmissorNFe.SpeedButton1Click(Sender: TObject);
begin
  ShellExecute( 0,'explore',Pchar( TRIM(Copy(PastaXML,1,Length(PastaXML)-4))) ,'' ,'',SW_SHOWNORMAL);
end;

procedure TfrmEmissorNFe.btnInutilizarNfeClick(Sender: TObject);
var cCNPJ, cJustificativa, nAno, nModelo, nSerie, nNumInicial, nNumFinal, TipoE : String;
    PulouNum : Boolean;
begin
  ContResp := 0;

  //Obtem os valores
  cCNPJ   := SoNumeros( gs_CNPJ );
  nAno    := RightStr( DateToStr( Now()),2) ;
  nModelo := '55';
  nSerie      := QImpDocPed.FieldByName('SG_SERINOTAFISC_NOTAFISC').AsString;
  nNumInicial := QImpDocPed.FieldByName('NR_NOTAFISC').AsString;
  nNumFinal   := QImpDocPed.FieldByName('NR_NOTAFISC').AsString;

  if (UPPERCASE (TIPOEMISSAO)= 'NFE' ) then
     TipoE := 'NFe'
  else
     TipoE := 'CTe';

  if not(InputQuery('Inutilizar '+TipoE, 'Digite a Série:',           nSerie)) then exit;
  if not(InputQuery('Inutilizar '+TipoE, 'Digite o nº Inicial:', nNumInicial)) then exit;
  if not(InputQuery('Inutilizar '+TipoE, 'Digite o nº Final:',     nNumFinal)) then exit;
  if not(InputQuery('Inutilizar '+TipoE, 'Digite o Ano(AA):',           nAno)) then exit;

  if not(InputQuery('Inutilizar '+TipoE, 'Digite a Justificativa:', cJustificativa)) then exit;

  if ( Length(cJustificativa) < 15 ) then
  begin
    Application.MessageBox('A Justificativa deve ter pelo menos 15 caracteres.', PChar(frmEmissorNFe.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if Application.MessageBox(PChar('Confirma Inutilização da ' + TipoE + ' do(s) Pedido(s) Selecionado(s)?'), PChar(frmEmissorNFe.Caption),
   MB_OKCANCEL + MB_ICONINFORMATION) = IDOK then
  begin
    if (UPPERCASE (TIPOEMISSAO)= 'NFE' ) then
    begin
      fSocket.SendString   ( 'NFe.InutilizarNFe("' + cCNPJ+'","'+ cJustificativa+'",'+ Trim(nAno)+','+Trim(nModelo)+','+Trim(nSerie)+','+Trim(nNumInicial)+','+Trim(nNumFinal) +') '+ #13+#10+'.'+#13+#10);
      MemoACBrNFe.Lines.Add( 'NFe.InutilizarNFe("' + cCNPJ+'","'+ cJustificativa+'",'+ Trim(nAno)+','+Trim(nModelo)+','+Trim(nSerie)+','+Trim(nNumInicial)+','+Trim(nNumFinal) +') '+ #13+#10+'.'+#13+#10);
      Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Inutilização de NFe de '+ nNumInicial + ' a ' + nNumFinal );
    end
    else
    begin
      fSocket.SendString   ( 'CTe.inutilizarcte("' + cCNPJ+'","'+ cJustificativa+'",'+ Trim(nAno)+','+Trim(nModelo)+','+Trim(nSerie)+','+Trim(nNumInicial)+','+Trim(nNumFinal) +') '+ #13+#10+'.'+#13+#10);
      MemoACBrNFe.Lines.Add( 'CTe.inutilizarcte("' + cCNPJ+'","'+ cJustificativa+'",'+ Trim(nAno)+','+Trim(nModelo)+','+Trim(nSerie)+','+Trim(nNumInicial)+','+Trim(nNumFinal) +') '+ #13+#10+'.'+#13+#10);
      Mem_Nfe.Lines.Add( DateTimeToStr(Now()) + ' : Inutilização de CTe de '+ nNumInicial + ' a ' + nNumFinal );
    end;

    if ( nNumInicial = QImpDocPed.FieldByName('NR_NOTAFISC').AsString ) then
      PulouNum := false
    else
      PulouNum := true;

    if ( not qryNFEXML.Active ) then
    begin
      qryNFEXML.Close;
      qryNFEXML.Open;
    end;

    if (  RespInutilizaNFe( PulouNum, nNumInicial, nSerie, nAno  ) = '0' ) then
    begin
      // Atualiza NF
      if ( chkAmb.Checked ) then
      begin
        qryNFEXML.Close;
        qryNFEXML.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
        qryNFEXML.Open;


        if( not PulouNum ) then
          if ( QImpDocPedFL_CANCNOTAFISC.AsString <> 'S') then
          begin
            if ( CancelaNFSistema ( QImpDocPedID_PEDIVEND.AsInteger ) = false ) then
            begin
              MessageDlg('Erro ao cancelar Nota fiscal ' + IntToStr(QImpDocPed['NR_NOTAFISC']) + ' do pedido '
              + IntToStr(QImpDocPed['ID_PEDIVEND']),mtError, [mbOK], 0);
              Exit;
            end;
          end;
      end
      else
      begin
        qryNFEXML_Teste.Close;
        qryNFEXML_Teste.ParamByName('ID_NFE_XML').Value := QImpDocPed.FieldByName('ID_NFE_XML').AsString;
        qryNFEXML_Teste.Open;
      end;

      QImpDocPed.Close;
      QImpDocPed.Open;
    end

  end;

end;

end.







