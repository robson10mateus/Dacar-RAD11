unit Global;

interface

uses
  Types, SysUtils, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, MemDS, DBAccess, Ora, ExtCtrls, Buttons, DBGrids, Grids, DateUtils,
  uDadosCadastraisFilial, Clipbrd, math, Apollo, ufrmAutoTabPreco, ZLib,
  Winapi.WinSock, StrUtils, TlHelp32, PSAPI, Windows;

const
  TP_PESQUISA_CTE_REMETENTE = 16;
  TP_PESQUISA_CTE_DESTINATARIO = 17;

Var
  VezOr, XRPM, FrmOriPesq, gi_IdenUsua, gi_IdenModu, gi_CodiUsuaSist, gi_ContrBaixa, GlbNivel, GlbCodigo,
  Vfch, gi_Filial, gi_IndiImpr, gi_QtdeCopi, gi_TagRela, gi_empresa: Integer;

  GlbEscolha:Char;

  GlbUser,GlbSenha,GlbNumero, GlbVersao, gs_NomeReduUsuaSist, gs_NomeUsuario, gs_CNPJ, gs_Unidade, gs_CNPJ2, gs_Filial,
  gs_BancDado, gs_LogUsua , gs_SiglModu, gs_Empresa, gs_EnviaEmailNFe , gs_EmailTeste, gs_Email, gs_EmailPass, gs_Host, gs_Porta: String;

  ld_DataHora: TDateTime;

  gb_LogiAuto, gb_PrimEntr, gb_SeguAtiv, gb_ErroBanc: Boolean;


  dadosCadastraisFilial: TDadosCadastraisFilial;

  ga_RecuSmar: Array[0..5] of String;
  ga_Recursos: Array[0..5] of String;
  Function StrAcrEsp(nome:string; Total: integer): PChar;
  Function StrZerodec(Numero: Double; Total, Decimal: integer): string;
  Function ReplaceStr (Text,oldstring,newstring:string):string;
  Function TiraAcentos(s : string): string;
  Function DataExtenso(Data:TDateTime): String;
  Function CriptografaSenha(sSenha: String): String;
  Function DesCriptografaSenha(sSenha: String): String;
  Function SoNumeros(ps_String: String): String;
  Function Modulo10(ps_String: String): String;
  Function BanespaD2(ps_String: String): String;
  Function DaysBetween(const ANow, AThen: TDateTime): Integer;
  Function Modulo11(ps_String: String): String;
  Function cpf(num: string): boolean;
  Function cnpj(num: string): boolean;
  Function RemoveChar(texto: string): string;
  function RetZero(ZEROS:string;QUANT:integer):String;
  function RoundNExtend(x: Extended; d: Integer): Extended;
  function G_GetLocalIP : String;
  Function GetIP : string ;
  Function ProgramaEmExecucao(Nome:String):Boolean;
  Function RemoveCaracteresEspeciais(before : string) : string;
  Function ArredondaDecimal( Valor:Real; Casas :integer):Real;
  procedure OrdenarGrid ( Grid : TDBGrid ; Query: TOraQuery;Column: TColumn; POrdemColuna , pOrdem : string );
  procedure CTRL_C_Grig ( Grid : TDBGrid {; Query: TOraQuery});
  function fProximoDiaUtil(pDataAtual:TDatetime): TDateTime;
  procedure AceitaSomenteNumeros(Sender: TObject; var Key: Char);
  Function fFormatoCNPJ_CPF(NUM:string):string;
  function XlsToStringGrid(xStringGrid: TStringGrid; xFileXLS: string):Boolean;
  procedure Comprimir(ArquivoCompacto: TFileName; Arquivos: array of TFileName);
  function fLimparDiretorio(aDirectory : String) : Boolean;
  function fCript(sPass: string):string;

  Function VerficarSeAplicaticoEstarRodandoPeloNomeDoExecutavel(Nome:String):Boolean;

implementation

uses ComObj;

// Exibe a data por extenso.
function DataExtenso(Data:TDateTime): String;
var
  NoDia : Integer;
  Now: TdateTime;
  DiaDaSemana : array [1..7] of String;
  Meses : array [1..12] of String;
  Dia, Mes, Ano : Word;
begin
  DiaDasemana [1]:= 'Domingo';
  DiaDasemana [2]:= 'Segunda-feira';
  DiaDasemana [3]:= 'Terça-feira';
  DiaDasemana [4]:= 'Quarta-feira';
  DiaDasemana [5]:= 'Quinta-feira';
  DiaDasemana [6]:= 'Sexta-feira';
  DiaDasemana [7]:= 'Sábado';
  Meses [1]:= 'Janeiro';
  Meses [2]:= 'Fevereiro';
  Meses [3]:= 'Março';
  Meses [4]:= 'Abril';
  Meses [5]:= 'Maio';
  Meses [6]:= 'Junho';
  Meses [7]:= 'Julho';
  Meses [8]:= 'Agosto';
  Meses [9]:= 'Setembro';
  Meses [10]:= 'Outubro';
  Meses [11]:= 'Novembro';
  Meses [12]:= 'Dezembro';
  DecodeDate (Data, Ano, Mes, Dia);
  NoDia := DayOfWeek (Data);
  //DiaDaSemana [NoDia] + ', ' + inttostr (Dia) + ' de ' + Meses [Mes]+ ' de ' + inttostr (Ano);
  Result :='SOROCABA,  ' + inttostr (Dia) + '    ' + Meses [Mes]+ '    ' + inttostr (Ano);
end;

//Retira os acentos de uma string
Function TiraAcentos(s : string): string;
const
  Acentos = 'ÁÍÓÚÉÄÏÖÜËÀÌÒÙÈÃÕÂÎÔÛÊáíóúéäïöüëàìòùèãõâîôûêÇç|#$%^*()!~`"';
  Letras =  'AIOUEAIOUEAIOUEAOAIOUEaioueaioueaioueaoaioueCc            ';
var
  i: Integer;
begin
  for i := 1 to Length(Acentos) do
    while Pos(acentos[i],s)>0 do
      s[Pos(acentos[i],s)]:=Letras[i];
  Result := S;
end;

//Acrescenta espaços em branco a direita da string
function StrAcrEsp(nome:string; Total: integer): PChar;
begin
  while length(nome) < Total do
  begin
    nome := nome + ' ';
  end;

  StrAcrEsp:=PChar(nome);
end;

Function StrZerodec(Numero: Double; Total, Decimal: integer): string;
{Insere Zeros e decimais à frente de uma string}
var
 TempStr: string;
begin
  Str(Numero:0:Decimal,TempStr);
  While length(TempStr) < Total do Insert('0',TempStr,1);
       StrZerodec:=TempStr;
end;

//Substitue caracteres de uma string. ex: ',' por '.'
Function ReplaceStr (Text,oldstring,newstring:string):string;
var atual, strtofind, originalstr:pchar;
NewText:string;
lenoldstring,lennewstring,m,index:integer;
begin //ReplaceStr
  NewText:=Text;
  originalstr:= pchar(Text);
  strtofind:= pchar(oldstring);
  lenoldstring:= length(oldstring);
  lennewstring:= length(newstring);
  Atual:= StrPos(OriginalStr,StrtoFind);
  index:= 0;
  While Atual <> nil do
   begin //Atual<>nil
    m:= Atual - OriginalStr - index + 1;
    Delete(NewText,m,lenoldstring);
    Insert(newstring,NewText,m);
    Inc(index,lenoldstring-lennewstring);
    Atual:= StrPos(Atual+lenoldstring,StrtoFind);
   end; //Atual<>nil
  Result:=NewText;
end; //ReplaceStr


Function SoNumeros(ps_String: String): String;
var
  ls_String  : String;
  li_Loop    , li_CodiCara: Integer;
begin
  // Inicializamos a string vazia
  ls_String := '';
  // Loop para todos os caracteres da string
  For li_Loop := 1 to Length(ps_String) do
  begin
    // Pegamos o códigos ASC do caracter
    li_CodiCara := Ord(ps_String[li_Loop]);
    // Se for um número, incrementamos a string
    if (li_CodiCara >= 48) and (li_CodiCara <= 57) then
      ls_String := ls_String + Chr(li_CodiCara);
  end;
  // Retornamos a string contendo somente números
  Result := ls_String;
end;

Function Modulo10(ps_String: String): String;
var
  ls_Total    : String;
  li_Loop, li_Total, li_Fator, li_Numero, li_DV: Integer;
begin
  // Inicializamos o total e o fator
  li_Total := 0;
  li_Fator := 2;

  // Loop para todos os dígitos da string
  for li_Loop := Length(ps_String) downto 1 do
  begin
    li_Numero := li_Fator * StrToInt(Copy(ps_String, li_Loop, 1));
    if li_Numero > 9 then
      li_Numero := StrToInt(Copy(IntToStr(li_Numero),1,1)) +
                   StrToInt(Copy(IntToStr(li_Numero),2,1));

    // Totalizamos
    li_Total := li_Total + li_Numero;

    // Ajustamos o fator
    if li_Fator = 2 then
      li_Fator := 1
    else
      li_Fator := 2;
  end;

  ls_Total := IntToStr(li_Total);

  // Calculamos o dígito
  li_DV := (10-StrToInt(Copy(ls_Total, Length(ls_Total), 1)));

  if li_DV = 10 then
    Result := '0'
  else
    Result := IntToStr(li_DV);
end;

function BanespaD2(ps_String: String): String;
var
  li_Loop, li_Total, li_Fator, li_Resto, li_DV: Integer;
begin
  // Inicializamos o total e o fator
  li_Total := 0;
  li_Fator := 2;

  // Loop para todos os dígitos da string
  for li_Loop := Length(ps_String) downto 1 do
  begin
    li_Total := li_Total + (li_Fator * StrToInt(Copy(ps_String, li_Loop, 1)));

    // Ajustamos o fator
    li_Fator := li_Fator + 1;
    if li_Fator = 8 then
      li_Fator := 2;
  end;

  // Dividimos o total por 11 e pegamos o resto da divisao
  li_Resto := li_Total mod 11;

  // Se o resto da divisao for 0
  if li_Resto = 0 then
    li_DV := 0
  else if li_Resto = 1 then
    li_DV := -1
  else
    li_DV := 11 - li_Resto;

  Result := IntToStr(li_DV);

end;

function DaysBetween(const ANow, Athen: TDateTime): Integer;
begin
  Result := Trunc(DaySpan(ANow, Athen));
end;

function Modulo11(ps_String: String): String;
var
  li_Loop, li_Total, li_Fator, li_Resto, li_DV: Integer;
begin
  // Inicializamos o total e o fator
  li_Total := 0;
  li_Fator := 2;

  // Loop para todos os dígitos da string
  for li_Loop := Length(ps_String) downto 1 do
  begin
    li_Total := li_Total + (li_Fator * StrToInt(Copy(ps_String, li_Loop, 1)));

    // Ajustamos o fator
    li_Fator := li_Fator + 1;
    if li_Fator = 10 then
      li_Fator := 2;
  end;

  // Dividimos o total por 11 e pegamos o resto da divisao
  li_Resto := li_Total mod 11;

  // Se o resto da divisao for 0, 10 ou 1, o DV será = 1
  if (li_Resto = 0) or (li_Resto = 10) or (li_Resto = 1) then
    li_DV := 1
  else
    li_DV := 11 - li_Resto;

  // Calculamos o dígito
  Result := IntToStr(li_DV);

end;

// *************************************************************************
// * NovoID
// *************************************************************************
//
{function NovoID(ps_NomeColu: String; pb_Contador:Boolean = False): Integer;
var
  qryPega, qryAtua, qrySequ: TFDQuery;
  li_NovoID: Integer;
  lt_HoraAtua: TDateTime;
begin
  // Se estivermos trabalhando com Oracle
  if (gs_BancDado = 'ORACLE') and (gs_Empresa = 'CA') then
  begin
    // Se não for para usar a tabela contador
    if not pb_Contador then
    begin
      // Criamos uma query para pegar o valor da sequence
      qryPega := CriaQuery(False);

      // Tentamos pegar o próximo valor
      try
        qryPega.SQL.Text :=
        'SELECT SMART.' + AnsiLowerCase(ps_NomeColu) + '.NextVal NOVO_ID from dual';
        qryPega.Open;

        // Pegamos o novo id
        Result := qryPega.FieldByName('NOVO_ID').AsInteger;

      // Se a sequence não existir
      except

        // Criamos a seqüência
        try
          qrySequ := CriaQuery(False);
          qrySequ.SQL.Text :=
          'CREATE SEQUENCE SMART.' + AnsiLowerCase(ps_NomeColu) +
          ' INCREMENT BY 1 ' +
          '   START WITH 2 ' ;
          qrySequ.ExecSql;
          qrySequ.Free;

          // Primeiro valor
          Result := 1;

        except

          // Destruimos o objeto
          qrySequ.Free;

          // Resultado nulo
          Result := Null;

        end;

      end;

      // Destruimos o objeto
      qryPega.Close;
      qryPega.Free;

      Exit;

    end

    // Se for para usar a tabela contador
    else
    begin
      // Criamos uma query para pegar o contador e outra para atualizá-lo
      qryPega := CriaQuery(False);
      qryAtua := CriaQuery(False);

      // Guardamos a hora atual
      lt_HoraAtua := Time();

      while SecondsBetween(lt_HoraAtua, Time()) <= 10 do
      begin
        // Pegamos o valor atual
        qryPega.SQL.Text := 'SELECT QN_ULTIVALOCONT FROM CONTADOR WHERE UPPER(NM_CONTADOR) = ''' + AnsiUpperCase(ps_NomeColu) + '''';
        qryPega.Close;
        qryPega.Open;

        // Se o registro não for encontrado
        if qryPega.IsEmpty then
        begin
          // É o primeiro ID
          li_NovoID := 1;

          // Criamos o registro
          qryAtua.SQL.Text := 'INSERT INTO CONTADOR                  '+
                              '       (NM_CONTADOR, QN_ULTIVALOCONT) '+
                              'VALUES (''' + ps_NomeColu + ''', 1)'   ;
        end
        else
        begin
          // Incrementamos o ID atual
          li_NovoID := qryPega.FieldByName('QN_ULTIVALOCONT').AsInteger + 1;

          // Atualizamos o contador
          qryAtua.SQL.Text := 'UPDATE CONTADOR SET QN_ULTIVALOCONT = ' + IntToStr(li_NovoID) +
                              ' WHERE UPPER(NM_CONTADOR) = ''' + AnsiUpperCase(ps_NomeColu)+ '''';

        end;

        // Executamos o SQL
        try
          qryAtua.ExecSQL;
          break;
        except
          continue;
        end;
      end;


      // Destruimos os objetos
      qryPega.Free;
      qryAtua.Free;

      // Retornamos o novo ID
      Result := li_NovoID;

      Exit;

    end;

  end

  // Se estivermos trabalhando com qualquer outro banco
  else
  begin
    // Criamos uma query para pegar o contador e outra para atualizá-lo
    qryPega := CriaQuery(False);
    qryAtua := CriaQuery(False);

    // Guardamos a hora atual
    lt_HoraAtua := Time();

    while SecondsBetween(lt_HoraAtua, Time()) <= 10 do
    begin
      // Pegamos o valor atual
      qryPega.SQL.Text := 'SELECT ULTIMO_VALOR FROM CONTADORES WHERE UPPER(NOME) = ''' + AnsiUpperCase(ps_NomeColu) + '''';
      qryPega.Close;
      qryPega.Open;

      // Se o registro não for encontrado
      if qryPega.IsEmpty then
      begin
        // É o primeiro ID
        li_NovoID := 1;

        // Criamos o registro
        qryAtua.SQL.Text := 'INSERT INTO CONTADORES             '+
                            '       (NOME, ULTIMO_VALOR)        '+
                            'VALUES (''' + ps_NomeColu + ''', 1)';
      end
      else
      begin
        // Incrementamos o ID atual
        li_NovoID := qryPega.FieldByName('ULTIMO_VALOR').AsInteger + 1;

        // Atualizamos o contador
        qryAtua.SQL.Text := 'UPDATE CONTADORES SET ULTIMO_VALOR = ' + IntToStr(li_NovoID) +
                            ' WHERE UPPER(NOME) = ''' + AnsiUpperCase(ps_NomeColu)+ '''';

      end;

      // Executamos o SQL
      try
        qryAtua.ExecSQL;
        break;
      except
        continue;
      end;
    end;


    // Destruimos os objetos
    qryPega.Free;
    qryAtua.Free;

    // Retornamos o novo ID
    Result := li_NovoID;
  end;
end;}

// *************************************************************************
// * CriptografaSenha
// *************************************************************************
//
function CriptografaSenha(sSenha: String): String;
var
  sCript, sReverte: String;
  iLoop, iLoop1: Integer;
  iTemp: LongInt;
  sProvi: Pchar;
begin

  if sSenha = '' then
    sSenha := '-';

  sSenha := TrimLeft(TrimRight(sSenha));

  sCript := '';

  while Length(sSenha) < 12 do
    sSenha := sSenha + sSenha;

  for iLoop := 1 to 3 do
  begin
    sReverte := '';
    for iLoop1 := Length(sSenha) downto 1 do
      sReverte := sReverte + Copy(sSenha, iLoop1, 1);

    sSenha := sReverte;
    sCript := '';
    iTemp := 0;

    sProvi := PChar(sSenha);
    for iLoop1 := 1 to 12 do
      iTemp := iTemp + Ord( sProvi[iLoop1-1] );

    for iLoop1 := 1 to 12 do
    begin
      iTemp := iTemp + Ord( sProvi[iLoop1-1] );
      sCript := sCript + Chr( 33 + (iTemp Mod 94) );
    end;

    sSenha := sCript;
  end;

  Result := sCript;
end;

function DesCriptografaSenha(sSenha: String): String;
var
  sCript, sReverte: String;
  iLoop, iLoop1: Integer;
  iTemp: LongInt;
  sProvi: Pchar;
begin

  if sSenha = '' then
    sSenha := '-';

  sSenha := TrimLeft(TrimRight(sSenha));

  sCript := '';

  While Length(sSenha) < 12 do
    sSenha := sSenha + sSenha;

  For iLoop := 1 to 3 do
  begin
    sReverte := '';
    for iLoop1 := Length(sSenha) downto 1 do
      sReverte := sReverte + Copy(sSenha, iLoop1, 1);

    sSenha := sReverte;
    sCript := '';
    iTemp := 0;

    sProvi := PChar(sSenha);
    for iLoop1 := 1 to 12 do
      iTemp := iTemp + Ord( sProvi[iLoop1-1] );

    for iLoop1 := 1 to 12 do
    begin
      iTemp := iTemp + Ord( sProvi[iLoop1-1] );
      sCript := sCript + Chr( 33 + (iTemp Mod 94) );
    end;

    sSenha := sCript;
  end;

  Result := sCript;
end;


function cpf(num: string): boolean;
var
  n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
  d1,d2: integer;
  digitado, calculado: string;
begin
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[4]);
  n5:=StrToInt(num[5]);
  n6:=StrToInt(num[6]);
  n7:=StrToInt(num[7]);
  n8:=StrToInt(num[8]);
  n9:=StrToInt(num[9]);
  d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
  d1:=11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
  d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
  calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[10]+num[11];
  if calculado=digitado then
    cpf:=true
  else
    cpf:=false;
end;

function cnpj(num: string): boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12: integer;
  d1, d2: integer;
  digitado, calculado: string;
begin
  n1 := StrToInt(num[1]);
  n2 := StrToInt(num[2]);
  n3 := StrToInt(num[3]);
  n4 := StrToInt(num[4]);
  n5 := StrToInt(num[5]);
  n6 := StrToInt(num[6]);
  n7 := StrToInt(num[7]);
  n8 := StrToInt(num[8]);
  n9 := StrToInt(num[9]);
  n10 := StrToInt(num[10]);
  n11 := StrToInt(num[11]);
  n12 := StrToInt(num[12]);
  d1 := n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
  d1 := 11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2 := d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
  d2 := 11-(d2 mod 11);
  if d2>=10 then d2:=0;
  calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[13]+num[14];
  if calculado=digitado then
  cnpj:=true
  else
  cnpj:=false;
end;

Function RemoveChar(texto: string): string;
var
  i: Integer;
  r: string;
begin
  for i := 1 to Length(texto) do
    if (copy(texto, i, 1) <> ' ') and (copy(texto, i, 1) <> '-') and (copy(texto, i, 1) <> '.') then
      r:= r + copy(texto, i, 1);
  Result := r;
end;

function RetZero(ZEROS:string;QUANT:integer):String;
var
  I,Tamanho:integer;
  aux: string;
begin
  aux:=zeros;
  Tamanho:=length(ZEROS);
  ZEROS:='';
  for I:=1 to quant-tamanho do
    ZEROS:=ZEROS+'0';
  aux:=zeros+aux;
  RetZero:=aux;
end;

function RoundNExtend(x: Extended; d: Integer): Extended;
{ RoundN(123,456, 0) = 123,00
  RoundN(123,456, 2) = 123,46
  RoundN(123456, -3) = 123000 }
const
  t: array [0..12] of int64 = (1, 10, 100, 1000, 10000, 100000,
    1000000, 10000000, 100000000, 1000000000, 10000000000,
    100000000000, 1000000000000);
begin
  if Abs(d) > 12 then
    raise ERangeError.Create('RoundN: Value must be in -12..12');
  if d = 0 then
    Result := Int(x) + Int(Frac(x) * 2)
  else
    if d > 0 then
      begin
        x := x * t[d];
        Result := (Int(x) + Int(Frac(x) * 2)) / t[d];
      end
    else
      begin  // d < 0
        x := x / t[-d];
        Result := (Int(x) + Int(Frac(x) * 2)) * t[-d];
      end;
end;

function G_GetLocalIP: String;
type
    TaPInAddr = array [0..10] of PInAddr;
    PaPInAddr = ^TaPInAddr;
var
  phe : PHostEnt;
  pptr : PaPInAddr;
  Buffer : array [0..63] of Ansichar;
  I : Integer;
  GInitData : TWSADATA;
begin
  WSAStartup($101, GInitData);
  Result := '';
  GetHostName(Buffer, SizeOf(Buffer));
  phe :=GetHostByName(buffer);
  if phe = nil then
    Exit;
  pptr := PaPInAddr(Phe^.h_addr_list);
  I := 0;
  while pptr^[I] <> nil do
  begin
    result := StrPas(inet_ntoa(pptr^[I]^));
    result := StrPas(inet_ntoa(pptr^[I]^));
    Inc(I);
  end;
  WSACleanup;
end;

function GetIP:string;
//--> Declare a Winsock na clausula uses da unit
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  Name:string;
begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  Gethostname(PAnsiChar(Name), 255);
  SetLength(Name, StrLen(PChar(Name)));
  HostEnt := gethostbyname(PAnsiChar(Name));
  with HostEnt^ do
    begin
      Result := Format('%d.%d.%d.%d',
      [Byte(h_addr^[0]),Byte(h_addr^[1]),
      Byte(h_addr^[2]),Byte(h_addr^[3])]);
    end;
  WSACleanup;
end;

Function ProgramaEmExecucao(Nome:String):Boolean;
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
         if SnomeTratado[Count]= '' then
           Break;
        count:=Count+1;
       end;
     sNomeTratado:=Copy(SnomeTratado,1,Count-1);
    if AnsiUpperCase(sNomeTratado)=AnsiUpperCase(Nome) then
      Result:=True;
// Aqui vc libera o handle do processo selecionado
    CloseHandle(HProc);
  end;
end;

function RemoveCaracteresEspeciais(before : string) : string;
var
  after : string;
begin
  //Removendo o enter
  after := StringReplace(StringReplace(before, #10, ' ', [rfReplaceAll]), #13, ' ', [rfReplaceAll]);
  //Removendo o 'º'.
  after := StringReplace(after, 'º', ' ', [rfReplaceAll]);
  //Retornando string tratada
  Result := after;
end;

procedure OrdenarGrid ( Grid : TDBGrid ; Query: TOraQuery;Column: TColumn; POrdemColuna , pOrdem : string );
Var I : integer ;
begin
  if ( Query.FieldByName(Column.FieldName).FieldKind in [fkData] ) then
  begin
    Column.Title.Font.Style := [fsBold];
    POrdemColuna := Column.FieldName;
    if ( POrdemColuna <> Column.FieldName ) OR  ((POrdemColuna = Column.FieldName ) AND (POrdem = 'Decrescente')  ) then
    begin
        Query.IndexFieldNames := Column.FieldName+' ASC';
       POrdem := 'Crescente';
    end
    else
    begin
        Query.IndexFieldNames := Column.FieldName+' DESC';
        POrdem := 'Decrescente';
    end;
  end;
end;

procedure CTRL_C_Grig ( Grid : TDBGrid {; Query: TOraQuery});
var Linhas: TStringList;
    i, posicao: integer;
    s: string;
begin
    Linhas := TStringList.Create;
    Clipboard.Open;
    try
      with Grid do
      begin
        DataSource.DataSet.DisableControls;

       s := Grid.Columns[0].Title.Caption + #9 ;
       for i := 1 to Grid.Columns.Count -1 do
       s := s + Grid.Columns[i].Title.Caption + #9 ;
       Linhas.Add(s);


        Posicao := DataSource.DataSet.RecNo;
        DataSource.DataSet.First;
        while not DataSource.DataSet.Eof do
        begin
          s := '';
          for i := 0 to Columns.Count - 1 do
          begin
             if i > 0 then s := s + #9; // Tabulação
             s := s + Columns.Items[i].Field.Text;
          end;
          Linhas.Add(s);
          DataSource.DataSet.Next;
        end;
        DataSource.DataSet.RecNo := Posicao;
        DataSource.DataSet.EnableControls;
      end;

      Clipboard.SetTextBuf(Pointer(Linhas.Text));
    finally
      Linhas.Free;
      Clipboard.Close;
    end
end;

{ Igual ao  ROUND do Oracle   }
Function ArredondaDecimal( Valor:Real; Casas :integer):Real;
var
Fator, Fracao: Extended;
begin
     {Eleva o Valor 10 ao expoente mandado na variavel casasDecimais}
     Fator:= IntPower(10, Casas);
     { Multiplica o valor pelo fator e faz a conversao de string e depois para float novamente para evitar arredondamentos. }
     valor:= StrToFloat(FloatToStr(valor* Fator));
     {Pega a Parte Inteira do Numero}
      Result := Int(valor);
     {Pega a Parte Fracionaria}
      Fracao:= Frac(valor);
     {Faz a regra de arredondamento}
     if Fracao >= 0.5 then
         Result := Result + 1
     else if Fracao <= -0.5 then
         Result := Result - 1;
     {O valor Final inteiro divide por 100 para transformar em decimal novamente.}
      Result := Result / Fator;
end;

{FABRICIO - 13/09/2018 - MOTIVO: validação para entrega além de um dia da data atual}
function fProximoDiaUtil(pDataAtual:TDatetime): TDateTime;
var
  bAchou: Boolean;
  dDataAtual:TDateTime;
  QryTemp: TOraQuery;
begin
  QryTemp := TOraQuery.Create(Application);
  dDataAtual := pDataAtual;
  bAchou:= False;

  while not(bAchou) do
  begin
    QryTemp.Close;
    QryTemp.SQL.CLEAR;
    QryTemp.SQL.Text := 'SELECT GN_DATAFERI                 '+
                        '  FROM FERIADO                     '+
                        ' WHERE GN_DATAFERI = :GN_DATAFERI  ';

    QryTemp.ParamByName('GN_DATAFERI').AsString := FormatDateTime('dd/mm', dDataAtual);
    QryTemp.Open;

    if ((DayOfWeek(dDataAtual) in [7,1]) OR (qryTemp.RecordCount > 0)) then
    begin
      dDataAtual:= dDataAtual+1
    end
    else
      bAchou:= True;
  end;

  Result:= dDataAtual;

end;

procedure AceitaSomenteNumeros(Sender: TObject; var Key: Char);
begin
  if not( key in['0'..'9',#08,#13,#27,#42] ) then
    key:=#0;
end;

function fFormatoCNPJ_CPF(NUM:string):string;
begin
  if Length(NUM) <= 11 then
    Result :=Copy(NUM,1,3)+'.'+Copy(NUM,4,3)+'.'+Copy(NUM,7,3)+'-'+Copy(NUM,10,2)
  else
    Result :=Copy(NUM,1,2)+'.'+Copy(NUM,3,3)+'.'+Copy(NUM,6,3)+'/'+Copy(NUM,9,4)+'-'+Copy(NUM,13,2);

end;

Function XlsToStringGrid(xStringGrid: TStringGrid; xFileXLS: string): Boolean;
const
  xlCellTypeLastCell = $0000000B;
var
  XLSAplicacao, AbaXLS: OLEVariant;
  RangeMatrix: Variant;
  x, y, k, r: Integer;
begin
  Result := False;
  // Cria Excel- OLE Object
  XLSAplicacao := CreateOleObject('Excel.Application');
  try
    // Esconde Excel
    XLSAplicacao.Visible := False;
    // Abre o Workbook
    XLSAplicacao.Workbooks.Open(xFileXLS);

    {Selecione aqui a aba que você deseja abrir primeiro - 1,2,3,4....}
    XLSAplicacao.WorkSheets[1].Activate;
    {Selecione aqui a aba que você deseja ativar - começando sempre no 1 (1,2,3,4) }
    AbaXLS := XLSAplicacao.Workbooks[ExtractFileName(xFileXLS)].WorkSheets[1];

    AbaXLS.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
    // Pegar o número da última linha
    x := XLSAplicacao.ActiveCell.Row;
    // Pegar o número da última coluna
    y := XLSAplicacao.ActiveCell.Column;
    // Seta xStringGrid linha e coluna
    XStringGrid.RowCount := x;
    XStringGrid.ColCount := y;
    // Associaca a variant WorkSheet com a variant do Delphi
    RangeMatrix := XLSAplicacao.Range['A1', XLSAplicacao.Cells.Item[x, y]].Value;
    // Cria o loop para listar os registros no TStringGrid
    k := 1;

    repeat
      for r := 1 to y do
        XStringGrid.Cells[(r - 1), (k - 1)] := RangeMatrix[k, r];
      Inc(k, 1);
    until k > x;

    RangeMatrix := Unassigned;
  finally
    // Fecha o Microsoft Excel
    if not VarIsEmpty(XLSAplicacao) then
    begin
      XLSAplicacao.Quit;
      XLSAplicacao := Unassigned;
      AbaXLS := Unassigned;
      Result := True;
    end;
  end;

end;

procedure Comprimir(ArquivoCompacto: TFileName; Arquivos: array of TFileName);
var
  FileInName: TFileName;
  FileEntrada, FileSaida: TFileStream;
  Compressor: TCompressionStream;
  NumArq, I, Len, Size: Integer;
  Fim: Byte ;
begin

  FileSaida := TFileStream.Create(ArquivoCompacto, fmCreate or fmShareExclusive);
  Compressor := TCompressionStream.Create( clMax, FileSaida);
  NumArq := Length(Arquivos);
  Compressor.Write(NumArq, SizeOf(Integer));

  try

    for I := Low(Arquivos) to High(Arquivos) do begin

      FileEntrada := TFileStream.Create(Arquivos[I], fmOpenRead and fmShareExclusive);

      try
        FileInName := ExtractFileName(Arquivos[I]);
        Len := Length(FileInName);
        Compressor.Write(Len, SizeOf(Integer));
        Compressor.Write(FileInName[1], Len);
        Size := FileEntrada.Size;
        Compressor.Write(Size, SizeOf(Integer));
        Compressor.CopyFrom(FileEntrada, FileEntrada.Size);
        Fim := 0;
        Compressor.Write(Fim, SizeOf(Byte));
      finally
        FileEntrada.Free;
      end;

    end;

  finally
    FreeAndNil(Compressor);
    FreeAndNil(FileSaida);
  end;

end;

function fLimparDiretorio(aDirectory : String) : Boolean;
var
  SR: TSearchRec;
  I: integer;
begin
  I := FindFirst(aDirectory + '*.*', faAnyFile, SR);
  while I = 0 do
  begin
    if (SR.Attr and faDirectory) <> faDirectory then
    begin
      if not DeleteFile(PChar(aDirectory + SR.Name)) then
      begin
        Result := False;
        Exit;
      end;
    end;

    I := FindNext(SR);
  end;

  Result := True;
end;

function fCript(sPass: string): string;
var
  Simbolos : array [0..4] of String;
  x        : Integer;
begin

  Simbolos[1]:='ABCDEFGHIJLMNOPQRSTUVXZYWK ~!@#$%^&*()';
  Simbolos[2]:= 'ÂÀ©Øû×ƒçêùÿ5Üø£úñÑªº¿®¬¼ëèïÙýÄÅÉæÆôöò»Á';
  Simbolos[3]:= 'abcdefghijlmnopqrstuvxzywk1234567890';
  Simbolos[4]:= 'áâäàåíóÇüé¾¶§÷ÎÏ-+ÌÓß¸°¨·¹³²Õµþîì¡«½';

  for x := 1 to Length(Trim(sPass)) do
  begin
    if pos(copy(sPass,x,1),Simbolos[1])>0 then
      Result := Result+copy(Simbolos[2],
      pos(copy(sPass,x,1),Simbolos[1]),1)

    else
    if pos(copy(sPass,x,1),Simbolos[2])>0 then
      Result := Result+copy(Simbolos[1],
      pos(copy(sPass,x,1),Simbolos[2]),1)

    else
    if pos(copy(sPass,x,1),Simbolos[3])>0 then
      Result := Result+copy(Simbolos[4],
      pos(copy(sPass,x,1),Simbolos[3]),1)

    else
    if pos(copy(sPass,x,1),Simbolos[4])>0 then
      Result := Result+copy(Simbolos[3],
      pos(copy(sPass,x,1),Simbolos[4]),1);
  end;

end;

Function VerficarSeAplicaticoEstarRodandoPeloNomeDoExecutavel(Nome:String):Boolean;
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
         if SnomeTratado[Count]= '' then
           Break;
        count:=Count+1;
       end;
     sNomeTratado:=Copy(SnomeTratado,1,Count-1);
    if AnsiUpperCase(sNomeTratado)=AnsiUpperCase(Nome) then
      Result:=True;
// Aqui vc libera o handle do processo selecionado
    CloseHandle(HProc);
  end;
end;


end.

