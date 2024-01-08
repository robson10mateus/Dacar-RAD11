unit UFrmRelVendedorCliente;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport;

type
  TFrmRelVendedorCliente = class(TForm)
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand5: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel4: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText10: TRLDBText;
    imgLogoTipo: TRLImage;
    RLLabel14: TRLLabel;
    RLDBText11: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelVendedorCliente: TFrmRelVendedorCliente;

implementation

{$R *.dfm}
Uses UFrmVendedorCliente , Global ;



end.
