unit uMg_MetodosGlobais;

interface

uses
  SysUtils, WinSock, windows, Classes, ShellApi;

function CriptografaString(PString: string): string;

function StrTara(Nr: Double): string;

function StrPeso(Nr: Double): string;

function StrData(Data: TDateTime): string;

function TiraAcentos(S: string): string;

function GetLocalIP: string;

function NomeComputador: string;

function DefineDataHoraArq(NomeArq: string; DataHora: TDateTime): boolean;

procedure CopiarArqs(const sourcefilename, targetfilename: string);

implementation

procedure CopiarArqs(const sourcefilename, targetfilename: string);
var
  Dados: TSHFileOpStruct;
begin

  FillChar(Dados, SizeOf(Dados), 0);

  Dados.wFunc := FO_COPY;
  Dados.pFrom := PChar(sourcefilename);
  Dados.pTo := PChar(targetfilename);
  Dados.fFlags := FOF_ALLOWUNDO;

  SHFileOperation(Dados);

end;

{
Procedure CopiarArqs( Const sourcefilename, targetfilename: String );
Var
  S, T: TFileStream;
Begin
  S := TFileStream.Create( sourcefilename, fmOpenRead );
  try
    T := TFileStream.Create( targetfilename, fmOpenWrite or fmCreate );
    try
      T.CopyFrom(S, S.Size ) ;
    finally
      T.Free;
    end;
  finally
    S.Free;
  end;
End;
}

function CriptografaString(PString: string): string;
var
  sCript, sReverte: string;
  iLoop, iLoop1: Integer;
  iTemp: LongInt;
  sProvi: Pchar;
begin
  if PString = '' then
    PString := '-';

  PString := TrimLeft(TrimRight(PString));

  sCript := '';

  while Length(PString) < 12 do
    PString := PString + PString;

  for iLoop := 1 to 3 do
  begin
    sReverte := '';
    for iLoop1 := Length(PString) downto 1 do
      sReverte := sReverte + Copy(PString, iLoop1, 1);

    PString := sReverte;
    sCript := '';
    iTemp := 0;

    sProvi := PChar(PString);
    for iLoop1 := 1 to 12 do
      iTemp := iTemp + Ord(sProvi[iLoop1 - 1]);

    for iLoop1 := 1 to 12 do
    begin
      iTemp := iTemp + Ord(sProvi[iLoop1 - 1]);
      sCript := sCript + Chr(33 + (iTemp mod 94));
    end;

    PString := sCript;
  end;

  Result := sCript;
end;

function StrData(Data: TDateTime): string;
var
  Dia, Mes, Ano: Word;
  sDia, sMes, sAno: string;
begin
  DecodeDate(Data, Ano, Mes, Dia);

  sDia := IntToStr(Dia);
  sMes := IntToStr(Mes);
  sAno := IntToStr(Ano);

  if Length(sDia) = 1 then
    sDia := '0' + sDia;
  if Length(sMes) = 1 then
    sMes := '0' + sMes;
  sAno := Copy(sAno, 3, 2);

  Result := sDia + sMes + sAno;
end;

function StrPeso(Nr: Double): string;
begin
  Result := FormatFloat('##,#00.00', Nr);
end;

function StrTara(Nr: Double): string;
begin
  Result := FormatFloat('#,##0.00', Nr);
end;

function TiraAcentos(S: string): string;
const
  Acentos = 'ÁÍÓÚÉÄÏÖÜËÀÌÒÙÈÃÕÂÎÔÛÊáíóúéäïöüëàìòùèãõâîôûêÇç|#$%^*!~`"º';
  Letras = 'AIOUEAIOUEAIOUEAOAIOUEaioueaioueaioueaoaioueCc';
  Le = 'AIOUEAIOUEAIOUEAOAIOUEaioueaioueaioueaoaioueCc0123456789().-/';
var
  i: Integer;
begin
  for i := 1 to Length(Acentos) do
    while Pos(acentos[i], S) > 0 do
      S[Pos(acentos[i], S)] := Letras[i];

  for i := 1 to Length(S) do
    if Pos(S[i], Le) > 0 then
      Result := Result + S[i];

  Result := S;
end;

function GetLocalIP: string;
type
  TaPInAddr = array[0..10] of PInAddr;

  PaPInAddr = ^TaPInAddr;
var
  phe: PHostEnt;
  pptr: PaPInAddr;
  Buffer: array[0..63] of Ansichar;
  I: Integer;
  GInitData: TWSADATA;
begin
  // colocar em comentario para exportacao de dados manual em toda funcao
  // e retornar o ip da balanca que vc esta atualizando os dados.
  // ex.: Result := '10.0.1.244';

  WSAStartup($101, GInitData);
  Result := '';
  GetHostName(Buffer, SizeOf(Buffer));
  phe := GetHostByName(Buffer);
  if phe = nil then
    Exit;
  pptr := PaPInAddr(phe^.h_addr_list);
  I := 0;
  while pptr^[I] <> nil do
  begin
    result := StrPas(inet_ntoa(pptr^[I]^));
    result := StrPas(inet_ntoa(pptr^[I]^));
    Inc(I);
  end;
  WSACleanup;
end;

// Retorna o nome do computador.²

function NomeComputador: string;
var
  lpBuffer: PChar;
  nSize: DWord;
const
  Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer, nSize);
  Result := string(lpBuffer);
  StrDispose(lpBuffer);
end;

function DefineDataHoraArq(NomeArq: string; DataHora: TDateTime): boolean;
var
  F: integer;
begin
  Result := false;
  F := FileOpen(NomeArq, fmOpenWrite or fmShareDenyNone);
  try
    if F > 0 then
      Result := FileSetDate(F, DateTimeToFileDate(DataHora)) = 0;
  finally
    FileClose(F);
  end;
end;

end.

