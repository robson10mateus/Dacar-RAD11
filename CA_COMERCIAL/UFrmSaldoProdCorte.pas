unit UFrmSaldoProdCorte;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, MemDS, DBAccess,
  Ora, DBCtrls, ComCtrls, Buttons, Mask, Vcl.ToolWin;

type
  TFrmSaldoProdCorte = class(TForm)
    DBGrid1: TDBGrid;
    dsSaldo: TDataSource;
    qrSaldo: TOraQuery;
    qrSaldoID_PRODMATEEMBA: TStringField;
    qrSaldoNM_PRODMATEEMBA: TStringField;
    qrSaldoDIFERENCA: TFloatField;
    qrSaldoTOTAL: TFloatField;
    ToolBar1: TToolBar;
    Sb_Sair: TSpeedButton;
    ToolButton1: TToolButton;
    DBNavigator1: TDBNavigator;
    qrSaldoTOTAL_PESO: TFloatField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtTotPeso: TEdit;
    edtTotVendas: TEdit;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Sb_SairClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSaldoProdCorte: TFrmSaldoProdCorte;

implementation

{$R *.dfm}

procedure TFrmSaldoProdCorte.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if qrSaldoDIFERENCA.Value > 0 then
    DBGrid1.Canvas.font.Color := clblue;
  if qrSaldoDIFERENCA.Value < 0 then
    DBGrid1.Canvas.font.Color := clRed;

  if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
      begin
        Brush.Color := $00DFDFDF;
        FillRect(Rect);
      end;
  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmSaldoProdCorte.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSaldoProdCorte.DBGrid1TitleClick(Column: TColumn);
var
  linha:integer;
begin
  Screen.Cursor := crSQLWait;
  linha := Pos('ORDER',qrSaldo.SQL.text);
  qrSaldo.SQL.text := copy(qrSaldo.SQL.text,0,linha-1);
  qrSaldo.SQL.add(' ORDER BY ' + Column.FieldName);
  qrSaldo.Open;
  Screen.Cursor:= crDefault;
end;

end.
