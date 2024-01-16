unit uFrmValidaLote_;

interface

uses

  Dialogs, Spin, StdCtrls, Buttons, ExtCtrls;

type
  TFrmValidaLote_ = class(TForm)
    PnValidaLote: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    EdLote: TEdit;
    BtAceitarValidaLote: TBitBtn;
    BtFecharValidaLote: TBitBtn;
    EdValidade: TSpinEdit;
    procedure Fechar_ValidaLote(Sender: TObject);
    procedure Aceita_validacao_valores(Sender: TObject);
  private
    { Private declarations }
  public
    Lote : String;
    Validade : Integer;
    { Public declarations }
  end;

var
  FrmValidaLote_: TFrmValidaLote_;

implementation

{$R *.dfm}

procedure TFrmValidaLote_.Fechar_ValidaLote(Sender: TObject);
begin
  //Fecha a validação
  Lote := '';
  Validade := 0;
  Close;
end;

procedure TFrmValidaLote_.Aceita_validacao_valores(Sender: TObject);
begin
  //Validou data e lote
  If EdValidade.Value > 0 then Validade := EdValidade.Value;
  If EdLote.Text <> '' then Lote := EdLote.Text;
  Close;
end;

end.
