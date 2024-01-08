unit UFrmSelMotDev;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, MemDS, DBAccess, Ora, Buttons,
  ExtCtrls;

type
  TFrmSelMotDev = class(TForm)
    qrMotDev: TOraQuery;
    dsMotDev: TDataSource;
    DBGrid1: TDBGrid;
    qrMotDevID_MOTIDEVOVEND: TFloatField;
    qrMotDevNM_MOTIDEVOVEND: TStringField;
    pnlBotoes: TPanel;
    btnCan: TBitBtn;
    btnOK: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnCanClick(Sender: TObject);
    procedure FormShortCut(Key: Integer; Shift: TShiftState;
      var Handled: Boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelMotDev: TFrmSelMotDev;

implementation

{$R *.dfm}

procedure TFrmSelMotDev.FormCreate(Sender: TObject);
begin
  qrMotDev.Close;
  qrMotDev.Open;
end;

procedure TFrmSelMotDev.btnCanClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelMotDev.FormShortCut(Key: Integer; Shift: TShiftState;
  var Handled: Boolean);
begin
  case Key of
    4096: Close;          // ESC para sair
    4145: btnOK.Click;    // F2 para confirmar a seleção
  end;
end;

procedure TFrmSelMotDev.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmSelMotDev.DBGrid1TitleClick(Column: TColumn);
begin
  qrMotDev.IndexFieldNames := Column.FieldName;
end;

end.
