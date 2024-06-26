unit UFrmPedagio;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, MemDS, DBAccess, Ora,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TFrmPedagio = class(TForm)
    PageControl1: TPageControl;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    TabLista: TTabSheet;
    TabDetalhe: TTabSheet;
    DBGrid1: TDBGrid;
    Sb_Sair: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PRIMEIRO: TSpeedButton;
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
    SB_PRINT: TSpeedButton;
    SB_ATUAL: TSpeedButton;
    DS: TDataSource;
    DBCOD: TDBEdit;
    Lbl_cod: TLabel;
    DBRodovia: TDBEdit;
    Lbl_Forn: TLabel;
    DBKm: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    DBNm_Cid: TDBEdit;
    DBVl_Eixo: TDBEdit;
    Label5: TLabel;
    DBCodCid: TDBEdit;
    Label2: TLabel;
    BtCid: TBitBtn;
    Qr: TSmartQuery;
    QrEMPRESA: TStringField;
    QrFILIAL: TIntegerField;
    QrID_PEDAGIO: TFloatField;
    QrNM_RODOVIA: TStringField;
    QrKM_PEDAGIO: TFloatField;
    QrID_CIDADE: TFloatField;
    QrVALOR_EIXO: TFloatField;
    QrNM_CIDADE: TStringField;
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
    procedure FormActivate(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure LDcomponentes(LD:boolean);
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    Function  Bot_Flat(Botao:Integer):string;
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
    procedure SB_CONFIRMAMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_CANCELMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_ATUALMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_PRINTMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Sb_SairMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BPESQClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure TabCriterioShow(Sender: TObject);
    procedure SB_ATUALClick(Sender: TObject);
    procedure DBRodoviaKeyPress(Sender: TObject; var Key: Char);
    procedure BtCidClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
//    procedure LDcomponentes(LD:boolean);

  private
    { Private declarations }
  public
    VFINAL,Vdata,Vdtstr,VCid, NCid, NEst, NPais, NReg:STRING;
    SELPE:integer;

  end;

var
  FrmPedagio: TFrmPedagio;

implementation

uses Principal, UFrmSelData, Global, UFrmPesqCid;

{$R *.dfm}

procedure TFrmPedagio.FormCreate(Sender: TObject);
begin
  // QrCliente.Open;
 //  QrVENDEDOR.Open;
 //  QryCtPr.Open;
 //  QryCtPr.Last;

end;

procedure TFrmPedagio.Sb_SairClick(Sender: TObject);
begin
  Qr.Close;
  Close;
end;

procedure TFrmPedagio.SB_PRIMEIROClick(Sender: TObject);
begin
  Qr.First;
end;

procedure TFrmPedagio.SB_ANTERIORClick(Sender: TObject);
begin
  Qr.Prior;
end;

procedure TFrmPedagio.SB_PROXIMOClick(Sender: TObject);
begin
  Qr.Next;
end;

procedure TFrmPedagio.SB_ULTIMOClick(Sender: TObject);
begin
  Qr.Last;
end;

procedure TFrmPedagio.SB_NOVOClick(Sender: TObject);
begin
  LDcomponentes(True);
  Qr.Insert;
  QrEMPRESA.Value := 'CA';
  QrFILIAL.Value := gi_Filial;
  PageControl1.Pages[2].Show;
  Atual_ToolBar(5);
end;

procedure TFrmPedagio.SB_CONFIRMAClick(Sender: TObject);
begin
  if (Qr.State in [DsInsert,DsEdit])  then
     QR.Post;
  QR.ApplyUpdates;
  QR.CommitUpdates;

  //     DBGrid2.Refresh;
//     QryCtPr.Post;
//     QryCtPr.ApplyUpdates;
//     QryCtPr.CommitUpdates;
//     QryCtPr.Close;
//     QryCtPr.Open;
//     DBGrid1.Refresh;
//    END;
//  IF (QryCtPr.State=DSEDIT) then
//    BEGIN
//     IF (QRB.State =DSEDIT) then
//        QRB.Post;
//     QRB.ApplyUpdates;
//     QRB.CommitUpdates;

//     QryCtPr.Post;
//     QryCtPr.ApplyUpdates;
//     QryCtPr.CommitUpdates;

//     DBGrid1.Refresh;
//    END;

//     QryCtPr.CommitUpdates;
  LDcomponentes(False);
  Atual_ToolBar(8);

end;

procedure TFrmPedagio.SB_CANCELClick(Sender: TObject);
begin
  Qr.CancelUpdates;
  LDcomponentes(False);
  Atual_ToolBar(9);
end;

procedure TFrmPedagio.SB_EXCLUIClick(Sender: TObject);
begin
   If MessageDlg('Deseja Realmente Excluir esta Informa��o?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
   begin
     Qr.Delete;
     Qr.ApplyUpdates;
     Qr.CommitUpdates;
//   DBGrid1.Refresh;
   end;
end;

procedure TFrmPedagio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPedagio:=nil;
//  FrmPrincipal.VEN023.Enabled:= True;
  FrmPrincipal.ACVEN023.Enabled:= True;
  Action:=caFree;
end;


procedure TFrmPedagio.Button1Click(Sender: TObject);
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



procedure TFrmPedagio.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//if QryCtPr.FieldByName('RTIPO').AsString = 'B' then
//  DBGrid1.Canvas.Brush.Color := clgreen;
//if QryCtPr.FieldByName('RTIPO').AsString = 'C' then
//  DBGrid1.Canvas.Brush.Color := clRED;
//  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;


procedure TFrmPedagio.SB_EDITClick(Sender: TObject);
begin
  LDcomponentes(True);
  Qr.Edit;
  PageControl1.Pages[2].Show;
  Atual_ToolBar(7);
end;

procedure TFrmPedagio.RadioGroup1Click(Sender: TObject);
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

procedure TFrmPedagio.QrCBRBeforePost(DataSet: TDataSet);
begin
//  ShowMessage(DBEdit3.Field.CurValue);

//  QrCBRRSEQUENCI.Value:= strtoint(DBEdit3.Field.CurValue);

end;

procedure TFrmPedagio.LCamposClick(Sender: TObject);
begin
 SELPE:=0;
  CASE LCAMPOS.ItemIndex OF
//     0:SELPE:=1;
    4:SELPE:=4;

//    6:SELPE:=6;
  END;
  IF SELPE>0 then
    BPESQ.Visible:=TRUE;

end;

procedure TFrmPedagio.FormActivate(Sender: TObject);
begin
IF LCAMPOS.Items.Count=0 then
 BEGIN
  With LCampos.Items do
   begin
     Add('Filial            ');
     Add('C�digo da Pra�a de Ped�gio  ');
     Add('Nome da Rodovia  ');
     Add('Km Ped�gio  ');
     Add('C�digo da Cidade  ');
   end;
 END;

end;

procedure TFrmPedagio.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmPedagio.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmPedagio.BtIncluirClick(Sender: TObject);
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

    //VERIFICAR SE COLOCA PARENTESES ANTES DO OR
    If RGeou.ItemIndex=0  then
       Vre:= Vre + '(' ;

   //Alterar nomes
     Case LCampos.itemindex of
        0:Vre:=Vre + 'CA_PEDAGIO.FILIAL';
        1:Vre:=Vre + 'CA_PEDAGIO.ID_PEDAGIO';
        2:Vre:=Vre + 'CA_PEDAGIO.NM_RODOVIA';
        3:Vre:=Vre + 'CA_PEDAGIO.KM_PEDAGIO';
        4:Vre:=Vre + 'CA_PEDAGIO.ID_CIDADE';
    end;

     Case CBCond.ItemIndex of
       0: Vre:=Vre + ' =  ';
       1: Vre:=Vre + ' <> ';
       2: Vre:=Vre + ' >  ';
       3: Vre:=Vre + ' >= ';
       4: Vre:=Vre + ' <  ';
       5: Vre:=Vre + ' <= ';
       6: Vre:=Vre + ' like ';
     end;

     Case LCampos.itemindex of
//         1:Vre:=Vre + 'TO_DATE(''';
           2:Vre:=Vre + '''';
     end;

     If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

     Vre:=Vre + Edexpre.text;

     If CBCond.ItemIndex=6 then
       Vre:=Vre + '%';

     Case LCampos.itemindex of
//       1:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
         2:Vre:=Vre + '''';

     end;

     Vre:=Vre+')';

     MResul.Lines.Add(Vre);

     EdExpre.Text :='';
     BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;

end;

procedure TFrmPedagio.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin
// TRY
   Screen.Cursor := crSQLWait;
   Qr.Close;
   WITH Qr.SQL DO
   BEGIN
      Clear;
      Add('SELECT   ');
      Add('  CA_PEDAGIO.EMPRESA,  ');
      Add('  CA_PEDAGIO.FILIAL,   ');
      Add('  CA_PEDAGIO.ID_PEDAGIO, ');
      Add('  CA_PEDAGIO.NM_RODOVIA, ');
      Add('  CA_PEDAGIO.KM_PEDAGIO, ');
      Add('  CA_PEDAGIO.ID_CIDADE,  ');
      Add('  CA_PEDAGIO.VALOR_EIXO, ');
      Add('  CIDADE.NM_CIDADE       ');
      Add('FROM             ');
      Add('  CA_PEDAGIO,    ');
      Add('  CIDADE         ');
      Add('WHERE   ');
      Add('  CIDADE.ID_CIDADE = CA_PEDAGIO.ID_CIDADE   AND  ');
      Add('  CA_PEDAGIO.EMPRESA=''' + gs_Empresa + ''' AND  ');
      Add('  CA_PEDAGIO.FILIAL= ' + IntToStr(GI_FILIAL));
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
      Qr.SQL.Add('ORDER BY ID_PEDAGIO');
      Qr.Open;

      PageControl1.Pages[1].Show;
      Screen.Cursor := crDefault;
      PageControl1.Pages[1].TabVisible := True;
      PageControl1.Pages[2].TabVisible := True;

 //     QrC.Open;

  LDcomponentes(False);
  Atual_ToolBar(9);

end;

procedure TFrmPedagio.LDcomponentes(LD:boolean);
var
  Temp:TComponent;
  li_Loop:Integer;
begin
 BtCid.Visible := LD;
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

function TFrmPedagio.Atual_ToolBar(BtOrdem: Integer): string;
begin
 CASE BtOrdem of
   5,7:begin
     SB_NOVO.Enabled:=False;
     SB_EDIT.Enabled:=False;
     SB_EXCLUI.Enabled:=False;
     SB_PRIMEIRO.Enabled:=False;
     SB_PROXIMO.Enabled:=False;
     SB_ANTERIOR.Enabled:=False;
     SB_ULTIMO.Enabled:=False;
     SB_CONFIRMA.Enabled :=TRUE;
     SB_CANCEL.Enabled :=TRUE;
     SB_PRINT.Enabled := FALSE;
     end;
   8..9:begin
     SB_NOVO.Enabled:=True;
     SB_EDIT.Enabled:=True;
     SB_EXCLUI.Enabled:=True;
     SB_PRIMEIRO.Enabled:=True;
     SB_PROXIMO.Enabled:=True;
     SB_ANTERIOR.Enabled:=True;
     SB_ULTIMO.Enabled:=True;
     SB_CONFIRMA.Enabled :=FALSE;
     SB_CANCEL.Enabled :=FALSE;
     SB_PRINT.Enabled := TRUE;
   end;
 end;
end;

Function TFrmPedagio.Bot_Flat(Botao:Integer):string;
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
 SB_PRINT.Flat    := True;
 SB_SAIR.Flat     := True;
 SB_ATUAL.Flat    := True;

 If Botao=1 then SB_PRIMEIRO.Flat := False;
 If Botao=2 then SB_ANTERIOR.Flat := False;
 If Botao=3 then SB_PROXIMO.Flat  := False;
 If Botao=4 then SB_ULTIMO.Flat   := False;
 If Botao=5 then SB_NOVO.Flat     := False;
 If Botao=6 then SB_EXCLUI.Flat   := False;
 If Botao=7 then SB_EDIT.Flat     := False;
 If Botao=8 then SB_CONFIRMA.Flat := False;
 If Botao=9 then SB_CANCEL.Flat   := False;
 If Botao=10 then SB_ATUAL.Flat   := False;
 If Botao=11 then SB_PRINT.Flat   := False;
 If Botao=12 then SB_SAIR.Flat    := False;

end;



procedure TFrmPedagio.SB_PRIMEIROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(1);
end;

procedure TFrmPedagio.SB_ANTERIORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(2);
end;

procedure TFrmPedagio.SB_PROXIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(3);
end;

procedure TFrmPedagio.SB_ULTIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(4);
end;

procedure TFrmPedagio.SB_NOVOMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Bot_Flat(5);
end;

procedure TFrmPedagio.SB_EXCLUIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(6);
end;

procedure TFrmPedagio.SB_EDITMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Bot_Flat(7);
end;

procedure TFrmPedagio.SB_CONFIRMAMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(8);
end;

procedure TFrmPedagio.SB_CANCELMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(9);
end;

procedure TFrmPedagio.SB_ATUALMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Bot_Flat(10);
end;

procedure TFrmPedagio.SB_PRINTMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Bot_Flat(11);
end;

procedure TFrmPedagio.Sb_SairMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Bot_Flat(12);
end;

procedure TFrmPedagio.BPESQClick(Sender: TObject);
begin
 try
//    XRPM:=2;
//    FrmOriPesq:=2;
    CASE SELPE OF
     4:BEGIN
        Cria_FrmPesqCid(VCid, NCid, NEst, NPais, NReg);
        EdExpre.text:= VCid;
        BtIncluir.SetFocus;
       END;
//     3:BEGIN
//        Cria_FrmSelData(Vdtstr);
//        EdExpre.text:= Vdtstr;
//        BtIncluir.SetFocus;
//       END;
//     4:BEGIN
//        FrmPesqMaterial:=TFrmPesqMaterial.Create(Self);
//        FrmPesqMaterial.ShowModal;
       END;

 except;
   SHOWMESSAGE('N�o foi poss�vel abrir o Form.');
 end;
 BPESQ.Visible:=FALSE;

end;

procedure TFrmPedagio.DBGrid1TitleClick(Column: TColumn);
 var
   linha:integer;
begin
 linha := Pos('ORDER',Qr.SQL.text);

 Qr.SQL.text := copy(Qr.SQL.text,0,linha-1);
 Qr.SQL.add(' ORDER BY ' + Column.FieldName);
 Qr.Open;

end;

(*procedure TFrmModelo.LDcomponentes(LD:boolean);
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
end; *)


procedure TFrmPedagio.TabCriterioShow(Sender: TObject);
begin
  CBCond.Enabled := True;
  EdExpre.Enabled := True;
  BtLimpar.Enabled := True;
  BtAtivar.Enabled := True;
  BPESQ.Enabled := True;
  RGeou.Enabled := True;
end;

procedure TFrmPedagio.SB_ATUALClick(Sender: TObject);
begin
  Qr.Refresh;
end;

procedure TFrmPedagio.DBRodoviaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

  end;
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmPedagio.BtCidClick(Sender: TObject);
begin
  Cria_FrmPesqCid(VCid, NCid, NEst, NPais, NReg);
  DBCodCid.Text := VCid;
  DBNm_Cid.Text := NCid;
end;

procedure TFrmPedagio.FormShow(Sender: TObject);
begin
  PageControl1.Pages[1].TabVisible:=false;
  PageControl1.Pages[2].TabVisible:=false;
end;

end.


