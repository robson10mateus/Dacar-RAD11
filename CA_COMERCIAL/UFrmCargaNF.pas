unit UFrmCargaNF;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB,
  Ora, MemDS, DBAccess, Vcl.ToolWin;

type
  TFrmCargaNF = class(TForm)
    ToolBar1: TToolBar;
    SB_CONFIRMA: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    ToolButton1: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBCarga: TDBEdit;
    DbPlacVeic: TDBEdit;
    Label20: TLabel;
    BPesqDtEntre: TBitBtn;
    DBTransportador: TDBEdit;
    Label11: TLabel;
    edtDataCarg: TDBEdit;
    Label22: TLabel;
    QryForm: TOraQuery;
    QryFormEMPRESA: TStringField;
    QryFormFILIAL: TIntegerField;
    QryFormID_CARGEXPE: TFloatField;
    QryFormDT_CARGEXPE: TDateTimeField;
    QryFormGN_PLACVEICTRAN: TStringField;
    QryFormDT_MONTCARGEXPE: TDateTimeField;
    QryFormFL_STATCARGEXPE: TStringField;
    QryFormDT_FECHCARGEXPE: TDateTimeField;
    QryFormID_USUASIST_MONTAGEM: TFloatField;
    QryFormID_USUASIST_FECHAMENTO: TFloatField;
    QryFormID_USUASIST_ABERTURA: TFloatField;
    QryFormDT_ABERCARGEXPE: TDateTimeField;
    QryFormID_CLASCARGEXPE: TFloatField;
    QryFormID_ITEMPROGCAMI: TFloatField;
    QryFormDT_LIMIPEDICARGEXPE: TDateTimeField;
    QryFormFL_IMPRCARGEXPE: TStringField;
    QryFormNM_FORNECEDOR: TStringField;
    QryFormNM_CLASCARGEXPE: TStringField;
    QryFormVL_UNITFRETCARGEXPE: TFloatField;
    QryFormNR_ORDEENTRCARGEXPE: TFloatField;
    QryFormVL_FRETCARGEXPE: TFloatField;
    QryFormFX_CARGEXPE: TStringField;
    QryFormNM_USUASIST_MONTAGEM: TStringField;
    QryFormNM_USUASIST_ABERTURA: TStringField;
    QryFormNM_USUASIST_FECHAMENT0: TStringField;
    DS: TOraDataSource;
    QryTemp: TOraQuery;
    OSQL1: TOraSQL;
    procedure BPesqDtEntreClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCargaNF: TFrmCargaNF;

implementation

uses UFrmPesCaminhao, UfrmPedVenda, GLOBAL, Principal;

{$R *.dfm}

procedure TFrmCargaNF.BPesqDtEntreClick(Sender: TObject);
begin
 try
   FrmPesqCaminhao:=TFrmPesqCaminhao.Create(Self);
   FrmPesqCaminhao.VORIGEM:=2;
   FrmPesqCaminhao.Show;
 except;
   FrmPesqCaminhao.Free;
 end;

end;

procedure TFrmCargaNF.FormShow(Sender: TObject);
begin
//  edtDataCarg.Text := Date();
  QryForm.open;
  QryForm.Insert;

  qryForm['EMPRESA'] := gs_Empresa;
  qryForm['FILIAL']  := gi_Filial;
  qryForm['FX_CARGEXPE'] := 'S';

   // Criamos um novo ID e o associamos ao campo
   // Substituido por sequence
  {QryTemp.close;
  QryTemp.SQL.clear;
  QryTemp.SQL.Text := ' Select Max(ID_CARGEXPE) as IDCARGA '+
                      ' From   EXPEDICAO_CARGA             ';
  QryTemp.Open;

  qryForm['ID_CARGEXPE'] := QryTemp['IDCARGA']+1;
  QryTemp.Close;}

  qryForm['FL_IMPRCARGEXPE'] := 'N';
  qryForm['ID_USUASIST_MONTAGEM'] := gi_CodiUsuaSist;
  qryForm['NR_ORDEENTRCARGEXPE'] := 0;
  qryForm['ID_CLASCARGEXPE'] := 1;
  qryForm['DT_CARGEXPE'] := DATE();
  qryForm['DT_LIMIPEDICARGEXPE'] := DATE();
  qryForm['DT_MONTCARGEXPE'] := DATE();
  qryForm['FL_STATCARGEXPE'] := 'NF';
  qryForm['VL_FRETCARGEXPE'] := 0;

end;

procedure TFrmCargaNF.SB_CONFIRMAClick(Sender: TObject);
begin
  QryForm.Post;
  QryForm.ApplyUpdates;
  QryForm.CommitUpdates;

  FrmPedVenda.QPediVe.Edit;
  FrmPedVenda.QPediVe['id_cargexpe'] := QryFormID_CARGEXPE.Value;
  //EXPEDIÇÃO MANUAL PEDIDO

  FrmPedVenda.QPediVe['QN_PESOPADREXPEPEDIVEND'] := FrmPedVenda.QPediVe['QN_PESOPEDIVEND'];

  FrmPedVenda.QPediVe.Post;
  FrmPedVenda.QPediVe.ApplyUpdates;
  FrmPedVenda.QPediVe.CommitUpdates;

  //COPIA O PESO DO ITEM DO PEDIDO
  OSQL1.SQL.Clear;
  OSQL1.SQL.Text:= ' Update PEDIDO_VENDA_ITEM ' +
         '  Set  qn_pesopadrexpeitempedivend = qn_pesoitempedivend ' +
         ' WHERE id_pedivend = ' + FLOATTOSTR(FrmPedVenda.QPediVe['id_pedivend']);
  OSQL1.Execute;
  close;
end;

procedure TFrmCargaNF.SB_CANCELClick(Sender: TObject);
begin
  QryForm.CancelUpdates;
  CLOSE;
end;

procedure TFrmCargaNF.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);
end;

end.
