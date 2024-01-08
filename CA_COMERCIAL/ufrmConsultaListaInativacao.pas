unit ufrmConsultaListaInativacao;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, DB, Ora, MemDS, DBAccess, Buttons,
  ExtCtrls, Grids, DBGrids, Winapi.Windows;

type
  TfrmConsultaListaInativacao = class(TFrmModelPesqui)
    qryListaMotivos: TOraQuery;
    dtsListaMotivos: TOraDataSource;
    qryListaMotivosCO_MOTIVO: TFloatField;
    qryListaMotivosNM_MOTIVO: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XRESUL, VCAMPO, VEXPRE:STRING;
  end;

var
  frmConsultaListaInativacao: TfrmConsultaListaInativacao;

implementation

uses UFrmClientes, Global;

{$R *.dfm}

procedure TfrmConsultaListaInativacao.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:= ' DACAR_LISTA_MOTIVO_INATIVACAO.CO_MOTIVO ';
    1:VCAMPO:= ' UPPER(DACAR_LISTA_MOTIVO_INATIVACAO.NM_MOTIVO) ';
  END;

  VEXPRE:= EdExpre.Text;

  qryListaMotivos.Close;

  WITH qryListaMotivos.SQL DO
  BEGIN
    Clear;
    ADD('SELECT CO_MOTIVO, NM_MOTIVO ');
    ADD('FROM DACAR_LISTA_MOTIVO_INATIVACAO');
    ADD('WHERE CO_MOTIVO <> 1 AND');

    CASE ComboBox2.ItemIndex OF
     1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    add ('ORDER BY DACAR_LISTA_MOTIVO_INATIVACAO.CO_MOTIVO');
  END;

  qryListaMotivos.Open;
  qryListaMotivos.Refresh;
  DBGrid1.SetFocus;
end;

procedure TfrmConsultaListaInativacao.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL:=FLOATTOSTR(qryListaMotivosCO_MOTIVO.Value);

  TRY
    CASE FrmOriPesq OF
      20:FrmClientes.EdExpr.Text:=XRESUL;
    end;
    ActiveControl := Nil;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(frmConsultaListaInativacao.Caption) , MB_OK + MB_ICONINFORMATION);
  END;

  Close;
end;

procedure TfrmConsultaListaInativacao.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsultaListaInativacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmConsultaListaInativacao:=Nil;
  Action:=caFree;
end;

procedure TfrmConsultaListaInativacao.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  qryListaMotivos.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsultaListaInativacao.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TfrmConsultaListaInativacao.FormShow(Sender: TObject);
begin
  inherited;
  qryListaMotivos.Open;
  EdExpre.SetFocus;
end;

end.

