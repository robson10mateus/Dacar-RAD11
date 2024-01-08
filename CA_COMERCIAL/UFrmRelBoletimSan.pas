unit UFrmRelBoletimSan;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, RLPrintDialog, RLParser,
  RLReport;

type
  TFrmRelBoletimSan = class(TForm)
    RLReport1: TRLReport;
    RLExpressionParser1: TRLExpressionParser;
//    PDSetup: TRLPrintDialogSetup;
    Qr_Boletim: TOraQuery;
    Ds_Boletim: TOraDataSource;
    Qr_BoletimID_LOTE: TFloatField;
    Qr_BoletimNOME_GRANJA: TStringField;
    Qr_BoletimNM_FORNECEDOR: TStringField;
    Qr_BoletimCOD_GEDAVE: TStringField;
    Qr_BoletimGEOREF: TStringField;
    Qr_BoletimCIDADE: TStringField;
    Qr_Pintainho: TOraQuery;
    Ds_Pintainho: TOraDataSource;
    Qr_PintainhoID_LOTE: TFloatField;
    Qr_PintainhoNR_NOTA: TFloatField;
    Qr_PintainhoGTA: TFloatField;
    Qr_PintainhoDATA_GTA: TDateTimeField;
    Qr_PintainhoQUANTIDADE: TFloatField;
    Qr_PintainhoDATA_RECEB: TDateTimeField;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    Qr_Retiradas: TOraQuery;
    Ds_Retirada: TOraDataSource;
    Qr_RetiradasID_LOTE: TFloatField;
    Qr_RetiradasID_NOTAFISC: TFloatField;
    Qr_RetiradasNR_NOTAFISC: TFloatField;
    Qr_RetiradasGTA: TFloatField;
    Qr_RetiradasDT_SAIDNOTAFISC: TDateTimeField;
    Qr_RetiradasQTD_AVESABAT: TFloatField;
    Qr_RetiradasPER_MORT: TFloatField;
    Qr_RetiradasMORTALIDADE: TFloatField;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLBand4: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLBand5: TRLBand;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLBand6: TRLBand;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand7: TRLBand;
    RLLabel23: TRLLabel;
    RLLabel25: TRLLabel;
    RLRes_AvesAbat: TRLDBResult;
    RLLabel27: TRLLabel;
    RLLabel32: TRLLabel;
    RLBand8: TRLBand;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    Qr_BoletimNOME_TECNICO: TStringField;
    Qr_BoletimDROGA1: TStringField;
    Qr_BoletimDT_INIDROGA1: TDateTimeField;
    Qr_BoletimDT_FIMDROGA1: TDateTimeField;
    Qr_BoletimDROGA2: TStringField;
    Qr_BoletimDT_INIDROGA2: TDateTimeField;
    Qr_BoletimDT_FIMDROGA2: TDateTimeField;
    Qr_BoletimDT_RETIRALIMENT: TDateTimeField;
    Qr_BoletimDT_BOLETIM: TDateTimeField;
    RLDBText18: TRLDBText;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDraw24: TRLDraw;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    RLLabel40: TRLLabel;
    RLDraw29: TRLDraw;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLDraw30: TRLDraw;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLLabel48: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLLabel51: TRLLabel;
    RLDraw39: TRLDraw;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLDBText27: TRLDBText;
    RLDraw40: TRLDraw;
    RLLabel54: TRLLabel;
    RLDraw43: TRLDraw;
    RLDraw44: TRLDraw;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel61: TRLLabel;
    RLDraw42: TRLDraw;
    RLDraw47: TRLDraw;
    RLLabel63: TRLLabel;
    RLDraw48: TRLDraw;
    RLLabel64: TRLLabel;
    RLDraw49: TRLDraw;
    RLDraw50: TRLDraw;
    RLLabel65: TRLLabel;
    RLDraw51: TRLDraw;
    RLLabel66: TRLLabel;
    RLDraw46: TRLDraw;
    RLLabel62: TRLLabel;
    RLDraw52: TRLDraw;
    RLLabel67: TRLLabel;
    RLDraw53: TRLDraw;
    RLLabel68: TRLLabel;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLDraw54: TRLDraw;
    RLSubDetail3: TRLSubDetail;
    Lbl_Reman: TRLLabel;
    RLReport2: TRLReport;
    RLBand9: TRLBand;
    RLLabel71: TRLLabel;
    RLPanel1: TRLPanel;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
    RLLabel74: TRLLabel;
    RLDraw1: TRLDraw;
    RLMemo1: TRLMemo;
    RLSubDetail4: TRLSubDetail;
    RLBand10: TRLBand;
    RLLabel75: TRLLabel;
    RLBand11: TRLBand;
    RLDBText26: TRLDBText;
    RLBand12: TRLBand;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLMemo7: TRLMemo;
    RLMemo8: TRLMemo;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLBand13: TRLBand;
    RLLabel78: TRLLabel;
    RLLabel79: TRLLabel;
    RLLabel80: TRLLabel;
    RLLabel81: TRLLabel;
    RLLabel82: TRLLabel;
    RLDraw41: TRLDraw;
    RLMemo9: TRLMemo;
    Qr_RetiradasPLACAVEIC: TStringField;
    RLDBText33: TRLDBText;
    Qr_RetiradasSIGLA_SERVINSPEC: TStringField;
    Qr_RetiradasNUM_SERVINSPEC: TStringField;
    RLDBText34: TRLDBText;
    RLLabel83: TRLLabel;
    RLLabel84: TRLLabel;
    Qr_RetiradasPER_MORTBOLETIM: TFloatField;
    RLDBText32: TRLDBText;
    Qr_BoletimMORTALIDADE: TFloatField;
    Qr_RetiradasSEQ_DIA: TFloatField;
    RLDBText35: TRLDBText;
    Qr_RetiradasQTD_NF: TFloatField;
    RLDBText36: TRLDBText;
    Qr_BoletimDT_COLETA: TDateTimeField;
    Qr_BoletimDT_EMISSAO: TDateTimeField;
    RLDBText37: TRLDBText;
    RLLabel85: TRLLabel;
    RLDBText38: TRLDBText;
    RLLabel86: TRLLabel;
    RLLabel87: TRLLabel;
    Qr_BoletimNUM_LAUDO: TStringField;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Lbl_RemanBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure Qr_PintainhoAfterOpen(DataSet: TDataSet);
    procedure Qr_RetiradasAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    Total_Pintainho, Total_Aves, Mortalidade : Double;

  public
    { Public declarations }
    PID_LOTE : integer ;
  end;

var
  FrmRelBoletimSan: TFrmRelBoletimSan;

implementation

{$R *.dfm}

procedure TFrmRelBoletimSan.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     Qr_Boletim.Close;
     Qr_Boletim.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_Boletim.Open;

     Qr_Pintainho.Close;
     Qr_Pintainho.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_Pintainho.Open;

     Qr_Retiradas.Close;
     Qr_Retiradas.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_Retiradas.Open;

end;

procedure TFrmRelBoletimSan.Lbl_RemanBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
Var Reman :Double;
begin
     if   ( Total_Aves > 0 )  and  (Total_Pintainho > 0  )then
     begin
          Reman := Total_Pintainho - Total_Aves - Mortalidade ;
          Text := FloatToStr(Reman);
     end;

end;

procedure TFrmRelBoletimSan.Qr_PintainhoAfterOpen(DataSet: TDataSet);
begin
     Total_Pintainho := 0 ;
     Qr_Pintainho.First;

     while not Qr_Pintainho.EOF do
     begin
          Total_Pintainho := Total_Pintainho + Qr_PintainhoQUANTIDADE.Value;
          Qr_Pintainho.Next;
     end;

     Qr_Pintainho.First;

end;

procedure TFrmRelBoletimSan.Qr_RetiradasAfterOpen(DataSet: TDataSet);
begin
     Total_Aves := 0;
     Qr_Retiradas.First;

     while not Qr_Retiradas.EOF do
     begin
          Total_Aves := Total_Aves + Qr_RetiradasQTD_NF.Value;
          Mortalidade := Qr_BoletimMORTALIDADE.Value;
          Qr_Retiradas.Next;
     end;
     Qr_Retiradas.First;

end;

end.
