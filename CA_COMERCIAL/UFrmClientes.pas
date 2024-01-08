unit UFrmClientes;

interface

uses
  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Menus, UrlMon, ShellAPI, Data.DB, MemDS,
  DBAccess, Ora, Vcl.StdCtrls, Vcl.ExtCtrls, ComCtrls, Winapi.Windows;

type
  TPageControl = class(ComCtrls.TPageControl)
  protected
    function DoMouseWheel(Shift: TShiftState; WheelDelta: Integer;
      const MousePos: TPoint): Boolean; virtual;
  end;
type
  TFrmClientes = class(TForm)
    DtSrc_Cid: TOraDataSource;
    OQry_Lograd: TOraQuery;
    ODtSrc_Lograd: TOraDataSource;
    ODtSrc_FrmPag: TOraDataSource;
    DSContato: TOraDataSource;
    PopupMenu1: TPopupMenu;
    QryTemp: TOraQuery;
    QrDireitos: TOraQuery;
    OQry_Cid: TOraQuery;
    Qry_FrPag: TOraQuery;
    Qry_TratclieID_TRATCLIE: TFloatField;
    Qry_TratclieNM_TRATCLIE: TStringField;
    Qry_TratclieFL_ATIVTRATCLIE: TStringField;
    Qry_TratclieFL_CADAESPETRATCLIE: TStringField;
    Qry_TratclieFX_TRATCLIE: TStringField;
    ODtS_Clie: TOraDataSource;
    OQry_Clie1: TOraQuery;
    Qry_Tratclie: TOraQuery;
    DtSrc_Tratclie: TOraDataSource;
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
    Lbl_Filtro: TLabel;
    Panel1: TPanel;
    LRodape: TLabel;
    TabLista: TTabSheet;
    DBGrd_CadClie: TDBGrid;
    Panel4: TPanel;
    Panel2: TPanel;
    TabDetalhe: TTabSheet;
    DBCOD: TDBEdit;
    Lbl_cod: TLabel;
    DBNOMFOR: TDBEdit;
    Lbl_CodExt: TLabel;
    DBNMFAN: TDBEdit;
    Lbl_Fantasia: TLabel;
    DBNOMRED: TDBEdit;
    Lbl_Nmred: TLabel;
    DBCODINT: TDBEdit;
    Lbl_CodInt: TLabel;
    Lbl_Forn: TLabel;
    Lbl_Log: TLabel;
    DBLograd: TDBEdit;
    DBNum: TDBEdit;
    Lbl_Num: TLabel;
    Lbl_TpLog: TLabel;
    DBCompl: TDBEdit;
    Lbl_Com: TLabel;
    DBCep: TDBEdit;
    DBCidadeC: TDBEdit;
    Lbl_Cep: TLabel;
    Lbl_CodCid: TLabel;
    DBPais: TDBEdit;
    DBRGeog: TDBEdit;
    DBHorario: TDBEdit;
    DBCeppst: TDBEdit;
    DBFONE: TDBEdit;
    Lbl_Fone: TLabel;
    Lbl_CodPais: TLabel;
    Lbl_Geog: TLabel;
    Lbl_CxPos: TLabel;
    DBHPage: TDBEdit;
    DBEmail: TDBEdit;
    Lbl_CepPos: TLabel;
    Lbl_HPg: TLabel;
    Lbl_Email: TLabel;
    DBNasc: TDBEdit;
    Lbl_Nasc: TLabel;
    GrpBx_Jur: TGroupBox;
    DBCNPJ: TDBEdit;
    DBInses: TDBEdit;
    Lbl_CNPJ: TLabel;
    Lbl_Insces: TLabel;
    DBCodCid: TDBEdit;
    CodExter: TDBEdit;
    DBLTplog: TDBLookupComboBox;
    DBRPessoa: TDBRadioGroup;
    TabComplemento: TTabSheet;
    TabContato: TTabSheet;
    DBGrdCon: TDBGrid;
    OQry_TpClie: TOraQuery;
    Qry_bairro: TOraQuery;
    DtSrcBairro: TDataSource;
    OQry_Tratpess: TOraQuery;
    OQry_TratpessID_TRATPESS: TFloatField;
    OQry_TratpessSG_TRATPESS: TStringField;
    OQry_TratpessNM_TRATPESS: TStringField;
    OQry_AtEcon: TOraQuery;
    Qry_FrPagID_FORMPAGA: TFloatField;
    Qry_FrPagNM_FORMPAGA: TStringField;
    OQry_TpVendaID_TIPOVEND: TFloatField;
    OQry_TpVendaNM_TIPOVEND: TStringField;
    ODtSrcTpClie: TOraDataSource;
    QrContato: TOraQuery;
    QrContatoFL_SEXOCONTCLIE: TStringField;
    QrContatoID_CLIENTE: TFloatField;
    QrContatoNR_RAMAFONECONTCLIE: TStringField;
    QrContatoNR_DDIFAXCONTCLIE: TStringField;
    QrContatoNR_DDDFAXCONTCLIE: TStringField;
    QrContatoNR_FAXCONTCLIE: TStringField;
    QrContatoNR_RAMAFAXCONTCLIE: TStringField;
    QrContatoDT_NASCCONTCLIE: TDateTimeField;
    QrContatoDT_CADACONTCLIE: TDateTimeField;
    QrContatoGN_EMAICONTCLIE: TStringField;
    QrContatoGN_URLCONTCLIE: TStringField;
    QrContatoGN_OBSECONTCLIE: TStringField;
    QrContatoFX_CONTCLIE: TStringField;
    QrContatoEMPRESA: TStringField;
    QrContatoFILIAL: TIntegerField;
    QrContatoID_CONTCLIE: TFloatField;
    QrContatoNM_CONTCLIE: TStringField;
    QrContatoID_TRATPESS: TFloatField;
    QrContatoID_DEPARTAMENTO: TFloatField;
    QrContatoID_CARGO: TFloatField;
    QrContatoNR_DDIFONECONTCLIE: TStringField;
    QrContatoNR_DDDFONECONTCLIE: TStringField;
    QrContatoNR_FONECONTCLIE: TStringField;
    QrContatoNM_CARGO: TStringField;
    QrContatoFX_CARGO: TStringField;
    QrContatoNM_DEPARTAMENTO: TStringField;
    QrContatoFX_DEPARTAMENTO: TStringField;
    QrContatoSG_TRATPESS: TStringField;
    QrContatoNM_TRATPESS: TStringField;
    QryCargo: TOraQuery;
    DtSrcCargo: TOraDataSource;
    OQry_Dpto: TOraQuery;
    OQry_DptoID_DEPARTAMENTO: TFloatField;
    OQry_DptoNM_DEPARTAMENTO: TStringField;
    QryTratpess: TOraQuery;
    DtSrcTratpess: TOraDataSource;
    QryTratpessID_TRATPESS: TFloatField;
    QryTratpessSG_TRATPESS: TStringField;
    QryTratpessNM_TRATPESS: TStringField;
    QryTratpessFX_TRATPESS: TStringField;
    Lbl_Trat: TLabel;
    DBCodRegCom: TDBEdit;
    DBNomRegCom: TDBEdit;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label9: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    QryRegCom: TOraQuery;
    DtSrcQryRegCom: TOraDataSource;
    QryRegLog: TOraQuery;
    DtSrcRegLog: TOraDataSource;
    QrySubRegLog: TOraQuery;
    DtSrcSubRegLog: TOraDataSource;
    TabVendedores: TTabSheet;
    DBGrid1: TDBGrid;
    QryVendedor: TOraQuery;
    DtSrcVendedor: TOraDataSource;
    QryVendedorID_CLIENTE: TFloatField;
    QryVendedorID_VENDEDOR: TFloatField;
    QryVendedorFL_PADRVENDCLIE: TStringField;
    QryVendedorFL_COMIVENDCLIE: TStringField;
    QryVendedorPC_COMIVENDCLIE: TFloatField;
    QryVendedorFX_VENDCLIE: TStringField;
    QryVendedorNM_VENDEDOR: TStringField;
    QryVendedorNM_FANTVEND: TStringField;
    QryVendedorNM_REDUVEND: TStringField;
    QryVendedorFL_COMIVEND: TStringField;
    QryVendedorPC_COMIVEND: TFloatField;
    TabLimite: TTabSheet;
    QryGrpCliente: TOraQuery;
    QryGrpClienteID_GRUPCLIE: TFloatField;
    QryGrpClienteNM_GRUPCLIE: TStringField;
    QryGrpClienteFX_GRUPCLIE: TStringField;
    DtSrcGrpCliente: TOraDataSource;
    QryCobSit: TOraQuery;
    DtSrcSitCob: TOraDataSource;
    QryCobSitID_SITUCOBR: TFloatField;
    QryCobSitNM_SITUCOBR: TStringField;
    QryCobSitFX_SITUCOBR: TStringField;
    QryCobrInst: TOraQuery;
    DtSrcCobrInst: TOraDataSource;
    QryCobrInstID_INSTCOBR: TFloatField;
    QryCobrInstNM_INSTCOBR: TStringField;
    QryCobrInstPC_JURODIARINSTCOBR: TFloatField;
    QryCobrInstFL_TIPOJUROINSTCOBR: TStringField;
    QryCobrInstQN_DIASTOLEJUROINSTCOBR: TIntegerField;
    QryCobrInstPC_MULTINSTCOBR: TFloatField;
    QryCobrInstQN_DIASTOLEMULTINSTCOBR: TFloatField;
    QryCobrInstFL_PROTINSTCOBR: TStringField;
    QryCobrInstQN_DIASTOLEPROTINSTCOBR: TIntegerField;
    QryCobrInstGN_TEXTPROTINSTCOBR: TStringField;
    QryCobrInstQN_DIASTOLEDESCINSTCOBR: TIntegerField;
    QryCobrInstQN_DIASTOLERECEINSTCOBR: TIntegerField;
    QryCobrInstFL_AVISDEBIAUTOINSTCOBR: TStringField;
    QryCobrInstGN_OBSEINSTCOBR: TStringField;
    QryCobrInstFX_INSTCOBR: TStringField;
    QryCobrTipo: TOraQuery;
    DtSrcCobrTipo: TOraDataSource;
    QryCobrTipoID_TIPOCOBR: TFloatField;
    QryCobrTipoNM_TIPOCOBR: TStringField;
    QryCobrTipoFX_TIPOCOBR: TStringField;
    QryEstTipo: TOraQuery;
    QryEstTipoID_TIPOESTA: TFloatField;
    QryEstTipoNM_TIPOESTA: TStringField;
    QryEstTipoFX_TIPOESTA: TStringField;
    DtSrcEstTipo: TOraDataSource;
    QryPedVdTp: TOraQuery;
    DtSrcPedVdTp: TOraDataSource;
    QryPedVdTpID_TIPOPEDIVEND: TFloatField;
    QryPedVdTpNM_TIPOPEDIVEND: TStringField;
    QryVdTp: TOraQuery;
    DtSrcVdTp: TOraDataSource;
    QryTransp: TOraQuery;
    DtSrcTransp: TOraDataSource;
    QryMotBloq: TOraQuery;
    DtSrcMotBloq: TOraDataSource;
    QryClieBloq: TOraQuery;
    DtSrcClieBloq: TOraDataSource;
    QryClieBloqEMPRESA: TStringField;
    QryClieBloqFILIAL: TIntegerField;
    QryClieBloqID_BLOQCLIE: TFloatField;
    QryClieBloqID_CLIENTE: TFloatField;
    QryClieBloqID_MOTIBLOQ: TFloatField;
    QryClieBloqID_USUASIST: TFloatField;
    QryClieBloqDT_BLOQCLIE: TDateTimeField;
    QryClieBloqFL_TIPOBLOQCLIE: TStringField;
    QryClieBloqFX_BLOQCLIE: TStringField;
    TabEnde: TTabSheet;
    DBGrid2: TDBGrid;
    QryCliEnd: TOraQuery;
    DtSrcCliEnd: TOraDataSource;
    QryCliEndEMPRESA: TStringField;
    QryCliEndFILIAL: TIntegerField;
    QryCliEndID_ENDECLIE: TFloatField;
    QryCliEndID_CLIENTE: TFloatField;
    QryCliEndID_TIPOLOGR: TFloatField;
    QryCliEndNM_LOGRENDECLIE: TStringField;
    QryCliEndNR_LOGRENDECLIE: TStringField;
    QryCliEndGN_COMPENDECLIE: TStringField;
    QryCliEndID_BAIRRO: TFloatField;
    QryCliEndNR_CEPENDECLIE: TStringField;
    QryCliEndNR_CAIXPOSTENDECLIE: TStringField;
    QryCliEndNR_CEPCAIXPOSTENDECLIE: TStringField;
    QryCliEndFL_ENTRENDECLIE: TStringField;
    QryCliEndFL_COBRENDECLIE: TStringField;
    QryCliEndFL_ENTRPADRENDECLIE: TStringField;
    QryCliEndFL_COBRPADRENDECLIE: TStringField;
    QryCliEndFL_LOCAPADRENDECLIE: TStringField;
    QryCliEndID_REGILOGI: TFloatField;
    QryCliEndID_SUBRLOGI: TFloatField;
    QryCliEndID_FORNECEDOR_TRANSPORTADOR: TFloatField;
    QryCliEndFX_ENDECLIE: TStringField;
    QryCliEndID_REGISUBRLOGI: TFloatField;
    QryCliEndNM_REGILOGI: TStringField;
    QryCliEndNM_BAIRRO: TStringField;
    QryCliEndNM_CIDADE: TStringField;
    QryCliEndID_CIDADE: TFloatField;
    QryCliEndNM_PAIS: TStringField;
    QryCliEndNM_SUBRLOGI: TStringField;
    QryCliEndSG_ESTADO: TStringField;
    QryCliEndNM_REGIGEOG: TStringField;
    Label21: TLabel;
    QryVendedorFILIAL: TIntegerField;
    QryVendedorEMPRESA: TStringField;
    QryTranspNM_FORNECEDOR: TStringField;
    QryTranspID_FORNECEDOR: TFloatField;
    Label10: TLabel;
    DBEstado: TDBEdit;
    QryMotBloqEMPRESA: TStringField;
    QryMotBloqFILIAL: TIntegerField;
    QryMotBloqID_MOTIBLOQ: TFloatField;
    QryMotBloqNM_MOTIBLOQ: TStringField;
    QryMotBloqFX_MOTIBLOQ: TStringField;
    QryConta: TOraQuery;
    DtSrcConta: TOraDataSource;
    QryContaEMPRESA: TStringField;
    QryContaFILIAL: TIntegerField;
    QryContaID_CONTA: TFloatField;
    QryContaID_INTECONT: TStringField;
    QryContaIE_CONTCONT: TStringField;
    QryContaNM_CONTA: TStringField;
    QryContaID_TIPOCONT: TFloatField;
    QryContaID_AGENBANC: TFloatField;
    QryContaNR_CONTA: TStringField;
    QryContaNR_BOLECONT: TStringField;
    QryContaFL_EMITBOLECONT: TStringField;
    QryContaFL_PADRCONT: TStringField;
    QryContaFX_CONTA: TStringField;
    QryContaNR_SEQUBOLECONT: TStringField;
    QryContaNR_CODICEDECONT: TStringField;
    QryContaVL_MAXSEQUBOLECONT: TFloatField;
    OQry_CidID_BAIRRO: TFloatField;
    OQry_CidID_CIDADE: TFloatField;
    OQry_CidNM_CIDADE: TStringField;
    OQry_CidNR_DDDCIDA: TStringField;
    OQry_CidID_ESTADO: TFloatField;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    QryRegSubReg: TOraQuery;
    DtSrcRegSubReg: TOraDataSource;
    QryRegLogID_REGILOGI: TFloatField;
    QryRegLogNM_REGILOGI: TStringField;
    QryRegLogFX_REGILOGI: TStringField;
    QryRegLogID_INTEREGILOGI: TStringField;
    QryRegLogGN_RISCREGILOGI: TIntegerField;
    QryRegSubRegID_REGISUBRLOGI: TFloatField;
    QryRegSubRegID_REGILOGI: TFloatField;
    QryRegSubRegID_SUBRLOGI: TFloatField;
    QrySubRegLogID_SUBRLOGI: TFloatField;
    QrySubRegLogNM_SUBRLOGI: TStringField;
    QrySubRegLogFX_SUBRLOGI: TStringField;
    QrySubRegLogID_INTESUBRLOGI: TStringField;
    QrySubRegLogQN_FATOFRETABATSUBRLOGI: TFloatField;
    QryCargoID_CARGO: TFloatField;
    QryCargoNM_CARGO: TStringField;
    QryCliEndSG_TIPOLOGR: TStringField;
    OQry_Clie1IE_CLIENTE: TStringField;
    OQry_Clie1NM_CLIENTE: TStringField;
    OQry_Clie1GN_ORGAEXPERGCLIE: TStringField;
    OQry_Clie1GN_MENSVENDCLIE: TStringField;
    OQry_Clie1FL_BLOQADMICLIE: TStringField;
    OQry_Clie1GN_COMPENDECLIE: TStringField;
    OQry_Clie1NM_FANTCLIE: TStringField;
    OQry_Clie1NM_REDUCLIE: TStringField;
    OQry_Clie1FL_PESSCLIE: TStringField;
    OQry_Clie1FL_TIPOBLOQCLIE: TStringField;
    OQry_Clie1NR_CNPJCLIE: TStringField;
    OQry_Clie1NR_RGCLIE: TStringField;
    OQry_Clie1NR_LOGRENDECLIE: TStringField;
    OQry_Clie1NM_LOGRENDECLIE: TStringField;
    OQry_Clie1ID_TRATCLIE: TFloatField;
    OQry_Clie1NR_CPFCLIE: TStringField;
    OQry_Clie1NR_INSCPRODCLIE: TStringField;
    OQry_Clie1NR_INSCESTACLIE: TStringField;
    OQry_Clie1DT_CADACLIE: TDateTimeField;
    OQry_Clie1DT_NASCCLIE: TDateTimeField;
    OQry_Clie1GN_EMAICLIE: TStringField;
    OQry_Clie1NR_CAIXPOSTENDECLIE: TStringField;
    OQry_Clie1GN_URLCLIE: TStringField;
    OQry_Clie1DT_ALTECLIE: TDateTimeField;
    OQry_Clie1DT_PRIMCOMPCLIE: TDateTimeField;
    OQry_Clie1ID_BAIRRO: TFloatField;
    OQry_Clie1NR_CEPCAIXPOSTENDECLIE: TStringField;
    OQry_Clie1NR_CEPENDECLIE: TStringField;
    OQry_Clie1NR_FONECLIE: TStringField;
    OQry_Clie1ID_TIPOPEDIVEND: TFloatField;
    OQry_Clie1NM_PAICLIE: TStringField;
    OQry_Clie1NM_MAECLIE: TStringField;
    OQry_Clie1QN_DIASVISICLIE: TIntegerField;
    OQry_Clie1VL_LIMICREDCLIE: TFloatField;
    OQry_Clie1VL_CREDATUACLIE: TFloatField;
    OQry_Clie1QN_PONTLOGICLIE: TIntegerField;
    OQry_Clie1QN_DIFIENTRCLIE: TIntegerField;
    OQry_Clie1VL_CREDESPECLIE: TFloatField;
    OQry_Clie1VL_CREDESPEUSADCLIE: TFloatField;
    OQry_Clie1QN_TITUVENCCLIE: TIntegerField;
    OQry_Clie1VL_TITUVENCCLIE: TFloatField;
    OQry_Clie1VL_CREDUSADCLIE: TFloatField;
    OQry_Clie1ID_TABEPREC: TFloatField;
    OQry_Clie1FX_CLIENTE: TStringField;
    OQry_Clie1ID_USUASIST_BLOQ: TFloatField;
    OQry_Clie1FL_CONTICMSCLIE: TStringField;
    OQry_Clie1PC_DESCPADRCLIE: TFloatField;
    OQry_Clie1PC_BONIPADRCLIE: TFloatField;
    OQry_Clie1FL_NF_POSTERIOR: TStringField;
    OQry_Clie1FL_ARMAZENA: TStringField;
    OQry_Clie1PC_FRETEMAX: TFloatField;
    OQry_Clie1NR_FAXCLIE: TStringField;
    OQry_Clie1ID_REGISUBRLOGI: TFloatField;
    OQry_Clie1NR_FONECOMPCLIE: TStringField;
    OQry_Clie1EMPRESA: TStringField;
    OQry_Clie1ID_FORMPAGA: TFloatField;
    OQry_Clie1FL_PRIOCLIE: TIntegerField;
    OQry_Clie1FILIAL: TIntegerField;
    OQry_Clie1FL_ATIVCLIE: TStringField;
    OQry_Clie1ID_CLIENTE: TFloatField;
    OQry_Clie1ID_TIPOESTA: TFloatField;
    OQry_Clie1ID_INTECLIE: TStringField;
    OQry_Clie1GN_OBSECLIE: TStringField;
    OQry_Clie1ID_REGICOME: TFloatField;
    OQry_Clie1ID_REGILOGI: TFloatField;
    OQry_Clie1ID_SUBRLOGI: TFloatField;
    OQry_Clie1ID_FORNECEDOR_TRANSPORTADOR: TFloatField;
    OQry_Clie1ID_FORMPAGA_LIMITE: TFloatField;
    OQry_Clie1ID_TIPOLOGR: TFloatField;
    OQry_Clie1ID_SITUCOBR: TFloatField;
    OQry_Clie1ID_TIPOCOBR: TFloatField;
    OQry_Clie1ID_INSTCOBR: TFloatField;
    OQry_Clie1ID_CONTA: TFloatField;
    OQry_Clie1IE_CONTCONT: TStringField;
    OQry_Clie1ID_CIDADE: TFloatField;
    OQry_Clie1NM_CIDADE: TStringField;
    OQry_Clie1NR_DDDCIDA: TStringField;
    OQry_Clie1SG_ESTADO: TStringField;
    OQry_Clie1NM_PAIS: TStringField;
    OQry_Clie1NM_ATIVECON: TStringField;
    OQry_Clie1FX_ATIVECON: TStringField;
    OQry_Clie1ID_ATIVECON: TFloatField;
    OQry_Clie1NM_TRATCLIE: TStringField;
    OQry_Clie1NM_BAIRRO: TStringField;
    OQry_Clie1ID_GRUPCLIE: TFloatField;
    OQry_Clie1ID_TIPOVEND: TFloatField;
    OQry_Clie1NM_REGICOME: TStringField;
    OQry_Clie1NM_REGIGEOG: TStringField;
    GrpBx_Fisica: TGroupBox;
    DBCPF: TDBEdit;
    DBExp: TDBEdit;
    Label62: TLabel;
    Label63: TLabel;
    DBRG: TDBEdit;
    Label58: TLabel;
    QryVendedorID_VENDCLIE: TFloatField;
    DBBairro: TDBEdit;
    DBCodBairro: TDBEdit;
    Label66: TLabel;
    QryTabPreco: TOraQuery;
    DtSrcTabPreco: TOraDataSource;
    TabBloqueio: TTabSheet;
    DBGrid3: TDBGrid;
    QryClieBloqNM_MOTIBLOQ: TStringField;
    QryClieBloqNOME_USUARIO: TStringField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    OQry_Clie1FL_EXIBDESCNF: TStringField;
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
    QryVend: TOraQuery;
    DtSrcVend: TOraDataSource;
    QryVendID_VENDEDOR: TFloatField;
    QryVendNM_VENDEDOR: TStringField;
    QryVendNM_FANTVEND: TStringField;
    QryVendNM_REDUVEND: TStringField;
    QryVendPC_COMIVEND: TFloatField;
    QryVendFL_COMIVEND: TStringField;
    OQry_Clie1SIGLA_SERVINSPEC: TStringField;
    OQry_Clie1NUM_SERVINSPEC: TStringField;
    OQry_Clie1CTB: TStringField;
    DBR_CONTICMS: TDBRadioGroup;
    OQry_Clie1NR_FONECELULAR: TStringField;
    Label61: TLabel;
    DBEdit10: TDBEdit;
    Label60: TLabel;
    DBEdit39: TDBEdit;
    GroupBox1: TGroupBox;
    ChkClieInativo: TDBCheckBox;
    Lbl_DtCad: TLabel;
    DBDtCad: TDBEdit;
    Lbl_DtAlt: TLabel;
    DBDtAlt: TDBEdit;
    Label71: TLabel;
    Label72: TLabel;
    dttsUsuarioCadastro: TOraDataSource;
    qryUsuarioSolicitante: TOraQuery;
    dtsUsuarioSolicitante: TOraDataSource;
    DBLookupComboBox15: TDBLookupComboBox;
    OQry_Clie1ID_USU_SOLICITANTE: TFloatField;
    OQry_Clie1ID_USUASIST: TFloatField;
    pnlDivisor02: TPanel;
    pnlClassificacoes: TPanel;
    Grp_Class: TGroupBox;
    Label2: TLabel;
    DBLAtvEcon: TDBLookupComboBox;
    Label36: TLabel;
    DBLookupComboBox13: TDBLookupComboBox;
    Label37: TLabel;
    DBLookupComboBox14: TDBLookupComboBox;
    Label38: TLabel;
    DBTpEst: TDBLookupComboBox;
    DBCodCtb: TDBEdit;
    Lbl: TLabel;
    pnlDivisor01: TPanel;
    Panel7: TPanel;
    Grp_Pad: TGroupBox;
    DBLForPag: TDBLookupComboBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    DBLookupComboBox10: TDBLookupComboBox;
    Label35: TLabel;
    DBLookupComboBox12: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Panel3: TPanel;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Panel6: TPanel;
    Panel8: TPanel;
    Grp_ComMens: TGroupBox;
    DBMMens: TDBMemo;
    Grp_ComObs: TGroupBox;
    DBMObs: TDBMemo;
    Panel9: TPanel;
    Panel10: TPanel;
    Lbl_ConCod: TLabel;
    CodForn: TDBEdit;
    Lbl_ConFor: TLabel;
    DBConFor: TDBEdit;
    Lbl_ConFan: TLabel;
    DBConFan: TDBEdit;
    Lbl_ConCnpj: TLabel;
    DBConCnpj: TDBEdit;
    Panel11: TPanel;
    Panel12: TPanel;
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
    Grp_Condat: TGroupBox;
    LblConDtNas: TLabel;
    Lbl_ConDtCad: TLabel;
    DBConDtNas: TDBEdit;
    DBConDtCad: TDBEdit;
    Bit_DtNasc: TBitBtn;
    Bit_DtCad: TBitBtn;
    DBLTratpess: TDBLookupComboBox;
    DBRSexo: TDBRadioGroup;
    DBlCargo: TDBLookupComboBox;
    DBLDpto: TDBLookupComboBox;
    DBConDdi: TDBEdit;
    DBConDdd: TDBEdit;
    DBConTel: TDBEdit;
    DBConRam: TDBEdit;
    Lbl_ConObs: TLabel;
    DBMConObs: TDBMemo;
    Panel13: TPanel;
    Panel14: TPanel;
    Label45: TLabel;
    DBEdit22: TDBEdit;
    Label44: TLabel;
    DBEdit21: TDBEdit;
    Label43: TLabel;
    DBEdit20: TDBEdit;
    Label42: TLabel;
    DBEdit19: TDBEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    Label46: TLabel;
    DBLookupComboBox18: TDBLookupComboBox;
    Label47: TLabel;
    DBNmLogr: TDBEdit;
    Label48: TLabel;
    DBNumE: TDBEdit;
    Label49: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit32: TDBEdit;
    DBNmCidade: TDBEdit;
    Label52: TLabel;
    DBEdit35: TDBEdit;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit36: TDBEdit;
    Label55: TLabel;
    DBEdit37: TDBEdit;
    Label56: TLabel;
    DBLookupComboBox19: TDBLookupComboBox;
    Label57: TLabel;
    DBLookupComboBox20: TDBLookupComboBox;
    DBEdit38: TDBEdit;
    Label59: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    BitBtnEND: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    Panel17: TPanel;
    Panel18: TPanel;
    GroupBox5: TGroupBox;
    Label30: TLabel;
    DBEdit23: TDBEdit;
    Label31: TLabel;
    DBEdit24: TDBEdit;
    Label32: TLabel;
    DBEdit25: TDBEdit;
    DBEdit6: TDBEdit;
    Label39: TLabel;
    Label40: TLabel;
    DBEdit7: TDBEdit;
    Label64: TLabel;
    DBEdit9: TDBEdit;
    Label65: TLabel;
    DBEdit34: TDBEdit;
    DBLookupComboBox7: TDBLookupComboBox;
    Label19: TLabel;
    Label67: TLabel;
    DBEdit40: TDBEdit;
    Panel19: TPanel;
    Panel20: TPanel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBNOMCLI: TDBEdit;
    Label13: TLabel;
    DBNOMFAN: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Panel21: TPanel;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBNmVend: TDBEdit;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    BitBtn45: TBitBtn;
    Panel22: TPanel;
    Panel23: TPanel;
    GroupBox8: TGroupBox;
    Label34: TLabel;
    DBLookupComboBox11: TDBLookupComboBox;
    DBEdit41: TDBEdit;
    Label68: TLabel;
    DBRadioGroup8: TDBRadioGroup;
    BIncluir: TButton;
    Label29: TLabel;
    DBEdit26: TDBEdit;
    Label33: TLabel;
    DBEdit27: TDBEdit;
    Label69: TLabel;
    DBEdit42: TDBEdit;
    Label70: TLabel;
    DBEdit43: TDBEdit;
    Panel24: TPanel;
    OQry_Clie1FL_RESGATADO: TStringField;
    OQry_Clie1ID_USUARIO_RESG: TFloatField;
    pnlBotoes: TPanel;
    SB_ULTIMO: TSpeedButton;
    Sb_Sair: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_PRIMEIRO: TSpeedButton;
    SB_NOVO: TSpeedButton;
    SB_EDIT: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    chkResgatado: TDBCheckBox;
    DBLookupComboBox17: TDBLookupComboBox;
    grpSimplesNacional: TGroupBox;
    rgpSimplesNacional: TDBRadioGroup;
    btnSimplesNacional: TSpeedButton;
    BtCenCus: TBitBtn;
    BTBairro: TBitBtn;
    GroupBox4: TGroupBox;
    Lbl_DDI: TLabel;
    Lbl_DDD: TLabel;
    DBDDI: TDBEdit;
    DBDDD: TDBEdit;
    Lbl_Tel: TLabel;
    DBTEL: TDBEdit;
    DBEdit5: TDBEdit;
    Label41: TLabel;
    Lbl_Fax: TLabel;
    DBFAX: TDBEdit;
    Panel26: TPanel;
    DBRadioGroup9: TDBRadioGroup;
    GroupBox3: TGroupBox;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    Label23: TLabel;
    DBEdit18: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Lbl_Rur: TLabel;
    DBInsest: TDBEdit;
    Lbl_insest: TLabel;
    DBDTClie: TDBEdit;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    OQry_Clie1OP_SIMPLES_NACIONAL: TStringField;
    chkFuncionario: TDBCheckBox;
    OQry_Clie1FL_FUNCIONARIO: TStringField;
    dtsVendedorResg: TOraDataSource;
    btnExcel: TSpeedButton;
    dlgSaveArquivo: TSaveDialog;
    grpVendRelacionado: TGroupBox;
    edtCodVendedorRelacionado: TDBEdit;
    btnConsultaVendRel: TBitBtn;
    edtNomeVendedorRelacionado: TDBEdit;
    chkVendedorRelacionado: TDBCheckBox;
    QryVendedorFL_RELACIONADO: TStringField;
    QryVendedorID_VENDEDOR_REL: TFloatField;
    QryVendedorNM_VENREL: TStringField;
    DBCheckBox2: TDBCheckBox;
    OQry_Clie1FL_PRIORIDADE: TStringField;
    DBLMotInativacao: TDBLookupComboBox;
    QryListInativacao: TOraQuery;
    DtSrcListInativacao: TOraDataSource;
    edtUsuarioCadastro: TDBEdit;
    qryUsuarioCadastro: TOraQuery;
    OQry_Clie1CO_MOTIVOINATIVACAO: TFloatField;
    btnFormularioComissao: TSpeedButton;
    qryVendedorResg: TOraQuery;
    qryVendedorResgID_VENDEDOR: TFloatField;
    qryVendedorResgNM_REDUVEND: TStringField;
    qryVendedorResgNM_VENDEDOR: TStringField;
    OQry_Clie1NM_FORMPAGA: TStringField;
    QryCliEndLATITUDE: TStringField;
    QryCliEndLONGITUDE: TStringField;
    BtnTxt: TSpeedButton;
    dlgSaveArquivoTxt: TSaveDialog;
    DbLatitude: TDBEdit;
    Label17: TLabel;
    DbLongitude: TDBEdit;
    Label73: TLabel;
    OQry_Clie1LONGITUDE: TStringField;
    OQry_Clie1LATITUDE: TStringField;
    OQry_Clie1ID_INTECLIE_1: TStringField;
    OQry_Clie1FL_FUNCIONARIO_1: TStringField;
    OQry_Clie1ID_GRUPCLIE_1: TFloatField;
    QryCidadeID_IBGE: TIntegerField;
    DbCheckTituAberto: TDBCheckBox;
    Label74: TLabel;
    DBEdit13: TDBEdit;
    OQry_Clie: TSmartQuery;
    OQry_ClieCO_MOTIVOINATIVACAO: TFloatField;
    OQry_ClieIE_CLIENTE: TStringField;
    OQry_ClieNM_CLIENTE: TStringField;
    OQry_ClieGN_ORGAEXPERGCLIE: TStringField;
    OQry_ClieGN_MENSVENDCLIE: TStringField;
    OQry_ClieFL_BLOQADMICLIE: TStringField;
    OQry_ClieGN_COMPENDECLIE: TStringField;
    OQry_ClieNM_FANTCLIE: TStringField;
    OQry_ClieNM_REDUCLIE: TStringField;
    OQry_ClieFL_PESSCLIE: TStringField;
    OQry_ClieFL_TIPOBLOQCLIE: TStringField;
    OQry_ClieNR_CNPJCLIE: TStringField;
    OQry_ClieNR_RGCLIE: TStringField;
    OQry_ClieNR_LOGRENDECLIE: TStringField;
    OQry_ClieNM_LOGRENDECLIE: TStringField;
    OQry_ClieID_TRATCLIE: TFloatField;
    OQry_ClieNR_CPFCLIE: TStringField;
    OQry_ClieNR_INSCPRODCLIE: TStringField;
    OQry_ClieNR_INSCESTACLIE: TStringField;
    OQry_ClieDT_CADACLIE: TDateTimeField;
    OQry_ClieDT_NASCCLIE: TDateTimeField;
    OQry_ClieGN_EMAICLIE: TStringField;
    OQry_ClieNR_CAIXPOSTENDECLIE: TStringField;
    OQry_ClieGN_URLCLIE: TStringField;
    OQry_ClieDT_ALTECLIE: TDateTimeField;
    OQry_ClieDT_PRIMCOMPCLIE: TDateTimeField;
    OQry_ClieID_BAIRRO: TFloatField;
    OQry_ClieNR_CEPCAIXPOSTENDECLIE: TStringField;
    OQry_ClieNR_CEPENDECLIE: TStringField;
    OQry_ClieNR_FONECLIE: TStringField;
    OQry_ClieID_TIPOPEDIVEND: TFloatField;
    OQry_ClieNM_PAICLIE: TStringField;
    OQry_ClieNM_MAECLIE: TStringField;
    OQry_ClieQN_DIASVISICLIE: TIntegerField;
    OQry_ClieVL_LIMICREDCLIE: TFloatField;
    OQry_ClieVL_CREDATUACLIE: TFloatField;
    OQry_ClieQN_PONTLOGICLIE: TIntegerField;
    OQry_ClieQN_DIFIENTRCLIE: TIntegerField;
    OQry_ClieVL_CREDESPECLIE: TFloatField;
    OQry_ClieVL_CREDESPEUSADCLIE: TFloatField;
    OQry_ClieQN_TITUVENCCLIE: TIntegerField;
    OQry_ClieVL_TITUVENCCLIE: TFloatField;
    OQry_ClieVL_CREDUSADCLIE: TFloatField;
    OQry_ClieID_TABEPREC: TFloatField;
    OQry_ClieFX_CLIENTE: TStringField;
    OQry_ClieID_USUASIST_BLOQ: TFloatField;
    OQry_ClieFL_CONTICMSCLIE: TStringField;
    OQry_ClieFL_FUNCIONARIO: TStringField;
    OQry_ClieID_INTECLIE: TStringField;
    OQry_CliePC_DESCPADRCLIE: TFloatField;
    OQry_CliePC_BONIPADRCLIE: TFloatField;
    OQry_ClieFL_NF_POSTERIOR: TStringField;
    OQry_ClieFL_ARMAZENA: TStringField;
    OQry_CliePC_FRETEMAX: TFloatField;
    OQry_ClieNR_FAXCLIE: TStringField;
    OQry_ClieID_REGISUBRLOGI: TFloatField;
    OQry_ClieNR_FONECOMPCLIE: TStringField;
    OQry_ClieEMPRESA: TStringField;
    OQry_ClieID_FORMPAGA: TFloatField;
    OQry_ClieFL_PRIOCLIE: TIntegerField;
    OQry_ClieFILIAL: TIntegerField;
    OQry_ClieFL_ATIVCLIE: TStringField;
    OQry_ClieID_CLIENTE: TFloatField;
    OQry_ClieID_TIPOESTA: TFloatField;
    OQry_ClieID_INTECLIE_1: TStringField;
    OQry_ClieGN_OBSECLIE: TStringField;
    OQry_ClieID_REGICOME: TFloatField;
    OQry_ClieID_REGILOGI: TFloatField;
    OQry_ClieID_SUBRLOGI: TFloatField;
    OQry_ClieID_FORNECEDOR_TRANSPORTADOR: TFloatField;
    OQry_ClieID_FORMPAGA_LIMITE: TFloatField;
    OQry_ClieID_TIPOLOGR: TFloatField;
    OQry_ClieID_SITUCOBR: TFloatField;
    OQry_ClieID_TIPOCOBR: TFloatField;
    OQry_ClieID_INSTCOBR: TFloatField;
    OQry_ClieID_CONTA: TFloatField;
    OQry_ClieNM_FORMPAGA: TStringField;
    OQry_ClieIE_CONTCONT: TStringField;
    OQry_ClieID_CIDADE: TFloatField;
    OQry_ClieNM_CIDADE: TStringField;
    OQry_ClieNR_DDDCIDA: TStringField;
    OQry_ClieSG_ESTADO: TStringField;
    OQry_ClieFL_FUNCIONARIO_1: TStringField;
    OQry_ClieNM_PAIS: TStringField;
    OQry_ClieNM_ATIVECON: TStringField;
    OQry_ClieFX_ATIVECON: TStringField;
    OQry_ClieID_ATIVECON: TFloatField;
    OQry_ClieNM_TRATCLIE: TStringField;
    OQry_ClieNM_BAIRRO: TStringField;
    OQry_ClieID_GRUPCLIE: TFloatField;
    OQry_ClieID_TIPOVEND: TFloatField;
    OQry_ClieNM_REGICOME: TStringField;
    OQry_ClieNM_REGIGEOG: TStringField;
    OQry_ClieFL_EXIBDESCNF: TStringField;
    OQry_ClieSIGLA_SERVINSPEC: TStringField;
    OQry_ClieNUM_SERVINSPEC: TStringField;
    OQry_ClieCTB: TStringField;
    OQry_ClieOP_SIMPLES_NACIONAL: TStringField;
    OQry_ClieNR_FONECELULAR: TStringField;
    OQry_ClieID_USU_SOLICITANTE: TFloatField;
    OQry_ClieID_USUASIST: TFloatField;
    OQry_ClieID_USUARIO_RESG: TFloatField;
    OQry_ClieFL_RESGATADO: TStringField;
    OQry_ClieID_GRUPCLIE_1: TFloatField;
    OQry_ClieFL_PRIORIDADE: TStringField;
    OQry_ClieLONGITUDE: TStringField;
    OQry_ClieLATITUDE: TStringField;
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
    procedure DBNOMREDKeyPress(Sender: TObject; var Key: Char);
    procedure DBPessoaExit(Sender: TObject);
    procedure DBLTplogKeyPress(Sender: TObject; var Key: Char);
    procedure DBNumKeyPress(Sender: TObject; var Key: Char);
    procedure DBCepKeyPress(Sender: TObject; var Key: Char);
    procedure DBHorarioKeyPress(Sender: TObject; var Key: Char);
    procedure DBCeppstKeyPress(Sender: TObject; var Key: Char);
    procedure DBTELKeyPress(Sender: TObject; var Key: Char);
    procedure DBFAXKeyPress(Sender: TObject; var Key: Char);
    procedure DBHPageKeyPress(Sender: TObject; var Key: Char);
    procedure DBRGKeyPress(Sender: TObject; var Key: Char);
    procedure DBExpKeyPress(Sender: TObject; var Key: Char);
    procedure DBCpfKeyPress(Sender: TObject; var Key: Char);
    procedure DBCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure DBInsesKeyPress(Sender: TObject; var Key: Char);
    procedure DBInsestKeyPress(Sender: TObject; var Key: Char);
    procedure DBDTClieKeyPress(Sender: TObject; var Key: Char);
    procedure DBDtCadKeyPress(Sender: TObject; var Key: Char);
    procedure DBLTpVdKeyPress(Sender: TObject; var Key: Char);
    procedure DBLAtvEconKeyPress(Sender: TObject; var Key: Char);
    procedure DBLCtaKeyPress(Sender: TObject; var Key: Char);
    procedure DBLTratpessKeyPress(Sender: TObject; var Key: Char);
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
    procedure DBDTClieExit(Sender: TObject);
    procedure DBDTClieEnter(Sender: TObject);
    procedure DBRPessoaExit(Sender: TObject);
    procedure BtCenCusKeyPress(Sender: TObject; var Key: Char);
    procedure DBCpfExit(Sender: TObject);
    procedure DBCNPJExit(Sender: TObject);
    procedure LDcomponentes(LD:boolean);
    procedure TabCriterioShow(Sender: TObject);
    procedure DBGrd_CadClieTitleClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtnENDClick(Sender: TObject);
    procedure DBRadioGroup1Exit(Sender: TObject);
    procedure DBRadioGroup2Exit(Sender: TObject);
    procedure DBRadioGroup3Exit(Sender: TObject);
    procedure DBRadioGroup4Exit(Sender: TObject);
    procedure BitBtn45Click(Sender: TObject);
    procedure BTBairroClick(Sender: TObject);
    procedure BTBairroKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure btnSimplesNacionalClick(Sender: TObject);
    procedure BIncluirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBCodCidExit(Sender: TObject);
    procedure DBEdit32Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBInsestExit(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBEmailExit(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrd_CadClieDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrdConDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ODtS_ClieDataChange(Sender: TObject; Field: TField);
    procedure DBRPessoaChange(Sender: TObject);
    procedure DBLookupComboBox21KeyPress(Sender: TObject; var Key: Char);
    procedure btnExcelClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure btnConsultaVendRelClick(Sender: TObject);
    procedure chkVendedorRelacionadoClick(Sender: TObject);
    procedure edtCodVendedorRelacionadoExit(Sender: TObject);
    procedure edtNomeVendedorRelacionadoKeyPress(Sender: TObject;
      var Key: Char);
    procedure ODtS_ClieUpdateData(Sender: TObject);
    procedure ChkClieInativoClick(Sender: TObject);
    procedure DBLMotInativacaoClick(Sender: TObject);
    procedure btnFormularioComissaoClick(Sender: TObject);
    procedure BtnTxtClick(Sender: TObject);
    procedure DbLatitudeEnter(Sender: TObject);
    procedure DbLongitudeEnter(Sender: TObject);

  private
    { Private declarations }
  public
    NRed, NCom, VCom, VCod, NNom, Vdtstr,VSexo, VCid, NCid, NSg, NEst, NPais, NReg, Npas, NFan, VFOR, NFor, NEND, NCEP, VBair, NBair,VCli, NCli, VCNPJ, NFx, NFONE: string;
    VLIMORIGI,VLIMA,VCREDUSAA,VCREDATUAA, Vt1, Vt2, Vt3, Vt4:DOUBLE;
    SELPE, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10 : integer;
    Vtrava, Vfecha, bPercVendedor :boolean;
    sWhere: string;
  end;

var
  FrmClientes: TFrmClientes;

implementation

uses Principal, UFrmPesqCid, UFrmCadEstado, UFrmCadBairro, UFrmCadCidade, UFrmPesqClie,  UFrmSeldata, UFrmPesqFor, GLOBAL,
     UFrmPesqPais, Math, UPesquiCliente, UFrmPesqBairro, UFrmPesqRegCom, uFfmFormularioComissao, ufrmConsultaCidades,
     ufrmConsultaGrupoClientes, uFrmValidaCadastroExistenteCliente, uFrmConsultaUsuarioSistema, UFrmPesqVend, ufrmConsultaListaInativacao;


{$R *.dfm}
{funções da DLL Delphi}
function  ConsisteInscricaoEstadual (const Insc, UF: String): Integer;
stdcall; external 'InscE32.Dll';

procedure TFrmClientes.SB_PRIMEIROClick(Sender: TObject);
begin
if (TabContato.Showing) then
  QrContato.First
Else
  OQry_Clie.First;
end;

procedure TFrmClientes.SB_ANTERIORClick(Sender: TObject);
begin
if (TabContato.Showing) then
  QrContato.Prior
Else
  OQry_Clie.Prior;
end;

procedure TFrmClientes.SB_PROXIMOClick(Sender: TObject);
begin
if (TabContato.Showing) then
  QrContato.Next
Else
  OQry_Clie.Next;
end;

procedure TFrmClientes.SB_ULTIMOClick(Sender: TObject);
begin
if (TabContato.Showing) then
  QrContato.Last
Else
  OQry_Clie.Last;
end;

procedure TFrmClientes.SB_NOVOClick(Sender: TObject);
begin
  Vtrava:=True;
  Qry_bairro.close;
  Qry_bairro.SQL.Clear;
  Qry_bairro.SQL.Text := 'SELECT DISTINCT BAIRRO.ID_BAIRRO, BAIRRO.NM_BAIRRO, BAIRRO.FX_BAIRRO '+
                         'FROM BAIRRO, CIDADE '+
                         'WHERE CIDADE.ID_CIDADE = BAIRRO.ID_CIDADE AND CIDADE.ID_CIDADE =: ID_CIDADE '+
                         'ORDER BY BAIRRO.NM_BAIRRO';
  Qry_bairro.open;

  ActiveControl := Nil;
  LDcomponentes(True);

  if (TabContato.Showing) then
    begin
      QrContato.open;
      QrContato.Insert;
      QrContatoEMPRESA.Value := gs_Empresa;
      QrContatoFILIAL.Value  := gi_filial;
      QrContatoID_CLIENTE.Value := OQry_ClieID_CLIENTE.Value;
      QrContatoDT_CADACONTCLIE.Value := Date();
      QrContatoFX_CONTCLIE.Value := 'N';
      PageControl2.Pages[01].TabVisible := False;
      PageControl2.Pages[00].TabVisible := False;
      PageControl2.Pages[02].TabVisible := False;
      PageControl2.Pages[03].TabVisible := False;
      PageControl2.Pages[04].TabVisible := True;
      PageControl2.Pages[05].TabVisible := False;
      PageControl2.Pages[06].TabVisible := False;
      PageControl2.Pages[07].TabVisible := False;
      PageControl2.Pages[08].TabVisible := False;
    end
  else if (TabEnde.Showing) then
    begin
      QryCliEnd.open;
      QryCliEnd.Insert;
      QryCliEndID_CLIENTE.Value := OQry_ClieID_CLIENTE.Value;
      QryCliEndFX_ENDECLIE.Value := 'N';
      QryCliEndFL_ENTRENDECLIE.Value := 'S';
      QryCliEndFL_COBRENDECLIE.Value := 'S';
      QryCliEndFL_ENTRPADRENDECLIE.Value := 'S';
      QryCliEndFL_COBRPADRENDECLIE.Value := 'S';
      QryCliEndFL_LOCAPADRENDECLIE.Value := 'S';
      QryCliEndEMPRESA.Value := gs_Empresa;
      QryCliEndFILIAL.Value  := gi_filial;
      QryCliEndFX_ENDECLIE.Value := 'N';
      PageControl2.Pages[01].TabVisible := False;
      PageControl2.Pages[00].TabVisible := False;
      PageControl2.Pages[02].TabVisible := False;
      PageControl2.Pages[03].TabVisible := False;
      PageControl2.Pages[04].TabVisible := False;
      PageControl2.Pages[05].TabVisible := True;
      PageControl2.Pages[06].TabVisible := False;
      PageControl2.Pages[07].TabVisible := False;
      PageControl2.Pages[08].TabVisible := False;
    end
  else if (TabBloqueio.Showing) then
    begin
      QryClieBloq.open;
      QryClieBloq.Insert;
      QryClieBloqEMPRESA.Value := gs_Empresa;
      QryClieBloqFILIAL.Value  := gi_filial;
      QryClieBloqID_CLIENTE.Value := OQry_ClieID_CLIENTE.Value;
      QryClieBloqFX_BLOQCLIE.Value := 'S';
      QryClieBloqID_USUASIST.Value := gi_IdenUsua;
      QryClieBloqDT_BLOQCLIE.Value := now;
      QryClieBloqNOME_USUARIO.Value := gs_NomeUsuario;
      PageControl2.Pages[01].TabVisible := False;
      PageControl2.Pages[00].TabVisible := False;
      PageControl2.Pages[02].TabVisible := False;
      PageControl2.Pages[03].TabVisible := False;
      PageControl2.Pages[04].TabVisible := False;
      PageControl2.Pages[05].TabVisible := False;
      PageControl2.Pages[06].TabVisible := False;
      PageControl2.Pages[07].TabVisible := False;
      PageControl2.Pages[08].TabVisible := True;
    end
  else if (TabVendedores.Showing) then
    begin
      QryVendedor.open;
      QryVendedor.Insert;
      QryVendedorEMPRESA.Value := gs_Empresa;
      QryVendedorFILIAL.Value  := gi_filial;
      QryVendedorID_CLIENTE.Value := OQry_ClieID_CLIENTE.Value;
      QryVendedorFX_VENDCLIE.Value := 'N';
      QryVendedorFL_PADRVENDCLIE.Value := 'S';
      QryVendedorFL_COMIVENDCLIE.Value := 'N';
      QryVendedorPC_COMIVENDCLIE.Value := 0;
      QryVendedorFL_RELACIONADO.Value := 'N';
      grpVendRelacionado.Enabled := chkVendedorRelacionado.Checked;
      PageControl2.Pages[01].TabVisible := False;
      PageControl2.Pages[00].TabVisible := False;
      PageControl2.Pages[02].TabVisible := False;
      PageControl2.Pages[03].TabVisible := False;
      PageControl2.Pages[04].TabVisible := False;
      PageControl2.Pages[05].TabVisible := False;
      PageControl2.Pages[06].TabVisible := False;
      PageControl2.Pages[07].TabVisible := true;
      PageControl2.Pages[08].TabVisible := False;
      TabDetalhe.Show;
    end
  else
  begin

//    Try
//      frmValidaCadastroExistenteCliente:=TfrmValidaCadastroExistenteCliente.Create(nil);
//      frmValidaCadastroExistenteCliente.ShowModal;
//
//      if frmValidaCadastroExistenteCliente.bExiste then
//      begin
//        SB_CANCELClick(Sender);
//        Exit;
//      end;
//    Except;
//      frmValidaCadastroExistenteCliente.Free;
//    End;

    PageControl2.Pages[01].TabVisible := False;
    PageControl2.Pages[00].TabVisible := False;
    PageControl2.Pages[02].TabVisible := True;
    PageControl2.Pages[03].TabVisible := True;
    PageControl2.Pages[04].TabVisible := False;
    PageControl2.Pages[05].TabVisible := False;
    PageControl2.Pages[06].TabVisible := False;
    PageControl2.Pages[07].TabVisible := False;
    PageControl2.Pages[08].TabVisible := False;
    TabDetalhe.Show;
    OQry_Clie.Insert;
    OQry_ClieEMPRESA.Value := gs_Empresa;
    OQry_ClieFILIAL.Value  := gi_Filial;
    OQry_ClieDT_PRIMCOMPCLIE.Value := Date();
    OQry_ClieDT_CADACLIE.Value := Date();
    OQry_ClieDT_ALTECLIE.Value := Date();
    OQry_ClieDT_NASCCLIE.Value := Date();
    OQry_ClieQN_TITUVENCCLIE.Value := 1;
    OQry_ClieFL_ATIVCLIE.Value := 'S';
    OQry_ClieFL_BLOQADMICLIE.Value := 'N';
    OQry_ClieFL_TIPOBLOQCLIE.Value := 'AB';
    OQry_ClieFL_FUNCIONARIO.Value := 'N';
    OQry_ClieID_TRATCLIE.Value := 1;
    OQry_ClieFX_CLIENTE.Value := 'N';
    OQry_ClieFL_PRIOCLIE.value := 1;
    OQry_ClieQN_PONTLOGICLIE.Value := 3;
    OQry_ClieVL_LIMICREDCLIE.Value := 1500.00;
    OQry_ClieVL_CREDATUACLIE.Value := 1500.00;
    OQry_ClieID_FORMPAGA.Value := 11;
    OQry_ClieID_FORMPAGA_LIMITE.Value := 11;
    OQry_ClieFL_EXIBDESCNF.AsString := 'N';
    OQry_ClieID_USUASIST.Value := gi_IdenUsua;
    OQry_ClieID_SITUCOBR.value := 2;
    OQry_ClieID_INSTCOBR.value := 1;
    OQry_ClieID_TIPOCOBR.value := 1;
    OQry_ClieID_TIPOVEND.value := 2;
    OQry_ClieID_TIPOESTA.value := 7;
    OQry_ClieID_ATIVECON.value := 4;
//    OQry_ClieFL_TITUABERTO.Value := 'N';
//    OQry_ClieLATITUDE.Value := DbLatitude.Text;
//    OQry_ClieLONGITUDE.Value := DbLongitude.Text;
  end;

  Atual_ToolBar(5);

  //Direito Desconto Bonificação
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 82;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  chkResgatado.Enabled := (QrDireitos.RecordCount > 0);
  DBLookupComboBox17.Enabled:= (QrDireitos.RecordCount > 0);

  DBEdit16.Enabled := bPercVendedor;
  DBRadioGroup6.Enabled := bPercVendedor;

end;

Function TFrmClientes.Bot_Flat(Botao:Integer):string;
begin
  SB_PROXIMO.Flat  := True;
  SB_ANTERIOR.Flat := True;
  SB_ULTIMO.Flat   := True;
  SB_PRIMEIRO.Flat := True;
  SB_NOVO.Flat     := True;
  SB_EDIT.Flat     := True;
  SB_CONFIRMA.Flat := True;
  SB_CANCEL.Flat   := True;
  Sb_Sair.Flat     := True;

  If Botao= 1 then SB_PRIMEIRO.Flat := False;
  If Botao= 2 then SB_ANTERIOR.Flat := False;
  If Botao= 3 then SB_PROXIMO.Flat  := False;
  If Botao= 4 then SB_ULTIMO.Flat   := False;
  If Botao= 5 then SB_NOVO.Flat     := False;
  If Botao= 7 then SB_EDIT.Flat     := False;
  If Botao= 8 then SB_CONFIRMA.Flat := False;
  If Botao= 9 then SB_CANCEL.Flat   := False;
  If Botao=10 then SB_Sair.Flat     := False;

end;

procedure TFrmClientes.FormShow(Sender: TObject);
var
  Temp: TComponent;
  li_Loop : Integer;
begin
  if (LCAMPOS.Items.Count=0) then
  begin
    With LCampos.Items do
    begin
      Add('Código do Cliente  ');
      Add('Nome Cliente  ');
      Add('Nome Fantasia  ');
      Add('CPF   ');
      Add('CNPJ  ');
      Add('Código da Cidade  ');
      Add('Cidade  ');
      Add('Bairro  ');
      Add('Código País  ');
      Add('País  ');
      Add('U.F. ');
      Add('Atividade Econômica  ');
      Add('Data do Cadastro  ');
      Add('Flag Pessoa (F/J) ');
      Add('Tipo Venda ');
      Add('Flag Ativo (S/N) ');
      Add('Flag Bloqueio Admin. (S/N) ');
      Add('Código Externo ');
      Add('Qtd. Títulos ');
      Add('Vl. Limite ');
      Add('Grupo de Clientes');
      Add('Cód. Vendedor ');
      Add('Cód. Vendedor Resgate');
      Add('Funcionário');
      Add('Cód. Interno');
      Add('Motivo Inativação');
      Add('Sem Vendas Desde: ');
      Add('Flag Cordenadas (S/N)');
    end;
  end;

  PageControl2.Pages[1].TabVisible:= False;
  PageControl2.Pages[2].TabVisible:= False;
  PageControl2.Pages[3].TabVisible:= False;
  PageControl2.Pages[4].TabVisible:= False;
  PageControl2.Pages[5].TabVisible := False;
  PageControl2.Pages[6].TabVisible := False;
  PageControl2.Pages[7].TabVisible := False;
  PageControl2.Pages[8].TabVisible := False;

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
  SB_CONFIRMA.Enabled := False;
  SB_CANCEL.Enabled := False;
  SB_EDIT.Enabled := False;

  //Direito Desconto Bonificação
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 79;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;
  If (QrDireitos.RecordCount > 0) then
  begin
    DBEdit17.ReadOnly    := false;
    DBEdit18.ReadOnly    := false;
    DBCheckBox1.ReadOnly := false;
  end
  else
  begin
    DBEdit17.ReadOnly    := true;
    DBEdit18.ReadOnly    := true;
    DBCheckBox1.ReadOnly := true;
    DBEdit17.Color      := clBackground;
    DBEdit18.Color      := clBackground;
    DBCheckBox1.Color   := clBackground;
  end;

  //Direito Desconto Bonificação
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 82;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  chkResgatado.Enabled := (QrDireitos.RecordCount > 0);
  DBLookupComboBox17.Enabled:= (QrDireitos.RecordCount > 0);

  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 84;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  bPercVendedor := (QrDireitos.RecordCount > 0);

end;

function TFrmClientes.Atual_ToolBar(BtOrdem: Integer): string;
begin
  CASE BtOrdem of
    1:
    begin
      SB_NOVO.Enabled := False;
      SB_EDIT.Enabled := False;
      SB_CONFIRMA.Enabled := False;
      SB_CANCEL.Enabled := False;
      SB_PRIMEIRO.Enabled := True;
      SB_ANTERIOR.Enabled := True;
      SB_PROXIMO.Enabled := True;
      SB_ULTIMO.Enabled := True;
      SpeedButton1.Enabled := false;
      SpeedButton2.Enabled := false;
      LDcomponentes(False);
      DBRadioGroup9.Enabled := false;
    end;
    5,7:
    begin
      SB_NOVO.Enabled := False;
      SB_EDIT.Enabled := False;
      SB_CONFIRMA.Enabled := TRUE;
      SB_CANCEL.Enabled := TRUE;
      SB_PRIMEIRO.Enabled := False;
      SB_ANTERIOR.Enabled := False;
      SB_PROXIMO.Enabled := False;
      SB_ULTIMO.Enabled := False;
      DBRadioGroup9.Enabled := false;
      rgpSimplesNacional.Enabled := True;
    end;
    6,8..9:
    begin
      SB_NOVO.Enabled := True;
      SB_EDIT.Enabled := True;
      SB_CONFIRMA.Enabled := FALSE;
      SB_CANCEL.Enabled := FALSE;
      SB_PRIMEIRO.Enabled := True;
      SB_ANTERIOR.Enabled := True;
      SB_PROXIMO.Enabled := True;
      SB_ULTIMO.Enabled := True;
      SpeedButton1.Enabled := True;
      SpeedButton2.Enabled := True;
      DBRadioGroup9.Enabled := false;
    end;
    10:
    begin
      SB_NOVO.Enabled := False;
      SB_EDIT.Enabled := True;
      SB_CONFIRMA.Enabled := False;
      SB_CANCEL.Enabled := False;
      SB_PRIMEIRO.Enabled := True;
      SB_ANTERIOR.Enabled := True;
      SB_PROXIMO.Enabled := True;
      SB_ULTIMO.Enabled := True;
      SpeedButton1.Enabled := false;
      SpeedButton2.Enabled := false;
      DBRadioGroup9.Enabled := false;
    end;

    11:
    begin
      SB_NOVO.Enabled := False;
      SB_EDIT.Enabled := True;
      SB_CONFIRMA.Enabled := False;
      SB_CANCEL.Enabled := False;
      SB_PRIMEIRO.Enabled := True;
      SB_ANTERIOR.Enabled := True;
      SB_PROXIMO.Enabled := True;
      SB_ULTIMO.Enabled := True;
      SpeedButton1.Enabled := false;
      SpeedButton2.Enabled := false;
      DBRadioGroup9.Enabled := false;
    end;

    12:
    begin
      SB_NOVO.Enabled := True;
      SB_EDIT.Enabled := True;
      SB_CONFIRMA.Enabled := False;
      SB_CANCEL.Enabled := False;
      SB_PRIMEIRO.Enabled := True;
      SB_ANTERIOR.Enabled := True;
      SB_PROXIMO.Enabled := True;
      SB_ULTIMO.Enabled := True;
      DBRadioGroup9.Enabled := True;
    end;
  end;
end;

procedure TFrmClientes.SB_CANCELClick(Sender: TObject);
begin
  if (OQry_Clie.State in [dsedit,dsinsert]) then
    OQry_Clie.CancelUpdates;

  if (OQry_Cid.State in [dsedit,dsinsert]) then
    OQry_Cid.CancelUpdates;

  if (QrContato.State in [dsedit,dsinsert]) then
    QrContato.CancelUpdates;

  if (QryClieBloq.State in [dsedit,dsinsert]) then
    QryClieBloq.CancelUpdates;

  {NOME: FABRICIO DATA:27/02/2018 MOTIVO: ERRO. Permitia inclusão repetida de Vendedor}
  if (QryVendedor.State in [DSEDIT,DSINSERT]) then
    QryVendedor.CancelUpdates;

  Vtrava:= False;

  PageControl2.Pages[0].TabVisible:= True;
  PageControl2.Pages[1].TabVisible:= True;
  PageControl2.Pages[2].TabVisible:= True;
  PageControl2.Pages[3].TabVisible:= True;
  PageControl2.Pages[4].TabVisible:= True;
  PageControl2.Pages[5].TabVisible:= True;
  PageControl2.Pages[6].TabVisible:= True;
  PageControl2.Pages[7].TabVisible:= True;
  PageControl2.Pages[8].TabVisible:= True;
  LDcomponentes(False);

  //Direito a Incluir
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
  begin
    PageControl2.Pages[6].TabVisible := False;
    Atual_ToolBar(9)
  end
  else
    Atual_ToolBar(1);

  //Direito a Ler
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(1);

  //Direito LIMITE DE CREDITO
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 43;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount > 0) then
  begin
    PageControl2.Pages[6].TabVisible := True;
    Atual_ToolBar(11);
    LDcomponentes(False);
  end;

  with QryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' SELECT id_modulo, id_janela, id_recurso, id_usuario ');
    SQL.Add(' FROM sct_direitos_us  ');
    SQL.Add(' WHERE id_modulo=9'  );
    SQL.Add('   AND id_janela = 27 AND id_usuario =' + IntToStr(gi_IdenUsua) );
    Open;
  end;

  if (QryTemp.RecordCount >= 6) then
  begin
    Atual_ToolBar(12);
  end;

//Direito Editar Latitude/Longitude
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 86;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  if (QrDireitos.RecordCount > 0) then
  begin
    PageControl2.Pages[1].TabVisible := True;
    PageControl2.Pages[2].TabVisible := true;
    PageControl2.Pages[3].TabVisible := True;
    PageControl2.Pages[4].TabVisible := True;
    PageControl2.Pages[5].TabVisible := True;
    PageControl2.Pages[6].TabVisible := False;
    PageControl2.Pages[7].TabVisible := True;
    PageControl2.Pages[8].TabVisible := False;
    Atual_ToolBar(10);
  end;
end;


procedure TFrmClientes.SB_EDITClick(Sender: TObject);
begin

  Vtrava:=True;
  Qry_bairro.close;
  Qry_bairro.SQL.Clear;
  Qry_bairro.SQL.Text := 'SELECT DISTINCT BAIRRO.ID_BAIRRO, BAIRRO.NM_BAIRRO, BAIRRO.FX_BAIRRO '+
                         'FROM BAIRRO, CIDADE '+
                         'WHERE CIDADE.ID_CIDADE = BAIRRO.ID_CIDADE AND CIDADE.ID_CIDADE =: ID_CIDADE '+
                         'ORDER BY BAIRRO.NM_BAIRRO ';

  Qry_bairro.open;

  if (TabDetalhe.Showing) or (TabComplemento.Showing) then
  begin
    OQry_Clie.Edit;
  end
  else if (TabContato.Showing) then
  begin
    QrContato.Edit;
  end
  else if (TabVendedores.Showing) then
  begin
    QryVendedor.Edit;
    grpVendRelacionado.Enabled := chkVendedorRelacionado.Checked;
  end
  else if (TabLimite.Showing) then
  begin
    OQry_Clie.Edit;
  end
  else if (TabBloqueio.Showing) then
  begin
    OQry_Clie.Edit;
  end
  else if (TabEnde.Showing) then
  begin
    QryCliEnd.Edit;
  end;

  Atual_ToolBar(7);
  LDcomponentes(True);

  if (TabDetalhe.Showing) then
  begin
    DBR_CONTICMS.Enabled := (DBRPessoa.ItemIndex = 0);
  end;

  with QryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' SELECT id_modulo, id_janela, id_recurso, id_usuario ');
    SQL.Add(' FROM sct_direitos_us  ');
    SQL.Add(' WHERE id_modulo=9'  );
    SQL.Add('   AND id_janela = 27 AND id_usuario =' + IntToStr(gi_IdenUsua) );
    Open;
  end;

  if (QryTemp.RecordCount >= 6) then
  begin
    PageControl2.Pages[6].TabVisible := True;
    PageControl2.Pages[8].TabVisible := True;
    OQry_Clie.Edit;
  end
  else
  begin
    //Direito LIMITE DE CREDITO
    QrDireitos.Close;
    QrDireitos.ParamByName('VRECUR').AsInteger   := 43;
    QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QrDireitos.Open;

    If (QrDireitos.RecordCount > 0) then
    begin
      PageControl2.Pages[0].TabVisible := False;
      PageControl2.Pages[1].TabVisible := False;
      PageControl2.Pages[2].TabVisible := False;
      PageControl2.Pages[3].TabVisible := False;
      PageControl2.Pages[4].TabVisible := False;
      PageControl2.Pages[5].TabVisible := False;
      PageControl2.Pages[6].TabVisible := True;
      PageControl2.Pages[7].TabVisible := False;
      PageControl2.Pages[8].TabVisible := True;
      OQry_Clie.Edit;
    end;

  end;

//  Direito Editar Latitude/Longitude
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 86;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  if (QrDireitos.RecordCount>0) then
  begin
    LDcomponentes(False);

    DbLatitude.Enabled := True;
    DbLongitude.Enabled := True;
    DBHPage.Enabled := True;
    DBLograd.Enabled := True;
    DBNum.Enabled := True;
    DBLTplog.Enabled := True;
    DBCompl.Enabled := True;
    DBCep.Enabled := True;
    DBCeppst.Enabled := True;
    DBEmail.Enabled := True;

    OQry_Clie.Edit;
  end;


  DBEdit14.Enabled:= False;
  BitBtn45.Enabled:= False;
  DBNmVend.Enabled:= False;
  DBEdit12.Enabled:= False;
  DBEdit15.Enabled:= False;
  DBRadioGroup9.Enabled := false;
  grpSimplesNacional.Enabled := (DBRPessoa.ItemIndex = 0);
  chkFuncionario.Enabled := True; {(DBRPessoa.ItemIndex = 1);}
  GrpBx_Jur.Enabled := (DBRPessoa.ItemIndex = 0);
  GrpBx_Fisica.Enabled := (DBRPessoa.ItemIndex = 1);

  //Direito Desconto Bonificação
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 82;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  chkResgatado.Enabled := (QrDireitos.RecordCount > 0);
  DBLookupComboBox17.Enabled:= (QrDireitos.RecordCount > 0);

  DBEdit16.Enabled := bPercVendedor;
  DBRadioGroup6.Enabled := bPercVendedor;

end;

procedure TFrmClientes.SB_EXCLUIClick(Sender: TObject);
begin

  if (TabLista.Showing) then
  begin
    MessageDlg('Para excluir um item, a janela é DETALHE!!!.',mtInformation,[mbOk], 0, mbOk);
    Screen.Cursor := crDefault;
    Exit;
  end;

  if (TabContato.Showing) then
  begin
    if MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      QrContato.Delete;
      QrContato.ApplyUpdates;
      QrContato.CommitUpdates;
      QrContato.Refresh;
    end;
  end
  else if (TabEnde.Showing) then
  begin
    if MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      QryCliEnd.Delete;
      QryCliEnd.ApplyUpdates;
      QryCliEnd.CommitUpdates;
      QryCliEnd.Refresh;
    end;
  end
  else if (TabVendedores.Showing) then
  begin
    if (QryVendedorFL_PADRVENDCLIE.Value = 'S') then
    begin
         MessageDlg('Exclusão não permitida, este vendedor esta ativo!!',mtConfirmation, [mbYes, mbNo], 0, mbYes);
         exit;
    end;
    if MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      QryVendedor.Delete;
      QryVendedor.ApplyUpdates;
      QryVendedor.CommitUpdates;
      QryVendedor.Refresh;
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
                 ' where  pcodiclie = '+ FloatToStr(OQry_ClieID_CLIENTE.Value);
        Open;

        if not (IsEmpty) then
        begin
          MessageDlg('Exclusão não permitida, existe lançamento no financeiro deste cliente.',mtConfirmation, [mbYes, mbNo], 0, mbYes);
          exit;
        end;
      end;

      OQry_Clie.Delete;
      OQry_Clie.ApplyUpdates;
      OQry_Clie.CommitUpdates;
      OQry_Cid.CommitUpdates;
      OQry_Lograd.CommitUpdates;
      Qry_Tratclie.CommitUpdates;
      DBGrd_CadClie.Refresh;
    end;
  end;

  Atual_ToolBar(6);

end;


procedure TFrmClientes.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmClientes.EdExprChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmClientes.BitBtn2Click(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  DBDTClie.text:= Vdtstr;
  if ( DBDTClie.visible AND DBDTClie.enabled ) then
     DBDTClie.SetFocus;
end;

procedure TFrmClientes.BitBtn4Click(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  DBDtAlt.text:= Vdtstr;
end;

procedure TFrmClientes.BtCenCusClick(Sender: TObject);
begin
  FrmOriPesq:=201;
  frmConsultaCidades:=TfrmConsultaCidades.Create(Self);
  frmConsultaCidades.ShowModal;
end;


procedure TFrmClientes.Sb_SairClick(sender: tObject);
begin

  if Vtrava= true then
  begin
    if (QryCliEnd.State in [dsedit,dsinsert])  or QryCliEnd.IsEmpty  then
    begin
      Application.MessageBox('Falta cadastrar Endereço do Cliente.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabEnde.Show;
      Exit;
    end
    else if (QryVendedor.State in [dsedit,dsinsert])  or QryVendedor.IsEmpty  then
    begin
      Application.MessageBox('Falta cadastrar Vendedor Cliente.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabVendedores.Show;
      Exit;
    end;
  END;

  OQry_Clie.Close;
  Qry_Tratclie.Close;
  OQry_Cid.Close;
  OQry_Lograd.Close;
  QrContato.Close;
  Qry_FrPag.Close;
  OQry_Tratpess.Close;
  OQry_AtEcon.Close;

  VFecha:=True;
  Close;
end;
procedure TFrmClientes.LCamposClick(Sender: TObject);
begin
  SELPE:=0;

  CASE LCAMPOS.ItemIndex OF
    0:SELPE:=1;   // id_cliente
    5:SELPE:=2;   // cidade
    12:SELPE:=3;  // data
    20:SELPE:=4;  // Grupo de Clientes
    21:SELPE:=5;  // Vendedor
    22:SELPE:=6;  // Usuario resgatou cliente
    25:SELPE:=7;  // Lista de Motivos de Inativação
    26:SELPE:=3;  // data
  END;

  BPESQ.Visible := (SELPE > 0);

end;


procedure TFrmClientes.BtIncluirClick(Sender: TObject);
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
        Vre:=' AND ';
      end
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

    If RGeou.ItemIndex=0  then
      Vre:= Vre + '(' ;

    Case LCampos.itemindex of
      0:Vre:=Vre + 'cliente.id_cliente';
      1:Vre:=Vre + 'cliente.nm_cliente';
      2:Vre:=Vre + 'cliente.nm_fantclie';
      3:Vre:=Vre + 'cliente.nr_cpfclie';
      4:Vre:=Vre + 'cliente.nr_cnpjclie';
      5:Vre:=Vre + 'cidade.id_cidade';
      6:Vre:=Vre + 'cidade.nm_cidade';
      7:Vre:=Vre + 'bairro.nm_bairro';
      8:Vre:=Vre + 'pais.id_pais';
      9:Vre:=Vre + 'pais.nm_pais';
      10:Vre:=Vre + 'estado.sg_estado';
      11:Vre:=Vre + 'atividade_economica.nm_ativecon';
      12:Vre:=Vre + 'trunc(cliente.dt_cadaclie)';
      13:Vre:=Vre + 'cliente.fl_pessclie';
      14:Vre:=Vre + 'cliente.id_tipovend';
      15:Vre:=Vre + 'cliente.fl_ativclie';
      16:Vre:=Vre + 'cliente.fl_bloqadmiclie';
      17:Vre:=Vre + 'cliente.IE_CLIENTE';
      18:Vre:=Vre + 'cliente.QN_TITUVENCCLIE';
      19:Vre:=Vre + 'cliente.VL_LIMICREDCLIE';
      20:Vre:=Vre + 'cliente.ID_GRUPCLIE';
      21:Vre:=Vre + 'cliente_vendedor.id_vendedor';
      22:Vre:=Vre + 'CLIENTE.ID_USUARIO_RESG';
      23:Vre:=Vre + 'CLIENTE.FL_FUNCIONARIO';
      24:Vre:=Vre + 'CLIENTE.ID_INTECLIE';
      25:Vre:=Vre + 'CLIENTE.CO_MOTIVOINATIVACAO';
      26:Vre:=Vre + 'NOT(CLIENTE.ID_CLIENTE IN (SELECT ID_CLIENTE FROM PEDIDO_VENDA WHERE TO_DATE(DT_FATUPEDIVEND)>= ';
      27:Vre:=Vre + '(CASE WHEN cliente.LONGITUDE IS not NULL then ''S'' ELSE ''N'' END)';
    end;

    if LCampos.itemindex <> 26 then
    begin
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
        1..4:Vre:= Vre + '''';
        6..7:Vre:= Vre + '''';
        9..10:Vre:= Vre + '''';
        12:Vre:= Vre + 'TO_DATE(''';
        13..17:Vre:= Vre + '''';
        22..23:Vre:= Vre + '''';
        27:Vre:= Vre + '''';
      end;

      If CBCond.ItemIndex=6 then
        Vre:=Vre + '%';
    end;

    if LCampos.itemindex <> 26 then
      Vre:=Vre + UpperCase(EdExpr.text)
    else
      Vre:=Vre + '''' + UpperCase(EdExpr.text) + '''';

    if LCampos.itemindex <> 26 then
    begin
      If CBCond.ItemIndex=6 then
        Vre:=Vre + '%';

      Case LCampos.itemindex of
        1..4:Vre:= Vre + '''';
        6..7:Vre:= Vre + '''';
        9..10:Vre:= Vre + '''';
        12:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY''' +')';
        13..17:Vre:= Vre + '''';
        22..23:Vre:= Vre + '''';
        27:Vre:= Vre + '''';
      end;
    end
    else
      Vre:= Vre + '))';

    Vre:=Vre+')';

    MResul.Lines.Add(Vre);

    EdExpr.Text :='';
    BtIncluir.Enabled :=false;
  end;

  if ( BtAtivar.Visible AND BtAtivar.Enabled ) then
     BtAtivar.SetFocus;
end;

procedure TFrmClientes.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin

  if (LCampos.ItemIndex < 0) and (Length(MResul.Text)>0) then
  begin
    Application.MessageBox('É necessário selecionar um campo para Filtro.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
    MResul.Text:= '';
    LCampos.SetFocus;
    Exit;
  end;

  Screen.Cursor := crSQLWait;
  OQry_Clie.Close;

  WITH OQry_Clie.SQL DO
  BEGIN
    Clear;
    Add('SELECT distinct CO_MOTIVOINATIVACAO, cliente.ie_cliente,cliente.nm_cliente,cliente.gn_orgaexpergclie,cliente.gn_mensvendclie,cliente.fl_bloqadmiclie,');
    Add('cliente.gn_compendeclie,cliente.nm_fantclie,cliente.nm_reduclie,cliente.fl_pessclie,cliente.fl_tipobloqclie,cliente.nr_cnpjclie,');
    Add('cliente.nr_rgclie,cliente.nr_logrendeclie,cliente.nm_logrendeclie,cliente.id_tratclie,cliente.nr_cpfclie,cliente.nr_inscprodclie,');
    Add('cliente.nr_inscestaclie,cliente.dt_cadaclie,cliente.dt_nascclie,cliente.gn_emaiclie,cliente.nr_caixpostendeclie,cliente.gn_urlclie,');
    Add('cliente.dt_alteclie,cliente.dt_primcompclie,cliente.id_bairro,cliente.nr_cepcaixpostendeclie,cliente.nr_cependeclie,cliente.nr_foneclie,');
    Add('cliente.id_tipopedivend,cliente.nm_paiclie,cliente.nm_maeclie,cliente.qn_diasvisiclie,cliente.vl_limicredclie,cliente.vl_credatuaclie,');
    Add('cliente.qn_pontlogiclie,cliente.qn_difientrclie,cliente.vl_credespeclie,cliente.vl_credespeusadclie,cliente.qn_tituvencclie,');
    Add('cliente.vl_tituvencclie,cliente.vl_credusadclie,cliente.id_tabeprec,cliente.fx_cliente,cliente.id_usuasist_bloq,');
    Add('CASE WHEN CLIENTE.FL_PESSCLIE = ''J'' then NVL(CLIENTE.FL_CONTICMSCLIE,''S'')');
    Add('ELSE NVL(CLIENTE.FL_CONTICMSCLIE,''N'') END FL_CONTICMSCLIE, CLIENTE.FL_FUNCIONARIO, CLIENTE.ID_INTECLIE, ');
    Add('cliente.pc_descpadrclie, cliente.pc_bonipadrclie, cliente.fl_nf_posterior, cliente.fl_armazena,');
    Add('cliente.pc_fretemax, cliente.nr_faxclie, cliente.id_regisubrlogi, cliente.nr_fonecompclie,');
    Add('cliente.EMPRESA, cliente.ID_FORMPAGA, cliente.fl_prioclie, cliente.FILIAL, cliente.fl_ativclie,');
    Add('cliente.id_cliente, cliente.id_tipoesta, cliente.id_inteclie, cliente.gn_obseclie, cliente.id_regicome,');
    Add('cliente.id_regilogi, cliente.id_subrlogi, cliente.id_fornecedor_transportador, cliente.id_formpaga_limite,');
    Add('cliente.id_tipologr, cliente.id_situcobr, cliente.id_tipocobr, cliente.id_instcobr, cliente.id_conta, FORMA_PAGAMENTO.NM_FORMPAGA, ');
    Add('cliente.ie_contcont, CIDADE.ID_CIDADE, CIDADE.NM_CIDADE, CIDADE.NR_DDDCIDA,ESTADO.SG_ESTADO, CLIENTE.FL_FUNCIONARIO,');
    Add('PAIS.NM_PAIS,  ATIVIDADE_ECONOMICA.nm_ativecon, ATIVIDADE_ECONOMICA.fx_ativecon, ATIVIDADE_ECONOMICA.id_ativecon,');
    Add('cliente_tratamento.nm_tratclie,bairro.nm_bairro, cliente.id_grupclie, cliente.id_tipovend, regiao_comercial.nm_regicome,');
    Add('regiao_geografica.nm_regigeog, CLIENTE.FL_EXIBDESCNF, CLIENTE.SIGLA_SERVINSPEC, CLIENTE.NUM_SERVINSPEC, CLIENTE.CTB, CLIENTE.OP_SIMPLES_NACIONAL, ');
    Add('CLIENTE.NR_FONECELULAR, CLIENTE.ID_USU_SOLICITANTE, CLIENTE.ID_USUASIST, CLIENTE.ID_USUARIO_RESG, CLIENTE.FL_RESGATADO, CLIENTE.ID_GRUPCLIE, CLIENTE.FL_PRIORIDADE, ');
    Add('cliente.LONGITUDE, cliente.LATITUDE    ');
    Add('FROM ');
    Add('cliente, CIDADE, ESTADO,PAIS,  bairro,ATIVIDADE_ECONOMICA, cliente_CONTATO, FORMA_PAGAMENTO, LOGRADOURO_TIPO, TRATAMENTO_PESSOAL,');
    Add('cliente_bloqueio, cliente_tratamento, cliente_vendedor, cliente_frete, cliente_referencia_bancaria, cliente_referencia_comercial,');
    Add('cliente_grupo, cobranca_instrucao, regiao_comercial, regiao_geografica      ');
    Add('WHERE');
    Add(' estado.id_regigeog =  regiao_geografica.id_regigeog (+) and  ');
    Add(' regiao_comercial.id_regicome = cliente.id_regicome and        ');
    Add(' cobranca_instrucao.id_instcobr (+) = cliente.id_instcobr  AND  ');
    Add(' Cliente.ID_BAIRRO = BAIRRO.ID_BAIRRO AND                 ');
    Add(' BAIRRO.ID_CIDADE = CIDADE.ID_CIDADE AND                  ');
    Add(' ESTADO.ID_ESTADO (+) = CIDADE.ID_ESTADO AND              ');
    Add(' PAIS.ID_PAIS = ESTADO.ID_PAIS AND                        ');
    Add(' LOGRADOURO_TIPO.ID_TIPOLOGR(+) = CLIENTE.ID_TIPOLOGR AND   ');
    Add(' TRATAMENTO_PESSOAL.ID_TRATPESS(+) = cliente_CONTATO.ID_TRATPESS AND ');
    Add(' cliente_CONTATO.ID_cliente (+)  =   cliente.ID_cliente AND        ');
    Add(' FORMA_PAGAMENTO.ID_FORMPAGA(+) = cliente.ID_FORMPAGA and          ');
    Add(' ATIVIDADE_ECONOMICA.ID_ATIVECON(+) =  Cliente.ID_ATIVECON    AND  ');
    Add(' cliente_bloqueio.id_cliente(+) =  cliente.id_cliente     AND      ');
    Add(' cliente_tratamento.id_tratclie(+) = cliente.id_tratclie  and     ');
    Add(' (cliente_vendedor.id_cliente(+) = cliente.id_cliente ) and ');
    Add(' cliente_frete.id_cliente(+) = cliente.id_cliente and            ');
    Add(' cliente_referencia_bancaria.id_cliente(+) =  cliente.id_cliente and ');
    Add(' cliente_referencia_comercial.id_cliente(+) = cliente.id_cliente and ');
    Add(' cliente_grupo.id_grupclie(+) = cliente.id_grupclie              ');

    XTM:=MResul.Lines.Count;
    If XTM >0 then
    begin
      OQry_Clie.SQL.Add(' AND ');
      OQry_Clie.SQL.Add(MResul.Text);
    end
    else
    begin
      Screen.Cursor := crDefault;
      if Application.MessageBox('             Exibir listagem sem filtro?                        ', PChar(FrmClientes.Caption), MB_YESNO) = IDNO then
        exit
      Else
        Screen.Cursor := crSQLWait;
    end;

    OQry_Clie.SQL.Add('ORDER BY CLIENTE.ID_CLIENTE');
    OQry_Clie.Open;
    VLIMORIGI:= OQry_ClieVL_LIMICREDCLIE.Value;
    VLIMA := OQry_ClieVL_LIMICREDCLIE.Value;
    VCREDUSAA:= OQry_ClieVL_CREDUSADCLIE.Value;
    VCREDATUAA := OQry_ClieVL_CREDATUACLIE.Value;

    OQry_Tratpess.Close;
    OQry_Tratpess.Open;
    OQry_Cid.Close;
    OQry_Cid.Open;
    QryCobSit.close;
    QryCobSit.open;
    QryConta.close;
    QryConta.open;
    QryTabPreco.close;
    QryTabPreco.open;
    QryGrpCliente.close;
    QryGrpCliente.open;
    QryCobrInst.close;
    QryCobrInst.open;
    QryCliEnd.close;
    QryCliEnd.open;
    QryVdTp.close;
    QryVdTp.open;
    QryClieBloq.close;
    QryClieBloq.open;
    QryMotBloq.close;
    QryMotBloq.Open;
    QryCobrTipo.close;
    QryCobrTipo.open;
    QryPedVdTp.close;
    QryPedVdTp.open;
    QryEstTipo.close;
    QryEstTipo.open;
    OQry_Lograd.close;
    OQry_Lograd.Open;
    Qry_FrPag.Close;
    Qry_FrPag.open;
    QryCargo.Close;
    QryCargo.open;
    OQry_Dpto.close;
    OQry_Dpto.open;
    QryVendedor.close;
    QryVendedor.open;
    OQry_AtEcon.Close;
    OQry_AtEcon.open;
    QryRegCom.Close;
    QryRegCom.open;
    QrySubRegLog.close;
    QrySubRegLog.open;
    QryRegLog.close;
    QryRegLog.open;
    Qry_Tratclie.close;
    Qry_Tratclie.open;
    QryTratpess.Close;
    QryTratpess.open;
    QrContato.Close;
    QrContato.Open;
    Qry_bairro.Close;
    Qry_bairro.Open;
    qryUsuarioCadastro.Close;
    qryUsuarioCadastro.ParamByName('ID_USUARIO').AsInteger:= OQry_ClieID_USUASIST.AsInteger;
    qryUsuarioCadastro.Open;
    qryUsuarioSolicitante.Close;
    qryUsuarioSolicitante.Open;
    qryVendedorResg.Close;
    qryVendedorResg.Open;
    QryListInativacao.Close;
    QryListInativacao.Open;

    PageControl2.Pages[1].Show;
    Screen.Cursor := crDefault;
    PageControl2.Pages[1].TabVisible := True;
    PageControl2.Pages[2].TabVisible := true;
    PageControl2.Pages[3].TabVisible := True;
    PageControl2.Pages[4].TabVisible := True;
    PageControl2.Pages[5].TabVisible := True;
    PageControl2.Pages[6].TabVisible := False;
    PageControl2.Pages[7].TabVisible := True;
    PageControl2.Pages[8].TabVisible := False;
    Atual_ToolBar(1);

    //Direito a Incluir
    QrDireitos.Close;
    QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
    QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QrDireitos.Open;
    If (QrDireitos.RecordCount>0) then
    begin
      PageControl2.Pages[6].TabVisible := False;
      Atual_ToolBar(9);
    end;

    //Direito de Leitura
    QrDireitos.Close;
    QrDireitos.ParamByName('VRECUR').AsInteger   := 4;
    QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QrDireitos.Open;

    If (QrDireitos.RecordCount>0) then
      Atual_ToolBar(1);

    //Direito a Editar
    QrDireitos.Close;
    QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
    QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QrDireitos.Open;
    If (QrDireitos.RecordCount>0) then
    begin
      PageControl2.Pages[6].TabVisible := False;
      Atual_ToolBar(10);
    end;

    //Direito LIMITE DE CREDITO
    QrDireitos.Close;
    QrDireitos.ParamByName('VRECUR').AsInteger   := 43;
    QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QrDireitos.Open;

    If (QrDireitos.RecordCount > 0) then
    begin
      PageControl2.Pages[6].TabVisible := True;
      Atual_ToolBar(11);
      LDcomponentes(False);
    end;

    with QryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add(' SELECT id_modulo, id_janela, id_recurso, id_usuario ');
      SQL.Add(' FROM sct_direitos_us  ');
      SQL.Add(' WHERE id_modulo=9'  );
      SQL.Add('   AND id_janela = 27 AND id_usuario =' + IntToStr(gi_IdenUsua) );
      Open;
    end;

    if (QryTemp.RecordCount >= 6) then
    begin
      Atual_ToolBar(12);
    end;

  end;
end;

procedure TFrmClientes.BPESQClick(Sender: TObject);
begin
  try
    XRPM:=15;
    FrmOriPesq:=20;
    CASE SELPE OF
      1:
      BEGIN
        FrmPesqCliente:=TFrmPesqCliente.Create(Self);
        FrmPesqCliente.Show;
      END;
      2:
      BEGIN
        frmConsultaCidades:=TfrmConsultaCidades.Create(Self);
        frmConsultaCidades.ShowModal;
      END;
      3:
      BEGIN
        Cria_FrmSelData(Vdtstr);
        EdExpr.text:= Vdtstr;
      END;
      4:
      BEGIN
        frmConsultaGrupoClientes:=TfrmConsultaGrupoClientes.Create(Self);
        frmConsultaGrupoClientes.Show;
      END;
      5..6:
      BEGIN
        FrmOriPesq:=201;
        FrmPesqVend:=TFrmPesqVend.Create(Self);
        FrmPesqVend.ShowModal;
      END;
      7:
      begin
        frmConsultaListaInativacao:=TfrmConsultaListaInativacao.Create(Self);
        frmConsultaListaInativacao.Show;
      end;
    end;

    if BtIncluir.Enabled then
      BtIncluir.SetFocus;

  except;
    Application.MessageBox('Não foi possível abrir o Form.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
  end;

  BPESQ.Visible:=FALSE;

end;

procedure TFrmClientes.SB_CANCELMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SB_PROXIMO.Flat  := True;
  SB_ANTERIOR.Flat := True;
  SB_ULTIMO.Flat   := True;
  SB_PRIMEIRO.Flat := True;
  SB_NOVO.Flat     := True;
  SB_EDIT.Flat     := True;
  SB_CONFIRMA.Flat := True;
  SB_CANCEL.Flat   := False;

end;

procedure TFrmClientes.SB_CONFIRMAMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SB_PROXIMO.Flat  := True;
  SB_ANTERIOR.Flat := True;
  SB_ULTIMO.Flat   := True;
  SB_PRIMEIRO.Flat := True;
  SB_NOVO.Flat     := True;
  SB_EDIT.Flat     := True;
  SB_CONFIRMA.Flat := False;
  SB_CANCEL.Flat   := True;
end;

procedure TFrmClientes.SB_EDITMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SB_PROXIMO.Flat  := True;
  SB_ANTERIOR.Flat := True;
  SB_ULTIMO.Flat   := True;
  SB_PRIMEIRO.Flat := True;
  SB_NOVO.Flat     := True;
  SB_EDIT.Flat     := False;
  SB_CONFIRMA.Flat := True;
  SB_CANCEL.Flat   := True;
end;

procedure TFrmClientes.SB_EXCLUIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SB_PROXIMO.Flat  := True;
  SB_ANTERIOR.Flat := True;
  SB_ULTIMO.Flat   := True;
  SB_PRIMEIRO.Flat := True;
  SB_NOVO.Flat     := True;
  SB_EDIT.Flat     := True;
  SB_CONFIRMA.Flat := True;
  SB_CANCEL.Flat   := True;
end;

procedure TFrmClientes.SB_NOVOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SB_PROXIMO.Flat  := True;
  SB_ANTERIOR.Flat := True;
  SB_ULTIMO.Flat   := True;
  SB_PRIMEIRO.Flat := True;
  SB_NOVO.Flat     := False;
  SB_EDIT.Flat     := True;
  SB_CONFIRMA.Flat := True;
  SB_CANCEL.Flat   := True;
end;

procedure TFrmClientes.SB_ULTIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SB_PROXIMO.Flat  := True;
  SB_ANTERIOR.Flat := True;
  SB_ULTIMO.Flat   := False;
  SB_PRIMEIRO.Flat := True;
  SB_NOVO.Flat     := True;
  SB_EDIT.Flat     := True;
  SB_CONFIRMA.Flat := True;
  SB_CANCEL.Flat   := True;
end;

procedure TFrmClientes.SB_PROXIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SB_PROXIMO.Flat  := False;
  SB_ANTERIOR.Flat := True;
  SB_ULTIMO.Flat   := True;
  SB_PRIMEIRO.Flat := True;
  SB_NOVO.Flat     := True;
  SB_EDIT.Flat     := True;
  SB_CONFIRMA.Flat := True;
  SB_CANCEL.Flat   := True;
end;

procedure TFrmClientes.SB_ANTERIORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SB_PROXIMO.Flat  := True;
  SB_ANTERIOR.Flat := False;
  SB_ULTIMO.Flat   := True;
  SB_PRIMEIRO.Flat := True;
  SB_NOVO.Flat     := True;
  SB_EDIT.Flat     := True;
  SB_CONFIRMA.Flat := True;
  SB_CANCEL.Flat   := True;
end;

procedure TFrmClientes.SB_PRIMEIROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SB_PROXIMO.Flat  := True;
  SB_ANTERIOR.Flat := True;
  SB_ULTIMO.Flat   := True;
  SB_PRIMEIRO.Flat := False;
  SB_NOVO.Flat     := True;
  SB_EDIT.Flat     := True;
  SB_CONFIRMA.Flat := True;
  SB_CANCEL.Flat   := True;
end;

procedure TFrmClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (ssAlt in  Shift) and (chr(Key) in ['I', 'i']) then
      SB_NOVO.Click;
 If (ssAlt in  Shift) and (chr(Key) in ['G', 'g']) then
      SB_CONFIRMA.Click;
 If (ssAlt in  Shift) and (chr(Key) in ['C', 'c']) then
      SB_CANCEL.Click;
end;

procedure TFrmClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.VEN027.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmClientes.FormCreate(Sender: TObject);
begin
  if (gi_Filial = 4) or (gi_Filial = 5) or (gi_Filial = 13) or (gi_Filial = 91) then
    frmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmClientes.SB_CONFIRMAClick(Sender: TObject);
VAR
  IRet: Integer;
begin
  DBEdit38.Text:= DBEstado.Text;
  DBEdit35.Text:= DBPais.Text;
  DBEdit36.Text:= DBRGeog.Text;

  Qry_bairro.Close;
  Qry_bairro.SQL.Clear;
  Qry_bairro.SQL.Text := 'SELECT DISTINCT BAIRRO.ID_BAIRRO, BAIRRO.NM_BAIRRO, BAIRRO.FX_BAIRRO '+
                         'FROM BAIRRO ORDER BY BAIRRO.NM_BAIRRO ';

  Qry_bairro.open;
  Screen.Cursor := crSQLWait;

  if (TabDetalhe.Showing) or (TabComplemento.Showing) then
  begin

    if (DBEmail.Text = '') OR (Pos('@',DBEmail.Text) = 0) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('                    Cadastro Email obrigatório.                   ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;

    if (DBNOMCLI.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Razão Social obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBNOMFAN.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Nome Fantasia Cliente obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBNOMRED.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Nome Reduzido Cliente obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBLTplog.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Tipo Logradouro obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBNum.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Numero Logradouro obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBNasc.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Data Nascimento Cliente obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;
    if (Trim(DBCep.Text) ='') or (Length(Trim(DBCep.Text)) < 8) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro CEP Cliente obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBCidadeC.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Cidade Cliente obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;

    QryCidade.Close;
    QryCidade.ParamByName('VCID').ASFLOAT:= STRTOFLOAT(DBCodCid.Text);
    QryCidade.Open;

    if (QryCidadeID_IBGE.Value = 0) or (QryCidadeID_IBGE.Value = null) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cidade selecionada sem código do IBGE.                       ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;

    if (DBBairro.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Bairro Cliente obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBTpEst.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Tipo Estabelecimento obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabComplemento.Show;
      Exit;
    end;
    if (DBRPessoa.Value ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Tipo Pessoa obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBLAtvEcon.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Atividade Econômica obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabComplemento.Show;
      Exit;
    end;
    if (DBLForPag.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Forma Pagamento obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabComplemento.Show;
      Exit;
    end;
    if (DBLForPag.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Forma Pagamento obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabComplemento.Show;
      Exit;
    end;
    if (DBLookupComboBox6.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Tabela de Preço obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabComplemento.Show;
      Exit;
    end;
    if (DBLookupComboBox2.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Região Logística obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBLookupComboBox3.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Subregião Logística obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBTEL.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Telefone Cliente obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;
    if (DBDtCad.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Cadastro Data Cadastro Cliente obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;

    if DBRPessoa.ItemIndex = 0 then
      IRet := ConsisteInscricaoEstadual (DBInses.Text,DBEstado.Text)
    else
      IRet:= 0;

    if Iret = 1 then
    begin
      Application.MessageBox(PChar('             Inscrição inválida para ' + DBEstado.Text + '.         '), PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Screen.Cursor := crDefault;
      Exit;
    end;

    {if ((OQry_ClieOP_SIMPLES_NACIONAL.Value = 'S') or (OQry_ClieOP_SIMPLES_NACIONAL.Value = 'N')) AND chkFuncionario.Checked then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             Alteração não permitida.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      SB_CANCELClick(Sender);
      Exit;
    end;   }

    if (DBRPessoa.ItemIndex = 1) then
    begin
      if  (DBCpf.Text = '') then
      begin
        Screen.Cursor := crDefault;
        Application.MessageBox('             Cadastro de CPF obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
        Exit;
      end
      else
      begin
        if (cpf(DBCpf.Text)= False) then
        begin
          Screen.Cursor := crDefault;
          Application.MessageBox('             CPF inválido, corrija antes de salvar.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
          TabDetalhe.Show;
          if ( DBCPF.visible AND DBCPF.enabled ) then
             DBCpf.setfocus;
          exit;
        end;
      end;

      OQry_ClieOP_SIMPLES_NACIONAL.Value := 'F';

    end
    else if (DBRPessoa.ItemIndex = 0) then
    begin
      if  (DBCNPJ.Text = '') then
        begin
          Screen.Cursor := crDefault;
          Application.MessageBox('             Cadastro de CNPJ obrigatório.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
          Exit;
        end
      else
      begin
        if cnpj(DBCNPJ.Text)=false then
        begin
          Screen.Cursor := crDefault;
          Application.MessageBox('             CNPJ Inválido.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
          if ( PageControl2.ActivePage = TabDetalhe ) then
            if ( DBCNPJ.visible AND DBCNPJ.enabled ) then
              DBCNPJ.setfocus ;
          Exit;
        end;
      end;

      if (DBInses.Text = '')  then
      begin
        Screen.Cursor := crDefault;
        Application.MessageBox('                    Cadastro Inscrição Estadual obrigatório.                   ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
        TabDetalhe.Show;
        DBInses.SetFocus;
        Exit;
      end;

      if (rgpSimplesNacional.Value) = '' then
      begin
        Screen.Cursor := crDefault;
        Application.MessageBox('                    É necessário informar se cliente é optante pelo Simples Nacional.                   ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
        TabDetalhe.Show;
        Exit;
      end;
    end;

    if (DBLookupComboBox15.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             É necessário informar o Solicitante do Cadastro.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;

    if Not(ChkClieInativo.Checked) and (DBLMotInativacao.keyValue <= 1)  then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             É necessário informar o Motivo da Inativação do Cliente.                   ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      DBLMotInativacao.SetFocus;
      Exit;
    end;

    if (DbLatitude.Text = '') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             É necessário informar a Latitude.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;

    if (DbLongitude.Text = '') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('             É necessário informar a Longitude.                        ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;

    if (OQry_Clie.State=DSEDIT) or (OQry_Clie.State=DSINSERT) then
    with QryRegSubReg do
    begin
      close;
      ParamByName('id_regilogi').AsFloat:= QryRegLogID_REGILOGI.Value;
      ParamByName('id_subrlogi').AsFloat:= QrySubRegLogID_SUBRLOGI.Value;
      open;
      OQry_Clie.edit;
      OQry_ClieID_REGISUBRLOGI.value := QryRegSubRegID_REGISUBRLOGI.Value;
    end;

    if  (OQry_Clie.State=DSINSERT) then
    begin
      //INCLUIR O MESMO ENDERECO PARA ENTREGA
      OQry_Clie.Post;
      OQry_Clie.ApplyUpdates;
      OQry_Clie.CommitUpdates;
      QryCliEnd.open;
      QryCliEnd.Insert;
      QryCliEndEMPRESA.Value := gs_Empresa;
      QryCliEndFILIAL.Value  := gi_filial;
      QryCliEndID_CLIENTE.Value := OQry_ClieID_CLIENTE.Value;
      QryCliEndFX_ENDECLIE.Value := 'N';
      QryCliEndFL_ENTRENDECLIE.Value := 'S';
      QryCliEndFL_COBRENDECLIE.Value := 'S';
      QryCliEndFL_ENTRPADRENDECLIE.Value := 'S';
      QryCliEndFL_COBRPADRENDECLIE.Value := 'S';
      QryCliEndFL_LOCAPADRENDECLIE.Value := 'S';
      QryCliEndID_TIPOLOGR.Value:= OQry_ClieID_TIPOLOGR.Value;
      QryCliEndNR_LOGRENDECLIE.Value:= OQry_ClieNR_LOGRENDECLIE.Value;
      QryCliEndNR_CEPENDECLIE.Value:= OQry_ClieNR_CEPENDECLIE.Value;
      QryCliEndNM_LOGRENDECLIE.Value:= OQry_ClieNM_LOGRENDECLIE.Value;
      QryCliEndGN_COMPENDECLIE.Value:= OQry_ClieGN_COMPENDECLIE.Value;
      QryCliEndID_CIDADE.Value:= OQry_ClieID_CIDADE.Value;
      QryCliEndNM_CIDADE.Value:= OQry_ClieNM_CIDADE.Value;
      QryCliEndID_BAIRRO.Value:= OQry_ClieID_BAIRRO.Value;
      QryCliEndNM_BAIRRO.Value:= OQry_ClieNM_BAIRRO.Value;
      QryCliEndSG_ESTADO.Value:= OQry_ClieSG_ESTADO.Value;
      QryCliEndNM_PAIS.Value:= OQry_ClieNM_PAIS.Value;
      QryCliEndNR_CEPCAIXPOSTENDECLIE.Value:= OQry_ClieNR_CEPCAIXPOSTENDECLIE.Value;
      QryCliEndNM_REGIGEOG.Value:= OQry_ClieNM_REGIGEOG.Value;
      QryCliEndID_REGILOGI.Value:= OQry_ClieID_REGILOGI.Value;
      QryCliEndID_SUBRLOGI.Value:= OQry_ClieID_SUBRLOGI.Value;
      QryCliEndID_REGISUBRLOGI.Value := OQry_ClieID_REGISUBRLOGI.Value;
      QryCliEndLONGITUDE.Value := OQry_ClieLONGITUDE.Value;
      QryCliEndLATITUDE.Value := OQry_ClieLATITUDE.Value;
    end;

    if (QryCliEnd.State=DSEDIT) or (QryCliEnd.State=DSINSERT) then
    begin
      QryCliEnd.Post;
      QryCliEnd.CommitUpdates;
      QryCliEnd.ApplyUpdates;
      QryCliEnd.Refresh;
    end;

    //Incluir na tabela Cliente endereço o id regiao-subregiao se for nulo
    if QryCliEndID_REGISUBRLOGI.IsNull then
    begin
      with QryTemp do
      begin
        Close;
        SQL.Clear;

        SQL.Text :=
          ' insert into  logistica_regiao_subregiao '+
          ' (  empresa,       '+
          '    filial,        '+
          '    id_regisubrlogi, '+
          '    id_regilogi,     '+
          '    id_subrlogi,     '+
          '    fl_relaregisubrlogi,   '+
          '    fx_regisubrlogi)       '+
          ' values                    '+
          ' (  '''+ gs_Empresa + ''', '+
          '     ' + IntToStr(gi_Filial)+', '+
          '     id_regisubrlogi.NextVal,  '+
          '     ' + FloatToStr(QryCliEndID_REGILOGI.Value) + ', ' +
          '     ' + FloatToStr(QryCliEndID_SUBRLOGI.Value) + ', ' +
          '  ''' + 'P' + ''', '+
          '  ''' + 'N' + ''') ';
        Execute;
        Close;
        SQL.Clear;
        SQL.Text :=
          ' SELECT  '+
          '   max(id_regisubrlogi) as idregsub '+
          ' FROM              '+
          '   logistica_regiao_subregiao  '+
          ' WHERE              '+
          '   id_regilogi = '+ FloatToStr(QryCliEndID_REGILOGI.Value) + ' AND '+
          '   id_subrlogi = '+ FloatToStr(QryCliEndID_SUBRLOGI.Value);
        Open;

        if not IsEmpty then
        begin
          QryCliEnd.Edit;
          QryCliEndID_REGISUBRLOGI.Value := FieldByName('idregsub').AsFloat;
          QryCliEnd.Post;
          QryCliEnd.CommitUpdates;
          QryCliEnd.ApplyUpdates;
        end
        else
        begin
          Screen.Cursor := crDefault;
          Application.MessageBox('Atenção! Problema ao gravar a ligação entre a Região e Sub-região no endereço do Cliente, verifique pois não poderá ser usado na Carga.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
          Exit;
        end;
      end;
    end;

    if  (OQry_Clie.State=DSEDIT) then
    begin
      //INCLUIR O MESMO ENDERECO PARA ENTREGA
      OQry_Clie.Post;
      OQry_Clie.ApplyUpdates;
      OQry_Clie.CommitUpdates;
      QryCliEnd.Edit;
      QryCliEndEMPRESA.Value := gs_Empresa;
      QryCliEndFILIAL.Value  := gi_filial;
      QryCliEndID_CLIENTE.Value := OQry_ClieID_CLIENTE.Value;
      QryCliEndFX_ENDECLIE.Value := 'N';
      QryCliEndFL_ENTRENDECLIE.Value := 'S';
      QryCliEndFL_COBRENDECLIE.Value := 'S';
      QryCliEndFL_ENTRPADRENDECLIE.Value := 'S';
      QryCliEndFL_COBRPADRENDECLIE.Value := 'S';
      QryCliEndFL_LOCAPADRENDECLIE.Value := 'S';
      QryCliEndID_TIPOLOGR.Value:= OQry_ClieID_TIPOLOGR.Value;
      QryCliEndNR_LOGRENDECLIE.Value:= OQry_ClieNR_LOGRENDECLIE.Value;
      QryCliEndNR_CEPENDECLIE.Value:= OQry_ClieNR_CEPENDECLIE.Value;
      QryCliEndNM_LOGRENDECLIE.Value:= OQry_ClieNM_LOGRENDECLIE.Value;
      QryCliEndGN_COMPENDECLIE.Value:= OQry_ClieGN_COMPENDECLIE.Value;
      QryCliEndID_CIDADE.Value:= OQry_ClieID_CIDADE.Value;
      QryCliEndNM_CIDADE.Value:= OQry_ClieNM_CIDADE.Value;
      QryCliEndID_BAIRRO.Value:= OQry_ClieID_BAIRRO.Value;
      QryCliEndNM_BAIRRO.Value:= OQry_ClieNM_BAIRRO.Value;
      QryCliEndSG_ESTADO.Value:= OQry_ClieSG_ESTADO.Value;
      QryCliEndNM_PAIS.Value:= OQry_ClieNM_PAIS.Value;
      QryCliEndNR_CEPCAIXPOSTENDECLIE.Value:= OQry_ClieNR_CEPCAIXPOSTENDECLIE.Value;
      QryCliEndNM_REGIGEOG.Value:= OQry_ClieNM_REGIGEOG.Value;
      QryCliEndID_REGILOGI.Value:= OQry_ClieID_REGILOGI.Value;
      QryCliEndID_SUBRLOGI.Value:= OQry_ClieID_SUBRLOGI.Value;
      QryCliEndLONGITUDE.Value := OQry_ClieLONGITUDE.Value;
      QryCliEndLATITUDE.Value := OQry_ClieLATITUDE.Value;
    end;
    if (QryCliEnd.State=DSEDIT) or (QryCliEnd.State=DSINSERT) then
    begin
      QryCliEnd.Post;
      QryCliEnd.CommitUpdates;
      QryCliEnd.ApplyUpdates;
      QryCliEnd.Refresh;
    end;

    PageControl2.Pages[1].TabVisible := True;
    PageControl2.Pages[2].TabVisible := true;
    PageControl2.Pages[3].TabVisible := True;
    PageControl2.Pages[4].TabVisible := True;
    PageControl2.Pages[5].TabVisible := True;
    PageControl2.Pages[6].TabVisible := True;
    PageControl2.Pages[7].TabVisible := True;
    PageControl2.Pages[8].TabVisible := True;

  end
  else
  if TabBloqueio.Showing then
  begin
    try
      if (QryClieBloq.State in [DSEDIT,DSINSERT]) then
        If (DBRadioGroup8.Value ='')  then
        begin
          Application.MessageBox('É necessário definir o Bloqueio Administrativo. Verifique.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
          Screen.Cursor := crDefault;
          Exit;
        end;
      QryClieBloq.Post;
      QryClieBloq.CommitUpdates;
      QryClieBloq.ApplyUpdates;
      OQry_Clie.Edit;

      if QryClieBloqFL_TIPOBLOQCLIE.Value = 'B' then
        OQry_ClieFL_BLOQADMICLIE.Value :='S'
      ELSE
        OQry_ClieFL_BLOQADMICLIE.Value :='N';

      OQry_Clie.Post;
      OQry_Clie.CommitUpdates;
      OQry_Clie.ApplyUpdates;

    except
      Application.MessageBox('Atenção! Erro ao salvar contato, tente novamente ou contate o administrador do sistema.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
    end;

    LDcomponentes(False);
    Screen.Cursor := crDefault;
    Atual_ToolBar(1);

    //Direito a Incluir
    QrDireitos.Close;
    QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
    QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QrDireitos.Open;
    If (QrDireitos.RecordCount>0) then
     begin
      PageControl2.Pages[6].TabVisible := False;
      Atual_ToolBar(9);
     end;

    //Direito a Editar
    QrDireitos.Close;
    QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
    QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QrDireitos.Open;
    If (QrDireitos.RecordCount>0) then
      begin
       Atual_ToolBar(10);
       PageControl2.Pages[6].TabVisible := False;
      end;

     //Direito a Limite de Credito
    QrDireitos.Close;
    QrDireitos.ParamByName('VRECUR').AsInteger   := 43;
    QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QrDireitos.Open;

    If (QrDireitos.RecordCount > 0) then
    begin
      PageControl2.Pages[6].TabVisible := True;
      PageControl2.Pages[8].TabVisible := True;
      Atual_ToolBar(11);
    end;

    LDcomponentes(False);

  end
  else if TabEnde.Showing then
  begin
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text :=
                  'select                                 '+
                  '       count(fl_entrpadrendeclie) as entrega  '+
                  '  from  cliente_endereco               '+
                  ' where                                 '+
                  '        id_cliente = :VCLI             '+
                 '   and  fl_entrpadrendeclie = ''S''    ';
    QryTemp.ParamByName('VCLI').AsFloat := StrToFloat(DBEdit22.Text);
    QryTemp.Open;

    if (QryTemp.FieldByName('entrega').AsInteger >= 1) and (DBRadioGroup2.ItemIndex=0) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Não é permitido endereço padrão de entrega duplicado.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    //verificar endereço de cobranca
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text :=
                  'select                                 '+
                  '       count(fl_cobrpadrendeclie) as cobra  '+
                  '  from  cliente_endereco               '+
                  ' where                                 '+
                  '        id_cliente = :VCLI             '+
                  '   and  fl_cobrpadrendeclie = ''S''    ';
    QryTemp.ParamByName('VCLI').AsFloat := StrToFloat(DBEdit22.Text);
    QryTemp.Open;

    if (QryTemp.FieldByName('cobra').AsInteger >= 1) and (DBRadioGroup4.ItemIndex=0) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Não é permitido endereço de cobrança duplicados.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
    end;

    if (DBNmLogr.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Logradouro do endereço do cliente deve ser preenchido.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabEnde.Show;
      Exit;
    end;

    if (DBNumE.Text ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Número do endereço do cliente deve ser preenchido.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabEnde.Show;
      Exit;
    end;

    if (DBRadioGroup1.Value ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Informe se o cliente usa endereço de Entrega.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabEnde.Show;
      Exit;
    end;

    if (DBRadioGroup2.Value ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Informe se o endereço de Entrega é padrão.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabEnde.Show;
      Exit;
    end;

    if (DBRadioGroup3.Value ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Cadastro Flag End. Cobrança Cliente obrigatório.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabEnde.Show;
      Exit;
    end;

    if (DBRadioGroup4.Value ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Cadastro Flag Padrão Cobrança Cliente obrigatório.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabEnde.Show;
      Exit;
    end;

    if (DBRadioGroup5.Value ='') then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Cadastro Flag Endereço Localização Cliente obrigatório.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabEnde.Show;
      Exit;
    end;

    try
      if (QryCliEnd.State in [DSEDIT,DSINSERT]) then
        QryCliEnd.Post;

      QryCliEnd.CommitUpdates;
      QryCliEnd.ApplyUpdates;
      //Incluir na tabela Cliente endereço o id regiao-subregiao se for nulo
      if QryCliEndID_REGISUBRLOGI.IsNull then
      begin
        with QryTemp do
        begin
          Close;
          SQL.Clear;
          SQL.Text :=
            ' insert into  logistica_regiao_subregiao '+
            ' (  empresa,       '+
            '    filial,        '+
            '    id_regisubrlogi, '+
            '    id_regilogi,     '+
            '    id_subrlogi,     '+
            '    fl_relaregisubrlogi,   '+
            '    fx_regisubrlogi)       '+
            ' values                    '+
            ' (  '''+ gs_Empresa + ''', '+
            '     ' + IntToStr(gi_Filial)+', '+
            '     id_regisubrlogi.NextVal,  '+
            '     ' + FloatToStr(QryCliEndID_REGILOGI.Value) + ', ' +
            '     ' + FloatToStr(QryCliEndID_SUBRLOGI.Value) + ', ' +
            '  ''' + 'P' + ''', '+
            '  ''' + 'N' + ''') ';
          Execute;
          Close;
          SQL.Clear;
          SQL.Text :=
           ' SELECT  '+
           '   max(id_regisubrlogi) as idregsub '+
           ' FROM              '+
           '   logistica_regiao_subregiao  '+
           ' WHERE              '+
           '   id_regilogi = '+ FloatToStr(QryCliEndID_REGILOGI.Value) + ' AND '+
           '   id_subrlogi = '+ FloatToStr(QryCliEndID_SUBRLOGI.Value);
          Open;

          if not IsEmpty then
          begin
            QryCliEnd.Edit;
            QryCliEndID_REGISUBRLOGI.Value := FieldByName('idregsub').AsFloat;
            QryCliEnd.Post;
            QryCliEnd.CommitUpdates;
            QryCliEnd.ApplyUpdates;
          end
          else
          begin
            Screen.Cursor := crDefault;
            Application.MessageBox('Atenção! Problema ao gravar a ligação entre a Região e Sub-região no endereço do Cliente, verifique pois não poderá ser usado na Carga.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
            Exit;
          end;
        end;
      end;
    except
      Screen.Cursor := crDefault;
      Application.MessageBox('Atenção! Erro ao salvar contato, tente novamente ou contate o administrador do sistema', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
    end;

    PageControl2.Pages[7].Show;
    PageControl2.Pages[1].TabVisible := True;
    PageControl2.Pages[2].TabVisible := true;
    PageControl2.Pages[3].TabVisible := True;
    PageControl2.Pages[4].TabVisible := True;
    PageControl2.Pages[5].TabVisible := True;
    PageControl2.Pages[6].TabVisible := True;
    PageControl2.Pages[7].TabVisible := True;
    PageControl2.Pages[8].TabVisible := True;

  end
  else if TabVendedores.Showing then
    begin
      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text :=
                  'select                                   '+
                  '        count(id_vendedor) as numvend    '+
                  '  from  cliente_vendedor                 '+
                  ' where                                   '+
                  '    id_vendedor = :VVend   and           '+
                  '    id_cliente = :VCli                   ';

      QryTemp.ParamByName('VVend').AsString := DBEdit14.Text;
      QryTemp.ParamByName('VCli').AsString := DBEdit8.Text;
      QryTemp.Open;

      if (QryTemp.FieldByName('numvend').AsInteger >= 1) and (QryVendedor.State in [DSINSERT]) then
      begin
        Screen.Cursor := crDefault;
        Application.MessageBox(PChar('Vendedor ' + QryVendID_VENDEDOR.AsString + ' - ' + QryVendNM_VENDEDOR.AsString + ' já cadastrado.'), PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION );
        SB_CANCELClick(Self);
        Exit;
        QryTemp.close;
      end;


      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text :=
                'select                                 '+
                '   count(fl_padrvendclie) as numvend '+
                '  from  cliente_vendedor                 '+
                ' where                                 '+
                '    id_cliente = :VCli             ';

      QryTemp.ParamByName('VCli').AsString := DBEdit8.Text;
      QryTemp.Open;

      if (QryTemp.FieldByName('numvend').AsInteger >= 1) then
      begin
        QryTemp.Close;
        QryTemp.SQL.Clear;
        QryTemp.SQL.Text :=
                  'update   cliente_vendedor                    '+
                  '   set  fl_padrvendclie  = ''N''           '+
                  ' where                                 '+
                  '       id_cliente = :VCLIENTE           ';
        QryTemp.ParamByName('VCLIENTE').AsFloat := OQry_Clie.FieldByName('id_cliente').AsFloat;
        QryTemp.ExecSQL;
      end;

      if (DBNmVend.Text ='') then
      begin
        Screen.Cursor := crDefault;
        Application.MessageBox('Cadastro Nome Vendedor Cliente obrigatório.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION );
        TabVendedores.Show;
        Exit;
      end;

      If (DBNmLogr.Text ='') or (DBNmCidade.Text ='')then
      begin
        Application.MessageBox('Gravação Cancelada! Falta campo a ser preenchido.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION );
        Screen.Cursor := crDefault;
        Exit;
      end;

      try
        if (QryVendedor.State in [DSEDIT,DSINSERT]) then
        begin
          if QryVendedorEMPRESA.IsNull then
             QryVendedorEMPRESA.Value := gs_Empresa;

          if QryVendedorFILIAL.IsNull then
            QryVendedorFILIAL.Value  := gi_filial;

          if QryVendedorFX_VENDCLIE.IsNull then
            QryVendedorFX_VENDCLIE.Value:= 'N';

          QryVendedor.Post;
          QryVendedor.CommitUpdates;
          QryVendedor.ApplyUpdates;
        end;
          QryVendedor.Refresh;
      except
        Application.MessageBox('Atenção! Erro ao salvar vendedor, tente novamente ou contate o administrador do sistema.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      end;

      PageControl2.Pages[0].TabVisible :=  True;
      PageControl2.Pages[1].TabVisible := True;
      PageControl2.Pages[2].TabVisible := true;
      PageControl2.Pages[3].TabVisible := True;
      PageControl2.Pages[4].TabVisible := True;
      PageControl2.Pages[5].TabVisible := True;
      PageControl2.Pages[6].TabVisible := True;
      PageControl2.Pages[7].TabVisible := True;
      PageControl2.Pages[8].TabVisible := True;

    end
  else if TabContato.Showing then
    begin
      try
        if (QrContato.State in [DSEDIT,DSINSERT]) then
          QrContato.Post;

        QrContato.CommitUpdates;
        QrContato.ApplyUpdates;
        QrContato.Refresh;
      except
        Application.MessageBox('Atenção! Erro ao salvar contato, tente novamente ou contate o administrador do sistema.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      end;
        PageControl2.Pages[5].Show;
        PageControl2.Pages[1].TabVisible := True;
        PageControl2.Pages[2].TabVisible := true;
        PageControl2.Pages[3].TabVisible := True;
        PageControl2.Pages[4].TabVisible := True;
        PageControl2.Pages[5].TabVisible := True;
        PageControl2.Pages[6].TabVisible := True;
        PageControl2.Pages[7].TabVisible := True;
        PageControl2.Pages[8].TabVisible := True;
    end
  Else if TabLimite.Showing then
  begin
    //Direito LIMITE DE CREDITO
    QrDireitos.Close;
    QrDireitos.ParamByName('VRECUR').AsInteger   := 43;
    QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QrDireitos.Open;
    If (QrDireitos.RecordCount > 0) then
    begin
      PageControl2.Pages[0].TabVisible := True;
      PageControl2.Pages[6].TabVisible := True;
      PageControl2.Pages[8].TabVisible := True;
    end;

    Self.FocusControl(tablimite);

    if (OQry_ClieVL_LIMICREDCLIE.Value < OQry_ClieVL_CREDUSADCLIE.Value) then
    begin
      Application.MessageBox('Operação cancelada! O limite do Cliente não pode ser menor do que está sendo utilizado.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      if ( DBEdit23.visible AND DBEdit23.enabled ) then
         DBEdit23.SetFocus;
      exit;
    end;

    if not (OQry_Clie.State in [DSEDIT,DSINSERT]) then
      OQry_Clie.edit;

    OQry_ClieVL_CREDATUACLIE.Value := (OQry_ClieVL_LIMICREDCLIE.Value - OQry_ClieVL_CREDUSADCLIE.Value );
    OQry_Clie.Post;
    OQry_Clie.ApplyUpdates;
    OQry_Clie.CommitUpdates;
  end;

  if not (OQry_Clie.State in [DSEDIT,DSINSERT]) then
  begin
    OQry_Clie.edit;
    OQry_ClieDT_ALTECLIE.Value := Date();
    OQry_Clie.Post;
    OQry_Clie.ApplyUpdates;
    OQry_Clie.CommitUpdates;
  end;

  LDcomponentes(False);
  Screen.Cursor := crDefault;

  Atual_ToolBar(1);

 //Direito a Incluir
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;
  If (QrDireitos.RecordCount>0) then
  begin
   PageControl2.Pages[6].TabVisible := False;
   Atual_ToolBar(9);
  end;

 //Direito a Editar
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;
  If (QrDireitos.RecordCount>0) then
  begin
    PageControl2.Pages[6].TabVisible := False;
    Atual_ToolBar(10);
  end;

  //Direito a Limite de Credito
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 43;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount > 0) then
  begin
    PageControl2.Pages[6].TabVisible := True;
    PageControl2.Pages[8].TabVisible := True;
    Atual_ToolBar(11);
  end;

  with QryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' SELECT id_modulo, id_janela, id_recurso, id_usuario ');
    SQL.Add(' FROM sct_direitos_us  ');
    SQL.Add(' WHERE id_modulo=9'  );
    SQL.Add('   AND id_janela = 27 AND id_usuario =' + IntToStr(gi_IdenUsua) );
    Open;
  end;

  if (QryTemp.RecordCount >= 6) then
  begin
    Atual_ToolBar(12);
  end;

  //Direito Editar Latitude/Longitude
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 86;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  if (QrDireitos.RecordCount > 0) then
  begin
    PageControl2.Pages[1].TabVisible := True;
    PageControl2.Pages[2].TabVisible := true;
    PageControl2.Pages[3].TabVisible := True;
    PageControl2.Pages[4].TabVisible := True;
    PageControl2.Pages[5].TabVisible := True;
    PageControl2.Pages[6].TabVisible := False;
    PageControl2.Pages[7].TabVisible := True;
    PageControl2.Pages[8].TabVisible := False;
    Atual_ToolBar(10);
  end;

  with QryTemp do
  begin
    close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CLIENTE ');
    SQL.Add('WHERE LONGITUDE IS NULL AND LATITUDE IS NULL ');
    SQL.Add('AND ID_CLIENTE = ' + OQry_ClieID_CLIENTE.AsString );
    Open;

    if QryTemp.RecordCount > 0 then
    begin
      Application.MessageBox('Erro ao cadastrar Longitude e Latitude. Verifique.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      Exit;
    end;
  end;


  LDcomponentes(False);

end;

procedure TFrmClientes.DBNOMFORKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = '''' then
    key:= #0;

  If ( Key = #13 ) and ( DBNMFAN.visible ) AND ( DBNMFAN.enabled ) then
    DBNMFAN.SetFocus;

  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBNMFANKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = '''' then
    key:= #0;
  If Key = #13 then
    DBNomRed.SetFocus;
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBLogradKeyPress(Sender: TObject;
  var Key: Char);
begin
  If not (key in ['0'..'9','A'..'Z','a'..'z',chr(8),chr(32),chr(13),'.',',','$','-',':','%']) then
    key:= #0;
  If ( Key = #13 ) and ( DBNum.Enabled ) and ( DBNum.Visible ) then
     DBNum.SetFocus;
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBComplKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND ( DBCep.Enabled ) AND (DBCep.Visible) then
    DBCep.SetFocus;
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBBairroKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND (DBHorario.Enabled) AND (DBHorario.Visible) then
    DBHorario.SetFocus;
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBPaisKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBRGeogKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBLst_ComMensKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND (DBMObs.Enabled) AND (DBMObs.Visible)then
    DBMObs.SetFocus;
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBLst_ComObsKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBConNomKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND (DBRSexo.Enabled) AND (DBRSexo.Visible) then
    DBRSexo.SetFocus;
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBLstConObsKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBConForKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBConFanKeyPress(Sender: TObject;
  var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.EdExprKeyPress(Sender: TObject;
  var Key: Char);
begin
 Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBNOMREDKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = '''' then
    key:= #0;
  If ( Key = #13 ) AND ( DBLTpLog.Enabled ) AND (DBLTplog.Visible) then
    DBLTplog.SetFocus;
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.DBPessoaExit(Sender: TObject);
begin
 (*If DBRPessoa.Value = 'F' then
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
    end;     *)
 end;

procedure TFrmClientes.DBLTplogKeyPress(Sender: TObject;
  var Key: Char);
begin
     If ( Key = #13 ) AND ( DBNum.Enabled ) AND ( DBNum.Visible ) then
        DBNum.SetFocus;
end;

procedure TFrmClientes.DBNumKeyPress(Sender: TObject; var Key: Char);
begin
If ( Key = #13) AND (DBCompl.Enabled) AND (DBCompl.Visible) then
    DBCompl.SetFocus;
end;

procedure TFrmClientes.DBCepKeyPress(Sender: TObject; var Key: Char);
begin
If ( Key = #13 ) AND (BtCenCus.Enabled) AND (BtCenCus.Visible) then
    BtCenCus.SetFocus;
end;

procedure TFrmClientes.DBHorarioKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND (DBCeppst.Enabled) AND (DBCeppst.Visible) then
    DBCeppst.SetFocus;
end;

procedure TFrmClientes.DBCeppstKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND (DBTEL.Enabled) AND (DBTEL.Visible) then
    DBTEL.SetFocus;
end;

procedure TFrmClientes.DBTELKeyPress(Sender: TObject; var Key: Char);
begin
If ( Key = #13 ) AND (DBFAX.Enabled) AND (DBFAX.Visible)  then
    DBFAX.SetFocus;
end;

procedure TFrmClientes.DBFAXKeyPress(Sender: TObject; var Key: Char);
begin
If ( Key = #13 ) AND (DBFONE.Enabled) AND (DBFONE.Visible)  then
    DBFONE.SetFocus;
end;


procedure TFrmClientes.DBHPageKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND (DBEmail.Enabled) AND (DBEmail.Visible)  then
    DBEmail.SetFocus;
end;

procedure TFrmClientes.DBRGKeyPress(Sender: TObject; var Key: Char);
begin
If ( Key = #13 ) AND (DBExp.Enabled) AND (DBExp.Visible) then
    DBExp.SetFocus;
 if not (Key in ['0'..'9', Chr(8)]) then
     Key := #0;
end;

procedure TFrmClientes.DBExpKeyPress(Sender: TObject; var Key: Char);
begin
If ( Key = #13 ) AND (DBCpf.Enabled) AND (DBCpf.Visible) then
    DBCpf.SetFocus;
end;


procedure TFrmClientes.DBCpfKeyPress(Sender: TObject; var Key: Char);
begin
     if ( PageControl2.ActivePage = TabDetalhe ) then
        if ( Key = #13 ) AND (DBCNPJ.Enabled) AND (DBCNPJ.Visible) then
           DBCNPJ.SetFocus;
     if not (Key in ['0'..'9', Chr(8)]) then
        Key := #0;
end;

procedure TFrmClientes.DBCNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
if ( Key = #13 ) AND (DBInses.Enabled) AND (DBInses.Visible) then
    DBInses.SetFocus;
if not (Key in ['0'..'9', Chr(8)]) then
    Key := #0;
end;

procedure TFrmClientes.DBInsesKeyPress(Sender: TObject;
  var Key: Char);
begin
     If ( Key = #13 ) AND (DBInsest.Enabled) AND (DBInsest.Visible)  then
        DBInsest.SetFocus;

end;

procedure TFrmClientes.DBInsestKeyPress(Sender: TObject;
  var Key: Char);
begin
    If ( Key = #13 ) AND (BitBtn2.Enabled) AND (BitBtn2.Visible)  then
       BitBtn2.SetFocus;
end;

procedure TFrmClientes.DBDTClieKeyPress(Sender: TObject;
  var Key: Char);
begin
    If ( Key = #13 ) AND (DBDTClie.Enabled) AND (DBDTClie.Visible) then
       DBDTClie.SetFocus;
end;

procedure TFrmClientes.DBDtCadKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND (DBDtAlt.Enabled) AND (DBDtAlt.Visible) then
    DBDtAlt.SetFocus;
end;


procedure TFrmClientes.DBLTpVdKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND (DBLAtvEcon.Enabled) AND (DBLAtvEcon.Visible) then
    DBLAtvEcon.SetFocus;
end;

procedure TFrmClientes.DBLAtvEconKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND (ChkClieInativo.Enabled) AND (ChkClieInativo.Visible)  then
    ChkClieInativo.SetFocus;
end;

procedure TFrmClientes.DBLCtaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If ( Key = #13 ) AND (DBMMens.Enabled) AND (DBMMens.Visible) then
    DBMMens.SetFocus;
end;

procedure TFrmClientes.DBLTratpessKeyPress(Sender: TObject;
  var Key: Char);
begin
 If ( Key = #13 ) AND (DBConFor.Enabled) AND (DBConFor.Visible) then
    DBConFor.SetFocus;
end;

procedure TFrmClientes.DBSexoKeyPress(Sender: TObject;
  var Key: Char);
begin
 If ( Key = #13 ) AND (DBLDpto.Enabled) AND (DBLDpto.Visible) then
    DBLDpto.SetFocus;
end;

procedure TFrmClientes.DBLDptoKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND (DBLCargo.Enabled) AND (DBLCargo.Visible) then
    DBLCargo.SetFocus;
end;

procedure TFrmClientes.DBLCargoKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND (DBConPag.Enabled) AND (DBConPag.Visible)  then
    DBConPag.SetFocus;
end;

procedure TFrmClientes.DBConPagKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND (DBConEmail.Enabled) AND (DBConEmail.Visible)  then
    DBConEmail.SetFocus;
end;

procedure TFrmClientes.DBConEmailKeyPress(Sender: TObject;
  var Key: Char);
begin
If ( Key = #13 ) AND (DBConDdi.Enabled) AND (DBConDdi.Visible)  then
    DBConDdi.SetFocus;
end;

procedure TFrmClientes.DBConDdiKeyPress(Sender: TObject;
  var Key: Char);
begin
If (Key = #13) AND (DBConDdd.Enabled) AND (DBConDdd.Visible)  then
    DBConDdd.SetFocus;
end;

procedure TFrmClientes.DBConDddKeyPress(Sender: TObject;
  var Key: Char);
begin
If (Key = #13)AND (DBConTel.Enabled) AND (DBConTel.Visible)  then
    DBConTel.SetFocus;
end;

procedure TFrmClientes.DBConTelKeyPress(Sender: TObject;
  var Key: Char);
begin
If (Key = #13) AND (DBConRam.Enabled) AND (DBConRam.Visible) then
    DBConRam.SetFocus;
end;

procedure TFrmClientes.DBConRamKeyPress(Sender: TObject;
  var Key: Char);
begin
If (Key = #13) AND (DBFxDDi.Enabled) AND (DBFxDDi.Visible) then
    DBFxDDi.SetFocus;
end;

procedure TFrmClientes.DBFxDDiKeyPress(Sender: TObject;
  var Key: Char);
begin
If (Key = #13) AND (DBFxDdd.Enabled) AND (DBFxDdd.Visible) then
    DBFxDdd.SetFocus;
end;

procedure TFrmClientes.DBFxDddKeyPress(Sender: TObject;
  var Key: Char);
begin
    If (Key = #13) AND (DBFxTel.Enabled) AND (DBFxTel.Visible) then
       DBFxTel.SetFocus;
end;

procedure TFrmClientes.DBFxTelKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #13) AND (DBFxRam.Enabled) AND (DBFxRam.Visible) then
        DBFxRam.SetFocus;
end;

procedure TFrmClientes.DBConDtNasKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
  If (DBConDtNas.Enabled) AND (DBConDtNas.Visible) then
     DBConDtNas.SetFocus;
end;

procedure TFrmClientes.DBConDtCadKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #13) AND (DBMConObs.Enabled) AND (DBMConObs.Visible) then
        DBMConObs.SetFocus;
end;

procedure TFrmClientes.Bit_DtNascClick(Sender: TObject);
begin
     Cria_FrmSelData(Vdtstr);
     DBConDtNas.text:= Vdtstr;
     If (DBConDtNas.Enabled) AND (DBConDtNas.Visible) then
        DBConDtNas.SetFocus;
end;

procedure TFrmClientes.Bit_DtCadClick(Sender: TObject);
begin
     Cria_FrmSelData(Vdtstr);
     DBConDtCad.text:= Vdtstr;
     If (DBConDtCad.Enabled) AND (DBConDtCad.Visible) then
        DBConDtCad.SetFocus;
end;

procedure TFrmClientes.DBMMensKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #13) AND (DBMObs.Enabled) AND (DBMObs.Visible) then
        DBMObs.SetFocus;
     Key := AnsiUpperCase(Key)[1];
end;


procedure TFrmClientes.DBMObsKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #13) AND (DBMObs.Enabled) AND (DBMObs.Visible) then
    DBMObs.SetFocus;
    Key := AnsiUpperCase(Key)[1];
end;


procedure TFrmClientes.DBMConObsKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.BitBtn3Click(Sender: TObject);
begin
     Cria_FrmSelData(Vdtstr);
     DBDtCad.text:= Vdtstr;
     If (DBDtAlt.Enabled) AND (DBDtAlt.Visible) then
        DBDtAlt.SetFocus;
end;

procedure TFrmClientes.DBNascKeyPress(Sender: TObject;
  var Key: Char);
begin
//  Key := AnsiUpperCase(Key)[1];
//  DBConDtCad.SetFocus;
end;

procedure TFrmClientes.DBConDtNasExit(Sender: TObject);
begin
  if StrToDate(DBConDtNas.Text)>= Date() then
  begin
    Application.MessageBox('Data do Nascimento Incorreto.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Cria_FrmSelData(Vdtstr);
    DBConDtNas.text:= Vdtstr;
    If (DBConDtNas.Enabled) AND (DBConDtNas.Visible) then
       DBConDtNas.SetFocus;
  end
  else
   Bit_DtCad.SetFocus;
end;


procedure TFrmClientes.DBFxRamKeyPress(Sender: TObject;
  var Key: Char);
begin
    If (Key = #13) AND (DBConDtNas.Enabled) AND (DBConDtNas.Visible) then
        DBConDtNas.SetFocus;
end;

procedure TFrmClientes.DBConDtCadChange(Sender: TObject);
begin
 DBConDtCad.Text:= DateToStr(date());
end;

procedure TFrmClientes.BitBtn1Click(Sender: TObject);
begin
  Cria_FrmPesqRegCom(VCid, NCid);
  OQry_ClieID_REGICOME.Value := StrToInt(VCid);
  OQry_ClieNM_REGICOME.Value := NCid;
  If (DBNomRegCom.Enabled) AND (DBNomRegCom.Visible) then
     DBNomRegCom.SetFocus;
end;

procedure TFrmClientes.DBNascExit(Sender: TObject);
begin

  if StrToDate(DBNasc.Text) > Date() then
  begin
    Application.MessageBox('Data do Nascimento Incorreto.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;

    If (DBNasc.Enabled) AND (DBNasc.Visible) then
      DBNasc.SetFocus;
  end;
end;

procedure TFrmClientes.DBConDtNasEnter(Sender: TObject);
begin
 //DBConDtCad.Text:= DateToStr(date());
end;

procedure TFrmClientes.DBDTClieExit(Sender: TObject);
begin
  if StrToDate(DBDTClie.Text) > Date() then
  begin
    Application.MessageBox('Data do Nascimento Incorreto.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Cria_FrmSelData(Vdtstr);
    DBDTClie.text:= Vdtstr;

    If (DBDTClie.Enabled) AND (DBDTClie.Visible) then
      DBDTClie.SetFocus;
  end
  else
  begin
    If (DBDtCad.Enabled) AND (DBDtCad.Visible) then
      DBDtCad.SetFocus;
  end;

end;

procedure TFrmClientes.DBDTClieEnter(Sender: TObject);
begin
  DBDtCad.Text:= DateToStr(date());
end;

procedure TFrmClientes.DBRPessoaExit(Sender: TObject);
begin

  if DBRPessoa.Value ='F' then
  begin
    DBCNPJ.Text:='';
    DBInses.Text:='';
    DBCNPJ.Enabled:=False;
    DBInses.Enabled:=False;
    GrpBx_Jur.Enabled := false;
    GrpBx_Fisica.Enabled := true;
    DBRG.Enabled:=True;
    DBCpf.Enabled:=True;
    DBExp.Enabled:=True;
  end;

  if DBRPessoa.Value ='J' then
  begin
    GrpBx_Jur.Enabled := true;
    GrpBx_Fisica.Enabled := false;
    DBExp.Text:='';
    DBCNPJ.Enabled:=True;
    DBInses.Enabled:=True;
    DBRG.Text:='';
    DBCpf.Text:='';
    DBRG.Enabled:=False;
    DBCpf.Enabled:=False;
    DBExp.Enabled:=False;

    if ( PageControl2.ActivePage = TabDetalhe ) then
      if (DBCNPJ.Enabled) AND (DBCNPJ.Visible) then
        DBCNPJ.SetFocus;
  end
end;

procedure TFrmClientes.BtCenCusKeyPress(Sender: TObject;
var Key: Char);
begin
  If (Key = #13) AND (DBBairro.Enabled) AND (DBBairro.Visible) then
    DBBairro.SetFocus;
end;

procedure TFrmClientes.DBCpfExit(Sender: TObject);
begin
  if  (DBCpf.Text <> '') then
    if cpf(StrZerodec( StrToFloat(sonumeros(DBCpf.Text)),11,0))=false then
    begin
      Application.MessageBox('CPF Inválido. Verifique.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
     If (DBCpf.Enabled) AND (DBCpf.Visible) then
        DBCpf.setfocus;
    end;
end;

procedure TFrmClientes.DBCNPJExit(Sender: TObject);
begin
  if  (DBCNPJ.Text <> '') then
    if cnpj(StrZerodec( StrToFloat(sonumeros(DBCNPJ.Text)),14,0))=false then
    begin
      Application.MessageBox('CNPJ Inválido. Verifique.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      if ( PageControl2.ActivePage = TabDetalhe ) then
         if (DBCNPJ.Enabled) AND (DBCNPJ.Visible) then
            DBCNPJ.setfocus;
    end;
end;

procedure TFrmClientes.LDcomponentes(LD:boolean);
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
    if (Temp is TGroupBox) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
    if (Temp is TDBCheckBox) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
  end;
end;

procedure TFrmClientes.TabCriterioShow(Sender: TObject);
begin
  CBCond.Enabled := True;
  EdExpr.Enabled := True;
  BtLimpar.Enabled := True;
  BtAtivar.Enabled := True;
  BPESQ.Enabled := True;
  RGeou.Enabled := True;
end;

procedure TFrmClientes.DBGrd_CadClieTitleClick(Column: TColumn);
var
 linha:integer;
begin
  linha := Pos('ORDER',OQry_Clie.SQL.text);

  OQry_Clie.SQL.text := copy(OQry_Clie.SQL.text,0,linha-1);
  OQry_Clie.SQL.add(' ORDER BY CLIENTE.' + UpperCase(Column.FieldName));
  OQry_Clie.Open;
  Screen.Cursor := crDefault;

end;

procedure TFrmClientes.Button1Click(Sender: TObject);
begin
  Cria_FrmPesqRegCom(VCid, NCid);
  DBCodRegCom.text:= VCid;
  DBNomRegCom.Text := NCid;
  If (DBNomRegCom.Enabled) AND (DBNomRegCom.Visible) then
    DBNomRegCom.SetFocus;
end;

procedure TFrmClientes.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  IF QryVendedor.FieldByName('fl_padrvendclie').AsString = 'S' then
    DBGrid1.Canvas.Font.Color := clgreen;

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);

  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);


end;

procedure TFrmClientes.BitBtnENDClick(Sender: TObject);
begin
  Cria_FrmPesqCid(VCid, NCid, NEst, NPais, NReg);
  DBEdit32.text:= VCid;
  DBNmCidade.Text := NCid;
  DBEdit38.Text := NEst;
  DBEdit35.Text := NPais;
  DBEdit36.Text := NReg;
  Qry_bairro.Close;
  Qry_bairro.ParamByName('id_cidade').AsFloat := StrToFloat(VCid);
  Qry_bairro.Open;
end;

procedure TFrmClientes.DBRadioGroup1Exit(Sender: TObject);
begin
  If (DBRadioGroup2.Enabled) AND (DBRadioGroup2.Visible) then
    DBRadioGroup2.SetFocus;
end;

procedure TFrmClientes.DBRadioGroup2Exit(Sender: TObject);
begin
  If (DBRadioGroup3.Enabled) AND (DBRadioGroup3.Visible) then
    DBRadioGroup3.SetFocus;
end;

procedure TFrmClientes.DBRadioGroup3Exit(Sender: TObject);
begin
  If (DBRadioGroup4.Enabled) AND (DBRadioGroup4.Visible) then
     DBRadioGroup4.SetFocus;
end;

procedure TFrmClientes.DBRadioGroup4Exit(Sender: TObject);
begin
  If (DBRadioGroup5.Enabled) AND (DBRadioGroup5.Visible) then
     DBRadioGroup5.SetFocus;
end;

procedure TFrmClientes.BitBtn45Click(Sender: TObject);
begin
  FrmOriPesq:=202;
  FrmPesqVend:=TFrmPesqVend.Create(Self);
  FrmPesqVend.ShowModal;

  If (DBRadioGroup6.Enabled) AND (DBRadioGroup6.Visible) then
     DBRadioGroup6.SetFocus;

end;

procedure TFrmClientes.BTBairroClick(Sender: TObject);
begin
  if DBCodCid.Text <> '' then
  begin
    Cria_FrmPesqBairro(VCid, VBair, NBair, NFx);
    DBBairro.Text:= NBair;
    DBCodBairro.Text:= VBair;
  end
  else
    Application.MessageBox('Para inclusão do Bairro, é necessário selecionar uma Cidade.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);

end;

procedure TFrmClientes.BTBairroKeyPress(Sender: TObject; var Key: Char);
begin
  If ( Key = #13 ) AND (DBEstado.Enabled) AND (DBEstado.Visible) then
    DBEstado.SetFocus;
end;

procedure TFrmClientes.SpeedButton1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    FrmCadBairro:=TFrmCadBairro.Create(Self);
    FrmCadBairro.Show;
  Except;
    FrmCadBairro.Free;
  End;

  Screen.Cursor := crDefault;
end;

procedure TFrmClientes.SpeedButton2Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    FrmCadCidade:=TFrmCadCidade.Create(Self);
    FrmCadCidade.Show;
  Except;
    FrmCadCidade.Free;
  End;

  Screen.Cursor := crDefault;
end;

procedure TFrmClientes.DBEdit23Exit(Sender: TObject);
begin
  //Direito LIMITE DE CREDITO
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 43;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount > 0) then
    PageControl2.Pages[6].TabVisible := True
  else
    if OQry_ClieVL_LIMICREDCLIE.Value > 5000 then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Limite máximo para cliente R$ 5000,00.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      OQry_ClieVL_LIMICREDCLIE.Value:= 0;
      Exit;
    end;
end;

procedure TFrmClientes.btnSimplesNacionalClick(Sender: TObject);
begin
  HlinkNavigateString(nil,'http://www8.receita.fazenda.gov.br/simplesnacional/Default.aspx');
end;

procedure TFrmClientes.BIncluirClick(Sender: TObject);
begin
  if (TabBloqueio.Showing) then
  begin
    QryClieBloq.open;
    QryClieBloq.Insert;
    QryClieBloqEMPRESA.Value := gs_Empresa;
    QryClieBloqFILIAL.Value  := gi_filial;
    QryClieBloqID_CLIENTE.Value := OQry_ClieID_CLIENTE.Value;
    QryClieBloqFX_BLOQCLIE.Value := 'S';
    QryClieBloqID_USUASIST.Value := gi_IdenUsua;
    QryClieBloqDT_BLOQCLIE.Value := now;
    QryClieBloqNOME_USUARIO.Value := gs_NomeUsuario;
    PageControl2.Pages[01].TabVisible := False;
    PageControl2.Pages[00].TabVisible := False;
    PageControl2.Pages[02].TabVisible := False;
    PageControl2.Pages[03].TabVisible := False;
    PageControl2.Pages[04].TabVisible := False;
    PageControl2.Pages[05].TabVisible := False;
    PageControl2.Pages[06].TabVisible := False;
    PageControl2.Pages[07].TabVisible := False;
    PageControl2.Pages[08].TabVisible := true;
  end
end;

procedure TFrmClientes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:=Vfecha;
end;

procedure TFrmClientes.DBCodCidExit(Sender: TObject);
begin

  If (OQry_Clie.State in [dsedit,dsinsert]) and (DBCodCid.Text<>'')  then
  begin
    QryCidade.Close;
    QryCidade.ParamByName('VCID').ASFLOAT:= STRTOFLOAT(DBCodCid.Text);
    QryCidade.Open;
    OQry_ClieID_CIDADE.Value := QryCidade.FieldByname('ID_CIDADE').AsFloat;
    OQry_ClieNM_CIDADE.Value := QryCidade.FieldByname('NM_CIDADE').AsString;
    OQry_ClieSG_ESTADO.Value := QryCidade.FieldByname('SG_ESTADO').AsString;
    OQry_ClieNM_PAIS.Value := QryCidade.FieldByname('NM_PAIS').AsString;
    OQry_ClieNM_REGIGEOG.Value := QryCidade.FieldByname('NM_REGIGEOG').AsString;
  end;

end;

procedure TFrmClientes.DBEdit32Exit(Sender: TObject);
begin

  If (OQry_Clie.State in [dsedit,dsinsert]) and (DBEdit32.Text<>'')  then
  begin
    QryCidade.Close;
    QryCidade.ParamByName('VCID').ASFLOAT:= STRTOFLOAT(DBEdit32.Text);
    QryCidade.Open;
    QryCliEndID_CIDADE.Value := QryCidade.FieldByname('ID_CIDADE').AsFloat;
    QryCliEndNM_CIDADE.Value := QryCidade.FieldByname('NM_CIDADE').AsString;
    QryCliEndSG_ESTADO.Value := QryCidade.FieldByname('SG_ESTADO').AsString;
    QryCliEndNM_PAIS.Value := QryCidade.FieldByname('NM_PAIS').AsString;
    QryCliEndNM_REGIGEOG.Value := QryCidade.FieldByname('NM_REGIGEOG').AsString;
  end;

end;
procedure TFrmClientes.DBEdit14Exit(Sender: TObject);
begin

  If (QryVendedor.State in [dsedit,dsinsert]) and (DBEdit14.Text<>'')  then
  begin
    QryVend.Close;
    QryVend.ParamByName('VVEND').ASFLOAT:= STRTOFLOAT(DBEdit14.Text);
    QryVend.Open;
    QryVendedorID_VENDEDOR.Value := QryVend.FieldByname('id_vendedor').AsFloat;
    QryVendedorNM_VENDEDOR.Value := QryVend.FieldByname('nm_vendedor').AsString;
    QryVendedorNM_FANTVEND.Value := QryVend.FieldByname('nm_fantvend').AsString;
    QryVendedorNM_REDUVEND.Value := QryVend.FieldByname('nm_reduvend').AsString;
    if bPercVendedor then
      QryVendedorPC_COMIVENDCLIE.Value := QryVend.FieldByname('pc_comivend').AsFloat
    else
      QryVendedorPC_COMIVENDCLIE.Value := 0;

    QryVendedorFL_COMIVENDCLIE.Value := QryVend.FieldByname('fl_comivend').AsString;
  end;

end;

procedure TFrmClientes.DBInsestExit(Sender: TObject);
begin
  if DBInsest.Text = '' then exit;

  if copy(DBInsest.Text,1,1) <> 'P' then
  begin
    Application.MessageBox('Inscrição do Produtor Rural inválida.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
    if (DBInsest.Enabled ) AND (DBInsest.Visible) then
      DBInsest.SetFocus;
    exit;
  end;

  if DBInsest.Text <> ' ' then
  begin
    v1:=  StrToInt (copy(DBInsest.Text,2,1))*1;
    v2:= StrToInt (copy(DBInsest.Text,3,1))*3;
    v3:= StrToInt (copy(DBInsest.Text,4,1))*4;
    v4:= StrToInt (copy(DBInsest.Text,5,1))*5;
    v5:= StrToInt (copy(DBInsest.Text,6,1))*6;
    v6:= StrToInt (copy(DBInsest.Text,7,1))*7;
    v7:= StrToInt (copy(DBInsest.Text,8,1))*8;
    v8:= StrToInt (copy(DBInsest.Text,9,1))*10;
    v9:= StrToInt (copy(DBInsest.Text,10,1));
    vt1:= trunc((v1+v2+v3+v4+v5+v6+v7+v8)/11);
    vt2:= (v1+v2+v3+v4+v5+v6+v7+v8);
    vt3:= (vt1 * 11);
    vt4:= vt2 - vt3;

    if Vt4 <> v9 then
    begin
      Application.MessageBox('Inscrição do Produtor Rural inválida.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      if (DBInsest.Enabled ) AND (DBInsest.Visible) then
         DBInsest.SetFocus;
    end;
  end;
end;

procedure TFrmClientes.DBCheckBox1Click(Sender: TObject);
begin
  if DBCheckBox1.Checked then
  begin
    Application.MessageBox('Não é recomendado que esta opção esteja ativa, podendo ocorrer problemas na emissão da NFE.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
    DBCheckBox1.Checked:= False;
  end;
end;

function TPageControl.DoMouseWheel(Shift: TShiftState; WheelDelta: Integer; const MousePos: TPoint): Boolean;
begin
  Result := true;
end;

procedure TFrmClientes.DBEmailExit(Sender: TObject);
begin
  if (DBEmail.Text <> '') then
  begin
    if (Pos('@',DBEmail.Text) = 0) then
    begin
      Application.MessageBox('                          Email Inválido.                         ', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
      TabDetalhe.Show;
      Exit;
    end;
  end;
end;

{FABRICIO - 05/09/2018 - MOTIVO: add campo para numero celular}
procedure TFrmClientes.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #08,#13,#27]) then
    Key := #13;
end;

procedure TFrmClientes.DBGrd_CadClieDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  with DBGrd_CadClie do
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

  DBGrd_CadClie.DefaultDrawColumnCell(rect,DataCol,column,state);

end;

procedure TFrmClientes.DBGrdConDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrdCon.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmClientes.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid2.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmClientes.ODtS_ClieDataChange(Sender: TObject; Field: TField);
begin
  grpSimplesNacional.Enabled := (DBRPessoa.ItemIndex = 0);
  chkFuncionario.Enabled     := True;{(DBRPessoa.ItemIndex = 1);}

  qryUsuarioCadastro.Close;
  qryUsuarioCadastro.ParamByName('ID_USUARIO').AsInteger:= OQry_ClieID_USUASIST.AsInteger;
  qryUsuarioCadastro.Open;

end;

procedure TFrmClientes.DBRPessoaChange(Sender: TObject);
begin
  grpSimplesNacional.Enabled := (DBRPessoa.ItemIndex = 0);
  chkFuncionario.Enabled := True;{:= (DBRPessoa.ItemIndex = 1);}
end;

procedure TFrmClientes.DBLookupComboBox21KeyPress(Sender: TObject;
  var Key: Char);
begin
     If ( Key = #13 ) AND ( DBNum.Enabled ) AND ( DBNum.Visible ) then
        DBNum.SetFocus;
end;

procedure TFrmClientes.btnExcelClick(Sender: TObject);
var Arquivo: TextFile;
begin
  try

    if dlgSaveArquivo.Execute then
    begin
      dlgSaveArquivo.FileName := 'LISTAGEM_CLIENTES.csv';
      AssignFile(Arquivo, dlgSaveArquivo.FileName);
      Rewrite(Arquivo);

      Write(Arquivo, 'CODIGO;');
      Write(Arquivo, 'RAZAO SOCIAL;');
      Write(Arquivo, 'CNPJ;');
      Write(Arquivo, 'CPF;');
      Write(Arquivo, 'FANTASIA;');
      Write(Arquivo, 'DDD;');
      Write(Arquivo, 'TELEFONE;');
      Write(Arquivo, 'CELULAR;');
      Write(Arquivo, 'EMAIL;');
      Write(Arquivo, 'ENDEREÇO;');
      Write(Arquivo, 'CIDADE;');
      Write(Arquivo, 'FORMA PAGTO;');
      Writeln(Arquivo, 'ATIVO;');
//      Write(Arquivo, 'LATITUDE;');
//      Writeln(Arquivo, 'LONGITUDE;');

      OQry_Clie.DisableControls;
      OQry_Clie.First;

//      QryCliEnd.DisableControls;
//      QryCliEnd.First;


      while not OQry_Clie.Eof do
      begin
        Write(Arquivo, OQry_ClieID_CLIENTE.AsString + ';');
        Write(Arquivo, OQry_ClieNM_CLIENTE.AsString + ';');
        Write(Arquivo, fFormatoCNPJ_CPF(OQry_ClieNR_CNPJCLIE.AsString) + ';');
        Write(Arquivo, fFormatoCNPJ_CPF(OQry_ClieNR_CPFCLIE.AsString) + ';');
        Write(Arquivo, OQry_ClieNM_FANTCLIE.AsString + ';');
        Write(Arquivo, OQry_ClieNR_DDDCIDA.AsString + ';');
        Write(Arquivo, OQry_ClieNR_FONECLIE.AsString + ';');
        Write(Arquivo, OQry_ClieNR_FONECELULAR.AsString + ';');
        Write(Arquivo, OQry_ClieGN_EMAICLIE.AsString + ';');
        Write(Arquivo, OQry_ClieNM_LOGRENDECLIE.AsString + ', ' +
                       OQry_ClieNR_LOGRENDECLIE.AsString + ' - ' +
                       OQry_ClieNM_BAIRRO.AsString + ';');
        Write(Arquivo, OQry_ClieNM_CIDADE.AsString   + ';');
        Write(Arquivo, OQry_ClieNM_FORMPAGA.AsString   + ';');
        Writeln(Arquivo, OQry_ClieFL_ATIVCLIE.AsString + ';');
//        write(Arquivo, QryCliEndLATITUDE.AsString + ';');
//        WriteLn(Arquivo, QryCliEndLONGITUDE.AsString + ';');

        OQry_Clie.Next;
//        QryCliEnd.Next;
      end;

      CloseFile(Arquivo);

      OQry_Clie.First;
      OQry_Clie.EnableControls;

//      QryCliEnd.First;
//      QryCliEnd.EnableControls;

      Application.MessageBox(PChar('Arquivo gerado com sucesso em ' + dlgSaveArquivo.FileName), PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
    end;
  except
    Application.MessageBox('Erro ao gerar o arquivo. Verifique se o local de destino existe e está acessível.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
  end;

end;

procedure TFrmClientes.PageControl2Change(Sender: TObject);
begin
  btnExcel.Enabled:= TabLista.Showing;
  BtnTxt.Enabled:=TabLista.Showing;
  btnFormularioComissao.Enabled:= TabDetalhe.Showing;
end;

procedure TFrmClientes.btnConsultaVendRelClick(Sender: TObject);
begin
  FrmOriPesq:=203;
  FrmPesqVend:=TFrmPesqVend.Create(Self);
  FrmPesqVend.ShowModal;
end;

procedure TFrmClientes.chkVendedorRelacionadoClick(Sender: TObject);
begin
  grpVendRelacionado.Enabled := chkVendedorRelacionado.Checked;

  if chkVendedorRelacionado.Checked = False then
  begin
    QryVendedorID_VENDEDOR_REL.Value:= 0;
    QryVendedorNM_VENREL.Value := '';
  end;

end;

procedure TFrmClientes.edtCodVendedorRelacionadoExit(Sender: TObject);
begin
  If (QryVendedor.State in [dsedit,dsinsert]) and (DBEdit14.Text<>'')  then
  begin
    QryVend.Close;
    QryVend.ParamByName('VVEND').ASFLOAT:= STRTOFLOAT(edtCodVendedorRelacionado.Text);
    QryVend.Open;
    QryVendedorID_VENDEDOR_REL.Value := QryVend.FieldByname('id_vendedor').AsFloat;
    QryVendedorNM_VENREL.Value := QryVend.FieldByname('nm_vendedor').AsString;
  end;
end;

procedure TFrmClientes.edtNomeVendedorRelacionadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.ODtS_ClieUpdateData(Sender: TObject);
begin
  if OQry_ClieFL_RESGATADO.AsString = 'N' then
    OQry_ClieID_USUARIO_RESG.AsString := '';
end;

procedure TFrmClientes.ChkClieInativoClick(Sender: TObject);
begin
  if ChkClieInativo.Checked = True then
  begin
    DBLMotInativacao.Enabled  := False;
    DBLMotInativacao.keyValue := -1;
    OQry_ClieCO_MOTIVOINATIVACAO.Value := 1;
  end
  else
  begin
    DBLMotInativacao.Enabled := True;
  end;
end;

procedure TFrmClientes.DBLMotInativacaoClick(Sender: TObject);
begin
  if ChkClieInativo.Checked and (OQry_ClieCO_MOTIVOINATIVACAO.Value > 1) then
  begin
    OQry_ClieCO_MOTIVOINATIVACAO.Value := 1;
  end;
end;

procedure TFrmClientes.btnFormularioComissaoClick(Sender: TObject);
begin

  OQry_Clie.DisableControls;
  frmFormularioComissao := TfrmFormularioComissao.Create(Self);
  frmFormularioComissao.qryFormularioComissao.Close;
  frmFormularioComissao.qryFormularioComissao.ParamByName('CODIGO').Value := OQry_ClieID_CLIENTE.Value;
  frmFormularioComissao.qryFormularioComissao.Open;

  if OQry_ClieID_CLIENTE.AsInteger <= 9378 then // VIVIA PEDIU PRA TER ESSA DIVISÃO
    frmFormularioComissao.lblClienteNovo.Caption := 'N'
  else
    frmFormularioComissao.lblClienteNovo.Caption := 'S';

  frmFormularioComissao.rptFormularioComissao.Preview(nil);
  OQry_Clie.EnableControls;

end;

procedure TFrmClientes.BtnTxtClick(Sender: TObject);
var Arquivo: TextFile;
begin
  try

    if dlgSaveArquivoTxt.Execute then
    begin
      dlgSaveArquivoTxt.FileName := 'LISTAGEM_CLIENTES_TXT.txt';
      AssignFile(Arquivo, dlgSaveArquivoTxt.FileName);
      Rewrite(Arquivo);

      Write(Arquivo, 'NOME;');
      write(Arquivo, 'DESCRIÇÃO;');
      Write(Arquivo, 'TIPO;');
      Write(Arquivo, 'CORDENADAS;');
      Write(Arquivo, 'TOLERÂNCIA;');
      Write(Arquivo, 'COD DE INTEGRAÇÃO;');
      Write(Arquivo, 'COD DE INTEGRAÇÃO DA CATEGORIA;');
      Write(Arquivo, 'COD DE INTEGRAÇÃO DO GRUPO;');
      Writeln(Arquivo, 'COD COR DA AREA OU ROTA;');

      OQry_Clie.DisableControls;
      OQry_Clie.First;

      while not OQry_Clie.Eof do
      begin
        Write(Arquivo, OQry_Clienm_fantclie.AsString + ';');
        write(Arquivo, ';');
        Write(Arquivo, '3;');
        write(Arquivo, OQry_ClieLONGITUDE.AsString + ' ' + OQry_ClieLATITUDE.AsString + ';');
        Write(Arquivo, '250;');
        Write(Arquivo, OQry_ClieID_CLIENTE.AsString + ';');
        Write(Arquivo, '1;');
        write(Arquivo, OQry_ClieID_CIDADE.AsString + ';');
        Writeln(Arquivo, ';');

        OQry_Clie.Next;
      end;

      CloseFile(Arquivo);

      OQry_Clie.First;
      OQry_Clie.EnableControls;

      Application.MessageBox(PChar('Arquivo gerado com sucesso em ' + dlgSaveArquivoTxt.FileName), PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
    end;
  except
    Application.MessageBox('Erro ao gerar o arquivo. Verifique se o local de destino existe e está acessível.', PChar(FrmClientes.Caption), MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure TFrmClientes.DbLatitudeEnter(Sender: TObject);
begin
  if not (QryCliEnd.State = DSINSERT) or not (QryCliEnd.State = DSEDIT) then
  begin
    QryCliEnd.Edit;
  end;
end;

procedure TFrmClientes.DbLongitudeEnter(Sender: TObject);
begin
  if not (QryCliEnd.State = DSINSERT) or not (QryCliEnd.State = DSEDIT) then
  begin
    QryCliEnd.Edit;
  end;
end;

end.


