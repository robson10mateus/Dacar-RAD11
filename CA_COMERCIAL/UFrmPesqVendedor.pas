unit UFrmPesqVendedor;

interface

uses
   SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, UFrmModelPesqui, Grids, DBGrids, Buttons, DB, Ora, MemDS,
  DBAccess, Mask, DBCtrls;

type
  TFrmPesqVendedor = class(TForm)
    Lbl_Expr: TLabel;
    Edt_Expr: TEdit;
    BitBtn1: TBitBtn;
    Lbl_Camp: TLabel;
    Lbl_Cond: TLabel;
    CmbBx_Cond: TComboBox;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Qry_PesqVend: TOraQuery;
    DtSrcPesqVend: TOraDataSource;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    Qry_PesqVendID_VENDEDOR: TFloatField;
    Qry_PesqVendNM_VENDEDOR: TStringField;
    Qry_PesqVendNM_FANTVEND: TStringField;
    Qry_PesqVendNM_LOGRVEND: TStringField;
    Qry_PesqVendNR_LOGRVEND: TStringField;
    Qry_PesqVendNM_REDUVEND: TStringField;
    Qry_PesqVendFL_COMIVEND: TStringField;
    Qry_PesqVendPC_COMIVEND: TFloatField;
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

   function Cria_FrmPesqVendedor(var VCod, NNom, NFan, NRed, NCom, VCom:String): boolean;
var
  FrmPesqVendedor: TFrmPesqVendedor;

implementation

USES
  global;

{$R *.dfm}

procedure TFrmPesqVendedor.BitBtn1Click(Sender: TObject);
begin
  CASE ComboBox1.ItemIndex OF
    0:VCamp:='VENDEDOR.id_vendedor';
    1:VCamp:='upper(VENDEDOR.nm_vendedor)';
    2:VCamp:='upper(VENDEDOR.nm_fantvend)';
  END;
  VExpr:=Edt_Expr.Text;
  Qry_PesqVend.Close;

  WITH Qry_PesqVend.sql do
  BEGIN
    clear;
    add ('SELECT               ');
    add ('VENDEDOR.id_VENDEDOR,');
    add ('VENDEDOR.nm_VENDEDOR,');
    add ('VENDEDOR.nm_reduvend,');
    add ('VENDEDOR.nm_fantvend,');
    add ('VENDEDOR.nm_logrvend,');
    add ('VENDEDOR.fl_comivend,');
    add ('VENDEDOR.pc_comivend,');
    add ('VENDEDOR.nr_logrvend ');
    add ('from');
    add ('VENDEDOR');
    {FABRICIO - 02/08/2018 - MOTIVO:CADASTRO SOMENTE PARA VENDEDORES ATIVOS}
    add ('where vendedor.FL_ATIVVEND = ''S'' ');

    CASE CmbBx_Cond.ItemIndex of
      1:ADD(' AND ' + VCamp+'= ''' + VExpr + '''');
      0:ADD(' AND ' + VCamp+' LIKE '''+'%'+ VExpr + '%' + '''');
    END;
    add ('order by VENDEDOR.nm_VENDEDOR');
  END;

  Qry_PesqVend.Open;
  BitBtn4.SetFocus;
end;

procedure TFrmPesqVendedor.FormActivate(Sender: TObject);
begin
  Qry_PesqVend.Open;
end;

function Cria_FrmPesqVendedor(var VCod, NNom, NFan, NRed, NCom, VCom:String): boolean;
begin
  try
    FrmPesqVendedor := TFrmPesqVendedor.Create(Application);
    Result := FrmPesqVendedor.ShowModal = mrOk;
    If Result then
    begin
      VCod :=  FloatToStr(FrmPesqVendedor.Qry_PesqVendID_VENDEDOR.Value);
      NNom :=  FrmPesqVendedor.Qry_PesqVendNM_VENDEDOR.Value;
      NFan :=  FrmPesqVendedor.Qry_PesqVendNM_FANTVEND.Value;
      NRed :=  FrmPesqVendedor.Qry_PesqVendNM_REDUVEND.Value;
      NCom :=  FrmPesqVendedor.Qry_PesqVendFL_COMIVEND.Value;
      VCom :=  FloatToStr(FrmPesqVendedor.Qry_PesqVendPC_COMIVEND.Value);
    end
    else
    begin
      VCod  := '';
      NNom  := '';
      NFan  := '';
      NRed  := '';
      NCom  := '';
      VCom  := '';
    end;
  finally
    FrmPesqVendedor.Release;
    FrmPesqVendedor := nil;
  end;
end;

procedure TFrmPesqVendedor.Edt_ExprKeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmPesqVendedor.BitBtn3Click(Sender: TObject);
begin
  Close;
end;
end.



