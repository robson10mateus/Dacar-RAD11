unit UFrmCargObsCarga;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFrmCargObsCarga = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    QryForm: TOraQuery;
    DsForm: TOraDataSource;
    SB_CONFIRMA: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    Sb_Sair: TSpeedButton;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    QryFormEMPRESA: TStringField;
    QryFormFILIAL: TIntegerField;
    QryFormID_CARGEXPE: TFloatField;
    QryFormGN_OBSECARGEXPE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBMemo1Change(Sender: TObject);

  private
    { Private declarations }
  public
    VFINAL:STRING;
    { Public declarations }
  end;

var
  FrmCargObsCarga: TFrmCargObsCarga;

implementation

uses Principal;

{$R *.dfm}

procedure TFrmCargObsCarga.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmCargObsCarga.Sb_SairClick(Sender: TObject);
begin
  QryForm.Close;
  Close;
end;

procedure TFrmCargObsCarga.SB_CONFIRMAClick(Sender: TObject);
begin

  QryForm.Post;
  SB_CONFIRMA.Enabled :=FALSE;
  SB_CANCEL.Enabled :=FALSE;

end;

procedure TFrmCargObsCarga.SB_CANCELClick(Sender: TObject);
begin
  QryForm.Cancel;
  SB_CONFIRMA.Enabled :=FALSE;
  SB_CANCEL.Enabled :=FALSE;
end;

procedure TFrmCargObsCarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;


procedure TFrmCargObsCarga.FormDestroy(Sender: TObject);
begin
  FrmCargObsCarga:=Nil;

end;

procedure TFrmCargObsCarga.DBMemo1Change(Sender: TObject);
begin
  QryForm.Edit;
  SB_CONFIRMA.Enabled :=TRUE;
  SB_CANCEL.Enabled :=TRUE;
end;

end.

