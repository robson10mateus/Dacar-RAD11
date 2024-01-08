unit UFrmRelSaldoCaixas;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, RLXLSFilter, RLFilters, RLPDFFilter,
  RLSaveDialog;

type
  TFrmRelSaldoCaixas = class(TForm)
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel1: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLBand2: TRLBand;
    RLLabel8: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel9: TRLLabel;
    RLDBResult2: TRLDBResult;
    grpGrupo: TRLGroup;
    RLBand7: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLBand4: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel34: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLImage1: TRLImage;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    procedure lbl_EmpresaBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelSaldoCaixas: TFrmRelSaldoCaixas;

implementation

Uses global, UFrmSaldoCaixas ;

{$R *.dfm}

procedure TFrmRelSaldoCaixas.lbl_EmpresaBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     Text := gs_Unidade;
end;

end.
