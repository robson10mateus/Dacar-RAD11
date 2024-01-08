unit UFrmRelDevQue;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, RLPDFFilter, RLFilters;

type
  TFrmRelDevQue = class(TForm)
    RLReport1: TRLReport;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLBand3: TRLBand;
    RLDBText17: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel20: TRLLabel;
    RLDBText18: TRLDBText;
    RLBand5: TRLBand;
    RLLabel21: TRLLabel;
    LB_CX_EXP: TRLLabel;
    LB_CX_AJU: TRLLabel;
    LB_CX_LID: TRLLabel;
    LB_VL_OPE: TRLLabel;
    LB_PE_QUE: TRLLabel;
    LB_QUEBRA: TRLLabel;
    LB_PS_DEV: TRLLabel;
    LB_CX_DEV: TRLLabel;
    LB_VL_VEN: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLDBText19: TRLDBText;
    RLLabel22: TRLLabel;
    PESO_LIQ: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText12: TRLDBText;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    RLLabel23: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    imgLogoTipo: TRLImage;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBText20: TRLDBText;
    LB_KG_EXP: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText22: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelDevQue: TFrmRelDevQue;
  vTotCxExp, vTotCxDev, vTotCxLid, vTotCxAju, vTotLinhas: integer;
  vVlrVen, vPesDev, vQuebra, vPerQue, vVlrOpe, vTotKgExp: double;

implementation

uses UFrmPediDevoVend;

{$R *.dfm}

procedure TFrmRelDevQue.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vTotCxExp:= 0;
  vVlrVen:= 0;
  vTotCxDev:= 0;
  vPesDev:= 0;
  vQuebra:= 0;
  vPerQue:= 0;
  vVlrOpe:= 0;
  vTotCxLid:= 0;
  vTotCxAju:= 0;
  vTotLinhas:= 0;
  vTotKgExp:= 0;
end;

procedure TFrmRelDevQue.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  LB_CX_EXP.Caption:= IntToStr(vTotCxExp);
  LB_VL_VEN.Caption:= FormatFloat('#,##0.00', vVlrVen);
  LB_CX_DEV.Caption:= IntToStr(vTotCxDev);
  LB_PS_DEV.Caption:= FormatFloat('#,###0.000', vPesDev);
  LB_QUEBRA.Caption:= FormatFloat('#,##0.00', vQuebra);
  vPerQue:= vPerQue/vTotLinhas;
  LB_PE_QUE.Caption:= FormatFloat('#,##0.000', vPerQue);
  LB_VL_OPE.Caption:= FormatFloat('#,##0.00', vVlrOpe);
  LB_CX_LID.Caption:= IntToStr(vTotCxLid);
  LB_CX_AJU.Caption:= IntToStr(vTotCxAju);
  LB_KG_EXP.Caption:= FormatFloat('#,###0.000',vTotKgExp);
end;

procedure TFrmRelDevQue.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vTotCxExp:= vTotCxExp + FrmPediDevoVend.QrItemQN_EMBAEXPEITEMPEDIVEND.AsInteger;
  vVlrVen:= vVlrVen + FrmPediDevoVend.QrItemVL_UNITITEMPEDIVEND.Value;
  vTotCxDev:= vTotCxDev + FrmPediDevoVend.QrItemQN_EMBAITEMPEDIDEVOVEND.Value;
  vPesDev:= vPesDev + (FrmPediDevoVend.QrItemQN_PSPDEXPEITEMPEDIDEVOVEND.Value - FrmPediDevoVend.QrItemQN_TRREEXPEITEMPEDIDEVOVEND.Value);//vPesDev + FrmPediDevoVend.QrItemQN_PSREEXPEITEMPEDIDEVOVEND.Value;
  vQuebra:= vQuebra + FrmPediDevoVend.QrItemQN_PESOQUEBITEMPEDIDEVOVEND.Value;
  vPerQue:= vPerQue + FrmPediDevoVend.QrItemQN_PERCQUEB.Value;
  vVlrOpe:= vVlrOpe + FrmPediDevoVend.QrItemVL_VALOOPER.Value;
  vTotCxLid:= vTotCxLid + FrmPediDevoVend.QrItemQN_EMBAEXPEITEMPEDIDEVOVEND.Value;
  vTotCxAju:= vTotCxAju + FrmPediDevoVend.QrItemQN_EMBAAJUSITEMPEDIDEVOVEND.Value;
  vTotKgExp := vTotKgExp + FrmPediDevoVend.QrItemQN_PESOPADREXPEITEMPEDIVEND.Value;
  vTotLinhas:= vTotLinhas + 1;
end;

end.
