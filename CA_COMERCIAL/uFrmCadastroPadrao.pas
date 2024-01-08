unit uFrmCadastroPadrao;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF}, Types, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ExtCtrls;

type
  TfrmCadastroPadrao = class(TForm)
    pnlBotoes: TPanel;
    PageControl1: TPageControl;
    tbsFiltro: TTabSheet;
    tbsDados: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    btnPrimeiro: TSpeedButton;
    btnAnterior: TSpeedButton;
    btnProximo: TSpeedButton;
    btnUltimo: TSpeedButton;
    btnIncluir: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    btnPesquisar: TSpeedButton;
    btnImprimir: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;

implementation

{$R *.dfm}

procedure TfrmCadastroPadrao.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
