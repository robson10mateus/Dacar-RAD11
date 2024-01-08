unit UFrmCartorio;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, Buttons, DB, Ora,
  MemDS, DBAccess, Mask, DBCtrls, ExtCtrls, Vcl.ToolWin;

type
  TFrmCartorio = class(TForm)
    ToolBar1: TToolBar;
    SB_PRIMEIRO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    Sb_Sair: TSpeedButton;
    ToolButton3: TToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Shape1: TShape;
    Label2: TLabel;
    QRcartorio: TOraQuery;
    DSCARTORIO: TOraDataSource;
    QRcartorioDT_ENVIOCARTORIO: TDateTimeField;
    QRcartorioID_CONTA: TFloatField;
    QRcartorioROCORCOBR: TStringField;
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCartorio: TFrmCartorio;

implementation

uses UfrmPedVenda, Principal;

{$R *.dfm}

procedure TFrmCartorio.Sb_SairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCartorio.SB_PRIMEIROClick(Sender: TObject);
begin
  QRcartorio.First;
end;

procedure TFrmCartorio.SB_ANTERIORClick(Sender: TObject);
begin
  QRcartorio.Prior;
end;

procedure TFrmCartorio.SB_PROXIMOClick(Sender: TObject);
begin
  QRcartorio.Next;
end;

procedure TFrmCartorio.SB_ULTIMOClick(Sender: TObject);
begin
  QRcartorio.Last;
end;

procedure TFrmCartorio.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  If (QRcartorio.FieldByName('rocorcobr').AsString = '32')
    or (QRcartorio.FieldByName('rocorcobr').AsString = '40')
     or (QRcartorio.FieldByName('rocorcobr').AsString = '92') then
       DBGrid1.Canvas.Brush.Color  := clred;
   DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmCartorio.FormCreate(Sender: TObject);
begin
frmPrincipal.TrocaNomeSequence(Self);
end;

end.
