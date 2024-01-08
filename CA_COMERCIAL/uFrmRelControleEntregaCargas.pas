unit uFrmRelControleEntregaCargas;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport;

type
  TFrmRelControleEntregaCargas = class(TForm)
    RLReport1: TRLReport;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    lblTitulo: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    imgLogoTipo: TRLImage;
    RLBand2: TRLBand;
    lblCodigo: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    RLBand4: TRLBand;
    RLLabel11: TRLLabel;
    RLDBResult10: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLBand1: TRLBand;
    lblSubTitulo2: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelControleEntregaCargas: TFrmRelControleEntregaCargas;

implementation

{$R *.dfm}
uses uFrmControleEntregaCargas, Global ;

end.
