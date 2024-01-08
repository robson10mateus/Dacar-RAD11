unit UFrmRelSaidaCarga;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, DB, Ora, MemDS, DBAccess, RLPrintDialog;

type
  TFrmRelSaidaCarga = class(TForm)
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    QrSAIDACARGA: TOraQuery;
    DSSAIDACARGA: TOraDataSource;
    RLBand4: TRLBand;
    lbltitulo: TRLLabel;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand1: TRLBand;
    Declaracao: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText13: TRLDBText;
    RLMemo1: TRLMemo;
    QrSAIDACARGAEMPRESA: TStringField;
    QrSAIDACARGAFILIAL: TIntegerField;
    QrSAIDACARGAID_CARGEXPE: TFloatField;
    QrSAIDACARGAGN_PLACVEICTRAN: TStringField;
    QrSAIDACARGAFL_IMPRCARGEXPE: TStringField;
    QrSAIDACARGAID_FORNECEDOR: TFloatField;
    QrSAIDACARGANM_FORNECEDOR: TStringField;
    QrSAIDACARGAID_PEDIVEND: TFloatField;
    QrSAIDACARGAQN_PESOPEDIVEND: TFloatField;
    QrSAIDACARGAQN_PESOBRUTPEDIVEND: TFloatField;
    QrSAIDACARGAQN_EMBAPEDIVEND: TIntegerField;
    QrSAIDACARGAID_CLIENTE: TFloatField;
    QrSAIDACARGANM_FANTCLIE: TStringField;
    QrSAIDACARGANM_REDUCLIE: TStringField;
    QrSAIDACARGANM_TIPOPEDIVEND: TStringField;
    QrSAIDACARGAID_SUBRLOGI: TFloatField;
    QrSAIDACARGANM_SUBRLOGI: TStringField;
    QrSAIDACARGAFL_STATPEDIVEND: TStringField;
    QrSAIDACARGANM_BAIRRO: TStringField;
    QrSAIDACARGANM_CIDADE: TStringField;
    QrSAIDACARGANM_TIPOVEIC: TStringField;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    lblTransportadora: TRLLabel;
    RLLabel5: TRLLabel;
    lblAutorizado: TRLLabel;
    lblDDataHora_Autorizacao: TRLLabel;
    RLLabel7: TRLLabel;
    lblMotorista: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    Totais: TRLBand;
    RLLabel14: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel15: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLLabel16: TRLLabel;
    RLDBResult3: TRLDBResult;
    Assinaturas: TRLBand;
    lblAssMotorista: TRLLabel;
    lblAssAutorizante: TRLLabel;
    QrSAIDACARGAID_CIDADE: TFloatField;
    imgLogoTipo: TRLImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelSaidaCarga: TFrmRelSaidaCarga;

implementation

{$R *.dfm}

end.
