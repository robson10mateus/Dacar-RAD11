{************ CRÉDITOS DO SISTEMA *************
* Revisado por: Edmilde Freire Montagnoli     *
* Desenvolvido para: Céu Azul Alimentos       *
* Inicio: 25/07/2010 * Versão: 1.0.0.0        *
**********************************************}

unit uFrmSenhaAcesso;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmSenhaAcesso = class(TForm)
    btnOk: TButton;
    btnSair: TButton;
    Label2: TLabel;
    edtSenha: TEdit;
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btnOkClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  //function CriaForm_FrmSenhaAcesso: String;

var
  FrmSenhaAcesso: TFrmSenhaAcesso;

implementation

{$R *.dfm}

{
function CriaForm_FrmSenhaAcesso: String;
begin
  try
    FrmSenhaAcesso := TFrmSenhaAcesso.Create(Application);
    FrmSenhaAcesso.ShowModal;
    Result := FrmSenhaAcesso.edtSenha.Text;
  finally
    FreeAndNil(FrmSenhaAcesso);
  end;
end;
}

procedure TFrmSenhaAcesso.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnOk.Click;
end;

procedure TFrmSenhaAcesso.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSenhaAcesso.btnSairClick(Sender: TObject);
begin
  {try
    DeleteFile('C:\CaaSistemas\Producao\producao.ini');
  except
    //
  end;}

  edtSenha.Text := 'xes';
  Close;
end;

procedure TFrmSenhaAcesso.FormShow(Sender: TObject);
begin
  edtSenha.SetFocus;
end;

end.
