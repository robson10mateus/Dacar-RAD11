unit UFrmRelVendaFrangoAbate;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, RLReport, RLFilters, RLDraftFilter, RLSaveDialog,
  RLPrintDialog, RLParser, RLXLSFilter;

type
  TFrmRelVendaFrangoAbate = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLBand3: TRLBand;
    RLDBResult1: TRLDBResult;
    RLBand4: TRLBand;
    RLDBResult2: TRLDBResult;
    RLDBText4: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDraw1: TRLDraw;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLDBResult13: TRLDBResult;
    RLDBResult14: TRLDBResult;
    RLXLSFilter1: TRLXLSFilter;
    RLExpressionParser1: TRLExpressionParser;
//    RLPrintDialogSetup1: TRLPrintDialogSetup;
//    RLSaveDialogSetup1: TRLSaveDialogSetup;
    RLSubDetail2: TRLSubDetail;
    RLGroup3: TRLGroup;
    RLBand5: TRLBand;
    RLDBText15: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLGroup4: TRLGroup;
    RLBand6: TRLBand;
    RLDBResult15: TRLDBResult;
    RLDBResult16: TRLDBResult;
    RLDBResult17: TRLDBResult;
    RLDBResult18: TRLDBResult;
    RLDBResult19: TRLDBResult;
    RLDBResult20: TRLDBResult;
    RLBand7: TRLBand;
    RLDBResult21: TRLDBResult;
    RLDBResult22: TRLDBResult;
    RLDBResult23: TRLDBResult;
    RLDBResult24: TRLDBResult;
    RLDBResult25: TRLDBResult;
    RLDBResult26: TRLDBResult;
    RLBand8: TRLBand;
    RLLabel20: TRLLabel;
    RLDBResult27: TRLDBResult;
    RLDBResult28: TRLDBResult;
    RLDBResult29: TRLDBResult;
    RLDBResult30: TRLDBResult;
    RLDBResult31: TRLDBResult;
    RLLabel21: TRLLabel;
    RLBand9: TRLBand;
    RLLabel22: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    PDataIni, PDataFim : String;
  end;

var
  FrmRelVendaFrangoAbate: TFrmRelVendaFrangoAbate;

implementation

{$R *.dfm}
uses UFrmConsVendaFrangoAbate;


end.
