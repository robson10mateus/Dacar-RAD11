{************ CRÉDITOS DO SISTEMA *************
* Desenvolvido por: Edmilde Freire Montagnoli *
* Desenvolvido para: Céu Azul Alimentos       *
* Inicio: 25/07/2010 * Versão: 1.0.0.0        *
**********************************************}

unit uFrmEtiqueta;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, RLReport, RLBarcode;

type
  TFrmEtiqueta = class(TForm)
    RLImpresso00: TRLReport;
    RLDetalhe00: TRLBand;
    RLEtiqueta00: TRLImage;
    RLLote: TRLAngleLabel;
    RLValidade: TRLAngleLabel;
    RLBarras: TRLImage;
    RLEAN: TRLAngleLabel;
    RLCodigo: TRLAngleLabel;
    Bar_Varejo: TRLBarcode;
    RLBarraVar: TRLImage;
    procedure Antes_imprimir_etiqueta(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEtiqueta: TFrmEtiqueta;

implementation

{$R *.dfm}

procedure TFrmEtiqueta.Antes_imprimir_etiqueta(Sender: TObject;
  var PrintIt: Boolean);
begin
  {//Define o tamanho e a posição do codigo de barras
  RLBarras.Left   := 187;
  //RLBarras.Top    := 383;
  //RLBarras.Top    := 395;
  RLBarras.Top    := 403;
  RLBarras.Height := 169;
  RLBarras.Width  := 83;

  RLBarraVar.Left   := 249;
  RLBarraVar.Top    := 98 ;
  RLBarraVar.Height := 101;
  RLBarraVar.Width  := 50 ;
   }
end;

end.
