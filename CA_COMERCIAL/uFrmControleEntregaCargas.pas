unit uFrmControleEntregaCargas;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, ComCtrls,
  DB, Ora, MemDS, DBAccess, DateUtils, DBCtrls, Mask, Winapi.Windows, OraSmart;

type
  TFrmControleEntregaCargas = class(TForm)
    pnlBotoes: TPanel;
    btnPrimeiro: TSpeedButton;
    btnAnterior: TSpeedButton;
    btnProximo: TSpeedButton;
    btnUltimo: TSpeedButton;
    btnPesquisar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnImprimir: TSpeedButton;
    btnSair: TSpeedButton;
    PageControl1: TPageControl;
    tbsFiltros: TTabSheet;
    tbsDetalhes: TTabSheet;
    pnlFiltros: TPanel;
    grdFiltros: TDBGrid;
    grpPeriodo: TGroupBox;
    edtDataInicial: TEdit;
    edtDataFinal: TEdit;
    lblDataInicial: TLabel;
    lblDataFinal: TLabel;
    lblPlaca: TLabel;
    edtPlaca: TEdit;
    rgpModeloVeiculo: TRadioGroup;
    dtsCargas: TOraDataSource;
    rgpDocumento: TRadioGroup;
    edtDocumento: TEdit;
    lblCarga: TLabel;
    edtCarga: TEdit;
    chkEntregue: TCheckBox;
    btnPesqCarga: TBitBtn;
    btnPesquisaVeiculo: TBitBtn;
    qryCargas: TOraQuery;
    qryCargasID_CARGEXPE: TFloatField;
    qryCargasDT_MONTCARGEXPE: TDateTimeField;
    qryCargasGN_PLACVEICTRAN: TStringField;
    qryCargasOP_MODELO: TStringField;
    qryCargasMOTORISTA: TStringField;
    qryCargasAJUDANTE: TStringField;
    qryCargasDT_ENTRPEDIVEND: TDateTimeField;
    dtsCargaPedidos: TOraDataSource;
    pnlDetalhesCarga: TPanel;
    lblDetalhesVeiculo: TLabel;
    lblDetalhesCarga: TLabel;
    edtDetalhesVeiculo: TDBEdit;
    edtDetalhesCarga: TDBEdit;
    rgpModelVeiculo: TDBRadioGroup;
    edtDetalhesMoto: TDBEdit;
    edtDetalhesAjudante: TDBEdit;
    lblDetalhesMoto: TLabel;
    lblDetalhesAjudante: TLabel;
    lblDetalhesDtCarga: TLabel;
    edtDetalhesDtCarga: TDBEdit;
    pnlDetalhesPedido: TPanel;
    lblDetalhesNumPedido: TLabel;
    edtDetalhesNumPedido: TDBEdit;
    lblDetalhesNumNota: TLabel;
    edtDetalhesNumNota: TDBEdit;
    lblDetalhesRazaoSocial: TLabel;
    edtDetalhesRazaoSocial: TDBEdit;
    lblDetalhesVendedor: TLabel;
    edtDetalhesVendedor: TDBEdit;
    lblDetalhesDtPedido: TLabel;
    edtDetalhesDtPedido: TDBEdit;
    memMotivoDevolucao: TDBMemo;
    lblDetalhesMotivoDevol: TLabel;
    grpGridDetalhesPedido: TGroupBox;
    grdDetalhesPedido: TDBGrid;
    grpDetalhesStatus: TDBRadioGroup;
    sqlAtualizaEntregas: TOraSQL;
    chkAplicarTodos: TCheckBox;
    qryCargasQT_PESOBALANCAO: TFloatField;
    qryCargasTT_PEDIDO: TFloatField;
    qryCargasTT_CAIXAS: TFloatField;
    qryCargasPLACA: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    qryCargaPedidos: TSmartQuery;
    qryCargaPedidosID_CARGEXPE: TFloatField;
    qryCargaPedidosDT_MONTCARGEXPE: TDateTimeField;
    qryCargaPedidosGN_PLACVEICTRAN: TStringField;
    qryCargaPedidosMOTORISTA: TStringField;
    qryCargaPedidosAJUDANTE: TStringField;
    qryCargaPedidosDT_ENTRPEDIVEND: TDateTimeField;
    qryCargaPedidosID_PEDIVEND: TFloatField;
    qryCargaPedidosNR_NOTAFISC: TFloatField;
    qryCargaPedidosID_CLIENTE: TFloatField;
    qryCargaPedidosNM_CLIENTE: TStringField;
    qryCargaPedidosID_VENDEDOR: TFloatField;
    qryCargaPedidosNM_VENDEDOR: TStringField;
    qryCargaPedidosFL_ENTREGUE: TStringField;
    qryCargaPedidosNO_MOTIVO: TStringField;
    qryCargaPedidosOP_MODELO: TStringField;
    qryCargaPedidosSTATUS: TStringField;
    qryCargaPedidosPLACA: TStringField;
    qryCargaPedidosTT_CAIXAS: TFloatField;
    qryCargaPedidosQT_PESOBALANCAO: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure pPesquisaCargas;
    procedure edtDocumentoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCargaKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesqCargaClick(Sender: TObject);
    procedure btnPesquisaVeiculoClick(Sender: TObject);
    procedure edtCargaExit(Sender: TObject);
    procedure edtPlacaExit(Sender: TObject);
    procedure edtMotoristaExit(Sender: TObject);
    procedure edtDocumentoExit(Sender: TObject);
    procedure chkEntregueClick(Sender: TObject);
    procedure FormShortCut(Key: Integer; Shift: TShiftState;
      var Handled: Boolean);
    procedure grpPeriodoExit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure grdDetalhesPedidoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure grdFiltrosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnEditarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure pHabilitaBotoes;
    procedure grpDetalhesStatusClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure rgpModeloVeiculoClick(Sender: TObject);
    procedure memMotivoDevolucaoExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmControleEntregaCargas: TFrmControleEntregaCargas;

implementation

{$R *.dfm}
uses Principal, Global, UFrmSeldata, UFrmPesquisaCargas, UFrmPesCaminhao, uFrmRelControleEntregaCargas, ufrmRelControleEntregaCargasPedido;

procedure TFrmControleEntregaCargas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmRelControleEntregaCargas:=nil;
//  FrmPrincipal.VEN062.Enabled:= True;
  FrmPrincipal.ACVEN062.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmControleEntregaCargas.FormShow(Sender: TObject);
begin
  FrmOriPesq:= 62;
  edtDataInicial.Text := DateToStr(now);
  edtDataFinal.Text   := DateToStr(now);
  pPesquisaCargas;
  pHabilitaBotoes;
end;

procedure TFrmControleEntregaCargas.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmControleEntregaCargas.btnPesquisarClick(Sender: TObject);
begin
  pPesquisaCargas;
end;

procedure TFrmControleEntregaCargas.pPesquisaCargas;
var
  sWhere, sCargas : string;
  i: Integer;
begin
  sWhere  := '';
  qryCargas.Close;
  qryCargaPedidos.Close;
  qryCargas.SQL.Clear;
  qryCargaPedidos.SQL.Clear;

  // PERIODO DE DATA
  if (Trim(edtDataInicial.Text) = '') OR (Trim(edtDataFinal.Text) = '') then
  begin
    Application.MessageBox('Data Inicial e/ou Data Final deve ser preenchida.', PChar(FrmControleEntregaCargas.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if (StrToDate(edtDataInicial.Text) > StrToDate(edtDataFinal.Text)) then
  begin
    Application.MessageBox('Data Inicial não pode ser maior que Data Final.', PChar(FrmControleEntregaCargas.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  sWhere := ' WHERE (TRUNC(PV.DT_ENTRPEDIVEND) BETWEEN TO_DATE(''' + edtDataInicial.Text + ''',''DD/MM/YYYY'' ) AND TO_DATE(''' + edtDataFinal.Text + ''',''DD/MM/YYYY''))';

  // PEDIDO DE VENDA OU NOTA FISCAL
  if edtDocumento.Text <> '' then
  begin
    if rgpDocumento.ItemIndex = 0 then
      sWhere := sWhere + ' AND PV.ID_PEDIVEND = ' + edtDocumento.Text
    else
      sWhere := sWhere + ' AND NF.NR_NOTAFISC = ' + edtDocumento.Text
  end;

  // PEDIDO ENTREGUE
  if chkEntregue.Checked then
    sWhere := sWhere + ' AND CI.FL_ENTREGUE = ''S''';

  // MODELO DO CAMINHAO
  case rgpModeloVeiculo.ItemIndex of
    0: sWhere := sWhere + ' AND TV.OP_MODELO = ''TQ'''; // 3/4
    1: sWhere := sWhere + ' AND TV.OP_MODELO = ''TC'''; // TOCO
    2: sWhere := sWhere + ' AND TV.OP_MODELO = ''TR'''; // TRUCK
    3: sWhere := sWhere ;
  end;

  // NUMERO DA CARGA
  if edtCarga.Text <> '' then
    sWhere := sWhere + ' AND C.ID_CARGEXPE = ' + edtCarga.Text;

  // PLACA DO VEÍCULO
  if edtPlaca.Text <> '' then
    sWhere := sWhere + ' AND C.GN_PLACVEICTRAN = ''' + edtPlaca.Text + '''';

  qryCargaPedidos.SQL.Add('SELECT DISTINCT C.ID_CARGEXPE, C.DT_MONTCARGEXPE, C.GN_PLACVEICTRAN, TV.OP_MODELO,');
  qryCargaPedidos.SQL.Add('SUBSTR(C.GN_PLACVEICTRAN,1,3)||'' - ''||SUBSTR(C.GN_PLACVEICTRAN,4,4) AS PLACA,');
  qryCargaPedidos.SQL.Add('C.QT_PESOBALANCAO, C.MOTORISTA, C.AJUDANTE, ');
  qryCargaPedidos.SQL.Add('PV.DT_ENTRPEDIVEND, PV.ID_PEDIVEND,SUM(CI.QN_EMBAEXPEITEMCARGEXPE) AS TT_CAIXAS,');
  qryCargaPedidos.SQL.Add('NF.NR_NOTAFISC, CL.ID_CLIENTE, CL.NM_CLIENTE, ');
  qryCargaPedidos.SQL.Add('PV.ID_VENDEDOR, V.NM_VENDEDOR, CI.FL_ENTREGUE,');
  qryCargaPedidos.SQL.Add('(CASE WHEN CI.FL_ENTREGUE = ''S'' then');
  qryCargaPedidos.SQL.Add('''PEDIDO ENTREGUE''');
  qryCargaPedidos.SQL.Add('WHEN CI.FL_ENTREGUE = ''N'' then');
  qryCargaPedidos.SQL.Add('''PEDIDO NÃO ENTREGUE''');
  qryCargaPedidos.SQL.Add('ELSE');
  qryCargaPedidos.SQL.Add('''PEDIDO EM CURSO''');
  qryCargaPedidos.SQL.Add('END) AS STATUS, CI.NO_MOTIVO');
  qryCargaPedidos.SQL.Add('FROM EXPEDICAO_CARGA_ITEM CI');
  qryCargaPedidos.SQL.Add('INNER JOIN EXPEDICAO_CARGA C ON (C.ID_CARGEXPE = CI.ID_CARGEXPE)');
  qryCargaPedidos.SQL.Add('INNER JOIN PEDIDO_VENDA PV ON (PV.ID_PEDIVEND = CI.ID_PEDIVEND AND PV.FL_PNF = ''N'')');
  qryCargaPedidos.SQL.Add('INNER JOIN PEDIDO_VENDA_NOTA_FISCAL PVN ON (PVN.ID_PEDIVEND = PV.ID_PEDIVEND)');
  qryCargaPedidos.SQL.Add('INNER JOIN NOTA_FISCAL NF ON (NF.ID_NOTAFISC = PVN.ID_NOTAFISC)');
  qryCargaPedidos.SQL.Add('INNER JOIN VENDEDOR V ON (V.ID_VENDEDOR = PV.ID_VENDEDOR)');
  qryCargaPedidos.SQL.Add('INNER JOIN CLIENTE CL ON (CL.ID_CLIENTE = PV.ID_CLIENTE)');
  qryCargaPedidos.SQL.Add('INNER JOIN TRANSPORTADOR_VEICULO TV ON (TV.GN_PLACVEICTRAN = C.GN_PLACVEICTRAN)');
  qryCargaPedidos.SQL.Add(sWhere);
  qryCargaPedidos.SQL.Add('GROUP BY C.ID_CARGEXPE, C.DT_MONTCARGEXPE, C.GN_PLACVEICTRAN, TV.OP_MODELO, C.QT_PESOBALANCAO,');
  qryCargaPedidos.SQL.Add('C.MOTORISTA, C.AJUDANTE, PV.DT_ENTRPEDIVEND, PV.ID_PEDIVEND, NF.NR_NOTAFISC, CL.ID_CLIENTE,');
  qryCargaPedidos.SQL.Add('CL.NM_CLIENTE, PV.ID_VENDEDOR, V.NM_VENDEDOR, CI.NO_MOTIVO, CI.FL_ENTREGUE');
  qryCargaPedidos.SQL.Add('ORDER BY PV.DT_ENTRPEDIVEND, C.ID_CARGEXPE, PV.ID_PEDIVEND');

  qryCargaPedidos.ExecSQL;
  qryCargaPedidos.Open;
  qryCargaPedidos.First;

  if qryCargaPedidos.RecordCount > 0 then
  begin
    for i:=0 to qryCargaPedidos.RecordCount - 1 do
    begin
      if Pos(qryCargaPedidos.Fieldbyname('ID_CARGEXPE').AsString, sCargas) <= 0 then
      begin
        if sCargas <> '' then
          sCargas := sCargas + ',';

        sCargas := sCargas + qryCargaPedidos.Fieldbyname('ID_CARGEXPE').AsString;
      end;
      qryCargaPedidos.Next;
    end;

    qryCargas.SQL.Add('SELECT DISTINCT CA.ID_CARGEXPE, CA.DT_MONTCARGEXPE, CA.GN_PLACVEICTRAN, SUBSTR(CA.GN_PLACVEICTRAN,1,3)||'' - ''||SUBSTR(CA.GN_PLACVEICTRAN,4,4) AS PLACA,');
    qryCargas.SQL.Add('TV.OP_MODELO, CA.MOTORISTA, CA.AJUDANTE, PV.DT_ENTRPEDIVEND, QT_PESOBALANCAO,');
    qryCargas.SQL.Add('COUNT(DISTINCT PV.ID_PEDIVEND) AS TT_PEDIDO, SUM(CI.QN_EMBAEXPEITEMCARGEXPE) AS TT_CAIXAS');
    qryCargas.SQL.Add('FROM EXPEDICAO_CARGA_ITEM CI');
    qryCargas.SQL.Add('INNER JOIN EXPEDICAO_CARGA CA ON (CA.ID_CARGEXPE = CI.ID_CARGEXPE)');
    qryCargas.SQL.Add('INNER JOIN PEDIDO_VENDA PV ON (PV.ID_PEDIVEND = CI.ID_PEDIVEND)');
    qryCargas.SQL.Add('INNER JOIN PEDIDO_VENDA_NOTA_FISCAL PVN ON (PVN.ID_PEDIVEND = PV.ID_PEDIVEND)');
    qryCargas.SQL.Add('INNER JOIN NOTA_FISCAL NF ON (NF.ID_NOTAFISC = PVN.ID_NOTAFISC)');
    qryCargas.SQL.Add('INNER JOIN TRANSPORTADOR_VEICULO TV ON (TV.GN_PLACVEICTRAN = CA.GN_PLACVEICTRAN)');
    qryCargas.SQL.Add('WHERE CA.ID_CARGEXPE IN (' + sCargas + ')');
    qryCargas.SQL.Add('GROUP BY CA.ID_CARGEXPE, CA.DT_MONTCARGEXPE, CA.GN_PLACVEICTRAN, TV.OP_MODELO, CA.MOTORISTA, CA.AJUDANTE, PV.DT_ENTRPEDIVEND, CA.QT_PESOBALANCAO');
    qryCargas.SQL.Add('ORDER BY PV.DT_ENTRPEDIVEND, CA.ID_CARGEXPE');
    qryCargas.ExecSQL;
    qryCargas.Open;
    qryCargas.First;
  end;

end;

procedure TFrmControleEntregaCargas.edtDocumentoKeyPress(Sender: TObject;  var Key: Char);
begin
  if not ( Key in ['0'..'9', Chr(8)] ) then
    Key := #0
end;

procedure TFrmControleEntregaCargas.edtCargaKeyPress(Sender: TObject;  var Key: Char);
begin
  if not ( Key in ['0'..'9', Chr(8)] ) then
    Key := #0
end;

procedure TFrmControleEntregaCargas.btnPesqCargaClick(Sender: TObject);
begin
  try
    frmPesquisaCargas:=TfrmPesquisaCargas.Create(Self);
    frmPesquisaCargas.ShowModal;
    edtCarga.SetFocus;
  except
    frmPesquisaCargas.Free;
  end;
end;

procedure TFrmControleEntregaCargas.btnPesquisaVeiculoClick(
  Sender: TObject);
begin
  try
    FrmPesqCaminhao:=TFrmPesqCaminhao.Create(Self);
    FrmPesqCaminhao.ShowModal;
    edtPlaca.SetFocus;
  except;
    FrmPesqCaminhao.Free;
  end;
end;

procedure TFrmControleEntregaCargas.edtCargaExit(Sender: TObject);
begin
  pPesquisaCargas;
end;

procedure TFrmControleEntregaCargas.edtPlacaExit(Sender: TObject);
begin
  pPesquisaCargas;
end;

procedure TFrmControleEntregaCargas.edtMotoristaExit(Sender: TObject);
begin
  pPesquisaCargas;
end;

procedure TFrmControleEntregaCargas.edtDocumentoExit(Sender: TObject);
begin
  pPesquisaCargas;
end;

procedure TFrmControleEntregaCargas.chkEntregueClick(Sender: TObject);
begin
  pPesquisaCargas;
end;

procedure TFrmControleEntregaCargas.FormShortCut(Key: Integer;
  Shift: TShiftState; var Handled: Boolean);
begin
  case Key of
    4148: btnPesquisar.Click;  // F5 para pesquisa
  end;
end;

procedure TFrmControleEntregaCargas.grpPeriodoExit(Sender: TObject);
begin
  pPesquisaCargas;
end;

procedure TFrmControleEntregaCargas.PageControl1Change(Sender: TObject);
begin
  if tbsDetalhes.Showing then
  begin
    qryCargaPedidos.Filtered := False;
    qryCargaPedidos.Filter := ' ID_CARGEXPE = ' + qryCargasID_CARGEXPE.AsString;
    qryCargaPedidos.Filtered := True;
    qryCargaPedidos.First;
  end
  else
  begin
    qryCargaPedidos.Filtered := False;
    qryCargaPedidos.Filter := '';
    qryCargaPedidos.Filtered := True;
    qryCargaPedidos.First;
  end;

  pHabilitaBotoes;
end;

procedure TFrmControleEntregaCargas.btnPrimeiroClick(Sender: TObject);
begin
  if tbsDetalhes.Showing then
    qryCargaPedidos.First
  else
    qryCargas.First;
end;

procedure TFrmControleEntregaCargas.btnAnteriorClick(Sender: TObject);
begin
  if tbsDetalhes.Showing then
    qryCargaPedidos.Prior
  else
    qryCargas.Prior;
end;

procedure TFrmControleEntregaCargas.btnProximoClick(Sender: TObject);
begin
  if tbsDetalhes.Showing then
    qryCargaPedidos.Next
  else
    qryCargas.Next;
end;

procedure TFrmControleEntregaCargas.btnUltimoClick(Sender: TObject);
begin
  if tbsDetalhes.Showing then
    qryCargaPedidos.Last
  else
    qryCargas.Last;
end;

procedure TFrmControleEntregaCargas.grdDetalhesPedidoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= clSilver;

  grdDetalhesPedido.DefaultDrawColumnCell(rect,DataCol,column,state);

end;

procedure TFrmControleEntregaCargas.grdFiltrosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= clSilver;

  grdFiltros.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmControleEntregaCargas.btnEditarClick(Sender: TObject);
begin
  qryCargaPedidos.Edit;
  grpDetalhesStatus.Enabled := True;
  memMotivoDevolucao.Enabled := grpDetalhesStatus.ItemIndex = 2;
  pHabilitaBotoes;
end;

procedure TFrmControleEntregaCargas.btnConfirmarClick(Sender: TObject);
var
  i : Integer;
  sPV, sUpdate, sStatus, sMotivo: string;
begin
  sStatus := '';
  sUpdate := '';
  sMotivo := '';
  sPv:= qryCargasID_CARGEXPE.AsString;

  if (grpDetalhesStatus.ItemIndex = 2) and (memMotivoDevolucao.Text = '') then
  begin
    Application.MessageBox(PChar('É necessário informar motivo da não entrega do Pedido ' + qryCargaPedidosID_PEDIVEND.AsString + '.'), PChar(FrmControleEntregaCargas.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
    memMotivoDevolucao.SetFocus;
  end
  else
  begin
    if chkAplicarTodos.Checked then
    begin
      sStatus := grpDetalhesStatus.Value;
      if grpDetalhesStatus.ItemIndex = 2 then
        sMotivo := memMotivoDevolucao.Text;

      sqlAtualizaEntregas.SQL.Text := 'UPDATE EXPEDICAO_CARGA_ITEM SET FL_ENTREGUE = ''' + sStatus + ''', NO_MOTIVO = ''' + sMotivo +
                                      ''' WHERE ID_CARGEXPE = ' + qryCargaPedidosID_CARGEXPE.AsString;
      sqlAtualizaEntregas.Execute;
      chkAplicarTodos.Checked := False;
    end
    else
    begin
      qryCargaPedidos.First;
      for i := 0 to qryCargaPedidos.RecordCount - 1 do
      begin
        sMotivo := '';
        if (qryCargaPedidosFL_ENTREGUE.Value <> qryCargaPedidosFL_ENTREGUE.OldValue) OR
           (qryCargaPedidosNO_MOTIVO.Value <> qryCargaPedidosNO_MOTIVO.OldValue) then
        begin
          if grpDetalhesStatus.ItemIndex = 2 then
            sMotivo := memMotivoDevolucao.Text;

          sqlAtualizaEntregas.SQL.Text := 'UPDATE EXPEDICAO_CARGA_ITEM SET FL_ENTREGUE = ''' + qryCargaPedidosFL_ENTREGUE.Value + ''', NO_MOTIVO = ''' +
                                            sMotivo + ''' WHERE ID_PEDIVEND = ' + qryCargaPedidosID_PEDIVEND.AsString;
          sqlAtualizaEntregas.Execute;
        end;
        qryCargaPedidos.Next;
      end;
    end;

    qryCargaPedidos.Refresh;
    qryCargaPedidos.First;
    grpDetalhesStatus.Enabled := False;
    memMotivoDevolucao.Enabled:= False;
    pHabilitaBotoes;
  end;

end;

procedure TFrmControleEntregaCargas.pHabilitaBotoes;
begin
  if tbsDetalhes.Showing then
  begin
    btnPrimeiro.Enabled:= True;
    btnAnterior.Enabled:= true;
    btnProximo.Enabled:= True;
    btnUltimo.Enabled:= True;
    btnPesquisar.Enabled := False;
    btnEditar.Enabled := True;
    btnCancelar.Enabled := (qryCargaPedidos.State = dsEdit);
    btnConfirmar.Enabled := (qryCargaPedidos.State = dsEdit);
  end
  else
  begin
    btnPrimeiro.Enabled:= False;
    btnAnterior.Enabled:= False;
    btnProximo.Enabled:= False;
    btnUltimo.Enabled:= False;
    btnPesquisar.Enabled := True;
    btnEditar.Enabled := False;
    btnCancelar.Enabled := False;
    btnConfirmar.Enabled := False;
  end;
end;

procedure TFrmControleEntregaCargas.grpDetalhesStatusClick(
  Sender: TObject);
begin
  if grpDetalhesStatus.ItemIndex = 2 then
    memMotivoDevolucao.Enabled := True
  else
  begin
    memMotivoDevolucao.Text := '';
    memMotivoDevolucao.Enabled := False;
  end;

end;

procedure TFrmControleEntregaCargas.btnCancelarClick(Sender: TObject);
begin
  qryCargaPedidos.CancelUpdates;
  grpDetalhesStatus.Enabled:= False;
  memMotivoDevolucao.Enabled := False;
  pHabilitaBotoes;
end;

procedure TFrmControleEntregaCargas.rgpModeloVeiculoClick(Sender: TObject);
begin
  pPesquisaCargas;
end;

procedure TFrmControleEntregaCargas.memMotivoDevolucaoExit(
  Sender: TObject);
begin
  //
end;

procedure TFrmControleEntregaCargas.btnImprimirClick(Sender: TObject);
begin
  if (qryCargas.RecordCount = 0 ) then
  begin
    Application.MessageBox('Não há registros no período.', PChar(FrmControleEntregaCargas.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if tbsDetalhes.Showing then
  begin
    qryCargaPedidos.DisableControls;
    frmRelControleEntregaCargasPedido := TfrmRelControleEntregaCargasPedido.Create(Self);
    frmRelControleEntregaCargasPedido.lblSubTitulo2.Caption := 'Carga Nº ' + edtDetalhesCarga.EditText;
    frmRelControleEntregaCargasPedido.RLReport1.Preview(nil);
    qryCargaPedidos.EnableControls;
    qryCargaPedidos.First;
  end
  else
  begin
    qryCargas.DisableControls;
    FrmRelControleEntregaCargas := TFrmRelControleEntregaCargas.Create(Self);
    FrmRelControleEntregaCargas.lblSubTitulo2.Caption := 'Período de ' + edtDataInicial.Text + ' a ' + edtDataFinal.Text;
    FrmRelControleEntregaCargas.RLReport1.Preview(nil);
    qryCargas.EnableControls;
    qryCargas.First;
  end;

end;

end.

