unit uFrmRelPercentualVendasVendedor;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport;

type
  TfrmRelPercentualVendasVendedor = class(TForm)
    RLReport1: TRLReport;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    lblTitulo: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    imgLogoTipo: TRLImage;
    lblSubTitulo2: TRLLabel;
    AgrupaData: TRLGroup;
    DetailsData: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    HeaderVendedor: TRLBand;
    RLLabel1: TRLLabel;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    HeaderData: TRLBand;
    RLDBText5: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    SubHeaderData: TRLBand;
    DetailsVendedor: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    FooterTotalPeriodoVendedor: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    FooterData: TRLBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPercentualVendasVendedor: TfrmRelPercentualVendasVendedor;

implementation

uses uFrmRelVendasVendedorPercentual;


{$R *.dfm}

end.
