unit UFrmEditaNotaFiscal;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, DBCtrls, Mask, DB,
  Ora, MemDS, DBAccess, Vcl.ToolWin;

type
  TFrmEditaNotaFiscal = class(TForm)
    ToolBar1: TToolBar;
    Sb_Sair: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    SB_EDIT: TSpeedButton;
    ToolButton4: TToolButton;
    Button1: TButton;
    pnl_Principal: TPanel;
    Qr: TOraQuery;
    QrNR_NOTAFISC: TFloatField;
    QrID_CLIENTE: TFloatField;
    QrNR_CFOP_NOTAFISC: TStringField;
    QrVL_BASEICMSNOTAFISC: TFloatField;
    QrVL_ICMSNOTAFISC: TFloatField;
    QrFL_CANCNOTAFISC: TStringField;
    QrFL_IMPRNOTAFISC: TStringField;
    QrGN_PLACVEICNOTAFISC: TStringField;
    QrDT_EMISNOTAFISC: TDateTimeField;
    QrDCA: TStringField;
    QrMEMOEXP: TStringField;
    QrDT_EMBARQUE: TDateTimeField;
    QrVL_BASEIPINOTAFISC: TFloatField;
    QrVL_IPIOUTRNOTAFISC: TFloatField;
    QrVL_IPINOTAFISC: TFloatField;
    QrVL_DESCPEDIVEND_NOTAFISC: TFloatField;
    QrVL_PRODNOTAFISC: TFloatField;
    QrVL_OUTRDESPNOTAFISC: TFloatField;
    QrVL_NOTAFISC: TFloatField;
    QrOBS: TStringField;
    QrUNIDADES: TFloatField;
    QrBL: TStringField;
    QrNR_REGEXPORT: TStringField;
    QrNR_REGEXPORT2: TStringField;
    QrID_NOTAFISC: TFloatField;
    DSQR: TOraDataSource;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label36: TLabel;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBcfop: TDBEdit;
    Label23: TLabel;
    DBEntrePed: TDBEdit;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    DBMemo2: TDBMemo;
    QrGN_OBSENOTAFISC: TStringField;
    QrOBS_FISCO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SB_EDITClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure DBMemo1Change(Sender: TObject);
    procedure DBMemo2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ID_NOTAFISC : integer;
  end;

var
  FrmEditaNotaFiscal: TFrmEditaNotaFiscal;

implementation

{$R *.dfm}

procedure TFrmEditaNotaFiscal.FormShow(Sender: TObject);
begin
     Qr.Close;
     Qr.ParamByName('ID_NOTAFISC').Value := ID_NOTAFISC;
     Qr.Open;

     SB_EDIT.Enabled     := True;
     SB_CONFIRMA.Enabled := False;
     SB_CANCEL.Enabled   := False;
end;

procedure TFrmEditaNotaFiscal.Sb_SairClick(Sender: TObject);
begin
    Close;
end;

procedure TFrmEditaNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TFrmEditaNotaFiscal.SB_EDITClick(Sender: TObject);
begin
     qr.Edit;
     //Atualiza os botões na tela
     SB_EDIT.Enabled     := False;
     SB_CONFIRMA.Enabled := TRUE;
     SB_CANCEL.Enabled   := TRUE;
end;

procedure TFrmEditaNotaFiscal.SB_CONFIRMAClick(Sender: TObject);
begin
     qr.Post;
     qr.ApplyUpdates;
     qr.CommitUpdates;

     //Atualiza os botões da tela
     SB_EDIT.Enabled     := True;
     SB_CONFIRMA.Enabled := FALSE;
     SB_CANCEL.Enabled   :=  FALSE;
end;

procedure TFrmEditaNotaFiscal.SB_CANCELClick(Sender: TObject);
begin
     qr.Cancel;
     qr.CancelUpdates;

     //Atualiza os botões da tela
     SB_EDIT.Enabled     := True;
     SB_CONFIRMA.Enabled := FALSE;
     SB_CANCEL.Enabled   :=  FALSE;

end;

procedure TFrmEditaNotaFiscal.DBMemo1Change(Sender: TObject);
begin
     SB_CONFIRMA.Enabled := True;
     SB_CANCEL.Enabled  :=  True;
end;

procedure TFrmEditaNotaFiscal.DBMemo2Change(Sender: TObject);
begin
     SB_CONFIRMA.Enabled := True;
     SB_CANCEL.Enabled  :=  True;
end;

end.
