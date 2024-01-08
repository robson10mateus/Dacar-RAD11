unit ConfSenha;

interface

uses

  StdCtrls, FMX.Forms, Vcl.Buttons, Vcl.Controls, System.Classes;

type
  TFrmConfSenha = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfSenha: TFrmConfSenha;

implementation

uses Global;

{$R *.dfm}

procedure TFrmConfSenha.BitBtn1Click(Sender: TObject);
begin
GlbSenha:=Edit1.Text;
Close;
end;

procedure TFrmConfSenha.FormShow(Sender: TObject);
begin
Edit1.Clear;
Edit1.SetFocus;
end;

procedure TFrmConfSenha.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
BitBtn1Click(Sender);
end;

end.
