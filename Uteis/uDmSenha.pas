unit uDmSenha;

{ Modulo de dados para acesso ao banco, utilizado apenas pela tela de login }

interface

uses
  SysUtils, Classes, Types, DB, MemDS, DBAccess, Ora, OraCall;

type
  TdmSenha = class(TDataModule)
    qryConexao: TOraQuery;
    qryFilial: TOraQuery;
    DB: TOraSession;
    qryFilialFILIAL: TFloatField;
    qryFilialDESCR: TStringField;
    qryFilialCNPJ: TStringField;
    qryFilialNOME_CNPJ: TStringField;
    qryConexaoNOME_CNPJ: TStringField;
    qryConexaoFILTRO: TFloatField;
    qryConexaoID_BASE: TIntegerField;
    qryConexaoEMPRESA: TStringField;
    qryConexaoFILIAL: TIntegerField;
    qryConexaoDESCR: TStringField;
    qryConexaoCONEXAO: TStringField;
    qryConexaoCNPJ: TStringField;
    qryConexaoOBS: TStringField;
    qryConexaoCONEXAORH: TStringField;
    qryConexaoINSCRICAO_ESTADUAL: TStringField;
    qryFilialUNIDADE_NEGOCIO: TStringField;
    qryConexaoUSUARIO: TStringField;
    Qry_Aux: TOraQuery;
    Qry_AuxDATA: TDateTimeField;
    Qry_AuxDATA_HORA: TDateTimeField;
    Qry_AuxDATA_STR: TStringField;
    Qry_AuxDATAHORA_STR: TStringField;
    qryConexaoFL_TESTE: TStringField;
    qryConexaoNM_EMAIL_HOST: TStringField;
    qryConexaoNM_EMAIL_PORTA: TStringField;
    procedure qryConexaoAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function ConsultarLogin(loginUsuario: string): TOraQuery;
    function ConsultarUsuarioSistema(codigoUsuario: Integer): TOraQuery;
    function ConsultarPermissaoUsuario(codigoUsuario: Integer; codigoModulo: Integer): TOraQuery;
    function ConsultarVersaoModulo(codigoModulo: Integer): TOraQuery;
    function ConsultarDataHoraServidor: TDateTime;
    function ConsultarDadosCadastraisFilial(cnpj: string): TOraQuery;

    procedure GravarHorarioLogin(codigoUsuario: Integer; dataHoraLogin: TDateTime);
    { Public declarations }
  end;

var
  dmSenha: TdmSenha;

implementation

uses
  //Unit para auxiliar na consulta de dados do banco
  uDataAccess,
  uUtil;

{$R *.dfm}

function TdmSenha.ConsultarUsuarioSistema(codigoUsuario: Integer): TOraQuery;
var
  sql: string;
begin
  sql := 'SELECT ' +
             'ID_USUASIST, ' +
             'NM_REDUUSUASIST ' +
           'FROM ' +
             'SISTEMA_USUARIO ' +
           'WHERE ' +
             'ID_USUARIO = :IdUsuario';

  Result := DataAccess.ExecutarConsulta(DB, sql, 'IdUsuario', codigoUsuario);
end;


function TdmSenha.ConsultarLogin(loginUsuario: string): TOraQuery;
var
  sql: string;
begin
  sql := 'SELECT ID_USUARIO, NOME_USUARIO, LOG_USUARIO, SENHA, VENCTO_SENHA, ESTA_LIBERADO, EMAIL_USUARIO, EMAIL_SENHA ' +
         'FROM SCT_USUARIO ' +
         'WHERE RTRIM(LOG_USUARIO) = :LogUsuario';

  Result := DataAccess.ExecutarConsulta(DB, sql, 'LogUsuario', loginUsuario);
end;

procedure TdmSenha.GravarHorarioLogin(codigoUsuario: Integer; dataHoraLogin: TDateTime);
var
  sql: string;
begin
  sql := 'UPDATE ' +
            'SCT_USUARIO ' +
          'SET ' +
            'DATA_ULT_LOGIN = :Data, ' +
            'HORA_ULT_LOGIN = :Hora ' +
          'WHERE ' +
            'ID_USUARIO = :IdUsuario';

  DataAccess.ExecutarSQL(DB, sql, ['Data', 'Hora', 'IdUsuario'], [dataHoraLogin, TimeToStr(dataHoraLogin), codigoUsuario])
end;

procedure TdmSenha.qryConexaoAfterOpen(DataSet: TDataSet);
begin
  qryFilial.Open;
end;

function TdmSenha.ConsultarPermissaoUsuario(codigoUsuario: Integer; codigoModulo: Integer): TOraQuery;
var
  sql: string;
begin
  sql := 'SELECT ' +
             'ID_USUARIO ' +
           'FROM ' +
             'SCT_DIREITOS_US ' +
           'WHERE ' +
             'ID_USUARIO = :IdUsuario ' +
             'AND ID_MODULO = :IdModulo';

  Result := DataAccess.ExecutarConsulta(DB, sql, ['IdUsuario', 'IdModulo'],[codigoUsuario, codigoModulo]);
end;

function TdmSenha.ConsultarVersaoModulo(codigoModulo: Integer): TOraQuery;
var
  sql: string;
begin
  sql := 'SELECT VERSAO FROM SCT_MODULO WHERE ID_MODULO = :codigoModulo';
        
  Result := DataAccess.ExecutarConsulta(DB, sql, ['codigoModulo'],[codigoModulo]);
end;

function TdmSenha.ConsultarDataHoraServidor: TDateTime;
begin
  Result := DataAccess.ConsultarDataHoraServidor(DB);
end;

function TdmSenha.ConsultarDadosCadastraisFilial(cnpj: string): TOraQuery;
var
  sql: string;
begin
  sql := ' SELECT ' +
          ' FILIAL.NOME_FILIAL, ' +
          ' FILIAL.APELIDO, ' +
          ' FILIAL.CNPJ, ' +
          ' FILIAL.IE, ' +
          ' FILIAL.CEP, ' +
          ' FILIAL.ENDERECO, ' +
          ' FILIAL.NUMERO, ' +
          ' FILIAL.BAIRRO, ' +
          ' FILIAL.FONE, ' +
          ' FILIAL.IM, ' +
          ' SUBSTR(''0'' || TO_CHAR( FILIAL.CNAE ),-7) CNAE, ' +
          ' CIDADE.ID_IBGE AS ID_CIDADE, ' +
          ' CIDADE.NM_CIDADE AS CIDADE, ' +
          ' ESTADO.ID_IBGE AS ID_ESTADO, ' +
          ' ESTADO.NM_ESTADO AS ESTADO, ' +
          ' ESTADO.SG_ESTADO AS UF, ' +
          ' PAIS.ID_IBGE AS ID_PAIS, ' +
          ' PAIS.NM_PAIS AS PAIS , ' +
          ' EMPRESA.NUM_SERIE_CERTIFICADO, ' +
          ' EMPRESA.DT_VENC_CERTIFICADO,   ' +
          ' EMPRESA.FL_CONTROLECAIXA       ' +
        ' FROM ' +
          ' FILIAL ' +
        ' INNER JOIN EMPRESA  ' +
        '  ON EMPRESA.ID_EMPRESA = FILIAL.ID_EMPRESA ' +
          ' INNER JOIN CIDADE ' +
            ' ON FILIAL.ID_CIDADE = CIDADE.ID_CIDADE ' +
          ' INNER JOIN ESTADO ' +
            ' ON ESTADO.ID_ESTADO = CIDADE.ID_ESTADO ' +
          ' INNER JOIN PAIS ' +
            ' ON PAIS.ID_PAIS = ESTADO.ID_PAIS ' +
        ' WHERE ' +
          ' CNPJ = :CNPJ';

  Result := DataAccess.ExecutarConsulta(DB, sql, 'CNPJ', cnpj);
end;

procedure TdmSenha.DataModuleCreate(Sender: TObject);
Var Base_Teste : string ;
begin
     DB.Server  := LerIni('DadosServidor','IP','10.0.1.254:1521:orcl');
     Base_Teste := LerIni('DadosServidor','BASETESTE','N');

     if ( Base_Teste <> '') AND (Base_Teste <> 'N' ) then
     begin
          DB.Username := Base_Teste;
          DB.Password := Base_Teste;
     end;
     
     DB.Disconnect;
     DB.Options.DateFormat   := 'DD/MM/YYYY';
     DB.Options.DateLanguage := 'PORTUGUESE';
     DB.Connect;

     
end;

end.
