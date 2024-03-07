unit UFrmConsRemessaRacao;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DB, Grids, DBGrids, Ora, MemDS, DBAccess,
  Buttons, Mask, ExtCtrls, ComCtrls,DateUtils, Vcl.ToolWin;

type
  TFrmConsRemessaRacao = class(TForm)
    ToolBar1: TToolBar;
    SB_Relatorio: TSpeedButton;
    Sb_Sair: TSpeedButton;
    SB_ATUAL: TSpeedButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Panel1: TPanel;
    Label49: TLabel;
    edtDataIni: TMaskEdit;
    bt_PesqDTI: TBitBtn;
    Label1: TLabel;
    edtDataFim: TMaskEdit;
    bt_PesqDTF: TBitBtn;
    Qr: TOraQuery;
    Ds: TOraDataSource;
    DBGrid1: TDBGrid;
    QrID_LOTE: TFloatField;
    QrDT_SAIDNOTAFISC: TDateTimeField;
    QrNR_NOTAFISC: TFloatField;
    QrNM_PRODMATEEMBA: TStringField;
    QrNM_FORNECEDOR: TStringField;
    QrOPERACAO: TStringField;
    QrQN_EMBAITEMNOTAFISC: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_PesqDTIClick(Sender: TObject);
    procedure bt_PesqDTFClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_ATUALClick(Sender: TObject);
    procedure SB_RelatorioClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }
     DataIni, DataFim:String;
  end;

var
  FrmConsRemessaRacao: TFrmConsRemessaRacao;

implementation

{$R *.dfm}
uses Principal,Global, UFrmSeldata, UFrmRelRemessaRacao;

procedure TFrmConsRemessaRacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmConsRemessaRacao:=nil;
  FrmPrincipal.VEN049.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmConsRemessaRacao.bt_PesqDTIClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     if ( Vdtstr <> '' ) then
        edtDataIni.Text := Vdtstr;
     if ( edtDataIni.Enabled )then
        edtDataIni.SetFocus;
end;

procedure TFrmConsRemessaRacao.bt_PesqDTFClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     if ( Vdtstr <> '' ) then
        edtDataFim.Text := Vdtstr;
     if ( edtDataFim.Enabled )then
        edtDataFim.SetFocus;
end;

procedure TFrmConsRemessaRacao.FormShow(Sender: TObject);
begin
     DataIni := '';
     DataFim := '';

     edtDataIni.Text := DateToStr( ( Today - 1) );
     edtDataFim.Text := edtDataIni.Text ;
end;

procedure TFrmConsRemessaRacao.Sb_SairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmConsRemessaRacao.SB_ATUALClick(Sender: TObject);
begin
     Qr.DisableControls;
     Qr.Close;
     DataIni := edtDataIni.Text ;
     DataFim := edtDataFim.Text ;

     Qr.ParamByName('DataIni').Value := DataIni ;
     Qr.ParamByName('DataFim').Value := DataFim ;

     Qr.Open;
     Qr.EnableControls;

end;

procedure TFrmConsRemessaRacao.SB_RelatorioClick(Sender: TObject);
begin
      Qr.DisableControls;
      FrmRelRemessaRacao := TFrmRelRemessaRacao.Create(Self);
//      FrmRelRemessaRacao.RLPrintDialogSetup1.Copies := 1;
      FrmRelRemessaRacao.RLReport1.Preview(nil);
      Qr.EnableControls;
end;

procedure TFrmConsRemessaRacao.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = Ord('C')) then
       CTRL_C_Grig ( DBGrid1 );
end;

end.
