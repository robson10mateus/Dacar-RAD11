unit UFrmConsApanha;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, Grids, DBGrids,
  Buttons, Mask, ExtCtrls, ComCtrls, DateUtils, Vcl.ToolWin;

type
  TFrmConsApanha = class(TForm)
    ToolBar1: TToolBar;
    SB_Relatorio: TSpeedButton;
    Sb_Sair: TSpeedButton;
    SB_ATUAL: TSpeedButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    DBGrid1: TDBGrid;
    Qr: TOraQuery;
    Ds: TOraDataSource;
    PageControl1: TPageControl;
    Tab_Lista: TTabSheet;
    Panel1: TPanel;
    Label49: TLabel;
    edtDataIni: TMaskEdit;
    bt_PesqDTI: TBitBtn;
    Label1: TLabel;
    edtDataFim: TMaskEdit;
    bt_PesqDTF: TBitBtn;
    QrDT_SAIDNOTAFISC: TDateTimeField;
    QrNR_NOTAFISC: TFloatField;
    QrNM_CLIENTE: TStringField;
    QrPLACAVEIC: TStringField;
    QrID_INTEGRADO: TFloatField;
    QrNM_FORNECEDOR: TStringField;
    QrIDADE: TFloatField;
    QrQTD_AVESABAT: TFloatField;
    QrLIQUIDO: TFloatField;
    QrPESO_MEDIO: TFloatField;
    QrTURMA: TIntegerField;
    QrTURMEIRO: TStringField;
    Qr_Turma: TOraQuery;
    Ds_Turma: TOraDataSource;
    Qr_TurmaTURMA: TIntegerField;
    Qr_TurmaTURMEIRO: TStringField;
    Qr_TurmaAVES: TFloatField;
    Qr_Abatedouro: TOraQuery;
    Ds_Abatedouro: TOraDataSource;
    Qr_AbatedouroNM_CLIENTE: TStringField;
    Qr_AbatedouroAVES: TFloatField;
    QrQTD_PREVISAO: TFloatField;
    QrDIF_QTDE: TFloatField;
    Qr_TurmaPESO_AVES: TFloatField;
    Qr_AbatedouroPESO_AVES: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_PesqDTIClick(Sender: TObject);
    procedure bt_PesqDTFClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_RelatorioClick(Sender: TObject);
    procedure SB_ATUALClick(Sender: TObject);
    procedure QrCalcFields(DataSet: TDataSet);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    SELPE : integer;
    DataIni, DataFim:String;
  public
    { Public declarations }
    VFor,NFor,NEND,NCEP,NFONE, ID_LIN : String;
    VCid, NCid, NEst, NPais, NReg : String;
  end;

var
  FrmConsApanha: TFrmConsApanha;

implementation

{$R *.dfm}
uses Principal,Global, UFrmConsApanhaRel , UFrmSeldata ;

procedure TFrmConsApanha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmConsApanha:=nil;
  FrmPrincipal.VEN046.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmConsApanha.bt_PesqDTIClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     if ( Vdtstr <> '' ) then
        edtDataIni.Text := Vdtstr;
     if ( edtDataIni.Enabled )then
        edtDataIni.SetFocus;
end;

procedure TFrmConsApanha.bt_PesqDTFClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     if ( Vdtstr <> '' ) then
        edtDataFim.Text := Vdtstr;
     if ( edtDataFim.Enabled )then
        edtDataFim.SetFocus;

end;

procedure TFrmConsApanha.FormShow(Sender: TObject);
var UltData : TDateTime;
begin
     PageControl1.ActivePage :=  Tab_Lista ;
     UltData := IncDay( StartOfTheMonth(Date), -1 );
     DataIni := '';
     DataFim := '';

     edtDataIni.Text := DateToStr( StartOfAMonth( YearOf( UltData), MonthOf(UltData)));
     edtDataFim.Text := DateToStr( UltData) ;
end;

procedure TFrmConsApanha.Sb_SairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmConsApanha.SB_RelatorioClick(Sender: TObject);
begin
      FrmConsApanhaRel := TFrmConsApanhaRel.Create(Self);
      FrmConsApanhaRel.PDataIni := DataIni ;
      FrmConsApanhaRel.PDataFim := DataFim ;
      Qr.DisableControls;
      //FrmConsApanhaRel.PDSetup.Copies := 1;
      Try
        FrmConsApanhaRel.RLReport1.Preview(nil);
      Except ;
        Qr.EnableControls;
      End;

      Qr.EnableControls;
end;

procedure TFrmConsApanha.SB_ATUALClick(Sender: TObject);
begin
     Qr.DisableControls;
     Qr.Close;
     DataIni := edtDataIni.Text ;
     DataFim := edtDataFim.Text ;

     Qr.ParamByName('DataIni').Value := DataIni ;
     Qr.ParamByName('DataFim').Value := DataFim ;
     Qr_Turma.ParamByName('DataIni').Value := DataIni ;
     Qr_Turma.ParamByName('DataFim').Value := DataFim ;
     Qr_Abatedouro.ParamByName('DataIni').Value := DataIni ;
     Qr_Abatedouro.ParamByName('DataFim').Value := DataFim ;
     Qr.Open;
     Qr.EnableControls;
end;

procedure TFrmConsApanha.QrCalcFields(DataSet: TDataSet);
begin
     QrDIF_QTDE.Value := QrQTD_PREVISAO.Value - QrQTD_AVESABAT.Value;
end;

procedure TFrmConsApanha.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = Ord('C')) then
       CTRL_C_Grig ( DBGrid1 );
end;

end.
