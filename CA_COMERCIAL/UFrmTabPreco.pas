unit UFrmTabPreco;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, DBCtrls, Mask,
  Grids, DBGrids, DB, Ora, MemDS, DBAccess, DBClient, OraCall,
  Winapi.Windows;

type
  TFrmTabPreco = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabCriterio: TTabSheet;
    TabLista: TTabSheet;
    TabDetalhes: TTabSheet;
    TabItens: TTabSheet;
    Lbl_Filtro: TLabel;
    LCampos: TListBox;
    Lbl_Cond: TLabel;
    Lbl_Expr: TLabel;
    CBCond: TComboBox;
    RGeou: TRadioGroup;
    BtIncluir: TBitBtn;
    BtLimpar: TBitBtn;
    BtAtivar: TBitBtn;
    MResul: TMemo;
    BPESQ: TBitBtn;
    EdExpr: TEdit;
    DBGrid1: TDBGrid;
    QryTabPreco: TOraQuery;
    DtSrcTabPreco: TOraDataSource;
    QryCadTabPreco: TOraQuery;
    DtSrcCadTabPrecos: TOraDataSource;
    Qry_moeda: TOraQuery;
    DtSrcMoeda: TOraDataSource;
    QryCadTabPrecoEMPRESA: TStringField;
    QryCadTabPrecoFILIAL: TIntegerField;
    QryCadTabPrecoID_TABEPREC: TFloatField;
    QryCadTabPrecoNM_TABEPREC: TStringField;
    QryCadTabPrecoID_MOEDA: TFloatField;
    QryTabPrecoEMPRESA: TStringField;
    QryTabPrecoFILIAL: TIntegerField;
    QryTabPrecoID_ITEMTABEPREC: TFloatField;
    QryTabPrecoID_TABEPREC: TFloatField;
    QryTabPrecoID_MATERIAL: TFloatField;
    QryTabPrecoID_EMBALAGEM: TFloatField;
    QryTabPrecoID_MATEEMBA: TFloatField;
    QryTabPrecoVL_ITEMTABEPREC: TFloatField;
    QryTabPrecoPC_MAXIDESCITEMTABEPREC: TFloatField;
    QryTabPrecoFX_ITEMTABEPREC: TStringField;
    QryTabPrecoFL_ATIVITEMTABEPREC: TStringField;
    QryTabPrecoID_PRODMATEEMBA: TStringField;
    QryTabPrecoNM_PRODMATEEMBA: TStringField;
    Panel3: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    QryCadTabPrecoFX_TABEPREC: TStringField;
    QrDireitos: TOraQuery;
    QryEmb: TOraQuery;
    QryEmbEMPRESA: TStringField;
    QryEmbFILIAL: TIntegerField;
    QryEmbID_MATERIAL: TFloatField;
    QryEmbID_MATEEMBA: TFloatField;
    QryEmbID_PRODMATEEMBA: TStringField;
    QryEmbNM_PRODMATEEMBA: TStringField;
    QryEmbNM_PRODREDUMATEEMBA: TStringField;
    QryEmbID_EMBALAGEM: TFloatField;
    QryEmbQN_CAPAMINIMATEEMBA: TFloatField;
    QryEmbQN_CAPAMAXIMATEEMBA: TFloatField;
    QryEmbQN_CAPAPADRMATEEMBA: TFloatField;
    QryEmbQN_CAPAMEDIMATEEMBA: TFloatField;
    QryEmbQN_CAPAPADRUNIDMATEEMBA: TFloatField;
    QryEmbQN_CAPAMEDIUNIDMATEEMBA: TFloatField;
    QryEmbFX_MATEEMBA: TStringField;
    QryEmbNM_MATERIAL: TStringField;
    QryEmbIE_MATERIAL: TStringField;
    QryEmbNM_EMBALAGEM: TStringField;
    DtSrcEmba: TOraDataSource;
    Tab_REPL: TOraSQL;
    DB_CON: TOraSession;
    QryTabPrecoID_USUARIO: TIntegerField;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    edReajuste: TEdit;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    grpLoc: TGroupBox;
    edtLocDesc: TEdit;
    edtLocCod: TEdit;
    btnLimp: TBitBtn;
    Panel5: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    DBCod: TDBEdit;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    DBDescItem: TDBEdit;
    DBMatAtivo: TDBRadioGroup;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    EdtMinVenda: TEdit;
    EdtMaxVenda: TEdit;
    Label10: TLabel;
    DBPorDesc: TDBEdit;
    Label9: TLabel;
    DBPrecoVd: TDBEdit;
    Label8: TLabel;
    EdtVlMaxDesc: TEdit;
    Btn_HistoricoPreco: TButton;
    QryTabPrecoDT_ATUALIZACAO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    qryTemp: TOraQuery;
    btnCopiarPreco: TBitBtn;
    qryTabPrecoCopia: TOraQuery;
    qryTabPrecoCopiaDT_LOG: TDateTimeField;
    qryTabPrecoCopiaID_TABPRECO: TIntegerField;
    qryTabPrecoCopiaTP_OPERACAO: TStringField;
    qryTabPrecoCopiaEMPRESA: TStringField;
    qryTabPrecoCopiaFILIAL: TIntegerField;
    qryTabPrecoCopiaID_HISTORICOPRECO: TFloatField;
    qryTabPrecoCopiaID_PRODMATEEMBA: TStringField;
    qryTabPrecoCopiaVL_ITEMTABEPREC_OLD: TFloatField;
    qryTabPrecoCopiaVL_ITEMTABEPREC_NEW: TFloatField;
    qryTabPrecoCopiaPC_MAXIDESCITEMTABEPREC_OLD: TFloatField;
    qryTabPrecoCopiaPC_MAXIDESCITEMTABEPREC_NEW: TFloatField;
    qryTabPrecoCopiaID_USUARIO_OLD: TIntegerField;
    qryTabPrecoCopiaFL_ATIVITEMTABEPREC_OLD: TStringField;
    qryTabPrecoCopiaFL_ATIVITEMTABEPREC_NEW: TStringField;
    qryTabPrecoCopiaID_USUARIO_NEW: TIntegerField;
    DBCheckBox1: TDBCheckBox;
    grpTabelaOrigemCopia: TGroupBox;
    btnCopiaProdutosTabela: TBitBtn;
    qryTabelaOrigemCopia: TOraQuery;
    dtsTabelaOrigemCopia: TOraDataSource;
    dblTabelaOrigemCopia: TDBLookupComboBox;
    qryTabelaOrigemCopiaID_TABEPREC: TFloatField;
    qryTabelaOrigemCopiaNM_TABEPREC: TStringField;
    sqlTabelaOrigemCopia: TOraSQL;
    dlgSaveArquivo: TSaveDialog;
    DBGrid3: TDBGrid;
    QryTabPrecoVL_10CX: TFloatField;
    QryTabPrecoVL_11A30CX: TFloatField;
    QryTabPrecoVL_31A50CX: TFloatField;
    QryTabPrecoVL_51A100CX: TFloatField;
    QryTabPrecoVL_100CX: TFloatField;
    pnlBotoes: TPanel;
    SB_PRIMEIRO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SB_NOVO: TSpeedButton;
    SB_EXCLUI: TSpeedButton;
    SB_EDIT: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    btnExcel: TSpeedButton;
    Sb_Sair: TSpeedButton;
    QryTabPrecoVL_0A5CX: TFloatField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    qryEditor: TOraQuery;
    dtsEditor: TOraDataSource;
    qryEditorID_TABPRECO: TIntegerField;
    qryEditorID_PRODMATEEMBA: TStringField;
    qryEditorID_USUARIO_NEW: TIntegerField;
    qryEditorNM_REDUUSUASIST: TStringField;
    QryTabPrecoVL_0A5CX_S: TFloatField;
    QryTabPrecoVL_10CX_S: TFloatField;
    QryTabPrecoVL_11A30CX_S: TFloatField;
    QryTabPrecoVL_31A50CX_S: TFloatField;
    QryTabPrecoVL_51A100CX_S: TFloatField;
    QryTabPrecoVL_100CX_S: TFloatField;
    GroupBox3: TGroupBox;
    chkSimples: TDBCheckBox;
    edtVL_SIMPLES: TDBEdit;
    QryCadTabPrecoFL_SIMPLES: TStringField;
    cdsTemp: TClientDataSet;
    cdsTempCOD: TStringField;
    cdsTempVL_5: TStringField;
    cdsTempVL_10: TStringField;
    cdsTempVL_30: TStringField;
    cdsTempVL_50: TStringField;
    cdsTempVL_100: TStringField;
    cdsTempVL_ACIMA100: TStringField;
    dtsTemp: TDataSource;
    btnImportaXLS: TSpeedButton;
    DBCheckBox2: TDBCheckBox;
    QryCadTabPrecoFL_ATUALIZA: TStringField;
    QryCadTabPrecoVL_SIMPLES: TFloatField;
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    procedure LDcomponentes(LD:boolean);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure EdExprKeyPress(Sender: TObject; var Key: Char);
    procedure Sb_SairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdExprChange(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure DtSrcTabPrecoDataChange(Sender: TObject; Field: TField);
    procedure SB_CANCELMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_CONFIRMAMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_EDITMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_EXCLUIMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_NOVOMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_ULTIMOMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_PROXIMOMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_ANTERIORMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_PRIMEIROMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure SB_EDITClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBCodExit(Sender: TObject);
    procedure edtLocCodChange(Sender: TObject);
    procedure edtLocDescChange(Sender: TObject);
    procedure btnLimpClick(Sender: TObject);
    procedure edReajusteKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure Btn_HistoricoPrecoClick(Sender: TObject);
    procedure TabItensShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
//    procedure SB_AtualizaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCopiarPrecoClick(Sender: TObject);
    procedure btnCopiaProdutosTabelaClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure DtSrcCadTabPrecosDataChange(Sender: TObject; Field: TField);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure chkSimplesClick(Sender: TObject);
    procedure btnImportaXLSClick(Sender: TObject);
  private
    { Private declarations }
    sDT_Atualizacao, Ordem, OrdemColuna: string;
    vSimples: double;

  public
  SELPE: integer;
    { Public declarations }
  end;

var
  FrmTabPreco: TFrmTabPreco;

implementation

uses
  UFrmPesqMatEmba , Principal, global, UFrmHistoricoPrecoTelevendas, ufrmConsultaProdutos,
  ComObj, ufrmImportacaoDadosXLS;

{$R *.dfm}

procedure TFrmTabPreco.BtIncluirClick(Sender: TObject);
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
          Vre:='AND ';
        end
      Else
      begin
        Vlinha:= MResul.Lines.Strings[MResul.Lines.Count-1];
        MResul.Lines.Strings[MResul.Lines.Count-1]:= Copy(Vlinha,1,length(Vlinha)-1);
        Vre:='OR ';
      end;
    end;

    If  LCampos.itemindex=-1 then
      Vcampos:=0
    else
      Vcampos:=LCampos.itemindex;

    //VERIFICAR SE COLOCA PARENTESES ANTES DO OR
    If RGeou.ItemIndex=0  then
      Vre:= Vre + '(' ;

    Case LCampos.itemindex of
      0:Vre:=Vre + 'TP.ID_TABEPREC ';
      1:Vre:=Vre + 'TP.NM_TABEPREC ';
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
      1..2:Vre:= Vre + '''';
    end;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

    Vre:=Vre + UpperCase(EdExpr.text);

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

    Case LCampos.itemindex of
      1..2:Vre:= Vre + '''';
    end;

    Vre:=Vre+')';

    MResul.Lines.Add(Vre);
    EdExpr.Text :='';
    BtIncluir.Enabled :=false;
  end;

  BtAtivar.SetFocus;
end;

function TFrmTabPreco.Atual_ToolBar(BtOrdem: Integer): string;
begin
  CASE BtOrdem of
  1:begin
      SB_NOVO.Enabled := true;
      SB_EDIT.Enabled := true;
      SB_EXCLUI.Enabled := true;
      SB_CONFIRMA.Enabled := False;
      SB_CANCEL.Enabled := false;
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
  10:begin
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
  11:begin
      SB_NOVO.Enabled := False;
      SB_EDIT.Enabled := False;
      SB_EXCLUI.Enabled := False;
      SB_CONFIRMA.Enabled := False;
      SB_CANCEL.Enabled := False;
      SB_PRIMEIRO.Enabled := False;
      SB_ANTERIOR.Enabled := False;
      SB_PROXIMO.Enabled := False;
      SB_ULTIMO.Enabled := False;
    end;
  end;
end;

procedure TFrmTabPreco.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmTabPreco.EdExprKeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmTabPreco.Sb_SairClick(Sender: TObject);
begin
 close;
end;

procedure TFrmTabPreco.FormShow(Sender: TObject);
var
  Temp: TComponent;
  li_Loop : Integer;
begin
  if (LCAMPOS.Items.Count=0) then
  begin
    With LCampos.Items do
    begin
      Add('Código da Tabela de Preço  ');
      Add('Descrição da Tabela de Preço ');
    end;
  end;

  PageControl1.Pages[1].TabVisible:= False;
  PageControl1.Pages[2].TabVisible:= False;
  PageControl1.Pages[3].TabVisible:= False;

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

  edtVL_SIMPLES.Enabled := chkSimples.Checked;
end;

procedure TFrmTabPreco.LDcomponentes(LD:boolean);
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

procedure TFrmTabPreco.EdExprChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmTabPreco.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin
  Screen.Cursor := crSQLWait;
  QryTabPreco.Close;

  WITH QryCadTabPreco.SQL DO
  BEGIN
    Clear;
    Add('SELECT DISTINCT TP.EMPRESA, TP.FILIAL, TP.ID_TABEPREC, TP.NM_TABEPREC, TP.FX_TABEPREC, TP.ID_MOEDA, TP.FL_SIMPLES, TP.VL_SIMPLES, TP.FL_ATUALIZA ');
    Add('FROM TABELA_PRECO TP ');
    Add('INNER JOIN MOEDA M ON (M.ID_MOEDA = TP.ID_MOEDA) ');

    XTM:=MResul.Lines.Count;
    If XTM >0 then
    begin
      QryCadTabPreco.SQL.Add(' AND ');
      QryCadTabPreco.SQL.Add(MResul.Text);
    end
    else
    begin
     Screen.Cursor := crDefault;
      If Application.MessageBox('Exibir listagem sem filtro?                     ', PChar(FrmTabPreco.Caption), MB_YESNO) = IDNO then
        exit
      Else
        Screen.Cursor := crSQLWait;
    end;

    QryCadTabPreco.SQL.Add('ORDER BY TP.ID_TABEPREC');
    QryCadTabPreco.Open;

    QryTabPreco.close;
    QryTabPreco.Open;

    Qry_moeda.close;
    Qry_moeda.Open;

    PageControl1.Pages[1].Show;
    Screen.Cursor := crDefault;
    PageControl1.Pages[1].TabVisible := True;
    PageControl1.Pages[2].TabVisible := true;
    PageControl1.Pages[3].TabVisible := True;
    Atual_ToolBar(1);

    //Direito a Incluir
    QrDireitos.Close;
    QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
    QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QrDireitos.Open;
    If (QrDireitos.RecordCount>0) then
      Atual_ToolBar(9);

    //Direito a Editar
    QrDireitos.Close;
    QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
    QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QrDireitos.Open;
    If (QrDireitos.RecordCount>0) then
      Atual_ToolBar(10);

    //Direito de Leitura
    QrDireitos.Close;
    QrDireitos.ParamByName('VRECUR').AsInteger   := 4;
    QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QrDireitos.Open;
    If (QrDireitos.RecordCount>0) then
      Atual_ToolBar(1);
  end;

  qryEditor.Close;
  qryEditor.Open;
end;

procedure TFrmTabPreco.DtSrcTabPrecoDataChange(Sender: TObject;
  Field: TField);
begin
  EdtVlMaxDesc.Text:= FloatToStrf((QryTabPrecoVL_ITEMTABEPREC.Value * QryTabPrecoPC_MAXIDESCITEMTABEPREC.Value / 100),ffFixed,15,2) ;
  EdtMinVenda.Text:= FloatToStrf((QryTabPrecoVL_ITEMTABEPREC.Value - (StrToFloat(EdtVlMaxDesc.Text))),ffNumber,15,2);
  EdtMaxVenda.Text:= FloatToStrf((QryTabPrecoVL_ITEMTABEPREC.Value * 30 /100 + (QryTabPrecoVL_ITEMTABEPREC.Value)),ffNumber,15,2);

  qryEditor.Close;
  qryEditor.ParamByName('PR_TABELA').Value   := QryTabPrecoID_TABEPREC.Value;
  qryEditor.ParamByName('PR_MATERIAL').Value := QryTabPrecoID_MATEEMBA.Value;
  qryEditor.Open;
end;

procedure TFrmTabPreco.SB_CANCELMouseMove(Sender: TObject;
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

procedure TFrmTabPreco.SB_CONFIRMAMouseMove(Sender: TObject;
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

procedure TFrmTabPreco.SB_EDITMouseMove(Sender: TObject;
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

procedure TFrmTabPreco.SB_EXCLUIMouseMove(Sender: TObject;
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

procedure TFrmTabPreco.SB_NOVOMouseMove(Sender: TObject;
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

procedure TFrmTabPreco.SB_ULTIMOMouseMove(Sender: TObject;
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

procedure TFrmTabPreco.SB_PROXIMOMouseMove(Sender: TObject;
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

procedure TFrmTabPreco.SB_ANTERIORMouseMove(Sender: TObject;
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

procedure TFrmTabPreco.SB_PRIMEIROMouseMove(Sender: TObject;
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

procedure TFrmTabPreco.SB_PRIMEIROClick(Sender: TObject);
begin
  QryCadTabPreco.First;
end;

procedure TFrmTabPreco.SB_ANTERIORClick(Sender: TObject);
begin
  QryCadTabPreco.Prior;
end;

procedure TFrmTabPreco.SB_PROXIMOClick(Sender: TObject);
begin
  QryCadTabPreco.Next;
end;

procedure TFrmTabPreco.SB_ULTIMOClick(Sender: TObject);
begin
  QryCadTabPreco.Last;
end;

procedure TFrmTabPreco.SB_CANCELClick(Sender: TObject);
begin
  if (QryTabPreco.State in [dsedit,dsinsert]) then
      QryTabPreco.CancelUpdates;
  if (QryCadTabPreco.State in [dsedit,dsinsert]) then
    QryCadTabPreco.CancelUpdates;

  Atual_ToolBar(1);
  LDcomponentes(False);
 //Direito a Incluir
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(9);

 //Direito a Editar
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(10);

 //Direito de Leitura
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 4;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(1);


end;

procedure TFrmTabPreco.SB_EDITClick(Sender: TObject);
begin
  if (gi_Filial <> 1) and (gi_filial <> 6) and (gi_Filial <> 9) then
  begin
    Application.MessageBox('Para alteração, entrar em contato com Setor de TI.', PChar(FrmTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Exit;
  end;

  if (TabItens.Showing) then
  begin
    QryTabPreco.Edit;
  end
  else if (TabDetalhes.Showing) then
  begin
    QryCadTabPreco.Edit;
  end;

  Atual_ToolBar(7);
  LDcomponentes(True);

end;

procedure TFrmTabPreco.BitBtn1Click(Sender: TObject);
begin
  frmConsultaProdutos:=TfrmConsultaProdutos.Create(Self);
  frmConsultaProdutos.ShowModal;
end;

procedure TFrmTabPreco.SB_NOVOClick(Sender: TObject);
begin

  if (gi_Filial <> 1) and (gi_filial <> 6) and (gi_Filial <> 9) then
  begin
    Application.MessageBox('Para inclusão, entrar em contato com Setor de TI.', PChar(FrmTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Exit;
  end;

  ActiveControl := Nil;
  LDcomponentes(True);
  if (TabDetalhes.Showing) then
    begin
      QryCadTabPreco.open;
      QryCadTabPreco.Insert;
      QryCadTabPrecoEMPRESA.Value:=gs_Empresa;
      QryCadTabPrecoFILIAL.Value:=gi_Filial;
      QryCadTabPrecoFX_TABEPREC.Value:='S';
      PageControl1.Pages[01].TabVisible := False;
      PageControl1.Pages[00].TabVisible := False;
      PageControl1.Pages[02].TabVisible := True;
      PageControl1.Pages[03].TabVisible := False;
    end
  else if (TabLista.Showing) then
    begin
      Application.MessageBox('Para cadastrar uma Tabela de Preço, acesse a aba Detalhes.', PChar(FrmTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      Exit;
    end
  else if (TabItens.Showing) then
  begin
    QryTabPreco.open;

    if QryTabPreco.RecordCount = 0 then
    begin
      grpTabelaOrigemCopia.Visible := True;
      qryTabelaOrigemCopia.Open;
    end;

    QryTabPreco.Insert;
    QryTabPrecoEMPRESA.Value :=gs_Empresa;
    QryTabPrecoFILIAL.Value :=gi_Filial;
    QryTabPrecoID_TABEPREC.Value := StrToFloat(DBEdit3.Text);
    PageControl1.Pages[01].TabVisible := False;
    PageControl1.Pages[00].TabVisible := False;
    PageControl1.Pages[02].TabVisible := false;
    PageControl1.Pages[03].TabVisible := True;
    QryTabPrecoFX_ITEMTABEPREC.Value:='N';
  end;
  Atual_ToolBar(5);
end;

procedure TFrmTabPreco.SB_CONFIRMAClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  if (TabItens.Showing)  then
    begin
      if (DBCod.Text ='') or (DBDescItem.Text ='') {or (DBPrecoVd.Text ='') or (DBPorDesc.Text ='')} then
      begin
        Application.MessageBox('Inclusão de Registro cancelada pois falta campo a ser preenchido.', PChar(FrmTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
        Screen.Cursor := crDefault;
        Exit;
      end;

      if (QryTabPreco.State=DSEDIT) or (QryTabPreco.State=DSINSERT) then
      begin
        {FABRICIO - 06/09/2018 - MOTIVO: SEMPRE GRAVAR USUARIO}
        QryTabPrecoID_USUARIO.Value := gi_IdenUsua;
        QryTabPrecoDT_ATUALIZACAO.Value := StrToDate(sDT_Atualizacao);
        QryTabPrecoVL_ITEMTABEPREC.Value := QryTabPrecoVL_0A5CX.Value;
        QryTabPrecoPC_MAXIDESCITEMTABEPREC.Value := 0;
        QryTabPreco.Post;
        QryTabPreco.ApplyUpdates;
        QryTabPreco.CommitUpdates;
      end;

      QryTabPreco.Refresh;
    end
  else if TabDetalhes.Showing then
  begin
    if (QryCadTabPreco.State=DSEDIT) or (QryCadTabPreco.State=DSINSERT) then
    begin
      QryCadTabPreco.Post;
      QryCadTabPreco.ApplyUpdates;
      QryCadTabPreco.CommitUpdates;
    end
  end;

  PageControl1.Pages[01].TabVisible := True;
  PageControl1.Pages[00].TabVisible := True;
  PageControl1.Pages[02].TabVisible := True;
  PageControl1.Pages[03].TabVisible := True;
  LDcomponentes(False);
  Screen.Cursor := crDefault;
  Atual_ToolBar(1);
end;

procedure TFrmTabPreco.SB_EXCLUIClick(Sender: TObject);
begin
  if (gi_Filial <> 1) and (gi_filial <> 6) and (gi_Filial <> 9) then
  begin
    Application.MessageBox('Para exclusão, entrar em contato com Setor de TI.', PChar(FrmTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Exit;
  end;

  If Application.MessageBox('Deseja realmente EXCLUIR esta informação?                     ', PChar(FrmTabPreco.Caption), MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    if (TabDetalhes.Showing) then
    begin
      QryCadTabPreco.Delete;
      QryCadTabPreco.ApplyUpdates;
      QryCadTabPreco.CommitUpdates;
      QryCadTabPreco.Refresh;
    end
    else if (TabLista.Showing) then
    begin
      Application.MessageBox('Para exclusão da Tabela de Preço, acesse a aba Detalhes.', PChar(FrmTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      Exit;
    end
    else if (TabItens.Showing) then
    begin
      QryTabPreco.Delete;
      QryTabPreco.ApplyUpdates;
      QryTabPreco.CommitUpdates;
      QryTabPreco.Refresh;
    end
  end;

  Atual_ToolBar(6);
end;

procedure TFrmTabPreco.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmTabPreco.DBCodExit(Sender: TObject);
begin
  If (QryTabPreco.State in [dsedit,dsinsert]) and (DBCod.Text<>'')  then
  begin
    QryEmb.Close;
    QryEmb.ParamByName('VEmb').ASFLOAT:= STRTOFLOAT(DBCod.Text);
    QryEmb.Open;
    QryTabPrecoID_PRODMATEEMBA.Value := QryEmb.FieldByname('ID_PRODMATEEMBA').AsString;
    QryTabPrecoNM_PRODMATEEMBA.Value := QryEmb.FieldByname('NM_PRODMATEEMBA').AsString;
    QryTabPrecoID_MATERIAL.Value := QryEmb.FieldByname('ID_MATERIAL').AsFloat;
    QryTabPrecoID_EMBALAGEM.Value := QryEmb.FieldByname('ID_EMBALAGEM').AsFloat;
    QryTabPrecoID_MATEEMBA.Value := QryEmb.FieldByname('ID_MATEEMBA').AsFloat;
  end;
end;

procedure TFrmTabPreco.edtLocCodChange(Sender: TObject);
begin
  QryTabPreco.Close;
  QryTabPreco.SQL.Clear;
  QryTabPreco.SQL.Add('SELECT DISTINCT TPI.EMPRESA,TPI.FILIAL,TPI.ID_ITEMTABEPREC,TPI.ID_TABEPREC,TPI.ID_MATERIAL, ');
  QryTabPreco.SQL.Add('TPI.ID_EMBALAGEM,TPI.ID_MATEEMBA,TPI.VL_ITEMTABEPREC,TPI.PC_MAXIDESCITEMTABEPREC,TPI.FX_ITEMTABEPREC, ');
  QryTabPreco.SQL.Add('TPI.FL_ATIVITEMTABEPREC,TPI.ID_USUARIO,TPI.DT_ATUALIZACAO,ME.ID_PRODMATEEMBA,ME.NM_PRODMATEEMBA, ');
  QryTabPreco.SQL.Add('TPI.VL_0A5CX,TPI.VL_10CX,TPI.VL_11A30CX,TPI.VL_31A50CX,TPI.VL_51A100CX,TPI.VL_100CX, ');
  QryTabPreco.SQL.Add('TPI.VL_0A5CX_S,TPI.VL_10CX_S,TPI.VL_11A30CX_S,TPI.VL_31A50CX_S,TPI.VL_51A100CX_S,TPI.VL_100CX_S ');
  QryTabPreco.SQL.Add('FROM TABELA_PRECO_ITEM TPI ');
  QryTabPreco.SQL.Add('INNER JOIN MATERIAL_EMBALAGEM ME ON (TPI.ID_MATERIAL = ME.ID_MATERIAL AND TPI.ID_EMBALAGEM = ME.ID_EMBALAGEM) ');
  QryTabPreco.SQL.Add('WHERE TPI.ID_TABEPREC = :ID_TABEPREC AND ');
  QryTabPreco.SQL.Add('(ME.ID_PRODMATEEMBA LIKE ' + QuotedStr('%' + edtLocCod.Text + '%') + ')');
  QryTabPreco.SQL.Add('ORDER BY ME.ID_PRODMATEEMBA');
  QryTabPreco.ParamByName('ID_TABEPREC').Value:= QryCadTabPrecoID_TABEPREC.Value;
  QryTabPreco.Open;
end;

procedure TFrmTabPreco.edtLocDescChange(Sender: TObject);
begin
  QryTabPreco.Close;
  QryTabPreco.SQL.Clear;
  QryTabPreco.SQL.Add('SELECT DISTINCT TPI.EMPRESA,TPI.FILIAL,TPI.ID_ITEMTABEPREC,TPI.ID_TABEPREC,TPI.ID_MATERIAL, ');
  QryTabPreco.SQL.Add('TPI.ID_EMBALAGEM,TPI.ID_MATEEMBA,TPI.VL_ITEMTABEPREC,TPI.PC_MAXIDESCITEMTABEPREC,TPI.FX_ITEMTABEPREC, ');
  QryTabPreco.SQL.Add('TPI.FL_ATIVITEMTABEPREC,TPI.ID_USUARIO,TPI.DT_ATUALIZACAO,ME.ID_PRODMATEEMBA,ME.NM_PRODMATEEMBA, ');
  QryTabPreco.SQL.Add('TPI.VL_0A5CX,TPI.VL_10CX,TPI.VL_11A30CX,TPI.VL_31A50CX,TPI.VL_51A100CX,TPI.VL_100CX ');
  QryTabPreco.SQL.Add('TPI.VL_0A5CX_S,TPI.VL_10CX_S,TPI.VL_11A30CX_S,TPI.VL_31A50CX_S,TPI.VL_51A100CX_S,TPI.VL_100CX_S ');
  QryTabPreco.SQL.Add('FROM TABELA_PRECO_ITEM TPI ');
  QryTabPreco.SQL.Add('INNER JOIN MATERIAL_EMBALAGEM ME ON (TPI.ID_MATERIAL = ME.ID_MATERIAL AND TPI.ID_EMBALAGEM = ME.ID_EMBALAGEM) ');
  QryTabPreco.SQL.Add('WHERE TPI.ID_TABEPREC = :ID_TABEPREC AND ');
  QryTabPreco.SQL.Add('(UPPER(ME.NM_PRODMATEEMBA) LIKE ' + QuotedStr('%' + edtLocDesc.Text + '%') + ')');
  QryTabPreco.SQL.Add('ORDER BY ME.ID_PRODMATEEMBA');
  QryTabPreco.ParamByName('ID_TABEPREC').Value:= QryCadTabPrecoID_TABEPREC.Value;
  QryTabPreco.Open;
end;

procedure TFrmTabPreco.btnLimpClick(Sender: TObject);
begin
  edtLocDesc.Clear;
  edtLocCod.Clear;
end;

procedure TFrmTabPreco.edReajusteKeyPress(Sender: TObject; var Key: Char);
begin
  If not (Key in ['0'..'9', Chr(8), '-', ',']) then Key := #0;
end;

procedure TFrmTabPreco.BitBtn2Click(Sender: TObject);
var
  vPercReaj: double;
begin
  If Application.MessageBox(PChar('Deseja aplicar reajuste de ' + edReajuste.Text + '% para TODOS produtos da tabela?'), PChar(FrmTabPreco.Caption), MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    vPercReaj:= StrToFloat(edReajuste.Text)/100;

    QryTabPreco.First;
    while not QryTabPreco.Eof do
      begin
        QryTabPreco.Edit;
        {FABRICIO - 06/09/2018 - MOTIVO: SEMPRE GRAVAR USUARIO}
        QryTabPrecoID_USUARIO.Value := gi_IdenUsua;
        QryTabPrecoDT_ATUALIZACAO.Value := StrToDate(sDT_Atualizacao);
        QryTabPrecoVL_ITEMTABEPREC.Value:= QryTabPrecoVL_ITEMTABEPREC.Value + (QryTabPrecoVL_ITEMTABEPREC.Value*vPercReaj);

        QryTabPrecoVL_0A5CX.Value   := QryTabPrecoVL_0A5CX.Value + ( QryTabPrecoVL_0A5CX.Value * vPercReaj);
        QryTabPrecoVL_10CX.Value    := QryTabPrecoVL_10CX.Value + ( QryTabPrecoVL_10CX.Value * vPercReaj);
        QryTabPrecoVL_11A30CX.Value := QryTabPrecoVL_11A30CX.Value + ( QryTabPrecoVL_11A30CX.Value * vPercReaj);
        QryTabPrecoVL_31A50CX.Value := QryTabPrecoVL_31A50CX.Value + ( QryTabPrecoVL_31A50CX.Value * vPercReaj);
        QryTabPrecoVL_51A100CX.Value:= QryTabPrecoVL_51A100CX.Value + ( QryTabPrecoVL_51A100CX.Value * vPercReaj);
        QryTabPrecoVL_100CX.Value   := QryTabPrecoVL_100CX.Value + ( QryTabPrecoVL_100CX.Value * vPercReaj);

        if QryCadTabPrecoFL_SIMPLES.AsString = 'S' then
        begin
          QryTabPrecoVL_0A5CX_S.Value   := QryTabPrecoVL_0A5CX.Value + ( QryTabPrecoVL_0A5CX.Value * vSimples);
          QryTabPrecoVL_10CX_S.Value    := QryTabPrecoVL_10CX.Value + ( QryTabPrecoVL_10CX.Value * vSimples);
          QryTabPrecoVL_11A30CX_S.Value := QryTabPrecoVL_11A30CX.Value + ( QryTabPrecoVL_11A30CX.Value * vSimples);
          QryTabPrecoVL_31A50CX_S.Value := QryTabPrecoVL_31A50CX.Value + ( QryTabPrecoVL_31A50CX.Value * vSimples);
          QryTabPrecoVL_51A100CX_S.Value:= QryTabPrecoVL_51A100CX.Value + ( QryTabPrecoVL_51A100CX.Value * vSimples);
          QryTabPrecoVL_100CX_S.Value   := QryTabPrecoVL_100CX.Value + ( QryTabPrecoVL_100CX.Value * vSimples);
        end;

        QryTabPreco.Post;
        QryTabPreco.Next;
      end;
    QryTabPreco.ApplyUpdates;
    QryTabPreco.CommitUpdates;
    Application.MessageBox(PChar('Reajuste de ' + edReajuste.Text + '% efetuado com sucesso.'), PChar(FrmTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
    edReajuste.Clear;
  end;
end;

procedure TFrmTabPreco.Btn_HistoricoPrecoClick(Sender: TObject);
begin
  FrmHistoricoPrecoTelevendas:=TFrmHistoricoPrecoTelevendas.Create(Self);
  FrmHistoricoPrecoTelevendas.LCampos.ItemIndex := 0;
  FrmHistoricoPrecoTelevendas.LCamposClick(Sender);
  FrmHistoricoPrecoTelevendas.EdExpr.Text := QryTabPrecoID_PRODMATEEMBA.Value;
  FrmHistoricoPrecoTelevendas.BtIncluir.Click;
  FrmHistoricoPrecoTelevendas.BtAtivar.Click;
  FrmHistoricoPrecoTelevendas.ShowModal;
end;

procedure TFrmTabPreco.TabItensShow(Sender: TObject);
begin
  btnExcel.Enabled := True;
  vSimples:= (QryCadTabPrecoVL_SIMPLES.Value /100);
end;

procedure TFrmTabPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmTabPreco:=Nil;
  FrmPrincipal.VEN028.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmTabPreco.FormActivate(Sender: TObject);
begin
  //Verifica a Data do Sistema
  FrmOriPesq:=4;
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := ' SELECT SYSDATE FROM DUAL ';
  qryTemp.Open;
  if not(qryTemp.IsEmpty) then
    sDT_Atualizacao := DateToStr(qryTemp.FieldByName('SYSDATE').AsDateTime);

  qryTemp.close;
end;

procedure TFrmTabPreco.btnCopiarPrecoClick(Sender: TObject);
begin
  qryTabPrecoCopia.Close;
  qryTabPrecoCopia.SQL.Clear;
  qryTabPrecoCopia.SQL.Text := 'SELECT * FROM DACAR_HIST_TABPRECOITEM WHERE TO_DATE(DT_LOG) = ''' + sDT_Atualizacao + ''' AND ID_TABPRECO = ' + QryTabPrecoID_TABEPREC.AsString + ' AND TP_OPERACAO = ''C''';
  qryTabPrecoCopia.Open;

  if qryTabPrecoCopia.RecordCount > 1 then
  begin
    Application.MessageBox('Cópia de Preços já foi realizada para essa Tabela.', PChar(FrmTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  If Application.MessageBox('Atualizar a Tabela com Preços do dia anterior?', PChar(FrmTabPreco.Caption), MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    QryTabPreco.First;
    while not QryTabPreco.Eof do
    begin
      QryTabPreco.Edit;
      QryTabPrecoID_USUARIO.Value := gi_IdenUsua;
      QryTabPrecoDT_ATUALIZACAO.Value := StrToDate(sDT_Atualizacao);
      QryTabPrecoVL_ITEMTABEPREC.Value:= QryTabPrecoVL_ITEMTABEPREC.Value;

      QryTabPrecoVL_0A5CX.Value   := QryTabPrecoVL_0A5CX.Value;
      QryTabPrecoVL_10CX.Value    := QryTabPrecoVL_10CX.Value;
      QryTabPrecoVL_11A30CX.Value := QryTabPrecoVL_11A30CX.Value;
      QryTabPrecoVL_31A50CX.Value := QryTabPrecoVL_31A50CX.Value;
      QryTabPrecoVL_51A100CX.Value:= QryTabPrecoVL_51A100CX.Value;
      QryTabPrecoVL_100CX.Value   := QryTabPrecoVL_100CX.Value;

      QryTabPrecoVL_0A5CX_S.Value   := QryTabPrecoVL_0A5CX_S.Value;
      QryTabPrecoVL_10CX_S.Value    := QryTabPrecoVL_10CX_S.Value;
      QryTabPrecoVL_11A30CX_S.Value := QryTabPrecoVL_11A30CX_S.Value;
      QryTabPrecoVL_31A50CX_S.Value := QryTabPrecoVL_31A50CX_S.Value;
      QryTabPrecoVL_51A100CX_S.Value:= QryTabPrecoVL_51A100CX_S.Value;
      QryTabPrecoVL_100CX_S.Value   := QryTabPrecoVL_100CX_S.Value;

      QryTabPreco.Post;
      QryTabPreco.Next;
    end;
    QryTabPreco.ApplyUpdates;
    QryTabPreco.CommitUpdates;

    qryTabPrecoCopia.Close;
    qryTabPrecoCopia.SQL.Clear;
    qryTabPrecoCopia.SQL.Text := 'UPDATE DACAR_HIST_TABPRECOITEM SET TP_OPERACAO = ''C'' WHERE TO_DATE(DT_LOG) = ''' + sDT_Atualizacao + ''' AND ID_TABPRECO = ' + QryTabPrecoID_TABEPREC.AsString;
    qryTabPrecoCopia.ExecSQL;

    Application.MessageBox('Tabela de Preço Atualizada com sucesso.', PChar(FrmTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
    edReajuste.Clear;
  end
end;

procedure TFrmTabPreco.btnCopiaProdutosTabelaClick(Sender: TObject);
begin

  if ( dblTabelaOrigemCopia.KeyValue <= 0 ) then
  begin
    Application.MessageBox('Selecione a Tabela da qual deseja copiar os Produtos.', PChar(FrmTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
    dblTabelaOrigemCopia.SetFocus;
    Exit;
  end;

  Screen.Cursor := crSQLWait;

  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT * FROM TABELA_PRECO_ITEM WHERE ID_TABEPREC = ' + qryTabelaOrigemCopiaID_TABEPREC.AsString + ' ORDER BY ID_MATERIAL';
  qryTemp.Open;
  qryTemp.First;

  while Not qryTemp.Eof do
  begin
    sqlTabelaOrigemCopia.SQL.Text := 'INSERT INTO TABELA_PRECO_ITEM (EMPRESA,FILIAL,ID_ITEMTABEPREC, ID_TABEPREC,ID_MATERIAL,ID_EMBALAGEM,' +
                                     'ID_MATEEMBA,VL_ITEMTABEPREC,PC_MAXIDESCITEMTABEPREC,FX_ITEMTABEPREC,FL_ATIVITEMTABEPREC,ID_USUARIO,DT_ATUALIZACAO, ' +
                                     'VL_0A5CX, VL_10CX, VL_11A30CX, VL_31A50CX, VL_51A100CX, VL_100CX, ' +
                                     'VL_0A5CX_S, VL_10CX_S, VL_11A30CX_S, VL_31A50CX_S, VL_51A100CX_S, VL_100CX_S)' +
                                     'VALUES (''CA'',''1'',ID_ITEMTABEPREC.NEXTVAL ' +
                                     ',' + QryCadTabPrecoID_TABEPREC.AsString +
                                     ',' + qryTemp.FieldByName('ID_MATERIAL').AsString +
                                     ',' + qryTemp.FieldByName('ID_EMBALAGEM').AsString +
                                     ',' + qryTemp.FieldByName('ID_MATEEMBA').AsString +
                                     ',' + StringReplace(qryTemp.FieldByName('VL_ITEMTABEPREC').AsString, ',', '.', [rfReplaceAll, rfIgnoreCase]) +
                                     ',' + qryTemp.FieldByName('PC_MAXIDESCITEMTABEPREC').AsString +
                                     ',''' + qryTemp.FieldByName('FX_ITEMTABEPREC').AsString +
                                     ''',''' + qryTemp.FieldByName('FL_ATIVITEMTABEPREC').AsString +
                                     ''',' + IntToStr(gi_IdenUsua) +
                                     ',''' + sDT_Atualizacao + '''' +
                                     ',' + StringReplace(qryTemp.FieldByName('VL_0A5CX').AsString, ',', '.', [rfReplaceAll, rfIgnoreCase]) +
                                     ',' + StringReplace(qryTemp.FieldByName('VL_10CX').AsString, ',', '.', [rfReplaceAll, rfIgnoreCase]) +
                                     ',' + StringReplace(qryTemp.FieldByName('VL_11A30CX').AsString, ',', '.', [rfReplaceAll, rfIgnoreCase]) +
                                     ',' + StringReplace(qryTemp.FieldByName('VL_31A50CX').AsString, ',', '.', [rfReplaceAll, rfIgnoreCase]) +
                                     ',' + StringReplace(qryTemp.FieldByName('VL_51A100CX').AsString, ',', '.', [rfReplaceAll, rfIgnoreCase]) +
                                     ',' + StringReplace(qryTemp.FieldByName('VL_100CX').AsString, ',', '.', [rfReplaceAll, rfIgnoreCase]) +
                                     ',' + StringReplace(qryTemp.FieldByName('VL_0A5CX_S').AsString, ',', '.', [rfReplaceAll, rfIgnoreCase]) +
                                     ',' + StringReplace(qryTemp.FieldByName('VL_10CX_S').AsString, ',', '.', [rfReplaceAll, rfIgnoreCase]) +
                                     ',' + StringReplace(qryTemp.FieldByName('VL_11A30CX_S').AsString, ',', '.', [rfReplaceAll, rfIgnoreCase]) +
                                     ',' + StringReplace(qryTemp.FieldByName('VL_31A50CX_S').AsString, ',', '.', [rfReplaceAll, rfIgnoreCase]) +
                                     ',' + StringReplace(qryTemp.FieldByName('VL_51A100CX_S').AsString, ',', '.', [rfReplaceAll, rfIgnoreCase]) +
                                     ',' + StringReplace(qryTemp.FieldByName('VL_100CX_S').AsString, ',', '.', [rfReplaceAll, rfIgnoreCase]) + ')';
    sqlTabelaOrigemCopia.Execute;
    qryTemp.Next;

  end;

  Screen.Cursor := crDefault;
  Application.MessageBox('Produtos copiados da Tabela de Preço com sucesso.', PChar(FrmTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
  QryTabPreco.CancelUpdates;
  QryTabPreco.Refresh;
  PageControl1.Pages[01].TabVisible := True;
  PageControl1.Pages[00].TabVisible := True;
  PageControl1.Pages[02].TabVisible := True;
  PageControl1.Pages[03].TabVisible := True;
  LDcomponentes(False);
  Screen.Cursor := crDefault;
  Atual_ToolBar(1);
  grpTabelaOrigemCopia.Visible := False;

end;

procedure TFrmTabPreco.btnExcelClick(Sender: TObject);
  var Arquivo: TextFile;
  sNomeTabela :string;
begin
  Screen.Cursor := crSQLWait;

  try
    QryTabPreco.Open;
    QryTabPreco.DisableControls;
    QryTabPreco.First;

    sNomeTabela:= QryCadTabPrecoNM_TABEPREC.AsString;
    sNomeTabela:= StringReplace(sNomeTabela, '/', '_', [rfReplaceAll, rfIgnoreCase]);
    sNomeTabela:= StringReplace(sNomeTabela, '\', '_', [rfReplaceAll, rfIgnoreCase]);
    sNomeTabela:= StringReplace(sNomeTabela, '(', '_', [rfReplaceAll, rfIgnoreCase]);
    sNomeTabela:= StringReplace(sNomeTabela, ')', '_', [rfReplaceAll, rfIgnoreCase]);
    sNomeTabela:= StringReplace(sNomeTabela, ' ', '_', [rfReplaceAll, rfIgnoreCase]);
    sNomeTabela:= StringReplace(sNomeTabela, '-', '_', [rfReplaceAll, rfIgnoreCase]);

    dlgSaveArquivo.FileName := 'TABELA_PRECO_' + sNomeTabela + '.csv';

    if dlgSaveArquivo.Execute then
    begin
      AssignFile(Arquivo, dlgSaveArquivo.FileName);
      Rewrite(Arquivo);

      Write(Arquivo, 'CÓDIGO;');
      Write(Arquivo, 'DESCRIÇÃO;');
      Write(Arquivo, 'R$ ATÉ 5 CX;');
      Write(Arquivo, 'R$ 6 A 10 CX;');
      Write(Arquivo, 'R$ 11 A 30 CX;');
      Write(Arquivo, 'R$ 31 A 50 CX;');
      Write(Arquivo, 'R$ 51 A 100 CX;');
      Write(Arquivo, 'R$ > 100 CX;');
      Write(Arquivo, 'Funcionário;');
      Write(Arquivo, 'R$ ATÉ 5 CX CS;');
      Write(Arquivo, 'R$ 6 A 10 CX CS;');
      Write(Arquivo, 'R$ 11 A 30 CX CS;');
      Write(Arquivo, 'R$ 31 A 50 CX CS;');
      Write(Arquivo, 'R$ 51 A 100 CX CS;');
//      Write(Arquivo, 'R$ > 100 CX CS;');
      WriteLn(Arquivo, ';');

      QryTabPreco.First;

      while not QryTabPreco.Eof do
      begin
        Write(Arquivo, QryTabPrecoID_PRODMATEEMBA.AsString + ';');
        Write(Arquivo, QryTabPrecoNM_PRODMATEEMBA.AsString + ';');
        Write(Arquivo, QryTabPrecoVL_0A5CX.AsString + ';');
        Write(Arquivo, QryTabPrecoVL_10CX.AsString + ';');
        Write(Arquivo, QryTabPrecoVL_11A30CX.AsString + ';');
        Write(Arquivo, QryTabPrecoVL_31A50CX.AsString + ';');
        Write(Arquivo, QryTabPrecoVL_51A100CX.AsString + ';');
        Write(Arquivo, QryTabPrecoVL_100CX.AsString + ';');
        Write(Arquivo, QryTabPrecoVL_100CX_S.AsString + ';');
        Write(Arquivo, QryTabPrecoVL_0A5CX_S.AsString + ';');
        Write(Arquivo, QryTabPrecoVL_10CX_S.AsString + ';');
        Write(Arquivo, QryTabPrecoVL_11A30CX_S.AsString + ';');
        Write(Arquivo, QryTabPrecoVL_31A50CX_S.AsString + ';');
        Write(Arquivo, QryTabPrecoVL_51A100CX_S.AsString + ';');
//        write(Arquivo, QryTabPrecoVL_100CX_S.AsString + ';');
        WriteLn(Arquivo, ';');

        QryTabPreco.Next;
      end;

      CloseFile(Arquivo);
      QryTabPreco.EnableControls;
      QryTabPreco.First;
      Application.MessageBox(PChar('Arquivo gerado com sucesso em ' + dlgSaveArquivo.FileName), PChar(FrmTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
    end;
  except
    Application.MessageBox('Erro ao gerar o arquivo. Verifique se o local de destino existe e está acessível.', PChar(FrmTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
  end;

  Screen.Cursor:= crDefault;

end;

procedure TFrmTabPreco.DtSrcCadTabPrecosDataChange(Sender: TObject;
  Field: TField);
begin
  if QryCadTabPrecoID_TABEPREC.Value = 3 then
    btnCopiarPreco.Enabled := False
  else
    btnCopiarPreco.Enabled := True;
end;

procedure TFrmTabPreco.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with DBGrid3 do
  begin
    Canvas.Font.Color := clBlack;

    if QryTabPreco.State = DSEDIT then
      Canvas.Brush.Color := $F0CAA6//clSilver
    else
    if Copy(AnsiUpperCase(Column.FieldName), Length(AnsiUpperCase(Column.FieldName))-1, 2) <> '_S' then
      Canvas.Brush.Color := $00E1FFE1
    else
    if Column.FieldName = 'VL_100CX_S' then
      Canvas.Brush.Color := $006DB6B6
    else
    begin
      Canvas.Brush.Color := $00E6E6FF;
      Column.ReadOnly := True;
    end;

    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TFrmTabPreco.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with DBGrid1 do
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

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmTabPreco.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin

  If key = #13 then
  begin
    case DBGrid3.SelectedIndex of
      2 : QryTabPrecoVL_0A5CX_S.Value   := QryTabPrecoVL_0A5CX.Value + ( QryTabPrecoVL_0A5CX.Value * vSimples);
      4 : QryTabPrecoVL_10CX_S.Value    := QryTabPrecoVL_10CX.Value + ( QryTabPrecoVL_10CX.Value * vSimples);
      6 : QryTabPrecoVL_11A30CX_S.Value := QryTabPrecoVL_11A30CX.Value + ( QryTabPrecoVL_11A30CX.Value * vSimples);
      8 : QryTabPrecoVL_31A50CX_S.Value := QryTabPrecoVL_31A50CX.Value + ( QryTabPrecoVL_31A50CX.Value * vSimples);
      10: QryTabPrecoVL_51A100CX_S.Value:= QryTabPrecoVL_51A100CX.Value + ( QryTabPrecoVL_51A100CX.Value * vSimples);
      12: QryTabPrecoVL_100CX_S.Value   := QryTabPrecoVL_100CX.Value + ( QryTabPrecoVL_100CX.Value * vSimples);
    end;
  end;

end;

procedure TFrmTabPreco.DBGrid3TitleClick(Column: TColumn);
begin
  if ( QryTabPreco.FieldByName(Column.FieldName).FieldKind in [fkData] ) then
  begin
    OrdemColuna := Column.FieldName;
    if ( OrdemColuna <> Column.FieldName ) OR ((OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente')  ) then
    begin
      QryTabPreco.IndexFieldNames := Column.FieldName+' ASC';
      Ordem := 'Crescente';
    end
    else
    begin
      QryTabPreco.IndexFieldNames := Column.FieldName+' DESC';;
      Ordem := 'Decrescente';
    end;
  end;
end;

procedure TFrmTabPreco.chkSimplesClick(Sender: TObject);
begin
  edtVL_SIMPLES.Enabled := chkSimples.Checked;

  if not(chkSimples.Checked) then
    QryCadTabPrecoVL_SIMPLES.Value := 0;
end;

procedure TFrmTabPreco.btnImportaXLSClick(Sender: TObject);
begin
  cdsTemp.EmptyDataSet;
  frmImportacaoDadosXLS:=TfrmImportacaoDadosXLS.Create(Self);
  frmImportacaoDadosXLS.ShowModal;

  if cdsTemp.RecordCount > 0 then
  begin
    SB_EDITClick(self);
    cdsTemp.First;
    QryTabPreco.DisableControls;

    while not QryTabPreco.Eof do
    begin
      QryTabPreco.Edit;
      QryTabPrecoID_USUARIO.Value := gi_IdenUsua;
      QryTabPrecoDT_ATUALIZACAO.Value := StrToDate(sDT_Atualizacao);
      QryTabPrecoVL_ITEMTABEPREC.Value:= QryTabPrecoVL_ITEMTABEPREC.Value;
      cdsTemp.Locate('COD', QryTabPrecoID_PRODMATEEMBA.Value,[]);
      QryTabPrecoVL_0A5CX.Value   := StrToFloat(cdsTempVL_5.Value);
      QryTabPrecoVL_10CX.Value    := StrToFloat(cdsTempVL_10.Value);
      QryTabPrecoVL_11A30CX.Value := StrToFloat(cdsTempVL_30.Value);
      QryTabPrecoVL_31A50CX.Value := StrToFloat(cdsTempVL_50.Value);
      QryTabPrecoVL_51A100CX.Value:= StrToFloat(cdsTempVL_100.Value);
      QryTabPrecoVL_100CX.Value   := StrToFloat(cdsTempVL_ACIMA100.Value);

      QryTabPrecoVL_0A5CX_S.Value   := QryTabPrecoVL_0A5CX.Value + ( QryTabPrecoVL_0A5CX.Value * vSimples);
      QryTabPrecoVL_10CX_S.Value    := QryTabPrecoVL_10CX.Value + ( QryTabPrecoVL_10CX.Value * vSimples);
      QryTabPrecoVL_11A30CX_S.Value := QryTabPrecoVL_11A30CX.Value + ( QryTabPrecoVL_11A30CX.Value * vSimples);
      QryTabPrecoVL_31A50CX_S.Value := QryTabPrecoVL_31A50CX.Value + ( QryTabPrecoVL_31A50CX.Value * vSimples);
      QryTabPrecoVL_51A100CX_S.Value:= QryTabPrecoVL_51A100CX.Value + ( QryTabPrecoVL_51A100CX.Value * vSimples);
      QryTabPrecoVL_100CX_S.Value   := QryTabPrecoVL_100CX.Value + ( QryTabPrecoVL_100CX.Value * vSimples);

      if (QryTabPrecoVL_0A5CX.Value    <=0) and
         (QryTabPrecoVL_10CX.Value     <=0) and
         (QryTabPrecoVL_11A30CX.Value  <=0) and
         (QryTabPrecoVL_31A50CX.Value  <=0) and
         (QryTabPrecoVL_51A100CX.Value <=0) and
         (QryTabPrecoVL_100CX.Value    <=0) then
        QryTabPrecoFL_ATIVITEMTABEPREC.Value := 'N';

      QryTabPreco.Post;
      QryTabPreco.Next;
    end;

    QryTabPreco.EnableControls;
    QryTabPreco.First;
    cdsTemp.First;
    QryTabPreco.Edit;
  end;

end;

end.

