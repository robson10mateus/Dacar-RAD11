unit uFrmVendasDiaria;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, MemDS, DBAccess, Ora, RLReport, ExtCtrls,
  Buttons, Mask, ComCtrls, Grids, DBGrids, Vcl.ToolWin, Winapi.Windows;

type
  TfrmVendasDiaria = class(TForm)
    pgcVendasDiaria: TPageControl;
    tbsFiltro: TTabSheet;
    tbsListaDados: TTabSheet;
    lblDataFim: TLabel;
    edtDataIni: TMaskEdit;
    lblDataIni: TLabel;
    edtDataFim: TMaskEdit;
    btnLimpar: TBitBtn;
    btnAtivar: TBitBtn;
    cbxCondicao: TComboBox;
    lblCondicao: TLabel;
    lclExpressao: TLabel;
    edtExpressao: TEdit;
    rgpCondicao: TRadioGroup;
    btnIncluir: TBitBtn;
    lstCamposFiltro: TListBox;
    memExpressao: TMemo;
    bt_PesqDTI: TBitBtn;
    BitBtn1: TBitBtn;
    grdVendaDiaria: TDBGrid;
    dtsVendaDiaria: TOraDataSource;
    qryVendaDiaria: TOraQuery;
    qryVendaDiariaCODIF: TStringField;
    qryVendaDiariaDESCRICAO: TStringField;
    qryVendaDiariaDOCTO: TFloatField;
    qryVendaDiariaCOD: TFloatField;
    qryVendaDiariaCLIENTE: TStringField;
    qryVendaDiariaQUANTIDADE: TFloatField;
    qryVendaDiariaUNITARIO: TFloatField;
    qryVendaDiariaTOTAL: TFloatField;
    qryVendaDiariaVENDEDOR: TStringField;
    btnPesquisa: TBitBtn;
    qryVendaDiariaID_VENDEDOR: TFloatField;
    qryVendaDiariaID_MATEEMBA: TFloatField;
    dlgSaveArquivo: TSaveDialog;
    qryVendaDiariaDATA_ENTREGA: TDateTimeField;
    qryVendaDiariaID_PRODMATEEMBA: TStringField;
    qryVendaDiariaGN_OBSEEXPEPEDIVEND: TStringField;
    ToolBar1: TToolBar;
    btnAtualizaDados: TSpeedButton;
    btnRelVendaDiaria: TSpeedButton;
    btnExcel: TSpeedButton;
    btnSair: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure bt_PesqDTIClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnAtivarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnAtualizaDadosClick(Sender: TObject);
    procedure lstCamposFiltroClick(Sender: TObject);
    procedure edtExpressaoChange(Sender: TObject);
    procedure grdVendaDiariaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnRelVendaDiariaClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcelClick(Sender: TObject);
    procedure grdVendaDiariaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
        iPesqPadrao : integer;
  public
    { Public declarations }
  end;

var
  frmVendasDiaria: TfrmVendasDiaria;

implementation

uses DateUtils,UFrmSeldata, Principal, Global, UFrmPesqVend, UFrmPesqMatEmba, UPesquiCliente, ufrmRelVendasDiaria,
     ufrmConsultaProdutos;

{$R *.dfm}

procedure TfrmVendasDiaria.FormShow(Sender: TObject);
begin
  pgcVendasDiaria.Pages[1].TabVisible:=false;
  pgcVendasDiaria.ActivePage :=  tbsFiltro;

  if (lstCamposFiltro.Visible) then
  begin
    lstCamposFiltro.itemindex := 0 ;
  end;

  edtDataIni.Text := FormatDateTime('dd/mm/yyyy', Now);
  edtDataFim.Text := FormatDateTime('dd/mm/yyyy', Now);

end;

procedure TfrmVendasDiaria.btnLimparClick(Sender: TObject);
begin
    edtExpressao.Text:='';
    memExpressao.Clear;
    edtExpressao.SetFocus;
    btnIncluir.Enabled := False;
end;

procedure TfrmVendasDiaria.bt_PesqDTIClick(Sender: TObject);
var Vdtstr : string;
begin
  Cria_FrmSelData(Vdtstr);
  edtDataIni.Text := Vdtstr;
  if ( edtDataIni.Enabled )then
    edtDataIni.SetFocus;
end;

procedure TfrmVendasDiaria.BitBtn1Click(Sender: TObject);
Var Vdtstr:String;
begin
  Cria_FrmSelData(Vdtstr);
  edtDataFim.Text := Vdtstr;
  if ( edtDataFim.Enabled )then
    edtDataFim.SetFocus;
end;

procedure TfrmVendasDiaria.btnAtivarClick(Sender: TObject);
VAR
  sWhere: string;
begin
  qryVendaDiaria.DisableControls;
  qryVendaDiaria.Close;
  qryVendaDiaria.MacroByName('Macro').Value := '';

  sWhere := 'WHERE NF.FL_CANCNOTAFISC = ''N'' AND PV.ID_TIPOPEDIVEND IN (6,18)' +
  ' AND (TRUNC(PV.DT_ENTRPEDIVEND) >= TO_DATE(''' + edtDataIni.Text + ''',''DD/MM/YYYY'')' +
  ' AND TRUNC(PV.DT_ENTRPEDIVEND) <= TO_DATE(''' + edtDataFim.Text + ''',''DD/MM/YYYY''))';

  If memExpressao.Lines.Count > 0 then
  begin
    sWhere := sWhere + ' AND ' + UpperCase(memExpressao.Text) ;
  end
  else
  begin
    If MessageDlg('Exibir listagem sem filtro?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    begin
      qryVendaDiaria.EnableControls;
      Exit;
    end;
  end;

  qryVendaDiaria.MacroByName('Macro').Value := sWhere;
  qryVendaDiaria.Open;
  qryVendaDiaria.EnableControls;
  pgcVendasDiaria.Pages[1].TabVisible := true;
  pgcVendasDiaria.Pages[1].Show;
end;

procedure TfrmVendasDiaria.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVendasDiaria.btnAtualizaDadosClick(Sender: TObject);
begin
  qryVendaDiaria.EnableControls;
  qryVendaDiaria.Close;
  qryVendaDiaria.Open;
end;

procedure TfrmVendasDiaria.lstCamposFiltroClick(Sender: TObject);
begin
  iPesqPadrao:=999;

  iPesqPadrao := lstCamposFiltro.ItemIndex;

  btnPesquisa.Visible := (iPesqPadrao <> 999)

end;

procedure TfrmVendasDiaria.edtExpressaoChange(Sender: TObject);
begin
  btnIncluir.Enabled := True;
end;

procedure TfrmVendasDiaria.grdVendaDiariaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = Ord('C')) then
    CTRL_C_Grig (grdVendaDiaria);
end;

procedure TfrmVendasDiaria.btnPesquisaClick(Sender: TObject);
begin
  FrmOriPesq:=56;
  CASE iPesqPadrao OF
   0: // CLIENTE
    Begin
      try
        FrmPesqCliente:=TFrmPesqCliente.Create(Self);
        FrmPesqCliente.Show;
      except;
        FrmPesqCliente.Free;
      end;
    end ;
   1: // PRODUTO
    Begin
      try
        frmConsultaProdutos:=TfrmConsultaProdutos.Create(Self);
        frmConsultaProdutos.ShowModal;
      except;
        frmConsultaProdutos.Free;
      end;
    end ;
   2: // VENDEDOR
    Begin
      try
        FrmPesqVend:=TFrmPesqVend.Create(Self);
        FrmPesqVend.Show;
      except;
        FrmPesqVend.Free;
      end;
    end ;
  END;
end;

procedure TfrmVendasDiaria.btnRelVendaDiariaClick(Sender: TObject);
begin
  if qryVendaDiaria.RecordCount = 0 then
  begin
    MessageDlg('Não há registros para geração do relatório!', mtInformation, [mbOk], 0);
    Abort;
  end;

  qryVendaDiaria.DisableControls;

  FrmRelVendasDiaria := TFrmRelVendasDiaria.Create(Self);
  if edtDataIni.Text <> edtDataFim.Text then
  begin
    FrmRelVendasDiaria.lblPeriodo.Caption := edtDataIni.Text + ' a ' + edtDataFim.Text;
  end
  else
  begin
    FrmRelVendasDiaria.lblPeriodo.Visible := False;
  end;
  FrmRelVendasDiaria.lblUsuario.Caption := gs_NomeUsuario;
  FrmRelVendasDiaria.rptVendasDiaria.Preview(nil);

  qryVendaDiaria.EnableControls;
end;

procedure TfrmVendasDiaria.btnIncluirClick(Sender: TObject);
var
  Vre,Vlinha:String;
  Vcampos:integer;
begin
  If edtExpressao.Text <> '' then
  Begin
    IF memExpressao.Lines.Count>0 then
    begin
      If rgpCondicao.ItemIndex = 0  then
      begin
        Vre := 'AND ';
      end
      else
      begin
        Vlinha := memExpressao.Lines.Strings[memExpressao.Lines.Count-1];
        memExpressao.Lines.Strings[memExpressao.Lines.Count-1] := Copy(Vlinha,1,Length(Vlinha)-1);
        Vre :='OR ';
      end;
    end;

    If lstCamposFiltro.ItemIndex = -1 then
      Vcampos := 0
    else
      Vcampos := lstCamposFiltro.ItemIndex;

    If rgpCondicao.ItemIndex=0  then
      Vre:= Vre + '(' ;

   //Alterar nomes
    Case lstCamposFiltro.ItemIndex of
      0:Vre:=Vre + 'PV.ID_CLIENTE';
      1:Vre:=Vre + 'IT.ID_PRODMATEEMBA';
      2:Vre:=Vre + 'PV.ID_VENDEDOR';
    end;

    Case cbxCondicao.ItemIndex of
      0: Vre:=Vre + ' = ';
      1: Vre:=Vre + ' <> ';
      2: Vre:=Vre + ' > ';
      3: Vre:=Vre + ' >= ';
      4: Vre:=Vre + ' < ';
      5: Vre:=Vre + ' <= ';
    end;

    // Abre aspas para texto
    Case lstCamposFiltro.ItemIndex of
      0: Vre := Vre +'''';
    end;

    Vre:=Vre + UpperCase(edtExpressao.Text);

    // Fecha aspas para texto
    Case lstCamposFiltro.ItemIndex of
      0: Vre:=Vre +'''' ;
    end ;

    Vre:=Vre+')';

    memExpressao.Lines.Add(Vre);

    edtExpressao.Text :='';
    btnIncluir.Enabled:=false;

  end;
  btnAtivar.SetFocus;

end;

procedure TfrmVendasDiaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmVendasDiaria:=nil;
//  FrmPrincipal.VEN056.Enabled:= True;
  FrmPrincipal.ACVEN056.Enabled := True;
  Action:=caFree;
end;

procedure TfrmVendasDiaria.btnExcelClick(Sender: TObject);
  var Arquivo: TextFile;
begin
  try
    qryVendaDiaria.Open;

    dlgSaveArquivo.FileName := 'VENDA_DIARIA_' + ReplaceStr(edtDataIni.Text,'/', '_') + ReplaceStr(edtDataFim.Text,'/', '_') + '.csv';
    if dlgSaveArquivo.Execute then
    begin
      AssignFile(Arquivo, PChar(dlgSaveArquivo.FileName));
      Rewrite(Arquivo);

      Write(Arquivo, 'Cód. Produto;');
      Write(Arquivo, 'Descrição;');
      Write(Arquivo, 'Nota Fiscal;');
      Write(Arquivo, 'Cód;');
      Write(Arquivo, 'Razão Social;');
      Write(Arquivo, 'Quantidade KG;');
      Write(Arquivo, 'Vl. Unitário;');
      Write(Arquivo, 'Total;');
      Write(Arquivo, 'Vendedor;');
      Write(Arquivo, 'Observação;');
      WriteLn(Arquivo, 'Data Entrega;');

      qryVendaDiaria.First;

      while not qryVendaDiaria.Eof do
      begin
        Write(Arquivo, qryVendaDiariaCODIF.AsString + ';');
        Write(Arquivo, qryVendaDiariaDESCRICAO.AsString + ';');
        Write(Arquivo, qryVendaDiariaDOCTO.AsString + ';');
        Write(Arquivo, qryVendaDiariaCOD.AsString + ';');
        write(Arquivo, qryVendaDiariaCLIENTE.AsString + ';');
        write(Arquivo, qryVendaDiariaQUANTIDADE.AsString + ';');
        write(Arquivo, qryVendaDiariaUNITARIO.AsString + ';');
        write(Arquivo, qryVendaDiariaTOTAL.AsString + ';');
        write(Arquivo, qryVendaDiariaVENDEDOR.AsString + ';');
        write(Arquivo, qryVendaDiariaGN_OBSEEXPEPEDIVEND.AsString + ';');
        writeLn(Arquivo, qryVendaDiariaDATA_ENTREGA.AsString + ';');

        qryVendaDiaria.Next;
      end;

      CloseFile(Arquivo);
      Application.MessageBox(PChar('Arquivo gerado com sucesso em ' + dlgSaveArquivo.FileName), 'Comercial Dacar - Relatório de Vendas Diária', MB_OK + MB_ICONINFORMATION);
    end;
  except
    Application.MessageBox('Erro ao gerar o arquivo. Verifique se o local de destino existe e está acessível.', 'Comercial Dacar - Relatório de Vendas Diária', MB_OK + MB_ICONINFORMATION);
  end;

end;

procedure TfrmVendasDiaria.grdVendaDiariaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  grdVendaDiaria.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

end.



