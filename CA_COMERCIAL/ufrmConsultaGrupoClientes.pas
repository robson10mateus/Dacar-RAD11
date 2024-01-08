unit ufrmConsultaGrupoClientes;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, Buttons, ExtCtrls, Grids,
  DBGrids, DB, Ora, MemDS, DBAccess, Winapi.Windows;

type
  TfrmConsultaGrupoClientes = class(TFrmModelPesqui)
    qryGrupoCliente: TOraQuery;
    dtsGrupoCliente: TOraDataSource;
    qryGrupoClienteID_GRUPCLIE: TFloatField;
    qryGrupoClienteNM_GRUPCLIE: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
     VCAMPO, VCONDI, VEXPRE, XRESUL, XRESUL1:STRING;
  end;

var
  frmConsultaGrupoClientes: TfrmConsultaGrupoClientes;

implementation

uses Global, UfrmPedVenda, Principal, uFrmAtualizaPedidoTabPreco, UFrmSelRelConfVenda, UFrmClientes, UFrmVendedorCliente,
  UfrmImpDocPed, UFrmEntradaSaidaCaixas;

{$R *.dfm}

procedure TfrmConsultaGrupoClientes.BitBtn2Click(Sender: TObject);
begin

  XRESUL:=FLOATTOSTR(qryGrupoClienteID_GRUPCLIE.Value);

  TRY
    CASE FrmOriPesq OF
      1:FrmPedVenda.EdExpre.Text:=XRESUL;
      8:frmImpDocPed.EdExpre.Text:=XRESUL;
      13:FrmSelRelConfVenda.EdExpre.Text:=XRESUL;
      14:FrmVendedorCliente.EdExpre.Text:=XRESUL;
      20:FrmClientes.EdExpr.Text:=XRESUL;
      111:
      begin
        frmAtualizaPedidoTabPreco.sGrupoCliente := qryGrupoClienteID_GRUPCLIE.AsString;
        frmAtualizaPedidoTabPreco.edtGrupoCliente.Text := qryGrupoClienteNM_GRUPCLIE.Value;
      end;
      60:FrmEntradaSaidaCaixas.EdExpr.Text:=XRESUL;
    end;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(frmConsultaGrupoClientes.Caption), MB_OK + MB_ICONINFORMATION);
  END;

  Close;

end;

procedure TfrmConsultaGrupoClientes.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  qryGrupoCliente.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsultaGrupoClientes.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:= 'CLIENTE_GRUPO.ID_GRUPCLIE';
    1:VCAMPO:= 'CLIENTE_GRUPO.NM_GRUPCLIE';
  END;

  VEXPRE:=UpperCase(EdExpre.Text);
  qryGrupoCliente.Close;

  WITH qryGrupoCliente.SQL DO
  BEGIN
    Clear;
    ADD('SELECT ID_GRUPCLIE, NM_GRUPCLIE FROM CLIENTE_GRUPO WHERE ');
    CASE ComboBox2.ItemIndex OF
      0:ADD(VCAMPO+'= ''' + VEXPRE + '''');
      1:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;
    ADD('ORDER BY ID_GRUPCLIE');
  END;

  qryGrupoCliente.Open;
  qryGrupoCliente.Refresh;
  DBGrid1.SetFocus;
end;

procedure TfrmConsultaGrupoClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmConsultaGrupoClientes:=Nil;
  Action:=caFree;
end;

procedure TfrmConsultaGrupoClientes.FormShow(Sender: TObject);
begin
  inherited;
  qryGrupoCliente.Open;
  EdExpre.SetFocus;
end;

procedure TfrmConsultaGrupoClientes.EdExpreKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

end.procedure TfrmConsultaGrupoClientes.BitBtn3Click(Sender: TObject);
begin
  inherited;

end;



