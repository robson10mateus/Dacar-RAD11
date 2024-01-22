unit uFrmSenha;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBAccess, Ora, Buttons, ExtCtrls, Vcl.DBCtrls,
  uDadosCadastraisFilial, uDmSenha, Winapi.Windows, PSAPI;


type
  TfrmSenha = class(TForm)
    dsConexao: TDataSource;
    dsFilial: TDataSource;
    Panel1: TPanel;
    lblConexao: TLabel;
    lblCnpj: TLabel;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    cbbConexao: TDBLookupComboBox;
    cbbFilial: TDBLookupComboBox;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    rgOrdenacao: TRadioGroup;
    rgFiltro: TRadioGroup;
    Mem_Obs: TDBMemo;
    lbl_Obs: TLabel;
    lblOrdenacao: TLabel;
    lblUnidades: TLabel;
    Panel2: TPanel;
    imgLogo: TImage;
    btnResetSenha: TSpeedButton;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure dsConexaoDataChange(Sender: TObject; Field: TField);
    procedure rgFiltroClick(Sender: TObject);
    procedure rgOrdenacaoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnResetSenhaClick(Sender: TObject);

  private
    _cnpj: string;
    _codigoModulo: Integer;
    _codigoUsuario: Integer;
    _connectionString: string;
    _connectionStringRH: string;
    _dataHoraServidor: TDateTime;
    _descricao: string;
    _empresa: string;
    _codigoBase: Integer;
    _filial: Integer;
    _inscricaoEstadual: string;
    _loginUsuario: string;
    _nomeUsuario: string;
    _senha: string;
    _sistemaUsuarioCodigoUsuario: Integer;
    _sistemaUsuarioNomeReduzido: string;
    _unidadeNegocio: string;
    _versaoModulo: string;
    _dadosCadastraisFilial: TDadosCadastraisFilial;
    _schema: string;
    _Email: string;
    _EmailPass: string;
    _Host: string;
    _Porta: string;

    procedure AtribuirDadosEmpresaFilial;
    procedure AtualizarComboBoxFilial;
    procedure ConsultarDataHoraServidor;
    procedure ConsultarUsuarioSistema(codigoUsuario: Integer);
    procedure FiltrarConexao(filtro: Integer);
    procedure FiltrarFilial(filtro: Integer);
    procedure GravarHorarioLoginBanco(codigoUsuario: Integer; dataHoraLogin: TDateTime);
    procedure OrdenarConexaoFilial(selecao: Integer);
    procedure PreencherDadosUsuario(consultaOracle: TOraQuery);
    procedure ValidarLogin(usuario, senha: string);
    procedure ValidarPreenchimentoCampos;
    procedure VerificarVersaoModulo(codigoModulo: Integer; versaoModulo: string);
    procedure VerificarPermissaoUsuario(codigoUsuario: Integer; codigoModulo: Integer);
    function ConsultarDadosCadastraisFilial(cnpj: string): TDadosCadastraisFilial;

    Function VerficarSeAplicaticoEstarRodandoPeloNomeDoExecutavel(Nome:String):Boolean;

  public
    LogUsua, PSenha, PIPLocal :String;
    PId_Base : Integer;
    property Cnpj: string read _cnpj;
    property CodigoModulo: Integer read _codigoModulo;
    property CodigoUsuario: Integer read _codigoUsuario;
    property ConnectionString: string read _connectionString;
    property ConnectionStringRh: string read _connectionStringRH;
    property DataHoraServidor: TDateTime read _dataHoraServidor;
    property Descricao: string read _descricao;
    property Empresa: string read _empresa;
    property CodigoBase: Integer read _codigoBase;
    property Filial: Integer read _filial;
    property InscricaoEstadual: string read _inscricaoEstadual;
    property LoginUsuario: string read _loginUsuario;
    property NomeUsuario: string read _nomeUsuario;
    property SistemaUsuarioCodigoUsuario: Integer read _sistemaUsuarioCodigoUsuario;
    property SistemaUsuarioNomeReduzido: string read _sistemaUsuarioNomeReduzido;
    property UnidadeNegocio: string read _unidadeNegocio;
    property VersaoModulo: string read _versaoModulo;
    property DadosCadastraisFilial: TDadosCadastraisFilial read _dadosCadastraisFilial;
    property Schema: string read _schema;
    property Email: string read _Email;
    property EmailPass: string read _EmailPass;
    property Host: string read _Host;
    property Porta: string read _Porta;

    //Construtor sobrepoe o construtor padrao de tela, para que sejam passados os parametros do modulo
    constructor Create(AOwner: TComponent; modulo: Integer; versaoModulo: string); reintroduce;
  end;

var
  frmSenha: TfrmSenha;

implementation
  uses uUtil, Math, uFrmAlteraSenha, StrUtils;

{$R *.dfm}

procedure TfrmSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(dmSenha);
end;

procedure TfrmSenha.FormCreate(Sender: TObject);
begin
  dmSenha := TdmSenha.Create(Self);
  dmSenha.Qry_Aux.Close;
  dmSenha.Qry_Aux.Open;
  OrdenarConexaoFilial(rgOrdenacao.ItemIndex);

end;

procedure TfrmSenha.btnCancelarClick(Sender: TObject);
begin
  try
    Application.Terminate;
//    Application.MainForm.Close;
  except
    Application.ShowMainForm := False;
    Application.Terminate;
  end;
end;

procedure TfrmSenha.btnOkClick(Sender: TObject);
begin

  ValidarPreenchimentoCampos;
  ValidarLogin(edtUsuario.Text, edtSenha.Text);
  VerificarPermissaoUsuario(_codigoUsuario, _codigoModulo);
  VerificarVersaoModulo(_codigoModulo, _versaoModulo);
  ConsultarDataHoraServidor;
  GravarHorarioLoginBanco(_codigoUsuario, _dataHoraServidor);
  AtribuirDadosEmpresaFilial;
  dmSenha.DB.Options.DateFormat   := 'DD/MM/YYYY'; //'DD-MON-RR';
  dmSenha.DB.Options.DateLanguage := 'PORTUGUESE'; //'ENGLISH';
  dmSenha.DB.ConnectString := ConnectionString;
  dmSenha.DB.Connected := False;
  dmSenha.DB.Connected := True;
  ConsultarUsuarioSistema(_codigoUsuario);

  Close;
end;

procedure TfrmSenha.dsConexaoDataChange(Sender: TObject; Field: TField);
begin
  if cbbConexao.KeyValue <> null then
  begin
    FiltrarFilial(cbbConexao.KeyValue);
  end;

  AtualizarComboBoxFilial;
end;

procedure TfrmSenha.OrdenarConexaoFilial(selecao: Integer);
begin
  try
    if selecao = 0 then
    begin
      dmSenha.qryConexao.SetOrderBy('DESCR');
      dmSenha.qryFilial.SetOrderBy('DESCR');
    end
    else
    begin
//      dmSenha.qryConexao.SetOrderBy('NOME_CNPJ');
//      dmSenha.qryFilial.SetOrderBy('NOME_CNPJ');

      dmSenha.qryConexao.SQL.Add('order by NOME_CNPJ');
      dmSenha.qryFilial.SQL.Add('order by NOME_CNPJ');
    end;

    dmSenha.qryConexao.Open;
  except
    on E: EDatabaseError do
    begin
      MessageDlg('Houve um erro ao acessar o banco de dados. ' + #13 + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TfrmSenha.rgOrdenacaoClick(Sender: TObject);
begin
  OrdenarConexaoFilial(rgOrdenacao.ItemIndex);
end;

procedure TfrmSenha.FiltrarConexao(filtro: Integer);
begin
  try
    case filtro of
      0:
      begin
        dmSenha.qryConexao.Filtered := False;
      end;
    else
      //Aplica o filtro caso a opcao "Todos" nao esteja selecionada
      dmSenha.qryConexao.Filter := 'Filtro = ' + IntToStr(filtro - 1);
      dmSenha.qryConexao.Filtered := True;
    end;

    dmSenha.qryConexao.Open;
    cbbConexao.KeyValue := 0;
    cbbFilial.KeyValue := 0;
    cbbFilial.Enabled := False;
    AtualizarComboBoxFilial;
  except
    on E: EDatabaseError do
    begin
      MessageDlg('Houve um erro ao acessar o banco de dados. ' + #13 + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TfrmSenha.rgFiltroClick(Sender: TObject);
begin
  FiltrarConexao(rgFiltro.ItemIndex);
end;

procedure TfrmSenha.FiltrarFilial(filtro: Integer);
begin
  try
    dmSenha.qryFilial.Filtered := False;

    if(Integer(cbbConexao.KeyValue) in [66, 67, 68, 69]) then
    begin
      dmSenha.qryFilial.Filter := 'CNPJ like ' + QuotedStr(FiltrarNumeros(Copy(dmSenha.qryConexaoCNPJ.Value, 0, 13)) + '*');
      cbbFilial.Enabled := True;
    end
    else
    begin
      dmSenha.qryFilial.Filter := 'CNPJ = ' + QuotedStr(FiltrarNumeros(dmSenha.qryConexaoCNPJ.Value));
      cbbFilial.Enabled := False;
    end;

    dmSenha.qryFilial.Filtered := True;
    cbbFilial.KeyValue := dmSenha.qryConexaoFILIAL.Value;

  except
    on E: Exception do
    begin
      MessageDlg('Houve um erro ao acessar o banco de dados. ' + #13 + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TfrmSenha.ValidarPreenchimentoCampos;
var
  erro: Boolean;
  mensagemErro: TStringList;
begin
  erro := False;

  try
    mensagemErro := TStringList.Create;
    mensagemErro.Add('Houveram erros ao efetuar o Login:');

    if cbbConexao.KeyValue = Null then
    begin
      mensagemErro.Add('- Conexão não foi selecionada;');
      erro := True;
    end;

    if cbbFilial.KeyValue = Null then
    begin
      mensagemErro.Add('- Filial não foi selecionada;');
      erro := True;
    end;

    if Trim(edtUsuario.Text) = '' then
    begin
      mensagemErro.Add('- Usuário não foi preenchido;');
      erro := True;
    end;

    if Trim(edtSenha.Text) = '' then
    begin
      mensagemErro.Add('- Senha não foi preenchida;');
      erro := True;
    end;

    if erro then
    begin
      MessageDlg(mensagemErro.Text, mtError, [mbOK], 0);
      Abort;
    end;
  finally
    FreeAndNil(mensagemErro);
  end;
end;

constructor TfrmSenha.Create(AOwner: TComponent; modulo: Integer; versaoModulo: string);
begin
  inherited Create(AOwner);
  _codigoModulo := modulo;
  _versaoModulo := versaoModulo;
end;

procedure TfrmSenha.VerificarVersaoModulo(codigoModulo: Integer; versaoModulo: string);
var
  consultaOracle: TOraQuery;
begin
  try
    consultaOracle := dmSenha.ConsultarVersaoModulo(codigoModulo);

    if versaoModulo <> consultaOracle.FieldByName('VERSAO').AsString then
    begin
      Application.MessageBox('É necessário atualização do Sistema.' +#10 + 'Na Área de Trabalho, clique duas vezes sobre o atalho "ATUALIZA SISTEMA".', PChar(frmSenha.Caption),MB_OK + MB_ICONINFORMATION);
      FreeAndNil(consultaOracle);
      Abort;
    end;
  finally
    FreeAndNil(consultaOracle);
  end;
end;

procedure TfrmSenha.ConsultarDataHoraServidor;
begin
  _dataHoraServidor := dmSenha.ConsultarDataHoraServidor;
end;

procedure TfrmSenha.ValidarLogin(usuario, senha: string);
var
  consultaOracle: TOraQuery;
begin
  consultaOracle := dmSenha.ConsultarLogin(usuario);

  if consultaOracle.IsEmpty then
  begin
    Application.MessageBox('          Usuário não cadastrado.         ', PChar(frmSenha.Caption),MB_OK + MB_ICONINFORMATION);
    Abort;
  end;

  if CriptografarSenha(senha) <> consultaOracle.FieldByName('SENHA').AsString then
  begin
    Application.MessageBox('          Senha Incorreta.          ', PChar(frmSenha.Caption),MB_OK + MB_ICONINFORMATION);
    Abort;
  end;

  if consultaOracle.FieldByName('ESTA_LIBERADO').AsString <> 'S' then
  begin
    MessageDlg('Usuário bloqueado. Entre em contato com o TI.', mtError, [mbOk], 0);
    Abort;
  end;

  if consultaOracle.FieldByName('VENCTO_SENHA').AsDateTime < _dataHoraServidor then
  begin
    Application.MessageBox('    Validade da senha expirada. Entre em contato com TI.    ', PChar(frmSenha.Caption),MB_OK + MB_ICONINFORMATION);
    Abort;
  end;

  PreencherDadosUsuario(consultaOracle);
  PSenha := Senha;
end;

procedure TfrmSenha.PreencherDadosUsuario(consultaOracle: TOraQuery);
begin
  with consultaOracle do
  begin
    _codigoUsuario := FieldByName('ID_USUARIO').AsInteger;
    _nomeUsuario := FieldByName('NOME_USUARIO').AsString;
    _loginUsuario := FieldByName('LOG_USUARIO').AsString;
    _senha := FieldByName('SENHA').AsString;
    _Email:= FieldByName('EMAIL_USUARIO').AsString;
    _EmailPass := FieldByName('EMAIL_SENHA').AsString;
  end;
end;

procedure TfrmSenha.GravarHorarioLoginBanco(codigoUsuario: Integer; dataHoraLogin: TDateTime);
begin
  dmSenha.GravarHorarioLogin(codigoUsuario, dataHoraLogin);
end;

procedure TfrmSenha.AtribuirDadosEmpresaFilial;
begin
  _empresa := dmSenha.qryConexao.FieldByName('EMPRESA').AsString;
  _codigoBase := dmSenha.qryConexao.FieldByName('ID_BASE').AsInteger;
  _filial := cbbFilial.KeyValue;
  dmSenha.qryFilial.Locate('FILIAL', _filial, [loCaseInsensitive]);
  _descricao := dmSenha.qryConexao.FieldByName('NOME_CNPJ').AsString;
  _connectionStringRh := dmSenha.qryConexao.FieldByName('CONEXAORH').AsString;
  _cnpj := dmSenha.qryFilial.FieldByName('CNPJ').AsString;
  _inscricaoEstadual := dmSenha.qryConexao.FieldByName('INSCRICAO_ESTADUAL').AsString;
  _unidadeNegocio := dmSenha.qryFilial.FieldByName('UNIDADE_NEGOCIO').AsString;
  _Host  := dmSenha.qryConexao.FieldByName('NM_EMAIL_HOST').AsString;
  _Porta := dmSenha.qryConexao.FieldByName('NM_EMAIL_PORTA').AsString;
  _connectionString := dmSenha.qryConexao.FieldByName('CONEXAO').AsString;

  if ( PosEx('10.0.1.',PIPLocal,0 )>0 ) OR  ( PosEx('10.0.10.',PIPLocal,0 )>0 )  then
  begin
        if ( PosEx('192.168.0.6', _connectionString ) > 0 ) then
            _connectionString :=  StringReplace(_connectionString,'192.168.0.6','189.0.0.202',[]);
  end;

  _connectionStringRH := dmSenha.qryConexao.FieldByName('CONEXAORH').AsString;
  _schema := dmSenha.qryConexao.FieldByName('USUARIO').AsString;
  _dadosCadastraisFilial := ConsultarDadosCadastraisFilial(_cnpj);

end;

procedure TfrmSenha.ConsultarUsuarioSistema(codigoUsuario: Integer);
var
  consultaOracle: TOraQuery;
begin
  try
    consultaOracle := dmSenha.ConsultarUsuarioSistema(codigoUsuario);

    if not consultaOracle.IsEmpty then
    begin
      _sistemaUsuarioCodigoUsuario := consultaOracle.FieldByName('ID_USUASIST').AsInteger;
      _sistemaUsuarioNomeReduzido := consultaOracle.FieldByName('NM_REDUUSUASIST').AsString;
    end;
  finally
    FreeAndNil(consultaOracle);
  end;
end;

procedure TfrmSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnOkClick(nil);
  end;
end;

procedure TfrmSenha.VerificarPermissaoUsuario(codigoUsuario: Integer; codigoModulo: Integer);
var
  consultaOracle: TOraQuery;
begin
  try
    consultaOracle := dmSenha.ConsultarPermissaoUsuario(codigoUsuario, codigoModulo);

    if consultaOracle.IsEmpty then
    begin
      MessageDlg('Usuário sem permissão à esse módulo.', mtError, [mbOk], 0);
      Abort;
    end;
  finally
    FreeAndNil(consultaOracle);
  end;
end;

procedure TfrmSenha.AtualizarComboBoxFilial;
begin
  if(cbbFilial.Enabled) then
  begin
    cbbFilial.Color := $FFFFFF;
    cbbFilial.Font.Color := $000000;
  end
  else
  begin
    cbbFilial.Color := $EAEAEA;
    cbbFilial.Font.Color := $505050;
  end;
end;

function TfrmSenha.ConsultarDadosCadastraisFilial(cnpj: string): TDadosCadastraisFilial;
var
  qryConsulta: TOraQuery;
  dados: TDadosCadastraisFilial;
begin
  dados := TDadosCadastraisFilial.Create;
  qryConsulta := dmSenha.ConsultarDadosCadastraisFilial(cnpj);

  try
    dados.NomeFilial := qryConsulta.FieldByName('NOME_FILIAL').AsString;
    dados.Apelido := qryConsulta.FieldByName('APELIDO').AsString;
    dados.Cnpj := qryConsulta.FieldByName('CNPJ').AsString;
    dados.InscricaoEstadual := qryConsulta.FieldByName('IE').AsString;
    dados.Cep := qryConsulta.FieldByName('CEP').AsString;
    dados.Endereco := qryConsulta.FieldByName('ENDERECO').AsString;
    dados.Numero := qryConsulta.FieldByName('NUMERO').AsString;
    dados.Bairro := qryConsulta.FieldByName('BAIRRO').AsString;
    dados.Fone := qryConsulta.FieldByName('FONE').AsString;
    dados.InscricaoMunicipal := qryConsulta.FieldByName('IM').AsString;
    dados.Cnae := qryConsulta.FieldByName('CNAE').AsString;
    dados.CodigoCidade := qryConsulta.FieldByName('ID_CIDADE').AsString;
    dados.Cidade := qryConsulta.FieldByName('CIDADE').AsString;
    dados.CodigoEstado := qryConsulta.FieldByName('ID_ESTADO').AsString;
    dados.Estado := qryConsulta.FieldByName('ESTADO').AsString;
    dados.UF     := qryConsulta.FieldByName('UF').AsString;
    dados.CodigoPais := qryConsulta.FieldByName('ID_PAIS').AsString;
    dados.Pais := qryConsulta.FieldByName('PAIS').AsString;
    dados.SerieCertificado := qryConsulta.FieldByName('NUM_SERIE_CERTIFICADO').AsString;
    dados.DtVencCertificado := qryConsulta.FieldByName('DT_VENC_CERTIFICADO').AsDateTime;
    dados.ControleCaixa     :=  qryConsulta.FieldByName('FL_CONTROLECAIXA').AsString;
  finally
    qryConsulta.Close;
    FreeAndNil(qryConsulta);
  end;

  Result := dados;
end;

procedure TfrmSenha.FormShow(Sender: TObject);
begin
  Caption := Caption + ' - V. '+_versaoModulo;

  if (LogUsua <> '') then
    edtUsuario.Text := LogUsua ;

  if ( PSenha <> '' ) then
    edtSenha.Text := PSenha;

  if ( dmSenha.qryConexao.RecordCount <= 2 ) then
    PId_Base := 1;

  dmSenha.qryConexao.Locate('ID_BASE',PId_Base,[] );

  cbbConexao.KeyValue := PId_Base ;

  if ( FileExists(ExtractFilePath(Application.ExeName) + 'Imagens\LOGO_MODULOS.bmp') ) then
  begin
    imgLogo.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) + 'Imagens\LOGO_MODULOS.bmp' );
  end;

  edtUsuario.SetFocus;

end;

procedure TfrmSenha.btnResetSenhaClick(Sender: TObject);
begin

  if cbbConexao.KeyValue <= 0 then
    ShowMessage ('Primeiro escolha uma unidade para continuar...');
  if edtUsuario.Text = '' then
    ShowMessage ('Escolha um nome de usuário para continuar...');

  if cbbConexao.KeyValue > 0 then

  if edtUsuario.Text <> '' then
  begin
    try
      FrmAlteraSenha := TFrmAlteraSenha.Create (Self);
      FrmAlteraSenha.Pconectastring:= dmSenha.qryConexaoCONEXAO.Value;
      FrmAlteraSenha.Usuario:= edtUsuario.Text;
      FrmAlteraSenha.Filial := dmSenha.qryConexaoFILIAL.Value;
      FrmAlteraSenha.PIPLocal := frmSenha.PIPLocal;
      //FrmAlteraSenha.Servidor:= dmSenha.qryConexaoSERVIDOR.Value;
      FrmAlteraSenha.ShowModal;
    finally
      FreeAndNil (FrmAlteraSenha);
    end;
  end;

end;

Function TfrmSenha.VerficarSeAplicaticoEstarRodandoPeloNomeDoExecutavel(Nome:String):Boolean;
var rId:array[0..999] of DWord; i,NumProc,NumMod:DWord;
    HProc,HMod:THandle; sNome:String;
    Tamanho, Count:Integer;
    sNomeTratado:String;
begin
  result:=False;
  SetLength(sNome, 256);
// Aqui vc pega os IDs dos processos em execução
  EnumProcesses(@rId[0], 4000, NumProc);

// Aqui vc faz um for p/ pegar cada processo
  for i := 0 to NumProc div 4 do
  begin
// Aqui vc seleciona o processo
    HProc := OpenProcess(Process_Query_Information or Process_VM_Read, FALSE, rId[i]);
    if HProc = 0 then
      Continue;
// Aqui vc pega os módulos do processo
// Como vc só quer o nome do programa, então será sempre o primeiro
    EnumProcessModules(HProc, @HMod, 4, NumMod);
// Aqui vc pega o nome do módulo; como é o primeiro, é o nome do programa
    GetModuleBaseName(HProc, HMod, @sNome[1], 256);
    sNomeTratado := trim(sNome);
    Tamanho:=Length(SnomeTratado);
     Count:=1;
     While Count <= Tamanho do
       begin
         if SnomeTratado[Count]= '' Then
           Break;
        count:=Count+1;
       end;
     sNomeTratado:=Copy(SnomeTratado,1,Count-1);
    if AnsiUpperCase(sNomeTratado)=AnsiUpperCase(Nome) Then
      Result:=True;
// Aqui vc libera o handle do processo selecionado
    CloseHandle(HProc);
  end;
end;

end.


