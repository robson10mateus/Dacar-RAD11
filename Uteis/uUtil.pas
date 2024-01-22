unit uUtil;

interface

uses
  SysUtils, StrUtils, Classes, Ora, uDmUtil, uDadosCadastraisFilial, IniFiles;

  function FiltrarNumeros(s: String): String; 
  function CriptografarSenha(senha: string): string;
  function LerIni(secao, variavel, default: string):string;
  function BuscarNomeSequence(filial: Integer): string;
  
  procedure GravarIni(secao, variavel, valor: string);

implementation

uses
  uDataAccess;

function CriptografarSenha(senha: string): string;
var
  sCript: String;
  i, j: Integer;
  iTemp: LongInt;
  sProvi: Pchar;
begin

  if senha = '' then
  begin
    senha := '-';
  end;

  senha := TrimLeft(TrimRight(senha));

  sCript := '';

  while Length(senha) < 12 do
  begin
    senha := senha + senha;
  end;

  for i := 1 to 3 do
  begin
    senha := ReverseString(senha);

    sCript := '';
    iTemp := 0;

    sProvi := PChar(senha);

    for j := 1 to 12 do
    begin
      iTemp := iTemp + Ord(sProvi[j - 1]);
    end;

    for j := 1 to 12 do
    begin
      iTemp := iTemp + Ord(sProvi[j - 1]);
      sCript := sCript + Chr(33 + (iTemp Mod 94));
    end;

    senha := sCript;
  end;

  Result := sCript;
end;

function FiltrarNumeros(s: String): String;
var   
  i: Byte;
begin   
  Result := '';
  
  for i := 1 To Length(s) do
  begin
    if s[i] In ['0'..'9'] Then
    begin
      Result := Result + s[i];
    end;
  end;
end;

procedure GravarIni(secao, variavel, valor: string);
var
  arqIni: TIniFile;
  diretorio: string;
begin
  diretorio := ExtractFilePath(ParamStr(0));
  arqIni := TIniFile.Create(diretorio + 'Smart.ini');
  try
    arqIni.WriteString(secao, variavel, valor);
  finally
    arqIni.Free;
  end;
end;

function LerIni(secao, variavel, default: string):string;
var
  arqIni: TIniFile;
  diretorio: string;
begin
  diretorio := ExtractFilePath(ParamStr(0));
  arqIni := TIniFile.Create(diretorio + 'Smart.ini');
  Result := '';
  
  try
    Result := arqIni.ReadString(secao, variavel, default);
  finally
    arqIni.Free;
  end;
end;

function BuscarNomeSequence(filial: Integer): string;
begin
  case filial of
    2 : Result := 'SMARTI';
    4 : Result := 'CAMETAL';
    5 : Result := 'RACAO';
    8 : Result := 'SMART2';
    10: Result := 'SAOPA_FGOC_ALIM';
    11: Result := 'GUAPIACU';
    13: Result := 'CATERRA';
    14: Result := 'GUAPI_FABR_ALIM';
    15: Result := 'GUAPI_FGOC_ALIM';
    16: Result := 'IPIGU_INCU_ALIM';
    17: Result := 'LARAP_ARMA_ALIM';
    18: Result := 'STAAD_FGOC_ALIM';
    19: Result := 'TIETE_POVO_ALIM';
    20: Result := 'UBARA_FGOC_ALIM';
    21: Result := 'AGUAI_FGOC';
    22: Result := 'SBARB_FGOC_FABR';
    23: Result := 'BOFET_MATR';
    24: Result := 'CABRA_MATR_FABR';
    25: Result := 'CERQC_MATR';
    26: Result := 'CESAL_MATR';
    27: Result := 'CONCH_FGOC';
    28: Result := 'GUAPI_ABAT';
    29: Result := 'GUAPI_FABR';
    30: Result := 'GUAPI_FGOC';
    31: Result := 'IPIGU_INCU';
    32: Result := 'IPIGU_MATR_FABR';
    33: Result := 'ITAPE_ABAT';
    34: Result := 'ITAPE_FABR';
    35: Result := 'LARAP_ARMA';
    36: Result := 'MARIS_FGOC';
    37: Result := 'PARDI_MATR';
    38: Result := 'PEREI_FABR';
    39: Result := 'PEREI_INCU';
    40: Result := 'PEREI_FGOC';
    41: Result := 'PILAS_FGOC';
    42: Result := 'SAMAM_MATR';
    43: Result := 'STAAD_FGOC';
    44: Result := 'SAOMA_MATR';
    45: Result := 'SARAP_INCU';
    46: Result := 'SOROC_ABAT';
    47: Result := 'TIBIR_MATR';
    48: Result := 'TIETE_MATR_FABR';
    49: Result := 'UBARA_FGOC';
    50: Result := 'LARP_PAFIR';
    51: Result := 'LARP_FM';
    52: Result := 'TEST_1AVI';
    53: Result := 'TEST_2AVI';
    54: Result := 'PIRAC_VAREJO';
    55: Result := 'SJRPT_VAREJO';
    56: Result := 'PEREI_INCU_ALIM';
    90: Result := 'PEREI_AMF';
    91: Result := 'AMF_METAL';
    93: Result := 'PEREI_DRAG_AZUL';
    94: Result := 'ITAPE_DRAG_AZUL';
    95: Result := 'GUAPI_DRAG_AZUL';
  end;
end;

end.
