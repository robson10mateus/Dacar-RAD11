{************ CR�DITOS DO SISTEMA *************
* Desenvolvido por: Edmilde Freire Montagnoli *
* Desenvolvido para: C�u Azul Alimentos       *
* Inicio: 25/07/2010 * Vers�o: 1.0.0.0        *
**********************************************}

unit FrLEtiqueta;

interface

uses

  Dialogs, StdCtrls, jpeg, ExtCtrls, RLReport;

type
  TFrmLEtiqueta = class(TForm)
    RLImpresso00: TRLReport;
    RLDetalhe00: TRLBand;
    RLEtiqueta00: TRLImage;
    RLLote: TRLAngleLabel;
    RLValidade: TRLAngleLabel;
    RLBarras: TRLAngleLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLEtiqueta: TFrmLEtiqueta;

implementation

{$R *.dfm}

end.
