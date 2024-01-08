unit uFrmAtualizaPedidoTabPreco;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, MemDS, DBAccess, Ora,
  Buttons, ExtCtrls, Windows, Mask, DBCtrls, ImgList, System.ImageList;
type
  TfrmAtualizaPedidoTabPreco = class(TForm)
    Panel1: TPanel;
    btnValidaPedidos: TSpeedButton;
    btnInativaPedidos: TSpeedButton;
    btnSair: TSpeedButton;
    qryPedidos: TOraQuery;
    dtsPedidos: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    edtPedido: TEdit;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    GroupBox2: TGroupBox;
    Panel7: TPanel;
    Panel8: TPanel;
    qryItensPedido: TOraQuery;
    dtsItensPedido: TDataSource;
    qryItensPedidoID_PRODMATEEMBA: TStringField;
    qryItensPedidoNM_PRODREDUMATEEMBA: TStringField;
    qryItensPedidoVL_ITEMTABEPREC: TFloatField;
    qryItensPedidoVL_UNITITEMPEDIVEND: TFloatField;
    qryItensPedidoID_PEDIVEND: TFloatField;
    qryTemp: TOraQuery;
    Panel9: TPanel;
    DBGrid2: TDBGrid;
    btnSuspendePedidos: TSpeedButton;
    Label2: TLabel;
    edtCliente: TEdit;
    Label3: TLabel;
    edtData: TEdit;
    Label4: TLabel;
    edtDigitador: TEdit;
    rgpStatus: TRadioGroup;
    BPESQ: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnConsultar: TSpeedButton;
    qryPedidosID_PEDIVEND: TFloatField;
    qryPedidosID_CLIENTE: TFloatField;
    qryPedidosNM_CLIENTE: TStringField;
    qryPedidosDT_DIGIPEDIVEND: TDateTimeField;
    qryPedidosNM_JUSTIFICATIVA_PRECO: TStringField;
    qryPedidosID_USUASIST: TFloatField;
    qryPedidosNM_REDUUSUASIST: TStringField;
    qryPedidosFL_VALIDA_TABPRECO: TStringField;
    qryPedidosFL_STATPEDIVEND: TStringField;
    qryPedidosID_USUARIO_AUTO_PRECO: TIntegerField;
    qryPedidosNOME_USUARIO: TStringField;
    qryPedidosSITUACAO: TStringField;
    qryPedidosVL_PEDIVEND: TFloatField;
    qryItensPedidoVL_DIF: TFloatField;
    qryItensPedidoQN_EMBAITEMPEDIVEND: TFloatField;
    qryPedidosNM_VENDEDOR: TStringField;
    Label5: TLabel;
    edtVendedor: TEdit;
    btnPesqVendedor: TBitBtn;
    btnItensPedido: TBitBtn;
    Label6: TLabel;
    edtGrupoCliente: TEdit;
    btnPesqGrupoCliente: TBitBtn;
    qryPedidosQN_EMBAPEDIVEND: TIntegerField;
    edtTotalCxPedido: TDBEdit;
    chkGrupoCliente: TCheckBox;
    qryPedidosNM_FANTCLIE: TStringField;
    SB_Relatorio: TSpeedButton;
    qryPedidosTXT: TStringField;
    ImageList1: TImageList;
    chkMarcarWts: TCheckBox;
    lblContaVP: TLabel;
    lblContaV: TLabel;
    lblContaCN: TLabel;
    lblContaT: TLabel;
    SpeedButton1: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnValidaPedidosClick(Sender: TObject);
    procedure btnInativaPedidosClick(Sender: TObject);
    procedure btnSuspendePedidosClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure edtPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure BPESQClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure rgpStatusClick(Sender: TObject);
    procedure btnPesqVendedorClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure btnItensPedidoClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnPesqGrupoClienteClick(Sender: TObject);
    procedure chkGrupoClienteClick(Sender: TObject);
    procedure SB_RelatorioClick(Sender: TObject);
    procedure chkMarcarWtsClick(Sender: TObject);
  private
    { Private declarations }
    bExibe:Boolean;

  public
    { Public declarations }
    Vdtstr, sCliente, sUsuario, sVendedor, sGrupoCliente :String;
  end;

var
  frmAtualizaPedidoTabPreco: TfrmAtualizaPedidoTabPreco;

implementation

uses uFrmPedVenda, Global, Principal, ufrmRelPedidosAbaixoTabela, UFrmSeldata, DateUtils,
  UPesquiCliente, ufrmConsultaUsuarios, UFrmPesqVend, ufrmConsultaGrupoClientes;

{$R *.dfm}

procedure TfrmAtualizaPedidoTabPreco.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAtualizaPedidoTabPreco.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  IF qryPedidosFL_STATPEDIVEND.Value = 'AB' then
    DBGrid1.Canvas.Brush.Color:=$00CCFFCC
  else if qryPedidosFL_STATPEDIVEND.Value = 'VP' then
    DBGrid1.Canvas.Brush.Color:=$00BFFFFF
  else if qryPedidosFL_STATPEDIVEND.Value = 'CN' then
    DBGrid1.Canvas.Brush.Color:=$00C6C6FF
  else
    Exit;

  DBGrid1.Canvas.Font.Color:=$000000;
  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);

  with DBGrid1 do
  begin
    if AnsiLowerCase(Column.FieldName) = 'txt' then
    begin
      Canvas.FillRect(Rect);
      ImageList1.Draw(Canvas,Rect.Left+5,Rect.Top+1,Ord(Column.Field.AsBoolean));
    end;
  end;
end;

procedure TfrmAtualizaPedidoTabPreco.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  IF qryItensPedidoVL_DIF.Value <=0  then
    DBGrid2.Canvas.Brush.Color:=$00CCFFCC
  else
    DBGrid2.Canvas.Brush.Color:=$00C6C6FF;

  DBGrid2.Canvas.Font.Color:=$000000;
  DBGrid2.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TfrmAtualizaPedidoTabPreco.btnValidaPedidosClick(Sender: TObject);
var
  vMarca: TBookmark;
  sPedidos: string;
  i: Integer;
begin
  qryPedidos.DisableControls;
  if qryPedidos.RecordCount > 0 then
  begin
    qryPedidos.Close;
    qryPedidos.Filtered := False;
    qryPedidos.Filter := 'FL_STATPEDIVEND = ''VP''';
    qryPedidos.Filtered := True;
    qryPedidos.Open;

    if qryPedidos.RecordCount > 0 then
    begin
      if Application.MessageBox('                    Deseja realmente VALIDAR todos os Pedidos?                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
      begin
        qryPedidos.First;

        for i:= 0 to qryPedidos.RecordCount-1 do
        begin
          sPedidos := sPedidos + qryPedidosID_PEDIVEND.AsString;

          if (i < qryPedidos.RecordCount-1) then
            sPedidos :=sPedidos + ', ';

          qryPedidos.Next;
        end;

        vMarca:= qryPedidos.GetBookmark;
        qryTemp.SQL.Clear;
        qryTemp.SQL.Add('UPDATE PEDIDO_VENDA SET FL_VALIDA_TABPRECO = ''S'', FL_STATPEDIVEND = ''AB'', ID_USUARIO_AUTO_PRECO = ' + IntToStr(gi_IdenUsua) + ' WHERE ID_PEDIVEND IN ('+ sPedidos + ')');
        qryTemp.ExecSQL;
        qryPedidos.GotoBookmark(vMarca);
        qryPedidos.FreeBookmark(vMarca);

        Application.MessageBox('Todos os Pedidos foram Validados. Efetuar conferência na tela de Lançamento de Pedidos.', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
      end;
    end
    else
      Application.MessageBox('                    Nenhum Pedido a ser Validado para o período.                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);


    qryPedidos.Close;
    qryPedidos.Filtered := False;
    qryPedidos.Filter:= '';
    qryPedidos.Filtered := True;
    qryPedidos.Open;
  end
  else
    Application.MessageBox('                    Nenhum Pedido a ser Validado para o período.                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);

  qryPedidos.EnableControls;
  Exit;

end;

procedure TfrmAtualizaPedidoTabPreco.btnInativaPedidosClick(
  Sender: TObject);
var
  vMarca: TBookmark;
  sPedidos: string;
  i: Integer;
begin
  qryPedidos.DisableControls;
  if qryPedidos.RecordCount > 0 then
  begin
    qryPedidos.Close;
    qryPedidos.Filtered := False;
    qryPedidos.Filter := 'FL_STATPEDIVEND = ''VP''';
    qryPedidos.Filtered := True;
    qryPedidos.Open;

    if qryPedidos.RecordCount > 0 then
    begin
      if Application.MessageBox('Pedidos inativos, NÃO poderão ser reabertos. Deseja realmente INATIVAR todos os Pedidos?', PChar(frmAtualizaPedidoTabPreco.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
      begin
        qryPedidos.First;

        for i:= 0 to qryPedidos.RecordCount-1 do
        begin
          sPedidos := sPedidos + qryPedidosID_PEDIVEND.AsString;

          if (i < qryPedidos.RecordCount-1) then
            sPedidos :=sPedidos + ', ';

          qryPedidos.Next;
        end;

        vMarca:= qryPedidos.GetBookmark;
        qryTemp.SQL.Clear;
        qryTemp.SQL.Add('UPDATE PEDIDO_VENDA SET FL_VALIDA_TABPRECO = ''C'', FL_STATPEDIVEND = ''CN'', ID_USUARIO_AUTO_PRECO = ' + IntToStr(gi_IdenUsua) + ' WHERE ID_PEDIVEND IN ('+ sPedidos + ')');
        qryTemp.ExecSQL;

        qryTemp.SQL.Clear;
        qryTemp.SQL.Add('DELETE FROM CA_LIMITECRED WHERE ID_PEDIVEND IN ('+ sPedidos + ')');
        qryTemp.ExecSQL;

        FrmPrincipal.corrigelimite(qryPedidos['ID_CLIENTE'], True, qryPedidos['VL_PEDIVEND']);
        qryPedidos.GotoBookmark(vMarca);
        qryPedidos.FreeBookmark(vMarca);

        Application.MessageBox('                    Todos os Pedidos foram INATIVADOS.                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
      end;
    end
    else
      Application.MessageBox('                    Nenhum Pedido a ser Inativado para o período.                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);

    qryPedidos.Close;
    qryPedidos.Filtered := False;
    qryPedidos.Filter:= '';
    qryPedidos.Filtered := True;
    qryPedidos.Open;
  end
  else
    Application.MessageBox('                    Nenhum Pedido a ser Inativado para o período.                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);

  qryPedidos.EnableControls;
  Exit;

end;

procedure TfrmAtualizaPedidoTabPreco.btnSuspendePedidosClick(Sender: TObject);
var
  vMarca: TBookmark;
  sPedidos: string;
  i: Integer;
begin
  qryPedidos.DisableControls;
  if qryPedidos.RecordCount > 0 then
  begin
    qryPedidos.Close;
    qryPedidos.Filtered := False;
    qryPedidos.Filter := 'FL_STATPEDIVEND = ''AB''';
    qryPedidos.Filtered := True;
    qryPedidos.Open;

    if qryPedidos.RecordCount > 0 then
    begin

      if Application.MessageBox('                    Deseja realmente SUSPENDER todos os Pedidos?                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
      begin
        qryPedidos.First;

        for i:= 0 to qryPedidos.RecordCount-1 do
        begin
          sPedidos := sPedidos + qryPedidosID_PEDIVEND.AsString;

          if (i < qryPedidos.RecordCount-1) then
            sPedidos :=sPedidos + ', ';

          qryPedidos.Next;
        end;

        vMarca:= qryPedidos.GetBookmark;
        qryTemp.SQL.Clear;
        qryTemp.SQL.Add('UPDATE PEDIDO_VENDA SET FL_VALIDA_TABPRECO = ''A'', FL_STATPEDIVEND = ''VP'', ID_USUARIO_AUTO_PRECO = ' + IntToStr(gi_IdenUsua) + ' WHERE ID_PEDIVEND IN ('+ sPedidos + ')');
        qryTemp.ExecSQL;
        qryPedidos.GotoBookmark(vMarca);
        qryPedidos.FreeBookmark(vMarca);

        Application.MessageBox('Todos os Pedidos foram Suspensos, mas poderão ser Validados posteriormente', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
      end;
    end
    else
      Application.MessageBox('                    Nenhum Pedido a ser Suspenso para o período.                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);

    qryPedidos.Close;
    qryPedidos.Filtered := False;
    qryPedidos.Filter:= '';
    qryPedidos.Filtered := True;
    qryPedidos.Open;
  end
  else
    Application.MessageBox('                    Nenhum Pedido a ser Suspenso para o período.                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);

  qryPedidos.EnableControls;
  Exit;
end;

procedure TfrmAtualizaPedidoTabPreco.DBGrid1DblClick(Sender: TObject);
var
  vMarca: TBookmark;
  vp, v, c, t : Integer;
begin
  vp := 0;
  v  := 0;
  c  := 0;
  t  := 0;

  qryPedidos.DisableControls;

  if qryPedidos.RecordCount > 0 then
  begin
    t:= qrypedidos.RecordCount;
    Screen.Cursor:= crSQLWait;
    vMarca:= qryPedidos.GetBookmark;
    qryTemp.SQL.Clear;

    if (qryPedidosFL_STATPEDIVEND.Value = 'VP') then
      qryTemp.SQL.Add('UPDATE PEDIDO_VENDA SET FL_VALIDA_TABPRECO = ''S'', FL_STATPEDIVEND = ''AB'', ID_USUARIO_AUTO_PRECO = ' + IntToStr(gi_IdenUsua) + ' WHERE ID_PEDIVEND = ' + qryPedidosID_PEDIVEND.Text)
    else if (qryPedidosFL_STATPEDIVEND.Value = 'AB') then
      qryTemp.SQL.Add('UPDATE PEDIDO_VENDA SET FL_VALIDA_TABPRECO = ''A'', FL_STATPEDIVEND = ''VP'', ID_USUARIO_AUTO_PRECO = ' + IntToStr(gi_IdenUsua) + ' WHERE ID_PEDIVEND = ' + qryPedidosID_PEDIVEND.Text)
    else
      Exit;

    qryTemp.ExecSQL;
    Screen.Cursor:= crDefault;
  end
  else
    Application.MessageBox('                    Nenhum Pedido a ser Validado para o período.                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);

  if qryPedidos.RecordCount <= 1 then
    rgpStatus.ItemIndex := 3;

  btnConsultarClick(Self);

  if qryPedidos.GetBookmark <> nil then
  begin
    qryPedidos.GotoBookmark(vMarca);
    qryPedidos.FreeBookmark(vMarca);
  end;

  qryPedidos.EnableControls;

end;

procedure TfrmAtualizaPedidoTabPreco.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  vMarca: TBookmark;
begin
  if (Shift = [ssCtrl]) and (Key = ord('D')) then
  begin
    qryPedidos.DisableControls;
    if qryPedidos.RecordCount > 0 then
    begin
      if qryPedidosFL_STATPEDIVEND.AsString = 'VP' then
      begin
        if Application.MessageBox('Pedidos inativos, NÃO poderão ser reabertos. Deseja realmente INATIVAR o Pedido?', PChar(frmAtualizaPedidoTabPreco.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
        begin
          vMarca:= qryPedidos.GetBookmark;
          qryTemp.SQL.Clear;
          qryTemp.SQL.Add('UPDATE PEDIDO_VENDA SET FL_VALIDA_TABPRECO = ''C'', FL_STATPEDIVEND = ''CN'', ID_USUARIO_AUTO_PRECO = ' + IntToStr(gi_IdenUsua) + ' WHERE ID_PEDIVEND = ' + qryPedidosID_PEDIVEND.Text);
          qryTemp.ExecSQL;

          qryTemp.SQL.Clear;
          qryTemp.SQL.Add('DELETE FROM CA_LIMITECRED WHERE ID_PEDIVEND = ' + qryPedidosID_PEDIVEND.Text);
          qryTemp.ExecSQL;

          FrmPrincipal.corrigelimite(qryPedidos['ID_CLIENTE'], True, qryPedidos['VL_PEDIVEND']);
          qryPedidos.GotoBookmark(vMarca);
          qryPedidos.FreeBookmark(vMarca);
          Application.MessageBox('                    Pedido INATIVADO.                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
          qryPedidos.Refresh;
        end
        else
          Exit;
      end
      else if qryPedidosFL_STATPEDIVEND.AsString = 'AB' then
        Application.MessageBox('                    Pedido já foi Validado. Inativação não permitida.                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION)
      else if qryPedidosFL_STATPEDIVEND.AsString = 'CN' then
        Application.MessageBox('                                        Pedido já foi Inativado.                                        ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION)
      else
        Exit;
    end;

    qryPedidos.EnableControls;
    Exit;
  end;
end;

procedure TfrmAtualizaPedidoTabPreco.BitBtn1Click(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  edtData.Text := Vdtstr;
  edtData.SetFocus;
end;

procedure TfrmAtualizaPedidoTabPreco.FormShow(Sender: TObject);
begin
  bExibe:= False;
  edtData.Text:= DateToStr(Today);
  btnConsultarClick(self);
end;

procedure TfrmAtualizaPedidoTabPreco.BitBtn2Click(Sender: TObject);
begin
  FrmOriPesq:=111;
  FrmPesqCliente:=TFrmPesqCliente.Create(Self);
  FrmPesqCliente.ShowModal;
end;

procedure TfrmAtualizaPedidoTabPreco.edtPedidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not( key in['0'..'9',#08,#13,#27,#42] ) then
    key:=#0;
end;

procedure TfrmAtualizaPedidoTabPreco.BPESQClick(Sender: TObject);
begin
  FrmOriPesq:=111;
  frmConsultaUsuarios:=TfrmConsultaUsuarios.Create(Self);
  frmConsultaUsuarios.ShowModal;
end;

procedure TfrmAtualizaPedidoTabPreco.btnConsultarClick(Sender: TObject);
Var
  sWhere : string;
  vp, v, c, t : Integer;
begin
  vp := 0;
  v  := 0;
  c  := 0;
  t  := 0;

  sWhere:= '';
  Screen.Cursor := crSQLWait;
  qryPedidos.Close;
  qryPedidos.SQL.Clear;
  qryPedidos.SQL.Text:=
  'SELECT ''T'' AS TXT, PV.ID_PEDIVEND, C.ID_GRUPCLIE, PV.ID_CLIENTE, C.NM_CLIENTE, C.NM_FANTCLIE, PV.ID_VENDEDOR, V.NM_VENDEDOR, PV.DT_DIGIPEDIVEND, PV.NM_JUSTIFICATIVA_PRECO, ' +
  'U.ID_USUASIST, U.NM_REDUUSUASIST, PV.FL_VALIDA_TABPRECO, FL_STATPEDIVEND, PV.ID_USUARIO_AUTO_PRECO, UT.NOME_USUARIO, '+
  'CASE WHEN PV.FL_STATPEDIVEND = ''AB'' then '+
  '    ''AUTORIZADO POR '' || UPPER(UT.NOME_USUARIO) '+
  '    WHEN PV.FL_STATPEDIVEND = ''VP'' then '+
  '    ''AGUARDANDO AUTORIZAÇÃO'' '+
  '    WHEN PV.FL_STATPEDIVEND = ''CN'' then '+
  '    ''CANCELADO POR '' || UPPER(UT.NOME_USUARIO) '+
  '    ELSE '+
  '    '''' '+
  'END AS SITUACAO, PV.VL_PEDIVEND, PV.QN_EMBAPEDIVEND '+
  'FROM PEDIDO_VENDA PV '+
  'INNER JOIN VENDEDOR V ON (V.ID_VENDEDOR = PV.ID_VENDEDOR) '+
  'INNER JOIN CLIENTE C ON (C.ID_CLIENTE = PV.ID_CLIENTE) '+
  'INNER JOIN SISTEMA_USUARIO U ON (U.ID_USUASIST = PV.ID_USUASIST_DIGIPEDIVEND) '+
  'LEFT JOIN SCT_USUARIO UT ON (UT.ID_USUARIO = PV.ID_USUARIO_AUTO_PRECO) '+
  'WHERE (PV.FL_VALIDA_TABPRECO = ''A'' OR PV.FL_VALIDA_TABPRECO = ''S'' OR PV.FL_VALIDA_TABPRECO = ''C'')';

  if edtData.Text <> '' then
    sWhere := sWhere + ' AND TO_DATE(PV.DT_DIGIPEDIVEND) = ''' + edtData.Text + '''';

  if edtDigitador.Text <> ''then
    sWhere := sWhere + ' AND PV.ID_USUASIST_DIGIPEDIVEND = ' + sUsuario;

  if edtCliente.Text <> '' then
    sWhere := sWhere + ' AND PV.ID_CLIENTE = ' + sCliente;

  if edtPedido.Text <> '' then
    sWhere := sWhere + ' AND PV.ID_PEDIVEND = ' + edtPedido.Text;

  if edtVendedor.Text <> '' then
    sWhere := sWhere + ' AND PV.ID_VENDEDOR = ' + sVendedor;

  if edtGrupoCliente.Text <> '' then
    sWhere := sWhere + ' AND C.ID_GRUPCLIE = ' + sGrupoCliente;

  if chkGrupoCliente.Checked then
    sWhere := sWhere + ' AND NOT(C.ID_GRUPCLIE IS NULL)';

  case rgpStatus.ItemIndex of
    0: sWhere := sWhere + ' AND PV.FL_STATPEDIVEND = ''VP''';// AGUARDANDO
    1: sWhere := sWhere + ' AND PV.FL_STATPEDIVEND = ''CN''';// CANCELADO
    2: sWhere := sWhere + ' AND PV.FL_STATPEDIVEND = ''AB''';// AUTORIZADO
    3: sWhere := sWhere + ' AND (PV.FL_STATPEDIVEND = ''VP'' OR PV.FL_STATPEDIVEND = ''AB'' OR PV.FL_STATPEDIVEND = ''CN'')';
  end;

  qryPedidos.SQL.Add(sWhere + ' ORDER BY PV.ID_PEDIVEND');
  qryPedidos.Open;
  Screen.Cursor := crDefault;

  qryPedidos.DisableControls;

  while not(qryPedidos.Eof) do
  begin
    if qryPedidosFL_STATPEDIVEND.AsString = 'VP' then
      Inc(vp)
    else if qryPedidosFL_STATPEDIVEND.AsString = 'AB' then
      Inc(v)
    else if qryPedidosFL_STATPEDIVEND.AsString = 'CN' then
      Inc(c);

    qryPedidos.Next;

  end;

  qryPedidos.First;
  qryPedidos.EnableControls;
  lblContaVP.Caption := IntToStr(vp);
  lblContaV.Caption  := IntToStr(v);
  lblContaCN.Caption := IntToStr(c);
  lblContaT.Caption  := IntToStr(t);

end;

procedure TfrmAtualizaPedidoTabPreco.rgpStatusClick(Sender: TObject);
begin
  btnConsultarClick(self);
end;

procedure TfrmAtualizaPedidoTabPreco.btnPesqVendedorClick(Sender: TObject);
begin
  FrmOriPesq:=111;
  FrmPesqVend:=TFrmPesqVend.Create(Self);
  FrmPesqVend.ShowModal;
end;

procedure TfrmAtualizaPedidoTabPreco.BtLimparClick(Sender: TObject);
begin
  edtPedido.Text := '';
  edtCliente.Text := '';
  edtDigitador.Text := '';
  edtVendedor.Text := '';
  edtGrupoCliente.Text := '';
  sUsuario:= '';
  sVendedor:= '';
  sCliente:= '';
  sGrupoCliente:= '';
end;

procedure TfrmAtualizaPedidoTabPreco.btnItensPedidoClick(Sender: TObject);
var
  vMarca: TBookmark;
begin
  qryPedidos.EnableControls;
  Screen.Cursor:= crSQLWait;
  vMarca:= qryPedidos.GetBookmark;

  if not(bExibe) then
  begin
    Screen.Cursor := crSQLWait;
    qryItensPedido.Close;
    qryItensPedido.SQL.Clear;
    qryItensPedido.SQL.Text:=
    'SELECT I.ID_PEDIVEND, ME.ID_PRODMATEEMBA, ME.NM_PRODREDUMATEEMBA, I.QN_EMBAITEMPEDIVEND , I.VL_ITEMTABEPREC, '+
    'ROUND(I.VL_UNITBRUTITEMPEDIVEND,2)AS VL_UNITITEMPEDIVEND, ROUND(I.VL_ITEMTABEPREC - ROUND(I.VL_UNITBRUTITEMPEDIVEND,2),2) as VL_DIF '+
    'FROM PEDIDO_VENDA_ITEM I '+
    'INNER JOIN MATERIAL_EMBALAGEM ME ON (ME.ID_MATERIAL = I.ID_MATERIAL) '+
    'WHERE I.ID_PEDIVEND = ' + qryPedidosID_PEDIVEND.AsString +
    'ORDER BY ME.ID_PRODMATEEMBA ';
    qryItensPedido.Open;
    Screen.Cursor := crDefault;
    bExibe:= True;
  end
  else
  begin
    Screen.Cursor := crSQLWait;
    qryItensPedido.Close;
    qryItensPedido.SQL.Clear;
    qryItensPedido.SQL.Text:=
    'SELECT I.ID_PEDIVEND, ME.ID_PRODMATEEMBA, ME.NM_PRODREDUMATEEMBA, I.QN_EMBAITEMPEDIVEND , I.VL_ITEMTABEPREC, '+
    'ROUND(I.VL_UNITBRUTITEMPEDIVEND,2)AS VL_UNITITEMPEDIVEND, ROUND(I.VL_ITEMTABEPREC - ROUND(I.VL_UNITBRUTITEMPEDIVEND,2),2) as VL_DIF '+
    'FROM PEDIDO_VENDA_ITEM I '+
    'INNER JOIN MATERIAL_EMBALAGEM ME ON (ME.ID_MATERIAL = I.ID_MATERIAL) '+
    'WHERE (I.VL_ITEMTABEPREC > ROUND(I.VL_UNITBRUTITEMPEDIVEND,2)) AND I.ID_PEDIVEND = ' + qryPedidosID_PEDIVEND.AsString +
    'ORDER BY ME.ID_PRODMATEEMBA ';
    qryItensPedido.Open;
    Screen.Cursor := crDefault;
    bExibe:= False;
  end;

  qryPedidos.GotoBookmark(vMarca);
  qryPedidos.FreeBookmark(vMarca);
  Screen.Cursor:= crDefault;
  qryPedidos.EnableControls;

end;

procedure TfrmAtualizaPedidoTabPreco.DBGrid1CellClick(Column: TColumn);
begin
  if AnsiLowerCase(Column.FieldName) = 'txt' then
  begin
    with DBGrid1.DataSource.DataSet do
    begin
      edit;
      FieldByName('txt').Value := not FieldByName('txt').AsBoolean;
      Post;
    end;
  end;

  bExibe := True;
  btnItensPedidoClick(self);
end;

procedure TfrmAtualizaPedidoTabPreco.btnPesqGrupoClienteClick(
  Sender: TObject);
begin
  FrmOriPesq:=111;
  frmConsultaGrupoClientes:=TfrmConsultaGrupoClientes.Create(Self);
  frmConsultaGrupoClientes.ShowModal;
end;

procedure TfrmAtualizaPedidoTabPreco.chkGrupoClienteClick(Sender: TObject);
begin
  btnConsultarClick(self);
end;

procedure TfrmAtualizaPedidoTabPreco.SB_RelatorioClick(Sender: TObject);
var arq: TextFile;
    sDiretorio:string;
begin
  sDiretorio:= 'C:\MSGWHATS\';
  Screen.Cursor := crSQLWait;

  try

    if not(DirectoryExists(sDiretorio)) then
      CreateDir(sDiretorio);

    AssignFile(arq, sDiretorio + 'VALIDACAOPRECO_' + ReplaceStr(DateToStr(now),'/', '') + '.txt');
    Rewrite(arq);

    qryPedidos.DisableControls;
    qryItensPedido.DisableControls;
    qryPedidos.First;
    qryItensPedido.First;

    Writeln(arq, '*============================*');
    Writeln(arq, '    *PREÇOS ' + DateToStr(now)+'*');
    Writeln(arq, '*============================*');
    Writeln(arq, '');

    while not qryPedidos.Eof do
    begin
      if qryPedidosTXT.AsString = 'T' then
      begin
        Writeln(arq, '*' + trim(Copy(qryPedidosNM_FANTCLIE.AsString,1,28)) + '*');
        bExibe := True;
        btnItensPedidoClick(self);

        while not qryItensPedido.Eof do
        begin
          Writeln(arq, '  _' + StrAcrEsp(Copy(qryItensPedidoNM_PRODREDUMATEEMBA.AsString,1,12),15) + StrAcrEsp(FormatFloat('0.00', qryItensPedidoVL_UNITITEMPEDIVEND.Value)+'_',9));
          qryItensPedido.Next;
        end;

        Writeln(arq, '*TOTAL DE CAIXAS: ' + qryPedidosQN_EMBAPEDIVEND.AsString + '*');
        Writeln(arq, '');
        Writeln(arq, '==============================');
      end;

      qryPedidos.Next;

    end;

    CloseFile(arq);

    Application.MessageBox('                    Arquivo texto gerado com sucesso em "C:\MSGWHATS".                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
  except
    Application.MessageBox('                    ERRO NA GERAÇÃO DO ARQUIVO.                    ', PChar(frmAtualizaPedidoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
  end;

  btnConsultarClick(self);
  btnItensPedidoClick(Self);
  qryPedidos.EnableControls;
  qryItensPedido.EnableControls;
  chkMarcarWts.Checked := True;

end;

procedure TfrmAtualizaPedidoTabPreco.chkMarcarWtsClick(Sender: TObject);
var
  i : Integer;
begin
  with DBGrid1.DataSource.DataSet do
  begin
    DisableControls;
    for i:=0 to RecordCount - 1 do
    begin
      Edit;
      FieldByName('txt').Value := chkMarcarWts.Checked;
      Post;
      Next;
    end;

    First;
    EnableControls;

  end;
end;

end.



