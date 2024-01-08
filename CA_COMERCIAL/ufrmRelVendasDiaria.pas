unit UFrmRelVendasDiaria;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, RLPrintDialog, RLFilters, RLXLSFilter,
  RLSaveDialog;

type
  TFrmRelVendasDiaria = class(TForm)
    rptVendasDiaria: TRLReport;
    Cabecalho_02: TRLBand;
    lblNotaFiscal: TRLLabel;
    lblCodCliente: TRLLabel;
    lblNomeCliente: TRLLabel;
    lblQtdeProduto: TRLLabel;
    lblValorUnitProduto: TRLLabel;
    lblValorTotal: TRLLabel;
    grpProduto: TRLGroup;
    CabecGrupoProduto: TRLBand;
    lblProduto: TRLLabel;
    dbCodProduto: TRLDBText;
    dbDescProduto: TRLDBText;
    RLDraw3: TRLDraw;
    RLDraw2: TRLDraw;
    RLXLSFilter1: TRLXLSFilter;
    Detalhes: TRLBand;
    dbNotaFiscal: TRLDBText;
    dbCodCliente: TRLDBText;
    dbNomeCliente: TRLDBText;
    dbQtdProduto: TRLDBText;
    dbValorUnitProduto: TRLDBText;
    dbValorTotal: TRLDBText;
    lblVendedor: TRLLabel;
    RLDBText1: TRLDBText;
    Totalizadores: TRLBand;
    TotalQtd: TRLDBResult;
    RLDBResult1: TRLDBResult;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    lblTitulo: TRLLabel;
    RLLabel1: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    lblPeriodo: TRLLabel;
    imgLogoTipo: TRLImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelVendasDiaria: TFrmRelVendasDiaria;

implementation

{$R *.dfm}
uses uFrmVendasDiaria;

end.
