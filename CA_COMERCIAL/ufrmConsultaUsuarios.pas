unit ufrmConsultaUsuarios;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, DB, MemDS, DBAccess, Ora, Buttons,
  ExtCtrls, Grids, DBGrids, Winapi.Windows;

type
  TfrmConsultaUsuarios = class(TFrmModelPesqui)
    qryUsuarioSistema: TOraQuery;
    dtsUsuarioSistema: TDataSource;
    qryUsuarioSistemaID_USUASIST: TFloatField;
    qryUsuarioSistemaNM_REDUUSUASIST: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
     VCAMPO, VCONDI, VEXPRE, XRESUL, XRESUL1:STRING;
  end;

var
  frmConsultaUsuarios: TfrmConsultaUsuarios;

implementation

uses uFrmAtualizaPedidoTabPreco, Global, ufrmPedidosAbaixoTabela, UfrmPedVenda, UFrmSelVenProd,
     UFrmSelRelConfVenda, UFrmMontaCarga;

{$R *.dfm}

procedure TfrmConsultaUsuarios.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:= ' SISTEMA_USUARIO.ID_USUASIST ';
    1:VCAMPO:= ' UPPER(SISTEMA_USUARIO.NM_REDUUSUASIST) ';
  END;

  VEXPRE:=UpperCase(EdExpre.Text);
  qryUsuarioSistema.Close;

  WITH qryUsuarioSistema.SQL DO
  BEGIN
    Clear;
    ADD('SELECT SISTEMA_USUARIO.ID_USUASIST, ');
    ADD('SISTEMA_USUARIO.NM_REDUUSUASIST ');
    ADD('FROM SISTEMA_USUARIO ');
    ADD('WHERE SISTEMA_USUARIO.FL_ATIVUSUASIST = ''S'' AND ');

    CASE ComboBox2.ItemIndex OF
     1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    ADD ('ORDER BY SISTEMA_USUARIO.ID_USUASIST');
  END;

  qryUsuarioSistema.Open;
  qryUsuarioSistema.Refresh;
  DBGrid1.SetFocus;
end;

procedure TfrmConsultaUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmConsultaUsuarios:=Nil;
  Action:=caFree;
end;

procedure TfrmConsultaUsuarios.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL:=FLOATTOSTR(qryUsuarioSistemaID_USUASIST.Value);

  TRY
    CASE FrmOriPesq OF
      1:FrmPedVenda.EdExpre.Text:=XRESUL;
      2:FrmMontaCarga.EdExpre.Text:=XRESUL;
      5:
      begin
        FrmSelVenProd.EdExpre.Text:=XRESUL;
        FrmSelVenProd.lblDigitador.Caption:=qryUsuarioSistemaNM_REDUUSUASIST.Value;
      end;
      13:
        FrmSelRelConfVenda.EdExpre.Text:=XRESUL;
      66:
      begin
        frmPedidosAbaixoTabela.sUsuario:=XRESUL;
        frmPedidosAbaixoTabela.edtDigitador.Text := qryUsuarioSistemaNM_REDUUSUASIST.Value;
      end;

//      67:
//      begin
//        frmPedidosAbaixoTabela.sAutorizante:=XRESUL;
//        frmPedidosAbaixoTabela.edtAutorizante.Text := qryUsuarioSistemaNM_REDUUSUASIST.Value;
//      end;

      111:
      begin
        frmAtualizaPedidoTabPreco.sUsuario:=XRESUL;
        frmAtualizaPedidoTabPreco.edtDigitador.Text := qryUsuarioSistemaNM_REDUUSUASIST.Value;
      end;

    end;
    ActiveControl := Nil;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(frmConsultaUsuarios.Caption), MB_OK + MB_ICONINFORMATION);
  END;

  Close;
end;

procedure TfrmConsultaUsuarios.FormShow(Sender: TObject);
begin
  inherited;
  qryUsuarioSistema.Open;
  EdExpre.SetFocus;
end;

procedure TfrmConsultaUsuarios.EdExpreKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TfrmConsultaUsuarios.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  qryUsuarioSistema.IndexFieldNames := Column.FieldName;
end;

end.

