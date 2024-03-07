unit UFrmLoteIntegrado;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, VirtualTable, Winapi.Windows, Data.DB,
  DBAccess, Ora, MemDS, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmLoteIntegrado = class(TForm)
    PageControl1: TPageControl;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    TabLista: TTabSheet;
    TabDetalhe: TTabSheet;
    DBGrid1: TDBGrid;
    ToolButton1: TToolButton;
    Sb_Sair: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PRIMEIRO: TSpeedButton;
    ToolButton2: TToolButton;
    SB_NOVO: TSpeedButton;
    SB_EXCLUI: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    ToolButton3: TToolButton;
    SB_EDIT: TSpeedButton;
    TabCriterio: TTabSheet;
    LCampos: TListBox;
    MResul: TMemo;
    Label6: TLabel;
    CBCond: TComboBox;
    Label7: TLabel;
    EdExpre: TEdit;
    RGeou: TRadioGroup;
    BtIncluir: TBitBtn;
    BtLimpar: TBitBtn;
    BtAtivar: TBitBtn;
    BPESQ: TBitBtn;
    SB_ATUAL: TSpeedButton;
    Ds: TOraDataSource;
    pnl_Lote: TPanel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edt_DtAlojLote: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Qr_Integrado: TOraQuery;
    Qr_IntegradoID_INTEGRADO: TFloatField;
    Qr_IntegradoNM_FORNECEDOR: TStringField;
    Lkp_Integrado: TDBLookupComboBox;
    Ds_Integrado: TOraDataSource;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Pnl_Fornecedor: TPanel;
    dbg_Fornecedor: TDBGrid;
    Ds_AlojamentoFornec: TOraDataSource;
    Panel2: TPanel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    edt_Nota: TDBEdit;
    Label11: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Qr_Linhagem: TOraQuery;
    Ds_Linhagem: TOraDataSource;
    Qr_LinhagemEMPRESA: TStringField;
    Qr_LinhagemFILIAL: TIntegerField;
    Qr_LinhagemID_LINHAGEM: TFloatField;
    Qr_LinhagemDESC_LINHAGEM: TStringField;
    Qr_LinhagemPRORIO_COMPRADO: TStringField;
    btn_PesqNF: TSpeedButton;
    pnl_Galpao: TPanel;
    Pnl_EdtGAlpao: TPanel;
    btn_IncGalpao: TSpeedButton;
    btn_ExcGalpao: TSpeedButton;
    btn_EditaGalpao: TSpeedButton;
    btn_ConfGalpao: TSpeedButton;
    btn_CancGalpao: TSpeedButton;
    dbg_Galpao: TDBGrid;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    cbx_Sexo: TDBComboBox;
    Label17: TLabel;
    Ds_LoteGalpao: TOraDataSource;
    Lkp_Galpao: TDBLookupComboBox;
    Qr_Galpao: TOraQuery;
    Ds_Galpao: TOraDataSource;
    Qr_GalpaoEMPRESA: TStringField;
    Qr_GalpaoFILIAL: TIntegerField;
    Qr_GalpaoID_GALPAO: TFloatField;
    Qr_GalpaoID_INTEGRADO: TFloatField;
    Qr_GalpaoDESC_GALPAO: TStringField;
    Qr_GalpaoLARG_GALPAO: TFloatField;
    Qr_GalpaoCOMPR_GALPAO: TFloatField;
    Qr_GalpaoAREA_GALPAO: TFloatField;
    Qr_GalpaoATIVO: TStringField;
    Qr_GalpaoLKP_GALPAO: TStringField;
    DBEdit10: TDBEdit;
    edt_QtdGalpao: TDBEdit;
    Panel3: TPanel;
    btn_IncFornec: TSpeedButton;
    btn_ExcluiFornec: TSpeedButton;
    btn_EditaFornec: TSpeedButton;
    btn_ConfirmaFornec: TSpeedButton;
    Btn_CancelaFornec: TSpeedButton;
    Tab_Remessa: TTabSheet;
    Tab_Retirada: TTabSheet;
    dbg_Remessa: TDBGrid;
    dbg_Retirada: TDBGrid;
    Panel4: TPanel;
    Ds_Retirada: TOraDataSource;
    Qr_Remessa: TOraQuery;
    Ds_Remessa: TOraDataSource;
    Qr_RemessaDT_SAIDNOTAFISC: TDateTimeField;
    Qr_RemessaNR_NOTAFISC: TFloatField;
    Qr_RemessaNM_PRODMATEEMBA: TStringField;
    Qr_NFRetirada: TOraQuery;
    Ds_NFRetirada: TOraDataSource;
    Qr_NFRetiradaEMPRESA: TStringField;
    Qr_NFRetiradaFILIAL: TIntegerField;
    Qr_NFRetiradaDT_SAIDNOTAFISC: TDateTimeField;
    Qr_NFRetiradaID_NOTAFISC: TFloatField;
    Qr_NFRetiradaNR_NOTAFISC: TFloatField;
    Qr_NFRetiradaNM_MATERIAL_ITEMNOTAFISC: TStringField;
    Qr_NFRetiradaGN_OBSEPEDIVEND: TStringField;
    Qr_NFRetiradaPESODIFERE: TIntegerField;
    Qr_NFRetiradaID_PEDIVEND: TFloatField;
    Qr_NFRetiradaID_CLIENTE: TFloatField;
    Qr_NFRetiradaNM_DESTREMENOTAFISC: TStringField;
    Dbg_NFRetiradas: TDBGrid;
    btn_IncluirNota: TSpeedButton;
    btn_RetirarNota: TSpeedButton;
    Label19: TLabel;
    Label18: TLabel;
    lbl_Quantidade: TLabel;
    lbl_Peso: TLabel;
    btn_RelAnalitico: TSpeedButton;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label21: TLabel;
    Qr_IntegradoNR_CNPJFORN: TStringField;
    Tab_Fechamento: TTabSheet;
    Qr_Fechamento: TOraQuery;
    Ds_Fechamento: TOraDataSource;
    Qr_FechamentoID_LOTE: TFloatField;
    Qr_FechamentoSOBRA_RACAO: TFloatField;
    Qr_FechamentoMORTALIDADE: TFloatField;
    Qr_FechamentoAVES_ABAT: TFloatField;
    Qr_FechamentoPESO_ABAT: TFloatField;
    Qr_FechamentoQTDE_GALPAO: TFloatField;
    Label26: TLabel;
    Label27: TLabel;
    Qr_FechamentoQTD_RACAO: TFloatField;
    Panel5: TPanel;
    DBText3: TDBText;
    Label28: TLabel;
    Qr_FechamentoQTDE_ALOJ: TFloatField;
    Qr_FechamentoPESO_MEDIO: TFloatField;
    Qr_FechamentoVIABILIDADE: TFloatField;
    Qr_FechamentoRACAO_CONSUMIDA: TFloatField;
    Qr_FechamentoCONV_ALIMENTAR: TFloatField;
    Qr_FechamentoIDADE: TFloatField;
    Pnl_FechaTopo: TPanel;
    Label34: TLabel;
    DBEdit22: TDBEdit;
    Label33: TLabel;
    DBEdit21: TDBEdit;
    DBEdit20: TDBEdit;
    Label32: TLabel;
    Label31: TLabel;
    DBEdit19: TDBEdit;
    DBEdit18: TDBEdit;
    Label30: TLabel;
    Label29: TLabel;
    DBEdit17: TDBEdit;
    Label23: TLabel;
    DBEdit13: TDBEdit;
    Label25: TLabel;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    Label24: TLabel;
    Label22: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit14: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Panel6: TPanel;
    btn_incLanc: TSpeedButton;
    btn_ExcluiLanc: TSpeedButton;
    btn_EdtLanc: TSpeedButton;
    btn_ConfLanc: TSpeedButton;
    btn_CancLanc: TSpeedButton;
    dbg_Lancto: TDBGrid;
    Ds_Lancto: TOraDataSource;
    Label42: TLabel;
    DBEdit30: TDBEdit;
    Qr_FechamentoGANHO_PESO_DIA: TFloatField;
    Label43: TLabel;
    DBEdit31: TDBEdit;
    Qr_FechamentoMORTAL_CALC: TFloatField;
    Qr_FechamentoDIF_MORTAL: TFloatField;
    Qr_FechamentoIEP: TFloatField;
    Qr_Fator: TOraQuery;
    Ds_Fator: TOraDataSource;
    Qr_FatorVL_GERAL: TFloatField;
    Qr_FechamentoPESO_MEDIOK: TFloatField;
    Qr_FechamentoCONV_ALIMENTARK: TFloatField;
    Qr_FechamentoGANHO_PESO_DIAK: TFloatField;
    Qr_FechamentoIEPK: TFloatField;
    Qr_FechamentoVL_AVE: TFloatField;
    Qr_FechamentoVL_TOTAL: TFloatField;
    Btn_Fechar: TButton;
    Label44: TLabel;
    DBEdit32: TDBEdit;
    Qr_FechamentoDIAS_PAGTO: TIntegerField;
    btn_RelPagamento: TSpeedButton;
    VT_TIPOLANC: TVirtualTable;
    VT_TIPOLANCTIPO_LANC: TStringField;
    VT_TIPOLANCDES_LANC: TStringField;
    DBEdit33: TDBEdit;
    Label45: TLabel;
    Qr_FechamentoDESC_LINHAGEM: TStringField;
    Qr_FechamentoID_TECNICO: TFloatField;
    Qr_FechamentoNOME_TECNICO: TStringField;
    Qr_NFRetiradaGN_PLACVEICNOTAFISC: TStringField;
    Qr_NFRetiradaVL_UNITITEMNOTAFISC: TFloatField;
    Qr_IntegradoFL_ATIVO: TStringField;
    Label46: TLabel;
    edt_VLAveFinal: TDBEdit;
    Label47: TLabel;
    DBEdit35: TDBEdit;
    Qr_FechamentoTOTA_FINAL: TFloatField;
    Qr_Turma: TOraQuery;
    Ds_Turma: TOraDataSource;
    Qr_TurmaTURMA: TIntegerField;
    Qr_TurmaID_FORNECEDOR: TFloatField;
    Qr_TurmaNM_FORNECEDOR: TStringField;
    Qr_TurmaVL_AVE_TURMA: TFloatField;
    btn_ReciboTurma: TSpeedButton;
    Label48: TLabel;
    DBEdit34: TDBEdit;
    Label49: TLabel;
    Label50: TLabel;
    edtDataGTA: TDBEdit;
    edtDataAloj: TDBEdit;
    BPesqDt: TBitBtn;
    btnDataAloj: TBitBtn;
    Qr_NFRetiradaID_NOTA: TFloatField;
    btn_Boletim: TSpeedButton;
    Qr_FechamentoBONUS_PESOMEDIO: TFloatField;
    Label8: TLabel;
    DBEdit36: TDBEdit;
    Qr_RemessaID_LOTE: TFloatField;
    Qr_NFRetiradaID_LOTE: TFloatField;
    Label51: TLabel;
    DBEdit37: TDBEdit;
    Qr_VerTurma: TOraQuery;
    Qr_VerTurmaID_LOTE: TFloatField;
    Qr_VerTurmaVTURMA: TFloatField;
    Qr_VerTurmaVQTD: TFloatField;
    Qr_VerTurmaVPESO: TFloatField;
    Qr_Nucleo: TOraQuery;
    Qr_NucleoID_NUCLEO: TFloatField;
    Qr_NucleoID_INTEGRADO: TFloatField;
    Qr_NucleoDESC_NUCLEO: TStringField;
    DBEdit38: TDBEdit;
    Label52: TLabel;
    Label53: TLabel;
    Lkp_Nucleo: TDBLookupComboBox;
    Ds_Nucleo: TOraDataSource;
    btn_DtLoteAloj: TBitBtn;
    Qr_VerQtdAloj: TOraQuery;
    Qr_VerQtdAlojID_LOTE: TFloatField;
    Qr_VerQtdAlojQTD_ALOJ: TFloatField;
    Qr_VerQtdAlojQTD_ALOJK: TFloatField;
    Qr_VerQtdAlojQTD_ALOJF: TFloatField;
    Qr_VerQtdAlojQTD_ALOJG: TFloatField;
    lbl_TotalNota: TLabel;
    lbl_TotalGalpao: TLabel;
    Qr_RemessaQN_EMBAITEMNOTAFISC: TFloatField;
    Qr_RemessaOPERACAO: TStringField;
    Qr_RacEngorda: TOraQuery;
    Qr_RacEngordaRACAO: TStringField;
    Qr_RacEngordaDT_ULTSAIDA: TDateTimeField;
    Bt_Atualiza: TButton;
    Qr_RacEngordaDT_PRIMSAIDA: TDateTimeField;
    Label54: TLabel;
    DBEdit2: TDBEdit;
    btn_LanctoPadrao: TSpeedButton;
    Label55: TLabel;
    Label56: TLabel;
    Btn_Previsao: TButton;
    Qr_Direitos: TOraQuery;
    Qr_DireitosID_RECURSO: TFloatField;
    btn_RacaAves: TSpeedButton;
    Qr: TSmartQuery;
    QrEMPRESA: TStringField;
    QrFILIAL: TIntegerField;
    QrID_LOTE: TFloatField;
    QrDATA_ALOJAMENTO: TDateTimeField;
    QrID_USUARIO: TFloatField;
    QrID_INTEGRADO: TFloatField;
    QrID_FORNECEDOR: TFloatField;
    QrNM_FORNECEDOR: TStringField;
    QrNOME_USUARIO: TStringField;
    QrFL_STATUS: TStringField;
    QrDT_FECHAMENTO: TDateTimeField;
    QrNR_CNPJFORN: TStringField;
    QrSOBRA_RACAO: TFloatField;
    QrMORTALIDADE: TFloatField;
    QrPER_MORTALIDADE: TFloatField;
    QrCONV_ALIMENTAR: TFloatField;
    QrGANHO_PESO_DIA: TFloatField;
    QrPESO_MEDIO: TFloatField;
    QrIEP: TFloatField;
    QrPRECO_AVE: TFloatField;
    QrDATA_PAGTO: TDateTimeField;
    QrVL_PAGTO: TFloatField;
    QrAVES_ALOJ: TFloatField;
    QrAVES_ABAT: TFloatField;
    QrTOT_KG: TFloatField;
    QrIDADE: TFloatField;
    QrTOTAL_RACAO: TFloatField;
    QrPRECO_AVE_FINAL: TFloatField;
    QrVL_PAGTO_FINAL: TFloatField;
    QrMORT_PRIM_SEMANA: TFloatField;
    QrSTATUS: TStringField;
    QrID_NUCLEO: TFloatField;
    QrDATA_INCLOTE: TDateTimeField;
    QrQTD_ALOJ: TFloatField;
    QrIDADEK: TFloatField;
    QrDESC_NUCLEO: TStringField;
    Qr_Retirada: TSmartQuery;
    Qr_RetiradaEMPRESA: TStringField;
    Qr_RetiradaFILIAL: TIntegerField;
    Qr_RetiradaID_LOTE: TFloatField;
    Qr_RetiradaID_NOTAFISC: TFloatField;
    Qr_RetiradaNR_NOTAFISC: TFloatField;
    Qr_RetiradaDT_SAIDNOTAFISC: TDateTimeField;
    Qr_RetiradaQTD_AVESABAT: TFloatField;
    Qr_RetiradaPESO_AVES: TFloatField;
    Qr_RetiradaTURMA: TIntegerField;
    Qr_RetiradaPeso_Medio: TFloatField;
    Qr_RetiradaVL_UNIT: TFloatField;
    Qr_RetiradaPLACAVEIC: TStringField;
    Qr_RetiradaLkp_Turma: TStringField;
    Qr_RetiradaGTA: TFloatField;
    Qr_RetiradaMORTALIDADE: TFloatField;
    Qr_RetiradaPER_MORTBOLETIM: TFloatField;
    Qr_LoteGalpao: TSmartQuery;
    Qr_LoteGalpaoEMPRESA: TStringField;
    Qr_LoteGalpaoFILIAL: TIntegerField;
    Qr_LoteGalpaoID_LOTE: TFloatField;
    Qr_LoteGalpaoID_GALPAO: TFloatField;
    Qr_LoteGalpaoTIPO: TStringField;
    Qr_LoteGalpaoQTDE: TFloatField;
    Qr_LoteGalpaoDESC_GALPAO: TStringField;
    Qr_LoteGalpaoLARG_GALPAO: TFloatField;
    Qr_LoteGalpaoCOMPR_GALPAO: TFloatField;
    Qr_LoteGalpaoAREA_GALPAO: TFloatField;
    Qr_LoteGalpaoDESC_TIPO: TStringField;
    Qr_AlojamentoFornec: TSmartQuery;
    Qr_AlojamentoFornecEMPRESA: TStringField;
    Qr_AlojamentoFornecFILIAL: TIntegerField;
    Qr_AlojamentoFornecID_LOTE: TFloatField;
    Qr_AlojamentoFornecID_FORNECEDOR: TFloatField;
    Qr_AlojamentoFornecNR_NOTA: TFloatField;
    Qr_AlojamentoFornecID_LINHAGEM: TFloatField;
    Qr_AlojamentoFornecIDADE_MATRIZ: TIntegerField;
    Qr_AlojamentoFornecVALOR_PINTAINHO: TFloatField;
    Qr_AlojamentoFornecNM_FORNECEDOR: TStringField;
    Qr_AlojamentoFornecDESC_LINHAGEM: TStringField;
    Qr_AlojamentoFornecPRORIO_COMPRADO: TStringField;
    Qr_AlojamentoFornecQUANTIDADE: TFloatField;
    Qr_AlojamentoFornecGTA: TFloatField;
    Qr_AlojamentoFornecDATA_GTA: TDateTimeField;
    Qr_AlojamentoFornecDATA_RECEB: TDateTimeField;
    Qr_AlojamentoFornecSEQ_NOTA: TIntegerField;
    Qr_Lancto: TSmartQuery;
    Qr_LanctoEMPRESA: TStringField;
    Qr_LanctoFILIAL: TIntegerField;
    Qr_LanctoID_LOTE: TFloatField;
    Qr_LanctoID_LANCLOTE: TFloatField;
    Qr_LanctoTIPO_LANC: TStringField;
    Qr_LanctoDESC_LANC: TStringField;
    Qr_LanctoVALOR_LANC: TFloatField;
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SB_EDITClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure QrCBRBeforePost(DataSet: TDataSet);
    procedure LCamposClick(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    Function  Bot_Flat(Botao:Integer):string;
    procedure SB_ATUALClick(Sender: TObject);
    procedure SB_PRIMEIROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_ANTERIORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_PROXIMOMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_ULTIMOMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_NOVOMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_EXCLUIMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_EDITMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_ATUALMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_CONFIRMAMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_CANCELMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Sb_SairMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolBar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PageControl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BPESQClick(Sender: TObject);
    procedure btn_PesqNFClick(Sender: TObject);
    procedure CRTemp_QrAfterOpen(DataSet: TDataSet);
    procedure btn_IncGalpaoClick(Sender: TObject);
    procedure btn_ExcGalpaoClick(Sender: TObject);
    procedure btn_EditaGalpaoClick(Sender: TObject);
    procedure btn_ConfGalpaoClick(Sender: TObject);
    procedure btn_CancGalpaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CRTemp_Qr_AlojamentoFornecBeforePost(DataSet: TDataSet);
    procedure CRTemp_Qr_AlojamentoFornecAfterPost(DataSet: TDataSet);
    procedure CRTemp_Qr_AlojamentoFornecAfterCancel(DataSet: TDataSet);
    procedure CRTemp_Qr_AlojamentoFornecAfterInsert(DataSet: TDataSet);
    procedure CRTemp_Qr_AlojamentoFornecAfterOpen(DataSet: TDataSet);
    procedure Qr_GalpaoBeforeOpen(DataSet: TDataSet);
    procedure CRTemp_QrAfterScroll(DataSet: TDataSet);
    procedure CRTemp_Qr_LoteGalpaoAfterOpen(DataSet: TDataSet);
    procedure Ds_LoteGalpaoStateChange(Sender: TObject);
    procedure CRTemp_Qr_LoteGalpaoBeforePost(DataSet: TDataSet);
    procedure btn_IncFornecClick(Sender: TObject);
    procedure btn_EditaFornecClick(Sender: TObject);
    procedure btn_ExcluiFornecClick(Sender: TObject);
    procedure btn_ConfirmaFornecClick(Sender: TObject);
    procedure Btn_CancelaFornecClick(Sender: TObject);
    procedure Ds_AlojamentoFornecStateChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btn_IncluirNotaClick(Sender: TObject);
    procedure btn_RetirarNotaClick(Sender: TObject);
    procedure CRTemp_Qr_RetiradaCalcFields(DataSet: TDataSet);
    procedure Ds_RetiradaStateChange(Sender: TObject);
    procedure CRTemp_Qr_RetiradaAfterOpen(DataSet: TDataSet);
    procedure CRTemp_Qr_RetiradaAfterPost(DataSet: TDataSet);
    procedure btn_RelAnaliticoClick(Sender: TObject);
    procedure Qr_FechamentoBeforeOpen(DataSet: TDataSet);
    procedure Qr_FechamentoCalcFields(DataSet: TDataSet);
    procedure btn_incLancClick(Sender: TObject);
    procedure CRTemp_Qr_LanctoAfterInsert(DataSet: TDataSet);
    procedure btn_EdtLancClick(Sender: TObject);
    procedure btn_ExcluiLancClick(Sender: TObject);
    procedure btn_ConfLancClick(Sender: TObject);
    procedure btn_CancLancClick(Sender: TObject);
    procedure CRTemp_Qr_LanctoAfterPost(DataSet: TDataSet);
    procedure CRTemp_Qr_LanctoAfterCancel(DataSet: TDataSet);
    procedure CRTemp_Qr_LanctoBeforePost(DataSet: TDataSet);
    procedure CRTemp_Qr_LanctoAfterOpen(DataSet: TDataSet);
    procedure Ds_LanctoStateChange(Sender: TObject);
    procedure Qr_FechamentoAfterOpen(DataSet: TDataSet);
    procedure Qr_FechamentoAfterScroll(DataSet: TDataSet);
    procedure CRTemp_Qr_RetiradaAfterCancel(DataSet: TDataSet);
    procedure CRTemp_Qr_LoteGalpaoAfterInsert(DataSet: TDataSet);
    procedure DsStateChange(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure CRTemp_QrBeforePost(DataSet: TDataSet);
    procedure Qr_GalpaoBeforePost(DataSet: TDataSet);
    procedure CRTemp_Qr_RetiradaBeforePost(DataSet: TDataSet);
    procedure btn_RelPagamentoClick(Sender: TObject);
    procedure btn_ReciboTurmaClick(Sender: TObject);
    procedure BPesqDtClick(Sender: TObject);
    procedure btnDataAlojClick(Sender: TObject);
    procedure Dbg_NFRetiradasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btn_BoletimClick(Sender: TObject);
    procedure CRTemp_Qr_LoteGalpaoAfterPost(DataSet: TDataSet);
    procedure Qr_VerTurmaBeforeOpen(DataSet: TDataSet);
    procedure btn_DtLoteAlojClick(Sender: TObject);
    procedure Lkp_NucleoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Qr_VerQtdAlojAfterOpen(DataSet: TDataSet);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Bt_AtualizaClick(Sender: TObject);
    procedure btn_LanctoPadraoClick(Sender: TObject);
    procedure Btn_PrevisaoClick(Sender: TObject);
    procedure btn_RacaAvesClick(Sender: TObject);

  private
    { Private declarations }
   SomenteConsulta : Boolean;
   procedure AtualizaBotoes ();
   procedure AtualizaBotoesFornec ();
   procedure Totaliza_Retirada();
   procedure FecharLote(Tipo : String ); // Tipo P : Previsão F : Fechamento 
   procedure AtualizaQuantidadeAlojada;
   procedure GeraLanctoPadrao;

  public
    VFor,NFor,NEND,NCEP,NFONE, Vdtstr,VFINAL,Vdata:STRING;
    SELPE:integer;
    FechandoLote : boolean ;
    PID_FORN,PNR_NOTA, PQTD, PValor :String;
  end;

var
  FrmLoteIntegrado: TFrmLoteIntegrado;

implementation

uses Principal,Global, UFrmSeldata, UFrmPesqFor , UFrmPesqIntegrado,
  StrUtils , UFrmRelLoteAnalitico , Math, UFrmRelLotePagamento,
  UFrmRelReciboTurmeiro, UFrmSelNotaFiscal_E , UFrmRelBoletimSan,
  UFrmBoletimSanit, DateUtils, UFrmRelRacaoeAves;

{$R *.dfm}

procedure TFrmLoteIntegrado.Sb_SairClick(Sender: TObject);
begin
   Qr.Close;
   Close;
end;

procedure TFrmLoteIntegrado.SB_PRIMEIROClick(Sender: TObject);
begin
     if ( PageControl1.ActivePage = TabLista ) or ( PageControl1.ActivePage = TabDetalhe ) then
        Qr.First ;
end;

procedure TFrmLoteIntegrado.SB_ANTERIORClick(Sender: TObject);
begin
     if ( PageControl1.ActivePage = TabLista ) or ( PageControl1.ActivePage = TabDetalhe ) then
        Qr.Prior;
end;

procedure TFrmLoteIntegrado.SB_PROXIMOClick(Sender: TObject);
begin
     if ( PageControl1.ActivePage = TabLista ) or ( PageControl1.ActivePage = TabDetalhe ) then
        Qr.Next;
end;

procedure TFrmLoteIntegrado.SB_ULTIMOClick(Sender: TObject);
begin
     if ( PageControl1.ActivePage = TabLista ) or ( PageControl1.ActivePage = TabDetalhe ) then
        Qr.Last;
end;

procedure TFrmLoteIntegrado.SB_NOVOClick(Sender: TObject);
begin
     if ( PageControl1.ActivePage = TabLista ) or ( PageControl1.ActivePage = TabDetalhe ) then
     begin
          if ( PageControl1.ActivePageIndex <> 2 ) then
              PageControl1.ActivePageIndex := 2 ;

           Qr.Append;
           QrEMPRESA.Value         := gs_Empresa;
           QrFILIAL.Value          := gi_Filial;
           QrID_USUARIO.Value      := gi_IdenUsua;
           QrDATA_INCLOTE.Value    := Now ;
           QrFL_STATUS.Value       := 'AB';
           Lkp_Integrado.Enabled   := True;
           Lkp_Nucleo.Enabled      := True;
           Edt_DtAlojLote.Enabled := True;
           Lkp_Integrado.SetFocus;
           Lkp_Nucleo.Enabled      := True;
           Edt_DtAlojLote.Enabled := True;
           //Atual_ToolBar(5);
           AtualizaBotoes;
     end;
     // Permitir somente selecionando uma Nota
     {if ( PageControl1.ActivePage = Tab_Retirada ) then
     begin
          Qr_Retirada.Append;


     end;}
end;

procedure TFrmLoteIntegrado.SB_CONFIRMAClick(Sender: TObject);
Var Posicao : integer ;
begin
     ActiveControl := Nil;
     Posicao := 0 ;
     if ( PageControl1.ActivePage = TabLista ) or ( PageControl1.ActivePage = TabDetalhe ) or
        ( PageControl1.ActivePage = Tab_Fechamento )  then
     begin
          if ( QrID_INTEGRADO.AsInteger = 0 ) then
          begin
               Screen.Cursor := crDefault;
               MessageDlg('O preenchimento do Integrado é obrigatório.', mtInformation,[mbOk], 0, mbOk);
               Exit;
          end;

          if ( QrDATA_ALOJAMENTO.IsNull ) then
          begin
               Screen.Cursor := crDefault;
               MessageDlg('O preenchimento da data do alojamento é obrigatório.', mtInformation,[mbOk], 0, mbOk);
               Exit;
          end;


          if (Qr.State in [DsInsert]) AND (Qr_IntegradoFL_ATIVO.Value = 'N' ) then
          begin
               MessageDlg('O Integrado selecionado esta inativo, verifique.', mtInformation,[mbOk], 0, mbOk);
               Exit;
          end;

          if (Qr.State in [DsInsert,DsEdit])  then
            QR.Post;
          Qr.CommitUpdates;
          Qr.ApplyUpdates;
          Qr.Refresh;
          DBGrid1.Refresh;
          //Atual_ToolBar(9);
          AtualizaBotoes;
          AtualizaBotoesFornec;
          Lkp_Integrado.Enabled   := False;
          Edt_DtAlojLote.Enabled  := False;
          Lkp_Nucleo.Enabled      := False;
     end;

     if ( PageControl1.ActivePage = Tab_Fechamento )  then
     begin
          Qr_Fechamento.Refresh;

          if  (QrFL_STATUS.Value = 'PR' ) then
          begin
              edt_VLAveFinal.Enabled  := true ;
              edt_VLAveFinal.ReadOnly := false;
              edt_VLAveFinal.Color    := clWhite;

          end
          else
          begin
              edt_VLAveFinal.Enabled  := false ;
              edt_VLAveFinal.ReadOnly := true;
              edt_VLAveFinal.Color    := clSilver;
          end;
     end;

     if ( PageControl1.ActivePage = Tab_Retirada ) then
     begin
          Posicao := Qr_RetiradaID_NOTAFISC.AsInteger;
          if (Qr_Retirada.State in [DsInsert,DsEdit])  then
            Qr_Retirada.Post;

          Qr_Retirada.CommitUpdates;
          Qr_Retirada.ApplyUpdates;
          Qr_Retirada.Refresh;
          dbg_Retirada.Refresh;
          //Atual_ToolBar(9);
          AtualizaBotoes;
          Qr_Retirada.Locate('ID_NOTAFISC',Posicao,[]);
     end;
end;

procedure TFrmLoteIntegrado.SB_CANCELClick(Sender: TObject);
begin
     if ( PageControl1.ActivePage = TabLista ) or ( PageControl1.ActivePage = TabDetalhe ) or
        ( PageControl1.ActivePage = Tab_Fechamento ) then
     begin
          Qr.CancelUpdates;
          //Atual_ToolBar(10);
          AtualizaBotoes;
          Lkp_Integrado.Enabled   := False;
          Edt_DtAlojLote.Enabled  := False;
          Lkp_Nucleo.Enabled      := False;
     end;

     if ( PageControl1.ActivePage = Tab_Retirada ) then
     begin
          Qr_Retirada.CancelUpdates;
          //Atual_ToolBar(10);
          AtualizaBotoes;
     end;

end;

procedure TFrmLoteIntegrado.SB_EXCLUIClick(Sender: TObject);
begin
     if ( PageControl1.ActivePage = TabLista ) or ( PageControl1.ActivePage = TabDetalhe ) then
     begin
          If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
          Begin
               Qr.Delete;
               Qr.ApplyUpdates;
               Qr.CommitUpdates;
               DBGrid1.Refresh;
          end;
     end;
     if ( PageControl1.ActivePage = Tab_Retirada ) then
     begin
          If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
          Begin
               Qr_Retirada.Delete;
               Qr_Retirada.ApplyUpdates;
               Qr_Retirada.CommitUpdates;
               dbg_Retirada.Refresh;
          end;
          //Atual_ToolBar(0);
          AtualizaBotoes;
     end;

end;

procedure TFrmLoteIntegrado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmLoteIntegrado:=nil;
  FrmPrincipal.VEN043.Enabled:= True;
  Action:=caFree;
end;


procedure TFrmLoteIntegrado.Button1Click(Sender: TObject);
var
  Bitmap : TBitMap;
begin
//  Bitmap := TBitmap.Create;
//  try
//    with Bitmap do begin
//      LoadFromFile('tablogo[1].png');
//      Transparent := True;
//      TransParentColor := BitMap.Canvas.Brush.Color;
//      DBGRID1.Canvas.Draw(70,0,BitMap);
//      TransparentMode := tmAuto;
//    end;
//  finally
//    Bitmap.Free;
//  end;
end;



procedure TFrmLoteIntegrado.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if Qr.FieldByName('FL_STATUS').AsString = 'FE' then
        DBGrid1.Canvas.Font.Color := clgreen;
     if Qr.FieldByName('FL_STATUS').AsString = 'PR' then
        DBGrid1.Canvas.Font.Color := $001DA9A2;
     if Qr.FieldByName('FL_STATUS').AsString = 'CN' then
        DBGrid1.Canvas.Font.Color := clred;

     DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
//if Qr.FieldByName('RTIPO').AsString = 'B' then
//  DBGrid1.Canvas.Brush.Color := clgreen;
//if Qr.FieldByName('RTIPO').AsString = 'C' then
//  DBGrid1.Canvas.Brush.Color := clRED;
end;


procedure TFrmLoteIntegrado.SB_EDITClick(Sender: TObject);
begin
     if ( PageControl1.ActivePage = TabLista ) or ( PageControl1.ActivePage = TabDetalhe ) or
        ( PageControl1.ActivePage = Tab_Fechamento ) then
     begin
          Qr.Edit;
          //Atual_ToolBar(7);
          AtualizaBotoes;
          if ( PageControl1.ActivePage = TabLista ) or ( PageControl1.ActivePage = TabDetalhe ) then
          begin
               Lkp_Integrado.Enabled   := True;
               Edt_DtAlojLote.Enabled  := True;
               Lkp_Nucleo.Enabled      := True;
          end;
     end;

     if ( PageControl1.ActivePage = Tab_Retirada ) then
     begin
          Qr_Retirada.edit;
          //Atual_ToolBar(7);
           AtualizaBotoes;
          dbg_Retirada.SetFocus;
     end;

end;

procedure TFrmLoteIntegrado.RadioGroup1Click(Sender: TObject);
VAR
  Vsitu:integer;
begin
//  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//  Vsitu:=0;
//  QryCtPr.Close;
//  QryCtPr.SQL.Clear;
//  QryCtPr.SQL.Add('Select * from CA_TITUREC ');
//  case RadioGroup1.ItemIndex  of
//    0:Vsitu:=0;

//    1:
//     begin
//      QryCtPr.SQL.Add ('Where RTIPO='''+ 'Q' + '''');
//      Vsitu:=1;
//     end;
//    2:
//     begin
//      QryCtPr.SQL.Add ('Where RTIPO<>''' + 'Q' + '''');
//      Vsitu:=2;
//     end;
//  end;

//  QryCtPr.Open;
//  QryCtPr.ApplyUpdates;
//  Screen.Cursor := crDefault;

end;

procedure TFrmLoteIntegrado.QrCBRBeforePost(DataSet: TDataSet);
begin
//  ShowMessage(DBEdit3.Field.CurValue);

//  QrCBRRSEQUENCI.Value:= strtoint(DBEdit3.Field.CurValue);

end;

procedure TFrmLoteIntegrado.LCamposClick(Sender: TObject);
begin
     SELPE:=0;
      Case LCAMPOS.ItemIndex of
         1:SELPE:=1;
         2:SELPE:=2;
         4:SELPE:=4;

      End;

      If SELPE>0 then
         BPESQ.Visible := TRUE
      else
          BPESQ.Visible :=FALSE;
end;

procedure TFrmLoteIntegrado.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmLoteIntegrado.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmLoteIntegrado.BtIncluirClick(Sender: TObject);
var
  Vre,Vlinha:String;
  Vcampos:integer;
begin
  If EdExpre.Text<>'' then
   Begin
     IF MResul.Lines.Count>0 then
       begin
         If RGeou.ItemIndex=0  then
          begin
            Vre:='And ';
          end
         Else
          begin
            Vlinha:= MResul.Lines.Strings[MResul.Lines.Count-1];
            MResul.Lines.Strings[MResul.Lines.Count-1]:= Copy(Vlinha,1,length(Vlinha)-1);
            Vre:='Or ';
          end;
       end;
     If  LCampos.itemindex=-1 then
         Vcampos:=0
     else
         Vcampos:=LCampos.itemindex;

     If RGeou.ItemIndex=0  then
        Vre:= Vre + '(' ;

   //Alterar nomes
    Case LCampos.itemindex of
        0:Vre:=Vre + '   A.ID_LOTE   ';
        1:Vre:=Vre + '   TRUNC( DATA_ALOJAMENTO )  ';
        2:Vre:=Vre + '   A.ID_INTEGRADO     ';
        3:Vre:=Vre + '   A.FL_STATUS     ';
        4:Vre:=Vre + '   TRUNC( A.DT_FECHAMENTO ) ';
        5:Vre:=Vre + '   AF.NR_NOTA  ';

    end;

    Case CBCond.ItemIndex of
       0: Vre:=Vre + ' =  ';
       1: Vre:=Vre + ' <> ';
       2: Vre:=Vre + ' >  ';
       3: Vre:=Vre + ' >= ';
       4: Vre:=Vre + ' <  ';
       5: Vre:=Vre + ' <= ';
    end;

    Case LCampos.itemindex of
         1,4 : Vre:=Vre + 'TO_DATE(''';
//            3:Vre:=Vre + '''';
         3 : Vre:=Vre + '''';
    end;

    Vre:=Vre + Edexpre.text;

    Case LCampos.itemindex of
         1,4 : Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
//            3:Vre:= Vre + '''';
         3 :Vre:= Vre + '''';

    end;

    Vre:=Vre+')';

    MResul.Lines.Add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;

end;

procedure TFrmLoteIntegrado.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin
   Screen.Cursor := crSQLWait;
    Caption := 'Lote Integrado';
   Qr.Close;
   WITH Qr.SQL DO
    BEGIN
      Clear;
      Add(' Select Distinct A.EMPRESA , A.FILIAL, A.ID_LOTE, A.DATA_ALOJAMENTO, A.ID_USUARIO,  ');
      Add('        A.ID_INTEGRADO ,F.ID_FORNECEDOR, F.NM_FORNECEDOR , U.NOME_USUARIO, ');
      Add('        A.FL_STATUS, A.DT_FECHAMENTO, F.NR_CNPJFORN , A.SOBRA_RACAO ,  A.MORTALIDADE, ');
      Add('        A.PER_MORTALIDADE, A.CONV_ALIMENTAR, A.GANHO_PESO_DIA,  A.PESO_MEDIO, ');
      Add('        A.IEP, A.PRECO_AVE, A.DATA_PAGTO, A.VL_PAGTO , A.AVES_ALOJ , A.AVES_ABAT, A.TOT_KG, ');
      Add('        A.IDADE,  A.TOTAL_RACAO, A.PRECO_AVE_FINAL, A.VL_PAGTO_FINAL, A.MORT_PRIM_SEMANA, ');
      Add('  CASE WHEN A.FL_STATUS = ''AB'' then ''ABERTO'' WHEN A.FL_STATUS =  ''PR'' then ''PREVISÃO'' ');
      Add('       WHEN A.FL_STATUS = ''FE'' then ''FECHADO'' WHEN A.FL_STATUS = ''CN'' then ''CANCELADO''  END STATUS ,' );
      Add('   A.ID_NUCLEO, A.DATA_INCLOTE, A.QTD_ALOJ, ');
      Add('    CASE WHEN A.FL_STATUS in ( ''AB'') then  TRUNC ( TRUNC(sysdate) - TRUNC (A.DATA_ALOJAMENTO)) ' );
      Add('      ELSE A.IDADE END IDADEK,  NG.DESC_NUCLEO' );
      Add(' From INTEGRADO_ALOJAMENTO A        ');
      Add(' Left Join INTEGRADO I              ');
      Add(' On A.ID_INTEGRADO = I.ID_INTEGRADO ');
      Add(' Left Join FORNECEDOR F             ');
      Add(' On I.ID_FORNECEDOR = F.ID_FORNECEDOR ');
      Add(' Left Join Sct_Usuario U           ');
      Add(' On A.ID_USUARIO = U.ID_USUARIO    ');
      Add(' Left join NUCLEO_GALPAO NG        ');
      Add(' On A.ID_NUCLEO = NG.ID_NUCLEO     ');
      Add(' Left join Integrado_Alojamento_Fornec AF ');
      Add('   On A.ID_LOTE = AF.ID_LOTE              ');

      Add(' WHERE A.EMPRESA=''' + gs_Empresa + ''' AND ');
      Add(' A.FILIAL= ' + inttostr(GI_FILIAL));
    end;
      XTM:=MResul.Lines.Count;
      If XTM >0 then
        begin
         Qr.SQL.Add(' And ');
         Qr.SQL.Add(MResul.Text);
        end
       ELSE
        begin
         Screen.Cursor := crDefault;
         If MessageDlg('Exibir listagem sem filtro?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
            exit
         Else
            Screen.Cursor := crSQLWait;
        end;
      Qr.DisableControls;
      Qr.Open;
      Qr.EnableControls;
     // Qr.Refresh;
      Qr_Integrado.Close;
      Qr_Integrado.Open;

      Qr_Nucleo.Close;
      Qr_Nucleo.Open;


   PageControl1.Pages[1].Show;
   Screen.Cursor := crDefault;
   PageControl1.Pages[1].TabVisible := True;
   PageControl1.Pages[2].TabVisible := True;
   PageControl1.Pages[3].TabVisible := True;
   PageControl1.Pages[4].TabVisible := True;
   PageControl1.Pages[5].TabVisible := True;
   //Atual_ToolBar(9);
   AtualizaBotoes;
end;

procedure TFrmLoteIntegrado.FormDestroy(Sender: TObject);
begin
  //FrmModeloFiltro:=Nil;
end;

Function  TFrmLoteIntegrado.Bot_Flat(Botao:Integer):string;
begin
 SB_PROXIMO.Flat  := True;
 SB_ANTERIOR.Flat := True;
 SB_ULTIMO.Flat   := True;
 SB_PRIMEIRO.Flat := True;
 SB_NOVO.Flat     := True;
 SB_EXCLUI.Flat   := True;
 SB_EDIT.Flat     := True;
 SB_ATUAL.Flat    := True;
 SB_CONFIRMA.Flat := True;
 SB_CANCEL.Flat   := True;
// SB_PRINT.Flat    := True;
 Sb_Sair.Flat     := True;
 If Botao=1  then SB_PRIMEIRO.Flat := False;
 If Botao=2  then SB_ANTERIOR.Flat := False;
 If Botao=3  then SB_PROXIMO.Flat  := False;
 If Botao=4  then SB_ULTIMO.Flat   := False;
 If Botao=5  then SB_NOVO.Flat     := False;
 If Botao=6  then SB_EXCLUI.Flat   := False;
 If Botao=7  then SB_EDIT.Flat     := False;
 If Botao=8  then SB_ATUAL.Flat    := False;
 If Botao=9  then SB_CONFIRMA.Flat := False;
 If Botao=10 then SB_CANCEL.Flat   := False;
 If Botao=11 then Sb_Sair.Flat     := False;
// If Botao=12 then SB_PRINT.Flat    := False;
end;

Function TFrmLoteIntegrado.Atual_ToolBar(BtOrdem: Integer): string;
var Edicao : Boolean;
begin
     if ( PageControl1.ActivePage = TabLista ) or ( PageControl1.ActivePage = TabDetalhe ) or
        ( PageControl1.ActivePage = Tab_Fechamento ) then
     begin
         CASE BtOrdem of
           5,7:begin
            SB_NOVO.Enabled := False;
            SB_EDIT.Enabled := False;
            SB_ATUAL.Enabled := False;
            SB_EXCLUI.Enabled := False;
            SB_CONFIRMA.Enabled := TRUE;
            SB_CANCEL.Enabled := TRUE;
            SB_PRIMEIRO.Enabled := False;
            SB_ANTERIOR.Enabled := False;
            SB_PROXIMO.Enabled := False;
            SB_ULTIMO.Enabled := False;
         //   SB_PRINT.Enabled := False;
           end;
           9..11:begin
            SB_NOVO.Enabled := True;
            SB_EDIT.Enabled := True;
            SB_ATUAL.Enabled := True;
            SB_EXCLUI.Enabled := True;
            SB_CONFIRMA.Enabled := FALSE;
            SB_CANCEL.Enabled := FALSE;
            SB_PRIMEIRO.Enabled := True;
            SB_ANTERIOR.Enabled := True;
            SB_PROXIMO.Enabled := True;
            SB_ULTIMO.Enabled := True;
        //    SB_PRINT.Enabled := True;
           end;
         end;
     end;

     if ( PageControl1.ActivePage = Tab_Retirada )  then
     begin
          Edicao := ( Ds_Retirada.State in [dsEdit , dsInsert] );

          SB_NOVO.Enabled := false; //( not Edicao ) And ( Qr.RecordCount > 0 ) ;
          SB_EDIT.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 ) AND (Qr_Retirada.RecordCount > 0 )   AND  ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') ) ;
          SB_EXCLUI.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 ) AND (Qr_Retirada.RecordCount > 0 ) AND  ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') ) ;
          SB_CONFIRMA.Enabled := Edicao ;
          SB_CANCEL.Enabled  := Edicao ;
     end;

end;

procedure TFrmLoteIntegrado.SB_ATUALClick(Sender: TObject);
begin
     if ( PageControl1.ActivePage = TabLista ) or ( PageControl1.ActivePage = TabDetalhe ) then
     begin
          Qr.Refresh;
     end;

     if ( PageControl1.ActivePage = Tab_Remessa ) then
     begin
          Qr_Remessa.Refresh;
     end;

     if ( PageControl1.ActivePage = Tab_Retirada ) then
     begin
          Qr_Retirada.Refresh;
          Qr_NFRetirada.Refresh;
     end;

     if ( PageControl1.ActivePage = Tab_Fechamento ) then
     begin
          Qr_Fechamento.Refresh;
     end;


end;

procedure TFrmLoteIntegrado.SB_PRIMEIROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 Bot_Flat(1);
end;

procedure TFrmLoteIntegrado.SB_ANTERIORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(2);
end;

procedure TFrmLoteIntegrado.SB_PROXIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(3);
end;

procedure TFrmLoteIntegrado.SB_ULTIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(4);
end;

procedure TFrmLoteIntegrado.SB_NOVOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(5);
end;

procedure TFrmLoteIntegrado.SB_EXCLUIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(6);
end;

procedure TFrmLoteIntegrado.SB_EDITMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(7);
end;

procedure TFrmLoteIntegrado.SB_ATUALMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(8);
end;

procedure TFrmLoteIntegrado.SB_CONFIRMAMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(9);
end;

procedure TFrmLoteIntegrado.SB_CANCELMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(10);
end;

procedure TFrmLoteIntegrado.Sb_SairMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(11);
end;

procedure TFrmLoteIntegrado.ToolButton3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmLoteIntegrado.ToolBar1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmLoteIntegrado.ToolButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmLoteIntegrado.ToolButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmLoteIntegrado.PageControl1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmLoteIntegrado.BPESQClick(Sender: TObject);
begin
     CASE SELPE OF
       1,4:BEGIN
          Cria_FrmSelData(Vdtstr);
            EdExpre.text:= Vdtstr;
          if BtIncluir.Enabled then
            BtIncluir.SetFocus;
         END;
       2:BEGIN
              FrmOriPesq := 1;
              FrmPesqIntegrado:=TFrmPesqIntegrado.Create(Self);
              FrmPesqIntegrado.Show;

         END;

     end
end;

procedure TFrmLoteIntegrado.btn_PesqNFClick(Sender: TObject);
begin
     Cria_FrmPesqNota( PID_FORN, PNR_NOTA ,PQTD, PValor );
     {Cria_FrmPesqFor(VFor,NFor,NEND,NCEP,NFONE ); }

     if ( Qr_AlojamentoFornec.State in [dsinsert,dsedit] ) then
     begin
          if ( (PID_FORN <> '') AND  (PNR_NOTA <> '')  ) then
          begin
               Qr_AlojamentoFornecID_FORNECEDOR.Value   := StrToFloat( PID_FORN );
               Qr_AlojamentoFornecNR_NOTA.Value         := StrToFloat( PNR_NOTA );
               Qr_AlojamentoFornecQUANTIDADE.Value      := StrToFloat(PQTD);
               Qr_AlojamentoFornecVALOR_PINTAINHO.Value := StrToFloat(PValor);
               Qr_AlojamentoFornecSEQ_NOTA.Value        := 1 ;
          end;

     end;
     {if ( edt_Nota.enabled ) then
        edt_Nota.setfocus ; } 
end;

procedure TFrmLoteIntegrado.CRTemp_QrAfterOpen(DataSet: TDataSet);
begin
     Qr_AlojamentoFornec.Close;
     Qr_AlojamentoFornec.Open;

     Qr_LoteGalpao.Close;
     Qr_LoteGalpao.Open;

     Qr_Galpao.Close;
     Qr_Galpao.Open;

     Qr_Fechamento.Close;
     Qr_Fechamento.Open;

     Qr_Lancto.Close;
     Qr_Lancto.Open;

     Qr_VerQtdAloj.Close;
     Qr_VerQtdAloj.ParamByName('Id_Lote').Value := QrID_LOTE.Value;
     Qr_VerQtdAloj.Open;


end;

procedure TFrmLoteIntegrado.btn_IncGalpaoClick(Sender: TObject);
begin
     Qr_LoteGalpao.Append;
     if (Lkp_Galpao.Enabled) then
        Lkp_Galpao.SetFocus;
end;

procedure TFrmLoteIntegrado.btn_ExcGalpaoClick(Sender: TObject);
begin
   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    Begin
     Qr_LoteGalpao.Delete;
     Qr_LoteGalpao.ApplyUpdates;
     Qr_LoteGalpao.CommitUpdates;
     dbg_Galpao.Refresh;
     AtualizaBotoes ();
    End;
end;

procedure TFrmLoteIntegrado.btn_EditaGalpaoClick(Sender: TObject);
begin
     Qr_LoteGalpao.Edit;
end;

procedure TFrmLoteIntegrado.btn_ConfGalpaoClick(Sender: TObject);
var erro : String;
begin

     if (Qr_LoteGalpao.State in [DsInsert,DsEdit])  then
        Qr_LoteGalpao.Post;

     try
         Qr_LoteGalpao.CommitUpdates;
         Qr_LoteGalpao.ApplyUpdates;
     except
       on E: Exception do
       begin
          erro := E.Message;

          If ( PosEx( 'unique constraint' , erro  )>  0 ) and ( PosEx('violated', erro )>  0 ) then
              MessageDlg('Galpão já foi incluido no Lote. Galpão :' + Lkp_Galpao.Text , mtInformation,[mbOk], 0, mbOk)
          else
              MessageDlg('Erro ao gravar o galpão. '+ E.Message , mtInformation,[mbOk], 0, mbOk);
        end;
     end;
     AtualizaQuantidadeAlojada;

     Qr_LoteGalpao.Refresh;
     dbg_Galpao.Refresh;

end;

procedure TFrmLoteIntegrado.btn_CancGalpaoClick(Sender: TObject);
begin
     Qr_LoteGalpao.CancelUpdates;
end;

procedure TFrmLoteIntegrado.AtualizaBotoes ();
var Edicao, EdicaoLote : Boolean;
begin
     btn_RelAnalitico.Enabled := Qr.RecordCount > 0 ;
     btn_RacaAves.Enabled := Qr.RecordCount > 0 ;
     btn_Boletim.Enabled := Qr.RecordCount > 0 ;

     if ( PageControl1.ActivePage = TabDetalhe ) then
     begin
          if ( SomenteConsulta ) then
          begin
               btn_IncGalpao.Enabled   := false;
               btn_EditaGalpao.Enabled := false;
               btn_ExcGalpao.Enabled   := false;

               btn_ConfGalpao.Enabled := false ;
               btn_CancGalpao.Enabled  := false ;

               Lkp_Galpao.Enabled := false;
               cbx_Sexo.Enabled   := false;
               edt_QtdGalpao.Enabled := false;
          end
          else
          begin
                Edicao := ( Ds_LoteGalpao.State in [dsEdit , dsInsert] );
                EdicaoLote := ( Ds.State in [dsEdit , dsInsert] );

                btn_IncGalpao.Enabled := ( not EdicaoLote ) And( not Edicao ) And ( Qr.RecordCount > 0 )  AND ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') ) ;
                btn_EditaGalpao.Enabled  := ( not EdicaoLote ) And( not Edicao ) And ( Qr.RecordCount > 0 ) AND (Qr_LoteGalpao.RecordCount > 0 ) AND ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') ) ;
                btn_ExcGalpao.Enabled  := ( not EdicaoLote ) And( not Edicao ) And ( Qr.RecordCount > 0 ) AND (Qr_LoteGalpao.RecordCount > 0 )   AND ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') ) ;

                btn_ConfGalpao.Enabled := Edicao ;
                btn_CancGalpao.Enabled  := Edicao ;

                Lkp_Galpao.Enabled := Edicao;
                cbx_Sexo.Enabled   := Edicao;
                edt_QtdGalpao.Enabled := Edicao;
          end;

     end;

     if ( PageControl1.ActivePage = TabDetalhe ) OR ( PageControl1.ActivePage = TabLista )then
     begin
          if ( SomenteConsulta ) then
          begin
              SB_NOVO.Enabled := false;
              SB_EDIT.Enabled  :=  false;
              SB_EXCLUI.Enabled  := false ;

              SB_CONFIRMA.Enabled := false ;
              SB_CANCEL.Enabled  := false ;
              btn_DtLoteAloj.Enabled := false ;
          end
          else
          begin
              Edicao := ( Ds.State in [dsEdit , dsInsert] );
              SB_NOVO.Enabled := ( not Edicao ) ;
              SB_EDIT.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 ) AND ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') ) ;
              SB_EXCLUI.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 ) AND ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') ) ;

              SB_CONFIRMA.Enabled := Edicao ;
              SB_CANCEL.Enabled  := Edicao ;
              btn_DtLoteAloj.Enabled := Edicao ;
              SB_PRIMEIRO.Enabled := ( not Edicao ) And ( Qr.RecordCount > 0 );
              SB_PROXIMO.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 );
              SB_ANTERIOR.Enabled := ( not Edicao ) And ( Qr.RecordCount > 0 );
              SB_ULTIMO.Enabled   := ( not Edicao ) And ( Qr.RecordCount > 0 );

          end;
     end;

     if ( PageControl1.ActivePage = Tab_Fechamento ) then
     begin
          if ( SomenteConsulta ) then
          begin
              btn_incLanc.Enabled := false ;
              btn_EdtLanc.Enabled  := false ;
              btn_ExcluiLanc.Enabled  := false ;

              btn_ConfLanc.Enabled := false ;
              btn_CancLanc.Enabled := false ;

              Btn_Fechar.Enabled       := false ;
              Btn_Previsao.Enabled     := false ;
              btn_LanctoPadrao.Enabled := false ;

              SB_NOVO.Enabled   := false ;
              SB_EDIT.Enabled   := false ;
              SB_EXCLUI.Enabled := false ;

          end
          else
          begin
              Edicao := ( Ds_Lancto.State in [dsEdit , dsInsert] );

              btn_incLanc.Enabled := ( not Edicao ) And ( Qr.RecordCount > 0 ) AND ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') ) ;
              btn_EdtLanc.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 ) AND (Qr_Lancto.RecordCount > 0 )    AND ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') );
              btn_ExcluiLanc.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 ) AND (Qr_Lancto.RecordCount > 0 ) AND ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') );

              btn_ConfLanc.Enabled := Edicao ;
              btn_CancLanc.Enabled  := Edicao ;

              Btn_Fechar.Enabled       := ( QrFL_STATUS.Value = 'PR' );
              Btn_Previsao.Enabled     := ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') ) ;
              btn_LanctoPadrao.Enabled := ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') ) ;

              Edicao := ( Ds.State in [dsEdit , dsInsert] );

              SB_NOVO.Enabled := ( not Edicao ) ;
              SB_EDIT.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 )   AND ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') ) ;
              SB_EXCLUI.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 ) AND ( (QrFL_STATUS.Value = 'AB') OR (QrFL_STATUS.Value = 'PR') ) ;

              SB_CONFIRMA.Enabled := Edicao ;
              SB_CANCEL.Enabled  := Edicao ;

          end;

          btn_RelPagamento.Enabled := Qr.RecordCount > 0 ;

     end;

end;

procedure TFrmLoteIntegrado.FormShow(Sender: TObject);
begin
     Qr_Direitos.Close;
     Qr_Direitos.ParamByName('ID_Usuario').Value := IntToStr( gi_IdenUsua );
     Qr_Direitos.Open;

     if( Qr_DireitosID_RECURSO.Value = 4 ) then
       SomenteConsulta := true
     else
       SomenteConsulta := false;

     IF LCAMPOS.Items.Count=0 then
     BEGIN
          With LCampos.Items do
          begin
               Add('Lote      ');
               Add('Data Lote ');
               Add('Integrado ');
               Add('Status (AB,PR,FE)');
               Add('Data Fechamento ');
               Add('Nota Fornec. Pintainho ');
          end;
     END;

     PageControl1.Pages[1].TabVisible:=false;
     PageControl1.Pages[2].TabVisible:=false;
     PageControl1.Pages[3].TabVisible:=false;
     PageControl1.Pages[4].TabVisible:=false;
     PageControl1.Pages[5].TabVisible:=false;

     PageControl1.ActivePage :=  TabCriterio ;

     FechandoLote := false;

     VT_TIPOLANC.Open;
     VT_TIPOLANC.Append;
     VT_TIPOLANCTIPO_LANC.Value := 'D';
     VT_TIPOLANCDES_LANC.Value := 'Desconto';
     VT_TIPOLANC.POST;

     VT_TIPOLANC.Append;
     VT_TIPOLANCTIPO_LANC.Value := 'A';
     VT_TIPOLANCDES_LANC.Value := 'Acréscimo';
     VT_TIPOLANC.POST;


end;

procedure TFrmLoteIntegrado.CRTemp_Qr_AlojamentoFornecBeforePost(DataSet: TDataSet);
begin
     ActiveControl := Nil;

     if ( QrFL_STATUS.Value = 'FE' ) then
     begin
          MessageDlg('Lote não pode ser alterado .', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;

     if ( Qr_AlojamentoFornecID_FORNECEDOR.AsInteger = 0 ) then
     begin
          Screen.Cursor := crDefault;
          MessageDlg('O preenchimento da Nota Fiscal é obrigatória.', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;

     if ( Qr_AlojamentoFornecNR_NOTA.AsInteger = 0   ) then
     begin
          Screen.Cursor := crDefault;
          MessageDlg('O preenchimento da Nota Fiscal é obrigatório.', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;

     if ( Qr_AlojamentoFornecID_LINHAGEM.AsInteger = 0   ) then
     begin
          Screen.Cursor := crDefault;
          MessageDlg('O preenchimento da Linhagem é obrigatório.', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;

     if ( Qr_AlojamentoFornecVALOR_PINTAINHO.Value = 0   ) or (Qr_AlojamentoFornecVALOR_PINTAINHO.IsNull   ) then
     begin
          Screen.Cursor := crDefault;
          MessageDlg('O preenchimento do Valor do Pintainho é obrigatório.', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;

end;

procedure TFrmLoteIntegrado.CRTemp_Qr_AlojamentoFornecAfterPost(DataSet: TDataSet);
Var erro : string ;
begin
     try
        Qr_AlojamentoFornec.CommitUpdates;
        Qr_AlojamentoFornec.ApplyUpdates;
     except
       on E: Exception do
       begin
          erro := E.Message;

          If ( PosEx('unique constraint' , erro   )>  0 ) and ( PosEx('violated' , erro  )>  0 ) then
              MessageDlg('Nota já foi incluída no lote . Se pretende repetir a nota altere o  campo "Seq. NF" . NF: ' + Qr_AlojamentoFornecNR_NOTA.AsString , mtInformation,[mbOk], 0, mbOk)
          else
              MessageDlg('Problema ao salvar Nota do Fornecedor.'+ E.Message , mtInformation,[mbOk], 0, mbOk);
        end;
     end;
     AtualizaQuantidadeAlojada;

     Qr_Fechamento.refresh;
     Qr_AlojamentoFornec.Refresh;
     dbg_Fornecedor.Refresh;
end;

procedure TFrmLoteIntegrado.CRTemp_Qr_AlojamentoFornecAfterCancel(DataSet: TDataSet);
begin
     Qr_AlojamentoFornec.CancelUpdates;
end;

procedure TFrmLoteIntegrado.CRTemp_Qr_AlojamentoFornecAfterInsert(DataSet: TDataSet);
begin
     Qr_AlojamentoFornecEMPRESA.Value := 'CA';
     Qr_AlojamentoFornecFILIAL.Value  := gi_Filial;
     Qr_AlojamentoFornecID_LOTE.Value := QrID_LOTE.Value;
     Qr_AlojamentoFornecSEQ_NOTA.Value := 1 ;

end;

procedure TFrmLoteIntegrado.CRTemp_Qr_AlojamentoFornecAfterOpen(DataSet: TDataSet);
begin
     Qr_Linhagem.Close;
     Qr_Linhagem.Open;
     AtualizaBotoesFornec;
end;

procedure TFrmLoteIntegrado.Qr_GalpaoBeforeOpen(DataSet: TDataSet);
begin
     Qr_Galpao.ParamByName('ID_INTEGRADO').Value := QrID_INTEGRADO.Value;
     if (QrID_NUCLEO.Value > 0 ) then
         Qr_Galpao.MacroByName('Macro').Value := ' AND IG.ID_NUCLEO = '+ QrID_NUCLEO.AsString
     else
         Qr_Galpao.MacroByName('Macro').Value := '' ;

end;

procedure TFrmLoteIntegrado.CRTemp_QrAfterScroll(DataSet: TDataSet);
begin
     if ( PageControl1.ActivePage =  TabDetalhe )  then
     begin
          Qr_Galpao.Close;
          Qr_Galpao.Open;
          Qr_Fechamento.Close;
          Qr_Fechamento.Open;
          AtualizaBotoes;
          AtualizaBotoesFornec;
          Qr_VerQtdAloj.Close;
          Qr_VerQtdAloj.ParamByName('Id_Lote').Value := QrID_LOTE.Value;
          Qr_VerQtdAloj.Open;
     end;


     Caption := 'Lote : ' + QrID_LOTE.AsString + ' Integrado : ' + QrNM_FORNECEDOR.AsString + ' '+QrDESC_NUCLEO.AsString  ;

end;

procedure TFrmLoteIntegrado.CRTemp_Qr_LoteGalpaoAfterOpen(DataSet: TDataSet);
begin
     AtualizaBotoes;
end;

procedure TFrmLoteIntegrado.Ds_LoteGalpaoStateChange(Sender: TObject);
begin
     AtualizaBotoes;
end;

procedure TFrmLoteIntegrado.CRTemp_Qr_LoteGalpaoBeforePost(DataSet: TDataSet);
begin
    if ( QrID_INTEGRADO.Value <> Qr_GalpaoID_INTEGRADO.Value ) then
     begin
          Screen.Cursor := crDefault;
          MessageDlg('Galpão selecionado não pertence ao integrado.', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;

     if ( Qr_LoteGalpaoID_GALPAO.AsInteger = 0 ) then
     begin
          Screen.Cursor := crDefault;
          MessageDlg('O preenchimento do Galpão é obrigatório.', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;

     if ( Qr_LoteGalpaoTIPO.AsString = ''  ) then
     begin
          Screen.Cursor := crDefault;
          MessageDlg('O preenchimento do tipo é obrigatório.', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;

     if ( Qr_LoteGalpaoQTDE.Value = 0 ) then
     begin
          Screen.Cursor := crDefault;
          MessageDlg('O preenchimento da quantidade é obrigatória.', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;

end;

procedure TFrmLoteIntegrado.btn_IncFornecClick(Sender: TObject);
begin
     Qr_AlojamentoFornec.Append;
end;

procedure TFrmLoteIntegrado.btn_EditaFornecClick(Sender: TObject);
begin
     Qr_AlojamentoFornec.Edit;
end;

procedure TFrmLoteIntegrado.btn_ExcluiFornecClick(Sender: TObject);
begin
   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    Begin
         Qr_AlojamentoFornec.Delete;
         Qr_AlojamentoFornec.ApplyUpdates;
         Qr_AlojamentoFornec.CommitUpdates;
         dbg_Fornecedor.Refresh;
         AtualizaBotoesFornec;
    End;
end;

procedure TFrmLoteIntegrado.btn_ConfirmaFornecClick(Sender: TObject);
begin
     Qr_AlojamentoFornec.Post;
end;

procedure TFrmLoteIntegrado.Btn_CancelaFornecClick(Sender: TObject);
begin
     Qr_AlojamentoFornec.Cancel;
end;

procedure TFrmLoteIntegrado.AtualizaBotoesFornec ();
var Edicao : Boolean;
begin

     if ( SomenteConsulta ) then
     begin
         btn_IncFornec.Enabled     := false ;
         btn_EditaFornec.Enabled   := false ;
         btn_ExcluiFornec.Enabled  := false ;
         btn_PesqNF.Enabled        := false ;

         btn_ConfirmaFornec.Enabled := false;
         Btn_CancelaFornec.Enabled  := false;
     end
     else
     begin
         Edicao := ( Ds_AlojamentoFornec.State in [dsEdit , dsInsert] );

         btn_IncFornec.Enabled     := ( not Edicao ) And ( Qr.RecordCount > 0 ) AND ( ( QrFL_STATUS.Value = 'AB' ) OR ( QrFL_STATUS.Value = 'PR' ) ) ;
         btn_EditaFornec.Enabled   := ( not Edicao ) And ( Qr.RecordCount > 0 ) AND (Qr_AlojamentoFornec.RecordCount > 0 ) AND ( ( QrFL_STATUS.Value = 'AB' ) OR ( QrFL_STATUS.Value = 'PR' ) );
         btn_ExcluiFornec.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 ) AND (Qr_AlojamentoFornec.RecordCount > 0 ) AND ( ( QrFL_STATUS.Value = 'AB' ) OR ( QrFL_STATUS.Value = 'PR' ) );
         btn_PesqNF.Enabled        := ( Ds_AlojamentoFornec.State in [dsInsert] );

         btn_ConfirmaFornec.Enabled := Edicao ;
         Btn_CancelaFornec.Enabled  := Edicao ;
     end;
end;

procedure TFrmLoteIntegrado.Ds_AlojamentoFornecStateChange(Sender: TObject);
begin
     AtualizaBotoesFornec;
end;

procedure TFrmLoteIntegrado.PageControl1Change(Sender: TObject);
begin
     if ( PageControl1.ActivePage =  TabDetalhe )  then
     begin
          Qr_Galpao.Close;
          Qr_Galpao.Open;
          Qr_Fechamento.Close;
          Qr_Fechamento.Open;
          AtualizaBotoes;
          AtualizaBotoesFornec;
          Caption := 'Lote : ' + QrID_LOTE.AsString + ' Integrado : ' + QrNM_FORNECEDOR.AsString + ' '+QrDESC_NUCLEO.AsString ;
          Qr_VerQtdAloj.Close;
          Qr_VerQtdAloj.ParamByName('Id_Lote').Value := QrID_LOTE.Value;
          Qr_VerQtdAloj.Open;


     end;

   if ( PageControl1.ActivePage =  TabLista )  then
     begin
          DBGrid1.Refresh;
     end;

     if ( PageControl1.ActivePage =  Tab_Remessa ) AND (QrID_LOTE.Value > 0   ) then
     begin
          Qr_Remessa.ParamByName('ID_LOTE').Value := QrID_LOTE.AsString;
          Qr_Remessa.Close;
          Qr_Remessa.Open;
          Caption := 'Lote : ' + QrID_LOTE.AsString + ' Integrado : ' + QrNM_FORNECEDOR.AsString  +  ' '+QrDESC_NUCLEO.AsString ;
          Qr_Fechamento.Refresh;

     end;

     if ( PageControl1.ActivePage =  Tab_Retirada ) AND (QrID_LOTE.Value > 0   ) then
     begin
          Qr_NFRetirada.ParamByName('ID_LOTE').Value := QrID_LOTE.AsString;
          Qr_NFRetirada.Close;
          Qr_NFRetirada.Open;

          Qr_Retirada.ParamByName('ID_LOTE').Value := QrID_LOTE.AsString;
          Qr_Retirada.Close;
          Qr_Retirada.Open;

          if ( SomenteConsulta ) then
          begin
               btn_IncluirNota.Enabled := false;
               btn_RetirarNota.Enabled := false;
               Bt_Atualiza.Enabled     := false;
          end
          else
          begin
               btn_IncluirNota.Enabled := ( QrFL_STATUS.Value = 'AB' ) OR ( QrFL_STATUS.Value = 'PR' );
               btn_RetirarNota.Enabled := ( QrFL_STATUS.Value = 'AB' ) OR ( QrFL_STATUS.Value = 'PR' );
               Bt_Atualiza.Enabled     := ( QrFL_STATUS.Value = 'AB' ) OR ( QrFL_STATUS.Value = 'PR' );
          end;
          Caption := 'Lote : ' + QrID_LOTE.AsString + ' Integrado : ' + QrNM_FORNECEDOR.AsString  + ' '+QrDESC_NUCLEO.AsString ;

     end;

     if ( PageControl1.ActivePage =  Tab_Fechamento ) AND (QrID_LOTE.Value > 0   ) then
     begin
          //Atual_ToolBar(9);
          AtualizaBotoes;
          if ( not Qr_Lancto.Active ) then
          begin
               Qr_Lancto.Close;
               Qr_Lancto.Open;
          end;
          Qr_Fechamento.Close;
          Qr_Fechamento.Open;

          AtualizaBotoes;
          Caption := 'Lote : ' + QrID_LOTE.AsString + ' Integrado : ' + QrNM_FORNECEDOR.AsString  + ' '+QrDESC_NUCLEO.AsString ;

          if  (QrFL_STATUS.Value = 'PR' ) then
          begin
              edt_VLAveFinal.Enabled := true ;
              edt_VLAveFinal.ReadOnly := false;
              edt_VLAveFinal.Color := clWhite;
          end
          else
          begin
              edt_VLAveFinal.Enabled  := false ;
              edt_VLAveFinal.ReadOnly := true;
              edt_VLAveFinal.Color    := clSilver;
          end;

     end;
end;

procedure TFrmLoteIntegrado.btn_IncluirNotaClick(Sender: TObject);
Var  bkmPosiAtua: TBookmark;
     i : integer ;
     QTD_AVES : Double;
begin
     if ( Dbg_NFRetiradas.SelectedRows.Count = 0  ) then
     begin
          MessageDlg('Não foi selecionada nenhuma Nota.', mtInformation,[mbOk], 0, mbOk);
          exit;
     end;
     Qr_NFRetirada.DisableControls;

    // Pegamos a posição atual
    bkmPosiAtua := Qr_NFRetirada.GetBookmark;
    // Varremos todos os registros selecionados
    For i := 0 to Dbg_NFRetiradas.SelectedRows.Count - 1 do
    begin
         // Posicionamos no registro a ser copiado
         Qr_NFRetirada.GotoBookmark(Dbg_NFRetiradas.SelectedRows.Items[i]);

         if ( Qr_NFRetiradaID_NOTA.Value = 0 ) then
         begin
               Qr_Retirada.Append;

               Qr_RetiradaEMPRESA.Value := gs_Empresa;
               Qr_RetiradaFILIAL.Value  := gi_Filial;
               Qr_RetiradaID_LOTE.Value      := Qr_NFRetiradaID_LOTE.AsInteger;
               Qr_RetiradaID_NOTAFISC.Value  := Qr_NFRetiradaID_NOTAFISC.Value;
               Qr_RetiradaPESO_AVES.Value    := Qr_NFRetiradaPESODIFERE.Value;
               Qr_RetiradaVL_UNIT.Value      := Qr_NFRetiradaVL_UNITITEMNOTAFISC.Value;

              if ( TryStrToFloat( Qr_NFRetiradaGN_OBSEPEDIVEND.AsString , QTD_AVES ) ) then
                 Qr_RetiradaQTD_AVESABAT.Value := QTD_AVES ;

               try
                   Qr_Retirada.Post;
                   Qr_Retirada.CommitUpdates;
                   Qr_Retirada.ApplyUpdates;
               except
                   MessageDlg('Não foi possível incluir a Nota.', mtError,[mbOk], 0, mbOk);
                   Qr_Retirada.CancelUpdates;

               end;
         end
         else
         begin
              MessageDlg('Nota já incluída na retirada .', mtError,[mbOk], 0, mbOk);
         end;
    end;

    Qr_NFRetirada.EnableControls;
    Qr_NFRetirada.Refresh;
    Qr_Retirada.Refresh;

end;

procedure TFrmLoteIntegrado.btn_RetirarNotaClick(Sender: TObject);
Var  bkmPosiAtua: TBookmark;
     i : integer ;
begin
     if ( dbg_Retirada.SelectedRows.Count = 0  ) then
     begin
          MessageDlg('Não foi selecionada nenhuma Nota.', mtInformation,[mbOk], 0, mbOk);
          exit;
     end;

     Qr_Retirada.DisableControls;

    // Pegamos a posição atual
    bkmPosiAtua := Qr_Retirada.GetBookmark;

    // Varremos todos os registros selecionados
    For i := 0 to dbg_Retirada.SelectedRows.Count - 1 do
    begin
         // Posicionamos no registro a ser copiado
         Qr_Retirada.GotoBookmark(dbg_Retirada.SelectedRows.Items[i]);

         Qr_Retirada.Delete;
         Qr_Retirada.ApplyUpdates;
         Qr_Retirada.CommitUpdates;

    end;

    Qr_Retirada.EnableControls;
    Qr_Retirada.Refresh;
    Qr_NFRetirada.Refresh;

end;

procedure TFrmLoteIntegrado.CRTemp_Qr_RetiradaCalcFields(DataSet: TDataSet);
begin
     if ( Qr_RetiradaPESO_AVES.Value > 0 ) and ( Qr_RetiradaQTD_AVESABAT.Value > 0 ) then
     begin
          Qr_RetiradaPeso_Medio.Value := Qr_RetiradaPESO_AVES.Value / Qr_RetiradaQTD_AVESABAT.Value ;
     end;

end;

procedure TFrmLoteIntegrado.Ds_RetiradaStateChange(Sender: TObject);
begin
     if ( PageControl1.ActivePage = Tab_Retirada ) then
     begin
          //Atual_ToolBar(0);
            AtualizaBotoes;
     end;
end;

procedure TFrmLoteIntegrado.Totaliza_Retirada();
Var Posicao , TotQtde , TotPeso : Double;
begin
     Posicao := Qr_RetiradaID_NOTAFISC.Value;
     TotQtde := 0 ;
     TotPeso := 0 ;

     Qr_Retirada.DisableControls;
     Qr_Retirada.First;
     while ( not Qr_Retirada.Eof ) do
     begin
           TotQtde := TotQtde + Qr_RetiradaQTD_AVESABAT.AsFloat;
           TotPeso := TotPeso + Qr_RetiradaPESO_AVES.AsFloat;
           Qr_Retirada.Next;
     end;

     Qr_Retirada.EnableControls;
     Qr_Retirada.Locate('ID_NOTAFISC',Posicao,[]);

     lbl_Quantidade.Caption := FormatFloat( '#,###',TotQtde );
     lbl_Peso.Caption       := FormatFloat( '#,###',TotPeso );

end;

procedure TFrmLoteIntegrado.CRTemp_Qr_RetiradaAfterOpen(DataSet: TDataSet);
begin
     Totaliza_Retirada();
end;

procedure TFrmLoteIntegrado.CRTemp_Qr_RetiradaAfterPost(DataSet: TDataSet);
begin
     Qr_Retirada.ApplyUpdates;
     Qr_Retirada.CommitUpdates;
     Totaliza_Retirada();
end;

procedure TFrmLoteIntegrado.btn_RelAnaliticoClick(Sender: TObject);
begin
      FrmRelLoteAnalitico := TFrmRelLoteAnalitico.Create(Self);
      FrmRelLoteAnalitico.PID_LOTE := QrID_LOTE.AsInteger;
      FrmRelLoteAnalitico.PID_INTEGRADO := QrID_INTEGRADO.AsInteger;
//      FrmRelLoteAnalitico.PDSetup.Copies := 1;
      FrmRelLoteAnalitico.RLReport1.Preview(nil);

end;

procedure TFrmLoteIntegrado.Qr_FechamentoBeforeOpen(DataSet: TDataSet);
begin
     Qr_Fechamento.ParamByName('ID_LOTE').Value := QrID_LOTE.Value ;
     //Qr_Fechamento.ParamByName('ID_LOTESTR').Value := QrID_LOTE.AsString ;
end;

procedure TFrmLoteIntegrado.Qr_FechamentoCalcFields(DataSet: TDataSet);
var net1, net2,net3 : Double;
begin
    // if (Qr_FechamentoAVES_ABAT.Value > 0 ) then
     //   Qr_FechamentoPESO_MEDIO.Value := Qr_FechamentoPESO_ABAT.Value / Qr_FechamentoAVES_ABAT.Value ;

     if (Qr_FechamentoQTDE_ALOJ.Value > 0 ) then
        Qr_FechamentoVIABILIDADE.Value := ( Qr_FechamentoAVES_ABAT.Value / Qr_FechamentoQTDE_ALOJ.Value ) * 100.0 ;

     Qr_FechamentoRACAO_CONSUMIDA.Value := Qr_FechamentoQTD_RACAO.Value - Qr_FechamentoSOBRA_RACAO.Value;

   //  if (Qr_FechamentoPESO_ABAT.Value > 0 ) then
    //     Qr_FechamentoCONV_ALIMENTAR.Value  := Qr_FechamentoRACAO_CONSUMIDA.Value / Qr_FechamentoPESO_ABAT.Value ;

    // if ( Qr_FechamentoPESO_MEDIO.Value > 0 ) then
      //   Qr_FechamentoGANHO_PESO_DIA.Value :=  Qr_FechamentoPESO_MEDIO.Value  / Qr_FechamentoPESO_MEDIO.Value ;

     if (QrFL_STATUS.Value = 'PR' ) OR (QrFL_STATUS.Value = 'FE' ) then
     begin
          Qr_FechamentoMORTAL_CALC.Value := Qr_FechamentoQTDE_ALOJ.Value -  Qr_FechamentoAVES_ABAT.Value ;
          Qr_FechamentoDIF_MORTAL.Value  := QrMORTALIDADE.Value - Qr_FechamentoMORTAL_CALC.Value;
     end;

     {net1 := Qr_FechamentoGANHO_PESO_DIA.Value ;
     net2 := RoundNExtend( ((( Qr_FechamentoAVES_ABAT.Value / Qr_FechamentoQTDE_ALOJ.Value ) * 100.00)  * 100),2);
     net3 := Qr_FechamentoCONV_ALIMENTAR.Value ;

     Qr_FechamentoIEP.Value := RoundNExtend(((( net1 * net2 ) / net3)/ 100.00 ),2) ;      }

     Qr_FechamentoVL_TOTAL.Value :=  Qr_FechamentoAVES_ABAT.Value * Qr_FechamentoVL_AVE.Value;
     Qr_FechamentoTOTA_FINAL.Value := Qr_FechamentoAVES_ABAT.Value * QrPRECO_AVE_FINAL.Value;

end;

procedure TFrmLoteIntegrado.btn_incLancClick(Sender: TObject);
begin
     Qr_Lancto.Append;

end;

procedure TFrmLoteIntegrado.CRTemp_Qr_LanctoAfterInsert(DataSet: TDataSet);
begin
     Qr_LanctoEMPRESA.Value := gs_Empresa;
     Qr_LanctoFILIAL.Value  := gi_Filial;
     Qr_LanctoID_LOTE.Value := QrID_LOTE.Value;

end;

procedure TFrmLoteIntegrado.btn_EdtLancClick(Sender: TObject);
begin
     Qr_Lancto.Edit;
end;

procedure TFrmLoteIntegrado.btn_ExcluiLancClick(Sender: TObject);
begin
     If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
     Begin
          Qr_Lancto.Delete;
          Qr_Lancto.ApplyUpdates;
          Qr_Lancto.CommitUpdates;
          dbg_Lancto.Refresh;
          Atualizabotoes;
     end;
end;

procedure TFrmLoteIntegrado.btn_ConfLancClick(Sender: TObject);
begin
     Qr_Lancto.Post;
end;

procedure TFrmLoteIntegrado.btn_CancLancClick(Sender: TObject);
begin
     Qr_Lancto.Cancel;
end;

procedure TFrmLoteIntegrado.CRTemp_Qr_LanctoAfterPost(DataSet: TDataSet);
begin
     Qr_Lancto.ApplyUpdates;
     Qr_Lancto.CommitUpdates;
end;

procedure TFrmLoteIntegrado.CRTemp_Qr_LanctoAfterCancel(DataSet: TDataSet);
begin
     Qr_Lancto.CancelUpdates;
end;

procedure TFrmLoteIntegrado.CRTemp_Qr_LanctoBeforePost(DataSet: TDataSet);
begin
     ActiveControl := Nil;
     if ( QrFL_STATUS.Value = 'FE' )  then
     begin
          MessageDlg('Status do lote não permite alteração.', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;

     //Qr_LanctoTIPO_LANC.Value :=  dbg_Lancto.Columns[4].PickList.Text;

     if ( Qr_LanctoTIPO_LANC.Value <> 'A' ) AND ( Qr_LanctoTIPO_LANC.Value <> 'D' )  then
     begin
          Screen.Cursor := crDefault;
          MessageDlg('O preenchimento do tipo de Lançamento ( (A)créscimo ou (D)esconto ) é obrigatório.' + dbg_Lancto.Columns[4].PickList.Text , mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;

     if ( Qr_LanctoDESC_LANC.Value = '' )   then
     begin
          Screen.Cursor := crDefault;
          MessageDlg('O preenchimento da descrição do lançamento é obrigatório.', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;

     if ( Qr_LanctoVALOR_LANC.Value = 0 )   then
     begin
          Screen.Cursor := crDefault;
          MessageDlg('O preenchimento do valor do lançamento é obrigatório.', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;


end;

procedure TFrmLoteIntegrado.CRTemp_Qr_LanctoAfterOpen(DataSet: TDataSet);
begin
     AtualizaBotoes;
end;

procedure TFrmLoteIntegrado.Ds_LanctoStateChange(Sender: TObject);
begin
    AtualizaBotoes;
end;

procedure TFrmLoteIntegrado.Qr_FechamentoAfterOpen(DataSet: TDataSet);
begin
     if (Qr_FechamentoIEP.Value > 0 ) then
     begin
          Qr_Fator.Close;
          Qr_Fator.ParamByName('IEP').Value := Qr_FechamentoIEP.Value ;
          Qr_Fator.Open;
     end
     else
         Qr_Fator.Close;
end;

procedure TFrmLoteIntegrado.Qr_FechamentoAfterScroll(DataSet: TDataSet);
begin
     if (Qr_FechamentoIEP.Value > 0 ) then
     begin
          Qr_Fator.Close;
          Qr_Fator.ParamByName('IEP').Value := Qr_FechamentoIEP.Value ;
          Qr_Fator.Open;
     end
     else
         Qr_Fator.Close;
end;

procedure TFrmLoteIntegrado.CRTemp_Qr_RetiradaAfterCancel(DataSet: TDataSet);
begin
     Qr_Retirada.CancelUpdates;
end;

procedure TFrmLoteIntegrado.CRTemp_Qr_LoteGalpaoAfterInsert(DataSet: TDataSet);
begin
     Qr_LoteGalpaoEMPRESA.Value := 'CA';
     Qr_LoteGalpaoFILIAL.Value := gi_Filial;
     Qr_LoteGalpaoID_LOTE.Value := QrID_LOTE.Value;
end;

procedure TFrmLoteIntegrado.DsStateChange(Sender: TObject);
begin
     AtualizaBotoes;
end;

procedure TFrmLoteIntegrado.Btn_FecharClick(Sender: TObject);
Var Mensagem : String;
begin
     if ( QrFL_STATUS.Value = 'PR' ) then
     begin
          Mensagem := 'Deseja realmente fazer o FECHAMENTO do Lote ?';
     end;

     if ( not Qr_Retirada.Active ) then
     begin
          Qr_Retirada.Close;
          Qr_Retirada.Open;
     end;

     If MessageDlg( Mensagem ,mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
     begin
          FecharLote ('F');
     end;
     FechandoLote := false;

     if  (QrFL_STATUS.Value = 'PR' ) then
     begin
         edt_VLAveFinal.Enabled  := true ;
         edt_VLAveFinal.ReadOnly := false;
         edt_VLAveFinal.Color    := clWhite;
     end
     else
     begin
         edt_VLAveFinal.Enabled  := false ;
         edt_VLAveFinal.ReadOnly := true;
         edt_VLAveFinal.Color    := clSilver;
     end;
end;

procedure TFrmLoteIntegrado.FecharLote(Tipo : String );
Var Mensagem : String ;
begin
     if ( Qr_FechamentoQTDE_GALPAO.Value <> Qr_FechamentoQTDE_ALOJ.Value ) then
     begin
          MessageDlg('Divergência entre a quantidade informada nas notas de Pintainho e a quantidada informada no Galpão .Qtd Nota :'+
                     Qr_FechamentoQTDE_ALOJ.AsString + ' Qtd Galpão '+ Qr_FechamentoQTDE_GALPAO.AsString , mtInformation,[mbOk], 0, mbOk);
          exit;
     end;

     if ( Qr_Retirada.RecordCount = 0 ) then
     begin
          MessageDlg('As retiradas não foram informadas.', mtInformation,[mbOk], 0, mbOk);
          exit;
     end;

     Qr_VerTurma.Close;
     Qr_VerTurma.Open;

     if ( Qr_VerTurmaVTURMA.Value = 0  ) AND ( Qr_VerTurma.RecordCount > 0 )  then
     begin
          MessageDlg('Existe retirada sem o Turmeiro informado.', mtInformation,[mbOk], 0, mbOk);
          exit;
     end;

     if ( Qr_VerTurmaVQTD.Value = 0  ) AND ( Qr_VerTurma.RecordCount > 0 ) then
     begin
          MessageDlg('Existe retirada sem quantidade informada.', mtInformation,[mbOk], 0, mbOk);
          exit;
     end;

     if ( Qr_FechamentoVL_AVE.Value = 0 ) then
     begin
          MessageDlg('Não foi possível calcular o Preço por Ave .', mtInformation,[mbOk], 0, mbOk);
          exit;
     end;

     if ( Qr_FechamentoVL_TOTAL.Value = 0 ) then
     begin
          MessageDlg('Não foi possível calcular o Total a Receber .', mtInformation,[mbOk], 0, mbOk);
          exit;
     end;

     if ( QrFL_STATUS.Value = 'FE' ) OR ( QrFL_STATUS.Value = 'CN' ) then
     begin
          MessageDlg('Status do lote não permite fechamento .', mtInformation,[mbOk], 0, mbOk);
          exit;
     end;

     if ( QrMORTALIDADE.IsNull ) OR ( QrMORT_PRIM_SEMANA.IsNull ) OR (QrSOBRA_RACAO.IsNull ) then
     begin
          MessageDlg(' Não foram preenchidos os dados de Mortalidade e\ou sobra de ração.', mtInformation,[mbOk], 0, mbOk);
          exit;

     end;

     FechandoLote := true;
     Mensagem := '';
     Qr.Edit;

     if ( Tipo = 'P' ) AND ( ( QrFL_STATUS.Value = 'AB' ) OR ( QrFL_STATUS.Value = 'PR' )) then
     begin
         QrFL_STATUS.Value := 'PR';
         QrDT_FECHAMENTO.Value   := Date;
         QrCONV_ALIMENTAR.Value  := Qr_FechamentoCONV_ALIMENTARK.Value;
         QrGANHO_PESO_DIA.Value  := Qr_FechamentoGANHO_PESO_DIAK.Value;
         QrPESO_MEDIO.Value      := Qr_FechamentoPESO_MEDIOK.Value;
         QrIEP.Value             := Qr_FechamentoIEPK.Value;
         QrPRECO_AVE.Value       := Qr_FechamentoVL_AVE.Value;
         QrVL_PAGTO.Value        := Qr_FechamentoVL_TOTAL.Value;
         QrPER_MORTALIDADE.Value := (Qr_FechamentoMORTAL_CALC.Value / Qr_FechamentoQTDE_ALOJ.Value) * 100;
         QrDATA_PAGTO.Value      := Date + Qr_FechamentoDIAS_PAGTO.Value;
         QrAVES_ALOJ.Value       := Qr_FechamentoQTDE_ALOJ.Value;
         QrAVES_ABAT.Value       := Qr_FechamentoAVES_ABAT.Value;
         QrTOT_KG.Value          := Qr_FechamentoPESO_ABAT.Value;
         QrIDADE.Value           := Qr_FechamentoIDADE.Value;
         QrTOTAL_RACAO.Value     := Qr_FechamentoQTD_RACAO.Value;

         Mensagem := ' ( Previsao ) .';
     end
     else
     if ( Tipo = 'F' ) AND ( QrFL_STATUS.Value = 'PR' ) then
     begin
          if ( QrPRECO_AVE_FINAL.Value = 0  ) OR (Qr_FechamentoTOTA_FINAL.Value = 0 )then
          begin
               MessageDlg('Informar o valor final para fechamento do Lote.', mtInformation,[mbOk], 0, mbOk);
               Exit;
          end;

          QrFL_STATUS.Value := 'FE';
          QrDT_FECHAMENTO.Value   := Date;
          QrCONV_ALIMENTAR.Value  := Qr_FechamentoCONV_ALIMENTARK.Value;
          QrGANHO_PESO_DIA.Value  := Qr_FechamentoGANHO_PESO_DIAK.Value;
          QrPESO_MEDIO.Value      := Qr_FechamentoPESO_MEDIOK.Value;
          QrIEP.Value             := Qr_FechamentoIEPK.Value;
          QrPRECO_AVE.Value       := Qr_FechamentoVL_AVE.Value;
          QrVL_PAGTO.Value        := Qr_FechamentoVL_TOTAL.Value;
          QrPER_MORTALIDADE.Value := (Qr_FechamentoMORTAL_CALC.Value / Qr_FechamentoQTDE_ALOJ.Value) * 100;
          QrDATA_PAGTO.Value      := Date + Qr_FechamentoDIAS_PAGTO.Value;
          QrAVES_ALOJ.Value       := Qr_FechamentoQTDE_ALOJ.Value;
          QrAVES_ABAT.Value       := Qr_FechamentoAVES_ABAT.Value;
          QrTOT_KG.Value          := Qr_FechamentoPESO_ABAT.Value;
          QrIDADE.Value           := Qr_FechamentoIDADE.Value;
          QrTOTAL_RACAO.Value     := Qr_FechamentoQTD_RACAO.Value;

          QrVL_PAGTO_FINAL.Value := Qr_FechamentoTOTA_FINAL.Value;
     end;

     QR.Post;
     Qr.CommitUpdates;
     Qr.ApplyUpdates;
     Qr.Refresh;
     Qr_Fechamento.Refresh;
     DBGrid1.Refresh;
     //Atual_ToolBar(9);
     AtualizaBotoes;
     AtualizaBotoesFornec;

     MessageDlg('Lote foi fechado.'+ Mensagem , mtInformation,[mbOk], 0, mbOk);
end;

procedure TFrmLoteIntegrado.CRTemp_QrBeforePost(DataSet: TDataSet);
begin
     if ( QrFL_STATUS.Value = 'FE' ) AND ( not FechandoLote ) then
     begin
          MessageDlg('Lote não pode ser alterado .', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;
end;

procedure TFrmLoteIntegrado.Qr_GalpaoBeforePost(DataSet: TDataSet);
begin
     if ( QrFL_STATUS.Value = 'FE' ) then
     begin
          MessageDlg('Lote não pode ser alterado .', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;
end;

procedure TFrmLoteIntegrado.CRTemp_Qr_RetiradaBeforePost(DataSet: TDataSet);
begin
     if ( QrFL_STATUS.Value = 'FE' ) then
     begin
          MessageDlg('Status do lote não permite alteração.', mtInformation,[mbOk], 0, mbOk);
          Abort;
     end;
end;

procedure TFrmLoteIntegrado.btn_RelPagamentoClick(Sender: TObject);
begin
      FrmRelLotePagamento := TFrmRelLotePagamento.Create(Self);
      FrmRelLotePagamento.PID_LOTE := QrID_LOTE.AsInteger;
//      FrmRelLotePagamento.RLPrintDialogSetup1.Copies := 1;
      FrmRelLotePagamento.RLReport1.Preview(nil);
end;

procedure TFrmLoteIntegrado.btn_ReciboTurmaClick(Sender: TObject);
begin
      FrmRelReciboTurmeiro := TFrmRelReciboTurmeiro.Create(Self);
      FrmRelReciboTurmeiro.PID_LOTE := QrID_LOTE.AsInteger;
//      FrmRelReciboTurmeiro.RLPrintDialogSetup1.Copies := 1;
      FrmRelReciboTurmeiro.RLReport1.Preview(nil);
end;

procedure TFrmLoteIntegrado.BPesqDtClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     if ( Vdtstr <> '' ) then
        edtDataGTA.Text := Vdtstr;
     if ( edtDataGTA.Enabled )then
        edtDataGTA.SetFocus;
end;

procedure TFrmLoteIntegrado.btnDataAlojClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     if ( Vdtstr <> '' ) then
         edtDataAloj.Text := Vdtstr;
     if ( edtDataAloj.Enabled ) then
        edtDataAloj.SetFocus;
end;

procedure TFrmLoteIntegrado.Dbg_NFRetiradasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if ( Qr_NFRetirada.FieldByName('ID_NOTA').Value > 0 )  then
        Dbg_NFRetiradas.Canvas.Font.Color := clgreen;
     Dbg_NFRetiradas.DefaultDrawColumnCell(rect,DataCol,column,state);

end;

procedure TFrmLoteIntegrado.btn_BoletimClick(Sender: TObject);
begin
     { FrmRelBoletimSan := TFrmRelBoletimSan.Create(Self);
      FrmRelBoletimSan.PID_LOTE := QrID_LOTE.AsInteger;
      FrmRelBoletimSan.RLPrintDialogSetup1.Copies := 1;
      FrmRelBoletimSan.RLReport1.Preview(nil);}
     Qr_RacEngorda.Close;
     Qr_RacEngorda.ParamByName('ID_LOTE').Value := QrID_LOTE.Value;
     Qr_RacEngorda.Open;

    try
      FrmBoletimSanit := TFrmBoletimSanit.Create(Self);
      FrmBoletimSanit.PID_LOTE := QrID_LOTE.AsInteger;
      // Data Inicio medicação = data Alojamento
      FrmBoletimSanit.DATA_ALOJ := QrDATA_ALOJAMENTO.Value;
      FrmBoletimSanit.DATA_RACENGORDA :=  Qr_RacEngordaDT_PRIMSAIDA.Value;
      FrmBoletimSanit.Show;
    except;
      FrmBoletimSanit.Free;
      Qr_RacEngorda.Close;

    end;
     Qr_RacEngorda.Close;

end;

procedure TFrmLoteIntegrado.CRTemp_Qr_LoteGalpaoAfterPost(DataSet: TDataSet);
begin
     Qr_Fechamento.Close;
     Qr_Fechamento.Open;
end;

procedure TFrmLoteIntegrado.Qr_VerTurmaBeforeOpen(DataSet: TDataSet);
begin
     Qr_VerTurma.ParamByName('ID_LOTE').Value := QrID_LOTE.Value;
end;

procedure TFrmLoteIntegrado.btn_DtLoteAlojClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     if ( Vdtstr <> '' ) then
         Edt_DtAlojLote.Text := Vdtstr;
     if ( edtDataAloj.Enabled ) then
        Edt_DtAlojLote.SetFocus;

end;

procedure TFrmLoteIntegrado.AtualizaQuantidadeAlojada;
begin
     Qr_VerQtdAloj.Close;
     Qr_VerQtdAloj.ParamByName('Id_Lote').Value := QrID_LOTE.Value;
     Qr_VerQtdAloj.Open;
     if ( Qr_VerQtdAlojQTD_ALOJK.Value <> Qr_VerQtdAlojQTD_ALOJ.Value  ) then
     begin
          Qr.Edit;
          QrQTD_ALOJ.Value := Qr_VerQtdAlojQTD_ALOJK.Value;
          Qr.Post;
          Qr.ApplyUpdates;
          Qr.CommitUpdates;
     end;


end;
procedure TFrmLoteIntegrado.Lkp_NucleoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if  ( ( key = 46 ) or ( key = 4103 ) ) And  ( Lkp_Nucleo.Enabled ) then
     begin
          Lkp_Nucleo.KeyValue := 0;
          //QrID_NUCLEO.Value   := Null; 
     end;
end;

procedure TFrmLoteIntegrado.Qr_VerQtdAlojAfterOpen(DataSet: TDataSet);
begin
     lbl_TotalNota.Caption   := Qr_VerQtdAlojQTD_ALOJF.AsString;
     lbl_TotalGalpao.Caption := Qr_VerQtdAlojQTD_ALOJG.AsString;
end;

procedure TFrmLoteIntegrado.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Shift = [ssCtrl]) and (Key = Ord('C')) then
       CTRL_C_Grig ( DBGrid1 );
end;

procedure TFrmLoteIntegrado.Bt_AtualizaClick(Sender: TObject);
Var  bkmPosiAtua: TBookmark;
     i : integer ;
     QTD_AVES : Double;
begin
     if ( Dbg_NFRetiradas.SelectedRows.Count = 0  ) then
     begin
          MessageDlg('Não foi selecionada nenhuma Nota.', mtInformation,[mbOk], 0, mbOk);
          exit;
     end;

     Qr_NFRetirada.DisableControls;

    // Pegamos a posição atual
    bkmPosiAtua := Qr_NFRetirada.GetBookmark;
    // Varremos todos os registros selecionados
    For i := 0 to Dbg_NFRetiradas.SelectedRows.Count - 1 do
    begin
         // Posicionamos no registro a ser copiado
         Qr_NFRetirada.GotoBookmark(Dbg_NFRetiradas.SelectedRows.Items[i]);

         if ( Qr_NFRetiradaID_NOTA.Value > 0 ) then
         begin
              // Posicina Query das retiradas já incluídas
              Qr_Retirada.Locate( 'ID_NOTAFISC', Qr_NFRetiradaID_NOTA.Value,[]);
              // Verifica se NF de retirada foi encontrada
              if ( Qr_RetiradaID_NOTAFISC.Value = Qr_NFRetiradaID_NOTA.Value ) then
              begin

                    if ( Qr_NFRetiradaPESODIFERE.Value > 0 )then
                    begin
                         Qr_Retirada.edit;
                         Qr_RetiradaPESO_AVES.Value    := Qr_NFRetiradaPESODIFERE.Value;

                         try
                             Qr_Retirada.Post;
                             Qr_Retirada.CommitUpdates;
                             Qr_Retirada.ApplyUpdates;
                         except
                             MessageDlg('Não foi possível incluir a Nota.', mtError,[mbOk], 0, mbOk);
                             Qr_Retirada.CancelUpdates;

                         end;
                    end;
              end;
         end;
    end;

    Qr_NFRetirada.EnableControls;
    Qr_NFRetirada.Refresh;
    Qr_Retirada.Refresh;

end;


procedure TFrmLoteIntegrado.btn_LanctoPadraoClick(Sender: TObject);
begin
     GeraLanctoPadrao;
end;

procedure TFrmLoteIntegrado.GeraLanctoPadrao;
begin
     Qr_Lancto.Append;
     Qr_LanctoTIPO_LANC.Value := 'D';
     Qr_LanctoDESC_LANC.Value := 'Desc. referente a carregamento .';
     Qr_LanctoVALOR_LANC.Value := ( Qr_FechamentoAVES_ABAT.Value * 0.10);
     Qr_Lancto.Post;

     if ( Qr_FechamentoTOTA_FINAL.Value > 0 ) then
     begin
          Qr_Lancto.Append;
          Qr_LanctoTIPO_LANC.Value := 'D';
          Qr_LanctoDESC_LANC.Value := 'Desc. referente a FUNRURAL .';
          Qr_LanctoVALOR_LANC.Value := ( Qr_FechamentoTOTA_FINAL.Value *  ( 2.3/100 )  );
          Qr_Lancto.Post;
     end;


end;
procedure TFrmLoteIntegrado.Btn_PrevisaoClick(Sender: TObject);
Var Mensagem : String;
begin
     if ( QrFL_STATUS.Value = 'AB' ) OR ( QrFL_STATUS.Value = 'PR' ) then
     begin
          Mensagem := 'Deseja realmente fazer a PREVISÃO de fechamento do Lote ?';
     end;
     if ( not Qr_Retirada.Active ) then
     begin
          Qr_Retirada.Close;
          Qr_Retirada.Open;
     end;

     If MessageDlg( Mensagem ,mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
     begin
          FecharLote ('P');
     end;

     if  (QrFL_STATUS.Value = 'PR' ) then
     begin
         edt_VLAveFinal.Enabled  := true ;
         edt_VLAveFinal.ReadOnly := false;
         edt_VLAveFinal.Color    := clWhite;
     end
     else
     begin
         edt_VLAveFinal.Enabled  := false ;
         edt_VLAveFinal.ReadOnly := true;
         edt_VLAveFinal.Color    := clSilver;
     end;

end;

procedure TFrmLoteIntegrado.btn_RacaAvesClick(Sender: TObject);
begin
      FrmRelRacaoeAves := TFrmRelRacaoeAves.Create(Self);
      FrmRelRacaoeAves.PID_LOTE := QrID_LOTE.AsInteger;
//      FrmRelRacaoeAves.PDSetup.Copies := 1;
      FrmRelRacaoeAves.RLReport1.Preview(nil);

end;

end.

