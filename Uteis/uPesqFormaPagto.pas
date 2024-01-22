unit uPesqFormaPagto;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF}, Types, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, UFrmModelPesqui, Buttons, ExtCtrls, Grids,
  DBGrids, DB, Ora, MemDS, DBAccess;

type
  TfrmPesqFormaPagto = class(TFrmModelPesqui)
    qryFormaPagto: TOraQuery;
    dtsFormaPagto: TOraDataSource;
    qryFormaPagtoID_FORMPAGA: TFloatField;
    qryFormaPagtoNM_FORMPAGA: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
     VCAMPO, VCONDI, VEXPRE, XRESUL:STRING;
  end;

var
  frmPesqFormaPagto: TfrmPesqFormaPagto;

implementation

uses frmPedVend, URelPM, FrmCtaReceber, UFrmChequeSF, UFrmRelDeve,
  UfrmGeraRe, UFrmContCartorio, URelPMUS, UFrmSelDtRec, UPg,
  UFrmRelDeveFiliais, UFrmRelCtaRecFilRet, UFrmGeraReFiliais,
  UFrmSelVenProdRec, UFrmPedVendaExcl, UFrmRelReceberXRecebido,
  UFrmVendasContas,Global;

{$R *.dfm}

procedure TfrmPesqFormaPagto.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CASE ComboBox1.ItemIndex OF
    0:VCAMPO := 'UPPER(FORMA_PAGAMENTO.NM_FORMPAGA)';
    1:VCAMPO := 'FORMA_PAGAMENTO.ID_FORMPAGA';
  END;

  VEXPRE:=UpperCase(EdExpre.Text);
  qryFormaPagto.Close;

  WITH qryFormaPagto.SQL do
  BEGIN
    Clear;
    ADD ('SELECT FORMA_PAGAMENTO.ID_FORMPAGA, FORMA_PAGAMENTO.NM_FORMPAGA  ');
    ADD ('FROM FORMA_PAGAMENTO ');
    ADD ('WHERE   ');
    CASE ComboBox2.ItemIndex of
      0:ADD(VCAMPO +' LIKE ''' + '%'+ VEXPRE + '%' + '''');
      1:ADD(VCAMPO +' = ''' + VEXPRE + '''');
    END;
    ADD ('ORDER BY FORMA_PAGAMENTO.ID_FORMPAGA ');
  END;

  qryFormaPagto.Open;
  qryFormaPagto.Refresh;
  DBGrid1.SetFocus;

end;

procedure TfrmPesqFormaPagto.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL:=FLOATTOSTR(qryFormaPagtoID_FORMPAGA.Value);
  TRY
    CASE FrmOriPesq OF
      1:    FrmPedVenda.EdExpre.Text:=XRESUL;
      2:    FrmRelPM.EdExpre.Text:=XRESUL;
      3:    FrmCtaRec.EdExpre.Text:=XRESUL;
      4:    FrmChequeSF.EdExpre.Text:=XRESUL;
      5:    FrmRelDeve.EdExpre.Text:=XRESUL;
      6:    FrmgeraRe.EdExpre.Text:=XRESUL;
      7:    FrmContCartorio.EdExpre.Text:=XRESUL;
      8:    FrmRelPMUS.EdExpre.Text:=XRESUL;
      21:   FrmSelDtRec.EdExpre.Text:=XRESUL;
      55:   FrmPG.EdExpre.Text:=XRESUL;
      79:   FrmRelDeveFiliais.EdExpre.Text:=XRESUL;
      83:   FrmRelCtaRecFilRet.EdExpre.Text:=XRESUL;
      86:   FrmGeraReFiliais.EdExpre.Text:=XRESUL;
      94:   FrmSelVenProdRec.EdExpre.Text:=XRESUL;
      96:   FrmPedVendaExcl.EdExpre.Text:=XRESUL;
      99:   FrmRelReceberXRecebido.EdExpre.Text := XRESUL;
      101:  FrmVendasContas.EdExpre.Text := XRESUL;
    end;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível. Tente novamente.', 'Pesquisa Padrão Dacar - Contas', [ID_OK], smsWarning, ID_OK);
  END;

  Close;
end;

procedure TfrmPesqFormaPagto.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  qryFormaPagto.IndexFieldNames := Column.FieldName;
end;

procedure TfrmPesqFormaPagto.FormShow(Sender: TObject);
begin
  inherited;
  CASE FrmOriPesq OF
    3: Caption:= 'Financeiro Dacar - Pesquisa Forma de Pagamantos'
  end;
  qryFormaPagto.Open;
  EdExpre.SetFocus;
end;

procedure TfrmPesqFormaPagto.EdExpreKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

end.
