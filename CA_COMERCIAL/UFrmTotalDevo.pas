unit UFrmTotalDevo;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, Mask, DBCtrls, Buttons,
  ExtCtrls;

type
  TFrmTotalDevo = class(TForm)
    Panel1: TPanel;
    Sb_Sair: TSpeedButton;
    Panel2: TPanel;
    Label8: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtTotaPedi: TDBEdit;
    edtTotaOper: TDBEdit;
    edtValoDevo: TDBEdit;
    edtValoQueb: TDBEdit;
    qryTotaDevo: TOraQuery;
    qryTotaPedi: TOraQuery;
    dtsTotaDevo: TOraDataSource;
    dtsTotaPedi: TOraDataSource;
    Label1: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    EdTotFinal: TEdit;
    qryTotaDevoVL_TOTADEVO: TFloatField;
    qryTotaDevoVL_TOTAQUEB: TFloatField;
    qryTotaDevoVL_TOTAOPER: TFloatField;
    qryTotaPediVL_TOTAPEDI: TFloatField;
    qryTotaPediVL_DEVOPEDIVEND: TFloatField;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    qryTotaDevoVL_DEVEXPE: TFloatField;
    procedure Sb_SairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTotalDevo: TFrmTotalDevo;

implementation

{$R *.dfm}

procedure TFrmTotalDevo.Sb_SairClick(Sender: TObject);
begin
  qryTotaDevo.Close;
  qryTotaPedi.Close;
  close;
end;

procedure TFrmTotalDevo.FormShow(Sender: TObject);
begin
  EdTotFinal.Text := FloatToStrF(( StrToFloat(edtTotaPedi.Text) - StrToFloat(edtTotaOper.Text)),ffNumber,15,2);
end;

end.
