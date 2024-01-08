unit UFrmConsultaUsuarioSistema;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, Buttons, ExtCtrls, Grids,
  DBGrids, DB, MemDS, DBAccess, Ora, Winapi.Windows;

type
  TFrmConsultaUsuarioSistema = class(TFrmModelPesqui)
    OraQuery1: TOraQuery;
    DataSource1: TDataSource;
    OraQuery1ID_USUASIST: TFloatField;
    OraQuery1NM_USUASIST: TStringField;
    OraQuery1ID_USUARIO: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    VCAMPO, VCONDI, VEXPRE, XRESUL, XRESUL1, sNome:STRING;
  end;

var
  FrmConsultaUsuarioSistema: TFrmConsultaUsuarioSistema;

implementation

uses UfrmPedVenda, Global, UFrmSelVenProd, UFrmSelRelConfVenda, UfrmMontaCarga, UFrmClientes,
      ufrmVendasVendedorCliente;


{$R *.dfm}

procedure TFrmConsultaUsuarioSistema.BitBtn1Click(Sender: TObject);
begin
  inherited;

    CASE ComboBox1.ItemIndex OF
      0:VCAMPO:= ' SISTEMA_USUARIO.ID_USUASIST ';
      1:VCAMPO:= ' UPPER(SISTEMA_USUARIO.NM_USUASIST) ';
    END;

    VEXPRE:=UpperCase(EdExpre.Text);
    OraQuery1.Close;

    WITH OraQuery1.SQL DO
    BEGIN

      Clear;
      ADD('SELECT ID_USUARIO, ID_USUASIST, NM_USUASIST ');
      ADD('FROM SISTEMA_USUARIO ');
      ADD('WHERE SISTEMA_USUARIO.FL_ATIVUSUASIST = ''S'' AND ');

      CASE ComboBox2.ItemIndex OF
       1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
       0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
      END;

      ADD ('ORDER BY SISTEMA_USUARIO.ID_USUASIST');
    END;


  OraQuery1.Open;
  OraQuery1.Refresh;
  DBGrid1.SetFocus;
end;

procedure TFrmConsultaUsuarioSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmConsultaUsuarioSistema:=Nil;
  Action:=caFree;
end;

procedure TFrmConsultaUsuarioSistema.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL  :=FLOATTOSTR(OraQuery1.fieldbyName('ID_USUASIST').Value);
  XRESUL1 :=FLOATTOSTR(OraQuery1.fieldbyName('ID_USUARIO').Value);

  TRY
    CASE FrmOriPesq OF
      13:
        FrmSelRelConfVenda.EdExpre.Text:=FLOATTOSTR(OraQuery1.fieldbyName('ID_USUASIST').Value);
      131:
        FrmSelRelConfVenda.EdExpre.Text:= FLOATTOSTR(OraQuery1.fieldbyName('ID_USUARIO').Value);
      151:
        FrmVendasVendedorCliente.EdExpre.Text:=FLOATTOSTR(OraQuery1.fieldbyName('ID_USUARIO').Value);
    end;
    ActiveControl := Nil;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(FRmConsultaUsuarioSistema.Caption), MB_OK + MB_ICONINFORMATION);
  END;

  Close;
end;

procedure TfrmConsultaUsuarioSistema.FormShow(Sender: TObject);
begin
  inherited;
  OraQuery1.Open;
  EdExpre.SetFocus;
end;

procedure TfrmConsultaUsuarioSistema.EdExpreKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TfrmConsultaUsuarioSistema.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  OraQuery1.IndexFieldNames := Column.FieldName;
end;

end.

