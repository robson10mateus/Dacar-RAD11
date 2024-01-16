{************ CRÉDITOS DO SISTEMA *************
* Desenvolvido por: Edmilde Freire Montagnoli *
* Desenvolvido para: Céu Azul Alimentos       *
* Inicio: 25/07/2010 * Versão: 1.0.0.0        *
**********************************************}

unit FrLEtiqueta1;

interface

uses

  Dialogs, StdCtrls, jpeg, ExtCtrls, RLReport;

type
  TFrmLEtiqueta1 = class(TForm)
    RLImpresso01: TRLReport;
    RLDetalhe01: TRLBand;
    RLBarras: TRLLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLEtiqueta1: TFrmLEtiqueta1;

implementation

{$R *.dfm}

end.
