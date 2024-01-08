unit UFrmSaldoVendas;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TFrmSaldoVendas = class(TForm)
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
    qryForm: TOraQuery;
    DSForm: TOraDataSource;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    Qr: TOraQuery;
    DS: TOraDataSource;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    qryFormID_PEDIVEND: TFloatField;
    qryFormVL_UNIT: TFloatField;
    qryFormVLTOTAL_ITEM: TFloatField;
    qryFormVL_PM: TFloatField;
    qryFormDIFE_PM: TFloatField;
    qryFormPESO_ITEM: TFloatField;
    QrDT_ENTRPEDIVEND: TDateTimeField;
    QrID_PRODMATEEMBA: TStringField;
    QrNM_PRODMATEEMBA: TStringField;
    QrVL_COTA: TFloatField;
    QrVL_PM: TFloatField;
    QrQN_COTA: TFloatField;
    QrGN_PLACVEICTRAN: TStringField;
    QrID_VENDEDOR: TFloatField;
    QrNM_VENDEDOR: TStringField;
    QrPESO_ITEM: TFloatField;
    QrVL_ITEM: TFloatField;
    QrSALDO_KG: TFloatField;
    QrSALDO_VL: TFloatField;
    Label12: TLabel;
    Shape1: TShape;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    QrPR_MIN: TFloatField;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    QrPR_MED: TFloatField;
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
    procedure DBGrid1TitleClick(Column: TColumn);

  private
    { Private declarations }
  public
    VFINAL:STRING;
    { Public declarations }
  end;

var
  FrmSaldoVendas: TFrmSaldoVendas;

implementation

uses Principal, UFrmItemCarLibCar;

{$R *.dfm}

procedure TFrmSaldoVendas.FormCreate(Sender: TObject);
begin
// frmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmSaldoVendas.Sb_SairClick(Sender: TObject);
begin
  qryForm.Close;
  Qr.Close;
  Close;
end;

procedure TFrmSaldoVendas.SB_PRIMEIROClick(Sender: TObject);
begin
  QryForm.First;
end;

procedure TFrmSaldoVendas.SB_ANTERIORClick(Sender: TObject);
begin
  qryForm.Prior;
end;

procedure TFrmSaldoVendas.SB_PROXIMOClick(Sender: TObject);
begin
  qryForm.Next;
end;

procedure TFrmSaldoVendas.SB_ULTIMOClick(Sender: TObject);
begin
  qryForm.Last;
end;

procedure TFrmSaldoVendas.SB_NOVOClick(Sender: TObject);
begin
//  qryForm.Append;
//  IF PageControl1.ActivePageIndex=0 then
//    DBGrid1.SetFocus
//  ELSE
//     DBNUMTITU.SetFocus;

//  SB_CONFIRMA.Enabled :=TRUE;
//  SB_CANCEL.Enabled :=TRUE;
end;

procedure TFrmSaldoVendas.SB_CONFIRMAClick(Sender: TObject);
begin
//  IF (qryForm.State =DSINSERT)  then
//    BEGIN
//     IF (QRB.State =DSINSERT) then
//        QRB.Post;
//     QRB.ApplyUpdates;
//    QRB.CommitUpdates;
//     QRB.Close;
//     QRB.Open;
//     DBGrid2.Refresh;
//     qryForm.Post;
//     qryForm.ApplyUpdates;
//     qryForm.CommitUpdates;
//     qryForm.Close;
//     qryForm.Open;
//     DBGrid1.Refresh;
//    END;
//  IF (qryForm.State=DSEDIT) then
//    BEGIN
//     IF (QRB.State =DSEDIT) then
//        QRB.Post;
//     QRB.ApplyUpdates;
//     QRB.CommitUpdates;

//     qryForm.Post;
//     qryForm.ApplyUpdates;
//     qryForm.CommitUpdates;

//     DBGrid1.Refresh;
//    END;

//     qryForm.CommitUpdates;

//  SB_CONFIRMA.Enabled :=FALSE;
//  SB_CANCEL.Enabled :=FALSE;

end;

procedure TFrmSaldoVendas.SB_CANCELClick(Sender: TObject);
begin
//    qryForm.CancelUpdates;
//    SB_CONFIRMA.Enabled :=FALSE;
//    SB_CANCEL.Enabled :=FALSE;
end;

procedure TFrmSaldoVendas.SB_EXCLUIClick(Sender: TObject);
begin
//   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then

//   qryForm.Delete;
//   qryForm.ApplyUpdates;
//   qryForm.CommitUpdates;
//   DBGrid1.Refresh;

end;

procedure TFrmSaldoVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmSaldoVendas.Button1Click(Sender: TObject);
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

procedure TFrmSaldoVendas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//if qryForm.FieldByName('RTIPO').AsString = 'B' then
//  DBGrid1.Canvas.Brush.Color := clgreen;
 If qryForm.FieldByName('DIFE_PM').AsFloat < 0 then
   DBGrid1.Canvas.Font.Color := clRED;
 DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;


procedure TFrmSaldoVendas.SB_EDITClick(Sender: TObject);
begin
//  qryForm.Edit;
//  SB_CONFIRMA.Enabled :=TRUE;
//  SB_CANCEL.Enabled :=TRUE;
end;

procedure TFrmSaldoVendas.RadioGroup1Click(Sender: TObject);
VAR
  Vsitu:integer;

begin
//  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//  Vsitu:=0;
//  qryForm.Close;
//  qryForm.SQL.Clear;
//  qryForm.SQL.Add('Select * from CA_TITUREC ');
//  case RadioGroup1.ItemIndex  of
//    0:Vsitu:=0;

//    1:
//     begin
//      qryForm.SQL.Add ('Where RTIPO='''+ 'Q' + '''');
//      Vsitu:=1;
//     end;
//    2:
//     begin
//      qryForm.SQL.Add ('Where RTIPO<>''' + 'Q' + '''');
//      Vsitu:=2;
//     end;
//  end;

//  qryForm.Open;
//  qryForm.ApplyUpdates;
//  Screen.Cursor := crDefault;

end;

procedure TFrmSaldoVendas.QrCBRBeforePost(DataSet: TDataSet);
begin
//  ShowMessage(DBEdit3.Field.CurValue);

//  QrCBRRSEQUENCI.Value:= strtoint(DBEdit3.Field.CurValue);

end;

procedure TFrmSaldoVendas.FormDestroy(Sender: TObject);
begin
  FrmSaldoVendas:=Nil;
end;

procedure TFrmSaldoVendas.DBGrid1TitleClick(Column: TColumn);
 var
   linha:integer;
begin
linha := Pos('ORDER',qryForm.SQL.text);
CASE  Column.Index OF
  0:begin
      qryForm.SQL.text := copy(qryForm.SQL.Text,0,linha-1);
      qryForm.SQL.add('ORDER BY PEDIDO_VENDA.ID_PEDIVEND');
      qryForm.Open;
    end;
  1:begin
      qryForm.SQL.text := copy(qryForm.SQL.Text,0,linha-1);
      qryForm.SQL.add('ORDER BY PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND');
      qryForm.Open;
    end;
  2:begin
      qryForm.SQL.text := copy(qryForm.SQL.Text,0,linha-1);
      qryForm.SQL.add('ORDER BY PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND');
      qryForm.Open;
    end;
  3:begin
      qryForm.SQL.text := copy(qryForm.SQL.Text,0,linha-1);
      qryForm.SQL.add('ORDER BY VLTOTAL_ITEM');
      qryForm.Open;
    end;
  4:begin
      qryForm.SQL.text := copy(qryForm.SQL.Text,0,linha-1);
      qryForm.SQL.add('ORDER BY CA_PARAMETRO_COMERCIAL_ITEM.VL_PM');
      qryForm.Open;
    end;
  5:begin
      qryForm.SQL.text := copy(qryForm.SQL.Text,0,linha-1);
      qryForm.SQL.add('ORDER BY DIFE_PM');
      qryForm.Open;
    end;
END;

end;

end.

