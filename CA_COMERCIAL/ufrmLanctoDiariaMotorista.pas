unit ufrmLanctoDiariaMotorista;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF}, Types, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, uFrmCadastroPadrao, Buttons, DBCtrls, ExtCtrls,
  Mask, Grids, DBGrids, ComCtrls, DB, Ora, MemDS, DBAccess;

type
  TfrmLanctoDiariaMotorista = class(TfrmCadastroPadrao)
    edtCodDiaria: TDBEdit;
    edtDtLancto: TDBEdit;
    edtUsuario: TDBEdit;
    edtValorDiaria: TDBEdit;
    edtMotorista: TDBEdit;
    edtPlaca: TDBEdit;
    rgpMovto: TDBRadioGroup;
    rgpTipoLancto: TDBRadioGroup;
    lblCodDiaria: TLabel;
    lblDtLancto: TLabel;
    lblUsuario: TLabel;
    lblValorDiaria: TLabel;
    lblPlaca: TLabel;
    lblMotorista: TLabel;
    edtNomeMotorista: TEdit;
    GroupBox1: TGroupBox;
    memObservacao: TDBMemo;
    edtVeiculo: TEdit;
    edtMotoristaFiltro: TEdit;
    lblVeiculo: TLabel;
    lblMotoristaFiltro: TLabel;
    grpPeriodo: TGroupBox;
    lblDataInicial: TLabel;
    edtDataInicial: TEdit;
    lblDataFinal: TLabel;
    edtDataFinal: TEdit;
    grpOpcoes: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    grpDiaria: TGroupBox;
    lblDiariaInicial: TLabel;
    edtDiariaInicial: TEdit;
    lblDiariaFinal: TLabel;
    edtDiariaFinal: TEdit;
    edtNomeMotoristaFiltro: TEdit;
    btnVeiculo: TBitBtn;
    btnPesqDtInicial: TBitBtn;
    btnPesqDtFinal: TBitBtn;
    BPESQ: TBitBtn;
    qryControleDiarias: TOraQuery;
    dtsControleDiarias: TOraDataSource;
    btnPlaca: TBitBtn;
    qryTemp: TOraQuery;
    qryControleDiariasCO_DIARIA: TFloatField;
    qryControleDiariasDT_LANCTO: TDateTimeField;
    qryControleDiariasEMPRESA: TStringField;
    qryControleDiariasFILIAL: TIntegerField;
    qryControleDiariasCO_USUARIO: TIntegerField;
    qryControleDiariasOP_MOVTO: TStringField;
    qryControleDiariasOP_LANCTO: TStringField;
    qryControleDiariasNO_PLACA: TStringField;
    qryControleDiariasCO_MOTORISTA: TIntegerField;
    qryControleDiariasNO_OBSERVACAO: TStringField;
    qryControleDiariasVL_DIARIA: TFloatField;
    qryUsuario: TOraQuery;
    dtsUsuario: TOraDataSource;
    procedure btnVeiculoClick(Sender: TObject);
    procedure btnPlacaClick(Sender: TObject);
    procedure btnPesqDtInicialClick(Sender: TObject);
    procedure btnPesqDtFinalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure LDcomponentes(LD:boolean);
    function Atual_ToolBar(BtOrdem: Integer): string;
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    sDT_Lancto, sDiaFiltro, sMotorista: string;
  public
    sData:String;
  end;

var
  frmLanctoDiariaMotorista: TfrmLanctoDiariaMotorista;

implementation

uses Global, UFrmPesCaminhao, UFrmSeldata, Principal;

{$R *.dfm}

procedure TfrmLanctoDiariaMotorista.btnVeiculoClick(Sender: TObject);
begin
  inherited;
  try
    FrmPesqCaminhao:=TFrmPesqCaminhao.Create(Self);
    FrmPesqCaminhao.VORIGEM:=7;
    FrmPesqCaminhao.Show;
  except;
    FrmPesqCaminhao.Free;
  end;
end;

procedure TfrmLanctoDiariaMotorista.btnPlacaClick(Sender: TObject);
begin
  inherited;
  try
    FrmPesqCaminhao:=TFrmPesqCaminhao.Create(Self);
    FrmPesqCaminhao.VORIGEM:=71;
    FrmPesqCaminhao.Show;
  except;
    FrmPesqCaminhao.Free;
  end;
end;

procedure TfrmLanctoDiariaMotorista.btnPesqDtInicialClick(Sender: TObject);
begin
  inherited;
  Cria_FrmSelData(sData);
  edtDataInicial.Text := sData;
end;

procedure TfrmLanctoDiariaMotorista.btnPesqDtFinalClick(Sender: TObject);
begin
  inherited;
  Cria_FrmSelData(sData);
  edtDataFinal.Text := sData;
end;

procedure TfrmLanctoDiariaMotorista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmPrincipal.VEN060.Enabled:= True;
  Action:=caFree;
end;

procedure TfrmLanctoDiariaMotorista.btnPrimeiroClick(Sender: TObject);
begin
  inherited;
  qryControleDiarias.First;
end;

procedure TfrmLanctoDiariaMotorista.btnAnteriorClick(Sender: TObject);
begin
  inherited;
  qryControleDiarias.Prior;
end;

procedure TfrmLanctoDiariaMotorista.btnProximoClick(Sender: TObject);
begin
  inherited;
  qryControleDiarias.Next;
end;

procedure TfrmLanctoDiariaMotorista.btnUltimoClick(Sender: TObject);
begin
  inherited;
  qryControleDiarias.Last;
end;

procedure TfrmLanctoDiariaMotorista.btnIncluirClick(Sender: TObject);
begin
  inherited;
  ActiveControl := Nil;
  LDcomponentes(True);
  if (tbsFiltro.Showing) or (tbsDados.Showing) then
  begin
    qryControleDiarias.open;
    qryControleDiarias.Insert;
    qryControleDiariasCO_USUARIO.Value:=gi_IdenUsua;
    qryControleDiariasEMPRESA.Value:=gs_Empresa;
    qryControleDiariasFILIAL.Value:=gi_Filial;
    qryControleDiariasDT_LANCTO.Value:= StrToDate(sDT_Lancto);
    PageControl1.Pages[01].TabVisible := True;
    edtPlaca.SetFocus;
  end;
  Atual_ToolBar(5);
end;

procedure TfrmLanctoDiariaMotorista.LDcomponentes(LD:boolean);
var
  Temp:TComponent;
  li_Loop:Integer;
begin
  For li_Loop :=0 to ComponentCount - 1  do
  begin
    Temp := Components[li_Loop];
    if  (Temp is TDBEDIT) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
    if (Temp is TDBlookupCOMBOBOX) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
    if (Temp is TRadioGroup) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
    if (Temp is TDBMemo) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
    if (Temp is TDBRadioGroup) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
    if (Temp is TGroupBox) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
    if (Temp is TDBCheckBox) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
  end;
end;

function TfrmLanctoDiariaMotorista.Atual_ToolBar(BtOrdem: Integer): string;
begin

  btnPesquisar.Enabled := PageControl1.Pages[0].Showing;

  CASE BtOrdem of
    1:begin
      btnIncluir.Enabled := true;
      btnEditar.Enabled := true;
      btnExcluir.Enabled := true;
      btnConfirmar.Enabled := False;
      btnCancelar.Enabled := false;
      btnPrimeiro.Enabled := True;
      btnAnterior.Enabled := True;
      btnProximo.Enabled := True;
      btnUltimo.Enabled := True;
      btnImprimir.Enabled := True;
    end;
    5,7:begin
      btnIncluir.Enabled := False;
      btnEditar.Enabled := False;
      btnExcluir.Enabled := False;
      btnConfirmar.Enabled := TRUE;
      btnCancelar.Enabled := TRUE;
      btnPrimeiro.Enabled := False;
      btnAnterior.Enabled := False;
      btnProximo.Enabled := False;
      btnUltimo.Enabled := False;
      btnImprimir.Enabled := False;
    end;
    6,8..9:begin
      btnIncluir.Enabled := True;
      btnEditar.Enabled := True;
      btnExcluir.Enabled := True;
      btnConfirmar.Enabled := FALSE;
      btnCancelar.Enabled := FALSE;
      btnPrimeiro.Enabled := True;
      btnAnterior.Enabled := True;
      btnProximo.Enabled := True;
      btnUltimo.Enabled := True;
    end;
    10:begin
      btnIncluir.Enabled := False;
      btnEditar.Enabled := True;
      btnExcluir.Enabled := False;
      btnConfirmar.Enabled := False;
      btnCancelar.Enabled := False;
      btnPrimeiro.Enabled := True;
      btnAnterior.Enabled := True;
      btnProximo.Enabled := True;
      btnUltimo.Enabled := True;
    end;
    11:begin
      btnIncluir.Enabled := False;
      btnEditar.Enabled := False;
      btnExcluir.Enabled := False;
      btnConfirmar.Enabled := False;
      btnCancelar.Enabled := False;
      btnPrimeiro.Enabled := False;
      btnAnterior.Enabled := False;
      btnProximo.Enabled := False;
      btnUltimo.Enabled := False;
    end;
  end;
end;

procedure TfrmLanctoDiariaMotorista.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja realmente EXCLUIR essa Informação?', frmLanctoDiariaMotorista.Caption, [ID_YES, ID_NO], smsInformation, ID_NO) = ID_YES then
  begin
    qryControleDiarias.Delete;
    qryControleDiarias.ApplyUpdates;
    qryControleDiarias.CommitUpdates;
    qryControleDiarias.Refresh;
  end
end;

procedure TfrmLanctoDiariaMotorista.btnEditarClick(Sender: TObject);
begin
  inherited;
  qryControleDiarias.Edit;
  Atual_ToolBar(7);
  LDcomponentes(True);
end;

procedure TfrmLanctoDiariaMotorista.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;

  if Length(memObservacao.Text) < 20 then
  begin
    Application.MessageBox('Observação do Lançamento deve conter mínimo de 20 caracteres.', frmLanctoDiariaMotorista.Caption, [ID_OK], smsInformation, ID_OK);
    memObservacao.SetFocus;
    Exit;
  end;

  if tbsDados.Showing then
  begin
    if (qryControleDiarias.State=DSEDIT) or (qryControleDiarias.State=DSINSERT) then
    begin
      qryControleDiarias.Post;
      qryControleDiarias.ApplyUpdates;
      qryControleDiarias.CommitUpdates;
    end
  end;

  LDcomponentes(False);
  Screen.Cursor := crDefault;
  Atual_ToolBar(1);
end;

procedure TfrmLanctoDiariaMotorista.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if (qryControleDiarias.State in [dsedit,dsinsert]) then
    qryControleDiarias.CancelUpdates;

  Atual_ToolBar(1);
  LDcomponentes(False);
end;

procedure TfrmLanctoDiariaMotorista.FormShow(Sender: TObject);
begin
  inherited;

  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := ' SELECT SYSDATE FROM DUAL ';
  qryTemp.Open;

  if not(qryTemp.IsEmpty) then
    sDT_Lancto := DateToStr(qryTemp.FieldByName ('SYSDATE').AsDateTime);

  edtDataInicial.Text := sDT_Lancto;
  edtDataFinal.Text := sDT_Lancto;

  qryUsuario.Close;
  qryUsuario.ParamByName('ID_USUARIO').AsInteger := gi_IdenUsua;
  qryUsuario.Open;

  btnPesquisarClick(self);
end;

procedure TfrmLanctoDiariaMotorista.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  qryControleDiarias.Close;

  WITH qryControleDiarias.SQL DO
  BEGIN
    Clear;
    Add(' SELECT CO_DIARIA, DT_LANCTO, EMPRESA, FILIAL, CO_USUARIO, OP_MOVTO,');
    Add(' OP_LANCTO, NO_PLACA, CO_MOTORISTA, NO_OBSERVACAO, VL_DIARIA');
    Add(' FROM DACAR_CONTROLE_DIARIA');

    Add('WHERE DT_LANCTO BETWEEN ''' + edtDataInicial.Text + ''' AND ''' + edtDataFinal.Text + '''');

    if edtDiariaInicial.Text <> '' then
      Add(' AND CO_DIARIA BETWEEN ''' + edtDiariaInicial.Text + ''' AND ''' + edtDiariaFinal.Text + '''');

    if edtVeiculo.Text <> '' then
      Add(' AND NO_PLACA = ''' + edtPlaca.Text + '''');

    if edtMotoristaFiltro.Text <> '' then
      Add(' AND CO_MOTORISTA = ' + edtMotoristaFiltro.Text);

    qryControleDiarias.SQL.Add('ORDER BY CO_DIARIA');
    qryControleDiarias.Open;
    Atual_ToolBar(1);
  end;

  Screen.Cursor := crDefault;

//  qryMotorista.Open;
end;

end.
