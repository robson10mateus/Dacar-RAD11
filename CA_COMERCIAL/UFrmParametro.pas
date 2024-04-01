unit UFrmParametro;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrmParametro = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    DS: TOraDataSource;
    Tab_Empresa: TTabSheet;
    Ds_Empresa: TOraDataSource;
    Panel2: TPanel;
    btnCancelar: TSpeedButton;
    btnFechar: TSpeedButton;
    btnUltimo: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnAnterior: TSpeedButton;
    edtEditar: TSpeedButton;
    btnProximo: TSpeedButton;
    btnPrimeiro: TSpeedButton;
    grdEmpresa: TDBGrid;
    Qr: TSmartQuery;
    QrEMPRESA: TStringField;
    QrFILIAL: TIntegerField;
    QrID_PARASIST: TFloatField;
    QrQN_PESOCAIXPADR: TFloatField;
    QrQN_DIFIENTRCLIE: TIntegerField;
    QrFX_PARASIST: TStringField;
    QrPC_MAXIPRECVENDPARASIST: TFloatField;
    QrQN_TOLEATRATITURECEPARASIST: TIntegerField;
    QrID_TIPODOCU_NOTAFISC: TFloatField;
    QrID_TIPODOCU_BOLETO: TFloatField;
    QrDT_FATUDOCU: TDateTimeField;
    QrID_UNIDMEDI_FRANGO: TFloatField;
    QrID_UNIDMEDI_RACAO: TFloatField;
    QrID_FORMPAGA: TFloatField;
    QrPC_TOLEQUEBPARASIST: TFloatField;
    QrPC_TOLEQUEBVENDPARASIST: TFloatField;
    QrFL_FATUANTEEXPEPARASIST: TStringField;
    QrVL_PRECPADRTRANPARASIST: TFloatField;
    QrPC_IMPOFRETAUTOPARASIST: TFloatField;
    QrFL_MONTCARGMULTUSUAPARASIST: TStringField;
    QrID_USUASIST_MONTCARGPARASIST: TFloatField;
    QrDT_MONTCARGPARASIST: TDateTimeField;
    QrHR_LIMITEPED: TDateTimeField;
    Qr_Empresa: TSmartQuery;
    Qr_EmpresaID_EMPRESA: TFloatField;
    Qr_EmpresaNOME_EMPRESA: TStringField;
    Qr_EmpresaNUM_SERIE_CERTIFICADO: TStringField;
    Qr_EmpresaDT_VENC_CERTIFICADO: TDateTimeField;
    Qr_EmpresaFL_CONTROLECAIXA: TStringField;
    Qr_EmpresaNM_EMAIL_HOST: TStringField;
    Qr_EmpresaNM_EMAIL_PORTA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure edtEditarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure grdEmpresaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Private declarations }
  public
    VFINAL:STRING;
    { Public declarations }
  end;

var
  FrmParametro: TFrmParametro;

implementation

uses Principal;

{$R *.dfm}

procedure TFrmParametro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmParametro:=nil;
//  FrmPrincipal.VEN022.Enabled:= True;
  FrmPrincipal.ACVEN022.Enabled:= True;
  Action:=caFree;
end;


procedure TFrmParametro.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := Tab_Empresa;
  Qr.Open;
  Qr_Empresa.Open;
end;

procedure TFrmParametro.btnAnteriorClick(Sender: TObject);
begin
  if ( PageControl1.ActivePage = TabSheet1 ) then
    Qr.Prior
  else
  if ( PageControl1.ActivePage = Tab_Empresa ) then
    Qr_Empresa.Prior;
end;

procedure TFrmParametro.btnUltimoClick(Sender: TObject);
begin
  if ( PageControl1.ActivePage = TabSheet1 ) then
    Qr.Last
  else
  if ( PageControl1.ActivePage = Tab_Empresa ) then
    Qr_Empresa.Last;
end;

procedure TFrmParametro.edtEditarClick(Sender: TObject);
begin
  if ( PageControl1.ActivePage = TabSheet1 ) then
    Qr.Edit
  else
  if ( PageControl1.ActivePage = Tab_Empresa ) then
    Qr_Empresa.Edit ;

  btnConfirmar.Enabled := TRUE;
  btnCancelar.Enabled   := TRUE;
end;

procedure TFrmParametro.btnConfirmarClick(Sender: TObject);
begin
  if ( PageControl1.ActivePage = TabSheet1 ) then
  begin
    if (Qr.State IN [DSEDIT,DSINSERT]) then
      QR.Post;

    QR.ApplyUpdates;
    QR.CommitUpdates;
  end
  else
    if ( PageControl1.ActivePage = Tab_Empresa ) then
    begin
      if (Qr_Empresa.State IN [DSEDIT,DSINSERT]) then
        Qr_Empresa.Post;

      Qr_Empresa.ApplyUpdates;
      Qr_Empresa.CommitUpdates;
    end;

  btnConfirmar.Enabled :=FALSE;
  btnCancelar.Enabled :=FALSE;
end;

procedure TFrmParametro.btnCancelarClick(Sender: TObject);
begin
  if ( PageControl1.ActivePage = TabSheet1 ) then
    Qr.CancelUpdates
  else
    if ( PageControl1.ActivePage = Tab_Empresa ) then
      Qr_Empresa.CancelUpdates ;

  btnConfirmar.Enabled :=FALSE;
  btnCancelar.Enabled :=FALSE;
end;

procedure TFrmParametro.btnFecharClick(Sender: TObject);
begin
  Qr_Empresa.Close;
  Qr.Close;
  Close;
end;

procedure TFrmParametro.SpeedButton1Click(Sender: TObject);
begin
  if ( PageControl1.ActivePage = TabSheet1 ) then
    Qr.First
  else
  if ( PageControl1.ActivePage = Tab_Empresa ) then
    Qr_Empresa.First ;
end;

procedure TFrmParametro.grdEmpresaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with grdEmpresa do
  begin
    if Odd( DataSource.DataSet.RecNo) then
      Canvas.Brush.Color := $00FFF2D9
    else
      Canvas.Brush.Color := clWindow;

    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);

  end;

  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  grdEmpresa.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

end.

