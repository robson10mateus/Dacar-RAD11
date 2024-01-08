unit uFrmRelVendasVendedorPercentual;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, MemDS, DBAccess, Ora, ExtCtrls, Buttons,
  RLReport, Winapi.Windows;

type
  TfrmRelVendasVendedorPercentual = class(TForm)
    Panel1: TPanel;
    btnSair: TSpeedButton;
    SB_Relatorio: TSpeedButton;
    BtLimpar: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    edtDataInicial: TEdit;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    edtDataFinal: TEdit;
    BitBtn3: TBitBtn;
    lblVendedor: TLabel;
    edtVendedor: TEdit;
    btnVendedor: TBitBtn;
    SP_RANKING_VENDEDOR: TOraSQL;
    CheckBox1: TCheckBox;
    RLGroup1: TRLGroup;
    dtsMovimento: TOraDataSource;
    qryMovimento: TOraQuery;
    qryMovimentoNM_VENDEDOR: TStringField;
    qryMovimentoTT_VENDEDOR: TFloatField;
    qryMovimentoTT_PERIODO: TFloatField;
    qryMovimentoVL_PERCENT: TFloatField;
    qryMovimentoTT_PESO: TFloatField;
    qryMovimentoCO_VENDEDOR: TIntegerField;
    qryMovimentoDT_EMISSAO: TDateTimeField;
    procedure btnSairClick(Sender: TObject);
    procedure SB_RelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnVendedorClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure FormShortCut(Key: Integer; Shift: TShiftState;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Vdtstr, sVendedor :String;
  end;

var
  frmRelVendasVendedorPercentual: TfrmRelVendasVendedorPercentual;

implementation

uses UFrmSeldata, DateUtils, Principal, Global, UFrmPesqVend, uFrmRelPercentualVendasVendedor;

{$R *.dfm}

procedure TfrmRelVendasVendedorPercentual.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelVendasVendedorPercentual.SB_RelatorioClick(
  Sender: TObject);
var
  sWhere: string;
begin
  if ((edtDataInicial.Text <> '') and (edtDataFinal.Text = '')) then
  begin
    Application.MessageBox('                    Data Final deve ser preenchida.                 ', PChar(frmRelVendasVendedorPercentual.Caption), MB_OK + MB_ICONINFORMATION);
    edtDataFinal.SetFocus;
    Exit;
  end;

  if ((edtDataInicial.Text = '') and (edtDataFinal.Text <> '')) then
  begin
    Application.MessageBox('                    Data Inicial deve ser preenchida.                 ', PChar(frmRelVendasVendedorPercentual.Caption), MB_OK + MB_ICONINFORMATION);
    edtDataFinal.SetFocus;
    Exit;
  end;

  if StrToDate(edtDataFinal.Text) < StrToDate(edtDataInicial.Text) then
  begin
    Application.MessageBox('          Data Final não pode ser menor que Data Inicial.         ', PChar(frmRelVendasVendedorPercentual.Caption), MB_OK + MB_ICONINFORMATION);
    edtDataFinal.SetFocus;
    Exit;
  end;

  Screen.Cursor := crSQLWait;

  SP_RANKING_VENDEDOR.ParamByName('dtIni').Value := StrToDate( edtDataInicial.Text );
  SP_RANKING_VENDEDOR.ParamByName('dtFim').Value := StrToDate( edtDataFinal.Text );

  try
    SP_RANKING_VENDEDOR.Execute;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao processar o Relatório. '+ E.Message , mtInformation,[mbOk], 0, mbOk);
    end;
  end;

  sWhere:= '';
  qryMovimento.Close;
  qryMovimento.SQL.Clear;
  qryMovimento.SQL.Text:= 'SELECT * FROM REL_RANKING_VENDEDOR ';

  if edtVendedor.Text <> ''then
    sWhere := sWhere + ' WHERE CO_VENDEDOR = ' + sVendedor;

  qryMovimento.SQL.Add(sWhere);
  qryMovimento.Open;
  Screen.Cursor := crDefault;

  if qryMovimento.RecordCount > 0 then
  begin
    FrmRelPercentualVendasVendedor := TFrmRelPercentualVendasVendedor.Create(Self);
    if sVendedor <> '' then
    begin
      FrmRelPercentualVendasVendedor.HeaderData.Visible := False;
      FrmRelPercentualVendasVendedor.SubHeaderData.Visible := False;
      frmRelPercentualVendasVendedor.DetailsData.Visible := False;
      frmRelPercentualVendasVendedor.FooterData.Visible := False;
    end
    else
    begin
      FrmRelPercentualVendasVendedor.HeaderVendedor.Visible := False;
      frmRelPercentualVendasVendedor.DetailsVendedor.Visible := False;
      FrmRelPercentualVendasVendedor.FooterTotalPeriodoVendedor.Visible := False;
    end;

    FrmRelPercentualVendasVendedor.lblSubTitulo2.Caption := 'Período de ' + edtDataInicial.Text + ' a ' + edtDataFinal.Text;
    FrmRelPercentualVendasVendedor.lblUsuario.Caption := gs_NomeUsuario;
    FrmRelPercentualVendasVendedor.RLReport1.Preview(nil);
  end
  else
  begin
    Application.MessageBox('          Não há registros para o período informado.             ', PChar(frmRelVendasVendedorPercentual.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
end;

procedure TfrmRelVendasVendedorPercentual.FormShow(Sender: TObject);
begin
  edtDataInicial.Text:= DateToStr(Today);
  edtDataFinal.Text:= DateToStr(Today);
end;

procedure TfrmRelVendasVendedorPercentual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmRelVendasVendedorPercentual:=Nil;
  FrmPrincipal.VEN067.Enabled:= True;
  Action:=caFree;
end;

procedure TfrmRelVendasVendedorPercentual.BitBtn1Click(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  edtDataInicial.Text := Vdtstr;
  edtDataInicial.SetFocus;
end;

procedure TfrmRelVendasVendedorPercentual.BitBtn3Click(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  edtDataFinal.Text := Vdtstr;
  edtDataFinal.SetFocus;
end;

procedure TfrmRelVendasVendedorPercentual.btnVendedorClick(
  Sender: TObject);
begin
  FrmOriPesq:=67;
  FrmPesqVend:=TFrmPesqVend.Create(Self);
  FrmPesqVend.ShowModal;
end;

procedure TfrmRelVendasVendedorPercentual.BtLimparClick(Sender: TObject);
begin
  edtVendedor.Text := '';
  sVendedor:= '';
end;

procedure TfrmRelVendasVendedorPercentual.FormShortCut(Key: Integer;
  Shift: TShiftState; var Handled: Boolean);
begin
  case Key of
    4096: Close;                // ESC para sair
    4152: SB_Relatorio.Click;   // F9 para gerar relatório
  end;
end;

end.

