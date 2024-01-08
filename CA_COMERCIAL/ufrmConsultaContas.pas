unit ufrmConsultaContas;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, DB, Ora, MemDS, DBAccess, Buttons,
  ExtCtrls, Grids, DBGrids, Winapi.Windows;

type
  TfrmConsultaContas = class(TFrmModelPesqui)
    qryConta: TOraQuery;
    qryContaID_CONTA: TFloatField;
    qryContaNM_CONTA: TStringField;
    dtsConta: TOraDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    XRESUL, VCAMPO, VEXPRE:STRING;    
  end;

var
  frmConsultaContas: TfrmConsultaContas;

implementation

uses UfrmPedVenda, Global, ufrmAlteraContaPedido;

{$R *.dfm}

procedure TfrmConsultaContas.BitBtn1Click(Sender: TObject);
 var vcampo,vexpre:string;
begin
  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='AND CONTA.ID_CONTA ';
    1:VCAMPO:='AND CONTA.NM_CONTA ';
  END;

  VEXPRE:=EdExpre.Text;

  qryConta.Close;
  WITH qryConta.SQL DO
  BEGIN
    Clear;
    ADD('SELECT CONTA.ID_CONTA, ');
    ADD('       CONTA.NM_CONTA  ');
    ADD('  FROM CONTA           ');
    ADD(' WHERE FL_ativa = ''S''');
    CASE ComboBox2.ItemIndex OF
      0:ADD(VCAMPO+'= ''' + VEXPRE + '''');
      1:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    ADD('ORDER BY NM_CONTA ');
  END;

  qryConta.Open;
  qryConta.Refresh;
  DBGrid1.SetFocus;

end;

procedure TfrmConsultaContas.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL:=FLOATTOSTR(qryContaID_CONTA.Value);

  TRY
    CASE FrmOriPesq OF
      1:FrmPedVenda.EdExpre.Text:=XRESUL;
      2:begin
        frmAlteraContaPedido.edtCodConta.Text   := qryContaID_CONTA.AsString;
        frmAlteraContaPedido.edtDescConta.Text  := qryContaNM_CONTA.AsString;
      end;
      3:begin
        frmAlteraContaPedido.edtCodContaTroca.Text   := qryContaID_CONTA.AsString;
        frmAlteraContaPedido.edtDescContaTroca.Text  := qryContaNM_CONTA.AsString;
      end;
    end;
    ActiveControl := Nil;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(frmConsultaContas.Caption) , MB_OK + MB_ICONINFORMATION);
  END;

  Close;

end;

procedure TfrmConsultaContas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TfrmConsultaContas.FormShow(Sender: TObject);
begin
  inherited;
  qryConta.Open;
  EdExpre.SetFocus;
end;

procedure TfrmConsultaContas.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  qryConta.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsultaContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmConsultaContas:=Nil;
  Action:=caFree;
end;

end.
