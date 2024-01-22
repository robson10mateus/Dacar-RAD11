unit uFrmPesqPadrao;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF}, Types, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsultaPadrao = class(TForm)
    pnlBotoes: TPanel;
    pnlFiltros: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    EdExpre: TEdit;
    Label3: TLabel;
    ComboBox2: TComboBox;
    procedure FormShortCut(Key: Integer; Shift: TShiftState;
      var Handled: Boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaPadrao: TfrmConsultaPadrao;

implementation

{$R *.dfm}

procedure TfrmConsultaPadrao.FormShortCut(Key: Integer; Shift: TShiftState;
  var Handled: Boolean);
begin
  case Key of
    4096: Close;          // ESC para sair
    4145: BitBtn2.Click;  // F2 para confirmar a seleção
    4148: BitBtn1.Click;  // F5 para pesquisa
  end;
end;

procedure TfrmConsultaPadrao.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TfrmConsultaPadrao.FormShow(Sender: TObject);
begin
  EdExpre.SetFocus;
end;

procedure TfrmConsultaPadrao.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

end.
