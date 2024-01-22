{------------------------------------------------------------------------------+
|                             CREDITOS DO SISTEMA                              |
+------------------------------------------------------------------------------+
|Edmilde Freire Montagnoli                                                     |
|Analista de Desenvolvimento de Sistemas                                       |
|Emails: edmilde@gmail.com ~ edmilde@hotmail.com ~ edmilde@aedu.com            |
+------------------------------------------------------------------------------+
|        Desenvolvido para: Céu Azul Alimentos - 06/08/2012 - 1.0.0.0          |
+------------------------------------------------------------------------------}
unit Global;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF}, Types, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, MemDS, DBAccess, Ora, ExtCtrls, Buttons,
  Grids, DBGrids,DateUtils,Clipbrd;

Var
  GlbNivel,GlbCodigo:Integer;
  GlbEscolha:Char;
  GlbUser,GlbSenha,GlbNumero:String;
  VezOr,XRPM,FrmOriPesq:integer;
  gi_IdenUsua, gi_IdenModu: Integer;
  gi_CodiUsuaSist,gi_ContrBaixa: Integer;
  gs_NomeReduUsuaSist,gs_NomeUsuario, gs_Unidade, gs_CPF, gs_CNPJ, gs_IE, NuIE, NuCNPJ, NuCNAE : String;
  ld_DataHora: TDateTime;
  Vfch,gi_Filial, gi_IndiImpr, gi_QtdeCopi, gi_TagRela : Integer;
  gs_BancDado, gs_LogUsua , gs_SiglModu, gs_Empresa, gs_ucodiuneg: String;
  gb_LogiAuto, gb_PrimEntr, gb_SeguAtiv, gb_ErroBanc: Boolean;
//  sltJaneGran: TStringList;
  ga_RecuSmar: Array[0..5] of String;
  ga_Recursos: Array[0..5] of String;
  Function StrAcrEsp(nome:string; Total: integer): string;
  Function StrZerodec(Numero: Double; Total, Decimal: integer): string;
  Function ReplaceStr (Text,oldstring,newstring:string):string;
  Function TiraAcentos(s : string): string;
  Function DataExtenso(Data:TDateTime): String;
  Function CriptografaSenha(sSenha: String): String;
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
  function DiasMesAno(sMesAno: string): integer;
  function Muda_virgula_ponto(OValor: String): String;
  function Mvirgula(OValor: String): String;
  function Conv_data(AData: TDatetime; Tipo: integer):String;
  function PoeZeros(OCodi : String): String;

  function Completa_com_zeros(Campo: String; Tamanho: Integer): String;
  function SomenteNumeros(ps_String: String): String;
  function conv_hora(OTime: TDatetime; Tipo: integer):String;
  function PrimeiroDiaMes(Data: TDateTime): TDateTime;
  function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
  Function DiaUtil(pd_Dia: TDateTime): TDateTime;

  procedure OrdenarGrid ( Grid : TDBGrid ; Query: TOraQuery;Column: TColumn; POrdemColuna , pOrdem : string );
                                                                 { Ultima Coluna Ordenada , Crescente/Decrescente}
  procedure CTRL_C_Grig ( Grid : TDBGrid {; Query: TOraQuery});
implementation

uses StrUtils;

function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
var
  ano, mes, dia : word;
  mDtTemp : TDateTime;
begin
  Decodedate(mDt, ano, mes, dia);
  mDtTemp := (mDt - dia) + 33;
  Decodedate(mDtTemp, ano, mes, dia);
  Result := mDtTemp - dia;
end;

function PrimeiroDiaMes(Data: TDateTime): TDateTime;
var
  Dia, Mes, Ano: Word;
begin
  DecodeDate (Data, Ano, Mes, Dia);
  Result := EncodeDate (Ano, Mes, 1);
end;

Function FirstDayOfMonth (Data : TDateTime; lSabDom : Boolean) : TDateTime;
  var
  Ano, Mes, Dia : word;
  DiaDaSemana : Integer;
begin
  DecodeDate (Data, Ano, Mes, Dia);
  Dia := 1;
  if lSabDom Then begin
     DiaDaSemana := DayOfWeek (Data);
    if DiaDaSemana = 1 Then
      Dia := 2
  else
    if DiaDaSemana = 7 Then
      Dia := 3;
  end;
  FirstDayOfMonth := EncodeDate (Ano, Mes, Dia);
end;

function valida_cpf(num: string): boolean;
var
  n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
  d1,d2: integer;
  digitado, calculado: string;
begin
  n1 :=StrToInt(num[1]);
  n2 :=StrToInt(num[2]);
  n3 :=StrToInt(num[3]);
  n4 :=StrToInt(num[4]);
  n5 :=StrToInt(num[5]);
  n6 :=StrToInt(num[6]);
  n7 :=StrToInt(num[7]);
  n8 :=StrToInt(num[8]);
  n9 :=StrToInt(num[9]);
  d1 :=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
  d1 :=11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2 :=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
  d2 :=11-(d2 mod 11);
  if d2>=10 then d2:=0;
  calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[10]+num[11];
  if calculado=digitado then
    valida_cpf:=true
  else
    valida_cpf:=false;
end;

function valida_cnpj(num: string): boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12: integer;
  d1, d2: integer;
  digitado, calculado: string;
begin
  n1  := StrToInt(num[1]);
  n2  := StrToInt(num[2]);
  n3  := StrToInt(num[3]);
  n4  := StrToInt(num[4]);
  n5  := StrToInt(num[5]);
  n6  := StrToInt(num[6]);
  n7  := StrToInt(num[7]);
  n8  := StrToInt(num[8]);
  n9  := StrToInt(num[9]);
  n10 := StrToInt(num[10]);
  n11 := StrToInt(num[11]);
  n12 := StrToInt(num[12]);
  d1  := n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
  d1  := 11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2  := d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
  d2  := 11-(d2 mod 11);
  if d2>=10 then d2:=0;
  calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[13]+num[14];
  if calculado=digitado then
    valida_cnpj:=true
  else
    valida_cnpj:=false;
end;

function conv_data(AData: TDatetime; Tipo: integer):String;
var
  Present: TDatetime;
  ODia, SDia, SMes, SAno : String;
  Year, Month, Day, Ano : Word;
begin

  Try
    Present := AData;
    DecodeDate(Present, Year, Month, Day);

    Ano := Year - 2000;
    If Ano < 10 then SAno := '0' + InttoStr(Ano);
    If Ano > 9 then SAno := InttoStr(Ano);

    If Day < 10 then SDia := '0' + InttoStr(Day);
    If Day > 9 then SDia := InttoStr(Day);

    If Month < 10 then SMes := '0' + InttoStr(Month);
    If Month > 9 then SMes := InttoStr(Month);

    If tipo = 0 then ODia := InttoStr(Day) + '/' +  InttoStr(Month) + '/' + InttoStr(Year);
    If Tipo = 1 then ODia := InttoStr(Year) + '-' + SMes + '-' + SDia;
    If tipo = 2 then ODia := SDia + SMes + SAno;
    If tipo = 3 then ODia := SDia + SMes + InttoStr(Year);
    If tipo = 4 then ODia := SMes;
    If tipo = 5 then ODia := SAno;
    If tipo = 6 then ODia := SDia + '/' + SMes + '/' + InttoStr(Year);
    If tipo = 7 then ODia := SMes + SDia;

    Result := ODia;
  except
    Result := '01/01/2009';
  end;

end;

function conv_hora(OTime: TDatetime; Tipo: integer):String;
var
  Present: TDatetime;
  THora : String;
  Hour, Min, Sec, MSec : Word;
  Dt : Integer;
begin
  Try
    Present := OTime;
    DecodeTime(Present, Hour, Min, Sec, MSec);
    If Tipo = 1 then THora := InttoStr(Hour) + InttoStr(Min) + InttoStr(Sec);
    If Tipo = 2 then THora := InttoStr(Hour) + ':' + InttoStr(Min) + ':' + InttoStr(Sec);
    Result := THora;
  except
    Result := '00:00:00';
  end;
end;

function SomenteNumeros(ps_String: String): String;
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
  If ls_String = '' then ls_String := '0';
  Result := ls_String;
end;

function Completa_com_zeros(Campo: String; Tamanho: Integer): String;
var
  I, Vx : Integer;
  Zeros : String;
begin

  //Obrem vi inteiro
  Vx := Length(Campo);

  If Campo <> '' then
  begin

    If Tamanho > 0 then
    begin
      Zeros := '';
      For I := 1 to (Tamanho - Vx) do Zeros := Zeros + '0';
      Campo := Zeros + Trim(Campo);
    end;

  end;

  Result := Trim(Campo);

end;


function PoeZeros(OCodi : String): String;
begin
  //Poe zeros
  If Length(OCodi) = 1 then OCodi := '00' + OCodi;
  If Length(OCodi) = 2 then OCodi := '0' + OCodi;
  result := OCodi;
end;

function Muda_virgula_ponto(OValor: String): String;
var
  T, I : Integer;
  NValor : String;
begin
  //Troca a virgula pelo ponto
  If OValor = '' then OValor := '0.00';
  T := 0;
  NValor := '';
  T := Length(OValor);
  If T > 0 then
  begin
    For I := 1 to T do
    begin
      If Copy(OValor, I, 1) <> ',' then NValor := NValor + Copy(OValor, I, 1);
      If Copy(OValor, I, 1) = ',' then NValor := NValor + '.';
    end;
  end;
  Result := NValor;
end;

function Mvirgula(OValor: String): String;
var
  T, I : Integer;
  NValor : String;
begin
  //Troca a virgula pelo ponto
  If OValor = '' then OValor := '0.00';
  T := 0;
  NValor := '';
  T := Length(OValor);
  If T > 0 then
  begin
    For I := 1 to T do
    begin
      If Copy(OValor, I, 1) <> '.' then NValor := NValor + Copy(OValor, I, 1);
      If Copy(OValor, I, 1) = '.' then NValor := NValor + ',';
    end;
  end;
  Result := NValor;
end;

function DiasMesAno(sMesAno: string): integer;
var
  aDias: array[1..12] of integer;
  dDataTest: TDateTime;
  sDataTest: String;
begin

  // Se for fevereiro
  if Copy(sMesAno, 1, 2) = '02' then
  begin
    // Verificamos se é ano bissexto
    sDataTest := '29/' + sMesAno;
    // Testamos a data
    try
      dDataTest := StrToDate(sDataTest);
      Result := 29;
      Exit;
    except
      Result := 28;
      Exit
    end;
  end;

  aDias[1]  := 31;
  aDias[2]  := 28;
  aDias[3]  := 31;
  aDias[4]  := 30;
  aDias[5]  := 31;
  aDias[6]  := 30;
  aDias[7]  := 31;
  aDias[8]  := 31;
  aDias[9]  := 30;
  aDias[10] := 31;
  aDias[11] := 30;
  aDias[12] := 31;

  // Retornamos a quantidade de dias do mes
  Result := aDias[StrToInt(Copy(sMesAno, 1, 2))];
  Exit;

end;

Function DiaUtil(pd_Dia: TDateTime): TDateTime;
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
    else
    begin
      // Ajustamos o resultado
      Result := ld_Data;
      Break;
    end;;

    // Pesquisamos se a data é feriado
    {FrmPedVenda.QryTemp.Close;
    FrmPedVenda.QryTemp.SQL.CLEAR;
    FrmPedVenda.QryTemp.SQL.Text := 'SELECT GN_DATAFERI                 '+
                        '  FROM FERIADO                     '+
                        ' WHERE GN_DATAFERI = :GN_DATAFERI  ';

    FrmPedVenda.QryTemp.ParamByName('GN_DATAFERI').AsString := FormatDateTime('dd/mm', ld_Data);
    FrmPedVenda.QryTemp.Open;

    // Se for feriado
    if FrmPedVenda.qryTemp.RecordCount > 0 then
    begin
      ld_Data := ld_Data + 1;
      Continue;
    end
    else
    begin
      // Ajustamos o resultado
      Result := ld_Data;
      Break;
    end;}

  end;

  // Destruimos a query
 // FrmPedVenda.qryTemp.Close;
//  qryTemp.Free;

end;

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
function StrAcrEsp(nome:string; Total: integer): string;
begin
 while length(nome) < Total do
  begin
    nome:=nome+' ';
  end;
StrAcrEsp:=nome;
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

function DaysBetween(const ANow, AThen: TDateTime): Integer;
begin
  Result := Trunc(DaySpan(ANow, AThen));
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

{function DesCriptografaSenha(sSenha: String): String;
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
}

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

procedure OrdenarGrid ( Grid : TDBGrid ; Query: TOraQuery;Column: TColumn; POrdemColuna , pOrdem : string );
Var I : integer ;
begin
      for I := 0 to Grid.Columns.Count - 1 do
      Grid.Columns[i].Title.Font.Style := [];

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
                Query.IndexFieldNames := Column.FieldName+' DESC';;
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
end.
