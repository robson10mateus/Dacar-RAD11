unit UFrmRelConfVenCarga;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, DB, MemDS, DBAccess, Ora, RLFilters,
  RLRichFilter, RLXLSFilter, RLPrintDialog;

type
  TFrmRelConfVenCarga = class(TForm)
    RLReport1: TRLReport;
    DSDoa: TOraDataSource;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLGroup3: TRLGroup;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel23: TRLLabel;
    RLDBText17: TRLDBText;
    RLBand5: TRLBand;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText22: TRLDBText;
    RLBand8: TRLBand;
    RLLabel27: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLLabel4: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLDBText11: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText13: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel31: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText23: TRLDBText;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand6: TRLBand;
    RLMemo1: TRLMemo;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel13: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel14: TRLLabel;
    DT1: TRLLabel;
    RLLabel29: TRLLabel;
    DT2: TRLLabel;
    RLLabel17: TRLLabel;
    imgLogoTipo: TRLImage;
    procedure RLMemo1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelConfVenCarga: TFrmRelConfVenCarga;

implementation

uses UFrmSelRelConfVenda;

{$R *.dfm}

procedure TFrmRelConfVenCarga.RLMemo1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     Text := StringReplace( FrmSelRelConfVenda.QrGN_OBSEEXPEPEDIVEND.AsString , #13#10 , ' / ', [rfReplaceAll] );
end;

procedure TFrmRelConfVenCarga.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Trim(FrmSelRelConfVenda.QrGN_OBSEEXPEPEDIVEND.AsString) = '' then
    RLBand6.Visible := False;
end;

end.
