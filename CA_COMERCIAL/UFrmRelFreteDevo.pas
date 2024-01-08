unit UFrmRelFreteDevo;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, DB, MemDS, DBAccess, Ora, RLPrintDialog;

type
  TFrmRelFreteDevo = class(TForm)
    RLReport1: TRLReport;
    QrFrete: TOraQuery;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    lbltitulo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    DSFrete: TOraDataSource;
    LblUnidade: TRLLabel;
    RLLabel13: TRLLabel;
    DT1: TRLLabel;
    RLLabel14: TRLLabel;
    DT2: TRLLabel;
//    PDSetup: TRLPrintDialogSetup;
    RLGroup1: TRLGroup;
    RLBand7: TRLBand;
    RLBand3: TRLBand;
    RLBand2: TRLBand;
    RLLabel35: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    QrFreteID_PEDIVEND: TFloatField;
    QrFretePC_TOLEQUEBPARASIST: TFloatField;
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
    QrFreteFTFRETE_SUBREGIAO: TFloatField;
    QrFreteFTFRETE_VEICU: TFloatField;
    QrFreteVLMEDIKG: TFloatField;
    QrFreteFRETEBRUTO: TFloatField;
    QrFreteDT_ENTRPEDIVEND: TDateTimeField;
    QrFreteVLDEVO: TFloatField;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel4: TRLLabel;
    QrFreteID_PEDIDEVOVEND: TFloatField;
    QrFreteID_MOTOTRAN: TFloatField;
    QrFreteFL_FRETEPG: TStringField;
    RLDBText12: TRLDBText;
    RLLabel5: TRLLabel;
    QrFreteNM__FRETEPG: TStringField;
    RLBand5: TRLBand;
    RLLabel6: TRLLabel;
    RLTFatu: TRLLabel;
    RLTKGEXPED: TRLLabel;
    RLKGDEVO: TRLLabel;
    RLVLDEVO: TRLLabel;
    RLVLFRETE: TRLLabel;
    RLTGFatu: TRLLabel;
    RLTGKGEXPED: TRLLabel;
    RLTGKGDEVO: TRLLabel;
    RLTGVLDEVO: TRLLabel;
    RLTGVLFRETE: TRLLabel;
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
   VKGEXP,VFRETETOTALF,VBONUSTOTALF,VFRETETOTAL,VBONUSTOTAL,VFRETE,VBONUS:Double;
   VNCARGAS:INTEGER;
   VKGEXP_N,VFRETETOTALF_N,VBONUSTOTALF_N,VFRETETOTAL_N,VBONUSTOTAL_N,VFRETE_N,VBONUS_N,VPEDAGITOTALF:Double;
   VNCARGAS_N:INTEGER;
   VKGEXP_S,VFRETETOTALF_S,VBONUSTOTALF_S,VFRETETOTAL_S,VBONUSTOTAL_S,VFRETE_S,VBONUS_S:Double;
   VNCARGAS_S:INTEGER;
   VTFATU, VTKGEXPED,VTKGDEVO,VTVLDEVO,VTVLFRETE:Double;
   VTGFATU, VTGKGEXPED,VTGKGDEVO,VTGVLDEVO,VTGVLFRETE:Double;
  end;

var
  FrmRelFreteDevo: TFrmRelFreteDevo;

implementation

{$R *.dfm}

procedure TFrmRelFreteDevo.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  //SUBTOTAIS
  VTFATU:= VTFATU + QrFreteVLFATU.AsFloat;
  VTKGEXPED:= VTKGEXPED + QrFretePESOEXPEDIDO.AsFloat;
  VTKGDEVO:= VTKGDEVO + QrFretePESODEVOL.AsFloat;
  VTVLDEVO:= VTVLDEVO + QrFreteVLDEVO.AsFloat;
  VTVLFRETE:= VTVLFRETE + QrFreteFRETEBRUTO.AsFloat;
  //TOTALGERAL
  VTGFATU:= VTGFATU + QrFreteVLFATU.AsFloat;
  VTGKGEXPED:= VTGKGEXPED + QrFretePESOEXPEDIDO.AsFloat;
  VTGKGDEVO:= VTGKGDEVO + QrFretePESODEVOL.AsFloat;
  VTGVLDEVO:= VTGVLDEVO + QrFreteVLDEVO.AsFloat;
  VTGVLFRETE:= VTGVLFRETE + QrFreteFRETEBRUTO.AsFloat;

end;

procedure TFrmRelFreteDevo.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLTFatu.Caption := FloatToStrF(VTFATU,ffNumber,15,2);
  VTFATU:= 0;
  RLTKGEXPED.Caption := FloatToStrF(VTKGEXPED,ffNumber,15,3);
  VTKGEXPED:= 0;
  RLKGDEVO.Caption := FloatToStrF(VTKGDEVO,ffNumber,15,3);
  VTKGDEVO:= 0;
  RLVLDEVO.Caption := FloatToStrF(VTVLDEVO,ffNumber,15,2);
  VTVLDEVO:= 0;
  RLVLFRETE.Caption := FloatToStrF(VTVLFRETE,ffNumber,15,2);
  VTVLFRETE:= 0;
end;

procedure TFrmRelFreteDevo.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLTGFatu.Caption := FloatToStrF(VTGFATU,ffNumber,15,2);
  VTGFATU:= 0;
  RLTGKGEXPED.Caption := FloatToStrF(VTGKGEXPED,ffNumber,15,3);
  VTGKGEXPED:= 0;
  RLTGKGDEVO.Caption := FloatToStrF(VTGKGDEVO,ffNumber,15,3);
  VTGKGDEVO:= 0;
  RLTGVLDEVO.Caption := FloatToStrF(VTGVLDEVO,ffNumber,15,2);
  VTGVLDEVO:= 0;
  RLTGVLFRETE.Caption := FloatToStrF(VTGVLFRETE,ffNumber,15,2);
  VTGVLFRETE:= 0;
end;

end.
