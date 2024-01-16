{************ CRÉDITOS DO SISTEMA *************
* Revisado por: Edmilde Freire Montagnoli     *
* Desenvolvido para: Céu Azul Alimentos       *
* Inicio: 25/07/2010 * Versão: 1.0.0.0        *
**********************************************}

unit uFrmReImpressao;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DB, Mask, uDmPrincipal,
  uVg_VariaveisGlobais;

type
  TFrmReImpressao = class(TForm)
    dtsReImpressao: TDataSource;
    dtsLogReImpressao: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RadioGroup1: TRadioGroup;
    GroupBox2: TGroupBox;
    edtCodProd_01: TEdit;
    Panel1: TPanel;
    btnVerificar: TButton;
    btnFechar: TButton;
    btnImpUltEtiqueta: TButton;
    btnImprimir: TButton;
    dbgResultado: TDBGrid;
    StatusBar1: TStatusBar;
    DBGrid2: TDBGrid;
    edtDataInicial: TMaskEdit;
    edtDataFinal: TMaskEdit;
    edtBalanca: TEdit;
    edtSeqInicial: TEdit;
    edtSeqFinal: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnImpUltEtiquetaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edtCodProd_01KeyPress(Sender: TObject; var Key: Char);
    procedure edtSeqInicialExit(Sender: TObject);
    procedure edtSeqFinalExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dtsReImpressaoDataChange(Sender: TObject; Field: TField);
    procedure PageControl1Change(Sender: TObject);
  private
    FReImpFiltro: TReImpressao;
    procedure ValidaParametros;
    procedure MontaParametros;
    { Private declarations }
  public
    { Public declarations }
  end;

procedure CriaForm_FrmReImpressao;

var
  FrmReImpressao: TFrmReImpressao;

implementation

uses UFrmPrincipal;

{$R *.dfm}

procedure TFrmReImpressao.ValidaParametros;
var
  Data: TDateTime;
begin

  try
    Data := StrToDateTime(edtDataInicial.Text);
  except
    raise Exception.Create('Data Inicial INVÁLIDA!');
  end;

  try
    Data := StrToDateTime(edtDataFinal.Text);
  except
    raise Exception.Create('Data Final INVÁLIDA!');
  end;

  if Length(edtBalanca.Text) <> 2 then
    raise Exception.Create('Balança INVÁLIDA!');

  if Length(edtSeqInicial.Text) <> 4 then
    raise Exception.Create('Sequencial Inicial INVÁLIDO!');

  if Length(edtSeqFinal.Text) <> 4 then
    raise Exception.Create('Sequencial Final INVÁLIDA!');

end;

procedure TFrmReImpressao.MontaParametros;
begin

  FReImpFiltro.valSeqInicial := StringReplace(edtDataInicial.Text, '/', '', [rfReplaceAll]) + edtBalanca.Text + edtSeqInicial.Text;
  FReImpFiltro.valSeqFinal := StringReplace(edtDataFinal.Text, '/', '', [rfReplaceAll]) + edtBalanca.Text + edtSeqFinal.Text;

  FReImpFiltro.blnFlag_ES := RadioGroup1.ItemIndex = 0;
  if FReImpFiltro.blnFlag_ES then FReImpFiltro.valFlag_ES := 'ES';

  FReImpFiltro.blnFlag_CR := RadioGroup1.ItemIndex = 1;
  if FReImpFiltro.blnFlag_CR then FReImpFiltro.valFlag_CR := 'CR';

  FReImpFiltro.blnFlag_DV := RadioGroup1.ItemIndex = 2;
  if FReImpFiltro.blnFlag_DV then FReImpFiltro.valFlag_DV := 'DV';

  FReImpFiltro.btnProd01 := edtCodProd_01.Text <> '';
  if FReImpFiltro.btnProd01 then FReImpFiltro.valProd01 := edtCodProd_01.Text;

end;

procedure CriaForm_FrmReImpressao;
begin

  try
    FrmReImpressao := TFrmReImpressao.Create(Application);
    FrmReImpressao.ShowModal;
  finally
    FreeAndNil(FrmReImpressao);
  end;

end;

procedure TFrmReImpressao.btnImpUltEtiquetaClick(Sender: TObject);
begin

  DmPrincipal.qryReImpressao.Close;
  DmPrincipal.qryReImpressao.Open;

  if DmPrincipal.qryReImpressao.RecordCount > 0 then
  begin

    //Localiza a imagem da etiqueta de exportação
    if Vg_impressora = 1 then
    begin
      FrmPrincipal.LbVencExpo.Caption := '';
      FrmPrincipal.Apaga_etiqueta;
      DmPrincipal.Reimpressao := 2;
      if DmPrincipal.qryReImpressaoPRD_CODIGO.AsString <> '' then DmPrincipal.FiltraEtiqExpo(DmPrincipal.qryReImpressaoPRD_CODIGO.AsString);
    end;

    DmPrincipal.ImprimirUltimaEtiqueta;

    DmPrincipal.cdsLogReImpressao.Insert;
    DmPrincipal.cdsLogReImpressaoLRI_BALANCA.AsInteger := DmPrincipal.cdsIpBalancaIPB_BALANCA.AsInteger;
    DmPrincipal.cdsLogReImpressaoLRI_DATA_HORA.AsDateTime := Now;
    DmPrincipal.cdsLogReImpressaoLRI_IDENTIFICACAO.AsString := DmPrincipal.qryReImpressaoPRC_IDENTIFICACAO.AsString;
    DmPrincipal.cdsLogReImpressao.Post;
    //cdsLogReImpressao.ApplyUpdates(0);
    DmPrincipal.cdsLogReImpressao.ApplyUpdates(0);

  end;

end;

procedure TFrmReImpressao.btnImprimirClick(Sender: TObject);
begin

  with DmPrincipal.qryOraReImpressao, DmPrincipal do
  try

    Screen.Cursor := crHourGlass;
    DisableControls;

    First;
    while not Eof do
    begin

      //Localiza a imagem da etiqueta de exportação
      if Vg_impressora = 1 then
      begin
        DmPrincipal.Reimpressao := 1;
        DmPrincipal.FiltraEtiqExpo(qryOraReImpressaoID_PRODMATEEMBA.AsString);
      end;

      Application.ProcessMessages;
      DmPrincipal.ImprimeEtiquetas;

      cdsLogReImpressao.Insert;
      cdsLogReImpressaoLRI_BALANCA.AsInteger := cdsIpBalancaIPB_BALANCA.AsInteger;
      cdsLogReImpressaoLRI_DATA_HORA.AsDateTime := Now;
      cdsLogReImpressaoLRI_IDENTIFICACAO.AsString := qryOraReImpressaoID_IDENREGIPROD.AsString;
      cdsLogReImpressao.Post;
      //cdsLogReImpressao.ApplyUpdates(0);
      cdsLogReImpressao.ApplyUpdates(0);

      Sleep(1000);
      Next;

    end;
  finally

    EnableControls;
    Screen.Cursor := crDefault;

  end;

end;

procedure TFrmReImpressao.btnVerificarClick(Sender: TObject);
begin

  ValidaParametros;
  MontaParametros;
  DmPrincipal.VerificaEtiquetas(FReImpFiltro);

end;

procedure TFrmReImpressao.btnFecharClick(Sender: TObject);
begin

  Close;

end;

procedure TFrmReImpressao.edtCodProd_01KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', Chr(8)]) then
    Key := #0;
end;

procedure TFrmReImpressao.edtSeqInicialExit(Sender: TObject);
begin

  case Length(TEdit(Sender).Text) of
    1: TEdit(Sender).Text := '000' + TEdit(Sender).Text;
    2: TEdit(Sender).Text := '00' + TEdit(Sender).Text;
    3: TEdit(Sender).Text := '0' + TEdit(Sender).Text;
  end;

end;

procedure TFrmReImpressao.edtSeqFinalExit(Sender: TObject);
begin

  case Length(TEdit(Sender).Text) of
    1: TEdit(Sender).Text := '000' + TEdit(Sender).Text;
    2: TEdit(Sender).Text := '00' + TEdit(Sender).Text;
    3: TEdit(Sender).Text := '0' + TEdit(Sender).Text;
  end;

end;

procedure TFrmReImpressao.FormCreate(Sender: TObject);
begin

  edtDataInicial.Text := DmPrincipal.conv_data(Now, 3); //DateTimeToStr(Now);
  edtDataFinal.Text := DmPrincipal.conv_data(Now, 3); //DateTimeToStr(Now);
  edtBalanca.Text := FormatFloat('00', DmPrincipal.cdsIpBalancaIPB_BALANCA.AsInteger);
  edtSeqInicial.Text := IntToStr(DmPrincipal.cdsIpBalancaIPB_SEQUENCIAL.AsInteger - 1);
  edtSeqFinal.Text := IntToStr(DmPrincipal.cdsIpBalancaIPB_SEQUENCIAL.AsInteger - 1);
  edtSeqInicialExit(edtSeqInicial);
  edtSeqInicialExit(edtSeqFinal);

  DmPrincipal.cdsLogReImpressao.Open;

end;

procedure TFrmReImpressao.FormDestroy(Sender: TObject);
begin

  DmPrincipal.cdsLogReImpressao.Close;
  DmPrincipal.qryReImpressao.Close;
  DmPrincipal.qryOraReImpressao.Close;

end;

procedure TFrmReImpressao.dtsReImpressaoDataChange(Sender: TObject;
  Field: TField);
begin

  StatusBar1.Panels[0].Text := Format('%d etiquetas encontradas', [dtsReImpressao.DataSet.RecordCount]);
  btnImprimir.Enabled := not dtsReImpressao.DataSet.IsEmpty;

end;

procedure TFrmReImpressao.PageControl1Change(Sender: TObject);
begin

  DmPrincipal.cdsLogReImpressao.Close;
  DmPrincipal.cdsLogReImpressao.Open;

end;

end.
