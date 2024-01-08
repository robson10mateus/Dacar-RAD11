unit USeleFile;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, jpeg;

type
  TFrmSeleFile = class(TForm)
    Label1: TLabel;
    EdArq: TEdit;
    BitBtn1: TBitBtn;
    procedure DTVDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Cria_FrmSeleFile(var VArq:String): boolean;

var
  FrmSeleFile: TFrmSeleFile;

implementation

uses Global;

{$R *.dfm}

procedure TFrmSeleFile.DTVDblClick(Sender: TObject);
 var
  tam:integer;
begin
//  tam:=length(dtv.Directory);
//  EdArq.Text:= copy(dtv.Directory,1,tam-1);
end;

procedure TFrmSeleFile.BitBtn1Click(Sender: TObject);
begin
//  FrmExpoFiscal.edtPath.Text:= EdArq.Text;
//  close;
end;

function Cria_FrmSeleFile(var VArq:String): boolean;
begin
  try
    FrmSeleFile := TFrmSeleFile.Create(Application);
    Result := FrmSeleFile.ShowModal = mrOk;
    if Result then
      VArq := FrmSeleFile.EdArq.Text
    else
      VArq := '';
  finally
    FrmSeleFile.Release;
    FrmSeleFile := nil;
  end;
end;


end.
