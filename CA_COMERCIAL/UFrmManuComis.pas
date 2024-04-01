unit UFrmManuComis;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, Data.DB, DBAccess, Ora, MemDS, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, OraSmart, OraError;

type
  TFrmManuComis = class(TForm)
    PageControl1: TPageControl;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    TabLista: TTabSheet;
    DBGrid1: TDBGrid;
    ToolButton1: TToolButton;
    Sb_Sair: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PRIMEIRO: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    ToolButton3: TToolButton;
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
    Qr: TOraQuery;
    DS: TOraDataSource;
    QrCPORCOMIS: TFloatField;
    QrFL_COMIS: TStringField;
    QrEMPRESA: TStringField;
    QrFILIAL: TIntegerField;
    QrID_PEDIVEND: TFloatField;
    QrID_CLIENTE: TFloatField;
    QrID_VENDEDOR: TFloatField;
    QrDT_PEDIVEND: TDateTimeField;
    QrDT_ENTRPEDIVEND: TDateTimeField;
    QrDT_DIGIPEDIVEND: TDateTimeField;
    QrDT_FATUPEDIVEND: TDateTimeField;
    QrID_TIPOPEDIVEND: TFloatField;
    QrID_FORMPAGA: TFloatField;
    QrID_SITUCOBR: TFloatField;
    QrID_INSTCOBR: TFloatField;
    QrID_ENDECLIE_COBRANCA: TFloatField;
    QrID_ENDECLIE_ENTREGA: TFloatField;
    QrID_CARGEXPE: TFloatField;
    QrID_CONTA: TFloatField;
    QrID_TIPOCOBR: TFloatField;
    QrID_LOTEEDIPEDIVEND: TFloatField;
    QrID_USUASIST_DIGIPEDIVEND: TIntegerField;
    QrID_USUASIST_AUTOPEDIVEND: TIntegerField;
    QrID_TIPOLOGI: TFloatField;
    QrSG_TIPOFRETPEDIVEND: TStringField;
    QrVL_SEGUPEDIVEND: TFloatField;
    QrVL_DESPPEDIVEND: TFloatField;
    QrVL_FRETPEDIVEND: TFloatField;
    QrVL_DESCPEDIVEND: TFloatField;
    QrVL_PEDIVEND: TFloatField;
    QrGN_ESPEPEDIVEND: TStringField;
    QrGN_MARCPEDIVEND: TStringField;
    QrQN_VOLUPEDIVEND: TIntegerField;
    QrQN_EMBAPEDIVEND: TIntegerField;
    QrQN_PESOPEDIVEND: TFloatField;
    QrQN_TARAPEDIVEND: TFloatField;
    QrQN_EMBAEXPEPEDIVEND: TIntegerField;
    QrQN_PESOPADREXPEPEDIVEND: TFloatField;
    QrQN_TARAREALEXPEPEDIVEND: TFloatField;
    QrNM_VENDEDOR: TStringField;
    QrNM_FANTCLIE: TStringField;
    QrID_VENDEDORCOMIS: TFloatField;
    QrNM_VENDEDORCOMIS: TStringField;
    Qr_Vendedor: TOraQuery;
    Qr_VendedorID_VENDEDOR: TFloatField;
    Qr_VendedorNM_VENDEDOR: TStringField;
    QrLKP_VENDEDOR: TStringField;
    Qr_Diretoria: TOraQuery;
    Qr_DiretoriaID_USUARIO: TIntegerField;
    procedure FormCreate(Sender: TObject);
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
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure QrAfterEdit(DataSet: TDataSet);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure QrBeforeEdit(DataSet: TDataSet);

  private
    { Private declarations }
    Diretoria : Boolean;  
  public
    VFINAL,Vdata:STRING;
    SELPE:integer;
    VPAIS,VCON:INTEGER;
    VPESSOCLI,VItemInclui,ub_PermVend:string;
    VPc_Comis,VId_Cli,ur_ValoPediAnte,VId_Pedivend:Double;
    VDATATU:TDATETIME;
    Vdtstr:string;
    VExporta:Boolean;

  end;

var
  FrmManuComis: TFrmManuComis;

implementation

uses Principal,Global, UPesquiCliente, UFrmPesqVend,UFrmSeldata, Math;

{$R *.dfm}

procedure TFrmManuComis.FormCreate(Sender: TObject);
begin
 frmPrincipal.TrocaNomeSequence(Self);

end;

procedure TFrmManuComis.Sb_SairClick(Sender: TObject);
begin
   Qr.Close;
//   QrCliente.Close;
//   QrVENDEDOR.Close;
   Close;
end;

procedure TFrmManuComis.SB_PRIMEIROClick(Sender: TObject);
begin
  Qr.First;
end;

procedure TFrmManuComis.SB_ANTERIORClick(Sender: TObject);
begin
  Qr.Prior;
end;

procedure TFrmManuComis.SB_PROXIMOClick(Sender: TObject);
begin
  Qr.Next;
end;

procedure TFrmManuComis.SB_ULTIMOClick(Sender: TObject);
begin
  Qr.Last;
end;

procedure TFrmManuComis.SB_NOVOClick(Sender: TObject);
begin
//  QryCtPr.Append;
//  IF PageControl1.ActivePageIndex=0 then
//    DBGrid1.SetFocus
//  ELSE
//     DBNUMTITU.SetFocus;

//  SB_CONFIRMA.Enabled :=TRUE;
//  SB_CANCEL.Enabled :=TRUE;
end;

procedure TFrmManuComis.SB_CONFIRMAClick(Sender: TObject);
begin
  IF (Qr.State=DSINSERT) or (QR.State =DSEDIT)  then
    BEGIN
      QR.Post;
    end;
  Qr.ApplyUpdates;
  Qr.CommitUpdates;

  SB_CONFIRMA.Enabled :=FALSE;
  SB_CANCEL.Enabled :=FALSE;
end;

procedure TFrmManuComis.SB_CANCELClick(Sender: TObject);
begin
  Qr.CancelUpdates;
  SB_CONFIRMA.Enabled :=FALSE;
  SB_CANCEL.Enabled :=FALSE;
end;



procedure TFrmManuComis.SB_EXCLUIClick(Sender: TObject);
begin
//   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then

//   QryCtPr.Delete;
//   QryCtPr.ApplyUpdates;
//   QryCtPr.CommitUpdates;
//   DBGrid1.Refresh;

end;

procedure TFrmManuComis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmManuComis:=nil;
//  FrmPrincipal.VEN010.Enabled:= True;
  FrmPrincipal.ACVEN010.Enabled:= True;
  Action:=caFree;
end;


procedure TFrmManuComis.Button1Click(Sender: TObject);
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



procedure TFrmManuComis.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//if QryCtPr.FieldByName('RTIPO').AsString = 'B' then
//  DBGrid1.Canvas.Brush.Color := clgreen;
//if QryCtPr.FieldByName('RTIPO').AsString = 'C' then
//  DBGrid1.Canvas.Brush.Color := clRED;
//  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;


procedure TFrmManuComis.SB_EDITClick(Sender: TObject);
begin
//  QryCtPr.Edit;
//  SB_CONFIRMA.Enabled :=TRUE;
//  SB_CANCEL.Enabled :=TRUE;
end;

procedure TFrmManuComis.RadioGroup1Click(Sender: TObject);
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

procedure TFrmManuComis.QrCBRBeforePost(DataSet: TDataSet);
begin
//  ShowMessage(DBEdit3.Field.CurValue);

//  QrCBRRSEQUENCI.Value:= strtoint(DBEdit3.Field.CurValue);

end;

procedure TFrmManuComis.LCamposClick(Sender: TObject);
begin
 SELPE:=0;
 CASE LCAMPOS.ItemIndex OF
     1:SELPE:=1;
     3:SELPE:=3;
  4..6:SELPE:=6;
  END;
  IF SELPE>0 then
    BPESQ.Visible:=TRUE;

end;

procedure TFrmManuComis.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmManuComis.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmManuComis.BtIncluirClick(Sender: TObject);
var
   Vre,VA:String;
   Vcampos,FA,FO:integer;
begin
//  VA:='P';
//  FA:=0;
//  FO:=0;
  If EdExpre.Text<>'' then
   Begin
     IF MResul.Lines.Count>0 then
       begin
         If RGeou.ItemIndex=0  then
          begin
            Vre:='And ';
  //          FA:=1;
          end
         Else
          begin
            Vre:='Or ';
//            FO:=1;
          end;
       end;
     If  LCampos.itemindex=-1 then
         Vcampos:=0
     else
         Vcampos:=LCampos.itemindex;
 {   //VERIFICAR SE COLOCA PARENTESES ANTES DO OR
     IF FA=0 AND FO=1 then
      BEGIN
        IF VA='P' OR VA='A' then
          begin
            Vre:= '('+ Vre;
            VA:='M';
          end;
      END;}

     Case LCampos.itemindex of
       0:Vre:=Vre + 'pedido_venda.ID_PEDIVEND';
       1:Vre:=Vre + 'pedido_venda.ID_CLIENTE';
       2:Vre:=Vre + 'pedido_venda.id_formpaga';
       3:Vre:=Vre + 'pedido_venda.ID_VENDEDOR';
       4:Vre:=Vre + 'pedido_venda.dt_digipedivend';
       5:Vre:=Vre + 'pedido_venda.DT_ENTRPEDIVEND';
       6:Vre:=Vre + 'pedido_venda.dt_pedivend';
       7:Vre:=Vre + 'pedido_venda.ie_pedivend';
       8:Vre:=Vre + 'pedido_venda.fl_statpedivend ';
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
      4..6:Vre:=Vre + 'TO_DATE(''';
          7:Vre:=Vre + '''';
          8:Vre:=Vre + '''';
      end;

     Vre:=Vre + Edexpre.text;

     Case LCampos.itemindex of
      4..6:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
          7:Vre:=Vre + '''';
          8:Vre:=Vre + '''';
     end;

     MResul.Lines.Add(Vre);

     EdExpre.Text :='';
     BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;


end;

procedure TFrmManuComis.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin
// TRY
   Screen.Cursor := crSQLWait;
   Qr.Close;
   WITH Qr.SQL DO
    BEGIN
     Clear;
     Text:=' SELECT Pedido_venda.ID_USUASIST_DIGIPEDIVEND, Pedido_venda.EMPRESA, Pedido_venda.FILIAL,    '+
  '     Pedido_venda.ID_PEDIVEND, Pedido_venda.ID_CLIENTE, Pedido_venda.ID_VENDEDOR,                     '+
  '     Pedido_venda.DT_PEDIVEND, Pedido_venda.DT_ENTRPEDIVEND, Pedido_venda.DT_DIGIPEDIVEND,            '+
  '     Pedido_venda.DT_FATUPEDIVEND, Pedido_venda.ID_TIPOPEDIVEND, Pedido_venda.ID_FORMPAGA,            '+
  '     Pedido_venda.ID_SITUCOBR, Pedido_venda.ID_INSTCOBR, Pedido_venda.ID_ENDECLIE_COBRANCA,           '+
  '     Pedido_venda.ID_ENDECLIE_ENTREGA, Pedido_venda.IE_PEDIVEND, Pedido_venda.PC_DESCPEDIVEND,        '+
  '     Pedido_venda.PC_BONIPEDIVEND,                         '+
  '     Pedido_venda.ID_CARGEXPE, Pedido_venda.ID_CONTA, Pedido_venda.ID_TIPOCOBR,                       '+
  '     Pedido_venda.ID_LOTEEDIPEDIVEND, Pedido_venda.ID_USUASIST_AUTOPEDIVEND,                          '+
  '     Pedido_venda.ID_TIPOLOGI, Pedido_venda.SG_TIPOFRETPEDIVEND, Pedido_venda.VL_SEGUPEDIVEND,        '+
  '     Pedido_venda.VL_DESPPEDIVEND, Pedido_venda.VL_FRETPEDIVEND, Pedido_venda.VL_DESCPEDIVEND,         '+
  '     Pedido_venda.VL_PEDIVEND, Pedido_venda.GN_ESPEPEDIVEND, Pedido_venda.GN_MARCPEDIVEND,              '+
  '     Pedido_venda.QN_VOLUPEDIVEND, Pedido_venda.QN_EMBAPEDIVEND, Pedido_venda.QN_PESOPEDIVEND,            '+
  '     Pedido_venda.QN_TARAPEDIVEND, Pedido_venda.QN_EMBAEXPEPEDIVEND, Pedido_venda.QN_PESOPADREXPEPEDIVEND,   '+
  '     Pedido_venda.QN_TARAREALEXPEPEDIVEND, Pedido_venda.QN_PESOREALEXPEPEDIVEND,                             '+
  '     Pedido_venda.QN_FATOFRETABAT_PEDIVEND, Pedido_venda.FL_ESPEPEDIVEND, Pedido_venda.FL_STATPEDIVEND,      '+
  '     Pedido_venda.NR_ORDEPEDIVEND, Pedido_venda.GN_OBSEPADR_PEDIVEND, Pedido_venda.GN_OBSEEXPEPEDIVEND,      '+
  '     Pedido_venda.GN_OBSEPEDIVEND, Pedido_venda.FX_PEDIVEND,      '+
  '     Pedido_venda.NR_PEDIVEND, Pedido_venda.VL_FATUPEDIVEND, Pedido_venda.VL_QUEBPEDIVEND,                   '+
  '     Pedido_venda.VL_OUTRAJUSPEDIVEND, Pedido_venda.VL_DEVOPEDIVEND, Pedido_venda.QN_PESOPADRDEVOPEDIVEND,   '+
  '     Pedido_venda.QN_PESOREALDEVOPEDIVEND, Pedido_venda.QN_TARAREALDEVOPEDIVEND,                             '+
  '     Pedido_Venda.CPORCOMIS, VENDEDOR.NM_VENDEDOR,  CLIENTE.NM_FANTCLIE,  PEDIDO_VENDA.FL_COMIS,             '+
  '     PEDIDO_VENDA.ID_VENDEDORCOMIS, VC.NM_VENDEDOR NM_VENDEDORCOMIS                                          '+
  ' FROM PEDIDO_VENDA Pedido_venda, CLIENTE, VENDEDOR, VENDEDOR VC , PEDIDO_VENDA_TIPO '+
  ' WHERE   (Pedido_venda.ID_CLIENTE = Cliente.ID_CLIENTE)       '+
  '    AND  (Pedido_venda.ID_VENDEDOR = Vendedor.ID_VENDEDOR)    '+
  '    AND  (PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = PEDIDO_VENDA.ID_TIPOPEDIVEND '+
  '    AND   PEDIDO_VENDA_TIPO.FL_GERACOMITIPOPEDIVEND = ''S''  )'+
  '    AND  (PEDIDO_VENDA.ID_VENDEDORCOMIS = VC.ID_VENDEDOR(+))  '+
  //'    AND   Pedido_venda.ID_TIPOPEDIVEND = 15                   '+
  '    AND   PEDIDO_VENDA.EMPRESA=''' + gs_Empresa + '''         '+
  '    AND   PEDIDO_VENDA.FILIAL= ' + inttostr(GI_FILIAL);
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
      Qr.SQL.Add('ORDER BY Pedido_venda.ID_PEDIVEND');
      Qr.Open;
      Qr.Refresh;
//**********************************************
      PageControl1.Pages[1].Show;
      Screen.Cursor := crDefault;
      PageControl1.Pages[1].TabVisible := True;
//      PageControl1.Pages[2].TabVisible := True;

 //     QrC.Open;

      SB_PRIMEIRO.Enabled:= true;
      SB_ANTERIOR.Enabled:= true;
      SB_PROXIMO.Enabled:= true;
      SB_ULTIMO.Enabled:= true;
//      SB_NOVO.Enabled:= true;
//      SB_EXCLUI.Enabled:= true;

end;

procedure TFrmManuComis.FormShow(Sender: TObject);
begin
     Diretoria := false;

     Qr_Diretoria.Close;
     Qr_Diretoria.ParamByName('ID_USUARIO').Value := gi_IdenUsua;
     Qr_Diretoria.Open;

     if ( Qr_Diretoria.RecordCount > 0 ) then
        Diretoria := true
     else
        Diretoria := false;

    if ( Diretoria ) then
    begin
         QrCPORCOMIS.ReadOnly        := false;
         QrFL_COMIS.ReadOnly         := false;
         QrID_VENDEDORCOMIS.ReadOnly := false;
         QrLKP_VENDEDOR.ReadOnly     := false;
    end
    else
    begin
         QrCPORCOMIS.ReadOnly        := true;
         QrFL_COMIS.ReadOnly         := true;
         QrID_VENDEDORCOMIS.ReadOnly := true;
         QrLKP_VENDEDOR.ReadOnly     := true;
    end;


IF LCAMPOS.Items.Count=0 then
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
 END;

 PageControl1.Pages[1].TabVisible:=false;
// PageControl1.Pages[2].TabVisible:=false;

end;

procedure TFrmManuComis.FormDestroy(Sender: TObject);
begin
  FrmManuComis:=Nil;
end;

procedure TFrmManuComis.BPESQClick(Sender: TObject);
begin
   XRPM:=2;
   FrmOriPesq:=2;
   CASE SELPE OF
     1:BEGIN
        FrmPesqCliente:=TFrmPesqCliente.Create(Self);
        FrmPesqCliente.ShowModal;
       END;
     3:BEGIN
        FrmPesqVend:=TFrmPesqVend.Create(Self);
        FrmPesqVend.ShowModal;
       END;
  4..6:BEGIN
        Cria_FrmSelData(Vdtstr);
        EdExpre.text:= Vdtstr;
{        FrmSeldata:=TFrmSeldata.Create(Self);
        FrmSeldata.ShowModal; }
       END;

   end;
   BPESQ.Visible:=FALSE;

   SB_ULTIMO.Enabled := true;
   SB_PROXIMO.Enabled:= true;
   SB_ANTERIOR.Enabled:= true;
   SB_PRIMEIRO.Enabled:= true;


end;

procedure TFrmManuComis.QrAfterEdit(DataSet: TDataSet);
begin
     if ( Diretoria ) then
     begin
          SB_CONFIRMA.Enabled:= True;
          SB_CANCEL.Enabled := True;
     end;
end;

procedure TFrmManuComis.DBGrid1TitleClick(Column: TColumn);
var
  linha:integer;
begin
     if ( Column.FieldName <> 'LKP_VENDEDOR' ) then
     begin
          Screen.Cursor := crSQLWait;
          linha := Pos('ORDER',Qr.SQL.text);
          Qr.SQL.text := copy(Qr.SQL.text,0,linha-1);
          Qr.SQL.add(' ORDER BY ' + Column.FieldName);
          Qr.Open;
          Screen.Cursor:= crDefault;
     end;
end;

procedure TFrmManuComis.QrBeforeEdit(DataSet: TDataSet);
begin
     if ( not Diretoria) then
     begin
          ShowMessage('Usuário não autorizado');
          abort;
     end;

end;

end.

