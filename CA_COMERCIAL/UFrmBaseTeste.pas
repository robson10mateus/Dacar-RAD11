unit UFrmBaseTeste;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmBaseTeste = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBaseTeste: TFrmBaseTeste;

implementation

uses USenha;

{$R *.dfm}

procedure TFrmBaseTeste.BitBtn1Click(Sender: TObject);
begin
  If  Edit1.Text = '191991' then
   begin
    Fenha.VBT:='S';
   end
  Else
   begin
    Fenha.VBT:='N';
   end;
  BitBtn2.Click;
end;

end.
