unit UFrmImportaEstoqueXLS;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Buttons, ExtCtrls, Winapi.Windows;

type
  TFrmImportaEstoqueXLS = class(TForm)
    pnlBotoes: TPanel;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnAbrirPasta: TSpeedButton;
    btnLimpar: TSpeedButton;
    strgridDados: TStringGrid;
    OpenDialog1: TOpenDialog;
    procedure strgridDadosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btnAbrirPastaClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImportaEstoqueXLS: TFrmImportaEstoqueXLS;

implementation

{$R *.dfm}
uses
  UFrmEstoque, Global, ufrmImportacaoDadosXLS;

procedure TFrmImportaEstoqueXLS.strgridDadosDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
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

procedure TFrmImportaEstoqueXLS.btnAbrirPastaClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    XlsToStringGrid(strgridDados,OpenDialog1.FileName)
  else
    Exit;
end;

procedure TFrmImportaEstoqueXLS.btnConfirmarClick(Sender: TObject);
var
  x, r, y, k:Integer;
begin
  if Application.MessageBox('Deseja Importar os Dados carregados?', PChar(FrmImportaEstoqueXLS.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
  begin
    x := strgridDados.RowCount;
    y := strgridDados.ColCount;

    case FrmOriPesq of
      0:
      begin
        k:= 1;
        repeat
          FrmEstoque.cdsTemp.Append;
          for r := 0 to y-1 do
          begin
            case r of
              0:FrmEstoque.CdsTempID_PRODMATEEMBA.AsString  := strgridDados.Cells[r, k];
              1:FrmEstoque.CdsTempESTOQUE_ANT_CX.AsString   := strgridDados.Cells[r, k];
            end;
          end;
          Inc(k, 1);
          FrmEstoque.cdsTemp.Post;
        until k>x;
      end;
    end;

    btnCancelarClick(self);

  end
  else
    Exit;

end;

procedure TFrmImportaEstoqueXLS.btnLimparClick(Sender: TObject);
var
  I :Integer;
begin
  with strgridDados do
    for I := 0 to RowCount -1 do
      Rows[I].Clear;
end;

procedure TFrmImportaEstoqueXLS.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.

