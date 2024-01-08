unit ufrmCanhotosNFe;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, MemDS, DBAccess, Ora, RLReport, RLPrintDialog;

type
  TfrmCanhotosNfe = class(TForm)
    RLReport1: TRLReport;
    Cabecalho01: TRLBand;
    qryCanhotosNfe: TOraQuery;
    dtsCanhotosNfe: TOraDataSource;
    qryCanhotosNfeID_CARGEXPE: TFloatField;
    qryCanhotosNfeNR_NOTAFISC: TFloatField;
    qryCanhotosNfeDT_CARGEXPE: TDateTimeField;
    qryCanhotosNfeDESCR: TStringField;
    qryCanhotosNfeENDERECO: TStringField;
    qryCanhotosNfeCNPJ_IE: TStringField;
    lblEntrega: TRLLabel;
    lblPlaca: TRLLabel;
    lblMotorista: TRLLabel;
    edtDataCarga: TRLDBText;
    edtPlaca: TRLDBText;
    RLDraw2: TRLDraw;
    Detalhes: TRLBand;
    qryCanhotosNfePLACA: TStringField;
    RLPanel3: TRLPanel;
    RLDBText1: TRLDBText;
    RLPanel1: TRLPanel;
    RLPanel2: TRLPanel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLPanel4: TRLPanel;
    RLLabel3: TRLLabel;
    RLPanel5: TRLPanel;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    qryCanhotosNfePEDIDO: TStringField;
    RLBand4: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw3: TRLDraw;
    imgLogoTipo: TRLImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCanhotosNfe: TfrmCanhotosNfe;

implementation

{$R *.dfm}
uses Principal;

end.
