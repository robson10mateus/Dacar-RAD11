unit UFrmConsApanhaRel;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, RLReport;

type
  TFrmConsApanhaRel = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    lbl_Periodo: TRLLabel;
    RLLabel4: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel12: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLDraw3: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLSubDetail1: TRLSubDetail;
    RLBand5: TRLBand;
    RLDBText13: TRLDBText;
    RLBand6: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBText14: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand7: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLBand8: TRLBand;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBText17: TRLDBText;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel25: TRLLabel;
    RLLabel28: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText18: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    PDataIni, PDataFim : String;
  end;

var
  FrmConsApanhaRel: TFrmConsApanhaRel;

implementation

{$R *.dfm}
uses UFrmConsApanha ;


procedure TFrmConsApanhaRel.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     FrmConsApanha.Qr_Turma.Close;
     FrmConsApanha.Qr_Turma.Open;
     FrmConsApanha.Qr_Abatedouro.Close;
     FrmConsApanha.Qr_Abatedouro.Open;

     lbl_Periodo.Caption := PDataIni+' a '+PDataFim ;
end;

end.
