unit UFrmPesqCarga;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TFrmModelPesqui = class(TForm)
    DBGrid1: TDBGrid;
    pnlBotoes: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    pnlFiltros: TPanel;
    Label1: TLabel;
    EdExpre: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModelPesqui: TFrmModelPesqui;

implementation

{$R *.dfm}

procedure TFrmModelPesqui.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmModelPesqui.FormShow(Sender: TObject);
begin
  EdExpre.SetFocus;
end;

procedure TFrmModelPesqui.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= clSilver;

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

end.
