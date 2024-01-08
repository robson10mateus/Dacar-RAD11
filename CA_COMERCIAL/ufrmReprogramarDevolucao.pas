unit ufrmReprogramarDevolucao;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask, DBCtrls, Winapi.Windows,
  Grids, DBGrids, DB, Ora, MemDS, Global, DBAccess, DateUtils;

type
  TfrmReprogramarDevolucao = class(TForm)
    PageControl1: TPageControl;
    Lista: TTabSheet;
    Detalhe: TTabSheet;
    pnlBotoes: TPanel;
    SB_CONFIRMA: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    Sb_Sair: TSpeedButton;
    btnReprogramar: TSpeedButton;
    QryDevolucao: TOraQuery;
    DtsDevolucao: TOraDataSource;
    QryDevolucaoItem: TOraQuery;
    DtsDevolucaoItem: TOraDataSource;
    QryDevolucaoEMPRESA: TStringField;
    QryDevolucaoFILIAL: TIntegerField;
    QryDevolucaoID_PEDIDEVOVEND: TFloatField;
    QryDevolucaoID_PEDIVEND: TFloatField;
    QryDevolucaoFL_TIPOPEDIDEVOVEND: TStringField;
    QryDevolucaoDT_PEDIDEVOVEND: TDateTimeField;
    QryDevolucaoDT_ENTRPEDIVEND: TDateTimeField;
    QryDevolucaoID_CLIENTE: TFloatField;
    QryDevolucaoNM_CLIENTE: TStringField;
    QryDevolucaoID_VENDEDOR: TFloatField;
    QryDevolucaoNM_VENDEDOR: TStringField;
    QrConta: TOraQuery;
    DsConta: TOraDataSource;
    QryDevolucaoID_CONTA: TFloatField;
    QrContaID_CONTA: TFloatField;
    QrContaNM_CONTA: TStringField;
    qryPedidoVendaBase: TOraQuery;
    dtsPedidoVendaBase: TOraDataSource;
    qryPedidoVendaItemBase: TOraQuery;
    dtsPedidoVendaItemBase: TOraDataSource;
    qryPedidoVendaNovo: TOraQuery;
    dtsPedidoVendaNovo: TOraDataSource;
    qryPedidoVendaItemNovo: TOraQuery;
    dtsPedidoVendaItemNovo: TOraDataSource;
    QryDevolucaoItemID_PEDIDEVOVEND: TFloatField;
    QryDevolucaoItemID_MATERIAL: TFloatField;
    QryDevolucaoItemID_MATEEMBA: TFloatField;
    QryDevolucaoItemQN_EMBAITEMPEDIDEVOVEND: TIntegerField;
    QryDevolucaoItemQN_PESOITEMPEDIDEVOVEND: TFloatField;
    QryDevolucaoItemQN_PSPDEXPEITEMPEDIDEVOVEND: TFloatField;
    QryDevolucaoItemQN_PSREEXPEITEMPEDIDEVOVEND: TFloatField;
    QryDevolucaoItemID_PRODMATEEMBA: TStringField;
    QryDevolucaoItemNM_PRODMATEEMBA: TStringField;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    edtPedVend: TDBEdit;
    edtDev: TDBEdit;
    edtRazaoSocial: TDBEdit;
    edtVendedor: TDBEdit;
    edtCodClie: TDBEdit;
    edtDtEntrega: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    edtCodVendedor: TDBEdit;
    Label8: TLabel;
    BPesqDt: TBitBtn;
    DBConta: TDBLookupComboBox;
    qryPedidoVendaBaseEMPRESA: TStringField;
    qryPedidoVendaBaseFILIAL: TIntegerField;
    qryPedidoVendaBaseID_PEDIVEND: TFloatField;
    qryPedidoVendaBaseID_CLIENTE: TFloatField;
    qryPedidoVendaBaseID_VENDEDOR: TFloatField;
    qryPedidoVendaBaseDT_PEDIVEND: TDateTimeField;
    qryPedidoVendaBaseDT_ENTRPEDIVEND: TDateTimeField;
    qryPedidoVendaBaseDT_DIGIPEDIVEND: TDateTimeField;
    qryPedidoVendaBaseDT_FATUPEDIVEND: TDateTimeField;
    qryPedidoVendaBaseID_TIPOPEDIVEND: TFloatField;
    qryPedidoVendaBaseID_FORMPAGA: TFloatField;
    qryPedidoVendaBaseID_SITUCOBR: TFloatField;
    qryPedidoVendaBaseID_INSTCOBR: TFloatField;
    qryPedidoVendaBaseID_ENDECLIE_COBRANCA: TFloatField;
    qryPedidoVendaBaseID_ENDECLIE_ENTREGA: TFloatField;
    qryPedidoVendaBaseID_CARGEXPE: TFloatField;
    qryPedidoVendaBaseID_CONTA: TFloatField;
    qryPedidoVendaBaseID_TIPOCOBR: TFloatField;
    qryPedidoVendaBaseID_LOTEEDIPEDIVEND: TFloatField;
    qryPedidoVendaBaseID_USUASIST_DIGIPEDIVEND: TIntegerField;
    qryPedidoVendaBaseID_USUASIST_AUTOPEDIVEND: TIntegerField;
    qryPedidoVendaBaseID_TIPOLOGI: TFloatField;
    qryPedidoVendaBaseSG_TIPOFRETPEDIVEND: TStringField;
    qryPedidoVendaBaseVL_SEGUPEDIVEND: TFloatField;
    qryPedidoVendaBaseVL_DESPPEDIVEND: TFloatField;
    qryPedidoVendaBaseVL_FRETPEDIVEND: TFloatField;
    qryPedidoVendaBaseVL_DESCPEDIVEND: TFloatField;
    qryPedidoVendaBaseVL_PEDIVEND: TFloatField;
    qryPedidoVendaBaseGN_ESPEPEDIVEND: TStringField;
    qryPedidoVendaBaseGN_MARCPEDIVEND: TStringField;
    qryPedidoVendaBaseQN_VOLUPEDIVEND: TIntegerField;
    qryPedidoVendaBaseQN_EMBAPEDIVEND: TIntegerField;
    qryPedidoVendaBaseQN_PESOPEDIVEND: TFloatField;
    qryPedidoVendaBaseQN_TARAPEDIVEND: TFloatField;
    qryPedidoVendaBaseQN_EMBAEXPEPEDIVEND: TIntegerField;
    qryPedidoVendaBaseQN_PESOPADREXPEPEDIVEND: TFloatField;
    qryPedidoVendaBaseQN_TARAREALEXPEPEDIVEND: TFloatField;
    qryPedidoVendaBaseQN_PESOREALEXPEPEDIVEND: TFloatField;
    qryPedidoVendaBaseQN_FATOFRETABAT_PEDIVEND: TFloatField;
    qryPedidoVendaBaseFL_ESPEPEDIVEND: TStringField;
    qryPedidoVendaBaseFL_STATPEDIVEND: TStringField;
    qryPedidoVendaBaseFL_EXPOFINAPEDIVEND: TStringField;
    qryPedidoVendaBaseFL_CREDUSADPEDIVEND: TStringField;
    qryPedidoVendaBaseNR_ORDEPEDIVEND: TFloatField;
    qryPedidoVendaBaseGN_OBSEPADR_PEDIVEND: TStringField;
    qryPedidoVendaBaseGN_OBSEEXPEPEDIVEND: TStringField;
    qryPedidoVendaBaseGN_OBSEPEDIVEND: TStringField;
    qryPedidoVendaBaseVL_FATUPEDIVEND: TFloatField;
    qryPedidoVendaBaseFX_PEDIVEND: TStringField;
    qryPedidoVendaBaseNR_PEDIVEND: TIntegerField;
    qryPedidoVendaBaseVL_QUEBPEDIVEND: TFloatField;
    qryPedidoVendaBaseVL_OUTRAJUSPEDIVEND: TFloatField;
    qryPedidoVendaBaseVL_DEVOPEDIVEND: TFloatField;
    qryPedidoVendaBaseQN_PESOPADRDEVOPEDIVEND: TFloatField;
    qryPedidoVendaBaseQN_PESOREALDEVOPEDIVEND: TFloatField;
    qryPedidoVendaBaseQN_TARAREALDEVOPEDIVEND: TFloatField;
    qryPedidoVendaBaseQN_EMBADEVOPEDIVEND: TIntegerField;
    qryPedidoVendaBaseVL_OUTRAJUSANTPEDIVEND: TFloatField;
    qryPedidoVendaBaseFL_AJUSPEDIDEVOVEND_PEDIVEND: TStringField;
    qryPedidoVendaBaseFL_CONFPEDIDEVOVEND_PEDIVEND: TStringField;
    qryPedidoVendaBaseIE_PEDIVEND: TStringField;
    qryPedidoVendaBasePC_DESCPEDIVEND: TFloatField;
    qryPedidoVendaBasePC_BONIPEDIVEND: TFloatField;
    qryPedidoVendaBaseVL_TRANAUTOPEDIVEND: TFloatField;
    qryPedidoVendaBasePC_IMPOFRETAUTOPEDIVEND: TFloatField;
    qryPedidoVendaBaseFL_BLOQAJUSFINAPEDIVEND: TStringField;
    qryPedidoVendaBaseDT_BLOQAJUSFINAPEDIVEND: TDateTimeField;
    qryPedidoVendaBaseCPORCOMIS: TFloatField;
    qryPedidoVendaBaseFL_COMIS: TStringField;
    qryPedidoVendaBaseID_CIDADE_ENTREGA: TFloatField;
    qryPedidoVendaBaseID_PAIS_ENTREGA: TFloatField;
    qryPedidoVendaBaseID_FORNECEDOR: TFloatField;
    qryPedidoVendaBaseGN_PLACVEICTRAN: TStringField;
    qryPedidoVendaBaseID_PRODMATEEMBA: TStringField;
    qryPedidoVendaBaseID_PEDREMESSA: TFloatField;
    qryPedidoVendaBaseDTHORA_GERADOC: TDateTimeField;
    qryPedidoVendaBaseFL_PNF: TStringField;
    qryPedidoVendaBaseDESCR_EMBALAGEM: TStringField;
    qryPedidoVendaBaseID_USUASIST_AUTAJUST: TIntegerField;
    qryPedidoVendaBaseDT_AUTAJUST: TDateTimeField;
    qryPedidoVendaBaseDT_CONSULTA_IE: TDateTimeField;
    qryPedidoVendaBasePR_CONSULTA_IE: TStringField;
    qryPedidoVendaBaseFL_CORTE: TStringField;
    qryPedidoVendaBaseDTHORA_CORTE: TDateTimeField;
    qryPedidoVendaBaseID_TOMADOR: TFloatField;
    qryPedidoVendaBaseID_EMITENTE: TFloatField;
    qryPedidoVendaBaseID_REMETENTE: TFloatField;
    qryPedidoVendaBaseID_DESTINATARIO: TFloatField;
    qryPedidoVendaBaseID_PRODUTO_PREDOMINANTE: TFloatField;
    qryPedidoVendaBaseGN_OUTRAS_CARACTERISTICAS: TStringField;
    qryPedidoVendaBaseVL_TOTAL_MERCADORIA: TFloatField;
    qryPedidoVendaBaseID_UNIDMEDI: TFloatField;
    qryPedidoVendaBaseNM_TIPO_MEDIDA: TStringField;
    qryPedidoVendaBaseQN_QUANTIDADE_CTE: TFloatField;
    qryPedidoVendaBaseFL_SEMTRANSP: TStringField;
    qryPedidoVendaBaseFL_NFCOMPLEMENTAR: TStringField;
    qryPedidoVendaBaseID_LOTE: TFloatField;
    qryPedidoVendaBaseID_VENDEDORCOMIS: TFloatField;
    qryPedidoVendaBaseNM_LANCTO_POS_HORARIO: TStringField;
    qryPedidoVendaBaseNM_JUSTIFICATIVA_PRECO: TStringField;
    qryPedidoVendaBaseID_USUARIO_AUTO_PRECO: TIntegerField;
    qryPedidoVendaBaseFL_VALIDA_TABPRECO: TStringField;
    qryPedidoVendaBaseFL_VENDA_FUNC: TStringField;
    qryPedidoVendaNovoEMPRESA: TStringField;
    qryPedidoVendaNovoFILIAL: TIntegerField;
    qryPedidoVendaNovoID_PEDIVEND: TFloatField;
    qryPedidoVendaNovoID_CLIENTE: TFloatField;
    qryPedidoVendaNovoID_VENDEDOR: TFloatField;
    qryPedidoVendaNovoDT_PEDIVEND: TDateTimeField;
    qryPedidoVendaNovoDT_ENTRPEDIVEND: TDateTimeField;
    qryPedidoVendaNovoDT_DIGIPEDIVEND: TDateTimeField;
    qryPedidoVendaNovoDT_FATUPEDIVEND: TDateTimeField;
    qryPedidoVendaNovoID_TIPOPEDIVEND: TFloatField;
    qryPedidoVendaNovoID_FORMPAGA: TFloatField;
    qryPedidoVendaNovoID_SITUCOBR: TFloatField;
    qryPedidoVendaNovoID_INSTCOBR: TFloatField;
    qryPedidoVendaNovoID_ENDECLIE_COBRANCA: TFloatField;
    qryPedidoVendaNovoID_ENDECLIE_ENTREGA: TFloatField;
    qryPedidoVendaNovoID_CARGEXPE: TFloatField;
    qryPedidoVendaNovoID_CONTA: TFloatField;
    qryPedidoVendaNovoID_TIPOCOBR: TFloatField;
    qryPedidoVendaNovoID_LOTEEDIPEDIVEND: TFloatField;
    qryPedidoVendaNovoID_USUASIST_DIGIPEDIVEND: TIntegerField;
    qryPedidoVendaNovoID_USUASIST_AUTOPEDIVEND: TIntegerField;
    qryPedidoVendaNovoID_TIPOLOGI: TFloatField;
    qryPedidoVendaNovoSG_TIPOFRETPEDIVEND: TStringField;
    qryPedidoVendaNovoVL_SEGUPEDIVEND: TFloatField;
    qryPedidoVendaNovoVL_DESPPEDIVEND: TFloatField;
    qryPedidoVendaNovoVL_FRETPEDIVEND: TFloatField;
    qryPedidoVendaNovoVL_DESCPEDIVEND: TFloatField;
    qryPedidoVendaNovoVL_PEDIVEND: TFloatField;
    qryPedidoVendaNovoGN_ESPEPEDIVEND: TStringField;
    qryPedidoVendaNovoGN_MARCPEDIVEND: TStringField;
    qryPedidoVendaNovoQN_VOLUPEDIVEND: TIntegerField;
    qryPedidoVendaNovoQN_EMBAPEDIVEND: TIntegerField;
    qryPedidoVendaNovoQN_PESOPEDIVEND: TFloatField;
    qryPedidoVendaNovoQN_TARAPEDIVEND: TFloatField;
    qryPedidoVendaNovoQN_EMBAEXPEPEDIVEND: TIntegerField;
    qryPedidoVendaNovoQN_PESOPADREXPEPEDIVEND: TFloatField;
    qryPedidoVendaNovoQN_TARAREALEXPEPEDIVEND: TFloatField;
    qryPedidoVendaNovoQN_PESOREALEXPEPEDIVEND: TFloatField;
    qryPedidoVendaNovoQN_FATOFRETABAT_PEDIVEND: TFloatField;
    qryPedidoVendaNovoFL_ESPEPEDIVEND: TStringField;
    qryPedidoVendaNovoFL_STATPEDIVEND: TStringField;
    qryPedidoVendaNovoFL_EXPOFINAPEDIVEND: TStringField;
    qryPedidoVendaNovoFL_CREDUSADPEDIVEND: TStringField;
    qryPedidoVendaNovoNR_ORDEPEDIVEND: TFloatField;
    qryPedidoVendaNovoGN_OBSEPADR_PEDIVEND: TStringField;
    qryPedidoVendaNovoGN_OBSEEXPEPEDIVEND: TStringField;
    qryPedidoVendaNovoGN_OBSEPEDIVEND: TStringField;
    qryPedidoVendaNovoVL_FATUPEDIVEND: TFloatField;
    qryPedidoVendaNovoFX_PEDIVEND: TStringField;
    qryPedidoVendaNovoNR_PEDIVEND: TIntegerField;
    qryPedidoVendaNovoVL_QUEBPEDIVEND: TFloatField;
    qryPedidoVendaNovoVL_OUTRAJUSPEDIVEND: TFloatField;
    qryPedidoVendaNovoVL_DEVOPEDIVEND: TFloatField;
    qryPedidoVendaNovoQN_PESOPADRDEVOPEDIVEND: TFloatField;
    qryPedidoVendaNovoQN_PESOREALDEVOPEDIVEND: TFloatField;
    qryPedidoVendaNovoQN_TARAREALDEVOPEDIVEND: TFloatField;
    qryPedidoVendaNovoQN_EMBADEVOPEDIVEND: TIntegerField;
    qryPedidoVendaNovoVL_OUTRAJUSANTPEDIVEND: TFloatField;
    qryPedidoVendaNovoFL_AJUSPEDIDEVOVEND_PEDIVEND: TStringField;
    qryPedidoVendaNovoFL_CONFPEDIDEVOVEND_PEDIVEND: TStringField;
    qryPedidoVendaNovoIE_PEDIVEND: TStringField;
    qryPedidoVendaNovoPC_DESCPEDIVEND: TFloatField;
    qryPedidoVendaNovoPC_BONIPEDIVEND: TFloatField;
    qryPedidoVendaNovoVL_TRANAUTOPEDIVEND: TFloatField;
    qryPedidoVendaNovoPC_IMPOFRETAUTOPEDIVEND: TFloatField;
    qryPedidoVendaNovoFL_BLOQAJUSFINAPEDIVEND: TStringField;
    qryPedidoVendaNovoDT_BLOQAJUSFINAPEDIVEND: TDateTimeField;
    qryPedidoVendaNovoCPORCOMIS: TFloatField;
    qryPedidoVendaNovoFL_COMIS: TStringField;
    qryPedidoVendaNovoID_CIDADE_ENTREGA: TFloatField;
    qryPedidoVendaNovoID_PAIS_ENTREGA: TFloatField;
    qryPedidoVendaNovoID_FORNECEDOR: TFloatField;
    qryPedidoVendaNovoGN_PLACVEICTRAN: TStringField;
    qryPedidoVendaNovoID_PRODMATEEMBA: TStringField;
    qryPedidoVendaNovoID_PEDREMESSA: TFloatField;
    qryPedidoVendaNovoDTHORA_GERADOC: TDateTimeField;
    qryPedidoVendaNovoFL_PNF: TStringField;
    qryPedidoVendaNovoDESCR_EMBALAGEM: TStringField;
    qryPedidoVendaNovoID_USUASIST_AUTAJUST: TIntegerField;
    qryPedidoVendaNovoDT_AUTAJUST: TDateTimeField;
    qryPedidoVendaNovoDT_CONSULTA_IE: TDateTimeField;
    qryPedidoVendaNovoPR_CONSULTA_IE: TStringField;
    qryPedidoVendaNovoFL_CORTE: TStringField;
    qryPedidoVendaNovoDTHORA_CORTE: TDateTimeField;
    qryPedidoVendaNovoID_TOMADOR: TFloatField;
    qryPedidoVendaNovoID_EMITENTE: TFloatField;
    qryPedidoVendaNovoID_REMETENTE: TFloatField;
    qryPedidoVendaNovoID_DESTINATARIO: TFloatField;
    qryPedidoVendaNovoID_PRODUTO_PREDOMINANTE: TFloatField;
    qryPedidoVendaNovoGN_OUTRAS_CARACTERISTICAS: TStringField;
    qryPedidoVendaNovoVL_TOTAL_MERCADORIA: TFloatField;
    qryPedidoVendaNovoID_UNIDMEDI: TFloatField;
    qryPedidoVendaNovoNM_TIPO_MEDIDA: TStringField;
    qryPedidoVendaNovoQN_QUANTIDADE_CTE: TFloatField;
    qryPedidoVendaNovoFL_SEMTRANSP: TStringField;
    qryPedidoVendaNovoFL_NFCOMPLEMENTAR: TStringField;
    qryPedidoVendaNovoID_LOTE: TFloatField;
    qryPedidoVendaNovoID_VENDEDORCOMIS: TFloatField;
    qryPedidoVendaNovoNM_LANCTO_POS_HORARIO: TStringField;
    qryPedidoVendaNovoNM_JUSTIFICATIVA_PRECO: TStringField;
    qryPedidoVendaNovoID_USUARIO_AUTO_PRECO: TIntegerField;
    qryPedidoVendaNovoFL_VALIDA_TABPRECO: TStringField;
    qryPedidoVendaNovoFL_VENDA_FUNC: TStringField;
    qryPedidoVendaItemBaseEMPRESA: TStringField;
    qryPedidoVendaItemBaseFILIAL: TIntegerField;
    qryPedidoVendaItemBaseID_ITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemBaseID_PEDIVEND: TFloatField;
    qryPedidoVendaItemBaseID_MATERIAL: TFloatField;
    qryPedidoVendaItemBaseID_EMBALAGEM: TFloatField;
    qryPedidoVendaItemBaseID_MATEEMBA: TFloatField;
    qryPedidoVendaItemBaseID_TIPOOPER: TFloatField;
    qryPedidoVendaItemBaseVL_UNITITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemBaseQN_EMBAITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemBaseQN_PESOITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemBaseQN_TARAITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemBaseQN_EMBAEXPEITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemBaseQN_PESOPADREXPEITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemBaseQN_TARAREALEXPEITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemBaseQN_PESOREALEXPEITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemBaseQN_CAIXCORTITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemBaseFX_ITEMPEDIVEND: TStringField;
    qryPedidoVendaItemBaseVL_UNITBRUTITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemBasePC_DESCITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemBaseVL_UNITOUTROSAJUSTE: TFloatField;
    qryPedidoVendaItemBaseMOTIVO_AJUSTE: TStringField;
    qryPedidoVendaItemBaseVL_UNITIPI: TFloatField;
    qryPedidoVendaItemBaseFL_IPIBASEICMS: TStringField;
    qryPedidoVendaItemBaseFL_DELETE: TStringField;
    qryPedidoVendaItemBaseQN_PACOTESITEMPEDIVEND: TIntegerField;
    qryPedidoVendaItemBaseVL_ITEMTABEPREC: TFloatField;
    qryPedidoVendaItemBaseVL_DIFERENCA: TFloatField;
    qryPedidoVendaItemBaseSG_ORDEMCOMPRA: TStringField;
    qryPedidoVendaItemBaseQN_ITEMORDEMCOMPRA: TIntegerField;
    qryPedidoVendaItemBaseVL_UNITICMS: TFloatField;
    qryPedidoVendaItemBaseVL_DESCITEM: TFloatField;
    qryPedidoVendaItemBaseVL_OUTRASDESP: TFloatField;
    qryPedidoVendaItemBaseVL_BASEICMS: TFloatField;
    qryPedidoVendaItemBaseVL_ITEMBKP: TFloatField;
    qryPedidoVendaItemBaseBKP_VALOR: TFloatField;
    qryPedidoVendaItemNovoEMPRESA: TStringField;
    qryPedidoVendaItemNovoFILIAL: TIntegerField;
    qryPedidoVendaItemNovoID_ITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemNovoID_PEDIVEND: TFloatField;
    qryPedidoVendaItemNovoID_MATERIAL: TFloatField;
    qryPedidoVendaItemNovoID_EMBALAGEM: TFloatField;
    qryPedidoVendaItemNovoID_MATEEMBA: TFloatField;
    qryPedidoVendaItemNovoID_TIPOOPER: TFloatField;
    qryPedidoVendaItemNovoVL_UNITITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemNovoQN_EMBAITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemNovoQN_PESOITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemNovoQN_TARAITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemNovoQN_EMBAEXPEITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemNovoQN_PESOPADREXPEITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemNovoQN_TARAREALEXPEITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemNovoQN_PESOREALEXPEITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemNovoQN_CAIXCORTITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemNovoFX_ITEMPEDIVEND: TStringField;
    qryPedidoVendaItemNovoVL_UNITBRUTITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemNovoPC_DESCITEMPEDIVEND: TFloatField;
    qryPedidoVendaItemNovoVL_UNITOUTROSAJUSTE: TFloatField;
    qryPedidoVendaItemNovoMOTIVO_AJUSTE: TStringField;
    qryPedidoVendaItemNovoVL_UNITIPI: TFloatField;
    qryPedidoVendaItemNovoFL_IPIBASEICMS: TStringField;
    qryPedidoVendaItemNovoFL_DELETE: TStringField;
    qryPedidoVendaItemNovoQN_PACOTESITEMPEDIVEND: TIntegerField;
    qryPedidoVendaItemNovoVL_ITEMTABEPREC: TFloatField;
    qryPedidoVendaItemNovoVL_DIFERENCA: TFloatField;
    qryPedidoVendaItemNovoSG_ORDEMCOMPRA: TStringField;
    qryPedidoVendaItemNovoQN_ITEMORDEMCOMPRA: TIntegerField;
    qryPedidoVendaItemNovoVL_UNITICMS: TFloatField;
    qryPedidoVendaItemNovoVL_DESCITEM: TFloatField;
    qryPedidoVendaItemNovoVL_OUTRASDESP: TFloatField;
    qryPedidoVendaItemNovoVL_BASEICMS: TFloatField;
    qryPedidoVendaItemNovoVL_ITEMBKP: TFloatField;
    qryPedidoVendaItemNovoBKP_VALOR: TFloatField;
    qryTemp: TOraQuery;
    Panel3: TPanel;
    DBGrid3: TDBGrid;
    qryPedidoVendaBaseFL_REPROGRAMADO: TStringField;
    qryPedidoVendaNovoFL_REPROGRAMADO: TStringField;
    qryPedidoVendaNovoID_PEDIREPROGRAMADO: TFloatField;
    QryDevolucaoFL_REPROGRAMADO: TStringField;
    QryDevolucaoSTATUS: TStringField;
    qryPedidoVendaBaseID_PEDIREPROGRAMADO: TFloatField;
    btnAtualizar: TSpeedButton;
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnReprogramarClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure BPesqDtClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtDataEntrEnter(Sender: TObject);
    procedure edtDataEntrExit(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure DtsDevolucaoDataChange(Sender: TObject; Field: TField);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtDtEntregaExit(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);

  private
    { Private declarations }
  public
    Vdtstr: string;
    dtMaxEntrega, dtEntregaInformada:TDATETIME;
    { Public declarations }
  end;

var
  frmReprogramarDevolucao: TfrmReprogramarDevolucao;

implementation

uses
  Principal, UFrmSeldata;

{$R *.dfm}

procedure TfrmReprogramarDevolucao.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);
  QryDevolucao.Close;
  QryDevolucao.Open;
  QrConta.Close;
  QrConta.Open;
end;

procedure TfrmReprogramarDevolucao.Sb_SairClick(Sender: TObject);
begin
  QrConta.Close;
  QryDevolucao.Close;
  QryDevolucaoItem.Close;
  qryPedidoVendaBase.Close;
  qryPedidoVendaItemBase.Close;
  qryPedidoVendaNovo.Close;
  qryPedidoVendaItemNovo.Close;
  qryTemp.Close;
  Close;
end;

procedure TfrmReprogramarDevolucao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.VEN073.Enabled:= True;
  Action:=caFree;
end;

procedure TfrmReprogramarDevolucao.btnReprogramarClick(Sender: TObject);
begin

  if QryDevolucao.IsEmpty then
  begin
    Application.MessageBox('          Não existem pedidos a serem reprogramados.          ', PChar(frmReprogramarDevolucao.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end
  else if (QryDevolucao['FL_REPROGRAMADO'] = 'S') then
  begin
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Text := 'SELECT DT_ENTRPEDIVEND, ID_PEDIVEND, ID_PEDIREPROGRAMADO FROM PEDIDO_VENDA WHERE ID_PEDIREPROGRAMADO = ' + QryDevolucaoID_PEDIVEND.AsString;
    qryTemp.Open;

    Application.MessageBox(PChar('Este Pedido já foi reprogramado no Pedido ' + qryTemp.FieldByName('ID_PEDIVEND').AsString + ', para o dia ' +
    qryTemp.FieldByName('DT_ENTRPEDIVEND').AsString + '.'), PChar(frmReprogramarDevolucao.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end
  else
  begin
    Detalhe.Show;
    Sb_Sair.Enabled := False;
    SB_CONFIRMA.Enabled := True;
    SB_CANCEL.Enabled := True;
    btnReprogramar.Enabled := False;

    DBConta.Enabled := True;
    edtDtEntrega.Enabled := True;
    edtDtEntrega.SetFocus;
    BPesqDt.Enabled := True;

    qryPedidoVendaBase.Close;
    qryPedidoVendaBase.Open;
    qryPedidoVendaItemBase.Close;
    qryPedidoVendaItemBase.Open;
  end;

end;

procedure TfrmReprogramarDevolucao.SB_CANCELClick(Sender: TObject);
begin

  Sb_Sair.Enabled := True;
  SB_CONFIRMA.Enabled := False;
  SB_CANCEL.Enabled := False;
  btnReprogramar.Enabled := True;

  DBConta.Enabled := False;
  edtDtEntrega.Enabled := False;
  BPesqDt.Enabled := False;

end;

procedure TfrmReprogramarDevolucao.SB_CONFIRMAClick(Sender: TObject);
var
  DataHora : TDateTime;
begin
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT SYSDATE FROM DUAL';
  qryTemp.Open;

  if (dtEntregaInformada < Trunc(qryTemp.FieldByName('sysdate').AsDateTime)) then
  begin
    Application.MessageBox('Não é permitido lançamento de Pedido com Data de Entrega Retroativa.', PChar(frmReprogramarDevolucao.Caption), MB_OK + MB_ICONINFORMATION);
    SB_CANCELClick(self);
    Exit;
  end
  else
  begin
    if (dtEntregaInformada > dtMaxEntrega) then
    begin
      Application.MessageBox('Não é permitido lançamento de Pedido com Data de Entrega Futura, exceto Sábados, Domigos e Feriados.', PChar(frmReprogramarDevolucao.Caption), MB_OK + MB_ICONINFORMATION);
      SB_CANCELClick(self);
      Exit;
    end;
  end;

  if Application.MessageBox('                       Deseja reprogramar o pedido?                         ', PChar(frmReprogramarDevolucao.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
  begin
    try
      qryPedidoVendaBase.Close;
      qryPedidoVendaItemBase.Close;
      qryPedidoVendaBase.Open;
      qryPedidoVendaItemBase.Open;

      qryPedidoVendaNovo.Close;
      qryPedidoVendaItemNovo.Close;
      qryPedidoVendaNovo.Open;
      qryPedidoVendaItemNovo.Open;

      if not (qryPedidoVendaNovo.State in [dsInsert, dsEdit]) then
      begin
        qryPedidoVendaNovo.Insert;
        qryPedidoVendaNovo.FieldByName('EMPRESA').Value := qryPedidoVendaBase.FieldByName('EMPRESA').Value;
        qryPedidoVendaNovo.FieldByName('FILIAL').Value := qryPedidoVendaBase.FieldByName('FILIAL').Value;
        qryPedidoVendaNovo.FieldByName('ID_CLIENTE').Value := qryPedidoVendaBase.FieldByName('ID_CLIENTE').Value;
        qryPedidoVendaNovo.FieldByName('ID_VENDEDOR').Value := qryPedidoVendaBase.FieldByName('ID_VENDEDOR').Value;
        qryPedidoVendaNovo.FieldByName('DT_PEDIVEND').Value := Date;
        qryPedidoVendaNovo.FieldByName('DT_ENTRPEDIVEND').Value := dtEntregaInformada;
        qryPedidoVendaNovo.FieldByName('DT_DIGIPEDIVEND').Value := qryTemp.FieldByName('sysdate').AsDateTime;
        qryPedidoVendaNovo.FieldByName('ID_TIPOPEDIVEND').Value := qryPedidoVendaBase.FieldByName('ID_TIPOPEDIVEND').Value;
        qryPedidoVendaNovo.FieldByName('ID_FORMPAGA').Value := qryPedidoVendaBase.FieldByName('ID_FORMPAGA').Value;
        qryPedidoVendaNovo.FieldByName('ID_SITUCOBR').Value := qryPedidoVendaBase.FieldByName('ID_SITUCOBR').Value;
        qryPedidoVendaNovo.FieldByName('ID_INSTCOBR').Value := qryPedidoVendaBase.FieldByName('ID_INSTCOBR').Value;
        qryPedidoVendaNovo.FieldByName('ID_ENDECLIE_COBRANCA').Value := qryPedidoVendaBase.FieldByName('ID_ENDECLIE_COBRANCA').Value;
        qryPedidoVendaNovo.FieldByName('ID_ENDECLIE_ENTREGA').Value := qryPedidoVendaBase.FieldByName('ID_ENDECLIE_ENTREGA').Value;
        qryPedidoVendaNovo.FieldByName('ID_CONTA').Value := DbConta.KeyValue;
        qryPedidoVendaNovo.FieldByName('ID_TIPOCOBR').Value := qryPedidoVendaBase.FieldByName('ID_TIPOCOBR').Value;
        qryPedidoVendaNovo.FieldByName('ID_USUASIST_DIGIPEDIVEND').Value := qryPedidoVendaBase.FieldByName('ID_USUASIST_DIGIPEDIVEND').Value;
        qryPedidoVendaNovo.FieldByName('ID_TIPOLOGI').Value := qryPedidoVendaBase.FieldByName('ID_TIPOLOGI').Value;
        qryPedidoVendaNovo.FieldByName('SG_TIPOFRETPEDIVEND').Value := qryPedidoVendaBase.FieldByName('SG_TIPOFRETPEDIVEND').Value;
        qryPedidoVendaNovo.FieldByName('VL_PEDIVEND').Value := qryPedidoVendaBase.FieldByName('VL_PEDIVEND').Value;
        qryPedidoVendaNovo.FieldByName('QN_EMBAPEDIVEND').Value := qryPedidoVendaBase.FieldByName('QN_EMBAPEDIVEND').Value;
        qryPedidoVendaNovo.FieldByName('QN_PESOPEDIVEND').Value := qryPedidoVendaBase.FieldByName('QN_PESOPEDIVEND').Value;
        qryPedidoVendaNovo.FieldByName('QN_TARAPEDIVEND').Value := qryPedidoVendaBase.FieldByName('QN_TARAPEDIVEND').Value;
        qryPedidoVendaNovo.FieldByName('QN_FATOFRETABAT_PEDIVEND').Value := qryPedidoVendaBase.FieldByName('QN_FATOFRETABAT_PEDIVEND').Value;
        qryPedidoVendaNovo.FieldByName('FL_ESPEPEDIVEND').Value := qryPedidoVendaBase.FieldByName('FL_ESPEPEDIVEND').Value;
        qryPedidoVendaNovo.FieldByName('FL_STATPEDIVEND').Value := 'AB';
        qryPedidoVendaNovo.FieldByName('FL_CREDUSADPEDIVEND').Value := qryPedidoVendaBase.FieldByName('FL_CREDUSADPEDIVEND').Value;
        qryPedidoVendaNovo.FieldByName('GN_OBSEPADR_PEDIVEND').Value := qryPedidoVendaBase.FieldByName('GN_OBSEPADR_PEDIVEND').Value;
        qryPedidoVendaNovo.FieldByName('FX_PEDIVEND').Value := qryPedidoVendaBase.FieldByName('FX_PEDIVEND').Value;
        qryPedidoVendaNovo.FieldByName('NR_PEDIVEND').Value := qryPedidoVendaBase.FieldByName('NR_PEDIVEND').Value;
        qryPedidoVendaNovo.FieldByName('ID_PAIS_ENTREGA').Value := qryPedidoVendaBase.FieldByName('ID_PAIS_ENTREGA').Value;
        qryPedidoVendaNovo.FieldByName('ID_PRODMATEEMBA').Value := qryPedidoVendaBase.FieldByName('ID_PRODMATEEMBA').Value;
        qryPedidoVendaNovo.FieldByName('FL_PNF').Value := qryPedidoVendaBase.FieldByName('FL_PNF').Value;
        qryPedidoVendaNovo.FieldByName('FL_CORTE').Value := qryPedidoVendaBase.FieldByName('FL_CORTE').Value;
        qryPedidoVendaNovo.FieldByName('DTHORA_CORTE').Value := DataHora;
        qryPedidoVendaNovo.FieldByName('FL_NFCOMPLEMENTAR').Value := qryPedidoVendaBase.FieldByName('FL_NFCOMPLEMENTAR').Value;
        qryPedidoVendaNovo.FieldByName('FL_VENDA_FUNC').Value := qryPedidoVendaBase.FieldByName('FL_VENDA_FUNC').Value;
        qryPedidoVendaNovo.FieldByName('FL_REPROGRAMADO').Value := 'N';
        qryPedidoVendaNovo.FieldByName('GN_OBSEPEDIVEND').Value := 'Reprogramação do Pedido: ' + qryPedidoVendaBaseID_PEDIVEND.AsString;
        qryPedidoVendaNovo.FieldByName('ID_PEDIREPROGRAMADO').Value := qryPedidoVendaBaseID_PEDIVEND.Value;
        qryPedidoVendaNovo.FieldByName('PC_DESCPEDIVEND').Value := qryPedidoVendaBasePC_DESCPEDIVEND.Value;
        qryPedidoVendaNovo.FieldByName('GN_OBSEEXPEPEDIVEND').Value := qryPedidoVendaBaseGN_OBSEEXPEPEDIVEND.Value;

        qryPedidoVendaNovo.Post;
        qryPedidoVendaNovo.ApplyUpdates;
        qryPedidoVendaItemNovo.CommitUpdates;

      end;

      qryPedidoVendaItemBase.First;

      while not qryPedidoVendaItemBase.Eof do
      begin
        if not (qryPedidoVendaItemNovo.State in [dsInsert, dsEdit]) then
        begin
          qryPedidoVendaItemNovo.Insert;
          qryPedidoVendaItemNovo.FieldByName('EMPRESA').Value := qryPedidoVendaItemBase.FieldByName('EMPRESA').Value;
          qryPedidoVendaItemNovo.FieldByName('FILIAL').Value := qryPedidoVendaItemBase.FieldByName('FILIAL').Value;
          qryPedidoVendaItemNovo.FieldByName('ID_MATERIAL').Value := qryPedidoVendaItemBase.FieldByName('ID_MATERIAL').Value;
          qryPedidoVendaItemNovo.FieldByName('ID_EMBALAGEM').Value := qryPedidoVendaItemBase.FieldByName('ID_EMBALAGEM').Value;
          qryPedidoVendaItemNovo.FieldByName('ID_MATEEMBA').Value := qryPedidoVendaItemBase.FieldByName('ID_MATEEMBA').Value;
          qryPedidoVendaItemNovo.FieldByName('ID_TIPOOPER').Value := qryPedidoVendaItemBase.FieldByName('ID_TIPOOPER').Value;
          qryPedidoVendaItemNovo.FieldByName('VL_UNITITEMPEDIVEND').Value := qryPedidoVendaItemBase.FieldByName('VL_UNITITEMPEDIVEND').Value;
          qryPedidoVendaItemNovo.FieldByName('QN_EMBAITEMPEDIVEND').Value := qryPedidoVendaItemBase.FieldByName('QN_EMBAITEMPEDIVEND').Value;
          qryPedidoVendaItemNovo.FieldByName('QN_PESOITEMPEDIVEND').Value := qryPedidoVendaItemBase.FieldByName('QN_PESOITEMPEDIVEND').Value;
          qryPedidoVendaItemNovo.FieldByName('QN_TARAITEMPEDIVEND').Value := qryPedidoVendaItemBase.FieldByName('QN_TARAITEMPEDIVEND').Value;
          qryPedidoVendaItemNovo.FieldByName('QN_EMBAEXPEITEMPEDIVEND').Value := 0;     //qryPedidoVendaItemBase.FieldByName('QN_EMBAEXPEITEMPEDIVEND').Value;
          qryPedidoVendaItemNovo.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').Value := 0; //qryPedidoVendaItemBase.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').Value;
          qryPedidoVendaItemNovo.FieldByName('QN_TARAREALEXPEITEMPEDIVEND').Value := 0; //qryPedidoVendaItemBase.FieldByName('QN_TARAREALEXPEITEMPEDIVEND').Value;
          qryPedidoVendaItemNovo.FieldByName('QN_PESOREALEXPEITEMPEDIVEND').Value := 0; //qryPedidoVendaItemBase.FieldByName('QN_PESOREALEXPEITEMPEDIVEND').Value;
          qryPedidoVendaItemNovo.FieldByName('QN_CAIXCORTITEMPEDIVEND').Value := qryPedidoVendaItemBase.FieldByName('QN_CAIXCORTITEMPEDIVEND').Value;
          qryPedidoVendaItemNovo.FieldByName('FX_ITEMPEDIVEND').Value := qryPedidoVendaItemBase.FieldByName('FX_ITEMPEDIVEND').Value;
          qryPedidoVendaItemNovo.FieldByName('VL_UNITBRUTITEMPEDIVEND').Value := qryPedidoVendaItemBase.FieldByName('VL_UNITBRUTITEMPEDIVEND').Value;
          qryPedidoVendaItemNovo.FieldByName('VL_ITEMTABEPREC').Value := qryPedidoVendaItemBase.FieldByName('VL_ITEMTABEPREC').Value;
          qryPedidoVendaItemNovo.FieldByName('VL_DIFERENCA').Value := qryPedidoVendaItemBase.FieldByName('VL_DIFERENCA').Value;
          qryPedidoVendaItemNovo.FieldByName('PC_DESCITEMPEDIVEND').Value := qryPedidoVendaItemBase.FieldByName('PC_DESCITEMPEDIVEND').Value;

          qryPedidoVendaItemNovo.Post;
          qryPedidoVendaItemBase.Next;
        end;
      end;

      qryPedidoVendaItemNovo.ApplyUpdates;
      qryPedidoVendaItemNovo.CommitUpdates;

      if not (qryPedidoVendaBase.State in [dsInsert, dsEdit]) then
      begin
        qryPedidoVendaBase.Edit;
        qryPedidoVendaBase.FieldByName('FL_REPROGRAMADO').Value := 'S';
        qryPedidoVendaBase.ApplyUpdates;
        qryPedidoVendaBase.CommitUpdates;
      end;

      Application.MessageBox(PChar('Reprogramação efetuada para o dia ' + DateToStr(qryPedidoVendaNovo.FieldByName('DT_ENTRPEDIVEND').Value) + ', através do pedido ' + qryPedidoVendaNovoID_PEDIVEND.AsString + '.'), PChar(frmReprogramarDevolucao.Caption), MB_OK + MB_ICONINFORMATION);

    except
      QrConta.CancelUpdates;
      qryPedidoVendaBase.CancelUpdates;
      qryPedidoVendaNovo.CancelUpdates;
      qryPedidoVendaItemBase.CancelUpdates;
      qryPedidoVendaItemNovo.CancelUpdates;
    end;

    QryDevolucao.Refresh
  end;

  btnReprogramar.Enabled  := True;
  SB_CONFIRMA.Enabled     := False;
  SB_CANCEL.Enabled       := False;
  Sb_Sair.Enabled         := True;

end;

procedure TfrmReprogramarDevolucao.BPesqDtClick(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  edtDtEntrega.Text := Vdtstr;
  edtDtEntregaExit(Self);
end;

procedure TfrmReprogramarDevolucao.edtDataEntrEnter(Sender: TObject);
begin
  if qryPedidoVendaBase.State = DsInsert then
    BPesqDt.Visible:=True;
end;

procedure TfrmReprogramarDevolucao.edtDataEntrExit(Sender: TObject);
begin
  BPesqDt.Visible := FALSE;
end;

procedure TfrmReprogramarDevolucao.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with DBGrid2 do
  begin
    if Odd( DataSource.DataSet.RecNo) then
      Canvas.Brush.Color := $00FFF2D9
    else
      Canvas.Brush.Color := clWindow;

    Canvas.Font.Color  := clBlack;
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);

  end;

  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($00CEE7FF);

  DBGrid2.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TfrmReprogramarDevolucao.FormShow(Sender: TObject);
begin
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT SYSDATE FROM DUAL';
  qryTemp.Open;
  dtMaxEntrega:= fProximoDiaUtil(DateOf(QryTemp.FieldByName('SYSDATE').AsDateTime + 1));
  Lista.Show;
end;

procedure TfrmReprogramarDevolucao.DtsDevolucaoDataChange(Sender: TObject;
  Field: TField);
begin
  QryDevolucaoItem.Close;
  QryDevolucaoItem.Open;
end;

procedure TfrmReprogramarDevolucao.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with DBGrid3 do
  begin
    if Odd( DataSource.DataSet.RecNo) then
      Canvas.Brush.Color := $00FFF2D9
    else
      Canvas.Brush.Color := clBackground;

    Canvas.Font.Color  := clBlack;
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);

  end;

  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($00CEE7FF);

  DBGrid3.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TfrmReprogramarDevolucao.edtDtEntregaExit(Sender: TObject);
begin
  dtEntregaInformada:= StrToDateTime(edtDtEntrega.Text);
end;

procedure TfrmReprogramarDevolucao.btnAtualizarClick(Sender: TObject);
begin
  QryDevolucao.Refresh;
end;

end.


