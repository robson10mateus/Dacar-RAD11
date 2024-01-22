unit ufrmConsultaProdutos;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, Buttons, ExtCtrls, Grids,
  DBGrids, DB, Ora, MemDS, DBAccess, Winapi.Windows;

type
  TfrmConsultaProdutos = class(TFrmModelPesqui)
    qryConsultaProdutos: TOraQuery;
    qryConsultaProdutosEMPRESA: TStringField;
    qryConsultaProdutosFILIAL: TIntegerField;
    qryConsultaProdutosID_MATERIAL: TFloatField;
    qryConsultaProdutosID_MATEEMBA: TFloatField;
    qryConsultaProdutosID_PRODMATEEMBA: TStringField;
    qryConsultaProdutosNM_PRODMATEEMBA: TStringField;
    qryConsultaProdutosNM_PRODREDUMATEEMBA: TStringField;
    qryConsultaProdutosID_EMBALAGEM: TFloatField;
    qryConsultaProdutosQN_CAPAMINIMATEEMBA: TFloatField;
    qryConsultaProdutosQN_CAPAMAXIMATEEMBA: TFloatField;
    qryConsultaProdutosQN_CAPAPADRMATEEMBA: TFloatField;
    qryConsultaProdutosQN_CAPAMEDIMATEEMBA: TFloatField;
    qryConsultaProdutosQN_CAPAPADRUNIDMATEEMBA: TFloatField;
    qryConsultaProdutosQN_CAPAMEDIUNIDMATEEMBA: TFloatField;
    qryConsultaProdutosFX_MATEEMBA: TStringField;
    qryConsultaProdutosNM_MATERIAL: TStringField;
    qryConsultaProdutosIE_MATERIAL: TStringField;
    qryConsultaProdutosNM_EMBALAGEM: TStringField;
    dtsConsultaProdutos: TOraDataSource;
    procedure BitBtn3Click(Sender: TObject);
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
    xresul, vcampo, vexpre:string;
  end;

var
  frmConsultaProdutos: TfrmConsultaProdutos;

implementation

uses UfrmPedVenda, Global, UFrmPediDevoVend, UFrmTabPreco, Principal, UFrmParamComercial, UFrmCorte, UFrmHistoricoPrecoTelevendas,
    uFrmVendasDiaria, UFrmConsultaEstoque, UFrmSelProdVend, UFrmSelRelConfVenda, uFrmRelVendaCliente;
{$R *.dfm}

procedure TfrmConsultaProdutos.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsultaProdutos.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='ME.ID_PRODMATEEMBA';
    1:VCAMPO:='ME.ID_MATERIAL';
    2:VCAMPO:='ME.ID_EMBALAGEM';
    3:VCAMPO:='UPPER(ME.NM_PRODMATEEMBA)';
    4:VCAMPO:='UPPER(M.NM_MATERIAL)';
    5:VCAMPO:='UPPER(EM.NM_EMBALAGEM)';
  END;

  VEXPRE:=UpperCase(EdExpre.Text);
  qryConsultaProdutos.Close;

  WITH qryConsultaProdutos.SQL DO
  BEGIN
    Clear;
    ADD('SELECT DISTINCT ME.EMPRESA, ME.FILIAL, ME.ID_MATERIAL, ME.ID_MATEEMBA, ME.ID_PRODMATEEMBA, ');
    ADD('ME.NM_PRODMATEEMBA, ME.NM_PRODREDUMATEEMBA, ME.ID_EMBALAGEM, ME.QN_CAPAMINIMATEEMBA, ');
    ADD('ME.QN_CAPAMAXIMATEEMBA, ME.QN_CAPAPADRMATEEMBA, ME.QN_CAPAMEDIMATEEMBA, ');
    ADD('ME.QN_CAPAPADRUNIDMATEEMBA, ME.QN_CAPAMEDIUNIDMATEEMBA, ME.FX_MATEEMBA, ');
    ADD('M.NM_MATERIAL, M.IE_MATERIAL, EM.NM_EMBALAGEM ');
    ADD('FROM MATERIAL_EMBALAGEM ME ');
    ADD('INNER JOIN MATERIAL M ON (M.ID_MATERIAL = ME.ID_MATERIAL AND M.EMPRESA = ME.EMPRESA AND M.FILIAL = ME.FILIAL) ');
    ADD('INNER JOIN EMBALAGEM EM ON (EM.EMPRESA = ME.EMPRESA AND EM.FILIAL = ME.FILIAL AND EM.ID_EMBALAGEM = ME.ID_EMBALAGEM) ');

    if Length(vexpre)>0 then
      ADD('WHERE ');

    CASE ComboBox2.ItemIndex OF
      0:ADD(VCAMPO+'= ''' + VEXPRE + '''');
      1:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    ADD('ORDER BY ME.ID_PRODMATEEMBA ');
  END;

  qryConsultaProdutos.Open;
  qryConsultaProdutos.Refresh;
  DBGrid1.SetFocus;

end;

procedure TfrmConsultaProdutos.BitBtn2Click(Sender: TObject);
begin
  inherited;

  xRESUL := qryConsultaProdutosID_PRODMATEEMBA.Value;

  TRY
    CASE FrmOriPesq OF
      1:FrmPedVenda.EdExpre.Text:=XRESUL;
      2:FrmPediDevoVend.edtCodiMate.Text:=XRESUL;
      3:
      begin
        FrmParamComercial.QrItemID_PRODMATEEMBA.Value:=qryConsultaProdutosID_PRODMATEEMBA.Value;
        FrmParamComercial.QrItemNM_PRODMATEEMBA.Value:=qryConsultaProdutosNM_PRODMATEEMBA.Value;
      end;
      4:
      begin
        FrmTabPreco.DBCod.Text:= qryConsultaProdutosID_PRODMATEEMBA.Value;
        FrmTabPreco.DBDescItem.Text:= qryConsultaProdutosNM_PRODMATEEMBA.Value;
        FrmTabPreco.QryTabPrecoID_MATERIAL.Value:= qryConsultaProdutosID_MATERIAL.Value;
        FrmTabPreco.QryTabPrecoID_EMBALAGEM.Value:= qryConsultaProdutosID_EMBALAGEM.Value;
        FrmTabPreco.QryTabPrecoID_MATEEMBA.Value:=  qryConsultaProdutosID_MATEEMBA.Value;
      end;
      5:
      begin
        FrmCorte.edtCodiProd.Text := qryConsultaProdutosID_PRODMATEEMBA.Value;
        FrmCorte.edtNomeProd.Text := qryConsultaProdutosNM_PRODMATEEMBA.Value;
        FrmCorte.VCodiMate := qryConsultaProdutosID_MATEEMBA.VALUE;
      end;
      7:FrmSelProdVend.EdExpre.Text:=XRESUL;
      11:
      begin
        FrmPedVenda.QItemID_PRODMATEEMBA.Value:=qryConsultaProdutosID_PRODMATEEMBA.Value;
        FrmPedVenda.DBCodMatEmba.SetFocus;
      end;
      12:
      begin
        FrmHistoricoPrecoTelevendas.DBCod.Text := qryConsultaProdutosID_PRODMATEEMBA.Value;
        FrmHistoricoPrecoTelevendas.DBDescItem.Text := qryConsultaProdutosNM_PRODMATEEMBA.Value;
      end;
      13:
      begin
        FrmPedVenda.edtProdutoPredominante.Text    := qryConsultaProdutosID_PRODMATEEMBA.Value;
        FrmPedVenda.edtProdutoPredominante.SetFocus;
        FrmPedVenda.cbProdutoPredominante.KeyValue := qryConsultaProdutosID_PRODMATEEMBA.Value;
      end;
      131:
        FrmSelRelConfVenda.EdExpre.Text:=XRESUL;
      51:
      begin
        FrmConsultaEstoque.nCodProd := qryConsultaProdutosID_MATERIAL.AsInteger;
        FrmConsultaEstoque.edtCodProduto.Text:=XRESUL;
        FrmConsultaEstoque.edtDescProduto.Text := qryConsultaProdutosNM_PRODMATEEMBA.Value;
      end;
      56:frmVendasDiaria.edtExpressao.Text := xresul;
      57:FrmRelVendaCliente.EdExpre.Text:=XRESUL;

    end;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(frmConsultaProdutos.Caption), MB_OK + MB_ICONINFORMATION);
  END;

  Close;

end;

procedure TfrmConsultaProdutos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TfrmConsultaProdutos.FormShow(Sender: TObject);
begin
  inherited;
  qryConsultaProdutos.Open;
  EdExpre.SetFocus;
end;

procedure TfrmConsultaProdutos.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  qryConsultaProdutos.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsultaProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmConsultaProdutos:=Nil;
  Action:=caFree;
end;

end.

