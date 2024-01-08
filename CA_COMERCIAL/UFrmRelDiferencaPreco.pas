unit UFrmRelDiferencaPreco;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLParser, RLPrintDialog, RLSaveDialog, RLFilters,
  RLXLSFilter, RLReport;

type
  TFrmRelDiferencaPreco = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    lbl_Unidade: TRLLabel;
    RLLabel4: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel12: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLXLSFilter1: TRLXLSFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLG_Vendedor: TRLGroup;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLG_Produto: TRLGroup;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand6: TRLBand;
    RLLabel11: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLBand7: TRLBand;
    RLLabel13: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLBand8: TRLBand;
    RLLabel14: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    lbl_Data: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLDBResult13: TRLDBResult;
    RLDBResult17: TRLDBResult;
    RLDBResult18: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelDiferencaPreco: TFrmRelDiferencaPreco;

implementation

{$R *.dfm}
uses UFrmDiferencaPreco ;

end.
