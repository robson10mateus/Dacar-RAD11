unit UFrmSeldata;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, Vcl.Samples.Spin;

type
  TFrmSelData = class(TForm)
    SEDia: TSpinEdit;
    SEMes: TSpinEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SeAno: TEdit;
    Panel2: TPanel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    Vdata:string;
  end;

function Cria_FrmSelData(var VData:String): boolean;

var
  FrmSelData: TFrmSelData;

implementation

uses global;

{$R *.dfm}

procedure TFrmSelData.FormActivate(Sender: TObject);
var
  Present: TDateTime;
  Year, Month, Day : Word;
 begin
  Present:= Now;
  DecodeDate(Present, Year, Month, Day);

  SEDia.Value := Day;
  SEMes.Value := Month;
  SEAno.text  := inttostr(Year);
end;

function Cria_FrmSelData(var VData:String): boolean;
begin
  try
    FrmSelData := TFrmSelData.Create(Application);
    Result := FrmSelData.ShowModal = mrOk;
    if Result then
      VData := IntToStr(FrmSelData.SEDia.Value) + '/'+ inttostr(FrmSelData.SEMes.Value) + '/' + FrmSelData.SEAno.text
    else
      Vdata := '';
  finally
    FrmSelData.Release;
    FrmSelData := nil;
  end;
end;


end.
