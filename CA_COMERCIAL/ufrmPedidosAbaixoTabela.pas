unit ufrmPedidosAbaixoTabela;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, MemDS, DBAccess, Ora, Buttons, ExtCtrls,
  Grids, DBGrids, Winapi.Windows;

type
  TfrmPedidosAbaixoTabela = class(TForm)
    Panel1: TPanel;
    btnConsultar: TSpeedButton;
    btnSair: TSpeedButton;
    SB_Relatorio: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    edtPedido: TEdit;
    Label2: TLabel;
    edtCliente: TEdit;
    Label3: TLabel;
    edtDataInicial: TEdit;
    Label4: TLabel;
    edtDigitador: TEdit;
    rgpStatus: TRadioGroup;
    BPESQ: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    edtDataFinal: TEdit;
    BitBtn3: TBitBtn;
    lblAutorizante: TLabel;
    edtAutorizante: TEdit;
    btnAutorizante: TBitBtn;
    lblVendedor: TLabel;
    edtVendedor: TEdit;
    btnVendedor: TBitBtn;
    BtLimpar: TBitBtn;
    qryRelPrecoAbaixoTabela: TOraQuery;
    dtsRelPrecoAbaixoTabela: TOraDataSource;
    qryRelPrecoAbaixoTabelaID_PEDIVEND: TFloatField;
    qryRelPrecoAbaixoTabelaID_CLIENTE: TFloatField;
    qryRelPrecoAbaixoTabelaNM_CLIENTE: TStringField;
    qryRelPrecoAbaixoTabelaDT_DIGIPEDIVEND: TDateTimeField;
    qryRelPrecoAbaixoTabelaDT_ENTRPEDIVEND: TDateTimeField;
    qryRelPrecoAbaixoTabelaID_VENDEDOR: TFloatField;
    qryRelPrecoAbaixoTabelaNM_VENDEDOR: TStringField;
    qryRelPrecoAbaixoTabelaNM_TABEPREC: TStringField;
    qryRelPrecoAbaixoTabelaNM_JUSTIFICATIVA_PRECO: TStringField;
    qryRelPrecoAbaixoTabelaID_USUASIST: TFloatField;
    qryRelPrecoAbaixoTabelaNM_USUASIST: TStringField;
    qryRelPrecoAbaixoTabelaFL_VALIDA_TABPRECO: TStringField;
    qryRelPrecoAbaixoTabelaFL_STATPEDIVEND: TStringField;
    qryRelPrecoAbaixoTabelaID_USUARIO_AUTO_PRECO: TIntegerField;
    qryRelPrecoAbaixoTabelaNOME_USUARIO: TStringField;
    qryRelPrecoAbaixoTabelaSITUACAO: TStringField;
    qryRelPrecoAbaixoTabelaVL_PEDIVEND: TFloatField;
    qryRelPrecoAbaixoTabelaID_PRODMATEEMBA: TStringField;
    qryRelPrecoAbaixoTabelaNM_PRODREDUMATEEMBA: TStringField;
    qryRelPrecoAbaixoTabelaVL_ITEMTABEPREC: TFloatField;
    qryRelPrecoAbaixoTabelaVL_UNITITEMPEDIVEND: TFloatField;
    qryRelPrecoAbaixoTabelaQN_PESOITEMPEDIVEND: TFloatField;
    qryRelPrecoAbaixoTabelaQN_EMBAITEMPEDIVEND: TFloatField;
    qryRelPrecoAbaixoTabelaVL_DIF: TFloatField;
    procedure btnSairClick(Sender: TObject);
    procedure SB_RelatorioClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure BPESQClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnAutorizanteClick(Sender: TObject);
    procedure btnVendedorClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Vdtstr, sCliente, sUsuario, sAutorizante, sVendedor :String;
  end;

var
  frmPedidosAbaixoTabela: TfrmPedidosAbaixoTabela;

implementation

{$R *.dfm}

uses ufrmRelPedidosAbaixoTabela, UFrmSeldata, DateUtils, Principal, UPesquiCliente, Global, ufrmConsultaUsuarios, UFrmPesqVend;

procedure TfrmPedidosAbaixoTabela.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPedidosAbaixoTabela.SB_RelatorioClick(Sender: TObject);
begin
  btnConsultarClick(self);
  if qryRelPrecoAbaixoTabela.RecordCount > 0 then
  begin
    frmRelPedidosAbaixoTabela := TfrmRelPedidosAbaixoTabela.Create(Self);
    frmRelPedidosAbaixoTabela.lblSubTitulo2.Caption := 'Entrega para o dia ' + edtDataInicial.Text + ' a ' + edtDataFinal.Text;
    frmRelPedidosAbaixoTabela.lblUsuario.Caption := gs_NomeUsuario;
//    frmRelPedidosAbaixoTabela.RLPrintDialogSetup1.Copies := 1;
    frmRelPedidosAbaixoTabela.RLReport1.Preview(nil);
  end
  else
  begin
    Application.MessageBox('Não há registros para o período informado.             ', PChar(frmPedidosAbaixoTabela.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
end;

procedure TfrmPedidosAbaixoTabela.BitBtn1Click(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  edtDataInicial.Text := Vdtstr;
  edtDataInicial.SetFocus;
end;

procedure TfrmPedidosAbaixoTabela.FormShow(Sender: TObject);
begin
  edtDataInicial.Text:= DateToStr(Today);
  edtDataFinal.Text:= DateToStr(Today);
end;

procedure TfrmPedidosAbaixoTabela.BitBtn2Click(Sender: TObject);
begin
  FrmOriPesq:=66;
  FrmPesqCliente:=TFrmPesqCliente.Create(Self);
  FrmPesqCliente.ShowModal;
end;

procedure TfrmPedidosAbaixoTabela.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmPedidosAbaixoTabela:=Nil;
  FrmPrincipal.VEN066.Enabled:= True;
  Action:=caFree;
end;

procedure TfrmPedidosAbaixoTabela.edtPedidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not( key in['0'..'9',#08,#13,#27,#42] ) then
    key:=#0;
end;

procedure TfrmPedidosAbaixoTabela.BPESQClick(Sender: TObject);
begin
  FrmOriPesq:=66;
  frmConsultaUsuarios:=TfrmConsultaUsuarios.Create(Self);
  frmConsultaUsuarios.ShowModal;
end;

procedure TfrmPedidosAbaixoTabela.btnConsultarClick(Sender: TObject);
Var
  sWhere : string;
begin
  if ((edtDataInicial.Text <> '') and (edtDataFinal.Text = '')) then
  begin
    Application.MessageBox('Data Final deve ser preenchida.', PChar(frmPedidosAbaixoTabela.Caption), MB_OK + MB_ICONINFORMATION);
    edtDataFinal.SetFocus;
    Exit;
  end;

  if ((edtDataInicial.Text = '') and (edtDataFinal.Text <> '')) then
  begin
    Application.MessageBox('Data Inicial deve ser preenchida.', PChar(frmPedidosAbaixoTabela.Caption), MB_OK + MB_ICONINFORMATION);
    edtDataFinal.SetFocus;
    Exit;
  end;

  if StrToDate(edtDataFinal.Text) < StrToDate(edtDataInicial.Text) then
  begin
    Application.MessageBox('Data Final não pode ser menor que Data Inicial.              ', PChar(frmPedidosAbaixoTabela.Caption), MB_OK + MB_ICONINFORMATION);
    edtDataFinal.SetFocus;
    Exit;
  end;

  sWhere:= '';
  Screen.Cursor := crSQLWait;
  qryRelPrecoAbaixoTabela.Close;
  qryRelPrecoAbaixoTabela.SQL.Clear;
  qryRelPrecoAbaixoTabela.SQL.Text:=

  'SELECT PV.ID_PEDIVEND, PV.ID_CLIENTE, C.NM_CLIENTE, PV.DT_DIGIPEDIVEND, PV.DT_ENTRPEDIVEND, V.ID_VENDEDOR, V.NM_VENDEDOR, TB.NM_TABEPREC, PV.NM_JUSTIFICATIVA_PRECO, ' +
  'U.ID_USUASIST, U.NM_USUASIST, PV.FL_VALIDA_TABPRECO, FL_STATPEDIVEND, PV.ID_USUARIO_AUTO_PRECO, UT.NOME_USUARIO, '+
  'CASE WHEN PV.FL_STATPEDIVEND = ''AB'' then '+
  '    ''AUTORIZADO POR '' || UPPER(UT.NOME_USUARIO) '+
  '    WHEN PV.FL_STATPEDIVEND = ''VP'' then '+
  '    ''AGUARDANDO AUTORIZAÇÃO'' '+
  '    WHEN PV.FL_STATPEDIVEND = ''CN'' then '+
  '    ''CANCELADO POR '' || UPPER(UT.NOME_USUARIO) '+
  '    WHEN PV.FL_STATPEDIVEND = ''FE'' then '+
  '    ''FATURADO'' '+
  '    ELSE '+
  '    '''' '+
  'END AS SITUACAO, PV.VL_PEDIVEND, '+
  'ME.ID_PRODMATEEMBA, ME.NM_PRODREDUMATEEMBA, I.VL_ITEMTABEPREC, ROUND(I.VL_UNITBRUTITEMPEDIVEND,2)AS VL_UNITITEMPEDIVEND, ' +
  'I.QN_PESOITEMPEDIVEND, I.QN_EMBAITEMPEDIVEND, ROUND(I.VL_ITEMTABEPREC - ROUND(I.VL_UNITBRUTITEMPEDIVEND,2),2) as VL_DIF  ' +
  'FROM PEDIDO_VENDA PV '+
  'INNER JOIN CLIENTE C ON (C.ID_CLIENTE = PV.ID_CLIENTE) '+
  'LEFT JOIN TABELA_PRECO TB ON (TB.ID_TABEPREC = C.ID_TABEPREC) '+
  'INNER JOIN VENDEDOR V ON (V.ID_VENDEDOR = PV.ID_VENDEDOR) '+
  'INNER JOIN SISTEMA_USUARIO U ON (U.ID_USUASIST = PV.ID_USUASIST_DIGIPEDIVEND) '+
  'LEFT JOIN SCT_USUARIO UT ON (UT.ID_USUARIO = PV.ID_USUARIO_AUTO_PRECO) '+
  'INNER JOIN PEDIDO_VENDA_ITEM I ON (I.ID_PEDIVEND = PV.ID_PEDIVEND AND (I.VL_ITEMTABEPREC > ROUND(I.VL_UNITBRUTITEMPEDIVEND,2)))' +
  'INNER JOIN MATERIAL_EMBALAGEM ME ON (ME.ID_MATERIAL = I.ID_MATERIAL )' +
  'WHERE (PV.FL_VALIDA_TABPRECO = ''A'' OR PV.FL_VALIDA_TABPRECO = ''S'' OR PV.FL_VALIDA_TABPRECO = ''C'') ';


  if edtDataInicial.Text <> '' then
    sWhere := sWhere + ' AND TO_DATE(PV.DT_ENTRPEDIVEND) BETWEEN ''' + edtDataInicial.Text + ''' AND ''' + edtDataFinal.Text + '''';

  if edtDigitador.Text <> ''then
    sWhere := sWhere + ' AND PV.ID_USUASIST_DIGIPEDIVEND = ' + sUsuario;

  if edtCliente.Text <> '' then
    sWhere := sWhere + ' AND PV.ID_CLIENTE = ' + sCliente;

  if edtPedido.Text <> '' then
    sWhere := sWhere + ' AND PV.ID_PEDIVEND = ' + edtPedido.Text;

  if edtAutorizante.Text <> ''then
    sWhere := sWhere + ' AND PV.ID_USUARIO_AUTO_PRECO = ' + sAutorizante;

  if edtVendedor.Text <> ''then
    sWhere := sWhere + ' AND V.ID_VENDEDOR = ' + sVendedor;

  case rgpStatus.ItemIndex of
    0: sWhere := sWhere + ' AND PV.FL_STATPEDIVEND = ''VP''';// AGUARDANDO
    1: sWhere := sWhere + ' AND PV.FL_STATPEDIVEND = ''CN''';// CANCELADO
    2: sWhere := sWhere + ' AND PV.FL_STATPEDIVEND = ''AB''';// AUTORIZADO
    3: sWhere := sWhere + ' AND (PV.FL_STATPEDIVEND = ''VP'' OR PV.FL_STATPEDIVEND = ''AB'' OR PV.FL_STATPEDIVEND = ''CN'' OR PV.FL_STATPEDIVEND = ''FE'')';
  end;

  qryRelPrecoAbaixoTabela.SQL.Add(sWhere + ' ORDER BY PV.ID_PEDIVEND, ME.ID_PRODMATEEMBA ');
  qryRelPrecoAbaixoTabela.Open;
  Screen.Cursor := crDefault;
end;

procedure TfrmPedidosAbaixoTabela.BitBtn3Click(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  edtDataFinal.Text := Vdtstr;
  edtDataFinal.SetFocus;
end;

procedure TfrmPedidosAbaixoTabela.btnAutorizanteClick(Sender: TObject);
begin
  FrmOriPesq:=67;
  frmConsultaUsuarios:=TfrmConsultaUsuarios.Create(Self);
  frmConsultaUsuarios.ShowModal;
end;

procedure TfrmPedidosAbaixoTabela.btnVendedorClick(Sender: TObject);
begin
  FrmOriPesq:=66;
  FrmPesqVend:=TFrmPesqVend.Create(Self);
  FrmPesqVend.ShowModal;
end;

procedure TfrmPedidosAbaixoTabela.BtLimparClick(Sender: TObject);
begin
  edtPedido.Text := '';
  edtCliente.Text := '';
  edtDigitador.Text := '';
  edtAutorizante.Text := '';
  edtVendedor.Text := '';
  sUsuario:= '';
  sVendedor:= '';
  sAutorizante:='';
  sCliente:= '';
end;

end.

