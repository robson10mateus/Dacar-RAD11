unit UfrmDialCTe;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmDialCTe = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    btnOK: TBitBtn;
    btnCan: TBitBtn;
    chkCon: TCheckBox;
    edtNumCarga: TEdit;
    chkAmb: TCheckBox;
    procedure edtNumCargaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNumCargaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDialCTe: TfrmDialCTe;

implementation

{$R *.dfm}

procedure TfrmDialCTe.edtNumCargaChange(Sender: TObject);
begin
  btnOK.Enabled:= (edtNumCarga.Text <> '');
end;

procedure TfrmDialCTe.FormShow(Sender: TObject);
begin
  chkCon.Checked:= False;
  chkAmb.Checked:= True;
end;

procedure TfrmDialCTe.edtNumCargaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    key:= #0;
end;

end.
