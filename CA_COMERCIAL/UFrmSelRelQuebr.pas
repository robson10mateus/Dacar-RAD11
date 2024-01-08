unit UFrmSelRelQuebr;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, RLPrintDialog;

type
  TFrmSelRelQuebr = class(TForm)
    RLReport1: TRLReport;
    Titulo: TRLBand;
    lbltitulo: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    LblUnidade: TRLLabel;
    RLLabel13: TRLLabel;
    DT1: TRLLabel;
    RLLabel14: TRLLabel;
    DT2: TRLLabel;
    Cabecalho: TRLBand;
    RLLabel9: TRLLabel;
    RLDBText1: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText2: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel2: TRLLabel;
    Detalhe: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    Totalizador: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBText9: TRLDBText;
    RLDBText3: TRLDBText;
    RLGroup1: TRLGroup;
    RLLabel1: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBResult5: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelRelQuebr: TFrmSelRelQuebr;

implementation

{$R *.dfm}

end.
