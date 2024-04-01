unit UFrmFreteFixo;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Winapi.Windows, Data.DB, DBAccess, Ora, MemDS,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrmFreteFixo = class(TForm)
    PageControl1: TPageControl;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Sb_Sair: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PRIMEIRO: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    ToolButton3: TToolButton;
    SB_EDIT: TSpeedButton;
    DS: TOraDataSource;
    EdtCli: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ChFRETE: TCheckBox;
    Qr: TSmartQuery;
    QrNM_CLIENTE: TStringField;
    QrID_CLIENTE: TFloatField;
    QrPC_FRETEMAX: TFloatField;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    VFINAL:STRING;
    { Public declarations }
  end;

var
  FrmFreteFixo: TFrmFreteFixo;

implementation

uses Principal;

{$R *.dfm}

procedure TFrmFreteFixo.FormCreate(Sender: TObject);
begin
 frmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmFreteFixo.Sb_SairClick(Sender: TObject);
begin
  Qr.Close;
  Close;
end;

procedure TFrmFreteFixo.SB_PRIMEIROClick(Sender: TObject);
begin
  Qr.First;
end;

procedure TFrmFreteFixo.SB_ANTERIORClick(Sender: TObject);
begin
  Qr.Prior;
end;

procedure TFrmFreteFixo.SB_PROXIMOClick(Sender: TObject);
begin
  Qr.Next;
end;

procedure TFrmFreteFixo.SB_ULTIMOClick(Sender: TObject);
begin
  Qr.Last;
end;

procedure TFrmFreteFixo.SB_NOVOClick(Sender: TObject);
begin
//  QryCtPr.Append;
//  IF PageControl1.ActivePageIndex=0 then
//    DBGrid1.SetFocus
//  ELSE
//     DBNUMTITU.SetFocus;

//  SB_CONFIRMA.Enabled :=TRUE;
//  SB_CANCEL.Enabled :=TRUE;
end;

procedure TFrmFreteFixo.SB_CONFIRMAClick(Sender: TObject);
begin
  IF (Qr.State=DSINSERT) or (Qr.State=DSEDIT)  then
    QR.Post;

  Qr.CommitUpdates;
  Qr.ApplyUpdates;

  SB_CONFIRMA.Enabled :=FALSE;
  SB_CANCEL.Enabled :=FALSE;

end;

procedure TFrmFreteFixo.SB_CANCELClick(Sender: TObject);
begin
  Qr.CancelUpdates;
  SB_CONFIRMA.Enabled :=FALSE;
  SB_CANCEL.Enabled :=FALSE;
end;



procedure TFrmFreteFixo.SB_EXCLUIClick(Sender: TObject);
begin
//   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then

//   QryCtPr.Delete;
//   QryCtPr.ApplyUpdates;
//   QryCtPr.CommitUpdates;
//   DBGrid1.Refresh;

end;

procedure TFrmFreteFixo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmFreteFixo:=nil;
//  FrmPrincipal.VEN025.Enabled:= True;
  FrmPrincipal.ACVEN025.Enabled:= True;
  Action:=caFree;
end;


procedure TFrmFreteFixo.Button1Click(Sender: TObject);
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



procedure TFrmFreteFixo.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//if QryCtPr.FieldByName('RTIPO').AsString = 'B' then
//  DBGrid1.Canvas.Brush.Color := clgreen;
//if QryCtPr.FieldByName('RTIPO').AsString = 'C' then
//  DBGrid1.Canvas.Brush.Color := clRED;
//  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;


procedure TFrmFreteFixo.SB_EDITClick(Sender: TObject);
begin
  Qr.Edit;
  if QrID_CLIENTE.IsNull then
  begin
    QrID_CLIENTE.Value := QrID_CLIENTE.Value;
  end;

  SB_CONFIRMA.Enabled :=TRUE;
  SB_CANCEL.Enabled :=TRUE;
end;

procedure TFrmFreteFixo.RadioGroup1Click(Sender: TObject);
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

procedure TFrmFreteFixo.QrCBRBeforePost(DataSet: TDataSet);
begin
//  ShowMessage(DBEdit3.Field.CurValue);

//  QrCBRRSEQUENCI.Value:= strtoint(DBEdit3.Field.CurValue);

end;

procedure TFrmFreteFixo.FormDestroy(Sender: TObject);
begin
//  Formulario:=Nil;

end;

procedure TFrmFreteFixo.SpeedButton1Click(Sender: TObject);
begin
 if EdtCli.Text <>'' then
 begin
   with Qr do
   begin
     close;
     sql.Clear;
      sql.Text :=
        ' SELECT                            '+
        '    CLIENTE.ID_CLIENTE,            '+
        '    CLIENTE.PC_FRETEMAX,           '+
        '    CLIENTE.NM_CLIENTE             '+
        ' FROM                              '+
        '    CLIENTE                        '+
        ' WHERE                             '+
        '    CLIENTE.ID_CLIENTE = :ID_CLI   ';
     if ChFRETE.Checked then
        SQL.Add(' AND CLIENTE.PC_FRETEMAX > 0 ');
     ParamByName('ID_CLI').AsFloat := StrToFloat(EdtCli.Text);
     Open;
   end;
 end
 else
 begin
   with Qr do
   begin
     close;
     sql.Clear;
     sql.Text :=
      ' SELECT                             '+
      '  CLIENTE.ID_CLIENTE,               '+
      '  CLIENTE.NM_CLIENTE,                '+
      '  CLIENTE.PC_FRETEMAX                 '+
      'FROM                                   '+
      '  CLIENTE,                              '+
      '  CLIENTE_FRETE                          '+
      'WHERE                                      '+
      '  CLIENTE_FRETE.ID_CLIENTE(+) = CLIENTE.ID_CLIENTE  ';
     if ChFRETE.Checked then
        SQL.Add(' AND CLIENTE.PC_FRETEMAX > 0 ');
     Open;
   end;
 end;
end;

procedure TFrmFreteFixo.FormShow(Sender: TObject);
begin
  Qr.Open;
end;

end.

