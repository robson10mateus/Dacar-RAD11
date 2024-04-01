unit ufrmAlteraContaPedido;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, Grids, DBGrids,
  Buttons, ExtCtrls, Winapi.Windows;

type
  TfrmAlteraContaPedido = class(TForm)
    Panel1: TPanel;
    grpFiltro: TGroupBox;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    edtNumPedido: TEdit;
    edtDescConta: TEdit;
    edtData: TEdit;
    edtVendedor: TEdit;
    btnVendedor: TBitBtn;
    btnConta: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    edtDescContaTroca: TEdit;
    btnContaTroca: TBitBtn;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    btnTrocaConta: TBitBtn;
    qryPedidosTroca: TOraQuery;
    dtsPedidosTroca: TOraDataSource;
    qryPedidosTrocaID_PEDIVEND: TFloatField;
    qryPedidosTrocaCLIENTE: TStringField;
    qryPedidosTrocaVENDEDOR: TStringField;
    qryPedidosTrocaNM_CONTA: TStringField;
    qryPedidosTrocaVL_PEDIVEND: TFloatField;
    btnData: TBitBtn;
    edtCodConta: TEdit;
    edtCodVendedor: TEdit;
    edtCodContaTroca: TEdit;
    Panel3: TPanel;
    Sb_Sair: TSpeedButton;
    sqlTrocaContas: TOraSQL;
    btnPesquisar: TSpeedButton;
    procedure btnTrocaContaClick(Sender: TObject);
    procedure edtDescContaTrocaChange(Sender: TObject);
    procedure btnContaClick(Sender: TObject);
    procedure btnVendedorClick(Sender: TObject);
    procedure btnDataClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnContaTrocaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sb_SairClick(Sender: TObject);
    procedure edtNumPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataExit(Sender: TObject);
    procedure edtNumPedidoExit(Sender: TObject);
    procedure edtCodContaExit(Sender: TObject);
    procedure edtCodVendedorExit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sData, sWhere: String;
  end;

var
  frmAlteraContaPedido: TfrmAlteraContaPedido;

implementation

uses ufrmConsultaContas, UFrmPesqVend, Global, UFrmSeldata, Principal;

{$R *.dfm}

procedure TfrmAlteraContaPedido.btnTrocaContaClick(Sender: TObject);
var
  sWhereUD : string;
  i: Integer;
begin
  sWhereUD := '';
  if Application.MessageBox('Deseja realmente alterar a Conta atual dos Pedidos selecionados?', PChar(frmAlteraContaPedido.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
  begin
    qryPedidosTroca.First;
    for i := 0 to qryPedidosTroca.RecordCount - 1 do
    begin
      sWhereUD := sWhereUD + qryPedidosTrocaID_PEDIVEND.AsString;
      if (i <> (qryPedidosTroca.RecordCount-1)) then
        sWhereUD := sWhereUD + ', ';
      qryPedidosTroca.Next;
    end;

    try
      sqlTrocaContas.SQL.Clear;
      sqlTrocaContas.SQL.Add('UPDATE PEDIDO_VENDA SET ID_CONTA = ' + edtCodContaTroca.Text + ' WHERE ID_PEDIVEND IN (' + sWhereUD + ')');
      sqlTrocaContas.Execute;
      Application.MessageBox('Alteração Finalizada.', PChar(frmAlteraContaPedido.Caption), MB_OK + MB_ICONINFORMATION);
    except
      Screen.Cursor := crDefault;
      Application.MessageBox('Erro na Atualização das Contas.', PChar(frmAlteraContaPedido.Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
  end;

  qryPedidosTroca.Refresh;
  qryPedidosTroca.First;

end;

procedure TfrmAlteraContaPedido.edtDescContaTrocaChange(Sender: TObject);
begin
  btnTrocaConta.Enabled := (Trim(edtCodContaTroca.Text) <> '');
end;

procedure TfrmAlteraContaPedido.btnContaClick(Sender: TObject);
begin
  FrmOriPesq:= 2;
  frmConsultaContas:=TfrmConsultaContas.Create(Self);
  frmConsultaContas.Show;
end;

procedure TfrmAlteraContaPedido.btnVendedorClick(Sender: TObject);
begin
  FrmOriPesq:= 59;
  FrmPesqVend:=TFrmPesqVend.Create(Self);
  FrmPesqVend.Show;
end;

procedure TfrmAlteraContaPedido.btnDataClick(Sender: TObject);
begin
  Cria_FrmSelData(sData);
  edtData.text:= sData;
  edtData.SetFocus;
end;

procedure TfrmAlteraContaPedido.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TfrmAlteraContaPedido.btnContaTrocaClick(Sender: TObject);
begin
  FrmOriPesq:= 3;
  frmConsultaContas:=TfrmConsultaContas.Create(Self);
  frmConsultaContas.Show;
end;

procedure TfrmAlteraContaPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmAlteraContaPedido:=Nil;
//  FrmPrincipal.VEN065.Enabled:= True;
  FrmPrincipal.ACVEN065.Enabled:= True;
  Action:=caFree;
end;

procedure TfrmAlteraContaPedido.Sb_SairClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrmAlteraContaPedido.edtNumPedidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  AceitaSomenteNumeros(Sender, Key);
end;

procedure TfrmAlteraContaPedido.edtDataExit(Sender: TObject);
begin
  btnPesquisarClick(Self);
end;

procedure TfrmAlteraContaPedido.edtNumPedidoExit(Sender: TObject);
begin
  btnPesquisarClick(Self);
end;

procedure TfrmAlteraContaPedido.edtCodContaExit(Sender: TObject);
begin
  if Trim(edtCodConta.Text) = '' then
    edtDescConta.Text := '';

  btnPesquisarClick(Self);
end;

procedure TfrmAlteraContaPedido.edtCodVendedorExit(Sender: TObject);
begin
  if Trim(edtCodVendedor.Text) = '' then
    edtVendedor.Text := '';

  btnPesquisarClick(Self);
end;

procedure TfrmAlteraContaPedido.RadioGroup1Click(Sender: TObject);
begin
  btnPesquisarClick(Self);
end;

procedure TfrmAlteraContaPedido.FormShow(Sender: TObject);
begin
  edtData.Text := DateToStr(Now);
  btnPesquisarClick(Self);
end;

procedure TfrmAlteraContaPedido.btnPesquisarClick(Sender: TObject);
begin
  sWhere:= 'WHERE (PV.FL_STATPEDIVEND <> ''FE'' AND PV.FL_STATPEDIVEND <> ''ZR'')';

  if Trim(edtNumPedido.Text) <> '' then
    sWhere := sWhere + ' AND PV.ID_PEDIVEND = ' + edtNumPedido.Text;

  if Trim(edtData.Text) <> '' then
  begin
    case RadioGroup1.ItemIndex of
      0: sWhere := sWhere + ' AND TO_DATE(PV.DT_DIGIPEDIVEND) = ''';
      1: sWhere := sWhere + ' AND TO_DATE(PV.DT_ENTRPEDIVEND) = ''';
      2: sWhere := sWhere + ' AND TO_DATE(PV.DT_PEDIVEND) = ''';
    end;
    sWhere := sWhere + edtData.Text + '''';
  end;

  if Trim(edtCodConta.Text) <> '' then
    sWhere := sWhere + ' AND C.ID_CONTA = ' + edtCodConta.Text;

  if Trim(edtCodVendedor.Text) <> '' then
    sWhere := sWhere + ' AND V.ID_VENDEDOR = ' + edtCodVendedor.Text;

  qryPedidosTroca.MacroByName('Macro').Value := sWhere;
  qryPedidosTroca.Open;
  qryPedidosTroca.Refresh;
  qryPedidosTroca.First;
end;

end.

