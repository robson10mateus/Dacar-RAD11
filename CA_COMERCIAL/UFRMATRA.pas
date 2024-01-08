unit UFRMATRA;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, Buttons, DB, Ora,
  MemDS, DBAccess, Mask, DBCtrls, ExtCtrls, Vcl.ToolWin;

type
  TFrmATRA = class(TForm)
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
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    QRVENC: TOraQuery;
    QRVENCRNUMEDOCU: TStringField;
    QRVENCRDATAVENC: TDateTimeField;
    QRVENCRVALODOCU: TFloatField;
    QRVENCRST_COBRA: TStringField;
    QRVENCRID_CONTA: TFloatField;
    QRVENCTIPO: TStringField;
    DSVenc: TOraDataSource;
    QRTOT: TOraQuery;
    QRTOTVLABERTO: TFloatField;
    DSTOT: TOraDataSource;
    QRVENCNM_CONTA: TStringField;
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
  FrmATRA: TFrmATRA;

implementation

uses UfrmPedVenda, Principal;

{$R *.dfm}

procedure TFrmATRA.Sb_SairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmATRA.SB_PRIMEIROClick(Sender: TObject);
begin
  QRVENC.First;
end;

procedure TFrmATRA.SB_ANTERIORClick(Sender: TObject);
begin
  QRVENC.Prior;
end;

procedure TFrmATRA.SB_PROXIMOClick(Sender: TObject);
begin
  QRVENC.Next;
end;

procedure TFrmATRA.SB_ULTIMOClick(Sender: TObject);
begin
  QRVENC.Last;
end;

procedure TFrmATRA.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  If Qrvenc.FieldByName('rdatavenc').AsDateTime < frmpedvenda.VDATATU  then
     DBGrid1.Canvas.font.Color  := clred;

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmATRA.FormCreate(Sender: TObject);
begin
 frmPrincipal.TrocaNomeSequence(Self);
end;

end.
