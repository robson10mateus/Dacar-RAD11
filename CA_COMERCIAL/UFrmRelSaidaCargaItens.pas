unit UFrmRelSaidaCargaItens;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, RLReport, DB, Ora, MemDS, DBAccess, RLPrintDialog;

type
  TFrmRelSaidaCargaItens = class(TForm)
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    QrSAIDACARGA: TOraQuery;
    DSSAIDACARGA: TOraDataSource;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    lbltitulo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    LblUnidade: TRLLabel;
    RLBand3: TRLBand;
    RLBand1: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
//    RLPrintDialogSetup1: TRLPrintDialogSetup;
    QrSAIDACARGAEMPRESA: TStringField;
    QrSAIDACARGAFILIAL: TIntegerField;
    QrSAIDACARGAID_CARGEXPE: TFloatField;
    QrSAIDACARGAGN_PLACVEICTRAN: TStringField;
    QrSAIDACARGAFL_IMPRCARGEXPE: TStringField;
    QrSAIDACARGAID_FORNECEDOR: TFloatField;
    QrSAIDACARGANM_FORNECEDOR: TStringField;
    QrSAIDACARGAID_PEDIVEND: TFloatField;
    QrSAIDACARGAQN_PESOPEDIVEND: TFloatField;
    QrSAIDACARGAQN_PESOBRUTPEDIVEND: TFloatField;
    QrSAIDACARGAQN_EMBAPEDIVEND: TIntegerField;
    QrSAIDACARGAID_CLIENTE: TFloatField;
    QrSAIDACARGANM_FANTCLIE: TStringField;
    QrSAIDACARGANM_REDUCLIE: TStringField;
    QrSAIDACARGANM_TIPOPEDIVEND: TStringField;
    QrSAIDACARGAID_SUBRLOGI: TFloatField;
    QrSAIDACARGANM_SUBRLOGI: TStringField;
    QrSAIDACARGAFL_STATPEDIVEND: TStringField;
    QrSAIDACARGANM_BAIRRO: TStringField;
    QrSAIDACARGANM_CIDADE: TStringField;
    QrSAIDACARGANM_TIPOVEIC: TStringField;
    QrSAIDACARGAID_PRODMATEEMBA: TStringField;
    QrSAIDACARGANM_PRODMATEEMBA: TStringField;
    QrSAIDACARGAQN_EMBAITEMPEDIVEND: TFloatField;
    QrSAIDACARGAQN_PESOITEMPEDIVEND: TFloatField;
    RLBand5: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLMemo1: TRLMemo;
    RLLabel17: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel22: TRLLabel;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel23: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel24: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel25: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel26: TRLLabel;
    RLDraw10: TRLDraw;
    RLLabel27: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText8: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelSaidaCargaItens: TFrmRelSaidaCargaItens;

implementation

{$R *.dfm}

end.
