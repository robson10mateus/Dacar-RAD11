unit UFRMUltVend;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, Buttons, DB, Ora,
  MemDS, DBAccess, Mask, DBCtrls, ExtCtrls, Vcl.ToolWin;

type
  TFrmUltVend = class(TForm)
    ToolBar1: TToolBar;
    Sb_Sair: TSpeedButton;
    ToolButton3: TToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    QRUltVend: TOraQuery;
    DSUltVend: TOraDataSource;
    QRItemVend: TOraQuery;
    DSItem: TOraDataSource;
    Panel1: TPanel;
    QRItemVendQN_EMBAITEMPEDIVEND: TFloatField;
    QRItemVendQN_PESOITEMPEDIVEND: TFloatField;
    QRItemVendID_PRODMATEEMBA: TStringField;
    QRItemVendNM_PRODMATEEMBA: TStringField;
    QRItemVendVL_UNITITEMPEDIVEND: TFloatField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    QRUltVendID_CLIENTE: TFloatField;
    QRUltVendNM_CLIENTE: TStringField;
    QRUltVendID_PEDIVEND: TFloatField;
    QRUltVendDT_PEDIVEND: TDateTimeField;
    QRUltVendDT_ENTRPEDIVEND: TDateTimeField;
    QRUltVendDT_VENCPEDIVEND: TDateTimeField;
    QRUltVendVL_PEDIVEND: TFloatField;
    QRUltVendNM_FORMPAGA: TStringField;
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUltVend: TFrmUltVend;

implementation

uses UfrmPedVenda;

{$R *.dfm}

procedure TFrmUltVend.Sb_SairClick(Sender: TObject);
begin
 // Forçamos o Exit do componente anterior
  ActiveControl := Nil;

  // Fechamos a janela
  Close;
end;

procedure TFrmUltVend.SB_PRIMEIROClick(Sender: TObject);
begin
  QRUltVend.First;
end;

procedure TFrmUltVend.SB_ANTERIORClick(Sender: TObject);
begin
  QRUltVend.Prior;
end;

procedure TFrmUltVend.SB_PROXIMOClick(Sender: TObject);
begin
  QRUltVend.Next;
end;

procedure TFrmUltVend.SB_ULTIMOClick(Sender: TObject);
begin
  QRUltVend.Last;
end;

procedure TFrmUltVend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
///  Action := caFree;
end;

end.
