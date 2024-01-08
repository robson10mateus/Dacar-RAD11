unit ufrmRelVendasVendedorCliente;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, RLPrintDialog;

type
  TfrmRelVendasVendedorCliente = class(TForm)
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
    RLBand3: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw1: TRLDraw;
    AgrupaVendedor: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLBand1: TRLBand;
    RLBand4: TRLBand;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLLabel1: TRLLabel;
  private
  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelVendasVendedorCliente: TfrmRelVendasVendedorCliente;

implementation

uses ufrmVendasVendedorCliente;

{$R *.dfm}

end.
