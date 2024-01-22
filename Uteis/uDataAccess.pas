unit uDataAccess;

interface

uses
  DBClient, Provider, Ora, SysUtils, {$IFNDEF VER130} Variants {$ENDIF};

type
  TDataAccess = class(TObject)
  private

  public
    procedure GravarErroSql(baseDados: string;  schema: string; mensagemErro: string; sql: string; nomeParametros: array of string; valorParametros: array of Variant);

    procedure AtribuirParametro(oraQuery: TOraQuery; nomeParametro: string; valorParametro: Variant); overload;
    procedure AtribuirParametro(oraSQL: TOraSQL; nomeParametro: string; valorParametro: Variant); overload;                     
    procedure AtribuirParametros(oraQuery: TOraQuery; nomeParametros: array of string; valorParametros: array of Variant); overload;
    procedure AtribuirParametros(oraSQL: TOraSQL; nomeParametros: array of string; valorParametros: array of Variant); overload;

    procedure ExecutarSQL(conexaoDB: TOraSession; script: string); overload;
    procedure ExecutarSQL(conexaoDB: TOraSession; script: string; nomeParametro: string; valorParametro: Variant); overload;
    procedure ExecutarSQL(conexaoDB: TOraSession; script: string; nomeParametros: array of string; valorParametros: array of Variant); overload;

    function ExecutarConsulta(conexaoDB: TOraSession; script: string): TOraQuery; overload;
    function ExecutarConsulta(conexaoDB: TOraSession; script: string; nomeParametro: string; valorParametro: Variant): TOraQuery; overload;
    function ExecutarConsulta(conexaoDB: TOraSession; script: string; nomeParametros: array of string; valorParametros: array of Variant): TOraQuery; overload;

    function SetParams(params: TOraParams; paramNames: array of string; paramValues: array of Variant): TOraParams;
    function ObterDadosFiltrados(oraQuery: TOraQuery; filtro: string): TClientDataSet;
    function ConsultarDataHoraServidor(conexao: TOraSession): TDateTime;
  end;

var
  DataAccess: TDataAccess;
  
implementation

/// <summary>Filtra os dados da consulta sem realizar a consulta novamente no banco</summary>
/// <param name="oraQuery">Consulta realizada no BD (Oracle)</param>
/// <param name="filter">String contendo o filtro a ser realizado no retorno da consulta</param>
/// <returns>Retorna um ClientDataSet com os valores da consulta original filtrados</returns>
function TDataAccess.ObterDadosFiltrados(oraQuery: TOraQuery; filtro: string): TClientDataSet;
var
  clientDataSet: TClientDataSet;
  dataSetProvider: TDataSetProvider;
begin
  //Cria o DataSetProvider e recebe a consulta original
  dataSetProvider := TDataSetProvider.Create(nil);
  dataSetProvider.DataSet := oraQuery;

  //Cria o ClientDataSet, atribui o provider e aplica o filtro informado
  clientDataSet := TClientDataSet.Create(nil);
  clientDataSet.SetProvider(dataSetProvider);
  clientDataSet.DisableControls;

  //Verifica se há algum filtro, caso não exista, gera o ClientDataSet
  //com todas as informações
  if (filtro = '') then
  begin
    clientDataSet.Filtered := False;
  end
  else
  begin
    clientDataSet.Filter := filtro;
    clientDataSet.Filtered := True;
  end;

  //Abre o ClientDataSet
  clientDataSet.Open;

  //Retorna o ClientDataSet filtrado
  Result := clientDataSet;
end;

/// <summary>Atribui uma lista de parametros e valores ao OraQuery</summary>
/// <param name="oraQuery">Consulta a qual sera incluso o parametro</param>
/// <param name="paramNames">Array de strings contendo os nomes dos parametros para a consulta</param>
/// <param name="paramValues">Array de strings contendo os valores dos parametros para a consulta</param>
procedure TDataAccess.AtribuirParametros(oraQuery: TOraQuery; nomeParametros: array of string; valorParametros: array of Variant);
begin
   SetParams(oraQuery.Params, nomeParametros, valorParametros);
end;

/// <summary>Atribui parametro e valor ao OraQuery</summary>
/// <param name="oraQuery">Consulta a qual sera incluso o parametro</param>
/// <param name="paramNames">String contendo o nome do parametro para a consulta</param>
/// <param name="paramValues">String contendo o valore do parametro para a consulta</param>
procedure TDataAccess.AtribuirParametro(oraQuery: TOraQuery; nomeParametro: string; valorParametro: Variant);
begin
  //Atribui o valor do parametro ao parametro informado
  AtribuirParametros(oraQuery, [nomeParametro], [valorParametro]);
end;

procedure TDataAccess.AtribuirParametro(oraSQL: TOraSQL; nomeParametro: string; valorParametro: Variant);
begin
  SetParams(oraSQL.Params, [nomeParametro], [valorParametro]);
end;

procedure TDataAccess.AtribuirParametros(oraSQL: TOraSQL; nomeParametros: array of string; valorParametros: array of Variant);
begin
   SetParams(oraSQL.Params, nomeParametros, valorParametros);
end;

procedure TDataAccess.ExecutarSQL(conexaoDB: TOraSession; script: string);
begin
  ExecutarSQL(conexaoDB, script, [], []);
end;

procedure TDataAccess.ExecutarSQL(conexaoDB: TOraSession; script, nomeParametro: string; valorParametro: Variant);
begin
  ExecutarSQL(conexaoDB, script, [nomeParametro], [valorParametro]);
end;

procedure TDataAccess.ExecutarSQL(conexaoDB: TOraSession; script: string; nomeParametros: array of string; valorParametros: array of Variant);
var
  comandoSQL: TOraSQL;
begin
  try
    try
      comandoSQL := TOraSQL.Create(nil);
      comandoSQL.Connection := conexaoDB;
      comandoSQL.AutoCommit := True;
      comandoSQL.SQL.Add(script);
      AtribuirParametros(comandoSQL, nomeParametros, valorParametros);
      comandoSQL.Prepare;
      comandoSQL.Execute;
    except
      on E: Exception do
      begin
        FreeAndNil(comandoSQL);
        GravarErroSql(conexaoDB.Server, conexaoDB.Username, E.Message, script, nomeParametros, valorParametros);
        raise Exception.Create('Erro ao executar consulta:' + #13 + E.Message);
      end;
    end;                
  finally
    FreeAndNil(comandoSQL);
  end;
end;

function TDataAccess.ExecutarConsulta(conexaoDB: TOraSession; script: string): TOraQuery;
begin
  Result := ExecutarConsulta(conexaoDB, script, [], []);
end;

function TDataAccess.ExecutarConsulta(conexaoDB: TOraSession; script, nomeParametro: string; valorParametro: Variant): TOraQuery;
begin
  Result := ExecutarConsulta(conexaoDB, script, [nomeParametro], [valorParametro]);
end;

function TDataAccess.ExecutarConsulta(conexaoDB: TOraSession; script: string; nomeParametros: array of string; valorParametros: array of Variant): TOraQuery;
var
  consultaOracle: TOraQuery;
begin
  try
    consultaOracle := TOraQuery.Create(nil);
    consultaOracle.Connection := conexaoDB;
    consultaOracle.SQL.Add(script);
    AtribuirParametros(consultaOracle, nomeParametros, valorParametros);
    consultaOracle.Prepare;
    consultaOracle.ExecSQL;
    Result := consultaOracle;
  except
    on E: Exception do
    begin
      FreeAndNil(consultaOracle);
      GravarErroSql(conexaoDB.Server, conexaoDB.Username, E.Message, script, nomeParametros, valorParametros);
      raise Exception.Create('Erro ao executar consulta:' + #13 + E.Message);
    end;
  end;
end;

function TDataAccess.ConsultarDataHoraServidor(conexao: TOraSession): TDateTime;
var
  consultaOracle: TOraQuery;
  sql: string;
begin
  sql := 'SELECT SYSDATE FROM DUAL';

  try
    consultaOracle := DataAccess.ExecutarConsulta(conexao, sql, [],[]);
    Result := consultaOracle.FieldByName('SYSDATE').AsDateTime;
  finally
    FreeAndNil(consultaOracle);
  end;    
end;

function TDataAccess.SetParams(params: TOraParams; paramNames: array of string; paramValues: array of Variant): TOraParams;
var
  i: Integer;
begin
  //Verifica se o número de parâmetros corresponde ao número de valores informados
  if Length(paramNames) <> Length(paramValues) then
  begin
    //Caso a quantidade de parâmetros seja diferente da quantidade de valores, gera um erro
    raise Exception.Create('Erro ao atribuir parametros à consulta:' + #13 +
                            'Quantidade de identificadores diferente da quantidade de valores');
  end;

  //Atribui todos os parâmetros à consulta, com seus respectivos valores
  for i := 0 to Length(paramNames) - 1 do
  begin
    params.ParamByName(paramNames[i]).Value := paramValues[i];
  end;

  Result := params;
end;

procedure TDataAccess.GravarErroSql(baseDados: string; schema: string; mensagemErro: string; sql: string; nomeParametros: array of string; valorParametros: array of Variant);
var
  arquivo: TextFile;
  i: Integer;
begin
  AssignFile(arquivo, 'ErroConsulta.sql');
  Rewrite(arquivo);
  Writeln(arquivo, '[Mensagem de erro]');
  Writeln(arquivo, mensagemErro);
  Writeln(arquivo, '[Servidor]');
  Writeln(arquivo, baseDados);
  Writeln(arquivo, '[Schema]');
  Writeln(arquivo, schema);
  Writeln(arquivo, '[Parametros]');

  for i := 0 to Length(nomeParametros) - 1 do
  begin
    Writeln(arquivo, nomeParametros[i] + ': ' + VarToStr(valorParametros[i]) + ';');
  end;

  Writeln(arquivo, '[SQL]');
  Writeln(arquivo, sql);

  CloseFile(arquivo);
end;

end.

