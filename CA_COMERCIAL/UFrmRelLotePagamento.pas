unit UFrmRelLotePagamento;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, RLPrintDialog, RLParser, RLReport, DB, Ora, MemDS,
  DBAccess;

type
  TFrmRelLotePagamento = class(TForm)
    RLReport1: TRLReport;
    RLExpressionParser1: TRLExpressionParser;
//    RLPrintDialogSetup1: TRLPrintDialogSetup;
    RLB_Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDraw1: TRLDraw;
    Qr_Fechamento: TOraQuery;
    Ds_Fechamento: TOraDataSource;
    Qr_FechamentoID_LOTE: TFloatField;
    Qr_FechamentoDATA_ALOJAMENTO: TDateTimeField;
    Qr_FechamentoFL_STATUS: TStringField;
    Qr_FechamentoNM_FORNECEDOR: TStringField;
    Qr_FechamentoAVES_ALOJ: TFloatField;
    Qr_FechamentoAVES_ABAT: TFloatField;
    Qr_FechamentoTOT_KG: TFloatField;
    Qr_FechamentoMORTALIDADE: TFloatField;
    Qr_FechamentoDIF_MORT: TFloatField;
    Qr_FechamentoPESO_MEDIO: TFloatField;
    Qr_FechamentoIDADE: TFloatField;
    Qr_FechamentoVIABILIDADE: TFloatField;
    Qr_FechamentoVL_PAGTO: TFloatField;
    Qr_FechamentoDATA_PAGTO: TDateTimeField;
    Qr_FechamentoSOBRA_RACAO: TFloatField;
    Qr_FechamentoCONV_ALIMENTAR: TFloatField;
    Qr_FechamentoGANHO_PESO_DIA: TFloatField;
    Qr_FechamentoIEP: TFloatField;
    Qr_FechamentoPRECO_AVE: TFloatField;
    Qr_FechamentoRACAO_CONSUMIDA: TFloatField;
    RLDBText2: TRLDBText;
    RLBand1: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
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
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel20: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    Qr_LanctoAcr: TOraQuery;
    Ds_LanctoAcr: TOraDataSource;
    Qr_LanctoAcrID_LOTE: TFloatField;
    Qr_LanctoAcrID_LANCLOTE: TFloatField;
    Qr_LanctoAcrTIPO: TStringField;
    Qr_LanctoAcrDESC_LANC: TStringField;
    Qr_LanctoAcrVALOR_LANC: TFloatField;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLBand4: TRLBand;
    RLLabel24: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDraw3: TRLDraw;
    RLBand5: TRLBand;
    RLLabel25: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    Qr_LanctoDesc: TOraQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField3: TFloatField;
    Ds_LanctoDesc: TOraDataSource;
    RLSubDetail2: TRLSubDetail;
    RLDraw23: TRLDraw;
    RLBand6: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLBand7: TRLBand;
    RLDBText20: TRLDBText;
    RLDBText23: TRLDBText;
    RLBand8: TRLBand;
    RLLabel33: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLLabel34: TRLLabel;
    RLDBText24: TRLDBText;
    Qr_FechamentoSTATUS: TStringField;
    RLLabel35: TRLLabel;
    RLDBText25: TRLDBText;
    Qr_FechamentoDT_FECHAMENTO: TDateTimeField;
    Qr_FechamentoCNPJ: TStringField;
    RLLabel36: TRLLabel;
    RLDBText26: TRLDBText;
    Qr_FechamentoID_TECNICO: TFloatField;
    Qr_FechamentoNOME_TECNICO: TStringField;
    Qr_FechamentoDESC_LINHAGEM: TStringField;
    Qr_FechamentoORIGEM_AVES: TStringField;
    RLLabel37: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel38: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText29: TRLDBText;
    Qr_FechamentoMORT_PRIM_SEMANA: TFloatField;
    RLLabel40: TRLLabel;
    RLDBText30: TRLDBText;
    Qr_FechamentoDESC_NUCLEO: TStringField;
    RLDBText31: TRLDBText;
    Qr_FechamentoVALOR_PINTAINHO: TFloatField;
    RLLabel41: TRLLabel;
    RLDBText32: TRLDBText;
    Qr_FechamentoNM_BAIRFORN: TStringField;
    Qr_FechamentoNM_CIDADE: TStringField;
    RLLabel43: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel44: TRLLabel;
    RLDBText35: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
     PID_LOTE : integer ;
  end;

var
  FrmRelLotePagamento: TFrmRelLotePagamento;

implementation

{$R *.dfm}

procedure TFrmRelLotePagamento.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     Qr_Fechamento.Close;
     Qr_Fechamento.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_Fechamento.Open;

     Qr_LanctoAcr.Close;
     Qr_LanctoAcr.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_LanctoAcr.Open;

     Qr_LanctoDesc.Close;
     Qr_LanctoDesc.ParamByName('ID_LOTE').Value := PID_LOTE;
     Qr_LanctoDesc.Open;
end;

end.
