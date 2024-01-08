unit UFrmRelCorteProdutos;

interface

uses
  SysUtils, Types, Classes, Variants , Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport;

type
  TFrmRelCorteProdutos = class(TForm)
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel3: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLAngleLabel1: TRLAngleLabel;
    RLAngleLabel2: TRLAngleLabel;
    RLBand1: TRLBand;
    lblTitulo: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCorteProdutos: TFrmRelCorteProdutos;

implementation

{$R *.dfm}
uses UFrmCorteProdutos, Global;

end.
