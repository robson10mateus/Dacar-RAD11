unit UFrmRelRemessaRacao;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, RLFilters, RLDraftFilter, RLSaveDialog, RLXLSFilter,
  RLPrintDialog, RLParser, RLReport;

type
  TFrmRelRemessaRacao = class(TForm)
    RLReport1: TRLReport;
    RLExpressionParser1: TRLExpressionParser;
//    RLPrintDialogSetup1: TRLPrintDialogSetup;
    RLXLSFilter1: TRLXLSFilter;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    lbl_Periodo: TRLLabel;
    RLLabel4: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand4: TRLBand;
    RLLabel11: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelRemessaRacao: TFrmRelRemessaRacao;

implementation

{$R *.dfm}
Uses UFrmConsRemessaRacao;
procedure TFrmRelRemessaRacao.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     lbl_Periodo.Caption := FrmConsRemessaRacao.DataIni + ' a ' + FrmConsRemessaRacao.DataFim;
end;

end.
