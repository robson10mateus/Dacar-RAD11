unit UFrmRelConfVenda;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, DB, MemDS, DBAccess, Ora, RLFilters,
  RLRichFilter, RLXLSFilter, RLPrintDialog;

type
  TFrmRelConfVenda = class(TForm)
    RLReport1: TRLReport;
    DSDoa: TOraDataSource;
    RLBand4: TRLBand;
    RLDBVlTotal: TRLDBResult;
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
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLBand8: TRLBand;
    RLDBResult1: TRLDBResult;
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
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBResult15: TRLDBResult;
    RLDBResult16: TRLDBResult;
    RLLabel28: TRLLabel;
    RLDBDesc: TRLDBResult;
    RLVlBruto: TRLLabel;
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
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel7: TRLLabel;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel34: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel35: TRLLabel;
    DT1: TRLLabel;
    RLLabel37: TRLLabel;
    DT2: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel19: TRLLabel;
    imgLogoTipo: TRLImage;
    dtsNaoExpedido: TOraDataSource;
    RLReport2: TRLReport;
    GRUPO_VENDEDOR: TRLGroup;
    HEADER_GRUPO_VENDEDOR: TRLBand;
    RLDraw4: TRLDraw;
    RLLabel42: TRLLabel;
    RLDBText31: TRLDBText;
    FOOTER_2: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    lblUsuario2: TRLLabel;
    CABECALHO_2: TRLBand;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel64: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel65: TRLLabel;
    lblDtInicial: TRLLabel;
    RLLabel67: TRLLabel;
    lblDtFinal: TRLLabel;
    RLImage1: TRLImage;
    GRUPO_ITEM: TRLGroup;
    DETALHES: TRLBand;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    LEGENDAS: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel25: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel36: TRLLabel;
    TOTAL_VENDEDOR: TRLBand;
    RLDBResult3: TRLDBResult;
    RLDBResult13: TRLDBResult;
    RLDBResult14: TRLDBResult;
    RLLabel38: TRLLabel;
    TOTAL_GERAL: TRLBand;
    RLDBResult17: TRLDBResult;
    RLDBResult18: TRLDBResult;
    RLDBResult19: TRLDBResult;
    RLLabel39: TRLLabel;
    lblLegenda: TRLLabel;
    lblProduto: TRLLabel;
    lblQtdePed: TRLLabel;
    lblQtdeExpe: TRLLabel;
    memProduto: TRLMemo;
    memQtdePed: TRLMemo;
    memQtdeExpe: TRLMemo;
    lblDiferenca: TRLLabel;
    memDiferenca: TRLMemo;
    RLDraw6: TRLDraw;
    RLDraw5: TRLDraw;
    RLBand6: TRLBand;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure TOTAL_GERALBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelConfVenda: TFrmRelConfVenda;

implementation

uses UFrmSelRelConfVenda;

{$R *.dfm}

procedure TFrmRelConfVenda.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLVlBruto.Caption := FloatToStrF((RLDBVlTotal.Value + RLDBDesc.Value),ffNumber,15,2);
end;

procedure TFrmRelConfVenda.TOTAL_GERALBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vHeight1, vHeight2: integer;
begin

  if FrmSelRelConfVenda.chkQtdeNaoAtendida.Checked then
    begin
      FrmSelRelConfVenda.qryTotalItensNaoExp.First;
      while not FrmSelRelConfVenda.qryTotalItensNaoExp.Eof do
      begin
        memProduto.Lines.Add(FrmSelRelConfVenda.qryTotalItensNaoExpID_PRODMATEEMBA.AsString + ' - ' + FrmSelRelConfVenda.qryTotalItensNaoExpNM_PRODMATEEMBA.AsString);
        memQtdePed.Lines.Add(FrmSelRelConfVenda.qryTotalItensNaoExpQN_EMBAITEMPEDIVEND.AsString);
        memQtdeExpe.Lines.Add(FrmSelRelConfVenda.qryTotalItensNaoExpQN_EMBAEXPEITEMPEDIVEND.AsString);
        memDiferenca.Lines.Add(FrmSelRelConfVenda.qryTotalItensNaoExpDIF.AsString);
        FrmSelRelConfVenda.qryTotalItensNaoExp.Next;
      end;

      vHeight1:= TOTAL_GERAL.Height;
    end
  else
  begin
    TOTAL_GERAL.Height:= 25;
    memProduto.Visible:= False;
    memQtdePed.Visible:= False;
    memQtdeExpe.Visible:= False;
    memDiferenca.Visible:= False;
    lblLegenda.Visible:= False;
  end;
end;

procedure TFrmRelConfVenda.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if not(RLDBText6.Field.Value = null) then
    RLLabel40.Caption:= RLDBText6.Field.Value;
end;

end.
