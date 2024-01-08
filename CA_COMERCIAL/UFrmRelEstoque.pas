unit UFrmRelEstoque;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, RLSaveDialog, RLFilters, RLXLSFilter,
  RLPrintDialog, RLParser;

type
  TFrmRelEstoque = class(TForm)
    RLReport1: TRLReport;
    RLExpressionParser1: TRLExpressionParser;
    RLXLSFilter1: TRLXLSFilter;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    lblTitulo: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand4: TRLBand;
    RLLabel11: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLBand2: TRLBand;
    lblCodigo: TRLLabel;
    lblProduto: TRLLabel;
    lblCaixas: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLDBResult7: TRLDBResult;
    grpDiario: TRLGroup;
    RLDBText15: TRLDBText;
    RLMemo1: TRLMemo;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    imgLogoTipo: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBResult13: TRLDBResult;
    RLDBResult14: TRLDBResult;
    RLDBResult15: TRLDBResult;
    RLDBResult16: TRLDBResult;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelEstoque: TFrmRelEstoque;

implementation

{$R *.dfm}
uses UFrmConsultaEstoque, Global ;

procedure TFrmRelEstoque.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//     lbl_Unidade.Caption := gs_Unidade;
end;

end.
