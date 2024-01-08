unit UFrmRelInventario;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, RLPrintDialog, RLParser, RLSaveDialog,
  RLFilters, RLXLSFilter;

type
  TfrmRelInventario = class(TForm)
    RLReport1: TRLReport;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    lblTitulo: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    imgLogoTipo: TRLImage;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    lblCodigo: TRLLabel;
    lblProduto: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel15: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand4: TRLBand;
    RLLabel11: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLXLSFilter1: TRLXLSFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLDBResult1: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelInventario: TfrmRelInventario;

implementation

{$R *.dfm}
uses UFrmConsultaEstoque, Global ;

end.
