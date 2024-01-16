unit UfrmMontaCarga;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, DB, MemDS, DBAccess, Ora, Grids,
  DBGrids, ExtCtrls, Mask, DBCtrls,math, OraSmart, Menus, ActnList, FileCtrl,
  ShellApi, System.Actions, Winapi.Windows;

type
  TFrmMontaCarga = class(TForm)
    PageControl1: TPageControl;
    TsLista: TTabSheet;
    TsDetalhe: TTabSheet;
    DBGrid1: TDBGrid;
    DSForm: TOraDataSource;
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
    Area3: TPanel;
    qryIten: TOraQuery;
    DSItem: TOraDataSource;
    BPESQ: TBitBtn;
    QrTipoLogi: TOraQuery;
    DStipoLogi: TOraDataSource;
    QryTemp: TOraQuery;
    PM1: TPopupMenu;
    mniValidar: TMenuItem;
    ActionList1: TActionList;
    Action1: TAction;
    grdSelePedi: TDBGrid;
    dtsSelePedi: TOraDataSource;
    dtsPediCarg: TOraDataSource;
    qryTempSubrLogi: TOraQuery;
    qryTempFatoVeic: TOraQuery;
    mniAjusPediCarg: TMenuItem;
    Area1: TPanel;
    DBEdit1: TDBEdit;
    edtDataCarg: TDBEdit;
    BPesqDt: TBitBtn;
    DbPlacVeic: TDBEdit;
    BPesqDtEntre: TBitBtn;
    DBTransportador: TDBEdit;
    edtDataLimiPedi: TDBEdit;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label20: TLabel;
    Label7: TLabel;
    Label22: TLabel;
    Label11: TLabel;
    QryTemp2: TOraQuery;
    OSQ1: TOraSQL;
    QrLimiteVenda: TOraQuery;
    QrLimiteVendaDT_ENTRPEDIVEND: TDateTimeField;
    QrLimiteVendaID_PRODMATEEMBA: TStringField;
    QrLimiteVendaNM_PRODMATEEMBA: TStringField;
    QrLimiteVendaVL_COTA: TFloatField;
    QrLimiteVendaVL_PM: TFloatField;
    QrLimiteVendaQN_COTA: TFloatField;
    QrLimiteVendaGN_PLACVEICTRAN: TStringField;
    QrLimiteVendaID_VENDEDOR: TFloatField;
    QrLimiteVendaNM_VENDEDOR: TStringField;
    QrLimiteVendaPESO_ITEM: TFloatField;
    QrLimiteVendaVL_ITEM: TFloatField;
    QrLimiteVendaPR_MED: TFloatField;
    QryTemp_TipoVenda: TOraQuery;
    mnGeraTXT: TMenuItem;
    qryGeraArquivoTXT: TOraQuery;
    SQLOrdem: TOraSQL;
    pnlBotoes: TPanel;
    SB_PRIMEIRO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SBNovo: TSpeedButton;
    SBDel: TSpeedButton;
    SBSalva: TSpeedButton;
    SBCancel: TSpeedButton;
    SBDiversos: TSpeedButton;
    Sb_Sair: TSpeedButton;
    Area2: TPanel;
    rgpCriterios: TRadioGroup;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    btnCriterios: TBitBtn;
    edtCodiRegi: TEdit;
    edtNomeRegi: TEdit;
    edtCodiCida: TEdit;
    edtCEPInic: TEdit;
    edtCEPFina: TEdit;
    EdCod_Vend: TEdit;
    BitBtn4: TBitBtn;
    EdNome_Vend: TEdit;
    EdtNomeCida: TEdit;
    GroupInfoCam: TGroupBox;
    Label8: TLabel;
    Label12: TLabel;
    DBHORASAIDA: TDBEdit;
    DBVALEPEDAGIO: TDBEdit;
    Label13: TLabel;
    DBVALORPEDAGIO: TDBEdit;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit3: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label23: TLabel;
    GroupBox4: TGroupBox;
    lblCapaTotaQuil: TLabel;
    lblCapaEmpeQuil: TLabel;
    lblCapaDispQuil: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    lblCapaTotaCaix: TLabel;
    lblCapaEmpeCaix: TLabel;
    lblCapaDispCaix: TLabel;
    Label6: TLabel;
    LbQtdPedidos: TLabel;
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    LPesq: TLabel;
    EdPesq: TEdit;
    BtProcurar: TBitBtn;
    btnInclPedi: TSpeedButton;
    btnExclPed: TSpeedButton;
    BtItensPedi: TBitBtn;
    BitBtn5: TBitBtn;
    BTItensCarga: TBitBtn;
    BtObsCaga: TBitBtn;
    Panel2: TPanel;
    grdSelecionado: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    btnSobe: TSpeedButton;
    Panel5: TPanel;
    BtnDesce: TSpeedButton;
    Panel6: TPanel;
    DBEdit2: TDBEdit;
    BitBtn6: TBitBtn;
    QryForm: TSmartQuery;
    QryFormEMPRESA: TStringField;
    QryFormFILIAL: TIntegerField;
    QryFormID_CARGEXPE: TFloatField;
    QryFormDT_CARGEXPE: TDateTimeField;
    QryFormGN_PLACVEICTRAN: TStringField;
    QryFormDT_MONTCARGEXPE: TDateTimeField;
    QryFormFL_STATCARGEXPE: TStringField;
    QryFormSIT_CARGA: TStringField;
    QryFormDT_FECHCARGEXPE: TDateTimeField;
    QryFormID_USUASIST_MONTAGEM: TFloatField;
    QryFormID_USUASIST_FECHAMENTO: TFloatField;
    QryFormID_USUASIST_ABERTURA: TFloatField;
    QryFormDT_ABERCARGEXPE: TDateTimeField;
    QryFormID_CLASCARGEXPE: TFloatField;
    QryFormID_ITEMPROGCAMI: TFloatField;
    QryFormDT_LIMIPEDICARGEXPE: TDateTimeField;
    QryFormFL_IMPRCARGEXPE: TStringField;
    QryFormNM_FORNECEDOR: TStringField;
    QryFormNM_CLASCARGEXPE: TStringField;
    QryFormVL_UNITFRETCARGEXPE: TFloatField;
    QryFormNR_ORDEENTRCARGEXPE: TFloatField;
    QryFormVL_FRETCARGEXPE: TFloatField;
    QryFormFX_CARGEXPE: TStringField;
    QryFormNM_USUASIST_MONTAGEM: TStringField;
    QryFormNM_USUASIST_ABERTURA: TStringField;
    QryFormNM_USUASIST_FECHAMENT0: TStringField;
    QryFormHORASAIDA: TStringField;
    QryFormVALEPEDAGIO: TStringField;
    QryFormVALOR_PEDAGIO: TFloatField;
    QryFormLOTEEXPO: TStringField;
    QryFormMOTORISTA: TStringField;
    QryFormAJUDANTE: TStringField;
    QryFormNM_CHAPA: TStringField;
    QryFormVL_PAGO_CHAPA: TFloatField;
    QryFormVL_PAGO_AJUDANTE: TFloatField;
    QryFormVL_PAGO_MOTORISTA: TFloatField;
    QryFormID_MOTORISTA: TIntegerField;
    QrAcesso: TSmartQuery;
    qrySelePedi: TSmartQuery;
    qrySelePediEMPRESA: TStringField;
    qrySelePediFILIAL: TIntegerField;
    qrySelePediID_PEDIVEND: TFloatField;
    qrySelePediDT_ENTRPEDIVEND: TDateTimeField;
    qrySelePediID_CARGEXPE: TFloatField;
    qrySelePediQN_PESOPEDIVEND: TFloatField;
    qrySelePediQN_PESOBRUTPEDIVEND: TFloatField;
    qrySelePediQN_EMBAPEDIVEND: TIntegerField;
    qrySelePediQN_TARAPEDIVEND: TFloatField;
    qrySelePediVL_PEDIVEND: TFloatField;
    qrySelePediQN_FATOFRETABAT_PEDIVEND: TFloatField;
    qrySelePediID_CLIENTE: TFloatField;
    qrySelePediID_VENDEDOR: TFloatField;
    qrySelePediNM_VENDEDOR: TStringField;
    qrySelePediNM_FANTCLIE: TStringField;
    qrySelePediNM_REDUCLIE: TStringField;
    qrySelePediNM_CLIENTE: TStringField;
    qrySelePediQN_DIFIENTRCLIE: TIntegerField;
    qrySelePediID_REGILOGI: TFloatField;
    qrySelePediID_SUBRLOGI: TFloatField;
    qrySelePediNM_REGILOGI: TStringField;
    qrySelePediNM_SUBRLOGI: TStringField;
    qrySelePediGN_RISCREGILOGI: TStringField;
    qrySelePediFL_RELAREGISUBRLOGI: TStringField;
    qrySelePediNR_ORDEPEDIVEND: TFloatField;
    qrySelePediGN_OBSEPEDIVEND: TStringField;
    qrySelePediFL_STATPEDIVEND: TStringField;
    qrySelePediNM_BAIRRO: TStringField;
    qrySelePediNR_CEPENDECLIE: TStringField;
    qrySelePediNM_CIDADE: TStringField;
    qrySelePediSG_ESTADO: TStringField;
    qrySelePediGN_PLACVEICTRAN: TStringField;
    qrySelePediNR_CAIXPOSTENDECLIE: TStringField;
    qryPediCarg: TSmartQuery;
    qryPediCargEMPRESA: TStringField;
    qryPediCargFILIAL: TIntegerField;
    qryPediCargID_PEDIVEND: TFloatField;
    qryPediCargDT_ENTRPEDIVEND: TDateTimeField;
    qryPediCargID_CARGEXPE: TFloatField;
    qryPediCargQN_PESOPEDIVEND: TFloatField;
    qryPediCargQN_PESOBRUTPEDIVEND: TFloatField;
    qryPediCargQN_EMBAPEDIVEND: TIntegerField;
    qryPediCargQN_FATOFRETABAT_PEDIVEND: TFloatField;
    qryPediCargID_CLIENTE: TFloatField;
    qryPediCargID_VENDEDOR: TFloatField;
    qryPediCargDT_FATUPEDIVEND: TDateTimeField;
    qryPediCargNM_VENDEDOR: TStringField;
    qryPediCargNM_FANTCLIE: TStringField;
    qryPediCargNM_REDUCLIE: TStringField;
    qryPediCargQN_DIFIENTRCLIE: TIntegerField;
    qryPediCargID_REGILOGI: TFloatField;
    qryPediCargID_SUBRLOGI: TFloatField;
    qryPediCargNM_SUBRLOGI: TStringField;
    qryPediCargNR_ORDEPEDIVEND: TFloatField;
    qryPediCargFL_STATPEDIVEND: TStringField;
    qryPediCargGN_OBSEPEDIVEND: TStringField;
    qryPediCargNM_CLIENTE: TStringField;
    qryPediCargNM_BAIRRO: TStringField;
    qryPediCargNR_CEPENDECLIE: TStringField;
    qryPediCargNM_CIDADE: TStringField;
    qryPediCargSG_ESTADO: TStringField;
    qryPediCargGN_PLACVEICTRAN: TStringField;
    qryPediCargNR_CAIXPOSTENDECLIE: TStringField;
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure BtpesqCliClick(Sender: TObject);
    procedure BPesqVendClick(Sender: TObject);
    procedure BtmaterialClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BPTiPedClick(Sender: TObject);
    procedure SBCancelClick(Sender: TObject);
    procedure SBSalvaClick(Sender: TObject);
    procedure SBDiversosClick(Sender: TObject);
    procedure edtDataCargEnter(Sender: TObject);
    procedure DbPlacVeicEnter(Sender: TObject);
    procedure edtDataCargExit(Sender: TObject);
    procedure DbPlacVeicExit(Sender: TObject);
    procedure SBDelClick(Sender: TObject);
    procedure grdSelePediTitleClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnCriteriosClick(Sender: TObject);
    procedure BPesqDtClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnInclPediClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AjustCapacCamin(pr_EmpePeso: Real = 0; pi_EmpeCaix: Integer = 0);
    procedure AjustCapacEntr(pi_EmpePont: Real = 0);
    procedure LimpaPaineCapac;
    procedure BPesqDtEntreClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SBNovoClick(Sender: TObject);
    procedure LigaCampos;
    procedure DesligaCampos;
    procedure ApagaCriterios;
    procedure EdCod_VendChange(Sender: TObject);
    procedure edtCodiRegiChange(Sender: TObject);
    procedure edtCodiCidaChange(Sender: TObject);
    procedure edtCEPInicChange(Sender: TObject);
    procedure PM1Popup(Sender: TObject);
    function VerifStatuCarga(pi_NumeCarg: Integer): String;
    procedure mniValidarClick(Sender: TObject);
    procedure TsDetalheShow(Sender: TObject);
    procedure DesligaArea1;
    procedure LigaArea1;
    procedure AtualCapaVeiculo;
    procedure btnExclPedClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtItensPediClick(Sender: TObject);
    procedure BTItensCargaClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BtProcurarClick(Sender: TObject);
    procedure BtObsCagaClick(Sender: TObject);
    procedure mniAjusPediCargClick(Sender: TObject);
    procedure CRTemp_QryFormAfterOpen(DataSet: TDataSet);
    procedure grdSelecionadoTitleClick(Column: TColumn);
    procedure mnGeraTXTClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnSobeClick(Sender: TObject);
    procedure BtnDesceClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdSelePediDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdSelecionadoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BitBtn6Click(Sender: TObject);

  private
    { Private declarations }
  public
     Vcoluna,SELPE,VCON,ui_CapaCamiEmpeCaix,li_DifiEntrClie:INTEGER;
     ls_QuerStat,ls_PediCargSQL,VItemInclui,ub_PermVend,Vdtstr,VqryFoco:string;
     VFatoFreteCam,VId_Cli,ur_ValoPediAnte,VId_Pedivend,ur_CapaCamiEmpePeso:Double;
     ur_PesoCaixPadr,VQNCAPA,ui_CapaEntrEmpe,ui_CapaEntrTota:Double;
     VDATATU:TDATETIME;
     us_SelePediSQL, us_SelePediSQLRegi, us_SelePediSqlPadr, us_PediCargSQL:STRING;
     us_Bloq, us_RegiAtiv, us_CidaAtiv, us_CEP1Ativ, us_CEP2Ativ, us_CritSQL:String;
     VAjuste:Boolean;
     VCid, NCid, NEst, NPais, NReg:String;
  end;

var
  FrmMontaCarga: TFrmMontaCarga;
  XRPM:INTEGER;

implementation

uses UPesquiCliente, UFrmPesqVend, global, UFrmPesqTPV, UFrmSeldata, UFrmPesqMatEmba,
     UFrmTituAtra, UFRMATRA, Principal, UFRMUltVend, UfrmPedVenda, UFrmPesCaminhao,
     UFrmItensPedido, UFrmItensCarga, UFrmCargObsPedi, UFrmPesqSubRegiao, UFrmCargObsCarga,
     UFrmPesqCid, ufrmConsultaUsuarios, UFrmConsultaUsuarioSistema, uFrmConsultaFornecedores,
     uFrmConsultaSubRegiao, ufrmConsultaCidades, ufrmConsultaMotorista ;

{$R *.dfm}

procedure TFrmMontaCarga.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMontaCarga.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
  If (QryForm.State = dsInsert) or (QryForm.State = dsEdit) then
  begin
    Action := caNone;
    exit;
  end;

  QrAcesso.Open;
  QrAcesso.First;
  QrAcesso.Edit;
  QrAcesso.FieldByName('id_usuasist_montcargparasist').AsString:='';
  QrAcesso.FieldByName('DT_MONTCARGPARASIST').AsString:='';
  QrAcesso.Post;
  QrAcesso.CommitUpdates;
  QrAcesso.ApplyUpdates;
  FrmPrincipal.VEN006.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmMontaCarga.BtIncluirClick(Sender: TObject);
var
  Vre:String;
begin

  If EdExpre.Text <> '' then
  Begin
    IF MResul.Lines.Count>0 then
    begin
      If RGeou.ItemIndex=0  then
         Vre:='AND'
      Else
        Vre:='OR';
    end;

    Case LCampos.itemindex of
      0:Vre:=Vre + 'FORN.ID_FORNECEDOR';
      1:Vre:=Vre + 'TRUNC(EC.DT_ABERCARGEXPE)';
      2:Vre:=Vre + 'TRUNC(EC.DT_CARGEXPE)';
      3:Vre:=Vre + 'TRUNC(EC.DT_FECHCARGEXPE)';
      4:Vre:=Vre + 'TRUNC(EC.DT_LIMIPEDICARGEXPE)';
      5:Vre:=Vre + 'TRUNC(EC.DT_MONTCARGEXPE)';
      6:Vre:=Vre + 'EC.ID_CARGEXPE';
      7:Vre:=Vre + 'FORN.NM_FORNECEDOR';
      8:Vre:=Vre + 'EC.GN_PLACVEICTRAN';
      9:Vre:=Vre + 'EC.FL_STATCARGEXPE';
      10:Vre:=Vre + 'UA.ID_USUASIST';
      11:Vre:=Vre + 'UF.ID_USUASIST';
      12:Vre:=Vre + 'UM.ID_USUASIST';
      13:Vre:=Vre + 'TV.FL_RASTVEICTRAN';
    end;

    Case CBCond.ItemIndex of
      0: Vre:=Vre + ' = ';
      1: Vre:=Vre + ' <> ';
      2: Vre:=Vre + ' > ';
      3: Vre:=Vre + ' >= ';
      4: Vre:=Vre + ' < ';
      5: Vre:=Vre + ' <= ';
    end;

    Case LCampos.itemindex of
      1..5:Vre:=Vre + 'TO_DATE(''';
      7..13:Vre:=Vre + '''';
    end;

    Vre:=Vre + UpperCase(Edexpre.text);

    Case LCampos.itemindex of
      1..5:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY''' +')';
      7..13:Vre:=Vre + '''';
    end;

    MResul.Lines.Add(Vre);
    EdExpre.Text :='';
    BtIncluir.Enabled:=false;
  end;

  BtAtivar.SetFocus;
end;

procedure TFrmMontaCarga.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmMontaCarga.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmMontaCarga.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin
   Screen.Cursor := crSQLWait;
   QryForm.Close;
   QryForm.SQL.Clear;
   QryForm.SQL.Text:=  'SELECT DISTINCT EC.EMPRESA, EC.FILIAL, EC.ID_CARGEXPE, '+
                       'EC.DT_CARGEXPE, EC.GN_PLACVEICTRAN, EC.DT_MONTCARGEXPE, '+
                       'CASE WHEN EC.FL_STATCARGEXPE = ''BQ'' then '+
                       '  ''BLOQUEADA'' '+
                       'WHEN EC.FL_STATCARGEXPE = ''MT'' then '+
                       '  ''EM MONTAGEM'' '+
                       'WHEN EC.FL_STATCARGEXPE = ''FE'' then '+
                       '  ''FECHADA'' '+
                       'WHEN EC.FL_STATCARGEXPE = ''AB'' then '+
                       '  ''ABERTA'' '+
                       'WHEN EC.FL_STATCARGEXPE = ''NF'' then '+
                       '  ''NF DIRETA'' '+
                       'WHEN EC.FL_STATCARGEXPE = ''CR'' then '+
                       '  ''EM CARREGAMENTO'' '+
                       'WHEN EC.FL_STATCARGEXPE = ''SP'' then '+
                       '  ''CARREGAMENTO SUSPENSO'' '+
                       'ELSE '+
                       '  '''' '+
                       'END AS SIT_CARGA, '+
                       'EC.FL_STATCARGEXPE, EC.DT_FECHCARGEXPE, EC.ID_USUASIST_MONTAGEM, '+
                       'EC.ID_USUASIST_FECHAMENTO, EC.ID_USUASIST_ABERTURA, EC.DT_ABERCARGEXPE, '+
                       'EC.ID_CLASCARGEXPE, EC.ID_ITEMPROGCAMI, EC.DT_LIMIPEDICARGEXPE, '+
                       'EC.FL_IMPRCARGEXPE, FORN.NM_FORNECEDOR, ECC.NM_CLASCARGEXPE, '+
                       'EC.VL_UNITFRETCARGEXPE, EC.NR_ORDEENTRCARGEXPE, EC.VL_FRETCARGEXPE, '+
                       'EC.FX_CARGEXPE, UM.NM_USUASIST AS NM_USUASIST_MONTAGEM, UA.NM_USUASIST AS NM_USUASIST_ABERTURA, '+
                       'UF.NM_USUASIST AS NM_USUASIST_FECHAMENT0, EC.HORASAIDA, EC.VALEPEDAGIO, EC.VALOR_PEDAGIO, '+
                       'EC.LOTEEXPO, EC.MOTORISTA, EC.AJUDANTE, EC.NM_CHAPA, EC.VL_PAGO_CHAPA, '+
                       'EC.VL_PAGO_AJUDANTE, EC.VL_PAGO_MOTORISTA, ID_MOTORISTA '+
                       'FROM EXPEDICAO_CARGA EC, PEDIDO_VENDA PV, FORNECEDOR FORN, EXPEDICAO_CARGA_CLASSIFICACAO ECC, '+
                       'SISTEMA_USUARIO UM, SISTEMA_USUARIO UA, SISTEMA_USUARIO UF '+
                       'WHERE (EC.ID_CARGEXPE = PV.ID_CARGEXPE(+)) '+
                       'AND (EC.ID_ITEMPROGCAMI  = FORN.ID_FORNECEDOR) '+
                       'AND (EC.ID_CLASCARGEXPE = ECC.ID_CLASCARGEXPE(+)) '+
                       'AND (EC.ID_USUASIST_MONTAGEM = UM.ID_USUASIST(+)) '+
                       'AND (EC.ID_USUASIST_ABERTURA = UA.ID_USUASIST(+)) '+
                       'AND (EC.ID_USUASIST_FECHAMENTO = UF.ID_USUASIST(+)) '+
                       'AND (EC.FILIAL = '+ inttoStr( gi_filial ) +')';

  XTM:=MResul.Lines.Count;

  If XTM >0 then
  begin
    QryForm.SQL.Add('AND ');
    QryForm.SQL.Add(MResul.Text);
  end
  ELSE
  begin
    Screen.Cursor := crDefault;
    if Application.MessageBox('                   Exibir listagem sem filtro?                                      ', PChar(FrmMontaCarga.Caption), MB_YESNO) = IDNO then
      exit
    Else
      Screen.Cursor := crSQLWait;
  end;

  QryForm.SQL.Add('ORDER BY EC.DT_CARGEXPE DESC');
  QryForm.Open;

  PageControl1.Pages[1].Show;
  Screen.Cursor := crDefault;

  PageControl1.Pages[1].TabVisible:=true;
  PageControl1.Pages[2].TabVisible:=true;

  SB_PRIMEIRO.Enabled:=true;
  SB_ANTERIOR.Enabled:=true;
  SB_PROXIMO.Enabled:=true;
  SB_ULTIMO.Enabled:=true;
  SBNovo.Enabled:=true;
  SBDel.Enabled:=true;
  SBDiversos.Enabled:= true;
  DesligaCampos;
  DesligaArea1;
  mniAjusPediCarg.Enabled:= True;
  BTItensCarga.Enabled := True;
  BtItensPedi.Enabled := true;
end;

procedure TFrmMontaCarga.DBGrid1DblClick(Sender: TObject);
begin
    PageControl1.Pages[2].Show;
end;

procedure TFrmMontaCarga.SB_PRIMEIROClick(Sender: TObject);
var
  linha:integer;
begin
  QryForm.First;

  If TsDetalhe.Showing then
  begin
    AtualCapaVeiculo;
    AjustCapacCamin(0,0);

    If not qryPediCarg.IsEmpty then
      LbQtdPedidos.Caption := IntToStr(qryPediCarg.RecordCount);

    linha := Pos('AND (PV.ID_CARGEXPE = ',ls_PediCargSQL);

      IF linha > 0 then
     ls_PediCargSQL := copy(ls_PediCargSQL,0,linha-1);

     ls_PediCargSQL := ls_PediCargSQL +
                    ' AND (PV.ID_CARGEXPE = ' + qryForm.FieldByName('ID_CARGEXPE').AsString + ')'+
                    ' ORDER BY PV.NR_ORDEPEDIVEND'                                                ;

    qryPediCarg.Close;
    qryPediCarg.SQL.Text := ls_PediCargSQL;
    qryPediCarg.Open;
  end;

end;

procedure TFrmMontaCarga.SB_ANTERIORClick(Sender: TObject);
var
  linha:integer;
begin
  QryForm.Prior;

  If TsDetalhe.Showing then
  begin
    AtualCapaVeiculo;
    AjustCapacCamin(0,0);

    If not qryPediCarg.IsEmpty then
      LbQtdPedidos.Caption := IntToStr(qryPediCarg.RecordCount);

    linha := Pos('AND (PV.ID_CARGEXPE =',ls_PediCargSQL);

    if linha > 0 then
     ls_PediCargSQL := copy(ls_PediCargSQL,0,linha-1);

     ls_PediCargSQL := ls_PediCargSQL +
                    ' AND (PV.ID_CARGEXPE = ' + qryForm.FieldByName('ID_CARGEXPE').AsString + ')'+
                    ' ORDER BY PV.NR_ORDEPEDIVEND'                                                ;

    qryPediCarg.Close;
    qryPediCarg.SQL.Text := ls_PediCargSQL;
    qryPediCarg.Open;
  end;

end;

procedure TFrmMontaCarga.SB_PROXIMOClick(Sender: TObject);
var
  linha:integer;
begin
  QryForm.next;

  If TsDetalhe.Showing then
  begin
    AtualCapaVeiculo;
    AjustCapacCamin(0,0);

    If not qryPediCarg.IsEmpty then
      LbQtdPedidos.Caption := IntToStr(qryPediCarg.RecordCount);

    linha := Pos('AND (PV.ID_CARGEXPE =',ls_PediCargSQL);

    if linha > 0 then
     ls_PediCargSQL := copy(ls_PediCargSQL,0,linha-1);

     ls_PediCargSQL := ls_PediCargSQL +
                    ' AND (PV.ID_CARGEXPE = ' + qryForm.FieldByName('ID_CARGEXPE').AsString + ')'+
                    ' ORDER BY PV.NR_ORDEPEDIVEND'                                                ;

    qryPediCarg.Close;
    qryPediCarg.SQL.Text := ls_PediCargSQL;
    qryPediCarg.Open;
  end;

end;

procedure TFrmMontaCarga.SB_ULTIMOClick(Sender: TObject);
var
  linha:integer;
begin
  QryForm.Last;

  If TsDetalhe.Showing then
  begin
    AtualCapaVeiculo;
    AjustCapacCamin(0,0);

    If not qryPediCarg.IsEmpty then
      LbQtdPedidos.Caption := IntToStr(qryPediCarg.RecordCount);

    linha := Pos('AND (PV.ID_CARGEXPE =',ls_PediCargSQL);

    IF linha > 0 then
      ls_PediCargSQL := copy(ls_PediCargSQL,0,linha-1);

     ls_PediCargSQL := ls_PediCargSQL +
                    ' AND (PV.ID_CARGEXPE = ' + qryForm.FieldByName('ID_CARGEXPE').AsString + ')'+
                    ' ORDER BY PV.NR_ORDEPEDIVEND'                                                ;

    qryPediCarg.Close;
    qryPediCarg.SQL.Text := ls_PediCargSQL;
    qryPediCarg.Open;
  end;

end;

procedure TFrmMontaCarga.BPESQClick(Sender: TObject);
begin
  XRPM:=2;
  FrmOriPesq:=2;

  CASE SELPE OF
    1:BEGIN
      Cria_FrmSelData(Vdtstr);
      EdExpre.text:= Vdtstr;
      BtIncluir.SetFocus;
    END;
    2:BEGIN
      FrmPesqCaminhao:= TFrmPesqCaminhao.Create(Self);
      FrmPesqCaminhao.ShowModal;
    END;
    3:BEGIN
      frmConsultaUsuarios:= TfrmConsultaUsuarios.Create(Self);
      frmConsultaUsuarios.ShowModal;
    END;
    4:BEGIN
      frmConsultaFornecedores:= TfrmConsultaFornecedores.Create(Self);
      frmConsultaFornecedores.ShowModal;
    END;
  end;

  BPESQ.Visible:=FALSE;
end;

procedure TFrmMontaCarga.LCamposClick(Sender: TObject);
begin
  SELPE:=0;

  CASE LCAMPOS.ItemIndex OF
    0     :SELPE:=4;
    1..5  :SELPE:=1;
    7     :SELPE:=4;
    8     :SELPE:=2;
    10..12:SELPE:=3;
  END;

  BPESQ.Visible:= (SELPE>0);

end;

procedure TFrmMontaCarga.BtpesqCliClick(Sender: TObject);
begin
  FrmOriPesq:=11;
  FrmPesqCliente:=TFrmPesqCliente.Create(Self);
  FrmPesqCliente.ShowModal;
end;

procedure TFrmMontaCarga.BPesqVendClick(Sender: TObject);
begin
  FrmOriPesq:=11;
  FrmPesqVend:=TFrmPesqVend.Create(Self);
  FrmPesqVend.ShowModal;
end;

procedure TFrmMontaCarga.BtmaterialClick(Sender: TObject);
begin
  FrmOriPesq:=11;
  FrmPesqMatEmba:=TFrmPesqMatEmba.Create(Self);
  FrmPesqMatEmba.ShowModal;
end;

procedure TFrmMontaCarga.FormShow(Sender: TObject);
begin

  IF LCAMPOS.Items.Count=0 then
  BEGIN
    With LCampos.Items do
    begin
      Add('Cód. Transportadora');
      Add('Data Abertura');
      Add('Data Carga');
      Add('Data Fechamento');
      Add('Data Limite Pedidos');
      Add('Data Montagem');
      Add('Nº da Carga');
      Add('Nome Transportador');
      Add('Placa Veículo');
      Add('Status da Carga');
      Add('Usuário Abertura');
      Add('Usuário Fechamento');
      Add('Usuário Montagem');
      Add('Veículo Rastreado? (S/N)');
    end;
  END;

  PageControl1.Pages[1].TabVisible:=false;
  PageControl1.Pages[2].TabVisible:=false;
end;

procedure TFrmMontaCarga.BPTiPedClick(Sender: TObject);
begin
  FrmOriPesq:=11;
  FrmPesqTPV:=TFrmPesqTPV.Create(Self);
  FrmPesqTPV.ShowModal;
end;

procedure TFrmMontaCarga.SBCancelClick(Sender: TObject);
begin
  QryForm.Cancel;
  qryForm.CancelUpdates;

  SB_PRIMEIRO.Enabled:= True;
  SB_ANTERIOR.Enabled:= True;
  SB_PROXIMO.Enabled := True;
  SB_ULTIMO.Enabled  := True;

  PageControl1.Pages[0].TabVisible:= True;
  PageControl1.Pages[1].TabVisible:= True;
  PageControl1.Pages[2].TabVisible:= True;

  SBNovo.Enabled := True;
  SBDel.Enabled := True;
  SBDiversos.Enabled := True;
  SBSalva.Enabled := False;
  SBCancel.Enabled := False;
  Sb_Sair.Enabled := True;
  qrySelePedi.Close;
  DesligaCampos;
  ApagaCriterios;
  DesligaArea1;
  SBDiversos.Enabled:= True;
  mniValidar.Enabled:= False;
  btnSobe.enabled   := false;
  BtnDesce.Enabled  := false;
  mniAjusPediCarg.Enabled := True;
  BtProcurar.Enabled := False;
  EdPesq.ReadOnly := True;
  BtObsCaga.Enabled := False;

  If not qryPediCarg.IsEmpty then
    LbQtdPedidos.Caption := IntToStr(qryPediCarg.RecordCount);
end;

procedure TFrmMontaCarga.SBSalvaClick(Sender: TObject);
 var
  ls_Cache: String;
  li_Loop, xc : Integer;
  tabFoco    : TTabSheet;
begin
  Screen.Cursor := crSQLWait;
  ActiveControl := Nil;

  tabFoco := tSDetalhe;

  If DbPlacVeic.text = '' then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('          É necessário informar a Placa do Veículo.         ', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    DbPlacVeic.SetFocus;
    Exit;
  end;

  // Verificamos se foram selecionados pedidos de acordo com a data limite
  if (qrySelePedi.IsEmpty) and (qryPediCarg.IsEmpty) then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('          Data limite dos pedidos inválida. Por favor, verifique.         ', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    edtDataLimiPedi.SetFocus;
    exit;
  end;

  qryForm['DT_MONTCARGEXPE'] := Date;
  qryForm['VL_FRETCARGEXPE'] := 0;

  if ls_QuerStat = 'I' then
  begin
    qryForm['FL_STATCARGEXPE'] := 'MT';
    us_Bloq := 'S';

    try
      qryForm.ApplyUpdates;
      qryForm.CommitUpdates;
    except
      on E: Exception do
      begin
        if gb_ErroBanc then
        begin
          gb_ErroBanc := False;
        end;

        Screen.Cursor := crDefault;

        raise Exception.CreateFmt('Erro ao incluir carga!!! '  + #13  + ' Erro : %s.', [E.Message]);
      end;
    end;

  End
  else
  begin
    qryForm['FL_STATCARGEXPE'] := 'BQ';
    us_Bloq := 'N';
    qryForm.Post;
    qryForm.ApplyUpdates;
    qryForm.CommitUpdates;
  end;

  // Verificamos se existem pedidos que já foram faturados
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT ID_PEDIVEND                                                                      '+
                      '  FROM PEDIDO_VENDA Pedido_venda                                                        '+
                      ' WHERE (Pedido_venda.ID_CARGEXPE = ' + qryForm.FieldByName('ID_CARGEXPE').AsString + ') '+
                      '   AND Pedido_venda.DT_FATUPEDIVEND IS NOT NULL                                         ';
  qryTemp.Open;
  qryTemp.Close;

  SB_PRIMEIRO.Enabled:= False;
  SB_ANTERIOR.Enabled:= False;
  SB_PROXIMO.Enabled := False;
  SB_ULTIMO.Enabled  := False;
  SBNovo.Enabled := False;
  SBDel.Enabled := False;
  SBSalva.Enabled:= False;
  SBCancel.Enabled:= False;
  Sb_Sair.Enabled:= False;
  btnInclPedi.Enabled := True;
  btnExclPed.Enabled := False;

  If (VAjuste = False) then
    SBDiversos.Enabled := False;

  ApagaCriterios;
  DesligaArea1;
  BtObsCaga.Enabled := True;
  Screen.Cursor := crDefault;
end;

procedure TFrmMontaCarga.SBDiversosClick(Sender: TObject);
begin
  pm1.Popup(445,88);
end;

procedure TFrmMontaCarga.edtDataCargEnter(Sender: TObject);
begin
  edtDataCarg.Color:= clSilver;
end;

procedure TFrmMontaCarga.DbPlacVeicEnter(Sender: TObject);
begin
  DbPlacVeic.Color:= clSilver;
end;

procedure TFrmMontaCarga.edtDataCargExit(Sender: TObject);
begin
  IF StrToDate(edtDataLimiPedi.Text) < StrToDate(edtDataCarg.Text) then
     edtDataLimiPedi.Text := edtDataCarg.Text;
  edtDataCarg.Color:= ClWindow;

end;

procedure TFrmMontaCarga.DbPlacVeicExit(Sender: TObject);
begin
  DbPlacVeic.Color:= ClWindow;

end;

procedure TFrmMontaCarga.SBDelClick(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmMontaCarga.grdSelePediTitleClick(Column: TColumn);
var
  linha:integer;
begin
  Screen.Cursor := crSQLWait;
  linha := Pos('ORDER',qrySelePedi.SQL.text);
  Vcoluna:=0;

  IF Column.FieldName='NR_CAIXPOSTENDECLIE' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by  Cliente.NR_CAIXPOSTENDECLIE');
    qrySelePedi.Open;
    Vcoluna:=1;
    LPesq.Caption := 'Horário =';
  end;

  IF Column.FieldName='NM_VENDEDOR' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by  VENDEDOR.NM_VENDEDOR');
    qrySelePedi.Open;
    Vcoluna:=2;
    LPesq.Caption := 'Nome Vendedor=';
  end;

  IF Column.FieldName='NM_CLIENTE' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by Cliente.NM_CLIENTE');
    qrySelePedi.Open;
    Vcoluna:=3;
    LPesq.Caption := 'Nome Cliente=';
  end;

  IF Column.FieldName='NM_BAIRRO' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by  BAIRRO.NM_BAIRRO');
    qrySelePedi.Open;
    Vcoluna:=4;
    LPesq.Caption := ' Bairro= ';
  end;

  IF Column.FieldName='NM_CIDADE' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by  CIDADE.NM_CIDADE');
    qrySelePedi.Open;
    Vcoluna:=5;
    LPesq.Caption := ' Cidade = ';
  end;

  IF Column.FieldName='NR_CEPENDECLIE' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by  Cliente_endereco.NR_CEPENDECLIE ');
    qrySelePedi.Open;
    Vcoluna:=6;
    LPesq.Caption := ' CEP = ';
  end;

  IF Column.FieldName='QN_EMBAPEDIVEND' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by Pedido_venda.QN_EMBAPEDIVEND');
    qrySelePedi.Open;
    Vcoluna:=7;
    LPesq.Caption := 'Caixas =';
  end;

  IF Column.FieldName='DT_ENTRPEDIVEND' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by Pedido_venda.DT_ENTRPEDIVEND ');
    qrySelePedi.Open;
    Vcoluna:=8;
    LPesq.Caption := 'Dt.Entr.Ped.=';
  end;

  IF Column.FieldName='NM_SUBRLOGI' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by  Logistica_subregiao.NM_SUBRLOGI');
    qrySelePedi.Open;
    Vcoluna:=9;
    LPesq.Caption := 'Sub-Regiao=';
  end;

  IF Column.FieldName='ID_PEDIVEND' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by Pedido_venda.ID_PEDIVEND ');
    qrySelePedi.Open;
    Vcoluna:=10;
    LPesq.Caption := 'Nº Pedido =';
  end;

  IF Column.FieldName='ID_CLIENTE' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by Pedido_venda.ID_CLIENTE ');
    qrySelePedi.Open;
    Vcoluna:=11;
    LPesq.Caption := 'Cód. Cliente =';
  end;

  IF Column.FieldName='ID_VENDEDOR' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by  Pedido_venda.ID_VENDEDOR');
    qrySelePedi.Open;
    Vcoluna:=12;
    LPesq.Caption := 'Cód. Vendedor =';
  end;

  IF Column.FieldName='QN_PESOBRUTPEDIVEND' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by Pedido_venda.QN_PESOBRUTPEDIVEND');
    qrySelePedi.Open;
    Vcoluna:=13;
    LPesq.Caption := 'Peso =';
  end;

  IF Column.FieldName='SG_ESTADO' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by  ESTADO.SG_ESTADO');
    qrySelePedi.Open;
    Vcoluna:=14;
    LPesq.Caption := ' Estado = ';
  end;

  IF Column.FieldName='GN_PLACVEICTRAN' then
  begin
    qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
    qrySelePedi.SQL.add(' ORDER by Pedido_venda.GN_PLACVEICTRAN');
    qrySelePedi.Open;
    Vcoluna:=15;
    LPesq.Caption := ' Placa = ';
  end;

  Screen.Cursor := crDefault;
end;

procedure TFrmMontaCarga.DBGrid1TitleClick(Column: TColumn);
var
  linha:integer;
begin
  linha := Pos('ORDER',QryForm.SQL.text);

  CASE  Column.Index OF
    0:begin
        QryForm.SQL.text := copy(QryForm.SQL.text,0,linha-1);
        QryForm.SQL.add(' ORDER BY EC.ID_CARGEXPE ');
        QryForm.Open;
      end;
    1:begin
        QryForm.SQL.text := copy(QryForm.SQL.text,0,linha-1);
        QryForm.SQL.add(' ORDER BY EC.DT_CARGEXPE ');
        QryForm.Open;
      end;
    2:begin
        QryForm.SQL.text := copy(QryForm.SQL.text,0,linha-1);
        QryForm.SQL.add(' ORDER BY EC.DT_LIMIPEDICARGEXPE ');
        QryForm.Open;
      end;
    3:begin
        QryForm.SQL.text := copy(QryForm.SQL.text,0,linha-1);
        QryForm.SQL.add(' ORDER BY EC.GN_PLACVEICTRAN ');
        QryForm.Open;
      end;
    4:begin
        QryForm.SQL.text := copy(QryForm.SQL.text,0,linha-1);
        QryForm.SQL.add(' ORDER BY FORN.NM_FORNECEDOR ');
        QryForm.Open;
      end;
    6:begin
        QryForm.SQL.text := copy(QryForm.SQL.text,0,linha-1);
        QryForm.SQL.add(' ORDER BY EC.DT_MONTCARGEXPE ');
        QryForm.Open;
      end;
  End;
end;


procedure TFrmMontaCarga.btnCriteriosClick(Sender: TObject);
var
  ls_SelePediSQL: String;
  ls_CEPInic: String;
  ls_CEPFina: String;
begin

  Screen.Cursor := crSQLWait;
  //Verificamos se a data da carga é maior que a Data Limite.
  If  StrToDate(edtDataCarg.Text) > StrToDate(edtDataLimiPedi.Text) then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('          A Data da Carga não pode ser maior que a Data Limite de Entrega.         ', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  // Se for para restaurarmos o SQL inicial
  If btnCriterios.Caption = '&Restaurar' then
  begin
    qrySelePedi.Close;
    us_SelePediSQL := us_SelePediSqlPadr;
    qrySelePedi.SQL.Text := us_SelePediSQL +
    '   AND  (Pedido_venda.DT_ENTRPEDIVEND BETWEEN To_date(''' + DateToStr( StrTodate(edtDataCarg.text)) + ''', ''DD/MM/YYYY'') '+
    '         AND To_date(''' + (edtDataLimiPedi.text) + ''', ''DD/MM/YYYY''))                                       '+
    'ORDER BY VENDEDOR.NM_VENDEDOR ';

    qrySelePedi.Open;
    ApagaCriterios;

    us_RegiAtiv := '';
    us_CidaAtiv := '';
    us_CEP1Ativ := '';
    us_CEP2Ativ := '';
    us_CritSQL  := '';
    Screen.Cursor := crDefault;
    btnCriterios.Caption := '&Ativa';
    Exit;
  end;

  // Atualizamos as variáveis de controle do botão ativar da montagem de carga
  us_RegiAtiv := edtCodiRegi.Text;
  us_CidaAtiv := edtCodiCida.Text;
  us_CEP1Ativ := edtCepInic.Text;
  us_CEP2Ativ := edtCepFina.Text;
  us_SelePediSQL := us_SelePediSQLPadr;

  // Verificamos se fizemos alguma seleção
  If rgpCriterios.ItemIndex = 0 then
  begin

    // Adicionamos as datas no SQL da query e o novo critério
    us_CritSQL := ' AND (Pedido_venda.DT_ENTRPEDIVEND BETWEEN To_date(''' + DateToStr(StrTodate(edtDataCarg.text)) + ''', ''DD/MM/YYYY'') '+
                  ' AND To_date(''' + (edtDataLimiPedi.text) + ''', ''DD/MM/YYYY''))                                       '+
                  ' AND ( pedido_venda.id_vendedor = ' + EdCod_Vend.Text + ')                                              ';

    us_SelePediSQL := us_SelePediSQLRegi;
    ls_SelePediSQL := us_SelePediSQL + us_CritSQL;

    // Ordenamos a qrySelePedi
    qrySelePedi.Close;
    qrySelePedi.SQL.Text := ls_SelePediSQL + ' ORDER BY pedido_venda.id_vendedor ';
    qrySelePedi.Open;

    btnCriterios.Caption := '&Restaurar';
  end
  // Sub-Região
  Else if rgpCriterios.ItemIndex = 1 then
  begin
    // Adicionamos as datas no SQL da query e o novo critério
    us_CritSQL := ' AND (Pedido_venda.DT_ENTRPEDIVEND BETWEEN To_date(''' + DateToStr(StrTodate(edtDataCarg.text)) + ''', ''DD/MM/YYYY'') '+
                  ' AND To_date(''' + (edtDataLimiPedi.text) + ''', ''DD/MM/YYYY''))              '+
                  ' AND (CLIENTE.ID_SUBRLOGI = ' + edtCodiRegi.Text + ')                      ';

    us_SelePediSQL := us_SelePediSQLRegi;
    ls_SelePediSQL := us_SelePediSQL + us_CritSQL;

    qrySelePedi.Close;
    qrySelePedi.SQL.Text := ls_SelePediSQL + ' ORDER BY Logistica_regiao_subregiao.ID_REGILOGI ';
    qrySelePedi.Open;
    btnCriterios.Caption := '&Restaurar';
  end
  // Cidade
  else if rgpCriterios.ItemIndex = 2 then
  begin
    // Adicionamos as datas no SQL da query e o novo critério
    us_CritSQL := ' AND (Pedido_venda.DT_ENTRPEDIVEND BETWEEN To_date(''' + DateToStr(StrTodate(edtDataCarg.text)) + ''', ''DD/MM/YYYY'')  '+
                  '      AND To_date(''' + (edtDataLimiPedi.text) + ''', ''DD/MM/YYYY'')                                         '+
                  ' AND (Bairro.ID_CIDADE) = ' + edtCodiCida.Text + ')                                                                    ';

    ls_SelePediSQL := us_SelePediSQL + us_CritSQL;
    qrySelePedi.Close;
    qrySelePedi.SQL.Text := ls_SelePediSQL + ' ORDER BY Logistica_subregiao.NM_SUBRLOGI';
    qrySelePedi.Open;
    btnCriterios.Caption := '&Restaurar';
  end
  // CEP
  else if rgpCriterios.ItemIndex = 3 then
  begin
    // Adicionamos os CEPs no SQL da query
    IF edtCEPInic.Text = ''  then
      ls_CEPInic := '00000000'
    ELSE
      ls_CEPInic :=  edtCEPInic.Text;

    IF  edtCEPFina.Text = '' then
      ls_CEPFina := '99999999'
    ELSE
      ls_CEPFina := edtCEPFina.Text;

    us_CritSQL := ' AND (Pedido_venda.DT_ENTRPEDIVEND BETWEEN To_date(''' + DateToStr(StrTodate(edtDataCarg.text)) + ''', ''DD/MM/YYYY'') AND  '+
                  '                                        To_date(''' + (edtDataLimiPedi.text) + ''', ''DD/MM/YYYY''))              '+
                  ' AND (Cliente_endereco.NR_CEPENDECLIE  BETWEEN ''' + ls_CEPInic + ''' AND ''' + ls_CEPFina + ''')                          ';

    ls_SelePediSQL := us_SelePediSQL + us_CritSQL;
    qrySelePedi.Close;
    qrySelePedi.SQL.Text := ls_SelePediSQL + ' ORDER BY (Cliente_endereco.NR_CEPENDECLIE)';
    qrySelePedi.Open;
    btnCriterios.Caption := '&Restaurar';

  end
  //Nenhum critério selecionado
  else
  begin
    us_CritSQL := ' AND (Pedido_venda.DT_ENTRPEDIVEND BETWEEN To_date(''' + DateToStr(StrTodate(edtDataCarg.text)) + ''', ''DD/MM/YYYY'') AND  '+
                  '                                        To_date(''' + (edtDataLimiPedi.text) + ''', ''DD/MM/YYYY''))              ';

    ls_SelePediSQL := us_SelePediSQL + us_CritSQL;
    qrySelePedi.Close;
    qrySelePedi.SQL.Text := ls_SelePediSQL + ' ORDER BY (VENDEDOR.NM_VENDEDOR)';
    qrySelePedi.Open;
  end;

  BtProcurar.Enabled := True;
  EdPesq.ReadOnly := False;

  IF (QryForm.State in [dsInsert, dsEdit]) then
  BEGIN
    SBSalva.Enabled := True;
    SBCancel.Enabled:= True;
  END;
  Screen.Cursor := crDefault;

end;

procedure TFrmMontaCarga.BPesqDtClick(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  edtDataCarg.text:= Vdtstr;
end;

procedure TFrmMontaCarga.BitBtn1Click(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  edtDataLimiPedi.text:= Vdtstr;
end;

procedure TFrmMontaCarga.btnInclPediClick(Sender: TObject);
var
  li_Loop: Integer;
  li_OrdePediVend: Integer;
  lr_TotaPeso: Real;
  li_TotaCaix: Integer;
  lr_TotaFret: Double;
  ls_PediInva: String;
  bkmPosiAtua: TBookmark;
  linha:integer;
Begin
  Screen.Cursor := crSQLWait;

  If grdSelecionado = Nil then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('          É necessário selecionar ao menos um Pedido para Inclusão.         ', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  If grdSelePedi.SelectedRows.Count = 0 then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('          É necessário selecionar ao menos um Pedido para Inclusão.         ', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  try
    qrySelePedi.DisableControls;

    linha := Pos('AND (PV.ID_CARGEXPE =',ls_PediCargSQL);

    IF linha > 0 then
       ls_PediCargSQL := copy(ls_PediCargSQL,0,linha-1);

    ls_PediCargSQL := ls_PediCargSQL +
                      ' AND (PV.ID_CARGEXPE = ' + qryForm.FieldByName('ID_CARGEXPE').AsString + ')'+
                      ' ORDER BY PV.NR_ORDEPEDIVEND';

    // Abrimos a query de pedidos da carga
    qryPediCarg.Close;
    qryPediCarg.SQL.Text := ls_PediCargSQL;
    qryPediCarg.Open;

    // Pegamos o proximo valor de ordenacao dos pedidos na carga
    qryPediCarg.Last;
    li_OrdePediVend := qryPediCarg.FieldByName('NR_ORDEPEDIVEND').AsInteger;

    // Pegamos a posição atual
    bkmPosiAtua := qrySelePedi.GetBookmark;

    // Varremos todos os registros selecionados
    For li_Loop := 0 to grdSelePedi.SelectedRows.Count - 1 do
    begin

      // Posicionamos no registro a ser copiado
      qrySelePedi.GotoBookmark(grdSelePedi.SelectedRows.Items[li_Loop]);

      try
        // Verificamos se o pedido possui ítens
        qryTemp.Close;
        qryTemp.Sql.Clear;
        qryTemp.SQL.Text := ' SELECT PEDIDO_VENDA_ITEM.ID_PEDIVEND                     '+
                            '   FROM PEDIDO_VENDA_ITEM                                 '+
                            '  WHERE (PEDIDO_VENDA_ITEM.ID_PEDIVEND = ' + qrySelePedi.FieldByName('ID_PEDIVEND').AsString + ')';
        qryTemp.Open;

        // Se existirem pedidos sem itens
        if qryTemp.IsEmpty then
        begin
          Screen.Cursor := crDefault;
          Application.MessageBox(PChar('O Pedido de Venda ' + qrySelePedi.FieldByName('ID_PEDIVEND').AsString + ', não pode ser incluído na carga pois não possui itens.'), PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);

          // Guardamos o número do pedido
          if ls_PediInva = '' then
          begin
            ls_PediInva := qrySelePedi.FieldByName('ID_PEDIVEND').AsString;
          end
          else
          begin
            ls_PediInva := ls_PediInva + ', ' + qrySelePedi.FieldByName('ID_PEDIVEND').AsString;
          end;
        end;
      finally
        qryTemp.Close;
      end;

      try
        QryTemp.Close;
        qryTemp.SQL.Clear;
        qryTemp.SQL.Text := 'SELECT Pedido_venda.ID_CARGEXPE                                                                                          '+
                            '  FROM PEDIDO_VENDA Pedido_venda                                                                                         '+
                            ' WHERE (Pedido_venda.ID_PEDIVEND =  ' + qrySelePedi.FieldByName('ID_PEDIVEND').AsString + ')                             '+
                            '   AND (Pedido_venda.ID_CARGEXPE <> ' + qryForm.FieldByName('ID_CARGEXPE').AsString + '    )                             '+
                            '   AND ((Pedido_venda.DT_ENTRPEDIVEND BETWEEN To_date(''' + DateToStr(StrTodate(edtDataCarg.text)) + ''', ''DD/MM/YYYY'') '+
                            '        AND To_date(''' + (edtDataLimiPedi.text) + ''', ''DD/MM/YYYY'')))                                       ';
        qryTemp.Open;

        // Verificamos se o pedido selecionado está em outra carga
        if not qryTemp.IsEmpty then
        begin
          Screen.Cursor := crDefault;
          Application.MessageBox(PChar('O Pedido de Venda Nº ' + qrySelePedi.FieldByName('ID_PEDIVEND').AsString + ', não está disponível. ' + #13#10 +
                     'Este Pedido já foi incluído na Carga Nº' + qryTemp.FieldByName('ID_CARGEXPE').AsString + '.'), PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
          Screen.Cursor := crSQLWait;
          Exit;
        end;
      finally
        qryTemp.Close;
      end;

      // Verificamos se o pedido selecionado está com Status 'AB'
      If qrySelePedi.FieldByName('FL_STATPEDIVEND').AsString <> 'AB' then
      begin
        Screen.Cursor := crDefault;
        Application.MessageBox(PChar('O Pedido de Venda Nº ' + qrySelePedi.FieldByName('ID_PEDIVEND').AsString + ', não está disponível.'), PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
        Screen.Cursor := crSQLWait;
        Continue;
      end;

      // Verificamos se o pedido selecionado está com a data de entrega correta.
      If qrySelePedi.FieldByName('DT_ENTRPEDIVEND').AsString <> edtDataCarg.Text  then
      begin
        Screen.Cursor := crDefault;
        Application.MessageBox(PChar('Data de Entrega d Pedido de Venda Nº ' + qrySelePedi.FieldByName('ID_PEDIVEND').AsString + ', está incorreta.'), PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
        Screen.Cursor := crSQLWait;
        Continue;
      end;

      //Verificamos o total de itens é igual ao total do pedido.
       QryTemp.Close;
       QryTemp.SQL.Clear;
       QryTemp.SQL.Text := ' SELECT SUM( QN_EMBAITEMPEDIVEND ) QN_TOTAEMBA, '+
                           '        SUM( QN_TARAITEMPEDIVEND ) QN_TOTATARA, '+
                           '        SUM( QN_PESOITEMPEDIVEND ) QN_TOTAPESO, '+
                           '        SUM( QN_PESOITEMPEDIVEND *              '+
                           '             VL_UNITITEMPEDIVEND ) VL_TOTAPEDI  '+
                           '   FROM PEDIDO_VENDA_ITEM                       '+
                           '  WHERE ID_PEDIVEND =  ' + qrySelePedi.FieldByName('ID_PEDIVEND').AsString ;
       QryTemp.Open;

      if (gi_filial<>4) then
      begin
        // Verificamos se o pedido selecionado está em outra carga
        if not qryTemp.IsEmpty then
        begin
          If (qrySelePedi.FieldByName('QN_EMBAPEDIVEND').AsString) <> (QryTemp.FieldByName('QN_TOTAEMBA').AsString) then
          begin
            //Gravar um log antes da correção
            OSQ1.SQL.Clear;
            OSQ1.SQL.Text := '  insert into ca_log_pedido_venda  '+
                            ' (select * from pedido_venda       '+
                            '  where id_pedivend  =  '+ qrySelePedi.FieldByName('ID_PEDIVEND').AsString + ') ';
            OSQ1.Execute;
            //corrigir os totais do pedido de acordo com a soma dos ítens
            qrySelePedi.Edit;
            qrySelePedi.FieldByName('QN_EMBAPEDIVEND').AsInteger := QryTemp.FieldByName('QN_TOTAEMBA').AsInteger;
            qrySelePedi.FieldByName('QN_TARAPEDIVEND').AsFloat := QryTemp.FieldByName('QN_TOTATARA').AsFloat;
            qrySelePedi.FieldByName('QN_PESOPEDIVEND').AsFloat := QryTemp.FieldByName('QN_TOTAPESO').AsFloat;
            qrySelePedi.FieldByName('VL_PEDIVEND').AsFloat := QryTemp.FieldByName('VL_TOTAPEDI').AsFloat;
            qrySelePedi.Post;
            qrySelePedi.CommitUpdates;
            qrySelePedi.ApplyUpdates;
          end;
        end;
      end;

      li_OrdePediVend := li_OrdePediVend + 1;

      LbQtdPedidos.Caption := IntToStr(li_OrdePediVend);
       // Verificamos se o pedido possui ítens
      qryTemp.Close;
      qryTemp.Sql.Clear;
      qryTemp.SQL.Text := ' SELECT PEDIDO_VENDA_ITEM.ID_PEDIVEND                     '+
                          '   FROM PEDIDO_VENDA_ITEM                                 '+
                          '  WHERE PEDIDO_VENDA_ITEM.ID_PEDIVEND = ' + qrySelePedi.FieldByName('ID_PEDIVEND').AsString ;
      qryTemp.Open;

      // Se existirem pedidos sem itens
      if qryTemp.IsEmpty then
      begin
        Screen.Cursor := crDefault;
        Application.MessageBox(PChar('O Pedido de Venda ' + qrySelePedi.FieldByName('ID_PEDIVEND').AsString + ', não pode ser incluído na carga pois não possui itens.'), PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
        exit;
      end
      else
      begin
        // Incluímos o pedido na carga
        qrySelePedi.Edit;
        qrySelePedi['ID_CARGEXPE'] := qryForm.FieldByName('ID_CARGEXPE').AsInteger;
        qrySelePedi['NR_ORDEPEDIVEND'] := li_OrdePediVend;
        qrySelePedi['FL_STATPEDIVEND'] := 'EC';
        qrySelePedi.Post;

        with QryTemp do
        begin
          Close;
          SQL.Clear;
          SQL.Text := ' select id_pedivend from ca_pedido_carga  '+
                      '  where id_pedivend = :id_pedivend ';
          ParamByName('id_pedivend').AsFloat := qrySelePedi['ID_PEDIVEND'];
          Open;
          if not IsEmpty then
          begin
            OSQ1.SQL.Clear;
            OSQ1.SQL.Text :=
             ' delete ca_pedido_carga  '+
             '  where id_pedivend = :id_pedivend ';
            OSQ1.ParamByName('id_pedivend').AsFloat := qrySelePedi['ID_PEDIVEND'];
            OSQ1.Execute;
          end;
          Close;
        end;

       //Incluimos na tabela de controle de pedido - carga
        OSQ1.SQL.Clear;
        OSQ1.SQL.Text :=
           ' Insert into ca_pedido_carga         '+
           '  ( empresa,      '+
           '    filial,       '+
           '    id_pedivend,  '+
           '    id_cargexpe,  '+
           '    dt_carga,     '+
           '    id_usucarga)  '+
           ' Values           '+
           '  (''CA'',        '+
           '    :filial,      '+
           '    :id_pedivend, '+
           '    :id_cargexpe, '+
           '    SYSDATE,      '+
           '    :id_usucarga) ';
        OSQ1.ParamByName('FILIAL').AsInteger := gi_Filial;
        OSQ1.ParamByName('id_pedivend').AsFloat := qrySelePedi['ID_PEDIVEND'];
        OSQ1.ParamByName('id_cargexpe').AsFloat :=  qrySelePedi['ID_CARGEXPE'];
        OSQ1.ParamByName('id_usucarga').AsInteger := gi_IdenUsua;
        OSQ1.Execute;

        lr_TotaPeso := qrySelePedi.FieldByName('QN_PESOBRUTPEDIVEND').AsFloat;
        li_TotaCaix := qrySelePedi.FieldByName('QN_EMBAPEDIVEND').AsInteger;
        li_DifiEntrClie := qrySelePedi.FieldByName('QN_DIFIENTRCLIE').AsInteger;
        AjustCapacCamin(lr_TotaPeso, li_TotaCaix);
        qrySelePedi.ApplyUpdates;
        qrySelePedi.CommitUpdates;
      end;

      qryTempSubrLogi.Close;
    end;

    // Se houver algum documento que não pôde ser retirado da carga por já possuir documentos
    if ls_PediInva <> '' then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox(PChar('O(s) pedido(s) ' + ls_PediInva + #13#10 + ' , não pode(m) ser incluído(s) na carga, pois não possui(em) itens.'), PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crSQLWait;
    end;

  finally
    qrySelePedi.EnableControls;
    bkmPosiAtua := qrySelePedi.GetBookmark;
    qrySelePedi.Refresh;
    qryPediCarg.Refresh;
    btnExclPed.Enabled:= True;
    Screen.Cursor := crDefault;
    try
      qrySelePedi.GotoBookmark(bkmPosiAtua);
    except
      qrySelePedi.Last;
    end;
  end;

  SBDiversos.Enabled := True;
  mniValidar.Enabled:= True;
  btnSobe.enabled   := True;
  BtnDesce.Enabled  := True;
  mniAjusPediCarg.Enabled:= False;
  BTItensCarga.Enabled:= true;
  BtItensPedi.Enabled:= true;
  Screen.Cursor := crDefault;

end;

procedure TFrmMontaCarga.FormDestroy(Sender: TObject);
Begin
  FrmMontaCarga:=Nil;
End;

procedure TFrmMontaCarga.AjustCapacCamin(pr_EmpePeso: Real = 0; pi_EmpeCaix: Integer = 0);
begin
  // Se os parâmetros de empenho de peso e caixa for zero
  if (pr_EmpePeso = 0) and (pi_EmpeCaix = 0) then
  begin
    // Calculamos a capacidade empenhada para o caminhão em peso e caixas
    QryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Text :=
    'SELECT SUM(QN_EMBAPEDIVEND) QN_SOMACAIX,                                     '+
    '       SUM(QN_PESOPEDIVEND + QN_TARAPEDIVEND) QN_SOMAPESO                    '+
    '  FROM PEDIDO_VENDA                                                          '+
    ' WHERE ( PEDIDO_VENDA.ID_CARGEXPE = ' + qryForm.FieldByName('ID_CARGEXPE').AsString + ')';

    qryTemp.Open;
    ur_CapaCamiEmpePeso := qryTemp.FieldByName('QN_SOMAPESO').AsFloat;
    ui_CapaCamiEmpeCaix := qryTemp.FieldByName('QN_SOMACAIX').AsInteger;
    qryTemp.Close;
  end
  else
  begin
    ur_CapaCamiEmpePeso := ur_CapaCamiEmpePeso + pr_EmpePeso;
    ui_CapaCamiEmpeCaix := ui_CapaCamiEmpeCaix + pi_EmpeCaix;
  end;

  lblCapaTotaQuil.Caption := FloatToStrF(VQNCAPA, ffNumber, 8, 2);
  lblCapaEmpeQuil.Caption := FloatToStrF(ur_CapaCamiEmpePeso, ffNumber, 8, 2);
  lblCapaDispQuil.Caption := FloatToStrF(VQNCAPA - ur_CapaCamiEmpePeso, ffNumber, 8, 2);
  lblCapaTotaCaix.Caption := FloatToStr(VQNCAPA/ur_PesoCaixPadr);
  lblCapaEmpeCaix.Caption := FloatToStrF(ui_CapaCamiEmpeCaix, ffNumber, 8, 0);
  lblCapaDispCaix.Caption := FloatToStrF(Trunc(VQNCAPA/ur_PesoCaixPadr) - ui_CapaCamiEmpeCaix, ffNumber, 8, 0);
end;


procedure TFrmMontaCarga.AjustCapacEntr(pi_EmpePont: real=0);
begin
  if  pi_EmpePont=0 then
  begin
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Text :=   'SELECT SUM(NVL(QN_DIFIENTRCLIE,0)) QN_SOMADIFI            '+
    '  FROM CLIENTE,                                                                '+
    '       PEDIDO_VENDA                                                            '+
    ' WHERE ( CLIENTE.ID_CLIENTE = PEDIDO_VENDA.ID_CLIENTE )                        '+
    '   AND ( PEDIDO_VENDA.ID_CARGEXPE = ' + IntToStr(qryForm['ID_CARGEXPE']) + ')  ';

    qryTemp.Open;
    ui_CapaEntrEmpe := qryTemp.FieldByName('QN_SOMADIFI').AsInteger;
    qryTemp.Close;
  end
  else
    ui_CapaEntrEmpe := ui_CapaEntrEmpe + pi_EmpePont;

end;

procedure TFrmMontaCarga.LimpaPaineCapac;
begin
  lblCapaTotaQuil.Caption := '';
  lblCapaEmpeQuil.Caption := '';
  lblCapaDispQuil.Caption := '';
  lblCapaTotaCaix.Caption := '';
  lblCapaEmpeCaix.Caption := '';
  lblCapaDispCaix.Caption := '';
end;


procedure TFrmMontaCarga.BPesqDtEntreClick(Sender: TObject);
begin
  try
    FrmPesqCaminhao:=TFrmPesqCaminhao.Create(Self);
    FrmPesqCaminhao.VORIGEM:=1;
    FrmPesqCaminhao.Show;
  except;
    FrmPesqCaminhao.Free;
  end;
end;

procedure TFrmMontaCarga.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);

  us_SelePediSqlPadr := 'SELECT Pedido_venda.EMPRESA, Pedido_venda.FILIAL, Pedido_venda.ID_PEDIVEND, '+
                        'Pedido_venda.DT_ENTRPEDIVEND, Pedido_venda.ID_CARGEXPE,                                                                                                                    '+
  '       Pedido_venda.QN_PESOPEDIVEND,                                                                                                                '+
  '       (Pedido_venda.QN_PESOPEDIVEND + Pedido_venda.QN_TARAPEDIVEND) QN_PESOBRUTPEDIVEND,                                                           '+
  '       Pedido_venda.QN_EMBAPEDIVEND,                                                                                                                '+
  '       Pedido_venda.QN_TARAPEDIVEND,                                                                                                                '+
  '       Pedido_venda.VL_PEDIVEND,                                                                                                                    '+
  '       Pedido_venda.QN_FATOFRETABAT_PEDIVEND,                                                                                                       '+
  '       Pedido_venda.ID_CLIENTE,                                                                                                                     '+
  '       Cliente.NM_FANTCLIE,                                                                                                                         '+
  '       Cliente.NM_REDUCLIE, Cliente.NM_CLIENTE,                                                                                                                           '+
  '       Cliente.QN_DIFIENTRCLIE,                                                                                                                     '+
  '       Cliente_endereco.ID_REGILOGI,                                                                                                                         '+
  '       Cliente_endereco.ID_SUBRLOGI,                                                                                                                         '+
  '       Logistica_regiao.NM_REGILOGI,                                                                                                                '+
  '       Logistica_subregiao.NM_SUBRLOGI,                                                                                                             '+
  '       DECODE(Logistica_regiao.GN_RISCREGILOGI, 3, ''Alto'', DECODE(Logistica_regiao.GN_RISCREGILOGI, 2, ''Médio'', ''Baixo'')) AS GN_RISCREGILOGI, '+
  '       Logistica_regiao_subregiao.FL_RELAREGISUBRLOGI,                                                                                              '+
  '       Pedido_venda.NR_ORDEPEDIVEND,                                                                                                                '+
  '       Pedido_venda.GN_OBSEPEDIVEND,                                                                                                                '+
  '       Pedido_venda.FL_STATPEDIVEND,                                                                                                                '+
  '       Pedido_venda.ID_VENDEDOR,                                                                                                                    '+
  '       Vendedor.NM_VENDEDOR,                                                                                                                        '+
  '       Bairro.NM_BAIRRO,                                                                                                                            '+
  '       Cliente_endereco.NR_CEPENDECLIE,                                                                                                             '+
  '       Cidade.NM_CIDADE,                                                                                                                            '+
  '       Estado.SG_ESTADO,                                                                                                                            '+
  '       PEDIDO_VENDA.GN_PLACVEICTRAN,                                                                                                                '+
  '       Cliente.NR_CAIXPOSTENDECLIE                                                                                                                  '+
  '  FROM PEDIDO_VENDA Pedido_venda,                                                                                                                   '+
  '       CLIENTE Cliente,                                                                                                                             '+
  '       CLIENTE_ENDERECO Cliente_endereco,                                                                                                           '+
  '       LOGISTICA_REGIAO Logistica_regiao,                                                                                                           '+
  '       LOGISTICA_SUBREGIAO Logistica_subregiao,                                                                                                     '+
  '       LOGISTICA_REGIAO_SUBREGIAO Logistica_regiao_subregiao,                                                                                       '+
  '       BAIRRO Bairro,                                                                                                                               '+
  '       CIDADE Cidade,                                                                                                                               '+
  '       ESTADO Estado,                                                                                                                               '+
  '       VENDEDOR Vendedor                                                                                                                            '+
  ' WHERE (Pedido_venda.ID_CLIENTE = Cliente.ID_CLIENTE)                                                                                               '+
  '   AND (Pedido_venda.ID_VENDEDOR = Vendedor.ID_VENDEDOR)                                                                                            '+
  '   AND (Pedido_venda.ID_ENDECLIE_ENTREGA = Cliente_endereco.ID_ENDECLIE)                                                                            '+
  '   AND (Cliente_endereco.ID_BAIRRO = Bairro.ID_BAIRRO)                                                                                              '+
  '   AND (Cliente_endereco.ID_REGILOGI = Logistica_regiao.ID_REGILOGI)                                                                                '+
  '   AND (Cliente_endereco.ID_SUBRLOGI = Logistica_subregiao.ID_SUBRLOGI)                                                                             '+
  '   AND (Cliente_endereco.ID_REGISUBRLOGI = Logistica_regiao_subregiao.ID_REGISUBRLOGI)                                                              '+
  '   AND (Bairro.ID_CIDADE = Cidade.ID_CIDADE)                                                                                                        '+
  '   AND (Cidade.ID_ESTADO = Estado.ID_ESTADO)                                                                                                        '+
  '   AND (Pedido_venda.ID_CARGEXPE IS NULL)                                                                                                           '+
  '   AND (NOT Pedido_venda.FL_STATPEDIVEND IN (''FE'', ''IS'', ''CN''))                                                                               '+
  '   AND (Pedido_venda.FILIAL = ' + inttoStr( gi_filial ) +')                                                                                         '+
  '   AND (Pedido_venda.FL_CORTE IS NOT NULL)                                                                                                          ';


  us_SelePediSQLRegi :=
  'SELECT Pedido_venda.EMPRESA,                                                                                                                        '+
  '       Pedido_venda.FILIAL,                                                                                                                         '+
  '       Pedido_venda.ID_PEDIVEND,                                                                                                                    '+
  '       Pedido_venda.DT_ENTRPEDIVEND,                                                                                                                '+
  '       Pedido_venda.ID_CARGEXPE,                                                                                                                    '+
  '       Pedido_venda.QN_PESOPEDIVEND,                                                                                                                '+
  '       (Pedido_venda.QN_PESOPEDIVEND + Pedido_venda.QN_TARAPEDIVEND) QN_PESOBRUTPEDIVEND,                                                           '+
  '       Pedido_venda.QN_EMBAPEDIVEND,    Pedido_venda.QN_TARAPEDIVEND,  Pedido_venda.VL_PEDIVEND,                                                    '+
  '       Pedido_venda.QN_FATOFRETABAT_PEDIVEND,                                                                                                       '+
  '       Pedido_venda.ID_CLIENTE,                                                                                                                     '+
  '       Cliente.NM_FANTCLIE,                                                                                                                         '+
  '       Cliente.NM_REDUCLIE, Cliente.NM_CLIENTE,                                                                                                         '+
  '       Cliente.QN_DIFIENTRCLIE,                                                                                                                     '+
  '       Cliente_endereco.ID_REGILOGI,                                                                                                                         '+
  '       Cliente_endereco.ID_SUBRLOGI,                                                                                                                         '+
  '       Logistica_regiao.NM_REGILOGI,                                                                                                                '+
  '       Logistica_subregiao.NM_SUBRLOGI,                                                                                                             '+
  '       DECODE(Logistica_regiao.GN_RISCREGILOGI, 3, ''Alto'', DECODE(Logistica_regiao.GN_RISCREGILOGI, 2, ''Médio'', ''Baixo'')) AS GN_RISCREGILOGI, '+
  '       Logistica_regiao_subregiao.FL_RELAREGISUBRLOGI,                                                                                              '+
  '       Pedido_venda.NR_ORDEPEDIVEND,                                                                                                                '+
  '       Pedido_venda.GN_OBSEPEDIVEND,                                                                                                                '+
  '       Pedido_venda.FL_STATPEDIVEND,                                                                                                                '+
  '       Pedido_venda.ID_VENDEDOR,                                                                                                                    '+
  '       Vendedor.NM_VENDEDOR,                                                                                                                        '+
  '       Bairro.NM_BAIRRO,                                                                                                                            '+
  '       Cliente_endereco.NR_CEPENDECLIE,                                                                                                             '+
  '       Cidade.NM_CIDADE,                                                                                                                            '+
  '       Estado.SG_ESTADO,                                                                                                                            '+
  '       PEDIDO_VENDA.GN_PLACVEICTRAN,                                                                                                                '+
  '       Cliente.NR_CAIXPOSTENDECLIE                                                                                                                  '+
  '  FROM PEDIDO_VENDA Pedido_venda,                                                                                                                   '+
  '       CLIENTE Cliente,                                                                                                                             '+
  '       CLIENTE_ENDERECO Cliente_endereco,                                                                                                           '+
  '       LOGISTICA_REGIAO Logistica_regiao,                                                                                                           '+
  '       LOGISTICA_SUBREGIAO Logistica_subregiao,                                                                                                     '+
  '       LOGISTICA_REGIAO_SUBREGIAO Logistica_regiao_subregiao,                                                                                       '+
  '       BAIRRO Bairro,                                                                                                                               '+
  '       CIDADE Cidade,                                                                                                                               '+
  '       ESTADO Estado,                                                                                                                               '+
  '       VENDEDOR Vendedor                                                                                                                            '+
  ' WHERE (Pedido_venda.ID_CLIENTE = Cliente.ID_CLIENTE)                                                                                               '+
  '   AND (Pedido_venda.ID_VENDEDOR = Vendedor.ID_VENDEDOR)                                                                                            '+
  '   AND (Pedido_venda.ID_ENDECLIE_ENTREGA = Cliente_endereco.ID_ENDECLIE)                                                                            '+
  '   AND (Cliente_endereco.ID_BAIRRO = Bairro.ID_BAIRRO)                                                                                              '+
  '   AND (Bairro.ID_CIDADE = Cidade.ID_CIDADE)                                                                                                        '+
  '   AND (Cidade.ID_ESTADO = Estado.ID_ESTADO)                                                                                                        '+
  '   AND (Cliente_endereco.ID_REGILOGI = Logistica_regiao.ID_REGILOGI)                                                                                '+
  '   AND (Cliente_endereco.ID_SUBRLOGI = Logistica_subregiao.ID_SUBRLOGI)                                                                             '+
  '   AND (Cliente_endereco.ID_REGISUBRLOGI = Logistica_regiao_subregiao.ID_REGISUBRLOGI)                                                              '+
  '   AND (Pedido_venda.ID_CARGEXPE IS NULL)                                                                                                           '+
  '   AND (NOT Pedido_venda.FL_STATPEDIVEND IN (''FE'', ''IS'', ''CN''))                                                                               '+
  '   AND (Pedido_venda.FILIAL = ' + inttoStr( gi_filial ) +')                                                                                         '+
  '   AND (Pedido_venda.FL_CORTE IS NOT NULL)                                                                                                          ';

  // Iniciamos o SQL pelo padrão
  us_SelePediSQL := us_SelePediSqlPadr;

  // Pegamos o SQL da qryPediCarg
  us_PediCargSQL :=
  'SELECT PV.EMPRESA,                                                '+
  '       PV.FILIAL,                                                 '+
  '       PV.ID_PEDIVEND,                                            '+
  '       PV.DT_ENTRPEDIVEND,                                        '+
  '       PV.ID_CARGEXPE,                                            '+
  '       PV.QN_PESOPEDIVEND,                                        '+
  '       (PV.QN_PESOPEDIVEND + PV.QN_TARAPEDIVEND) QN_PESOBRUTPEDIVEND, '+
  '       PV.QN_EMBAPEDIVEND,                                                      '+
  '       PV.QN_FATOFRETABAT_PEDIVEND,                                             '+
  '       PV.ID_CLIENTE,                                                           '+
  '       PV.DT_FATUPEDIVEND,                                                      '+
  '       Cliente.NM_FANTCLIE,                                                               '+
  '       Cliente.NM_REDUCLIE, Cliente.NM_CLIENTE,                                                     '+
  '       Cliente.QN_DIFIENTRCLIE,                                                           '+
  '       Cliente_endereco.ID_REGILOGI,                                                       '+
  '       Cliente_endereco.ID_SUBRLOGI,                                                       '+
  '      Logistica_subregiao.NM_SUBRLOGI,                                                     '+
  '       PV.NR_ORDEPEDIVEND,                                                       '+
  '       PV.GN_OBSEPEDIVEND,                                                       '+
  '       PV.FL_STATPEDIVEND,                                                       '+
  '       PV.ID_VENDEDOR,                                                           '+
  '      Vendedor.NM_VENDEDOR,                                                                '+
  '       Bairro.NM_BAIRRO,                                                                   '+
  '       Cliente_endereco.NR_CEPENDECLIE,                                                    '+
  '       Cidade.NM_CIDADE,                                                                   '+
  '       Estado.SG_ESTADO,                                                                   '+
  '       PV.GN_PLACVEICTRAN,                                                       '+
  '       CLIENTE.NR_CAIXPOSTENDECLIE                                                         '+
  '  FROM PEDIDO_VENDA PV,                                                          '+
  '       CLIENTE Cliente,                                                                    '+
  '       CLIENTE_ENDERECO Cliente_endereco,                                                  '+
  '       LOGISTICA_SUBREGIAO Logistica_subregiao,                                            '+
  '       BAIRRO Bairro,                                                                      '+
  '       CIDADE Cidade,                                                                      '+
  '       ESTADO Estado,                                                                      '+
  '       VENDEDOR Vendedor                                                                   '+
  ' WHERE (PV.ID_CLIENTE = Cliente.ID_CLIENTE)                                      '+
  '   AND (PV.ID_VENDEDOR = Vendedor.ID_VENDEDOR)                                   '+
  '   AND (PV.ID_ENDECLIE_ENTREGA = Cliente_endereco.ID_ENDECLIE)                   '+
  '   AND (Cliente_endereco.ID_BAIRRO = Bairro.ID_BAIRRO)                                     '+
  '   AND (Cliente_endereco.ID_SUBRLOGI = Logistica_subregiao.ID_SUBRLOGI)                    '+
  '   AND (Bairro.ID_CIDADE = Cidade.ID_CIDADE)                                               '+
  '   AND (PV.FILIAL = ' + inttoStr( gi_filial ) +')                                '+
  '   AND (Cidade.ID_ESTADO = Estado.ID_ESTADO) ';

  ls_PediCargSQL := us_PediCargSQL;

  // Pegamos o peso da caixa padrão
  QryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text :=
  'SELECT Sistema_parametro.QN_DIFIENTRCLIE,      '+
  '       Sistema_parametro.QN_PESOCAIXPADR       '+
  '  FROM SISTEMA_PARAMETRO Sistema_parametro     ';
  qryTemp.Open;

  ui_CapaEntrTota := qryTemp.FieldByName('QN_DIFIENTRCLIE').AsInteger;
  ur_PesoCaixPadr := qryTemp.FieldByName('QN_PESOCAIXPADR').AsFloat;

  qryTemp.Close;

  // Limpamos o painel de totais
  LimpaPaineCapac;
end;

procedure TFrmMontaCarga.SBNovoClick(Sender: TObject);
begin
  PageControl1.ActivePage := TsDetalhe;
  VAjuste:= False;
  qryPediCarg.Close;
  QryForm.Insert;

  qryForm['EMPRESA'] := gs_Empresa;
  qryForm['FILIAL']  := gi_Filial;
  qryForm['FX_CARGEXPE'] := 'N';
  ls_QuerStat:= 'I';
  qryForm['FL_IMPRCARGEXPE'] := 'N';
  qryForm['ID_USUASIST_MONTAGEM'] := gi_CodiUsuaSist;
  qryForm['NR_ORDEENTRCARGEXPE'] := 0;
  qryForm['ID_CLASCARGEXPE'] := 1;
  ur_CapaCamiEmpePeso := 0;
  ui_CapaCamiEmpeCaix := 0;
  qryForm['DT_CARGEXPE'] := DATE();
  qryForm['DT_LIMIPEDICARGEXPE'] := DATE()+1;
  LimpaPaineCapac;
  LigaCampos;
  LigaArea1;
  BPesqDt.SetFocus;
  VqryFoco := 'qryForm';

  SB_PRIMEIRO.Enabled:= False;
  SB_ANTERIOR.Enabled:= False;
  SB_PROXIMO.Enabled := False;
  SB_ULTIMO.Enabled  := False;
  SBNovo.Enabled := False;
  SBDel.Enabled := False;
  SBSalva.Enabled := False;
  SBCancel.Enabled := True;
  Sb_Sair.Enabled:= False;
  SBDiversos.Enabled := False;
  btnInclPedi.Enabled := False;
  btnExclPed.Enabled := False;
  PageControl1.Pages[0].TabVisible:= False;
  PageControl1.Pages[1].TabVisible:= False;
  PageControl1.Pages[2].TabVisible:= True;
  ApagaCriterios;
  BtProcurar.Enabled := False;
  BtObsCaga.Enabled := False;
  LbQtdPedidos.Caption := '0';
  GroupInfoCam.Enabled := True;
  DBhoraSaida.Enabled := True;
  DBValePedaGIO.Enabled := True;
  DBVALORPEDAGIO.Enabled := True;
end;

procedure TFrmMontaCarga.LigaCampos;
var
  Temp: TComponent;
  li_Loop:Integer;
begin
  For li_Loop :=0 to ComponentCount - 1  do
  begin
    Temp := Components[li_Loop];
    If  (Temp is TEDIT) then
    begin
       TEdit((temp)).Enabled := True;
    end;
    If  (Temp is TDBEDIT) then
    begin
       TDBEdit((temp)).Enabled := True;
    end;
    If  (Temp is TDBCOMBOBOX) then
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

procedure TFrmMontaCarga.DesligaCampos;
var
  Temp: TComponent;
  li_Loop,xc:Integer;
begin

  For li_Loop :=0 to ComponentCount - 1  do
  begin
    Temp := Components[li_Loop];
    If  (Temp is TDBEDIT) then
    begin
       TDBEdit((temp)).Enabled := False;
    end;
    if  (Temp is TDBCOMBOBOX) then
    begin
      TScrollBox(temp).Enabled := False;
    end;
    if  (Temp is TDBlookupCOMBOBOX) then
    begin
      TScrollBox(temp).Enabled := False;
    end;
    if  (Temp is Tbitbtn) then
    begin
      TScrollBox(temp).Enabled := False;
    end;
     if  (Temp is TDBMemo) then
    begin
      TScrollBox(temp).Enabled := False;
    end;
  end;

  For xc := 0 to GroupBox1.ControlCount - 1 do
  begin
    If GroupBox1.Controls[xc] is TEdit then
      TEdit(GroupBox1.Controls[xc]).ReadOnly := False
    Else
      GroupBox1.Controls[xc].Enabled := True;
  end;
end;

procedure TFrmMontaCarga.ApagaCriterios;
  begin
    EdCod_Vend.Text := '';
    EdNome_Vend.Text := '';
    edtCodiRegi.Text := '';
    edtNomeRegi.Text := '';
    edtCodiCida.Text := '';
    edtNomeCida.Text := '';
    edtCEPInic.Text := '';
    edtCEPFina.Text := '';
    rgpCriterios.ItemIndex := -1;
  end;

procedure TFrmMontaCarga.DesligaArea1;
var xc:integer;
begin
  For xc := 0 to Area1.ControlCount - 1 do
  begin

    If Area1.Controls[xc] is TDBEdit then
      TDBEdit(Area1.Controls[xc]).Enabled := False
    Else if Area1.Controls[xc] is TLabel then
      Area1.Controls[xc].Enabled := True
    Else
      Area1.Controls[xc].Enabled := False;
  end;
end;

procedure TFrmMontaCarga.LigaArea1;
var xc:integer;
begin
  For xc := 0 to Area1.ControlCount - 1 do
  begin
    If Area1.Controls[xc] is TDBEdit then
      TDBEdit(Area1.Controls[xc]).Enabled := True
    Else if Area1.Controls[xc] is TLabel then
      Area1.Controls[xc].Enabled := True
    Else
      Area1.Controls[xc].Enabled := True;
  end;
end;

procedure TFrmMontaCarga.EdCod_VendChange(Sender: TObject);
begin
  rgpCriterios.ItemIndex := 0;
end;

procedure TFrmMontaCarga.edtCodiRegiChange(Sender: TObject);
begin
  rgpCriterios.ItemIndex := 1;
end;

procedure TFrmMontaCarga.edtCodiCidaChange(Sender: TObject);
begin
  rgpCriterios.ItemIndex := 2;
end;

procedure TFrmMontaCarga.edtCEPInicChange(Sender: TObject);
begin
  rgpCriterios.ItemIndex := 3;
end;

procedure TFrmMontaCarga.PM1Popup(Sender: TObject);
begin
  if  TsDetalhe.Showing then
  begin
    // Ajustamos os itens do menu do botão Diversos, conforme o Status
    if VerifStatuCarga(qryForm.FieldByName('ID_CARGEXPE').AsInteger) = 'MT' then
    begin
      if us_Bloq = 'S' then
      begin
        mniValidar.Enabled := True;
        btnSobe.enabled   := True;
        BtnDesce.Enabled  := True;
        mniAjusPediCarg.Enabled := False;
      end
      else
      begin
        mniValidar.Enabled := False;
        btnSobe.enabled    := false;
        BtnDesce.Enabled   := false;
        mniAjusPediCarg.Enabled := True;
      end;
    end
    else
    begin
      mniValidar.Enabled := False;
      btnSobe.enabled   := false;
      BtnDesce.Enabled  := false;
      mniAjusPediCarg.Enabled := True;
    end;
  end
  else
  begin
    mniValidar.Enabled := False;
    btnSobe.enabled   := false;
    BtnDesce.Enabled  := false;
    mniAjusPediCarg.Enabled := False;
  end;
end;

// Verificamos o status atual da Carga selecionada
function TFrmMontaCarga.VerifStatuCarga(pi_NumeCarg: Integer): String;
begin
  try
    If QryForm.Fieldbyname('ID_CARGEXPE').AsString = IntToStr(pi_NumeCarg) then
      begin
        Result := QryForm.Fieldbyname('FL_STATCARGEXPE').AsString;
      end
    Else
    Begin
      qryTemp.close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Text := 'SELECT FL_STATCARGEXPE                                               '+
                        '  FROM EXPEDICAO_CARGA Expedicao_carga                               '+
                        ' WHERE (Expedicao_carga.ID_CARGEXPE = ' + IntToStr(pi_NumeCarg) + ') ';
      qryTemp.Open;

      Result := qryTemp.FieldByName('FL_STATCARGEXPE').AsString;
    End;
  finally
    qryTemp.Close;
  end;
end;

procedure TFrmMontaCarga.mniValidarClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  // Verificamos se a carga está Bloqueada
  If (VerifStatuCarga(qryForm.FieldByName('ID_CARGEXPE').AsInteger) = 'MT') and (us_Bloq = 'N') then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('                   Carga em processo de Montagem.                    ', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  //Verificar se Carga não está SP
  if (VerifStatuCarga(qryForm.FieldByName('ID_CARGEXPE').AsInteger) = 'AB') then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('                   O Status AB da carga não permite validar.                    ', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  // Verificamos se existe algum pedido relacionado na carga
  If qryPediCarg.IsEmpty then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('Não foram incluídos Pedidos na Carga. Por favor, verifique.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    grdSelePedi.SetFocus;
    Exit;
  end;

  // Verificamos se existe alguma data de entrega diferente da carga
  If not QryTemp.IsEmpty then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('A Data de Entrega dos Pedidos esta incorreta. Por favor, verifique.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  // Alteração feita em 14/04/2009 Verificamos quando tipo de pedido = 7 emissão posterior NF
  qryPediCarg.First;
  while not qryPediCarg.Eof do
  begin
    qryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.text := 'SELECT Pedido_venda.ID_PEDIVEND ,Pedido_venda.ID_TIPOPEDIVEND                         '+
                        ' FROM PEDIDO_VENDA Pedido_venda, documento_tipo,                                      '+
                        ' PEDIDO_VENDA_TIPO, PEDIDO_VENDA_TIPO_DOCU_TIPO                                       '+
                        ' WHERE (Pedido_venda.ID_PEDIVEND = ' + qryPediCarg.FieldByName('ID_PEDIVEND').AsString + ') '+
                        ' AND documento_tipo.id_tipodocu = PEDIDO_VENDA_TIPO_DOCU_TIPO.id_tipodocu             '+
                        ' AND PEDIDO_VENDA.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND                 '+
                        ' AND PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPOPEDIVEND  '+
                        ' AND PEDIDO_VENDA_TIPO_DOCU_TIPO.ID_TIPODOCU = 6                                      '+
                        ' AND PEDIDO_VENDA_TIPO_DOCU_TIPO.FL_IMPRTIPOPEDIVENDTIPODOCU = '''+'S'+'''            '+
                        ' AND Pedido_venda.ID_TIPOPEDIVEND = 7                                         ';
    QryTemp.Open;
    if not QryTemp.IsEmpty then
    begin
      qryTemp_Tipovenda.Close;
      QryTemp_TipoVenda.SQL.Clear;
      QryTemp_TipoVenda.SQL.Text := 'SELECT  VENDA_TIPO.ID_TIPOVEND                '+
                          '  FROM FORNECEDOR, VENDA_TIPO, TRANSPORTADOR_VEICULO    '+
                          ' WHERE                                                  '+
                          ' (FORNECEDOR.ID_TIPOVEND = VENDA_TIPO.ID_TIPOVEND)      '+
                          ' AND VENDA_TIPO.ID_TIPOVEND <> 9                        '+
                          ' AND (Transportador_veiculo.ID_FORNECEDOR_TRANSPORTADOR = Fornecedor.ID_FORNECEDOR) '+
                          ' AND TRANSPORTADOR_VEICULO.FL_ATIVVEICTRAN = ''S''                                  '+
                          ' AND Transportador_veiculo.GN_PLACVEICTRAN =  ''' + trim(QryForm.FieldByName('GN_PLACVEICTRAN').AsString) + '''' ;
      QryTemp_TipoVenda.Open;
      IF (QryTemp_TipoVenda.RecordCount > 0 ) then
      Begin
        Screen.Cursor := crDefault;
        Application.MessageBox('Tipo de Pedido de Venda não permitido para emissão de NF posterior para este Transportador!' + #13#10 +
                               'Verifique Cadastro Fornecedor.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
        QryTemp_TipoVenda.Close;
        Exit;
      End;
    end;

    qryPediCarg.Next;

  end;

  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.text:= ' SELECT id_pedivend  '+
        ' FROM   pedido_venda                '+
        ' WHERE  id_cargexpe = :VCarga          '+
        '  AND   dt_entrpedivend <> :DtEntrCarga  ';
  QryTemp.ParamByName('VCarga').AsFloat := QryFormID_CARGEXPE.AsFloat;
  QryTemp.ParamByName('DtEntrCarga').AsDate := StrToDate(edtDataCarg.Text) ;
  QryTemp.Open;


  try
    //Analisamos se os pedidos obedecem aos limites de venda
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text := ' SELECT  DISTINCT            '+
        '      PEDIDO_VENDA.DT_ENTRPEDIVEND,         '+
        '      PEDIDO_VENDA_ITEM.ID_MATEEMBA,        '+
        '      PEDIDO_VENDA.ID_VENDEDOR,             '+
        '      PEDIDO_VENDA.ID_CARGEXPE              '+
        ' FROM                                       '+
        '  PEDIDO_VENDA_ITEM,                        '+
        '  PEDIDO_VENDA                              '+
        ' WHERE                                      '+
        '  (PEDIDO_VENDA.ID_PEDIVEND = PEDIDO_VENDA_ITEM.ID_PEDIVEND) AND '+
        '   PEDIDO_VENDA.ID_CARGEXPE = ' + QryForm.FieldByName('ID_CARGEXPE').AsString;

    QryTemp.Open;
    QryTemp.First;

    WHILE NOT QryTemp.Eof DO
    BEGIN
      QrLimiteVenda.Close;
      QrLimiteVenda.ParamByName('VENDEDOR').AsFloat:= QryTemp.FieldByName('ID_VENDEDOR').AsFloat;
      QrLimiteVenda.ParamByName('DT_ENTRE').AsDateTime := QryTemp.FieldByName('DT_ENTRPEDIVEND').AsDateTime;
      QrLimiteVenda.ParamByName('MATEEMBA').AsFloat:= QryTemp.FieldByName('ID_MATEEMBA').AsFLOAT;
      QrLimiteVenda.ParamByName('CARGA').AsFloat:= QryTemp.FieldByName('ID_CARGEXPE').AsFLOAT;
      QrLimiteVenda.Open;

      IF (QrLimiteVenda.RecordCount > 0) then
      BEGIN
        If  (QrLimiteVendaPESO_ITEM.Value < (QrLimiteVendaQN_COTA.Value * 0.8)  ) then
        begin
          Screen.Cursor := crDefault;
          Application.MessageBox(PChar('Atenção quantidade programada do produto '+QrLimiteVenda.FieldByName('NM_PRODMATEEMBA').AsString+', do vendedor '+QrLimiteVenda.FieldByName('NM_VENDEDOR').AsString+', está abaixo da cota.'), PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
          Exit;
        end;
      END;
      QryTemp.Next;
    END;
    // Atualizamos o status da carga
    qryForm.Edit;
    qryForm['ID_USUASIST_MONTAGEM'] := gi_CodiUsuaSist;
    qryForm['FL_STATCARGEXPE'] := 'BQ';
    qryForm.Post;
    // Efetivamos as alterações
    qryForm.ApplyUpdates;
    qryForm.CommitUpdates;
    qrySelePedi.Close;

    // Atualizamos variável de controle de bloqueio
    us_Bloq := 'N';
    VAjuste:= False;
  finally

    SB_PRIMEIRO.Enabled:= True;
    SB_ANTERIOR.Enabled:= True;
    SB_PROXIMO.Enabled := True;
    SB_ULTIMO.Enabled  := True;
    SBNovo.Enabled := True;
    SBDel.Enabled := True;
    SBSalva.Enabled :=  False;
    SBCancel.Enabled := False;
    Sb_Sair.Enabled:= True;
    SBDiversos.Enabled := True;
    mniValidar.Enabled:= False;
    btnSobe.enabled   := false;
    BtnDesce.Enabled  := false;
    mniAjusPediCarg.Enabled := True;
    btnInclPedi.Enabled := False;
    btnExclPed.Enabled := False;
    PageControl1.Pages[0].TabVisible:= True;
    PageControl1.Pages[1].TabVisible:= True;
    PageControl1.Pages[2].TabVisible:= True;
    BtProcurar.Enabled := False;
    EdPesq.ReadOnly := True;

    // Limpamos os critérios e Desligamos os campos.
    ApagaCriterios;
    DesligaCampos;

    BtObsCaga.Enabled := False;
    BTItensCarga.Enabled:= true;
    BtItensPedi.Enabled:= true;

    PageControl1.Pages[0].TabVisible:= True;
    PageControl1.Pages[1].TabVisible:= True;
    PageControl1.Pages[2].TabVisible:= True;

    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmMontaCarga.TsDetalheShow(Sender: TObject);
var
  linha:integer;
begin
  // Selecionamos os pedidos da carga
  if not (qryForm.State in [dsInsert, dsEdit]) then
  begin
    if not qryForm.IsEmpty then
    begin
      AtualCapaVeiculo;
      AjustCapacCamin(0,0);

      linha := Pos('AND (PV.ID_CARGEXPE =',ls_PediCargSQL);
      IF linha > 0 then
       ls_PediCargSQL := copy(ls_PediCargSQL,0,linha-1);
       ls_PediCargSQL := ls_PediCargSQL +
                      ' AND (PV.ID_CARGEXPE = ' + qryForm.FieldByName('ID_CARGEXPE').AsString + ')'+
                      ' ORDER BY PV.NR_ORDEPEDIVEND '                                              ;

      qryPediCarg.Close;
      qryPediCarg.SQL.Text := ls_PediCargSQL;
      qryPediCarg.Open;
    end;
  end;

  If not qryPediCarg.IsEmpty then
    LbQtdPedidos.Caption := IntToStr(qryPediCarg.RecordCount);
end;

procedure TFrmMontaCarga.btnExclPedClick(Sender: TObject);
var
  li_Loop: Integer;
  lr_TotaPeso: Real;
  li_TotaCaix: Integer;
  li_DifiEntrClie: Integer;
  lr_TotaFret: Double;
  ls_PediInva: String;
  bkmPosiAtua: TBookmark;
  Seq : Double ;
begin
  Screen.Cursor := crSQLWait;
  If grdSelecionado = Nil then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('É necessário selecionar ao menos um Pedido para Exclusão.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  If grdSelecionado.SelectedRows.Count = 0 then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('É necessário selecionar ao menos um Pedido para Exclusão.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  try
    qryPediCarg.DisableControls;

    // Pegamos a posição atual
    bkmPosiAtua := qryPediCarg.GetBookmark;

    // Varremos todos os registros selecionados
    for li_Loop := 0 to grdSelecionado.SelectedRows.Count - 1 do
    begin

      // Posicionamos no registro a ser copiado
      qryPediCarg.GotoBookmark(grdSelecionado.SelectedRows.Items[li_Loop]);

      // Se o pedido já possuir documentos
      if qryPediCarg.FieldByName('DT_FATUPEDIVEND').AsString <> '' then
      begin
        // Guardamos o número do pedido
        if ls_PediInva = '' then
        begin
          ls_PediInva := qryPediCarg.FieldByName('ID_PEDIVEND').AsString;
        end
        else
        begin
          ls_PediInva := ls_PediInva + ', ' + qryPediCarg.FieldByName('ID_PEDIVEND').AsString;
        end;

        Continue;
      end;
      qryPediCarg.Edit;
      qryPediCarg.FieldByName('ID_CARGEXPE').AsString := '';
      qryPediCarg.FieldByName('NR_ORDEPEDIVEND').AsString := '';
      qryPediCarg.FieldByName('FL_STATPEDIVEND').AsString := 'AB';
      qryPediCarg.Post;

      OSQ1.SQL.Clear;
      OSQ1.SQL.Text :=
         ' delete  ca_pedido_carga             '+
         '  where  id_pedivend = :id_pedivend  ';
      OSQ1.ParamByName('id_pedivend').AsFloat := qryPediCargID_PEDIVEND.Value;
      OSQ1.Execute;

      lr_TotaPeso := qryPediCarg.FieldByName('QN_PESOBRUTPEDIVEND').AsFloat * (-1);
      li_TotaCaix := qryPediCarg.FieldByName('QN_EMBAPEDIVEND').AsInteger * (-1);
      li_DifiEntrClie := qryPediCarg.FieldByName('QN_DIFIENTRCLIE').AsInteger * (-1);
      AjustCapacCamin(lr_TotaPeso, li_TotaCaix);
      LbQtdPedidos.Caption := IntToStr(StrToInt(LbQtdPedidos.Caption)-1);

      qryPediCarg.ApplyUpdates;
      qryPediCarg.CommitUpdates;

    end;

    // Se houver algum documento que não pôde ser retirado da carga por já possuir documentos
    if ls_PediInva <> '' then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox(PChar('O(s) pedido(s) ' + ls_PediInva + #13 + 'não pode(m) ser retirado(s) desta carga por já possuir(em) documentos gerados.'), PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crSQLWait;
    end;

  finally
    // Atualiza sequencia dos pedidos
    SQLOrdem.SQL.Clear;
    SQLOrdem.SQL.Text :=
    ' UPDATE PEDIDO_VENDA     '+
    ' SET NR_ORDEPEDIVEND = ( SELECT SEQ1 FROM '+
    '                      (SELECT P1.ID_PEDIVEND , '+
    '                             ROW_NUMBER() OVER (PARTITION BY ID_CARGEXPE ORDER BY NR_ORDEPEDIVEND) SEQ1 '+
    '                         FROM PEDIDO_VENDA P1                                                           '+
    '                        WHERE P1.ID_CARGEXPE = '+QryFormID_CARGEXPE.AsString+'  ) WHERE ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND )    '+
    '  WHERE ID_CARGEXPE     = '+QryFormID_CARGEXPE.AsString ;

    SQLOrdem.Execute;
    qryPediCarg.EnableControls;
    qryPediCarg.Close;
    qryPediCarg.Open;
    qrySelePedi.Close;
    qrySelePedi.Open;
    qryTempFatoVeic.Close;

    If qryPediCarg.IsEmpty then
      begin
       qryPediCarg.Last;
       lr_TotaPeso := 0;
       li_TotaCaix := 0;
       li_DifiEntrClie := 0;
       AjustCapacCamin(lr_TotaPeso, li_TotaCaix);
      end
    Else
      qryPediCarg.Last;

    Screen.Cursor := crDefault;
  end;

  Screen.Cursor := crDefault;

end;

procedure TFrmMontaCarga.Button1Click(Sender: TObject);
var
  lv_PosiInic, lv_Posicao: TBookmark;
  ls_SQL, ls_WherAdic, ls_OrdeBy, ls_Parametros: String;
  li_Loop: Integer;
begin
  if grdSelecionado = Nil then
  begin
    Application.MessageBox('É necessário selecionar ao menos um Pedido.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if grdSelecionado.SelectedRows.Count = 0 then
  begin
    Application.MessageBox('É necessário selecionar ao menos um Pedido.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  ls_Parametros := '';
  lv_PosiInic := grdSelecionado.DataSource.DataSet.GetBookmark;

  for li_Loop := 0 to grdSelecionado.SelectedRows.Count - 1 do
  begin
    grdSelecionado.DataSource.DataSet.GotoBookmark(grdSelecionado.SelectedRows.Items[li_Loop]);

    ls_Parametros := ls_Parametros + grdSelecionado.DataSource.DataSet.FieldByName('ID_PEDIVEND').AsString + ', ';
  end;

  ls_Parametros := Copy(ls_Parametros, 1, Length(ls_Parametros) - 2);

  ls_SQL :=      'SELECT Pedido_venda_item.ID_MATERIAL,                                                                                                                    '+
                 '       Material.NM_MATERIAL,                                                                                                                             '+
                 '       SUM(Pedido_venda_item.QN_EMBAITEMPEDIVEND) AS QN_TOTACAIX,                                                                                        '+
                 '       SUM((Pedido_venda_item.QN_EMBAITEMPEDIVEND * (nvl(Pedido_venda_item.QN_PESOITEMPEDIVEND,0) + Pedido_venda_item.QN_TARAITEMPEDIVEND))) QN_TOTAPESO '+
                 '  FROM PEDIDO_VENDA_ITEM Pedido_venda_item,                                                                                                              '+
                 '       MATERIAL Material,                                                                                                                                '+
                 '       PEDIDO_VENDA Pedido_venda,                                                                                                                        '+
                 '       CLIENTE Cliente,                                                                                                                                  '+
                 '       CLIENTE_ENDERECO Cliente_endereco,                                                                                                                '+
                 '       LOGISTICA_REGIAO Logistica_regiao,                                                                                                                '+
                 '       LOGISTICA_SUBREGIAO Logistica_subregiao,                                                                                                          '+
                 '       LOGISTICA_REGIAO_SUBREGIAO Logistica_regiao_subregiao                                                                                             '+
                 '                                                                                                                                                         '+
                 ' WHERE (Pedido_venda_item.ID_MATERIAL = Material.ID_MATERIAL)                                                                                            '+
                 '   AND (Pedido_venda_item.ID_PEDIVEND = Pedido_venda.ID_PEDIVEND)                                                                                        '+
                 '   AND (Pedido_venda.ID_CLIENTE = Cliente.ID_CLIENTE)                                                                                                    '+
                 '   AND (Pedido_venda.ID_ENDECLIE_ENTREGA = Cliente_endereco.ID_ENDECLIE)                                                                                 '+
                 '   AND (Cliente_endereco.ID_REGILOGI = Logistica_regiao.ID_REGILOGI)                                                                                     '+
                 '   AND (Cliente_endereco.ID_SUBRLOGI = Logistica_subregiao.ID_SUBRLOGI)                                                                                  '+
                 '   AND (Cliente_endereco.ID_REGISUBRLOGI = Logistica_regiao_subregiao.ID_REGISUBRLOGI)                                                                   ';


  ls_WherAdic := ' AND (Pedido_venda_item.ID_PEDIVEND IN ( ' + ls_Parametros + ' ))                                                                                        ';

  ls_OrdeBy :=   ' GROUP BY Pedido_venda_item.ID_MATERIAL,                                                                                                                 '+
                 '          Material.ID_MATERIAL,                                                                                                                          '+
                 '          Material.NM_MATERIAL                                                                                                                           ';

  FrmItensPedido := TFrmItensPedido.Create(Self);
  FrmItensPedido.qryForm.Close;
  FrmItensPedido.qryForm.SQL.Text := ls_SQL + ls_WherAdic + ls_OrdeBy;
  FrmItensPedido.qryForm.Open;
  FrmItensPedido.ShowModal;

end;

procedure TFrmMontaCarga.BtItensPediClick(Sender: TObject);
var
  lv_PosiInic, lv_Posicao: TBookmark;
  ls_SQL, ls_WherAdic, ls_OrdeBy, ls_Parametros: String;
  li_Loop: Integer;
begin
  if grdSelecionado = Nil then
  begin
    Application.MessageBox('É necessário selecionar ao menos um Pedido.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if grdSelecionado.SelectedRows.Count = 0 then
  begin
    Application.MessageBox('É necessário selecionar ao menos um Pedido.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  ls_Parametros := '';
  lv_PosiInic := grdSelecionado.DataSource.DataSet.GetBookmark;

  for li_Loop := 0 to grdSelecionado.SelectedRows.Count - 1 do
  begin
    grdSelecionado.DataSource.DataSet.GotoBookmark(grdSelecionado.SelectedRows.Items[li_Loop]);
    ls_Parametros := ls_Parametros + grdSelecionado.DataSource.DataSet.FieldByName('ID_PEDIVEND').AsString + ', ';
  end;

  ls_Parametros := Copy(ls_Parametros, 1, Length(ls_Parametros) - 2);

  ls_SQL := 'SELECT ME.ID_PRODMATEEMBA, M.NM_MATERIAL, SUM(PVI.QN_EMBAITEMPEDIVEND) AS QN_TOTACAIX, '+
            'SUM((PVI.QN_EMBAITEMPEDIVEND * (nvl(PVI.QN_PESOITEMPEDIVEND,0) + PVI.QN_TARAITEMPEDIVEND))) QN_TOTAPESO, PV.ID_PEDIVEND '+
            'FROM PEDIDO_VENDA_ITEM PVI, MATERIAL M, PEDIDO_VENDA PV, MATERIAL_EMBALAGEM ME '+
            'WHERE (PVI.ID_MATERIAL = M.ID_MATERIAL) '+
            'AND (PVI.ID_PEDIVEND = PV.ID_PEDIVEND) '+
            'AND (PVI.ID_PEDIVEND = PV.ID_PEDIVEND) '+
            'AND (ME.ID_MATERIAL = M.ID_MATERIAL) ';

  ls_WherAdic := ' AND (PV.ID_PEDIVEND IN ( ' + ls_Parametros + ' )) ';
  ls_OrdeBy := ' GROUP BY ME.ID_PRODMATEEMBA, M.NM_MATERIAL, PV.ID_PEDIVEND ORDER BY ME.ID_PRODMATEEMBA, M.NM_MATERIAL, PV.ID_PEDIVEND';

  FrmItensPedido := TFrmItensPedido.Create(Self);
  FrmItensPedido.qryForm.Close;
  FrmItensPedido.qryForm.SQL.Text := ls_SQL + ls_WherAdic + ls_OrdeBy;
  FrmItensPedido.qryForm.Open;
  FrmItensPedido.ShowModal;
  FrmItensPedido.Caption := FrmItensPedido.Caption + ' Nº ' + FrmItensPedido.QryFormID_PEDIVEND.AsString;

end;

procedure TFrmMontaCarga.BTItensCargaClick(Sender: TObject);
begin
  if qryPediCarg.IsEmpty then
  begin
    Application.MessageBox('                    Esta carga não possui ítens.                    ', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  frmItensCarga := TfrmItensCarga.Create(Self);
  frmItensCarga.qryForm.close;
  frmItensCarga.qryForm.ParamByName('pi_NumeCarg').AsString := qryForm.FieldByName('ID_CARGEXPE').AsString;
  frmItensCarga.qryForm.open;
  frmItensCarga.ShowModal;
  frmItensCarga.Caption := frmItensCarga.Caption + ' Nº ' + qryForm.FieldByName('ID_CARGEXPE').AsString;
end;

procedure TFrmMontaCarga.BitBtn5Click(Sender: TObject);
begin
  if grdSelecionado.SelectedRows.Count = 0 then
  begin
    Application.MessageBox('É necessário selecionar ao menos um Pedido para Exclusão.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if grdSelecionado.SelectedRows.Count > 1 then
  begin
    Application.MessageBox('É necessário selecionar ao menos um Pedido para Exclusão.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  FrmCargObsPedi := TFrmCargObsPedi.Create(Self);
  FrmCargObsPedi.qryForm.Close;
  FrmCargObsPedi.qryForm.ParamByName('pr_NumePedi').AsFloat := grdSelecionado.DataSource.DataSet.FieldByName('ID_PEDIVEND').AsFloat;
  FrmCargObsPedi.qryForm.Open;
  FrmCargObsPedi.ShowModal;
  FrmCargObsPedi.Caption := FrmCargObsPedi.Caption + ' Nº ' + FrmCargObsPedi.QryFormID_PEDIVEND.AsString;
end;

procedure TFrmMontaCarga.BitBtn4Click(Sender: TObject);
begin
  FrmOriPesq:=3;
  FrmPesqVend:=TFrmPesqVend.Create(Self);
  FrmPesqVend.Show;
end;

procedure TFrmMontaCarga.BitBtn2Click(Sender: TObject);
begin
  FrmOriPesq:=3;
  frmConsultaSubRegiao:=TfrmConsultaSubRegiao.Create(Self);
  frmConsultaSubRegiao.Show;
end;

procedure TFrmMontaCarga.BitBtn3Click(Sender: TObject);
begin
  FrmOriPesq:=3;
  frmConsultaCidades:=TfrmConsultaCidades.Create(Self);
  frmConsultaCidades.Show;
end;

procedure TFrmMontaCarga.BtProcurarClick(Sender: TObject);
var
  linha:integer;
begin

  Screen.Cursor := crSQLWait;

  IF Vcoluna=0 then
    Vcoluna:=2;

  linha := Pos('ORDER',qrySelePedi.SQL.text);

  CASE Vcoluna OF
    1:Begin
        qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
        qrySelePedi.SQL.add(' AND Pedido_venda.DT_ENTRPEDIVEND = TO_DATE(''' + EdPesq.Text + ''',''' + 'dd/mm/yyyy' + ''')' + '');
        qrySelePedi.SQL.add(' ORDER by Pedido_venda.DT_ENTRPEDIVEND ');
        qrySelePedi.Open;
      End;
    2:Begin
        qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
        qrySelePedi.SQL.add(' AND Pedido_venda.ID_PEDIVEND = ' + EdPesq.Text );
        qrySelePedi.SQL.add(' ORDER by Pedido_venda.ID_PEDIVEND ');
        qrySelePedi.Open;
      End;
    3:Begin
        qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
        qrySelePedi.SQL.add(' AND Pedido_venda.ID_CLIENTE = ' + EdPesq.Text );
        qrySelePedi.SQL.add(' ORDER by Pedido_venda.ID_CLIENTE ');
        qrySelePedi.Open;
      End;
    4:Begin
        qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
        qrySelePedi.SQL.add(' AND Cliente.NM_FANTCLIE LIKE ''' + '%'+ EdPesq.Text + '%'+'''' );
        qrySelePedi.SQL.add(' ORDER by Cliente.NM_FANTCLIE');
        qrySelePedi.Open;
      End;
    5:Begin
        qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
        qrySelePedi.SQL.add(' AND  Logistica_subregiao.NM_SUBRLOGI LIKE ''' + '%' + EdPesq.Text + '%' + '''' );
        qrySelePedi.SQL.add(' ORDER by  Logistica_subregiao.NM_SUBRLOGI');
        qrySelePedi.Open;
      End;
    6:Begin
        qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
        qrySelePedi.SQL.add(' AND  Pedido_venda.ID_VENDEDOR = ' + EdPesq.Text );
        qrySelePedi.SQL.add(' ORDER by  Pedido_venda.ID_VENDEDOR');
        qrySelePedi.Open;
      End;
    7:Begin
        qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
        qrySelePedi.SQL.add(' AND  VENDEDOR.NM_VENDEDOR LIKE ''' + '%' + EdPesq.Text + '%' + '''' );
        qrySelePedi.SQL.add(' ORDER by  VENDEDOR.NM_VENDEDOR');
        qrySelePedi.Open;
      End;
    10:Begin
        qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
        qrySelePedi.SQL.add(' AND BAIRRO.NM_BAIRRO LIKE ''' + '%' + EdPesq.Text + '%' + '''' );
        qrySelePedi.SQL.add(' ORDER by BAIRRO.NM_BAIRRO');
        qrySelePedi.Open;
      End;
    11:Begin
        qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
        qrySelePedi.SQL.add(' AND CIDADE.NM_CIDADE LIKE ''' + '%' + EdPesq.Text + '%' + '''' );
        qrySelePedi.SQL.add(' ORDER by CIDADE.NM_CIDADE');
        qrySelePedi.Open;
      End;
    12:Begin
        qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
        qrySelePedi.SQL.add(' AND ESTADO.SG_ESTADO LIKE ''' + '%' + EdPesq.Text + '%' + '''' );
        qrySelePedi.SQL.add(' ORDER by ESTADO.SG_ESTADO');
        qrySelePedi.Open;
      End;
    13:Begin
        qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
        qrySelePedi.SQL.add(' AND Cliente_endereco.NR_CEPENDECLIE LIKE ''' + '%' + EdPesq.Text + '%' + '''' );
        qrySelePedi.SQL.add(' ORDER by Cliente_endereco.NR_CEPENDECLIE');
        qrySelePedi.Open;
      End;
    14:Begin
        qrySelePedi.SQL.text := copy(qrySelePedi.SQL.text,0,linha-1);
        qrySelePedi.SQL.add(' AND Pedido_venda.GN_PLACVEICTRAN LIKE ''' + '%' + EdPesq.Text + '%' + '''' );
        qrySelePedi.SQL.add(' ORDER by Pedido_venda.GN_PLACVEICTRAN');
        qrySelePedi.Open;
      End;
  End;

  EdPesq.Text:= '';
  Screen.Cursor := crDefault;

end;

procedure TFrmMontaCarga.BtObsCagaClick(Sender: TObject);
begin
  FrmCargObsCarga := TFrmCargObsCarga.Create(Self);
  FrmCargObsCarga.qryForm.Close;
  FrmCargObsCarga.qryForm.ParamByName('pi_NumeCarg').AsFloat := qryForm.Fieldbyname('ID_CARGEXPE').AsFloat;
  FrmCargObsCarga.qryForm.Open;
  FrmCargObsCarga.ShowModal;
  FrmCargObsCarga.Caption := FrmCargObsCarga.Caption + ' Nº ' + FrmCargObsCarga.QryFormID_CARGEXPE.AsString;
end;

procedure TFrmMontaCarga.mniAjusPediCargClick(Sender: TObject);
begin

  Screen.Cursor := crSQLWait;

  with QryTemp do
  begin
    close;
    sql.Clear;
    sql.Text :=
         ' select                '+
         '       id_cargexpe     '+
         '  from                 '+
         '       expedicao_carga_item  '+
         ' where id_cargexpe = :numcarga ';
    ParamByName('numcarga').AsFloat := QryForm.Fieldbyname('ID_CARGEXPE').AsFloat;
    Open;
    if (IsEmpty = False) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('Esta carga não pode ser alterada pois já esta sendo Carregada.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
  end;

  If (VerifStatuCarga(qryForm.FieldByName('ID_CARGEXPE').AsInteger) <> 'BQ') then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('Esta carga só pode ser manipulada se estiver Bloqueada.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  If (VerifStatuCarga(qryForm.FieldByName('ID_CARGEXPE').AsInteger) = 'MT') and (us_Bloq = 'N') then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('                   Carga em processo de Montagem.                    ', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  PageControl1.Pages[0].TabVisible:= False;
  PageControl1.Pages[1].TabVisible:= False;
  PageControl1.Pages[2].TabVisible:= True;

  // Ajustamos o status da carga
  qryForm.Edit;
  qryForm['FL_STATCARGEXPE'] := 'MT';
  qryForm['ID_USUASIST_MONTAGEM'] := gi_CodiUsuaSist;
  qryForm.Post;
  us_Bloq := 'S';

  try
    qryForm.ApplyUpdates;
    qryForm.CommitUpdates;
  except
    Screen.Cursor := crDefault;
    if gb_ErroBanc then
      gb_ErroBanc := False;

    qryForm.RevertRecord;
  end;

  qrySelePedi.Close;
  qrySelePedi.SQL.Text := us_SelePediSQL +
    '   AND  (Pedido_venda.DT_ENTRPEDIVEND BETWEEN To_date(''' + DateToStr( StrTodate(edtDataCarg.text)) + ''', ''DD/MM/YYYY'') '+
    '         AND To_date(''' + (edtDataLimiPedi.text) + ''', ''DD/MM/YYYY''))                                       '+
    'ORDER BY VENDEDOR.NM_VENDEDOR ';
    qrySelePedi.Open;

  qryForm.Edit;
  VAjuste:= True;
  SB_PRIMEIRO.Enabled:= False;
  SB_ANTERIOR.Enabled:= False;
  SB_PROXIMO.Enabled := False;
  SB_ULTIMO.Enabled  := False;
  SBNovo.Enabled := False;
  SBDel.Enabled := False;
  SBSalva.Enabled:= False;
  SBCancel.Enabled:= False;
  Sb_Sair.Enabled:= False;
  BtnInclPedi.Enabled := True;
  BtnExclPed.Enabled := True;
  SBDiversos.Enabled := True;
  ApagaCriterios;
  LigaCampos;
  LigaArea1;
  BTItensCarga.Enabled:= true;
  BtItensPedi.Enabled:= true;
  mniValidar.Enabled:=True;
  btnSobe.enabled   := True;
  BtnDesce.Enabled  := True;
  mniAjusPediCarg.Enabled:=False;
  Screen.Cursor := crDefault;
  GroupInfoCam.Enabled := true;
end;

procedure TFrmMontaCarga.AtualCapaVeiculo;
begin

  VQNCAPA :=0;
  If not (qryForm.State in [dsInsert, dsEdit]) then
  begin
    if not qryForm.IsEmpty then
    begin
      qryTemp2.Close;
      qryTemp2.SQL.Clear;
      qryTemp2.SQL.Text := 'SELECT Transportador_veiculo.GN_PLACVEICTRAN,                     '+
      '   Veiculo_tipo.QN_CAPATIPOVEIC                                                       '+
      ' FROM FORNECEDOR Fornecedor,                                                          '+
      '   TRANSPORTADOR_VEICULO Transportador_veiculo,                                       '+
      '   VEICULO_TIPO Veiculo_tipo,                                                         '+
      '   FRETE_ABATIDO Frete_abatido                                                        '+
      ' WHERE (Transportador_veiculo.ID_FORNECEDOR_TRANSPORTADOR = Fornecedor.ID_FORNECEDOR) '+
      ' AND (Transportador_veiculo.ID_TIPOVEIC = Veiculo_tipo.ID_TIPOVEIC)                   '+
      ' AND (Transportador_veiculo.ID_TIPOVEIC = Frete_abatido.ID_TIPOVEIC)                  '+
      ' AND (Transportador_veiculo.fl_ativveictran = ''S'')                                  '+
      ' AND  Transportador_veiculo.GN_PLACVEICTRAN =  ' + QuotedStr(QryForm.FieldByName('GN_PLACVEICTRAN').AsString) ;

      QryTemp2.Open;
      VQNCAPA := QryTemp2.FieldByName('QN_CAPATIPOVEIC').AsFloat;
      ls_PediCargSQL := us_PediCargSQL +
                        ' AND (PV.ID_CARGEXPE = ' + IntToStr(qryForm['ID_CARGEXPE']) + ')                                                ';

      qryPediCarg.Close;
      qryPediCarg.SQL.Text := ls_PediCargSQL + 'ORDER BY NR_ORDEPEDIVEND';
      qryPediCarg.Open;
      QryTemp2.close;
    end;
  end;
end;

procedure TFrmMontaCarga.CRTemp_QryFormAfterOpen(DataSet: TDataSet);
begin

  If not QryForm.IsEmpty then
  begin
    AtualCapaVeiculo;
    AjustCapacCamin(0,0);
  end;

end;

procedure TFrmMontaCarga.grdSelecionadoTitleClick(Column: TColumn);
var
  linha:integer;
begin

  Screen.Cursor := crSQLWait;
  linha := Pos('ORDER',qryPediCarg.SQL.text);
  qryPediCarg.SQL.text := copy(qryPediCarg.SQL.text,0,linha-1);
  qryPediCarg.SQL.add(' ORDER by ' + Column.FieldName);
  qryPediCarg.Open;
  Screen.Cursor:= crDefault;
end;

procedure TFrmMontaCarga.mnGeraTXTClick(Sender: TObject);
var
  vPlaca, vLocalArquivo: string;
  vTxt: TextFile;
  i: Integer;
begin
  InputQuery('Informe a placa do veículo!', 'Placa', vPlaca);

  if Trim(vPlaca) <> '' then
  begin
    qryGeraArquivoTXT.Close;
    qryGeraArquivoTXT.ParamByName('pData').AsDate    := StrToDate(FormatDateTime('dd/mm/yy', now));
    qryGeraArquivoTXT.ParamByName('pPlaca').AsString := UpperCase(vPlaca);
    qryGeraArquivoTXT.Open;

    if not qryGeraArquivoTXT.IsEmpty then
    begin
      qryGeraArquivoTXT.First;

      if not DirectoryExists('C:\ARQS_ENTREGA') then
        CreateDir('C:\ARQS_ENTREGA');
      vLocalArquivo := 'C:\ARQS_ENTREGA\' + UpperCase(vPlaca) + FormatDateTime('ddmmyy', now) + '.txt';

      //se arquivo já existir (na mesma data), exclui e recria
      if FileExists(vLocalArquivo) then
        DeleteFile(PChar(vLocalArquivo));

      //monta arquivo a partir da query
      try
        try
        AssignFile(vTxt, vLocalArquivo);
        Rewrite(vTxt);
        for i := 1 to qryGeraArquivoTXT.RecordCount do
        begin
          Write(vTxt, '"' + qryGeraArquivoTXT.FieldByName('PLACA').asString + '"' + ',');
          Write(vTxt, '"' + qryGeraArquivoTXT.FieldByName('DATA_ENTREGA').asString + '"' + ',');
          Write(vTxt, '"' + qryGeraArquivoTXT.FieldByName('PLACA').asString + '"' + ',');
          Write(vTxt, '"' + IntToStr(i) + '"' + ',');
          Write(vTxt, '"' + qryGeraArquivoTXT.FieldByName('CLIENTE').asString + '"' + ',');
          Write(vTxt, '"' + qryGeraArquivoTXT.FieldByName('NOTAFISCAL').asString + '"' + ',');
          Write(vTxt, '"' + qryGeraArquivoTXT.FieldByName('ESTABELECIMENTO').asString + '"' + ',');
          Write(vTxt, '"' + qryGeraArquivoTXT.FieldByName('ENDERECO').asString + '"' + ',');
          Write(vTxt, '"' + qryGeraArquivoTXT.FieldByName('BAIRRO').asString + '"' + ',');
          Write(vTxt, '"' + qryGeraArquivoTXT.FieldByName('CIDADE').asString + '"' + ',');
          WriteLn(vTxt, '"' + qryGeraArquivoTXT.FieldByName('UF').asString + '"');

          qryGeraArquivoTXT.Next;
        end;
        qryGeraArquivoTXT.Close;
        except
          Application.MessageBox('Erro ao gerar arquivo de acompanhamento de entrega. O arquivo não foi gerado corretamente.', PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
        end;
      finally
        CloseFile(vTxt);
        Application.MessageBox(PChar('O arquivo "' + ExtractFileName(vLocalArquivo) +
                      '" foi gerado corretamente em: "' + ExtractFileDir(vLocalArquivo) + '".'), PChar(FrmMontaCarga.Caption), MB_OK + MB_ICONINFORMATION);
      end;
    end;
  end;
end;

procedure TFrmMontaCarga.PageControl1Change(Sender: TObject);
begin
  mnGeraTXT.Enabled := (PageControl1.ActivePage = TsLista);
end;

procedure TFrmMontaCarga.btnSobeClick(Sender: TObject);
var
  Seq : Double ;
begin

  Seq := qryPediCargID_PEDIVEND.Value;
  SQLOrdem.SQL.Clear;
  SQLOrdem.SQL.Text :=
  ' UPDATE PEDIDO_VENDA     '+
  '    SET NR_ORDEPEDIVEND = CASE WHEN  NR_ORDEPEDIVEND = '+qryPediCargNR_ORDEPEDIVEND.AsString+' then NR_ORDEPEDIVEND - 1 ELSE '+qryPediCargNR_ORDEPEDIVEND.AsString+' END   '  +
  '  WHERE ID_CARGEXPE     = '+QryFormID_CARGEXPE.AsString+'                                                                    '  +
  '    AND NR_ORDEPEDIVEND BETWEEN '+qryPediCargNR_ORDEPEDIVEND.AsString+'-1 AND '+qryPediCargNR_ORDEPEDIVEND.AsString+'                                                      '   ;
  SQLOrdem.Execute;
  qryPediCarg.Close;
  qryPediCarg.Open;
  qryPediCarg.Locate ('ID_PEDIVEND', Seq,[]) ;

end;

procedure TFrmMontaCarga.BtnDesceClick(Sender: TObject);
var
  Seq : Double ;
begin

  Seq := qryPediCargID_PEDIVEND.Value;
  SQLOrdem.SQL.Clear;
  SQLOrdem.SQL.Text :=
  ' UPDATE PEDIDO_VENDA     '+
  '    SET NR_ORDEPEDIVEND = CASE WHEN  NR_ORDEPEDIVEND = '+qryPediCargNR_ORDEPEDIVEND.AsString+' then NR_ORDEPEDIVEND + 1 ELSE '+qryPediCargNR_ORDEPEDIVEND.AsString+' END   '  +
  '  WHERE ID_CARGEXPE     = '+QryFormID_CARGEXPE.AsString+'                                                                    '  +
  '    AND NR_ORDEPEDIVEND BETWEEN '+qryPediCargNR_ORDEPEDIVEND.AsString+' AND '+qryPediCargNR_ORDEPEDIVEND.AsString+' +1                                                      '   ;
  SQLOrdem.Execute;
  qryPediCarg.Close;
  qryPediCarg.Open;

  qryPediCarg.Locate ('ID_PEDIVEND', Seq,[]) ;

end;

procedure TFrmMontaCarga.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmMontaCarga.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmMontaCarga.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6)
  else
  begin
    IF QryFormFL_STATCARGEXPE.Value = 'AB' then      // ABERTA
      DBGrid1.Canvas.Brush.Color:=$00CCFFCC
    else if QryFormFL_STATCARGEXPE.Value = 'MT' then // MONTANDO
      DBGrid1.Canvas.Brush.Color:=$00BFFFFF
    else if QryFormFL_STATCARGEXPE.Value = 'FE' then // FECHADA
      DBGrid1.Canvas.Brush.Color:=$00C6C6FF
    else if QryFormFL_STATCARGEXPE.Value = 'BQ' then // BLOQUEADA
      DBGrid1.Canvas.Brush.Color:=$00FFF2D9
    else if QryFormFL_STATCARGEXPE.Value = 'NF' then // NF DIRETA SEM CARGA
      DBGrid1.Canvas.Brush.Color:=$00B7DBDB
    else if QryFormFL_STATCARGEXPE.Value = 'CR' then // EM CARREGAMENTO
      DBGrid1.Canvas.Brush.Color:=$0088AEFF
    else if QryFormFL_STATCARGEXPE.Value = 'SP' then // EM CARREGAMENTO, PORÉM SUSPENSA
      DBGrid1.Canvas.Brush.Color:=$0088AEFF
    else
      DBGrid1.Canvas.Brush.Color:= $F0CAA6;

    DBGrid1.Canvas.Font.Color:=$000000;
  end;

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmMontaCarga.grdSelePediDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  grdSelePedi.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmMontaCarga.grdSelecionadoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  grdSelecionado.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmMontaCarga.BitBtn6Click(Sender: TObject);
begin
  FrmOriPesq:=11;
  FrmConsultaMotorista := TfrmConsultaMotorista.Create(Self);
  FrmConsultaMotorista.ShowModal;
end;

end.



