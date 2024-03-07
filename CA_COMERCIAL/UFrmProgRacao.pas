unit UFrmProgRacao;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, ComCtrls, Buttons,
  Mask, DBCtrls, DB, Ora, MemDS, DBAccess, Vcl.ToolWin, OraSmart;

type
  TFrmProgRacao = class(TForm)
    ToolBar1: TToolBar;
    SB_Relatorio: TSpeedButton;
    Sb_Sair: TSpeedButton;
    SB_ATUAL: TSpeedButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label49: TLabel;
    Ds: TOraDataSource;
    edtDataIni: TMaskEdit;
    edtDataFim: TMaskEdit;
    edt_Teste: TMaskEdit;
    bt_PesqDTI: TBitBtn;
    bt_PesqDTF: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Qr: TSmartQuery;
    QrPREV: TDateTimeField;
    QrID_LOTE: TFloatField;
    QrDATA_ALOJAMENTO: TDateTimeField;
    QrIDADE: TFloatField;
    QrSEMANA: TFloatField;
    QrAVES: TFloatField;
    QrRACAO: TFloatField;
    QrPROX_ENTREGA_RACAO: TDateTimeField;
    QrRP_SEM: TFloatField;
    QrRP_DIA: TFloatField;
    QrRP_DIA_SEMSEG: TFloatField;
    QrRP_ACUM_ANT: TFloatField;
    QrRP_ACUM: TFloatField;
    QrRAC_SOBRA: TFloatField;
    QrRAC_SOBRA2: TFloatField;
    QrINIC_SEM: TDateTimeField;
    QrINIC_SEM_SEG: TDateTimeField;
    QrDIAS_RAC: TFloatField;
    QrDIAS_RAC2: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_PesqDTIClick(Sender: TObject);
    procedure bt_PesqDTFClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SB_ATUALClick(Sender: TObject);
    procedure CRTemp_QrBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SB_RelatorioClick(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProgRacao: TFrmProgRacao;

implementation

{$R *.dfm}
uses Principal,Global, UFrmSeldata, UFrmRelLoteAnalitico, UFrmRelProgRacao;


procedure TFrmProgRacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmProgRacao:=nil;
  FrmPrincipal.VEN044.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmProgRacao.bt_PesqDTIClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     if ( Vdtstr <> '' ) then
        edtDataIni.Text := Vdtstr;
     if ( edtDataIni.Enabled )then
        edtDataIni.SetFocus;

end;

procedure TFrmProgRacao.bt_PesqDTFClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     if ( Vdtstr <> '' ) then
        edtDataFim.Text := Vdtstr;
     if ( edtDataFim.Enabled )then
        edtDataFim.SetFocus;

end;

procedure TFrmProgRacao.BitBtn1Click(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     if ( Vdtstr <> '' ) then
        edt_Teste.Text := Vdtstr;
     if ( edt_Teste.Enabled )then
        edt_Teste.SetFocus;
end;

procedure TFrmProgRacao.SB_ATUALClick(Sender: TObject);
begin
     Qr.DisableControls;
     Qr.Close;
     Qr.MacroByName('Macro').Value := 'WHERE CA.SEMANA <= 8 ';
     Qr.Open;

     Qr.First;
     while not Qr.Eof do
     begin
          if (QrPROX_ENTREGA_RACAO.Value <> QrPREV.Value ) then
          begin
               Qr.Edit;
               QrPROX_ENTREGA_RACAO.Value := QrPREV.Value;
          end;
          Qr.Next;
     end;
     Qr.CommitUpdates;
     Qr.ApplyUpdates;

     Qr.Close;
     Qr.MacroByName('Macro').Value := ' WHERE PROX_ENTREGA_RACAO >=  TO_DATE( ''' + edtDataIni.Text + ''',''DD/MM/YYYY'' )' +
                                      '   AND PROX_ENTREGA_RACAO <=  TO_DATE( ''' + edtDataFim.Text + ''',''DD/MM/YYYY'' ) AND CA.SEMANA <= 8  ';
     Qr.Open;
     Qr.EnableControls;

end;

procedure TFrmProgRacao.CRTemp_QrBeforeOpen(DataSet: TDataSet);
begin
     Qr.ParamByName('DataTeste').Value := edt_Teste.Text;
end;

procedure TFrmProgRacao.FormShow(Sender: TObject);
begin
    edt_Teste.Text  := DateToStr(Date);
    edtDataIni.Text := DateToStr(Date);
    edtDataFim.Text := DateToStr(Date + 6 );
end;

procedure TFrmProgRacao.SB_RelatorioClick(Sender: TObject);
begin
      FrmRelProgRacao := TFrmRelProgRacao.Create(Self);
      FrmRelProgRacao.PDataIni := StrToDate(edtDataIni.Text);
      FrmRelProgRacao.PDataFim := StrToDate(edtDataFim.Text);
      //FrmRelLoteAnalitico.PID_LOTE := QrID_LOTE.AsInteger;
     // FrmRelLoteAnalitico.PID_INTEGRADO := QrID_INTEGRADO.AsInteger;
//      FrmRelProgRacao.RLPrintDialogSetup1.Copies := 1;
      FrmRelProgRacao.RLReport1.Preview(nil);
end;

procedure TFrmProgRacao.Sb_SairClick(Sender: TObject);
begin
    Close;
end;

procedure TFrmProgRacao.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = Ord('C')) then
       CTRL_C_Grig ( DBGrid1 );
end;

end.
