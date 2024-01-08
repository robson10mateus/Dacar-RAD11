unit UFrmPesqPedagio;

interface

uses
   SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, UFrmModelPesqui, Grids, DBGrids, Buttons, DB, Ora, MemDS,
  DBAccess, Mask, DBCtrls;

type
  TFrmPesqPedagio = class(TForm)
    Lbl_Expr: TLabel;
    Edt_Expr: TEdit;
    BitBtn1: TBitBtn;
    Lbl_Camp: TLabel;
    Lbl_Cond: TLabel;
    CmbBx_Cond: TComboBox;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Qr: TOraQuery;
    DS: TOraDataSource;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    QrID_PEDAGIO: TFloatField;
    QrNM_RODOVIA: TStringField;
    QrKM_PEDAGIO: TFloatField;
    QrID_CIDADE: TFloatField;
    QrVALOR_EIXO: TFloatField;
    QrEMPRESA: TStringField;
    QrFILIAL: TIntegerField;
    QrNM_CIDADE: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edt_ExprKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
     VCamp:STRING;
     VExpr:STRING;
  end;

 function Cria_FrmPesqPedagio(var VIdPed, NRodo, NKm, NVlEixo, IdCid, NmCid:String): boolean;
var
  FrmPesqPedagio: TFrmPesqPedagio;

implementation

USES
  global;

{$R *.dfm}

procedure TFrmPesqPedagio.BitBtn1Click(Sender: TObject);
begin
 CASE ComboBox1.ItemIndex OF
    0:VCamp:='CA_PEDAGIO.ID_PEDAGIO';
    1:VCamp:='upper(CA_PEDAGIO.NM_RODOVIA)';
    2:VCamp:='upper(CA_PEDAGIO.KM_PEDAGIO)';
    3:VCamp:='CA_PEDAGIO.ID_CIDADE';
 END;

 VExpr:=Edt_Expr.Text;
 Qr.Close;
 WITH Qr.sql do
  BEGIN
   clear;
  add ('SELECT  ');
  add ('  CA_PEDAGIO.ID_PEDAGIO, ');
  add ('  CA_PEDAGIO.NM_RODOVIA, ');
  add ('  CA_PEDAGIO.KM_PEDAGIO, ');
  add ('  CA_PEDAGIO.ID_CIDADE, ');
  add ('  CA_PEDAGIO.VALOR_EIXO, ');
  add ('  CA_PEDAGIO.EMPRESA, ');
  add ('  CA_PEDAGIO.FILIAL, ');
  add ('  CIDADE.NM_CIDADE ');
  add (' FROM ');
  add ('  CA_PEDAGIO, ');
  add ('  CIDADE ');
  add ('  WHERE ');
  add ('    CIDADE.ID_CIDADE = CA_PEDAGIO.ID_CIDADE AND ');

  CASE CmbBx_Cond.ItemIndex of
   1:ADD(VCamp+'= ''' + VExpr + '''');
   0:ADD(VCamp+' LIKE '''+'%'+ VExpr + '%' + '''');
   END;
   add ('ORDER BY CA_PEDAGIO.NM_RODOVIA ');
  END;
  Qr.Open;
  BitBtn4.SetFocus;
  end;
procedure TFrmPesqPedagio.FormActivate(Sender: TObject);
begin
  Qr.Open;
end;

function Cria_FrmPesqPedagio(var VIdPed, NRodo, NKm, NVlEixo, IdCid, NmCid:String): boolean;
begin
 try
   FrmPesqPedagio := TFrmPesqPedagio.Create(Application);
   Result := FrmPesqPedagio.ShowModal = mrOk;
   If Result then
     begin
      VIdPed := FloatToStr(FrmPesqPedagio.QrID_PEDAGIO.Value);
      NRodo :=  FrmPesqPedagio.QrNM_RODOVIA.Value;
      NKm :=    FloatToStr(FrmPesqPedagio.QrKM_PEDAGIO.Value);
      NVlEixo:= FloatToStr(FrmPesqPedagio.QrVALOR_EIXO.Value);
      IdCid :=  FloatToStr(FrmPesqPedagio.QrID_CIDADE.Value);
      NmCid :=  FrmPesqPedagio.QrNM_CIDADE.Value;
     end
   else
     begin
      VIdPed := '';
      NRodo :=  '';
      NKm :=    '';
      NVlEixo:= '';
      IdCid :=  '';
      NmCid :=  '';
     end;
 finally
   FrmPesqPedagio.Release;
   FrmPesqPedagio := nil;
 end;
end;

procedure TFrmPesqPedagio.Edt_ExprKeyPress(Sender: TObject; var Key: Char);
begin
 Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmPesqPedagio.BitBtn3Click(Sender: TObject);
begin
 close;
end;
end.



