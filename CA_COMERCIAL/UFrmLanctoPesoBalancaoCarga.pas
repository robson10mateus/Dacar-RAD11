unit UFrmLanctoPesoBalancaoCarga;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB, Ora,
  MemDS, DBAccess, Winapi.Windows, OraSmart;

type
  TfrmLanctoPesoBalancaoCarga = class(TForm)
    pnlBotoes: TPanel;
    btnConfimar: TBitBtn;
    btnEditar: TBitBtn;
    btnCancelar: TBitBtn;
    pnlCentral: TPanel;
    lblNumCarga: TLabel;
    lblDataCarga: TLabel;
    lblTransportador: TLabel;
    lblPlacaVeiculo: TLabel;
    btnPesqCarga: TBitBtn;
    lblStatusCarga: TLabel;
    dtsCarga: TOraDataSource;
    lblPesoExpedido: TLabel;
    lblQtdeCaixas: TLabel;
    edtPesoExpedido: TEdit;
    edtQtdeCaixas: TEdit;
    lblPesoBalancao: TLabel;
    edtNumCarga: TEdit;
    edtDataCarga: TEdit;
    edtStatusCarga: TEdit;
    edtPlacaVeiculo: TEdit;
    edtTransportador: TEdit;
    edtPesoBalancao: TDBEdit;
    qryCarga: TSmartQuery;
    qryCargaEMPRESA: TStringField;
    qryCargaFILIAL: TIntegerField;
    qryCargaID_CARGEXPE: TFloatField;
    qryCargaDT_CARGEXPE: TDateTimeField;
    qryCargaDT_MONTCARGEXPE: TDateTimeField;
    qryCargaDT_ABERCARGEXPE: TDateTimeField;
    qryCargaDT_FECHCARGEXPE: TDateTimeField;
    qryCargaDT_LIMIPEDICARGEXPE: TDateTimeField;
    qryCargaID_USUASIST_MONTAGEM: TFloatField;
    qryCargaID_USUASIST_ABERTURA: TFloatField;
    qryCargaID_USUASIST_FECHAMENTO: TFloatField;
    qryCargaID_CLASCARGEXPE: TFloatField;
    qryCargaID_ITEMPROGCAMI: TFloatField;
    qryCargaNR_ORDEENTRCARGEXPE: TFloatField;
    qryCargaVL_UNITFRETCARGEXPE: TFloatField;
    qryCargaVL_FRETCARGEXPE: TFloatField;
    qryCargaFL_IMPRCARGEXPE: TStringField;
    qryCargaFL_STATCARGEXPE: TStringField;
    qryCargaGN_OBSECARGEXPE: TStringField;
    qryCargaFX_CARGEXPE: TStringField;
    qryCargaNR_LACRCARGEXPE: TStringField;
    qryCargaDT_DESBCARGEXPE: TDateTimeField;
    qryCargaFL_CARRCARGEXPE: TStringField;
    qryCargaGN_PLACVEICTRAN: TStringField;
    qryCargaID_USR_VOLT_AB: TIntegerField;
    qryCargaID_USR_VOLT_SP: TIntegerField;
    qryCargaHORASAIDA: TStringField;
    qryCargaVALEPEDAGIO: TStringField;
    qryCargaVALOR_PEDAGIO: TFloatField;
    qryCargaLOTEEXPO: TStringField;
    qryCargaID_USUASIST_VISTO: TIntegerField;
    qryCargaDT_VISTO: TDateTimeField;
    qryCargaGN_MOTIVO_VISTO: TStringField;
    qryCargaQT_PESOBALANCAO: TFloatField;
    procedure btnPesqCargaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditarClick(Sender: TObject);
    procedure CRTemp_qryCargaAfterCancel(DataSet: TDataSet);
    procedure btnConfimarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLanctoPesoBalancaoCarga: TfrmLanctoPesoBalancaoCarga;

implementation

uses Principal, UFrmPesquisaCargas, Global;

{$R *.dfm}

procedure TfrmLanctoPesoBalancaoCarga.btnPesqCargaClick(Sender: TObject);
var nTeste : Integer;
begin
  FrmOriPesq:= 57;
  frmPesquisaCargas:=TfrmPesquisaCargas.Create(Self);
  frmPesquisaCargas.ShowModal;

  qryCarga.Close;
  qryCarga.ParamByName('ID_CARGEXPE').Value := edtNumCarga.Text;
  qryCarga.Open;

  if (qryCarga.RecordCount > 0) then
    btnEditar.Enabled := True;

end;

procedure TfrmLanctoPesoBalancaoCarga.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLanctoPesoBalancaoCarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmLanctoPesoBalancaoCarga:=nil;
//  FrmPrincipal.VEN057.Enabled:= True;
  FrmPrincipal.ACVEN057.Enabled := True;
  Action:=caFree;
end;

procedure TfrmLanctoPesoBalancaoCarga.btnEditarClick(Sender: TObject);
begin
  if (qryCarga.RecordCount > 0) then
  begin
    edtPesoBalancao.SetFocus;
    btnConfimar.Enabled:= True;
    qryCarga.Edit;
  end
  else
  begin
    Application.MessageBox('             Nenhuma carga foi selecionada.            ', PChar(frmLanctoPesoBalancaoCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
end;

procedure TfrmLanctoPesoBalancaoCarga.CRTemp_qryCargaAfterCancel(
  DataSet: TDataSet);
begin
  qryCarga.CancelUpdates;
end;

procedure TfrmLanctoPesoBalancaoCarga.btnConfimarClick(Sender: TObject);
begin

  try
    if (qryCarga.State in [DsInsert,DsEdit])  then
      qryCarga.Post
    else
    begin
      Application.MessageBox('             Nenhuma carga foi selecionada.            ', PChar(frmLanctoPesoBalancaoCarga.Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    qryCarga.CommitUpdates;
    qryCarga.ApplyUpdates;
    qryCarga.Refresh;
    btnConfimar.Enabled:= False;
  except
    Application.MessageBox('Nenhuma carga foi selecionada', PChar(frmLanctoPesoBalancaoCarga.Caption), MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure TfrmLanctoPesoBalancaoCarga.FormShow(Sender: TObject);
begin
  btnEditar.Enabled := False;
  btnConfimar.Enabled := False;
  btnPesqCarga.SetFocus;
end;

end.

