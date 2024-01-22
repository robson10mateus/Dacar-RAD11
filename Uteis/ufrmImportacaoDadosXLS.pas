unit ufrmImportacaoDadosXLS;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBClient, DB, Winapi.Windows;

type
  TfrmImportacaoDadosXLS = class(TForm)
    strgridDados: TStringGrid;
    pnlBotoes: TPanel;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnAbrirPasta: TSpeedButton;
    OpenDialog1: TOpenDialog;
    btnLimpar: TSpeedButton;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAbrirPastaClick(Sender: TObject);
    procedure strgridDadosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sForm : TForm;
    sDataSet    : TClientDataSet;
    sDataSource : TDataSource;
  end;

var
  frmImportacaoDadosXLS: TfrmImportacaoDadosXLS;

implementation

{$R *.dfm}
uses
  UFrmTabPreco, Global;

procedure TfrmImportacaoDadosXLS.btnConfirmarClick(Sender: TObject);
var
  x, r, y, k:Integer;
begin
  if Application.MessageBox('Deseja Importar os Dados carregados?', PChar(frmImportacaoDadosXLS.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
  begin
    x := strgridDados.RowCount;
    y := strgridDados.ColCount;

    case FrmOriPesq of
      4:
      begin
        k:= 1;
        repeat
          FrmTabPreco.cdsTemp.Append;
          for r := 0 to y-1 do
          begin
            case r of
              0:FrmTabPreco.cdsTempCOD.AsString         := strgridDados.Cells[r, k];
              2:FrmTabPreco.cdsTempVL_5.AsString        := strgridDados.Cells[r, k];
              3:FrmTabPreco.cdsTempVL_10.AsString       := strgridDados.Cells[r, k];
              4:FrmTabPreco.cdsTempVL_30.AsString       := strgridDados.Cells[r, k];
              5:FrmTabPreco.cdsTempVL_50.AsString       := strgridDados.Cells[r, k];
              6:FrmTabPreco.cdsTempVL_100.AsString      := strgridDados.Cells[r, k];
              7:FrmTabPreco.cdsTempVL_ACIMA100.AsString := strgridDados.Cells[r, k];
            end;
          end;
          Inc(k, 1);
          FrmTabPreco.cdsTemp.Post;
        until k>x;
      end;
    end;

    btnCancelarClick(self);

  end
  else
    Exit;

end;

procedure TfrmImportacaoDadosXLS.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImportacaoDadosXLS.btnAbrirPastaClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    XlsToStringGrid(strgridDados,OpenDialog1.FileName)
  else
    Exit;

end;

procedure TfrmImportacaoDadosXLS.strgridDadosDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  If (arow > 0)  then
    if (odd(arow)) then
      strgridDados.Canvas.Brush.Color:= $00CCFFCC
    else
      strgridDados.Canvas.Brush.Color:= clWhite;

  strgridDados.Canvas.Font.Color:= clBlack;
  strgridDados.Canvas.FillRect(Rect);
  strgridDados.Canvas.TextOut(Rect.Left+2,Rect.Top,strgridDados.Cells[acol,arow]);
end;

procedure TfrmImportacaoDadosXLS.btnLimparClick(Sender: TObject);
var
  I: integer;
begin
  with strgridDados do
    for I := 0 to RowCount -1 do
      Rows[I].Clear;
end;

end.

