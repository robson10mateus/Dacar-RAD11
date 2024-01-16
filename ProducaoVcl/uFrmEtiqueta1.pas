{************ CRÉDITOS DO SISTEMA *************
* Desenvolvido por: Edmilde Freire Montagnoli *
* Desenvolvido para: Céu Azul Alimentos       *
* Inicio: 25/07/2010 * 03/09/2010             *
**********************************************}

unit uFrmEtiqueta1;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, RLReport, RLBarcode;

type
  TFrmEtiqueta1 = class(TForm)
    RLImpresso01: TRLReport;
    RLDetalhe01: TRLBand;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLCeu: TRLLabel;
    RLEAN: TRLLabel;
    RLCodigo: TRLLabel;
    RLDescricao: TRLLabel;
    RLPeso: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLBarras: TRLImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEtiqueta1: TFrmEtiqueta1;

implementation

{$R *.dfm}

end.
