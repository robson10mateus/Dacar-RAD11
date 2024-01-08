unit UFrmModeloFiltro;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin,  , OraSmart, OraError;

type
  TFrmSaldoLanc = class(TForm)
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
    SB_ATUAL: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BPesqProduto: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit4: TEdit;
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

  private
    { Private declarations }
  public
    VFINAL,Vdata:STRING;
    SELPE:integer;
  end;

var
  FrmSaldoLanc: TFrmSaldoLanc;

implementation

uses Principal,Global;

{$R *.dfm}

procedure TFrmSaldoLanc.FormCreate(Sender: TObject);
begin
  // QrCliente.Open;
 //  QrVENDEDOR.Open;
 //  QryCtPr.Open;
 //  QryCtPr.Last;

end;

procedure TFrmSaldoLanc.Sb_SairClick(Sender: TObject);
begin
   Qr.Close;
   Close;
//   QrVENDEDOR.Close;
//   FrmCTAReceber.Close;
end;

procedure TFrmSaldoLanc.SB_PRIMEIROClick(Sender: TObject);
begin
  Qr.First;
end;

procedure TFrmSaldoLanc.SB_ANTERIORClick(Sender: TObject);
begin
  Qr.Prior;
end;

procedure TFrmSaldoLanc.SB_PROXIMOClick(Sender: TObject);
begin
  Qr.Next;
end;

procedure TFrmSaldoLanc.SB_ULTIMOClick(Sender: TObject);
begin
  Qr.Last;
end;

procedure TFrmSaldoLanc.SB_NOVOClick(Sender: TObject);
begin
//  Qr.Append;
//  IF PageControl1.ActivePageIndex=0 then
//    DBGrid1.SetFocus
//  ELSE
//     DBNUMTITU.SetFocus;
     Atual_ToolBar(5);
end;

procedure TFrmSaldoLanc.SB_CONFIRMAClick(Sender: TObject);
begin
//  IF (QryCtPr.State =DSINSERT)  THEN
//    BEGIN
//     IF (QRB.State =DSINSERT) THEN
//        QRB.Post;
//     QRB.ApplyUpdates;
//    QRB.CommitUpdates;
//     QRB.Close;
//     QRB.Open;
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
 Atual_ToolBar(9);

end;

procedure TFrmSaldoLanc.SB_CANCELClick(Sender: TObject);
begin
  Qr.CancelUpdates;
  Atual_ToolBar(10);
end;

procedure TFrmSaldoLanc.SB_EXCLUIClick(Sender: TObject);
begin
   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    Begin
     Qr.Delete;
     Qr.ApplyUpdates;
     Qr.CommitUpdates;
     DBGrid1.Refresh;
    End;
end;

procedure TFrmSaldoLanc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;


procedure TFrmSaldoLanc.Button1Click(Sender: TObject);
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



procedure TFrmSaldoLanc.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//if Qr.FieldByName('RTIPO').AsString = 'B' then
//  DBGrid1.Canvas.Brush.Color := clgreen;
//if Qr.FieldByName('RTIPO').AsString = 'C' then
//  DBGrid1.Canvas.Brush.Color := clRED;
//  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;


procedure TFrmSaldoLanc.SB_EDITClick(Sender: TObject);
begin
  Qr.Edit;
  Atual_ToolBar(7);
end;

procedure TFrmSaldoLanc.RadioGroup1Click(Sender: TObject);
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

procedure TFrmSaldoLanc.QrCBRBeforePost(DataSet: TDataSet);
begin
//  ShowMessage(DBEdit3.Field.CurValue);

//  QrCBRRSEQUENCI.Value:= strtoint(DBEdit3.Field.CurValue);

end;

procedure TFrmSaldoLanc.LCamposClick(Sender: TObject);
begin
 SELPE:=0;
//  CASE LCAMPOS.ItemIndex OF
//     0:SELPE:=1;
//    15:SELPE:=15;
//    2:SELPE:=2;
//    6:SELPE:=6;
//  END;
  IF SELPE>0 THEN
    BPESQ.Visible:=TRUE;
end;

procedure TFrmSaldoLanc.FormActivate(Sender: TObject);
begin
{IF LCAMPOS.Items.Count=0 THEN
 BEGIN
  With LCampos.Items do
   begin
     Add('Código da Conta        ');
     Add('Data da Emissão     ');
     Add('Data da Compensação  ');
     Add('Documento  ');
     Add('Valor do Crédito ');
     Add('Valor do Crédito Corrigido');
     Add('Valor do Débito ');
     Add('Valor do Débito Corrigido ');
     Add('Flag Débito/Crédito (D/C) ');
     Add('Histórico  ');
     Add('Número do Lote  ');
     Add('Sequencial do Lançamento ');
     Add('Sequencial da Baixa  ');
     Add('Tipo da Baixa ');
     Add('Código do Usuário');
     Add('Código do Cliente');
   end;
 END;
 }
 PageControl1.Pages[1].TabVisible:=false;
 PageControl1.Pages[2].TabVisible:=false;

end;

procedure TFrmSaldoLanc.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmSaldoLanc.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmSaldoLanc.BtIncluirClick(Sender: TObject);
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
        0:Vre:=Vre + ' ';
 //       1:Vre:=Vre + 'TRUNC(ca_lanccont.LDATAEMIS)';
//        2:Vre:=Vre + 'ca_lanccont.LVALOLANCC';
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
//         1..2:Vre:=Vre + 'TO_DATE(''';
//            3:Vre:=Vre + '''';
         1:Vre:=Vre + '''';
    end;

    Vre:=Vre + Edexpre.text;

    Case LCampos.itemindex of
//         1..2:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
//            3:Vre:= Vre + '''';
        1:Vre:= Vre + '''';

    end;

    Vre:=Vre+')';

    MResul.Append(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;

end;

procedure TFrmSaldoLanc.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin
// TRY
{   Screen.Cursor := crSQLWait;
   Qr.Close;
   WITH Qr.SQL DO
    BEGIN
      Clear;
      Add('SELECT   ');
      Add('FROM  CA_tabela     ');
      Add('WHERE CA_tabela.EMPRESA=''' + gs_Empresa + ''' AND ');
      Add('CA_tabela.FILIAL= ' + inttostr(GI_FILIAL));
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
      Qr.SQL.Add('ORDER BY ldatacomp');
      Qr.Open;
      Qr.Refresh;  }

   PageControl1.Pages[1].Show;
   Screen.Cursor := crDefault;
   PageControl1.Pages[1].TabVisible := True;
   PageControl1.Pages[2].TabVisible := True;

 // QrC.Open;

   Atual_ToolBar(9);
end;

procedure TFrmSaldoLanc.FormDestroy(Sender: TObject);
begin
  FrmModeloFiltro:=Nil;
end;

Function  TFrmSaldoLanc.Bot_Flat(Botao:Integer):string;
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

Function TFrmSaldoLanc.Atual_ToolBar(BtOrdem: Integer): string;
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

procedure TFrmSaldoLanc.SB_ATUALClick(Sender: TObject);
begin
  Qr.Refresh;
end;

procedure TFrmSaldoLanc.SB_PRIMEIROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 Bot_Flat(1);
end;

procedure TFrmSaldoLanc.SB_ANTERIORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(2);
end;

procedure TFrmSaldoLanc.SB_PROXIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(3);
end;

procedure TFrmSaldoLanc.SB_ULTIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(4);
end;

procedure TFrmSaldoLanc.SB_NOVOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(5);
end;

procedure TFrmSaldoLanc.SB_EXCLUIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(6);
end;

procedure TFrmSaldoLanc.SB_EDITMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(7);
end;

procedure TFrmSaldoLanc.SB_ATUALMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(8);
end;

procedure TFrmSaldoLanc.SB_CONFIRMAMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(9);
end;

procedure TFrmSaldoLanc.SB_CANCELMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(10);
end;

procedure TFrmSaldoLanc.Sb_SairMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(11);
end;

procedure TFrmSaldoLanc.ToolButton3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmSaldoLanc.ToolBar1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmSaldoLanc.ToolButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmSaldoLanc.ToolButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmSaldoLanc.PageControl1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

end.

