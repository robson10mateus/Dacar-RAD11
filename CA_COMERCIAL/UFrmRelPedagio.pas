unit UFrmRelPedagio;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, DB, Ora, RLPrintDialog, MemDS, DBAccess;

type
  TFrmRelPedagio = class(TForm)
    RLReport1: TRLReport;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    lbltitulo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    LblUnidade: TRLLabel;
    RLLabel2: TRLLabel;
    Dt1: TRLLabel;
    Dt2: TRLLabel;
    RLLabel4: TRLLabel;
    lblusuario: TRLLabel;
//    RLPrintDialogSetup1: TRLPrintDialogSetup;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText1: TRLDBText;
    DS: TOraDataSource;
    RLLabel7: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    Qr: TOraQuery;
    QrPLACA: TStringField;
    QrNOME: TStringField;
    QrVL_PEDAGIO: TFloatField;
    RLLabel8: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelPedagio: TFrmRelPedagio;

implementation

{$R *.dfm}

end.
