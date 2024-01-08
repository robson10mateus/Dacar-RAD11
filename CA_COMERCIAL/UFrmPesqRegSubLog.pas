unit UFrmPesqRegSubLog;

interface

uses
   SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, UFrmModelPesqui, Grids, DBGrids, Buttons, DB, Ora, MemDS,
  DBAccess, Mask, DBCtrls;

type
  TFrmPesqRegSubLog = class(TForm)
    Lbl_Expr: TLabel;
    Edt_Expr: TEdit;
    BitBtn1: TBitBtn;
    Lbl_Camp: TLabel;
    Lbl_Cond: TLabel;
    CmbBx_Cond: TComboBox;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Qry_PesqSubRegLog: TOraQuery;
    DtSrcPesqSubRegLog: TOraDataSource;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    Qry_PesqSubRegLogEMPRESA: TStringField;
    Qry_PesqSubRegLogFILIAL: TIntegerField;
    Qry_PesqSubRegLogID_SUBRLOGI: TFloatField;
    Qry_PesqSubRegLogNM_SUBRLOGI: TStringField;
    Qry_PesqSubRegLogFX_SUBRLOGI: TStringField;
    Qry_PesqSubRegLogID_INTESUBRLOGI: TStringField;
    Qry_PesqSubRegLogQN_FATOFRETABATSUBRLOGI: TFloatField;
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

   function Cria_FrmPesqRegSubLog(var VReg, VRegI, NReg:String): boolean;
var
  FrmPesqRegSubLog: TFrmPesqRegSubLog;

implementation

USES
  global;

{$R *.dfm}

procedure TFrmPesqRegSubLog.BitBtn1Click(Sender: TObject);
begin
 CASE ComboBox1.ItemIndex OF
    0:VCamp:='logistica_subregiao.id_subrlogi';
    1:VCamp:='upper(logistica_subregiao.nm_subrlogi)';

 END;
 VExpr:=Edt_Expr.Text;
 Qry_PesqSubRegLog.Close;
 WITH Qry_PesqSubRegLog.sql do
  BEGIN
   clear;
  add ('SELECT logistica_subregiao.empresa   ,');
  add ('logistica_subregiao.filial,  ');
  add ('logistica_subregiao.id_subrlogi, ');
  add ('logistica_subregiao.nm_subrlogi, ');
  add ('logistica_subregiao.fx_subrlogi, ');
  add ('logistica_subregiao.id_intesubrlogi, ');
  add ('logistica_subregiao.qn_fatofretabatsubrlogi');
  add ('FROM              ');
  add ('logistica_subregiao  ');
  add ('where           ');

 CASE CmbBx_Cond.ItemIndex of
   1:ADD(VCamp+'= ''' + VExpr + '''');
   0:ADD(VCamp+' LIKE '''+'%'+ VExpr + '%' + '''');
   END;
   add ('order by logistica_subregiao.id_subrlogi');
  END;
  Qry_PesqSubRegLog.Open;
  BitBtn4.SetFocus;
  end;
procedure TFrmPesqRegSubLog.FormActivate(Sender: TObject);
begin
  Qry_PesqSubRegLog.Open;
end;

function Cria_FrmPesqRegSubLog(var VReg, VRegI, NReg:String): boolean;
begin
 try
   FrmPesqRegSubLog := TFrmPesqRegSubLog.Create(Application);
   Result := FrmPesqRegSubLog.ShowModal = mrOk;
   If Result then
     begin
      VReg  :=  FloatToStr(FrmPesqRegSubLog.Qry_PesqSubRegLogID_SUBRLOGI.Value);
      VRegI :=  FrmPesqRegSubLog.Qry_PesqSubRegLogID_INTESUBRLOGI.Value;
      NReg  :=  FrmPesqRegSubLog.Qry_PesqSubRegLogNM_SUBRLOGI.Value;

     end
   else
     begin
      VReg  := '';
      VRegI  := '';
      NReg  := '';

     end;
 finally
   FrmPesqRegSubLog.Release;
   FrmPesqRegSubLog := nil;
 end;
end;

procedure TFrmPesqRegSubLog.Edt_ExprKeyPress(Sender: TObject; var Key: Char);
begin
 Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmPesqRegSubLog.BitBtn3Click(Sender: TObject);
begin
 close;
end;
end.



