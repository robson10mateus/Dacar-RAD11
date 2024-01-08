unit UFrmNumNota;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Ora, MemDS, DBAccess,
  ExtCtrls, ComCtrls, Buttons, Grids, DBGrids;

type
  TFrmNumNota = class(TForm)
    Panel1: TPanel;
    QrNumNota: TOraQuery;
    DSNumNota: TOraDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    QrNumNotaNM_CONTADOR: TStringField;
    QrNumNotaQN_ULTIVALOCONT: TFloatField;
    pnlBotoes: TPanel;
    SB_Salvar: TSpeedButton;
    SB_Cancel: TSpeedButton;
    Sb_Sair: TSpeedButton;
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2Change(Sender: TObject);
    procedure SB_SalvarClick(Sender: TObject);
    procedure SB_CancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNumNota: TFrmNumNota;

implementation

uses Principal;

{$R *.dfm}

procedure TFrmNumNota.Sb_SairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmNumNota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QrNumNota.Close;
  FrmNumNota:=Nil;
  Action:=caFree;
end;

procedure TFrmNumNota.DBEdit2Change(Sender: TObject);
begin
   SB_Salvar.Enabled := true;
   SB_Cancel.Enabled := true;
end;

procedure TFrmNumNota.SB_SalvarClick(Sender: TObject);
begin
  QrNumNota.Post;
  QrNumNota.CommitUpdates;
  QrNumNota.ApplyUpdates;    
  SB_Salvar.Enabled := false;
  SB_Cancel.Enabled := false;
end;

procedure TFrmNumNota.SB_CancelClick(Sender: TObject);
begin
  QrNumNota.CancelUpdates;
  SB_Salvar.Enabled := false;
  SB_Cancel.Enabled := false;
end;

procedure TFrmNumNota.FormActivate(Sender: TObject);
begin
  QrNumNota.Open;
end;

procedure TFrmNumNota.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);
end;

end.
