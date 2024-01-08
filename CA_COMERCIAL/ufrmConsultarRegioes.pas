unit ufrmConsultarRegioes;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, DB, Ora, MemDS, DBAccess, Buttons,
  ExtCtrls, Grids, DBGrids, Winapi.Windows;

type
  TufrmConsultaRegioes = class(TFrmModelPesqui)
    QryConsultarRegiao: TOraQuery;
    dtsConsultarRegiao: TOraDataSource;
    QryConsultarRegiaoID_REGIAO: TFloatField;
    QryConsultarRegiaoNM_REGIAO: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    XRESUL, VCAMPO, VEXPRE:STRING;
  end;

var
  ufrmConsultaRegioes: TufrmConsultaRegioes;

implementation

uses  uFrmCadRegioes, Global, UFrmVendedorCliente;

{$R *.dfm}

procedure TufrmConsultaRegioes.BitBtn1Click(Sender: TObject);

begin
 CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='ID_REGIAO';
    1:VCAMPO:='NM_REGIAO';
  END;

  VEXPRE:= UpperCase(EdExpre.Text);
  QryConsultarRegiao.Close;

  WITH QryConsultarRegiao.sql do
  BEGIN
    clear;
    add ('SELECT DISTINCT ID_REGIAO, NM_REGIAO');
    add ('FROM DACAR_REGIAO_LOGISTICA');
    add ('WHERE');

    CASE ComboBox2.ItemIndex of
      1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
      0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    add ('ORDER BY ID_REGIAO');
  END;

  QryConsultarRegiao.Open;
  QryConsultarRegiao.Refresh;
  DBGrid1.SetFocus;
end;

procedure TufrmConsultaRegioes.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL:=FLOATTOSTR(QryConsultarRegiaoID_REGIAO.Value);

  TRY
    CASE FrmOriPesq OF

      333:FrmCadRegiao.EdExpr.Text:=XRESUL;

    end;
    ActiveControl := Nil;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(FrmVendedorCliente.Caption) , MB_OK + MB_ICONINFORMATION);
  END;

  Close;
end;

procedure TufrmConsultaRegioes.FormShow(Sender: TObject);
begin
  inherited;
   QryConsultarRegiao.Open;
  EdExpre.SetFocus;
end;

procedure TufrmConsultaRegioes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 ufrmConsultaRegioes:=Nil;
  Action:=caFree;
end;

procedure TufrmConsultaRegioes.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
 QryConsultarRegiao.IndexFieldNames := Column.FieldName;
end;

procedure TufrmConsultaRegioes.EdExpreKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if Key= #13 then
    BitBtn1Click(Sender);
end;

end.


