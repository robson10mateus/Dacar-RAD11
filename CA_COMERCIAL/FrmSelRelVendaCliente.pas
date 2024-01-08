unit FrmSelRelVendaCliente;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLPrintDialog, RLXLSFilter, RLFilters, RLRichFilter,
  DB, Ora, RLReport, DBAccess;

type
  TuFrmSelRelVendaCliente = class(TForm)
    RLReport1: TRLReport;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    RLLabel6: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel11: TRLLabel;
    imgLogoTipo: TRLImage;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    RLGroup3: TRLGroup;
    RLBand3: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand8: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel27: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLBand5: TRLBand;
    RLDBText18: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText22: TRLDBText;                       
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText7: TRLDBText;
    RLXLSFilter1: TRLXLSFilter;
    RLRichFilter1: TRLRichFilter;
    DSDoa: TOraDataSource;
    RLLabel18: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLLabel1: TRLLabel;
    RLDBResult4: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmSelRelVendaCliente: TuFrmSelRelVendaCliente;

implementation

{$R *.dfm}

end.
