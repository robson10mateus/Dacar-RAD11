unit UFrmRelProdVend;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, DB, MemDS, DBAccess, Ora, RLFilters,
  RLRichFilter, RLXLSFilter, RLPrintDialog;

type
  TFrmRelProdVend = class(TForm)
    RLReport1: TRLReport;
    DSDoa: TOraDataSource;
    RLGroup3: TRLGroup;
    RLBand3: TRLBand;
    RLDraw2: TRLDraw;
    RLBand5: TRLBand;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLBand8: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel27: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLLabel4: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBResult8: TRLDBResult;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLLabel8: TRLLabel;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    RLLabel6: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel11: TRLLabel;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText7: TRLDBText;
    RLDraw1: TRLDraw;
    imgLogoTipo: TRLImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelProdVend: TFrmRelProdVend;

implementation

uses UFrmSelRelConfVenda;

{$R *.dfm}

end.
