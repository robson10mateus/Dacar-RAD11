unit UFrmRelVenProd;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, DB, MemDS, DBAccess, Ora, RLFilters,
  RLRichFilter, RLXLSFilter, RLPrintDialog;

type
  TFrmRelVenProd = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    lbltitulo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    DSDoa: TOraDataSource;
    LblUnidade: TRLLabel;
    lblData: TRLLabel;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLGroup1: TRLGroup;
    RLDraw1: TRLDraw;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    RLDBText8: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand2: TRLBand;
    DBRVltotal: TRLDBResult;
    RLLabel2: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLDBResult7: TRLDBResult;
    DBRKgPedi: TRLDBResult;
    RLDBResult10: TRLDBResult;
    LPmedio: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLBand5: TRLBand;
    RLLabel7: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLLabel9: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLBand6: TRLBand;
    rlPed: TRLLabel;
    rlQtde: TRLLabel;
    rlConta: TRLLabel;
    rlTotal: TRLLabel;
    mTotPedC: TRLMemo;
    mConta: TRLMemo;
    mQtdeC: TRLMemo;
    mTotFatC: TRLMemo;
    mCodC: TRLMemo;
    RLLabel1: TRLLabel;
    RLDraw2: TRLDraw;
    RLBand7: TRLBand;
    RLLabel10: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel16: TRLLabel;
    mTotPedT: TRLMemo;
    mTipo: TRLMemo;
    mQtdeT: TRLMemo;
    mTotFatT: TRLMemo;
    mCodT: TRLMemo;
    RLLabel17: TRLLabel;
    RLDraw3: TRLDraw;
    RLBand8: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    mTotVenc: TRLMemo;
    mVenc: TRLMemo;
    mQtdeV: TRLMemo;
    RLDraw4: TRLDraw;
    mContaT: TRLMemo;
    RLLabel24: TRLLabel;
    mContaV: TRLMemo;
    RLLabel25: TRLLabel;
    RLBand9: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    mTotPedCar: TRLMemo;
    mDtEntregaC: TRLMemo;
    mCliente: TRLMemo;
    mStatusC: TRLMemo;
    mPedC: TRLMemo;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    mPesoCar: TRLMemo;
    RLLabel33: TRLLabel;
    mCodCar: TRLMemo;
    RLBand10: TRLBand;
    lblTotCtaAnt: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDraw6: TRLDraw;
    mPedCta: TRLMemo;
    mCliCta: TRLMemo;
    mDtEntregaCta: TRLMemo;
    mKgExpCta: TRLMemo;
    mFatCta: TRLMemo;
    RLLabel35: TRLLabel;
    RLLabel38: TRLLabel;
    mTotPedCta: TRLMemo;
    mKgPedCta: TRLMemo;
    RLDBText4: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLBand11: TRLBand;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    mTotPedE: TRLMemo;
    RLDraw7: TRLDraw;
    mPesoE: TRLMemo;
    mDtEntregaE: TRLMemo;
    mClienteE: TRLMemo;
    mPedE: TRLMemo;
    mCodConE: TRLMemo;
    RLLabel46: TRLLabel;
    mTotFatAntC: TRLMemo;
    RLLabel50: TRLLabel;
    mTotGerC: TRLMemo;
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    linha: integer;
  end;

var
  FrmRelVenProd: TFrmRelVenProd;

implementation

uses UFrmVenProd;

{$R *.dfm}

procedure TFrmRelVenProd.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vTotPed, vTotFat: double;
begin
  vTotPed:= 0;
  vTotFat:= 0;
  linha:= 15;
  FrmVenProd.QrTotConta.First;
  while not FrmVenProd.QrTotConta.Eof do
    begin
      mQtdeC.Lines.Add(FrmVenProd.QrTotContaQTDE_PEDIDOS.AsString);
      mCodC.Lines.Add(FrmVenProd.QrTotContaID_CONTA.AsString);
      mConta.Lines.Add(FrmVenProd.QrTotContaNM_CONTA.Value);
      mTotPedC.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrTotContaTOTAL_PEDIDO.Value));
      mTotFatC.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrTotContaTOTAL_FATURADO.Value));

      mTotFatAntC.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrTotContaTOTAL_FATURADO_ANT.Value));
      mTotGerC.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrTotContaTOTAL_FATURADO.Value + FrmVenProd.QrTotContaTOTAL_FATURADO_ANT.Value));

      vTotPed:= vTotPed + FrmVenProd.QrTotContaTOTAL_PEDIDO.Value;
      vTotFat:= vTotFat + FrmVenProd.QrTotContaTOTAL_FATURADO.Value;
      linha:= linha + 15;
      FrmVenProd.QrTotConta.Next;
    end;
  mConta.Lines.Add('TOTAL');
  mTotPedC.Lines.Add(FormatFloat('#,##0.00',vTotPed));
  mTotFatC.Lines.Add(FormatFloat('#,##0.00',vTotFat));
  RLBand6.Height:= 66 + linha;
end;

procedure TFrmRelVenProd.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vTotPed, vTotFat: double;
begin
  vTotPed:= 0;
  vTotFat:= 0;
  linha:= 15;
  FrmVenProd.QrTotTipPedVend.First;
  while not FrmVenProd.QrTotTipPedVend.Eof do
    begin
      mQtdeT.Lines.Add(FrmVenProd.QrTotTipPedVendQTDE_PEDIDOS.AsString);
      mCodT.Lines.Add(FrmVenProd.QrTotTipPedVendID_TIPOPEDIVEND.AsString);
      mTipo.Lines.Add(FrmVenProd.QrTotTipPedVendNM_TIPOPEDIVEND.Value);
      mContaT.Lines.Add(FrmVenProd.QrTotTipPedVendNM_CONTA.Value);
      mTotPedT.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrTotTipPedVendTOTAL_PEDIDO.Value));
      mTotFatT.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrTotTipPedVendTOTAL_FATURADO.Value));
      vTotPed:= vTotPed + FrmVenProd.QrTotTipPedVendTOTAL_PEDIDO.Value;
      vTotFat:= vTotFat + FrmVenProd.QrTotTipPedVendTOTAL_FATURADO.Value;
      linha:= linha + 15;
      FrmVenProd.QrTotTipPedVend.Next;
    end;
  mTipo.Lines.Add('TOTAL');
  mTotPedT.Lines.Add(FormatFloat('#,##0.00',vTotPed));
  mTotFatT.Lines.Add(FormatFloat('#,##0.00',vTotFat));
  RLBand7.Height:= 66 + linha;
end;

procedure TFrmRelVenProd.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vTot, vTotGer: double;
  vConta: string;
begin
  vTot:= 0;
  vTotGer:= 0;
  linha:= 15;
  FrmVenProd.QrTotVencto.First;
  vConta:= FrmVenProd.QrTotVenctoNM_CONTA.Value;
  while not FrmVenProd.QrTotVencto.Eof do
    begin
      if vConta <> FrmVenProd.QrTotVenctoNM_CONTA.Value then
        begin
          mContaV.Lines.Add('');
          mQtdeV.Lines.Add('');
          mVenc.Lines.Add('TOTAL');
          mTotVenc.Lines.Add(FormatFloat('#,##0.00',vTot));
          linha:= linha + 15;
          vTot:= 0;
          vConta:= FrmVenProd.QrTotVenctoNM_CONTA.Value;
        end;
      mContaV.Lines.Add(FrmVenProd.QrTotVenctoNM_CONTA.Value);
      mQtdeV.Lines.Add(FrmVenProd.QrTotVenctoQTDE_PEDIDOS.AsString);
      mVenc.Lines.Add(FormatDateTime('dd/mm/yyyy',FrmVenProd.QrTotVenctoRDATAVENC.Value));
      mTotVenc.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrTotVenctoTOTAL.Value));
      vTot:= vTot + FrmVenProd.QrTotVenctoTOTAL.Value;
      vTotGer:= vTotGer + FrmVenProd.QrTotVenctoTOTAL.Value;
      linha:= linha + 15;
      FrmVenProd.QrTotVencto.Next;
    end;
  mVenc.Lines.Add('TOTAL');
  mTotVenc.Lines.Add(FormatFloat('#,##0.00',vTot));
  linha:= linha + 15;
  mVenc.Lines.Add('TOTAL GERAL');
  mTotVenc.Lines.Add(FormatFloat('#,##0.00',vTotGer));
  RLBand8.Height:= 66 + linha;
end;

procedure TFrmRelVenProd.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  LPmedio.Caption := FloatToStrF((DBRVltotal.Value/DBRKgPedi.Value), ffNumber,15,4);
end;

procedure TFrmRelVenProd.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vConta: String;
  vTotPeso, vTotValor, vTotGerPeso, vTotGerValor: double;
begin
  linha:= 15;
  vTotPeso:= 0;
  vTotValor:= 0;
  vTotGerPeso:= 0;
  vTotGerValor:= 0;
  FrmVenProd.QrCargas.First;
  vConta:= FrmVenProd.QrCargasNM_CONTA.Value;
  while not FrmVenProd.QrCargas.Eof do
    begin
      if vConta <> FrmVenProd.QrCargasNM_CONTA.Value then
        begin
          mCodCar.Lines.Add('');
          mPedC.Lines.Add('');
          mCliente.Lines.Add(vConta);
          mStatusC.Lines.Add('');
          mDtEntregaC.Lines.Add('');
          mPesoCar.Lines.Add(FormatFloat('#,##0.00',vTotPeso));
          mTotPedCar.Lines.Add(FormatFloat('#,##0.00',vTotValor));
          linha:= linha + 15;
          vTotPeso:= 0;
          vTotValor:= 0;
          vConta:= FrmVenProd.QrCargasNM_CONTA.Value;
        end;
      mCodCar.Lines.Add(FrmVenProd.QrCargasID_CONTA.AsString);
      mPedC.Lines.Add(FrmVenProd.QrCargasID_PEDIVEND.AsString);
      mCliente.Lines.Add(FrmVenProd.QrCargasNM_CLIENTE.AsString);
      mStatusC.Lines.Add(FrmVenProd.QrCargasFL_STATCARGEXPE.Value);
      mDtEntregaC.Lines.Add(FormatDateTime('dd/mm/yyyy',FrmVenProd.QrCargasDT_ENTRPEDIVEND.Value));
      mPesoCar.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrCargasPESO_TOTAL.Value));
      mTotPedCar.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrCargasTOTAL_PEDIDO.Value));
      vTotPeso:= vTotPeso + FrmVenProd.QrCargasPESO_TOTAL.Value;
      vTotValor:= vTotValor + FrmVenProd.QrCargasTOTAL_PEDIDO.Value;
      vTotGerPeso:= vTotGerPeso + FrmVenProd.QrCargasPESO_TOTAL.Value;
      vTotGerValor:= vTotGerValor + FrmVenProd.QrCargasTOTAL_PEDIDO.Value;
      linha:= linha + 15;
      FrmVenProd.QrCargas.Next;
    end;
  mCodCar.Lines.Add('');
  mPedC.Lines.Add('');
  mCliente.Lines.Add(vConta);
  mStatusC.Lines.Add('');
  mDtEntregaC.Lines.Add('');
  mPesoCar.Lines.Add(FormatFloat('#,##0.00',vTotPeso));
  mTotPedCar.Lines.Add(FormatFloat('#,##0.00',vTotValor));
  linha:= linha + 15;

  mCliente.Lines.Add('TOTAL GERAL');
  mPesoCar.Lines.Add(FormatFloat('#,##0.00',vTotGerPeso));
  mTotPedCar.Lines.Add(FormatFloat('#,##0.00',vTotGerValor));
  linha:= linha + 15;
  RLBand9.Height:= 66 + linha;
end;

procedure TFrmRelVenProd.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vConta: String;
  vTotKgPed, vTotKgFat, vTotVlrPed, vTotVlrFat,
  vTotKgPedGer, vTotKgFatGer, vTotVlrPedGer, vTotVlrFatGer: double;
begin
  linha:= 15;
  vTotKgPed:= 0;
  vTotKgFat:= 0;
  vTotVlrPed:= 0;
  vTotVlrFat:= 0;
  vTotKgPedGer:= 0;
  vTotKgFatGer:= 0;
  vTotVlrPedGer:= 0;
  vTotVlrFatGer:= 0;
  lblTotCtaAnt.Caption:= 'TOTAL POR CONTA - ' + FrmVenProd.DtBloq.Text;
  FrmVenProd.QrTotContaAnt.First;
  vConta:= FrmVenProd.QrTotContaAntNM_CONTA.Value;
  while not FrmVenProd.QrTotContaAnt.Eof do
    begin
      if vConta <> FrmVenProd.QrTotContaAntNM_CONTA.Value then
        begin
          mPedCta.Lines.Add('');
          mCliCta.Lines.Add(vConta);
          mDtEntregaCta.Lines.Add('');
          mKgPedCta.Lines.Add(FormatFloat('#,##0.00',vTotKgPed));
          mTotPedCta.Lines.Add(FormatFloat('#,##0.00',vTotVlrPed));
          mKgExpCta.Lines.Add(FormatFloat('#,##0.00',vTotKgFat));
          mFatCta.Lines.Add(FormatFloat('#,##0.00',vTotVlrFat));
          linha:= linha + 15;
          vTotKgPed:= 0;
          vTotKgFat:= 0;
          vTotVlrPed:= 0;
          vTotVlrFat:= 0;
          vConta:= FrmVenProd.QrTotContaAntNM_CONTA.Value;
        end;
      mPedCta.Lines.Add(FrmVenProd.QrTotContaAntID_PEDIVEND.AsString);
      mCliCta.Lines.Add(FrmVenProd.QrTotContaAntNM_CLIENTE.AsString);
      mDtEntregaCta.Lines.Add(FormatDateTime('dd/mm/yyyy',FrmVenProd.QrTotContaAntDT_ENTRPEDIVEND.Value));
      mKgPedCta.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrTotContaAntQN_PESOPEDIVEND.Value));
      mTotPedCta.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrTotContaAntVL_PEDIVEND.Value));
      mKgExpCta.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrTotContaAntQN_PESOPADREXPEPEDIVEND.Value));
      mFatCta.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrTotContaAntVL_FATUPEDIVEND.Value));

      vTotKgPed:= vTotKgPed + FrmVenProd.QrTotContaAntQN_PESOPEDIVEND.Value;
      vTotKgFat:= vTotKgFat + FrmVenProd.QrTotContaAntQN_PESOPADREXPEPEDIVEND.Value;
      vTotVlrPed:= vTotVlrPed + FrmVenProd.QrTotContaAntVL_PEDIVEND.Value;
      vTotVlrFat:= vTotVlrFat + FrmVenProd.QrTotContaAntVL_FATUPEDIVEND.Value;

      vTotKgPedGer:= vTotKgPedGer + FrmVenProd.QrTotContaAntQN_PESOPEDIVEND.Value;
      vTotKgFatGer:= vTotKgFatGer + FrmVenProd.QrTotContaAntQN_PESOPADREXPEPEDIVEND.Value;
      vTotVlrPedGer:= vTotVlrPedGer + FrmVenProd.QrTotContaAntVL_PEDIVEND.Value;
      vTotVlrFatGer:= vTotVlrFatGer + FrmVenProd.QrTotContaAntVL_FATUPEDIVEND.Value;

      linha:= linha + 15;
      FrmVenProd.QrTotContaAnt.Next;
    end;
  mPedCta.Lines.Add('');
  mCliCta.Lines.Add(vConta);
  mDtEntregaCta.Lines.Add('');
  mKgPedCta.Lines.Add(FormatFloat('#,##0.00',vTotKgPed));
  mTotPedCta.Lines.Add(FormatFloat('#,##0.00',vTotVlrPed));
  mKgExpCta.Lines.Add(FormatFloat('#,##0.00',vTotKgFat));
  mFatCta.Lines.Add(FormatFloat('#,##0.00',vTotVlrFat));
  linha:= linha + 15;

  mPedCta.Lines.Add('');
  mCliCta.Lines.Add('TOTAL GERAL');
  mDtEntregaCta.Lines.Add('');
  mKgPedCta.Lines.Add(FormatFloat('#,##0.00',vTotKgPedGer));
  mTotPedCta.Lines.Add(FormatFloat('#,##0.00',vTotVlrPedGer));
  mKgExpCta.Lines.Add(FormatFloat('#,##0.00',vTotKgFatGer));
  mFatCta.Lines.Add(FormatFloat('#,##0.00',vTotVlrFatGer));
  linha:= linha + 15;

  RLBand10.Height:= 66 + linha;
end;

procedure TFrmRelVenProd.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vConta: String;
  vTotPeso, vTotValor, vTotGerPeso, vTotGerValor: double;
begin
  linha:= 15;
  vTotPeso:= 0;
  vTotValor:= 0;
  vTotGerPeso:= 0;
  vTotGerValor:= 0;
  FrmVenProd.QrPedExc.First;
  vConta:= FrmVenProd.QrPedExcNM_CONTA.Value;
  while not FrmVenProd.QrPedExc.Eof do
    begin
      if vConta <> FrmVenProd.QrPedExcNM_CONTA.Value then
        begin
          mCodConE.Lines.Add('');
          mPedE.Lines.Add('');
          mClienteE.Lines.Add(vConta);
          mDtEntregaE.Lines.Add('');
          mPesoE.Lines.Add(FormatFloat('#,##0.00',vTotPeso));
          mTotPedE.Lines.Add(FormatFloat('#,##0.00',vTotValor));
          linha:= linha + 15;
          vTotPeso:= 0;
          vTotValor:= 0;
          vConta:= FrmVenProd.QrPedExcNM_CONTA.Value;
        end;
      mCodConE.Lines.Add(FrmVenProd.QrPedExcID_CONTA.AsString);
      mPedE.Lines.Add(FrmVenProd.QrPedExcID_PEDIVEND.AsString);
      mClienteE.Lines.Add(FrmVenProd.QrPedExcNM_CLIENTE.AsString);
      mDtEntregaE.Lines.Add(FormatDateTime('dd/mm/yyyy',FrmVenProd.QrPedExcDT_ENTRPEDIVEND.Value));
      mPesoE.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrPedExcPESO_TOTAL.Value));
      mTotPedE.Lines.Add(FormatFloat('#,##0.00',FrmVenProd.QrPedExcTOTAL_PEDIDO.Value));
      vTotPeso:= vTotPeso + FrmVenProd.QrPedExcPESO_TOTAL.Value;
      vTotValor:= vTotValor + FrmVenProd.QrPedExcTOTAL_PEDIDO.Value;
      vTotGerPeso:= vTotGerPeso + FrmVenProd.QrPedExcPESO_TOTAL.Value;
      vTotGerValor:= vTotGerValor + FrmVenProd.QrPedExcTOTAL_PEDIDO.Value;
      linha:= linha + 15;
      FrmVenProd.QrPedExc.Next;
    end;
  mCodConE.Lines.Add('');
  mPedE.Lines.Add('');
  mClienteE.Lines.Add(vConta);
  mDtEntregaE.Lines.Add('');
  mPesoE.Lines.Add(FormatFloat('#,##0.00',vTotPeso));
  mTotPedE.Lines.Add(FormatFloat('#,##0.00',vTotValor));
  linha:= linha + 15;

  mClienteE.Lines.Add('TOTAL GERAL');
  mPesoE.Lines.Add(FormatFloat('#,##0.00',vTotGerPeso));
  mTotPedE.Lines.Add(FormatFloat('#,##0.00',vTotGerValor));
  linha:= linha + 15;
  RLBand11.Height:= 66 + linha;
end;

end.
