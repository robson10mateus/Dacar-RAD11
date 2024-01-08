unit uFrmConsultaFormaPagto;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, DB, Ora, MemDS, DBAccess, Buttons,
  ExtCtrls, Grids, DBGrids, Winapi.Windows;

type
  TfrmConsultaFormaPagto = class(TFrmModelPesqui)
    qryFormaPagto: TOraQuery;
    qryFormaPagtoID_FORMPAGA: TFloatField;
    qryFormaPagtoNM_FORMPAGA: TStringField;
    qryFormaPagtoQN_PARCFORMPAGA: TIntegerField;
    dtsFormaPagto: TOraDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     XRESUL, VCAMPO, VEXPRE:STRING;
  end;

var
  frmConsultaFormaPagto: TfrmConsultaFormaPagto;

implementation

uses UfrmPedVenda, Global;

{$R *.dfm}

procedure TfrmConsultaFormaPagto.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL:=FLOATTOSTR(qryFormaPagtoID_FORMPAGA.Value);

  TRY
    CASE FrmOriPesq OF
      1:FrmPedVenda.EdExpre.Text:=XRESUL;
    end;
    ActiveControl := Nil;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(frmConsultaFormaPagto.Caption) , MB_OK + MB_ICONINFORMATION);
  END;

  Close;
end;

procedure TfrmConsultaFormaPagto.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:= ' FORMA_PAGAMENTO.ID_FORMPAGA ';
    1:VCAMPO:= ' UPPER(FORMA_PAGAMENTO.NM_FORMPAGA) ';
  END;

  VEXPRE:= EdExpre.Text;

  qryFormaPagto.Close;

  WITH qryFormaPagto.SQL DO
  BEGIN
    Clear;
    ADD('SELECT ID_FORMPAGA, NM_FORMPAGA, QN_PARCFORMPAGA ');
    ADD('FROM FORMA_PAGAMENTO');
    ADD('WHERE FL_FORMPAGA = ''LB'' AND');

    CASE ComboBox2.ItemIndex OF
     1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    add ('ORDER BY FORMA_PAGAMENTO.NM_FORMPAGA');
  END;

  qryFormaPagto.Open;
  qryFormaPagto.Refresh;
  DBGrid1.SetFocus;
end;

procedure TfrmConsultaFormaPagto.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsultaFormaPagto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmConsultaFormaPagto:=Nil;
  Action:=caFree;
end;

procedure TfrmConsultaFormaPagto.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  qryFormaPagto.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsultaFormaPagto.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TfrmConsultaFormaPagto.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TfrmConsultaFormaPagto.FormShow(Sender: TObject);
begin
  inherited;
  qryFormaPagto.Open;
  EdExpre.SetFocus;
end;

end.
