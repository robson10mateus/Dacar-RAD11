unit UFrmPesqClie;

interface

uses
   SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, UFrmModelPesqui, Grids, DBGrids, Buttons, DB, Ora, MemDS,
  DBAccess, Mask, DBCtrls;

type
  TFrmPesqClie = class(TForm)
    Lbl_Expr: TLabel;
    Edt_Expr: TEdit;
    BitBtn1: TBitBtn;
    Lbl_Camp: TLabel;
    Lbl_Cond: TLabel;
    CmbBx_Cond: TComboBox;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Qry_PesqCli: TOraQuery;
    DtSrcPesqCid: TOraDataSource;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    Qry_PesqCliID_CLIENTE: TFloatField;
    Qry_PesqCliNM_CLIENTE: TStringField;
    Qry_PesqCliNM_FANTCLIE: TStringField;
    Qry_PesqCliNM_REDUCLIE: TStringField;
    Qry_PesqCliNR_CNPJCLIE: TStringField;
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

   function Cria_FrmPesqClie(var VCli, NCli, NFan, NRed, VCNPJ:String): boolean;
var
  FrmPesqClie: TFrmPesqClie;

implementation

USES
  global;

{$R *.dfm}

procedure TFrmPesqClie.BitBtn1Click(Sender: TObject);
begin
  CASE ComboBox1.ItemIndex OF
    0:VCamp:= 'CLIENTE.ID_CLIENTE';
    1:VCamp:= 'upper(CLIENTE.NM_CLIENTE)';
    2:VCamp:= 'upper(CLIENTE.NM_FANTCLIE)';
    3:VCamp:= 'upper(CLIENTE.NM_REDUCLIE)';
    4:VCamp:= 'CLIENTE.NR_CNPJCLIE';
  END;
  VExpr:=Edt_Expr.Text;
  Qry_PesqCli.Close;

  WITH Qry_PesqCli.sql do
  BEGIN
    clear;
    ADD('SELECT CLIENTE.ID_CLIENTE,');
    ADD('CLIENTE.NM_CLIENTE,');
    ADD('CLIENTE.NM_FANTCLIE,');
    ADD('CLIENTE.NM_REDUCLIE,');
    ADD('CLIENTE.NR_CNPJCLIE');
    ADD('FROM CLIENTE');
    ADD('WHERE ');

    CASE CmbBx_Cond.ItemIndex of
      1:ADD(VCamp+'= ''' + VExpr + '''');
      0:ADD(VCamp+' LIKE '''+'%'+ VExpr + '%' + '''');
    END;

    add ('ORDER BY CLIENTE.NM_CLIENTE');
  END;

  Qry_PesqCli.Open;
  BitBtn4.SetFocus;
end;

procedure TFrmPesqClie.FormActivate(Sender: TObject);
begin
  Qry_PesqCli.Open;
end;

function Cria_FrmPesqClie(var VCli, NCli, NFan, NRed, VCNPJ:String): boolean;
begin
  try
    FrmPesqClie := TFrmPesqClie.Create(Application);
    Result := FrmPesqClie.ShowModal = mrOk;
    If Result then
      begin
        VCli  :=  FloatToStr(FrmPesqClie.Qry_PesqCliID_CLIENTE.Value);
        NCli  :=  FrmPesqClie.Qry_PesqCliNM_CLIENTE.Value;
        NFan  :=  FrmPesqClie.Qry_PesqCliNM_FANTCLIE.Value;
        NRed  :=  FrmPesqClie.Qry_PesqCliNM_REDUCLIE.Value;
        VCNPJ :=  FrmPesqClie.Qry_PesqCliNR_CNPJCLIE.Value;
      end
    else
    begin
      VCli  := '';
      NCli  := '';
      NFan  := '';
      NRed  := '';
      VCNPJ := '';
    end;

  finally
    FrmPesqClie.Release;
    FrmPesqClie := nil;
  end;
end;

procedure TFrmPesqClie.Edt_ExprKeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmPesqClie.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

end.



