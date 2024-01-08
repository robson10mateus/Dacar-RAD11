unit UFrmItemCarLibCar;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrmItemCarLibCar = class(TForm)
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
    qryForm: TOraQuery;
    DSForm: TOraDataSource;
    qryFormEMPRESA: TStringField;
    qryFormFILIAL: TIntegerField;
    qryFormID_PEDIVEND: TFloatField;
    qryFormDT_ENTRPEDIVEND: TDateTimeField;
    qryFormID_CARGEXPE: TFloatField;
    qryFormQN_PESOPEDIVEND: TFloatField;
    qryFormQN_TARAPEDIVEND: TFloatField;
    qryFormQN_PESOBRUTPEDIVEND: TFloatField;
    qryFormQN_EMBAPEDIVEND: TIntegerField;
    qryFormQN_FATOFRETABAT_PEDIVEND: TFloatField;
    qryFormID_CLIENTE: TFloatField;
    qryFormID_VENDEDOR: TFloatField;
    qryFormDT_FATUPEDIVEND: TDateTimeField;
    qryFormNM_VENDEDOR: TStringField;
    qryFormNM_FANTCLIE: TStringField;
    qryFormNM_REDUCLIE: TStringField;
    qryFormQN_DIFIENTRCLIE: TIntegerField;
    qryFormID_REGILOGI: TFloatField;
    qryFormID_SUBRLOGI: TFloatField;
    qryFormNM_REGILOGI: TStringField;
    qryFormNM_SUBRLOGI: TStringField;
    qryFormFL_RELAREGISUBRLOGI: TStringField;
    qryFormNR_ORDEPEDIVEND: TFloatField;
    qryFormGN_OBSEPEDIVEND: TStringField;
    qryFormFL_STATPEDIVEND: TStringField;
    qryFormNM_BAIRRO: TStringField;
    qryFormNR_CEPENDECLIE: TStringField;
    qryFormNM_CIDADE: TStringField;
    qryFormSG_ESTADO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);

  private
    { Private declarations }
  public
    VFINAL:STRING;
    { Public declarations }
  end;

var
  FrmItemCarLibCar: TFrmItemCarLibCar;

implementation

uses Principal;

{$R *.dfm}

procedure TFrmItemCarLibCar.FormCreate(Sender: TObject);
begin
 frmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmItemCarLibCar.Sb_SairClick(Sender: TObject);
begin
  qryForm.Close;
  Close;
end;

procedure TFrmItemCarLibCar.SB_PRIMEIROClick(Sender: TObject);
begin
  QryForm.First;
end;

procedure TFrmItemCarLibCar.SB_ANTERIORClick(Sender: TObject);
begin
  qryForm.Prior;
end;

procedure TFrmItemCarLibCar.SB_PROXIMOClick(Sender: TObject);
begin
  qryForm.Next;
end;

procedure TFrmItemCarLibCar.SB_ULTIMOClick(Sender: TObject);
begin
  qryForm.Last;
end;

procedure TFrmItemCarLibCar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;


procedure TFrmItemCarLibCar.Button1Click(Sender: TObject);
var
  Bitmap : TBitMap;
begin

end;



procedure TFrmItemCarLibCar.FormDestroy(Sender: TObject);
begin
  FrmItemCarLibCar:=Nil;
end;

procedure TFrmItemCarLibCar.DBGrid1TitleClick(Column: TColumn);
begin
  qryForm.IndexFieldNames := Column.FieldName;
end;

end.

