unit UFrmPesquisaCargas;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, Buttons, ExtCtrls, Grids,
  DBGrids, DB, Ora, MemDS, DBAccess, Winapi.Windows;

type
  TfrmPesquisaCargas = class(TFrmModelPesqui)
    qryCarga: TOraQuery;
    dtsCarga: TOraDataSource;
    qryCargaNUM_CARGA: TFloatField;
    qryCargaDT_CARGA: TDateTimeField;
    qryCargaDT_MONTCARGEXPE: TDateTimeField;
    qryCargaDT_ABERCARGEXPE: TDateTimeField;
    qryCargaDT_FECHCARGEXPE: TDateTimeField;
    qryCargaOP_STATUS: TStringField;
    qryCargaNO_PLACAVEICULO: TStringField;
    qryCargaNO_TRANSPORTADOR: TStringField;
    qryCargaQT_KGLIQUIDO: TFloatField;
    qryCargaQT_CAIXA: TFloatField;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    xResul,sCampoPesq, sTextoPesq: string;
  end;

var
  frmPesquisaCargas: TfrmPesquisaCargas;

implementation

uses UFrmLanctoPesoBalancaoCarga, Global, uFrmControleEntregaCargas, ufrmDocumentacaoNFE;

{$R *.dfm}

procedure TfrmPesquisaCargas.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if qryCarga.RecordCount = 0 then
  begin
    Application.MessageBox('        Nenhuma Carga foi selecionada          ', PChar(frmPesquisaCargas.Caption), MB_OK + MB_ICONINFORMATION);
    Abort;
  end
  else
  begin
    xResul:=FLOATTOSTR(qryCargaNUM_CARGA.Value);
    TRY
      CASE FrmOriPesq OF
        57:begin
             frmLanctoPesoBalancaoCarga.edtNumCarga.Text      := XRESUL;
             frmLanctoPesoBalancaoCarga.edtDataCarga.Text     := DateToStr(qryCargaDT_CARGA.Value);
             frmLanctoPesoBalancaoCarga.edtPlacaVeiculo.Text  := qryCargaNO_PLACAVEICULO.Value;
             frmLanctoPesoBalancaoCarga.edtTransportador.Text := qryCargaNO_TRANSPORTADOR.Value;
             frmLanctoPesoBalancaoCarga.edtStatusCarga.Text   := qryCargaOP_STATUS.Value;
             frmLanctoPesoBalancaoCarga.edtPesoExpedido.Text  := FormatFloat('#,0.000',qryCargaQT_KGLIQUIDO.AsFloat);
             frmLanctoPesoBalancaoCarga.edtQtdeCaixas.Text    := FloatToStr(qryCargaQT_CAIXA.Value);
           end;
        62:FrmControleEntregaCargas.edtCarga.Text := XRESUL;
        63:frmDocumentacaoNFE.edtNumCarga.Text := XRESUL;
      end;
    EXCEPT
      Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(frmPesquisaCargas.Caption), MB_OK + MB_ICONINFORMATION);
    END;
  end;
end;

procedure TfrmPesquisaCargas.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CASE ComboBox1.ItemIndex OF
    0:sCampoPesq:= 'CG.ID_CARGEXPE';
    1:sCampoPesq:= 'CG.DT_CARGEXPE';
    2:sCampoPesq:= 'CG.GN_PLACVEICTRAN';
    3:sCampoPesq:= 'UPPER(F.NM_FORNECEDOR) ';
  END;

  sTextoPesq:=UpperCase(EdExpre.Text);
  qryCarga.Close;

  WITH qryCarga.SQL DO
  BEGIN
    Clear;
    ADD(' SELECT CG.ID_CARGEXPE AS NUM_CARGA, CG.DT_CARGEXPE AS DT_CARGA,');
    ADD(' CG.DT_MONTCARGEXPE, CG.DT_ABERCARGEXPE, CG.DT_FECHCARGEXPE,');
    ADD(' (CASE WHEN CG.FL_STATCARGEXPE = ''FE'' then ''FECHADA''');
    ADD(' WHEN CG.FL_STATCARGEXPE = ''NF'' then ''PNF''');
    ADD(' WHEN CG.FL_STATCARGEXPE = ''BQ'' then ''BLOQUEADA''');
    ADD(' WHEN CG.FL_STATCARGEXPE = ''MT'' then ''EM MONTAGEM'' END) AS OP_STATUS,    ');
    ADD(' (SUBSTR(CG.GN_PLACVEICTRAN,1,3)|| '' - '' || SUBSTR(CG.GN_PLACVEICTRAN,4,4)) AS NO_PLACAVEICULO, F.NM_FORNECEDOR AS NO_TRANSPORTADOR,');
    ADD(' SUM(Nvl(PV.qn_pesorealexpepedivend,0)) AS QT_KGlIQUIDO,');
    ADD(' SUM(Nvl(PV.qn_embaexpepedivend,0)) AS QT_CAIXA');
    ADD(' FROM EXPEDICAO_CARGA CG');
    ADD(' JOIN PEDIDO_VENDA PV ON(PV.ID_CARGEXPE = CG.ID_CARGEXPE)');
    ADD(' JOIN FORNECEDOR F ON(F.ID_FORNECEDOR = CG.ID_ITEMPROGCAMI)');
    ADD(' WHERE');

    CASE ComboBox2.ItemIndex OF
     0:ADD(sCampoPesq+' = ''' + sTextoPesq + '''');
     1:ADD(sCampoPesq+' LIKE '''+'%'+ sTextoPesq + '%' + '''');
    END;

    ADD(' GROUP BY CG.ID_CARGEXPE, CG.DT_CARGEXPE, CG.DT_MONTCARGEXPE, CG.DT_ABERCARGEXPE, ');
    ADD(' CG.DT_FECHCARGEXPE, CG.FL_STATCARGEXPE, CG.GN_PLACVEICTRAN, F.NM_FORNECEDOR');
    ADD(' ORDER BY CG.ID_CARGEXPE');

  END;

  qryCarga.Open;
  qryCarga.Refresh;
  BitBtn2.SetFocus;
end;

procedure TfrmPesquisaCargas.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  qryCarga.IndexFieldNames := Column.FieldName;
end;

procedure TfrmPesquisaCargas.EdExpreKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    BitBtn1Click(Sender);

end;

end.

