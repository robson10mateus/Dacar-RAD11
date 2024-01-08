unit UFrmPedVendaConta;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, MemDS, DBAccess, Ora, CheckLst, Grids, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBGrids, Winapi.Windows;


type
  TFrmPedVendaConta = class(TForm)
    qryContas: TOraQuery;
    qryContasID_CONTA: TFloatField;
    qryContasNM_CONTA: TStringField;
    qryContasFL_PADRCONT: TStringField;
    DBGrid1: TDBGrid;
    dtsContas: TDataSource;
    qryTemp: TOraQuery;
    Panel1: TPanel;
    sb_Ativa: TSpeedButton;
    sb_Desativa: TSpeedButton;
    Sb_Sair: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    edtLoc: TEdit;
    qryContasFL_ATIVA: TStringField;
    procedure Sb_SairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtLocChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure sb_AtivaClick(Sender: TObject);
    procedure sb_DesativaClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedVendaConta: TFrmPedVendaConta;

implementation

uses Principal;

{$R *.dfm}

procedure TFrmPedVendaConta.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPedVendaConta.FormCreate(Sender: TObject);
begin
  qryContas.Open;
end;

procedure TFrmPedVendaConta.edtLocChange(Sender: TObject);
begin
  qryContas.Close;
  qryContas.SQL.Clear;
  qryContas.SQL.Add('SELECT');
  qryContas.SQL.Add('CONTA.ID_CONTA,');
  qryContas.SQL.Add('CONTA.NM_CONTA,');
  qryContas.SQL.Add('FL_PADRCONT, FL_ATIVA');
  qryContas.SQL.Add('FROM');
  qryContas.SQL.Add('CONTA');
  qryContas.SQL.Add('WHERE CONTA.NM_CONTA LIKE ' + QuotedStr('%' + edtLoc.Text + '%'));
  qryContas.SQL.Add('ORDER BY NM_CONTA');
  qryContas.Open;
end;

procedure TFrmPedVendaConta.DBGrid1DblClick(Sender: TObject);
var
  vMarca: TBookmark;
begin
  Screen.Cursor:= crSQLWait;
  vMarca:= qryContas.GetBookmark;
  qryTemp.SQL.Clear;

  if qryContasFL_ATIVA.Value = 'N' then
    qryTemp.SQL.Add('UPDATE CONTA SET FL_ATIVA = ''S'' WHERE ID_CONTA = ' + qryContasID_CONTA.Text)
  else
    qryTemp.SQL.Add('UPDATE CONTA SET FL_ATIVA = ''N'' WHERE ID_CONTA = ' + qryContasID_CONTA.Text);

  qryTemp.ExecSQL;
  qryContas.Close;
  qryContas.Open;
  qryContas.GotoBookmark(vMarca);
  qryContas.FreeBookmark(vMarca);
  Screen.Cursor:= crDefault;
end;

procedure TFrmPedVendaConta.sb_AtivaClick(Sender: TObject);
var
  vMarca: TBookmark;
begin
  if Application.MessageBox('Deseja realmente ATIVAR todas as Contas?', PChar(FrmPedVendaConta.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES  then
  begin
    vMarca:= qryContas.GetBookmark;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('UPDATE CONTA SET FL_ATIVA = ''S''');
    qryTemp.ExecSQL;
    qryContas.Close;
    qryContas.Open;
    qryContas.GotoBookmark(vMarca);
    qryContas.FreeBookmark(vMarca);
  end
  else
    Exit;
end;

procedure TFrmPedVendaConta.sb_DesativaClick(Sender: TObject);
var
  vMarca: TBookmark;
begin
  if Application.MessageBox('Deseja realmente DESATIVAR todas as Contas?', PChar(FrmPedVendaConta.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES  then
  begin
    vMarca:= qryContas.GetBookmark;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('UPDATE CONTA SET FL_ATIVA = ''N''');
    qryTemp.ExecSQL;
    qryContas.Close;
    qryContas.Open;
    qryContas.GotoBookmark(vMarca);
    qryContas.FreeBookmark(vMarca);
  end
  else
    Exit;
end;

procedure TFrmPedVendaConta.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  IF qryContasFL_ATIVA.Value = 'S' then
    DBGrid1.Canvas.Brush.Color:=$c2ffbf
  else
    DBGrid1.Canvas.Brush.Color:=$000FFF;
    
  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);

end;

end.
