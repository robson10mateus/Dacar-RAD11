unit UFrmCargObsExpe;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Winapi.Windows, Data.DB, DBAccess, Ora,
  MemDS, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TFrmCargObsExpe = class(TForm)
    PageControl1: TPageControl;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    ToolButton1: TToolButton;
    Sb_Sair: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PRIMEIRO: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    ToolButton3: TToolButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    QryForm: TOraQuery;
    DsForm: TOraDataSource;
    DBMemo1: TDBMemo;
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
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    VFINAL:STRING;
    { Public declarations }
  end;

var
  FrmCargObsExpe: TFrmCargObsExpe;

implementation

uses Principal;

{$R *.dfm}

procedure TFrmCargObsExpe.FormCreate(Sender: TObject);
begin
  // QrCliente.Open;
 //  QrVENDEDOR.Open;
 //  QryCtPr.Open;
 //  QryCtPr.Last;
  FrmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmCargObsExpe.Sb_SairClick(Sender: TObject);
begin
//   QryCtPr.Close;
//   QrCliente.Close;
//   QrVENDEDOR.Close;
//   FrmCTAReceber.Close;
end;

procedure TFrmCargObsExpe.SB_PRIMEIROClick(Sender: TObject);
begin
//  QryCtPr.First;
end;

procedure TFrmCargObsExpe.SB_ANTERIORClick(Sender: TObject);
begin
//  QryCtPr.Prior;
end;

procedure TFrmCargObsExpe.SB_PROXIMOClick(Sender: TObject);
begin
//  QryCtPr.Next;
end;

procedure TFrmCargObsExpe.SB_ULTIMOClick(Sender: TObject);
begin
//  QryCtPr.Last;
end;

procedure TFrmCargObsExpe.SB_NOVOClick(Sender: TObject);
begin
//  QryCtPr.Append;
//  IF PageControl1.ActivePageIndex=0 then
//    DBGrid1.SetFocus
//  ELSE
//     DBNUMTITU.SetFocus;

//  SB_CONFIRMA.Enabled :=TRUE;
//  SB_CANCEL.Enabled :=TRUE;
end;

procedure TFrmCargObsExpe.SB_CONFIRMAClick(Sender: TObject);
begin
//  IF (QryCtPr.State =DSINSERT)  then
//    BEGIN
//     IF (QRB.State =DSINSERT) then
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

//  SB_CONFIRMA.Enabled :=FALSE;
//  SB_CANCEL.Enabled :=FALSE;

end;

procedure TFrmCargObsExpe.SB_CANCELClick(Sender: TObject);
begin
//    QryCtPr.CancelUpdates;
//    SB_CONFIRMA.Enabled :=FALSE;
//    SB_CANCEL.Enabled :=FALSE;
end;



procedure TFrmCargObsExpe.SB_EXCLUIClick(Sender: TObject);
begin
//   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then

//   QryCtPr.Delete;
//   QryCtPr.ApplyUpdates;
//   QryCtPr.CommitUpdates;
//   DBGrid1.Refresh;

end;

procedure TFrmCargObsExpe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  Action:=caFree;
end;


procedure TFrmCargObsExpe.Button1Click(Sender: TObject);
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



procedure TFrmCargObsExpe.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//if QryCtPr.FieldByName('RTIPO').AsString = 'B' then
//  DBGrid1.Canvas.Brush.Color := clgreen;
//if QryCtPr.FieldByName('RTIPO').AsString = 'C' then
//  DBGrid1.Canvas.Brush.Color := clRED;
//  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;


procedure TFrmCargObsExpe.SB_EDITClick(Sender: TObject);
begin
//  QryCtPr.Edit;
//  SB_CONFIRMA.Enabled :=TRUE;
//  SB_CANCEL.Enabled :=TRUE;
end;

procedure TFrmCargObsExpe.RadioGroup1Click(Sender: TObject);
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

procedure TFrmCargObsExpe.QrCBRBeforePost(DataSet: TDataSet);
begin
//  ShowMessage(DBEdit3.Field.CurValue);

//  QrCBRRSEQUENCI.Value:= strtoint(DBEdit3.Field.CurValue);

end;

procedure TFrmCargObsExpe.FormDestroy(Sender: TObject);
begin
//  Formulario:=Nil;

end;

end.

