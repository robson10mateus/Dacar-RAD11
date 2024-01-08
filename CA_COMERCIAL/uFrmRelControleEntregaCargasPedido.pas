unit uFrmRelControleEntregaCargasPedido;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport;

type
  TfrmRelControleEntregaCargasPedido = class(TForm)
    RLReport1: TRLReport;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    lblTitulo: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    imgLogoTipo: TRLImage;
    lblSubTitulo2: TRLLabel;
    Legendas: TRLBand;
    lblCodigo: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel19: TRLLabel;
    RLBand3: TRLBand;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    GroupCargas: TRLGroup;
    GroupPedido: TRLGroup;
    RLDBText1: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText2: TRLDBText;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLBand2: TRLBand;
    RLDraw3: TRLDraw;
    RLBand5: TRLBand;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText11: TRLDBText;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelControleEntregaCargasPedido: TfrmRelControleEntregaCargasPedido;

implementation

{$R *.dfm}

uses uFrmControleEntregaCargas, Global ;

procedure TfrmRelControleEntregaCargasPedido.RLBand3BeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
  if FrmControleEntregaCargas.qryCargaPedidosNO_MOTIVO.Value = '' then
    RLBand5.Visible := False;
end;

end.
