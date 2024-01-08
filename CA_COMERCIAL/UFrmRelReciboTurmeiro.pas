unit UFrmRelReciboTurmeiro;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, RLPrintDialog, RLParser,
  RLReport, RLRichText;

type
  TFrmRelReciboTurmeiro = class(TForm)
    RLReport1: TRLReport;
    RLExpressionParser1: TRLExpressionParser;
//    RLPrintDialogSetup1: TRLPrintDialogSetup;
    Qr_Recibo: TOraQuery;
    Ds_Recibo: TOraDataSource;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLMemo1: TRLMemo;
    lbl_Data: TRLLabel;
    RLDraw1: TRLDraw;
    RLDBText2: TRLDBText;
    Qr_ReciboID_LOTE: TFloatField;
    Qr_ReciboTEXTO1: TStringField;
    Qr_ReciboTEXTO2: TStringField;
    Qr_ReciboTEXTO3: TStringField;
    Qr_ReciboTEXTO4: TStringField;
    Qr_ReciboINTEGRADO: TStringField;
    Qr_ReciboVALOR: TFloatField;
    Qr_ReciboQTD_AVESABAT: TFloatField;
    Qr_ReciboDT_FECHAMENTO: TDateTimeField;
    Qr_ReciboTEXTO: TStringField;
    Qr_ReciboDOCUMENTO: TStringField;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLMemo1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure lbl_DataBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    PID_LOTE : integer ;
  end;

var
  FrmRelReciboTurmeiro: TFrmRelReciboTurmeiro;

implementation

Uses Extenso;

{$R *.dfm}

procedure TFrmRelReciboTurmeiro.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     Qr_Recibo.Close;
     Qr_Recibo.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_Recibo.Open;
end;

procedure TFrmRelReciboTurmeiro.RLMemo1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     Text := Qr_ReciboTEXTO.Value + Qr_ReciboTEXTO1.Value + Qr_ReciboTEXTO2.Value + Qr_ReciboVALOR.DisplayText + ' ( '+ValorPorExtenso(Qr_ReciboVALOR.Value ) +' ) ' + Qr_ReciboTEXTO3.Value +' '+Qr_ReciboQTD_AVESABAT.DisplayText+' '+ Qr_ReciboTEXTO4.Value;
end;

procedure TFrmRelReciboTurmeiro.lbl_DataBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     Text := 'Pereiras , ' + FormatDateTime( 'dd ''de'' MMMMM ''de'' YYYY ', Qr_ReciboDT_FECHAMENTO.Value )
end;

end.
