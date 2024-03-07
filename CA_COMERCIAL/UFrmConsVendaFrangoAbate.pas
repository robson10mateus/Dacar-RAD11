unit UFrmConsVendaFrangoAbate;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, Grids, DBGrids,
  Buttons, Mask, ExtCtrls, ComCtrls,DateUtils, Vcl.ToolWin;

type
  TFrmConsVendaFrangoAbate = class(TForm)
    PageControl1: TPageControl;
    Tab_Lista: TTabSheet;
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
    DBGrid1: TDBGrid;
    Qr: TOraQuery;
    Ds: TOraDataSource;
    QrNM_CLIENTE: TStringField;
    QrDT_SAIDNOTAFISC: TDateTimeField;
    QrPLACAVEIC: TStringField;
    QrID_INTEGRADO: TFloatField;
    QrNM_FORNECEDOR: TStringField;
    QrID_PEDIVEND: TFloatField;
    QrNR_NOTAFISC: TFloatField;
    QrPESO_NF: TFloatField;
    QrVL_UNIT_NF: TFloatField;
    QrVL_ITEMNF: TFloatField;
    QrQTD_REAL: TFloatField;
    QrPESO_REAL: TFloatField;
    QrVL_UNIT: TFloatField;
    QrPESO_MEDIO: TFloatField;
    QrDIF_PESO: TFloatField;
    QrVL_PESOREAL: TFloatField;
    Qr_Resumo: TOraQuery;
    Ds_Resumo: TOraDataSource;
    Qr_ResumoNM_CLIENTE: TStringField;
    Qr_ResumoID_INTEGRADO: TFloatField;
    Qr_ResumoNM_FORNECEDOR: TStringField;
    Qr_ResumoQTD_REAL: TFloatField;
    Qr_ResumoPESO_REAL: TFloatField;
    Qr_ResumoVL_UNIT: TFloatField;
    Qr_ResumoPESO_MEDIO: TFloatField;
    Qr_ResumoVL_TOTAL: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_PesqDTIClick(Sender: TObject);
    procedure bt_PesqDTFClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_ATUALClick(Sender: TObject);
    procedure SB_RelatorioClick(Sender: TObject);
    procedure QrCalcFields(DataSet: TDataSet);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    DataIni, DataFim:String;
  public
    { Public declarations }
  end;

var
  FrmConsVendaFrangoAbate: TFrmConsVendaFrangoAbate;

implementation

{$R *.dfm}
uses Principal,Global, UFrmSeldata, UFrmRelVendaFrangoAbate ;

procedure TFrmConsVendaFrangoAbate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmConsVendaFrangoAbate:=nil;
  FrmPrincipal.VEN047.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmConsVendaFrangoAbate.bt_PesqDTIClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     if ( Vdtstr <> '' ) then
        edtDataIni.Text := Vdtstr;
     if ( edtDataIni.Enabled )then
        edtDataIni.SetFocus;
end;

procedure TFrmConsVendaFrangoAbate.bt_PesqDTFClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     if ( Vdtstr <> '' ) then
        edtDataFim.Text := Vdtstr;
     if ( edtDataFim.Enabled )then
        edtDataFim.SetFocus;
end;

procedure TFrmConsVendaFrangoAbate.FormShow(Sender: TObject);
var UltData : TDateTime;
begin
     PageControl1.ActivePage :=  Tab_Lista ;
     UltData := IncDay( StartOfTheMonth(Date), -1 );
     DataIni := '';
     DataFim := '';

     edtDataIni.Text := DateToStr( StartOfAMonth( YearOf( UltData), MonthOf(UltData)));
     edtDataFim.Text := DateToStr( UltData) ;
end;

procedure TFrmConsVendaFrangoAbate.Sb_SairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmConsVendaFrangoAbate.SB_ATUALClick(Sender: TObject);
begin
     Qr.DisableControls;
     Qr.Close;
     DataIni := edtDataIni.Text ;
     DataFim := edtDataFim.Text ;

     Qr.ParamByName('DataIni').Value := DataIni ;
     Qr.ParamByName('DataFim').Value := DataFim ;

     Qr_Resumo.ParamByName('DataIni').Value := DataIni ;
     Qr_Resumo.ParamByName('DataFim').Value := DataFim ;

     Qr.Open;
     Qr.EnableControls;
end;

procedure TFrmConsVendaFrangoAbate.SB_RelatorioClick(Sender: TObject);
begin
      FrmRelVendaFrangoAbate := TFrmRelVendaFrangoAbate.Create(Self);
      FrmRelVendaFrangoAbate.PDataIni := DataIni ;
      FrmRelVendaFrangoAbate.PDataFim := DataFim ;
      Qr_Resumo.Close;
      Qr_Resumo.Open;
      Qr.DisableControls;
      //FrmConsApanhaRel.PDSetup.Copies := 1;
      Try
        FrmRelVendaFrangoAbate.RLReport1.Preview(nil);
      Except ;
        Qr.EnableControls;
      End;

      Qr.EnableControls;

end;

procedure TFrmConsVendaFrangoAbate.QrCalcFields(DataSet: TDataSet);
begin
     QrDIF_PESO.Value := QrPESO_NF.Value - QrPESO_REAL.Value;
     QrVL_PESOREAL.Value := QrPESO_REAL.Value * QrVL_UNIT.Value;
end;

procedure TFrmConsVendaFrangoAbate.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = Ord('C')) then
       CTRL_C_Grig ( DBGrid1 );
end;

end.
