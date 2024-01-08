unit UFrmRelLoteAnalitico;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, RLReport, RLPrintDialog, DB, Ora, MemDS, DBAccess,
  RLParser;

type
  TFrmRelLoteAnalitico = class(TForm)
    RLReport1: TRLReport;
    RLB_Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
//    PDSetup: TRLPrintDialogSetup;
    Qr_Lote: TOraQuery;
    Ds_Lote: TOraDataSource;
    Qr_LoteID_LOTE: TFloatField;
    Qr_LoteNM_FORNECEDOR: TStringField;
    Qr_LoteFL_STATUS: TStringField;
    Qr_LoteSTATUS: TStringField;
    Qr_LoteDT_FECHAMENTO: TDateTimeField;
    Qr_LoteAVES_ALOJADAS: TFloatField;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLSubRetiradas: TRLSubDetail;
    Qr_Retirada: TOraQuery;
    Ds_Retirada: TOraDataSource;
    Qr_RetiradaID_LOTE: TFloatField;
    Qr_RetiradaNR_NOTAFISC: TFloatField;
    Qr_RetiradaDT_SAIDNOTAFISC: TDateTimeField;
    Qr_RetiradaQTD_AVESABAT: TFloatField;
    Qr_RetiradaPESO_AVES: TFloatField;
    Qr_RetiradaTURMA: TIntegerField;
    RLBand4: TRLBand;
    RLLabel7: TRLLabel;
    RLBand5: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLBand6: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand7: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel14: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLSubFornecedor: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand2: TRLBand;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    Qr_Fornecedor: TOraQuery;
    Ds_Fornecedor: TOraDataSource;
    Qr_FornecedorID_LOTE: TFloatField;
    Qr_FornecedorFORN_AVES: TStringField;
    Qr_FornecedorLINHAGEM: TStringField;
    Qr_FornecedorQUANTIDADE: TFloatField;
    RLLabel15: TRLLabel;
    RLDBText12: TRLDBText;
    Qr_Remessa: TOraQuery;
    Ds_Remessa: TOraDataSource;
    RLSubRemessa: TRLSubDetail;
    Qr_RemessaDT_SAIDNOTAFISC: TDateTimeField;
    Qr_RemessaNR_NOTAFISC: TFloatField;
    Qr_RemessaID_PRODMATEEMBA: TStringField;
    Qr_RemessaNM_PRODMATEEMBA: TStringField;
    RLBand8: TRLBand;
    RLLabel16: TRLLabel;
    RLBand9: TRLBand;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLBand10: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    Qr_RetiradaPESO_MEDIO: TFloatField;
    RLDBResult3: TRLDBResult;
    Qr_ResumoRacao: TOraQuery;
    Ds_ResumoRacao: TOraDataSource;
    RLBand1: TRLBand;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    Qr_ResumoRacaoPRE_INICIAL: TFloatField;
    Qr_ResumoRacaoINICIAL: TFloatField;
    Qr_ResumoRacaoENGORDA: TFloatField;
    Qr_ResumoRacaoABATE: TFloatField;
    RLDBText17: TRLDBText;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLDBResult4: TRLDBResult;
    Qr_LoteSOBRA_RACAO: TFloatField;
    Qr_LoteMORTALIDADE: TFloatField;
    RLBand11: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLDBText18: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel30: TRLLabel;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLExpressionParser1: TRLExpressionParser;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    lbl_Pre_inicial: TRLLabel;
    RLLabel31: TRLLabel;
    lbl_Inicial: TRLLabel;
    lbl_Engorda: TRLLabel;
    lbl_Final: TRLLabel;
    RLLabel29: TRLLabel;
    Qr_LoteDATA_ALOJAMENTO: TDateTimeField;
    Qr_LoteNR_CNPJFORN: TStringField;
    RLLabel32: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText22: TRLDBText;
    Qr_DadosAnt: TOraQuery;
    Qr_DadosAntRNO: TFloatField;
    Qr_DadosAntDATA_ALOJAMENTO: TDateTimeField;
    Qr_DadosAntPER_MORTALIDADE: TFloatField;
    Qr_DadosAntCONV_ALIMENTAR: TFloatField;
    Qr_DadosAntGANHO_PESO_DIA: TFloatField;
    Qr_DadosAntPESO_MEDIO: TFloatField;
    Qr_DadosAntIEP: TFloatField;
    Qr_DadosAntDT_FECHAMENTO: TDateTimeField;
    RLSubDadosAnt: TRLSubDetail;
    Ds_DadosAnt: TOraDataSource;
    RLBand12: TRLBand;
    RLBand13: TRLBand;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDraw5: TRLDraw;
    RLBand14: TRLBand;
    RLDraw6: TRLDraw;
    Qr_RemessaPREV: TDateTimeField;
    RLDBText30: TRLDBText;
    Qr_RemessaID_LOTE: TFloatField;
    Qr_LoteDESC_NUCLEO: TStringField;
    RLDBText31: TRLDBText;
    Qr_RemessaOPERACAO: TStringField;
    RLLabel41: TRLLabel;
    RLDBText32: TRLDBText;
    Qr_RemessaQN_EMBAITEMNOTAFISC: TFloatField;
    RLLabel42: TRLLabel;
    Qr_RetiradaID_CLIENTE: TFloatField;
    Qr_RetiradaNM_DESTREMENOTAFISC: TStringField;
    RLDBText33: TRLDBText;
    Qr_LoteNM_LOGRFORN: TStringField;
    Qr_LoteNM_BAIRFORN: TStringField;
    Qr_LoteNM_CIDADE: TStringField;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Qr_RetiradaCalcFields(DataSet: TDataSet);
    procedure RLDBResult1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure lbl_Pre_inicialBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure lbl_InicialBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure lbl_EngordaBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure lbl_FinalBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    PID_LOTE, PID_INTEGRADO : integer ;

  end;

var
  FrmRelLoteAnalitico: TFrmRelLoteAnalitico;

implementation

{$R *.dfm}

procedure TFrmRelLoteAnalitico.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     Qr_Lote.Close;
     Qr_Lote.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_Lote.Open;

     Qr_Fornecedor.Close;
     Qr_Fornecedor.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_Fornecedor.Open;

     Qr_Retirada.Close;
     Qr_Retirada.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_Retirada.Open;

     Qr_Remessa.Close;
     Qr_Remessa.ParamByName('ID_LOTE').Value := InttoStr(PID_LOTE);
     Qr_Remessa.Open;

     Qr_ResumoRacao.Close;
     Qr_ResumoRacao.ParamByName('ID_LOTE').Value := InttoStr(PID_LOTE);
     Qr_ResumoRacao.Open;

     Qr_DadosAnt.Close;
     Qr_DadosAnt.ParamByName('ID_INTEGRADO').Value := PID_INTEGRADO;
     Qr_DadosAnt.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_DadosAnt.Open;
end;

procedure TFrmRelLoteAnalitico.Qr_RetiradaCalcFields(DataSet: TDataSet);
begin
     if ( Qr_RetiradaPESO_AVES.Value > 0  ) And (Qr_RetiradaQTD_AVESABAT.Value > 0 ) then
        Qr_RetiradaPESO_MEDIO.Value := Qr_RetiradaPESO_AVES.Value / Qr_RetiradaQTD_AVESABAT.Value;
end;

procedure TFrmRelLoteAnalitico.RLDBResult1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     if ( RLDBResult1.Text <> '' ) then
        Text := FormatFloat('#,###.00', StrtoFloat(  RLDBText17.Text ) / StrtoFloat( RLDBResult1.Text ) ) ;
end;

procedure TFrmRelLoteAnalitico.lbl_Pre_inicialBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
var  MRacao : Double;
begin
     if ( RLDBResult1.Value > 0 ) then
     begin
          MRacao := Qr_ResumoRacaoPRE_INICIAL.Value / RLDBResult1.Value ;
          Text := FormatFloat( '0.000',MRacao );
     end;
end;

procedure TFrmRelLoteAnalitico.lbl_InicialBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
var  MRacao : Double;
begin
     if ( RLDBResult1.Value > 0 ) then
     begin
          MRacao := Qr_ResumoRacaoINICIAL.Value / RLDBResult1.Value ;
          Text := FormatFloat( '0.000',MRacao );
     end;
end;

procedure TFrmRelLoteAnalitico.lbl_EngordaBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
var  MRacao : Double;
begin
     if ( RLDBResult1.Value > 0 ) then
     begin
          MRacao := Qr_ResumoRacaoENGORDA.Value / RLDBResult1.Value ;
          Text := FormatFloat( '0.000',MRacao );
     end;
end;


procedure TFrmRelLoteAnalitico.lbl_FinalBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
var  MRacao : Double;
begin
     if ( RLDBResult1.Value > 0 ) then
     begin
          MRacao := Qr_ResumoRacaoABATE.Value / RLDBResult1.Value ;
          Text := FormatFloat( '0.000',MRacao );
     end;
end;


end.
