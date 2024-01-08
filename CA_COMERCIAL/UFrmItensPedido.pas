unit UFrmItensPedido;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrmItensPedido = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    qryForm: TOraQuery;
    DSForm: TOraDataSource;
    SB_PRIMEIRO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    Sb_Sair: TSpeedButton;
    qryFormID_PRODMATEEMBA: TStringField;
    qryFormNM_MATERIAL: TStringField;
    qryFormQN_TOTACAIX: TFloatField;
    qryFormQN_TOTAPESO: TFloatField;
    qryFormID_PEDIVEND: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    VFINAL:STRING;
    { Public declarations }
  end;

var
  FrmItensPedido: TFrmItensPedido;

implementation

uses Principal, UFrmItemCarLibCar;

{$R *.dfm}

procedure TFrmItensPedido.FormCreate(Sender: TObject);
begin
frmPrincipal.TrocaNomeSequence(Self);

end;

procedure TFrmItensPedido.Sb_SairClick(Sender: TObject);
begin
  qryForm.Close;
  Close;
end;

procedure TFrmItensPedido.SB_PRIMEIROClick(Sender: TObject);
begin
  QryForm.First;
end;

procedure TFrmItensPedido.SB_ANTERIORClick(Sender: TObject);
begin
  qryForm.Prior;
end;

procedure TFrmItensPedido.SB_PROXIMOClick(Sender: TObject);
begin
  qryForm.Next;
end;

procedure TFrmItensPedido.SB_ULTIMOClick(Sender: TObject);
begin
  qryForm.Last;
end;

procedure TFrmItensPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmItensPedido.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;


procedure TFrmItensPedido.FormDestroy(Sender: TObject);
begin
  FrmItensPedido:=Nil;
end;

end.

