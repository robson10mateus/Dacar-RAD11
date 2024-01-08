unit UfrmDialNFe;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfrmDialNFe = class(TForm)
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
  frmDialNFe: TfrmDialNFe;

implementation

{$R *.dfm}

procedure TfrmDialNFe.edtNumCargaChange(Sender: TObject);
begin
  btnOK.Enabled:= (edtNumCarga.Text <> '');
end;

procedure TfrmDialNFe.FormShow(Sender: TObject);
begin
  //edtNumCarga.Clear;
  chkCon.Checked:= False;
  chkAmb.Checked:= True;
end;

procedure TfrmDialNFe.edtNumCargaKeyPress(Sender: TObject; var Key: Char);
begin
//  if Key = #32 then
  if not (Key in ['0'..'9', #8]) then
    key:= #0;
end;

end.
