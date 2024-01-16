unit UFrmPesqCid;

interface

uses
   SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, DB, Ora, MemDS,
  DBAccess, Mask, DBCtrls, ExtCtrls;

type
  TFrmPesqCid = class(TForm)
    Qry_PesqCid: TOraQuery;
    DtSrcPesqCid: TOraDataSource;
    Qry_PesqCidNM_CIDADE: TStringField;
    Qry_PesqCidID_CIDADE: TFloatField;
    Qry_PesqCidSG_ESTADO: TStringField;
    Qry_PesqCidNM_PAIS: TStringField;
    Qry_PesqCidNM_REGIGEOG: TStringField;
    Qry_PesqCidID_ESTADO: TFloatField;
    Qry_PesqCidID_REGIGEOG: TFloatField;
    Qry_PesqCidID_PAIS: TFloatField;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Lbl_Expr: TLabel;
    Edt_Expr: TEdit;
    Lbl_Camp: TLabel;
    ComboBox1: TComboBox;
    Lbl_Cond: TLabel;
    CmbBx_Cond: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormShortCut(Key: Integer; Shift: TShiftState;
      var Handled: Boolean);
    procedure Edt_ExprKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Private declarations }
  public
     VCamp:STRING;
     VExpr:STRING;
  end;

   function Cria_FrmPesqCid(var VCid, NCid, NEst, NPais, NReg:String): boolean;
var
  FrmPesqCid: TFrmPesqCid;

implementation

USES
  global;

{$R *.dfm}

procedure TFrmPesqCid.BitBtn1Click(Sender: TObject);
begin
  CASE ComboBox1.ItemIndex OF
    0:VCamp:='CIDADE.ID_CIDADE';
    1:VCamp:='upper(CIDADE.NM_CIDADE)';
    2:VCamp:='upper(estado.sg_estado)';
    3:VCamp:='upper(pais.nm_pais)';
    4:VCamp:='upper(regiao_geografica.nm_regigeog)';
  END;

  VExpr:=Edt_Expr.Text;
  Qry_PesqCid.Close;

  WITH Qry_PesqCid.sql do
  BEGIN
    CLEAR;
    ADD ('SELECT CIDADE.ID_CIDADE, CIDADE.NM_CIDADE, CIDADE.ID_CIDADE, ESTADO.ID_ESTADO,');
    ADD ('ESTADO.SG_ESTADO, REGIAO_GEOGRAFICA.NM_REGIGEOG, REGIAO_GEOGRAFICA.ID_REGIGEOG,');
    ADD ('PAIS.NM_PAIS, PAIS.ID_PAIS ');
    ADD ('FROM ESTADO, REGIAO_GEOGRAFICA, PAIS, CIDADE');
    ADD ('WHERE CIDADE.ID_ESTADO = ESTADO.ID_ESTADO AND ESTADO.ID_PAIS = PAIS.ID_PAIS AND');
    ADD ('REGIAO_GEOGRAFICA.ID_REGIGEOG(+) = ESTADO.ID_REGIGEOG AND');

    CASE CmbBx_Cond.ItemIndex of
      1:ADD(VCamp+'= ''' + VExpr + '''');
      0:ADD(VCamp+' LIKE '''+'%'+ VExpr + '%' + '''');
    END;

    ADD ('ORDER BY CIDADE.NM_CIDADE');
  END;

  Qry_PesqCid.Open;
  Qry_PesqCid.Refresh;
  DBGrid1.SetFocus;

end;
procedure TFrmPesqCid.FormActivate(Sender: TObject);
begin
  Qry_PesqCid.Open;
end;

function Cria_FrmPesqCid(var VCid, NCid, NEst, NPais, NReg:String): boolean;
begin
  try
    FrmPesqCid := TFrmPesqCid.Create(Application);
    Result := FrmPesqCid.ShowModal = mrOk;
    If Result then
    begin
      VCid :=  FloatToStr(FrmPesqCid.Qry_PesqCidID_CIDADE.Value);
      NCid :=  FrmPesqCid.Qry_PesqCidNM_CIDADE.Value;
      NEst :=  FrmPesqCid.Qry_PesqCidSG_ESTADO.Value;
      NPais:=  FrmPesqCid.Qry_PesqCidNM_PAIS.Value;
      NReg :=  FrmPesqCid.Qry_PesqCidNM_REGIGEOG.Value;
    end
    else
    begin
      VCid  := '';
      NCid  := '';
      NEst  := '';
      NPais := '';
      NReg  := '';
    end;
  finally
    FrmPesqCid.Release;
    FrmPesqCid := nil;
  end;
end;

procedure TFrmPesqCid.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesqCid.FormShow(Sender: TObject);
begin
  Qry_PesqCid.Open;
  Edt_Expr.SetFocus;
end;

procedure TFrmPesqCid.FormShortCut(Key: Integer; Shift: TShiftState;
  var Handled: Boolean);
begin
  case Key of
    4096: Close;          // ESC para sair
    4145: BitBtn4.Click;  // F2 para confirmar a seleção
    4148: BitBtn1.Click;  // F5 para pesquisa
  end;
end;

procedure TFrmPesqCid.Edt_ExprKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmPesqCid.DBGrid1TitleClick(Column: TColumn);
begin
  Qry_PesqCid.IndexFieldNames := Column.FieldName;
end;

procedure TFrmPesqCid.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with DBGrid1 do
  begin
    if Odd( DataSource.DataSet.RecNo) then
      Canvas.Brush.Color := $00FFF2D9
    else
      Canvas.Brush.Color := clWindow;

    Canvas.Font.Color  := clBlack;
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);

  end;

  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($00CEE7FF);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

end.



