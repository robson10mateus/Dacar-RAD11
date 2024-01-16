{************ CRÉDITOS DO SISTEMA *************
* Desenvolvido por: Edmilde Freire Montagnoli *
* Desenvolvido para: Céu Azul Alimentos       *
* Inicio: 25/07/2010 * Versão: 1.0.0.0        *
**********************************************}

unit uFrmEtiqueta_;

interface

uses

  Dialogs, StdCtrls, jpeg, ExtCtrls, RLReport, RLBarcode, QuickRpt, QRCtrls,
  RpDefine, RpRave;

type
  TFrmEtiqueta_ = class(TForm)
    procedure Antes_imprimir_etiqueta(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEtiqueta_: TFrmEtiqueta_;

implementation

{$R *.dfm}

procedure TFrmEtiqueta_.Antes_imprimir_etiqueta(Sender: TObject;
  var PrintIt: Boolean);
begin
  //Define o tamanho e a posição do codigo de barras
  RLBarras.Left   := 195;
  //RLBarras.Top    := 383;
  //RLBarras.Top    := 395;
  RLBarras.Top    := 340;
  RLBarras.Height := 220;
  RLBarras.Width  := 64;
end;

end.
