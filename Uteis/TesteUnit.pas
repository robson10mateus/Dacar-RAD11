unit TesteUnit;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF}, Types, Graphics, Controls, Forms, 
  Dialogs, StdCtrls;

type
  TfrmTesteUtils = class(TForm)
    btnTestLogin: TButton;
    procedure btnTestLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTesteUtils: TfrmTesteUtils;

implementation

  uses uFrmSenha, uUtil;

{$R *.dfm}

procedure TfrmTesteUtils.btnTestLoginClick(Sender: TObject);
begin
  try
    frmSenha := TFrmSenha.Create(Self, 0, '1.0.0');
    frmSenha.ShowModal;
  finally
    FreeAndNil(frmSenha);
  end;                     
end;

end.
