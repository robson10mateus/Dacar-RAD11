unit ufrmRelPedidosAbaixoTabela;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, RLPrintDialog, RLSaveDialog, DB, Ora,
  MemDS, DBAccess;

type
  TfrmRelPedidosAbaixoTabela = class(TForm)
    RLReport1: TRLReport;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    lblTitulo: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    imgLogoTipo: TRLImage;
    lblSubTitulo2: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    lblProduto: TRLLabel;
    RLBand2: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand3: TRLBand;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText15: TRLDBText;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPedidosAbaixoTabela: TfrmRelPedidosAbaixoTabela;

implementation

{$R *.dfm}

uses ufrmPedidosAbaixoTabela;

end.
