unit UFrmRelValeCaixa;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, DB, Ora, MemDS, DBAccess, RLPrintDialog,
  RLParser, RLSaveDialog, RLFilters, RLXLSFilter;

type
  TFrmRelValeCaixa = class(TForm)
    RLReport1: TRLReport;
    RLXLSFilter1: TRLXLSFilter;
    RLExpressionParser1: TRLExpressionParser;
    Qr_Vale: TOraQuery;
    Ds_Vale: TOraDataSource;
    RLBand1: TRLBand;
    RLPanel1: TRLPanel;
    RLPanel2: TRLPanel;
    RLLabel1: TRLLabel;
    lbl_Unidade: TRLLabel;
    RLImage1: TRLImage;
    lbl_Rua: TRLLabel;
    lbl_Bairro: TRLLabel;
    Lbl_Fone: TRLLabel;
    Lbl_CEP: TRLLabel;
    Lbl_CNPJ: TRLLabel;
    Lbl_IE: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLMemo1: TRLMemo;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    Qr_ValeID_VALE: TFloatField;
    Qr_ValeDATA_ENTREGA: TDateTimeField;
    Qr_ValeVENDEDOR: TStringField;
    Qr_ValeCLIENTE: TStringField;
    Qr_ValeFONE_CLI: TStringField;
    Qr_ValeENDERECO: TStringField;
    Qr_ValeBAIRRO: TStringField;
    Qr_ValeCNPJ_CPF: TStringField;
    Qr_ValeIE_RG: TStringField;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel14: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText13: TRLDBText;
    Qr_ValeQTD_ENTREGUE: TFloatField;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    Qr_ValeSALDO_ANTERIOR: TFloatField;
    RLPanel3: TRLPanel;
    RLPanel4: TRLPanel;
    RLLabel2: TRLLabel;
    RLDraw10: TRLDraw;
    lbl_Bairro1: TRLLabel;
    RLImage2: TRLImage;
    lbl_Unidade1: TRLLabel;
    lbl_Rua1: TRLLabel;
    Lbl_CEP1: TRLLabel;
    Lbl_Fone1: TRLLabel;
    Lbl_CNPJ1: TRLLabel;
    Lbl_IE1: TRLLabel;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLMemo2: TRLMemo;
    RLLabel26: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel28: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLDraw16: TRLDraw;
    RLLabel37: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel38: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLDBText26: TRLDBText;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    Qr_ValeNR_NOTAFISC: TFloatField;
    Qr_ValeSERIE_NF: TStringField;
    lbl_NotaFISC1: TRLLabel;
    lbl_NotaFISC2: TRLLabel;
    Qr_ValeSALDO: TFloatField;
    procedure lbl_NotaFISC1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure lbl_NotaFISC2BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLMemo1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLMemo2BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelValeCaixa: TFrmRelValeCaixa;

implementation

{$R *.dfm}

procedure TFrmRelValeCaixa.lbl_NotaFISC1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     if ( Qr_ValeNR_NOTAFISC.IsNull ) then
     begin
          lbl_NotaFISC1.Visible := false;
     end
     else
     begin
          lbl_NotaFISC1.Visible := true;
          Text := 'NF. ' + Qr_ValeNR_NOTAFISC.AsString +'-'+Qr_ValeSERIE_NF.AsString;
     end;
end;

procedure TFrmRelValeCaixa.lbl_NotaFISC2BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     if ( Qr_ValeNR_NOTAFISC.IsNull ) then
     begin
          lbl_NotaFISC2.Visible := false;
     end
     else
     begin
          lbl_NotaFISC2.Visible := true;
          Text := 'NF. ' + Qr_ValeNR_NOTAFISC.AsString +'-'+Qr_ValeSERIE_NF.AsString;
     end;
end;

procedure TFrmRelValeCaixa.RLMemo1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     if ( not Qr_ValeNR_NOTAFISC.IsNull ) then
     begin
          Text := Text + ' Referente a Nota Fiscal ' + Qr_ValeNR_NOTAFISC.AsString +'-'+Qr_ValeSERIE_NF.AsString +' .';
     end
end;

procedure TFrmRelValeCaixa.RLMemo2BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     if ( not Qr_ValeNR_NOTAFISC.IsNull ) then
     begin
          Text := Text + ' Referente a Nota Fiscal ' + Qr_ValeNR_NOTAFISC.AsString +'-'+Qr_ValeSERIE_NF.AsString +' .';
     end
end;

end.
