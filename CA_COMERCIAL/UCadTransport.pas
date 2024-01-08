
unit UCadTransport;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Menus, Data.DB, MemDS, DBAccess,
  Ora, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Winapi.Windows;

type
  TFrmCadTransport = class(TForm)
    ToolBar1: TToolBar;
    SB_PRIMEIRO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SB_NOVO: TSpeedButton;
    SB_EXCLUI: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    Sb_Sair: TSpeedButton;
    SB_EDIT: TSpeedButton;
    PageControl2: TPageControl;
    TabCriterio: TTabSheet;
    LCampos: TListBox;
    MResul: TMemo;
    Lbl_Cond: TLabel;
    CBCond: TComboBox;
    Lbl_Expr: TLabel;
    EdExpr: TEdit;
    RGeou: TRadioGroup;
    BtIncluir: TBitBtn;
    BtLimpar: TBitBtn;
    BtAtivar: TBitBtn;
    BPESQ: TBitBtn;
    TabLista: TTabSheet;
    TabDetalhe: TTabSheet;
    DBCOD: TDBEdit;
    Lbl_cod: TLabel;
    DBNOMFOR: TDBEdit;
    Lbl_CodExt: TLabel;
    DBNMFAN: TDBEdit;
    Lbl_Fantasia: TLabel;
    DBNomRed: TDBEdit;
    Lbl_Nmred: TLabel;
    DBCODINT: TDBEdit;
    Lbl_CodInt: TLabel;
    Lbl_Forn: TLabel;
    Lbl_Log: TLabel;
    DBLograd: TDBEdit;
    DBNum: TDBEdit;
    Lbl_Num: TLabel;
    Lbl_TpLog: TLabel;
    Lbl_Com: TLabel;
    Lbl_Cep: TLabel;
    DBCep: TDBEdit;
    Lbl_CodCid: TLabel;
    DBCidade: TDBEdit;
    Lbl_Bar: TLabel;
    DBBairro: TDBEdit;
    Lbl_Est: TLabel;
    DBEstado: TDBEdit;
    Lbl_Fone: TLabel;
    DBPais: TDBEdit;
    Lbl_CodPais: TLabel;
    DBRGeog: TDBEdit;
    Lbl_Geog: TLabel;
    Lbl_CxPos: TLabel;
    DBCxpst: TDBEdit;
    DBCeppst: TDBEdit;
    Lbl_Fax: TLabel;
    Lbl_DDI: TLabel;
    DBDDI: TDBEdit;
    Lbl_Tel: TLabel;
    DBDDD: TDBEdit;
    DBTEL: TDBEdit;
    Lbl_DDD: TLabel;
    DBFAX: TDBEdit;
    DBFONE: TDBEdit;
    DBHPage: TDBEdit;
    DBEmail: TDBEdit;
    Lbl_CepPos: TLabel;
    BitBtn1: TBitBtn;
    Lbl_HPg: TLabel;
    Lbl_Email: TLabel;
    DBNasc: TDBEdit;
    Lbl_Nasc: TLabel;
    GrpBx_Fisica: TGroupBox;
    GrpBx_Jur: TGroupBox;
    DBInsest: TDBEdit;
    Lbl_insest: TLabel;
    DBDTFor: TDBEdit;
    Lbl_Rur: TLabel;
    DBDtCad: TDBEdit;
    DBDtAlt: TDBEdit;
    Lbl_DtCad: TLabel;
    Lbl_DtAlt: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    ODtS_Forn: TOraDataSource;
    OQry_Forn: TOraQuery;
    OQry_Cid: TOraQuery;
    DtSrc_Cid: TOraDataSource;
    OQry_Lograd: TOraQuery;
    ODtSrc_Lograd: TOraDataSource;
    Lbl_Filtro: TLabel;
    OQry_FornNM_FORNECEDOR: TStringField;
    OQry_FornGN_ORGAEXPERGFORN: TStringField;
    OQry_FornNM_FANTFORN: TStringField;
    OQry_FornNM_REDUFORN: TStringField;
    OQry_FornFL_PESSFORN: TStringField;
    OQry_FornNR_CNPJFORN: TStringField;
    OQry_FornNR_RGFORN: TStringField;
    OQry_FornNR_LOGRFORN: TStringField;
    OQry_FornNR_CPFFORN: TStringField;
    OQry_FornNR_INSCPRODFORN: TStringField;
    OQry_FornNR_INSCESTAFORN: TStringField;
    OQry_FornDT_CADAFORN: TDateTimeField;
    OQry_FornDT_NASCFORN: TDateTimeField;
    OQry_FornGN_EMAIFORN: TStringField;
    OQry_FornNR_CAIXPOSTFORN: TStringField;
    OQry_FornGN_URLFORN: TStringField;
    OQry_FornNR_CEPCAIXPOSTFORN: TStringField;
    OQry_FornNR_CEPFORN: TStringField;
    OQry_FornNR_FONEFORN: TStringField;
    OQry_FornNR_FAXFORN: TStringField;
    OQry_FornNR_FONECOMPFORN: TStringField;
    OQry_FornID_ATIVECON: TFloatField;
    OQry_FornID_CIDADE: TFloatField;
    OQry_FornEMPRESA: TStringField;
    OQry_FornFILIAL: TIntegerField;
    OQry_FornCOD_FUNC: TIntegerField;
    OQry_FornFL_ATIVFORN: TStringField;
    OQry_FornID_FORNECEDOR: TFloatField;
    OQry_FornID_INTEFORN: TStringField;
    OQry_FornFL_TRANAUTOFORN: TStringField;
    OQry_FornGN_OBSEFORN: TStringField;
    OQry_FornNM_BAIRFORN: TStringField;
    OQry_FornNM_CIDADE: TStringField;
    OQry_FornSG_ESTADO: TStringField;
    OQry_FornNM_PAIS: TStringField;
    OQry_FornNM_ATIVECON: TStringField;
    OQry_FornDT_ALTEFORN: TDateTimeField;
    OQry_FornDT_PRIMCOMPFORN: TDateTimeField;
    DBCompl: TDBEdit;
    TabComplemento: TTabSheet;
    TabContato: TTabSheet;
    Grp_Class: TGroupBox;
    Lbl_TpFor: TLabel;
    Lbl_TpV: TLabel;
    Grp_Pad: TGroupBox;
    Lbl_ComPg: TLabel;
    GroupBox1: TGroupBox;
    Lbl: TLabel;
    Grp_ComMens: TGroupBox;
    Grp_ComObs: TGroupBox;
    DBGrdCon: TDBGrid;
    Lbl_ConTra: TLabel;
    Lbl_ConCar: TLabel;
    Grp_ConFon: TGroupBox;
    Lbl_ConDdi: TLabel;
    Lbl_ConDdd: TLabel;
    Lbl_ConTel: TLabel;
    Lbl_ConRam: TLabel;
    Grp_ConFax: TGroupBox;
    Lbl_FxDdi: TLabel;
    Lbl_FxDdd: TLabel;
    Lbl_FxTel: TLabel;
    Lbl_FxRam: TLabel;
    DBFxDDi: TDBEdit;
    DBFxDdd: TDBEdit;
    DBFxTel: TDBEdit;
    DBFxRam: TDBEdit;
    DBConNom: TDBEdit;
    Lbl_ConNom: TLabel;
    Lbl_ConDpt: TLabel;
    DBConPag: TDBEdit;
    Lbl_ConPag: TLabel;
    Lbl_ConEmail: TLabel;
    DBConEmail: TDBEdit;
    OQry_FornID_TRATFORN: TFloatField;
    OQry_FornNM_TRATFORN: TStringField;
    DtSrc_ForCon: TOraDataSource;
    OQry_ContFor: TOraQuery;
    OQry_TpVenda: TOraQuery;
    DtSrc_TpVenda: TOraDataSource;
    Qry_FrPag: TOraQuery;
    ODtSrc_FrmPag: TOraDataSource;
    DBCodCid: TDBEdit;
    CodExter: TDBEdit;
    DtSrc_Tratfor: TOraDataSource;
    Qry_Tratfor: TOraQuery;
    Qry_PlaCta: TOraQuery;
    DtSrc_PlaCta: TOraDataSource;
    Lbl_Cfop: TLabel;
    DB_Descop: TDBEdit;
    Qry_PlaCtaCFOP: TStringField;
    Qry_PlaCtaCTB: TStringField;
    Qry_PlaCtaDESCRI: TStringField;
    Qry_Cfop: TOraQuery;
    DtSrc_Cfop: TOraDataSource;
    Label1: TLabel;
    Panel1: TPanel;
    LRodape: TLabel;
    DBGrd_CadForn: TDBGrid;
    Panel4: TPanel;
    Panel2: TPanel;
    OQry_ContForNM_CONTFORN: TStringField;
    OQry_ContForNM_CARGO: TStringField;
    OQry_ContForNM_DEPARTAMENTO: TStringField;
    OQry_ContForSG_TRATPESS: TStringField;
    OQry_Tratpess: TOraQuery;
    ODtSrcTratpess: TOraDataSource;
    OQry_ContForID_CONTFORN: TFloatField;
    OQry_ContForID_TRATPESS: TFloatField;
    OQry_ContForID_DEPARTAMENTO: TFloatField;
    OQry_ContForID_CARGO: TFloatField;
    OQry_ContForNR_DDIFONECONTFORN: TStringField;
    OQry_ContForNR_DDDFONECONTFORN: TStringField;
    OQry_ContForNR_FONECONTFORN: TStringField;
    OQry_ContForNR_RAMAFONECONTFORN: TStringField;
    OQry_ContForNR_FAXCONTFORN: TStringField;
    OQry_ContForFL_SEXOCONTFORN: TStringField;
    OQry_ContForDT_NASCCONTFORN: TDateTimeField;
    OQry_ContForDT_CADACONTFORN: TDateTimeField;
    OQry_ContForGN_EMAICONTFORN: TStringField;
    OQry_ContForGN_URLCONTFORN: TStringField;
    OQry_ContForGN_OBSECONTFORN: TStringField;
    OQry_ContForFX_CONTFORN: TStringField;
    OQry_ContForNR_RAMAFONECONTFORN_1: TStringField;
    OQry_ContForNR_RAMAFAXCONTFORN: TStringField;
    OQry_ContForID_FORNECEDOR: TFloatField;
    OQry_ContForID_CARGO_1: TFloatField;
    OQry_ContForFX_CARGO: TStringField;
    OQry_ContForID_DEPARTAMENTO_1: TFloatField;
    OQry_ContForFX_DEPARTAMENTO: TStringField;
    OQry_ContForID_FORNECEDOR_1: TFloatField;
    OQry_ContForNM_FORNECEDOR: TStringField;
    OQry_ContForID_TRATPESS_1: TFloatField;
    OQry_ContForNM_TRATPESS: TStringField;
    OQry_FornCFOP: TStringField;
    DBLCFOP: TDBLookupComboBox;
    DBLCta: TDBLookupComboBox;
    Qry_CfopCFOP: TStringField;
    Qry_CfopDESCRI_CFOP: TStringField;
    DBLForPag: TDBLookupComboBox;
    OQry_FornID_FORMPAGA: TFloatField;
    DBLTpVd: TDBLookupComboBox;
    OQry_AtEcon: TOraQuery;
    DtSrc_AtEcon: TOraDataSource;
    Label2: TLabel;
    OQry_FornNM_LOGRFORN: TStringField;
    QrContato: TOraQuery;
    DSContato: TOraDataSource;
    DBLCargo: TDBLookupComboBox;
    OQryCargo: TOraQuery;
    ODtSCargo: TOraDataSource;
    OQryCargoID_CARGO: TFloatField;
    OQryCargoNM_CARGO: TStringField;
    OQry_FornID_CARGO: TFloatField;
    OQry_FornID_TIPOVEND: TFloatField;
    DBLTpFor: TDBLookupComboBox;
    DBLAtvEcon: TDBLookupComboBox;
    OQry_FornID_TRATPESS: TFloatField;
    OQry_TratpessID_TRATPESS: TFloatField;
    OQry_TratpessSG_TRATPESS: TStringField;
    OQry_TratpessNM_TRATPESS: TStringField;
    OQry_FornID_TRATFORN_1: TFloatField;
    Qry_TratforID_TRATFORN: TFloatField;
    Qry_TratforNM_TRATFORN: TStringField;
    Qry_TratforFL_ATIVTRATFORN: TStringField;
    Qry_TratforFL_CADAESPETRATFORN: TStringField;
    Qry_TratforFX_TRATFORN: TStringField;
    OQry_TpFor: TOraQuery;
    ODtSrcTpFor: TOraDataSource;
    OQry_FornID_TIPOFORN: TFloatField;
    DBLTplog: TDBLookupComboBox;
    OQry_FornID_TIPOLOGR: TFloatField;
    DBLTratfor: TDBLookupComboBox;
    DBLDpto: TDBLookupComboBox;
    OQry_Dpto: TOraQuery;
    ODtSDpto: TOraDataSource;
    OQry_FornID_DEPARTAMENTO: TFloatField;
    OQry_DptoID_DEPARTAMENTO: TFloatField;
    OQry_DptoNM_DEPARTAMENTO: TStringField;
    OQry_FornIE_FORNECEDOR: TStringField;
    OQry_FornIE_CONTCONT: TStringField;
    OQry_FornGN_COMPENDEFORN: TStringField;
    OQry_FornFL_BLOQADMIFORN: TStringField;
    OQry_FornGN_MENSCOMPFORN: TStringField;
    OQry_FornFX_FORNECEDOR: TStringField;
    OQry_FornFL_EMITCTRFORN: TStringField;
    OQry_FornFILIAL_FUNC: TIntegerField;
    OQry_CidID_CIDADE: TFloatField;
    OQry_CidNM_CIDADE: TStringField;
    OQry_CidNR_DDDCIDA: TStringField;
    OQry_CidID_ESTADO: TFloatField;
    DBCodCtb: TDBEdit;
    OQry_FornID_FORNECEDOR_1: TFloatField;
    OQry_FornNR_DDDCIDA: TStringField;
    DBMMens: TDBMemo;
    DBMObs: TDBMemo;
    PopupMenu1: TPopupMenu;
    DBRSexoC: TDBRadioGroup;
    DBRPessoa: TDBRadioGroup;
    DBCNPJ: TDBEdit;
    DBInses: TDBEdit;
    Lbl_CNPJ: TLabel;
    Lbl_Insces: TLabel;
    DBRG: TDBEdit;
    DBExp: TDBEdit;
    DBCpf: TDBEdit;
    Lbl_CPF: TLabel;
    Lbl_Exp: TLabel;
    Lbl_RG: TLabel;
    QryTemp: TOraQuery;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    TabVeiculos: TTabSheet;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    edtNomeVeic: TDBEdit;
    Label44: TLabel;
    edtNomeReduVeic: TDBEdit;
    Label45: TLabel;
    edtPlacVeic: TDBEdit;
    Label36: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    QrVeiculos: TOraQuery;
    QrVeiculosEMPRESA: TStringField;
    QrVeiculosFILIAL: TIntegerField;
    QrVeiculosID_VEICTRAN: TFloatField;
    QrVeiculosIE_VEICTRAN: TStringField;
    QrVeiculosID_FORNECEDOR_TRANSPORTADOR: TFloatField;
    QrVeiculosGN_PLACVEICTRAN: TStringField;
    QrVeiculosNM_VEICTRAN: TStringField;
    QrVeiculosNM_REDUVEICTRAN: TStringField;
    QrVeiculosID_TIPOVEIC: TFloatField;
    QrVeiculosFL_ATIVVEICTRAN: TStringField;
    QrVeiculosFX_VEICTRAN: TStringField;
    QrVeiculosNM_TIPOVEIC: TStringField;
    QrVeiculosFL_RASTVEICTRAN: TStringField;
    QrVeiculosQN_FATOFRETABATVEICTRAN: TFloatField;
    QrVeiculosQN_TARAPADRVEICTRAN: TFloatField;
    DSVeiculo: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    QryVeicTipo: TOraQuery;
    DSVeicTipo: TDataSource;
    QryVeicTipoID_TIPOVEIC: TFloatField;
    QryVeicTipoNM_TIPOVEIC: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    QrVeiculosKMREVISAO: TIntegerField;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    QrDireitos: TOraQuery;
    QrVeiculosEIXOS: TIntegerField;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    OQry_FornFL_CFOP: TStringField;
    QrContatoFL_SEXOCONTFORN: TStringField;
    QrContatoID_FORNECEDOR: TFloatField;
    QrContatoNR_RAMAFONECONTFORN: TStringField;
    QrContatoNR_DDIFAXCONTFORN: TStringField;
    QrContatoNR_DDDFAXCONTFORN: TStringField;
    QrContatoNR_FAXCONTFORN: TStringField;
    QrContatoNR_RAMAFAXCONTFORN: TStringField;
    QrContatoDT_NASCCONTFORN: TDateTimeField;
    QrContatoDT_CADACONTFORN: TDateTimeField;
    QrContatoGN_EMAICONTFORN: TStringField;
    QrContatoGN_URLCONTFORN: TStringField;
    QrContatoGN_OBSECONTFORN: TStringField;
    QrContatoFX_CONTFORN: TStringField;
    QrContatoEMPRESA: TStringField;
    QrContatoFILIAL: TIntegerField;
    QrContatoID_CONTFORN: TFloatField;
    QrContatoNM_CONTFORN: TStringField;
    QrContatoID_TRATPESS: TFloatField;
    QrContatoID_DEPARTAMENTO: TFloatField;
    QrContatoID_CARGO: TFloatField;
    QrContatoNR_DDIFONECONTFORN: TStringField;
    QrContatoNR_DDDFONECONTFORN: TStringField;
    QrContatoNR_FONECONTFORN: TStringField;
    OQry_FornCTB: TStringField;
    TabFin: TTabSheet;
    Panel6: TPanel;
    DBCodBanco: TDBEdit;
    DBBanco: TDBEdit;
    DBCodAgencia: TDBEdit;
    DBNR_Agencia: TDBEdit;
    DBConta: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    BtCodBanco: TBitBtn;
    BtCodAgencia: TBitBtn;
    OQry_FornID_BANCO: TFloatField;
    OQry_FornID_AGENBANC: TFloatField;
    OQry_FornNR_CONTA: TStringField;
    OQry_FornNM_BANCO: TStringField;
    OQry_FornNR_AGENBANC: TStringField;
    OQry_FornNM_AGENBANC: TStringField;
    DBAgencia: TDBEdit;
    QryCidade: TOraQuery;
    DtSrcCidade: TOraDataSource;
    QryCidadeID_CIDADE: TFloatField;
    QryCidadeNM_CIDADE: TStringField;
    QryCidadeID_ESTADO: TFloatField;
    QryCidadeSG_ESTADO: TStringField;
    QryCidadeNM_REGIGEOG: TStringField;
    QryCidadeID_REGIGEOG: TFloatField;
    QryCidadeNM_PAIS: TStringField;
    QryCidadeID_PAIS: TFloatField;
    Tab_Motorista: TTabSheet;
    QrMotorista: TOraQuery;
    DsMotorista: TOraDataSource;
    QrMotoristaEMPRESA: TStringField;
    QrMotoristaFILIAL: TIntegerField;
    QrMotoristaID_MOTOTRAN: TFloatField;
    QrMotoristaIE_MOTOTRAN: TStringField;
    QrMotoristaID_INTEMOTOTRAN: TFloatField;
    QrMotoristaID_FORNECEDOR_TRANSPORTADOR: TFloatField;
    QrMotoristaNM_MOTOTRAN: TStringField;
    QrMotoristaNM_REDUMOTOTRAN: TStringField;
    QrMotoristaID_TIPOLOGR: TFloatField;
    QrMotoristaSG_TIPOLOGR: TStringField;
    QrMotoristaNM_LOGRMOTOTRAN: TStringField;
    QrMotoristaNR_LOGRMOTOTRAN: TStringField;
    QrMotoristaGN_COMPENDEMOTOTRAN: TStringField;
    QrMotoristaNM_BAIRMOTOTRAN: TStringField;
    QrMotoristaNR_CEPMOTOTRAN: TStringField;
    QrMotoristaID_CIDADE: TFloatField;
    QrMotoristaNM_CIDADE: TStringField;
    QrMotoristaSG_ESTADO: TStringField;
    QrMotoristaNR_CPFMOTOTRAN: TStringField;
    QrMotoristaNR_RGMOTOTRAN: TStringField;
    QrMotoristaNR_ORGAEXPERGMOTOTRAN: TStringField;
    QrMotoristaNR_FONEMOTOTRAN: TStringField;
    QrMotoristaNR_CELUMOTOTRAN: TStringField;
    QrMotoristaGN_EMAIMOTOTRAN: TStringField;
    QrMotoristaDT_NASCMOTOTRAN: TDateTimeField;
    QrMotoristaDT_CADAMOTOTRAN: TDateTimeField;
    QrMotoristaDT_ALTEMOTOTRAN: TDateTimeField;
    QrMotoristaFL_ATIVMOTOTRAN: TStringField;
    QrMotoristaGN_OBSEMOTOTRAN: TStringField;
    QrMotoristaNR_FAXMOTOTRAN: TStringField;
    QrMotoristaGN_EMAICELUMOTOTRAN: TStringField;
    QrMotoristaGN_PAGEMOTOTRAN: TStringField;
    QrMotoristaGN_URLMOTOTRAN: TStringField;
    QrMotoristaFX_MOTOTRAN: TStringField;
    Label35: TLabel;
    DBEdit30: TDBEdit;
    QrVeiculosQT_GAIOLAS: TIntegerField;
    Panel8: TPanel;
    BtCenCus: TBitBtn;
    DBATIVO: TDBCheckBox;
    DBBloqueio: TDBCheckBox;
    LblConDtNas: TLabel;
    DBConDtNas: TDBEdit;
    Lbl_ConDtCad: TLabel;
    DBConDtCad: TDBEdit;
    Bit_DtNasc: TBitBtn;
    Bit_DtCad: TBitBtn;
    DBConDdi: TDBEdit;
    DBConDdd: TDBEdit;
    DBConTel: TDBEdit;
    DBConRam: TDBEdit;
    GroupBox3: TGroupBox;
    DBMConObs: TDBMemo;
    DBCBAtivo: TDBCheckBox;
    Label30: TLabel;
    edtCodiVeic: TDBEdit;
    Panel7: TPanel;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit18: TDBEdit;
    Label24: TLabel;
    DBEdit19: TDBEdit;
    Label25: TLabel;
    DBEdit20: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label26: TLabel;
    DBEdit21: TDBEdit;
    Label27: TLabel;
    DBEdit22: TDBEdit;
    btn_CidMotorista: TBitBtn;
    DBEdit23: TDBEdit;
    DBEdit29: TDBEdit;
    Label28: TLabel;
    DBEdit24: TDBEdit;
    Label19: TLabel;
    Label32: TLabel;
    DBEdit25: TDBEdit;
    Label33: TLabel;
    DBEdit26: TDBEdit;
    Label34: TLabel;
    DBEdit27: TDBEdit;
    Label37: TLabel;
    DBEdit28: TDBEdit;
    BitBtn6: TBitBtn;
    DBCheckBox2: TDBCheckBox;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    grpModeloCarroceria: TDBRadioGroup;
    QrVeiculosOP_MODELO: TStringField;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    QrVeiculosQT_CAIXAS: TStringField;
    Label12: TLabel;
    edtVlFreteFixado: TDBEdit;
    QrVeiculosVL_FRETEFIXADO: TFloatField;
    QrVeiculosNR_ULTIMO_KM: TFloatField;
    DBRadioGroup1: TDBRadioGroup;
    QrVeiculosFL_DIESEL: TStringField;
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    procedure FormShow(Sender: TObject);
    Function  Bot_Flat(Botao:Integer):string;
    procedure SB_EDITClick(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure EdExprChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BtCenCusClick(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure SB_CANCELMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_CONFIRMAMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_EDITMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_EXCLUIMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_NOVOMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_ULTIMOMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_PROXIMOMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_ANTERIORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_PRIMEIROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure DBNOMFORKeyPress(Sender: TObject; var Key: Char);
    procedure DBNMFANKeyPress(Sender: TObject; var Key: Char);
    procedure DBLogradKeyPress(Sender: TObject; var Key: Char);
    procedure DBComplKeyPress(Sender: TObject; var Key: Char);
    procedure DBCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure DBBairroKeyPress(Sender: TObject; var Key: Char);
    procedure DBEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure DBPaisKeyPress(Sender: TObject; var Key: Char);
    procedure DBRGeogKeyPress(Sender: TObject; var Key: Char);
    procedure DBLst_ComMensKeyPress(Sender: TObject; var Key: Char);
    procedure DBLst_ComObsKeyPress(Sender: TObject; var Key: Char);
    procedure DBConNomKeyPress(Sender: TObject; var Key: Char);
    procedure DBLstConObsKeyPress(Sender: TObject; var Key: Char);
    procedure DBConForKeyPress(Sender: TObject; var Key: Char);
    procedure DBConFanKeyPress(Sender: TObject; var Key: Char);
    procedure EdExprKeyPress(Sender: TObject; var Key: Char);
    procedure DBNomRedKeyPress(Sender: TObject; var Key: Char);
    procedure DBPessoaExit(Sender: TObject);
    procedure DBLTplogKeyPress(Sender: TObject; var Key: Char);
    procedure DBNumKeyPress(Sender: TObject; var Key: Char);
    procedure DBCepKeyPress(Sender: TObject; var Key: Char);
    procedure DBCxpstKeyPress(Sender: TObject; var Key: Char);
    procedure DBCeppstKeyPress(Sender: TObject; var Key: Char);
    procedure DBTELKeyPress(Sender: TObject; var Key: Char);
    procedure DBFAXKeyPress(Sender: TObject; var Key: Char);
    procedure DBHPageKeyPress(Sender: TObject; var Key: Char);
    procedure DBEmailKeyPress(Sender: TObject; var Key: Char);
    procedure DBRGKeyPress(Sender: TObject; var Key: Char);
    procedure DBExpKeyPress(Sender: TObject; var Key: Char);
    procedure DBCpfKeyPress(Sender: TObject; var Key: Char);
    procedure DBCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure DBInsesKeyPress(Sender: TObject; var Key: Char);
    procedure DBInsestKeyPress(Sender: TObject; var Key: Char);
    procedure DBDTForKeyPress(Sender: TObject; var Key: Char);
    procedure DBDtCadKeyPress(Sender: TObject; var Key: Char);
    procedure DBLTpForKeyPress(Sender: TObject; var Key: Char);
    procedure DBLTpVdKeyPress(Sender: TObject; var Key: Char);
    procedure DBLAtvEconKeyPress(Sender: TObject; var Key: Char);
    procedure DBLAtivoKeyPress(Sender: TObject; var Key: Char);
    procedure DBLbloqKeyPress(Sender: TObject; var Key: Char);
    procedure DBLCFOPKeyPress(Sender: TObject; var Key: Char);
    procedure DBLForPagKeyPress(Sender: TObject; var Key: Char);
    procedure DBLCtaKeyPress(Sender: TObject; var Key: Char);
    procedure DBLTratforKeyPress(Sender: TObject; var Key: Char);
    procedure DBSexoKeyPress(Sender: TObject; var Key: Char);
    procedure DBLDptoKeyPress(Sender: TObject; var Key: Char);
    procedure DBLCargoKeyPress(Sender: TObject; var Key: Char);
    procedure DBConPagKeyPress(Sender: TObject; var Key: Char);
    procedure DBConEmailKeyPress(Sender: TObject; var Key: Char);
    procedure DBConDdiKeyPress(Sender: TObject; var Key: Char);
    procedure DBConDddKeyPress(Sender: TObject; var Key: Char);
    procedure DBConTelKeyPress(Sender: TObject; var Key: Char);
    procedure DBConRamKeyPress(Sender: TObject; var Key: Char);
    procedure DBFxDDiKeyPress(Sender: TObject; var Key: Char);
    procedure DBFxDddKeyPress(Sender: TObject; var Key: Char);
    procedure DBFxTelKeyPress(Sender: TObject; var Key: Char);
    procedure DBConDtNasKeyPress(Sender: TObject; var Key: Char);
    procedure DBConDtCadKeyPress(Sender: TObject; var Key: Char);
    procedure Bit_DtNascClick(Sender: TObject);
    procedure Bit_DtCadClick(Sender: TObject);
    procedure DBMMensKeyPress(Sender: TObject; var Key: Char);
    procedure DBMObsKeyPress(Sender: TObject; var Key: Char);
    procedure DBMConObsKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBNascKeyPress(Sender: TObject; var Key: Char);
    procedure DBConDtNasExit(Sender: TObject);
    procedure DBFxRamKeyPress(Sender: TObject; var Key: Char);
    procedure DBConDtCadChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBNascExit(Sender: TObject);
    procedure DBConDtNasEnter(Sender: TObject);
    procedure DBDTForExit(Sender: TObject);
    procedure DBDTForEnter(Sender: TObject);
    procedure DBRPessoaExit(Sender: TObject);
    procedure BtCenCusKeyPress(Sender: TObject; var Key: Char);
    procedure DBCpfExit(Sender: TObject);
    procedure DBCNPJExit(Sender: TObject);
    procedure TabDetalheShow(Sender: TObject);
    procedure DBRPessoaChange(Sender: TObject);
    procedure LDcomponentes(LD:boolean);
    procedure TabCriterioShow(Sender: TObject);
    procedure DBGrd_CadFornTitleClick(Column: TColumn);
    procedure BtCodBancoClick(Sender: TObject);
    procedure BtCodAgenciaClick(Sender: TObject);
    procedure DBCodCidExit(Sender: TObject);
    procedure btn_CidMotoristaClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGrd_CadFornDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrdConDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TabVeiculosShow(Sender: TObject);
//    procedure QrVeiculosAfterPost(DataSet: TDataSet);
    procedure QrVeiculosBeforePost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    Vdtstr,VSexo, VCid, NCid, NSg, NEst, NPais, NReg, Npas, NFan:String;
    NRed, VFOR, NFor, NEND, NCEP, NFONE, NMBanco, VBanco: string;
    SELPE: integer;
    VCODAG,VNMAG,VNRAG,VNRBANCO,VNMBANCO:STRING;
    VCCFin:Boolean;
  end;

var
  FrmCadTransport: TFrmCadTransport;

implementation

uses Principal, UFrmPesqCid, UFrmSeldata, UFrmPesqFor, GLOBAL,
     UFrmPesqPais, Math, UFrmPesqBanco, UFrmPesqAgencia;

{$R *.dfm}


procedure TFrmCadTransport.SB_PRIMEIROClick(Sender: TObject);
begin
if (TabContato.Showing) then
  QrContato.First
Else
  OQry_Forn.First;
end;

procedure TFrmCadTransport.SB_ANTERIORClick(Sender: TObject);
begin
if (TabContato.Showing) then
  QrContato.Prior
Else
  OQry_Forn.Prior;
end;

procedure TFrmCadTransport.SB_PROXIMOClick(Sender: TObject);
begin
if (TabContato.Showing) then
  QrContato.Next
Else
  OQry_Forn.Next;
end;

procedure TFrmCadTransport.SB_ULTIMOClick(Sender: TObject);
begin
if (TabContato.Showing) then
  QrContato.Last
Else
  OQry_Forn.Last;
end;

procedure TFrmCadTransport.SB_NOVOClick(Sender: TObject);
begin
if (gi_Filial = 2) or (gi_filial = 8) then
  begin
  MessageDlg('Para Edição ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
  Screen.Cursor := crDefault;
  Exit;
  end;

 ActiveControl := Nil;
 LDcomponentes(True);

 if (TabVeiculos.Showing) then
 begin
   QrVeiculos.Insert;
   QrVeiculosEMPRESA.Value := gs_Empresa;
   QrVeiculosFILIAL.Value  := gi_filial;
   QrVeiculosID_FORNECEDOR_TRANSPORTADOR.Value := OQry_FornID_FORNECEDOR.Value;
   QrVeiculosFX_VEICTRAN.Value := 'N';
   //Direito de Editar
   QrDireitos.Close;
   QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
   QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
   QrDireitos.Open;
   If (QrDireitos.IsEmpty) then
   begin
     //Tipo de veiculo
     QrVeiculosID_TIPOVEIC.AsFloat := 13;
     DBLookupComboBox1.Enabled := False;
     //Fator frete
     QrVeiculosQN_FATOFRETABATVEICTRAN.AsFloat := 1;
     DBEdit3.Enabled := False;
   end;
   PageControl2.Pages[01].TabVisible := False;
   PageControl2.Pages[00].TabVisible := False;
   PageControl2.Pages[02].TabVisible := False;
   PageControl2.Pages[03].TabVisible := False;
   PageControl2.Pages[04].TabVisible := False;
   PageControl2.Pages[05].TabVisible := True;
   PageControl2.Pages[06].TabVisible := False;
   PageControl2.Pages[07].TabVisible := False;
   TabVeiculos.Show;
//   edtCodiExteVeic.SetFocus;
 end
 else if (TabContato.Showing) then
 begin
   QrContato.open;
   QrContato.Insert;
   QrContatoEMPRESA.Value := gs_Empresa;
   QrContatoFILIAL.Value  := gi_filial;
   QrContatoID_FORNECEDOR.Value := OQry_FornID_FORNECEDOR.Value;
   QrContatoDT_CADACONTFORN.Value := Date();
   QrContatoFX_CONTFORN.Value := 'N';
   PageControl2.Pages[01].TabVisible := False;
   PageControl2.Pages[00].TabVisible := False;
   PageControl2.Pages[02].TabVisible := False;
   PageControl2.Pages[03].TabVisible := False;
   PageControl2.Pages[04].TabVisible := True;
   PageControl2.Pages[05].TabVisible := False;
   PageControl2.Pages[06].TabVisible := False;
   PageControl2.Pages[07].TabVisible := False;

 end
 else if (Tab_Motorista.Showing) then
 begin
     QrMotorista.Open;
     QrMotorista.Insert;
     QrMotoristaEMPRESA.Value := gs_Empresa;
     QrMotoristaFILIAL.Value  := gi_filial;
     QrMotoristaID_FORNECEDOR_TRANSPORTADOR.Value := OQry_FornID_FORNECEDOR.Value;
     QrMotoristaFX_MOTOTRAN.Value := 'N';
     QrMotoristaDT_CADAMOTOTRAN.Value := Date();
     QrMotoristaDT_ALTEMOTOTRAN.Value := Date();
     QrMotoristaFL_ATIVMOTOTRAN.Value := 'S';

     PageControl2.Pages[01].TabVisible := False;
     PageControl2.Pages[00].TabVisible := False;
     PageControl2.Pages[02].TabVisible := False;
     PageControl2.Pages[03].TabVisible := False;
     PageControl2.Pages[04].TabVisible := False;
     PageControl2.Pages[05].TabVisible := False;
     PageControl2.Pages[06].TabVisible := False;
     PageControl2.Pages[07].TabVisible := True;
     DBEdit12.SetFocus;
 end
 else
 begin
   PageControl2.Pages[01].TabVisible := False;
   PageControl2.Pages[00].TabVisible := False;
   PageControl2.Pages[02].TabVisible := True;
   PageControl2.Pages[03].TabVisible := True;
   PageControl2.Pages[04].TabVisible := False;
   PageControl2.Pages[05].TabVisible := False;
   PageControl2.Pages[06].TabVisible := False;
   PageControl2.Pages[07].TabVisible := False;
   TabDetalhe.Show;
   OQry_Forn.Insert;
   OQry_FornEMPRESA.Value := gs_Empresa;
   OQry_FornFILIAL.Value  := gi_Filial;
   OQry_FornCOD_FUNC.Value := gi_IdenUsua;
   OQry_FornDT_PRIMCOMPFORN.Value := Date();
   OQry_FornDT_CADAFORN.Value := Date();
   OQry_FornDT_ALTEFORN.Value := Date();
   OQry_FornID_TRATFORN.Value := 2;
   OQry_FornFL_ATIVFORN.Value := 'S';
   OQry_FornFL_BLOQADMIFORN.Value := 'N';
   OQry_FornFX_FORNECEDOR.Value := 'N';

   //Direito de Editar
   QrDireitos.Close;
   QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
   QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
   QrDireitos.Open;
   If (QrDireitos.IsEmpty) then
   begin
     //Autonomo
     OQry_FornFL_TRANAUTOFORN.AsString := 'N';
     DBCheckBox1.Enabled := False;
   end;
 end;

 Atual_ToolBar(5);

end;

Function TFrmCadTransport.Bot_Flat(Botao:Integer):string;
begin
 SB_PROXIMO.Flat  := True;
 SB_ANTERIOR.Flat := True;
 SB_ULTIMO.Flat   := True;
 SB_PRIMEIRO.Flat := True;
 SB_NOVO.Flat     := True;
 SB_EXCLUI.Flat   := True;
 SB_EDIT.Flat     := True;
 SB_CONFIRMA.Flat := True;
 SB_CANCEL.Flat   := True;
 Sb_Sair.Flat     := True;

 If Botao= 1 then SB_PRIMEIRO.Flat := False;
 If Botao= 2 then SB_ANTERIOR.Flat := False;
 If Botao= 3 then SB_PROXIMO.Flat  := False;
 If Botao= 4 then SB_ULTIMO.Flat   := False;
 If Botao= 5 then SB_NOVO.Flat     := False;
 If Botao= 6 then SB_EXCLUI.Flat   := False;
 If Botao= 7 then SB_EDIT.Flat     := False;
 If Botao= 8 then SB_CONFIRMA.Flat := False;
 If Botao= 9 then SB_CANCEL.Flat   := False;
 If Botao=10 then SB_Sair.Flat     := False;

end;

procedure TFrmCadTransport.FormShow(Sender: TObject);
var
  Temp: TComponent;
  li_Loop : Integer;
begin
 if (LCAMPOS.Items.Count=0) then
 begin
   With LCampos.Items do
   begin
     Add('Código do Fornecedor  ');
     Add('Nome Fornecedor  ');
     Add('Nome Fantasia  ');
     Add('CPF   ');
     Add('CNPJ  ');
     Add('Código da Cidade  ');
     Add('Cidade  ');
     Add('Bairro  ');
     Add('Código País  ');
     Add('País  ');
     Add('U.F. ');
     Add('Cód. Região Geográfica  ');
     Add('Atividade Econômica  ');
     Add('Data do Cadastro  ');
     Add('Flag Pessoa (F/J) ');
     Add('Tipo Fornecedor ');
     Add('Tipo Venda ');
     Add('Flag Ativo (S/N) ');
     Add('Flag Bloqueio Admin. (S/N) ');
     Add('CFOP ');
     Add('Código Contábil ');
     Add('Código do Funcionário ');
     Add('Placa do Veículo ');
     Add('Autônomo (S/N) ');
   end;
 end;

 PageControl2.Pages[1].TabVisible:= False;
 PageControl2.Pages[2].TabVisible:= False;
 PageControl2.Pages[3].TabVisible:= False;
 PageControl2.Pages[4].TabVisible:= False;
 PageControl2.Pages[5].TabVisible := False;
 PageControl2.Pages[6].TabVisible := False;
 PageControl2.Pages[7].TabVisible := False;

 // Loop para todos os componentes da janela
 For li_Loop :=0 to ComponentCount - 1  do
 begin
   Temp := Components[li_Loop];
   if (Temp is TDBlookupCOMBOBOX) then
     TScrollBox(temp).ScaleBy(100,100);
 end;
 SB_PRIMEIRO.Enabled := False;
 SB_ANTERIOR.Enabled := False;
 SB_PROXIMO.enabled := False;
 SB_ULTIMO.enabled := False;
 SB_NOVO.Enabled := False;
 SB_EXCLUI.Enabled := False;
 SB_CONFIRMA.Enabled := False;
 SB_CANCEL.Enabled := False;
 SB_EDIT.Enabled := False;
end;

function TFrmCadTransport.Atual_ToolBar(BtOrdem: Integer): string;
begin
 CASE BtOrdem of
   1:begin
    SB_NOVO.Enabled := False;
    SB_EDIT.Enabled := False;
    SB_EXCLUI.Enabled := False;
    SB_CONFIRMA.Enabled := False;
    SB_CANCEL.Enabled := False;
    SB_PRIMEIRO.Enabled := True;
    SB_ANTERIOR.Enabled := True;
    SB_PROXIMO.Enabled := True;
    SB_ULTIMO.Enabled := True;
   end;
   2:begin
    SB_NOVO.Enabled := False;
    SB_EDIT.Enabled := True;
    SB_EXCLUI.Enabled := False;
    SB_CONFIRMA.Enabled := False;
    SB_CANCEL.Enabled := False;
    SB_PRIMEIRO.Enabled := True;
    SB_ANTERIOR.Enabled := True;
    SB_PROXIMO.Enabled := True;
    SB_ULTIMO.Enabled := True;
   end;
   5,7:begin
    SB_NOVO.Enabled := False;
    SB_EDIT.Enabled := False;
    SB_EXCLUI.Enabled := False;
    SB_CONFIRMA.Enabled := TRUE;
    SB_CANCEL.Enabled := TRUE;
    SB_PRIMEIRO.Enabled := False;
    SB_ANTERIOR.Enabled := False;
    SB_PROXIMO.Enabled := False;
    SB_ULTIMO.Enabled := False;

   end;
   6,8..9:begin
    SB_NOVO.Enabled := True;
    SB_EDIT.Enabled := True;
    SB_EXCLUI.Enabled := True;
    SB_CONFIRMA.Enabled := FALSE;
    SB_CANCEL.Enabled := FALSE;
    SB_PRIMEIRO.Enabled := True;
    SB_ANTERIOR.Enabled := True;
    SB_PROXIMO.Enabled := True;
    SB_ULTIMO.Enabled := True;
   end;
  end;
end;

procedure TFrmCadTransport.SB_CANCELClick(Sender: TObject);
begin
  if (OQry_Forn.State in [dsedit,dsinsert]) then
    OQry_Forn.CancelUpdates;
  if (OQry_Cid.State in [dsedit,dsinsert]) then
    OQry_Cid.CancelUpdates;
  if (OQry_TpVenda.State in [dsedit,dsinsert]) then
    OQry_TpVenda.CancelUpdates;
  if (QrContato.State in [dsedit,dsinsert]) then
    QrContato.CancelUpdates;
  if (QrVeiculos.State in [dsedit,dsinsert]) then
    QrVeiculos.CancelUpdates;
  if (QrMotorista.State in [dsedit,dsinsert]) then
  begin
      QrMotorista.Cancel;
      QrMotorista.CancelUpdates;
  end;

 PageControl2.Pages[0].TabVisible:= True;
 PageControl2.Pages[1].TabVisible:= True;
 PageControl2.Pages[2].TabVisible:= True;
 PageControl2.Pages[3].TabVisible:= True;
 PageControl2.Pages[4].TabVisible:= True;
 PageControl2.Pages[5].TabVisible:= True;
 if VCCFin then
   PageControl2.Pages[6].TabVisible:= True;
 PageControl2.Pages[7].TabVisible:= True;

 //Direito a aba C/C Forn.
 QrDireitos.Close;
 QrDireitos.ParamByName('VRECUR').AsInteger   := 45;
 QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
 QrDireitos.Open;
 If (QrDireitos.RecordCount>0) then
 begin
   PageControl2.Pages[6].TabVisible := True;
   VCCFin:=True;
 end
 else
 begin
   PageControl2.Pages[6].TabVisible := False;
   VCCFin:= False;
 end;

  Atual_ToolBar(1);

 //Direito de Editar
 QrDireitos.Close;
 QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
 QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
 QrDireitos.Open;
 If (QrDireitos.RecordCount>0) then
   Atual_ToolBar(2);

 //Direito a Incluir
 QrDireitos.Close;
 QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
 QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
 QrDireitos.Open;
 If (QrDireitos.RecordCount>0) then
   Atual_ToolBar(9);

 LDcomponentes(False);
end;


procedure TFrmCadTransport.SB_EDITClick(Sender: TObject);
begin
if (gi_Filial = 2) or (gi_filial = 8) then
  begin
  MessageDlg('Para Edição ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
  Screen.Cursor := crDefault;
  Exit;
  end;

 LDcomponentes(True);
 if (TabDetalhe.Showing) or (TabComplemento.Showing) or (TabFin.Showing)  then
 begin
   OQry_Forn.Edit;
   //Direito de Editar
   QrDireitos.Close;
   QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
   QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
   QrDireitos.Open;
   If (QrDireitos.IsEmpty) then
   begin
     //Autonomo
     DBCheckBox1.Enabled := False;
   end;
 end
 else if (TabContato.Showing) then
 begin
   QrContato.Edit;
 end
 else if (TabVeiculos.Showing) then
 begin
   QrVeiculos.Edit;
   //Direito de Editar
   QrDireitos.Close;
   QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
   QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
   QrDireitos.Open;
   If (QrDireitos.IsEmpty) then
   begin
     //Tipo de veiculo
     DBLookupComboBox1.Enabled := False;
     //Fator frete
     DBEdit3.Enabled := False;
     //Placa Veiculo
     edtPlacVeic.Enabled := True;
   end;
 end
 else if (Tab_Motorista.Showing) then
 begin
      QrMotorista.Edit;
      QrMotoristaDT_ALTEMOTOTRAN.Value := Now();
 end;
 Atual_ToolBar(7);
end;

procedure TFrmCadTransport.SB_EXCLUIClick(Sender: TObject);
begin
if (gi_Filial = 2) or (gi_filial = 8) then
  begin
  MessageDlg('Para Edição, Exclusão ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
  Screen.Cursor := crDefault;
  Exit;
  end;

  If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
   if (TabVeiculos.Showing) then
   begin
     with QryTemp  do
     begin
       Close;
       SQL.Clear;
       SQL.Text := 'select                              '+
                   '        id_cargexpe                   '+
                   '  from  expedicao_carga                 '+
                   ' where  gn_placveictran = :vplaca  and  '+
                   '        id_itemprogcami = :vforn        ';
       ParamByName('vplaca').AsString := QrVeiculosGN_PLACVEICTRAN.AsString;
       ParamByName('vforn').AsFloat := QrVeiculosID_FORNECEDOR_TRANSPORTADOR.AsFloat;
       Open;
       if not (IsEmpty) then
       begin
         MessageDlg('Exclusão não permitida, existe carga montada com este veículo.',mtConfirmation, [mbYes, mbNo], 0, mbYes);
         exit;
       end;
     end;

     QrVeiculos.Delete;
     QrVeiculos.ApplyUpdates;
     QrVeiculos.CommitUpdates;
     QrVeiculos.Refresh;
   end
   else if (TabContato.Showing) then
   begin
     QrContato.Delete;
     QrContato.ApplyUpdates;
     QrContato.CommitUpdates;
     QrContato.Refresh;
   end
   else if (Tab_Motorista.Showing) then
   begin
        QrMotorista.Delete;
        QrMotorista.ApplyUpdates;
        QrMotorista.CommitUpdates;
        QrMotorista.Refresh;
   end
   else
   begin
     with QryTemp  do
     begin
       Close;
       SQL.Clear;
       SQL.Text := 'select                              '+
                   '        id_titupag                  '+
                   '  from  ca_titupag                  '+
                   ' where  pcodiforn = '+ FloatToStr(OQry_FornID_FORNECEDOR.Value);
       Open;
       if not (IsEmpty) then
       begin
         MessageDlg('Exclusão não permitida, existe lançamento no financeiro deste fornecedor.',mtConfirmation, [mbYes, mbNo], 0, mbYes);
         exit;
       end;
     end;

     OQry_Forn.Delete;
     OQry_Forn.ApplyUpdates;
     OQry_Forn.CommitUpdates;
     OQry_Cid.CommitUpdates;
     OQry_Lograd.CommitUpdates;
     Qry_Tratfor.CommitUpdates;
     Qry_PlaCta.CommitUpdates;
     Qry_Cfop.CommitUpdates;
     DBGrd_CadForn.Refresh;
   end;
  end;

  //Direito a aba C/C Forn.
 QrDireitos.Close;
 QrDireitos.ParamByName('VRECUR').AsInteger   := 45;
 QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
 QrDireitos.Open;
 If (QrDireitos.RecordCount>0) then
 begin
   PageControl2.Pages[6].TabVisible := True;
   VCCFin:=True;
 end
 else
 begin
   PageControl2.Pages[6].TabVisible := False;
   VCCFin:= False;
 end;

 Atual_ToolBar(1);

 //Direito de Editar
 QrDireitos.Close;
 QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
 QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
 QrDireitos.Open;
 If (QrDireitos.RecordCount>0) then
   Atual_ToolBar(2);

 //Direito a Incluir
 QrDireitos.Close;
 QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
 QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
 QrDireitos.Open;
 If (QrDireitos.RecordCount>0) then
   Atual_ToolBar(9);

end;


procedure TFrmCadTransport.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmCadTransport.EdExprChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmCadTransport.BitBtn2Click(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  DBDTFor.text:= Vdtstr;
  DBDTFor.SetFocus;
end;

procedure TFrmCadTransport.BitBtn4Click(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  DBDtAlt.text:= Vdtstr;
end;



procedure TFrmCadTransport.BtCenCusClick(Sender: TObject);
begin
  Cria_FrmPesqCid(VCid, NCid, NEst, NPais, NReg);
  DBCodCid.text:= VCid;
  DBCidade.Text := NCid;
  DBEstado.Text := NEst;
  DBPais.Text := NPais;
  DBRGeog.Text := NReg;
  DBCidade.SetFocus;


end;
procedure TFrmCadTransport.Sb_SairClick(sender: tObject);
begin
   OQry_Forn.Close;
   Qry_Tratfor.Close;
   OQry_Cid.Close;
   OQry_Lograd.Close;
   QrContato.Close;
   Qry_PlaCta.Close;
   Qry_Cfop.close;
   OQry_TpVenda.Close;
   Qry_FrPag.Close;
   Close;
end;
procedure TFrmCadTransport.LCamposClick(Sender: TObject);
begin
  SELPE:=0;
  CASE LCAMPOS.ItemIndex OF
        0:SELPE:=1;
        5:SELPE:=2;
       13:SELPE:=3;
 //     14:SELPE:=4;
  END;
  IF SELPE>0 then
    BPESQ.Visible:=TRUE;
end;


procedure TFrmCadTransport.BtIncluirClick(Sender: TObject);
var
   Vre,Vlinha:String;
   Vcampos,FA,FO:integer;
begin
  If EdExpr.Text<>'' then
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

    //VERIFICAR SE COLOCA PARENTESES ANTES DO OR
    If RGeou.ItemIndex=0  then
       Vre:= Vre + '(' ;

   //Alterar nomes

     Case LCampos.itemindex of
        0:Vre:=Vre + '  fornecedor.id_fornecedor  ';
        1:Vre:=Vre + '  Upper(fornecedor.nm_fornecedor)  ';
        2:Vre:=Vre + '  Upper(fornecedor.nm_fantforn) ';
        3:Vre:=Vre + '  fornecedor.nr_cpfforn ';
        4:Vre:=Vre + '  fornecedor.nr_cnpjforn ';
        5:Vre:=Vre + '  cidade.id_cidade ';
        6:Vre:=Vre + '  Upper(cidade.nm_cidade) ';
        7:Vre:=Vre + '  Upper(fornecedor.nm_bairforn) ';
        8:Vre:=Vre + '  pais.id_pais ';
        9:Vre:=Vre + '  Upper(pais.nm_pais) ';
       10:Vre:=Vre + '  Upper(estado.sg_estado) ';
       11:Vre:=Vre + '  regiao_geografica.id_regigeog ';
       12:Vre:=Vre + '  Upper(atividade_economica.nm_ativecon) ';
       13:Vre:=Vre + '  trunc(fornecedor.dt_cadaforn) ';
       14:Vre:=Vre + '  fornecedor.fl_pessforn ';
       15:Vre:=Vre + '  fornecedor_tipo.id_tipoforn  ';
       16:Vre:=Vre + '  fornecedor.id_tipovend ';
       17:Vre:=Vre + '  fornecedor.fl_ativforn ';
       18:Vre:=Vre + '  fornecedor.fl_bloqadmiforn ';
       19:Vre:=Vre + '  fornecedor.cfop ';
       20:Vre:=Vre + '  fornecedor.ctb ';
       21:Vre:=Vre + '  fornecedor.cod_func ';
       22:Vre:=Vre + '  transportador_veiculo.gn_placveictran  ';
       23:Vre:=Vre + '  NVL(fornecedor.fl_tranautoforn,''N'')  ';
     end;

     Case CBCond.ItemIndex of
       0: Vre:=Vre + ' =  ';
       1: Vre:=Vre + ' <> ';
       2: Vre:=Vre + ' >  ';
       3: Vre:=Vre + ' >= ';
       4: Vre:=Vre + ' <  ';
       5: Vre:=Vre + ' <= ';
       6: Vre:=Vre + ' Like ';
     end;

     Case LCampos.itemindex of
        1..4:Vre:= Vre + '''';
        6..7:Vre:= Vre + '''';
       9..10:Vre:= Vre + '''';
          12:Vre:= Vre + '''';
          13:Vre:= Vre + 'TO_DATE(''';
          14:Vre:= Vre + '''';
      17..20:Vre:= Vre + '''';
      22..23:Vre:= Vre + '''';
    end;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

      Vre:=Vre + UpperCase(EdExpr.text);

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

     Case LCampos.itemindex of
         1..4:Vre:= Vre + '''';
         6..7:Vre:= Vre + '''';
        9..10:Vre:= Vre + '''';
           12:Vre:= Vre + '''';
           13:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY''' +')';
           14:Vre:= Vre + '''';
       17..20:Vre:= Vre + '''';
       22..23:Vre:= Vre + '''';
     end;

     Vre:=Vre+')';

     MResul.Lines.Add(Vre);

     EdExpr.Text :='';
     BtIncluir.Enabled :=false;

   end;


   BtAtivar.SetFocus;
end;

procedure TFrmCadTransport.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin

  Screen.Cursor := crSQLWait;
  OQry_Forn.Close;

  WITH OQry_Forn.SQL DO
  BEGIN
    Clear;
    Add(' SELECT DISTINCT ');
    Add(' fornecedor.nm_fornecedor, fornecedor.ie_fornecedor, fornecedor.ie_contcont, fornecedor.gn_orgaexpergforn, fornecedor.gn_compendeforn, fornecedor.gn_menscompforn,');
    Add(' fornecedor.fl_emitctrforn, fornecedor.fx_fornecedor, fornecedor.fl_bloqadmiforn, fornecedor.nm_fantforn, fornecedor.nm_reduforn, fornecedor.fl_pessforn, ');
    Add(' fornecedor.nr_cnpjforn, fornecedor.nr_rgforn, fornecedor.nr_logrforn, fornecedor.nm_logrforn, fornecedor.id_tratforn,');
    Add(' fornecedor.nr_cpfforn, fornecedor.nr_inscprodforn, fornecedor.nr_inscestaforn, fornecedor.dt_cadaforn, fornecedor.dt_nascforn, ');
    Add(' fornecedor.gn_emaiforn, fornecedor.nr_caixpostforn, fornecedor.gn_urlforn, fornecedor.dt_alteforn, fornecedor.dt_primcompforn, ');
    Add(' fornecedor.nr_cepcaixpostforn, fornecedor.nr_cepforn, fornecedor.nr_foneforn, fornecedor.nr_faxforn, fornecedor.nr_fonecompforn, ');
    Add(' fornecedor.id_cidade, fornecedor.empresa, fornecedor.filial, fornecedor.filial_func, fornecedor.ctb, fornecedor.cod_func, ');
    Add(' fornecedor.fl_ativforn, fornecedor.id_fornecedor, fornecedor.id_inteforn, fornecedor.id_formpaga, fornecedor.fl_tranautoforn, ');
    Add(' fornecedor.gn_obseforn, fornecedor.nm_bairforn, cidade.nm_cidade, cidade.nr_dddcida, estado.sg_estado, pais.nm_pais, ');
    Add(' logradouro_tipo.id_tipologr, atividade_economica.nm_ativecon, atividade_economica.id_ativecon, fornecedor_tratamento.nm_tratforn, ');
    Add(' fornecedor_tratamento.id_tratforn, fornecedor_tipo.id_tipoforn, fornecedor.cfop, cargo.id_cargo, fornecedor.id_tipovend, ');
    Add(' venda_tipo.id_tipovend, tratamento_pessoal.id_tratpess, departamento.id_departamento, fornecedor_contato.id_fornecedor,');
    Add(' fornecedor.fl_cfop, FORNECEDOR.ID_BANCO, FORNECEDOR.ID_AGENBANC, FORNECEDOR.NR_CONTA, BANCO.NM_BANCO, ');
    Add(' BANCO_AGENCIA.NR_AGENBANC, BANCO_AGENCIA.NM_AGENBANC ');

    Add(' FROM                            ');
    Add(' FORNECEDOR, CIDADE, FORNECEDOR_TRATAMENTO, FORNECEDOR_TIPO,');
    Add(' ESTADO, PAIS, ATIVIDADE_ECONOMICA, FORNECEDOR_CONTATO, FORMA_PAGAMENTO,');
    Add(' LOGRADOURO_TIPO, TRATAMENTO_PESSOAL, CARGO, VENDA_TIPO, DEPARTAMENTO,');
    Add(' TRANSPORTADOR_VEICULO, CA_PLANO_CONTAS, BANCO, BANCO_AGENCIA ');

    Add(' WHERE     ');
    Add(' FORNECEDOR.ID_FORNECEDOR = FORNECEDOR_CONTATO.ID_FORNECEDOR(+) AND  ');
    Add(' FORNECEDOR_TRATAMENTO.ID_TRATFORN = FORNECEDOR.ID_TRATFORN(+) AND   ');
    Add(' FORNECEDOR_TIPO.ID_TIPOFORN(+) = FORNECEDOR.ID_TIPOFORN AND      ');
    Add(' FORNECEDOR.ID_CIDADE = CIDADE.ID_CIDADE AND                      ');
    Add(' LOGRADOURO_TIPO.ID_TIPOLOGR = FORNECEDOR.ID_TIPOLOGR AND         ');
    Add(' TRATAMENTO_PESSOAL.ID_TRATPESS(+) = FORNECEDOR_CONTATO.ID_TRATPESS AND   ');
    Add(' CIDADE.ID_ESTADO = ESTADO.ID_ESTADO AND                            ');
    Add(' FORNECEDOR.ID_FORMPAGA = FORMA_PAGAMENTO.ID_FORMPAGA(+) AND        ');
    Add(' FORNECEDOR.CTB = CA_PLANO_CONTAS.CTB(+) AND                       ');
    Add(' ATIVIDADE_ECONOMICA.ID_ATIVECON(+) = FORNECEDOR.ID_ATIVECON AND    ');
    Add(' CARGO.ID_CARGO(+) = FORNECEDOR_CONTATO.ID_CARGO AND              ');
    Add(' FORNECEDOR.ID_TIPOVEND = VENDA_TIPO.ID_TIPOVEND(+) AND            ');
    Add(' PAIS.ID_PAIS = ESTADO.ID_PAIS AND                                   ');
    Add(' DEPARTAMENTO.ID_DEPARTAMENTO(+) = FORNECEDOR_CONTATO.ID_DEPARTAMENTO AND ');
    Add(' TRANSPORTADOR_VEICULO.ID_FORNECEDOR_TRANSPORTADOR(+) = FORNECEDOR.ID_FORNECEDOR AND  ');
    Add(' BANCO.ID_BANCO(+) = FORNECEDOR.ID_BANCO AND                                ');
    Add(' BANCO_AGENCIA.ID_AGENBANC(+) = FORNECEDOR.ID_AGENBANC AND                ');
    Add(' FORNECEDOR.id_tratforn = 2                 ');
  end;

  XTM:=MResul.Lines.Count;
  If XTM >0 then
    begin
      OQry_Forn.SQL.Add(' AND ');
      OQry_Forn.SQL.Add(MResul.Text);
    end
  ELSE
  begin
    Screen.Cursor := crDefault;
    if Application.MessageBox('Exibir listagem sem filtro?                                   ', PChar(FrmCadTransport.Caption), MB_YESNO) = IDNO then
      exit
    Else
      Screen.Cursor := crSQLWait;
  end;
  OQry_Forn.SQL.Add('ORDER BY fornecedor.nm_fornecedor');
  OQry_Forn.Open;
  OQry_Tratpess.Close;
  OQry_Tratpess.Open;
  OQry_Cid.Close;
  OQry_Cid.Open;
  OQry_Lograd.close;
  OQry_Lograd.Open;
  Qry_PlaCta.Close;
  Qry_PlaCta.open;
  OQry_TpVenda.Close;
  OQry_TpVenda.Open;
  Qry_Cfop.close;
  Qry_Cfop.open;
  OQry_ContFor.Close;
  OQry_ContFor.Open;
  Qry_FrPag.Close;
  Qry_FrPag.open;
  OQry_AtEcon.Close;
  OQry_AtEcon.open;
  OQryCargo.Close;
  OQryCargo.Open;
  OQry_TpFor.close;
  OQry_TpFor.open;
  Qry_Tratfor.close;
  Qry_Tratfor.open;
  OQry_Dpto.Close;
  OQry_Dpto.Open;
  QrContato.Close;
  QrContato.Open;
  QrVeiculos.Close;
  QrVeiculos.Open;
  QryVeicTipo.Close;
  QryVeicTipo.Open;
  QrMotorista.Close;
  QrMotorista.Open;

  PageControl2.Pages[1].Show;
  Screen.Cursor := crDefault;
  PageControl2.Pages[1].TabVisible := True;
  PageControl2.Pages[2].TabVisible := true;
  PageControl2.Pages[3].TabVisible := True;
  PageControl2.Pages[4].TabVisible := True;
  PageControl2.Pages[5].TabVisible := True;
  PageControl2.Pages[7].TabVisible := True;

  //Direito a aba C/C Forn.
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 45;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
  begin
    PageControl2.Pages[6].TabVisible := True;
    VCCFin:=True;
  end
  else
  begin
    PageControl2.Pages[6].TabVisible := False;
    VCCFin:= False;
  end;

  Atual_ToolBar(1);

  //Direito de Editar
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;
  If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(2);

  //Direito a Incluir
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;
  If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(9);

  LDcomponentes(False);

end;


procedure TFrmCadTransport.BPESQClick(Sender: TObject);
begin
  try
    XRPM:=15;
    FrmOriPesq:=15;
    CASE SELPE OF
     1:BEGIN
        Cria_FrmPesqFor(VFor,NFor,NEND,NCEP,NFONE);
        EdExpr.text:= VFor;
        if BtIncluir.Enabled then
          BtIncluir.SetFocus;
       END;
     2:BEGIN
        Cria_FrmPesqCid(VCid, NCid, NEst, NPais, NReg);
        EdExpr.text:= VCid;
        if BtIncluir.Enabled then
          BtIncluir.SetFocus;
       END;
     3:BEGIN
        Cria_FrmSelData(Vdtstr);
        EdExpr.text:= Vdtstr;
        if BtIncluir.Enabled then
          BtIncluir.SetFocus;
       END;
    end;
 except;
   SHOWMESSAGE('Não foi possível abrir o Form.');
 end;
 BPESQ.Visible:=FALSE;

end;

procedure TFrmCadTransport.SB_CANCELMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 SB_PROXIMO.Flat  := True;
 SB_ANTERIOR.Flat := True;
 SB_ULTIMO.Flat   := True;
 SB_PRIMEIRO.Flat := True;
 SB_NOVO.Flat     := True;
 SB_EXCLUI.Flat   := True;
 SB_EDIT.Flat     := True;
 SB_CONFIRMA.Flat := True;
 SB_CANCEL.Flat   := False;

end;

procedure TFrmCadTransport.SB_CONFIRMAMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 SB_PROXIMO.Flat  := True;
 SB_ANTERIOR.Flat := True;
 SB_ULTIMO.Flat   := True;
 SB_PRIMEIRO.Flat := True;
 SB_NOVO.Flat     := True;
 SB_EXCLUI.Flat   := True;
 SB_EDIT.Flat     := True;
 SB_CONFIRMA.Flat := False;
 SB_CANCEL.Flat   := True;

end;

procedure TFrmCadTransport.SB_EDITMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 SB_PROXIMO.Flat  := True;
 SB_ANTERIOR.Flat := True;
 SB_ULTIMO.Flat   := True;
 SB_PRIMEIRO.Flat := True;
 SB_NOVO.Flat     := True;
 SB_EXCLUI.Flat   := True;
 SB_EDIT.Flat     := False;
 SB_CONFIRMA.Flat := True;
 SB_CANCEL.Flat   := True;

end;

procedure TFrmCadTransport.SB_EXCLUIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 SB_PROXIMO.Flat  := True;
 SB_ANTERIOR.Flat := True;
 SB_ULTIMO.Flat   := True;
 SB_PRIMEIRO.Flat := True;
 SB_NOVO.Flat     := True;
 SB_EXCLUI.Flat   := False;
 SB_EDIT.Flat     := True;
 SB_CONFIRMA.Flat := True;
 SB_CANCEL.Flat   := True;

end;

procedure TFrmCadTransport.SB_NOVOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 SB_PROXIMO.Flat  := True;
 SB_ANTERIOR.Flat := True;
 SB_ULTIMO.Flat   := True;
 SB_PRIMEIRO.Flat := True;
 SB_NOVO.Flat     := False;
 SB_EXCLUI.Flat   := True;
 SB_EDIT.Flat     := True;
 SB_CONFIRMA.Flat := True;
 SB_CANCEL.Flat   := True;
end;

procedure TFrmCadTransport.SB_ULTIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 SB_PROXIMO.Flat  := True;
 SB_ANTERIOR.Flat := True;
 SB_ULTIMO.Flat   := False;
 SB_PRIMEIRO.Flat := True;
 SB_NOVO.Flat     := True;
 SB_EXCLUI.Flat   := True;
 SB_EDIT.Flat     := True;
 SB_CONFIRMA.Flat := True;
 SB_CANCEL.Flat   := True;
end;

procedure TFrmCadTransport.SB_PROXIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 SB_PROXIMO.Flat  := False;
 SB_ANTERIOR.Flat := True;
 SB_ULTIMO.Flat   := True;
 SB_PRIMEIRO.Flat := True;
 SB_NOVO.Flat     := True;
 SB_EXCLUI.Flat   := True;
 SB_EDIT.Flat     := True;
 SB_CONFIRMA.Flat := True;
 SB_CANCEL.Flat   := True;
end;

procedure TFrmCadTransport.SB_ANTERIORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 SB_PROXIMO.Flat  := True;
 SB_ANTERIOR.Flat := False;
 SB_ULTIMO.Flat   := True;
 SB_PRIMEIRO.Flat := True;
 SB_NOVO.Flat     := True;
 SB_EXCLUI.Flat   := True;
 SB_EDIT.Flat     := True;
 SB_CONFIRMA.Flat := True;
 SB_CANCEL.Flat   := True;
end;

procedure TFrmCadTransport.SB_PRIMEIROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 SB_PROXIMO.Flat  := True;
 SB_ANTERIOR.Flat := True;
 SB_ULTIMO.Flat   := True;
 SB_PRIMEIRO.Flat := False;
 SB_NOVO.Flat     := True;
 SB_EXCLUI.Flat   := True;
 SB_EDIT.Flat     := True;
 SB_CONFIRMA.Flat := True;
 SB_CANCEL.Flat   := True;
end;

procedure TFrmCadTransport.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (ssAlt in  Shift) and (chr(Key) in ['I', 'i']) then
      SB_NOVO.Click;
 If (ssAlt in  Shift) and (chr(Key) in ['G', 'g']) then
      SB_CONFIRMA.Click;
 If (ssAlt in  Shift) and (chr(Key) in ['C', 'c']) then
      SB_CANCEL.Click;
end;

procedure TFrmCadTransport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.CadastrodeTransportadores1.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmCadTransport.FormCreate(Sender: TObject);
begin
  if (gi_Filial = 4) or (gi_Filial = 5) or (gi_Filial = 91) then
    frmPrincipal.TrocaNomeSequence(Self);

end;

procedure TFrmCadTransport.SB_CONFIRMAClick(Sender: TObject);
begin
Screen.Cursor := crSQLWait;

  if (TabDetalhe.Showing) or (TabComplemento.Showing) or (TabFin.Showing)  then
  begin
    if (DBLTpFor.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro de Tipo de Fornecedor obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBNOMFOR.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Nome Fornecedor obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBNMFAN.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Nome Fantasia Fornecedor obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBNomRed.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Nome Reduzido Fornecedor obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBLTplog.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Tipo Logradouro obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBLograd.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Logradouro obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBNum.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Numero Logradouro obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBCep.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro CEP obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBCidade.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Cidade obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBBairro.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Bairro obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabDetalhe.Show;
      Exit;
    end;

    if (DBDtCad.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Data do Cadastro obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBLTpVd.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Tipo de Venda obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabComplemento.Show;
      Exit;
    end;
    if (DBLAtvEcon.Text='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Atividade Econômica obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabComplemento.Show;
      Exit;
    end;
    if (DBLForPag.Text='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Forma Pagamento obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabComplemento.Show;
      Exit;
    end;
    if (DBRPessoa.ItemIndex = 1) then
    begin
      if  (DBCpf.Text = '') then
      begin
        Screen.Cursor := crDefault;
        MessageDlg('Cadastro de CPF obrigatório.', mtInformation,[mbOk], 0, mbOk);
        Exit;
      end
      else
      begin
        if (cpf(DBCpf.Text)= False) then
        begin
          Screen.Cursor := crDefault;
          MessageDlg('CPF inválido, corrija antes de salvar.', mtInformation,[mbOk], 0, mbOk);
          TabDetalhe.Show;
          DBCpf.setfocus;
          exit;
        end;
      end;
    end
    else if (DBRPessoa.ItemIndex = 0) then
    begin
     if  (DBCNPJ.Text = '') then
     begin
       Screen.Cursor := crDefault;
       MessageDlg('Cadastro de CNPJ obrigatório.', mtInformation,[mbOk], 0, mbOk);
       Exit;
     end
     else
     begin
       if cnpj(DBCNPJ.Text)=false then
       begin
         Screen.Cursor := crDefault;
         MessageDlg('CNPJ Inválido.', mtInformation,[mbOk], 0, mbOk);
         DBCNPJ.setfocus;
         exit;
       end;
     end;
    end;

    if (OQry_Forn.State=DSEDIT) or (OQry_Forn.State=DSINSERT) then
      OQry_Forn.Post;
      OQry_Forn.ApplyUpdates;
      OQry_Forn.CommitUpdates;

    if (DBRPessoa.ItemIndex = 1) then
    begin
      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text :=
                  'select                                 '+
                  '        count(id_fornecedor) as numfor '+
                  '  from  fornecedor                     '+
                  ' where                                 '+
                  '        nr_cpfforn = :VCPF             '+
                  '    and fl_ativforn  = ''S''           ';
      QryTemp.ParamByName('VCPF').AsString := DBCpf.Text;
      QryTemp.Open;

      if (QryTemp.FieldByName('numfor').AsInteger > 1) then
      begin
        QryTemp.Close;
        QryTemp.SQL.Clear;
        QryTemp.SQL.Text :=
                  'update   fornecedor                    '+
                  '   set  fl_ativforn  = ''N''           '+
                  ' where                                 '+
                  '       id_fornecedor = :VFOR           ';
        QryTemp.ParamByName('VFOR').AsFloat := OQry_Forn.FieldByName('id_fornecedor').AsFloat;
        QryTemp.ExecSQL;
        OQry_Forn.Refresh;
        Screen.Cursor := crDefault;
        MessageDlg('CPF já cadastrado! Fornecedor foi inativado.', mtInformation,[mbOk], 0, mbOk);
  //      exit;
      end;
    end
    else if (DBRPessoa.ItemIndex = 0) then
    begin
      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text :=
                  'select                                 '+
                  '        count(id_fornecedor) as numfor '+
                  '  from  fornecedor                     '+
                  ' where                                 '+
                  '        nr_cnpjforn = :VCNPJ           '+
                  '   and  fl_ativforn  = ''S''           ';
      QryTemp.ParamByName('VCNPJ').AsString := DBCNPJ.Text;
      QryTemp.Open;

      if (QryTemp.FieldByName('numfor').AsInteger > 1) then
      begin
        QryTemp.Close;
        QryTemp.SQL.Clear;
        QryTemp.SQL.Text :=
                  'update  fornecedor                    '+
                  '   set  fl_ativforn  = ''N''          '+
                  ' where                                '+
                  '        id_fornecedor = :VFOR         ';
        QryTemp.ParamByName('VFOR').AsFloat := OQry_Forn.FieldByName('id_fornecedor').AsFloat;
        QryTemp.ExecSQL;
        OQry_Forn.Refresh;
        Screen.Cursor := crDefault;
        MessageDlg('CNPJ já cadastrado! Fornecedor foi inativado.', mtInformation,[mbOk], 0, mbOk);
        exit;
      end;
    end;

    if (OQry_Forn.State=DSINSERT) then
      TabContato.Show;

  end
  else if TabContato.Showing then
  begin
    if (DBConNom.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Nome Contato Fornecedor obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabContato.Show;
      Exit;
    end;
    if (DBLDpto.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Contato Departamento obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabContato.Show;
      Exit;
    end;
    if (DBLTratfor.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Tratamento Contato Fornecedor obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabContato.Show;
      Exit;
    end;
    if (DBLCargo.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Cargo Contato Fornecedor obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabContato.Show;
      Exit;
    end;
    if (DBRSexoC.Value ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Sexo Contato Fornecedor obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabContato.Show;
      Exit;
    end;
    if (DBConDtCad.Text ='') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Cadastro Data Cadastro Contato Fornecedor obrigatório.', mtInformation,[mbOk], 0, mbOk);
      TabContato.Show;
      Exit;
    end;
   //try
    if (QrContato.State in [DSEDIT,DSINSERT]) then
      QrContato.Post;
    QrContato.ApplyUpdates;
    QrContato.CommitUpdates;
  // except
  //   MessageDlg('Atenção! Erro ao salvar contato, tente novamente ou contate o administrador do sistema.', mtInformation,[mbOk], 0, mbOk);
  // end;
  end
  Else if TabVeiculos.Showing then
  begin
    if (grpModeloCarroceria.ItemIndex < 3) and (DBEdit8.Text = '')then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Para modelos 3/4, TOCO e TRUCK, é necessário informar capacidade em quantidade de Caixas.', PChar(FrmCadTransport.Caption),MB_OK + MB_ICONINFORMATION);
      DBEdit8.SetFocus;
      Exit;
    end;

    if (QrVeiculos.State=DSEDIT) or (QrVeiculos.State=DSINSERT) then
      QrVeiculos.Post;
    QrVeiculos.ApplyUpdates;
    QrVeiculos.CommitUpdates;

    //Verificar se já existe um veiculo ativo
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text :=
                  'select                                 '+
                  '       count(transportador_veiculo.gn_placveictran) as placa '+
                  '  from transportador_veiculo                                 '+
                  ' where                                                       '+
                  '       transportador_veiculo.gn_placveictran = :VPLACA       '+
                  '   and transportador_veiculo.fl_ativveictran = ''S''         ';

    QryTemp.ParamByName('VPLACA').AsString := edtPlacVeic.Text;
    QryTemp.Open;

    if (QryTemp.FieldByName('placa').AsInteger > 1) then
    begin
      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text :=
                 'update transportador_veiculo           '+
                 '   set fl_ativveictran = ''N''         '+
                 ' where                                 '+
                 '       id_veictran = :VTRAN            ';
      QryTemp.ParamByName('VTRAN').AsFloat := QrVeiculos.FieldByName('id_veictran').AsFloat;
      QryTemp.ExecSQL;
      QrVeiculos.Refresh;
      Screen.Cursor := crDefault;
      MessageDlg('Veículo já cadastrado e ativo, este será inativado.', mtInformation,[mbOk], 0, mbOk);
    end;

  end
  else if Tab_Motorista.Showing then
  begin
     if (QrMotorista.State=DSEDIT) or (QrVeiculos.State=DSINSERT) then
        QrMotorista.Post;
    QrMotorista.ApplyUpdates;
    QrMotorista.CommitUpdates;
    QrMotorista.Close;
    QrMotorista.Open;
  end;

  PageControl2.Pages[01].TabVisible := True;
  PageControl2.Pages[00].TabVisible := True;
  PageControl2.Pages[02].TabVisible := True;
  PageControl2.Pages[03].TabVisible := True;
  PageControl2.Pages[04].TabVisible := True;
  PageControl2.Pages[05].TabVisible := True;
  if VCCFin then
   PageControl2.Pages[06].TabVisible := True;
  PageControl2.Pages[07].TabVisible   := True;

  Screen.Cursor := crDefault;

  //Direito a aba C/C Forn.
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 45;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;
  If (QrDireitos.RecordCount>0) then
  begin
   PageControl2.Pages[6].TabVisible := True;
   VCCFin:=True;
  end
  else
  begin
   PageControl2.Pages[6].TabVisible := False;
   VCCFin:= False;
  end;

  Atual_ToolBar(1);

  //Direito de Editar
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;
  If (QrDireitos.RecordCount>0) then
   Atual_ToolBar(2);

  //Direito a Incluir
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;
  If (QrDireitos.RecordCount>0) then
   Atual_ToolBar(9);

  LDcomponentes(False);
end;

procedure TFrmCadTransport.DBNOMFORKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Key = #13 then
   DBNMFAN.SetFocus;

 Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBNMFANKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
 DBNomRed.SetFocus;
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBLogradKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBNum.SetFocus;
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBComplKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBCep.SetFocus;
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBBairroKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBCxpst.SetFocus;
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBPaisKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBRGeogKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBLst_ComMensKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBMObs.SetFocus;
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBLst_ComObsKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBConNomKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBRSexoC.SetFocus;
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBLstConObsKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBConForKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBConFanKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.EdExprKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.DBNomRedKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
DBLTplog.SetFocus;
Key := AnsiUpperCase(Key)[1];
end;
procedure TFrmCadTransport.DBPessoaExit(Sender: TObject);
begin
 If DBRPessoa.Value = 'F' then
  begin
   DBRG.Enabled := true;
   DbCpf.Enabled := true;
   DBExp.Enabled := true;
   DBCNPJ.Text := ' ';
   DBInses.Text := ' ';
   DBCNPJ.Enabled := False;
   DBInses.Enabled := False;
   DBRG.SetFocus;
 end;
   if DBRPessoa.Value = 'J' then
     begin
     DBCNPJ.Enabled := true;
     DBInses.Enabled := true;
     DBRG.Text := ' ';
     DBCpf.Text := ' ';
     DBExp.Text := ' ';
     DBRG.Enabled := False;
     DbCpf.Enabled := False;
     DBExp.Enabled := False;
     DBCNPJ.SetFocus;
    end;
 end;

procedure TFrmCadTransport.DBLTplogKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
DBNum.SetFocus;
end;

procedure TFrmCadTransport.DBNumKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 then
    DBCompl.SetFocus;
end;

procedure TFrmCadTransport.DBCepKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 then
    BtCenCus.SetFocus;
end;

procedure TFrmCadTransport.DBCxpstKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBCeppst.SetFocus;
end;

procedure TFrmCadTransport.DBCeppstKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBTEL.SetFocus;
end;

procedure TFrmCadTransport.DBTELKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 then
    DBFAX.SetFocus;
end;

procedure TFrmCadTransport.DBFAXKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 then
    DBFONE.SetFocus;
end;

procedure TFrmCadTransport.DBHPageKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBEmail.SetFocus;
end;

procedure TFrmCadTransport.DBEmailKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    BitBtn1.SetFocus;
end;

procedure TFrmCadTransport.DBRGKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 then
    DBRG.SetFocus;
 if not (Key in ['0'..'9', Chr(8)]) then
     Key := #0;
end;

procedure TFrmCadTransport.DBExpKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 then
    DBCpf.SetFocus;
end;


procedure TFrmCadTransport.DBCpfKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
   DBCNPJ.SetFocus;

 if not (Key in ['0'..'9', Chr(8)]) then
     Key := #0;
end;

procedure TFrmCadTransport.DBCNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
    DBInses.SetFocus;
if not (Key in ['0'..'9', Chr(8)]) then
    Key := #0;
end;

procedure TFrmCadTransport.DBInsesKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBInsest.SetFocus;
if not (Key in ['0'..'9', Chr(8)]) then
     Key := #0;
end;

procedure TFrmCadTransport.DBInsestKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    BitBtn2.SetFocus;
end;

procedure TFrmCadTransport.DBDTForKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBDTFor.SetFocus;
end;

procedure TFrmCadTransport.DBDtCadKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBDtAlt.SetFocus;
end;
procedure TFrmCadTransport.DBLTpForKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBLTpVd.SetFocus;
end;

procedure TFrmCadTransport.DBLTpVdKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBLAtvEcon.SetFocus;
end;

procedure TFrmCadTransport.DBLAtvEconKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBAtivo.SetFocus;
end;

procedure TFrmCadTransport.DBLAtivoKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBBloqueio.SetFocus;
end;

procedure TFrmCadTransport.DBLbloqKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBLCFOP.SetFocus;
end;

procedure TFrmCadTransport.DBLCFOPKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBLForPag.SetFocus;
end;

procedure TFrmCadTransport.DBLForPagKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBLCta.SetFocus;
end;

procedure TFrmCadTransport.DBLCtaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    DBMMens.SetFocus;
end;

procedure TFrmCadTransport.DBLTratforKeyPress(Sender: TObject;
  var Key: Char);
begin
// If Key = #13 then
//    DBConFor.SetFocus;
end;

procedure TFrmCadTransport.DBSexoKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Key = #13 then
    DBLDpto.SetFocus;
end;

procedure TFrmCadTransport.DBLDptoKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBLCargo.SetFocus;
end;

procedure TFrmCadTransport.DBLCargoKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBConPag.SetFocus;
end;

procedure TFrmCadTransport.DBConPagKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBConEmail.SetFocus;
end;

procedure TFrmCadTransport.DBConEmailKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBConDdi.SetFocus;
end;

procedure TFrmCadTransport.DBConDdiKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBConDdd.SetFocus;
end;

procedure TFrmCadTransport.DBConDddKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBConTel.SetFocus;
end;

procedure TFrmCadTransport.DBConTelKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBConRam.SetFocus;
end;

procedure TFrmCadTransport.DBConRamKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBFxDDi.SetFocus;
end;

procedure TFrmCadTransport.DBFxDDiKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBFxDdd.SetFocus;
end;

procedure TFrmCadTransport.DBFxDddKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBFxTel.SetFocus;
end;

procedure TFrmCadTransport.DBFxTelKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBFxRam.SetFocus;
end;

procedure TFrmCadTransport.DBConDtNasKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
  DBConDtNas.SetFocus;
end;

procedure TFrmCadTransport.DBConDtCadKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBMConObs.SetFocus;
end;

procedure TFrmCadTransport.Bit_DtNascClick(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  DBConDtNas.text:= Vdtstr;
  DBConDtNas.SetFocus;
end;

procedure TFrmCadTransport.Bit_DtCadClick(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  DBConDtCad.text:= Vdtstr;
  DBConDtCad.SetFocus;
end;

procedure TFrmCadTransport.DBMMensKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBMObs.SetFocus;
Key := AnsiUpperCase(Key)[1];
end;


procedure TFrmCadTransport.DBMObsKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBMObs.SetFocus;
    Key := AnsiUpperCase(Key)[1];
end;


procedure TFrmCadTransport.DBMConObsKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTransport.BitBtn3Click(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  DBDtCad.text:= Vdtstr;
  DBDtAlt.SetFocus;
end;

procedure TFrmCadTransport.DBNascKeyPress(Sender: TObject;
  var Key: Char);
begin
//  Key := AnsiUpperCase(Key)[1];
//  DBConDtCad.SetFocus;
end;

procedure TFrmCadTransport.DBConDtNasExit(Sender: TObject);
begin
if StrToDate(DBConDtNas.Text)>= Date() then
 begin
  ShowMessage('Data do Nascimento Incorreto');
  Cria_FrmSelData(Vdtstr);
  DBConDtNas.text:= Vdtstr;
  DBConDtNas.SetFocus;
 end
 else
   Bit_DtCad.SetFocus;
 end;


procedure TFrmCadTransport.DBFxRamKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBConDtNas.SetFocus;
end;

procedure TFrmCadTransport.DBConDtCadChange(Sender: TObject);
begin
 DBConDtCad.Text:= DateToStr(date());
end;

procedure TFrmCadTransport.BitBtn1Click(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  DBNasc.text:= Vdtstr;
  DBNasc.SetFocus;
end;

procedure TFrmCadTransport.DBNascExit(Sender: TObject);
begin
if StrToDate(DBNasc.Text)>= Date() then
 begin
   ShowMessage('Data do Nascimento Incorreto');
//   Cria_FrmSelData(Vdtstr);
 //  DBNasc.text:= Vdtstr;
   DBNasc.SetFocus;
 end;
end;

procedure TFrmCadTransport.DBConDtNasEnter(Sender: TObject);
begin
 //DBConDtCad.Text:= DateToStr(date());
end;

procedure TFrmCadTransport.DBDTForExit(Sender: TObject);
begin
if StrToDate(DBDTFor.Text)>= Date() then
 begin
   ShowMessage('Data do Nascimento Incorreto');
   Cria_FrmSelData(Vdtstr);
   DBDTFor.text:= Vdtstr;
   DBDTFor.SetFocus;

 end
 else
   DBDtCad.SetFocus;
end;

procedure TFrmCadTransport.DBDTForEnter(Sender: TObject);
begin
  DBDtCad.Text:= DateToStr(date());
end;

procedure TFrmCadTransport.DBRPessoaExit(Sender: TObject);
begin
 if DBRPessoa.Value ='F' then
    DBRG.SetFocus;
    DBCNPJ.Text:='';
    DBExp.Text:='';
    DBInses.Text:='';
    DBExp.Text:='';
    DBCNPJ.Enabled:=True;
    DBInses.Enabled:=True;
    DBExp.Enabled:=True;
 if DBRPessoa.Value ='J' then
    DBCNPJ.SetFocus;
    DBRG.Text:='';
    DBCpf.Text:='';
  end;
procedure TFrmCadTransport.BtCenCusKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
    DBBairro.SetFocus;
end;

procedure TFrmCadTransport.DBCpfExit(Sender: TObject);
begin
  if  (DBCpf.Text <> '') then
    if cpf(StrZerodec( StrToFloat(sonumeros(DBCpf.Text)),11,0))=false then
    begin
      MessageDlg('CPF Inválido.', mtInformation,[mbOk], 0, mbOk);
      DBCpf.setfocus;
    end;
end;

procedure TFrmCadTransport.DBCNPJExit(Sender: TObject);
begin
  if  (DBCNPJ.Text <> '') then
    if cnpj(StrZerodec( StrToFloat(sonumeros(DBCNPJ.Text)),14,0))=false then
    begin
      MessageDlg('CNPJ Inválido.', mtInformation,[mbOk], 0, mbOk);
      DBCNPJ.setfocus;
    end;
end;

procedure TFrmCadTransport.TabDetalheShow(Sender: TObject);
begin
  if (DBRPessoa.ItemIndex=1) then
  begin
    GrpBx_Fisica.Enabled := True;
    GrpBx_Jur.Enabled := False;
  end
  else
  begin
    GrpBx_Fisica.Enabled := False;
    GrpBx_Jur.Enabled := True;
  end;

end;

procedure TFrmCadTransport.DBRPessoaChange(Sender: TObject);
begin
  TabDetalheShow(nil);
end;

procedure TFrmCadTransport.LDcomponentes(LD:boolean);
var
  Temp:TComponent;
  li_Loop:Integer;
begin
 For li_Loop :=0 to ComponentCount - 1  do
 begin
   Temp := Components[li_Loop];
   if  (Temp is TDBEDIT) then
   begin
     TScrollBox(temp).Enabled := LD;
   end;
   if (Temp is TDBlookupCOMBOBOX) then
   begin
     TScrollBox(temp).Enabled := LD;
   end;
   if (Temp is TBitBtn) then
   begin
     TScrollBox(temp).Enabled := LD;
   end;
   if (Temp is TRadioGroup) then
   begin
     TScrollBox(temp).Enabled := LD;
   end;
   if (Temp is TDBMemo) then
   begin
     TScrollBox(temp).Enabled := LD;
   end;
   if (Temp is TDBRadioGroup) then
   begin
     TScrollBox(temp).Enabled := LD;
   end;
   if (Temp is TDBCheckBox) then
   begin
     TScrollBox(temp).Enabled := LD;
   end;
 end;
end;

procedure TFrmCadTransport.TabCriterioShow(Sender: TObject);
begin
  CBCond.Enabled := True;
  EdExpr.Enabled := True;
  BtLimpar.Enabled := True;
  BtAtivar.Enabled := True;
  BPESQ.Enabled := True;
  RGeou.Enabled := True;
end;

procedure TFrmCadTransport.DBGrd_CadFornTitleClick(Column: TColumn);
begin
  OQry_Forn.IndexFieldNames := Column.FieldName;
end;

procedure TFrmCadTransport.BtCodBancoClick(Sender: TObject);
begin
  Cria_FrmPesqBANCO(VBanco,NMBanco);
  OQry_FornID_BANCO.Value := StrToFloat(VBanco);
  OQry_FornNM_BANCO.Value := NMBanco;
end;

procedure TFrmCadTransport.BtCodAgenciaClick(Sender: TObject);
begin
  Cria_FrmPesqAgencia(VCODAG,VNMAG,VNRAG,VNRBANCO,VNMBANCO);
  OQry_FornID_AGENBANC.Value := StrToFloat(VCODAG);
  OQry_FornNM_AGENBANC.Value := VNMAG;
  OQry_FornNR_AGENBANC.Value := VNRAG;
  if (DBCodBanco.Text = '') then
  begin
    OQry_FornID_BANCO.Value := StrToFloat(VNRBANCO);
    OQry_FornNM_BANCO.Value := VNMBANCO;
  end;
end;

procedure TFrmCadTransport.DBCodCidExit(Sender: TObject);
begin
If (OQry_Forn.State in [dsedit,dsinsert]) and (DBCodCid.Text<>'')  then
 begin
  QryCidade.Close;
  QryCidade.ParamByName('VCID').ASFLOAT:= STRTOFLOAT(DBCodCid.Text);
  QryCidade.Open;
  OQry_FornID_CIDADE.Value := QryCidade.FieldByname('ID_CIDADE').AsFloat;
  OQry_FornNM_CIDADE.Value := QryCidade.FieldByname('NM_CIDADE').AsString;
  OQry_FornSG_ESTADO.Value := QryCidade.FieldByname('SG_ESTADO').AsString;
  OQry_FornNM_PAIS.Value := QryCidade.FieldByname('NM_PAIS').AsString;

end;
end;

procedure TFrmCadTransport.btn_CidMotoristaClick(Sender: TObject);
begin
  Cria_FrmPesqCid(VCid, NCid, NEst, NPais, NReg);
  DBEdit22.text:= VCid;
  DBEdit22.SetFocus;
end;

procedure TFrmCadTransport.BitBtn6Click(Sender: TObject);
begin
    Cria_FrmSelData(Vdtstr);
    DBEdit28.text:= Vdtstr;
end;

procedure TFrmCadTransport.DBGrd_CadFornDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= clSilver;

  DBGrd_CadForn.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmCadTransport.DBGrdConDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= clSilver;

  DBGrdCon.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmCadTransport.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= clSilver;

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmCadTransport.TabVeiculosShow(Sender: TObject);
begin
  if not(gi_IdenUsua IN [1,26,3]) then
    edtVlFreteFixado.Enabled := False;
end;

procedure TFrmCadTransport.QrVeiculosBeforePost(DataSet: TDataSet);
begin
  if (QrVeiculos.State=DSINSERT) then
  begin
    QrVeiculosEMPRESA.Value := gs_Empresa;
    QrVeiculosFILIAL.Value  := gi_filial;
    QrVeiculosID_FORNECEDOR_TRANSPORTADOR.Value := OQry_FornID_FORNECEDOR.Value;
    QrVeiculosFX_VEICTRAN.Value := 'N';
  end;
end;

end.





