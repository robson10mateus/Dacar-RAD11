unit UFrmPesqRegCom;

interface

uses
   SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, UFrmModelPesqui, Grids, DBGrids, Buttons, DB, Ora, MemDS,
  DBAccess, Mask, DBCtrls, ExtCtrls;

type
  TFrmPesqRegCom = class(TForm)
    Qry_PesqRegCom: TOraQuery;
    DtSrcPesqRegCom: TOraDataSource;
    DBGrid1: TDBGrid;
    Qry_PesqRegComID_REGICOME: TFloatField;
    Qry_PesqRegComNM_REGICOME: TStringField;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    Lbl_Expr: TLabel;
    Edt_Expr: TEdit;
    Lbl_Camp: TLabel;
    ComboBox1: TComboBox;
    CmbBx_Cond: TComboBox;
    Lbl_Cond: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edt_ExprKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShortCut(Key: Integer; Shift: TShiftState;
      var Handled: Boolean);

  private
    { Private declarations }
  public
     VCamp:STRING;
     VExpr:STRING;
  end;

   function Cria_FrmPesqRegCom(var VCid, NCid:String): boolean;
var
  FrmPesqRegCom: TFrmPesqRegCom;

implementation

USES
  global;

{$R *.dfm}

procedure TFrmPesqRegCom.BitBtn1Click(Sender: TObject);
begin

  CASE ComboBox1.ItemIndex OF
    0:VCamp:='regiao_comercial.id_regicome';
    1:VCamp:='upper(regiao_comercial.nm_regicome)';
  END;

  VExpr:=Edt_Expr.Text;
  Qry_PesqRegCom.Close;

  WITH Qry_PesqRegCom.sql do
  BEGIN
    CLEAR;
    ADD ('SELECT REGIAO_COMERCIAL.ID_REGICOME, REGIAO_COMERCIAL.NM_REGICOME ');
    ADD ('FROM REGIAO_COMERCIAL WHERE ');

    CASE CmbBx_Cond.ItemIndex of
      1:ADD(VCamp+'= ''' + VExpr + '''');
      0:ADD(VCamp+' LIKE '''+'%'+ VExpr + '%' + '''');
    END;

    ADD ('ORDER BY REGIAO_COMERCIAL.NM_REGICOME');

  END;

  Qry_PesqRegCom.Open;
  Qry_PesqRegCom.Refresh;
  DBGrid1.SetFocus;


end;

procedure TFrmPesqRegCom.FormActivate(Sender: TObject);
begin
  Qry_PesqRegCom.Open;
end;

function Cria_FrmPesqRegCom(var VCid, NCid:String): boolean;
begin
 try
   FrmPesqRegCom := TFrmPesqRegCom.Create(Application);
   Result := FrmPesqRegCom.ShowModal = mrOk;
   If Result then
     begin
      VCid :=  FloatToStr(FrmPesqRegCom.Qry_PesqRegComID_REGICOME.Value);
      NCid :=  FrmPesqRegCom.Qry_PesqRegComNM_REGICOME.Value;
     end
   else
     begin
      VCid  := '';
      NCid  := '';
     end;
 finally
   FrmPesqRegCom.Release;
   FrmPesqRegCom := nil;
 end;
end;

procedure TFrmPesqRegCom.Edt_ExprKeyPress(Sender: TObject; var Key: Char);
begin
 Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmPesqRegCom.BitBtn3Click(Sender: TObject);
begin
 close;
end;
procedure TFrmPesqRegCom.FormShow(Sender: TObject);
begin
  Qry_PesqRegCom.Open;
  Edt_Expr.SetFocus;
end;

procedure TFrmPesqRegCom.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmPesqRegCom.FormShortCut(Key: Integer; Shift: TShiftState;
  var Handled: Boolean);
begin
  case Key of
    4096: Close;          // ESC para sair
    4145: BitBtn4.Click;  // F2 para confirmar a seleção
    4148: BitBtn1.Click;  // F5 para pesquisa
  end;
end;

end.



