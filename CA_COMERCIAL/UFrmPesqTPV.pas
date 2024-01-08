unit UFrmPesqTPV;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, Grids, DBGrids, Buttons, DB,
  Ora, MemDS, DBAccess, UFrmPesqSubRegiao, UFrmPesqCidade, ExtCtrls,
  Winapi.Windows;

type
//  TFrmPesqTPV = class(TFrmPesqCidade)
  TFrmPesqTPV = class(TFrmModelPesqui)
    QrTPV: TOraQuery;
    DStpv: TOraDataSource;
    QrTPVID_TIPOPEDIVEND: TFloatField;
    QrTPVNM_TIPOPEDIVEND: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  XRESUL,VCAMPO,VEXPRE:STRING;
    { Public declarations }
  end;

var
  FrmPesqTPV: TFrmPesqTPV;

implementation

uses UfrmPedVenda,global, UFrmSelRelConfVenda, UFrmSelVenProd,
  UFrmSelProdVend, Principal, UFrmSelSintCarga, uFrmRelVendaCliente;

{$R *.dfm}

procedure TFrmPesqTPV.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPesqTPV.BitBtn2Click(Sender: TObject);
begin
  XRESUL:=FLOATTOSTR(QrTPVID_TIPOPEDIVEND.Value);
  TRY
    CASE FrmOriPesq OF
      1:FrmPedVenda.EdExpre.Text:=XRESUL;
      5:FrmSelVenProd.EdExpre.Text:=XRESUL;
      7:FrmSelProdVend.EdExpre.Text:=XRESUL;
      11:FrmPedVenda.DBTipVen.Text:=XRESUL;
      13:FrmSelRelConfVenda.EdExpre.Text:=XRESUL;
      17:FrmSelSintCarga.EdExpre.Text:=XRESUL;
      57:FrmRelVendaCliente.EdExpre.Text:=XRESUL;
    end;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.','Comercial Dacar - Pesquisa de Tipo de Venda', MB_OK + MB_ICONINFORMATION);
  END;

  close;
end;

procedure TFrmPesqTPV.BitBtn1Click(Sender: TObject);
begin

  CASE ComboBox1.ItemIndex OF
    0:VCAMPO := 'PEDIDO_VENDA_TIPO.NM_TIPOPEDIVEND';
    1:VCAMPO := 'PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND';
  END;

  VEXPRE:=UpperCase(EdExpre.Text);
  QrTPV.Close;

  WITH QrTPV.SQL DO
  BEGIN
    Clear;
    ADD('SELECT PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND,');
    ADD('PEDIDO_VENDA_TIPO.NM_TIPOPEDIVEND');
    ADD('FROM PEDIDO_VENDA_TIPO');
    ADD('WHERE FL_BLOQUEADO IS NULL AND ');
    CASE ComboBox2.ItemIndex OF
      0:ADD(VCAMPO + ' LIKE ''' + '%' + VEXPRE + '%' + '''');
      1:ADD(VCAMPO + ' = ''' + VEXPRE + '''');
    END;
    ADD('ORDER BY PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND');
  END;

  QrTPV.Open;
  QrTPV.Refresh;
  DBGrid1.SetFocus;

end;

procedure TFrmPesqTPV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPesqTPV:=Nil;
  Action:=caFree;
end;

procedure TFrmPesqTPV.FormCreate(Sender: TObject);
begin
  inherited;
  frmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmPesqTPV.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  QrTPV.IndexFieldNames := Column.FieldName;
end;

procedure TFrmPesqTPV.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

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

procedure TFrmPesqTPV.FormShow(Sender: TObject);
begin
  inherited;
  QrTPV.Open;
  EdExpre.SetFocus;
end;

procedure TFrmPesqTPV.EdExpreKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

end.
