unit UFrmRelHistCaixas;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, RLSaveDialog, RLFilters, RLXLSFilter, DB,
  Ora, UfrmControleCaixas;

type
  TFrmRelHistCaixas = class(TForm)
    RLReport1: TRLReport;
    Cabecalho: TRLBand;
    lblEmpresa: TRLLabel;
    lblTitulo: TRLLabel;
    TotalizadorCliente: TRLBand;
    lblSaldoAtual: TRLLabel;
    edtSaldoAtual: TRLDBResult;
    Grupo_Cliente: TRLGroup;
    CabecalhoGrupo: TRLBand;
    lblCliente: TRLLabel;
    edtNomeCliente: TRLDBText;
    GrupoVeiculo: TRLGroup;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText8: TRLDBText;
    RLDraw4: TRLDraw;
    RLBand5: TRLBand;
    RLDBText9: TRLDBText;
    RLDBText12: TRLDBText;
    DetalhesCliente: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand6: TRLBand;
    RLLabel8: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLDraw1: TRLDraw;
    lblNvale: TRLLabel;
    lblQtdEntreg: TRLLabel;
    lblDtEntreg: TRLLabel;
    lblQtDev: TRLLabel;
    lblDtDev: TRLLabel;
    lblSaldo: TRLLabel;
    RLDraw6: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw5: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    lblPagina: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText11: TRLDBText;
//    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
   VCAIXAS: DOUBLE;
  end;

var
  FrmRelHistCaixas: TFrmRelHistCaixas;

implementation

{$R *.dfm}

//procedure TFrmRelHistCaixas.RLBand6BeforePrint(Sender: TObject;
//  var PrintIt: Boolean);
//begin
//
//    VCAIXAS := 0.35 * RLDBResult2.Value;
//    LVLCAIXAS.Caption := FLOATTOSTRF(VCAIXAS,ffNumber,15,2);
//end;

end.
