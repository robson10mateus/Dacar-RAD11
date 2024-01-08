unit UFrmTituAtra;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, Variants, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrmTituAtra = class(TForm)
    PageControl1: TPageControl;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Sb_Sair: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PRIMEIRO: TSpeedButton;
    ToolButton3: TToolButton;
    QRVENC: TOraQuery;
    OraDataSource1: TOraDataSource;
    QRVENCRNUMEDOCU: TStringField;
    QRVENCRDATAVENC: TDateTimeField;
    QRVENCRVALODOCU: TFloatField;
    QRVENCRST_COBRA: TStringField;
    QRVENCRID_CONTA: TFloatField;
    QRVENCTIPO: TStringField;
    QRTOT: TOraQuery;
    QRTOTVLABERTO: TFloatField;
    DSTOT: TOraDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
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

  private
    { Private declarations }
  public
    VFINAL:STRING;
    { Public declarations }
  end;

var
  FrmTituAtra: TFrmTituAtra;

implementation

uses Principal, UfrmPedVenda;

{$R *.dfm}

procedure TFrmTituAtra.FormCreate(Sender: TObject);
begin
  // QrCliente.Open;
 //  QrVENDEDOR.Open;
 //  QryCtPr.Open;
 //  QryCtPr.Last;

end;

procedure TFrmTituAtra.Sb_SairClick(Sender: TObject);
begin
    close;
//   QryCtPr.Close;
//   QrCliente.Close;
//   QrVENDEDOR.Close;
//   FrmCTAReceber.Close;
end;

procedure TFrmTituAtra.SB_PRIMEIROClick(Sender: TObject);
begin
  QRVENC.First;
end;

procedure TFrmTituAtra.SB_ANTERIORClick(Sender: TObject);
begin
  QRVENC.Prior;
end;

procedure TFrmTituAtra.SB_PROXIMOClick(Sender: TObject);
begin
  QRVENC.Next;
end;

procedure TFrmTituAtra.SB_ULTIMOClick(Sender: TObject);
begin
  QRVENC.Last;
end;

procedure TFrmTituAtra.SB_NOVOClick(Sender: TObject);
begin
//  QryCtPr.Append;
//  IF PageControl1.ActivePageIndex=0 then
//    DBGrid1.SetFocus
//  ELSE
//     DBNUMTITU.SetFocus;

//  SB_CONFIRMA.Enabled :=TRUE;
//  SB_CANCEL.Enabled :=TRUE;
end;

procedure TFrmTituAtra.SB_CONFIRMAClick(Sender: TObject);
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

//  SB_CONFIRMA.Enabled :=FALSE;
//  SB_CANCEL.Enabled :=FALSE;

end;

procedure TFrmTituAtra.SB_CANCELClick(Sender: TObject);
begin
//    QryCtPr.CancelUpdates;
//    SB_CONFIRMA.Enabled :=FALSE;
//    SB_CANCEL.Enabled :=FALSE;
end;



procedure TFrmTituAtra.SB_EXCLUIClick(Sender: TObject);
begin
//   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then

//   QryCtPr.Delete;
//   QryCtPr.ApplyUpdates;
//   QryCtPr.CommitUpdates;
//   DBGrid1.Refresh;

end;

procedure TFrmTituAtra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmTituAtra:=Nil;
  Action:=caFree;
//  FrmPedVenda.edtCodiClie.setfocus;

end;


procedure TFrmTituAtra.Button1Click(Sender: TObject);
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



procedure TFrmTituAtra.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if Qrvenc.FieldByName('rdatavenc').AsDateTime < frmpedvenda.VDATATU  then
    DBGrid1.Canvas.font.Color  := clred;
//if QryCtPr.FieldByName('RTIPO').AsString = 'C' then
//  DBGrid1.Canvas.Brush.Color := clRED;
  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;


procedure TFrmTituAtra.SB_EDITClick(Sender: TObject);
begin
//  QryCtPr.Edit;
//  SB_CONFIRMA.Enabled :=TRUE;
//  SB_CANCEL.Enabled :=TRUE;
end;

procedure TFrmTituAtra.RadioGroup1Click(Sender: TObject);
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

procedure TFrmTituAtra.QrCBRBeforePost(DataSet: TDataSet);
begin
//  ShowMessage(DBEdit3.Field.CurValue);

//  QrCBRRSEQUENCI.Value:= strtoint(DBEdit3.Field.CurValue);

end;

end.

