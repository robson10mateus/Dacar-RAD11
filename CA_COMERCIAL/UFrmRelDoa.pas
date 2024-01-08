unit UFrmRelDoa;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RLReport, DB, MemDS, DBAccess, Ora, RLPrintDialog;

type
  TFrmRelDoa = class(TForm)
    RLReport1: TRLReport;
    QrDoa: TOraQuery;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    lbltitulo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    DSDoa: TOraDataSource;
    LblUnidade: TRLLabel;
    RLLabel13: TRLLabel;
    DT1: TRLLabel;
    RLLabel14: TRLLabel;
    DT2: TRLLabel;
    QrDoaDT_ENTRPEDIVEND: TDateTimeField;
    QrDoaNM_CLIENTE: TStringField;
    QrDoaAUTORIZANTE: TStringField;
    QrDoaDIGITADOR: TStringField;
    QrDoaEXPEDIDOR: TStringField;
    QrDoaNM_PRODMATEEMBA: TStringField;
    QrDoaQN_PESOPADREXPEITEMPEDIVEND: TFloatField;
    QrDoaVL_UNITITEMPEDIVEND: TFloatField;
    QrDoaVLTOTAL: TFloatField;
    QrDoaID_TIPOPEDIVEND: TFloatField;
    QrDoaID_PEDIVEND: TFloatField;
    RLBand4: TRLBand;
    RLDBResult3: TRLDBResult;
    RLLabel6: TRLLabel;
    QrDoaID_PRODMATEEMBA: TStringField;
    RLDraw1: TRLDraw;
    RLLabel5: TRLLabel;
    RLGroup3: TRLGroup;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel23: TRLLabel;
    RLDBText17: TRLDBText;
    RLBand5: TRLBand;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText22: TRLDBText;
    RLBand8: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel27: TRLLabel;
    RLDBText1: TRLDBText;
    QrDoaID_CLIENTE: TFloatField;
    RLDBResult2: TRLDBResult;
    RLLabel2: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLLabel4: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    QrDoaGN_OBSEPEDIVEND: TStringField;
    RLLabel9: TRLLabel;
    RLDBText2: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelDoa: TFrmRelDoa;

implementation

{$R *.dfm}

end.
