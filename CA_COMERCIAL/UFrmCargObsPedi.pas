unit UFrmCargObsPedi;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, Data.DB, DBAccess, Ora, MemDS, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, OraSmart, OraError;

type
  TFrmCargObsPedi = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    QryForm: TOraQuery;
    DsForm: TOraDataSource;
    Sb_Sair: TSpeedButton;
    grpObservacao: TGroupBox;
    DBMemo1: TDBMemo;
    QryFormEMPRESA: TStringField;
    QryFormFILIAL: TIntegerField;
    QryFormID_PEDIVEND: TFloatField;
    QryFormGN_OBSEPEDIVEND: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    VFINAL:STRING;
    { Public declarations }
  end;

var
  FrmCargObsPedi: TFrmCargObsPedi;

implementation

uses Principal;

{$R *.dfm}

procedure TFrmCargObsPedi.FormCreate(Sender: TObject);
begin
 frmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmCargObsPedi.Sb_SairClick(Sender: TObject);
begin
  QryForm.Close;
  Close;
end;

procedure TFrmCargObsPedi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;


procedure TFrmCargObsPedi.FormDestroy(Sender: TObject);
begin
  FrmCargObsPedi:=Nil;
end;

end.

