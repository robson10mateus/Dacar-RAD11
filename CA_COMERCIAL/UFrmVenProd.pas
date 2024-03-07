unit UFrmVenProd;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Dateutils, Winapi.Windows, Data.DB,
  MemDS, DBAccess, Ora, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrmVenProd = class(TForm)
    ToolBar1: TToolBar;
    Sb_Sair: TSpeedButton;
    ToolButton3: TToolButton;
    dlgSaveArquivo: TSaveDialog;
    QrTotConta: TOraQuery;
    Panel1: TPanel;
    DTini: TEdit;
    BtAtivar: TBitBtn;
    Label1: TLabel;
    Qr: TOraQuery;
    QrCORTE: TStringField;
    QrID_PRODMATEEMBA: TStringField;
    QrNM_PRODMATEEMBA: TStringField;
    QrCX_PED: TFloatField;
    QrKG_PED: TFloatField;
    QrVL_UNIT: TFloatField;
    QrVL_TOTAL: TFloatField;
    QrCX_EXPED: TFloatField;
    QrKG_EXPED: TFloatField;
    QrVL_FATURADO: TFloatField;
    BPESQ: TBitBtn;
    DS: TDataSource;
    QrTotTipPedVend: TOraQuery;
    QrTotTipPedVendID_TIPOPEDIVEND: TFloatField;
    QrTotTipPedVendNM_TIPOPEDIVEND: TStringField;
    QrTotTipPedVendQTDE_PEDIDOS: TFloatField;
    QrTotTipPedVendTOTAL_PEDIDO: TFloatField;
    QrTotTipPedVendTOTAL_FATURADO: TFloatField;
    QrTotVencto: TOraQuery;
    QrTotVenctoQTDE_PEDIDOS: TFloatField;
    QrTotVenctoRDATAVENC: TDateTimeField;
    QrTotContaID_CONTA: TFloatField;
    QrTotContaNM_CONTA: TStringField;
    QrTotContaQTDE_PEDIDOS: TFloatField;
    QrTotContaTOTAL_PEDIDO: TFloatField;
    QrTotContaTOTAL_FATURADO: TFloatField;
    QrTotVenctoTOTAL: TFloatField;
    QrTotTipPedVendID_CONTA: TFloatField;
    QrTotTipPedVendNM_CONTA: TStringField;
    QrTotVenctoNM_CONTA: TStringField;
    QrCargas: TOraQuery;
    QrSQL: TOraQuery;
    lbDtCorte: TLabel;
    Label2: TLabel;
    DtBloq: TEdit;
    BitBtn1: TBitBtn;
    QrTotContaAnt: TOraQuery;
    QrCargasNM_CONTA: TStringField;
    QrCargasID_PEDIVEND: TFloatField;
    QrCargasNM_CLIENTE: TStringField;
    QrCargasFL_STATCARGEXPE: TStringField;
    QrCargasDT_ENTRPEDIVEND: TDateTimeField;
    QrCargasPESO_TOTAL: TFloatField;
    QrCargasTOTAL_PEDIDO: TFloatField;
    QrCargasID_CONTA: TFloatField;
    QrTotContaAntID_CONTA: TFloatField;
    QrTotContaAntNM_CONTA: TStringField;
    QrTotContaAntID_PEDIVEND: TFloatField;
    QrTotContaAntNM_CLIENTE: TStringField;
    QrTotContaAntDT_ENTRPEDIVEND: TDateTimeField;
    QrTotContaAntQN_PESOPEDIVEND: TFloatField;
    QrTotContaAntVL_PEDIVEND: TFloatField;
    QrTotContaAntQN_PESOPADREXPEPEDIVEND: TFloatField;
    QrTotContaAntVL_FATUPEDIVEND: TFloatField;
    QrKG_DIF: TFloatField;
    QrPedExc: TOraQuery;
    QrPedExcID_CONTA: TFloatField;
    QrPedExcNM_CONTA: TStringField;
    QrPedExcID_PEDIVEND: TFloatField;
    QrPedExcNM_CLIENTE: TStringField;
    QrPedExcDT_ENTRPEDIVEND: TDateTimeField;
    QrPedExcPESO_TOTAL: TFloatField;
    QrPedExcTOTAL_PEDIDO: TFloatField;
    DsTotConta: TDataSource;
    QrTotContaTOTAL_FATURADO_ANT: TFloatField;
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtAtivarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    Vdtstr:String;
  end;

var
  FrmVenProd: TFrmVenProd;

implementation

uses Principal, UFrmRelConfVenda, Global, UFrmPesqTPV, UFrmPesqVend,
  UPesquiCliente, UFrmSelRelConfVenda, UFrmPesqGrupo,
  UFrmPesqGrupoCli, UFrmPesCaminhao, UFrmPesqCid, UFrmPesqPais,
  UFrmPesqContas, UFrmSeldata, UFrmRelVenProd;

{$R *.dfm}

procedure TFrmVenProd.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmVenProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmVenProd:=nil;
  FrmPrincipal.VEN071.Enabled:= True;
  Action:=caFree;
end;


procedure TFrmVenProd.BtAtivarClick(Sender: TObject);
var
  vDtCorte, vDtBloqAnt, vDtEntregaAnt: TDateTime;
Begin
  Screen.Cursor := crSQLWait;

  //corte
  QrSQL.Close;
  QrSQL.SQL.Clear;
  QrSQL.SQL.Add('select max(dthora_corte) as data_corte from pedido_venda where FL_CORTE = ''S'' and dt_entrpedivend = :DT_ENTREGA');
  QrSQL.ParamByName('DT_ENTREGA').Value:= StrToDate(DTini.Text);
  QrSQL.Open;

  if QrSQL.IsEmpty then
    begin
      QrSQL.Close;
      QrSQL.SQL.Clear;
      QrSQL.SQL.Add('select sysdate as data_corte from dual');
      QrSQL.Open;
    end;
  vDtCorte:= QrSQL.FieldByName('data_corte').AsDateTime;
  lbDtCorte.Caption:= 'Corte: ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', vDtCorte);
  //fim corte

  //bloqueio
  QrSQL.Close;
  QrSQL.SQL.Clear;
  QrSQL.SQL.Add('select ');
  QrSQL.SQL.Add('  max(p.dt_bloqajusfinapedivend) as ultimo_bloqueio ');
  QrSQL.SQL.Add('from ');
  QrSQL.SQL.Add('  pedido_venda p, ');
  QrSQL.SQL.Add('  ca_titurec r ');
  QrSQL.SQL.Add('where ');
  QrSQL.SQL.Add(' p.id_pedivend = r.rnumedocu ');
  QrSQL.SQL.Add('  and trunc(p.dt_bloqajusfinapedivend) = TO_DATE(' + QuotedStr(DtBloq.Text) + ', ''DD/MM/YYYY'') ');
  QrSQL.SQL.Add('  and r.rnumelote is not null ');
  QrSQL.Open;
  if QrSQL.FieldByName('ultimo_bloqueio').IsNull then
    begin
      lbDtCorte.Caption:= '';
      MessageDlg('Não existe bloqueio efetuado na data selecionada.', mtWarning, [mbOk], 0);
      Exit;
    end;
  vDtBloqAnt:= QrSQL.FieldByName('ultimo_bloqueio').AsDateTime;
  lbDtCorte.Caption:= lbDtCorte.Caption + '     Bloqueio: ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', vDtBloqAnt);
  //fim bloqueio

  Qr.Close;
  Qr.ParamByName('DT_ENTREGA').Value:= StrToDate(DTini.Text);
  Qr.ParamByName('DT_CORTE').Value:= StrToDate(DTini.Text);
  Qr.Open;

  //sqls totais
  QrTotConta.Close;
  //QrTotConta.ParamByName('DT_ENTREGA').Value:= StrToDate(DTini.Text);
  QrTotConta.SQL.Clear;
  QrTotConta.SQL.Add('SELECT ');
  QrTotConta.SQL.Add('  PEDIDO_VENDA.ID_CONTA, ');
  QrTotConta.SQL.Add('  CONTA.NM_CONTA, ');
  QrTotConta.SQL.Add('  COUNT(0) as QTDE_PEDIDOS, ');
  QrTotConta.SQL.Add('  SUM(PEDIDO_VENDA.VL_PEDIVEND) AS TOTAL_PEDIDO, ');
  QrTotConta.SQL.Add('  SUM(PEDIDO_VENDA.VL_FATUPEDIVEND) AS TOTAL_FATURADO, ');
  QrTotConta.SQL.Add('  NVL( (SELECT ');
  QrTotConta.SQL.Add('          SUM(P.VL_FATUPEDIVEND) ');
  QrTotConta.SQL.Add('        FROM ');
  QrTotConta.SQL.Add('          PEDIDO_VENDA P, ');
  QrTotConta.SQL.Add('          CONTA C, ');
  QrTotConta.SQL.Add('          EXPEDICAO_CARGA E, ');
  QrTotConta.SQL.Add('          PEDIDO_VENDA_NOTA_FISCAL V, ');
  QrTotConta.SQL.Add('          NOTA_FISCAL N ');
  QrTotConta.SQL.Add('        WHERE ');
  QrTotConta.SQL.Add('          P.ID_CONTA = C.ID_CONTA ');
  QrTotConta.SQL.Add('          AND (P.ID_CARGEXPE = E.ID_CARGEXPE) ');
  QrTotConta.SQL.Add('          AND V.ID_PEDIVEND = P.ID_PEDIVEND ');
  QrTotConta.SQL.Add('          AND N.ID_NOTAFISC = V.ID_NOTAFISC ');
  QrTotConta.SQL.Add('          AND NVL(N.FL_CANCNOTAFISC,''N'') = ''N''  AND ');
  QrTotConta.SQL.Add('          P.ID_TIPOPEDIVEND IN (select ');
  QrTotConta.SQL.Add('                                  Tipo_oper_pedi_vend_tipo.Id_Tipopedivend ');
  QrTotConta.SQL.Add('                                from ');
  QrTotConta.SQL.Add('                                  operacao_tipo, ');
  QrTotConta.SQL.Add('                                  Tipo_oper_pedi_vend_tipo ');
  QrTotConta.SQL.Add('                                where ');
  QrTotConta.SQL.Add('                                  operacao_tipo.id_tipooper = Tipo_oper_pedi_vend_tipo.id_tipooper and ');
  QrTotConta.SQL.Add('                                  operacao_tipo.FL_ENTRSAIDTIPOOPER = ''S'') ');
  QrTotConta.SQL.Add('          AND P.DT_ENTRPEDIVEND = TO_DATE(' + QuotedStr(DtBloq.Text) + ',''DD/MM/YYYY'') ');
  QrTotConta.SQL.Add('          AND P.DT_BLOQAJUSFINAPEDIVEND > TO_DATE(' + QuotedStr(FormatDateTime('dd/mm/yyyy hh:mm:ss', vDtBloqAnt)) + ', ''DD/MM/YYYY HH24:MI:SS'') ');
  QrTotConta.SQL.Add('          AND P.ID_CONTA = PEDIDO_VENDA.ID_CONTA ),0) AS TOTAL_FATURADO_ANT ');
  QrTotConta.SQL.Add('FROM ');
  QrTotConta.SQL.Add('  PEDIDO_VENDA, ');
  QrTotConta.SQL.Add('  CONTA, ');
  QrTotConta.SQL.Add('  EXPEDICAO_CARGA, ');
  QrTotConta.SQL.Add('  PEDIDO_VENDA_NOTA_FISCAL, ');
  QrTotConta.SQL.Add('  NOTA_FISCAL ');
  QrTotConta.SQL.Add('WHERE ');
  QrTotConta.SQL.Add('  PEDIDO_VENDA.ID_CONTA = CONTA.ID_CONTA ');
  QrTotConta.SQL.Add('  AND (PEDIDO_VENDA.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE) ');
  QrTotConta.SQL.Add('  AND PEDIDO_VENDA_NOTA_FISCAL.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND ');
  QrTotConta.SQL.Add('  AND NOTA_FISCAL.ID_NOTAFISC = PEDIDO_VENDA_NOTA_FISCAL.ID_NOTAFISC ');
  QrTotConta.SQL.Add('  AND NVL(NOTA_FISCAL.FL_CANCNOTAFISC,''N'') = ''N''  AND ');
  QrTotConta.SQL.Add('  PEDIDO_VENDA.ID_TIPOPEDIVEND IN (select ');
  QrTotConta.SQL.Add('                                     Tipo_oper_pedi_vend_tipo.Id_Tipopedivend ');
  QrTotConta.SQL.Add('                                   from ');
  QrTotConta.SQL.Add('                                     operacao_tipo, ');
  QrTotConta.SQL.Add('                                     Tipo_oper_pedi_vend_tipo ');
  QrTotConta.SQL.Add('                                   where ');
  QrTotConta.SQL.Add('                                     operacao_tipo.id_tipooper = Tipo_oper_pedi_vend_tipo.id_tipooper and ');
  QrTotConta.SQL.Add('                                     operacao_tipo.FL_ENTRSAIDTIPOOPER = ''S'') AND ');
  QrTotConta.SQL.Add('  PEDIDO_VENDA.DT_ENTRPEDIVEND = TO_DATE(' + QuotedStr(DTini.Text) + ',''DD/MM/YYYY'') ');
  QrTotConta.SQL.Add('  AND EXPEDICAO_CARGA.FL_STATCARGEXPE IN (''NF'',''FE'') ');
  QrTotConta.SQL.Add('  AND PEDIDO_VENDA.FL_STATPEDIVEND <> ''ZR'' ');
  QrTotConta.SQL.Add('GROUP BY ');
  QrTotConta.SQL.Add('  PEDIDO_VENDA.ID_CONTA, ');
  QrTotConta.SQL.Add('  CONTA.NM_CONTA ');
  QrTotConta.SQL.Add('ORDER BY  1 ');
  QrTotConta.Open;

  QrTotContaAnt.Close;
  QrTotContaAnt.SQL.Clear;
  QrTotContaAnt.SQL.Add('SELECT ');
  QrTotContaAnt.SQL.Add('  PEDIDO_VENDA.ID_CONTA, ');
  QrTotContaAnt.SQL.Add('  CONTA.NM_CONTA, ');
  QrTotContaAnt.SQL.Add('  PEDIDO_VENDA.ID_PEDIVEND, ');
  QrTotContaAnt.SQL.Add('  SUBSTR(CLIENTE.NM_CLIENTE,1,30) AS NM_CLIENTE, ');
  QrTotContaAnt.SQL.Add('  PEDIDO_VENDA.DT_ENTRPEDIVEND, ');
  QrTotContaAnt.SQL.Add('  PEDIDO_VENDA.QN_PESOPEDIVEND, ');
  QrTotContaAnt.SQL.Add('  PEDIDO_VENDA.VL_PEDIVEND, ');
  QrTotContaAnt.SQL.Add('  PEDIDO_VENDA.QN_PESOPADREXPEPEDIVEND, ');
  QrTotContaAnt.SQL.Add('  PEDIDO_VENDA.VL_FATUPEDIVEND ');
  QrTotContaAnt.SQL.Add('FROM ');
  QrTotContaAnt.SQL.Add('  PEDIDO_VENDA, ');
  QrTotContaAnt.SQL.Add('  CONTA, ');
  QrTotContaAnt.SQL.Add('  EXPEDICAO_CARGA, ');
  QrTotContaAnt.SQL.Add('  PEDIDO_VENDA_NOTA_FISCAL, ');
  QrTotContaAnt.SQL.Add('  NOTA_FISCAL, ');
  QrTotContaAnt.SQL.Add('  CLIENTE ');
  QrTotContaAnt.SQL.Add('WHERE ');
  QrTotContaAnt.SQL.Add('  PEDIDO_VENDA.ID_CONTA = CONTA.ID_CONTA ');
  QrTotContaAnt.SQL.Add('  AND (PEDIDO_VENDA.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE) ');
  QrTotContaAnt.SQL.Add('  AND PEDIDO_VENDA_NOTA_FISCAL.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND ');
  QrTotContaAnt.SQL.Add('  AND NOTA_FISCAL.ID_NOTAFISC = PEDIDO_VENDA_NOTA_FISCAL.ID_NOTAFISC ');
  QrTotContaAnt.SQL.Add('  AND PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE ');
  QrTotContaAnt.SQL.Add('  AND NVL(NOTA_FISCAL.FL_CANCNOTAFISC,''N'') = ''N''  AND ');
  QrTotContaAnt.SQL.Add('  PEDIDO_VENDA.ID_TIPOPEDIVEND IN (select ');
  QrTotContaAnt.SQL.Add('                                     Tipo_oper_pedi_vend_tipo.Id_Tipopedivend ');
  QrTotContaAnt.SQL.Add('                                   from ');
  QrTotContaAnt.SQL.Add('                                     operacao_tipo, ');
  QrTotContaAnt.SQL.Add('                                     Tipo_oper_pedi_vend_tipo ');
  QrTotContaAnt.SQL.Add('                                   where ');
  QrTotContaAnt.SQL.Add('                                     operacao_tipo.id_tipooper = Tipo_oper_pedi_vend_tipo.id_tipooper and ');
  QrTotContaAnt.SQL.Add('                                     operacao_tipo.FL_ENTRSAIDTIPOOPER = ''S'') AND ');
  QrTotContaAnt.SQL.Add('  PEDIDO_VENDA.DT_ENTRPEDIVEND = TO_DATE(' + QuotedStr(DtBloq.Text) + ',''DD/MM/YYYY'') ');
  QrTotContaAnt.SQL.Add('  AND PEDIDO_VENDA.DT_BLOQAJUSFINAPEDIVEND > TO_DATE(' + QuotedStr(FormatDateTime('dd/mm/yyyy hh:mm:ss', vDtBloqAnt)) + ', ''DD/MM/YYYY HH24:MI:SS'') ');
  QrTotContaAnt.SQL.Add('ORDER BY 1,3 ');
  QrTotContaAnt.Open;

  QrTotTipPedVend.Close;
  QrTotTipPedVend.ParamByName('DT_ENTREGA').Value:= StrToDate(DTini.Text);
  QrTotTipPedVend.Open;

  QrTotVencto.Close;
  QrTotVencto.ParamByName('DT_ENTREGA').Value:= StrToDate(DTini.Text);
  QrTotVencto.Open;

  QrCargas.Close;
  QrCargas.ParamByName('DT_ENTREGA').Value:= StrToDate(DTini.Text);
  QrCargas.Open;

  QrPedExc.Close;
  vDtEntregaAnt:= StrToDate(DTini.Text) - 1;
  QrPedExc.ParamByName('DT_ENTREGA_ANT').Value:= vDtEntregaAnt;
  //QrPedExc.ParamByName('DT_EXCLUSAO').Value:= StrToDate(DTini.Text);
  QrPedExc.Open;


  FrmRelVenProd:=TFrmRelVenProd.Create(Self);
  FrmRelVenProd.lblData.Caption := 'Data da Entrega: ' + DTIni.Text ;
  FrmRelVenProd.LblUnidade.Caption:= gs_Unidade + ' - CNPJ: ' + gs_CNPJ;
  Screen.Cursor := crDefault;

//  FrmRelVenProd.RLPrintDialogSetup1.Copies:=1;
  FrmRelVenProd.RLReport1.PreviewModal;
end;

procedure TFrmVenProd.FormDestroy(Sender: TObject);
begin
  FrmSelRelConfVenda:=Nil;
end;

procedure TFrmVenProd.FormShow(Sender: TObject);
begin
  DTini.Text := DateToStr(Date());
  DtBloq.Text:= DateToStr(IncDay(date,-1));
end;

procedure TFrmVenProd.BPESQClick(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  DTini.Text:= Vdtstr;
  DtBloq.Text:= DateToStr(IncDay(StrToDate(Vdtstr),-1));
end;

procedure TFrmVenProd.BitBtn1Click(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  DtBloq.Text:= Vdtstr;
end;

end.

