{************ CRÉDITOS DO SISTEMA *************
* Revisado por: Edmilde Freire Montagnoli     *
* Desenvolvido para: Céu Azul Alimentos       *
* Inicio: 25/07/2010 * Versão: 1.0.0.0        *
**********************************************}

unit uFrmRegAtual;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls;

type
  TFrmRegAtual = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    PB1: TProgressBar;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRegAtual: TFrmRegAtual;

implementation

{$R *.dfm}

procedure TFrmRegAtual.Timer1Timer(Sender: TObject);
begin
  PB1.Step := PB1.Step + 1;
  if PB1.Position = 100 then PB1.Position := 0;
end;

end.
