unit UFrmRelSintCarga;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, DB, MemDS, DBAccess, Ora, RLFilters,
  RLRichFilter, RLXLSFilter, RLPrintDialog;

type
  TFrmRelSintCarga = class(TForm)
    RLReport1: TRLReport;
    DSDoa: TOraDataSource;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    Legendas: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    Detalhes: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    Totalizadores: TRLBand;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    grpDataCarga: TRLGroup;
    RLDraw2: TRLDraw;
    CabecalhoGrupo: TRLBand;
    lblVendedor: TRLLabel;
    RLDBText7: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLDBText2: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBText3: TRLDBText;
    RLDraw3: TRLDraw;
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand1: TRLBand;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel34: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel35: TRLLabel;
    DT1: TRLLabel;
    RLLabel37: TRLLabel;
    DT2: TRLLabel;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    imgLogoTipo: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel17: TRLLabel;
    ST1: TRLLabel;
    ST1ST: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelSintCarga: TFrmRelSintCarga;

implementation

uses UFrmSelRelConfVenda;

{$R *.dfm}

end.
