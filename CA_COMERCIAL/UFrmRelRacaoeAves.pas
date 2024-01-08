unit UFrmRelRacaoeAves;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, RLReport, DB, MemDS, DBAccess, Ora, RLPrintDialog,
  RLParser;

type
  TFrmRelRacaoeAves = class(TForm)
    RLReport1: TRLReport;
    RLB_Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel29: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText31: TRLDBText;
    RLSubFornecedor: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel15: TRLLabel;
    RLBand2: TRLBand;
    RLDBText12: TRLDBText;
    RLSubRemessa: TRLSubDetail;
    RLBand8: TRLBand;
    RLLabel16: TRLLabel;
    RLDraw3: TRLDraw;
    RLBand9: TRLBand;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel41: TRLLabel;
    RLBand10: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText32: TRLDBText;
    RLBand1: TRLBand;
    RLLabel27: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLDraw4: TRLDraw;
    RLBand11: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel31: TRLLabel;
    Qr_Lote: TOraQuery;
    Qr_LoteID_LOTE: TFloatField;
    Qr_LoteNM_FORNECEDOR: TStringField;
    Qr_LoteFL_STATUS: TStringField;
    Qr_LoteSTATUS: TStringField;
    Qr_LoteDT_FECHAMENTO: TDateTimeField;
    Qr_LoteAVES_ALOJADAS: TFloatField;
    Qr_LoteSOBRA_RACAO: TFloatField;
    Qr_LoteMORTALIDADE: TFloatField;
    Qr_LoteDATA_ALOJAMENTO: TDateTimeField;
    Qr_LoteNR_CNPJFORN: TStringField;
    Qr_LoteDESC_NUCLEO: TStringField;
    Ds_Lote: TOraDataSource;
    Qr_Aves: TOraQuery;
    Ds_Aves: TOraDataSource;
    Qr_Remessa: TOraQuery;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    Qr_AvesID_LOTE: TFloatField;
    Qr_AvesDT_SAIDNOTAFISC: TDateTimeField;
    Qr_AvesNR_NOTAFISC: TFloatField;
    Qr_AvesID_PRODMATEEMBA: TStringField;
    Qr_AvesNM_PRODMATEEMBA: TStringField;
    Qr_AvesVL_UNITITEMNOTAFISC: TFloatField;
    Qr_AvesVL_ITEMNOTAFISC: TFloatField;
    RLDBText4: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText9: TRLDBText;
    Ds_Remessa: TOraDataSource;
    RLLabel11: TRLLabel;
    Qr_RemessaID_LOTE: TFloatField;
    Qr_RemessaDT_SAIDNOTAFISC: TDateTimeField;
    Qr_RemessaNR_NOTAFISC: TFloatField;
    Qr_RemessaID_PRODMATEEMBA: TStringField;
    Qr_RemessaNM_PRODMATEEMBA: TStringField;
    Qr_RemessaOPERACAO: TStringField;
    Qr_RemessaQN_EMBAITEMNOTAFISC: TFloatField;
    Qr_RemessaVL_UNITITEMNOTAFISC: TFloatField;
    Qr_RemessaVL_ITEMNOTAFISC: TFloatField;
//    PDSetup: TRLPrintDialogSetup;
    RLExpressionParser1: TRLExpressionParser;
    RLDBText10: TRLDBText;
    RLDBResult1: TRLDBResult;
    Qr_AvesQN_EMBAITEMNOTAFISC: TIntegerField;
    RLBand4: TRLBand;
    RLLabel13: TRLLabel;
    lbl_TotalLote: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    PID_LOTE : integer ;
  end;

var
  FrmRelRacaoeAves: TFrmRelRacaoeAves;

implementation

{$R *.dfm}

procedure TFrmRelRacaoeAves.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
Var Tot_Lote : Double;
begin
     Tot_Lote := 0 ;

     Qr_Lote.Close;
     Qr_Lote.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_Lote.Open;

     Qr_Aves.Close;
     Qr_Aves.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_Aves.Open;

     Qr_Remessa.Close;
     Qr_Remessa.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_Remessa.Open;

     Qr_Aves.First;
     Qr_Aves.DisableControls;
     While not Qr_Aves.Eof do
     begin
          Tot_Lote := Tot_Lote + Qr_AvesVL_ITEMNOTAFISC.Value;
          Qr_Aves.Next;
     end;
     Qr_Aves.EnableControls;

     Qr_Remessa.First;
     Qr_Remessa.DisableControls;
     While not Qr_Remessa.Eof do
     begin
          Tot_Lote := Tot_Lote + Qr_RemessaVL_ITEMNOTAFISC.Value;
          Qr_Remessa.Next;
     end;
     Qr_Remessa.EnableControls;

     lbl_TotalLote.Caption := FormatFloat('#,##0.00',Tot_Lote);

end;

end.
