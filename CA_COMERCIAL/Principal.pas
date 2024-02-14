unit Principal;

Interface

Uses
  DB, MemDS, DBAccess, Ora,  Types, Controls, ComCtrls, Classes,
  SysUtils, Graphics, Forms, Dialogs, Menus,  ExtCtrls, StdCtrls, OraCall,
  Vcl.Buttons, System.IniFiles, Winapi.TlHelp32, Winapi.Windows, DASQLMonitor,
  OraSQLMonitor, Vcl.WinXCtrls, Vcl.CategoryButtons, Vcl.ButtonGroup,
  Vcl.ControlList, JvExExtCtrls, JvSplitter, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, System.StrUtils,
  JvExStdCtrls, JvButton, JvCtrls;
Type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Sair1: TMenuItem;
    StatusBar1: TStatusBar;
    Consulta1: TMenuItem;
    Relatrio1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    DB: TOraSession;
    LogarNovamente1: TMenuItem;
    Manuteno1: TMenuItem;
    QrCred: TOraQuery;
    qryTemp: TOraQuery;
    QrChePre: TOraQuery;
    QrChePreCID_CHEPRE: TIntegerField;
    QrChePreCVENCI: TDateTimeField;
    QrChePreCID_CLIENTE: TFloatField;
    QrChePreCVALOR: TFloatField;
    QrChePreCFL_BAIXADO: TStringField;
    VEN004: TMenuItem;
    VEN005: TMenuItem;
    Transporte1: TMenuItem;
    VEN006: TMenuItem;
    VEN007: TMenuItem;
    VEN008: TMenuItem;
    QrAcesso: TOraQuery;
    VEN009: TMenuItem;
    VEN010: TMenuItem;
    VEN011: TMenuItem;
    VEN012: TMenuItem;
    VEN013: TMenuItem;
    VEN014: TMenuItem;
    VEN015: TMenuItem;
    VEN016: TMenuItem;
    VEN072: TMenuItem;
    VEN018: TMenuItem;
    VEN019: TMenuItem;
    VEN020: TMenuItem;
    VEN021: TMenuItem;
    VEN022: TMenuItem;
    Logistica1: TMenuItem;
    VEN023: TMenuItem;
    VEN024: TMenuItem;
    QrCLCred: TOraQuery;
    QrCLCredVL_LIMITE: TFloatField;
    OSQL1: TOraSQL;
    VEN025: TMenuItem;
    VEN026: TMenuItem;
    VEN027: TMenuItem;
    VEN028: TMenuItem;
    VEN029: TMenuItem;
    CadastrodeBairro1: TMenuItem;
    CadastrodeCidades1: TMenuItem;
    CadastrodeEstados1: TMenuItem;
    CadastrodePases1: TMenuItem;
    CadastrodeRegioGeogrfica1: TMenuItem;
    CadastrodeRegioInternacional1: TMenuItem;
    VEN030: TMenuItem;
    CadastrodeRegiesLogsticas1: TMenuItem;
    CadastrodeSubregiesLogsticas1: TMenuItem;
    CadastrodeRegiesXSubregiesLogstica1: TMenuItem;
    VEN031: TMenuItem;
    VEN032: TMenuItem;
    CadastroTipodeLogradouro1: TMenuItem;
    VEN033: TMenuItem;
    CadastrodeTiposdeTransporte1: TMenuItem;
    CadastroTipodeVeculo1: TMenuItem;
    CadastrodeTransportadores1: TMenuItem;
    VEN034: TMenuItem;
    VEN035: TMenuItem;
    VEN036: TMenuItem;
    VEN037: TMenuItem;
    VEN038: TMenuItem;
    VEN039: TMenuItem;
    VEN040: TMenuItem;
    VEN041: TMenuItem;
    VEN071: TMenuItem;
    VEN042: TMenuItem;
    btnTeste: TButton;
    VEN043: TMenuItem;
    VEN044: TMenuItem;
    VEN045: TMenuItem;
    VEN046: TMenuItem;
    VEN047: TMenuItem;
    VEN048: TMenuItem;
    VEN049: TMenuItem;
    VEN050: TMenuItem;
    VEN051: TMenuItem;
    VEN052: TMenuItem;
    VEN053: TMenuItem;
    VEN054: TMenuItem;
    VEN055: TMenuItem;
    VEN056: TMenuItem;
    mnuLancamentoCaixaPlastica: TMenuItem;
    mnuRelatorio_de_Saldo: TMenuItem;
    VEN057: TMenuItem;
    VEN058: TMenuItem;
    VEN059: TMenuItem;
    VEN061: TMenuItem;
    VEN062: TMenuItem;
    VEN063: TMenuItem;
    VEN064: TMenuItem;
    VEN065: TMenuItem;
    VEN066: TMenuItem;
    VEN067: TMenuItem;
    CadastrodeRegio1: TMenuItem;
    VEN015b: TMenuItem;
    VEN015a: TMenuItem;
    VEN068: TMenuItem;
    VEN017: TMenuItem;
    VEN073: TMenuItem;
    VEN074: TMenuItem;
    VEN075: TMenuItem;
    VEN076: TMenuItem;
    OraSQLMonitor1: TOraSQLMonitor;
    ImageList1: TImageList;
    ActionMenuPrincipal: TActionList;
    ACArquivo: TAction;
    ACVendas: TAction;
    ACTransporte: TAction;
    ACImpressão: TAction;
    ACManutencao: TAction;
    ACLogistica: TAction;
    ACAjuda: TAction;
    ACMenu: TAction;
    SplitMenuPrincipal: TSplitView;
    SplitSubMenuVendas: TSplitView;
    ActionSubMenus: TActionList;
    ACVEN004: TAction;
    ACVEN017: TAction;
    ACVEN020: TAction;
    ACVEN027: TAction;
    ACVEN028: TAction;
    ACVEN029: TAction;
    ACVEN030: TAction;
    ACVEN031: TAction;
    ACVEN032: TAction;
    ACVEN035: TAction;
    ACVEN036: TAction;
    ACVEN037: TAction;
    ACVEN038: TAction;
    ACVEN039: TAction;
    ACVEN040: TAction;
    ACVEN042: TAction;
    SplitSubMenuTransporte: TSplitView;
    ACVEN006: TAction;
    ACVEN007: TAction;
    ACVEN009: TAction;
    ACVEN033: TAction;
    ACVEN041: TAction;
    ACVEN057: TAction;
    ACVEN062: TAction;
    SplitSubMenuImpressão: TSplitView;
    ACVEN005: TAction;
    ACVEN008: TAction;
    ACVEN011: TAction;
    ACVEN012: TAction;
    ACVEN013: TAction;
    ACVEN014: TAction;
    ACVEN015: TAction;
    ACVEN021: TAction;
    ACVEN026: TAction;
    ACVEN049: TAction;
    ACVEN034: TAction;
    ACVEN071: TAction;
    ACVEN045: TAction;
    ACVEN046: TAction;
    ACVEN047: TAction;
    ACVEN050: TAction;
    ACVEN051: TAction;
    ACVEN052: TAction;
    ACVEN053: TAction;
    ACVEN055: TAction;
    ACVEN056: TAction;
    ACVEN058: TAction;
    ACVEN061: TAction;
    ACVEN063: TAction;
    ACVEN064: TAction;
    ACVEN066: TAction;
    ACVEN067: TAction;
    ACVEN068: TAction;
    ACVEN075: TAction;
    SplitSubMenuArquivo: TSplitView;
    SplitSubMenuManutencao: TSplitView;
    ACVEN010: TAction;
    ACVEN016: TAction;
    ACVEN018: TAction;
    ACVEN019: TAction;
    ACVEN022: TAction;
    ACVEN043: TAction;
    ACVEN044: TAction;
    ACVEN048: TAction;
    ACVEN054: TAction;
    ACVEN059: TAction;
    ACVEN065: TAction;
    ACVEN074: TAction;
    SplitSubMenuLogistica: TSplitView;
    ACVEN023: TAction;
    ACVEN024: TAction;
    ACVEN025: TAction;
    SplitSubMenuAjuda: TSplitView;
    BtnMenu: TSpeedButton;
    BtnArquivo: TSpeedButton;
    BtnVendas: TSpeedButton;
    BtnTransporte: TSpeedButton;
    BtnImpressao: TSpeedButton;
    BtnManutencao: TSpeedButton;
    BtnLogistica: TSpeedButton;
    BtnAjuda: TSpeedButton;
    ScrollBox1: TScrollBox;
    BtnLogarNovamente: TSpeedButton;
    BtnSair: TSpeedButton;
    ScrollBox2: TScrollBox;
    BtnVEN004: TSpeedButton;
    BtnVEN017: TSpeedButton;
    BtnVEN020: TSpeedButton;
    BtnVEN027: TSpeedButton;
    BtnVEN028: TSpeedButton;
    BtnVEN029: TSpeedButton;
    BtnVEN030: TSpeedButton;
    BtnVEN031: TSpeedButton;
    BtnVEN032: TSpeedButton;
    BtnVEN035: TSpeedButton;
    BtnVEN036: TSpeedButton;
    BtnVEN037: TSpeedButton;
    BtnVEN038: TSpeedButton;
    BtnVEN039: TSpeedButton;
    BtnVEN040: TSpeedButton;
    BtnVEN042: TSpeedButton;
    ScrollBox3: TScrollBox;
    BtnVEN006: TSpeedButton;
    BtnVEN007: TSpeedButton;
    BtnVEN009: TSpeedButton;
    BtnVEN033: TSpeedButton;
    BtnVEN041: TSpeedButton;
    BtnVEN057: TSpeedButton;
    BtnVEN062: TSpeedButton;
    ScrollBox4: TScrollBox;
    BtnVEN005: TSpeedButton;
    BtnVEN008: TSpeedButton;
    BtnVEN011: TSpeedButton;
    BtnVEN012: TSpeedButton;
    BtnVEN013: TSpeedButton;
    BtnVEN014: TSpeedButton;
    BtnVEN015: TSpeedButton;
    BtnVEN021: TSpeedButton;
    BtnVEN026: TSpeedButton;
    BtnVEN049: TSpeedButton;
    BtnVEN034: TSpeedButton;
    BtnVEN071: TSpeedButton;
    BtnVEN045: TSpeedButton;
    BtnVEN046: TSpeedButton;
    BtnVEN047: TSpeedButton;
    BtnVEN050: TSpeedButton;
    BtnVEN052: TSpeedButton;
    BtnVEN051: TSpeedButton;
    BtnVEN053: TSpeedButton;
    BtnVEN055: TSpeedButton;
    BtnVEN056: TSpeedButton;
    BtnVEN058: TSpeedButton;
    BtnVEN061: TSpeedButton;
    BtnVEN063: TSpeedButton;
    BtnVEN064: TSpeedButton;
    BtnVEN066: TSpeedButton;
    BtnVEN067: TSpeedButton;
    BtnVEN068: TSpeedButton;
    BtnVEN075: TSpeedButton;
    ScrollBox5: TScrollBox;
    BtnVEN010: TSpeedButton;
    BtnVEN016: TSpeedButton;
    BtnVEN018: TSpeedButton;
    BtnVEN019: TSpeedButton;
    BtnVEN022: TSpeedButton;
    BtnVEN043: TSpeedButton;
    BtnVEN044: TSpeedButton;
    BtnVEN048: TSpeedButton;
    BtnVEN054: TSpeedButton;
    BtnVEN059: TSpeedButton;
    BtnVEN065: TSpeedButton;
    BtnVEN074: TSpeedButton;
    ScrollBox6: TScrollBox;
    BtnVEN023: TSpeedButton;
    BtnVEN024: TSpeedButton;
    BtnVEN025: TSpeedButton;
    ScrollBox7: TScrollBox;
    BtnSobre: TSpeedButton;
    ACVEN072: TAction;
    ACVEN073: TAction;
    ACVoltar: TAction;
    BtnVoltarAjuda: TSpeedButton;
    BtnVoltarArquivo: TSpeedButton;
    BtnVoltarImpressao: TSpeedButton;
    BtnVoltarLogistica: TSpeedButton;
    BtnVoltarManutencao: TSpeedButton;
    BtnVoltarTransporte: TSpeedButton;
    BtnVoltarVendas: TSpeedButton;
    ImgVEN017: TImage;
    ImgVEN029: TImage;
    ImgVEN030: TImage;
    ACSair: TAction;
    SplitSubMenuPedidoDevolucao: TSplitView;
    BtnVEN072: TSpeedButton;
    BtnVEN073: TSpeedButton;
    BtnVoltarPedidoDevolucao: TSpeedButton;
    SplitSubMenuCadatroLocalidades: TSplitView;
    BtnCadTipoLogradouro: TSpeedButton;
    BtnCadBairros: TSpeedButton;
    BtnVoltarLocalidades: TSpeedButton;
    BtnCadCidades: TSpeedButton;
    BtnCadEstados: TSpeedButton;
    BtnCadPaises: TSpeedButton;
    BtnCadRegGeo: TSpeedButton;
    BtnCadRegInter: TSpeedButton;
    SplitSubMenuCadastroLogistica: TSplitView;
    BtnCadRegLog: TSpeedButton;
    BtnCadSubRegLog: TSpeedButton;
    BtnVoltarCadLogistica: TSpeedButton;
    BtnCadRegSubRegLog: TSpeedButton;
    ImgVEN033: TImage;
    SplitSubMenuCadTransporte: TSplitView;
    BtnCadTipoTransporte: TSpeedButton;
    BtnCadTipoVeiculo: TSpeedButton;
    BtnVoltarTransportador: TSpeedButton;
    BtnCadTipoTransportadores: TSpeedButton;
    BtnCadRegiao: TSpeedButton;
    ActionSubMenus2: TActionList;
    ACCadRegLog: TAction;
    ACCadSubRegLog: TAction;
    ACCadRegSubRegLog: TAction;
    ACCadTipoLogradouro: TAction;
    ACCadBairros: TAction;
    ACCadCidades: TAction;
    ACCadEstados: TAction;
    ACCadPaises: TAction;
    ACCadRegGeo: TAction;
    ACCadRegInter: TAction;
    ACCadTipoTransporte: TAction;
    ACCadTipoVeiculo: TAction;
    ACCadTipoTransportadores: TAction;
    ACCadRegiao: TAction;
    SplitSubMenuRelVendasVendedor: TSplitView;
    BtnVEN015a: TSpeedButton;
    BtnVEN015b: TSpeedButton;
    BtnVoltarRelVendasVendedor: TSpeedButton;
    ImgVEN015: TImage;
    ACVEN015a: TAction;
    ACVEN015b: TAction;
    SplitSubMenuControleCaixas: TSplitView;
    BtnLancamentos: TSpeedButton;
    BtnRelSaldo: TSpeedButton;
    BtnVoltarControleCaixas: TSpeedButton;
    ACLancamentos: TAction;
    ACRelSaldo: TAction;
    ACControleCaixas: TAction;
    BtnControleCaixas: TSpeedButton;
    ImgVEN054: TImage;
    procedure Trataerros(Sender: TObject; E: Exception);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    Procedure Nota;
    procedure FormShow(Sender: TObject);
    Procedure Permicao;
    procedure Timer2Timer(Sender: TObject);
    procedure InstruesparaBoletas1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure LogarNovamente1Click(Sender: TObject);
    procedure VEN004Click(Sender: TObject);
    procedure i1Click(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Validar1Click(Sender: TObject);
    procedure VEN005ImpressodeDocumentosdoPedido1Click(Sender: TObject);
    procedure VEN005Click(Sender: TObject);
    procedure VEN007Click(Sender: TObject);
    procedure VEN006Click(Sender: TObject);
    procedure VEN008Click(Sender: TObject);
    procedure VEN009Click(Sender: TObject);
    procedure VEN010Click(Sender: TObject);
    procedure VEN011Click(Sender: TObject);
    procedure VEN012Click(Sender: TObject);
    procedure VEN013Click(Sender: TObject);
    procedure VEN014Click(Sender: TObject);
    procedure VEN016Click(Sender: TObject);
    procedure VEN072Click(Sender: TObject);
    procedure VEN018Click(Sender: TObject);
    procedure VEN019Click(Sender: TObject);
    procedure VEN020Click(Sender: TObject);
    procedure VEN021Click(Sender: TObject);
    procedure VEN022Click(Sender: TObject);
    procedure VEN023Click(Sender: TObject);
    procedure VEN024Click(Sender: TObject);
    procedure corrigelimite(Cod_cli: Double; CANCELAR: Boolean; VALOR:Real);
    procedure VEN025Click(Sender: TObject);
    procedure VEN026Click(Sender: TObject);
    procedure VEN027Click(Sender: TObject);
    procedure VEN028Click(Sender: TObject);
    procedure VEN030CadastrodeBairro1Click(Sender: TObject);
    procedure VEN031CadastrodeEstados1Click(Sender: TObject);
    procedure CadastrodeBairro1Click(Sender: TObject);
    procedure CadastrodeCidades1Click(Sender: TObject);
    procedure CadastrodeEstados1Click(Sender: TObject);
    procedure CadastrodePases1Click(Sender: TObject);
    procedure CadastrodeRegioGeogrfica1Click(Sender: TObject);
    procedure CadastrodeRegioInternacional1Click(Sender: TObject);
    procedure CadastrodeRegiesLogsticas1Click(Sender: TObject);
    procedure CadastrodeSubregiesLogsticas1Click(Sender: TObject);
    procedure CadastrodeRegiesXSubregiesLogstica1Click(Sender: TObject);
    procedure VEN031Click(Sender: TObject);
    procedure VEN032Click(Sender: TObject);
    procedure CadastroTipodeLogradouro1Click(Sender: TObject);
    procedure CadastrodeTiposdeTransporte1Click(Sender: TObject);
    procedure CadastroTipodeVeculo1Click(Sender: TObject);
    procedure CadastrodeTransportadores1Click(Sender: TObject);
    procedure VEN034Click(Sender: TObject);
    procedure VEN035Click(Sender: TObject);
    procedure VEN036Click(Sender: TObject);
    procedure VEN037Click(Sender: TObject);
    procedure VEN038Click(Sender: TObject);
    procedure VEN039Click(Sender: TObject);
    procedure VEN040Click(Sender: TObject);
    procedure FechaFormsAbertos;
    procedure VEN041Click(Sender: TObject);
    procedure VEN071Click(Sender: TObject);
    procedure VEN042Click(Sender: TObject);
    procedure btnTesteClick(Sender: TObject);
    procedure VEN043Click(Sender: TObject);
    procedure VEN044Click(Sender: TObject);
    procedure VEN045Click(Sender: TObject);
    procedure VEN046Click(Sender: TObject);
    procedure VEN047Click(Sender: TObject);
    procedure VEN048Click(Sender: TObject);
    procedure VEN049Click(Sender: TObject);
    procedure VEN050Click(Sender: TObject);
    procedure VEN051Click(Sender: TObject);
    procedure VEN052Click(Sender: TObject);
    procedure VEN053Click(Sender: TObject);
    procedure VEN054Click(Sender: TObject);
    procedure VEN055Click(Sender: TObject);
    procedure VEN056Click(Sender: TObject);
    procedure mnuLancamentoCaixaPlasticaClick(Sender: TObject);
    procedure mnuRelatorio_de_SaldoClick(Sender: TObject);
    procedure VEN057Click(Sender: TObject);
    procedure VEN058Click(Sender: TObject);
    procedure VEN059Click(Sender: TObject);
    procedure VEN061Click(Sender: TObject);
    procedure VEN062Click(Sender: TObject);
    procedure VEN063Click(Sender: TObject);
    procedure VEN064Click(Sender: TObject);
    procedure VEN065Click(Sender: TObject);
    procedure VEN066Click(Sender: TObject);
    procedure VEN067Click(Sender: TObject);
    procedure CadastrodeRegio1Click(Sender: TObject);
    procedure VEN015bClick(Sender: TObject);
    procedure VEN015aClick(Sender: TObject);
    procedure VEN073Click(Sender: TObject);
//    procedure Consulta1Click(Sender: TObject);
    procedure VEN074Click(Sender: TObject);
    procedure VEN075Click(Sender: TObject);
    procedure VEN076Click(Sender: TObject);
    procedure ACMenuExecute(Sender: TObject);
    procedure ACVendasExecute(Sender: TObject);
    procedure ACTransporteExecute(Sender: TObject);
    procedure ACImpressãoExecute(Sender: TObject);
    procedure ACArquivoExecute(Sender: TObject);
    procedure ACManutencaoExecute(Sender: TObject);
    procedure ACLogisticaExecute(Sender: TObject);
    procedure ACAjudaExecute(Sender: TObject);
    procedure ACVEN017Execute(Sender: TObject);
    procedure ACVoltarExecute(Sender: TObject);
    procedure ACVEN029Execute(Sender: TObject);
    procedure ACVEN030Execute(Sender: TObject);
    procedure ACVEN033Execute(Sender: TObject);
    procedure ACVEN015Execute(Sender: TObject);
    procedure ACVEN054Execute(Sender: TObject);
    procedure ACMenuUpdate(Sender: TObject);
    procedure ACArquivoUpdate(Sender: TObject);
    procedure ACVendasUpdate(Sender: TObject);
    procedure ACTransporteUpdate(Sender: TObject);
    procedure ACImpressãoUpdate(Sender: TObject);
    procedure ACManutencaoUpdate(Sender: TObject);
    procedure ACLogisticaUpdate(Sender: TObject);
    procedure ACAjudaUpdate(Sender: TObject);
  private
    Senha : String;
    dataHoraServidor :  TDateTime;
    procedure ControlarAcesso(idModulo, idUsuario: Integer);
    procedure HabilitarModulos(habilitar: Boolean);
    function ConsultarAcessos(idModulo, idUsuario: integer): TOraQuery;
    procedure AtualizarDataFaturamento(dataHoraServidor: TDateTime);
    procedure ExecutarAtualizacaoDataFaturamento(qrySchemas: TOraQuery;
      dataHoraServidor: TDateTime);
    procedure EfetuarLogin;
    procedure AlterarSequence(form: TForm; filial: Integer);
    procedure VerificaFormAberto;
    procedure HabilitarMenuLateral(habilitar: Boolean);
    procedure AtualizaMenuLateral(Str: string);
    procedure AtualizaImagem(Str: string);
    { Private declarations }
  public
    //Alterado por Edmil
    Empresa : String;
    Filial, Usuario : Integer;
    lr_ValoPediVend,lr_CredEspeUsad,Vid_Cli:double;

    Function DiaUtil(pd_Dia: TDateTime): TDateTime;
    procedure TrocaNomeSequence(Form: TForm);

  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Sobre, Global, inst,
  USenha, UfrmPedVenda, UfrmImpDocPed, UfrmFeCarManu, UfrmMontaCarga,
  UFrmSelDoa, UFrmLiberacarga, UFrmManuComis, UFrmSelFreteFg, UCadTransport,
  UFrmSelRelConfVenda, UFrmSelVenProd, UFrmSelSintCarga,
  UFrmSelProdVend, UFrmPediDevoVend, UFrmAtualVersao, UFrmParamComercial,
  UFrmCorte, UFrmImpNFRacao, UFrmParametro, UFrmPedagio, UFrmSubRegiao,
  UFrmFreteFixo, UFrmCadSubLog, UFrmCadRegInt, UFrmCadRegLog, UFrmCadRegGeogr,
  UFrmClientes, UFrmCadPais, UFrmSelPedagio, UFrmTabPreco, UFrmCadBairro,
  UFrmCadCidade, UFrmCadEstado, UFrmCadRegeSubLog, UFrmCadRegCom,
  UFrmCadForPag, UFrmCadTpLogr, UFrmCadTransTipo, UFrmCadTipoVeic,
  UFrmSelFreteDevo, UFrmDesativaPesquisa, UFrmXmlEmail, UFrmPedVendaCorte,
  UFrmCarregaNFe, UFrmHistoricoPrecoTelevendas, UFrmCadVendedor,
  UFrmTranspChaveNFe, UFrmVenProd, UFrmAlteracaoPlaca, uDataAccess,
  uFrmSenha, uUtil , StdConvs, UFrmLoteIntegrado ,
  UFrmProgRacao, UFrmResultGranjeiro, UFrmConsApanha,
  UFrmConsVendaFrangoAbate, UFrmParametrosIntegrado, UFrmConsRemessaRacao,
  UFrmVendedorCliente, UFrmConsultaEstoque, UFrmConferenciaCarga,
  UFrmDiferencaPreco, UfrmControleCaixas, UFrmSaldoCaixas, uFrmVendasDiaria,
  UFrmLanctoPesoBalancaoCarga, UFrmCorteProdutos, UFrmOcorrencias, UFrmSelQuebr,
  uFrmControleEntregaCargas, uFrmDocumentacaoNFE, ufrmPedidosPosHorario,
  ufrmAlteraContaPedido, ufrmPedidosAbaixoTabela, uFrmRelVendasVendedorPercentual,
  uFrmCadRegioes, ufrmVendasVendedorCliente, ufrmReprogramarDevolucao,
  UFrmEstoque, uFrmRelVendaCliente, UFrmEntradaSaidaCaixas;

{$R *.dfm}

Procedure TFrmPrincipal.Nota;
Var
  Arq:TextFile;
Begin
AssignFile(Arq,'LPT1');
ReWrite(Arq);
WriteLn(Arq,'');
CloseFile(Arq);
End;

Procedure TFrmPrincipal.Permicao;
var
  I,J:Integer;
begin
  For I:=0 to MainMenu1.Items.Count-1 do
  begin
    for J:=0 To MainMenu1.Items[I].Count-1 do
    begin
      if (MainMenu1.Items[I].Items[J].Tag) > (GlbNivel) then
        MainMenu1.Items[I].Items[J].Enabled:=False
      else
        MainMenu1.Items[I].Items[J].Enabled:=True;
    end;
  end;
end;

procedure TFrmPrincipal.Trataerros(Sender: TObject; E: Exception);
var mensagem: string;
    Pos1, Pos2: integer;
begin
   if Pos(UpperCase('is not a valid date'), UpperCase(E.Message)) <> 0 then
         showmessage('Data inválida, proceda a correção.')
   else
      if Pos(UpperCase('must have a value'), UpperCase(E.Message)) <> 0 then
          begin
              Pos1:=Pos('''', E.Message);
              mensagem:=E.Message;
              Delete(mensagem, Pos1, 1);
              Pos2:=Pos('''', mensagem);
              mensagem:=copy(E.Message, Pos1 + 1, Pos2 - Pos1);
              showmessage('É obrigatório o preenchimento do campo '+ mensagem + '.');
          end
   else
      if Pos(UpperCase('key violation'), UpperCase(E.Message)) <> 0 then
           showmessage('Houve violação de Chave.  Registro já incluido.')
   else
      if Pos(UpperCase('Input value'), UpperCase(E.Message)) <> 0 then
           showmessage('Campo preenchido com valor não válido. Proceda a correção.')
   else
      if Pos(UpperCase('is not a valid time'), UpperCase(E.Message)) <> 0 then
           showmessage('Hora inválida, proceda a correção.')
   else
      if Pos(UpperCase('master has detail records'), UpperCase(E.Message)) <> 0 then
          ShowMessage('Proibida a Exclusão e Modificação deste Registro, pois ele faz Referência a Outro(s) Registro(s)!')
   else
      if Pos(UpperCase('field value required'), UpperCase(E.Message)) <> 0 then
        begin
          Pos1:=Pos(':',E.Message);
          Delete(Mensagem,Pos1,1);
          Mensagem:=copy(E.Message,Pos1+2,30);
          showmessage('É obrigatório o preenchimento do campo "'+ mensagem + '".');
        end;
      If Pos(UpperCase('RECORD LOCKED BY ANOTHER USER.'), UpperCase(E.Message)) <> 0 then
         ShowMessage('O Registro está sendo Utilizado por Outro Usuário da Rede. Cancele a Operação e Aguarde a Liberação do Mesmo!')
   else
      showmessage('Ocorreu o seguinte erro: '+UpperCase(E.Message));
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
var ArqIni: TIniFile ;
   Conexao : String;
begin
  Application.OnException:=TrataErros;
  FrmPrincipal.WindowState := wsMaximized;
  DataAccess := TDataAccess.Create;

  try
    ArqIni  := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'smart.ini');
    Conexao :=  ArqIni.ReadString('DadosServidor','IP','10.0.1.254:1521:orcl' ) ;
    gs_EnviaEmailNFe :=  ArqIni.ReadString('NFE','EnviaEmail','N' ) ;
    gs_EmailTeste    :=  ArqIni.ReadString('NFE','EmailTeste','N' ) ;
  finally
    ArqIni.Free;
  end;

  DB.Disconnect;
  DB.Options.DateFormat   := 'DD/MM/YYYY'; //'DD-MON-RR';
  DB.Options.DateLanguage := 'PORTUGUESE'; //'ENGLISH';
  DB.ConnectString :=  'smart/pyxis@'+Conexao;
  DB.Connect;
  gs_LogUsua := '';
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin
//  StatusBar1.Panels[2].Text:=TimeToStr(Time);
//  StatusBar1.Panels[3].Text:=DateToStr(Date);
end;

procedure TFrmPrincipal.Calculadora1Click(Sender: TObject);
 begin
 //EXECPROC P/ executar procedures
  Try
 //   Winexec('Calc.exe',Sw_Show);
  Except

  End;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.Sobre1Click(Sender: TObject);
begin
Try
  FrmSobre:=TFrmSobre.Create(Self);
  FrmSobre.Show;
except
  FrmSobre.Free;
End;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  Top := 0;
  Left := 0;
  Width := Screen.Width;
  Height := Screen.Height-50;

//  if ( FileExists(ExtractFilePath(Application.ExeName) + 'Imagens\Icone_Modulo.bmp') ) then
//    FrmPrincipal.Icon.LoadFromFile( ExtractFilePath(Application.ExeName) + 'Imagens\Icone_Modulo.bmp' );

  FrmPrincipal.Show;
  EfetuarLogin;
  AtualizaMenuLateral('SplitMenuPrincipal');
end;

procedure TFrmPrincipal.Timer2Timer(Sender: TObject);
begin
//  Logar1Click(sender);
end;

procedure TFrmPrincipal.InstruesparaBoletas1Click(Sender: TObject);
begin
Try
  Application.CreateForm(TFrmInst, FrmInst);
  FrmInst.ShowModal;
Finally
  FrmInst.Free;
End;
end;



procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  Fenha:=TFenha.Create(Self);
  Fenha.ShowModal;
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  FrmPrincipal.WindowState := wsMaximized;
end;

procedure TFrmPrincipal.LogarNovamente1Click(Sender: TObject);
var
  I: Integer;
begin
  try
    FechaFormsAbertos;
  except
    on E: Exception do
      ShowMessage('Erro ao Fechar formulários abertos. Entre em contato com o setor de T.I.' + #10+#10 + E.Message);
  end;

  EfetuarLogin;
end;

procedure TFrmPrincipal.VEN004Click(Sender: TObject);
begin
  try
    VEN004.Enabled:= False;
    FrmPedVenda:=TFrmPedVenda.Create(Self);
    FrmPedVenda.Show;
    VerificaFormAberto;
  except;
    VEN004.Enabled:= True;
    FrmPedVenda.Free;
  end;
end;

procedure TFrmPrincipal.i1Click(Sender: TObject);
begin
//  FrmPedVenda.SBNovoClick(sender);
end;

procedure TFrmPrincipal.Incluir1Click(Sender: TObject);
begin
  If FrmPedVenda.Showing then
    If FrmPedVenda.SBNovo.Enabled=True then
       FrmPedVenda.SBNovoClick(sender);
end;

procedure TFrmPrincipal.Gravar1Click(Sender: TObject);
begin
  If FrmPedVenda.SBSalva.Enabled = True then
     FrmPedVenda.SBSalvaClick(Self);
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
  FechaFormsAbertos;

  If MDIChildCount > 0 then
    Action:=caNone;

  FreeAndNil(DataAccess);
end;

procedure TFrmPrincipal.Validar1Click(Sender: TObject);
begin
  if FrmPedVenda.mniValidar.Enabled = true then
     FrmPedVenda.mniValidarClick(Self);
end;

procedure TFrmPrincipal.VEN005ImpressodeDocumentosdoPedido1Click(
  Sender: TObject);
begin
  try
   frmImpDocPed:=TfrmImpDocPed.Create(Self);
   frmImpDocPed.Show;
  except;
   frmImpDocPed.Free;
  end;
end;

procedure TFrmPrincipal.VEN005Click(
  Sender: TObject);
begin
  Try
    VEN005.Enabled:= False;
    FrmImpDocPed:=TfrmImpDocPed.Create(Self);
    FrmImpDocPed.Show;
    VerificaFormAberto;
  except;
    VEN005.Enabled:= True;
    FrmImpDocPed.Free;
  end;
end;

procedure TFrmPrincipal.VEN007Click(
  Sender: TObject);
begin
  Try
    VEN007.Enabled:= False;
    FrmFeCarManu:=TfrmFeCarManu.Create(Self);
    FrmFeCarManu.Show;
    VerificaFormAberto;
  Except;
    VEN007.Enabled:= True;
    FrmFeCarManu.Free;
  End;
end;

procedure TFrmPrincipal.VEN006Click(Sender: TObject);
begin
try
   QrAcesso.Close;
   QrAcesso.SQL.Clear;
   QrAcesso.SQL.Text :=
        ' SELECT                                               '+
        '  SISTEMA_PARAMETRO.FL_MONTCARGMULTUSUAPARASIST,      '+
        '  SISTEMA_PARAMETRO.ID_USUASIST_MONTCARGPARASIST,     '+
        '  SISTEMA_PARAMETRO.DT_MONTCARGPARASIST,              '+
        '  SISTEMA_PARAMETRO.EMPRESA,                          '+
        '  SISTEMA_PARAMETRO.FILIAL,                           '+
        '  SISTEMA_PARAMETRO.ID_PARASIST                       '+
        ' FROM                                                 '+
        '  SISTEMA_PARAMETRO                                   ';
   QrAcesso.Open;
   IF  QrAcesso.FieldByName('fl_montcargmultusuaparasist').AsString = 'N' then
   BEGIN
      if QrAcesso.FieldByName('id_usuasist_montcargparasist').AsString='' then
      begin
        QrAcesso.Edit;
        QrAcesso.FieldByName('id_usuasist_montcargparasist').AsFloat:=gi_CodiUsuaSist;
        QrAcesso.FieldByName('DT_MONTCARGPARASIST').AsDateTime := ld_DataHora;
        QrAcesso.Post;
        QrAcesso.CommitUpdates;
        QrAcesso.ApplyUpdates;
      end
      Else IF (QrAcesso.FieldByName('id_usuasist_montcargparasist').AsFloat <> gi_CodiUsuaSist) then
      begin
        QrAcesso.Close;
        QrAcesso.SQL.Clear;
        QrAcesso.SQL.Text :=
                ' SELECT                                                  '+
                '    SISTEMA_PARAMETRO.FL_MONTCARGMULTUSUAPARASIST,         '+
                '    SISTEMA_PARAMETRO.ID_USUASIST_MONTCARGPARASIST,          '+
                '    SISTEMA_PARAMETRO.DT_MONTCARGPARASIST,                     '+
                '    SISTEMA_PARAMETRO.EMPRESA,                                   '+
                '    SISTEMA_PARAMETRO.FILIAL,                                      '+
                '    SISTEMA_PARAMETRO.ID_PARASIST,                                   '+
                '    SISTEMA_USUARIO.NM_REDUUSUASIST                                    '+
                ' FROM                                                                    '+
                '    SISTEMA_USUARIO,                                                       '+
                '    SISTEMA_PARAMETRO                                                        '+
                ' WHERE                                                                         '+
                '    SISTEMA_USUARIO.ID_USUASIST = SISTEMA_PARAMETRO.ID_USUASIST_MONTCARGPARASIST ';
        QrAcesso.Open;
        MessageDlg('Operação não Disponível, o usuário ' + QrAcesso.FieldByName('nm_reduusuasist').AsString + ' está utilizando a Montagem de Carga. ', mtWarning, [mbOk], 0);
        Exit;
      end;
   END;
   VEN006.Enabled:= False;
   FrmMontaCarga:=TFrmMontaCarga.Create(Self);
   FrmMontaCarga.Show;
   VerificaFormAberto;
except;
   VEN006.Enabled:= True;
   FrmMontaCarga.Free;
end;

end;

procedure TFrmPrincipal.VEN008Click(Sender: TObject);
begin
 Try
   VEN008.Enabled:= False;
   FrmSelRelDoa:=TFrmSelRelDoa.Create(Self);
   FrmSelRelDoa.ShowModal;
   VerificaFormAberto;
 Except;
   VEN008.Enabled:= True;
   FrmSelRelDoa.Free;
 End;

end;

procedure TFrmPrincipal.VEN009Click(Sender: TObject);
begin
  try
    VEN009.Enabled:= False;
    FrmLiberaCarga:=TFrmLiberaCarga.Create(Self);
    FrmLiberaCarga.Show;
    VerificaFormAberto;
  except;
    VEN009.Enabled:= True;
    FrmLiberaCarga.Free;
  end;
end;

procedure TFrmPrincipal.VEN010Click(Sender: TObject);
begin
  try
    VEN010.Enabled:= False;
    FrmManuComis:=TFrmManuComis.Create(Self);
    FrmManuComis.Show;
    VerificaFormAberto;
  except;
    VEN010.Enabled:= True;
    FrmManuComis.Free;
  end;
end;

procedure TFrmPrincipal.VEN011Click(
  Sender: TObject);
begin
  Try
    VEN011.Enabled:= False;
    FrmSelFreteFg:=TFrmSelFreteFg.Create(Self);
    FrmSelFreteFg.Show;
    VerificaFormAberto;
  Except;
    VEN011.Enabled:= True;
    FrmSelFreteFg.Free;
  End;
end;

procedure TFrmPrincipal.VEN012Click(Sender: TObject);
begin
  Try
    VEN012.Enabled:= False;
    FrmSelRelConfVenda:=TFrmSelRelConfVenda.Create(Self);
    FrmSelRelConfVenda.Show;
    VerificaFormAberto;
  Except;
    VEN012.Enabled:= True;
    FrmSelRelConfVenda.Free;
  End;
end;

procedure TFrmPrincipal.VEN013Click(Sender: TObject);
begin
  Try
    VEN013.Enabled:= False;
    FrmSelVenProd:=TFrmSelVenProd.Create(Self);
    FrmSelVenProd.Show;
    VerificaFormAberto;
  Except;
    VEN013.Enabled:= True;
    FrmSelVenProd.Free;
  End;
end;

procedure TFrmPrincipal.VEN014Click(Sender: TObject);
begin
  try
    VEN014.Enabled:= False;
    FrmSelSintCarga:=TFrmSelSintCarga.Create(Self);
    FrmSelSintCarga.Show;
    VerificaFormAberto;
  except;
    VEN014.Enabled:= True;
    FrmSelSintCarga.Free;
  end;
end;

procedure TFrmPrincipal.VEN016Click(Sender: TObject);
begin
   QrAcesso.Close;
   QrAcesso.SQL.Clear;
   QrAcesso.SQL.Text :=
        ' SELECT                                               '+
        '  SISTEMA_PARAMETRO.FL_MONTCARGMULTUSUAPARASIST,      '+
        '  SISTEMA_PARAMETRO.ID_USUASIST_MONTCARGPARASIST,     '+
        '  SISTEMA_PARAMETRO.DT_MONTCARGPARASIST,              '+
        '  SISTEMA_PARAMETRO.EMPRESA,                          '+
        '  SISTEMA_PARAMETRO.FILIAL,                           '+
        '  SISTEMA_PARAMETRO.ID_PARASIST                       '+
        ' FROM                                                  '+
        '  SISTEMA_PARAMETRO                                   ';
   QrAcesso.Open;
   IF (QrAcesso.FieldByName('fl_montcargmultusuaparasist').AsString = 'S') or (QrAcesso.FieldByName('id_usuasist_montcargparasist').AsString='') then
      begin
        MessageDlg('Operação não Disponível, Montagem de Carga Liberada. ', mtWarning, [mbOk], 0);
      end
   Else if (QrAcesso.FieldByName('id_usuasist_montcargparasist').AsFloat = gi_CodiUsuaSist) then
      BEGIN
        MessageDlg('O seu Usuário que está bloqueando a Montagem de Carga, ao entrar e sair corretamente do sistema de Montagem de Cargas, esta será Liberada. ', mtWarning, [mbOk], 0);
      end
   Else
      begin
        QrAcesso.Close;
        QrAcesso.SQL.Clear;
        QrAcesso.SQL.Text :=
                ' SELECT                                               '+
                '  SISTEMA_PARAMETRO.FL_MONTCARGMULTUSUAPARASIST,      '+
                '  SISTEMA_PARAMETRO.ID_USUASIST_MONTCARGPARASIST,     '+
                '  SISTEMA_PARAMETRO.DT_MONTCARGPARASIST,              '+
                '  SISTEMA_PARAMETRO.EMPRESA,                          '+
                '  SISTEMA_PARAMETRO.FILIAL,                           '+
                '  SISTEMA_PARAMETRO.ID_PARASIST,                      '+
                '  sistema_usuario.nm_reduusuasist                     '+
                ' FROM                                                 '+
                '  sistema_usuario,                                    '+
                '  SISTEMA_PARAMETRO                                   '+
                ' WHERE                                                '+
                '  sistema_usuario.id_usuasist = SISTEMA_PARAMETRO.ID_USUASIST_MONTCARGPARASIST ';
        QrAcesso.Open;

        if MessageDlg('Atenção! Verifique se o usuário '+QrAcesso.FieldByName('nm_reduusuasist').AsString+' não está Montando cargas, antes de desbloquear. Confirma o desbloqueio?',mtWarning, [mbYes, mbNo], 0, mbNo) = mrYes then
          begin
            QrAcesso.Close;
            QrAcesso.SQL.Clear;
            QrAcesso.SQL.Text := ' UPDATE   SISTEMA_PARAMETRO                 '+
                ' SET  SISTEMA_PARAMETRO.ID_USUASIST_MONTCARGPARASIST = NULL, '+
                '      SISTEMA_PARAMETRO.DT_MONTCARGPARASIST = NULL           ';
            QrAcesso.ExecSQL;

 //           QrAcesso.CommitUpdates;
 //           QrAcesso.ApplyUpdates;
          end;
     end;

end;

procedure TFrmPrincipal.VEN072Click(Sender: TObject);
begin
  try
    VEN017.Enabled:= False;
    FrmPediDevoVend:=TFrmPediDevoVend.Create(Self);
    FrmPediDevoVend.Show;
    VerificaFormAberto
  except;
    VEN017.Enabled:= True;
    FrmPediDevoVend.Free;
  end;
end;

procedure TFrmPrincipal.VEN018Click(Sender: TObject);
begin
  try
    VEN018.Enabled:= False;
    FrmAtualVersao:=TFrmAtualVersao.Create(Self);
    FrmAtualVersao.Show;
    VerificaFormAberto;
  except;
    VEN018.Enabled:= True;
    FrmAtualVersao.Free;
  end;
end;

procedure TFrmPrincipal.ACAjudaExecute(Sender: TObject);
begin
  AtualizaMenuLateral('SplitSubMenuAjuda');
end;

procedure TFrmPrincipal.ACAjudaUpdate(Sender: TObject);
begin
  AtualizaImagem('SplitSubMenuAjuda');
end;

procedure TFrmPrincipal.ACArquivoExecute(Sender: TObject);
begin
  AtualizaMenuLateral('SplitSubMenuArquivo');
end;

procedure TFrmPrincipal.ACArquivoUpdate(Sender: TObject);
begin
  AtualizaImagem('SplitSubMenuArquivo');
end;

procedure TFrmPrincipal.ACVEN015Execute(Sender: TObject);
begin
  if SplitSubMenuRelVendasVendedor.Opened = True then
    SplitSubMenuRelVendasVendedor.Opened := False
  else
    SplitSubMenuRelVendasVendedor.Opened := True;

  if SplitSubMenuTransporte.Opened = True then
    SplitSubMenuTransporte.Opened := False;

  if SplitSubMenuImpressão.Opened = true then
    SplitSubMenuImpressão.Opened := False;

  if SplitSubMenuArquivo.Opened = True then
    SplitSubMenuArquivo.Opened := False;

  if SplitSubMenuManutencao.Opened = True then
    SplitSubMenuManutencao.Opened := False;

  if SplitSubMenuLogistica.Opened = True then
    SplitSubMenuLogistica.Opened := False;

  if SplitSubMenuAjuda.Opened = True then
    SplitSubMenuAjuda.Opened := False;

  if SplitSubMenuVendas.Opened = True then
    SplitSubMenuVendas.Opened := False;
end;

procedure TFrmPrincipal.ACVEN017Execute(Sender: TObject);
begin
  if SplitSubMenuPedidoDevolucao.Opened = True then
    SplitSubMenuPedidoDevolucao.Opened := False
  else
    SplitSubMenuPedidoDevolucao.Opened := True;

  if SplitSubMenuTransporte.Opened = True then
    SplitSubMenuTransporte.Opened := False;

  if SplitSubMenuImpressão.Opened = true then
    SplitSubMenuImpressão.Opened := False;

  if SplitSubMenuArquivo.Opened = True then
    SplitSubMenuArquivo.Opened := False;

  if SplitSubMenuManutencao.Opened = True then
    SplitSubMenuManutencao.Opened := False;

  if SplitSubMenuLogistica.Opened = True then
    SplitSubMenuLogistica.Opened := False;

  if SplitSubMenuAjuda.Opened = True then
    SplitSubMenuAjuda.Opened := False;

  if SplitSubMenuVendas.Opened = True then
    SplitSubMenuVendas.Opened := False;
end;


procedure TFrmPrincipal.ACVEN029Execute(Sender: TObject);
begin
  if SplitSubMenuCadatroLocalidades.Opened = True then
    SplitSubMenuCadatroLocalidades.Opened := False
  else
    SplitSubMenuCadatroLocalidades.Opened := True;

  if SplitSubMenuTransporte.Opened = True then
    SplitSubMenuTransporte.Opened := False;

  if SplitSubMenuImpressão.Opened = true then
    SplitSubMenuImpressão.Opened := False;

  if SplitSubMenuArquivo.Opened = True then
    SplitSubMenuArquivo.Opened := False;

  if SplitSubMenuManutencao.Opened = True then
    SplitSubMenuManutencao.Opened := False;

  if SplitSubMenuLogistica.Opened = True then
    SplitSubMenuLogistica.Opened := False;

  if SplitSubMenuAjuda.Opened = True then
    SplitSubMenuAjuda.Opened := False;

  if SplitSubMenuVendas.Opened = True then
    SplitSubMenuVendas.Opened := False;

end;

procedure TFrmPrincipal.ACVEN030Execute(Sender: TObject);
begin
  if SplitSubMenuCadastroLogistica.Opened = True then
    SplitSubMenuCadastroLogistica.Opened := False
  else
    SplitSubMenuCadastroLogistica.Opened := True;

  if SplitSubMenuTransporte.Opened = True then
    SplitSubMenuTransporte.Opened := False;

  if SplitSubMenuImpressão.Opened = true then
    SplitSubMenuImpressão.Opened := False;

  if SplitSubMenuArquivo.Opened = True then
    SplitSubMenuArquivo.Opened := False;

  if SplitSubMenuManutencao.Opened = True then
    SplitSubMenuManutencao.Opened := False;

  if SplitSubMenuLogistica.Opened = True then
    SplitSubMenuLogistica.Opened := False;

  if SplitSubMenuAjuda.Opened = True then
    SplitSubMenuAjuda.Opened := False;

  if SplitSubMenuVendas.Opened = True then
    SplitSubMenuVendas.Opened := False;
end;

procedure TFrmPrincipal.ACVEN033Execute(Sender: TObject);
begin
  if SplitSubMenuCadTransporte.Opened = True then
    SplitSubMenuCadTransporte.Opened := False
  else
    SplitSubMenuCadTransporte.Opened := True;

  if SplitSubMenuTransporte.Opened = True then
    SplitSubMenuTransporte.Opened := False;

  if SplitSubMenuImpressão.Opened = true then
    SplitSubMenuImpressão.Opened := False;

  if SplitSubMenuArquivo.Opened = True then
    SplitSubMenuArquivo.Opened := False;

  if SplitSubMenuManutencao.Opened = True then
    SplitSubMenuManutencao.Opened := False;

  if SplitSubMenuLogistica.Opened = True then
    SplitSubMenuLogistica.Opened := False;

  if SplitSubMenuAjuda.Opened = True then
    SplitSubMenuAjuda.Opened := False;

  if SplitSubMenuVendas.Opened = True then
    SplitSubMenuVendas.Opened := False;
end;

procedure TFrmPrincipal.ACVEN054Execute(Sender: TObject);
begin
  if SplitSubMenuControleCaixas.Opened = True then
    SplitSubMenuControleCaixas.Opened := False
  else
    SplitSubMenuControleCaixas.Opened := True;

  if SplitSubMenuTransporte.Opened = True then
    SplitSubMenuTransporte.Opened := False;

  if SplitSubMenuImpressão.Opened = true then
    SplitSubMenuImpressão.Opened := False;

  if SplitSubMenuArquivo.Opened = True then
    SplitSubMenuArquivo.Opened := False;

  if SplitSubMenuManutencao.Opened = True then
    SplitSubMenuManutencao.Opened := False;

  if SplitSubMenuLogistica.Opened = True then
    SplitSubMenuLogistica.Opened := False;

  if SplitSubMenuAjuda.Opened = True then
    SplitSubMenuAjuda.Opened := False;

  if SplitSubMenuVendas.Opened = True then
    SplitSubMenuVendas.Opened := False;
end;

procedure TFrmPrincipal.ACVendasExecute(Sender: TObject);
begin
  AtualizaMenuLateral('SplitSubMenuVendas');
end;

procedure TFrmPrincipal.ACVendasUpdate(Sender: TObject);
begin
  AtualizaImagem('SplitSubMenuVendas');
end;

procedure TFrmPrincipal.ACVoltarExecute(Sender: TObject);
begin
    if SplitSubMenuVendas.Opened = True then
      SplitSubMenuVendas.Opened := False;

  if SplitSubMenuAjuda.Opened = True then
    SplitSubMenuAjuda.Opened := False;

  if SplitSubMenuArquivo.Opened = True then
    SplitSubMenuArquivo.Opened := False;

  if SplitSubMenuTransporte.Opened = True then
    SplitSubMenuTransporte.Opened := False;

  if SplitSubMenuImpressão.Opened = True then
    SplitSubMenuImpressão.Opened := False;

  if SplitSubMenuManutencao.Opened = True then
    SplitSubMenuManutencao.Opened := False;

  if SplitSubMenuLogistica.Opened = True then
    SplitSubMenuLogistica.Opened := False;

  if SplitSubMenuPedidoDevolucao.Opened = True then
  begin
    SplitSubMenuPedidoDevolucao.Opened := False;

    if SplitSubMenuVendas.Opened = False then
      SplitSubMenuVendas.Opened := True;
  end;

  if SplitSubMenuCadatroLocalidades.Opened = True then
  begin
    SplitSubMenuCadatroLocalidades.Opened := False;

    if SplitSubMenuVendas.Opened = False then
      SplitSubMenuVendas.Opened := True;
  end;

  if SplitSubMenuCadastroLogistica.Opened = True then
  begin
    SplitSubMenuCadastroLogistica.Opened := False;

    if SplitSubMenuVendas.Opened = False then
      SplitSubMenuVendas.Opened := True;
  end;

  if SplitSubMenuCadTransporte.Opened = True then
  begin
    SplitSubMenuCadTransporte.Opened := False;

    if SplitSubMenuTransporte.Opened = False then
      SplitSubMenuTransporte.Opened := True;
  end;

  if SplitSubMenuRelVendasVendedor.Opened = True then
  begin
    SplitSubMenuRelVendasVendedor.Opened := False;

    if SplitSubMenuImpressão.Opened = False then
      SplitSubMenuImpressão.Opened := True;
  end;

  if SplitSubMenuControleCaixas.Opened = True then
  begin
    SplitSubMenuControleCaixas.Opened := False;

    if SplitSubMenuManutencao.Opened = False then
      SplitSubMenuManutencao.Opened := True;
  end;
end;

procedure TFrmPrincipal.ACTransporteExecute(Sender: TObject);
begin
  AtualizaMenuLateral('SplitSubMenuTransporte');
end;

procedure TFrmPrincipal.ACTransporteUpdate(Sender: TObject);
begin
  AtualizaImagem('SplitSubMenuTransporte');
end;

procedure TFrmPrincipal.ACImpressãoExecute(Sender: TObject);
begin
  AtualizaMenuLateral('SplitSubMenuImpressão');
end;

procedure TFrmPrincipal.ACImpressãoUpdate(Sender: TObject);
begin
  AtualizaImagem('SplitSubMenuImpressão');
end;

procedure TFrmPrincipal.ACMenuExecute(Sender: TObject);
begin
  AtualizaMenuLateral('SplitMenuPrincipal');
end;

procedure TFrmPrincipal.ACMenuUpdate(Sender: TObject);
begin
  AtualizaImagem('SplitMenuPrincipal')
end;

procedure TFrmPrincipal.ACManutencaoExecute(Sender: TObject);
begin
  AtualizaMenuLateral('SplitSubMenuManutencao');
end;

procedure TFrmPrincipal.ACManutencaoUpdate(Sender: TObject);
begin
  AtualizaImagem('SplitSubMenuManutencao');
end;

procedure TFrmPrincipal.ACLogisticaExecute(Sender: TObject);
begin
  AtualizaMenuLateral('SplitSubMenuLogistica');
end;

procedure TFrmPrincipal.ACLogisticaUpdate(Sender: TObject);
begin
  AtualizaImagem('SplitSubMenuLogistica');
end;

procedure TFrmPrincipal.AlterarSequence(form: TForm; filial: Integer);
var
  substituicaoSequence: string;
  i: Integer;
  oraQuery: TOraQuery;
begin
  substituicaoSequence := BuscarNomeSequence(filial);

  for i := 0 to form.ComponentCount - 1 do
  begin
    if form.Components[i] is TOraQuery then
    begin
      oraQuery := TOraQuery(form.Components[i]);

      if Length(oraQuery.KeySequence) > 0 then
      begin
        oraQuery.KeySequence := StringReplace(oraQuery.KeySequence, 'SMART', substituicaoSequence, [rfReplaceAll]);
      end;
    end;
  end;
end;

procedure TFrmPrincipal.TrocaNomeSequence(Form: TForm);
var
  intCount: Integer;
begin
  if gi_Filial = 2 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'SMARTI', [rfReplaceAll]);
  if gi_Filial = 4 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'CAMETAL', [rfReplaceAll]);
  if gi_Filial = 5 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'RACAO', [rfReplaceAll]);
  if gi_Filial = 8 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'SMART2', [rfReplaceAll]);
  if gi_Filial = 10 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'SAOPA_FGOC_ALIM', [rfReplaceAll]);
  if gi_Filial = 11 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'GUAPIACU', [rfReplaceAll]);
  if gi_Filial = 13 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'CATERRA', [rfReplaceAll]);
  if gi_Filial = 14 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'GUAPI_FABR_ALIM', [rfReplaceAll]);
  if gi_Filial = 15 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'GUAPI_FGOC_ALIM', [rfReplaceAll]);
  if gi_Filial = 16 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'IPIGU_INCU_ALIM', [rfReplaceAll]);
  if gi_Filial = 17 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'LARAP_ARMA_ALIM', [rfReplaceAll]);
  if gi_Filial = 18 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'STAAD_FGOC_ALIM', [rfReplaceAll]);
  if gi_Filial = 19 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'TIETE_POVO_ALIM', [rfReplaceAll]);
  if gi_Filial = 20 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'UBARA_FGOC_ALIM', [rfReplaceAll]);
  if gi_Filial = 21 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'AGUAI_FGOC', [rfReplaceAll]);
  if gi_Filial = 22 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'SBARB_FGOC_FABR', [rfReplaceAll]);
  if gi_Filial = 23 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'BOFET_MATR', [rfReplaceAll]);
  if gi_Filial = 24 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'CABRA_MATR_FABR', [rfReplaceAll]);
  if gi_Filial = 25 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'CERQC_MATR', [rfReplaceAll]);
  if gi_Filial = 26 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'CESAL_MATR', [rfReplaceAll]);
  if gi_Filial = 27 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'CONCH_FGOC', [rfReplaceAll]);
  if gi_Filial = 28 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'GUAPI_ABAT', [rfReplaceAll]);
  if gi_Filial = 29 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'GUAPI_FABR', [rfReplaceAll]);
  if gi_Filial = 30 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'GUAPI_FGOC', [rfReplaceAll]);
  if gi_Filial = 31 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'IPIGU_INCU', [rfReplaceAll]);
  if gi_Filial = 32 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'IPIGU_MATR_FABR', [rfReplaceAll]);
  if gi_Filial = 33 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'ITAPE_ABAT', [rfReplaceAll]);
  if gi_Filial = 34 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'ITAPE_FABR', [rfReplaceAll]);
  if gi_Filial = 35 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'LARAP_ARMA', [rfReplaceAll]);
  if gi_Filial = 36 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'MARIS_FGOC', [rfReplaceAll]);
  if gi_Filial = 37 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'PARDI_MATR', [rfReplaceAll]);
  if gi_Filial = 38 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'PEREI_FABR', [rfReplaceAll]);
  if gi_Filial = 39 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'PEREI_INCU', [rfReplaceAll]);
  if gi_Filial = 40 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'PEREI_FGOC', [rfReplaceAll]);
  if gi_Filial = 41 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'PILAS_FGOC', [rfReplaceAll]);
  if gi_Filial = 42 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'SAMAM_MATR', [rfReplaceAll]);
  if gi_Filial = 43 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'STAAD_FGOC', [rfReplaceAll]);
  if gi_Filial = 44 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'SAOMA_MATR', [rfReplaceAll]);
  if gi_Filial = 45 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'SARAP_INCU', [rfReplaceAll]);
  if gi_Filial = 46 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'SOROC_ABAT', [rfReplaceAll]);
  if gi_Filial = 47 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'TIBIR_MATR', [rfReplaceAll]);
  if gi_Filial = 48 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'TIETE_MATR_FABR', [rfReplaceAll]);
  if gi_Filial = 49 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'UBARA_FGOC', [rfReplaceAll]);
  if gi_Filial = 50 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'LARP_PAFIR', [rfReplaceAll]);
  if gi_Filial = 51 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'LARP_FM', [rfReplaceAll]);
  if gi_Filial = 52 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'TEST_1AVI', [rfReplaceAll]);
  if gi_Filial = 53 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'TEST_2AVI', [rfReplaceAll]);
  if gi_Filial = 54 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'PIRAC_VAREJO', [rfReplaceAll]);
  if gi_Filial = 55 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'SJRPT_VAREJO', [rfReplaceAll]);
  if gi_Filial = 56 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'PEREI_INCU_ALIM', [rfReplaceAll]);
  if gi_Filial = 90 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'PEREI_AMF', [rfReplaceAll]);
  if gi_Filial = 91 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'AMF_METAL', [rfReplaceAll]);
  if gi_Filial = 93 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'PEREI_DRAG_AZUL', [rfReplaceAll]);
  if gi_Filial = 94 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'ITAPE_DRAG_AZUL', [rfReplaceAll]);
  if gi_Filial = 95 then
    for intCount := 0 to Form.ComponentCount - 1 do
      if Form.Components[intCount] is TOraQuery then
        if Length(TOraQuery(Form.Components[intCount]).KeySequence) > 0 then
          TOraQuery(Form.Components[intCount]).KeySequence :=
            StringReplace(TOraQuery(Form.Components[intCount]).KeySequence, 'SMART', 'GUAPI_DRAG_AZUL', [rfReplaceAll]);
end;

procedure TFrmPrincipal.VEN019Click(Sender: TObject);
begin
  Try
    VEN019.Enabled:= False;
    FrmParamComercial:=TFrmParamComercial.Create(Self);
    FrmParamComercial.Show;
    VerificaFormAberto;
  Except;
    VEN019.Enabled:= True;
    FrmParamComercial.Free;
  End;
end;

procedure TFrmPrincipal.VEN020Click(Sender: TObject);
begin
 try
   VEN020.Enabled:= False;
   FrmCorte:=TFrmCorte.Create(Self);
   FrmCorte.Show;
   VerificaFormAberto;
 except;
   VEN020.Enabled:= True;
   FrmCorte.Free;
 end;

end;

procedure TFrmPrincipal.VEN021Click(Sender: TObject);
begin
  try
    VEN021.Enabled:= False;
    FrmImpNFRacao:=TFrmImpNFRacao.Create(Self);
    FrmImpNFRacao.Show;
    VerificaFormAberto;
  except;
    VEN021.Enabled:= True;
    FrmImpNFRacao.Free;
  end;
end;

procedure TFrmPrincipal.VEN022Click(Sender: TObject);
begin
  try
    VEN022.Enabled:= False;
    FrmParametro:=TFrmParametro.Create(Self);
    FrmParametro.Show;
    VerificaFormAberto;
  except
    VEN022.Enabled:= True;
    FrmParametro.Free;
  end;
end;

procedure TFrmPrincipal.VEN023Click(Sender: TObject);
begin
  Try
    VEN023.Enabled:= False;
    FrmPedagio:=TFrmPedagio.Create(Self);
    FrmPedagio.Show;
    VerificaFormAberto;
  Except;
    VEN023.Enabled:= True;
    FrmPedagio.Free;
  End;
end;

procedure TFrmPrincipal.VEN024Click(Sender: TObject);
begin
  Try
    VEN024.Enabled:= False;
    FrmSubRegiao:=TFrmSubRegiao.Create(Self);
    FrmSubRegiao.Show;
    VerificaFormAberto;
  Except;
    VEN024.Enabled:= True;
    FrmSubRegiao.Free;
  End;
end;

procedure TFrmPrincipal.corrigelimite(Cod_cli: Double; CANCELAR: Boolean; VALOR:Real);
var
  sSinal : string;
begin
  if (gi_filial = 1) OR ( gi_filial = 52 ) then
    begin
      with FrmPrincipal.QrCLCred do
      begin
        Close;
        SQL.Clear;
        SQL.Text := ' SELECT                                            '+
                    '   SUM(NVL(CA_LIMITECRED.VL_REALPED,0))-           '+
                    '   SUM(NVL(CA_LIMITECRED.VL_PAGO,0)) AS VL_LIMITE  '+
                    ' FROM                                              '+
                    '  CA_LIMITECRED                                    '+
                    ' WHERE CA_LIMITECRED.ID_CLIENTE = :VID_CLIENTE     '+
                    '   AND FL_LIMITE <> ''Q''                          ';
        ParamByName('VID_CLIENTE').AsFloat := Cod_cli;
        Open;
      end;

      if CANCELAR then
      begin
        FrmPrincipal.OSQL1.SQL.Clear;
        FrmPrincipal.OSQL1.SQL.Text:=' Update cliente           '+
                                     '    SET vl_credatuaclie = vl_credatuaclie + ' + ReplaceStr(FloattoStr(VALOR),',','.') +  ', '+
                                     '        vl_credusadclie = vl_credusadclie - ' + ReplaceStr(FloattoStr(VALOR),',','.') +
                                     '  WHERE id_cliente = '+ FloattoStr(Cod_cli);
      end
      else
      begin
        FrmPrincipal.OSQL1.SQL.Clear;
        FrmPrincipal.OSQL1.SQL.Text:=' Update cliente           '+
                                     '    SET vl_credatuaclie = vl_limicredclie - ' +  ReplaceStr(FloattoStr(FrmPrincipal.QrCLCredVL_LIMITE.Value),',','.') +  ', '+
                                     '        vl_credusadclie = '+ ReplaceStr(FloattoStr(FrmPrincipal.QrCLCredVL_LIMITE.Value),',','.') +
                                     '  WHERE id_cliente = '+ FloattoStr(Cod_cli);
      end;



      try
        FrmPrincipal.OSQL1.Execute;
      except
        Screen.Cursor := crDefault;
        MessageDlg('Atenção! Pedido excede o limite de crédito do Cliente.', mtWarning,[mbOk], 0);
        exit;
      end;
    end
  else if (gi_filial = 2) or (gi_filial = 8) then
  begin
    with FrmPrincipal.QrCLCred do
    begin
      Close;
      SQL.Clear;
      SQL.Text:=' SELECT                                            '+
                '   SUM(NVL(CA_LIMITECRED.VL_REALPED,0))-           '+
                '   SUM(NVL(CA_LIMITECRED.VL_PAGO,0)) AS VL_LIMITE  '+
                ' FROM                                              '+
                '  CA_LIMITECRED@SOROCABA                           '+
                ' WHERE CA_LIMITECRED.ID_CLIENTE = :VID_CLIENTE     '+
                '  AND FL_LIMITE <> ''Q''                           ';
      ParamByName('VID_CLIENTE').AsFloat := Cod_cli;
      Open;
    end;
    FrmPrincipal.OSQL1.SQL.Clear;
    FrmPrincipal.OSQL1.SQL.Text:=' Update lnk_cliente           '+
                                 '    SET vl_credatuaclie = vl_limicredclie - '+ ReplaceStr(FloattoStr(FrmPrincipal.QrCLCredVL_LIMITE.Value),',','.') +  ', '+
                                 '        vl_credusadclie = '+ ReplaceStr(FloattoStr(FrmPrincipal.QrCLCredVL_LIMITE.Value),',','.') +
                                 '  WHERE id_cliente = '+ FloattoStr(Cod_cli);
    FrmPrincipal.OSQL1.Execute;
  end;
end;

procedure TFrmPrincipal.VEN025Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    VEN025.Enabled:= False;
    FrmFreteFixo:=TFrmFreteFixo.Create(Self);
    FrmFreteFixo.Show;
    VerificaFormAberto;
  Except;
    VEN025.Enabled:= True;
    FrmFreteFixo.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN026Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    VEN026.Enabled:= False;
    FrmSelPedagio:=TFrmSelPedagio.Create(Self);
    FrmSelPedagio.ShowModal;
    VerificaFormAberto;
  Except;
    VEN026.Enabled:= True;
    FrmSelPedagio.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN027Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    VEN027.Enabled:= False;
    FrmClientes:=TFrmClientes.Create(Self);
    FrmClientes.Show;
    VerificaFormAberto;
  Except;
    VEN027.Enabled:= True;
    FrmClientes.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN028Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    VEN028.Enabled:= False;
    FrmTabPreco:=TFrmTabPreco.Create(Self);
    FrmTabPreco.Show;
    VerificaFormAberto;
  Except;
    VEN028.Enabled:= True;
    FrmTabPreco.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN030CadastrodeBairro1Click(Sender: TObject);
begin
 Screen.Cursor := crSQLWait;
 Try
  FrmCadBairro:=TFrmCadBairro.Create(Self);
  FrmCadBairro.Show;
  VerificaFormAberto
 Except;
  FrmCadBairro.Free;
 End;
 Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN031CadastrodeEstados1Click(Sender: TObject);
begin
 Screen.Cursor := crSQLWait;
 Try
  FrmCadEstado:=TFrmCadEstado.Create(Self);
  FrmCadEstado.Show;
  VerificaFormAberto
 Except;
  FrmCadEstado.Free;
 End;
 Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.CadastrodeBairro1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastrodeBairro1.Enabled:= False;
    FrmCadBairro:=TFrmCadBairro.Create(Self);
    FrmCadBairro.Show;
    VerificaFormAberto
  Except;
    CadastrodeBairro1.Enabled:= True;
    FrmCadBairro.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.CadastrodeCidades1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastrodeCidades1.Enabled:= False;
    FrmCadCidade:=TFrmCadCidade.Create(Self);
    FrmCadCidade.Show;
    VerificaFormAberto
  Except;
    CadastrodeCidades1.Enabled:= True;
    FrmCadCidade.Free;
  End;

  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.CadastrodeEstados1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastrodeEstados1.Enabled:= False;
    FrmCadEstado:=TFrmCadEstado.Create(Self);
    FrmCadEstado.Show;
    VerificaFormAberto
  Except;
    CadastrodeEstados1.Enabled:= True;
    FrmCadEstado.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.CadastrodePases1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastrodePases1.Enabled:= False;
    FrmCadPais:=TFrmCadPais.Create(Self);
    FrmCadPais.Show;
    VerificaFormAberto
  Except;
    CadastrodePases1.Enabled:= True;
    FrmCadPais.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.CadastrodeRegioGeogrfica1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastrodeRegioGeogrfica1.Enabled:= False;
    FrmCadRegGeog:=TFrmCadRegGeog.Create(Self);
    FrmCadRegGeog.Show;
    VerificaFormAberto
  Except;
    CadastrodeRegioGeogrfica1.Enabled:= True;
    FrmCadRegGeog.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.CadastrodeRegioInternacional1Click(
  Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastrodeRegioInternacional1.Enabled:= False;
    FrmCadRegInt:=TFrmCadRegInt.Create(Self);
    FrmCadRegInt.Show;
    VerificaFormAberto
  Except;
    CadastrodeRegioInternacional1.Enabled:= True;
    FrmCadRegInt.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.CadastrodeRegiesLogsticas1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastrodeRegiesLogsticas1.Enabled:= False;
    FrmCadRegLog:=TFrmCadRegLog.Create(Self);
    FrmCadRegLog.Show;
    VerificaFormAberto
  Except;
    CadastrodeRegiesLogsticas1.Enabled:= True;
    FrmCadRegLog.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.CadastrodeSubregiesLogsticas1Click(
  Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastrodeSubregiesLogsticas1.Enabled:= False;
    FrmCadSubLog:=TFrmCadSubLog.Create(Self);
    FrmCadSubLog.Show;
    VerificaFormAberto
  Except;
    CadastrodeSubregiesLogsticas1.Enabled:= True;
    FrmCadSubLog.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.CadastrodeRegiesXSubregiesLogstica1Click(
  Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastrodeRegiesXSubregiesLogstica1.Enabled:= False;
    FrmCadRegeSubLog:=TFrmCadRegeSubLog.Create(Self);
    FrmCadRegeSubLog.Show;
    VerificaFormAberto
  Except;
    CadastrodeRegiesXSubregiesLogstica1.Enabled:= True;
    FrmCadRegeSubLog.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN031Click(
  Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    VEN031.Enabled:= False;
    FrmCadRegCom:=TFrmCadRegCom.Create(Self);
    FrmCadRegCom.Show;
    VerificaFormAberto;
  Except;
    VEN031.Enabled:= True;
    FrmCadRegCom.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN032Click(
  Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    VEN032.Enabled:= False;
    FrmCadForPag:=TFrmCadForPag.Create(Self);
    FrmCadForPag.Show;
    VerificaFormAberto;
  Except;
    VEN032.Enabled:= True;
    FrmCadForPag.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.CadastroTipodeLogradouro1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastroTipodeLogradouro1.Enabled:= False;
    FrmCadTpLogr:=TFrmCadTpLogr.Create(Self);
    FrmCadTpLogr.Show;
    VerificaFormAberto
  Except;
    CadastroTipodeLogradouro1.Enabled:= True;
    FrmCadTpLogr.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.CadastrodeTiposdeTransporte1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastrodeTiposdeTransporte1.Enabled:= False;
    FrmCadTransTipo:=TFrmCadTransTipo.Create(Self);
    FrmCadTransTipo.Show;
    VerificaFormAberto
  Except;
    CadastrodeTiposdeTransporte1.Enabled:= True;
    FrmCadTransTipo.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.CadastroTipodeVeculo1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastroTipodeVeculo1.Enabled:= False;
    FrmCadTipoVeic:=TFrmCadTipoVeic.Create(Self);
    FrmCadTipoVeic.Show;
    VerificaFormAberto
  Except;
    CadastroTipodeVeculo1.Enabled:= True;
    FrmCadTipoVeic.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.CadastrodeTransportadores1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastrodeTransportadores1.Enabled:= False;
    FrmCadTransport:=TFrmCadTransport.Create(Self);
    FrmCadTransport.Show;
    VerificaFormAberto
  Except;
    CadastrodeTransportadores1.Enabled:= True;
    FrmCadTransport.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN034Click(Sender: TObject);
begin
  Try
    VEN034.Enabled:= False;
    Screen.Cursor := crSQLWait;
    FrmSelFreteDevo:=TFrmSelFreteDevo.Create(Self);
    FrmSelFreteDevo.ShowModal;
    VerificaFormAberto;
  Except;
    Screen.Cursor := crDefault;
    VEN034.Enabled:= True;
    FrmSelFreteDevo.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN035Click(
  Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    VEN035.Enabled:= False;
    FrmDesativaPesquisa :=TFrmDesativaPesquisa.Create(Self);
    FrmDesativaPesquisa.ShowModal;
    VerificaFormAberto;
  Except;
    VEN035.Enabled:= True;
    FrmDesativaPesquisa.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN036Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    VEN036.Enabled:= False;
    FrmXmlEmail :=TFrmXmlEmail.Create(Self);
    FrmXmlEmail.ShowModal;
    VerificaFormAberto;
  Except;
    VEN036.Enabled:= True;
    FrmXmlEmail.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN037Click(Sender: TObject);
begin
  Try
    Screen.Cursor := crSQLWait;
    VEN037.Enabled:= False;
    FrmPedVendaCorte:=TFrmPedVendaCorte.Create(Self);
    FrmPedVendaCorte.ShowModal;
    VerificaFormAberto;
  Except;
    Screen.Cursor := crDefault;
    VEN037.Enabled:= True;
    FrmPedVendaCorte.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN038Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    VEN038.Enabled:= False;
    FrmCarregaNFe :=TFrmCarregaNFe.Create(Self);
    FrmCarregaNFe.ShowModal;
    VerificaFormAberto;
  Except;
    VEN038.Enabled:= True;
    FrmCarregaNFe.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN039Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    VEN039.Enabled:= False;
    FrmHistoricoPrecoTelevendas := TFrmHistoricoPrecoTelevendas.Create(Self);
    FrmHistoricoPrecoTelevendas.showmodal;
    VerificaFormAberto;
  Except;
    VEN039.Enabled:= True;
    FrmHistoricoPrecoTelevendas.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN040Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    VEN040.Enabled:= False;
    FrmCadVendedor :=TFrmCadVendedor.Create(Self);
    FrmCadVendedor.Show;
    VerificaFormAberto;
  Except;
    VEN040.Enabled:= True;
    FrmCadVendedor.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.FechaFormsAbertos;
var
  i: integer;
begin
  for i := 0 to Screen.FormCount - 1 do  // qtde de form na tela.
  begin
    if (Screen.Forms[i].Name <> 'Fenha') and (Screen.Forms[i].Name <> 'FrmPrincipal') then  // se o form estiver na tela.
        Screen.Forms[i].Close;
  end;
end;

procedure TFrmPrincipal.VEN041Click(
  Sender: TObject);
begin
  Try
    VEN041.Enabled:= False;
    FrmTranspChaveNFe:=TFrmTranspChaveNFe.Create(Self);
    FrmTranspChaveNFe.ShowModal;
    VerificaFormAberto;
  Except;
    VEN041.Enabled:= True;
    FrmTranspChaveNFe.Free;
  End;
end;

procedure TFrmPrincipal.VEN071Click(Sender: TObject);
begin
  Try
    VEN071.Enabled:= False;
    FrmVenProd:=TFrmVenProd.Create(Self);
    FrmVenProd.ShowModal;
    VerificaFormAberto;
  Except;
    VEN071.Enabled:= True;
    FrmVenProd.Free;
  End;
end;

procedure TFrmPrincipal.VEN042Click(Sender: TObject);
begin
    try
      VEN042.Enabled:= False;
      FrmAlteracaoPlaca:=TFrmAlteracaoPlaca.Create(Self);
      FrmAlteracaoPlaca.Show;
      VerificaFormAberto;
    except;
      VEN042.Enabled:= True;
      FrmAlteracaoPlaca.Free;
    end;
end;

procedure TFrmPrincipal.HabilitarMenuLateral(habilitar: Boolean);
var
  i, j :Integer;
begin
  for I := 0 to FrmPrincipal.ComponentCount-1 do
  begin
    if FrmPrincipal.Components[i] is TSpeedButton then
    begin
      if (TSpeedButton(FrmPrincipal.Components[i]).Action <> ACMenu) and (TSpeedButton(FrmPrincipal.Components[i]).Action <> ACArquivo) and
      (TSpeedButton(FrmPrincipal.Components[i]).Action <> ACVendas) and (TSpeedButton(FrmPrincipal.Components[i]).Action <> ACTransporte) and
      (TSpeedButton(FrmPrincipal.Components[i]).Action <> ACImpressão) and (TSpeedButton(FrmPrincipal.Components[i]).Action <> ACManutencao) and
      (TSpeedButton(FrmPrincipal.Components[i]).Action <> ACLogistica) and (TSpeedButton(FrmPrincipal.Components[i]).Action <> ACAjuda) and
      (TSpeedButton(FrmPrincipal.Components[i]).Action <> ACVoltar) and (TSpeedButton(FrmPrincipal.Components[i]).Action <> ACSair) and
      (TSpeedButton(FrmPrincipal.Components[i]).Name <> 'BtnLogarNovamente') and (TSpeedButton(FrmPrincipal.Components[i]).Name <> 'BtnSobre') then
      begin
        TSpeedButton(FrmPrincipal.Components[i]).Enabled := habilitar;
      end;
    end;
  end;
end;

procedure TFrmPrincipal.HabilitarModulos(habilitar: Boolean);
var
  i, j: integer;
begin
  for i := 1 to MainMenu1.Items.Count - 1 do
  begin
    for j := 0 to MainMenu1.Items[i].Count - 1 do
    begin
      MainMenu1.Items[i].Items[j].Enabled := habilitar;
    end;
  end;
end;

procedure TFrmPrincipal.ControlarAcesso(idModulo, idUsuario: Integer);
var
  qryConsulta, qryJanelas: TOraQuery;
  sql: string;
  i :Integer;
  Tag :string;
begin
  HabilitarModulos(false);
  HabilitarMenuLateral(false);

  FrmPrincipal.Menu := nil;

  qryConsulta := ConsultarAcessos(idModulo, idUsuario);

  qryConsulta.First;

  while not qryConsulta.Eof do
  begin
    case qryConsulta.FieldByName ('ID_JANELA').AsInteger of
      4:  FrmPrincipal.VEN004.Enabled:= True;
      5:  FrmPrincipal.VEN005.Enabled:= True;
      6:  FrmPrincipal.VEN006.Enabled:= True;
      7:  FrmPrincipal.VEN007.Enabled:= True;
      8:  FrmPrincipal.VEN008.Enabled:= True;
      9:  FrmPrincipal.VEN009.Enabled:= True;
      10:  FrmPrincipal.VEN010.Enabled:= True;
      11:  FrmPrincipal.VEN011.Enabled:= True;
      12:  FrmPrincipal.VEN012.Enabled:= True;
      13:  FrmPrincipal.VEN013.Enabled:= True;
      14:  FrmPrincipal.VEN014.Enabled:= True;
      15:  FrmPrincipal.VEN015.Enabled:= True;
      16:  FrmPrincipal.VEN016.Enabled:= True;
      17:  FrmPrincipal.VEN017.Enabled:= True;
      18:  FrmPrincipal.VEN018.Enabled:= True;
      19:  FrmPrincipal.VEN019.Enabled:= True;
      20:  FrmPrincipal.VEN020.Enabled:= True;
      21:  FrmPrincipal.VEN021.Enabled:= True;
      22:  FrmPrincipal.VEN022.Enabled:= True;
      23:  FrmPrincipal.VEN023.Enabled:= True;
      24:  FrmPrincipal.VEN024.Enabled:= True;
      25:  FrmPrincipal.VEN025.Enabled:= True;
      26:  FrmPrincipal.VEN026.Enabled:= True;
      27:  FrmPrincipal.VEN027.Enabled:= True;
      28:  FrmPrincipal.VEN028.Enabled:= True;
      29:  FrmPrincipal.VEN029.Enabled:= True;
      30:  FrmPrincipal.VEN030.Enabled:= True;
      31:  FrmPrincipal.VEN031.Enabled:= True;
      32:  FrmPrincipal.VEN032.Enabled:= True;
      33:  FrmPrincipal.VEN033.Enabled:= True;
      34:  FrmPrincipal.VEN034.Enabled:= True;
      35:  FrmPrincipal.VEN035.Enabled:= True;
      36:  FrmPrincipal.VEN036.Enabled:= True;
      37:  FrmPrincipal.VEN037.Enabled:= True;
      38:  FrmPrincipal.VEN038.Enabled:= True;
      39:  FrmPrincipal.VEN039.Enabled:= True;
      40:  FrmPrincipal.VEN040.Enabled:= True;
      41:  FrmPrincipal.VEN041.Enabled:= True;
      42:  FrmPrincipal.VEN042.Enabled:= True;
      43:  FrmPrincipal.VEN043.Enabled:= True;
      44:  FrmPrincipal.VEN044.Enabled:= True;
      45:  FrmPrincipal.VEN045.Enabled:= True;
      46:  FrmPrincipal.VEN046.Enabled:= True;
      47:  FrmPrincipal.VEN047.Enabled:= True;
      48:  FrmPrincipal.VEN048.Enabled:= True;
      49:  FrmPrincipal.VEN049.Enabled:= True;
      50:  FrmPrincipal.VEN050.Enabled:= True;
      51:  FrmPrincipal.VEN051.Enabled:= True;
      52:  FrmPrincipal.VEN052.Enabled:= True;
      53:  FrmPrincipal.VEN053.Enabled:= True;
      54:  FrmPrincipal.VEN054.Enabled:= True;
      55:  FrmPrincipal.VEN055.Enabled:= True;
      56:  FrmPrincipal.VEN056.Enabled:= True;
      57:  FrmPrincipal.VEN057.Enabled:= True;
      58:  FrmPrincipal.VEN058.Enabled:= True;
      59:  FrmPrincipal.VEN059.Enabled:= True;
      61:  FrmPrincipal.VEN061.Enabled:= True;
      62:  FrmPrincipal.VEN062.Enabled:= True;
      63:  FrmPrincipal.VEN063.Enabled:= True;
      64:  FrmPrincipal.VEN064.Enabled:= True;
      65:  FrmPrincipal.VEN065.Enabled:= True;
      66:  FrmPrincipal.VEN066.Enabled:= True;
//      67:  FrmPrincipal.VEN067.Enabled:= True;
      68:  FrmPrincipal.VEN068.Enabled:= True;
      71:  FrmPrincipal.VEN071.Enabled:= True;
      74:  FrmPrincipal.VEN074.Enabled:= True;
      75:  FrmPrincipal.VEN075.Enabled:= True;
      76:  FrmPrincipal.VEN076.Enabled:= True;
    end;

    qryConsulta.Next;
  end;

  qryConsulta.First;

  while not qryConsulta.Eof do
  begin
    case qryConsulta.FieldByName ('ID_JANELA').AsInteger of
      4:  FrmPrincipal.BtnVEN004.Enabled:= True;
      5:  FrmPrincipal.BtnVEN005.Enabled:= True;
      6:  FrmPrincipal.BtnVEN006.Enabled:= True;
      7:  FrmPrincipal.BtnVEN007.Enabled:= True;
      8:  FrmPrincipal.BtnVEN008.Enabled:= True;
      9:  FrmPrincipal.BtnVEN009.Enabled:= True;
      10:  FrmPrincipal.BtnVEN010.Enabled:= True;
      11:  FrmPrincipal.BtnVEN011.Enabled:= True;
      12:  FrmPrincipal.BtnVEN012.Enabled:= True;
      13:  FrmPrincipal.BtnVEN013.Enabled:= True;
      14:  FrmPrincipal.BtnVEN014.Enabled:= True;
      15:  FrmPrincipal.BtnVEN015.Enabled:= True;
      16:  FrmPrincipal.BtnVEN016.Enabled:= True;
      17:  FrmPrincipal.BtnVEN017.Enabled:= True;
      18:  FrmPrincipal.BtnVEN018.Enabled:= True;
      19:  FrmPrincipal.BtnVEN019.Enabled:= True;
      20:  FrmPrincipal.BtnVEN020.Enabled:= True;
      21:  FrmPrincipal.BtnVEN021.Enabled:= True;
      22:  FrmPrincipal.BtnVEN022.Enabled:= True;
      23:  FrmPrincipal.BtnVEN023.Enabled:= True;
      24:  FrmPrincipal.BtnVEN024.Enabled:= True;
      25:  FrmPrincipal.BtnVEN025.Enabled:= True;
      26:  FrmPrincipal.BtnVEN026.Enabled:= True;
      27:  FrmPrincipal.BtnVEN027.Enabled:= True;
      28:  FrmPrincipal.BtnVEN028.Enabled:= True;
      29:  FrmPrincipal.BtnVEN029.Enabled:= True;
      30:  FrmPrincipal.BtnVEN030.Enabled:= True;
      31:  FrmPrincipal.BtnVEN031.Enabled:= True;
      32:  FrmPrincipal.BtnVEN032.Enabled:= True;
      33:  FrmPrincipal.BtnVEN033.Enabled:= True;
      34:  FrmPrincipal.BtnVEN034.Enabled:= True;
      35:  FrmPrincipal.BtnVEN035.Enabled:= True;
      36:  FrmPrincipal.BtnVEN036.Enabled:= True;
      37:  FrmPrincipal.BtnVEN037.Enabled:= True;
      38:  FrmPrincipal.BtnVEN038.Enabled:= True;
      39:  FrmPrincipal.BtnVEN039.Enabled:= True;
      40:  FrmPrincipal.BtnVEN040.Enabled:= True;
      41:  FrmPrincipal.BtnVEN041.Enabled:= True;
      42:  FrmPrincipal.BtnVEN042.Enabled:= True;
      43:  FrmPrincipal.BtnVEN043.Enabled:= True;
      44:  FrmPrincipal.BtnVEN044.Enabled:= True;
      45:  FrmPrincipal.BtnVEN045.Enabled:= True;
      46:  FrmPrincipal.BtnVEN046.Enabled:= True;
      47:  FrmPrincipal.BtnVEN047.Enabled:= True;
      48:  FrmPrincipal.BtnVEN048.Enabled:= True;
      49:  FrmPrincipal.BtnVEN049.Enabled:= True;
      50:  FrmPrincipal.BtnVEN050.Enabled:= True;
      51:  FrmPrincipal.BtnVEN051.Enabled:= True;
      52:  FrmPrincipal.BtnVEN052.Enabled:= True;
      53:  FrmPrincipal.BtnVEN053.Enabled:= True;
      54:  FrmPrincipal.BtnVEN054.Enabled:= True;
      55:  FrmPrincipal.BtnVEN055.Enabled:= True;
      56:  FrmPrincipal.BtnVEN056.Enabled:= True;
      57:  FrmPrincipal.BtnVEN057.Enabled:= True;
      58:  FrmPrincipal.BtnVEN058.Enabled:= True;
      59:  FrmPrincipal.BtnVEN059.Enabled:= True;
      61:  FrmPrincipal.BtnVEN061.Enabled:= True;
      62:  FrmPrincipal.BtnVEN062.Enabled:= True;
      63:  FrmPrincipal.BtnVEN063.Enabled:= True;
      64:  FrmPrincipal.BtnVEN064.Enabled:= True;
      65:  FrmPrincipal.BtnVEN065.Enabled:= True;
      66:  FrmPrincipal.BtnVEN066.Enabled:= True;
//      67:  FrmPrincipal.BtnVEN067.Enabled:= True;
      68:  FrmPrincipal.BtnVEN068.Enabled:= True;
      71:  FrmPrincipal.BtnVEN071.Enabled:= True;
      72:  FrmPrincipal.BtnVEN072.Enabled:= True;
      73:  FrmPrincipal.BtnVEN073.Enabled:= True;
      74:  FrmPrincipal.BtnVEN074.Enabled:= True;
      75:  FrmPrincipal.BtnVEN075.Enabled:= True;
//      76:  FrmPrincipal.BtnControleCaixas.Enabled:= True;
    end;

    qryConsulta.Next;
  end;

  if BtnVEN029.Enabled = True then
  begin
    BtnCadCidades.Enabled        := True;
    BtnCadEstados.Enabled        := True;
    BtnCadPaises.Enabled         := True;
    BtnCadBairros.Enabled        := True;
    BtnCadRegGeo.Enabled         := True;
    BtnCadRegInter.Enabled       := True;
    BtnCadTipoLogradouro.Enabled := True;
  end
  else
  begin
    ImgVEN029.Enabled := False;
    ImgVEN029.Visible := False;
  end;

  if BtnVEN030.Enabled = True then
  begin
    BtnCadRegLog.Enabled       := True;
    BtnCadSubRegLog.Enabled    := True;
    BtnCadRegSubRegLog.Enabled := True;
  end
  else
  begin
    ImgVEN030.Enabled := False;
    ImgVEN030.Visible := False;
  end;

  if BtnVEN033.Enabled = True then
  begin
    BtnCadTipoTransporte.Enabled      := True;
    BtnCadTipoVeiculo.Enabled         := True;
    BtnCadTipoTransportadores.Enabled := True;
    BtnCadRegiao.Enabled              := True;
  end
  else
  begin
    ImgVEN033.Enabled := False;
    ImgVEN033.Visible := False;
  end;

  if BtnVEN015.Enabled = True then
  begin
    BtnVEN015a.Enabled := True;
    BtnVEN015b.Enabled := True;
  end
  else
  begin
    ImgVEN015.Enabled := False;
    ImgVEN015.Visible := False;
  end;

  if BtnVEN054.Enabled = True then
  begin
    BtnLancamentos.Enabled    := True;
    BtnRelSaldo.Enabled       := True;
    BtnControleCaixas.Enabled := True;
  end
  else
  begin
    ImgVEN054.Enabled := False;
    ImgVEN054.Visible := False;
  end;

end;

procedure TFrmPrincipal.btnTesteClick(Sender: TObject);
begin
  HabilitarModulos(true);
end;

function TFrmPrincipal.ConsultarAcessos(idModulo, idUsuario: integer): TOraQuery;
var
  sql: string;
begin
  sql := 'SELECT * FROM SCT_DIREITOS_US WHERE ID_MODULO = :ID_MODULO AND ID_USUARIO = :ID_USUARIO';

  Result := DataAccess.ExecutarConsulta(DB, sql, ['ID_MODULO','ID_USUARIO'], [idModulo,idUsuario]);
end;

procedure TFrmPrincipal.AtualizarDataFaturamento(dataHoraServidor: TDateTime);
var
  sql: string;
  qryDataFaturamento: TOraQuery;
  qrySchemas: TOraQuery;
  dataFaturamento: TDateTime;
begin

    if ( gi_Filial = 6) or (gi_Filial = 9 ) then
    begin
       sql := 'SELECT USUARIO, CASE WHEN ID_BASE in (5,8) then '' '' ELSE DATABASE_LINK END DATABASE_LINK FROM CA_BASE WHERE FL_ATU_DT_FATU = :AtualizaDataFaturamento AND ID_BASE = :ID_BASE ORDER BY FILIAL';
       qrySchemas := DataAccess.ExecutarConsulta(DB, sql, ['AtualizaDataFaturamento','ID_BASE'], ['S', IntToStr( gi_empresa) ]);
    end
    else
    begin
          sql := 'SELECT USUARIO, DATABASE_LINK FROM CA_BASE WHERE FL_ATU_DT_FATU = :AtualizaDataFaturamento AND ID_BASE = :ID_BASE ORDER BY FILIAL';
          qrySchemas := DataAccess.ExecutarConsulta(DB, sql, ['AtualizaDataFaturamento','ID_BASE'], ['S', IntToStr( gi_empresa) ]);
    end;


    sql := '';

    //Percorre todos os esquemas, consultando a data de faturamento
    while not qrySchemas.Eof do
    begin
      sql := sql +
        'SELECT DT_FATUDOCU FROM ' +
        qrySchemas.FieldByName('USUARIO').AsString +
        '.SISTEMA_PARAMETRO' +
        qrySchemas.FieldByName('DATABASE_LINK').AsString;

      qrySchemas.Next;

      if not qrySchemas.Eof then
      begin
        sql := sql + ' UNION ';
      end;
    end;

    if ( sql <> '' ) then
    begin
         //Adiciona ordenação por data de faturamento (menor primeiro)
         sql := sql + ' ORDER BY DT_FATUDOCU';

         qryDataFaturamento := DataAccess.ExecutarConsulta(DB, sql);
         dataFaturamento := qryDataFaturamento.FieldByName('DT_FATUDOCU').Value;

         dataHoraServidor := StrToDate( formatdatetime( 'dd/mm/yyyy', dataHoraServidor)) ;

         //Caso a data do servidor seja maior que a menor data de faturamento
         //if dataHoraServidor > dataFaturamento then
        // begin
           ExecutarAtualizacaoDataFaturamento(qrySchemas, dataHoraServidor);
        // end;
    end;
end;

procedure TFrmPrincipal.ExecutarAtualizacaoDataFaturamento(qrySchemas: TOraQuery; dataHoraServidor: TDateTime);
var
  sql: string;
begin
  qrySchemas.First;

  while not qrySchemas.Eof do
  begin
    sql := 'UPDATE ' +
      qrySchemas.FieldByName('USUARIO').AsString +
      '.SISTEMA_PARAMETRO' +
      qrySchemas.FieldByName('DATABASE_LINK').AsString +
      ' SET DT_FATUDOCU = TO_DATE(:DataFaturamento, ' + QuotedStr('DD/MM/YYYY') + ')';

    DataAccess.ExecutarSQL(DB, sql, 'DataFaturamento', dataHoraServidor);
    qrySchemas.Next;
  end;
end;

procedure TFrmPrincipal.EfetuarLogin;
var
  IPLocal : String;
begin
  Try
    Try
      GlbVersao := '1.23.34';
      IPLocal := GetIP ;
      frmSenha := TfrmSenha.Create(Self, 9, GlbVersao);
      frmSenha.LogUsua := gs_LogUsua;
      frmSenha.PSenha  := Senha;
      frmSenha.PId_Base := gi_empresa ;
      frmSenha.PIPLocal := IPLocal;
      frmSenha.ShowModal;

      gs_Empresa := frmSenha.Empresa;
      gi_empresa := frmSenha.CodigoBase;
      gi_Filial  := frmSenha.Filial;
      gs_CNPJ2   := copy(SoNumeros(frmSenha.Cnpj),1,8);
      gs_Unidade := frmSenha.Descricao;
      gs_CNPJ    := frmSenha.Cnpj;
      gs_Host    := frmSenha.Host;
      gs_Porta   := frmSenha.Porta;

      if ( frmSenha.LoginUsuario <> '' ) then
         gs_LogUsua := frmSenha.LoginUsuario;

      if ( frmSenha.Psenha <> '' ) then
        Senha := frmSenha.PSenha;

      gs_NomeUsuario := frmSenha.NomeUsuario;
      gi_IdenUsua := frmSenha.CodigoUsuario;
      Usuario := frmSenha.CodigoUsuario;
      gi_IdenModu  := frmSenha.CodigoModulo;
      gi_CodiUsuaSist := frmSenha.SistemaUsuarioCodigoUsuario;
      gs_Email := frmSenha.Email;
      gs_EmailPass := frmSenha.EmailPass;

      gs_NomeReduUsuaSist := frmSenha.SistemaUsuarioNomeReduzido;
      gb_SeguAtiv := True;
      dataHoraServidor := frmSenha.DataHoraServidor;
      dadosCadastraisFilial := frmSenha.DadosCadastraisFilial;

      if frmSenha.ConnectionString <> '' then
      begin
        DB.Disconnect;
        DB.ConnectString := frmSenha.ConnectionString;

        // Acessando Dacar via VPN
        if ( PosEx('10.0.1.',IPLocal,0 )>0 ) OR( PosEx('10.0.10.',IPLocal,0 )>0 ) then
        begin
          if ( PosEx('192.168.0.250', DB.ConnectString ) > 0 ) then
             DB.ConnectString :=  StringReplace(DB.ConnectString ,'192.168.0.250','189.0.0.202',[]);
        end;

        DB.Options.DateFormat   := 'DD/MM/YYYY';//'DD-MON-RR';
        DB.Options.DateLanguage := 'PORTUGUESE';//'ENGLISH';

        DB.Connect;

        qryTemp.Close;
        qryTemp.SQL.Clear;
        qryTemp.SQL.Add( ' Select sysdate as Data From dual ' ) ;
        qryTemp.Open;

        gs_Filial := MidStr(dadosCadastraisFilial.Cnpj,11,2) +'-'+ RightStr( dadosCadastraisFilial.Cnpj,2)  + ' - '+ dadosCadastraisFilial.NomeFilial   ;

        if frmSenha.ConnectionString <> '' then
        begin
          if ( frmSenha.CodigoBase  in [66, 67, 68, 69]  )  then
          begin
            FrmPrincipal.Caption:= 'Comercial - V. '+GlbVersao+ ' - Conectado na base ' + gs_Unidade +' - Filial : '+ gs_Filial;
            FrmPrincipal.StatusBar1.Panels[4].Text := gs_Unidade +' - '+ gs_Filial ;
          end
          else if ( frmSenha.CodigoBase = 2 ) then
          begin
            FrmPrincipal.Caption:= 'Transportadora Calma Ltda - Módulo Comercial';
          end
          else
          begin
            FrmPrincipal.Caption:= 'Avícola Dacar Ltda - Módulo Comercial';
          end;

          FrmPrincipal.StatusBar1.Panels[0].Text := 'Versão do Módulo: ' + GlbVersao;
          FrmPrincipal.StatusBar1.Panels[1].Text := gs_NomeUsuario ;
          FrmPrincipal.StatusBar1.Panels[2].Text := qryTemp.FieldByname('Data').AsString;
          FrmPrincipal.StatusBar1.Panels[3].Text := GetIP;

          ControlarAcesso(gi_IdenModu, gi_IdenUsua);
          AtualizarDataFaturamento(dataHoraServidor );
        end;
      end
      else
      begin
        Application.Terminate;
      end;

    except
      Close;
    end;
  Finally
    FreeAndNil(frmSenha);
  End;
end;

procedure TFrmPrincipal.VEN043Click(Sender: TObject);
begin
  try
    VEN043.Enabled   := False;
    FrmLoteIntegrado := TFrmLoteIntegrado.Create(Self);
    FrmLoteIntegrado.Show;
    VerificaFormAberto;
  except;
    VEN043.Enabled   := True;
    FrmLoteIntegrado.Free;
  end;
end;

procedure TFrmPrincipal.VEN044Click(Sender: TObject);
begin
  try
    VEN044.Enabled   := False;
    FrmProgRacao := TFrmProgRacao.Create(Self);
    FrmProgRacao.Show;
    VerificaFormAberto;
  except;
    VEN044.Enabled   := True;
    FrmProgRacao.Free;
  end;
end;

procedure TFrmPrincipal.VEN045Click(Sender: TObject);
begin
  try
    VEN045.Enabled   := False;
    FrmResultGranjeiro := TFrmResultGranjeiro.Create(Self);
    FrmResultGranjeiro.Show;
    VerificaFormAberto;
  except;
    VEN045.Enabled   := True;
    FrmResultGranjeiro.Free;
  end;
end;

procedure TFrmPrincipal.VEN046Click(Sender: TObject);
begin
  try
    VEN046.Enabled   := False;
    FrmConsApanha := TFrmConsApanha.Create(Self);
    FrmConsApanha.Show;
    VerificaFormAberto;
  except;
    VEN046.Enabled   := True;
    FrmConsApanha.Free;
  end;
end;

procedure TFrmPrincipal.VEN047Click(Sender: TObject);
begin
  try
    VEN047.Enabled   := False;
    FrmConsVendaFrangoAbate := TFrmConsVendaFrangoAbate.Create(Self);
    FrmConsVendaFrangoAbate.Show;
    VerificaFormAberto;
  except;
    VEN047.Enabled   := True;
    FrmConsVendaFrangoAbate.Free;
  end;
end;

procedure TFrmPrincipal.VEN048Click(Sender: TObject);
begin
  try
    VEN048.Enabled   := False;
    FrmParametrosIntegrado := TFrmParametrosIntegrado.Create(Self);
    FrmParametrosIntegrado.Show;
    VerificaFormAberto;
  except;
    VEN048.Enabled   := True;
    FrmParametrosIntegrado.Free;
  end
end;

procedure TFrmPrincipal.VEN049Click(Sender: TObject);
begin
  try
    VEN049.Enabled   := False;
    FrmConsRemessaRacao := TFrmConsRemessaRacao.Create(Self);
    FrmConsRemessaRacao.Show;
    VerificaFormAberto;
  except;
    VEN049.Enabled   := True;
    FrmConsRemessaRacao.Free;
  end
end;

procedure TFrmPrincipal.VEN050Click(Sender: TObject);
begin
    try
      VEN050.Enabled   := False;
      FrmVendedorCliente := TFrmVendedorCliente.Create(Self);
      FrmVendedorCliente.Show;
      VerificaFormAberto;
    except;
      VEN050.Enabled   := True;
      FrmVendedorCliente.Free;
    end;
end;

procedure TFrmPrincipal.VEN051Click(Sender: TObject);
begin
    try
      VEN051.Enabled   := False;
      FrmConsultaEstoque := TFrmConsultaEstoque.Create(Self);
      FrmConsultaEstoque.Show;
      VerificaFormAberto;
    except;
      VEN051.Enabled   := True;
      FrmConsultaEstoque.Free;
    end;
end;

procedure TFrmPrincipal.VEN052Click(Sender: TObject);
begin
    try
      VEN052.Enabled   := False;
      FrmConferenciaCarga := TFrmConferenciaCarga.Create(Self);
      FrmConferenciaCarga.Show;
      VerificaFormAberto;
    except;
      VEN052.Enabled   := True;
      FrmConferenciaCarga.Free;
    end;
end;

procedure TFrmPrincipal.VEN053Click(Sender: TObject);
begin
    try
      VEN053.Enabled := False;
      FrmDiferencaPreco := TFrmDiferencaPreco.Create(Self);
      FrmDiferencaPreco.Show;
      VerificaFormAberto;
    except;
      VEN053.Enabled := True;
      FrmDiferencaPreco.Free;
    end;

end;

Function TFrmPrincipal.DiaUtil(pd_Dia: TDateTime): TDateTime;
var
  ld_Data: TDateTime;
begin
    ld_Data := pd_Dia;

    // Laço para encontrar o próximo dia util
    // Obs.: Se a data recebida for um dia útil, ela própria será o retorno
    while True do
    begin
        // se for sabado ou domingo
        if DayOfWeek(ld_Data) in [1,7] then
        begin
            ld_Data := ld_Data + 1;
            Continue;
        end
       { else
        begin
          // Ajustamos o resultado
          Result := ld_Data;
          Break;
        end};

        // Pesquisamos se a data é feriado
        QryTemp.Close;
        QryTemp.SQL.CLEAR;
        QryTemp.SQL.Text := 'SELECT GN_DATAFERI                 '+
                            '  FROM FERIADO                     '+
                            ' WHERE GN_DATAFERI = :GN_DATAFERI  ';

        QryTemp.ParamByName('GN_DATAFERI').AsString := FormatDateTime('dd/mm', ld_Data);
        QryTemp.Open;

        // Se for feriado
        if qryTemp.RecordCount > 0 then
        begin
          ld_Data := ld_Data + 1;
          Continue;
        end
        else
        begin
          // Ajustamos o resultado
          Result := ld_Data;
          Break;
        end;

    end;

    // Destruimos a query
    qryTemp.Close;
   //  qryTemp.Free;

end;

// MOVIMENTO DE CAIXA PLASTICA
procedure TFrmPrincipal.VEN054Click(Sender: TObject);
begin
//    try
//      VEN054.Enabled   := False;
//      FrmControleCaixas := TFrmControleCaixas.Create(Self);
//      FrmControleCaixas.Show;
//    except;
//      VEN054.Enabled   := True;
//      FrmControleCaixas.Free;
//    end
end;

// RELATÓRIO DE SALDO DE CAIXA PLASTICA
procedure TFrmPrincipal.VEN055Click(Sender: TObject);
begin
    try
      VEN055.Enabled   := False;
      FrmSaldoCaixas := TFrmSaldoCaixas.Create(Self);
      FrmSaldoCaixas.Show;
      VerificaFormAberto;
    except;
      VEN055.Enabled   := True;
      FrmSaldoCaixas.Free;
    end
end;

{NOME: FABRICIO DATA:30/01/2018 MOTIVO: RELATORIO DE VENDAS DIARIA. LISTAGEM EMITIDA PELO VALMOR DIARIAMENTE}
procedure TFrmPrincipal.VEN056Click(Sender: TObject);
begin
  try
    VEN056.Enabled   := False;
    frmVendasDiaria := TfrmVendasDiaria.Create(Self);
    frmVendasDiaria.Show;
    VerificaFormAberto;
  except;
    VEN056.Enabled   := True;
    frmVendasDiaria.Free;
  end
end;


{NOME: FABRICIO DATA:25/01/2018 MOTIVO: VALMOR SOLICITOU PARA QUE FICASSE TUDO NA MESMA OPÇÃO DE MENU}
// MOVIMENTO DE CAIXA PLASTICA
procedure TFrmPrincipal.mnuLancamentoCaixaPlasticaClick(Sender: TObject);
begin
  try
    VEN054.Enabled   := False;
    FrmControleCaixas := TFrmControleCaixas.Create(Self);
    FrmControleCaixas.Show;
    VerificaFormAberto;
  except;
    VEN054.Enabled   := True;
    FrmControleCaixas.Free;
  end
end;

// RELATÓRIO DE SALDO DE CAIXA PLASTICA
procedure TFrmPrincipal.mnuRelatorio_de_SaldoClick(Sender: TObject);
begin
  try
    VEN055.Enabled   := False;
    FrmSaldoCaixas := TFrmSaldoCaixas.Create(Self);
    FrmSaldoCaixas.Show;
    VerificaFormAberto;
  except;
    VEN055.Enabled   := True;
    FrmSaldoCaixas.Free;
  end
end;

procedure TFrmPrincipal.VEN057Click(Sender: TObject);
begin
  Try
    VEN057.Enabled:= False;
    frmLanctoPesoBalancaoCarga:=TfrmLanctoPesoBalancaoCarga.Create(Self);
    frmLanctoPesoBalancaoCarga.Show;
    VerificaFormAberto;
  Except;
    VEN057.Enabled:= True;
    frmLanctoPesoBalancaoCarga.Free;
  End;
end;

procedure TFrmPrincipal.VEN058Click(Sender: TObject);
begin
  Try
    VEN058.Enabled:= False;
    FrmCorteProdutos:=TFrmCorteProdutos.Create(Self);
    FrmCorteProdutos.Show;
    VerificaFormAberto;
  Except;
    VEN058.Enabled:= True;
    FrmCorteProdutos.Free;
  End;
end;

procedure TFrmPrincipal.VEN059Click(Sender: TObject);
begin
 Try
    VEN059.Enabled:= False;
    FrmOcorrencias:=TFrmOcorrencias.Create(Self);
    FrmOcorrencias.Show;
    VerificaFormAberto;
 Except;
    VEN059.Enabled:= True;
    FrmOcorrencias.Free;
 End;
end;

procedure TFrmPrincipal.VEN061Click(Sender: TObject);
begin
 Try
    VEN061.Enabled:= False;
    FrmSelQuebr:=TFrmSelQuebr.Create(Self);
    FrmSelQuebr.Show;
    VerificaFormAberto;
 Except;
    VEN061.Enabled:= True;
    FrmSelQuebr.Free;
 End;
end;

procedure TFrmPrincipal.VEN062Click(Sender: TObject);
begin
  Try
    VEN062.Enabled:= False;
    FrmControleEntregaCargas:=TFrmControleEntregaCargas.Create(Self);
    FrmControleEntregaCargas.Show;
    VerificaFormAberto;
  Except;
    VEN062.Enabled:= True;
    FrmControleEntregaCargas.Free;
  End;
end;

procedure TFrmPrincipal.VEN063Click(Sender: TObject);
begin
  Try
    VEN063.Enabled:= False;
    frmDocumentacaoNFE:=TfrmDocumentacaoNFE.Create(Self);
    frmDocumentacaoNFE.Show;
    VerificaFormAberto;
  Except;
    VEN063.Enabled:= True;
    frmDocumentacaoNFE.Free;
  End;
end;

procedure TFrmPrincipal.VEN064Click(Sender: TObject);
begin
  Try
    VEN064.Enabled:= False;
    frmPedidosPosHorario:=TfrmPedidosPosHorario.Create(Self);
    frmPedidosPosHorario.Show;
    VerificaFormAberto;
  Except;
    VEN064.Enabled:= True;
    frmPedidosPosHorario.Free;
  End;
end;

procedure TFrmPrincipal.VEN065Click(Sender: TObject);
begin
  Try
    VEN065.Enabled:= False;
    frmAlteraContaPedido:=TfrmAlteraContaPedido.Create(Self);
    frmAlteraContaPedido.Show;
    VerificaFormAberto;
  Except;
    VEN065.Enabled:= True;
    frmAlteraContaPedido.Free;
  End;
end;

procedure TFrmPrincipal.VEN066Click(Sender: TObject);
begin
  Try
    VEN066.Enabled:= False;
    frmPedidosAbaixoTabela:=TfrmPedidosAbaixoTabela.Create(Self);
    frmPedidosAbaixoTabela.Show;
    VerificaFormAberto;
  Except;
    VEN066.Enabled:= True;
    frmPedidosAbaixoTabela.Free;
  End;
end;

procedure TFrmPrincipal.VEN067Click(Sender: TObject);
begin
  Try
    VEN067.Enabled:= False;
    FrmRelVendasVendedorPercentual:=TFrmRelVendasVendedorPercentual.Create(Self);
    FrmRelVendasVendedorPercentual.Show;
    VerificaFormAberto;
  Except;
    VEN067.Enabled:= True;
    FrmRelVendasVendedorPercentual.Free;
  End;
end;

procedure TFrmPrincipal.CadastrodeRegio1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Try
    CadastrodeRegio1.Enabled:= False;
    FrmCadRegiao:=TFrmCadRegiao.Create(Self);
    FrmCadRegiao.Show;
    VerificaFormAberto
  Except;
    CadastrodeRegio1.Enabled:= True;
    FrmCadRegiao.Free;
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrmPrincipal.VEN015bClick(Sender: TObject);
begin
  try
    VEN015b.Enabled:= False;
    FrmSelProdVend:=TFrmSelProdVend.Create(Self);
    FrmSelProdVend.Show;
    VerificaFormAberto;
  except;
    VEN015b.Enabled:= True;
    FrmSelProdVend.Free;
  end;
end;

procedure TFrmPrincipal.VEN015aClick(Sender: TObject);
begin
  try
    VEN015a.Enabled:= False;
    frmVendasVendedorCliente:=TfrmVendasVendedorCliente.Create(Self);
    frmVendasVendedorCliente.Show;
    VerificaFormAberto;
  except;
    VEN015a.Enabled:= True;
    frmVendasVendedorCliente.Free;
  end;
end;


procedure TFrmPrincipal.VEN073Click(Sender: TObject);
begin
  try
    VEN073.Enabled:= False;
    frmReprogramarDevolucao:= TfrmReprogramarDevolucao.Create(Self);
    frmReprogramarDevolucao.Show;
    VerificaFormAberto
  except;
    VEN073.Enabled:= True;
    frmReprogramarDevolucao.Free;
  end;
end;

procedure TFrmPrincipal.VEN074Click(Sender: TObject);
begin
  try
    VEN074.Enabled:= False;
    frmEstoque:= TFrmEstoque.Create(Self);
    FrmEstoque.Show;
    VerificaFormAberto;
  except
    VEN074.Enabled:= True;
    FrmEstoque.Free;
  end;
end;

procedure TFrmPrincipal.VEN075Click(Sender: TObject);
begin
  try
    VEN075.Enabled:= False;
    FrmRelVendaCliente:= TFrmRelVendaCliente.Create(Self);
    FrmRelVendaCliente.Show;
    VerificaFormAberto;
  except
    VEN075.Enabled:= True;
    FrmRelVendaCliente.Free;
  end;
end;

procedure TFrmPrincipal.VEN076Click(Sender: TObject);
begin
  try
    VEN076.Enabled:= False;
    FrmEntradaSaidaCaixas := TFrmEntradaSaidaCaixas.Create(Self);
    FrmEntradaSaidaCaixas.Show;
    VerificaFormAberto
  except
    VEN076.Enabled:= True;
    FrmEntradaSaidaCaixas.Free;
  end;
end;

procedure TFrmPrincipal.VerificaFormAberto;
var
  i, j :Integer;
begin
  for i := 0 to Screen.FormCount - 1 do
  begin
    if (Screen.Forms[i].Name <> 'Fenha') and (Screen.Forms[i].Name <> 'FrmPrincipal') then
    begin
      for j := 0 to (FrmPrincipal.ComponentCount -1) do
        if (FrmPrincipal.Components[j].ClassName) = 'TSplitView' then
          if TSplitView(FrmPrincipal.Components[j]).Opened = True then
            TSplitView(FrmPrincipal.Components[j]).Opened := False;
    end;

  end;
end;

procedure TFrmPrincipal.AtualizaMenuLateral(Str: string);
var
  i: Integer;
begin
  for i := FrmPrincipal.ComponentCount -1 downto 0 do
  begin
    if (FrmPrincipal.Components[i] is TSplitView) and ((FrmPrincipal.Components[i] as TSplitView).Name = Str) then
    begin
      case AnsiIndexStr(Str, ['SplitMenuPrincipal', 'SplitSubMenuArquivo', 'SplitSubMenuVendas', 'SplitSubMenuTransporte', 'SplitSubMenuImpressão', 'SplitSubMenuManutencao', 'SplitSubMenuLogistica', 'SplitSubMenuAjuda']) of
        0:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = True then
            (FrmPrincipal.Components[i] as TSplitView).Opened := False
          else
            (FrmPrincipal.Components[i] as TSplitView).Opened := True;
        end;

        1:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = True then
            (FrmPrincipal.Components[i] as TSplitView).Opened := False
          else
            (FrmPrincipal.Components[i] as TSplitView).Opened := True;
        end;

        2:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = True then
            (FrmPrincipal.Components[i] as TSplitView).Opened := False
          else
            (FrmPrincipal.Components[i] as TSplitView).Opened := True;
        end;

        3:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = True then
            (FrmPrincipal.Components[i] as TSplitView).Opened := False
          else
            (FrmPrincipal.Components[i] as TSplitView).Opened := True;
        end;

        4:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = True then
            (FrmPrincipal.Components[i] as TSplitView).Opened := False
          else
            (FrmPrincipal.Components[i] as TSplitView).Opened := True;
        end;

        5:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = True then
            (FrmPrincipal.Components[i] as TSplitView).Opened := False
          else
            (FrmPrincipal.Components[i] as TSplitView).Opened := True;
        end;

        6:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = True then
            (FrmPrincipal.Components[i] as TSplitView).Opened := False
          else
            (FrmPrincipal.Components[i] as TSplitView).Opened := True;
        end;

        7:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = True then
            (FrmPrincipal.Components[i] as TSplitView).Opened := False
          else
            (FrmPrincipal.Components[i] as TSplitView).Opened := True;
        end;
      end;
    end;

    if (FrmPrincipal.Components[i] is TSplitView) and ((FrmPrincipal.Components[i] as TSplitView).Name <> Str) then
    begin
      (FrmPrincipal.Components[i] as TSplitView).Opened := False;
    end;
  end;

end;


procedure TFrmPrincipal.AtualizaImagem(Str: string);
var
  i: Integer;
begin
  for i := FrmPrincipal.ComponentCount -1 downto 0 do
  begin
    if (FrmPrincipal.Components[i] is TSplitView) and ((FrmPrincipal.Components[i] as TSplitView).Name = Str) then
    begin
      case AnsiIndexStr(Str, ['SplitMenuPrincipal', 'SplitSubMenuArquivo', 'SplitSubMenuVendas', 'SplitSubMenuTransporte', 'SplitSubMenuImpressão', 'SplitSubMenuManutencao', 'SplitSubMenuLogistica', 'SplitSubMenuAjuda']) of
        0:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = False then
            ACMenu.ImageIndex := 0
          else
            ACMenu.ImageIndex := 1;
        end;

        1:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = False then
            ACArquivo.ImageIndex := 2
          else
            ACArquivo.ImageIndex := 3;
        end;

        2:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = False then
            ACVendas.ImageIndex := 4
          else
            ACVendas.ImageIndex := 5;

          if (SplitSubMenuPedidoDevolucao.Opened = True) or (SplitSubMenuCadatroLocalidades.Opened = True) or (SplitSubMenuCadastroLogistica.Opened = True) then
            ACVendas.ImageIndex := 5;
        end;

        3:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = False then
            ACTransporte.ImageIndex := 6
          else
            ACTransporte.ImageIndex := 7;

          if SplitSubMenuCadTransporte.Opened = True then
            ACTransporte.ImageIndex := 7;

        end;

        4:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = False then
            ACImpressão.ImageIndex := 8
          else
            ACImpressão.ImageIndex := 9;

          if SplitSubMenuRelVendasVendedor.Opened = True then
            ACImpressão.ImageIndex := 9;
        end;

        5:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = False then
            ACManutencao.ImageIndex := 10
          else
            ACManutencao.ImageIndex := 11;

          if SplitSubMenuControleCaixas.Opened = True then
            ACManutencao.ImageIndex := 11;
        end;

        6:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = False then
            ACLogistica.ImageIndex := 12
          else
            ACLogistica.ImageIndex := 13;
        end;

        7:
        begin
          if (FrmPrincipal.Components[i] as TSplitView).Opened = False then
            ACAjuda.ImageIndex := 14
          else
            ACAjuda.ImageIndex := 15;
        end;

      end;
    end;
  end;

end;

end.
