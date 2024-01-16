unit uFrmValidaLote;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Spin, StdCtrls, Buttons, ExtCtrls;

type
  TFrmValidaLote = class(TForm)
    PnValidaLote: TPanel;
    Label12: TLabel;
    BtAceitarValidaLote: TBitBtn;
    BtFecharValidaLote: TBitBtn;
    EdValidade: TSpinEdit;
    procedure Fechar_ValidaLote(Sender: TObject);
    procedure Aceita_validacao_valores(Sender: TObject);
  private
    { Private declarations }
  public
    Lote: string;
    Validade: Integer;
    { Public declarations }
  end;

var
  FrmValidaLote: TFrmValidaLote;

implementation

{$R *.dfm}

procedure TFrmValidaLote.Fechar_ValidaLote(Sender: TObject);
begin
  //Fecha a validação
  Lote := '';
  Validade := 0;
  Close;
end;

procedure TFrmValidaLote.Aceita_validacao_valores(Sender: TObject);
begin
  //Validou data e lote
  if EdValidade.Value > 0 then Validade := EdValidade.Value;
  //If EdLote.Text <> '' then Lote := EdLote.Text;
  Close;
end;

end.
