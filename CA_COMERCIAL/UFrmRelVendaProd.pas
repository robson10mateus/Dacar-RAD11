unit UFrmRelVendaProd;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, DB, MemDS, DBAccess, Ora, RLFilters,
  RLRichFilter, RLXLSFilter, RLPrintDialog;

type
  TFrmRelVendaProd = class(TForm)
    RLReport1: TRLReport;
    Cabecalho_Cliente: TRLBand;
    DSDoa: TOraDataSource;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLBand2: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RESUMO_CONTAS: TRLBand;
    RLCli: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    RLLabel1: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel13: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    Cabecalho_Vendedor: TRLBand;
    RLVen: TRLLabel;
    Cabecalho_Digitador: TRLBand;
    RLDigitador: TRLLabel;
    mConta: TRLMemo;
    mValor: TRLMemo;
    mQtde: TRLMemo;
    rlQtde: TRLLabel;
    rlConta: TRLLabel;
    rlTotal: TRLLabel;
    RLDraw2: TRLDraw;
    rlQtdeNF: TRLLabel;
    rlContaNF: TRLLabel;
    rlTotalNF: TRLLabel;
    mValorNF: TRLMemo;
    mContaNF: TRLMemo;
    mQtdeNF: TRLMemo;
    rlPed: TRLLabel;
    rlFat: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw4: TRLDraw;
    imgLogoTipo: TRLImage;
    RES_PROD_NAO_EXP: TRLBand;
    memQtdePedido: TRLMemo;
    memQtdeExpe: TRLMemo;
    memProduto: TRLMemo;
    lblProduto: TRLLabel;
    lblQtdePedido: TRLLabel;
    lblQtdeExpe: TRLLabel;
    RLDraw5: TRLDraw;
    lblDiferenca: TRLLabel;
    memDiferenca: TRLMemo;
    lblLegenda: TRLLabel;
    RLDraw7: TRLDraw;
    RLBand5: TRLBand;
    RLDBResult2: TRLDBResult;
    RLLabel7: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLLabel9: TRLLabel;
    RLDBResult9: TRLDBResult;
    RLDraw10: TRLDraw;
    RLLabel2: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel10: TRLLabel;
    RLDBResult7: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLDraw3: TRLDraw;
    FOOTER_2: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    lblUsuario: TRLLabel;
    procedure RESUMO_CONTASBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RES_PROD_NAO_EXPBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelVendaProd: TFrmRelVendaProd;

implementation

uses UFrmSelVenProd;

{$R *.dfm}

procedure TFrmRelVendaProd.RESUMO_CONTASBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vTotPed, vTotNF: double;
  vHeight1, vHeight2: integer;
begin

//  LPmedio.Caption := FloatToStrF((DBRVltotal.Value/DBRKgPedi.Value), ffNumber,15,2);

  if FrmSelVenProd.chkRes.Checked then
    begin
      vTotPed:= 0;
      FrmSelVenProd.QrTotConta.First;
      while not FrmSelVenProd.QrTotConta.Eof do
        begin
          mQtde.Lines.Add(FrmSelVenProd.QrTotContaQTDE_PEDIDOS.AsString);
          mConta.Lines.Add(Copy(FrmSelVenProd.QrTotContaNM_CONTA.Value,1,30));
          mValor.Lines.Add(FormatFloat('#,##0.00',FrmSelVenProd.QrTotContaTOTAL_PEDIDO.Value));
          vTotPed:= vTotPed + FrmSelVenProd.QrTotContaTOTAL_PEDIDO.Value;
          FrmSelVenProd.QrTotConta.Next;
        end;
      mConta.Lines.Add('TOTAL');
      mValor.Lines.Add(FormatFloat('#,##0.00',vTotPed));

      vHeight1:= RESUMO_CONTAS.Height;

      vTotNF:= 0;
      FrmSelVenProd.QrTotContaNF.First;
      while not FrmSelVenProd.QrTotContaNF.Eof do
        begin
          mQtdeNF.Lines.Add(FrmSelVenProd.QrTotContaNFQTDE_PEDIDOS.AsString);
          mContaNF.Lines.Add(Copy(FrmSelVenProd.QrTotContaNFNM_CONTA.Value,1,30));
          mValorNF.Lines.Add(FormatFloat('#,##0.00',FrmSelVenProd.QrTotContaNFTOTAL_FATURADO.Value));
          vTotNF:= vTotNF + FrmSelVenProd.QrTotContaNFTOTAL_FATURADO.Value;
          FrmSelVenProd.QrTotContaNF.Next;
        end;
      mContaNF.Lines.Add('TOTAL');
      mValorNF.Lines.Add(FormatFloat('#,##0.00',vTotNF));
      vHeight2:= RESUMO_CONTAS.Height;
      RESUMO_CONTAS.Height:= RESUMO_CONTAS.Height - (vHeight2 - vHeight1);
    end
  else
  begin
    RESUMO_CONTAS.Height:= 0;
    rlPed.Visible:= False;
    rlFat.Visible:= False;
    rlQtde.Visible:= False;
    rlQtdeNF.Visible:= False;
    rlConta.Visible:= False;
    rlContaNF.Visible:= False;
    rlTotal.Visible:= False;
    rlTotalNF.Visible:= False;
    mConta.Visible:= False;
    mContaNF.Visible:= False;
    mValor.Visible:= False;
    mValorNF.Visible:= False;
    mValor.Visible:= False;
    mValorNF.Visible:= False;
    RLDraw2.Visible:= False;
    RLDraw3.Visible:= False;
    RLLabel3.Visible:= False;
  end;
end;

procedure TFrmRelVendaProd.RES_PROD_NAO_EXPBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  iQtdePed, iQtdeExp, iQtdeDif : integer;
begin

  if FrmSelVenProd.chkQtdeNaoAtendida.Checked then
  begin
    FrmSelVenProd.qryTotalItensNaoExp.First;
    while not FrmSelVenProd.qryTotalItensNaoExp.Eof do
    begin
      memProduto.Lines.Add(FrmSelVenProd.qryTotalItensNaoExpID_PRODMATEEMBA.AsString + ' - ' + FrmSelVenProd.qryTotalItensNaoExpNM_PRODMATEEMBA.AsString);
      memQtdePedido.Lines.Add(FrmSelVenProd.qryTotalItensNaoExpQN_EMBAITEMPEDIVEND.AsString);
      iQtdePed := iQtdePed + FrmSelVenProd.qryTotalItensNaoExpQN_EMBAITEMPEDIVEND.AsInteger;
      memQtdeExpe.Lines.Add(FrmSelVenProd.qryTotalItensNaoExpQN_EMBAEXPEITEMPEDIVEND.AsString);
      iQtdeExp := iQtdeExp + FrmSelVenProd.qryTotalItensNaoExpQN_EMBAEXPEITEMPEDIVEND.AsInteger;
      memDiferenca.Lines.Add(FrmSelVenProd.qryTotalItensNaoExpDIF.AsString);
      iQtdeDif := iQtdeDif + FrmSelVenProd.qryTotalItensNaoExpDIF.AsInteger;
      FrmSelVenProd.qryTotalItensNaoExp.Next;
      RES_PROD_NAO_EXP.Height := RES_PROD_NAO_EXP.Height + 13;
    end;

//    memProduto.Lines.Add('ииииииииии');
//    memQtdePedido.Lines.Add('ииииииииии');
//    memQtdeExpe.Lines.Add('ииииииииии');
//    memDiferenca.Lines.Add('ииииииииии');
    memProduto.Lines.Add('TOTAL');
    memQtdePedido.Lines.Add(IntToStr(iQtdePed));
    memQtdeExpe.Lines.Add(IntToStr(iQtdeExp));
    memDiferenca.Lines.Add(IntToStr(iQtdeDif));
    RES_PROD_NAO_EXP.Height := RES_PROD_NAO_EXP.Height + 13;
  end
  else
  begin
    RES_PROD_NAO_EXP.Height:= 0;
    memProduto.Visible:= False;
    memQtdePedido.Visible:= False;
    memQtdeExpe.Visible:= False;
    memDiferenca.Visible:= False;
    lblLegenda.Visible:= False;
  end;
end;

end.
