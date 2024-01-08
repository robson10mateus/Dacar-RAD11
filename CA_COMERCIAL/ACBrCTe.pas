unit ACBrCTe;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UfrmImpDocPed,  Global, DB, Windows;


var
  // ide
  CTE_I_cCT, CTE_I_CFOP, CTE_I_natOp,
  CTE_I_forPag, CTE_I_mod, CTE_I_serie,
  CTE_I_nCT, CTE_I_dhEmi, CTE_I_tpImp,
  CTE_I_tpemis, CTE_I_procEmi, CTE_I_verProc,
  CTE_I_dhCont, CTE_I_xJust, CTE_I_tpCTe,
  CTE_I_refCTe, CTE_I_cMunEnv, CTE_I_xMunEnv,
  CTE_I_UFEnv, CTE_I_modal, CTE_I_tpServ,
  CTE_I_cMunIni, CTE_I_xMunIni, CTE_I_UFIni,
  CTE_I_cMunFim, CTE_I_xMunFim, CTE_I_UFFim,
  CTE_I_retira, CTE_I_xDetRetira, CTE_I_cUF :string ;

  // toma4
  CTE_I_T4Toma , CTE_I_T4CNPJCPF,
  CTE_I_T4IE, CTE_I_T4xNome, CTE_I_T4XFant, CTE_I_T4fone,
  CTE_I_T4xLgr, CTE_I_T4nro, CTE_I_T4xCpl, CTE_I_T4xBairro,
  CTE_I_T4cMun, CTE_I_T4xMun, CTE_I_T4CEP, CTE_I_T4UF,
  CTE_I_T4cPais, CTE_I_T4xPais, CTE_I_T4email :string;
  // toma3
  CTE_T3_toma : string;

  // compl
  CTE_C_xEmi, CTE_C_tpPer, CTE_C_tpHor,
  CTE_C_origCalc, CTE_C_destCalc, CTE_C_xObs : string;
  // emit
  CTE_E_CNPJ, CTE_E_IE, CTE_E_xNome, CTE_E_xFant,
  CTE_E_xLgr, CTE_E_nro, CTE_E_xCpl, CTE_E_xBairro,
  CTE_E_cMun, CTE_E_xMun, CTE_E_CEP, CTE_E_UF,
  CTE_E_fone : string ;
  // rem
  CTE_R_CNPJCPF, CTE_R_IE, CTE_R_xNome, CTE_R_xFant,
  CTE_R_fone, CTE_R_xLgr, CTE_R_nro, CTE_R_xCpl,
  CTE_R_xBairro, CTE_R_cMun, CTE_R_xMun, CTE_R_CEP,
  CTE_R_UF, CTE_R_PaisCod, CTE_R_Pais, CTE_R_Email : string;
  //infNFe001
  CTE_IN_chave, CTE_IN_PIN : string ;
  // Dest
  CTE_D_CNPJCPF, CTE_D_IE, CTE_D_xNome, CTE_D_fone,
  CTE_D_xLgr, CTE_D_nro, CTE_D_xCpl, CTE_D_xBairro,
  CTE_D_cMun, CTE_D_xMun, CTE_D_CEP, CTE_D_UF,
  CTE_D_cPais, CTE_D_xPais : string;
  //vPrest
  CTE_VP_vTPrest, CTE_VP_vRec : string;
  CTE_CS_xNome, CTE_CS_vComp : string ;

  CTE_VT_vComp, CTE_VT_infAdFisco : string ;
  CTE_II_vBC, CTE_II_pICMS, CTE_II_vICMS, CTE_II_pRedBC,CTE_II_vBCSTRet,
  CTE_II_vICMSSTRet, CTE_II_pICMSSTRet, CTE_II_vCred : string;
  CTE_IC_indSN, CTE_respSeg : string;
  //infCarga
  CTE_CA_vCarga, CTE_CA_proPred, CTE_CA_xOutCat: string;
  //infQ001
  CTE_IQ_cUnid, CTE_IQ_tpMed, CTE_IQ_qCarga : string ;
  //Rodo
  CTE_RO_RNTRC, CTE_RO_dPrev, CTE_RO_lota, CTE_Chave, CTE_Chave2 : string ;
  CTE_CO_nFat, CTE_CO_vOrig, CTE_CO_vDesc, CTE_CO_vLiq : string;
  CTE_CO_nDup, CTE_CO_dVenc, CTE_CO_vDup    : string ;



 {$H+}
  Comando : WideString;

  procedure Memo_Identificacao;
  procedure Memo_Complemento;
  procedure Memo_Emitente;
  procedure Memo_Remetente;
  procedure Memo_NFE;
  procedure Memo_Destinatario;
  procedure Memo_ValorPrestServico;
  procedure Memo_CabComponenteServico(V : Integer);
  procedure Memo_ComponenteServico;
  procedure Memo_InfoImpostos( ST : string ) ;
  procedure Memo_ValorTotalTributo;
  procedure Memo_Final;
  procedure Memo_CREF(V : Integer);
  procedure Memo_REF;
  procedure Memo_Carga;

implementation

procedure Memo_Identificacao;
begin
    Comando := Comando + '[Ide]'    + CHR(10) + CHR(10);
    Comando := Comando + 'cCT='     + CTE_I_cCT     + CHR(13) + CHR(10);
    Comando := Comando + 'CFOP='    + CTE_I_CFOP    + CHR(13) + CHR(10);
    Comando := Comando + 'natOp='   + CTE_I_natOp   + CHR(13) + CHR(10);
    Comando := Comando + 'forPag='  + CTE_I_forPag  + CHR(13) + CHR(10);
    Comando := Comando + 'mod='     + CTE_I_mod     + CHR(13) + CHR(10);
    Comando := Comando + 'serie='   + CTE_I_serie   + CHR(13) + CHR(10);
    Comando := Comando + 'nCT='     + CTE_I_nCt     + CHR(13) + CHR(10);
    Comando := Comando + 'dhEmi='   + CTE_I_dhEmi   + CHR(13) + CHR(10);
    Comando := Comando + 'tpImp='   + CTE_I_tpImp   + CHR(13) + CHR(10);
    Comando := Comando + 'tpemis='  + CTE_I_tpemis  + CHR(13) + CHR(10);
    Comando := Comando + 'procEmi=' + CTE_I_procEmi + CHR(13) + CHR(10);
    Comando := Comando + 'verProc=' + CTE_I_verProc + CHR(13) + CHR(10);
    Comando := Comando + 'dhCont='  + CTE_I_dhCont  + CHR(13) + CHR(10);
    Comando := Comando + 'xJust='   + CTE_I_xJust   + CHR(13) + CHR(10);
    Comando := Comando + 'tpCTe='   + CTE_I_tpCTe   + CHR(13) + CHR(10);
    Comando := Comando + 'refCTe='  + CTE_I_refCTe  + CHR(13) + CHR(10);
    Comando := Comando + 'cMunEnv=' + CTE_I_cMunEnv + CHR(13) + CHR(10);
    Comando := Comando + 'xMunEnv=' + CTE_I_xMunEnv + CHR(13) + CHR(10);
    Comando := Comando + 'UFEnv='   + CTE_I_UFEnv   + CHR(13) + CHR(10);
    Comando := Comando + 'modal='   + CTE_I_modal   + CHR(13) + CHR(10);
    Comando := Comando + 'tpServ='  + CTE_I_tpServ  + CHR(13) + CHR(10);
    Comando := Comando + 'cMunIni=' + CTE_I_cMunIni + CHR(13) + CHR(10);
    Comando := Comando + 'xMunIni=' + CTE_I_xMunIni + CHR(13) + CHR(10);
    Comando := Comando + 'UFIni='   + CTE_I_UFIni   + CHR(13) + CHR(10);
    Comando := Comando + 'cMunFim=' + CTE_I_cMunFim + CHR(13) + CHR(10);
    Comando := Comando + 'xMunFim=' + CTE_I_xMunFim + CHR(13) + CHR(10);
    Comando := Comando + 'UFFim='   + CTE_I_UFFim   + CHR(13) + CHR(10);
    Comando := Comando + 'retira='  + CTE_I_retira  + CHR(13) + CHR(10);
    Comando := Comando + 'xDetRetira=' + CTE_I_xDetRetira + CHR(13) + CHR(10);
    Comando := Comando + 'cUF='        + CTE_I_cUF        + CHR(13) + CHR(10);

    Comando := Comando + '[toma4]'    + CHR(10) + CHR(10);
    Comando := Comando + 'toma=' + CTE_I_T4Toma + CHR(13) + CHR(10);
    Comando := Comando + 'CNPJCPF=' + CTE_I_T4CNPJCPF + CHR(13) + CHR(10);
    Comando := Comando + 'IE='   + CTE_I_T4IE   + CHR(13) + CHR(10);
    Comando := Comando + 'xNome=' + CTE_I_T4xNome + CHR(13) + CHR(10);
    Comando := Comando + 'xFant=' + CTE_I_T4XFant + CHR(13) + CHR(10);
    Comando := Comando + 'fone='  + CTE_I_T4fone  + CHR(13) + CHR(10);
    Comando := Comando + 'xLgr='  + CTE_I_T4xLgr  + CHR(13) + CHR(10);
    Comando := Comando + 'nro='   + CTE_I_T4nro   + CHR(13) + CHR(10);
    Comando := Comando + 'xCpl='  + CTE_I_T4xCpl  + CHR(13) + CHR(10);
    Comando := Comando + 'xBairro=' + CTE_I_T4xBairro + CHR(13) + CHR(10);
    Comando := Comando + 'cMun='    + CTE_I_T4cMun    + CHR(13) + CHR(10);
    Comando := Comando + 'xMun='    + CTE_I_T4xMun    + CHR(13) + CHR(10);
    Comando := Comando + 'CEP='     + CTE_I_T4CEP     + CHR(13) + CHR(10);
    Comando := Comando + 'UF='      + CTE_I_T4UF    + CHR(13) + CHR(10);
    Comando := Comando + 'cPais='   + CTE_I_T4cPais + CHR(13) + CHR(10);
    Comando := Comando + 'xPais='   + CTE_I_T4xPais + CHR(13) + CHR(10);
    Comando := Comando + 'email='   + CTE_I_T4email + CHR(13) + CHR(10);


    CTE_I_cCT        := '' ;
    CTE_I_CFOP       := '' ;
    CTE_I_natOp      := '' ;
    CTE_I_forPag     := '' ;
    CTE_I_mod        := '' ;
    CTE_I_serie      := '' ;
    CTE_I_nCT        := '' ;
    CTE_I_dhEmi      := '' ;
    CTE_I_tpImp      := '' ;
    CTE_I_tpemis     := '' ;
    CTE_I_procEmi    := '' ;
    CTE_I_verProc    := '' ;
    CTE_I_dhCont     := '' ;
    CTE_I_xJust      := '' ;
    CTE_I_tpCTe      := '' ;
    CTE_I_refCTe     := '' ;
    CTE_I_cMunEnv    := '' ;
    CTE_I_xMunEnv    := '' ;
    CTE_I_UFEnv      := '' ;
    CTE_I_modal      := '' ;
    CTE_I_tpServ     := '' ;
    CTE_I_cMunIni    := '' ;
    CTE_I_xMunIni    := '' ;
    CTE_I_UFIni      := '' ;
    CTE_I_cMunFim    := '' ;
    CTE_I_xMunFim    := '' ;
    CTE_I_UFFim      := '' ;
    CTE_I_retira     := '' ;
    CTE_I_xDetRetira := '' ;
    CTE_I_cUF        := '' ;

    CTE_I_T4Toma  := '' ;
    CTE_I_T4CNPJCPF  := '' ;
    CTE_I_T4IE    := '' ;
    CTE_I_T4xNome := '' ;
    CTE_I_T4XFant := '' ;
    CTE_I_T4fone  := '' ;
    CTE_I_T4xLgr  := '' ;
    CTE_I_T4nro   := '' ;
    CTE_I_T4xCpl  := '' ;
    CTE_I_T4xBairro := '' ;
    CTE_I_T4cMun  := '' ;
    CTE_I_T4xMun  := '' ;
    CTE_I_T4CEP   := '' ;
    CTE_I_T4UF    := '' ;
    CTE_I_T4cPais := '' ;
    CTE_I_T4xPais := '' ;
    CTE_I_T4email := '' ;


end;

procedure Memo_Complemento;
begin
   // Comando := Comando + '[toma3]'    + CHR(10)        + CHR(10);
    //Comando := Comando + 'toma='      + CTE_T3_toma    + CHR(13) + CHR(10);
    Comando := Comando + '[compl]'    + CHR(10)        + CHR(10);
    //Comando := Comando + 'xEmi='      + CTE_C_xEmi     + CHR(13) + CHR(10);
   // Comando := Comando + 'tpPer='     + CTE_C_tpPer    + CHR(13) + CHR(10);
  //  Comando := Comando + 'tpHor='     + CTE_C_tpHor    + CHR(13) + CHR(10);
   // Comando := Comando + 'origCalc='  + CTE_C_origCalc + CHR(13) + CHR(10);
   // Comando := Comando + 'destCalc='  + CTE_C_destCalc + CHR(13) + CHR(10);
    Comando := Comando + 'xObs='     + CTE_C_xObs     + CHR(13) + CHR(10);

  //  CTE_T3_toma    := '' ;
  //  CTE_C_xEmi     := '' ;
  //  CTE_C_tpPer    := '' ;
  //  CTE_C_tpHor    := '' ;
  //  CTE_C_origCalc := '' ;
  //  CTE_C_destCalc := '' ;
    CTE_C_xObs     := '' ;

end;

procedure Memo_Emitente;
begin
    Comando := Comando + '[emit]'   + CHR(10)       + CHR(10);
    Comando := Comando + 'CNPJ='    + CTE_E_CNPJ    + CHR(13) + CHR(10);
    Comando := Comando + 'IE='      + CTE_E_IE      + CHR(10) + CHR(10);
    Comando := Comando + 'xNome='   + CTE_E_xNome   + CHR(13) + CHR(10);
    Comando := Comando + 'xFant='   + CTE_E_xFant   + CHR(13) + CHR(10);
    Comando := Comando + 'xLgr='    + CTE_E_xLgr    + CHR(13) + CHR(10);
    Comando := Comando + 'nro='     + CTE_E_nro     + CHR(13) + CHR(10);
    Comando := Comando + 'xCpl='    + CTE_E_xCpl    + CHR(13) + CHR(10);
    Comando := Comando + 'xBairro=' + CTE_E_xBairro + CHR(13) + CHR(10);
    Comando := Comando + 'cMun='    + CTE_E_cMun    + CHR(13) + CHR(10);
    Comando := Comando + 'xMun='    + CTE_E_xMun    + CHR(13) + CHR(10);
    Comando := Comando + 'CEP='     + CTE_E_CEP     + CHR(13) + CHR(10);
    Comando := Comando + 'UF='      + CTE_E_UF      + CHR(13) + CHR(10);
    Comando := Comando + 'fone='    + CTE_E_fone    + CHR(13) + CHR(10);

    CTE_E_CNPJ    := '' ;
    CTE_E_IE      := '' ;
    CTE_E_xNome   := '' ;
    CTE_E_xFant   := '' ;
    CTE_E_xLgr    := '' ;
    CTE_E_nro     := '' ;
    CTE_E_xCpl    := '' ;
    CTE_E_xBairro := '' ;
    CTE_E_cMun    := '' ;
    CTE_E_xMun    := '' ;
    CTE_E_CEP     := '' ;
    CTE_E_UF      := '' ;
    CTE_E_fone    := '' ;

end;

procedure Memo_Remetente;
begin
    Comando := Comando + '[rem]'    + CHR(10)       + CHR(10);
    Comando := Comando + 'CNPJCPF=' + CTE_R_CNPJCPF + CHR(13) + CHR(10);
    Comando := Comando + 'IE='      + CTE_R_IE      + CHR(10) + CHR(10);
    Comando := Comando + 'xNome='   + CTE_R_xNome   + CHR(13) + CHR(10);
    Comando := Comando + 'xFant='   + CTE_R_xFant   + CHR(13) + CHR(10);
    Comando := Comando + 'fone='    + CTE_R_fone    + CHR(13) + CHR(10);
    Comando := Comando + 'xLgr='    + CTE_R_xLgr    + CHR(13) + CHR(10);
    Comando := Comando + 'nro='     + CTE_R_nro     + CHR(13) + CHR(10);
    Comando := Comando + 'xCpl='    + CTE_R_xCpl    + CHR(13) + CHR(10);
    Comando := Comando + 'xBairro=' + CTE_R_xBairro + CHR(13) + CHR(10);
    Comando := Comando + 'cMun='    + CTE_R_cMun    + CHR(13) + CHR(10);
    Comando := Comando + 'xMun='    + CTE_R_xMun    + CHR(13) + CHR(10);
    Comando := Comando + 'CEP='     + CTE_R_CEP     + CHR(13) + CHR(10);
    Comando := Comando + 'UF='      + CTE_R_UF      + CHR(13) + CHR(10);
    Comando := Comando + 'PaisCod=' + CTE_R_PaisCod + CHR(13) + CHR(10);
    Comando := Comando + 'Pais='    + CTE_R_Pais    + CHR(13) + CHR(10);
    Comando := Comando + 'Email='   + CTE_R_Email   + CHR(13) + CHR(10);

    // rem
    CTE_R_CNPJCPF := '' ;
    CTE_R_IE      := '' ;
    CTE_R_xNome   := '' ;
    CTE_R_xFant   := '' ;
    CTE_R_fone    := '' ;
    CTE_R_xLgr    := '' ;
    CTE_R_nro     := '' ;
    CTE_R_xCpl    := '' ;
    CTE_R_xBairro := '' ;
    CTE_R_cMun    := '' ;
    CTE_R_xMun    := '' ;
    CTE_R_CEP     := '' ;
    CTE_R_UF      := '' ;
    CTE_R_PaisCod := '' ;
    CTE_R_Pais    := '' ;
    CTE_R_Email   := '' ;

end;

procedure Memo_NFE;
begin
    Comando := Comando + '[infNFe001]' + CHR(10)      + CHR(10);
    Comando := Comando + 'chave='      + CTE_IN_chave + CHR(13) + CHR(10);
    Comando := Comando + 'PIN='        + CTE_IN_PIN   + CHR(10) + CHR(10);

    CTE_IN_chave := '' ;
    CTE_IN_PIN   := '' ;

end;

procedure Memo_Destinatario;
begin
    Comando := Comando + '[Dest]'    + CHR(10)       + CHR(10);
    Comando := Comando + 'CNPJCPF=' + CTE_D_CNPJCPF + CHR(13) + CHR(10);
    Comando := Comando + 'IE='      + CTE_D_IE      + CHR(10) + CHR(10);
    Comando := Comando + 'xNome='   + CTE_D_xNome   + CHR(13) + CHR(10);
    Comando := Comando + 'fone='    + CTE_D_fone    + CHR(13) + CHR(10);
    Comando := Comando + 'xLgr='    + CTE_D_xLgr    + CHR(13) + CHR(10);
    Comando := Comando + 'nro='     + CTE_D_nro     + CHR(13) + CHR(10);
    Comando := Comando + 'xCpl='    + CTE_D_xCpl    + CHR(13) + CHR(10);
    Comando := Comando + 'xBairro=' + CTE_D_xBairro + CHR(13) + CHR(10);
    Comando := Comando + 'cMun='    + CTE_D_cMun    + CHR(13) + CHR(10);
    Comando := Comando + 'xMun='    + CTE_D_xMun    + CHR(13) + CHR(10);
    Comando := Comando + 'CEP='     + CTE_D_CEP     + CHR(13) + CHR(10);
    Comando := Comando + 'UF='      + CTE_D_UF      + CHR(13) + CHR(10);
    Comando := Comando + 'cPais='   + CTE_D_cPais   + CHR(13) + CHR(10);
    Comando := Comando + 'xPais='   + CTE_D_xPais   + CHR(13) + CHR(10);

    CTE_D_CNPJCPF := '' ;
    CTE_D_IE      := '' ;
    CTE_D_xNome   := '' ;
    CTE_D_fone    := '' ;
    CTE_D_xLgr    := '' ;
    CTE_D_nro     := '' ;
    CTE_D_xCpl    := '' ;
    CTE_D_xBairro := '' ;
    CTE_D_cMun    := '' ;
    CTE_D_xMun    := '' ;
    CTE_D_CEP     := '' ;
    CTE_D_UF      := '' ;
    CTE_D_cPais   := '' ;
    CTE_D_xPais   := '' ;


end;

procedure Memo_ValorPrestServico;
begin
    Comando := Comando + '[vPrest]'   + CHR(10)        + CHR(10);
    Comando := Comando + 'vTPrest='   + CTE_VP_vTPrest + CHR(13) + CHR(10);
    Comando := Comando + 'vRec='      + CTE_VP_vRec    + CHR(10) + CHR(10);

end;

procedure Memo_CabComponenteServico( V : Integer );
begin
  If V < 10 then Comando        := Comando + '[Comp00' + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 100 then Comando  := Comando + '[Comp0' + InttoStr(V) + ']'  + CHR(13) + CHR(10)
  Else If V < 1000 then Comando := Comando + '[Comp' + InttoStr(V) + ']'   + CHR(13) + CHR(10);

end;


procedure Memo_ComponenteServico;
begin
    Comando := Comando + 'xNome='   + CTE_CS_xNome + CHR(13) + CHR(10);
    Comando := Comando + 'vComp='   + CTE_CS_vComp + CHR(10) + CHR(10);

    CTE_CS_xNome := '' ;
    CTE_CS_vComp := '' ;

end;

procedure Memo_ValorTotalTributo;
begin
    Comando := Comando + '[imp]'   + CHR(10)        + CHR(10);
    Comando := Comando + '[ICMS]'  + CHR(10)        + CHR(10);
    Comando := Comando + 'vComp='      + CTE_VT_vComp + CHR(13) + CHR(10);
    //Comando := Comando + 'infAdFisco=' + CTE_VT_infAdFisco + CHR(10) + CHR(10);

    CTE_VT_vComp      := '';
    CTE_VT_infAdFisco := '';

end;


procedure Memo_InfoImpostos( ST : string  );
begin
    if (ST = '00') then
    begin
         Comando := Comando + '[ICMS00]'   + CHR(13)  + CHR(10);
         Comando := Comando + 'CST=00'     +  CHR(13) + CHR(10);
         Comando := Comando + 'vBC='     + CTE_II_vBC   + CHR(13) + CHR(10);
         Comando := Comando + 'pICMS='   + CTE_II_pICMS + CHR(10) + CHR(10);
         Comando := Comando + 'vICMS='   + CTE_II_vICMS + CHR(10) + CHR(10);
    end
    else if (ST = '20') then
    begin
         Comando := Comando + '[ICMS20]'   + CHR(13)  + CHR(10);
         Comando := Comando + 'CST=20'     +  CHR(13) + CHR(10);
         Comando := Comando + 'vBC='     + CTE_II_vBC   + CHR(13) + CHR(10);
         Comando := Comando + 'pICMS='   + CTE_II_pICMS + CHR(10) + CHR(10);
         Comando := Comando + 'vICMS='   + CTE_II_vICMS + CHR(10) + CHR(10);
         Comando := Comando + 'pRedBC='  + CTE_II_pRedBC + CHR(10) + CHR(10);

    end
    else if (ST = '40') OR (ST = '41')  OR (ST = '51') then
    begin
         Comando := Comando + '[ICMS45]'  + CHR(13) + CHR(10);
         Comando := Comando + 'CST='+ST   + CHR(13) + CHR(10);
    end
    else if (ST = '60') then
    begin
         Comando := Comando + '[ICMS60]'   + CHR(13)  + CHR(10);
         Comando := Comando + 'CST=60'     +  CHR(13) + CHR(10);
         Comando := Comando + 'vBCSTRet='     + CTE_II_vBCSTRet   + CHR(13) + CHR(10);
         Comando := Comando + 'vICMSSTRet='   + CTE_II_vICMSSTRet + CHR(10) + CHR(10);
         Comando := Comando + 'pICMSSTRet='   + CTE_II_pICMSSTRet + CHR(10) + CHR(10);
         Comando := Comando + 'vCred='        + CTE_II_vCred + CHR(10) + CHR(10);
    end
    else if (ST = '90') then
    begin
         Comando := Comando + '[ICMS90]' + CHR(13)  + CHR(10);
         Comando := Comando + 'CST=90'   +  CHR(13) + CHR(10);
         Comando := Comando + 'vBC='     + CTE_II_vBC    + CHR(13) + CHR(10);
         Comando := Comando + 'pICMS='   + CTE_II_pICMS  + CHR(10) + CHR(10);
         Comando := Comando + 'vICMS='   + CTE_II_vICMS  + CHR(10) + CHR(10);
         Comando := Comando + 'pRedBC='  + CTE_II_pRedBC + CHR(10) + CHR(10);
         Comando := Comando + 'vCred='   + CTE_II_vCred + CHR(10) + CHR(10);
    end;

    // TODO : ICMSOutraUF

    CTE_II_vBC    := '';
    CTE_II_pICMS  := '';
    CTE_II_vICMS  := '';
    CTE_II_pRedBC := '';
    CTE_II_vBCSTRet   := '';
    CTE_II_vICMSSTRet := '';
    CTE_II_pICMSSTRet := '';
    CTE_II_vCred      := '';



end;

procedure Memo_Carga;
begin
    Comando := Comando + '[ICMSSN]'   + CHR(13)        + CHR(10);
    Comando := Comando + 'indSN='     + CTE_IC_indSN   + CHR(13) + CHR(10);
    Comando := Comando + '[infCarga]' + CHR(10)        + CHR(10);
    Comando := Comando + 'vCarga='    + CTE_CA_vCarga  + CHR(13) + CHR(10);
    Comando := Comando + 'proPred='   + CTE_CA_proPred + CHR(13) + CHR(10);
    Comando := Comando + 'xOutCat='   + CTE_CA_xOutCat + CHR(13) + CHR(10);
    Comando := Comando + '[infDoc]'   + CHR(10)        + CHR(10);

    CTE_IC_indSN   := '' ;
    CTE_CA_vCarga  := '' ;
    CTE_CA_proPred := '' ;
    CTE_CA_xOutCat := '' ;
end;

procedure Memo_Final;
begin

   { Comando := Comando + '[infNFe001]'   + CHR(10)        + CHR(10);
    Comando := Comando + 'chave='     + CTE_Chave      + CHR(13) + CHR(10);

    if ( CTE_Chave2 <> '' ) then
    begin
         Comando := Comando + '[infNFe002]'   + CHR(10)        + CHR(10);
         Comando := Comando + 'chave='     + CTE_Chave2      + CHR(13) + CHR(10);
    end; }

    Comando := Comando + '[infSeg001]'   + CHR(10)        + CHR(10);
    Comando := Comando + 'respSeg='   + CTE_respSeg    + CHR(13) + CHR(10);
    Comando := Comando + '[infQ001]'  + CHR(10)        + CHR(10);
    Comando := Comando + 'cUnid='     + CTE_IQ_cUnid   + CHR(13) + CHR(10);
    Comando := Comando + 'tpMed='     + CTE_IQ_tpMed   + CHR(13) + CHR(10);
    Comando := Comando + 'qCarga='    + CTE_IQ_qCarga  + CHR(13) + CHR(10);
    Comando := Comando + '[Rodo]'     + CHR(10)        + CHR(10);
    Comando := Comando + 'RNTRC='     + CTE_RO_RNTRC   + CHR(13) + CHR(10);
    Comando := Comando + 'dPrev='     + CTE_RO_dPrev   + CHR(13) + CHR(10);
    Comando := Comando + 'lota='      + CTE_RO_lota    + CHR(13) + CHR(10);
    Comando := Comando + '[cobr]'     + CHR(13)        + CHR(10);
    Comando := Comando + 'nFat='       + CTE_CO_nFat    + CHR(13) + CHR(10);
    Comando := Comando + 'vOrig='      + CTE_CO_vOrig   + CHR(13) + CHR(10);
    Comando := Comando + 'vDesc='      + CTE_CO_vDesc   + CHR(13) + CHR(10);
    Comando := Comando + 'vLiq='       + CTE_CO_vLiq    + CHR(13) + CHR(10);
    Comando := Comando + '[dup001]'   + CHR(13)        + CHR(10);
    Comando := Comando + 'nDup='       + CTE_CO_nDup    + CHR(13) + CHR(10);
    Comando := Comando + 'dVenc='      + CTE_CO_dVenc   + CHR(13) + CHR(10);
    Comando := Comando + 'vDup='       + CTE_CO_vDup    + CHR(13) + CHR(10);

    CTE_IC_indSN   := '' ;
    CTE_CA_vCarga  := '' ;
    CTE_CA_proPred := '' ;
    CTE_CA_xOutCat := '' ;
    CTE_IQ_cUnid   := '' ;
    CTE_IQ_tpMed   := '' ;
    CTE_IQ_qCarga  := '' ;
    CTE_RO_RNTRC   := '' ;
    CTE_RO_dPrev   := '' ;
    CTE_RO_lota    := '' ;
    CTE_CO_nFat    := '' ;
    CTE_CO_vOrig   := '' ;
    CTE_CO_vDesc   := '' ;
    CTE_CO_vLiq    := '' ;
    CTE_CO_nDup    := '' ;
    CTE_CO_dVenc   := '' ;
    CTE_CO_vDup    := '' ;
    CTE_respSeg    := '' ;

end;

procedure Memo_CREF(V : Integer);
begin
  If V < 10 then Comando := Comando + '[infNFe00'      + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 100 then Comando := Comando + '[infNFe0' + InttoStr(V) + ']' + CHR(13) + CHR(10)
  Else If V < 1000 then Comando := Comando + '[infNFe' + InttoStr(V) + ']' + CHR(13) + CHR(10);
end;

procedure Memo_REF;
begin
    Comando := Comando + 'chave='     + CTE_Chave      + CHR(13) + CHR(10);
end;

end.
