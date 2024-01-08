unit uFrmConsultaTabPreco;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, DB, Ora, MemDS, DBAccess, Buttons,
  ExtCtrls, Grids, DBGrids, Winapi.Windows;

type
  TfrmConsultaTabPreco = class(TFrmModelPesqui)
    qryConsultaTabPreco: TOraQuery;
    dtsConsultaTabPreco: TOraDataSource;
    qryConsultaTabPrecoID_TABEPREC: TFloatField;
    qryConsultaTabPrecoNM_TABEPREC: TStringField;
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XRESUL, VCAMPO, VEXPRE:STRING;
  end;

var
  frmConsultaTabPreco: TfrmConsultaTabPreco;

implementation

uses Global, UFrmVendedorCliente;

{$R *.dfm}

procedure TfrmConsultaTabPreco.EdExpreKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TfrmConsultaTabPreco.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='TABELA_PRECO.ID_TABEPREC';
    1:VCAMPO:='UPPER(TABELA_PRECO.NM_TABEPREC)';
  END;

  VEXPRE:= UpperCase(EdExpre.Text);
  qryConsultaTabPreco.Close;

  WITH qryConsultaTabPreco.sql do
  BEGIN
    clear;
    add ('SELECT ID_TABEPREC, NM_TABEPREC FROM TABELA_PRECO WHERE ');

    CASE ComboBox2.ItemIndex of
      1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
      0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    add ('ORDER BY TABELA_PRECO.ID_TABEPREC');
  END;

  qryConsultaTabPreco.Open;
  qryConsultaTabPreco.Refresh;
  DBGrid1.SetFocus;
end;

procedure TfrmConsultaTabPreco.FormShow(Sender: TObject);
begin
  inherited;
  qryConsultaTabPreco.Open;
  EdExpre.SetFocus;
end;

procedure TfrmConsultaTabPreco.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  qryConsultaTabPreco.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsultaTabPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmConsultaTabPreco:=Nil;
  Action:=caFree;
end;

procedure TfrmConsultaTabPreco.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL:=FLOATTOSTR(qryConsultaTabPrecoID_TABEPREC.Value);

  TRY
    CASE FrmOriPesq OF
      14:FrmVendedorCliente.EdExpre.Text:=XRESUL;
    end;
    ActiveControl := Nil;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(frmConsultaTabPreco.Caption) , MB_OK + MB_ICONINFORMATION);
  END;

  Close;
end;

end.
