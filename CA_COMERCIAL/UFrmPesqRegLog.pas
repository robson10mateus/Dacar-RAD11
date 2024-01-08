unit UFrmPesqRegLog;

interface

uses
   SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, UFrmModelPesqui, Grids, DBGrids, Buttons, DB, Ora, MemDS,
  DBAccess, Mask, DBCtrls;

type
  TFrmPesqRegLog = class(TForm)
    Lbl_Expr: TLabel;
    Edt_Expr: TEdit;
    BitBtn1: TBitBtn;
    Lbl_Camp: TLabel;
    Lbl_Cond: TLabel;
    CmbBx_Cond: TComboBox;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Qry_PesqRegLog: TOraQuery;
    DtSrcPesqRegLog: TOraDataSource;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    Qry_PesqRegLogEMPRESA: TStringField;
    Qry_PesqRegLogFILIAL: TIntegerField;
    Qry_PesqRegLogID_REGILOGI: TFloatField;
    Qry_PesqRegLogNM_REGILOGI: TStringField;
    Qry_PesqRegLogFX_REGILOGI: TStringField;
    Qry_PesqRegLogID_INTEREGILOGI: TStringField;
    Qry_PesqRegLogGN_RISCREGILOGI: TIntegerField;
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

   function Cria_FrmPesqReg(var VReg, VRegI, NReg:String): boolean;
var
  FrmPesqRegLog: TFrmPesqRegLog;

implementation

USES
  global;

{$R *.dfm}

procedure TFrmPesqRegLog.BitBtn1Click(Sender: TObject);
begin
 CASE ComboBox1.ItemIndex OF
    0:VCamp:='logistica_regiao.id_regilogi';
    1:VCamp:='upper(logistica_regiao.nm_regilogi)';
 
 END;
 VExpr:=Edt_Expr.Text;
 Qry_PesqRegLog.Close;
 WITH Qry_PesqRegLog.sql do
  BEGIN
   clear;

   add ('SELECT logistica_regiao.empresa,');
   add ('logistica_regiao.filial,  ');
   add ('logistica_regiao.id_regilogi,');
   add ('logistica_regiao.nm_regilogi,');
   add ('logistica_regiao.fx_regilogi,');
   add ('logistica_regiao.id_interegilogi,');
   add ('logistica_regiao.gn_riscregilogi ');
   add ('FROM  logistica_regiao            ');
   add ('where          ');

 CASE CmbBx_Cond.ItemIndex of
   1:ADD(VCamp+'= ''' + VExpr + '''');
   0:ADD(VCamp+' LIKE '''+'%'+ VExpr + '%' + '''');
   END;
   add ('order by logistica_regiao.nm_regilogi');
  END;
  Qry_PesqRegLog.Open;
  BitBtn4.SetFocus;
  end;
procedure TFrmPesqRegLog.FormActivate(Sender: TObject);
begin
  Qry_PesqRegLog.Open;
end;

function Cria_FrmPesqReg(var VReg, VRegI, NReg:String): boolean;
begin
 try
   FrmPesqRegLog := TFrmPesqRegLog.Create(Application);
   Result := FrmPesqRegLog.ShowModal = mrOk;
   If Result then
     begin
      VReg :=  FloatToStr(FrmPesqRegLog.Qry_PesqRegLogID_REGILOGI.Value);
      VRegI := FrmPesqRegLog.Qry_PesqRegLogID_INTEREGILOGI.Value;
      NReg :=  FrmPesqRegLog.Qry_PesqRegLogNM_REGILOGI.Value;

     end
   else
     begin
      VReg  := '';
      VRegI  := '';
      NReg  := '';

     end;
 finally
   FrmPesqRegLog.Release;
   FrmPesqRegLog := nil;
 end;
end;

procedure TFrmPesqRegLog.Edt_ExprKeyPress(Sender: TObject; var Key: Char);
begin
 Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmPesqRegLog.BitBtn3Click(Sender: TObject);
begin
 close;
end;
end.



