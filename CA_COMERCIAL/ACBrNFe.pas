unit ACBrNFe;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms, StrUtils,
  Winapi.Windows, Vcl.Dialogs, DB,
  ufrmImpDocPed, Global;


var
  //Inicialização
  ACBr_I_NaturezaOperaca,
  ACBr_I_Modelo,
  ACBr_I_Serie,
  ACBr_I_Codigo,
  ACBr_I_Numero,
  ACBr_I_Emissao,
  ACBr_I_Saida,
  ACBr_I_Tipo,
  ACBr_I_FormaPag,
  ACBr_I_Finalidade,
  ACBr_I_FinNFe,
  ACBr_I_verProc,
  ACBr_I_cUF,
  ACBr_I_CidadeCod,

  ACBr_I_hSaiEnt,
  ACBr_I_procEmi,
  ACBr_I_dhCont,
  ACBr_I_xJust,
  ACBr_I_IE,
  ACBr_I_refCTe,
  ACBr_I_ModECF,
  ACBr_I_nECF,
  ACBr_I_COO,
  ACBr_I_idDest,
  ACBr_I_indFinal, // 0=Normal;  1=Consumidor final;

  //Referenciadas
  ACBr_R_TIPO,
  ACBr_R_B13_refNFe,
  ACBr_R_B14_cUF,
  ACBr_R_B14_AMM,
  ACBr_R_B14_CNPJ,
  ACBr_R_B14_MODELO,
  ACBr_R_B14_SERIE,
  ACBr_R_B14_nNF,
  ACBr_R_B20a_cUF,
  ACBr_R_B20a_AAMM,
  ACBr_R_B20a_IE,
  ACBr_R_B20a_mod,
  ACBr_R_B20a_serie,
  ACBr_R_B20a_nNF,
  ACBr_R_B20D_CNPJ,
  ACBr_R_B20E_CPF,
  ACBr_R_B20I_REFCTE,
  ACBr_R_B20J_MOD,
  ACBr_R_B20J_NECF,
  ACBr_R_B20J_COO,

  //Emitente
  ACBr_E_CNPJ,
  ACBr_E_IE,
  ACBr_E_Razao,
  ACBr_E_Fantasia,
  ACBr_E_Fone,
  ACBr_E_CEP,
  ACBr_E_Logradouro,
  ACBr_E_Numero,
  ACBr_E_Complemento,
  ACBr_E_Bairro,
  ACBr_E_CidadeCod,
  ACBr_E_Cidade,
  ACBr_E_UF,
  ACBr_E_PaisCod,
  ACBr_E_Pais,
  ACBr_E_IEST,
  ACBr_E_IM,
  ACBr_E_CNAE,

  ACBr_E_CRT,

  //Destinatario
  ACBr_D_CNPJCPF,
  ACBr_D_IE,
  ACBr_D_indIEDest,
  ACBr_D_ISUF,
  ACBr_D_NomeRazao,
  ACBr_D_Fone,
  ACBr_D_CEP,
  ACBr_D_Logradouro,
  ACBr_D_Numero,
  ACBr_D_Complemento,
  ACBr_D_Bairro,
  ACBr_D_CidadeCod,
  ACBr_D_Cidade,
  ACBr_D_UF,
  ACBr_D_PaisCod,
  ACBr_D_Pais,

  ACBr_D_Email,

  //Produto001
  ACBr_P_CFOP,
  ACBr_P_Codigo,
  ACBr_P_Descricao,
  ACBr_P_EAN,
  ACBr_P_NCM,
  ACBr_P_CEST,
  ACBr_P_Unidade,
  ACBr_P_Quantidade,
  ACBr_P_ValorUnitario,
  ACBr_P_EANTrib,
  ACBr_P_ValorTotal,
  ACBr_P_ValorDesconto,
  ACBr_P_NumeroDI,
  ACBr_P_DataRegistroDI,
  ACBr_P_LocalDesembaraco,
  ACBr_P_UFDesembaraco,
  ACBr_P_DataDesembaraco,
  ACBr_P_CodigoExportador,

  ACBr_P_vOutro,
  ACBr_P_indTot,
  ACBr_P_xPed,
  ACBr_P_nitemPed,

  //LADI001001
  ACBr_A_NumeroAdicao,
  ACBr_A_CodigoFrabricante,
  ACBr_A_DescontoADI,

  //ICMS001
  ACBr_IC_CST,
  ACBr_IC_Origem,
  ACBr_IC_Modalidade,
  ACBr_IC_ValorBase,
  ACBr_IC_Aliquota,
  ACBr_IC_Valor,
  ACBr_IC_ModalidadeST,
  ACBr_IC_PercentualMargemST,
  ACBr_IC_PercentualReducaoST,
  ACBr_IC_ValorBaseST,
  ACBr_IC_AliquotaST,
  ACBr_IC_ValorST,
  ACBr_IC_PercentualReducao,

  ACBr_IC_CSOSN,
  ACBr_IC_UFST,
  ACBr_IC_pBCOp,
  ACBr_IC_vBCSTRet,
  ACBr_IC_vICMSSTRet,
  ACBr_IC_motDesICMS,
  ACBr_IC_pCredSN,
  ACBr_IC_vCredICMSSN,
  ACBr_IC_vBCSTDest,
  ACBr_IC_vICMSSTDest,

  //IPI001
  ACBr_IP_CST,
  ACBr_IP_ClasseEnquadramento,
  ACBr_IP_CNPJProdutor,
  ACBr_IP_CodigoSeloIPI,
  ACBr_IP_QuantidadeSelos,
  ACBr_IP_CodigoEnquadramento,
  ACBr_IP_ValorBase,
  ACBr_IP_Quantidade,
  ACBr_IP_ValorUnidade,
  ACBr_IP_Aliquota,
  ACBr_IP_Valor,

  //II001
  ACBr_II_ValorBase,
  ACBr_II_ValorDespAduaneiras,
  ACBr_II_ValorII,
  ACBr_II_ValorIOF,

  //PIS001
  ACBr_P1_CST,
  ACBr_P1_ValorBase,
  ACBr_P1_Aliquota,
  ACBr_P1_Valor,
  ACBr_P1_Quantidade,
  ACBr_P1_TipoCalculo,

  //PISST001
  ACBr_SS_ValorBase,
  ACBr_SS_AliquotaPerc,
  ACBr_SS_Quantidade,
  ACBr_SS_AliquotaValor,
  ACBr_SS_ValorPISST,

  //COFINS001
  ACBr_CF_CST,
  ACBr_CF_ValorBase,
  ACBr_CF_Aliquota,
  ACBr_CF_Valor,
  ACBr_CF_TipoCalculo,
  ACBr_CF_Quantidade,

  //COFINSST001
  ACBr_CI_ValorBase,
  ACBr_CI_AliquotaPerc,
  ACBr_CI_Quantidade,
  ACBr_CI_AliquotaValor,
  ACBr_CI_ValorCOFINSST,

  //Total
  ACBr_T_BaseICMS,
  ACBr_T_ValorICMS,
  ACBr_T_ValorProduto,
  ACBr_T_BaseICMSSubstituicao,
  ACBr_T_ValorICMSSubstituicao,
  ACBr_T_ValorFrete,
  ACBr_T_ValorSeguro,
  ACBr_T_ValorDesconto,
  ACBr_T_ValorII,
  ACBr_T_ValorIPI,
  ACBr_T_ValorPIS,
  ACBr_T_ValorCOFINS,
  ACBr_T_ValorOutrasDespesas,
  ACBr_T_ValorNota,

  //Transportador
  ACBr_TR_FretePorConta,
  ACBr_TR_CnpjCpf,
  ACBr_TR_NomeRazao,
  ACBr_TR_IE,
  ACBr_TR_Endereco,
  ACBr_TR_Cidade,
  ACBr_TR_UF,
  ACBr_TR_ValorServico,
  ACBr_TR_ValorBase,
  ACBr_TR_Aliquota,
  ACBr_TR_Valor,
  ACBr_TR_CFOP,
  ACBr_TR_CidadeCod,
  ACBr_TR_Placa,
  ACBr_TR_UFPlaca,
  ACBr_TR_RNTC,

  //Veiculo
  ACBr_VE_Cilin,
  ACBr_VE_CMT,
  ACBr_VE_cCorDENATRAN,
  ACBr_VE_lota,
  ACBr_VE_tpRest,

  //Volume001
  ACBr_V_Quantidade,
  ACBr_V_Especie,
  ACBr_V_Marca,
  ACBr_V_Numeracao,
  ACBr_V_PesoLiquido,
  ACBr_V_PesoBruto,

  //Fatura
  ACBr_F_Numero,
  ACBr_F_ValorOriginal,
  ACBr_F_ValorDesconto,
  ACBr_F_ValorLiquido,

  //Duplicata001
  ACBr_DP_Numero,
  ACBr_DP_DataVencimento,
  ACBr_DP_Valor,

  //DadosAdicionais
  ACBr_DA_Complemento,
  ACBr_DA_Fisco,
  //InfAdic001
  ACBr_IF_Campo,
  ACBr_IF_Texto,

  //Compra
  {NOME: FABRICIO DATA:23/02/2018 MOTIVO: CLIENTE PAGUE MENOS SOLICITOU A INCLUSÃO DO NUMERO DO PEDIDO COMO UMA TAG SEPARADA DENTRO DO XML}
  ACBr_CP_xPed,

  //Forma de Pagamento
  {FABRICIO - 26/07/2018 - MOTIVO:NFE4.0}
  ACBr_PG_vPag, // valor pago para determinada forma de pagamento
  ACBr_PG_tPag, // meio por qual a nota sera paga: 90 sem pagto, 15 Boleto, 99 Outros

  //Dados de produto combustivel
  ACBr_Combu_cProdANP, // código ANP
  ACBr_Combu_descANP, //  descrição ANP
  ACBr_Combu_UFCons   //  uf do consumo

  : String;

  TamRetorno, TamEstabiliza, CancelaNFe : Integer;

  ACBrModulo : String;
  ACBrNR01, ACBrNR02,  Denovo, Versao2  : Integer;

  //Retorno do acbrnfe
  vTela , ArqRet , ArquivoMon, ArquIni,  RecEnvio, RecRetorno, DatEnvio, NumNFE, NFeChave, NFeDtRecto, NFeProtocolo, NFeDigital, NFeArquivo : String;

 {$H+}
  Comando : WideString;

  T : TextFile;

  procedure Gravar_ENT(Comando: String);
  procedure CriarEnviarNFe(cTextoIni : string; Lote: String; ImprimirDanfe: String);

  procedure EncerraArquivoIni;
  function CriarArquivoIni(ArquivoIni, ArqMon : String; Contador: Integer; Tela : String): Integer;

  function Verifica_Resposta_CriarEnviarNFe(NRLOTE : Integer): Integer;
  function Verifica_Resposta_InutilizarNFe(NRNOTAI : Integer; NRNOTAF : Integer): Integer;
  function Verifica_Resposta_CancelarNFe(NRNOTA : Integer): Integer;
  function Verifica_Resposta_ImprimirDanfe(NRNOTA : Integer): Integer;
  function Verifica_Resposta_EnviarEmail(NRNOTA : Integer; IDCLIENTE : Integer; COMSEMPDF : Integer): Integer;

  function TamanhoArquivo(Arquivo: string): Integer;
  function EstabilizaArquivo(Arquivo: string): Integer;
  function Conv_data(AData: TDatetime; Tipo: integer):String;
  function Conv_hora(OTime: TDatetime; Tipo: integer):String;
  function Espera_retorno(ArqSai: String): integer;
  function BuscaTroca(Text: string) : string;

  procedure Tentando_comunicacao_Sefaz(Modulo: String ; NR01 : Integer ; NR02 : Integer; Tela : String);

  procedure Memo_Cabecalho;
  procedure Memo_Emitente;
  procedure Memo_Destinatario;
  procedure Memo_Produtos;
  procedure Memo_CProdutos(V : Integer);
  procedure Memo_ICMS;
  procedure Memo_CICMS(V : Integer);
  procedure Memo_IPI;
  procedure Memo_CIPI(V : Integer);
  procedure Memo_PIS;
  procedure Memo_CPIS(V : Integer);
  procedure Memo_COFINS;
  procedure Memo_CCOFINS(V : Integer);
  procedure Memo_TotalNFe;
  procedure Memo_Transportador;
  procedure Memo_Volume;
  procedure Memo_Fatura;
  procedure Memo_Duplicata;
  procedure Memo_CDuplicata(V : Integer);
  procedure Memo_Adicional;
  procedure Memo_CInformacoes(V : Integer);
  procedure Memo_Informacoes;
  procedure Memo_Limpa;
  procedure Memo_REF;
  procedure Memo_CREF(V : Integer);
  procedure Memo_Compra;
  {FABRICIO - 26/07/2018 - MOTIVO:NFE 4.0}
  procedure Memo_CPagto(V : Integer);
  procedure Memo_Pagto;
  procedure Memo_Combustivel;


implementation

function BuscaTroca(Text: string) : string;
var
  n : integer;
  novo, VlrInt, VlrDec : String;
begin

  novo := '';
  VlrDec := Copy(Text, Length(Text)- 4, Length(Text));
  VlrInt := Copy(Text, 1, Length(Text)-6);
  for n := 1 to length(VlrInt) do
  if Copy(Text,n,1) <> ',' then novo := novo + Copy(Text,n,1);
  Result := novo + '.' + VlrDec;

end;

procedure Gravar_ENT(Comando: String);
var
  F : TextFile;
  Arquivo : String;
begin

  //Não foi passado aonde guardar o entnfe.txt
  Arquivo := 'C:\ACBrNFeMonitor\ENTNFE.TXT';
  AssignFile (F,Arquivo );
  Rewrite(F);

  Writeln(F,Comando);

  CloseFile(F);

end;

procedure Tentando_comunicacao_Sefaz(Modulo : String ; NR01 : Integer ; NR02 : Integer ; Tela : string );
var
  I, Tipo : Integer;
begin
  vTela := Tela;

  If CancelaNFe = 0 then
  begin

    Tipo       := 0;
    ACBrNR01   := NR01;
    ACBrNR02   := NR02;
    ACBrModulo := Modulo;

//    if ( Tela = 'ImpDocPed') then
//    begin
//        frmImpDocPed.Progresso.Min := 0;
//        frmImpDocPed.progresso.Max := 6000;
//        frmImpDocPed.progresso.Position := 0;
//        //Poe o foco no botao de cancela
//        If frmImpDocPed.PnMensagem.Visible = True then
//        begin
//          frmImpDocPed.btnCancelaNFe.setfocus;
//          For I := 1 to 6000 do frmImpDocPed.progresso.Position := frmImpDocPed.progresso.Position + 1;
//          frmImpDocPed.progresso.Position := 0;
//        end;
//    end;

    If Modulo = 'Enviando' then Tipo := 1;
    If Modulo = '' then Tipo := 2;

    //Espera da resposta
    If Tipo = 0 then
    begin

        //ArqRet := 'C:\ACBrNFeMonitor\SAINFE.txt'
      ArqRet := ReplaceStr( ArquivoMon , '.txt', '-resp.txt');
      ArqRet := ReplaceStr( ArqRet , 'ENTNFE', 'SAINFE');

      TamRetorno := Espera_retorno( ArqRet );

      If TamRetorno > 0 then
      begin

//          if ( Tela = 'ImpDocPed')  then
//              frmImpDocPed.PnMensagem.Visible := False;

        If Modulo = 'CriarEnviarNFe' then Verifica_Resposta_CriarEnviarNFe(NR01);
        If Modulo = 'InutilizarNFe' then Verifica_Resposta_InutilizarNFe(NR01, NR02);
        If Modulo = 'Imprimir_Danfe_NFe' then Verifica_Resposta_ImprimirDanfe(NR01);
        If Modulo = 'Cancelar_NFe' then Verifica_Resposta_CancelarNFe(NR01);
      end
      else  If TamRetorno = 0 then
      begin
//           if ( Tela = 'ImpDocPed' ) then
//           begin
//                frmImpDocPed.PnMensagem.Visible := True;
//                frmImpDocPed.lblInformacao.Caption := 'Esperando Resposta do ACBrNFeMonitor...';
//           end;

        application.ProcessMessages;
        //CancelaNFe := 0;
        Tentando_comunicacao_Sefaz(Modulo, NR01, NR02, Tela);
      end;

    end;

    //Espera para envio
    If Tipo = 1 then
    begin

      //Retorno
      TamRetorno := 0;
      //Apaga o arquivo de entrada caso existir
      If FileExists( ArquivoMon ) then TamRetorno := 1;

      If TamRetorno = 1 then
      begin
//          if ( Tela = 'ImpDocPed')  then
//          begin
//              frmImpDocPed.PnMensagem.Visible := True;
//              frmImpDocPed.lblInformacao.Caption := 'Esperando Liberação do ACBrNFeMonitor para enviar comando...';
//          end ;

        application.ProcessMessages;
        //CancelaNFe := 0;
        Tentando_comunicacao_Sefaz(Modulo, NR01, NR02, Tela);
      end
      else If TamRetorno = 0 then
      begin
//          if ( Tela = 'ImpDocPed')  then
//              frmImpDocPed.PnMensagem.Visible := False;
      end;

    end;

  end;

end;

function CriarArquivoIni(ArquivoIni, ArqMon : String ; Contador: Integer; Tela : string ): Integer;
begin
      vTela := Tela;
      ArquivoMon := ArqMon;
      ArquIni    := ArquivoIni;
      //Não tem o arquivo ENTNFE.TXT então Cria o arquivo EntNFe
      Tentando_comunicacao_Sefaz('Enviando', 0, 0, Tela );

      AssignFile (T,ArquivoIni);
      Rewrite(T);
      Writeln(T,'NFE.CriarEnviarNFe(' + '"' + Comando );

end;

procedure EncerraArquivoIni;
begin
  //Fecha o arquivo ini
  CloseFile(T);
end;

procedure CriarEnviarNFe(cTextoIni : string; Lote: String; ImprimirDanfe: String);
begin
  If Lote <> '' then
  If ImprimirDanfe <> '' then
  begin
    Writeln(T,'", ' + Lote + ', ' + ImprimirDanfe + ')');
    //Encerra a criação do arquivo ini
    EncerraArquivoIni;


    CancelaNFe := 0 ;
    CopyFile( PChar(ArquIni) , PChar(ArquivoMon) , False );


  end;
end;

function TamanhoArquivo(Arquivo: string): Integer;
begin

  with TFileStream.Create(Arquivo, fmOpenRead or fmShareExclusive) do

  try
    Result := Size;
  finally
    Free;
  end;

end;

function EstabilizaArquivo(Arquivo: string): Integer;
begin

  If CancelaNFe = 0 then
  begin

    //Estabilizou o arquivo
    TamRetorno := Espera_retorno(Arquivo);

    //Não estabilizou o arquivo
    If TamRetorno > TamEstabiliza then
    begin

      //Salva o tamanho atual
      TamEstabiliza := TamRetorno;

      //Zera denovo
      Denovo := 0;

      //Verifica denovo se estabilizou
      EstabilizaArquivo(Arquivo);

    end;

    //Estabilizou o recebimento
    If TamRetorno = TamEstabiliza then
    begin

      //Incrementa uma nova verificacao
      Denovo := Denovo + 1;

      //Houve estabilizacao
      If Denovo > 6000 then Result := 1; //48000

      //Tempo para estabilizacao
      If Denovo < 6000 then EstabilizaArquivo(Arquivo); //48000

    end;

  end

end;

function Conv_data(AData: TDatetime; Tipo: integer):String;
var
  Present: TDatetime;
  ODia, SDia, SMes, SAno, Inicio, Fim : String;
  Year, Month, Day, Ano : Word;
begin

  Try

    DecodeDate(AData, Year, Month, Day);

    Ano := Year - 2000;
    If Ano < 10 then SAno := '0' + InttoStr(Ano);
    If Ano > 9 then SAno := InttoStr(Ano);

    If Day < 10 then SDia := '0' + InttoStr(Day);
    If Day > 9 then SDia := InttoStr(Day);

    If Month < 10 then SMes := '0' + InttoStr(Month);
    If Month > 9 then SMes := InttoStr(Month);

    If tipo = 1 then ODia := SDia + '/' + SMes + '/' + InttoStr(Year);
    If tipo = 2 then ODia := InttoStr(Year) + '-' + SMes + '-' + SDia;

    Result := ODia;

  except

    Result := DatetoStr(Date);

  end;

end;

function conv_hora(OTime: TDatetime; Tipo: integer):String;
var
  Present: TDatetime;
  THora, SHor, SMin, SSeg : String;
  Hour, Min, Sec, MSec : Word;
  Dt : Integer;
begin
  Try
    Present := OTime;
    DecodeTime(Present, Hour, Min, Sec, MSec);

    If Hour < 10 then SHor := '0' + InttoStr(Hour);
    If Hour > 9 then SHor := InttoStr(Hour);

    If Min < 10 then SMin := '0' + InttoStr(Min);
    If Min > 9 then SMin := InttoStr(Min);

    If Sec < 10 then SSeg := '0' + InttoStr(Sec);
    If Sec > 9 then SSeg := InttoStr(Sec);

    If Tipo = 1 then THora := InttoStr(Hour) + InttoStr(Min) + InttoStr(Sec);
    If Tipo = 2 then THora := InttoStr(Hour) + ':' + InttoStr(Min) + ':' + InttoStr(Sec);
    If Tipo = 3 then THora := SHor + ':' + SMin + ':' + SSeg;
    
    Result := THora;
  except
    Result := '00:00:00';
  end;
end;

function Espera_retorno(ArqSai: String): integer;
var
  Existe : Integer;
begin
  //Espera o retorno do arquivo do acbr e retorna o tamanho
  Existe := 0;
  If FileExists(ArqSai) then Existe := 1;

  If Existe = 0 then Result := 0;
  If Existe = 1 then Result := TamanhoArquivo(ArqSai);

end;

{
function Espera_retorno(ArqSai: String): integer;
var
  nContador, Continua : Integer;
begin
  //Espera o retorno do arquivo do acbr e retorna o tamanho
  nContador := 0;

  //Executa enquanto não vier o arquivo saida
  While not FileExists(ArqSai) do
  begin

    //Ainda não veio o arquivo saida
    nContador := nContador + 1;
    If nContador > 120 then
    begin

      Continua := 0;
      If MessageDlg('COMUNICACAO COM SEFAZ !' + #13 + 'Favor verificar se sua Conexão com a Internet esta ativa.' + #13 +
      ' Tentar Novamente ? ', mtConfirmation,[mbOk, mbCancel], 0) = mrOk then Continua := 1;

      If Continua = 1 then nContador := 0;

      If Continua = 0 then
      begin
        Result := 0;
        break;
      end;

    end;

  end;

  Result := 0;
  If FileExists(ArqSai) then Result := TamanhoArquivo(ArqSai);

end;
}
function Verifica_Resposta_InutilizarNFe(NRNOTAI : Integer; NRNOTAF : Integer): Integer;
var
  F : TextFile;
  TemSaiNFE : Integer;
  NotaFiscal : Integer;
  Linha, Arquivo : String;
  NFeChave, NFeDtRecto, NFeProtocolo : String;
  TArquivo, TLidos : Integer;

begin

  //Inicial verificacao
  //TamRetorno := 0;
  //Verirfica o tamanho total
  TArquivo := TamRetorno;

  If TArquivo > 0 then
  begin

    //Verifica retorno da resposta
    //Caso não retorne positivo faz leitura novamente até receber resposta
    Arquivo := 'C:\ACBrNFeMonitor\SAINFE.TXT';
    AssignFile(F, Arquivo);
    Reset(F);

    //Zera tlidos
    TLidos := 0;

    //Limpa a janela de retorno
//    FrmImpDocPed.MemoACBrNFe.Clear;

    //Abre o arquivo de
    frmImpDocPed.qryNFEXML.Open;

    //Faz looping até o final do arquivo
    while TArquivo > TLidos do
    begin

      //Faz leitura de uma linha do arquivo
      Readln(F, Linha);
      //qtdade de linha
      TLidos := TLidos + Length(Linha) + 2;

      If Trim(Linha) = '[INUTILIZACAO]' then
      begin

        While not Eof(F) do
        begin

          Readln(F, Linha);
          //qtdade de linha
          TLidos := TLidos + Length(Linha) + 2;

//          If Trim(Linha) = 'CStat=102' then
//          begin
//            frmImpDocPed.MemoACBrNFe.Lines.Add('');
//            frmImpDocPed.MemoACBrNFe.Lines.Add('Inutilização de NF-e do numero: ' + InttoStr(NRNOTAI) + ' até nº: ' + InttoStr(NRNOTAF) + ' homologado');
//          end;

          //Salva aqui a data do recebimento da nfe
          If Copy(Trim(Linha), 1, 9)  = 'DhRecbto=' then
          begin
//            frmImpDocPed.MemoACBrNFe.Lines.Add('Data Recebimento da NFe: ' + Copy(Trim(Linha), 10 , Length(Trim(Linha)) - 9));
            NFeDtRecto := Copy(Trim(Linha), 10 , Length(Trim(Linha)) - 9);
          end;

          //Salva aqui o numero do protocolo nfe
          If Copy(Trim(Linha), 1, 6)  = 'NProt=' then
          begin
//            frmImpDocPed.MemoACBrNFe.Lines.Add('Protocolo nº: ' + Copy(Trim(Linha), 7 , Length(Trim(Linha)) - 6));
            NFeProtocolo := Copy(Trim(Linha), 7 , Length(Trim(Linha)) - 6);
          end;

        end;

//        frmImpDocPed.MemoACBrNFe.Lines.Add('');
//        frmImpDocPed.MemoACBrNFe.Lines.Add('**************************************************');

      end;

    end;

    //Depois de lido todo o arquivo fecha arquivo
    CloseFile(F);

    //Apaga o arquivo de saida
    If FileExists('C:\ACBrNFeMonitor\SAINFE.TXT') then Deletefile('C:\ACBrNFeMonitor\SAINFE.TXT');

    //Se existir um numero de protocolo é porque a inutilização foi concluida com sucesso
    If NFeProtocolo <> '' then
    begin

      //Localiza aqui todas as nfe se cadastradas no nota fiscal xml e marca x no campo inutilizada

    end;

    //Abre o arquivo de
    frmImpDocPed.qryNFEXML.Close;

    //Caso a janela esteja com conteudo mostra na tela
//    If FrmImpDocPed.MemoACBrNFe.Lines.Count > 0 then
//    begin
//
//      //Copia o conteudo de uma janela para outra
//      FrmImpDocPed.MemoNFe.Lines.Text := FrmImpDocPed.MemoACBrNFe.Lines.Text;
//      FrmImpDocPed.MemoNFe.Lines.Add('');
//
//    end;

  end;

end;

function Verifica_Resposta_CancelarNFe(NRNOTA : Integer): Integer;
var
  F : TextFile;
  TemSaiNFE : Integer;
  NotaFiscal : Integer;
  Linha, Arquivo : String;
  NFeChave, NFeDtRecto, NFeProtocolo : String;
  TArquivo, TLidos : Integer;

begin

  //Inicial verificacao
  //TamRetorno := 0;
  //Verirfica o tamanho total
  TArquivo := TamRetorno;

  If TArquivo > 0 then
  begin

    //Verifica retorno da resposta
    //Caso não retorne positivo faz leitura novamente até receber resposta
    Arquivo := 'C:\ACBrNFeMonitor\SAINFE.TXT';
    AssignFile(F, Arquivo);
    Reset(F);

    //Zera tlidos
    TLidos := 0;

    //Limpa a janela de retorno
//    FrmImpDocPed.MemoACBrNFe.Clear;

    //Abre o arquivo de
    frmImpDocPed.qryNFEXML.Open;

    //Faz looping até o final do arquivo
    while TArquivo > TLidos do
    begin

      //Faz leitura de uma linha do arquivo
      Readln(F, Linha);
      //qtdade de linha
      TLidos := TLidos + Length(Linha) + 2;

      If Trim(Linha) = '[CANCELAMENTO]' then
      begin

        While not Eof(F) do
        begin

          Readln(F, Linha);
          //qtdade de linha
          TLidos := TLidos + Length(Linha) + 2;

//          If Trim(Linha) = 'CStat=101' then
//          begin
//            frmImpDocPed.MemoACBrNFe.Lines.Add('');
//            frmImpDocPed.MemoACBrNFe.Lines.Add('Cancelamento de NF-e homologado');
//          end;

          //Salva aqui a chave da nfe no banco de dados
          If Copy(Trim(Linha), 1, 6)  = 'ChNFe=' then
          begin
//            frmImpDocPed.MemoACBrNFe.Lines.Add('Chave da NFe nº: ' + Copy(Trim(Linha), 7 , Length(Trim(Linha)) - 6));
            NFeChave := Copy(Trim(Linha), 7 , Length(Trim(Linha)) - 6);
          end;

          //Salva aqui a data do recebimento da nfe
          If Copy(Trim(Linha), 1, 9)  = 'DhRecbto=' then
          begin
//            frmImpDocPed.MemoACBrNFe.Lines.Add('Data Recebimento da NFe: ' + Copy(Trim(Linha), 10 , Length(Trim(Linha)) - 9));
            NFeDtRecto := Copy(Trim(Linha), 10 , Length(Trim(Linha)) - 9);
          end;

          //Salva aqui o numero do protocolo nfe
          If Copy(Trim(Linha), 1, 6)  = 'NProt=' then
          begin
//            frmImpDocPed.MemoACBrNFe.Lines.Add('Protocolo nº: ' + Copy(Trim(Linha), 7 , Length(Trim(Linha)) - 6));
            NFeProtocolo := Copy(Trim(Linha), 7 , Length(Trim(Linha)) - 6);
          end;

        end;

//        frmImpDocPed.MemoACBrNFe.Lines.Add('');
//        frmImpDocPed.MemoACBrNFe.Lines.Add('**************************************************');

      end;

    end;

    //Depois de lido todo o arquivo fecha arquivo
    CloseFile(F);

    //Apaga o arquivo de saida
    If FileExists('C:\ACBrNFeMonitor\SAINFE.TXT') then Deletefile('C:\ACBrNFeMonitor\SAINFE.TXT');

    //Se existir um numero de protocolo é porque a inutilização foi concluida com sucesso
    If NFeProtocolo <> '' then
    begin

      //Localiza aqui todas as nfe se cadastradas no nota fiscal xml e marca x no campo inutilizada

    end;

    //Abre o arquivo de
    frmImpDocPed.qryNFEXML.Close;

    //Caso a janela esteja com conteudo mostra na tela
//    If FrmImpDocPed.MemoACBrNFe.Lines.Count > 0 then
    begin

      //Copia o conteudo de uma janela para outra
//      FrmImpDocPed.MemoNFe.Lines.Text := FrmImpDocPed.MemoACBrNFe.Lines.Text;
//      FrmImpDocPed.MemoNFe.Lines.Add('');

    end;

  end;


  {
  Exemplo de Resposta:
  OK: Cancelamento de NF-e homologado
  [CANCELAMENTO]
  Versao=1.07
  Id=
  TpAmb=2
  VerAplic=SP_NFE_PL_005c
  CStat=101
  XMotivo=Cancelamento de NF-e homologado
  CUF=35
  ChNFe=350XXXXXXXXXXXXXXXXX550010000000220000000229
  DhRecbto=2009-03-25T08:50:50
  NProt=2009-03-25T08:50:50
  }

end;

function Verifica_Resposta_CriarEnviarNFe(NRLOTE : Integer): Integer;
var
  F : TextFile;
  TArquivo, TLidos, TemSaiNFE, NotaFiscal, Passa, I, Erro : Integer;
  Tipo, Status, RecEnvio, RecRetorno, DatEnvio, NFeDtRecto, NumNFE, NFENum,
  NFeChave, NFeProtocolo, NFeDigital, NFeArquivo, ErroMensagem, ErroTag : String;
  Linha, Arquivo, SerNFE, CopArqRet : String;
  Dt_Nota : TDateTime;

begin

  //Inicial verificacao
  //TamRetorno := 0;
  //Verirfica o tamanho total
  TArquivo := TamRetorno;

  If TArquivo > 0 then
  begin

    //Verifica retorno da resposta
    //Caso não retorne positivo faz leitura novamente até receber resposta
    Arquivo := ArqRet; //'C:\ACBrNFeMonitor\SAINFE.TXT';
    AssignFile(F, Arquivo);
    Reset(F);

    //Zera tlidos
    TLidos := 0;

    //Abre o arquivo de
    if ( vTela = 'ImpDocPed' ) then
       frmImpDocPed.qryNFEXML.Open;

    ErroTag      := '';
    ErroMensagem := '';

    //Faz looping até o final do arquivo
    while TArquivo > TLidos do
    begin

      //Faz leitura de uma linha do arquivo
      Readln(F, Linha);
      //qtdade de linha
      TLidos := TLidos + Length(Linha) + 2;

      //Mostra mensagem de erro
      If Trim(Copy(Linha, 1, 5)) = 'ERRO:' then
      begin
        Erro := 1;
        ErroMensagem := Copy(Linha, 6, Length(Linha) - 5);

        ShowMessage('ERRO DE EXECUÇÃO...' + ' ' + ErroMensagem);
      end;

      If Trim(Copy(Linha, 1, 4)) = 'TAG:' then
      begin
        ErroTag := Copy(Linha, 5, Length(Linha) - 4);
        ShowMessage('ERRO DE EXECUÇÃO...' + ' ' + ErroTag);
      end;

      //Verifica a situacao
      If Trim(Linha) = '[ENVIO]' then
      begin
          Tipo := 'E';

//          if ( vTela = 'ImpDocPed' ) then
//          begin
//              frmImpDocPed.MemoACBrNFe.Lines.Add('');
//              frmImpDocPed.MemoACBrNFe.Lines.Add('[ENVIO]');
//          end;
      end;

      //Verifica a situacao
      If Trim(Linha) = '[RETORNO]' then
      begin
        Tipo := 'R';
//          if ( vTela = 'ImpDocPed' ) then
//          begin
//              frmImpDocPed.MemoACBrNFe.Lines.Add('');
//              frmImpDocPed.MemoACBrNFe.Lines.Add('[RETORNO]');
//          end;

      end;

      //Verifica a situacao
      If Trim(Copy(Linha, 1, 4)) = '[NFE' then
      begin
        Tipo := 'N';

//         if ( vTela = 'ImpDocPed' ) then
//            frmImpDocPed.MemoACBrNFe.Lines.Add('');

        //Tira caracteres especiais do numero da nfe
        NumNFE := Trim(Copy(Linha, 5, Length(Trim(Linha)) - 4));
        NFENum := ''; For I := 1 to Length(NumNFE) do If Copy(NumNFE, I, 1) <> ']' then NFENum := NFENum + Copy(NumNFE, I, 1);
        NumNFE := NFENum;

//         if ( vTela = 'ImpDocPed' ) then
//            frmImpDocPed.MemoACBrNFe.Lines.Add('NFe nº: ' + NumNFE);

      end;

      //Verifica o status da resposta
      If Trim(Linha) = 'CStat=100' then Status := '100';
      If Trim(Linha) = 'CStat=101' then Status := '101';
      If Trim(Linha) = 'CStat=102' then Status := '102';
      If Trim(Linha) = 'CStat=103' then Status := '103';

      If Tipo = 'E' then
      If Status = '103' then
      If Trim(Copy(Linha, 1, 8)) = 'XMotivo=' then
      begin
//           if ( vTela = 'ImpDocPed' ) then
//              frmImpDocPed.MemoACBrNFe.Lines.Add(Trim(Copy(Linha, 9, Length(Trim(Linha)) - 8))) ;

      end;

      If Tipo = 'R' then
      If Status = '100' then
      If Trim(Copy(Linha, 1, 8)) = 'XMotivo=' then
      begin
//           if ( vTela = 'ImpDocPed' ) then
//              frmImpDocPed.MemoACBrNFe.Lines.Add(Trim(Copy(Linha, 9, Length(Trim(Linha)) - 8))) ;
      end;

      If Tipo = 'N' then
      If Status = '100' then
      If Trim(Copy(Linha, 1, 8)) = 'XMotivo=' then
      begin
//           if ( vTela = 'ImpDocPed' ) then
//              frmImpDocPed.MemoACBrNFe.Lines.Add(Trim(Copy(Linha, 9, Length(Trim(Linha)) - 8)));
      end;

      If Trim(Copy(Linha, 1, 5)) = 'NRec=' then
      begin

        If Tipo = 'E' then
        If Status = '103' then
        begin
            RecEnvio := Trim(Copy(Linha, 6, Length(Trim(Linha)) - 5));
//            if ( vTela = 'ImpDocPed' ) then
//               frmImpDocPed.MemoACBrNFe.Lines.Add('Recibo de envio nº: ' +  Trim(Copy(Linha, 6, Length(Trim(Linha)) - 5)));
        end;

        If Tipo = 'R' then
        //If Status = '100' then
        begin
             RecRetorno := Trim(Copy(Linha, 6, Length(Trim(Linha)) - 5));
//              if ( vTela = 'ImpDocPed' ) then
//                 frmImpDocPed.MemoACBrNFe.Lines.Add('Recibo de retorno nº: ' +  Trim(Copy(Linha, 6, Length(Trim(Linha)) - 5)));

        end;

      end;

      If Trim(Copy(Linha, 1, 9)) = 'DhRecbto=' then
      begin

        If Tipo = 'E' then
        begin
             DatEnvio := Trim(Copy(Linha, 10, Length(Trim(Linha)) - 9));
//             if ( vTela = 'ImpDocPed' ) then
//                frmImpDocPed.MemoACBrNFe.Lines.Add('Data de Envio: ' +  Trim(Copy(Linha, 10, Length(Trim(Linha)) - 9)));
        end;

        If Tipo = 'N' then
        begin
             NFeDtRecto := Trim(Copy(Linha, 10, Length(Trim(Linha)) - 9));
//             if ( vTela = 'ImpDocPed' ) then
//                frmImpDocPed.MemoACBrNFe.Lines.Add('Data de Recebimento: ' +  Trim(Copy(Linha, 10, Length(Trim(Linha)) - 9))) ;
        end;

      end;

      If Trim(Copy(Linha, 1, 6)) = 'ChNFe=' then
      begin

        NFeChave := Trim(Copy(Linha, 7, Length(Trim(Linha)) - 6));
//        if ( vTela = 'ImpDocPed' ) then
//          frmImpDocPed.MemoACBrNFe.Lines.Add('Chave Digital: ' +  Trim(Copy(Linha, 7, Length(Trim(Linha)) - 6)));

      end;

      If Trim(Copy(Linha, 1, 6)) = 'NProt=' then
      begin
          NFeProtocolo := Trim(Copy(Linha, 7, Length(Trim(Linha)) - 6));
//          if ( vTela = 'ImpDocPed' ) then
//             frmImpDocPed.MemoACBrNFe.Lines.Add('Protocolo nº: ' +  Trim(Copy(Linha, 7, Length(Trim(Linha)) - 6)));
      end;

      If Trim(Copy(Linha, 1, 7)) = 'DigVal=' then
      begin
          NFeDigital := Trim(Copy(Linha, 8, Length(Trim(Linha)) - 7));
//          if ( vTela = 'ImpDocPed' ) then
//             frmImpDocPed.MemoACBrNFe.Lines.Add('Digito Validador: ' +  Trim(Copy(Linha, 8, Length(Trim(Linha)) - 7)));
      end;

      If Trim(Copy(Linha, 1, 8)) = 'Arquivo=' then
      begin

        //Obtem o nome do arquivo
        NFeArquivo := ExtractFileName(Trim(Copy(Linha, 9, Length(Trim(Linha)) - 8)));
        //NFeArquivo := NFeChave + '-procNfe.xml';
        //Acrescenta o nome da pasta padrão
        NFeArquivo := 'C:\ACBrNFeMonitor\XML retorno\' + NFeArquivo;
        //Mostra localização do arquivo
//        if ( vTela = 'ImpDocPed' ) then
//           frmImpDocPed.MemoACBrNFe.Lines.Add('XML Armazenada em: ' +  NFeArquivo);

        Tipo := 'G';

        //Verifica se o arquivo existe
        If fileexists(NFeArquivo) = true then
        begin

            if ( vTela = 'ImpDocPed' ) then
            begin
                //Acrescenta aqui os itens da nota fiscal no movimento
                frmImpDocPed.qryNFEXML.Append;
                frmImpDocPed.qryNFEXMLEMPRESA.Value           := gs_Empresa;
                frmImpDocPed.qryNFEXMLFILIAL.Value            := gi_Filial;
                frmImpDocPed.qryNFEXMLID_NOTAFISC.Value       := frmImpDocPed.QryNfEleID_NOTAFISC.AsInteger;
                frmImpDocPed.qryNFEXMLLOTE.Value              := NRLOTE;
                frmImpDocPed.qryNFEXMLDT_EMISNOTAFISC.Value   := DatetoStr(Date);
                frmImpDocPed.qryNFEXMLNR_NOTAFISC.Value       := frmImpDocPed.QryNfEleNR_NOTAFISC.Value;
                frmImpDocPed.qryNFEXMLSR_NOTAFISC.Value       := frmImpDocPed.QryNfEleSG_SERINOTAFISC_NOTAFISC.AsString;
                frmImpDocPed.qryNFEXMLRECIBO_ENVIO.Value      := RecEnvio;
                frmImpDocPed.qryNFEXMLRECIBO_RETORNO.Value    := RecRetorno;
                frmImpDocPed.qryNFEXMLDATA_ENVIO.Value        := DatEnvio;
                frmImpDocPed.qryNFEXMLNFE_NUMERO.Value        := frmImpDocPed.QryNfEleNR_NOTAFISC.Value;
                frmImpDocPed.qryNFEXMLNFE_CHAVE.Value         := NFeChave;
                frmImpDocPed.qryNFEXMLNFE_DT_RECEBTO.Value    := NFeDtRecto;
                frmImpDocPed.qryNFEXMLNFE_PROTOCOLO.Value     := NFeProtocolo;
                frmImpDocPed.qryNFEXMLNFE_CHAVE_DIGITAL.Value := NFeDigital;
                frmImpDocPed.qryNFEXMLNFE_LOCAL.Value         := NFeArquivo;
                //NFe enviada
                If frmImpDocPed.qryNFEXMLRECIBO_ENVIO.Value = '' then frmImpDocPed.qryNFEXMLENVIO.Value := 'N';
                If frmImpDocPed.qryNFEXMLRECIBO_ENVIO.Value <> '' then frmImpDocPed.qryNFEXMLENVIO.Value := 'S';
                //NFe retornada
                If frmImpDocPed.qryNFEXMLRECIBO_RETORNO.Value = '' then frmImpDocPed.qryNFEXMLRETORNO.Value := 'N';
                If frmImpDocPed.qryNFEXMLRECIBO_RETORNO.Value <> '' then frmImpDocPed.qryNFEXMLRETORNO.Value := 'S';
                //NFe Autorizada
                If frmImpDocPed.qryNFEXMLNFE_PROTOCOLO.Value = '' then frmImpDocPed.qryNFEXMLAUTORIZACAO.Value := 'N';
                If frmImpDocPed.qryNFEXMLNFE_PROTOCOLO.Value <> '' then frmImpDocPed.qryNFEXMLAUTORIZACAO.Value := 'S';
                //Salva a nfe no banco de dados
                If FileExists(NFeArquivo) then TBlobField(frmImpDocPed.qryNFEXML.FieldByName('NFE_XML')).LoadFromFile(NFeArquivo);
                frmImpDocPed.qryNFEXML.Post;
                frmImpDocPed.qryNFEXML.CommitUpdates;
                frmImpDocPed.qryNFEXML.ApplyUpdates;

                frmImpDocPed.qryNotas.Close;
             end;

        end;

      end;

    end;

    //Depois de lido todo o arquivo fecha arquivo
    CloseFile(F);

    //Apaga o arquivo de saida
    //If FileExists('C:\ACBrNFeMonitor\SAINFE.TXT') then Deletefile('C:\ACBrNFeMonitor\SAINFE.TXT');
    CopArqRet := ReplaceStr(ArqRet,'SAINFE', 'SAI');
    If FileExists( ArqRet) then
    begin
         If FileExists( CopArqRet) then
            DeleteFile(Pchar(CopArqRet));
         CopyFile( Pchar(ArqRet), Pchar(CopArqRet), False  );
         // DeleteFile(Pchar(ArqRet));
    end;

    //Abre o arquivo de
//    if ( vTela = 'ImpDocPed' ) then
//    begin
//        frmImpDocPed.qryNFEXML.Close;
//
//        //Caso a janela esteja com conteudo mostra na tela
//        If FrmImpDocPed.MemoACBrNFe.Lines.Count > 0 then
//        begin
//
//          //Copia o conteudo de uma janela para outra
//          FrmImpDocPed.MemoNFe.Lines.Text := FrmImpDocPed.MemoACBrNFe.Lines.Text;
//          FrmImpDocPed.MemoNFe.Lines.Add('');
//
//        end;
//    end;

  end;

  //If TArquivo = 0 then Verifica_Resposta_CriarEnviarNFe(NRLOTE);

end;

function Verifica_Resposta_ImprimirDanfe(NRNOTA : Integer): Integer;
var

  F : TextFile;

  Linha, Arquivo : String;

  TArquivo, TLidos, imprimiu : Integer;

begin

  TArquivo := TamRetorno;

  If FileExists('C:\ACBrNFeMonitor\SAINFE.TXT') then
  If TArquivo > 0 then
  begin

    Sleep(2000);

    //Verifica retorno da resposta
    //Caso não retorne positivo faz leitura novamente até receber resposta
    Arquivo := 'C:\ACBrNFeMonitor\SAINFE.TXT';
    AssignFile(F, Arquivo);
    Reset(F);

    //Zera tlidos
    TLidos := 0;

    imprimiu := 0;

    //Faz looping até o final do arquivo
    while TArquivo > TLidos do
    begin

      //Faz leitura de uma linha do arquivo
      Readln(F, Linha);
      //qtdade de linha
      TLidos := TLidos + Length(Linha) + 2;

      //Verifica a situacao
      If Copy(Trim(Linha), 1, 2) = 'OK' then Imprimiu := 1;

    end;

    //Depois de lido todo o arquivo fecha arquivo
    CloseFile(F);

    //Apaga o arquivo de saida
    If imprimiu = 1 then
    If FileExists('C:\ACBrNFeMonitor\SAINFE.TXT') then Deletefile('C:\ACBrNFeMonitor\SAINFE.TXT');

  end;

end;

function Verifica_Resposta_EnviarEmail(NRNOTA : Integer; IDCLIENTE : Integer; COMSEMPDF : Integer): Integer;
var

  F : TextFile;

  Linha, Arquivo : String;

  TArquivo, TLidos : Integer;

begin

  //Inicial verificacao
  //TamRetorno := 0;
  //Verirfica o tamanho total
  TArquivo := TamRetorno;

  If TArquivo > 0 then
  begin

    //Verifica retorno da resposta
    //Caso não retorne positivo faz leitura novamente até receber resposta
    Arquivo := 'C:\ACBrNFeMonitor\SAINFE.TXT';
    AssignFile(F, Arquivo);
    Reset(F);

    //Zera tlidos
    TLidos := 0;

    //Limpa a janela de retorno
//    FrmImpDocPed.MemoACBrNFe.Clear;

    //Abre o arquivo de
    frmImpDocPed.qryNFEXML.Open;

    //Faz looping até o final do arquivo
    while TArquivo > TLidos do
    begin

      //Faz leitura de uma linha do arquivo
      Readln(F, Linha);
      //qtdade de linha
      TLidos := TLidos + Length(Linha) + 2;

      //Verifica a situacao
      If Copy(Trim(Linha), 1, 2) = 'OK' then
      begin
//        frmImpDocPed.MemoACBrNFe.Lines.Add('');
//        If COMSEMPDF = 0 then frmImpDocPed.MemoACBrNFe.Lines.Add('Cliente nº: ' + InttoStr(IDCLIENTE) + ' Nº NFe: ' + InttoStr(NRNOTA) + ' - Email s/ Danfe enviado com sucesso...');
//        If COMSEMPDF = 1 then frmImpDocPed.MemoACBrNFe.Lines.Add('Cliente nº: ' + InttoStr(IDCLIENTE) + ' Nº NFe: ' + InttoStr(NRNOTA) + ' - Email c/ Danfe enviado com sucesso...');

        //Salva aqui informação que danfe da nfe foi impresa com sucesso...

      end;

    end;

    //Depois de lido todo o arquivo fecha arquivo
    CloseFile(F);

    //Apaga o arquivo de saida
    If FileExists('C:\ACBrNFeMonitor\SAINFE.TXT') then Deletefile('C:\ACBrNFeMonitor\SAINFE.TXT');

    //Abre o arquivo de
    frmImpDocPed.qryNFEXML.Close;

    //Caso a janela esteja com conteudo mostra na tela
//    If FrmImpDocPed.MemoACBrNFe.Lines.Count > 0 then
//    begin
//
//      //Copia o conteudo de uma janela para outra
//      FrmImpDocPed.MemoNFe.Lines.Text := FrmImpDocPed.MemoACBrNFe.Lines.Text;
//      FrmImpDocPed.MemoNFe.Lines.Add('');
//
//    end;

  end;

end;

procedure Memo_Cabecalho;
begin
  //Inclui o memo do Destinatario

  Comando := Comando + '[Identificacao]'   + CHR(10) + CHR(10);
  Comando := Comando + 'NaturezaOperacao=' + ACBr_I_NaturezaOperaca + CHR(13) + CHR(10);
  Comando := Comando + 'Modelo='           + ACBr_I_Modelo          + CHR(13) + CHR(10);
  Comando := Comando + 'Serie='            + ACBr_I_Serie           + CHR(13) + CHR(10);
  Comando := Comando + 'Codigo='           + ACBr_I_Codigo          + CHR(13) + CHR(10);
  Comando := Comando + 'Numero='           + ACBr_I_Numero          + CHR(13) + CHR(10);
  Comando := Comando + 'Serie='            + ACBr_I_Serie           + CHR(13) + CHR(10);
  Comando := Comando + 'Emissao='          + ACBr_I_Emissao         + CHR(13) + CHR(10);
  Comando := Comando + 'Saida='            + ACBr_I_Saida           + CHR(13) + CHR(10);
  Comando := Comando + 'Tipo='             + ACBr_I_Tipo            + CHR(13) + CHR(10);
  Comando := Comando + 'FormaPag='         + ACBr_I_FormaPag        + CHR(13) + CHR(10);

  Comando := Comando + 'Finalidade='       + ACBr_I_Finalidade      + CHR(13) + CHR(10);
  Comando := Comando + 'FinNFe='           + ACBr_I_FinNFe          + CHR(13) + CHR(10);

  Comando := Comando + 'verProc='          + ACBr_I_verProc         + CHR(13) + CHR(10);
  Comando := Comando + 'cUF='              + ACBr_I_cUF             + CHR(13) + CHR(10);
  Comando := Comando + 'CidadeCod='        + ACBr_I_CidadeCod       + CHR(13) + CHR(10);
  Comando := Comando + 'idDest='           + ACBr_I_idDest          + CHR(13) + CHR(10);
  Comando := Comando + 'indFinal='         + ACBr_I_indFinal        + CHR(13) + CHR(10);


  If Versao2 = 1 then
  begin
    Comando := Comando + 'hSaiEnt='        + ACBr_I_hSaiEnt + CHR(13) + CHR(10);
    Comando := Comando + 'procEmi='        + ACBr_I_procEmi + CHR(13) + CHR(10);
    Comando := Comando + 'dhCont='         + ACBr_I_dhCont  + CHR(13) + CHR(10);
    Comando := Comando + 'xJus='           + ACBr_I_xJust   + CHR(13) + CHR(10);
    Comando := Comando + 'IE='              + ACBr_I_IE      + CHR(13) + CHR(10);
    Comando := Comando + 'refCTe='          + ACBr_I_refCTe  + CHR(13) + CHR(10);
    Comando := Comando + 'ModECF='          + ACBr_I_ModECF  + CHR(13) + CHR(10);
    Comando := Comando + 'nECF='            + ACBr_I_nECF    + CHR(13) + CHR(10);
    Comando := Comando + 'COO='             + ACBr_I_COO     + CHR(13) + CHR(10);
  end;

  ACBr_I_Codigo          := '';
  ACBr_I_NaturezaOperaca := '';
  ACBr_I_FormaPag        := '';
  ACBr_I_Modelo          := '';
  ACBr_I_Serie           := '';
  ACBr_I_Numero          := '';
  ACBr_I_Emissao         := '';
  ACBr_I_Saida           := '';
  ACBr_I_Tipo            := '';
  ACBr_I_Finalidade      := '';
  ACBr_I_FinNFe          := '';
  ACBr_I_verProc         := '';
  ACBr_I_cUF             := '';
  ACBr_I_CidadeCod       := '';
  ACBr_I_dhCont          := '';
  ACBr_I_xJust           := '';

  ACBr_I_hSaiEnt         := '';
  ACBr_I_procEmi         := '';
  ACBr_I_dhCont          := '';
  ACBr_I_xJust           := '';

  ACBr_I_Tipo            := '';
  ACBr_I_IE              := '';
  ACBr_I_refCTe          := '';
  ACBr_I_ModECF          := '';
  ACBr_I_nECF            := '';
  ACBr_I_COO             := '';
  ACBr_I_indFinal        := ''; 

end;

procedure Memo_Emitente;
begin
  //Inclui o Memo do Emitente

  Comando := Comando + '[Emitente]'                        + CHR(13) + CHR(10);
  Comando := Comando + 'CNPJ='        + ACBr_E_CNPJ        + CHR(13) + CHR(10);
  Comando := Comando + 'IE='          + ACBr_E_IE          + CHR(13) + CHR(10);
  Comando := Comando + 'Razao='       + ACBr_E_Razao       + CHR(13) + CHR(10);
  Comando := Comando + 'Fantasia='    + ACBr_E_Fantasia    + CHR(13) + CHR(10);
  Comando := Comando + 'Fone='        + ACBr_E_Fone        + CHR(13) + CHR(10);
  Comando := Comando + 'CEP='         + ACBr_E_CEP         + CHR(13) + CHR(10);
  Comando := Comando + 'Logradouro='  + ACBr_E_Logradouro  + CHR(13) + CHR(10);
  Comando := Comando + 'Numero='      + ACBr_E_Numero      + CHR(13) + CHR(10);
  Comando := Comando + 'Complemento=' + ACBr_E_Complemento + CHR(13) + CHR(10);
  Comando := Comando + 'Bairro='      + ACBr_E_Bairro      + CHR(13) + CHR(10);
  Comando := Comando + 'CidadeCod='   + ACBr_E_CidadeCod   + CHR(13) + CHR(10);
  Comando := Comando + 'Cidade='      + ACBr_E_Cidade      + CHR(13) + CHR(10);
  Comando := Comando + 'UF='          + ACBr_E_UF          + CHR(13) + CHR(10);

  Comando := Comando + 'PaisCod='     + ACBr_E_PaisCod     + CHR(13) + CHR(10);
  Comando := Comando + 'Pais='        + ACBr_E_Pais        + CHR(13) + CHR(10);
  Comando := Comando + 'IEST='        + ACBr_E_IEST        + CHR(13) + CHR(10);
  Comando := Comando + 'IM='          + ACBr_E_IM          + CHR(13) + CHR(10);
  Comando := Comando + 'CNAE='        + ACBr_E_CNAE        + CHR(13) + CHR(10);

  If Versao2 = 1 then
  Comando := Comando + 'CRT='         + ACBr_E_CRT         + CHR(13) + CHR(10);

  ACBr_E_CNPJ        := '';
  ACBr_E_IE          := '';
  ACBr_E_Razao       := '';
  ACBr_E_Fantasia    := '';
  ACBr_E_Fone        := '';
  ACBr_E_CEP         := '';
  ACBr_E_Logradouro  := '';
  ACBr_E_Numero      := '';
  ACBr_E_Complemento := '';
  ACBr_E_Bairro      := '';
  ACBr_E_CidadeCod   := '';
  ACBr_E_Cidade      := '';
  ACBr_E_UF          := '';
  ACBr_E_PaisCod     := '';
  ACBr_E_Pais        := '';
  ACBr_E_IEST        := '';
  ACBr_E_IM          := '';
  ACBr_E_CNAE        := '';

  ACBr_E_CRT         := '';
end;

procedure Memo_Destinatario;
begin
  //Inclui o memo do Destinatario

  Comando := Comando + '[Destinatario]'                    + CHR(13) + CHR(10);
  Comando := Comando + 'CNPJCPF='     + ACBr_D_CNPJCPF        + CHR(13) + CHR(10);
  Comando := Comando + 'IE='          + ACBr_D_IE          + CHR(13) + CHR(10);
  Comando := Comando + 'indIEDest='   + ACBr_D_indIEDest   + CHR(13) + CHR(10);
  Comando := Comando + 'ISUF='        + ACBr_D_ISUF        + CHR(13) + CHR(10);
  Comando := Comando + 'NomeRazao='   + ACBr_D_NomeRazao   + CHR(13) + CHR(10);
  Comando := Comando + 'Fone='        + ACBr_D_Fone        + CHR(13) + CHR(10);
  Comando := Comando + 'CEP='         + ACBr_D_CEP         + CHR(13) + CHR(10);
  Comando := Comando + 'Logradouro='  + ACBr_D_Logradouro  + CHR(13) + CHR(10);
  Comando := Comando + 'Numero='      + ACBr_D_Numero      + CHR(13) + CHR(10);
  Comando := Comando + 'Complemento=' + ACBr_D_Complemento + CHR(13) + CHR(10);
  Comando := Comando + 'Bairro='      + ACBr_D_Bairro      + CHR(13) + CHR(10);
  Comando := Comando + 'CidadeCod='   + ACBr_D_CidadeCod   + CHR(13) + CHR(10);
  Comando := Comando + 'Cidade='      + ACBr_D_Cidade      + CHR(13) + CHR(10);
  Comando := Comando + 'UF='          + ACBr_D_UF          + CHR(13) + CHR(10);

  Comando := Comando + 'PaisCod='     + ACBr_D_PaisCod     + CHR(13) + CHR(10);
  Comando := Comando + 'Pais='        + ACBr_D_Pais        + CHR(13) + CHR(10);

  If Versao2 = 1 then
  Comando := Comando + 'Email='         + ACBr_D_Email     + CHR(13) + CHR(10);

  ACBr_D_CNPJCPF        := '';
  ACBr_D_IE          := '';
  ACBr_D_indIEDest   := '';
  ACBr_D_ISUF        := '';
  ACBr_D_NomeRazao   := '';
  ACBr_D_Fone        := '';
  ACBr_D_CEP         := '';
  ACBr_D_Logradouro  := '';
  ACBr_D_Numero      := '';
  ACBr_D_Complemento := '';
  ACBr_D_Bairro      := '';
  ACBr_D_CidadeCod   := '';
  ACBr_D_Cidade      := '';
  ACBr_D_UF          := '';
  ACBr_D_PaisCod     := '';
  ACBr_D_Pais        := '';

  ACBr_D_Email       := '';

end;

procedure Memo_CProdutos(V : Integer);
begin

  If V < 10 then Comando        := Comando + '[Produto00' + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 100 then Comando  := Comando + '[Produto0' + InttoStr(V) + ']'  + CHR(13) + CHR(10)
  Else If V < 1000 then Comando := Comando + '[Produto' + InttoStr(V) + ']'   + CHR(13) + CHR(10);

end;

procedure Memo_Produtos;
begin
  //Inclui o memo do produto

  Comando := Comando + 'CFOP='             + ACBr_P_CFOP             + CHR(13) + CHR(10);
  Comando := Comando + 'Codigo='           + ACBr_P_Codigo           + CHR(13) + CHR(10);
  Comando := Comando + 'Descricao='        + ACBr_P_Descricao        + CHR(13) + CHR(10);
  Comando := Comando + 'EAN='              + ACBr_P_EAN              + CHR(13) + CHR(10);
  Comando := Comando + 'cEANTrib='         + ACBr_P_EANTrib          + CHR(13) + CHR(10);
  Comando := Comando + 'NCM='              + ACBr_P_NCM              + CHR(13) + CHR(10);
  Comando := Comando + 'CEST='             + ACBr_P_CEST             + CHR(13) + CHR(10);
  Comando := Comando + 'Unidade='          + ACBr_P_Unidade          + CHR(13) + CHR(10);
  Comando := Comando + 'Quantidade='       + ACBr_P_Quantidade       + CHR(13) + CHR(10);
  Comando := Comando + 'ValorUnitario='    + ACBr_P_ValorUnitario    + CHR(13) + CHR(10);
  Comando := Comando + 'ValorTotal='       + ACBr_P_ValorTotal       + CHR(13) + CHR(10);
  Comando := Comando + 'ValorDesconto='    + ACBr_P_ValorDesconto    + CHR(13) + CHR(10);
  Comando := Comando + 'NumeroDI='         + ACBr_P_NumeroDI         + CHR(13) + CHR(10);
  Comando := Comando + 'DataRegistroDI='   + ACBr_P_DataRegistroDI   + CHR(13) + CHR(10);
  Comando := Comando + 'LocalDesembaraco=' + ACBr_P_LocalDesembaraco + CHR(13) + CHR(10);
  Comando := Comando + 'UFDesembaraco='    + ACBr_P_UFDesembaraco    + CHR(13) + CHR(10);
  Comando := Comando + 'DataDesembaraco='  + ACBr_P_DataDesembaraco  + CHR(13) + CHR(10);
  Comando := Comando + 'CodigoExportador=' + ACBr_P_CodigoExportador + CHR(13) + CHR(10);
  Comando := Comando + 'vOutro='           + ACBr_P_vOutro           + CHR(13) + CHR(10);

  If Versao2 = 1 then
  begin
    Comando := Comando + 'indTot='         + ACBr_P_indTot           + CHR(13) + CHR(10);
    Comando := Comando + 'xPed='           + ACBr_P_xPed             + CHR(13) + CHR(10);
    Comando := Comando + 'nitemPed='       + ACBr_P_nitemPed         + CHR(13) + CHR(10);
  end;

//  Comando := Comando + '[comb]' + CHR(13) + CHR(10);
  Comando := Comando + 'cProdANP='  + ACBr_Combu_cProdANP + CHR(13) + CHR(10);
  Comando := Comando + 'descANP='   + ACBr_Combu_descANP  + CHR(13) + CHR(10);
  Comando := Comando + 'UFCons='    + ACBr_Combu_UFCons   + CHR(13) + CHR(10);

  ACBr_P_CFOP             := '';
  ACBr_P_Codigo           := '';
  ACBr_P_Descricao        := '';
  ACBr_P_EAN              := '';
  ACBr_P_EANTrib          := '';
  ACBr_P_NCM              := '';
  ACBr_P_CEST             := '';
  ACBr_P_Unidade          := '';
  ACBr_P_Quantidade       := '';
  ACBr_P_ValorUnitario    := '';
  ACBr_P_ValorTotal       := '';
  ACBr_P_ValorDesconto    := '';
  ACBr_P_NumeroDI         := '';
  ACBr_P_DataRegistroDI   := '';
  ACBr_P_LocalDesembaraco := '';
  ACBr_P_UFDesembaraco    := '';
  ACBr_P_DataDesembaraco  := '';
  ACBr_P_CodigoExportador := '';

  ACBr_P_vOutro           := '';
  ACBr_P_indTot           := '';
  ACBr_P_xPed             := '';
  ACBr_P_nitemPed         := '';

  ACBr_Combu_cProdANP := ''; // código ANP
  ACBr_Combu_descANP  := ''; //  descrição ANP
  ACBr_Combu_UFCons   := ''; //  uf do consumo



end;

procedure Memo_CICMS(V : Integer);
begin

  If V < 10 then Comando        := Comando + '[ICMS00' + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 100 then Comando  := Comando + '[ICMS0' + InttoStr(V) + ']'  + CHR(13) + CHR(10)
  Else If V < 1000 then Comando := Comando + '[ICMS' + InttoStr(V) + ']'   + CHR(13) + CHR(10);

end;

procedure Memo_ICMS;
begin

  //Writeln(T,'[ICMS001]'            );

  Comando := Comando + 'CST='                 + ACBr_IC_CST                 + CHR(13) + CHR(10);
  Comando := Comando + 'Origem='              + ACBr_IC_Origem              + CHR(13) + CHR(10);
  Comando := Comando + 'Modalidade='          + ACBr_IC_Modalidade          + CHR(13) + CHR(10);
  Comando := Comando + 'ValorBase='           + ACBr_IC_ValorBase           + CHR(13) + CHR(10);
  Comando := Comando + 'Aliquota='            + ACBr_IC_Aliquota            + CHR(13) + CHR(10);
  Comando := Comando + 'Valor='               + ACBr_IC_Valor               + CHR(13) + CHR(10);
  Comando := Comando + 'ModalidadeST='        + ACBr_IC_ModalidadeST        + CHR(13) + CHR(10);
  Comando := Comando + 'PercentualMargemST='  + ACBr_IC_PercentualMargemST  + CHR(13) + CHR(10);
  Comando := Comando + 'PercentualReducaoST=' + ACBr_IC_PercentualReducaoST + CHR(13) + CHR(10);
  Comando := Comando + 'ValorBaseST='         + ACBr_IC_ValorBaseST         + CHR(13) + CHR(10);
  Comando := Comando + 'AliquotaST='          + ACBr_IC_AliquotaST          + CHR(13) + CHR(10);
  Comando := Comando + 'ValorST='             + ACBr_IC_ValorST             + CHR(13) + CHR(10);
  Comando := Comando + 'PercentualReducao='   + ACBr_IC_PercentualReducao   + CHR(13) + CHR(10);

  If Versao2 = 1 then
  begin
    Comando := Comando + 'CSOSN='             + ACBr_IC_PercentualReducao + CHR(13) + CHR(10);
    Comando := Comando + 'UFST='              + ACBr_IC_PercentualReducao + CHR(13) + CHR(10);
    Comando := Comando + 'pBCOp='             + ACBr_IC_PercentualReducao + CHR(13) + CHR(10);
    Comando := Comando + 'vBCSTRet='          + ACBr_IC_PercentualReducao + CHR(13) + CHR(10);
    Comando := Comando + 'vICMSSTRet='        + ACBr_IC_PercentualReducao + CHR(13) + CHR(10);
    Comando := Comando + 'motDesICMS='        + ACBr_IC_PercentualReducao + CHR(13) + CHR(10);
    Comando := Comando + 'pCredSN='           + ACBr_IC_PercentualReducao + CHR(13) + CHR(10);
    Comando := Comando + 'vCredICMSSN='       + ACBr_IC_PercentualReducao + CHR(13) + CHR(10);
    Comando := Comando + 'vBCSTDest='         + ACBr_IC_PercentualReducao + CHR(13) + CHR(10);
    Comando := Comando + 'vICMSSTDest='       + ACBr_IC_PercentualReducao + CHR(13) + CHR(10);
  end;

  ACBr_IC_CST                 := '';
  ACBr_IC_Origem              := '';
  ACBr_IC_Modalidade          := '';
  ACBr_IC_ValorBase           := '';
  ACBr_IC_Aliquota            := '';
  ACBr_IC_Valor               := '';
  ACBr_IC_ModalidadeST        := '';
  ACBr_IC_PercentualMargemST  := '';
  ACBr_IC_PercentualReducaoST := '';
  ACBr_IC_ValorBaseST         := '';
  ACBr_IC_AliquotaST          := '';
  ACBr_IC_ValorST             := '';
  ACBr_IC_PercentualReducao   := '';

  ACBr_IC_CSOSN               := '';
  ACBr_IC_UFST                := '';
  ACBr_IC_pBCOp               := '';
  ACBr_IC_vBCSTRet            := '';
  ACBr_IC_vICMSSTRet          := '';
  ACBr_IC_motDesICMS          := '';
  ACBr_IC_pCredSN             := '';
  ACBr_IC_vCredICMSSN         := '';
  ACBr_IC_vBCSTDest           := '';
  ACBr_IC_vICMSSTDest         := '';

end;

procedure Memo_CIPI(V : Integer);
begin
  If V < 10 then Comando        := Comando + '[IPI00' + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 100 then Comando  := Comando + '[IPI0' + InttoStr(V) + ']'  + CHR(13) + CHR(10)
  Else If V < 1000 then Comando := Comando + '[IPI' + InttoStr(V) + ']'   + CHR(13) + CHR(10);
end;

procedure Memo_IPI;
begin

  //Writeln(T,'[IPI001]'             );

  Comando := Comando + 'CST='                 + ACBr_IP_CST                 + CHR(13) + CHR(10);
  Comando := Comando + 'ClasseEnquadramento=' + ACBr_IP_ClasseEnquadramento + CHR(13) + CHR(10);
  Comando := Comando + 'CNPJProdutor='        + ACBr_IP_CNPJProdutor        + CHR(13) + CHR(10);
  Comando := Comando + 'CodigoSeloIPI='       + ACBr_IP_CodigoSeloIPI       + CHR(13) + CHR(10);
  Comando := Comando + 'QuantidadeSelos='     + ACBr_IP_QuantidadeSelos     + CHR(13) + CHR(10);
  Comando := Comando + 'CodigoEnquadramento=' + ACBr_IP_CodigoEnquadramento + CHR(13) + CHR(10);
  Comando := Comando + 'ValorBase='           + ACBr_IP_ValorBase           + CHR(13) + CHR(10);
  Comando := Comando + 'Quantidade='          + ACBr_IP_Quantidade          + CHR(13) + CHR(10);
  Comando := Comando + 'ValorUnidade='        + ACBr_IP_ValorUnidade        + CHR(13) + CHR(10);
  Comando := Comando + 'Aliquota='            + ACBr_IP_Aliquota            + CHR(13) + CHR(10);
  Comando := Comando + 'Valor='              + ACBr_IP_Valor                + CHR(13) + CHR(10);

  ACBr_IP_CST := '';
  ACBr_IP_ClasseEnquadramento := '';
  ACBr_IP_CNPJProdutor        := '';
  ACBr_IP_CodigoSeloIPI       := '';
  ACBr_IP_QuantidadeSelos     := '';
  ACBr_IP_CodigoEnquadramento := '';
  ACBr_IP_ValorBase           := '';
  ACBr_IP_Quantidade          := '';
  ACBr_IP_ValorUnidade        := '';
  ACBr_IP_Aliquota            := '';
  ACBr_IP_Valor               := '';

end;

procedure Memo_CPIS(V : Integer);
begin
  If V < 10 then Comando        := Comando + '[PIS00' + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 100 then Comando  := Comando + '[PIS0' + InttoStr(V) + ']'  + CHR(13)  + CHR(10)
  Else If V < 1000 then Comando := Comando + '[PIS' + InttoStr(V) + ']'   + CHR(13)   + CHR(10);
end;

procedure Memo_PIS;
begin

  //Writeln(T,'[PIS001]');

  Comando := Comando + 'CST=' + ACBr_P1_CST                       + CHR(13) + CHR(10);
  If ACBr_P1_CST <> '08' then
  begin
    Comando := Comando + 'ValorBase='   + ACBr_P1_ValorBase       + CHR(13) + CHR(10);
    Comando := Comando + 'Aliquota='    + ACBr_P1_Aliquota        + CHR(13) + CHR(10);
    Comando := Comando + 'Valor='       + ACBr_P1_Valor           + CHR(13) + CHR(10);
    Comando := Comando + 'Quantidade='  + ACBr_P1_Quantidade      + CHR(13) + CHR(10);
    Comando := Comando + 'TipoCalculo=' + ACBr_P1_TipoCalculo     + CHR(13) + CHR(10);
  end;

  ACBr_P1_CST         := '';
  ACBr_P1_ValorBase   := '';
  ACBr_P1_Aliquota    := '';
  ACBr_P1_Valor       := '';
  ACBr_P1_Quantidade  := '';
  ACBr_P1_TipoCalculo := '';

end;

procedure Memo_CCOFINS(V : Integer);
begin
  If V < 10 then Comando        := Comando + '[COFINS00' + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 100 then Comando  := Comando + '[COFINS0' + InttoStr(V) + ']'  + CHR(13) + CHR(10)
  Else If V < 1000 then Comando := Comando + '[COFINS' + InttoStr(V) + ']'   + CHR(13) + CHR(10);
end;

procedure Memo_COFINS;
begin

  //Writeln(T,'[COFINS001]'  );

  Comando := Comando + 'CST=' + ACBr_CF_CST                   + CHR(13) + CHR(10);
  If ACBr_CF_CST <> '08' then
  begin
    Comando := Comando + 'ValorBase='   + ACBr_CF_ValorBase   + CHR(13) + CHR(10);
    Comando := Comando + 'Aliquota='    + ACBr_CF_Aliquota    + CHR(13) + CHR(10);
    Comando := Comando + 'Valor='       + ACBr_CF_Valor       + CHR(13) + CHR(10);
    Comando := Comando + 'TipoCalculo=' + ACBr_CF_TipoCalculo + CHR(13) + CHR(10);
    Comando := Comando + 'Quantidade='  + ACBr_CF_Quantidade  + CHR(13) + CHR(10);
  end;

  ACBr_CF_CST         := '';
  ACBr_CF_ValorBase   := '';
  ACBr_CF_Aliquota    := '';
  ACBr_CF_Valor       := '';
  ACBr_CF_TipoCalculo := '';
  ACBr_CF_Quantidade  := '';

end;

//Final da NFe

procedure Memo_TotalNFe;
begin

  Comando := Comando + '[Total]' + CHR(13) + CHR(10);

  Comando := Comando + 'BaseICMS='              + ACBr_T_BaseICMS              + CHR(13) + CHR(10);
  Comando := Comando + 'ValorICMS='             + ACBr_T_ValorICMS             + CHR(13) + CHR(10);
  Comando := Comando + 'ValorProduto='          + ACBr_T_ValorProduto          + CHR(13) + CHR(10);
  Comando := Comando + 'BaseICMSSubstituicao='  + ACBr_T_BaseICMSSubstituicao  + CHR(13) + CHR(10);
  Comando := Comando + 'ValorICMSSubstituicao=' + ACBr_T_ValorICMSSubstituicao + CHR(13) + CHR(10);
  Comando := Comando + 'ValorFrete='            + ACBr_T_ValorFrete            + CHR(13) + CHR(10);
  Comando := Comando + 'ValorSeguro='           + ACBr_T_ValorSeguro           + CHR(13) + CHR(10);
  Comando := Comando + 'ValorDesconto='         + ACBr_T_ValorDesconto         + CHR(13) + CHR(10);
  Comando := Comando + 'ValorII='               + ACBr_T_ValorII               + CHR(13) + CHR(10);
  Comando := Comando + 'ValorIPI='              + ACBr_T_ValorIPI              + CHR(13) + CHR(10);
  Comando := Comando + 'ValorPIS='              + ACBr_T_ValorPIS              + CHR(13) + CHR(10);
  Comando := Comando + 'ValorCOFINS='           + ACBr_T_ValorCOFINS           + CHR(13) + CHR(10);
  Comando := Comando + 'ValorOutrasDespesas='   + ACBr_T_ValorOutrasDespesas   + CHR(13) + CHR(10);
  Comando := Comando + 'ValorNota='             + ACBr_T_ValorNota             + CHR(13) + CHR(10);

  ACBr_T_BaseICMS              := '';
  ACBr_T_ValorICMS             := '';
  ACBr_T_ValorProduto          := '';
  ACBr_T_BaseICMSSubstituicao  := '';
  ACBr_T_ValorICMSSubstituicao := '';
  ACBr_T_ValorFrete            := '';
  ACBr_T_ValorSeguro           := '';
  ACBr_T_ValorDesconto         := '';
  ACBr_T_ValorII               := '';
  ACBr_T_ValorIPI              := '';
  ACBr_T_ValorPIS              := '';
  ACBr_T_ValorCOFINS           := '';
  ACBr_T_ValorOutrasDespesas   := '';
  ACBr_T_ValorNota             := '';

end;

//Transportador da NFe

procedure Memo_Transportador;
begin

  Comando := Comando + '[Transportador]' + CHR(13) + CHR(10);

  Comando := Comando + 'FretePorConta=' + ACBr_TR_FretePorConta + CHR(13) + CHR(10);
  Comando := Comando + 'CnpjCpf='       + ACBr_TR_CnpjCpf       + CHR(13) + CHR(10);
  Comando := Comando + 'NomeRazao='     + ACBr_TR_NomeRazao     + CHR(13) + CHR(10);
  Comando := Comando + 'IE='            + ACBr_TR_IE            + CHR(13) + CHR(10);
  Comando := Comando + 'Endereco='      + ACBr_TR_Endereco      + CHR(13) + CHR(10);
  Comando := Comando + 'Cidade='        + ACBr_TR_Cidade        + CHR(13) + CHR(10);
  Comando := Comando + 'UF='            + ACBr_TR_UF            + CHR(13) + CHR(10);
  Comando := Comando + 'ValorServico='  + ACBr_TR_ValorServico  + CHR(13) + CHR(10);
  Comando := Comando + 'ValorBase='     + ACBr_TR_ValorBase     + CHR(13) + CHR(10);
  Comando := Comando + 'Aliquota='      + ACBr_TR_Aliquota      + CHR(13) + CHR(10);
  Comando := Comando + 'Valor='         + ACBr_TR_Valor         + CHR(13) + CHR(10);
  Comando := Comando + 'CFOP='          + ACBr_TR_CFOP          + CHR(13) + CHR(10);
  Comando := Comando + 'CidadeCod='     + ACBr_TR_CidadeCod     + CHR(13) + CHR(10);
  Comando := Comando + 'Placa='         + ACBr_TR_Placa         + CHR(13) + CHR(10);
  Comando := Comando + 'UFPlaca='       + ACBr_TR_UFPlaca       + CHR(13) + CHR(10);
  Comando := Comando + 'RNTC='          + ACBr_TR_RNTC          + CHR(13) + CHR(10);

  ACBr_TR_FretePorConta := '';
  ACBr_TR_CnpjCpf       := '';
  ACBr_TR_NomeRazao     := '';
  ACBr_TR_IE            := '';
  ACBr_TR_Endereco      := '';
  ACBr_TR_Cidade        := '';
  ACBr_TR_UF            := '';
  ACBr_TR_ValorServico  := '';
  ACBr_TR_ValorBase     := '';
  ACBr_TR_Aliquota      := '';
  ACBr_TR_Valor         := '';
  ACBr_TR_CFOP          := '';
  ACBr_TR_CidadeCod     := '';
  ACBr_TR_Placa         := '';
  ACBr_TR_UFPlaca       := '';
  ACBr_TR_RNTC          := '';

end;

procedure Memo_Volume;
begin

  Comando := Comando + '[Volume001]' + CHR(13) + CHR(10);

  Comando := Comando + 'Quantidade='  + ACBr_V_Quantidade  + CHR(13) + CHR(10);
  Comando := Comando + 'Especie='     + ACBr_V_Especie     + CHR(13) + CHR(10);
  Comando := Comando + 'Marca='       + ACBr_V_Marca       + CHR(13) + CHR(10);
  Comando := Comando + 'Numeracao='   + ACBr_V_Numeracao   + CHR(13) + CHR(10);
  Comando := Comando + 'PesoLiquido=' + ACBr_V_PesoLiquido + CHR(13) + CHR(10);
  Comando := Comando + 'PesoBruto='   + ACBr_V_PesoBruto   + CHR(13) + CHR(10);

  ACBr_V_Quantidade  := '';
  ACBr_V_Especie     := '';
  ACBr_V_Marca       := '';
  ACBr_V_Numeracao   := '';
  ACBr_V_PesoLiquido := '';
  ACBr_V_PesoBruto   := '';

end;

//Fatura da NFe

procedure Memo_Fatura;
begin

  Comando := Comando + '[Fatura]' + CHR(13) + CHR(10);

  Comando := Comando + 'Numero='        + ACBr_F_Numero        + CHR(13) + CHR(10);
  Comando := Comando + 'ValorOriginal=' + ACBr_F_ValorOriginal + CHR(13) + CHR(10);
  Comando := Comando + 'ValorDesconto=' + ACBr_F_ValorDesconto + CHR(13) + CHR(10);
  Comando := Comando + 'ValorLiquido='  + ACBr_F_ValorLiquido  + CHR(13) + CHR(10);

  ACBr_F_Numero        := '';
  ACBr_F_ValorOriginal := '';
  ACBr_F_ValorDesconto := '';
  ACBr_F_ValorLiquido  := '';

end;

//Duplicata da NFe

procedure Memo_CDuplicata(V : Integer);
begin
  If V < 10 then Comando := Comando + '[Duplicata00'      + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 100 then Comando := Comando + '[Duplicata0' + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 1000 then Comando := Comando + '[Duplicata' + InttoStr(V) + ']' + CHR(13) + CHR(10);
end;

procedure Memo_Duplicata;
begin

  //Writeln(T,'[Duplicata001]'  );

  Comando := Comando + 'Numero='         + ACBr_DP_Numero         + CHR(13) + CHR(10);
  Comando := Comando + 'DataVencimento=' + ACBr_DP_DataVencimento + CHR(13) + CHR(10);
  Comando := Comando + 'Valor='          + ACBr_DP_Valor          + CHR(13) + CHR(10);

  ACBr_DP_Numero         := '';
  ACBr_DP_DataVencimento := '';
  ACBr_DP_Valor          := '';

end;

//Dados adicionais da nfe

procedure Memo_Adicional;
begin

  Comando := Comando + '[DadosAdicionais]' + CHR(13) + CHR(10);
  //If ACBr_DA_Complemento <> '' then Comando := Comando + 'Complemento=' + ACBr_DA_Complemento);

  Comando := Comando + 'infAdFisco=' + ACBr_DA_Fisco       + CHR(13) + CHR(10);
  Comando := Comando + 'infCpl='     + ACBr_DA_Complemento + CHR(13) + CHR(10);

  ACBr_DA_Complemento    := '';
  ACBr_DA_Fisco          := '';
end;

//Informação adicional

procedure Memo_CInformacoes(V : Integer);
begin
  If V < 10 then Comando := Comando + '[InfAdic00'      + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 100 then Comando := Comando + '[InfAdic0' + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 1000 then Comando := Comando + '[InfAdic' + InttoStr(V) + ']' + CHR(13) + CHR(10);
end;

procedure Memo_Informacoes;
begin

  Comando := Comando + 'Campo=' + ACBr_IF_Campo + CHR(13) + CHR(10);
  Comando := Comando + 'Texto=' + ACBr_IF_Texto + CHR(13) + CHR(10);

  ACBr_IF_Campo := '';
  ACBr_IF_Texto := '';

end;

//Informação adicional

procedure Memo_CREF(V : Integer);
begin
  If V < 10 then Comando := Comando + '[NFRef00'      + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 100 then Comando := Comando + '[NFRef0' + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 1000 then Comando := Comando + '[NFRef' + InttoStr(V) + ']' + CHR(13) + CHR(10);
end;

procedure Memo_REF;
begin

   Comando := Comando + 'Tipo='+ACBr_R_TIPO + CHR(13) + CHR(10);

  If ACBr_R_TIPO = 'NFE' then Comando := Comando + 'refNFe=' + ACBr_R_B13_refNFe + CHR(13) + CHR(10);

  If ACBr_R_TIPO = 'NF' then
  begin

    Comando := Comando + 'cUF='    + ACBr_R_B14_cUF    + CHR(13) + CHR(10);
    Comando := Comando + 'AMM='    + ACBr_R_B14_AMM    + CHR(13) + CHR(10);
    Comando := Comando + 'CNPJ='   + ACBr_R_B14_CNPJ   + CHR(13) + CHR(10);
    Comando := Comando + 'MODELO=' + ACBr_R_B14_MODELO + CHR(13) + CHR(10);
    Comando := Comando + 'SERIE='  + ACBr_R_B14_SERIE  + CHR(13) + CHR(10);
    Comando := Comando + 'nNF='    + ACBr_R_B14_nNF    + CHR(13) + CHR(10);

  end;

  If ACBr_R_TIPO = 'NFP' then
  begin

    Comando := Comando + 'cUF='   + ACBr_R_B20a_cUF   + CHR(13) + CHR(10);
    Comando := Comando + 'AAMM='  + ACBr_R_B20a_AAMM  + CHR(13) + CHR(10);
    Comando := Comando + 'IE='    + ACBr_R_B20a_IE    + CHR(13) + CHR(10);
    Comando := Comando + 'mod='   + ACBr_R_B20a_mod   + CHR(13) + CHR(10);
    Comando := Comando + 'serie=' + ACBr_R_B20a_serie + CHR(13) + CHR(10);
    Comando := Comando + 'nNF='   + ACBr_R_B20a_nNF   + CHR(13) + CHR(10);
    Comando := Comando + 'CNPJ='  + ACBr_R_B20D_CNPJ  + CHR(13) + CHR(10);
    Comando := Comando + 'CPF='   + ACBr_R_B20E_CPF   + CHR(13) + CHR(10);

  end;

  If ACBr_R_TIPO = 'CTE' then Comando := Comando + 'REFCTE=' + ACBr_R_B20I_REFCTE + CHR(13) + CHR(10);

  If ACBr_R_TIPO = 'ECF' then
  begin
    Comando := Comando + 'ModECF='  + ACBr_R_B20J_MOD  + CHR(13) + CHR(10);
    Comando := Comando + 'nECF='    + ACBr_R_B20J_NECF + CHR(13) + CHR(10);
    Comando := Comando + 'nCOO='    + ACBr_R_B20J_COO  + CHR(13) + CHR(10);

  end;

  //Referenciadas
  ACBr_R_B13_refNFe  := '';
  ACBr_R_B14_cUF     := '';
  ACBr_R_B14_AMM     := '';
  ACBr_R_B14_CNPJ    := '';
  ACBr_R_B14_MODELO  := '';
  ACBr_R_B14_SERIE   := '';
  ACBr_R_B14_nNF     := '';
  ACBr_R_B20a_cUF    := '';
  ACBr_R_B20a_AAMM   := '';
  ACBr_R_B20a_IE     := '';
  ACBr_R_B20a_mod    := '';
  ACBr_R_B20a_serie  := '';
  ACBr_R_B20a_nNF    := '';
  ACBr_R_B20D_CNPJ   := '';
  ACBr_R_B20E_CPF    := '';
  ACBr_R_B20I_REFCTE := '';
  ACBr_R_B20J_MOD    := '';
  ACBr_R_B20J_NECF   := '';
  ACBr_R_B20J_COO    := '';

end;

procedure Memo_Limpa;
begin
  //Limpa os valores das variaveis

end;

{NOME: FABRICIO DATA:23/02/2018 MOTIVO: CLIENTE PAGUE MENOS SOLICITOU A INCLUSÃO DO NUMERO DO PEDIDO COMO UMA TAG SEPARADA DENTRO DO XML}
procedure Memo_Compra;
begin
  Comando := Comando + '[Compra]' + CHR(13) + CHR(10);

  Comando := Comando + 'xPed=' + ACBr_CP_xPed + CHR(13) + CHR(10);

  ACBr_CP_xPed := '';
end;

{FABRICIO - 26/07/2018 - MOTIVO: NFE4.0}
procedure Memo_CPagto(V : Integer);
begin

  If V < 10 then Comando        := Comando + '[PAG00' + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 100 then Comando  := Comando + '[PAG0' + InttoStr(V) + ']'  + CHR(13) + CHR(10)
  Else If V < 1000 then Comando := Comando + '[PAG' + InttoStr(V) + ']'   + CHR(13) + CHR(10);

end;

{FABRICIO - 26/07/2018 - MOTIVO: NFE4.0}
procedure Memo_Pagto;
begin

  Comando := Comando + 'tpag=' + ACBr_PG_tPag + CHR(13) + CHR(10);
  Comando := Comando + 'vpag=' + ACBr_PG_vPag + CHR(13) + CHR(10);

  ACBr_PG_tPag := '';
  ACBr_PG_vPag := '';

end;

{FABRICIO - 29/07/2020 - MOTIVO: NOTA FISCAL DE COMBUSTIVEL}
procedure Memo_Combustivel;
begin
//
//  Comando := Comando + '[comb]' + CHR(13) + CHR(10);
//  Comando := Comando + 'cProdANP=' + ACBr_Combu_cProdANP + CHR(13) + CHR(10);
//  Comando := Comando + 'descANP=' + ACBr_Combu_descANP + CHR(13) + CHR(10);
//  Comando := Comando + 'UFCons=' + ACBr_Combu_UFCons + CHR(13) + CHR(10);
//
//  ACBr_Combu_cProdANP := ''; // código ANP
//  ACBr_Combu_descANP  := ''; //  descrição ANP
//  ACBr_Combu_UFCons   := ''; //  uf do consumo

end;

end.


