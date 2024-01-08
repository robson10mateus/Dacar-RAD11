unit ufrmConsultaCidades;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, DB, Ora, MemDS, DBAccess, Buttons,
  ExtCtrls, Grids, DBGrids, Winapi.Windows;

type
  TfrmConsultaCidades = class(TFrmModelPesqui)
    qryConsultaCidades: TOraQuery;
    qryConsultaCidadesNM_CIDADE: TStringField;
    qryConsultaCidadesID_CIDADE: TFloatField;
    qryConsultaCidadesSG_ESTADO: TStringField;
    qryConsultaCidadesNM_PAIS: TStringField;
    qryConsultaCidadesNM_REGIGEOG: TStringField;
    qryConsultaCidadesID_ESTADO: TFloatField;
    qryConsultaCidadesID_REGIGEOG: TFloatField;
    qryConsultaCidadesID_PAIS: TFloatField;
    dtsConsultaCidades: TOraDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
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
  frmConsultaCidades: TfrmConsultaCidades;

implementation

uses Global, UFrmVendedorCliente, UFrmClientes, uFrmMontaCarga, UFrmSaldoCaixas,
  uFrmCadRegioes;

{$R *.dfm}

procedure TfrmConsultaCidades.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='CIDADE.ID_CIDADE';
    1:VCAMPO:='upper(CIDADE.NM_CIDADE)';
    2:VCAMPO:='upper(estado.sg_estado)';
  END;

  VEXPRE:= UpperCase(EdExpre.Text);
  qryConsultaCidades.Close;

  WITH qryConsultaCidades.sql do
  BEGIN
    clear;
    add ('select cidade.id_cidade, cidade.nm_cidade, cidade.id_cidade, estado.id_estado, estado.sg_estado, ');
    add ('regiao_geografica.nm_regigeog, regiao_geografica.id_regigeog, pais.nm_pais, pais.id_pais ');
    add ('from estado, regiao_geografica, pais, cidade ');
    add ('where cidade.id_estado = estado.id_estado AND estado.id_pais = pais.id_pais and ');
    add ('regiao_geografica.id_regigeog(+) = estado.id_regigeog and ');
    add ('estado.sg_estado <> ''EX'' and ');

    CASE ComboBox2.ItemIndex of
      1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
      0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    add ('order by cidade.nm_cidade');
  END;

  qryConsultaCidades.Open;
  qryConsultaCidades.Refresh;
  DBGrid1.SetFocus;

end;

procedure TfrmConsultaCidades.EdExpreKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TfrmConsultaCidades.FormShow(Sender: TObject);
begin
  inherited;
  qryConsultaCidades.Open;
  EdExpre.SetFocus;
end;

procedure TfrmConsultaCidades.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  qryConsultaCidades.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsultaCidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmConsultaCidades:=Nil;
  Action:=caFree;
end;

procedure TfrmConsultaCidades.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL:=FLOATTOSTR(qryConsultaCidadesID_CIDADE.Value);

  TRY
    CASE FrmOriPesq OF
      3:
      begin
        FrmMontaCarga.edtCodiCida.Text := qryConsultaCidadesID_CIDADE.AsString;
        FrmMontaCarga.edtNomeCida.Text := qryConsultaCidadesNM_CIDADE.AsString;
      end;
      14:FrmVendedorCliente.EdExpre.Text:=XRESUL;
      20:FrmClientes.EdExpr.Text:=XRESUL;
      55:FrmSaldoCaixas.EdExpre.Text:=XRESUL;
      33:FrmCadRegiao.EdExpr.Text:=XRESUL;
      201:
        begin
          FrmClientes.DBCodCid.text:= qryConsultaCidadesID_CIDADE.AsString;
          FrmClientes.DBCidadeC.Text:= qryConsultaCidadesNM_CIDADE.AsString;
          FrmClientes.DBEstado.Text := qryConsultaCidadesSG_ESTADO.AsString;
          FrmClientes.DBPais.Text := qryConsultaCidadesNM_PAIS.AsString;
          FrmClientes.DBRGeog.Text := qryConsultaCidadesNM_REGIGEOG.AsString;
        end;
      333:
        begin
          FrmCadRegiao.iCodCidade := qryConsultaCidadesID_CIDADE.AsInteger;
          FrmCadRegiao.edtPesqCid.Text := qryConsultaCidadesNM_CIDADE.AsString;
        end;
    end;
    ActiveControl := Nil;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(frmConsultaCidades.Caption) , MB_OK + MB_ICONINFORMATION);
  END;

  Close;
end;

end.
