unit UFrmRelProgRacao;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, RLPrintDialog, RLParser, RLReport, DB, Ora, MemDS,
  DBAccess;

type
  TFrmRelProgRacao = class(TForm)
    RLExpressionParser1: TRLExpressionParser;
//    RLPrintDialogSetup1: TRLPrintDialogSetup;
    Qr_ProgRacao: TOraQuery;
    Ds_ProgRacao: TOraDataSource;
    RLReport1: TRLReport;
    Qr_ProgRacaoID_LOTE: TFloatField;
    Qr_ProgRacaoINTEGRADO: TStringField;
    Qr_ProgRacaoIDADE: TFloatField;
    Qr_ProgRacaoAVES: TFloatField;
    Qr_ProgRacaoPROX_ENTREGA_RACAO: TDateTimeField;
    Qr_ProgRacaoPREINI_PREV: TFloatField;
    Qr_ProgRacaoPREINI_NF: TFloatField;
    Qr_ProgRacaoINICIAL_PREV: TFloatField;
    Qr_ProgRacaoINICIAL_NF: TFloatField;
    Qr_ProgRacaoENGORDA_PREV: TFloatField;
    Qr_ProgRacaoENGORDA_NF: TFloatField;
    Qr_ProgRacaoENGORDAII_PREV: TFloatField;
    Qr_ProgRacaoENGORDAII_NF: TFloatField;
    Qr_ProgRacaoABATE_PREV: TFloatField;
    Qr_ProgRacaoABATE_NF: TFloatField;
    Qr_ProgRacaoULTIMO_ENVIO: TDateTimeField;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel4: TRLLabel;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand4: TRLBand;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBText8: TRLDBText;
    RLDBResult3: TRLDBResult;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBText12: TRLDBText;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLMemo7: TRLMemo;
    RLMemo8: TRLMemo;
    RLMemo9: TRLMemo;
    RLMemo10: TRLMemo;
    RLMemo12: TRLMemo;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLMemo15: TRLMemo;
    RLMemo16: TRLMemo;
    RLMemo17: TRLMemo;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw9: TRLDraw;
    RLMemo23: TRLMemo;
    RLMemo13: TRLMemo;
    RLMemo14: TRLMemo;
    RLMemo18: TRLMemo;
    RLMemo19: TRLMemo;
    RLMemo20: TRLMemo;
    RLMemo25: TRLMemo;
    RLMemo26: TRLMemo;
    RLMemo27: TRLMemo;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBResult13: TRLDBResult;
    RLDBResult14: TRLDBResult;
    RLDBResult15: TRLDBResult;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand5: TRLBand;
    RLLabel8: TRLLabel;
    RLDBResult16: TRLDBResult;
    RLDBResult17: TRLDBResult;
    RLDBResult18: TRLDBResult;
    RLDBResult19: TRLDBResult;
    RLDBResult20: TRLDBResult;
    RLDBResult21: TRLDBResult;
    RLDBResult22: TRLDBResult;
    RLDBResult23: TRLDBResult;
    RLDBResult24: TRLDBResult;
    RLDBResult28: TRLDBResult;
    RLDBResult29: TRLDBResult;
    RLDBResult30: TRLDBResult;
    RLDBText22: TRLDBText;
    Qr_ProgRacaoDia_daSem: TStringField;
    RLLabel9: TRLLabel;
    Qr_ProgRacaoUlt_Semana: TStringField;
    RLDBText23: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Qr_ProgRacaoBeforeOpen(DataSet: TDataSet);
    procedure Qr_ProgRacaoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    PDataIni , PDataFim : TDateTime;
  end;

var
  FrmRelProgRacao: TFrmRelProgRacao;

implementation

{$R *.dfm}

procedure TFrmRelProgRacao.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     Qr_ProgRacao.Close;
     Qr_ProgRacao.Open;
end;

procedure TFrmRelProgRacao.Qr_ProgRacaoBeforeOpen(DataSet: TDataSet);
begin
     Qr_ProgRacao.ParamByName('DataIni').Value := PDataIni;
     Qr_ProgRacao.ParamByName('DataFim').Value := PDataFim;
end;

procedure TFrmRelProgRacao.Qr_ProgRacaoCalcFields(DataSet: TDataSet);
Var DiaSemana : String;
begin
     Case DayOfWeek( Qr_ProgRacaoPROX_ENTREGA_RACAO.Value ) of
        1 : DiaSemana := '(Dom)';
        2 : DiaSemana := '(Seg)';
        3 : DiaSemana := '(Ter)';
        4 : DiaSemana := '(Qua)';
        5 : DiaSemana := '(Qui)';
        6 : DiaSemana := '(Sex)';
        7 : DiaSemana := '(Sab)';
     End;

     Qr_ProgRacaoDia_daSem.Value := DiaSemana ;

     if (Qr_ProgRacaoIDADE.Value >= 35 ) then
        Qr_ProgRacaoUlt_Semana.Value := '*'
     else
         Qr_ProgRacaoUlt_Semana.Value := '';
end;

end.
