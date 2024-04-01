unit UFrmPediDevoVend;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, Variants, Graphics, Forms, Dialogs,
  toolWin, OraSmart, OraError, Menus, Data.DB, DBAccess, Ora, MemDS,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Winapi.Windows;

type
  TFrmPediDevoVend = class(TForm)
    PageControl1: TPageControl;
    TabLista: TTabSheet;
    TabDetalhe: TTabSheet;
    DBGrid1: TDBGrid;
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
    DS: TOraDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    edtDocuEntr: TDBEdit;
    DBID_MOTO: TDBEdit;
    DBNOME_MOTO: TDBEdit;
    edtPediVend: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    TabItens: TTabSheet;
    TabParecer: TTabSheet;
    DSItem: TOraDataSource;
    bvlCabeIten: TPanel;
    DBEdit38: TDBEdit;
    Label32: TLabel;
    DBEdit39: TDBEdit;
    Label33: TLabel;
    DBEdit40: TDBEdit;
    Label34: TLabel;
    DBEdit41: TDBEdit;
    Label35: TLabel;
    DBEdit42: TDBEdit;
    Label36: TLabel;
    DBEdit43: TDBEdit;
    Label37: TLabel;
    grdItens: TDBGrid;
    bvlItens: TPanel;
    qryTotaDevo: TOraQuery;
    mmoPareCome: TDBMemo;
    mmoPareFina: TDBMemo;
    mmoPareExpe: TDBMemo;
    mmoObservacoes: TDBMemo;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    QrMotiDevo: TOraQuery;
    DSMotiDevo: TOraDataSource;
    RTIPO: TDBRadioGroup;
    DBRPROFISCAL: TDBRadioGroup;
    DBComboBox1: TDBComboBox;
    QryTemp: TOraQuery;
    DBCBMotivo: TDBLookupComboBox;
    QryTemp2: TOraQuery;
    PM1: TPopupMenu;
    mniValidar: TMenuItem;
    N1: TMenuItem;
    Totais1: TMenuItem;
    N2: TMenuItem;
    mniBloquear: TMenuItem;
    mniDesbloquear: TMenuItem;
    N3: TMenuItem;
    mniFechar: TMenuItem;
    qryDeta: TOraQuery;
    BpesqMoto: TBitBtn;
    QryDevo: TOraQuery;
    qryQueb: TOraQuery;
    QryTipoPedVen: TOraQuery;
    QryTipoPedVenID_TIPOPEDIVEND: TFloatField;
    QryTipoPedVenNM_TIPOPEDIVEND: TStringField;
    QryTipoPedVenFL_CTE: TStringField;
    QryTipoPedVenFL_PNF_DEVOLUCAO: TStringField;
    qry_Parametro: TOraQuery;
    qry_ParametroTIPO_EXP_CARGA_PEDIDO: TStringField;
    edtDocuSaid: TDBEdit;
    Label52: TLabel;
    mniAbrir: TMenuItem;
    Panel6: TPanel;
    SB_PRIMEIRO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SB_NOVO: TSpeedButton;
    SB_EXCLUI: TSpeedButton;
    SB_EDIT: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    SBDiversos: TSpeedButton;
    sb_Imp: TSpeedButton;
    Sb_Sair: TSpeedButton;
    MainMenu1: TMainMenu;
    DBCheckBox1: TDBCheckBox;
    Label27: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label50: TLabel;
    grpProduto: TGroupBox;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    lblAjusManu: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    Label49: TLabel;
    edtCaixDevo: TDBEdit;
    edtPesoQuebra: TDBEdit;
    edtCaixAjus: TDBEdit;
    DBPESO: TDBEdit;
    Label51: TLabel;
    DBEdit5: TDBEdit;
    Label26: TLabel;
    edtCodiMate: TDBEdit;
    DBEdit33: TDBEdit;
    Bevel1: TBevel;
    Qr: TSmartQuery;
    QrEMPRESA: TStringField;
    QrFILIAL: TIntegerField;
    QrID_PEDIDEVOVEND: TFloatField;
    QrID_PEDIVEND: TFloatField;
    QrID_MOTIDEVOVEND: TIntegerField;
    QrID_MOTOTRAN: TFloatField;
    QrID_USUASIST_CRIAPEDIDEVOVEND: TFloatField;
    QrID_USUASIST_ABEXPEPEDIDEVOVEND: TFloatField;
    QrID_USUASIST_FCEXPEPEDIDEVOVEND: TFloatField;
    QrID_USUASIST_FECHPEDIDEVOVEND: TFloatField;
    QrDT_PEDIDEVOVEND: TDateTimeField;
    QrDT_CRIAPEDIDEVOVEND: TDateTimeField;
    QrDT_ABEREXPEPEDIDEVOVEND: TDateTimeField;
    QrDT_FECHEXPEPEDIDEVOVEND: TDateTimeField;
    QrDT_FECHPEDIDEVOVEND: TDateTimeField;
    QrNR_DOCUENTRPEDIDEVOVEND: TStringField;
    QrQN_EMBAPEDIDEVOVEND: TIntegerField;
    QrQN_PESOPEDIDEVOVEND: TFloatField;
    QrPC_QUEBPEDIDEVOVEND: TFloatField;
    QrFL_TIPOPEDIDEVOVEND: TStringField;
    QrFL_TRANFISCPEDIDEVOVEND: TStringField;
    QrFL_STATPEDIDEVOVEND: TStringField;
    QrGN_PARECOMEPEDIDEVOVEND: TStringField;
    QrGN_PAREFINAPEDIDEVOVEND: TStringField;
    QrGN_PAREEXPEPEDIDEVOVEND: TStringField;
    QrGN_OBSEPEDIDEVOVEND: TStringField;
    QrFX_PEDIDEVOVEND: TStringField;
    QrID_CARGEXPE: TFloatField;
    QrDT_PEDIVEND: TDateTimeField;
    QrDT_ENTRPEDIVEND: TDateTimeField;
    QrDT_FATUPEDIVEND: TDateTimeField;
    QrID_CLIENTE: TFloatField;
    QrNM_CLIENTE: TStringField;
    QrNM_FANTCLIE: TStringField;
    QrNR_FONECLIE: TStringField;
    QrGN_PLACVEICTRAN: TStringField;
    QrNM_MOTOTRAN: TStringField;
    QrID_NOTAFISC: TFloatField;
    QrID_VENDEDOR: TFloatField;
    QrNM_VENDEDOR: TStringField;
    QrNR_FONEVEND: TStringField;
    QrNM_USUACRIAPEDI: TStringField;
    QrNM_USUAABREEXPE: TStringField;
    QrNM_USUAFECHEXPE: TStringField;
    QrNM_USUAFECHPEDI: TStringField;
    QrFL_FRETEPG: TStringField;
    QrCOD_FRETEPG: TStringField;
    QrNM__FRETEPG: TStringField;
    QrNR_NOTAFISC: TFloatField;
    QrNM_REDUUSUASIST: TStringField;
    QrItem: TSmartQuery;
    QrItemEMPRESA: TStringField;
    QrItemFILIAL: TIntegerField;
    QrItemID_ITEMPEDIDEVOVEND: TFloatField;
    QrItemID_PEDIDEVOVEND: TFloatField;
    QrItemID_MATERIAL: TFloatField;
    QrItemID_EMBALAGEM: TFloatField;
    QrItemID_MATEEMBA: TFloatField;
    QrItemID_MOTIDEVOVEND: TFloatField;
    QrItemQN_EMBAITEMPEDIDEVOVEND: TIntegerField;
    QrItemQN_PESOITEMPEDIDEVOVEND: TFloatField;
    QrItemQN_PESOQUEBITEMPEDIDEVOVEND: TFloatField;
    QrItemQN_EMBAEXPEITEMPEDIDEVOVEND: TIntegerField;
    QrItemQN_PSPDEXPEITEMPEDIDEVOVEND: TFloatField;
    QrItemQN_PSREEXPEITEMPEDIDEVOVEND: TFloatField;
    QrItemQN_TRREEXPEITEMPEDIDEVOVEND: TFloatField;
    QrItemQN_EMBAAJUSITEMPEDIDEVOVEND: TIntegerField;
    QrItemFX_ITEMPEDIDEVOVEND: TStringField;
    QrItemID_PRODMATEEMBA: TStringField;
    QrItemNM_PRODMATEEMBA: TStringField;
    QrItemQN_EMBAEXPEITEMPEDIVEND: TFloatField;
    QrItemQN_PESOPADREXPEITEMPEDIVEND: TFloatField;
    QrItemVL_UNITITEMPEDIVEND: TFloatField;
    QrItemVL_TOTAPROD: TFloatField;
    QrItemVL_TOTADEVO: TFloatField;
    QrItemVL_TOTAQUEB: TFloatField;
    QrItemQN_PERCQUEB: TFloatField;
    QrItemVL_VALOOPER: TFloatField;
    QrItemFL_TIPOEXPEMATEEMBA: TStringField;
    QrItemVL_DEVEXPE: TFloatField;
    QrItemPESO_LIQ: TFloatField;
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
    procedure SB_EDITClick(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure BPesqMateClick(Sender: TObject);
    procedure edtCodiMateExit(Sender: TObject);
    Function  ValidStatu(Sender: TObject): Boolean;
    Function  DataBanco: TDateTime;
    procedure edtPediVendExit(Sender: TObject);
    procedure SBDiversosClick(Sender: TObject);
    procedure mniValidarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtCaixDevoExit(Sender: TObject);
    procedure BpesqMotoClick(Sender: TObject);
    procedure mniBloquearClick(Sender: TObject);
    procedure mniDesbloquearClick(Sender: TObject);
    procedure mniFecharClick(Sender: TObject);
    procedure PM1Popup(Sender: TObject);
    procedure Totais1Click(Sender: TObject);
    procedure mmoPareComeChange(Sender: TObject);
    procedure mmoPareFinaChange(Sender: TObject);
    procedure mmoPareExpeChange(Sender: TObject);
    procedure mmoObservacoesChange(Sender: TObject);
    procedure TabParecerShow(Sender: TObject);
    procedure edtPesoQuebraExit(Sender: TObject);
    procedure edtCaixAjusExit(Sender: TObject);
    procedure QrItemAfterScroll(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure sb_ImpClick(Sender: TObject);
    procedure mmoPareComeKey(Sender: TObject; var Key: Char);
    procedure mniAbrirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSItemDataChange(Sender: TObject; Field: TField);
  private
    TipoExpedicao : String;
    procedure CalculaItens;
  public
    VFINAL,Vdata:STRING;
    SELPE, nEspaco:integer;
    Vdtstr:string;
    VSEMFINAN:boolean;
  end;

var
  FrmPediDevoVend: TFrmPediDevoVend;

implementation

uses Principal,global,UFrmSeldata, UFrmPesqMatEmba, UFrmPesqMoto, UFrmPesCaminhao,
  UFrmTotalDevo, Math, UFrmSelMotDev, UFrmRelDevQue, UPesquiCliente, UFrmPesqVend;

{$R *.dfm}

procedure TFrmPediDevoVend.Sb_SairClick(Sender: TObject);
begin
//   Qr.Close;
//   QRITEM.Close;
   Close;
end;

procedure TFrmPediDevoVend.SB_PRIMEIROClick(Sender: TObject);
begin
  Qr.First;
end;

procedure TFrmPediDevoVend.SB_ANTERIORClick(Sender: TObject);
begin
  Qr.Prior;
end;

procedure TFrmPediDevoVend.SB_PROXIMOClick(Sender: TObject);
begin
  Qr.Next;
end;

procedure TFrmPediDevoVend.SB_ULTIMOClick(Sender: TObject);
begin
  Qr.Last;
end;

procedure TFrmPediDevoVend.SB_NOVOClick(Sender: TObject);
var
  li_Loop    : Integer;
  ls_PrefTag : String;
begin
  ActiveControl := Nil;

  PageControl1.Pages[0].TabVisible := False;
  PageControl1.Pages[1].TabVisible := False;
  PageControl1.Pages[2].TabVisible := True;
  PageControl1.Pages[3].TabVisible := False;
  PageControl1.Pages[4].TabVisible := True;

  TabDetalhe.Show;
  qr.Insert;

  qr.FieldByName('FL_STATPEDIDEVOVEND').AsString := 'AV';
  qr.FieldByName('DT_PEDIDEVOVEND').AsDateTime := DataBanco;

  SB_PRIMEIRO.Enabled:= False;
  SB_ANTERIOR.Enabled:= False;
  SB_PROXIMO.Enabled:= False;
  SB_ULTIMO.Enabled:= False;
  SB_Novo.Enabled:= False;
  SB_EXCLUI.Enabled:= False;
  SB_CONFIRMA.Enabled:= True;
  SB_Cancel.Enabled:= True;
  Sb_Sair.Enabled:= False;
  SB_EDIT.Enabled := False;

  QryTemp.close;
  QryTemp.SQL.clear;
  QryTemp.SQL.Text := ' SELECT NVL(MAX(ID_PEDIDEVOVEND),0) AS IDPEDDEVOVEND '+
                     ' FROM   PEDIDO_DEVOLUCAO_VENDA               ';
  QryTemp.Open;

  qr.FieldByName('ID_PEDIDEVOVEND').AsInteger := QryTemp['IDPEDDEVOVEND']+1;
  QryTemp.Close;

  RTIPO.SetFocus;
end;

procedure TFrmPediDevoVend.SB_CONFIRMAClick(Sender: TObject);
var
  ls_QuerStat, ls_Cache: String;
  li_Loop,VNOVOIDITEM,vnumero : Integer;
  lr_ValoVale: Real;
  VLPROD, VLOPE: Real48;
begin

  If edtPesoQuebra.Focused then
    edtPesoQuebraExit(nil);

  If edtCaixAjus.Focused then
    edtCaixAjusExit(nil);

  If edtCaixDevo.Focused then
    edtCaixDevoExit(nil);

  If edtPediVend.Focused then
    edtPediVendExit(nil);

  ActiveControl := Nil;

  if qr.State = dsInsert then
  begin
    ls_QuerStat := 'I';
  end
  else
  begin
    ls_QuerStat := 'E';
  end;

  if mmoPareCome.GetTextLen = 0 then
  begin
    Application.MessageBox(StrAcrEsp('Na aba "Pareceres, descreva o motivo da Devolução.".',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);

    Exit;

  end;

  // Se o foco estiver na query principal
  If TabDetalhe.Showing  then
  begin
    If (DBRPROFISCAL.ItemIndex<>0) and (DBRPROFISCAL.ItemIndex<>1) and (DBRPROFISCAL.ItemIndex<>2)  then
    begin
      Application.MessageBox(StrAcrEsp('Procedimento Fiscal obrigatório.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
      DBRPROFISCAL.SetFocus;
      Exit;
    end;

    if (qr.FieldByName('FL_TRANFISCPEDIDEVOVEND').AsString = 'NFE') and
       (qr.FieldByName('FL_TIPOPEDIDEVOVEND').AsString <> 'T') then
    begin
      Application.MessageBox(StrAcrEsp('Tipo incompatível com Procedimento Fiscal.', nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
      RTIPO.SetFocus;
      Exit;
    end;

    if (qr.FieldByName('FL_TRANFISCPEDIDEVOVEND').AsString <> 'NFC') and
       (edtDocuEntr.Text <> '') then
    begin
      Application.MessageBox(StrAcrEsp('Não deve haver Nota Fiscal de Entrada p/ esse Procedimento Fiscal.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
      DBRPROFISCAL.SetFocus;
      Exit;
    end;

    if (qr.FieldByName('FL_TRANFISCPEDIDEVOVEND').AsString = 'SNF') and
       (qr.FieldByName('FL_TIPOPEDIDEVOVEND').AsString = 'T') then
    begin
      Application.MessageBox(StrAcrEsp('Tipo incompatível com Procedimento Fiscal.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
      RTIPO.SetFocus;
      Exit;
    end;

    IF qr.FieldByName('ID_MOTIDEVOVEND').AsString = '' then
    begin
      Application.MessageBox(StrAcrEsp('Motivo da Devolução Obrigatório.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
      DBCBMotivo.SetFocus;
      Exit;
    end;

    IF DBID_MOTO.Text = '' then
    begin
      Application.MessageBox(StrAcrEsp('Cód. do Motorista Obrigatório.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
      DBID_MOTO.SetFocus;
      Exit;
    end;

    if ls_QuerStat = 'I' then
    begin
      QryTemp.Close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Text :=
         'SELECT ID_PEDIVEND               '+
         '  FROM PEDIDO_DEVOLUCAO_VENDA    '+
         ' WHERE ID_PEDIVEND = :ID_PEDIVEND';
      qryTemp.ParamByName('ID_PEDIVEND').AsInteger := StrToInt(edtPediVend.Text);
      qryTemp.Open;

      if not qryTemp.IsEmpty then
      begin
        QryTemp.Close;
        Application.MessageBox(StrAcrEsp('Já existe devolução para este pedido.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
        edtPediVend.SetFocus;
        Exit;
      end;

      qryTemp.Close;
      qr.FieldByName('ID_USUASIST_CRIAPEDIDEVOVEND').AsInteger := gi_IdenUsua;
      qr.FieldByName('NM_USUACRIAPEDI').AsString               := gs_NomeUsuario;
      qr.FieldByName('DT_CRIAPEDIDEVOVEND').AsDateTime         := DataBanco;
      qr.FieldByName('PC_QUEBPEDIDEVOVEND').AsFloat := 0;
      qr.FieldByName('FX_PEDIDEVOVEND').AsString := 'N';
    end;

    qr.FieldByName('EMPRESA').AsString := gs_Empresa;
    qr.FieldByName('FILIAL').AsInteger := gi_Filial;
    qr.FieldByName('FL_STATPEDIDEVOVEND').AsString := 'AV';
    qr.FieldByName('QN_EMBAPEDIDEVOVEND').AsInteger := 0;
    qr.FieldByName('QN_PESOPEDIDEVOVEND').AsInteger := 0;

    qr.Post;
    Qr.CommitUpdates;
    Qr.ApplyUpdates;

    if ls_QuerStat = 'I' then
    begin
      QrItem.Close;
      QrItem.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr['ID_PEDIDEVOVEND'];
      QrItem.Open;

      QryTemp.Close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Text :=
      'SELECT *                         '+
      '  FROM PEDIDO_VENDA_ITEM         '+
      ' WHERE ID_PEDIVEND = :ID_PEDIVEND ';
      qryTemp.ParamByName('ID_PEDIVEND').AsInteger := StrToInt(edtPediVend.Text);
      qryTemp.Open;

      vnumero:= QryTemp.RecordCount;

      QryTemp2.close;
      QryTemp2.SQL.clear;
      QryTemp2.SQL.Text := ' Select nvl(Max(id_itempedidevovend),0) as IDITEMPEDDEVOVEND '+
                           ' From   pedido_devolucao_venda_item           ';
      QryTemp2.Open;
      VNOVOIDITEM:=QryTemp2['IDITEMPEDDEVOVEND'];
      QryTemp2.CLOSE;

      QryTipoPedVen.Close;
      QryTipoPedVen.ParamByName('ID_PEDIVEND').Value := StrToInt(edtPediVend.Text);
      QryTipoPedVen.Open;


      For li_Loop := 1 to qryTemp.RecordCount do
      begin
        // Itens com caixas ou peso expedido sem valor não são aceitos
        If ((qryTemp.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsInteger <= 0) or (qryTemp.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat <= 0)) and
        (QryTipoPedVen.FieldByName('FL_PNF_DEVOLUCAO').Value = 'N') then
        begin
          qryTemp.Next;
          Continue;
        end;

        INC(VNOVOIDITEM);
        // Criamos o item do Pedido de Venda como item do Pedido de Devolução
        QrItem.Append;
        QrItem['EMPRESA']             := qryTemp['EMPRESA'];
        QrItem['FILIAL']              := qryTemp['FILIAL'];
        QrItem['ID_ITEMPEDIDEVOVEND'] := VNOVOIDITEM;
        QrItem['ID_PEDIDEVOVEND']     := qr['ID_PEDIDEVOVEND'];
        QrItem['ID_MATERIAL']         := qryTemp.FieldByName('ID_MATERIAL').AsInteger;
        QrItem['ID_EMBALAGEM']        := qryTemp.FieldByName('ID_EMBALAGEM').AsInteger;
        QrItem['ID_MATEEMBA']         := qryTemp.FieldByName('ID_MATEEMBA').AsInteger;
        QrItem['ID_MOTIDEVOVEND']     := qr.FieldByName('ID_MOTIDEVOVEND').AsInteger;

        If  qr['FL_TIPOPEDIDEVOVEND'] = 'T'  then
        BEGIN
          QrItem['QN_EMBAITEMPEDIDEVOVEND'] := qryTemp['QN_EMBAEXPEITEMPEDIVEND'];
          QrItem['QN_PESOITEMPEDIDEVOVEND'] := qryTemp['QN_PESOPADREXPEITEMPEDIVEND'];
        END
        ELSE
        BEGIN
          QrItem['QN_EMBAITEMPEDIDEVOVEND'] := 0;
          QrItem['QN_PESOITEMPEDIDEVOVEND'] := 0;
        END;

        QrItem['QN_PESOQUEBITEMPEDIDEVOVEND'] := 0;
        QrItem['QN_EMBAEXPEITEMPEDIDEVOVEND'] := 0;
        QrItem['QN_PSPDEXPEITEMPEDIDEVOVEND'] := 0;
        QrItem['QN_PSREEXPEITEMPEDIDEVOVEND'] := 0;
        QrItem['QN_TRREEXPEITEMPEDIDEVOVEND'] := 0;
        QrItem['QN_EMBAAJUSITEMPEDIDEVOVEND'] := 0;
        QrItem['FX_ITEMPEDIDEVOVEND']         := 'N';
        QrItem.Post;
        qryTemp.Next;
      end;

      QrItem.CommitUpdates;
      QrItem.ApplyUpdates;
      qryTemp.close;
      QrItem.Refresh;

      PageControl1.Pages[0].TabVisible := False;
      PageControl1.Pages[1].TabVisible := False;
      PageControl1.Pages[2].TabVisible := False;
      PageControl1.Pages[3].TabVisible := True;
      PageControl1.Pages[4].TabVisible := True;
      TabItens.Show;
    end;
  end
  Else if TabItens.Showing  then
  begin
    CalculaItens;

    If (edtCaixAjus.Text) = '' then
      QrItem.FieldByName('QN_EMBAAJUSITEMPEDIDEVOVEND').AsInteger := 0;

    If QrItem.FieldByName('ID_PRODMATEEMBA').AsString = '' then
    begin
      Application.MessageBox(StrAcrEsp('O campo Produto necessita ser preenchido.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
      edtCodiMate.SetFocus;
      Exit;
    end;

    if QrItem.FieldByName('VL_VALOOPER').AsFloat < 0 then
    begin
      Application.MessageBox(StrAcrEsp('Preencha algum valor válido para Caixas Devolvidas e/ou Peso Quebra.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
      edtCaixDevo.SetFocus;
      Exit;
    end;

    VLPROD:= QrItem.FieldByName('VL_TOTAPROD').Value;
    VLOPE:= QrItem.FieldByName('VL_VALOOPER').Value;

    if VLOPE > VLPROD then
    begin
      Application.MessageBox(StrAcrEsp('Valor da operação superior ao valor da venda do produto.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
      edtCaixDevo.SetFocus;
      Exit;
    end;

    If QrItem.FieldByName('QN_EMBAEXPEITEMPEDIDEVOVEND').AsInteger + QrItem.FieldByName('QN_EMBAAJUSITEMPEDIDEVOVEND').AsInteger >
       QrItem.FieldByName('QN_EMBAITEMPEDIDEVOVEND').AsInteger  then
    begin
      Application.MessageBox(StrAcrEsp('Caixas lidas + ajuste manual está maior que caixas devolvidas.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
      edtCaixDevo.SetFocus;
      Exit;
    end;

    if qr.FieldByName('FL_STATPEDIDEVOVEND').AsString <> 'AV' then
    begin
      qr.Edit;
      qr.FieldByName('FL_STATPEDIDEVOVEND').AsString := 'AV';
      qr.Post;
    end;

    If not (QrItem.State in [dsInsert, dsEdit]) then
       QrItem.edit;

    QrItem['EMPRESA']          := gs_Empresa;
    QrItem['FILIAL']           := gi_Filial;
    QrItem['ID_PEDIDEVOVEND']  := qr['ID_PEDIDEVOVEND'];

    if QrItem['QN_EMBAEXPEITEMPEDIDEVOVEND'] = Null then
    begin
      QrItem['QN_EMBAEXPEITEMPEDIDEVOVEND']:= 0;
      QrItem['QN_PSPDEXPEITEMPEDIDEVOVEND']:= 0;
      QrItem['QN_PSREEXPEITEMPEDIDEVOVEND']:= 0;
      QrItem['QN_TRREEXPEITEMPEDIDEVOVEND']:= 0;
    end;

    QrItem.Post;
    QrItem.ApplyUpdates;
    QrItem.CommitUpdates;

    PageControl1.Pages[0].TabVisible := True;
    PageControl1.Pages[1].TabVisible := True;
    PageControl1.Pages[2].TabVisible := True;
    PageControl1.Pages[3].TabVisible := True;
    PageControl1.Pages[4].TabVisible := True;

    SB_PRIMEIRO.Enabled:= True;
    SB_ANTERIOR.Enabled:= True;
    SB_PROXIMO.Enabled:= True;
    SB_ULTIMO.Enabled:=  True;
    SB_Novo.Enabled:= True;
    SB_EXCLUI.Enabled:=  True;
    SB_EDIT.Enabled := True;
    SB_CONFIRMA.Enabled:= False;
    SB_Cancel.Enabled:= False;
    Sb_Sair.Enabled:= True;

  end
  Else if TabParecer.Showing  then
  begin

    Application.MessageBox(StrAcrEsp('Selecione a aba Detalhes antes de Salvar as informações.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    Exit;

    If not (Qr.State in [dsInsert, dsEdit]) then
      Qr.Edit;

    Qr.Post;
    Qr.ApplyUpdates;
    Qr.CommitUpdates;

    SB_PRIMEIRO.Enabled:= True;
    SB_ANTERIOR.Enabled:= True;
    SB_PROXIMO.Enabled:= True;
    SB_ULTIMO.Enabled:=  True;
    SB_Novo.Enabled:= True;
    SB_EXCLUI.Enabled:=  True;
    SB_CONFIRMA.Enabled:= False;
    SB_Cancel.Enabled:= False;
    Sb_Sair.Enabled:= True;
    SB_EDIT.Enabled := True;
  end;

end;

procedure TFrmPediDevoVend.SB_CANCELClick(Sender: TObject);
begin
   Qr.CancelUpdates;
   QrItem.CancelUpdates;

   PageControl1.Pages[0].TabVisible := True;
   PageControl1.Pages[1].TabVisible := True;
   PageControl1.Pages[2].TabVisible := True;
   PageControl1.Pages[3].TabVisible := True;
   PageControl1.Pages[4].TabVisible := True;

   SB_PRIMEIRO.Enabled:= True;
   SB_ANTERIOR.Enabled:= True;
   SB_PROXIMO.Enabled:= True;
   SB_ULTIMO.Enabled:= True;
   SB_Novo.Enabled:= True;
   SB_EXCLUI.Enabled:= True;
   SB_CONFIRMA.Enabled:= False;
   SB_Cancel.Enabled:= False;
   Sb_Sair.Enabled:= True;
   SB_EDIT.Enabled := True;
end;


procedure TFrmPediDevoVend.SB_EXCLUIClick(Sender: TObject);
var
  li_Loop: Integer;
begin
  ActiveControl:= Nil;

  if QrID_USUASIST_FECHPEDIDEVOVEND.Value > 0 then
  begin
    Application.MessageBox(StrAcrEsp('Pedido de Devolução já fechado não pode ser excluído.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if not ValidStatu(Self) then
  begin
    Application.MessageBox(StrAcrEsp('Antes de efetuar esta operação, atualize os dados do Pedido de Devolução.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if Application.MessageBox(StrAcrEsp('Confirma a Exclusão?',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_YESNO) = IDYES then
  begin
    QryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Text :=
    'SELECT PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_MATEEMBA                           '+
    '  FROM PEDIDO_DEVOLUCAO_VENDA_ITEM                                       '+
    ' WHERE ( PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_PEDIDEVOVEND = :ID_PEDIDEVOVEND )'+
    '   AND ( PEDIDO_DEVOLUCAO_VENDA_ITEM.QN_EMBAEXPEITEMPEDIDEVOVEND > 0 )   ';
    qryTemp.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr['ID_PEDIDEVOVEND'];
    qryTemp.Open;
    if not qryTemp.IsEmpty then
    begin
      Application.MessageBox(StrAcrEsp('Há itens já processados pela plataforma de expedição.' + #13+#10 + 'Exclusão não permitida.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
      qryTemp.Close;
      Exit;
    end;

    qryTemp.Close;

    QrItem.Close;
    QrItem.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr['ID_PEDIDEVOVEND'];
    QrItem.Open;

    for li_Loop := 1 to QrItem.RecordCount do
    begin
      QrItem.Delete;
    end;

    QrItem.ApplyUpdates;
    QrItem.CommitUpdates;
    qr.Delete;
    qr.ApplyUpdates;
    qr.CommitUpdates;
  end;

  SB_PRIMEIRO.Enabled:= True;
  SB_ANTERIOR.Enabled:= True;
  SB_PROXIMO.Enabled:= True;
  SB_ULTIMO.Enabled:= True;
  SB_Novo.Enabled:= True;
  SB_EXCLUI.Enabled:= True;
  SB_CONFIRMA.Enabled:= False;
  SB_Cancel.Enabled:= False;
  Sb_Sair.Enabled:= True;
  SB_EDIT.Enabled := True;
end;

procedure TFrmPediDevoVend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPediDevoVend:=nil;
//  FrmPrincipal.VEN017.Enabled:= True;
  FrmPrincipal.ACVEN072.Enabled:= True;
  Action:=caFree;
end;


procedure TFrmPediDevoVend.SB_EDITClick(Sender: TObject);
Begin
  If Qr.IsEmpty then
  begin
    Application.MessageBox(StrAcrEsp('Nenhum registro foi selecionado.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  IF  (QrFL_STATPEDIDEVOVEND.Value = 'FE') then
  BEGIN
    Application.MessageBox(StrAcrEsp('Tipo de devolução não permite alteração.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    Exit;
  END
  ELSE
  BEGIN
    QrItem.Edit;
    SB_PRIMEIRO.Enabled:= False;
    SB_ANTERIOR.Enabled:= False;
    SB_PROXIMO.Enabled:= False;
    SB_ULTIMO.Enabled:=  False;
    SB_Novo.Enabled:= False;
    SB_EXCLUI.Enabled:= False;
    SB_CONFIRMA.Enabled:= True;
    SB_Cancel.Enabled:= True;
    Sb_Sair.Enabled:= False;
    SB_EDIT.Enabled := False;
  END;
END;

procedure TFrmPediDevoVend.LCamposClick(Sender: TObject);
begin
  SELPE:=0;

  CASE LCAMPOS.ItemIndex OF
    1:    SELPE := 1;
    2..3: SELPE := 2;
    5:    SELPE := 5;
    7..8: SELPE := 2;
    12:   SELPE := 12;
    17:   SELPE := 17;
  END;

  IF SELPE > 0 then
    BPESQ.Visible:=TRUE
  else
    BPESQ.Visible:=False;

end;

procedure TFrmPediDevoVend.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmPediDevoVend.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmPediDevoVend.BtIncluirClick(Sender: TObject);
var
  Vre,VA,Vlinha:String;
  Vcampos,FA,FO:integer;
begin
  If EdExpre.Text<>'' then
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

    If LCampos.itemindex = -1 then
      Vcampos:=0
    else
      Vcampos:=LCampos.itemindex;

     If RGeou.ItemIndex=0  then
        Vre:= Vre + '(' ;

    Case LCampos.itemindex of
      0 :Vre:=Vre + 'PEDIDO_DEVOLUCAO_VENDA.NR_DOCUENTRPEDIDEVOVEND';
      1 :Vre:=Vre + 'CLIENTE.ID_CLIENTE';
      2 :Vre:=Vre + 'TRUNC(PEDIDO_VENDA.DT_ENTRPEDIVEND)';
      3 :Vre:=Vre + 'TRUNC(PEDIDO_VENDA.DT_PEDIVEND)';
      4 :Vre:=Vre + 'PEDIDO_DEVOLUCAO_VENDA.ID_PEDIVEND';
      5 :Vre:=Vre + 'VENDEDOR.ID_VENDEDOR';
      6 :Vre:=Vre + 'EXPEDICAO_CARGA.ID_CARGEXPE';
      7 :Vre:=Vre + 'TRUNC(PEDIDO_VENDA.DT_FATUPEDIVEND)';
      8 :Vre:=Vre + 'TRUNC(PEDIDO_DEVOLUCAO_VENDA.DT_PEDIDEVOVEND)';
      9 :Vre:=Vre + 'PEDIDO_DEVOLUCAO_VENDA.ID_MOTOTRAN';
      10:Vre:=Vre + 'NOTA_FISCAL.NR_NOTAFISC';
      11:Vre:=Vre + 'PEDIDO_DEVOLUCAO_VENDA.ID_PEDIDEVOVEND';
      12:Vre:=Vre + 'TRANSPORTADOR_VEICULO.GN_PLACVEICTRAN';
      13:Vre:=Vre + 'PEDIDO_DEVOLUCAO_VENDA.FL_TRANFISCPEDIDEVOVEND';
      14:Vre:=Vre + 'PEDIDO_DEVOLUCAO_VENDA.FL_STATPEDIDEVOVEND';
      15:Vre:=Vre + 'PEDIDO_DEVOLUCAO_VENDA.FL_TIPOPEDIDEVOVEND';
      16:Vre:=Vre + 'NVL(PEDIDO_DEVOLUCAO_VENDA.FL_FRETEPG,''N'')';
      17:Vre:=Vre + 'PEDIDO_DEVOLUCAO_VENDA.ID_MOTIDEVOVEND';
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
      0:Vre:=Vre + '''';
      2..3:Vre:=Vre + 'TO_DATE(''';
      7..8:Vre:=Vre + 'TO_DATE(''';
      12..16:Vre:=Vre + '''';
    end;

   If CBCond.ItemIndex=6 then
     Vre:=Vre + '%';

     Vre:= Vre + UpperCase(Edexpre.text);

   If CBCond.ItemIndex=6 then
     Vre:=Vre + '%';

    Case LCampos.itemindex of
      0:Vre:=Vre + '''';
      2..3:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY''' +')';
      7..8:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY''' +')';
      12..16:Vre:= Vre + '''';
    end;

     Vre:=Vre+')';

     MResul.Lines.Add(Vre);

     EdExpre.Text :='';
     BtIncluir.Enabled:=false;

  end;

  BtAtivar.SetFocus;

end;

procedure TFrmPediDevoVend.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin
  Screen.Cursor := crSQLWait;
  Qr.Close;
  Qr.SQL.Clear;
  Qr.SQL.Text := 'SELECT PEDIDO_DEVOLUCAO_VENDA.EMPRESA, PEDIDO_DEVOLUCAO_VENDA.FILIAL, PEDIDO_DEVOLUCAO_VENDA.ID_PEDIDEVOVEND, '+
                 'PEDIDO_DEVOLUCAO_VENDA.ID_PEDIVEND, PEDIDO_DEVOLUCAO_VENDA.ID_MOTIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.ID_MOTOTRAN, '+
                 'PEDIDO_DEVOLUCAO_VENDA.ID_USUASIST_CRIAPEDIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.ID_USUASIST_ABEXPEPEDIDEVOVEND, '+
                 'PEDIDO_DEVOLUCAO_VENDA.ID_USUASIST_FCEXPEPEDIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.ID_USUASIST_FECHPEDIDEVOVEND, '+
                 'PEDIDO_DEVOLUCAO_VENDA.DT_PEDIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.DT_CRIAPEDIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.DT_ABEREXPEPEDIDEVOVEND, '+
                 'PEDIDO_DEVOLUCAO_VENDA.DT_FECHEXPEPEDIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.DT_FECHPEDIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.NR_DOCUENTRPEDIDEVOVEND, '+
                 'PEDIDO_DEVOLUCAO_VENDA.QN_EMBAPEDIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.QN_PESOPEDIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.PC_QUEBPEDIDEVOVEND, '+
                 'PEDIDO_DEVOLUCAO_VENDA.FL_TIPOPEDIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.FL_TRANFISCPEDIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.FL_STATPEDIDEVOVEND, '+
                 'PEDIDO_DEVOLUCAO_VENDA.GN_PARECOMEPEDIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.GN_PAREFINAPEDIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.GN_PAREEXPEPEDIDEVOVEND, '+
                 'PEDIDO_DEVOLUCAO_VENDA.GN_OBSEPEDIDEVOVEND, PEDIDO_DEVOLUCAO_VENDA.FX_PEDIDEVOVEND, PEDIDO_VENDA.ID_CARGEXPE, PEDIDO_VENDA.DT_PEDIVEND, '+
                 'PEDIDO_VENDA.DT_ENTRPEDIVEND, PEDIDO_VENDA.DT_FATUPEDIVEND, CLIENTE.ID_CLIENTE, CLIENTE.NM_CLIENTE, CLIENTE.NM_FANTCLIE, '+
                 'CLIENTE.NR_FONECLIE, TRANSPORTADOR_VEICULO.GN_PLACVEICTRAN, TRANSPORTADOR_MOTORISTA.NM_MOTOTRAN, NOTA_FISCAL.ID_NOTAFISC, '+
                 'VENDEDOR.ID_VENDEDOR, VENDEDOR.NM_VENDEDOR, VENDEDOR.NR_FONEVEND, SISTEMA_USUARIO_A.NM_REDUUSUASIST AS NM_USUACRIAPEDI, '+
                 'SISTEMA_USUARIO_B.NOME_USUARIO AS NM_USUAABREEXPE, SISTEMA_USUARIO_C.NOME_USUARIO AS NM_USUAFECHEXPE, '+
                 'SISTEMA_USUARIO_D.NOME_USUARIO AS NM_USUAFECHPEDI, PEDIDO_DEVOLUCAO_VENDA.FL_FRETEPG, PEDIDO_DEVOLUCAO_VENDA.COD_FRETEPG, '+
                 'PEDIDO_DEVOLUCAO_VENDA.NM__FRETEPG, NOTA_FISCAL.NR_NOTAFISC, DIGITADOR.NM_REDUUSUASIST '+
                 'FROM PEDIDO_DEVOLUCAO_VENDA, PEDIDO_VENDA, CLIENTE, CLIENTE_GRUPO, CLIENTE_ENDERECO, BAIRRO, CIDADE, ESTADO, PAIS, EXPEDICAO_CARGA, '+
                 'FORNECEDOR, TRANSPORTADOR_VEICULO, TRANSPORTADOR_MOTORISTA, PEDIDO_VENDA_NOTA_FISCAL, NOTA_FISCAL, NOTA_FISCAL_SERIE NOTA_FISCAL_SERIE_A, '+
                 'NOTA_FISCAL_SERIE NOTA_FISCAL_SERIE_B, PEDIDO_VENDA_TIPO, VENDEDOR, SISTEMA_USUARIO SISTEMA_USUARIO_A, SCT_USUARIO SISTEMA_USUARIO_B, '+
                 'SCT_USUARIO SISTEMA_USUARIO_C, SCT_USUARIO SISTEMA_USUARIO_D, SISTEMA_USUARIO DIGITADOR '+
                 'WHERE ( PEDIDO_DEVOLUCAO_VENDA.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND ) AND ( PEDIDO_DEVOLUCAO_VENDA.FILIAL = ' + inttoStr( gi_filial ) +' ) '+
                 'AND ( PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE ) AND ( CLIENTE.ID_GRUPCLIE = CLIENTE_GRUPO.ID_GRUPCLIE (+)) '+
                 'AND ( PEDIDO_VENDA.ID_ENDECLIE_ENTREGA = CLIENTE_ENDERECO.ID_ENDECLIE ) AND ( CLIENTE_ENDERECO.ID_BAIRRO = BAIRRO.ID_BAIRRO ) '+
                 'AND ( BAIRRO.ID_CIDADE = CIDADE.ID_CIDADE ) AND ( CIDADE.ID_ESTADO = ESTADO.ID_ESTADO ) '+
                 'AND ( ESTADO.ID_PAIS = PAIS.ID_PAIS ) AND ( PEDIDO_VENDA.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE ) '+
                 'AND ( Expedicao_carga.id_itemprogcami = Fornecedor.ID_FORNECEDOR) AND ( Transportador_veiculo.ID_FORNECEDOR_TRANSPORTADOR = Fornecedor.ID_FORNECEDOR) '+
                 'AND ( Expedicao_carga.gn_placveictran = Transportador_veiculo.gn_placveictran(+))'+
                 'AND ( PEDIDO_DEVOLUCAO_VENDA.ID_MOTOTRAN = TRANSPORTADOR_MOTORISTA.ID_MOTOTRAN(+) ) '+
                 'AND ( pedido_venda.id_pedivend = pedido_venda_nota_fiscal.id_pedivend (+)) '+
                 'AND ( pedido_venda_nota_fiscal.id_notafisc = nota_fiscal.id_notafisc (+)) '+
                 'AND ( nota_fiscal.sg_serinotafisc_notafisc = nota_fiscal_serie_a.sg_serinotafisc (+)) '+
                 'AND ( PEDIDO_VENDA.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND )AND ( PEDIDO_VENDA_TIPO.ID_SERINOTAFISC = NOTA_FISCAL_SERIE_B.ID_SERINOTAFISC ) '+
                 'AND ( PEDIDO_VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR ) AND ( PEDIDO_DEVOLUCAO_VENDA.ID_USUASIST_CRIAPEDIDEVOVEND = SISTEMA_USUARIO_A.id_usuario (+))  '+
                 'AND ( pedido_devolucao_venda.id_usuasist_abexpepedidevovend = sistema_usuario_b.id_usuario (+))'+
                 'AND ( pedido_devolucao_venda.id_usuasist_fcexpepedidevovend = sistema_usuario_c.id_usuario (+))'+
                 'AND ( pedido_devolucao_venda.id_usuasist_fechpedidevovend = sistema_usuario_d.id_usuario (+)) ' +
                 'AND ( PEDIDO_VENDA.ID_USUASIST_DIGIPEDIVEND = DIGITADOR.ID_USUASIST)' ;

  XTM:=MResul.Lines.Count;
  If XTM >0 then
    begin
     Qr.SQL.Add(' And ');
     Qr.SQL.Add(MResul.Text);
    end
  ELSE
  begin
    Screen.Cursor := crDefault;

    if Application.MessageBox(StrAcrEsp('Exibir listagem sem filtro?',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_YESNO) = IDNO then
      exit
    Else
      Screen.Cursor := crSQLWait;
  end;

  Qr.SQL.Add('ORDER BY PEDIDO_DEVOLUCAO_VENDA.ID_PEDIDEVOVEND DESC');
  Qr.Open;
  QrItem.Open;
  QrMotiDevo.Open;
  PageControl1.Pages[1].Show;
  Screen.Cursor := crDefault;
  PageControl1.Pages[1].TabVisible := True;
  PageControl1.Pages[2].TabVisible := True;
  PageControl1.Pages[3].TabVisible := True;
  PageControl1.Pages[4].TabVisible := True;
  SB_PRIMEIRO.Enabled:= true;
  SB_ANTERIOR.Enabled:= true;
  SB_PROXIMO.Enabled:= true;
  SB_ULTIMO.Enabled:= true;
  SB_NOVO.Enabled:= true;
  SB_EXCLUI.Enabled:= true;
  SB_EDIT.Enabled := True;
  SB_CONFIRMA.Enabled:= false;
  SB_Cancel.Enabled:= false;
  Sb_Sair.Enabled:= true;
  SBDiversos.Enabled:= true;
  sb_Imp.Enabled:= true;

end;

procedure TFrmPediDevoVend.BPESQClick(Sender: TObject);
begin
  XRPM:=2;
  FrmOriPesq:=170;

  CASE SELPE OF
    1:BEGIN
      FrmPesqCliente:=TFrmPesqCliente.Create(Self);
      FrmPesqCliente.ShowModal;
    END;

    2:BEGIN
      Cria_FrmSelData(Vdtstr);
      EdExpre.text:= Vdtstr;
      if (EdExpre.Text <> '') then
        BtIncluir.SetFocus;
    END;

    5:BEGIN
      FrmPesqVend:=TFrmPesqVend.Create(Self);
      FrmPesqVend.Show;
    END;

    12:BEGIN
      FrmPesqCaminhao:= TFrmPesqCaminhao.Create(Self);
      FrmPesqCaminhao.Show;
    END;

    17:BEGIN
      Application.CreateForm(TFrmSelMotDev, FrmSelMotDev);
      if FrmSelMotDev.ShowModal = mrOK then
      begin
        EdExpre.text:= FrmSelMotDev.qrMotDevID_MOTIDEVOVEND.Text;
      end;
      FrmSelMotDev.Free;
    END;
  end;

  BPESQ.Visible:=FALSE;
end;

procedure TFrmPediDevoVend.BPesqMateClick(Sender: TObject);
begin
  FrmOriPesq:=2;
  FrmPesqMatEmba:=TFrmPesqMatEmba.Create(Self);
  FrmPesqMatEmba.ShowModal;
end;

procedure TFrmPediDevoVend.edtCodiMateExit(Sender: TObject);
begin

  if not (QrItem.State in [dsEdit, dsInsert]) then
  begin
    Exit
  end;

  if edtCodiMate.Text = '' then
  begin
    QrItem['NM_PRODMATEEMBA']             := Null;
    QrItem['QN_EMBAEXPEITEMPEDIDEVOVEND'] := Null;
    QrItem['QN_PSPDEXPEITEMPEDIDEVOVEND'] := Null;
    QrItem['VL_UNITITEMPEDIVEND']         := Null;
    QrItem['QN_EMBAITEMPEDIDEVOVEND']     := Null;
    QrItem['QN_PESOQUEBITEMPEDIDEVOVEND'] := Null;
    CalculaItens;
    Exit;
  end;

  qryTemp.Close;
  QryTemp.SQL.Clear;
  qryTemp.SQL.Text :=
  'SELECT Pedido_venda_item.ID_MATERIAL, Pedido_venda_item.ID_EMBALAGEM, Pedido_venda_item.ID_MATEEMBA, '+
  'Pedido_venda_item.QN_EMBAEXPEITEMPEDIVEND, Pedido_venda_item.QN_PESOPADREXPEITEMPEDIVEND, '+
  'Pedido_venda_item.VL_UNITITEMPEDIVEND, Material_embalagem.ID_PRODMATEEMBA, Material_embalagem.NM_PRODMATEEMBA '+
  'FROM PEDIDO_DEVOLUCAO_VENDA Pedido_devolucao_venda, PEDIDO_VENDA_ITEM Pedido_venda_item, MATERIAL_EMBALAGEM Material_embalagem '+
  'WHERE (Pedido_venda_item.ID_PEDIVEND = Pedido_devolucao_venda.ID_PEDIVEND)             '+
  'AND (Pedido_venda_item.ID_MATEEMBA = Material_embalagem.ID_MATEEMBA) '+
  'AND NOT EXISTS(SELECT PDVI.ID_MATEEMBA '+
  '               FROM Pedido_devolucao_venda_item PDVI, Pedido_devolucao_venda PDV '+
  '               WHERE (PDV.ID_PEDIDEVOVEND = PDVI.ID_PEDIDEVOVEND) AND (PDVI.ID_MATEEMBA = Pedido_venda_item.ID_MATEEMBA) '+
  '                       AND (PDV.ID_PEDIDEVOVEND = Pedido_devolucao_venda.ID_PEDIDEVOVEND))'+
  'AND ((Pedido_devolucao_venda.ID_PEDIDEVOVEND = :ID_PEDIDEVOVEND) AND (Material_embalagem.ID_PRODMATEEMBA = :ID_PRODMATEEMBA)) ';

  qryTemp.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr.FieldByName('ID_PEDIDEVOVEND').AsInteger;
  qryTemp.ParamByName('ID_PRODMATEEMBA').AsInteger := StrToInt(edtCodiMate.Text);
  qryTemp.Open;

  if qryTemp.IsEmpty then
  begin
    Application.MessageBox(StrAcrEsp('Produto não existe ou indisponível p/ devolução.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    edtCodiMate.SetFocus;
    qryTemp.Close;
    Exit;
  end;

  QrItem.FieldByName('ID_MATERIAL').AsInteger                := qryTemp.FieldByName('ID_MATERIAL').AsInteger;
  qrItem.FieldByName('ID_EMBALAGEM').AsInteger              := qryTemp.FieldByName('ID_EMBALAGEM').AsInteger;
  qrItem.FieldByName('ID_MATEEMBA').AsInteger               := qryTemp.FieldByName('ID_MATEEMBA').AsInteger;
  qrItem.FieldByName('ID_PRODMATEEMBA').AsString            := qryTemp.FieldByName('ID_PRODMATEEMBA').AsString;
  qrItem.FieldByName('NM_PRODMATEEMBA').AsString            := qryTemp.FieldByName('NM_PRODMATEEMBA').AsString;
  qrItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsInteger   := qryTemp.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsInteger;
  qrItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat := qryTemp.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat;
  qrItem.FieldByName('VL_UNITITEMPEDIVEND').AsFloat         := qryTemp.FieldByName('VL_UNITITEMPEDIVEND').AsFloat;

  if (qrItem.FieldByName('QN_EMBAITEMPEDIDEVOVEND').AsInteger = 0) and
     (qrItem.FieldByName('QN_PESOQUEBITEMPEDIDEVOVEND').AsFloat   = 0) then
  begin
    qrItem.FieldByName('QN_EMBAITEMPEDIDEVOVEND').AsInteger := qryTemp.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsInteger;
    qrItem.FieldByName('QN_PESOQUEBITEMPEDIDEVOVEND').AsFloat   := 0;
  end;

  CalculaItens;
  qryTemp.Close;

end;

Function TFrmPediDevoVend.DataBanco: TDateTime;
begin
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := ' Select sysdate  from  dual ';
  qryTemp.Open;

  if not(qryTemp.IsEmpty) then
  begin
    Result := qryTemp.FieldByName('SYSDATE').AsDateTime;
  end;

end;

Function TFrmPediDevoVend.ValidStatu(Sender: TObject): Boolean;
begin
  qryTemp.CLOSE;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text :=
  'SELECT FL_STATPEDIDEVOVEND                 '+
  '  FROM PEDIDO_DEVOLUCAO_VENDA              '+
  ' WHERE (ID_PEDIDEVOVEND = :ID_PEDIDEVOVEND)';
  qryTemp.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr['ID_PEDIDEVOVEND'];
  qryTemp.Open;

  if qryTemp['FL_STATPEDIDEVOVEND'] <> qr['FL_STATPEDIDEVOVEND'] then
  begin
    Result := False;
  end
  else
  begin
    Result := True;
  end;

  qryTemp.Close;

end;


procedure TFrmPediDevoVend.edtPediVendExit(Sender: TObject);
begin
  if not (qr.State in [dsEdit, dsInsert]) then
  begin
    Exit;
  end;

  if edtPediVend.Text = '' then
  begin
    qr['GN_PLACVEICTRAN'] := Null;
    qr['ID_CARGEXPE']     := Null;
    qr['DT_PEDIVEND']     := Null;
    qr['DT_ENTRPEDIVEND'] := Null;
    qr['DT_FATUPEDIVEND'] := Null;
    qr['ID_CLIENTE']      := Null;
    qr['NM_CLIENTE']      := Null;
    qr['NM_FANTCLIE']     := Null;
    qr['NR_FONECLIE']     := Null;
    qr['ID_VENDEDOR']     := Null;
    qr['NM_VENDEDOR']     := Null;
    qr['NR_FONEVEND']     := Null;
    qr['ID_NOTAFISC']     := Null;
    Exit;
  end;

  qryDeta.Close;
  qryDeta.ParamByName('ID_PEDIVEND').AsInteger := qr.FieldByName('ID_PEDIVEND').AsInteger;
  qryDeta.Open;

  if qryDeta.IsEmpty then
  begin
    Application.MessageBox(StrAcrEsp('Pedido não encontrado.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    edtPediVend.SetFocus;
    Exit;
  end;

  if (qryDeta.FieldByName('FL_BLOQAJUSFINAPEDIVEND').AsString = 'S') then
  begin
    if Application.MessageBox(StrAcrEsp('Pedido já bloqueado, confirma gerar devolução sem alterar o valor Financeiro?',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_YESNO) = IDNO then
    begin
      edtPediVend.SetFocus;
      exit;
    end
    else
      VSEMFINAN:= True;
  end;

  if edtDocuSaid.Text <> '' then
  begin
    if Application.MessageBox(StrAcrEsp('Confirma Nota Fiscal de Saída?',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_YESNO) = IDNO then
    begin
      edtPediVend.SetFocus;
      exit;
    end;
  end;

  qr['GN_PLACVEICTRAN'] := qryDeta['GN_PLACVEICTRAN'];
  qr['ID_CARGEXPE']     := qryDeta['ID_CARGEXPE']    ;
  qr['DT_PEDIVEND']     := qryDeta['DT_PEDIVEND']    ;
  qr['DT_ENTRPEDIVEND'] := qryDeta['DT_ENTRPEDIVEND'];
  qr['DT_FATUPEDIVEND'] := qryDeta['DT_FATUPEDIVEND'];
  qr['ID_CLIENTE']      := qryDeta['ID_CLIENTE']     ;
  qr['NM_CLIENTE']      := qryDeta['NM_CLIENTE']     ;
  qr['NM_FANTCLIE']     := qryDeta['NM_FANTCLIE']    ;
  qr['NR_FONECLIE']     := qryDeta['NR_FONECLIE']    ;
  qr['ID_VENDEDOR']     := qryDeta['ID_VENDEDOR']    ;
  qr['NM_VENDEDOR']     := qryDeta['NM_VENDEDOR']    ;
  qr['NR_FONEVEND']     := qryDeta['NR_FONEVEND']    ;
  qr['ID_NOTAFISC']     := qryDeta['ID_NOTAFISC']    ;
  qr['ID_MOTOTRAN']     := qryDeta['id_mototran']    ;
  qr['NM_MOTOTRAN']     := qryDeta['nm_mototran']    ;
  qr['NR_NOTAFISC']     := qryDeta['NR_NOTAFISC']    ;
end;

procedure TFrmPediDevoVend.SBDiversosClick(Sender: TObject);
begin
 pm1.Popup(445,88);
end;

procedure TFrmPediDevoVend.mniValidarClick(Sender: TObject);
var
  li_Loop: Integer;
  lb_DevoTota: Boolean;
  ls_Cache: String;
begin
  if Application.MessageBox(StrAcrEsp('Os itens sem devolução e quebra serão apagados. Confirma validação?',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_YESNO) = IDNO then
  begin
    Exit;
  end;

  qryTotaDevo.Close;
  qryTotaDevo.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr['ID_PEDIDEVOVEND'];
  qryTotaDevo.Open;

  if qryTotaDevo.FieldByName('VL_TOTADEVO').AsFloat = 0 then
  begin
    Application.MessageBox(StrAcrEsp('Não há valores de devolução/quebra para os itens.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  lb_DevoTota := True;

  QrItem.Close;
  QrItem.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr['ID_PEDIDEVOVEND'];
  QrItem.Open;
  QrItem.First;

  for li_Loop := 1 to QrItem.RecordCount do
  begin
    if (QrItem.FieldByName('VL_VALOOPER').AsFloat) <>
       (QrItem.FieldByName('VL_TOTAPROD').AsFloat) then
    begin
      lb_DevoTota := False;
    end;

    if (QrItem.FieldByName('QN_EMBAITEMPEDIDEVOVEND').AsInteger = 0) and
       ((QrItem.FieldByName('QN_PESOQUEBITEMPEDIDEVOVEND').AsFloat) = 0) then
    begin
      QrItem.Delete;
      ls_Cache := 'Form-Iten';
    end;

    if (QrItem.FieldByName('QN_EMBAITEMPEDIDEVOVEND').AsInteger <> 0) and
       (QrItem['ID_MOTIDEVOVEND'] = Null) then
    begin
      Application.MessageBox(StrAcrEsp('Há itens devolvidos sem motivo. Por favor, corrija.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
      Exit;
    end;

    QrItem.Next;
  end;

  if lb_DevoTota then
  begin
    qryTemp.Close;
    QryTemp.SQL.Clear;
    qryTemp.SQL.Text :=
    'SELECT Pedido_venda_item.QN_EMBAEXPEITEMPEDIVEND, Material_embalagem.ID_PRODMATEEMBA, Material_embalagem.NM_PRODMATEEMBA '+
    'FROM PEDIDO_DEVOLUCAO_VENDA Pedido_devolucao_venda, PEDIDO_VENDA_ITEM Pedido_venda_item, MATERIAL_EMBALAGEM Material_embalagem '+
    'WHERE (Pedido_venda_item.ID_PEDIVEND = Pedido_devolucao_venda.ID_PEDIVEND)             '+
    'AND (Pedido_venda_item.ID_MATEEMBA = Material_embalagem.ID_MATEEMBA) '+
    'AND NOT EXISTS(SELECT PDVI.ID_MATEEMBA '+
    '               FROM Pedido_devolucao_venda_item PDVI, Pedido_devolucao_venda PDV '+
    '               WHERE (PDV.ID_PEDIDEVOVEND = PDVI.ID_PEDIDEVOVEND)                   '+
    '               AND (PDVI.ID_MATEEMBA = Pedido_venda_item.ID_MATEEMBA) AND (PDV.ID_PEDIDEVOVEND = Pedido_devolucao_venda.ID_PEDIDEVOVEND))'+
    'AND ((Pedido_devolucao_venda.ID_PEDIDEVOVEND = :ID_PEDIDEVOVEND))';
    qryTemp.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr.FieldByName('ID_PEDIDEVOVEND').AsInteger;
    qryTemp.Open;

    if qryTemp.RecordCount > 0 then
    begin
      lb_DevoTota := False;
    end;

    qryTemp.Close;
  end;

  if (lb_DevoTota) and (qr['FL_TIPOPEDIDEVOVEND'] <> 'T') then
  begin
    Application.MessageBox(StrAcrEsp('Tipo de operação "PARCIAL" incompatível com os itens.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    tabDetalhe.Show;
    RTIPO.SetFocus;
    Exit;
  end;

  if (not lb_DevoTota) and (qr['FL_TIPOPEDIDEVOVEND'] <> 'P') then
  begin
    Application.MessageBox(StrAcrEsp('Tipo de operação "TOTAL" incompatível com os itens.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    tabDetalhe.Show;
    RTIPO.SetFocus;
    Exit;
  end;

  qr.Edit;

  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text :=
  'SELECT PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_MATEEMBA '+
  'FROM PEDIDO_DEVOLUCAO_VENDA_ITEM '+
  'WHERE ( PEDIDO_DEVOLUCAO_VENDA_ITEM.QN_EMBAITEMPEDIDEVOVEND <> PEDIDO_DEVOLUCAO_VENDA_ITEM.QN_EMBAEXPEITEMPEDIDEVOVEND + PEDIDO_DEVOLUCAO_VENDA_ITEM.QN_EMBAAJUSITEMPEDIDEVOVEND )'+
  ' AND ( PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_PEDIDEVOVEND = :ID_PEDIDEVOVEND )';
  qryTemp.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr['ID_PEDIDEVOVEND'];
  qryTemp.Open;

  if qryTemp.RecordCount = 0 then
  begin
    if (qr.FieldByName('FL_TRANFISCPEDIDEVOVEND').AsString = 'NFC') and (edtDocuEntr.Text = '') then
    begin
      qr.FieldByName('FL_STATPEDIDEVOVEND').AsString := 'AD';
    end
    else
    begin
      qr.FieldByName('FL_STATPEDIDEVOVEND').AsString := 'BQ';
    end;

    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Text := 'SELECT ID_IDENPEDIDEVOVEND '+
    'FROM PEDIDO_DEVOLUCAO_VENDA_IDEN                                      '+
    'WHERE(PEDIDO_DEVOLUCAO_VENDA_IDEN.ID_PEDIDEVOVEND = :ID_PEDIDEVOVEND ) ';

    qryTemp.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr['ID_PEDIDEVOVEND'];
    qryTemp.Open;

    if qryTemp.RecordCount > 0 then
    begin
      qr.FieldByName('FL_STATPEDIDEVOVEND').AsString := 'SP';
    end;
    qryTemp.Close;
  end
  else
  begin
    if qr['ID_USUASIST_ABEXPEPEDIDEVOVEND'] <> Null then
    begin
      qr.FieldByName('FL_STATPEDIDEVOVEND').AsString := 'SP';
    end
    else
    begin
      qr.FieldByName('FL_STATPEDIDEVOVEND').AsString := 'AB';
    end;
  end;

  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text :=
  'SELECT SUM(PEDIDO_DEVOLUCAO_VENDA_ITEM.QN_PESOQUEBITEMPEDIDEVOVEND) /                                              '+
  '       (SUM(PEDIDO_VENDA_ITEM.QN_PESOPADREXPEITEMPEDIVEND) -                                                       '+
  '        SUM(PEDIDO_DEVOLUCAO_VENDA_ITEM.QN_PESOITEMPEDIDEVOVEND)) * 100 PC_QUEBRA                                  '+
  '  FROM PEDIDO_VENDA,                                                                                               '+
  '       PEDIDO_DEVOLUCAO_VENDA,                                                                                     '+
  '       PEDIDO_VENDA_ITEM,                                                                                          '+
  '       PEDIDO_DEVOLUCAO_VENDA_ITEM                                                                                 '+
  ' WHERE ( PEDIDO_DEVOLUCAO_VENDA.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND )                                           '+
  '   AND ( PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND )                                                '+
  '   AND ( PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_PEDIDEVOVEND = PEDIDO_DEVOLUCAO_VENDA.ID_PEDIDEVOVEND )                    '+
  '   AND ( PEDIDO_VENDA_ITEM.ID_MATEEMBA = PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_MATEEMBA )                                 '+
  '   AND ( PEDIDO_DEVOLUCAO_VENDA_ITEM.QN_PESOITEMPEDIDEVOVEND - PEDIDO_VENDA_ITEM.QN_PESOPADREXPEITEMPEDIVEND <> 0 )'+
  '   AND (( PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_PEDIDEVOVEND = :ID_PEDIDEVOVEND ))                                        ';
  qryTemp.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr['ID_PEDIDEVOVEND'];
  qryTemp.Open;

  qr['PC_QUEBPEDIDEVOVEND'] := qryTemp.FieldByName('PC_QUEBRA').AsFloat;
  qr['QN_EMBAPEDIDEVOVEND'] := qryTotaDevo.FieldByName('QN_TOTACAIX').AsInteger;
  qr['QN_PESOPEDIDEVOVEND'] := qryTotaDevo.FieldByName('QN_TOTAPESO').AsFloat;

  qryTemp.Close;
  qr.Post;
  Qr.ApplyUpdates;
  Qr.CommitUpdates;

  SB_PRIMEIRO.Enabled:= True;
  SB_ANTERIOR.Enabled:= True;
  SB_PROXIMO.Enabled:= True;
  SB_ULTIMO.Enabled:=  True;
  SB_Novo.Enabled:= True;
  SB_EXCLUI.Enabled:= True;
  SB_CONFIRMA.Enabled:= False;
  SB_Cancel.Enabled:= False;
  Sb_Sair.Enabled:= True;
  SB_EDIT.Enabled := False;

  mniValidar.Enabled := False;

  PageControl1.Pages[0].TabVisible := True;
  PageControl1.Pages[1].TabVisible := True;
  PageControl1.Pages[2].TabVisible := True;
  PageControl1.Pages[3].TabVisible := True;
  PageControl1.Pages[4].TabVisible := True;

end;

procedure TFrmPediDevoVend.FormShow(Sender: TObject);
begin
  qry_Parametro.Close;
  qry_Parametro.Open;
  TipoExpedicao := qry_ParametroTIPO_EXP_CARGA_PEDIDO.Value;

  IF LCAMPOS.Items.Count=0 then
  BEGIN
    With LCampos.Items do
    begin
      Add('Nota Fiscal de Entrada');
      Add('Código do Cliente');
      Add('Data da Entrega');
      Add('Data do Pedido');
      Add('Número do Pedido de Venda');
      Add('Código do Vendedor');
      Add('Número da Carga');
      Add('Data do Faturamento');
      Add('Data da Devolução');
      Add('Código do Motorista');
      Add('Número da Nota Fiscal');
      Add('Número do Pedido de Devolução');
      Add('Placa do Caminhão');
      Add('Procedimento Fiscal (NFC/NFE/SNF)');
      Add('Status da Devolução');
      Add('Tipo da Devolução (T/P)');
      Add('Frete Pago (S/N)');
      Add('Motivo Devolução');
    end;
  END;

  PageControl1.Pages[1].TabVisible:=false;
  PageControl1.Pages[2].TabVisible:=false;
  PageControl1.Pages[3].TabVisible:=false;
  PageControl1.Pages[4].TabVisible:=false;

end;

procedure TFrmPediDevoVend.FormDestroy(Sender: TObject);
begin
  FrmPediDevoVend:=Nil;
end;

procedure TFrmPediDevoVend.edtCaixDevoExit(Sender: TObject);
begin
  CalculaItens;
end;

procedure TFrmPediDevoVend.CalculaItens;
var
  lr_PesoCaix: Real;
begin
  if not (qrItem.State in [dsInsert, dsEdit]) then
  begin
    Exit;
  end;

  if qrItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsInteger > 0 then
  begin
    lr_PesoCaix := qrItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat / qrItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsInteger;
  end
  else
  begin
    lr_PesoCaix := 0;
  end;

  qrItem.FieldByName('VL_TOTAPROD').AsFloat := (qrItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat *
                                                       qrItem.FieldByName('VL_UNITITEMPEDIVEND').AsFloat);

  If qrItem.FieldByName('QN_EMBAITEMPEDIDEVOVEND').AsInteger <> qrItem.FieldByName('QN_EMBAEXPEITEMPEDIDEVOVEND').AsInteger then
  begin
    qrItem.FieldByName('QN_PESOITEMPEDIDEVOVEND').AsFloat := (qrItem.FieldByName('QN_EMBAITEMPEDIDEVOVEND').AsInteger * lr_PesoCaix);
  end
  else
  begin
    qrItem.FieldByName('QN_PESOITEMPEDIDEVOVEND').AsFloat := qrItem.FieldByName('QN_PSPDEXPEITEMPEDIDEVOVEND').AsFloat;
  end;

  If qrItem.FieldByName('QN_PSREEXPEITEMPEDIDEVOVEND').AsFloat > 0 then
  begin
    qrItem.FieldByName('QN_PESOITEMPEDIDEVOVEND').AsFloat := qrItem.FieldByName('QN_PSREEXPEITEMPEDIDEVOVEND').AsFloat;
  end;

  qrItem.FieldByName('VL_TOTADEVO').AsFloat := (qrItem.FieldByName('QN_PESOITEMPEDIDEVOVEND').AsFloat *
                                                    qrItem.FieldByName('VL_UNITITEMPEDIVEND').AsFloat);

  if qrItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat - qrItem.FieldByName('QN_PESOITEMPEDIDEVOVEND').AsFloat > 0 then
  begin
    qrItem.FieldByName('QN_PERCQUEB').AsFloat := qrItem.FieldByName('QN_PESOQUEBITEMPEDIDEVOVEND').AsFloat  /
                                                 (qrItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat -
                                                  qrItem.FieldByName('QN_PESOITEMPEDIDEVOVEND').AsFloat) * 100;
  end
  else
  begin
    qrItem.FieldByName('QN_PERCQUEB').AsFloat := 0;
  end;

  qrItem.FieldByName('VL_TOTAQUEB').AsFloat := (qrItem.FieldByName('QN_PESOQUEBITEMPEDIDEVOVEND').AsFloat *
                                                       qrItem.FieldByName('VL_UNITITEMPEDIVEND').AsFloat);

  qrItem.FieldByName('VL_VALOOPER').AsFloat := (qrItem.FieldByName('VL_DEVEXPE').AsFloat +
                                                     qrItem.FieldByName('VL_TOTAQUEB').AsFloat);
end;

procedure TFrmPediDevoVend.BpesqMotoClick(Sender: TObject);
begin
  FrmPesqMoto:=TFrmPesqMoto.Create(Self);
  FrmPesqMoto.ShowModal;
end;

procedure TFrmPediDevoVend.mniBloquearClick(Sender: TObject);
begin
  if not ValidStatu(Self) then
  begin
    Application.MessageBox(StrAcrEsp('Antes de efetuar esta operação, atualize os dados do Pedido de Devolução.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    qr.Cancel;
    Exit;
  end;

  if Application.MessageBox(StrAcrEsp('Confirma o bloqueio do pedido de devolução?',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_YESNO) = IDNO then
  begin
    Exit;
  end;

  qr.Edit;
  qr.FieldByName('FL_STATPEDIDEVOVEND').AsString := 'BQ';
  qr.Post;
  Qr.ApplyUpdates;
  Qr.CommitUpdates;
end;

procedure TFrmPediDevoVend.mniDesbloquearClick(Sender: TObject);
begin
  if not ValidStatu(Self) then
  begin
    Application.MessageBox(StrAcrEsp('Antes de efetuar esta operação, atualize os dados do Pedido de Devolução.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    qr.Cancel;
    Exit;
  end;

  if Application.MessageBox(StrAcrEsp('Confirma a liberação do pedido de devolução?',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_YESNO) = IDNO then
  begin
    Exit;
  end;

  qr.Edit;
  qr.FieldByName('FL_STATPEDIDEVOVEND').AsString := 'LB';
  qr.Post;
  Qr.ApplyUpdates;
  Qr.CommitUpdates;
end;

procedure TFrmPediDevoVend.mniFecharClick(Sender: TObject);
var
  lr_ValoDevo, lr_ValoQueb: Real;
  lr_PesoRealQueb, lr_PesoPadrQueb, lr_TaraRealQueb, lr_EmbaQueb: Real;
begin
  if Application.MessageBox(StrAcrEsp('Confirma fechamento da devolução?',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_YESNO) = IDNO then
  begin
    Exit;
  end;

  if not ValidStatu(Self) then
  begin
    Application.MessageBox(StrAcrEsp('Antes de efetuar esta operação, atualize os dados do Pedido de Devolução.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    qr.Cancel;
    Exit;
  end;

  if (qr.FieldByName('FL_TRANFISCPEDIDEVOVEND').AsString = 'NFC') and (qr['NR_DOCUENTRPEDIDEVOVEND'] = Null) then
  begin
    Application.MessageBox(StrAcrEsp('O Campo Nota Fiscal de Entrada deve ser preenchido.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    TabDetalhe.Show;
    edtDocuEntr.SetFocus;
    Exit;
  end;

  qryDevo.Close;
  qryDevo.SQL.Clear;
  qryDevo.SQL.Text :=
  'SELECT SUM( PEDIDO_DEVOLUCAO_VENDA_ITEM.QN_PESOITEMPEDIDEVOVEND *                              '+
  '            PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND) VL_VALODEVO                                '+
  '  FROM PEDIDO_DEVOLUCAO_VENDA_ITEM,                                                            '+
  '       PEDIDO_VENDA,                                                                           '+
  '       PEDIDO_DEVOLUCAO_VENDA,                                                                 '+
  '       PEDIDO_VENDA_ITEM                                                                       '+
  ' WHERE ( PEDIDO_DEVOLUCAO_VENDA.ID_PEDIDEVOVEND = PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_PEDIDEVOVEND )'+
  '   AND ( PEDIDO_DEVOLUCAO_VENDA.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND )                       '+
  '   AND ( PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND )                            '+
  '   AND ( PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_MATEEMBA = PEDIDO_VENDA_ITEM.ID_MATEEMBA )             '+
  '   AND ( ( PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_PEDIDEVOVEND = :ID_PEDIDEVOVEND ) )                  ';
  qryDevo.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr['ID_PEDIDEVOVEND'];
  qryDevo.Open;

  if qryDevo.RecordCount > 0 then
    begin
      lr_ValoDevo := qryDevo.FieldByName('VL_VALODEVO').AsFloat;
    end
  else
  begin
    lr_ValoDevo := 0;
  end;

  qryDevo.Close;

  qryQueb.Close;
  qryQueb.SQL.Clear;
  qryQueb.SQL.Text :=
  'SELECT SUM( PEDIDO_DEVOLUCAO_VENDA_ITEM.QN_PESOQUEBITEMPEDIDEVOVEND *                          '+
  '            PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND) VL_VALOQUEB                                '+
  '  FROM PEDIDO_DEVOLUCAO_VENDA_ITEM,                                                            '+
  '       PEDIDO_VENDA,                                                                           '+
  '       PEDIDO_DEVOLUCAO_VENDA,                                                                 '+
  '       PEDIDO_VENDA_ITEM                                                                       '+
  ' WHERE ( PEDIDO_DEVOLUCAO_VENDA.ID_PEDIDEVOVEND = PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_PEDIDEVOVEND )'+
  '   AND ( PEDIDO_DEVOLUCAO_VENDA.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND )                       '+
  '   AND ( PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND )                            '+
  '   AND ( PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_MATEEMBA = PEDIDO_VENDA_ITEM.ID_MATEEMBA )             '+
  '   AND ( ( PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_PEDIDEVOVEND = :ID_PEDIDEVOVEND ) )                  ';
  qryQueb.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr['ID_PEDIDEVOVEND'];
  qryQueb.Open;

  if (qryQueb.RecordCount > 0) then
    begin
      lr_ValoQueb := qryQueb.FieldByName('VL_VALOQUEB').AsFloat;
    end
  else
  begin
    lr_ValoQueb := 0;
  end;

  qryQueb.Close;

  qryQueb.Close;
  qryQueb.SQL.Clear;
  qryQueb.SQL.Text :=
  'SELECT SUM(QN_PSREEXPEITEMPEDIDEVOVEND) QN_PESOREALDEVO,                                       '+
  '       SUM(QN_PESOITEMPEDIDEVOVEND) QN_PESOPADRDEVO,                                           '+
  '       SUM(QN_TRREEXPEITEMPEDIDEVOVEND) QN_TARAREALDEVO,                                       '+
  '       SUM(QN_EMBAITEMPEDIDEVOVEND) QN_EMBADEVO,                                                '+
  '       SUM((QN_PSREEXPEITEMPEDIDEVOVEND - NVL(QN_TRREEXPEITEMPEDIDEVOVEND,0)) * PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND ) VL_DEVOL'+
  '  FROM PEDIDO_DEVOLUCAO_VENDA_ITEM,                                                            '+
  '       PEDIDO_VENDA,                                                                           '+
  '       PEDIDO_DEVOLUCAO_VENDA,                                                                 '+
  '       PEDIDO_VENDA_ITEM                                                                       '+
  ' WHERE ( PEDIDO_DEVOLUCAO_VENDA.ID_PEDIDEVOVEND = PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_PEDIDEVOVEND )'+
  '   AND ( PEDIDO_DEVOLUCAO_VENDA.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND )                       '+
  '   AND ( PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND )                            '+
  '   AND ( PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_MATEEMBA = PEDIDO_VENDA_ITEM.ID_MATEEMBA )             '+
  '   AND ( ( PEDIDO_DEVOLUCAO_VENDA_ITEM.ID_PEDIDEVOVEND = :ID_PEDIDEVOVEND ) )                  ';
  qryQueb.ParamByName('ID_PEDIDEVOVEND').AsInteger := qr['ID_PEDIDEVOVEND'];
  qryQueb.Open;

  if (qryQueb.RecordCount > 0) then
    begin
      lr_PesoRealQueb := qryQueb.FieldByName('QN_PESOREALDEVO').AsFloat;
      lr_PesoPadrQueb := qryQueb.FieldByName('QN_PESOPADRDEVO').AsFloat;
      lr_TaraRealQueb := qryQueb.FieldByName('QN_TARAREALDEVO').AsFloat;
      lr_EmbaQueb := qryQueb.FieldByName('QN_EMBADEVO').AsFloat;
    end
  else
  begin
    lr_PesoRealQueb := 0;
  end;

  if ( TipoExpedicao = 'P' ) then
    lr_ValoDevo := qryQueb.FieldByName('VL_DEVOL').AsFloat;

  qryQueb.Close;
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT NVL(PEDIDO_VENDA.FL_BLOQAJUSFINAPEDIVEND,''N'') FL_BLOQAJUSFINAPEDIVEND '+
                      'FROM PEDIDO_VENDA '+
                      'WHERE PEDIDO_VENDA.ID_PEDIVEND =' + qr.FieldByName('ID_PEDIVEND').AsString + ' ';
  qryTemp.Open;

  If (qrytemp.FieldByName('FL_BLOQAJUSFINAPEDIVEND').AsString = 'N') then
    begin
      If (lr_ValoQueb > 0) or (lr_ValoDevo > 0) then
      begin
        qryTemp.Close;
        qryTemp.SQL.Clear;
        qryTemp.SQL.Text :=
        'UPDATE PEDIDO_VENDA                                                                         '+
        '   SET VL_QUEBPEDIVEND = ' + ReplaceStr(FloatToStr(lr_ValoQueb), ',', '.') + ',            '+
        '       VL_DEVOPEDIVEND = ' + ReplaceStr(FloatToStr(lr_ValoDevo), ',', '.') + ',            '+
        '       QN_PESOREALDEVOPEDIVEND = ' + ReplaceStr(FloatToStr(lr_PesoRealQueb), ',', '.') + ','+
        '       QN_PESOPADRDEVOPEDIVEND = ' + ReplaceStr(FloatToStr(lr_PesoPadrQueb), ',', '.') + ','+
        '       QN_TARAREALDEVOPEDIVEND = ' + ReplaceStr(FloatToStr(lr_TaraRealQueb), ',', '.') + ','+
        '       QN_EMBADEVOPEDIVEND = ' + ReplaceStr(FloatToStr(lr_EmbaQueb), ',', '.') + ',        '+
        '       FL_AJUSPEDIDEVOVEND_PEDIVEND = ''S''                        ,            '+
        '       FL_CONFPEDIDEVOVEND_PEDIVEND = ''S''                                     '+
        ' WHERE ID_PEDIVEND = ' + qr.FieldByName('ID_PEDIVEND').AsString + '                    ';
        qryTemp.ExecSQL;
      end;
    end
  Else
  begin
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Text :=
      'UPDATE PEDIDO_VENDA                 '+
      '   SET VL_QUEBPEDIVEND = 0,         '+
      '       VL_DEVOPEDIVEND = 0,         '+
      '       QN_PESOREALDEVOPEDIVEND = 0, '+
      '       QN_PESOPADRDEVOPEDIVEND = 0, '+
      '       QN_TARAREALDEVOPEDIVEND = 0, '+
      '       QN_EMBADEVOPEDIVEND = 0,     '+
      '       FL_AJUSPEDIDEVOVEND_PEDIVEND = ''N'' ,   '+
      '       FL_CONFPEDIDEVOVEND_PEDIVEND = ''N''     '+
      ' WHERE ID_PEDIVEND = ' + qr.FieldByName('ID_PEDIVEND').AsString + ' ';
    qryTemp.ExecSQL;
  end;
  qryTemp.Close;

  qr.Edit;
  qr.FieldByName('FL_STATPEDIDEVOVEND').AsString           := 'FE';
  qr.FieldByName('ID_USUASIST_FECHPEDIDEVOVEND').AsInteger := gi_IdenUsua;
  qr.FieldByName('NM_USUAFECHPEDI').AsString               := gs_NomeUsuario;
  qr.FieldByName('DT_FECHPEDIDEVOVEND').AsDateTime         := DataBanco;
  qr.Post;

  try
    qr.ApplyUpdates;
    qr.CommitUpdates;
  except
    Application.MessageBox(StrAcrEsp('Problemas com o fechamento. Operação abortada.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    qr.CancelUpdates;
  end;

end;

procedure TFrmPediDevoVend.PM1Popup(Sender: TObject);
begin
  if qr.FieldByName('FL_STATPEDIDEVOVEND').AsString = 'AV' then
  begin
    mniValidar.Enabled     := True;
    mniAbrir.Enabled       := False;
    mniFechar.Enabled      := False;
    mniBloquear.Enabled    := False;
    mniDesbloquear.Enabled := False;
  end
  else if qr.FieldByName('FL_STATPEDIDEVOVEND').AsString = 'LB' then
  begin
    mniValidar.Enabled     := False;
    mniAbrir.Enabled       := False;
    mniFechar.Enabled      := True;
    mniBloquear.Enabled    := True;
    mniDesbloquear.Enabled := False;
  end
  else if qr.FieldByName('FL_STATPEDIDEVOVEND').AsString = 'BQ' then
  begin
    mniValidar.Enabled     := False;
    mniAbrir.Enabled       := False;
    mniFechar.Enabled      := False;
    mniBloquear.Enabled    := False;
    mniDesbloquear.Enabled := True;
  end
  else if qr.FieldByName('FL_STATPEDIDEVOVEND').AsString = 'FE' then
  begin
    mniValidar.Enabled     := False;
    mniAbrir.Enabled       := True;
    mniFechar.Enabled      := False;
    mniBloquear.Enabled    := False;
    mniDesbloquear.Enabled := False;
  end
  else
  begin
    mniValidar.Enabled     := False;
    mniAbrir.Enabled       := False;
    mniFechar.Enabled      := False;
    mniBloquear.Enabled    := False;
    mniDesbloquear.Enabled := False;
  end;
end;

procedure TFrmPediDevoVend.Totais1Click(Sender: TObject);
begin
  If Qr.IsEmpty then
  begin
    Application.MessageBox(StrAcrEsp('Nenhum registro selecionado.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  Try
    FrmTotalDevo:=TFrmTotalDevo.Create(Self);
    FrmTotalDevo.qryTotaDevo.ParamByName('ID_PEDIDEVOVEND').AsFloat := QrID_PEDIDEVOVEND.value;
    FrmTotalDevo.qryTotaDevo.Open;
    FrmTotalDevo.qryTotaPedi.ParamByName('ID_PEDIVEND').AsFloat := QrID_PEDIVEND.value;
    FrmTotalDevo.qryTotaPedi.Open;
    FrmTotalDevo.ShowModal;
  Finally;
    FrmTotalDevo.Free;
  end;
end;

procedure TFrmPediDevoVend.mmoPareComeChange(Sender: TObject);
begin

  If QrFL_STATPEDIDEVOVEND.Value = 'FE' then
    BEGIN
      Sb_PRIMEIRO.Enabled:= True;
      Sb_ANTERIOR.Enabled:= True;
      Sb_PROXIMO.Enabled:= True;
      Sb_ULTIMO.Enabled:= True;
      Sb_Novo.Enabled:= True;
      Sb_EXCLUI.Enabled:= True;
      Sb_CONFIRMA.Enabled:= False;
      Sb_Cancel.Enabled:= False;
      Sb_Sair.Enabled:= True;
    END
  Else
  BEGIN
    Sb_PRIMEIRO.Enabled:= False;
    Sb_ANTERIOR.Enabled:= False;
    Sb_PROXIMO.Enabled:= False;
    Sb_ULTIMO.Enabled:= False;
    Sb_Novo.Enabled:= False;
    Sb_EXCLUI.Enabled:= False;
    Sb_CONFIRMA.Enabled:= True;
    Sb_Cancel.Enabled:= True;
    Sb_Sair.Enabled:= False;
    Qr.Edit;
  END;

end;

procedure TFrmPediDevoVend.mmoPareFinaChange(Sender: TObject);
begin
  If QrFL_STATPEDIDEVOVEND.Value = 'FE' then
    BEGIN
      Sb_PRIMEIRO.Enabled:= True;
      Sb_ANTERIOR.Enabled:= True;
      Sb_PROXIMO.Enabled:= True;
      Sb_ULTIMO.Enabled:= True;
      Sb_Novo.Enabled:= True;
      Sb_EXCLUI.Enabled:= True;
      Sb_CONFIRMA.Enabled:= False;
      Sb_Cancel.Enabled:= False;
      Sb_Sair.Enabled:= True;
    END
  Else
  BEGIN
    Sb_PRIMEIRO.Enabled:= False;
    Sb_ANTERIOR.Enabled:= False;
    Sb_PROXIMO.Enabled:= False;
    Sb_ULTIMO.Enabled:= False;
    Sb_Novo.Enabled:= False;
    Sb_EXCLUI.Enabled:= False;
    Sb_CONFIRMA.Enabled:= True;
    Sb_Cancel.Enabled:= True;
    Sb_Sair.Enabled:= False;
    Qr.Edit;
  END;

end;

procedure TFrmPediDevoVend.mmoPareExpeChange(Sender: TObject);
begin
  If QrFL_STATPEDIDEVOVEND.Value = 'FE' then
    BEGIN
      Sb_PRIMEIRO.Enabled:= True;
      Sb_ANTERIOR.Enabled:= True;
      Sb_PROXIMO.Enabled:= True;
      Sb_ULTIMO.Enabled:= True;
      Sb_Novo.Enabled:= True;
      Sb_EXCLUI.Enabled:= True;
      Sb_CONFIRMA.Enabled:= False;
      Sb_Cancel.Enabled:= False;
      Sb_Sair.Enabled:= True;
    END
  Else
  BEGIN
    Sb_PRIMEIRO.Enabled:= False;
    Sb_ANTERIOR.Enabled:= False;
    Sb_PROXIMO.Enabled:= False;
    Sb_ULTIMO.Enabled:= False;
    Sb_Novo.Enabled:= False;
    Sb_EXCLUI.Enabled:= False;
    Sb_CONFIRMA.Enabled:= True;
    Sb_Cancel.Enabled:= True;
    Sb_Sair.Enabled:= False;
    Qr.Edit;
  END;

end;

procedure TFrmPediDevoVend.mmoObservacoesChange(Sender: TObject);
begin
  If QrFL_STATPEDIDEVOVEND.Value = 'FE' then
    BEGIN
      Sb_PRIMEIRO.Enabled:= True;
      Sb_ANTERIOR.Enabled:= True;
      Sb_PROXIMO.Enabled:= True;
      Sb_ULTIMO.Enabled:= True;
      Sb_Novo.Enabled:= True;
      Sb_EXCLUI.Enabled:= True;
      Sb_CONFIRMA.Enabled:= False;
      Sb_Cancel.Enabled:= False;
      Sb_Sair.Enabled:= True;
    END
  Else
  BEGIN
    Sb_PRIMEIRO.Enabled:= False;
    Sb_ANTERIOR.Enabled:= False;
    Sb_PROXIMO.Enabled:= False;
    Sb_ULTIMO.Enabled:= False;
    Sb_Novo.Enabled:= False;
    Sb_EXCLUI.Enabled:= False;
    Sb_CONFIRMA.Enabled:= True;
    Sb_Cancel.Enabled:= True;
    Sb_Sair.Enabled:= False;
    Qr.Edit;
  END;

end;

procedure TFrmPediDevoVend.TabParecerShow(Sender: TObject);
begin
  If Qr.State in [dsedit,dsinsert] then
    mmoPareCome.SetFocus;
end;

procedure TFrmPediDevoVend.edtPesoQuebraExit(Sender: TObject);
begin
   CalculaItens;
end;

procedure TFrmPediDevoVend.edtCaixAjusExit(Sender: TObject);
begin
  CalculaItens;
end;

procedure TFrmPediDevoVend.QrItemAfterScroll(DataSet: TDataSet);
begin
  IF  ( QrItem.FieldByName('FL_TIPOEXPEMATEEMBA').AsString = 'EM' ) OR ( QrItem.FieldByName('FL_TIPOEXPEMATEEMBA').AsString = 'EA' ) then
    DBPESO.Enabled := TRUE
  ELSE
    DBPESO.Enabled := FALSE;

end;

procedure TFrmPediDevoVend.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (ssAlt in  Shift) and (chr(Key) in ['I', 'i']) then
     If SB_NOVO.Enabled then  SB_NOVO.Click;
  If (ssAlt in  Shift) and (chr(Key) in ['G', 'g']) then
      If SB_CONFIRMA.Enabled then  SB_CONFIRMA.Click;
  If (ssAlt in  Shift) and (chr(Key) in ['C', 'c']) then
     If  SB_CANCEL.Enabled then  SB_CANCEL.Click;

end;

procedure TFrmPediDevoVend.grdItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (QrItemQN_EMBAAJUSITEMPEDIDEVOVEND.Value > 0) or (QrItemQN_EMBAITEMPEDIDEVOVEND.Value > 0) or (QrItemQN_PESOQUEBITEMPEDIDEVOVEND.Value > 0) then
    grdItens.Canvas.Brush.Color := $00C6C6FF
  else
    grdItens.Canvas.Brush.Color := $00CCFFCC;

  grdItens.Canvas.Font.Color  := clBlack;

  grdItens.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmPediDevoVend.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);
  nEspaco := 100;
end;

procedure TFrmPediDevoVend.sb_ImpClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  FrmRelDevQue := TFrmRelDevQue.Create(Self);
  FrmRelDevQue.lblUsuario.Caption:= gs_NomeUsuario;
  Screen.Cursor := crDefault;
  FrmRelDevQue.RLReport1.Preview(nil);
end;

procedure TFrmPediDevoVend.mmoPareComeKey(Sender: TObject; var Key: Char);
begin
  Key:= UpCase(Key);
end;

procedure TFrmPediDevoVend.mniAbrirClick(Sender: TObject);
begin
  if not ValidStatu(Self) then
  begin
    Application.MessageBox(StrAcrEsp('Antes de efetuar esta operação, atualize os dados do Pedido de Devolução.',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_OK + MB_ICONINFORMATION);
    qr.Cancel;
    Exit;
  end;

  if Application.MessageBox(StrAcrEsp('Confirma a abertura do pedido de devolução?',nEspaco), 'Comercial Dacar - Devolução / Quebra de Venda', MB_YESNO) = IDNO then
  begin
    Exit;
  end;

  qr.Edit;
  qr.FieldByName('FL_STATPEDIDEVOVEND').AsString := 'AB';
  QrID_USUASIST_FECHPEDIDEVOVEND.Value := 0;
  qr.Post;
  Qr.ApplyUpdates;
  Qr.CommitUpdates;
end;

procedure TFrmPediDevoVend.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmPediDevoVend.DSItemDataChange(Sender: TObject;
  Field: TField);
begin
  grpProduto.Caption := ' ' + QrItemID_PRODMATEEMBA.AsString + ' - ' + QrItemNM_PRODMATEEMBA.AsString + ' ';
end;

end.







