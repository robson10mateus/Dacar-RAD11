unit UFrmPesqVend;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, Grids, DBGrids, Buttons, DB,
  Ora, MemDS, DBAccess, UFrmPesqSubRegiao, UFrmPesqCidade, UfrmControleCaixas, UFrmSaldoCaixas,
  ExtCtrls, Winapi.Windows;

type
  TFrmPesqVend = class(TFrmModelPesqui)
    QrVend: TOraQuery;
    DSVend: TOraDataSource;
    QrVendID_VENDEDOR: TFloatField;
    QrVendNM_VENDEDOR: TStringField;
    QrVendNM_REDUVEND: TStringField;
    QrVendNR_CNPJVEND: TStringField;
    QrVendNR_CPFVEND: TStringField;
    QrVendFL_COMIVEND: TStringField;
    QrVendPC_COMIVEND: TFloatField;
    QrVendNM_FANTVEND: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    xresul,vcampo,vexpre:string;
    { Public declarations }
  end;

var
  FrmPesqVend: TFrmPesqVend;

implementation

uses UfrmPedVenda, global, UfrmMontaCarga, UFrmManuComis, UFrmSelSintCarga,uFrmAtualizaPedidoTabPreco,
  UFrmSelRelConfVenda, UFrmSelVenProd, UFrmSelProdVend, UfrmImpDocPed, UFrmPediDevoVend, UFrmClientes,
  Principal, UFrmParamComercial, UFrmCorte, UFrmVendedorCliente , UFrmDiferencaPreco, ufrmVendasVendedorCliente,
  uFrmVendasDiaria, UFrmCorteProdutos, ufrmAlteraContaPedido,ufrmPedidosAbaixoTabela, uFrmRelVendasVendedorPercentual,
  uFrmRelVendaCliente, UFrmEntradaSaidaCaixas ;

{$R *.dfm}

procedure TFrmPesqVend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPesqVend:=Nil;
  Action:=caFree;
end;

procedure TFrmPesqVend.BitBtn2Click(Sender: TObject);
begin
  XRESUL:=FLOATTOSTR(QrVendID_VENDEDOR.Value);
  TRY
    CASE FrmOriPesq OF
      1:FrmPedVenda.EdExpre.Text:=XRESUL;
      2:FrmManuComis.EdExpre.Text:=XRESUL;
      3:begin
          FrmMontaCarga.EdCod_Vend.Text:=XRESUL;
          FrmMontaCarga.EdNome_Vend.Text := QrVendNM_VENDEDOR.Value;
        end;
      5:begin
          FrmSelVenProd.EdExpre.Text:=XRESUL;
          FrmSelVenProd.LbVen.Caption := QrVendNM_VENDEDOR.Value;
          FrmSelVenProd.Lven.Visible := True;
        end;
      6:FrmManuComis.EdExpre.Text:=XRESUL;
      7:FrmSelProdVend.EdExpre.Text:=XRESUL;
      8:frmImpDocPed.EdExpre.Text:=XRESUL;
      9:begin
          FrmParamComercial.DBCodVen.Text:= XRESUL;
          FrmParamComercial.DBVendedor.Text:= QrVendNM_VENDEDOR.Value;
        end;

      10:FrmCorte.EdExpre.Text:=XRESUL;
      11:begin
           FrmPedVenda.DBCVen.Text:=XRESUL;
           FrmPedVenda.DBCVen.SetFocus;
         end;
      13:FrmSelRelConfVenda.EdExpre.Text:=XRESUL;
      14:FrmVendedorCliente.EdExpre.Text:=XRESUL;
      17:FrmSelSintCarga.EdExpre.Text:=XRESUL;
      53:FrmDiferencaPreco.EdExpre.Text:=XRESUL;
      54:FrmControleCaixas.EdExpre.Text:=XRESUL;
      541:begin
            FrmControleCaixas.edt_CodVend.Text:=XRESUL;
            FrmControleCaixas.QrID_VENDEDOR.Value := StrToFloat(XRESUL);
            FrmControleCaixas.edt_nmVendedor.Text := QrVendNM_VENDEDOR.Value;
          end;
      55:FrmSaldoCaixas.EdExpre.Text:=XRESUL;
      {NOME: FABRICIO DATA:30/01/2018 MOTIVO: RELATORIO DE VENDAS DIARIAS}
      56:frmVendasDiaria.edtExpressao.Text := xresul;

      58:FrmCorteProdutos.EdExpre.Text:=xresul;
      59:begin
          frmAlteraContaPedido.edtCodVendedor.Text:=QrVendID_VENDEDOR.AsString;
          frmAlteraContaPedido.edtVendedor.Text := QrVendNM_VENDEDOR.AsString;
        end;

      66:begin
          frmPedidosAbaixoTabela.sVendedor:=QrVendID_VENDEDOR.AsString;
          frmPedidosAbaixoTabela.edtVendedor.Text := QrVendNM_VENDEDOR.AsString;
        end;

      111:
      begin
        frmAtualizaPedidoTabPreco.sVendedor:=QrVendID_VENDEDOR.AsString;
        frmAtualizaPedidoTabPreco.edtVendedor.Text := QrVendNM_VENDEDOR.Value;
      end;

      151:frmVendasVendedorCliente.EdExpre.Text:=XRESUL;
      170:FrmPediDevoVend.EdExpre.Text:=XRESUL;
      201:FrmClientes.EdExpr.Text:=XRESUL;
      202:
      begin
        FrmClientes.DBEdit14.text := QrVendID_VENDEDOR.AsString;
        FrmClientes.DBNmVend.Text := QrVendNM_VENDEDOR.AsString;
        FrmClientes.DBEdit12.Text := QrVendNM_FANTVEND.AsString;
        FrmClientes.DBEdit15.Text := QrVendNM_REDUVEND.AsString;
        FrmClientes.DBRadioGroup6.Value := QrVendFL_COMIVEND.Value;;

        if FrmClientes.bPercVendedor then
          FrmClientes.DBEdit16.Text := FloatToStr(QrVendPC_COMIVEND.Value)
        else
          FrmClientes.DBEdit16.Text := '0';
      end;
      203:
      begin
        FrmClientes.edtCodVendedorRelacionado.text  := QrVendID_VENDEDOR.AsString;
        FrmClientes.edtNomeVendedorRelacionado.Text := QrVendNM_VENDEDOR.AsString;
      end;
      57: FrmRelVendaCliente.EdExpre.Text:=xresul;
      60: FrmEntradaSaidaCaixas.EdExpr.Text:=xresul;
    end;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(FrmPesqVend.Caption), MB_OK + MB_ICONINFORMATION);
  END;
  close;
end;

procedure TFrmPesqVend.BitBtn3Click(Sender: TObject);
begin
 CLOSE;
end;

procedure TFrmPesqVend.BitBtn1Click(Sender: TObject);
begin

  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='UPPER(VENDEDOR.NM_VENDEDOR)';
    1:VCAMPO:='VENDEDOR.ID_VENDEDOR';
    2:VCAMPO:='VENDEDOR.NR_CNPJVEND';
    3:VCAMPO:='VENDEDOR.NR_CPFVEND';
  END;

  VEXPRE:=UpperCase(EdExpre.Text);
  QrVend.Close;

  WITH QrVend.SQL DO
  BEGIN
    Clear;
    ADD('SELECT VENDEDOR.ID_VENDEDOR,');
    ADD('VENDEDOR.NM_VENDEDOR,');
    ADD('VENDEDOR.NM_REDUVEND,');
    ADD('VENDEDOR.NM_FANTVEND,');
    ADD('VENDEDOR.NR_CNPJVEND,');
    ADD('VENDEDOR.NR_CPFVEND,');
    ADD('VENDEDOR.FL_COMIVEND,');
    ADD('VENDEDOR.PC_COMIVEND');

    ADD('FROM VENDEDOR');
    ADD('WHERE ');
    CASE ComboBox2.ItemIndex OF
     0:ADD(VCAMPO + ' LIKE ''' + '%' + VEXPRE + '%' + '''');
     1:ADD(VCAMPO + ' = ''' + VEXPRE + '''');
    END;
    ADD('ORDER BY VENDEDOR.ID_VENDEDOR');
  END;

  QrVend.Open;
  QrVend.Refresh;
  DBGrid1.SetFocus;
end;

procedure TFrmPesqVend.FormShow(Sender: TObject);
begin
  IF FrmOriPesq = 11 then
  BEGIN
    If FrmPedVenda.VExporta=True then
    Begin
      QrVend.Close;
      QrVend.SQL.Text:= '  SELECT   '+
      '    VENDEDOR.ID_VENDEDOR,    '+
      '    VENDEDOR.NM_VENDEDOR,    '+
      '    VENDEDOR.NM_REDUVEND,    '+
      '    VENDEDOR.NR_CNPJVEND,    '+
      '    VENDEDOR.NR_CPFVEND,     '+
      '    VENDEDOR.NM_FANTVEND,    '+
      '    VENDEDOR.FL_COMIVEND,    '+
      '    VENDEDOR.PC_COMIVEND     '+
      '  FROM                       '+
      '    VENDEDOR                 '+
      '  WHERE ID_TIPOVENDEDOR = 5 AND FL_ATIVVEND <> ''N'' '+
      {NOME: FABRICIO DATA:30/01/2018 MOTIVO: ORDENAÇÃO DOS REGISTROS}
      'ORDER BY VENDEDOR.ID_VENDEDOR';
      QrVend.Open;
    End
    ELSE
    BEGIN
      QrVend.Close;
      QrVend.SQL.Text:= '  SELECT   '+
      '    VENDEDOR.ID_VENDEDOR,    '+
      '    VENDEDOR.NM_VENDEDOR,    '+
      '    VENDEDOR.NM_REDUVEND,    '+
      '    VENDEDOR.NR_CNPJVEND,    '+
      '    VENDEDOR.NR_CPFVEND,     '+
      '    VENDEDOR.NM_FANTVEND,    '+
      '    VENDEDOR.FL_COMIVEND,    '+
      '    VENDEDOR.PC_COMIVEND     '+
      '  FROM                       '+
      '    VENDEDOR                 '+
      '  WHERE  FL_ATIVVEND <> ''N'' '+
      {NOME: FABRICIO DATA:30/01/2018 MOTIVO: ORDENAÇÃO DOS REGISTROS}
      'ORDER BY VENDEDOR.ID_VENDEDOR';
      QrVend.Open;
    END;
  END
  ELSE
  BEGIN
    QrVend.Close;
    QrVend.SQL.Text:= '  SELECT   '+
    '    VENDEDOR.ID_VENDEDOR,    '+
    '    VENDEDOR.NM_VENDEDOR,    '+
    '    VENDEDOR.NM_REDUVEND,    '+
    '    VENDEDOR.NR_CNPJVEND,    '+
    '    VENDEDOR.NR_CPFVEND,     '+
    '    VENDEDOR.NM_FANTVEND,    '+
    '    VENDEDOR.FL_COMIVEND,    '+
    '    VENDEDOR.PC_COMIVEND     '+
    '  FROM                       '+
    '    VENDEDOR                 '+
    '  WHERE  FL_ATIVVEND <> ''N'' '+
    {NOME: FABRICIO DATA:30/01/2018 MOTIVO: ORDENAÇÃO DOS REGISTROS}
    'ORDER BY VENDEDOR.ID_VENDEDOR';
    QrVend.Open;
  END;

  EdExpre.SetFocus;
end;

procedure TFrmPesqVend.FormCreate(Sender: TObject);
begin
  inherited;
 frmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmPesqVend.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  QrVend.IndexFieldNames := Column.FieldName;
end;

procedure TFrmPesqVend.EdExpreKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

end.
