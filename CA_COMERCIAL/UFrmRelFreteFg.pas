unit UFrmRelFreteFg;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, DB, MemDS, DBAccess, Ora, RLPrintDialog;

type
  TFrmRelFreteFg = class(TForm)
    RLReport1: TRLReport;
    QrFrete: TOraQuery;
    DSFrete: TOraDataSource;
    RLBand4: TRLBand;
    QrFretePC_TOLEQUEBPARASIST: TFloatField;
    QrFreteID_CARGEXPE: TFloatField;
    QrFreteDT_CARGEXPE: TDateTimeField;
    QrFreteVLPEDIDO: TFloatField;
    QrFreteVLEXPEDIDO: TFloatField;
    QrFretePESOEXPEDIDO: TFloatField;
    QrFreteVLFATU: TFloatField;
    QrFreteVLQUEBRA: TFloatField;
    QrFretePESODEVOL: TFloatField;
    QrFreteGN_PLACVEICTRAN: TStringField;
    QrFreteQN_FATOFRETABATVEICTRAN: TFloatField;
    QrFreteID_FORNECEDOR: TFloatField;
    QrFreteNM_FORNECEDOR: TStringField;
    QrFreteVLMEDIKG: TFloatField;
    QrFreteFRETEBRUTO: TFloatField;
    RLGroup1: TRLGroup;
    RLBand7: TRLBand;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    LFRETE: TRLLabel;
    RLBand3: TRLBand;
    LVMKG: TRLLabel;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    QrFreteFRETE_N: TFloatField;
    QrFreteFRETE_S: TFloatField;
    QrFreteQUEBRA_N: TFloatField;
    QrFreteQUEBRA_S: TFloatField;
    QrFreteVALOR_PEDAGIO: TFloatField;
    RLDANTVLPEDAGIO: TRLDBResult;
    QrCx: TOraQuery;
    DsCx: TOraDataSource;
    QrCxEMPRESA: TStringField;
    QrCxFILIAL: TIntegerField;
    QrCxSUMVCQTD_DEVOLVIDA: TFloatField;
    QrCxNO_PLACAVEICULO: TStringField;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    RLLabel35: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    lblPeriodo: TRLLabel;
    RLBand2: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel9: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw4: TRLDraw;
    LNumCargas: TRLLabel;
    RLDBResult3: TRLDBResult;
    TOTALKGPADRA: TRLDBResult;
    TOTALKGDEVOL: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult4: TRLDBResult;
    PEDAGITOTAL: TRLLabel;
    LFRETETOTAL: TRLLabel;
    Resumo: TRLBand;
    RLLabel24: TRLLabel;
    RPREMEDIO: TRLLabel;
    RLLabel25: TRLLabel;
    RPRMEDIOCARGA: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel7: TRLLabel;
    RLQUEBRA: TRLDBResult;
    RLLabel34: TRLLabel;
    LPEDAGIRESUMO: TRLLabel;
    RLLabel2: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel37: TRLLabel;
    LVLCAIXAS: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel23: TRLLabel;
    RFreteTotal: TRLLabel;
    RLLabel6: TRLLabel;
    RLFRETEBRUTO: TRLDBResult;
    RLLabel5: TRLLabel;
    TTDESCONTO: TRLLabel;
    RLLabel10: TRLLabel;
    TTPAGTO: TRLLabel;
    qryEntregas: TOraQuery;
    dtsEntregas: TOraDataSource;
    qryEntregasNR_ENTREGAS: TFloatField;
    RLDBResult1: TRLDBResult;
    TTEntregas: TRLLabel;
    lblTransportadora: TRLLabel;
    lblVeiculo: TRLLabel;
    QrFreteOP_MODELO: TStringField;
    lblVlEntregas: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    QrFreteVL_FRETEFIXADO: TFloatField;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel16: TRLLabel;
    QrFreteQN_CAIXA: TIntegerField;
    RLDBResult2: TRLDBResult;
    RLDBResult13: TRLDBResult;
    RLLabel17: TRLLabel;
    QrFreteID_CLIENTE: TFloatField;
    QrFreteNM_FANTCLIE: TStringField;
    imgLogoTipo: TRLImage;
    RLLabel8: TRLLabel;
    BonusCx: TRLLabel;
    Porcent: TRLLabel;
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
   VKGEXP,VFRETETOTALF,VBONUSTOTALF,VFRETETOTAL,VBONUSTOTAL,VFRETE,VBONUS, VCAIXAS, iVlEntregas, iVlCaixas:Double;
   VNCARGAS,iNrCaixas, iNrEntregas:INTEGER;
   sDataControle: String;

   VKGEXP_N,VFRETETOTALF_N,VBONUSTOTALF_N,VFRETETOTAL_N,VBONUSTOTAL_N,VFRETE_N,VBONUS_N,VPEDAGITOTALF:Double;
   VNCARGAS_N:INTEGER;

   VKGEXP_S,VFRETETOTALF_S,VBONUSTOTALF_S,VFRETETOTAL_S,VBONUSTOTAL_S,VFRETE_S,VBONUS_S:Double;
   VNCARGAS_S:INTEGER;
  end;

var
  FrmRelFreteFg: TFrmRelFreteFg;

implementation

Uses UFrmSelFreteFg;

{$R *.dfm}

procedure TFrmRelFreteFg.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);

    var
  Qn_Caixas : Integer;
  Qtd_Caixas_Rec : Integer;
  Perc_Acima : Double;
  Qtd_Acima : Integer;
  nBonus : Double;

begin

  Qn_Caixas := RLDBResult13.Value;
  Qtd_Caixas_Rec := iNrCaixas;
  Perc_Acima := 0;
  nBonus := 0;

  VFRETETOTALF:= ((RLFRETEBRUTO.Value-RLQUEBRA.Value)+VBONUSTOTALF)-VPEDAGITOTALF;
  LFRETETOTAL.Caption := FLOATTOSTRF(VFRETETOTALF,ffNumber,15,2);
  PEDAGITOTAL.Caption := FLOATTOSTRF(VPEDAGITOTALF,ffNumber,15,2);
  LPEDAGIRESUMO.Caption := FLOATTOSTRF(VPEDAGITOTALF,ffNumber,15,2);
  LNumCargas.Caption := IntToStr(VNCARGAS) + ' Cargas';


  IF (TOTALKGPADRA.Value-TOTALKGDEVOL.Value)>0 then
    RPREMEDIO.Caption :=   FLOATTOSTRF((VFRETETOTALF/(TOTALKGPADRA.Value-TOTALKGDEVOL.Value) ),ffNumber,15,3)
  ELSE
    RPREMEDIO.Caption := '0';

  If (VNCARGAS>0) then
    RPRMEDIOCARGA.Caption := FLOATTOSTRF((VFRETETOTALF/VNCARGAS),ffNumber,15,3)
  Else
    RPRMEDIOCARGA.Caption := '0';

  RLLabel14.Caption := IntToStr(iNrCaixas);

  if Qtd_Caixas_Rec > Qn_Caixas then
  begin

    Qtd_Acima := Qtd_Caixas_Rec - Qn_Caixas;
    Perc_Acima := Trunc((Qtd_Acima / Qn_Caixas) * 100);

    if (Perc_Acima >= 21) and (Perc_Acima <= 30) then
    begin
      nBonus := ( (iVlCaixas * 5) /100);
      Porcent.Caption := '5%';
    end
    else if (Perc_Acima >= 31) and (Perc_Acima <= 40) then
    begin
      nBonus := ( (iVlCaixas * 10) /100);
      Porcent.Caption := '10%';
    end
    else if(Perc_Acima >= 41) and (Perc_Acima <= 50) then
    begin
      nBonus := ( (iVlCaixas * 15) /100);
      Porcent.Caption := '15%';
    end
    else if(Perc_Acima >= 51) and (Perc_Acima <= 60) then
    begin
      nBonus := ( (iVlCaixas * 25) /100);
      Porcent.Caption := '25%';
    end
    else if(Perc_Acima >= 61) and (Perc_Acima <= 70) then
    begin
      nBonus := ( (iVlCaixas * 40) /100);
      Porcent.Caption := '40%';
    end
    else if(Perc_Acima >= 71) and (Perc_Acima <= 80) then
    begin
      nBonus := ( (iVlCaixas * 60) /100);
      Porcent.Caption := '60%';
    end
    else if(Perc_Acima >= 81) and (Perc_Acima <= 90) then
    begin
      nBonus := ( (iVlCaixas * 80) /100);
      Porcent.Caption := '80%';
    end
    else if(Perc_Acima >= 91) then
    begin
      nBonus := iVlCaixas * 2;
      Porcent.Caption := '100%';
    end
    else
      Porcent.Caption := '0';

  end;

  LVLCAIXAS.Caption := FLOATTOSTRF(iVlCaixas,ffNumber,15,2);
  BonusCx.Caption := FloatToStrf(nBonus,ffNumber,15,2);
  TTDESCONTO.Caption := FLOATTOSTRF(RLQUEBRA.Value + VPEDAGITOTALF,ffNumber,15,2);
  TTPAGTO.Caption := FLOATTOSTRF(VCAIXAS + VBONUSTOTALF + iVlEntregas + iVlCaixas + nBonus,ffNumber,15,2);
  TTEntregas.Caption := IntToStr(iNrEntregas);
  lblVlEntregas.Caption := FLOATTOSTRF(iVlEntregas,ffNumber,15,2);
  RFRETETOTAL.Caption := FLOATTOSTRF(((RLFRETEBRUTO.Value-RLQUEBRA.Value - VPEDAGITOTALF) + VBONUSTOTALF) + nBonus +
                                      FLOATTOSTRF(iVlCaixas,ffNumber,15,2) + FLOATTOSTRF(iVlEntregas,ffNumber,15,2),ffNumber,15,2) ;

end;

procedure TFrmRelFreteFg.FormCreate(Sender: TObject);
begin
  VFRETE:=0;
  VBONUS:=0;
  VFRETETOTAL:=0;
  VBONUSTOTAL:=0;
  VFRETETOTALF:=0;
  VBONUSTOTALF:=0;
  VKGEXP:=0;
  VNCARGAS:=0;
  iNrEntregas:=0;
  iNrCaixas:= 0;

  //COM N
  VFRETE_N:=0;
  VBONUS_N:=0;
  VFRETETOTAL_N:=0;
  VBONUSTOTAL_N:=0;
  VFRETETOTALF_N:=0;
  VBONUSTOTALF_N:=0;
  VPEDAGITOTALF:=0;
  VKGEXP_N:=0;
  VNCARGAS_N:=0;
  //SEM N
  VFRETE_S:=0;
  VBONUS_S:=0;
  VFRETETOTAL_S:=0;
  VBONUSTOTAL_S:=0;
  VFRETETOTALF_S:=0;
  VBONUSTOTALF_S:=0;
  VKGEXP_S:=0;
  VNCARGAS_S:=0;
  VCAIXAS:=0;
end;

procedure TFrmRelFreteFg.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  LFRETE.Caption := '0,00';

  INC(VNCARGAS);
  if QrFreteVLQUEBRA.Value > 0 then
  begin
    // LFRETE.Caption := FLOATTOSTRF((VFRETETOTAL),ffNumber,15,2);
  end
  else
    VBONUSTOTALF := VBONUSTOTALF + VBONUSTOTAL;

  if VKGEXP>0 then
    LVMKG.CAPTION := FloatToStrF(QrFreteVLMEDIKG.Value, ffNumber, 15,2) //FloatToStrF((VFRETETOTAL/VKGEXP),ffNumber,15,2  )
  else
    LVMKG.CAPTION := '0';

  if RLDANTVLPEDAGIO.Value>0 then
  begin
    VPEDAGITOTALF := VPEDAGITOTALF + RLDANTVLPEDAGIO.Value;
    VFRETETOTAL := VFRETETOTAL - RLDANTVLPEDAGIO.Value;
  end
  else
    VPEDAGITOTALF := 0;


  LFRETE.Caption := FLOATTOSTRF(VFRETETOTAL,ffNumber,15,2);
  VFRETETOTALF := VFRETETOTALF + VFRETETOTAL;
  VKGEXP:=0;
  VBONUSTOTAL:=0;
  VFRETETOTAL:=0;

  {FABRICIO - 04/04/2019 - MOTIVO:CALCULO DE ENTREGAS REALIZADAS. SE nao tiver valor pré fixado, faz se pelo valor conforme numero de caixas}
  iNrEntregas:= iNrEntregas + qryEntregasNR_ENTREGAS.AsInteger;

  if QrFreteVL_FRETEFIXADO.Value > 0 then
    iVlEntregas:= iVlEntregas + qryEntregasNR_ENTREGAS.Value * QrFreteVL_FRETEFIXADO.Value
  else
  begin
    if qryEntregasNR_ENTREGAS.Value <= 5 then
      begin //SOMENTE CAMINHAO 3/4 GANHA POR QTDE DE ENTREGA INFERIOR A 5
        if QrFreteOP_MODELO.AsString = 'TQ' then
          iVlEntregas:= iVlEntregas + qryEntregasNR_ENTREGAS.Value * 5.00;
      end
    else if qryEntregasNR_ENTREGAS.Value <= 10 then
      iVlEntregas:= iVlEntregas + qryEntregasNR_ENTREGAS.Value * 10.00
    else
      iVlEntregas:= iVlEntregas + qryEntregasNR_ENTREGAS.Value * 13.00;
  end;

end;

procedure TFrmRelFreteFg.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  IF QrFreteVLQUEBRA.Value > 0 then
  BEGIN
    VFRETE := (QrFreteFRETEBRUTO.VALUE - QrFreteVLQUEBRA.VALUE);
  END
  ELSE
  BEGIN
    VFRETE := (QrFreteFRETEBRUTO.VALUE + VBONUS);
  END;

  VKGEXP := VKGEXP + QrFretePESOEXPEDIDO.Value;
  VFRETETOTAL := VFRETETOTAL + VFRETE;

end;

procedure TFrmRelFreteFg.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  qryEntregas.Close;
  qryEntregas.ParamByName('CARGA').Value := QrFreteID_CARGEXPE.Value;
  qryEntregas.Open;

  QrCx.Close;
  QrCx.ParamByName('DT').Value := QrFreteDT_CARGEXPE.Value;
  QrCx.Open;

  if FrmSelFreteFg.CBCaixas.Checked = True then
  begin
    {FABRICIO - 04/04/2019 - MOTIVO:CALCULO DE CAIXAS RECOLHIDAS}
    if sDataControle <> QrFreteDT_CARGEXPE.AsString then
    begin
      sDataControle := QrFreteDT_CARGEXPE.AsString;

      RLLabel13.Caption := QrCxSUMVCQTD_DEVOLVIDA.AsString;
      iNrCaixas  := iNrCaixas + QrCxSUMVCQTD_DEVOLVIDA.AsInteger;

      if QrFreteOP_MODELO.AsString = 'TQ' then
      begin
        if QrCxSUMVCQTD_DEVOLVIDA.Value <=50 then
          iVlCaixas:= iVlCaixas + (QrCxSUMVCQTD_DEVOLVIDA.Value * 0.30)
        else if QrCxSUMVCQTD_DEVOLVIDA.Value <=100 then
          iVlCaixas:= iVlCaixas + (QrCxSUMVCQTD_DEVOLVIDA.Value * 0.40)
        else
          iVlCaixas:= iVlCaixas + (QrCxSUMVCQTD_DEVOLVIDA.Value * 0.45)
      end
      else if QrFreteOP_MODELO.AsString = 'TC' then
      begin
        if QrCxSUMVCQTD_DEVOLVIDA.Value <=200 then
          iVlCaixas:= iVlCaixas + (QrCxSUMVCQTD_DEVOLVIDA.Value * 0.20)
        else if QrCxSUMVCQTD_DEVOLVIDA.Value <=350 then
          iVlCaixas:= iVlCaixas + (QrCxSUMVCQTD_DEVOLVIDA.Value * 0.35)
        else if QrCxSUMVCQTD_DEVOLVIDA.Value <=450 then
          iVlCaixas:= iVlCaixas + (QrCxSUMVCQTD_DEVOLVIDA.Value * 0.42)
        else
          iVlCaixas:= iVlCaixas + (QrCxSUMVCQTD_DEVOLVIDA.Value * 0.45)
      end
      else if QrFreteOP_MODELO.AsString = 'TR' then
      begin
        if QrCxSUMVCQTD_DEVOLVIDA.Value <=250 then
          iVlCaixas:= iVlCaixas + (QrCxSUMVCQTD_DEVOLVIDA.Value * 0.20)
        else if QrCxSUMVCQTD_DEVOLVIDA.Value <=400 then
          iVlCaixas:= iVlCaixas + (QrCxSUMVCQTD_DEVOLVIDA.Value * 0.30)
        else if QrCxSUMVCQTD_DEVOLVIDA.Value <=550 then
          iVlCaixas:= iVlCaixas + (QrCxSUMVCQTD_DEVOLVIDA.Value * 0.42)
        else
          iVlCaixas:= iVlCaixas + (QrCxSUMVCQTD_DEVOLVIDA.Value * 0.45)
      end
      else
      begin
        iVlCaixas:= 0;
      end;
    end
    else
      RLLabel13.Caption := '0';
  end;

end;

procedure TFrmRelFreteFg.RLBand3AfterPrint(Sender: TObject);
begin
  RLLabel17.Caption := QrFreteID_CLIENTE.AsString + ' - ' + QrFreteNM_FANTCLIE.AsString;
end;

end.
