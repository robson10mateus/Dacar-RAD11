unit UFrmPesqBairro;

interface

uses
   SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, DB, Ora, MemDS,
  DBAccess, Mask, DBCtrls, ExtCtrls;

type
  TFrmPesqBairro = class(TForm)
    Qry_PesqBairro: TOraQuery;
    DtSrcPesqBairro: TOraDataSource;
    DBGrid1: TDBGrid;
    Qry_PesqBairroID_BAIRRO: TFloatField;
    Qry_PesqBairroNM_BAIRRO: TStringField;
    Qry_PesqBairroFX_BAIRRO: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Lbl_Expr: TLabel;
    Edt_Expr: TEdit;
    Lbl_Camp: TLabel;
    Lbl_Cond: TLabel;
    CmbBx_Cond: TComboBox;
    ComboBox1: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edt_ExprKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
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

   function Cria_FrmPesqBairro(var VCid, VBair, NBair, NFx:String): boolean;
var
  FrmPesqBairro: TFrmPesqBairro;

implementation

USES
  global,UFrmClientes;

{$R *.dfm}

procedure TFrmPesqBairro.BitBtn1Click(Sender: TObject);
begin
  CASE ComboBox1.ItemIndex OF
    0:VCamp:='BAIRRO.ID_BAIRRO';
    1:VCamp:='upper(BAIRRO.NM_BAIRRO)';
  END;

  VExpr:=Edt_Expr.Text;
  Qry_PesqBairro.Close;

  WITH Qry_PesqBairro.sql do
  BEGIN
    CLEAR;
    ADD ('SELECT BAIRRO.ID_BAIRRO, BAIRRO.NM_BAIRRO, BAIRRO.FX_BAIRRO');
    ADD ('FROM BAIRRO, CIDADE ');
    ADD ('WHERE BAIRRO.ID_CIDADE = CIDADE.ID_CIDADE AND CIDADE.ID_CIDADE = :ID_CIDADE AND ');

    CASE CmbBx_Cond.ItemIndex of
     1:ADD(VCamp+'= ''' + VExpr + '''');
     0:ADD(VCamp+' LIKE '''+'%'+ VExpr + '%' + '''');
    END;

    ADD ('ORDER BY BAIRRO.NM_BAIRRO');
  END;

  Qry_PesqBairro.Close;
  Qry_PesqBairro.ParamByName('ID_CIDADE').AsFloat := strtofloat(FrmClientes.DBCodCid.Text);
  Qry_PesqBairro.Open;
  Qry_PesqBairro.Refresh;
  DBGrid1.SetFocus;
end;

 function Cria_FrmPesqBairro(var VCid, VBair, NBair, NFx:String): boolean;
begin
  try
    FrmPesqBairro := TFrmPesqBairro.Create(Application);
    Result := FrmPesqBairro.ShowModal = mrOk;
    If Result then
    begin
      VBair :=  FloatToStr(FrmPesqBairro.Qry_PesqBairroID_BAIRRO.Value);
      NBair :=  FrmPesqBairro.Qry_PesqBairroNM_BAIRRO.Value;
      NFx:=  FrmPesqBairro.Qry_PesqBairroFX_BAIRRO.Value;
    end
    else
    begin
      VBair  := '';
      NBair  := '';
      NFx    := '';
    end;
  finally
    FrmPesqBairro.Release;
    FrmPesqBairro := nil;
  end;
end;

procedure TFrmPesqBairro.Edt_ExprKeyPress(Sender: TObject; var Key: Char);
begin
 Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmPesqBairro.BitBtn3Click(Sender: TObject);
begin
 close;
end;
procedure TFrmPesqBairro.FormShow(Sender: TObject);
begin
  Qry_PesqBairro.Open;
  Edt_Expr.SetFocus;
end;

procedure TFrmPesqBairro.DBGrid1TitleClick(Column: TColumn);
begin
  Qry_PesqBairro.IndexFieldNames := Column.FieldName;
end;

procedure TFrmPesqBairro.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmPesqBairro.FormShortCut(Key: Integer; Shift: TShiftState;
  var Handled: Boolean);
begin
  case Key of
    4096: Close;          // ESC para sair
    4145: BitBtn4.Click;  // F2 para confirmar a seleção
    4148: BitBtn1.Click;  // F5 para pesquisa
  end;
end;

end.



