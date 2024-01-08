unit UFrmRelEstoquePeriodo;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLPrintDialog, RLParser, RLSaveDialog, RLFilters,
  RLXLSFilter, RLReport, DB, Ora, MemDS, DBAccess;

type
  TFrmRelEstoquePeriodo = class(TForm)
    RLReport1: TRLReport;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    lblTitulo: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    lblCodigo: TRLLabel;
    lblProduto: TRLLabel;
    lblCaixas: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLXLSFilter1: TRLXLSFilter;
    RLExpressionParser1: TRLExpressionParser;
    qryEstoquePeriodo: TOraQuery;
    dtsEstoquePeriodo: TOraDataSource;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    qryEstoquePeriodoEMPRESA: TStringField;
    qryEstoquePeriodoFILIAL: TIntegerField;
    qryEstoquePeriodoID_MATERIAL: TFloatField;
    qryEstoquePeriodoID_PRODMATEEMBA: TStringField;
    qryEstoquePeriodoNM_PRODMATEEMBA: TStringField;
    qryEstoquePeriodoCX_PRODUZIDO: TFloatField;
    qryEstoquePeriodoKG_PRODUZIDO: TFloatField;
    qryEstoquePeriodoCX_DEVOLUCAO: TFloatField;
    qryEstoquePeriodoKG_DEVOLUCAO: TFloatField;
    qryEstoquePeriodoCX_EXPEDIDO: TFloatField;
    qryEstoquePeriodoKG_EXPEDIDO: TFloatField;
    qryEstoquePeriodoCX_AJUSTE: TFloatField;
    qryEstoquePeriodoKG_AJUSTE: TFloatField;
    RLLabel1: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLBand4: TRLBand;
    RLLabel11: TRLLabel;
    RLDBResult2: TRLDBResult;
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
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    dtsSaldoAnterior: TOraDataSource;
    qrySaldoAnterior: TOraQuery;
    RLDBText6: TRLDBText;
    RLDBText10: TRLDBText;
    qrySaldoAnteriorID_MATERIAL: TFloatField;
    qrySaldoAnteriorID_PRODMATEEMBA: TStringField;
    qrySaldoAnteriorESTOQUE_ANT_CX: TFloatField;
    qrySaldoAnteriorESTOQUE_ANT: TFloatField;
    dtsSaldoDisponivel: TOraDataSource;
    qrySaldoDisponivel: TOraQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    qrySaldoDisponivelNVLPECX_ESTOQUE_ATUAL0: TFloatField;
    qrySaldoDisponivelNVLPEKG_ESTOQUE_ATUAL0: TFloatField;
    imgLogoTipo: TRLImage;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelEstoquePeriodo: TFrmRelEstoquePeriodo;

implementation

uses UFrmConsultaEstoque, Global, Principal ;

{$R *.dfm}

procedure TFrmRelEstoquePeriodo.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  qrySaldoAnterior.Close;
  qrySaldoAnterior.ParamByName('Data_Ini').Value := FrmConsultaEstoque.edtDataInicial.EditText;
  qrySaldoAnterior.ParamByName('Material').Value := qryEstoquePeriodoID_MATERIAL.Value;
  qrySaldoAnterior.ParamByName('Produto').Value := qryEstoquePeriodoID_PRODMATEEMBA.Value;
  qrySaldoAnterior.Open;

  qrySaldoDisponivel.Close;
  qrySaldoDisponivel.ParamByName('Data_Fin').Value := FrmConsultaEstoque.edtDataFinal.EditText;
  qrySaldoDisponivel.ParamByName('Material').Value := qryEstoquePeriodoID_MATERIAL.Value;
  qrySaldoDisponivel.ParamByName('Produto').Value := qryEstoquePeriodoID_PRODMATEEMBA.Value;
  qrySaldoDisponivel.Open;

end;

end.
