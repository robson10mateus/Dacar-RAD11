unit UFrmRegiao;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin,  , OraSmart, OraError;

type
  TFrmRegiao = class(TForm)
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
    Qr: TOraQuery;
    SB_PRINT: TSpeedButton;
    ToolButton4: TToolButton;
    SB_ATUAL: TSpeedButton;
    ToolButton5: TToolButton;
    DS: TDataSource;
    DBCOD: TDBEdit;
    Lbl_cod: TLabel;
    DBNm_SubRegiao: TDBEdit;
    Lbl_Forn: TLabel;
    DBFatorFrete: TDBEdit;
    Label1: TLabel;
    QrPedagio: TOraQuery;
    QrPed_SubReg: TOraQuery;
    QrEMPRESA: TStringField;
    QrFILIAL: TIntegerField;
    QrID_SUBRLOGI: TFloatField;
    QrNM_SUBRLOGI: TStringField;
    QrFX_SUBRLOGI: TStringField;
    QrID_INTESUBRLOGI: TStringField;
    QrQN_FATOFRETABATSUBRLOGI: TFloatField;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    DSpedagio: TDataSource;
    QrPedagioEMPRESA: TStringField;
    QrPedagioFILIAL: TIntegerField;
    QrPedagioID_PEDAGIO: TFloatField;
    QrPedagioNM_RODOVIA: TStringField;
    QrPedagioKM_PEDAGIO: TFloatField;
    QrPedagioID_CIDADE: TFloatField;
    QrPedagioVALOR_EIXO: TFloatField;
    QrPedagioNM_CIDADE: TStringField;
    QrPedagioID_SUBRLOGI: TFloatField;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBNomeRodo: TDBEdit;
    Label3: TLabel;
    DBKm: TDBEdit;
    Label4: TLabel;
    DBVlEixo: TDBEdit;
    Label5: TLabel;
    DBCodCid: TDBEdit;
    Label8: TLabel;
    DBCidade: TDBEdit;
    Label9: TLabel;
    QrPed_SubRegID_PEDAGIO_SUBREGIAO: TFloatField;
    QrPed_SubRegID_PEDAGIO: TFloatField;
    QrPed_SubRegID_SUBRLOGI: TFloatField;
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
    procedure DBNm_SubRegiaoKeyPress(Sender: TObject; var Key: Char);
    procedure BtCidClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
//    procedure LDcomponentes(LD:boolean);

  private
    { Private declarations }
  public
    VFINAL,Vdata,Vdtstr,VCid, NCid, NEst, NPais, NReg:STRING;
    SELPE:integer;

  end;

var
  FrmRegiao: TFrmRegiao;

implementation

uses Principal, UFrmSelData, Global, UFrmPesqCid, DateUtils;

{$R *.dfm}

procedure TFrmRegiao.FormCreate(Sender: TObject);
begin
  // QrCliente.Open;
 //  QrVENDEDOR.Open;
 //  QryCtPr.Open;
 //  QryCtPr.Last;

end;

procedure TFrmRegiao.Sb_SairClick(Sender: TObject);
begin
  Qr.Close;
  Close;
end;

procedure TFrmRegiao.SB_PRIMEIROClick(Sender: TObject);
begin
  Qr.First;
end;

procedure TFrmRegiao.SB_ANTERIORClick(Sender: TObject);
begin
  Qr.Prior;
end;

procedure TFrmRegiao.SB_PROXIMOClick(Sender: TObject);
begin
  Qr.Next;
end;

procedure TFrmRegiao.SB_ULTIMOClick(Sender: TObject);
begin
  Qr.Last;
end;

procedure TFrmRegiao.SB_NOVOClick(Sender: TObject);
begin
  LDcomponentes(True);
  Qr.Insert;
  QrEMPRESA.Value := 'CA';
  QrFILIAL.Value := gi_Filial;
  PageControl1.Pages[2].Show;
  Atual_ToolBar(5);
end;

procedure TFrmRegiao.SB_CONFIRMAClick(Sender: TObject);
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
//  IF (QryCtPr.State=DSEDIT) THEN
//    BEGIN
//     IF (QRB.State =DSEDIT) THEN
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

procedure TFrmRegiao.SB_CANCELClick(Sender: TObject);
begin
  Qr.CancelUpdates;
  LDcomponentes(False);
  Atual_ToolBar(9);
end;

procedure TFrmRegiao.SB_EXCLUIClick(Sender: TObject);
begin
   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
   begin
     Qr.Delete;
     Qr.ApplyUpdates;
     Qr.CommitUpdates;
//   DBGrid1.Refresh;
   end;
end;

procedure TFrmRegiao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;


procedure TFrmRegiao.Button1Click(Sender: TObject);
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



procedure TFrmRegiao.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//if QryCtPr.FieldByName('RTIPO').AsString = 'B' then
//  DBGrid1.Canvas.Brush.Color := clgreen;
//if QryCtPr.FieldByName('RTIPO').AsString = 'C' then
//  DBGrid1.Canvas.Brush.Color := clRED;
//  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;


procedure TFrmRegiao.SB_EDITClick(Sender: TObject);
begin
  LDcomponentes(True);
  Qr.Edit;
  PageControl1.Pages[2].Show;
  Atual_ToolBar(7);
end;

procedure TFrmRegiao.RadioGroup1Click(Sender: TObject);
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

procedure TFrmRegiao.QrCBRBeforePost(DataSet: TDataSet);
begin
//  ShowMessage(DBEdit3.Field.CurValue);

//  QrCBRRSEQUENCI.Value:= strtoint(DBEdit3.Field.CurValue);

end;

procedure TFrmRegiao.LCamposClick(Sender: TObject);
begin
 SELPE:=0;
  CASE LCAMPOS.ItemIndex OF
//     0:SELPE:=1;
    4:SELPE:=4;

//    6:SELPE:=6;
  END;
  IF SELPE>0 THEN
    BPESQ.Visible:=TRUE;

end;

procedure TFrmRegiao.FormActivate(Sender: TObject);
begin
IF LCAMPOS.Items.Count=0 THEN
 BEGIN
  With LCampos.Items do
   begin
     Add('Filial            ');
     Add('Código da Praça de Pedágio  ');
     Add('Nome da Rodovia  ');
     Add('Km Pedágio  ');
     Add('Código da Cidade  ');
   end;
 END;

end;

procedure TFrmRegiao.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmRegiao.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmRegiao.BtIncluirClick(Sender: TObject);
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
        0:Vre:=Vre + 'LOGISTICA_SUBREGIAO.FILIAL';
        1:Vre:=Vre + 'LOGISTICA_SUBREGIAO.ID_SUBRLOGI';
        2:Vre:=Vre + 'LOGISTICA_SUBREGIAO.NM_SUBRLOGI';
        3:Vre:=Vre + 'LOGISTICA_SUBREGIAO.QN_FATOFRETABATSUBRLOGI';
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

     MResul.Append(Vre);

     EdExpre.Text :='';
     BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;

end;

procedure TFrmRegiao.BtAtivarClick(Sender: TObject);
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
      Add('  LOGISTICA_SUBREGIAO.EMPRESA, ');
      Add('  LOGISTICA_SUBREGIAO.FILIAL, ');
      Add('  LOGISTICA_SUBREGIAO.ID_SUBRLOGI, ');
      Add('  LOGISTICA_SUBREGIAO.NM_SUBRLOGI, ');
      Add('  LOGISTICA_SUBREGIAO.FX_SUBRLOGI, ');
      Add('  LOGISTICA_SUBREGIAO.ID_INTESUBRLOGI, ');
      Add('  LOGISTICA_SUBREGIAO.QN_FATOFRETABATSUBRLOGI ');
      Add('FROM ');
      Add('  LOGISTICA_SUBREGIAO ');
      Add('WHERE   ');
      Add('  LOGISTICA_SUBREGIAO.EMPRESA=''' + gs_Empresa + ''' ');
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
      Qr.SQL.Add('ORDER BY LOGISTICA_SUBREGIAO.ID_SUBRLOGI');
      Qr.Open;

      PageControl1.Pages[1].Show;
      Screen.Cursor := crDefault;
      PageControl1.Pages[1].TabVisible := True;
      PageControl1.Pages[2].TabVisible := True;

  QrPedagio.Open;

  LDcomponentes(False);
  Atual_ToolBar(9);

end;

procedure TFrmRegiao.LDcomponentes(LD:boolean);
var
  Temp:TComponent;
  li_Loop:Integer;
begin
// BtCid.Visible := LD;
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

function TFrmRegiao.Atual_ToolBar(BtOrdem: Integer): string;
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

Function TFrmRegiao.Bot_Flat(Botao:Integer):string;
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



procedure TFrmRegiao.SB_PRIMEIROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(1);
end;

procedure TFrmRegiao.SB_ANTERIORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(2);
end;

procedure TFrmRegiao.SB_PROXIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(3);
end;

procedure TFrmRegiao.SB_ULTIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(4);
end;

procedure TFrmRegiao.SB_NOVOMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Bot_Flat(5);
end;

procedure TFrmRegiao.SB_EXCLUIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(6);
end;

procedure TFrmRegiao.SB_EDITMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Bot_Flat(7);
end;

procedure TFrmRegiao.SB_CONFIRMAMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(8);
end;

procedure TFrmRegiao.SB_CANCELMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(9);
end;

procedure TFrmRegiao.SB_ATUALMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Bot_Flat(10);
end;

procedure TFrmRegiao.SB_PRINTMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Bot_Flat(11);
end;

procedure TFrmRegiao.Sb_SairMouseMove(Sender: TObject; Shift: TShiftState;
   X, Y: Integer);
begin
  Bot_Flat(12);
end;

procedure TFrmRegiao.BPESQClick(Sender: TObject);
begin
 try
//    XRPM:=2;
//    FrmOriPesq:=2;
    CASE SELPE OF
     4:begin
        Cria_FrmPesqCid(VCid, NCid, NEst, NPais, NReg);
        EdExpre.text:= VCid;
        BtIncluir.SetFocus;
       end;
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
   SHOWMESSAGE('Não foi possível abrir o Form.');
 end;
 BPESQ.Visible:=FALSE;

end;

procedure TFrmRegiao.DBGrid1TitleClick(Column: TColumn);
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


procedure TFrmRegiao.TabCriterioShow(Sender: TObject);
begin
  CBCond.Enabled := True;
  EdExpre.Enabled := True;
  BtLimpar.Enabled := True;
  BtAtivar.Enabled := True;
  BPESQ.Enabled := True;
  RGeou.Enabled := True;
end;

procedure TFrmRegiao.SB_ATUALClick(Sender: TObject);
begin
  Qr.Refresh;
end;

procedure TFrmRegiao.DBNm_SubRegiaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

  end;
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmRegiao.BtCidClick(Sender: TObject);
begin
  Cria_FrmPesqCid(VCid, NCid, NEst, NPais, NReg);
//  DBCodCid.Text := VCid;
//  DBNm_Cid.Text := NCid;
end;

procedure TFrmRegiao.FormShow(Sender: TObject);
begin
  PageControl1.Pages[1].TabVisible:=false;
  PageControl1.Pages[2].TabVisible:=false;
end;

procedure TFrmRegiao.DSDataChange(Sender: TObject; Field: TField);
begin
  QrPedagio.Close;
  QrPedagio.ParamByName('VID_SUBRLOGI').AsFloat := QrID_SUBRLOGI.Value;
  QrPedagio.Open;
end;

procedure TFrmRegiao.SpeedButton1Click(Sender: TObject);
begin
  With QrPedagio do
  begin
    Insert;
    FieldByName('empresa').AsString := gs_Empresa;
    FieldByName('filial').AsInteger := gi_filial;
    post;
    CommitUpdates;
    ApplyUpdates;
  end;
  QrPed_SubReg.Insert;
  QrPed_SubRegID_PEDAGIO.Value := QrPedagioID_PEDAGIO.Value;
  QrPed_SubRegID_SUBRLOGI.Value := QrID_SUBRLOGI.Value;
  QrPed_SubReg.Post;
  QrPed_SubReg.CommitUpdates;
  QrPed_SubReg.ApplyUpdates;
  QrPedagio.Close;
  QrPedagio.ParamByName('VID_SUBRLOGI').AsFloat :=  QrID_SUBRLOGI.Value;
  QrPedagio.Open;
  QrPedagio.Edit;
  DBNomeRodo.SetFocus;
end;

end.

