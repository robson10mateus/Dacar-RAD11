unit UFrmRelAnaliticoSaidaCaixas;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, RLPrintDialog, RLXLSFilter, RLFilters,
  RLRichFilter, DB, Ora, DBAccess;

type
  TFrmRelAnaliticoSaidaCaixas = class(TForm)
    RLReport1: TRLReport;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    DsRelAnalitico: TOraDataSource;
    RLBand4: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel34: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLImage1: TRLImage;
    RLLabel13: TRLLabel;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand7: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand5: TRLBand;
    RLLabel10: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    RLDBText4: TRLDBText;                                                                                    
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText6: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelAnaliticoSaidaCaixas: TFrmRelAnaliticoSaidaCaixas;

implementation

{$R *.dfm}

end.


