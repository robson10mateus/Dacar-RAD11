unit UPesquiCliente;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, UFrmModelPesqui, Grids, DBGrids, Buttons, DB, Ora, MemDS,
  DBAccess, UFrmPesqFor, ExtCtrls, Winapi.Windows;

type
  TFrmPesqCliente = class(TFrmModelPesqui)
    QrCli: TOraQuery;
    DSCli: TOraDataSource;
    QrCliID_CLIENTE: TFloatField;
    QrCliNM_CLIENTE: TStringField;
    QrCliNM_FANTCLIE: TStringField;
    QrCliNM_REDUCLIE: TStringField;
    QrCliNR_CNPJCLIE: TStringField;
    QrCliFL_ATIVCLIE: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
     VCAMPO:STRING;
     VCONDI:STRING;
     VEXPRE:STRING;
     XRESUL:STRING;
     XRESUL1:STRING;
  end;

var
  FrmPesqCliente: TFrmPesqCliente;

implementation

uses UfrmPedVenda,global, UFrmManuComis, UFrmSelRelConfVenda, UFrmSelSintCarga, UFrmPediDevoVend,
  UFrmSelVenProd, UFrmSelProdVend, UfrmImpDocPed, Principal, UFrmCorte, ufrmVendasVendedorCliente,
  UFrmClientes , UfrmControleCaixas, uFrmVendasDiaria, UFrmSaldoCaixas,
  UFrmCorteProdutos, uFrmAtualizaPedidoTabPreco, ufrmPedidosAbaixoTabela, uFrmRelVendaCliente, UFrmEntradaSaidaCaixas;

{$R *.dfm}

procedure TFrmPesqCliente.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPesqCliente.BitBtn1Click(Sender: TObject);
begin
  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:= ' CLIENTE.ID_CLIENTE ';
    1:VCAMPO:= ' upper(CLIENTE.NM_CLIENTE) ';
    2:VCAMPO:= ' CLIENTE.NR_CNPJCLIE ';
    3:VCAMPO:= ' upper(CLIENTE.NM_FANTCLIE) ';
    4:VCAMPO:= ' CLIENTE.ID_INTECLIE ';
  END;
  VEXPRE:=EdExpre.Text;
  QrCli.Close;
  WITH QrCli.SQL DO
  BEGIN
    Clear;
    ADD('SELECT CLIENTE.ID_CLIENTE,');
    ADD('CLIENTE.NM_CLIENTE,');
    ADD('CLIENTE.NM_FANTCLIE,');
    ADD('CLIENTE.NM_REDUCLIE,');
    ADD('CLIENTE.NR_CNPJCLIE,');
    ADD('CLIENTE.FL_ATIVCLIE');
    ADD('FROM CLIENTE');
    ADD('WHERE CLIENTE.FL_ATIVCLIE = ''S'' AND ');

    CASE ComboBox2.ItemIndex OF
     1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    add ('ORDER BY CLIENTE.ID_CLIENTE');
  END;

  QrCli.Open;
  QrCli.Refresh;
  DBGrid1.SetFocus;
end;

procedure TFrmPesqCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPesqCliente:=Nil;
  Action:=caFree;
end;

procedure TFrmPesqCliente.BitBtn2Click(Sender: TObject);
begin
  XRESUL:=FLOATTOSTR(QrCliID_CLIENTE.Value);

  TRY
    CASE FrmOriPesq OF
      1:FrmPedVenda.EdExpre.Text:=XRESUL;
      2:FrmManuComis.EdExpre.Text:=XRESUL;
      5:
      begin
        FrmSelVenProd.EdExpre.Text:=XRESUL;
        FrmSelVenProd.LbCliente.Caption := QrCliNM_CLIENTE.Value;
        FrmSelVenProd.Lcli.Visible := True;
      end;

      7:FrmSelProdVend.EdExpre.Text:=XRESUL;
      8:Frmimpdocped.EdExpre.Text:=XRESUL;
      10:FrmCorte.EdExpre.Text:=XRESUL;

      11:
      begin
        FrmPedVenda.QPediVeID_CLIENTE.Value:= QrCliID_CLIENTE.Value;
        FrmPedVenda.edtCodiClie.SetFocus;
      end;

      13:FrmSelRelConfVenda.EdExpre.Text:=XRESUL;

      15:FrmClientes.EdExpr.Text:=XRESUL;
      17:FrmSelSintCarga.EdExpre.Text:=XRESUL;

      20:FrmClientes.EdExpr.Text:=XRESUL;

      54:FrmControleCaixas.EdExpre.Text:=XRESUL;
      541:
      begin
        FrmControleCaixas.edtCodiClie.Text:=XRESUL;
        FrmControleCaixas.QrID_CLIENTE.Value := StrToFloat(XRESUL);
        FrmControleCaixas.edt_nmCliente.Text := QrCliNM_CLIENTE.Value;
      end;

      55:FrmSaldoCaixas.EdExpre.Text:=XRESUL;

      {NOME: FABRICIO DATA:30/01/2018 MOTIVO: RELATORIO DE VENDAS DIARIAS}
      56:frmVendasDiaria.edtExpressao.Text := xresul;

      58:FrmCorteProdutos.EdExpre.Text := XRESUL;

      66:
      begin
        frmPedidosAbaixoTabela.sCliente:=XRESUL;
        frmPedidosAbaixoTabela.edtCliente.Text := QrCliNM_CLIENTE.Value;
      end;

      111:
      begin
        frmAtualizaPedidoTabPreco.sCliente:=XRESUL;
        frmAtualizaPedidoTabPreco.edtCliente.Text := QrCliNM_CLIENTE.Value;
      end;

      151:frmVendasVendedorCliente.EdExpre.Text:=XRESUL;

      170:FrmPediDevoVend.EdExpre.Text:=XRESUL;

      57:FrmRelVendaCliente.EdExpre.Text:=XRESUL;

      60:FrmEntradaSaidaCaixas.EdExpr.Text:=XRESUL;


      {Descrição: Se o tipo de pesquisa for Remetente (16), atualiza as informações de Remetente do formulário de Pedido de Venda.
      Autor: Vinícius Godinho Del Rio
      Data: 01/12/2014}
      TP_PESQUISA_CTE_REMETENTE:
      begin
        FrmPedVenda.QPediVeID_REMETENTE.Value := QrCliID_CLIENTE.Value;
        FrmPedVenda.QPediVeNM_REMETENTE.Value := QrCliNM_CLIENTE.Value;
      end;
    end;
    ActiveControl := Nil;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(FrmPesqCliente.Caption), MB_OK + MB_ICONINFORMATION);
  END;

  Close;

end;

procedure TFrmPesqCliente.FormCreate(Sender: TObject);
begin
  inherited;
  frmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmPesqCliente.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  QrCli.IndexFieldNames := Column.FieldName;
end;

procedure TFrmPesqCliente.EdExpreKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TFrmPesqCliente.FormShow(Sender: TObject);
begin
  inherited;
  QrCli.Open;
  EdExpre.SetFocus;
end;

end.
