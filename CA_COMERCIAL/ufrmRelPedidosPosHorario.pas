unit ufrmRelPedidosPosHorario;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, RLReport, DB, Ora, MemDS, DBAccess, RLPrintDialog,
  RLSaveDialog;

type
  TfrmRelPedidosPosHorario = class(TForm)
    RLReport1: TRLReport;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    lblTitulo: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
//    RLSaveDialogSetup1: TRLSaveDialogSetup;
//    RLPrintDialogSetup1: TRLPrintDialogSetup;
    lblSubTitulo2: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel1: TRLLabel;
    lblProduto: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText4: TRLDBText;
    Footer: TRLBand;
    data_hora_geracao_rel: TRLSystemInfo;
    lblUsuario: TRLLabel;
    imgLogoTipo: TRLImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPedidosPosHorario: TfrmRelPedidosPosHorario;

implementation

{$R *.dfm}
uses ufrmPedidosPosHorario;

end.
