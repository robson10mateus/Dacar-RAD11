unit UFrmmodelsimples;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin,  , OraSmart, OraError;

type
  TFrmModelSimples = class(TForm)
    PageControl1: TPageControl;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    VFINAL:STRING;
    { Public declarations }
  end;

var
  FrmModelSimples: TFrmModelSimples;

implementation

uses Principal;

{$R *.dfm}

procedure TFrmModelSimples.FormCreate(Sender: TObject);
begin
  // QrCliente.Open;
 //  QrVENDEDOR.Open;
 //  QryCtPr.Open;
 //  QryCtPr.Last;

end;

procedure TFrmModelSimples.Sb_SairClick(Sender: TObject);
begin
//  QrCCusto.Close;
//   QrCliente.Close;
//   QrVENDEDOR.Close;
//  FrmCentCusto.Close;
end;

procedure TFrmModelSimples.SB_PRIMEIROClick(Sender: TObject);
begin
 // QrCCusto.First;
end;

procedure TFrmModelSimples.SB_ANTERIORClick(Sender: TObject);
begin
//  QrCCusto.Prior;
end;

procedure TFrmModelSimples.SB_PROXIMOClick(Sender: TObject);
begin
//  QrCCusto.Next;
end;

procedure TFrmModelSimples.SB_ULTIMOClick(Sender: TObject);
begin
 // QrCCusto.Last;
end;

procedure TFrmModelSimples.SB_NOVOClick(Sender: TObject);
begin
{  QrCCusto.Append;
  IF PageControl1.ActivePageIndex=0 then
    DBGrid1.SetFocus
  ELSE
    dbedit1.SetFocus;

  SB_CONFIRMA.Enabled :=TRUE;
  SB_CANCEL.Enabled :=TRUE;}
end;

procedure TFrmModelSimples.SB_CONFIRMAClick(Sender: TObject);
begin
{  IF (QrCCusto.State =DSINSERT)  THEN
    BEGIN
      QrCCusto.Post;
      QrCCusto.ApplyUpdates;
      QrCCusto.CommitUpdates;
      QrCCusto.Close;
      QrCCusto.Open;
      DBGrid1.Refresh;
    END;
  IF (QrCCusto.State=DSEDIT) THEN
    BEGIN

     QrCCusto.Post;
     QrCCusto.ApplyUpdates;
     QrCCusto.CommitUpdates;

     DBGrid1.Refresh;
    END; }

//     QryCtPr.CommitUpdates;

  SB_CONFIRMA.Enabled :=FALSE;
  SB_CANCEL.Enabled :=FALSE;

end;

procedure TFrmModelSimples.SB_CANCELClick(Sender: TObject);
begin
{    QrCCusto.CancelUpdates;  }
    SB_CONFIRMA.Enabled :=FALSE;
    SB_CANCEL.Enabled :=FALSE;
end;



procedure TFrmModelSimples.SB_EXCLUIClick(Sender: TObject);
begin
{   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      QrCCusto.Delete;
      QrCCusto.ApplyUpdates;
      QrCCusto.CommitUpdates;
      DBGrid1.Refresh;
    end;}

end;

procedure TFrmModelSimples.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  QrCCusto.Close;
//  FrmCentCusto:=Nil;
  Action:=caFree;
end;


procedure TFrmModelSimples.Button1Click(Sender: TObject);
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



procedure TFrmModelSimples.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
// if QryCtPr.FieldByName('RTIPO').AsString = 'B' then
//  DBGrid1.Canvas.Brush.Color := clgreen;
//if QryCtPr.FieldByName('RTIPO').AsString = 'C' then
//  DBGrid1.Canvas.Brush.Color := clRED;
//  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;


procedure TFrmModelSimples.SB_EDITClick(Sender: TObject);
begin
//  QrCCusto.Edit;
  SB_CONFIRMA.Enabled :=TRUE;
  SB_CANCEL.Enabled :=TRUE;
end;

procedure TFrmModelSimples.RadioGroup1Click(Sender: TObject);
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

procedure TFrmModelSimples.QrCBRBeforePost(DataSet: TDataSet);
begin
//  ShowMessage(DBEdit3.Field.CurValue);

//  QrCBRRSEQUENCI.Value:= strtoint(DBEdit3.Field.CurValue);

end;

procedure TFrmModelSimples.FormActivate(Sender: TObject);
begin
//  QrCCusto.Open;
end;

end.

