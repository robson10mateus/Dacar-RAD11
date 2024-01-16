{************ CRÉDITOS DO SISTEMA *************
* Revisado por: Edmilde Freire Montagnoli     *
* Desenvolvido para: Céu Azul Alimentos       *
* Inicio: 25/07/2010 * Versão: 1.0.0.0        *
**********************************************}

unit uFrmSelData;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Buttons, ExtCtrls;

type
  TFrmSelData = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SEDia: TSpinEdit;
    Label2: TLabel;
    Label1: TLabel;
    SEMes: TSpinEdit;
    SeAno: TEdit;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    Vdata: string;
    { Public declarations }
  end;

function Cria_FrmSelData(var VData: string): boolean;
function Cria_FrmSelData_(var VData: string): boolean;

var
  FrmSelData: TFrmSelData;

implementation

uses uDmPrincipal;

{$R *.dfm}

function Cria_FrmSelData(var VData: string): boolean;
begin

  try

    FrmSelData := TFrmSelData.Create(Application);
    Result := FrmSelData.ShowModal = mrOk;

    if Result then
      VData := inttostr(FrmSelData.SEDia.Value) + '/' + inttostr(FrmSelData.SEMes.Value) + '/' + FrmSelData.SEAno.text
    else
      Vdata := '';

  finally

    FrmSelData.Release;
    FrmSelData := nil;

  end;

end;

function Cria_FrmSelData_(var VData: string): boolean;
begin

  try

    FrmSelData := TFrmSelData.Create(Application);
    Result := FrmSelData.ShowModal = mrOk;

    if Result then
      DmPrincipal.PData := inttostr(FrmSelData.SEDia.Value) + '/' + inttostr(FrmSelData.SEMes.Value) + '/' + FrmSelData.SEAno.text
    else
      DmPrincipal.PData := '';

  finally

    FrmSelData.Release;
    FrmSelData := nil;

  end;

end;

procedure TFrmSelData.FormActivate(Sender: TObject);
var
  Present: TDateTime;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin

  Present := Now;
  DecodeDate(Present, Year, Month, Day);

  SEDia.Value := Day;
  SEMes.Value := Month;
  SEAno.text := inttostr(Year);

end;

end.
