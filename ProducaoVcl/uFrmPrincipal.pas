unit uFrmPrincipal;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, ActnList, DB, Ora,
  Mask, DBCtrls, Buttons, RotImg, jpeg, uDmPrincipal, FMTBcd, SqlExpr,
  Spin, IdRawBase, IdRawClient, IdIcmpClient, MMSystem, DateUtils,
  JvExControls, JvBitmapButton, ComCtrls, Data.DBXInterBase,
  IdExplicitTLSClientServerBase, IdSMTPBase, System.Actions, DBAccess;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    dtsProducao: TOraDataSource;
    dtsProduto: TOraDataSource;
    ActionList1: TActionList;
    IdSMTP: TIdSMTP;
    IdMessage: TIdMessage;
    LblLoteExpo: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtContador: TPanel;
    pnlContadorTotal: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtUltimoRegGerado: TLabel;
    edtUltimoRegServer: TLabel;
    lblIntegracao01: TLabel;
    lblIntegracao02: TLabel;
    PnEtiqueta: TPanel;
    EdEtiqueta: TEdit;
    BtImportarEtiqueta: TBitBtn;
    BtFecharEtiqueta: TBitBtn;
    BitBtn3: TBitBtn;
    Label8: TLabel;
    AbrePasta: TOpenDialog;
    Label18: TLabel;
    QryUltimoGrava: TSQLQuery;
    CnxFireBird: TSQLConnection;
    QryUltimoGravaPRC_CODIGO: TFMTBCDField;
    QryUltimoGravaPRC_IDENTIFICACAO: TStringField;
    QryUltimoGravaPRD_CODIGO: TStringField;
    QryUltimoGravaPRC_DT_REGISTRO: TSQLTimeStampField;
    QryUltimoGravaPRC_DT_PADRAO: TSQLTimeStampField;
    QryUltimoGravaPRC_DT_BALANCA: TSQLTimeStampField;
    QryUltimoGravaPRC_BALANCA: TIntegerField;
    QryUltimoGravaPRC_PESO_PADRAO: TFMTBCDField;
    QryUltimoGravaPRC_PESO_LIQUIDO: TFMTBCDField;
    QryUltimoGravaPRC_TARA: TFMTBCDField;
    QryUltimoGravaPRC_INTEGRADO: TStringField;
    QryUltimoGravaPRC_DIGITO: TStringField;
    QryUltimoGravaPRC_CODBARRAS: TStringField;
    QryUltimoGravaPRC_NUMBARRAS: TStringField;
    QryUltimoGravaLOTEEXPO: TStringField;
    BtDesligaSom: TBitBtn;
    TocaSom: TTimer;
    image1: TImage;
    image3: TImage;
    image2: TImage;
    pnlEtiqExportacao: TPanel;
    LbCodigo: TLabel;
    LbDescricao: TLabel;
    ImgEtiqExpo: TImage;
    Relogio: TTimer;
    pnlDados: TPanel;
    shpEstalizacaoPeso: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    LblAviso: TLabel;
    shpReducaoPeso: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    edtDataProducao: TDBEdit;
    edtDataPadrao: TDBEdit;
    edtDataBalanca: TDBEdit;
    lblPesoPadrao: TEdit;
    lblPesoLiquido: TEdit;
    edtPesoPadrao: TDBEdit;
    edtPesoLiquido: TDBEdit;
    pnlMsg: TPanel;
    Shape1: TShape;
    shpProduto: TShape;
    shpCodigo: TShape;
    shpTara: TShape;
    edtMaterial: TEdit;
    shpMaterial: TShape;
    shpEmbalagem: TShape;
    shpDtProducao: TShape;
    shpDtPadrao: TShape;
    shpDtBalanca: TShape;
    shpPesoPadrao: TShape;
    shpPesoLiquido: TShape;
    Image4: TImage;
    Shape2: TShape;
    edtFaixaPeso: TEdit;
    Edit2: TEdit;
    btnDataTurno: TJvBitmapButton;
    btnLogIntegracao: TJvBitmapButton;
    btnLerEtiqueta: TJvBitmapButton;
    btnReImpressao: TJvBitmapButton;
    btnConfiguracoes: TJvBitmapButton;
    btnUpdateMateEmba: TJvBitmapButton;
    btnSemEtiqueta: TJvBitmapButton;
    btnImpAuto: TJvBitmapButton;
    btnDataSomar: TJvBitmapButton;
    Panel4: TPanel;
    LbEtiq04: TLabel;
    LbVencExpo: TLabel;
    edtPeso: TEdit;
    BtBalanca: TBitBtn;
    shpTipo: TShape;
    LbTipo: TLabel;
    Shape4: TShape;
    LbHora: TLabel;
    Label10: TLabel;
    btnPesar: TJvBitmapButton;
    lblCaixas: TLabel;
    shpCaixa: TShape;
    edt_Caixas: TEdit;
    lbl_PesoMedio: TLabel;
    Label11: TLabel;
    LbUltimaPesagem: TLabel;
    Memo1: TMemo;
    Pnl_PesoEnviado: TPanel;
    Tim_Msg: TTimer;
    TimerRecuperaDadosBD: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtMaterialChange(Sender: TObject);
    procedure btnDataSubtrairClick(Sender: TObject);
    procedure btnDataSomarClick(Sender: TObject);
    procedure btnUpdateMateEmbaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure lblPesoLiquidoChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure btnLogIntegracaoClick(Sender: TObject);
    procedure btnReImpressaoClick(Sender: TObject);
    procedure edtMaterialKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CriaFor_FrmConfiguracoes;
    procedure CriaForm_FrmLogin;
    procedure CriaForm_FormLogIntegracao;
    function CriaForm_FrmSenhaAcesso: string;
    procedure edtMaterialKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Apaga_etiqueta;
    procedure Mostra_etiqueta;
    procedure ObtemImagemDoBanco(Campo: TBlobField; imgDestino: TImage);
    procedure ler_etiquetas_disco(Sender: TObject);
    procedure Fecha_etiqueta(Sender: TObject);
    procedure localiza_etiqueta(Sender: TObject);
    procedure Importar_etiqueta_sistema(Sender: TObject);
    procedure Pressionou_botao_automatico(Sender: TObject);
    procedure Pressionou_botao_semetiqueta(Sender: TObject);
    procedure Desliga_som(Sender: TObject);
    procedure Tocando_aviso(Sender: TObject);
    procedure Gerar_Etiqueta_Codigo(CBarras: string);
    procedure GerarCodigo(Codigo: string; Canvas: TCanvas);
    function Encriptando(CBarras: string): string;
    function Vektor(FromP, Top: TPoint): TPoint;
    function xComp(Vektor: TPoint; Angle: Extended): Integer;
    function yComp(Vektor: TPoint; Angle: Extended): Integer;
    function RotImage(srcbit: TBitmap; Angle: Extended; FPoint: TPoint; Background: TColor): TBitmap;
    procedure InverteImagem;
    procedure btnDataTurnoClick(Sender: TObject);
    procedure Simula_balanca(Sender: TObject);


    procedure RelogioTimer(Sender: TObject);
    procedure btnPesarClick(Sender: TObject);
    procedure edt_CaixasKeyPress(Sender: TObject; var Key: Char);
    procedure edt_CaixasChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tim_MsgTimer(Sender: TObject);
    procedure TimerRecuperaDadosBDTimer(Sender: TObject);

  private
    FUltimoPeso: Double;
    { Private declarations }
  public
    Filial: Integer;
    Vdtstr: string;
    bReducaoPeso: Boolean;
    bEstabilizacaoPeso , BdLocal: Boolean;
    procedure ControlaPeso;
    procedure LigaSomContinuo;
    procedure Gravar_Log(Texto: string);
    procedure Limpar_Log();

    procedure MsgAviso(msg: string);
    procedure MsgErro(msg: string);
    procedure MsgCorreto(msg: string);
    procedure MsgEstabilizando(msg: string);
    procedure MsgLimpar;
    procedure CarregarConfiguracoes;
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;
  nbOk: integer;

implementation

uses uVg_VariaveisGlobais, uMg_MetodosGlobais,
  uFrmConfirguracoes, uFrmLogIntegracao, uFrmReImpressao, uFrmLogin,
  uFrmStatus, uFrmSenhaAcesso, UFrmSeldata, UFrmRegAtual,
  uFrmEtiqueta, uFrmConfiguracoes, uFrmEtiqueta1, Math, StrUtils, IniFiles;

{$R *.dfm}

procedure TFrmPrincipal.LigaSomContinuo;
begin
  BtDesligaSom.Visible := True;
  TocaSom.Enabled := True;
end;

procedure TFrmPrincipal.ObtemImagemDoBanco(Campo: TBlobField; imgDestino: TImage);
var
  jpgImg: TJPEGImage;
  stMem: TMemoryStream;
begin

  //Não existe imagem no campo
  if Campo.IsNull then exit;

  jpgImg := TJPEGImage.Create;
  stMem := TMemoryStream.Create;
  try
    Campo.SaveToStream(stMem);
    stMem.Position := 0;
    jpgImg.LoadFromStream(stMem);
    imgDestino.Picture.Assign(jpgImg);
  finally
    stMem.Free;
    jpgImg.Free;
  end;

end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
var
  VnomeComp: string;
begin
  Top := 20;
  Left := 2;

  FrmStatus := TFrmStatus.Create(Application);
  FrmStatus.Show;

  try
    //Verifica o nome da maquina local
    VnomeComp := NomeComputador;

    //Nome da Maquina Local e define o ip
    if ( UpperCase(VnomeComp) = 'DACAR_CARREGAMENTO01') or ( UpperCase(VnomeComp) = 'DACAR_CARREGAMENTO01') then Vg_Ip := '192.168.0.51'
    else if ( UpperCase(VnomeComp) = 'DACAR_PRODUCAO') or ( UpperCase(VnomeComp) = 'DACAR_PRODUCAO') then Vg_Ip := '192.168.0.48'
    else if ( UpperCase(VnomeComp) = 'DACAR-TI') or ( UpperCase(VnomeComp) = 'DACAR_TI') then Vg_Ip := '192.168.0.23'
    else if ( UpperCase(VnomeComp) = 'DACAR_CARREGAMENTO') or ( UpperCase(VnomeComp) = 'DACAR_CARREGAME') then Vg_Ip := '192.168.0.70'
    else if ( UpperCase(VnomeComp) = 'DESKTOP-M9K5H2A') or ( UpperCase(VnomeComp) = 'DESKTOP-M9K5H2A') then Vg_Ip := '192.168.0.54'
    else if ( UpperCase(VnomeComp) = 'DC_PRODUCAO_MIUDOS') or ( UpperCase(VnomeComp) = 'DC_PRODUCAO_MIU') then Vg_Ip := '192.168.0.101'
    else
    begin
      Vg_Ip := '192.168.0.51' ;
      MessageDlg('Nome do Computador não está correto. Informe o TI.' + UpperCase(VnomeComp) , mtWarning, [mbOk], 0);
    end;

    Vg_Cnx_Sorocaba := False;
    Vg_Cnx_Teste := False;
    Vg_Cnx_Itape := False;
    Vg_Cnx_Guapiacu := False;

    if (Pos('10.0.1', Vg_Ip) <> 0) then
    begin
      Vg_Cnx_Sorocaba := True;
      Vg_Filial := 1;
    end
    else
    if Pos('10.0.5', Vg_Ip) <> 0 then
    begin
      Vg_Cnx_Itape := True;
      Vg_Filial := 2;
    end
    else
    if (Pos('10.0.7', Vg_Ip) <> 0) then
    begin
      Vg_Cnx_Guapiacu := True;
      Vg_Filial := 11;
    end
    else
    if (Pos('192.168.', Vg_Ip) <> 0) or (Vg_Ip = '189.0.0.202') then
    begin
      Vg_Cnx_Dacar := True;
      Vg_Filial := 1;
    end;

    BdLocal := false;

    CriaForm_FrmLogin;

    try
      DmPrincipal := TDmPrincipal.Create(DmPrincipal);
      DmPrincipal.SomenteLocal :=  BdLocal;
    except
      on E: Exception do
      begin
        //Não se conectou ao banco de dados
        MessageDlg('Erro ao estabelecer conexao com o Banco de Dados.' + Chr(10) + Chr(10) +
          E.Message + Chr(10) + Chr(10) + 'A aplicaçao sera encerrada.', mtError, [mbOk], 0);
        Application.Terminate;
      end;
    end;

    DmPrincipal.cdsIpBalanca.Open;

    if DmPrincipal.cdsIpBalanca.IsEmpty then
    begin
      MessageDlg('Balança não cadastrada. Informe o CPD.', mtWarning, [mbOk], 0);
      Application.Terminate;
    end;

    if DmPrincipal.cdsIpBalancaIPB_IP.AsString <> Vg_Ip then
    begin
      MessageDlg('Atenção: Balança (IP) [' + Vg_Ip + ']  diferente da Balança (Banco). [' + DmPrincipal.cdsIpBalancaIPB_IP.AsString + ']', mtWarning, [mbOk], 0);
      Application.Terminate;
    end;

    FUltimoPeso := 0;

    //Acrescentado
    FrmEtiqueta := TFrmEtiqueta.Create(Application);
    FrmEtiqueta1 := TFrmEtiqueta1.Create(Application);

  finally

    FrmStatus.Release;
    FrmStatus := nil;

  end;

end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin

  //Verifica a data na inicializacao
  if ( not DmPrincipal.SomenteLocal ) then
  begin
       DmPrincipal.Verifica_data_inicializacao;
       DmPrincipal.PesaMultiplasCaixas ();
  end
  else
      vg_PesaMultiCaixas := 'S';

  //Mostra o IP da balança e do computador atual
  Caption := Caption + ' | Balança ' + IntToStr(DmPrincipal.cdsIpBalancaIPB_BALANCA.AsInteger) + ' | ip ' + Vg_Ip;

  if ( Vg_Cnx_Dacar ) then
     Caption := Caption + ' | Dacar'
  else if Filial = 1  then Caption := Caption + ' | Sorocaba'
  else if Filial = 2  then Caption := Caption + ' | Itapetininga'
  else if Filial = 11 then Caption := Caption + ' | Guapiaçu' ;


  //Coloca o foco em material
  edtMaterial.SelectAll;

  if ( PSimulaPeso = 'N' ) then
  //Cria a comunicação com a impressoara e com a balança
  DmPrincipal.CriaComunicaoSerial;

  //Define a rota do ip para o componente icmp
  if Vg_Cnx_Itape = True then DmPrincipal.Icmp1.Host := Copy(DmPrincipal.CnxOracle.Server, 1, 8);
  if Vg_Cnx_Sorocaba = True then DmPrincipal.Icmp1.Host := Copy(DmPrincipal.CnxOracle.Server, 1, 10);
  if Vg_Cnx_Teste = True then DmPrincipal.Icmp1.Host := Copy(DmPrincipal.CnxOracle.Server, 1, 10);
  if Vg_Cnx_Guapiacu = True then DmPrincipal.Icmp1.Host := Copy(DmPrincipal.CnxOracle.Server, 1, 8);
  if Vg_Cnx_Dacar = True then DmPrincipal.Icmp1.Host := Copy(DmPrincipal.CnxOracle.Server, 1, PosEx(':', DmPrincipal.CnxOracle.Server,1) - 1 );
  if DmPrincipal.Icmp1.HasParent then DmPrincipal.ModificaDataEscolhe(Now());
  if Vg_impressora = 0 then FrmPrincipal.LbTipo.Caption := 'ETIQUETA  PRODUÇÃO';
  if Vg_impressora = 1 then FrmPrincipal.LbTipo.Caption := 'ETIQUETA  EXPORTAÇÃO';

  //lança a hora para depois ser atualizada de 1 em 1 minuto
  LbHora.Caption := FormatDateTime('hh:mm', now);
  edtMaterial.SetFocus;
  edtMaterial.SelectAll;

  //Exporta os dados recebidos
  try
    try
      if ( not DmPrincipal.SomenteLocal ) then
        DmPrincipal.ExportaDados;
    except
      //
    end;
  finally

  end;

end;

procedure TFrmPrincipal.edtMaterialChange(Sender: TObject);
var
  PesoMinimo, PesoMaximo: Double;
begin

  //Foi escolhido um produto com 3 digitos
  if Length(edtMaterial.Text) = 3 then
  begin

    if DmPrincipal.cdsProducao.State = dsInsert then
    begin

      //Faz o filtro do produto
      DmPrincipal.FiltraProduto(edtMaterial.Text);

      edtFaixaPeso.Text := '';

      if (ImprimeEtq = 0) and (Vg_impressora = 1) then
        exit;

      //Limpa a mensagem e inicia o contador
      MsgLimpar;
      edtContador.Caption := '0';

      //Não filtrou nenhum produtos
      if DmPrincipal.cdsProduto.IsEmpty then
      begin
        MsgErro('Produto inválido.');
        edtMaterial.SelectAll;
        Apaga_etiqueta;
        Abort;
      end;

      //O Código do produto não esta ativo para a pesagem
      if DmPrincipal.cdsProdutoPRD_ATIVO.AsString = 'N' then
      begin
        MsgErro('Código não ativo.');
        edtMaterial.SelectAll;
        Apaga_etiqueta;
        Abort;
      end;

      //Define a tara de pesagem
      if DmPrincipal.cdsProdutoPRD_TARA.AsFloat <= 0 then
      begin
        MsgErro('Tara inválida.');
        edtMaterial.SelectAll;
        Apaga_etiqueta;
        Abort;
      end;

      //Define o peso padrão
      if DmPrincipal.cdsProdutoPRD_PESO_PADRAO_MEDIO.AsFloat <= 0 then
      begin
        MsgErro('Peso padrão/médio zerado.');
        edtMaterial.SelectAll;
        Apaga_etiqueta;
        Abort;
      end;

      //Define se o peso padrao sera % ou medio
      if DmPrincipal.cdsProdutoPRD_PADRAO.AsString = 'S' then
      begin
        if not DmPrincipal.cdsProdutoMAT_PERC_PESO_PADR.IsNull then
          lblPesoPadrao.Text := 'Peso padrão ( % )'
        else
          lblPesoPadrao.Text := 'Peso padrão';
      end
      else
        lblPesoPadrao.Text := 'Peso médio';


      //colocar o codigo da pesagem com %
      if DmPrincipal.cdsProdutoPRD_TP_EXPEDICAO.AsString = 'LO' then
      begin
        btnSemEtiqueta.Down := False;
          //btnSemEtiqueta.Enabled := False;
        btnImpAuto.Down := True;
      end
      else
      begin
        btnSemEtiqueta.Enabled := True;
          //Não Baixar o botão automaticamente.
        btnSemEtiqueta.Down := False;
        btnImpAuto.Down := True;
      end;

      if ( vg_PesaMultiCaixas = 'S' ) then
      begin
        btnSemEtiqueta.Enabled := False;
        btnSemEtiqueta.Down    := True;
        btnImpAuto.Enabled     := false;
        btnImpAuto.Down        := false;
        btnPesar.Enabled       := true;

        lblPesoLiquido.Text := '';
        shpReducaoPeso.Color := clBlack;
        shpReducaoPeso.Font.Color := $0077FFFF;

        edt_Caixas.Text := '0';
        lbl_PesoMedio.Caption := '0,00';
      end
      else
          btnPesar.Enabled       := false ;


      //Foi escolhida etiqueta normal
      if Vg_impressora = 0 then
      begin
          //Esconde labels
          //LbEtiq03.Visible    := False;
        LbEtiq04.Visible := False;
          //LblLoteExpo.Visible := False;
        LbVencExpo.Visible := False;

          //Esconde a imagem de exportação
        Apaga_etiqueta;
        FrmPrincipal.LblLoteExpo.Caption := '0';

          //Mostra etiqueta de produção
          //FrmPrincipal.ImgEtiqProd.Visible := True;
        FrmPrincipal.Mostra_etiqueta;

          //Destroi o objeto rlReport da etiqueta pequena
        FrmEtiqueta1.Free;
          //cria novamente a etiqueta
        FrmEtiqueta1 := TFrmEtiqueta1.Create(self);

      end
      else
      begin

          //Mostra as labels
          //LbEtiq03.Visible    := True;
        LbEtiq04.Visible := True;
          //LblLoteExpo.Visible := True;
        LbVencExpo.Visible := True;

          //Esconde a etiqueta de produção
          //FrmPrincipal.ImgEtiqProd.Visible := False;

          //Localiza e mostra a etiqueta de exportação
        DmPrincipal.FiltraEtiqExpo(edtMaterial.Text);
          //FrmPrincipal.ImgEtiqExpo.Visible := True;
        FrmPrincipal.Mostra_etiqueta;

          //Define o lote do produto
        if DmPrincipal.AchouEtiqueta = 1 then
          DmPrincipal.cdsProducaoLOTEEXPO.AsString := FrmPrincipal.LblLoteExpo.Caption;

        DmPrincipal.VerificaPeso(False);
      end;

    end;

    //Define o foco no campo material
    edtMaterial.SelectAll;

  end;

end;

procedure TFrmPrincipal.Apaga_etiqueta;
begin
  //apaga etiqueta e esconde a tela
  FrmPrincipal.LbCodigo.Caption := '';
  FrmPrincipal.LbDescricao.Caption := '';
  FrmPrincipal.LbCodigo.Visible := False;
  FrmPrincipal.LbDescricao.Visible := False;
end;

procedure TFrmPrincipal.Mostra_etiqueta;
begin
  //apaga etiqueta e esconde a tela
  FrmPrincipal.LbCodigo.Caption := DmPrincipal.cdsProdutoPRD_CODIGO.Value;
  FrmPrincipal.LbDescricao.Caption := DmPrincipal.cdsProdutoPRD_DESCRICAO.Value;
  FrmPrincipal.LbCodigo.Visible := True;
  FrmPrincipal.LbDescricao.Visible := True;
end;

procedure TFrmPrincipal.btnDataSubtrairClick(Sender: TObject);
begin
  // ACERTAR A SEQUENCIA DA NUMERAÇÃO COM O MAIOR VALOR+1 DA DATA
  Screen.Cursor := crSQLWait;
  DmPrincipal.ModificaData(False);
  edtMaterial.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.btnDataSomarClick(Sender: TObject);
var
  vDatAtual, vDataMontada: TDateTime;
begin

  Cria_FrmSelData(Vdtstr);

  //verificar se não é data futura
  DmPrincipal.qryPesq.Open;
  vDatAtual := StrToDate(DmPrincipal.qryPesqDATATUAL.Value);
  DmPrincipal.qryPesq.Close;

  Screen.Cursor := crSQLWait;
  vDataMontada := StrToDateTime(Vdtstr + FormatDateTime('hh:mm:ss', now));
  DmPrincipal.ModificaDataEscolhe(vDataMontada);
  edtMaterial.SetFocus;
  Screen.Cursor := crDefault;

end;

procedure TFrmPrincipal.btnUpdateMateEmbaClick(Sender: TObject);
begin
  //Atualiza os produtos do sistema...
  try
    Screen.Cursor := crSQLWait;
    FrmStatus := TFrmStatus.Create(Application);
    FrmStatus.LbMensagem.Caption := 'Atualizando produtos. Aguarde...';
    FrmStatus.Caption := 'Status';

    FrmStatus.Show;

    DmPrincipal.cdsProducao.Cancel;
    DmPrincipal.cdsProducao.CancelUpdates;
    DmPrincipal.ImportaDados;
  finally
    FrmStatus.Release;
    FrmStatus := nil;

    Screen.Cursor := crDefault;
    edtMaterial.SetFocus;
  end;
end;

procedure TFrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
var
  Txt: TextFile;
  Entrada, VULTIGRAVA, NMARQ: string;
  F: TextFile;
  S: string;
  Caixas :Integer;
  PesoMedio : Double;
begin
  Caixas := 0 ;
  if (shpReducaoPeso.Color = clWhite) and (Length(edtMaterial.Text) = 3) then
  begin
    MsgAviso('Este produto ja foi pesado.');
    Exit;
  end;

  if (Key = #13) and (shpReducaoPeso.Color = clBlack) and (shpEstalizacaoPeso.Brush.Color = clBlack) then
  try
    ActiveControl := nil;

    MsgLimpar;
    edtMaterial.Color := clBackground;
    edtMaterial.Enabled := False;

    FUltimoPeso := DmPrincipal.cdsProducaoPRC_PESO_LIQUIDO.AsFloat;
    FUltimoPeso := FUltimoPeso - (FUltimoPeso * (DmPrincipal.cdsIpBalancaIPB_PERCENT_REDU_BALANC.AsFloat / 100));

    if( vg_PesaMultiCaixas = 'N' ) then
    begin
      try
        DmPrincipal.GravarRegistro;
      except
      //
      end;

      if DmPrincipal.VIDENTIFICACAO = '' then exit;

      if DmPrincipal.FResult then
      begin
        shpReducaoPeso.Color := clWhite;
        shpReducaoPeso.Font.Color := clBlack;
        MsgCorreto('Etiqueta Gerada.');
        DmPrincipal.InsereNovoRegistro;
      end;

    end
    else
    begin
      if ( Memo1.Visible ) then
        Memo1.Lines.Add('1 - PL .' + DmPrincipal.cdsProducaoPRC_PESO_LIQUIDO.AsString +' - PP '+DmPrincipal.cdsProducaoPRC_PESO_PADRAO.AsString  + '  edtMaterial  '+ IntTostr( Length(edtMaterial.Text) ) );

      //DmPrincipal.GravarRegistroCaixas();
      if ( DmPrincipal.cdsProducaoPRC_PESO_LIQUIDO.AsFloat > 0 ) AND  (Length(edtMaterial.Text) = 3) AND (DmPrincipal.cdsProducaoPRC_PESO_PADRAO.AsFloat > 0) then
      begin
        Caixas := Round( DmPrincipal.cdsProducaoPRC_PESO_LIQUIDO.AsFloat / ( DmPrincipal.cdsProducaoPRC_PESO_PADRAO.AsFloat + DmPrincipal.cdsProducaoPRC_TARA.AsFloat ) );
        edt_Caixas.Text := IntToStr(Caixas);
        if ( Caixas > 0 ) then
          PesoMedio := DmPrincipal.cdsProducaoPRC_PESO_LIQUIDO.AsFloat / Caixas
        else
          PesoMedio := 0 ;

        lbl_PesoMedio.Caption := FormatFloat('##,##0.00', PesoMedio) ;

        if ( Memo1.Visible ) then
          Memo1.Lines.Add('2 - Peso Médio' +  FloatToStr( PesoMedio)  );
      end;
    end;

  finally
    edtMaterial.Color := clWhite;
    edtMaterial.Enabled := True;
    edtMaterial.SetFocus;
    edtMaterial.SelectAll;
  end;

end;

procedure TFrmPrincipal.lblPesoLiquidoChange(Sender: TObject);
var Key: Char;
begin
  if lblPesoLiquido.Text = 'Peso líquido - ESTABILIZADO' then
  begin
    shpEstalizacaoPeso.Brush.Color := clBlack;
    MsgLimpar;
  end
  else
  begin
    shpEstalizacaoPeso.Brush.Color := clWhite;
    MsgEstabilizando('Peso instável.');
  end;

  if btnImpAuto.Down then
  begin
    if lblPesoLiquido.Text = 'Peso líquido - ESTABILIZADO' then
      if (StrToFloat(edtPesoLiquido.Text) >= 5) and (StrToFloat(edtPesoLiquido.Text) <= 50) then
      begin
        Key := #13;
        FormKeyPress(nil, Key);
      end;
  end
  else
  if vg_PesaMultiCaixas = 'S' then
  begin
    // TODO: Validar peso minimo e máximo : 1 Caixa menos variação permitida / capacidade da balança
    if lblPesoLiquido.Text = 'Peso líquido - ESTABILIZADO' then
      begin
        Key := #13;
        FormKeyPress(nil, Key);
      end; 
  end;

end;

procedure TFrmPrincipal.ControlaPeso;
begin
  if FUltimoPeso > 0 then
    if DmPrincipal.cdsProducaoPRC_PESO_LIQUIDO.AsFloat <= FUltimoPeso then
    begin
      shpReducaoPeso.Color := clBlack;
      shpReducaoPeso.Font.Color := $0077FFFF;
      MsgLimpar;
      FUltimoPeso := 0;
    end;
end;

procedure TFrmPrincipal.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.btnConfiguracoesClick(Sender: TObject);
var
  strAcesso, vSenha: string;
begin
  strAcesso := CriaForm_FrmSenhaAcesso;
  if strAcesso = 'xes' then
    Exit
  else

   vSenha :=  '@DACAR104#';

  if UpperCase(strAcesso) <> vSenha then
    raise Exception.Create('Senha de acesso inválida.');

  Screen.Cursor := crSQLWait;
  try
    DmPrincipal.DestroiComunicaoSerial;
  finally
    edtMaterial.SetFocus;
    Screen.Cursor := crDefault;
  end;

  CriaFor_FrmConfiguracoes;

  Screen.Cursor := crSQLWait;
  try
    if DmPrincipal.cdsIpBalancaIPB_BALANCA.Value <> 99 then
      DmPrincipal.CriaComunicaoSerial;
  finally
    FrmPrincipal.BringToFront;
    Screen.Cursor := crDefault;
  end;

end;

procedure TFrmPrincipal.btnLogIntegracaoClick(Sender: TObject);
begin
  try
    CriaForm_FormLogIntegracao;
  finally
    FrmPrincipal.BringToFront;
    edtMaterial.SetFocus;
  end;
end;

procedure TFrmPrincipal.btnReImpressaoClick(Sender: TObject);
var
  strAcesso: string;
begin
  //Reimpressão de etiquetas

  strAcesso := CriaForm_FrmSenhaAcesso;
  if strAcesso = 'xes' then
    Exit
  else

    if strAcesso <> '301204' then raise Exception.Create('Senha de acesso inválida.');

  Screen.Cursor := crSQLWait;
  try
    DmPrincipal.DestroiComunicaoSerial(True, False);
  finally
    edtMaterial.SetFocus;
    Screen.Cursor := crDefault;
  end;

  CriaForm_FrmReImpressao;

  Screen.Cursor := crSQLWait;
  try
    DmPrincipal.CriaComunicaoSerial(True, False);
  finally
    FrmPrincipal.BringToFront;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmPrincipal.edtMaterialKeyPress(Sender: TObject;
  var Key: Char);
begin
  //So aceita carecteres de 0 a 9 como entrada
  if not (Key in ['0'..'9', Chr(8)]) then Key := #0;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Muda ampulheta
  Screen.Cursor := crSQLWait;
  //Apaga o arquivo ini
  {try
    DeleteFile('C:\CaaSistemas\Producao\producao.ini');
  except
    //
  end;}
  //Exporta os dados recebidos
  try
    try
      if ( not DmPrincipal.SomenteLocal ) then
        DmPrincipal.ExportaDados;
    except
      //
    end;
  finally

    //Volta a ampulheta
    Screen.Cursor := crDefault;

  end;

  //Desliga a comunicação com as interfaces
  Screen.Cursor := crHourGlass;
  try
    DmPrincipal.DestroiComunicaoSerial;
  finally
    Screen.Cursor := crDefault;
  end;

  //Libera a janela de impressão da etiqueta exportação
  FrmEtiqueta.Free;
  FrmEtiqueta1.Free;

  //Libera memoria
  Action := CaFree;
end;

procedure TFrmPrincipal.CriaFor_FrmConfiguracoes;
begin
  //Abre a janela de configurações
  try
    FrmConfiguracoes := TFrmConfiguracoes.Create(Application);
    DmPrincipal.CDSSeqLocal.Active := false;
    DmPrincipal.CDSSeqLocal.Params[0].Value :=  COPY(DateToStr(DmPrincipal.FDataInicial), 1, 2) +
    COPY(DateToStr(DmPrincipal.FDataInicial), 4, 2) +
    COPY(DateToStr(DmPrincipal.FDataInicial), 9, 2) +
    FormatFloat('00', DmPrincipal.cdsProducaoPRC_BALANCA.Value);

    DmPrincipal.CDSSeqLocal.Active := True;

    try
      DmPrincipal.Qry_SeqServer.Close;
      DmPrincipal.Qry_SeqServer.ParamByName('IDENTIFICACAO').Value :=  DmPrincipal.CDSSeqLocal.Params[0].Value;
      DmPrincipal.Qry_SeqServer.Open;
    except
      FrmConfiguracoes.edt_MaxServer.Color := clRed;
      FrmConfiguracoes.edt_MaxServer.Text  := 'SEM CONEXÃO';
    end;

    FrmConfiguracoes.ShowModal;
  finally
    FreeAndNil(FrmConfiguracoes);
  end;
end;

procedure TFrmPrincipal.CriaForm_FrmLogin;
begin
  try
    FrmLogin := TFrmLogin.Create(Application);
    FrmLogin.ShowModal;
  finally
    FreeAndNil(FrmLogin);
  end;
end;

function TFrmPrincipal.CriaForm_FrmSenhaAcesso: string;
begin
  try
    FrmSenhaAcesso := TFrmSenhaAcesso.Create(Application);
    FrmSenhaAcesso.ShowModal;
    Result := FrmSenhaAcesso.edtSenha.Text;
  finally
    FreeAndNil(FrmSenhaAcesso);
  end;
end;

procedure TFrmPrincipal.CriaForm_FormLogIntegracao;
begin
  try
    FrmLogIntegracao := TFrmLogIntegracao.Create(FrmLogIntegracao);
    FrmLogIntegracao.ShowModal;
  finally
    FreeAndNil(FrmLogIntegracao);
  end;
end;

procedure TFrmPrincipal.edtMaterialKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //Poe o foco no campo e chama a variavel
  edtMaterialChange(Sender);
end;

procedure TFrmPrincipal.ler_etiquetas_disco(Sender: TObject);
begin
  //Localiza uma etiqueta no disco e transfere para o sistema
  PnEtiqueta.Visible := True;
end;

procedure TFrmPrincipal.Fecha_etiqueta(Sender: TObject);
begin
  //Limpa localização
  EdEtiqueta.Text := '';
  //Esconde a janela de etiquetas
  PnEtiqueta.Visible := False;
end;

procedure TFrmPrincipal.localiza_etiqueta(Sender: TObject);
var
  Arquivo: string;
begin
  //Procura uma imagem
  AbrePasta.Execute;
  if AbrePasta.FileName <> '' then
  begin
    EdEtiqueta.Text := AbrePasta.FileName;
    //Arquivo := '';
    //Arquivo := ExtractFileDir(AbrePasta.FileName);
    //Arquivo := copy( EdEtiqueta.Text, length(Arquivo) + 1, length(EdEtiqueta.Text) - length(Arquivo) );
    //If Arquivo <> '' then EdDestino.Text  := 'C:\caasistemas\producao' + Arquivo;
  end
  else
  begin
    EdEtiqueta.Text := '';
  end;
end;

procedure TFrmPrincipal.Importar_etiqueta_sistema(Sender: TObject);
begin

  //Importar a etiqueta para a pasta do sistema
  //CopiarArqs(EdEtiqueta.Text, EdDestino.Text);

  CopiarArqs(EdEtiqueta.Text, 'C:\caasistemas\producao\');

  //Limpa os dados de origem e destino
  EdEtiqueta.Text := '';

  //EdDestino.Text  := '';

  //Fecha a janela de etiquetas
  PnEtiqueta.Visible := False;

end;

procedure TFrmPrincipal.Pressionou_botao_automatico(Sender: TObject);
var
  Pressionou: Integer;
begin
  {if btnImpAuto.Down = False then Pressionou := 0;
  if btnImpAuto.Down = True then Pressionou := 1;

  if Pressionou = 0 then btnImpAuto.Down := True;
  if Pressionou = 1 then btnImpAuto.Down := False;}
end;

procedure TFrmPrincipal.Pressionou_botao_semetiqueta(Sender: TObject);
var
  Pressionou: Integer;
begin
  {if btnSemEtiqueta.Down = False then Pressionou := 0;
  if btnSemEtiqueta.Down = True then Pressionou := 1;
  if Pressionou = 0 then btnSemEtiqueta.Down := True;
  if Pressionou = 1 then btnSemEtiqueta.Down := False;}
end;

procedure TFrmPrincipal.Desliga_som(Sender: TObject);
begin
  //Desliga o timer do son
  TocaSom.Enabled := False;
  //Desliga o som
  PlaySound(nil, 0, 0);
  //Esconde o botao
  BtDesligaSom.Visible := False;
end;

procedure TFrmPrincipal.Tocando_aviso(Sender: TObject);
begin
  sndPlaySound(PChar('ExpedicaoAtencao.wav'), SND_ASYNC);
end;

//Codigo fonte usado para o codigo de barras *********************************

procedure TFrmPrincipal.GerarCodigo(Codigo: string; Canvas: TCanvas);
const
  digitos: array['0'..'9'] of string[5] = ('00110', '10001', '01001', '11000',
    '00101', '10100', '01100', '00011', '10010', '01010');
var s: string;
  i, j, x, t: Integer;
begin
  // Gerar o valor para desenhar o código de barras
  // Caracter de início
  s := '0000';
  for i := 1 to length(codigo) div 2 do
    for j := 1 to 5 do
      s := s + Copy(Digitos[codigo[i * 2 - 1]], j, 1) + Copy(Digitos[codigo[i * 2]], j, 1);
  // Caracter de fim
  s := s + '100';
  // Desenhar em um objeto canvas
  // Configurar os parâmetros iniciais
  x := 0;
  // Pintar o fundo do código de branco
  Canvas.Brush.Color := clWhite;
  Canvas.Pen.Color := clWhite;
  Canvas.Rectangle(0, 0, 2000, 79);
  // Definir as cores da caneta
  Canvas.Brush.Color := clBlack;
  Canvas.Pen.Color := clBlack;
  // Escrever o código de barras no canvas
  for i := 1 to length(s) do
  begin
    // Definir a espessura da barra
    t := strToInt(s[i]) * 2 + 1;
    // Imprimir apenas barra sim barra não (preto/branco - intercalado);
    if i mod 2 = 1 then
      Canvas.Rectangle(x, 0, x + t, 79);
    // Passar para a próxima barra
    x := x + t;
  end;
end;

function TFrmPrincipal.Vektor(FromP, Top: TPoint): TPoint;
begin
  Result.x := Top.x - FromP.x;
  Result.y := Top.y - FromP.y;
end;

function TFrmPrincipal.xComp(Vektor: TPoint; Angle: Extended): Integer;
begin
  Result := Round(Vektor.x * cos(Angle) - (Vektor.y) * sin(Angle));
end;

function TFrmPrincipal.yComp(Vektor: TPoint; Angle: Extended): Integer;
begin
  Result := Round((Vektor.x) * (sin(Angle)) + (vektor.y) * cos(Angle));
end;

function TFrmPrincipal.RotImage(srcbit: TBitmap; Angle: Extended; FPoint: TPoint;
  Background: TColor): TBitmap;
var
  highest, lowest, mostleft, mostright: TPoint;
  topoverh, leftoverh: integer;
  x, y, newx, newy: integer;
begin
  Result := TBitmap.Create;

  while Angle >= (2 * pi) do
  begin
    angle := Angle - (2 * pi);
  end;

  if (angle <= (pi / 2)) then
  begin
    highest := Point(0, 0); //OL
    Lowest := Point(Srcbit.Width, Srcbit.Height); //UR
    mostleft := Point(0, Srcbit.Height); //UL
    mostright := Point(Srcbit.Width, 0); //OR
  end
  else if (angle <= pi) then
  begin
    highest := Point(0, Srcbit.Height);
    Lowest := Point(Srcbit.Width, 0);
    mostleft := Point(Srcbit.Width, Srcbit.Height);
    mostright := Point(0, 0);
  end
  else if (Angle <= (pi * 3 / 2)) then
  begin
    highest := Point(Srcbit.Width, Srcbit.Height);
    Lowest := Point(0, 0);
    mostleft := Point(Srcbit.Width, 0);
    mostright := Point(0, Srcbit.Height);
  end
  else
  begin
    highest := Point(Srcbit.Width, 0);
    Lowest := Point(0, Srcbit.Height);
    mostleft := Point(0, 0);
    mostright := Point(Srcbit.Width, Srcbit.Height);
  end;

  topoverh := yComp(Vektor(FPoint, highest), Angle);
  leftoverh := xComp(Vektor(FPoint, mostleft), Angle);
  Result.Height := Abs(yComp(Vektor(FPoint, lowest), Angle)) + Abs(topOverh);
  Result.Width := Abs(xComp(Vektor(FPoint, mostright), Angle)) + Abs(leftoverh);

  Topoverh := TopOverh + FPoint.y;
  Leftoverh := LeftOverh + FPoint.x;

  Result.Canvas.Brush.Color := Background;
  Result.Canvas.pen.Color := background;
  Result.Canvas.Fillrect(Rect(0, 0, Result.Width, Result.Height));

  for y := 0 to srcbit.Height - 1 do
  begin
    for x := 0 to srcbit.Width - 1 do
    begin
      newX := xComp(Vektor(FPoint, Point(x, y)), Angle);
      newY := yComp(Vektor(FPoint, Point(x, y)), Angle);
      newX := FPoint.x + newx - leftoverh;
      newy := FPoint.y + newy - topoverh;
      // Move beacause of new size
      Result.Canvas.Pixels[newx, newy] := srcbit.Canvas.Pixels[x, y];
      // also fil lthe pixel beside to prevent empty pixels
      if ((angle < (pi / 2)) or
        ((angle > pi) and
        (angle < (pi * 3 / 2)))) then
      begin
        Result.Canvas.Pixels[newx, newy + 1] := srcbit.Canvas.Pixels[x, y];
      end
      else
      begin
        Result.Canvas.Pixels[newx + 1, newy] := srcbit.Canvas.Pixels[x, y];
      end;
    end;
  end;
end;

procedure TFrmPrincipal.InverteImagem;
var
  BitRot: TBitmap;
begin
  BitRot := TBitmap.Create;
  try
    if assigned(image1.Picture.Bitmap) then
    begin
      BitRot := RotImage(image1.Picture.Bitmap, {Source}
        DegToRad(90), {90 degree to rotate}
        Point(image1.Picture.Bitmap.Width div 2, {x point for center rotate}
        image1.Picture.Bitmap.Height div 2), {y point for center rotate}
        clBlack); {background Color for rotated image}
      image1.Picture.Assign(BitRot);
    end;
  finally
    BitRot.Free;
  end;
end;

function TFrmPrincipal.Encriptando(CBarras: string): string;
var
  I: Integer;
  Letra, Codigo: string;
begin

  //Encriptar
  Codigo := '{';

  I := 1;
  while I <= Length(CBarras) do
  begin

    Letra := Copy(CBarras, I, 2);
    I := I + 2;

    if Letra = '00' then Codigo := Codigo + '!';
    if Letra = '01' then Codigo := Codigo + '"';
    if Letra = '02' then Codigo := Codigo + '#';
    if Letra = '03' then Codigo := Codigo + '$';
    if Letra = '04' then Codigo := Codigo + '%';
    if Letra = '05' then Codigo := Codigo + '&';
    if Letra = '06' then Codigo := Codigo + '''';
    if Letra = '07' then Codigo := Codigo + '(';
    if Letra = '08' then Codigo := Codigo + ')';
    if Letra = '09' then Codigo := Codigo + '*';
    if Letra = '10' then Codigo := Codigo + '+';
    if Letra = '11' then Codigo := Codigo + ',';
    if Letra = '12' then Codigo := Codigo + '-';
    if Letra = '13' then Codigo := Codigo + '.';
    if Letra = '14' then Codigo := Codigo + '/';
    if Letra = '15' then Codigo := Codigo + '0';
    if Letra = '16' then Codigo := Codigo + '1';
    if Letra = '17' then Codigo := Codigo + '2';
    if Letra = '18' then Codigo := Codigo + '3';
    if Letra = '19' then Codigo := Codigo + '4';
    if Letra = '20' then Codigo := Codigo + '5';
    if Letra = '21' then Codigo := Codigo + '6';
    if Letra = '22' then Codigo := Codigo + '7';
    if Letra = '23' then Codigo := Codigo + '8';
    if Letra = '24' then Codigo := Codigo + '9';
    if Letra = '25' then Codigo := Codigo + ':';
    if Letra = '26' then Codigo := Codigo + '; ';
    if Letra = '27' then Codigo := Codigo + '<';
    if Letra = '28' then Codigo := Codigo + '=';
    if Letra = '29' then Codigo := Codigo + '>';
    if Letra = '30' then Codigo := Codigo + '?';
    if Letra = '31' then Codigo := Codigo + '@';
    if Letra = '32' then Codigo := Codigo + 'A';
    if Letra = '33' then Codigo := Codigo + 'B';
    if Letra = '34' then Codigo := Codigo + 'C';
    if Letra = '35' then Codigo := Codigo + 'D';
    if Letra = '36' then Codigo := Codigo + 'E';
    if Letra = '37' then Codigo := Codigo + 'F';
    if Letra = '38' then Codigo := Codigo + 'G';
    if Letra = '39' then Codigo := Codigo + 'H';
    if Letra = '40' then Codigo := Codigo + 'I';
    if Letra = '41' then Codigo := Codigo + 'J';
    if Letra = '42' then Codigo := Codigo + 'K';
    if Letra = '43' then Codigo := Codigo + 'L';
    if Letra = '44' then Codigo := Codigo + 'M';
    if Letra = '45' then Codigo := Codigo + 'N';
    if Letra = '46' then Codigo := Codigo + 'O';
    if Letra = '47' then Codigo := Codigo + 'P';
    if Letra = '48' then Codigo := Codigo + 'Q';
    if Letra = '49' then Codigo := Codigo + 'R';
    if Letra = '50' then Codigo := Codigo + 'S';
    if Letra = '51' then Codigo := Codigo + 'T';
    if Letra = '52' then Codigo := Codigo + 'U';
    if Letra = '53' then Codigo := Codigo + 'V';
    if Letra = '54' then Codigo := Codigo + 'W';
    if Letra = '55' then Codigo := Codigo + 'X';
    if Letra = '56' then Codigo := Codigo + 'Y';
    if Letra = '57' then Codigo := Codigo + 'Z';
    if Letra = '58' then Codigo := Codigo + '[';
    if Letra = '59' then Codigo := Codigo + '\';
    if Letra = '60' then Codigo := Codigo + ']';
    if Letra = '61' then Codigo := Codigo + '^';
    if Letra = '62' then Codigo := Codigo + '_';
    if Letra = '63' then Codigo := Codigo + '`';
    if Letra = '64' then Codigo := Codigo + 'a';
    if Letra = '65' then Codigo := Codigo + 'b';
    if Letra = '66' then Codigo := Codigo + 'c';
    if Letra = '67' then Codigo := Codigo + 'd';
    if Letra = '68' then Codigo := Codigo + 'e';
    if Letra = '69' then Codigo := Codigo + 'f';
    if Letra = '70' then Codigo := Codigo + 'g';
    if Letra = '71' then Codigo := Codigo + 'h';
    if Letra = '72' then Codigo := Codigo + 'i';
    if Letra = '73' then Codigo := Codigo + 'j';
    if Letra = '74' then Codigo := Codigo + 'k';
    if Letra = '75' then Codigo := Codigo + 'l';
    if Letra = '76' then Codigo := Codigo + 'm';
    if Letra = '77' then Codigo := Codigo + 'n';
    if Letra = '78' then Codigo := Codigo + 'o';
    if Letra = '79' then Codigo := Codigo + 'p';
    if Letra = '80' then Codigo := Codigo + 'q';
    if Letra = '81' then Codigo := Codigo + 'r';
    if Letra = '82' then Codigo := Codigo + 's';
    if Letra = '83' then Codigo := Codigo + 't';
    if Letra = '84' then Codigo := Codigo + 'u';
    if Letra = '85' then Codigo := Codigo + 'v';
    if Letra = '86' then Codigo := Codigo + 'w';
    if Letra = '87' then Codigo := Codigo + 'x';
    if Letra = '88' then Codigo := Codigo + 'y';
    if Letra = '89' then Codigo := Codigo + 'y';
    if Letra = '90' then Codigo := Codigo + 'Â';
    if Letra = '91' then Codigo := Codigo + 'Ã';
    if Letra = '92' then Codigo := Codigo + 'Ä';
    if Letra = '93' then Codigo := Codigo + 'Å';
    if Letra = '94' then Codigo := Codigo + 'Æ';
    if Letra = '95' then Codigo := Codigo + 'Ç';
    if Letra = '96' then Codigo := Codigo + 'È';
    if Letra = '97' then Codigo := Codigo + 'É';
    if Letra = '98' then Codigo := Codigo + 'Ê';
    if Letra = '99' then Codigo := Codigo + 'Ë';

  end;

  Codigo := Codigo + '}';

  result := Codigo;

end;

procedure TFrmPrincipal.Gerar_Etiqueta_Codigo(CBarras: string);
var
  DLeft, DTop, DWidth, DHeight, OLeft, OTop, OWidth, OHeight: Integer;
begin

  image1.Picture := nil;
  image2.Picture := nil;
  image3.Picture := nil;

  GerarCodigo(CBarras, image1.Canvas);

  //Gera etiqueta normal
  OLeft := 0;
  OTop := 0;
  OWidth := image1.Width;
  Oheight := 40;
  DLeft := 0;
  DTop := 0;
  DWidth := image3.Width;
  Dheight := image3.Height;

  //Gera Barras etiqueta producao
  image3.Canvas.CopyRect(Rect(
    DLeft,
    DTop,
    DWidth,
    Dheight
    ), image1.Canvas, Rect(
    OLeft,
    OTop,
    OWidth,
    Oheight
    ));

  //Inverter a imagem principal
  InverteImagem;

  //Define os valores padroes para a etiqueta origem e destino
  DLeft := 0;
  DTop := 0;
  DWidth := image2.Width;
  Dheight := image2.Height;
  OLeft := 100;
  OTop := 0;
  OWidth := image1.Width;
  Oheight := image1.Height;

  //Gera Barras etiqueta exportacao
  image2.Canvas.CopyRect(Rect(
    DLeft,
    DTop,
    DWidth,
    Dheight
    ), image1.Canvas, Rect(
    OLeft,
    OTop,
    OWidth,
    Oheight
    ));

end;

//****************************************************************************

procedure TFrmPrincipal.btnDataTurnoClick(Sender: TObject);
var
  vDatAtual, vDataMontada: TDateTime;
begin

  Cria_FrmSelData_(Vdtstr);

  if DmPrincipal.PData <> '' then
  begin

    Screen.Cursor := crSQLWait;
    vDataMontada := StrToDateTime(DmPrincipal.PData + FormatDateTime('hh:mm:ss', now));
    //DmPrincipal.ModificaDataEscolhe(StrToDateTime(Vdtstr));
    DmPrincipal.ModificaDataEscolhe_(vDataMontada);
    edtMaterial.SetFocus;
    Screen.Cursor := crDefault;

  end;

end;

procedure TFrmPrincipal.Simula_balanca(Sender: TObject);
begin

  lblPesoLiquido.Text := '';
  shpReducaoPeso.Color := clBlack;
  shpReducaoPeso.Font.Color := $0077FFFF;

  //peso estabilizado
  //DmPrincipal.cdsProducao.Edit;
  DmPrincipal.cdsProducao.Edit;
  DmPrincipal.cdsProducaoPRC_PESO_LIQUIDO.AsFloat := Strtofloat(edtPeso.Text);
  lblPesoLiquido.Text := 'Peso líquido - ESTABILIZADO';

  if (vg_PesaMultiCaixas = 'N' ) then
  begin
    lblPesoLiquido.Text := '';
    shpReducaoPeso.Color := clBlack;
    shpReducaoPeso.Font.Color := $0077FFFF;
  end;

  FUltimoPeso := 0;

end;

procedure TFrmPrincipal.RelogioTimer(Sender: TObject);
begin
  LbHora.Caption := FormatDateTime('hh:mm', now);
end;

procedure TFrmPrincipal.Gravar_Log(Texto: string);
var
  NomeDoLog: string;
  Arquivo: TextFile;
begin
  NomeDoLog := ChangeFileExt(Application.Exename, '.log');
  AssignFile(Arquivo, NomeDoLog);

  if FileExists(NomeDoLog) then
    Append(arquivo) { se existir, apenas adiciona linhas }
  else
    ReWrite(arquivo); { cria um novo se não existir }
  try
    WriteLn(arquivo, DateTimeToStr(Now) + ':' + Texto);
    WriteLn(arquivo, '----------------------------------------------------------------------');
  finally
    CloseFile(arquivo)
  end;

end;

procedure TFrmPrincipal.Limpar_Log();
var
  NomeDoLog, linha, pLinha: string;
  Arquivo: TextFile;
  DataLog: TDateTime;
begin

  NomeDoLog := ChangeFileExt(Application.Exename, '.log');
  AssignFile(Arquivo, NomeDoLog);

  if FileExists(NomeDoLog) then
  begin
    Reset(arquivo);

    readln(arquivo, linha); //  Lê PRIMEIRA linha do arquivo

    CloseFile(Arquivo);

    pLinha := Copy(Linha, 1, 10);

    if pLinha <> '' then
    begin
      DataLog := StrToDate(pLinha);
      if DataLog < IncDay(Date, -2) then
      begin
        DeleteFile(NomeDoLog);
      end;
    end;
  end;

end;

procedure TFrmPrincipal.MsgAviso(msg: string);
begin
  pnlMsg.Caption := msg;
  pnlMsg.Color := clYellow;
  pnlMsg.Font.Color := clBlack;
  Application.ProcessMessages;
end;

procedure TFrmPrincipal.MsgCorreto(msg: string);
begin
  Pnl_PesoEnviado.Visible := true;
  Pnl_PesoEnviado.Caption := msg;
  Pnl_PesoEnviado.Color := clLime;
  Pnl_PesoEnviado.Font.Color := clBlack;
  Application.ProcessMessages;
end;

procedure TFrmPrincipal.MsgErro(msg: string);
begin
  pnlMsg.Caption := msg;
  pnlMsg.Color := clRed;
  pnlMsg.Font.Color := clWhite;
  Application.ProcessMessages;
end;

procedure TFrmPrincipal.MsgLimpar;
begin
  pnlMsg.Caption := '';
  pnlMsg.Color := clBackground;
  pnlMsg.Font.Color := clBlack;
  Application.ProcessMessages;
end;

procedure TFrmPrincipal.MsgEstabilizando(msg: string);
begin
  pnlMsg.Caption := msg;
  pnlMsg.Color := clblue;
  pnlMsg.Font.Color := clWhite;
  Application.ProcessMessages;
end;

procedure TFrmPrincipal.btnPesarClick(Sender: TObject);
var
  Enviar_Pesagem : Boolean;
begin

  Enviar_Pesagem := false;
  if ( lblPesoLiquido.Text = 'Peso líquido - ESTABILIZADO'  ) then
  begin
    Enviar_Pesagem := ( StrtoInt( FrmPrincipal.edt_Caixas.Text ) > 0 ) AND ( DmPrincipal.cdsProducaoPRC_PESO_LIQUIDO.AsFloat > 0 );

    if Enviar_Pesagem then
      DmPrincipal.GravarRegistroCaixas();

    MsgLimpar;

    if ( Enviar_Pesagem ) AND( DmPrincipal.VIDENTIFICACAO <> '' ) then
      MsgCorreto(' Pesagem Enviada. Registro : ' + DmPrincipal.VIDENTIFICACAO);

    if (vg_PesaMultiCaixas = 'S' ) then
    begin
      Tim_Msg.Enabled := true;
      lblPesoLiquido.Text := '';
      shpReducaoPeso.Color := clBlack;
      shpReducaoPeso.Font.Color := $0077FFFF;

      edt_Caixas.Text := '0';
      lbl_PesoMedio.Caption := '0,00';
    end;
  end;

  lblPesoLiquido.Text := '';
end;

procedure TFrmPrincipal.edt_CaixasKeyPress(Sender: TObject; var Key: Char);
begin
  //So aceita carecteres de 0 a 9 como entrada
  if not (Key in ['0'..'9', Chr(8)]) then Key := #0;
end;

procedure TFrmPrincipal.edt_CaixasChange(Sender: TObject);
Var Caixas : integer ;
    PesoMedio : Double;
begin
  Caixas := 0 ;
  if ( edt_Caixas.Text <> '' ) then
    Caixas := StrToInt(edt_Caixas.Text);

  if ( Caixas > 0 ) then
  begin
    PesoMedio := DmPrincipal.cdsProducaoPRC_PESO_LIQUIDO.AsFloat / Caixas;
    lbl_PesoMedio.Caption := FormatFloat('##,##0.00', PesoMedio) ;
  end
  else
  begin
    lbl_PesoMedio.Caption := '0,00';
  end;
end;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(key = VK_F1) AND  (btnPesar.Visible ) AND  (btnPesar.Enabled ) then
  begin
    btnPesarClick(sender);
  end;
end;

procedure TFrmPrincipal.CarregarConfiguracoes;
var ArqIni: TIniFile ;
begin
  try
    ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'ProducaoVcl.ini');
    PTamString := ArqIni.ReadString('BALANCA','TAMSTR','' );
    PTamStrCompleta :=  ArqIni.ReadString ('BALANCA','TAMSTRCOMPLETA', '' );
    PPosIniString   :=  ArqIni.ReadString ('BALANCA','POSINISTRING', '' );
    PBaudRate := ArqIni.ReadString ('BALANCA','BAUDRATE', '9600' );
    PDataBits := ArqIni.ReadString ('BALANCA','DATABITS', '' );
    PParity   := ArqIni.ReadString ('BALANCA','PARITY', '' );
    PStopBits :=  ArqIni.ReadString ('BALANCA','STOPBITS', '' );
    PFlowControl := ArqIni.ReadString ('BALANCA','FLOWCONTROL', '' );
  finally
    ArqIni.Free;
  end;
end;

procedure TFrmPrincipal.Tim_MsgTimer(Sender: TObject);
begin
  Pnl_PesoEnviado.Visible := false;
  Tim_Msg.Enabled := false;
end;

procedure TFrmPrincipal.TimerRecuperaDadosBDTimer(Sender: TObject);
begin
  DmPrincipal.ImportaDadosDB();
end;

end.

