{************ CRÉDITOS DO SISTEMA *************
* Desenvolvido por: Edmilde Freire Montagnoli *
* Desenvolvido para: Céu Azul Alimentos       *
* Inicio: 25/07/2010 * Versão: 1.0.0.0        *
**********************************************}

unit Global;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, MemDS, DBAccess, Ora, PsAPI;

var
  GlbNivel, GlbCodigo: Integer;
  GlbEscolha: Char;
  GlbUser, GlbSenha, GlbNumero: string;
  VezOr, XRPM, FrmOriPesq: integer;
  gi_IdenUsua, gi_IdenModu: Integer;
  gi_CodiUsuaSist, gi_ContrBaixa: Integer;
  gs_NomeReduUsuaSist, gs_NomeUsuario: string;
  ld_DataHora: TDateTime;
  Vfch, gi_Filial, gi_IndiImpr, gi_QtdeCopi, gi_TagRela: Integer;
  gs_BancDado, gs_LogUsua, gs_SiglModu, gs_Empresa: string;
  gb_LogiAuto, gb_PrimEntr, gb_SeguAtiv, gb_ErroBanc: Boolean;
//  sltJaneGran: TStringList;
  ga_RecuSmar: array[0..5] of string;
  ga_Recursos: array[0..5] of string;
function CriptografaSenha(sSenha: string): string;
function VerificaExecutavel(NomeAplicacao: string): Boolean;

implementation

// *************************************************************************
// * CriptografaSenha
// *************************************************************************
//

function CriptografaSenha(sSenha: string): string;
var
  sCript, sReverte: string;
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
      iTemp := iTemp + Ord(sProvi[iLoop1 - 1]);

    for iLoop1 := 1 to 12 do
    begin
      iTemp := iTemp + Ord(sProvi[iLoop1 - 1]);
      sCript := sCript + Chr(33 + (iTemp mod 94));
    end;

    sSenha := sCript;
  end;

  Result := sCript;
end;

function VerificaExecutavel(NomeAplicacao: string): Boolean;
  var rId: array[0..999] of DWord; i, NumProc, NumMod: DWord;
    HProc, HMod: THandle; sNome: string;
    Tamanho, Count: Integer;
    sNomeTratado: string;
    processos: Integer;
begin
  result := False;
  SetLength(sNome, 256);

  processos := 0;

  EnumProcesses(@rId[0], 4000, NumProc);

  for i := 0 to NumProc div 4 do
  begin
    HProc := OpenProcess(Process_Query_Information or Process_VM_Read, FALSE, rId[i]);

    if HProc = 0 then
      Continue;

    EnumProcessModules(HProc, @HMod, 4, NumMod);

    GetModuleBaseName(HProc, HMod, @sNome[1], 256);
    sNomeTratado := trim(sNome);
    Tamanho := Length(SnomeTratado);
    Count := 1;

    while Count <= Tamanho do
    begin
      if SnomeTratado[Count] = '' then
        Break;

      Inc(count);
    end;

    sNomeTratado := Copy(SnomeTratado, 1, Count - 1);

    if AnsiUpperCase(sNomeTratado) = AnsiUpperCase(NomeAplicacao) then
    begin
      Inc(processos);

      if processos > 1 then
      begin
        Result := True;
        CloseHandle(HProc);
        Break;
      end;
    end;

    CloseHandle(HProc);
  end;
end;

end.

