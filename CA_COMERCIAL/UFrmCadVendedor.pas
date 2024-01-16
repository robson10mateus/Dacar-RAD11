unit UFrmCadVendedor;

interface

uses
   SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ComCtrls, Mask, DBCtrls, ExtCtrls,
   Grids, DBGrids, DB, Ora, MemDS, DBAccess, Global, UFrmPesqClie, Winapi.Windows,
  OraSmart;

type
  TFrmCadVendedor = class(TForm)
  PageControl: TPageControl;
  TabCriterio: TTabSheet;
  Lbl_Filtro: TLabel;
  LCampos: TListBox;
  Lbl_Cond: TLabel;
  Lbl_Expr: TLabel;
  CBCond: TComboBox;
  RGeou: TRadioGroup;
  BtIncluir: TBitBtn;
  BtLimpar: TBitBtn;
  BtAtivar: TBitBtn;
  MResul: TMemo;
  EdExpr: TEdit;
  TabLista: TTabSheet;
  DBGrid1: TDBGrid;
  TabDetalhes: TTabSheet;
  Panel3: TPanel;
  DBCodVendedor: TDBEdit;
  Label15: TLabel;
  DBNomeVendedor: TDBEdit;
  Label3: TLabel;
  DtSrcVendedor: TOraDataSource;
  DBFantasia: TDBEdit;
  lbFantasia: TLabel;
  DBBairro: TDBEdit;
  Label1: TLabel;
  DBComplemento: TDBEdit;
  Label2: TLabel;
  Label6: TLabel;
  Label5: TLabel;
  Label7: TLabel;
  DBLogradouro: TDBEdit;
  Label9: TLabel;
  Label11: TLabel;
  DBNumeroLogradouro: TDBEdit;
  Label8: TLabel;
  DBCEP: TDBEdit;
  DBFax: TDBEdit;
  Label12: TLabel;
  DBTelefone: TDBEdit;
  Label14: TLabel;
  DBCelular: TDBEdit;
  Label16: TLabel;
  DBSite: TDBEdit;
  Label17: TLabel;
  dbchkBloqueio: TDBCheckBox;
  dbchkComissionado: TDBCheckBox;
  dbchkAtivo: TDBCheckBox;
  BtnDataNascimento: TBitBtn;
  DBDataNascimento: TDBEdit;
  LblConDtNas: TLabel;
  dbchkCorte: TDBCheckBox;
  Label23: TLabel;
  Label25: TLabel;
  DBObservacao: TDBEdit;
  qryDireitos: TOraQuery;
  DBComissao: TDBEdit;
  Label26: TLabel;
  TabClientes: TTabSheet;
  dbgrdClientes: TDBGrid;
  DtSrcVendedorCliente: TOraDataSource;
  DtSrcDireitos: TOraDataSource;
  qryClientes: TOraQuery;
  DtSrcClientes: TOraDataSource;
  dblkcbbTIpoLogradouro: TDBLookupComboBox;
  qryTipoLogradouro: TOraQuery;
  DtSrcTipoLogradouro: TOraDataSource;
  dblkcbbTipoVendedor: TDBLookupComboBox;
  qryTipoVendedor: TOraQuery;
  DtSrcTipoVendedor: TOraDataSource;
  dblkcbbCidade: TDBLookupComboBox;
  qryCidade: TOraQuery;
  DtSrcCidade: TOraDataSource;
  dblkcbbFornecedor: TDBLookupComboBox;
  qryFornecedor: TOraQuery;
  DtSrcFornecedor: TOraDataSource;
  DBRPessoa: TDBRadioGroup;
  Label4: TLabel;
  dblkcbbUsuario: TDBLookupComboBox;
  qryUsuario: TOraQuery;
  DtSrcUsuario: TDataSource;
  qryUsuarioID_USUARIO: TIntegerField;
  qryUsuarioNOME_USUARIO: TStringField;
  Panel1: TPanel;
  SB_ULTIMO: TSpeedButton;
  Sb_Sair: TSpeedButton;
  SB_PROXIMO: TSpeedButton;
  SB_PRIMEIRO: TSpeedButton;
  SB_NOVO: TSpeedButton;
  SB_EXCLUI: TSpeedButton;
  SB_EDIT: TSpeedButton;
  SB_CONFIRMA: TSpeedButton;
  SB_CANCEL: TSpeedButton;
  SB_ANTERIOR: TSpeedButton;
  GroupBox1: TGroupBox;
  Label20: TLabel;
  Label21: TLabel;
  DBCPF: TDBEdit;
  DBRg: TDBEdit;
  Label22: TLabel;
  DBOrgaoExpedidor: TDBEdit;
  GroupBox2: TGroupBox;
  Label18: TLabel;
  DBCNPJ: TDBEdit;
  Label19: TLabel;
  DBInscEst: TDBEdit;
    btnExcel: TSpeedButton;
    dlgSaveArquivo: TSaveDialog;
    qryVendedores: TSmartQuery;
    qryVendedoresID_VENDEDOR: TFloatField;
    qryVendedoresNM_VENDEDOR: TStringField;
    qryVendedoresNM_FANTVEND: TStringField;
    qryVendedoresNM_REDUVEND: TStringField;
    qryVendedoresNM_LOGRVEND: TStringField;
    qryVendedoresNR_LOGRVEND: TStringField;
    qryVendedoresGN_COMPENDEVEND: TStringField;
    qryVendedoresNM_BAIRVEND: TStringField;
    qryVendedoresNR_CEPVEND: TStringField;
    qryVendedoresNR_FONEVEND: TStringField;
    qryVendedoresNR_FONECOMPVEND: TStringField;
    qryVendedoresNR_FAXVEND: TStringField;
    qryVendedoresGN_URLVEND: TStringField;
    qryVendedoresGN_EMAIVEND: TStringField;
    qryVendedoresDT_NASCVEND: TDateTimeField;
    qryVendedoresFL_BLOQADMIVEND: TStringField;
    qryVendedoresFL_ATIVVEND: TStringField;
    qryVendedoresFL_COMIVEND: TStringField;
    qryVendedoresFL_PESSVEND: TStringField;
    qryVendedoresNR_CNPJVEND: TStringField;
    qryVendedoresNR_INSCESTAVEND: TStringField;
    qryVendedoresNR_RGVEND: TStringField;
    qryVendedoresGN_ORGAEXPERGVEND: TStringField;
    qryVendedoresNR_CPFVEND: TStringField;
    qryVendedoresPC_COMIVEND: TFloatField;
    qryVendedoresGN_OBSEVEND: TStringField;
    qryVendedoresFL_PARTCORTE: TStringField;
    qryVendedoresID_TIPOVENDEDOR: TFloatField;
    qryVendedoresID_CIDADE: TFloatField;
    qryVendedoresID_TIPOLOGR: TFloatField;
    qryVendedoresID_FORNECEDOR: TFloatField;
    qryVendedoresEMPRESA: TStringField;
    qryVendedoresFILIAL: TIntegerField;
    qryVendedoresIE_VENDEDOR: TStringField;
    qryVendedoresID_INTEVEND: TStringField;
    qryVendedoresIE_CONTCONT: TStringField;
    qryVendedoresNR_CAIXPOSTVEND: TStringField;
    qryVendedoresNR_CEPCAIXPOSTVEND: TStringField;
    qryVendedoresGN_MENSVENDVEND: TStringField;
    qryVendedoresFX_VENDEDOR: TStringField;
    qryVendedoresDT_CADAVEND: TDateTimeField;
    qryVendedoresDT_ALTEVEND: TDateTimeField;
    qryVendedoresID_USUARIO: TIntegerField;
    qryVendedorCliente: TSmartQuery;
    qryVendedorClienteID_CLIENTE: TFloatField;
    qryVendedorClienteCLIENTE: TStringField;
    qryVendedorClienteVENDEDORPADRAO: TStringField;
    qryVendedorClienteCOMISSIONADO: TStringField;
    qryVendedorClienteCOMISSAO: TFloatField;
  procedure SB_PRIMEIROClick (Sender: TObject);
  procedure SB_ANTERIORClick (Sender: TObject);
  procedure SB_PROXIMOClick (Sender: TObject);
  procedure SB_ULTIMOClick (Sender: TObject);
  procedure Sb_SairClick (Sender: TObject);
  procedure BtIncluirClick (Sender: TObject);
  procedure BtAtivarClick (Sender: TObject);
  procedure BtLimparClick (Sender: TObject);
  procedure FormShow (Sender: TObject);
  procedure edtComissaoKeyPress (Sender: TObject; var Key: Char);
  procedure btnBtnLocalizaClienteClick (Sender: TObject);
  procedure BtnLocalizaCidadeClick (Sender: TObject);
  procedure BtnDataNascimentoClick (Sender: TObject);
  procedure dbchkComissionadoClick (Sender: TObject);
  procedure SB_NOVOClick (Sender: TObject);
  procedure SB_CONFIRMAClick (Sender: TObject);
  procedure SB_CANCELClick (Sender: TObject);
  procedure SB_EDITClick (Sender: TObject);
  procedure SB_EXCLUIClick (Sender: TObject);
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure DBCNPJExit(Sender: TObject);
  procedure DBCPFExit(Sender: TObject);
  procedure PageControlChange(Sender: TObject);
  procedure DBRPessoaExit(Sender: TObject);
  procedure DBGrid1TitleClick(Column: TColumn);
  procedure dbgrdClientesTitleClick(Column: TColumn);
  procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
    DataCol: Integer; Column: TColumn; State: TGridDrawState);
  procedure dbgrdClientesDrawColumnCell(Sender: TObject;
    const Rect: TRect; DataCol: Integer; Column: TColumn;
    State: TGridDrawState);
    procedure btnExcelClick(Sender: TObject);
    procedure DBRPessoaChange(Sender: TObject);

   private
      OrdemColuna , Ordem : string ;
      function LCamposRetornaString (item: Integer): string;
      function CBCondRetornaString (item: Integer): string;
      function ConstroiConsultaVendedor (Query: TSmartQuery): string;
      function AdicionaExpressao (item: Integer; expressao: string): string;
      procedure VerificaDireitos;
      procedure Atual_ToolBar (BtOrdem: Integer);
      procedure ParametrosInclusao;
      procedure ParametrosEdicao;
      function AdicionarFiltro: string;
      procedure LDcomponentes(LD:boolean);
      { Private declarations }
   public
      { Public declarations }
   end;

var
  FrmCadVendedor: TFrmCadVendedor;

implementation

uses
  UPesquiCliente, UFrmPesqCidade, UFrmSeldata, Principal;


{$R *.dfm}

procedure TFrmCadVendedor.SB_PRIMEIROClick (Sender: TObject);
begin
   qryVendedores.First;
end;

procedure TFrmCadVendedor.SB_ANTERIORClick (Sender: TObject);
begin
  qryVendedores.Prior;
end;

procedure TFrmCadVendedor.SB_PROXIMOClick (Sender: TObject);
begin
  qryVendedores.Next;
end;

procedure TFrmCadVendedor.SB_ULTIMOClick (Sender: TObject);
begin
  qryVendedores.Last;
end;

procedure TFrmCadVendedor.Sb_SairClick (Sender: TObject);
begin
  Close;
end;

procedure TFrmCadVendedor.BtIncluirClick (Sender: TObject);
var
  Vre :string;
begin
  if EdExpr.Text <> '' then
  begin
    Vre := AdicionarFiltro;
    MResul.Lines.Add(Vre);
    EdExpr.Text := '';
  end;

  BtAtivar.SetFocus;
end;

procedure TFrmCadVendedor.BtAtivarClick (Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  qryVendedores.Close;
  qryTipoLogradouro.Close;
  qryTipoVendedor.Close;
  qryCidade.Close;
  qryFornecedor.Close;
  qryUsuario.Close;

  ConstroiConsultaVendedor (qryVendedores);
  qryVendedores.Open;

  PageControl.Pages[1].Show;
  Screen.Cursor := crDefault;

  qryTipoLogradouro.Open;
  qryTipoVendedor.Open;
  qryCidade.Open;
  qryFornecedor.Open;
  qryUsuario.Open;

  if QryVendedoresFL_PESSVEND.Value = 'F' then
  begin
    DBRg.Enabled:= True;
    DBCPF.Enabled:= True;
    DBOrgaoExpedidor.Enabled:= True;
    DBCNPJ.Enabled:= False;
    DBInscEst.Enabled:= False;
  end
  else
  begin
    DBRg.Enabled:= False;
    DBCPF.Enabled:= False;
    DBOrgaoExpedidor.Enabled:= False;
    DBCNPJ.Enabled:= True;
    DBInscEst.Enabled:= True;
  end;

  VerificaDireitos;

  //Atual_ToolBar(10);

  PageControl.Pages[1].TabVisible := True;
  PageControl.Pages[2].TabVisible := True;
  PageControl.Pages[3].TabVisible := True;
end;

procedure TFrmCadVendedor.BtLimparClick (Sender: TObject);
begin
   EdExpr.Text := '';
   MResul.Clear;
   EdExpr.SetFocus;
end;

function TFrmCadVendedor.LCamposRetornaString (item: Integer): string;
begin
  case item of
    0:Result := ' V.ID_VENDEDOR ';
    1:Result := ' V.NM_VENDEDOR ';
    2:Result := ' V.NM_FANTVEND ';
    3:Result := ' V.NM_REDUVEND ';
    4:Result := ' VT.NM_TIPOVENDEDOR ';
    5:Result := ' C.NM_CIDADE ';
    6:Result := ' V.NR_FONEVEND ';
    7:Result := ' V.NR_FONECOMPVEND ';
    8:Result := ' V.DT_NASCVEND ';
    9:Result := ' V.FL_BLOQADMIVEND ';
    10:Result := ' V.FL_ATIVVEND ';
    11:Result := ' V.FL_COMIVEND ';
    12:Result := ' V.FL_PESSVEND ';
    13:Result := ' V.NR_CNPJVEND ';
    14:Result := ' V.NR_INSCESTAVEND ';
    15:Result := ' V.NR_RGVEND ';
    16:Result := ' V.NR_CPFVEND ';
    17:Result := ' V.PC_COMIVEND ';
    18:Result := ' V.FL_PARTCORTE ';
    19:Result := ' F.NM_FORNECEDOR ';
   end;
end;

function TFrmCadVendedor.CBCondRetornaString (item: Integer): string;
begin
  case item of
    0:Result := ' = ';
    1:Result := ' <> ';
    2:Result := ' > ';
    3:Result := ' >= ';
    4:Result := ' < ';
    5:Result := ' <= ';
    6:Result := ' LIKE ';
  end;
end;

function TFrmCadVendedor.ConstroiConsultaVendedor (Query: TSmartQuery): string;
begin
  with Query.SQL do
  begin
    Clear;

    Add ('SELECT V.EMPRESA, V.FILIAL, V.NR_CAIXPOSTVEND, V.NR_CEPCAIXPOSTVEND, V.GN_MENSVENDVEND, V.FX_VENDEDOR, ');
    Add ('V.IE_VENDEDOR, V.ID_INTEVEND, V.IE_CONTCONT, V.ID_VENDEDOR, V.NM_VENDEDOR, V.NM_FANTVEND, V.NM_REDUVEND, ');
    Add ('VT.NM_TIPOVENDEDOR, LT.NM_TIPOLOGR, V.NM_LOGRVEND, V.NR_LOGRVEND, V.GN_COMPENDEVEND, V.NM_BAIRVEND, ');
    Add ('C.NM_CIDADE, V.NR_CEPVEND, V.NR_FONEVEND, V.NR_FAXVEND, V.NR_FONECOMPVEND, V.GN_URLVEND, V.GN_EMAIVEND, ');
    Add ('V.DT_NASCVEND, V.DT_CADAVEND, V.DT_ALTEVEND, V.FL_BLOQADMIVEND, V.FL_ATIVVEND, V.FL_COMIVEND, V.FL_PESSVEND, ');
    Add ('V.NR_CNPJVEND, V.NR_INSCESTAVEND, V.NR_RGVEND, V.GN_ORGAEXPERGVEND, V.NR_CPFVEND, V.PC_COMIVEND, V.GN_OBSEVEND, ');
    Add ('V.FL_PARTCORTE, F.NM_FORNECEDOR, V.ID_TIPOVENDEDOR, V.ID_CIDADE, V.ID_TIPOLOGR, V.ID_FORNECEDOR, V.ID_USUARIO ');
    Add ('FROM VENDEDOR V, VENDEDOR_TIPO VT, LOGRADOURO_TIPO LT, CIDADE C, FORNECEDOR F ');
    Add ('WHERE VT.ID_TIPOVENDEDOR = V.ID_TIPOVENDEDOR AND V.ID_TIPOLOGR = LT.ID_TIPOLOGR ');
    Add ('AND V.ID_CIDADE = C.ID_CIDADE AND V.ID_FORNECEDOR = F.ID_FORNECEDOR (+)');

    if MResul.Lines.Count > 0 then
    begin
      Add (' AND ');
      Add (MResul.Text);
    end
    else
    begin
      Screen.Cursor := crDefault;
      if Application.MessageBox('Exibir listagem sem filtro?                                  ', PChar(FrmCadVendedor.Caption), MB_YESNO) = IDNO then
        Abort
      else
        Screen.Cursor := crSQLWait;
    end;

    Add (' ORDER BY V.ID_VENDEDOR ');
  end;

end;

function TFrmCadVendedor.AdicionaExpressao (item: Integer; expressao: string): string;
begin
  Result := '';

  case item of
    1..12:Result := '''';
    14..16:Result := '''';
    18..19:Result := '''';
  end;

  if CBCond.ItemIndex = 6 then
    Result := Result + '%' + expressao + '%'
  else
    Result := Result + expressao;

  case item of
    1.. 12:Result := Result + '''';
    14..16:Result := Result + '''';
    18..19:Result := Result + '''';
  end;

end;

function TFrmCadVendedor.AdicionarFiltro: string;
var
  Vlinha: string;
begin
  if MResul.Lines.Count > 0 then
  begin
    if RGeou.ItemIndex = 0 then
    begin
      Result := ' AND ';
    end
    else
    begin
      Vlinha := MResul.Lines.Strings[MResul.Lines.Count - 1];
      MResul.Lines.Strings[MResul.Lines.Count - 1] := Copy (Vlinha, 1, length(Vlinha) - 1);
      Result := ' OR ';
    end;
  end;

  if RGeou.ItemIndex = 0 then
    Result := Result + '(';

  Result := Result + LCamposRetornaString (LCampos.ItemIndex);
  Result := Result + CBCondRetornaString (CBCond.ItemIndex);
  Result := Result + AdicionaExpressao (LCampos.ItemIndex, EdExpr.Text);

  Result := Result + ')';
end;

procedure TFrmCadVendedor.FormShow (Sender: TObject);
begin
  PageControl.Pages[1].TabVisible := False;
  PageControl.Pages[2].TabVisible := False;
  PageControl.Pages[3].TabVisible := False;
end;

procedure TFrmCadVendedor.edtComissaoKeyPress (Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #9, #13]) then
    Key := #0;
end;

procedure TFrmCadVendedor.btnBtnLocalizaClienteClick (Sender: TObject);
begin
  FrmOriPesq := 40;
  FrmPesqCliente := TFrmPesqCliente.Create (Self);
  FrmPesqCliente.ShowModal;
end;

procedure TFrmCadVendedor.BtnLocalizaCidadeClick (Sender: TObject);
begin
  FrmOriPesq := 40;
  FrmPesqCidade := TFrmPesqCidade.Create (Self);
  FrmPesqCidade.ShowModal;
end;

procedure TFrmCadVendedor.BtnDataNascimentoClick (Sender: TObject);
var
  str: string;
begin
  str := DBDataNascimento.Text;
  Cria_FrmSelData (str);
  qryVendedoresDT_NASCVEND.Value := StrToDate(str);
  DBDataNascimento.SetFocus;
end;

procedure TFrmCadVendedor.dbchkComissionadoClick (Sender: TObject);
begin
  DBComissao.Enabled := dbchkComissionado.Checked;
end;

procedure TFrmCadVendedor.SB_NOVOClick (Sender: TObject);
begin
  VerificaDireitos;

  if SB_NOVO.Enabled then
  begin
    LDcomponentes(True);

    qryVendedores.Open;
    qryVendedores.Insert;

    QryVendedoresFL_BLOQADMIVEND.Value := 'N';
    QryVendedoresFL_ATIVVEND.Value := 'S';
    QryVendedoresFL_COMIVEND.Value := 'N';
    QryVendedoresFL_PESSVEND.Value := 'F';
    QryVendedoresFL_PARTCORTE.Value := 'N';
    QryVendedoresPC_COMIVEND.Value := 0;

    PageControl.Pages[0].TabVisible := False;
    PageControl.Pages[1].TabVisible := False;
    PageControl.Pages[2].TabVisible := True;
    PageControl.Pages[3].TabVisible := False;

    Atual_ToolBar (5);
  end
  else
    Application.MessageBox('Usuário sem permissão para inclusão.                                  ', PChar(FrmCadVendedor.Caption), MB_OK + MB_ICONINFORMATION);

end;

procedure TFrmCadVendedor.SB_CONFIRMAClick (Sender: TObject);
begin
  if qryVendedores.State in [dsInsert] then
    ParametrosInclusao;

  if qryVendedores.State in [dsEdit] then
    ParametrosEdicao;

  qryVendedores.Post;
  qryVendedores.CommitUpdates;
  qryVendedores.ApplyUpdates;

  VerificaDireitos;

  PageControl.Pages[0].TabVisible := True;
  PageControl.Pages[1].TabVisible := True;
  PageControl.Pages[2].TabVisible := True;
  PageControl.Pages[3].TabVisible := True;

  LDcomponentes(False);
end;

procedure TFrmCadVendedor.SB_CANCELClick (Sender: TObject);
begin
  if (qryVendedores.State in [dsEdit, dsInsert]) then
    qryVendedores.CancelUpdates;

  VerificaDireitos;

  PageControl.Pages[0].TabVisible := True;
  PageControl.Pages[1].TabVisible := True;
  PageControl.Pages[2].TabVisible := True;
  PageControl.Pages[3].TabVisible := True;

  LDcomponentes(False);
end;

procedure TFrmCadVendedor.VerificaDireitos;
begin
  Atual_ToolBar (1);

  //Direito a Incluir
  qryDireitos.Close;
  qryDireitos.ParamByName ('VRECUR').AsInteger := 5;
  qryDireitos.ParamByName ('VUSUARIO').AsInteger := gi_IdenUsua;
  qryDireitos.Open;

  if (qryDireitos.RecordCount > 0) then
    Atual_ToolBar (9);

  //Direito a Editar
  qryDireitos.Close;
  qryDireitos.ParamByName ('VRECUR').AsInteger := 41;
  qryDireitos.ParamByName ('VUSUARIO').AsInteger := gi_IdenUsua;
  qryDireitos.Open;

  if (qryDireitos.RecordCount > 0) then
    Atual_ToolBar (10);

  //Direito de Leitura
  qryDireitos.Close;
  qryDireitos.ParamByName ('VRECUR').AsInteger := 4;
  qryDireitos.ParamByName ('VUSUARIO').AsInteger := gi_IdenUsua;
  qryDireitos.Open;

  if (qryDireitos.RecordCount > 0) then
    Atual_ToolBar (1);
end;

procedure TFrmCadVendedor.Atual_ToolBar (BtOrdem: Integer);
begin
  case BtOrdem of
    1:
    begin
      SB_NOVO.Enabled := False;
      SB_EDIT.Enabled := False;
      SB_EXCLUI.Enabled := False;
      SB_CONFIRMA.Enabled := False;
      SB_CANCEL.Enabled := False;
      SB_PRIMEIRO.Enabled := True;
      SB_ANTERIOR.Enabled := True;
      SB_PROXIMO.Enabled := True;
      SB_ULTIMO.Enabled := True;
      LDcomponentes(False);
    end;
    2:
    begin
      SB_NOVO.Enabled := False;
      SB_EDIT.Enabled := True;
      SB_EXCLUI.Enabled := False;
      SB_CONFIRMA.Enabled := False;
      SB_CANCEL.Enabled := False;
      SB_PRIMEIRO.Enabled := True;
      SB_ANTERIOR.Enabled := True;
      SB_PROXIMO.Enabled := True;
      SB_ULTIMO.Enabled := True;
    end;
    5,7:
    begin
      SB_NOVO.Enabled := False;
      SB_EDIT.Enabled := False;
      SB_EXCLUI.Enabled := False;
      SB_CONFIRMA.Enabled := True;
      SB_CANCEL.Enabled := True;
      SB_PRIMEIRO.Enabled := False;
      SB_ANTERIOR.Enabled := False;
      SB_PROXIMO.Enabled := False;
      SB_ULTIMO.Enabled := False;

    end;
    6,8..9:
    begin
      SB_NOVO.Enabled := True;
      SB_EDIT.Enabled := True;
      SB_EXCLUI.Enabled := True;
      SB_CONFIRMA.Enabled := False;
      SB_CANCEL.Enabled := False;
      SB_PRIMEIRO.Enabled := True;
      SB_ANTERIOR.Enabled := True;
      SB_PROXIMO.Enabled := True;
      SB_ULTIMO.Enabled := True;
    end;
    10:
    begin
      SB_NOVO.Enabled := True;
      SB_EDIT.Enabled := True;
      SB_EXCLUI.Enabled := True;
      SB_CONFIRMA.Enabled := True;
      SB_CANCEL.Enabled := True;
      SB_PRIMEIRO.Enabled := True;
      SB_ANTERIOR.Enabled := True;
      SB_PROXIMO.Enabled := True;
      SB_ULTIMO.Enabled := True;
    end;
  end;

end;

procedure TFrmCadVendedor.ParametrosInclusao;
begin
  qryVendedoresEMPRESA.Value := gs_Empresa;
  qryVendedoresFILIAL.Value := gi_Filial;
  qryVendedoresIE_VENDEDOR.Value := DBCodVendedor.Text;
  qryVendedoresID_INTEVEND.Value := DBCodVendedor.Text;
  QryVendedoresNM_REDUVEND.Value := Copy (DBNomeVendedor.Text, 1, 15);
  qryVendedoresIE_CONTCONT.Value := DBCodVendedor.Text;
  qryVendedoresNR_CAIXPOSTVEND.Value := '';
  qryVendedoresNR_CEPCAIXPOSTVEND.Value := '';
  qryVendedoresGN_MENSVENDVEND.Value := '';
  qryVendedoresFX_VENDEDOR.Value := 'N';
  qryVendedoresDT_CADAVEND.Value := Date ();
  qryVendedoresDT_ALTEVEND.Value := Date ();
end;

procedure TFrmCadVendedor.ParametrosEdicao;
begin
  QryVendedoresNM_REDUVEND.Value := Copy (DBNomeVendedor.Text, 1, 15);
  qryVendedoresDT_ALTEVEND.Value := Date ();
end;

procedure TFrmCadVendedor.SB_EDITClick (Sender: TObject);
begin
  Atual_ToolBar (7);
  LDcomponentes(True);
  qryVendedores.Edit;

  if QryVendedoresFL_PESSVEND.Value = 'F' then
  begin
    DBRg.Enabled:= True;
    DBCPF.Enabled:= True;
    DBOrgaoExpedidor.Enabled:= True;
    DBCNPJ.Enabled:= False;
    DBInscEst.Enabled:= False;
  end
  else
  begin
    DBRg.Enabled:= False;
    DBCPF.Enabled:= False;
    DBOrgaoExpedidor.Enabled:= False;
    DBCNPJ.Enabled:= True;
    DBInscEst.Enabled:= True;
  end;

  PageControl.Pages[0].TabVisible := False;
  PageControl.Pages[1].TabVisible := False;
  PageControl.Pages[2].TabVisible := True;
  PageControl.Pages[3].TabVisible := False;
end;

procedure TFrmCadVendedor.SB_EXCLUIClick (Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Excluir o Vendedor?                                  ', PChar(FrmCadVendedor.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
  begin
    qryVendedores.Delete;
    qryVendedores.ApplyUpdates;
    qryVendedores.CommitUpdates;
    qryVendedores.Refresh;
  end
end;

procedure TFrmCadVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.VEN040.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmCadVendedor.LDcomponentes(LD: boolean);
var
  Temp:TComponent;
  li_Loop:Integer;
begin
  For li_Loop :=0 to ComponentCount - 1  do
  begin
    Temp := Components[li_Loop];
    if  (Temp is TDBEDIT) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
    if (Temp is TDBlookupCOMBOBOX) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
    if (Temp is TRadioGroup) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
    if (Temp is TDBMemo) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
    if (Temp is TDBRadioGroup) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
    if (Temp is TGroupBox) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
    if (Temp is TDBCheckBox) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
  end;
end;

procedure TFrmCadVendedor.DBCNPJExit(Sender: TObject);
begin
  if  (DBCNPJ.Text <> '') then
    if cnpj(StrZerodec( StrToFloat(sonumeros(DBCNPJ.Text)),14,0))=false then
    begin
      Application.MessageBox('CNPJ Inválido.                                  ', PChar(FrmCadVendedor.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      DBCNPJ.setfocus;
    end;
end;

procedure TFrmCadVendedor.DBCPFExit(Sender: TObject);
begin
  if  (DBCPF.Text <> '') then
    if cpf(StrZerodec( StrToFloat(sonumeros(DBCPF.Text)),11,0))=false then
    begin
      Application.MessageBox('CPF Inválido.                                  ', PChar(FrmCadVendedor.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      DBCPF.SetFocus;
    end;
end;

procedure TFrmCadVendedor.PageControlChange(Sender: TObject);
begin
  if PageControl.ActivePage = TabClientes then
    begin
      qryVendedorCliente.Close;
      qryVendedorCliente.ParamByName ('ID_Vendedor').Value := DBCodVendedor.Text;
      qryVendedorCliente.Open;
    end;
end;

procedure TFrmCadVendedor.DBRPessoaChange(Sender: TObject);
begin
 if DBRPessoa.Value ='F' then
  begin
    DBCNPJ.Text:='';
    DBInscEst.Text:='';
    DBCNPJ.Enabled:=False;
    DBInscEst.Enabled:=False;
    DBRg.Enabled:=True;
    DBCPF.Enabled:=True;
    DBOrgaoExpedidor.Enabled:=True;
  end;

  if DBRPessoa.Value ='J' then
  begin
    DBCPF.Text:='';
    DBOrgaoExpedidor.Text:='';
    DBCNPJ.Enabled:=True;
    DBInscEst.Enabled:=True;
    DBRg.Enabled:=False;
    DBCPF.Enabled:=False;
    DBOrgaoExpedidor.Enabled:=False;
  end;
end;

procedure TFrmCadVendedor.DBRPessoaExit(Sender: TObject);
begin
//  if DBRPessoa.Value ='F' then
//  begin
//    DBCNPJ.Text:='';
//    DBInscEst.Text:='';
//    DBCNPJ.Enabled:=False;
//    DBInscEst.Enabled:=False;
//    DBRg.Enabled:=True;
//    DBCPF.Enabled:=True;
//    DBOrgaoExpedidor.Enabled:=True;
//  end;
//
//  if DBRPessoa.Value ='J' then
//  begin
//    DBRg.Text:='';
//    DBCPF.Text:='';
//    DBOrgaoExpedidor.Text:='';
//    DBCNPJ.Enabled:=True;
//    DBInscEst.Enabled:=True;
//    DBRg.Enabled:=False;
//    DBCPF.Enabled:=False;
//    DBOrgaoExpedidor.Enabled:=False;
//  end;
end;

procedure TFrmCadVendedor.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGrid ( DBGrid1 , qryVendedores , Column,  OrdemColuna , Ordem );
  OrdemColuna := Column.FieldName;
  if (OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente') then
    Ordem := 'Crescente'
  else
    Ordem := 'Decrescente';
end;

procedure TFrmCadVendedor.dbgrdClientesTitleClick(Column: TColumn);
begin
  OrdenarGrid ( dbgrdClientes , qryVendedorCliente , Column,  OrdemColuna , Ordem );
  OrdemColuna := Column.FieldName;
  if (OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente') then
    Ordem := 'Crescente'
  else
    Ordem := 'Decrescente';
end;

procedure TFrmCadVendedor.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with DBGrid1 do
  begin
    if Odd( DataSource.DataSet.RecNo) then
      Canvas.Brush.Color := $00FFF2D9
    else
      Canvas.Brush.Color := clWindow;

    Canvas.Font.Color := clBlack;
    Canvas.FillRect(Rect);
  end;

  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($00CEE7FF);//$F0CAA6

  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFrmCadVendedor.dbgrdClientesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with dbgrdClientes do
  begin
    if Odd( DataSource.DataSet.RecNo) then
      Canvas.Brush.Color := $00FFF2D9
    else
      Canvas.Brush.Color := clWindow;

    Canvas.Font.Color := clBlack;
    Canvas.FillRect(Rect);
  end;

  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($00CEE7FF);

  dbgrdClientes.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFrmCadVendedor.btnExcelClick(Sender: TObject);
var Arquivo: TextFile;
begin
  try

    if dlgSaveArquivo.Execute then
    begin
      dlgSaveArquivo.FileName := 'LISTAGEM_VENDEDORES_PERCENTUAL.csv';
      AssignFile(Arquivo, dlgSaveArquivo.FileName);
      Rewrite(Arquivo);

      Write(Arquivo, 'CODIGO;');
      Write(Arquivo, 'RAZAO SOCIAL;');
      WriteLn(Arquivo, '% COM;');

      qryVendedorCliente.DisableControls;
      qryVendedorCliente.First;

      while not qryVendedorCliente.Eof do
      begin
        Write(Arquivo, qryVendedorClienteID_CLIENTE.AsString + ';');
        Write(Arquivo, qryVendedorClienteCLIENTE.AsString + ';');
        writeLn(Arquivo, QryVendedorClienteCOMISSAO.AsString + ';');
        qryVendedorCliente.Next;
      end;

      CloseFile(Arquivo);
      qryVendedorCliente.First;
      qryVendedorCliente.EnableControls;
      Application.MessageBox(PChar('Arquivo gerado com sucesso em ' + dlgSaveArquivo.FileName), PChar(FrmCadVendedor.Caption), MB_OK + MB_ICONINFORMATION);
    end;
  except
    Application.MessageBox('Erro ao gerar o arquivo. Verifique se o local de destino existe e está acessível.', PChar(FrmCadVendedor.Caption), MB_OK + MB_ICONINFORMATION);
  end;

end;

end.



