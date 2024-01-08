unit UFrmRelEntradaSaidaCaixas;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLRichFilter, RLFilters, RLXLSFilter, RLPrintDialog,
  RLReport, UFrmEntradaSaidaCaixas, DB, Ora, DBAccess;

type
  TFrmRelEntradaSaidaCaixas = class(TForm)
    RLXLSFilter1: TRLXLSFilter;
    RLRichFilter1: TRLRichFilter;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel34: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLImage1: TRLImage;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    RLBand7: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand5: TRLBand;
    RLLabel10: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLLabel13: TRLLabel;
    DsRel: TOraDataSource;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelEntradaSaidaCaixas: TFrmRelEntradaSaidaCaixas;

implementation

{$R *.dfm}

end.
