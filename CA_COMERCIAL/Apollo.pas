unit Apollo;
      
interface

uses

  Menus, StdCtrls, ExtCtrls, Buttons, ComCtrls, DB,DBCtrls, Variants,
  Forms, Classes, Vcl.Mask, WinSock, System.SysUtils, Winapi.Windows,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.VCLUI.Wait, Dialogs;

//SpeedBar, RXDBCtrl, RXLookup,UCrpe32, ELibFnc,CurrEdit,ToolEdit,

type
  //TConsisteInscricaoEstadual  = function (const Insc, UF: String): Integer; stdcall;
  TConsInscEsta  = function (const Insc, UF: String): Integer; stdcall;

type
  TFormPesq = class(TForm)
  public
    is_ExprProc: String;
    ii_ColuProc: Integer;
    is_WherAdic: String;
    sltRetorno: TStringList;
    function ShowModal(ps_ExprProc: String; pi_ColuProc: Integer; ps_WherAdic: String): TStringList;
  end;

  TBtnCtr = (bcNave, bcGrav, bcCanc, bcIncl, bcExcl, bcPesq, bcOrga, bcDive, bcSair);
  TBotoesControle = set of TBtnCtr;


function CriptografaSenha(sSenha: String): String;
function DataBanco(ls_Alias: String = 'SGDB'): TDateTime;
function Space(pi_NumeEspa: Integer): String;
function CriaQuery(pb_CachUpda: Boolean; ps_DataBase: String = 'SGDB'): TFDQuery;
function AtualizaCache(qryTemp: TFDQuery): Boolean;
procedure AjustaJanelaMDI(Sender: TObject; pb_AjusTama: Boolean; pb_JaneGran: Boolean = False);
function Ascan(pa_VetoStri: Array of String; ps_ContStri: String): Integer;
function Ascan0(pa_VetoStri: Array of String; ps_ContStri: String): Integer;
procedure AcessModul(Sender: TObject);
procedure Acessos(Sender: TObject);
function PegaRecurJanel(Tag: Integer): TStringList;
function TransTagStrin(Tag: Integer): String;
function TransTagNumer(ps_Tag: String): Integer;
function QueryVazia(qryTemp: TFDQuery): Boolean;
function QuerySoUm(qryTemp: TFDQuery): Boolean;
function QueryVaziaIdent(qryTemp: TFDQuery; us_CampChav: String): Boolean;
function SoNumeros(ps_String: String): String;
function Modulo10(ps_String: String): String;
function Modulo11(ps_String: String): String;
//function NovoID(ps_NomeColu: String; pb_Contador:Boolean = False): Integer;
function ProcuRegis(ps_NomeTabe, ps_NomeColu, ps_TipoColu: String; pv_ValoColu: Variant; pb_EmprFili: Boolean = True; ps_ExprAdic: String = ''): Boolean;
function SelecRegis(ps_NomeTabe, ps_NomeColu, ps_TipoColu: String; pv_ValoColu: Variant; pb_EmprFili: Boolean = True): TFDQuery;
function CompoVazio(cpnComponente: TComponent): Boolean;
function PegaIP: String;
function DiasMesAno(sMesAno: string): integer;
function ProcuAplic(pp_Class, pp_NomeJane : Pchar): Boolean;
procedure ExecuModal(Tipo: TFormClass; Dono: TComponent);
//procedure AcertParamField(crpRela: TCrpe);
function ExecuPesqu(FormClass: TFormClass; ps_ExprProc: String = ''; pi_ColuProc: Integer = 1; ps_WherAdic: String = ''): TStringList;
procedure ContrBarraFerra(pi_TagJane: Integer; pb_Status: Boolean);
//function FRound(pr_Valor: Real; pi_CasaDeci: Integer): Real;
procedure Foco(cpnCompo: TComponent; tabGuia: TTabSheet; pgePagina: TPageControl; ps_Mensagem: String = '');
procedure QueryReverExclu(qryTemp: TFDQuery);
function QueryEof(qryTemp: TFDQuery): Boolean;
//function IniciTrans(dtbBanco: TDataBase; pi_TempTole: Integer = 5): Boolean;
function FatorConveUnidaMedid(pi_UnidOrig, pi_UnidDest: Integer; pi_Material: Integer = 0): Real;
function RemovAcent(ps_Text:String): String;
function SqlExpre(ps_OperLiga, ps_TabeColu, ps_OperRela: String; pv_ContColu: Variant; ps_OperAgru: String = ''): String;
function SqlEmpreFilia(ps_OperLiga, ps_NomeTabe, ps_OperAgru: String; pb_AtivSele: Boolean = True): String;
function CalcCnpjCpf(Numero : String) : String;
//function TextoToReal(ps_Numero: String): Double;
procedure PegaUsuaSist();

function BanespaD2(ps_String: String): String;

implementation

uses
  global,Principal;

// *************************************************************************
// * ShowModal - Classe TFormPesq
// *************************************************************************
//
function TFormPesq.ShowModal(ps_ExprProc: String; pi_ColuProc: Integer; ps_WherAdic: String): TStringList;
begin
  is_ExprProc := ps_ExprProc;
  ii_ColuProc := pi_ColuProc;
  is_WherAdic := ps_wherAdic;
  inherited ShowModal;
  Result := sltRetorno;
end;

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



// *************************************************************************
// * DataBanco
// *************************************************************************
//
function DataBanco(ls_Alias: String = 'SGDB'): TDateTime;
var
  qryTemp: TFDQuery;
begin
  try
    // Se o Banco for Oracle
    if gs_BancDado = 'ORACLE' then
    begin
      // Pegamos a data/hora do banco de dados
      qryTemp := CriaQuery(True, ls_Alias);
      qryTemp.SQL.Text := ('SELECT SYSDATE FROM DUAL');
      qryTemp.Open;

      if not(qryTemp.IsEmpty) then
      begin
        Result := qryTemp.FieldByName('SYSDATE').AsDateTime;
      end;
    end
    // Se o banco for Interbase
    else if gs_BancDado = 'INTERBASE' then
    begin
      // Pegamos a data/hora do banco de dados
      qryTemp := CriaQuery(True, ls_Alias);
      qryTemp.SQL.Text := ('SELECT CURRENT_TIMESTAMP AS DATA_HORA FROM RDB$DATABASE');
      qryTemp.Open;

      if not(qryTemp.IsEmpty) then
      begin
        Result := qryTemp.FieldByName('DATA_HORA').AsDateTime;
      end;
    end
    // Se o Banco for SQL Server
    else if gs_BancDado = 'MSSQL' then
    begin
      // Pegamos a data/hora do banco de dados
      qryTemp := CriaQuery(True, ls_Alias);
      qryTemp.SQL.Text := ('SELECT GETDATE() AS DATA_HORA');
      qryTemp.Open;

      if not(qryTemp.IsEmpty) then
      begin
        Result := qryTemp.FieldByName('DATA_HORA').AsDateTime;
      end;
    end
    // Outros bancos
    else
    begin
      Result := Date();
    end;
  finally
    qryTemp.Close;
    qryTemp.Free;
  end;
end;


// *************************************************************************
// * CriaQuery
// *************************************************************************
//
function CriaQuery(pb_CachUpda: Boolean; ps_DataBase: String = 'SGDB'): TFDQuery;
var
  qryTemp: TFDQuery;
begin
  qryTemp := TFDQuery.Create(Application);
  qryTemp.Name := ps_DataBase;
  qryTemp.CachedUpdates := pb_CachUpda;
  Result := qryTemp;
  Exit;
end;

// *************************************************************************
// * Space
// *************************************************************************
//
function Space(pi_NumeEspa: Integer): String;
var
  li_Loop: Integer;
  ls_String: String;
begin
  // Inicializamos uma string vazia
  ls_String := '';
  // Acrescentamos espaços à string até o tamanho desejado
  for li_Loop := 1 to pi_NumeEspa do
    ls_String := ls_String + ' ';

  // Retornamos a string com os espacos
  Result := ls_String;
end;

function AtualizaCache(qryTemp: TFDQuery): Boolean;
begin
 try
   begin
     qryTemp.ApplyUpdates;
     qryTemp.CommitUpdates;
     Result := True;
   end;

   except

   begin
     qryTemp.RevertRecord;
     Result := False;
   end;
 end;

end;


procedure AjustaJanelaMDI(Sender: TObject; pb_AjusTama: Boolean; pb_JaneGran: Boolean = False);
begin
  // Se for janela grande
  if pb_JaneGran then
  begin
    TForm(Sender).Top := 0;
    TForm(Sender).Left := 0;
    TForm(Sender).Width := FrmPrincipal.ClientWidth - 4;
    TForm(Sender).Height := FrmPrincipal.ClientHeight - 24;
    Exit;
  end;

  // Se for para ajustar o tamanho da janela padrão
  if pb_AjusTama then
  begin
    TForm(Sender).Height := 445;
    TForm(Sender).Width := 655;
  end;

  // Ajustamos a posição da janela padrão
  TForm(Sender).Top := 6;
  Tform(Sender).Left := (FrmPrincipal.ClientWidth - TForm(Sender).Width) div 2;
end;


// *************************************************************************
// * Ascan
// *************************************************************************
//
function Ascan(pa_VetoStri: Array of String; ps_ContStri: String): Integer;
var
  li_Loop: Integer;
begin
  // Consideramos inicialmente como não encontrado
  Result := 0;

  // Comparamos todos os itens do vetor com a string
  for li_Loop := 0 to Length(pa_VetoStri)-1 do
    if pa_VetoStri[li_Loop] = ps_ContStri then
    begin
      Result := li_Loop+1;
      Break;
    end;

end;

// *************************************************************************
// * Ascan0
// *************************************************************************
//
function Ascan0(pa_VetoStri: Array of String; ps_ContStri: String): Integer;
var
  li_Loop: Integer;
begin
  // Consideramos inicialmente como não encontrado
  Result := -1;

  // Comparamos todos os itens do vetor com a string
  for li_Loop := 0 to Length(pa_VetoStri)-1 do
    if pa_VetoStri[li_Loop] = ps_ContStri then
    begin
      Result := li_Loop;
      Break;
    end;

end;


// *************************************************************************
// * AcessModul
// *************************************************************************
//
procedure AcessModul(Sender: TObject);
var
  li_Loop: Integer;
  qryTemp: TFDQuery;
begin
  // Criamos o SQL p/ procurar permissão de leitura
  qryTemp := CriaQuery(True);

  // Se a segurança estiver desativada
  if not gb_SeguAtiv then
  begin
    // Verificamos se a janela possuir o direito LER e/ou CONSULTAR
    qryTemp.SQL.Text :=
    // Script
    'SELECT DISTINCT DESC_RECURSO'                                +
    '  FROM SCT_RECURSO, SCT_JANELA, SCT_REC_JANELA'              +
    ' WHERE (Sct_rec_janela.ID_RECURSO = Sct_recurso.ID_RECURSO)' +
    '   AND (Sct_janela.ID_MODULO = Sct_rec_janela.ID_MODULO)'    +
    '   AND (Sct_janela.ID_JANELA = Sct_rec_janela.ID_JANELA)'    +
    '   AND (((SCT_RECURSO.DESC_RECURSO = ''LER'') OR'            +
    '         (SCT_RECURSO.DESC_RECURSO = ''CONSULTAR''))'        +
    '   AND   (SCT_JANELA.TAG LIKE :ps_Tag))';
  end
  // Se a segurança estiver ativada
  else
  begin
    // Pegamos o acesso LER ou CONSULTAR da janela para o usuario
    qryTemp.SQL.Text :=
    // Script
    'SELECT DESC_RECURSO'                                          +
    '  FROM SCT_DIREITOS_US, SCT_RECURSO, SCT_USUARIO, SCT_JANELA' +
    ' WHERE (Sct_direitos_us.ID_RECURSO = SCT_RECURSO.ID_RECURSO)' +
    '   AND (SCT_DIREITOS_US.ID_RECURSO = SCT_RECURSO.ID_RECURSO)' +
    '   AND (SCT_DIREITOS_US.ID_USUARIO = SCT_USUARIO.ID_USUARIO)' +
    '   AND (SCT_DIREITOS_US.ID_USUARIO = SCT_USUARIO.ID_USUARIO)' +
    '   AND (SCT_DIREITOS_US.ID_MODULO = SCT_JANELA.ID_MODULO)'    +
    '   AND (SCT_DIREITOS_US.ID_JANELA = SCT_JANELA.ID_JANELA)'    +
    '   AND (((SCT_RECURSO.DESC_RECURSO = ''LER'') OR'             +
    '         (SCT_RECURSO.DESC_RECURSO = ''CONSULTAR''))'         +
    '   AND   (SCT_JANELA.TAG LIKE :ps_Tag)'                       +
    '   AND   (SCT_DIREITOS_US.ID_USUARIO = :pi_IdenUsua) )';
  end;

  with (Sender as TForm) do
  begin
    // Avaliamos cada componente do formulario
    for li_Loop := 0 to ComponentCount -1 do
      // Se o componente for um item de menu
      if
      //(Components[li_Loop] is TMenuItem) or (Components[li_Loop] is TSpeedItem) or
         (Components[li_Loop] is TBitBtn)   or (Components[li_Loop] is TButton)  then
        // Se a tag do item for maior que zero
        if Components[li_Loop].Tag > 0 then
        begin

          // Procuramos permissão de leitura p/ o usuário da janela especificada na tag
          // Parametros
          qryTemp.Close;
          qryTemp.ParamByName('ps_Tag').AsString := TransTagStrin(Components[li_Loop].Tag);
          // Se a segurança estiver ativada
          if gb_SeguAtiv then
            qryTemp.ParamByName('pi_IdenUsua').AsInteger := gi_IdenUsua;
          qryTemp.Open;

          // Se nao ha permissão para a janela
          if qryTemp.RecordCount = 0 then
          begin
            // Desativamos o item
            if Components[li_Loop] is TMenuItem then
              TMenuItem(Components[li_Loop]).Enabled := False
   //         else if Components[li_Loop] is TSpeedItem then
   //           TSpeedItem(Components[li_Loop]).Enabled := False
            else if Components[li_Loop] is TBitBtn then
              TBitBtn(Components[li_Loop]).Enabled := False
            else
              TButton(Components[li_Loop]).Enabled := False;
          end
          // Se há permissão para a janela
          else
          begin
            // Ativamos o item
            if Components[li_Loop] is TMenuItem then
              TMenuItem(Components[li_Loop]).Enabled := True
//            else if Components[li_Loop] is TSpeedItem then
  //            TSpeedItem(Components[li_Loop]).Enabled := True
            else if Components[li_Loop] is TBitBtn then
              TBitBtn(Components[li_Loop]).Enabled := True
            else
              TButton(Components[li_Loop]).Enabled := True;
          end;
        end;
  end;

  // Destruimos a query
  qryTemp.Close;
  qryTemp.Free;

end;

// *************************************************************************
// * Acessos
// *************************************************************************
//
procedure Acessos(Sender: TObject);
var
  li_Loop: Integer;
  qryTemp: TFDQuery;
begin
  // Criamos o SQL p/ procurar permissão de leitura
  qryTemp := CriaQuery(True);

  // Se a segurança estiver desativada
  if not gb_SeguAtiv then
  begin
    // Verificamos se a janela possuir o direito LER e/ou CONSULTAR
    qryTemp.SQL.Text :=
    'SELECT TAG, DESC_RECURSO'                                    +
    '  FROM SCT_RECURSO, SCT_JANELA, SCT_REC_JANELA'              +
    ' WHERE (Sct_rec_janela.ID_RECURSO = Sct_recurso.ID_RECURSO)' +
    '   AND (Sct_janela.ID_MODULO = Sct_rec_janela.ID_MODULO)'    +
    '   AND (Sct_janela.ID_JANELA = Sct_rec_janela.ID_JANELA)'    +
    '   AND (((SCT_RECURSO.DESC_RECURSO = ''LER'') OR'            +
    '         (SCT_RECURSO.DESC_RECURSO = ''CONSULTAR'')))'       ;
    qryTemp.Open;

    // Script
    {
    'SELECT DISTINCT DESC_RECURSO'                                +
    '  FROM SCT_RECURSO, SCT_JANELA, SCT_REC_JANELA'              +
    ' WHERE (Sct_rec_janela.ID_RECURSO = Sct_recurso.ID_RECURSO)' +
    '   AND (Sct_janela.ID_MODULO = Sct_rec_janela.ID_MODULO)'    +
    '   AND (Sct_janela.ID_JANELA = Sct_rec_janela.ID_JANELA)'    +
    '   AND (((SCT_RECURSO.DESC_RECURSO = ''LER'') OR'            +
    '         (SCT_RECURSO.DESC_RECURSO = ''CONSULTAR''))'        +
    '   AND   (SCT_JANELA.TAG = :ps_Tag))';
    }
  end
  // Se a segurança estiver ativada
  else
  begin
    // Pegamos o acesso LER ou CONSULTAR da janela para o usuario
    qryTemp.SQL.Text :=
    // Script
    'SELECT TAG, DESC_RECURSO'                          +
    '  FROM SCT_DIREITOS_US, SCT_RECURSO, SCT_USUARIO, SCT_JANELA' +
    ' WHERE (SCT_DIREITOS_US.ID_RECURSO = SCT_RECURSO.ID_RECURSO)' +
    '   AND (SCT_DIREITOS_US.ID_USUARIO = SCT_USUARIO.ID_USUARIO)' +
    '   AND (SCT_DIREITOS_US.ID_MODULO = SCT_JANELA.ID_MODULO)'    +
    '   AND (SCT_DIREITOS_US.ID_JANELA = SCT_JANELA.ID_JANELA)'    +
    '   AND (((SCT_RECURSO.DESC_RECURSO = ''LER'') OR'             +
    '         (SCT_RECURSO.DESC_RECURSO = ''CONSULTAR''))'         +
    '   AND   (SCT_DIREITOS_US.ID_USUARIO = :pi_IdenUsua) )';
    qryTemp.ParamByName('pi_IdenUsua').AsInteger := gi_IdenUsua;
    qryTemp.Open;

    {
    // Script
    'SELECT DESC_RECURSO'                                          +
    '  FROM SCT_DIREITOS_US, SCT_RECURSO, SCT_USUARIO, SCT_JANELA' +
    ' WHERE (SCT_DIREITOS_US.ID_RECURSO = SCT_RECURSO.ID_RECURSO)' +
    '   AND (SCT_DIREITOS_US.ID_USUARIO = SCT_USUARIO.ID_USUARIO)' +
    '   AND (SCT_DIREITOS_US.ID_MODULO = SCT_JANELA.ID_MODULO)'    +
    '   AND (SCT_DIREITOS_US.ID_JANELA = SCT_JANELA.ID_JANELA)'    +
    '   AND (((SCT_RECURSO.DESC_RECURSO = ''LER'') OR'             +
    '         (SCT_RECURSO.DESC_RECURSO = ''CONSULTAR''))'         +
    '   AND   (SCT_JANELA.TAG = :ps_Tag)'                          +
    '   AND   (SCT_DIREITOS_US.ID_USUARIO = :pi_IdenUsua) )';
    }


  end;

  with (Sender as TForm) do
  begin
    // Avaliamos cada componente do formulario
    for li_Loop := 0 to ComponentCount -1 do
      // Se o componente for um item de menu
      if
      //(Components[li_Loop] is TMenuItem) or (Components[li_Loop] is TSpeedItem) or
         (Components[li_Loop] is TBitBtn)   or (Components[li_Loop] is TButton)  then
        // Se a tag do item for maior que zero
        if Components[li_Loop].Tag > 0 then
        begin

          // Procuramos permissão de leitura p/ o usuário da janela especificada na tag
          // Parametros
          // Localizamos o produto lido na query de produtos
          {
          qryTemp.Close;
          qryTemp.ParamByName('ps_Tag').AsString := TransTagStrin(Components[li_Loop].Tag);
          // Se a segurança estiver ativada
          if gb_SeguAtiv then
            qryTemp.ParamByName('pi_IdenUsua').AsInteger := gi_IdenUsua;
          qryTemp.Open;
          }


          // Se nao ha permissão para a janela
          //if qryTemp.RecordCount = 0 then
          if not qryTemp.Locate('TAG', TransTagStrin(Components[li_Loop].Tag), [loCaseInsensitive]) then
          begin
            // Desativamos o item
            if Components[li_Loop] is TMenuItem then
              TMenuItem(Components[li_Loop]).Enabled := False
//            else if Components[li_Loop] is TSpeedItem then
  //            TSpeedItem(Components[li_Loop]).Enabled := False
            else if Components[li_Loop] is TBitBtn then
              TBitBtn(Components[li_Loop]).Enabled := False
            else
              TButton(Components[li_Loop]).Enabled := False;
          end
          // Se há permissão para a janela
          else
          begin
            // Ativamos o item
            if Components[li_Loop] is TMenuItem then
              TMenuItem(Components[li_Loop]).Enabled := True
//            else if Components[li_Loop] is TSpeedItem then
  //            TSpeedItem(Components[li_Loop]).Enabled := True
            else if Components[li_Loop] is TBitBtn then
              TBitBtn(Components[li_Loop]).Enabled := True
            else
              TButton(Components[li_Loop]).Enabled := True;
          end;
        end;
  end;

  // Destruimos a query
  qryTemp.Close;
  qryTemp.Free;

end;


function TransTagStrin(Tag: Integer): String;
var
  ls_Tag, x: String;
begin
  ls_Tag := IntToStr(Tag);

  // Se a tag possuir 6 digitos
  if (Length(ls_Tag) = 6) then
  begin
    x := Chr(StrToInt(Copy(ls_Tag, 1, 2))+54) + Chr(StrToInt(Copy(ls_Tag, 3,2))+54) +
              Chr(StrToInt(Copy(ls_Tag, 5, 2))+54) + '%';
  end
  // Se a tag possuir 9 digitos
  else
  begin
    x := Chr(StrToInt(Copy(ls_Tag, 1, 2))+54) + Chr(StrToInt(Copy(ls_Tag, 3,2))+54) +
              Chr(StrToInt(Copy(ls_Tag, 5, 2))+54) + Copy(ls_Tag, 7, 3);
  end;

  Result := x;
end;

function TransTagNumer(ps_Tag: String): Integer;
begin
  // Se a tag possuir 6 digitos
  if (Length(ps_Tag) = 6) then
  begin
    Result := StrToInt(IntToStr(Ord(ps_Tag[1])-54) +
                       IntToStr(Ord(ps_Tag[2])-54) +
                       IntToStr(Ord(ps_Tag[3])-54) +
                       Copy(ps_Tag, 4, 3));
  end
  // Se a tag possuir 3 digitos
  else
  begin
    Result := StrToInt(IntToStr(Ord(ps_Tag[1])-54) +
                       IntToStr(Ord(ps_Tag[2])-54) +
                       IntToStr(Ord(ps_Tag[3])-54));
  end;
end;




function PegaRecurJanel(Tag: Integer): TStringList;
var
  li_Loop    ,li_Posicao: Integer;
  qryTemp: TFDQuery;
  sltTemp: TStringList;

begin
  // Criamos a StringList de retorno
  sltTemp := TStringList.Create;

  // Se a segurança estiver ativada
  if gb_SeguAtiv then
  begin

    // Criamos o SQL p/ procurar os recursos da janela para o usuário
    qryTemp := CriaQuery(True);
    qryTemp.SQL.Text :=
    // Script
    'SELECT DESC_RECURSO'                                          +
    '  FROM SCT_DIREITOS_US, SCT_RECURSO, SCT_USUARIO, SCT_JANELA' +
    ' WHERE (SCT_DIREITOS_US.ID_RECURSO = SCT_RECURSO.ID_RECURSO)' +
    '   AND (SCT_DIREITOS_US.ID_USUARIO = SCT_USUARIO.ID_USUARIO)' +
    '   AND (SCT_DIREITOS_US.ID_MODULO = SCT_JANELA.ID_MODULO)'    +
    '   AND (SCT_DIREITOS_US.ID_JANELA = SCT_JANELA.ID_JANELA)'    +
    '   AND ((SCT_JANELA.TAG = :ps_Tag)'                           +
    '   AND  (SCT_DIREITOS_US.ID_USUARIO = :pi_IdenUsua) )';
    qryTemp.ParamByName('ps_Tag').AsString := TransTagStrin(Tag);
    qryTemp.ParamByName('pi_IdenUsua').AsInteger := gi_IdenUsua;
    qryTemp.Open;

  end
  // Se a segurança estiver desativada
  else
  begin
    // Criamos o SQL p/ procurar os recursos da janela
    qryTemp := CriaQuery(True);
    qryTemp.SQL.Text :=
    // Script
    'SELECT DESC_RECURSO                                       ' +
    ' FROM SCT_REC_JANELA, SCT_RECURSO, SCT_JANELA             ' +
    'WHERE (SCT_JANELA.ID_MODULO = SCT_REC_JANELA.ID_MODULO)   ' +
    '  AND (SCT_JANELA.ID_JANELA = SCT_REC_JANELA.ID_JANELA)   ' +
    '  AND (SCT_REC_JANELA.ID_RECURSO = SCT_RECURSO.ID_RECURSO)' +
    '  AND ((SCT_JANELA.TAG = :ps_Tag))';
    qryTemp.ParamByName('ps_Tag').AsString := TransTagStrin(Tag);
    qryTemp.Open;
  end;

  // Loop para todos os recursos da janela p/ o usuário
  for li_Loop := 0 to qryTemp.RecordCount-1 do
  begin
    // Procuramos o recurso na matriz de conversão de recursos
    li_Posicao := Ascan0(ga_RecuSmar, qryTemp.FieldByName('DESC_RECURSO').AsString);

    // Se encontrarmos o recurso, este deve ser convertido
    if li_Posicao >= 0 then
      sltTemp.Add(ga_Recursos[li_Posicao])

    // Se o recurso não foi encontrado na matriz de conversão, o adiconamos a lista
    else
      sltTemp.Add(qryTemp.FieldByName('DESC_RECURSO').AsString);

    // Pegamos o próximo recurso
    qryTemp.Next;
  end;

  // Fechamos e destruimos a query
  qryTemp.Close;
  qryTemp.Free;

  // Retornamos a lista de recurso, já convertidos para o nosso padrão
  Result := sltTemp;

end;

function QueryVazia(qryTemp: TFDQuery): Boolean;
var
  bmkPosicAtual: TBookMark;
  lb_StatCont, lb_Bof     , lb_Eof: Boolean;
begin

  if qryTemp.State = dsInactive	then
  begin
    Result := True;
    Exit;
  end;

  try
    // Pegamos a posição do ponteiro
    bmkPosicAtual := qryTemp.GetBookMark;

    // Verificamos se estamos no inicio do arquivo
    if qryTemp.Bof then
      lb_Bof := True
    else
      lb_Bof := False;

    // Verificamos se estamos no final do arquivo
    if qryTemp.Eof then
      lb_Eof := True
    else
      lb_Eof := False;

    // Pegamos o status inicial dos controles
    lb_StatCont := qryTemp.ControlsDisabled;

    // Desabilitamos os controles
    qryTemp.DisableControls;

    // Posicionamos no primeiro registro
    qryTemp.First;

    // Se for o primeiro e o último registro ao mesmo tempo
    if (lb_Bof) and (lb_Eof) then
      // Query vazia
      Result := True
    else
      Result := False;

    // Retornamos o ponteiro
    qryTemp.GotoBookMark(bmkPosicAtual);

    // Se era inicio do arquivo
    if lb_Bof then
      qryTemp.Prior;

    // Se era final do arquivo
    if lb_Eof then
      qryTemp.Next;

    // Restauramos os controles iniciais
    if not lb_StatCont then
      qryTemp.EnableControls;

    Exit;
  except
    Result := True;
  end;
end;

function QueryVaziaIdent(qryTemp: TFDQuery; us_CampChav: String): Boolean;
begin
  try
    if qryTemp.FieldByName(us_CampChav).AsInteger > 0 then
    begin
      Result := False;
    end
    else
    begin
      Result := True;
    end;
  except
    Result := True;
  end;
end;

function QuerySoUm(qryTemp: TFDQuery): Boolean;
var
  bmkPosicAtual: TBookMark;
  lb_StatCont, lb_Bof     , lb_Eof: Boolean;
begin
  // Pegamos a posição do ponteiro
  bmkPosicAtual := qryTemp.GetBookMark;

  // Verificamos se estamos no inicio do arquivo
  if qryTemp.Bof then
    lb_Bof := True
  else
    lb_Bof := False;

  // Verificamos se estamos no final do arquivo
  if qryTemp.Eof then
    lb_Eof := True
  else
    lb_Eof := False;

  // Pegamos o status inicial dos controles
  lb_StatCont := qryTemp.ControlsDisabled;

  // Desabilitamos os controles
  qryTemp.DisableControls;

  // Posicionamos no primeiro registro
  qryTemp.First;

  // Se for o primeiro e o último registro ao mesmo tempo
  if (lb_Bof) and (lb_Eof) then
    // Não tem nenhum
    Result := False
  else
  begin
    // Movemos p/ o próximo registro
    qryTemp.Next;
    // Se for o final da tabela
    if qryTemp.Eof then
      Result := True
    else
      Result := False;
  end;

  // Retornamos o ponteiro
  qryTemp.GotoBookMark(bmkPosicAtual);

  // Se era inicio do arquivo
  if lb_Bof then
    qryTemp.Prior;

  // Se era final do arquivo
  if lb_Eof then
    qryTemp.Next;

  // Restauramos os controles iniciais
  if not lb_StatCont then
    qryTemp.EnableControls;

  Exit;
end;

function SoNumeros(ps_String: String): String;
var
  ls_String  : String;
  li_Loop    , li_CodiCara: Integer;
begin
  // Inicializamos a string vazia
  ls_String := '';
  // Loop para todos os caracteres da string
  for li_Loop := 1 to Length(ps_String) do
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

function Modulo10(ps_String: String): String;
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

{// *************************************************************************
// * NovoID
// *************************************************************************
//
function NovoID(ps_NomeColu: String; pb_Contador:Boolean = False): Integer;
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

      while (Seconds(lt_HoraAtua)+10)=seconds(Time()) do
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
end;
 }
{
function NovoID(ps_NomeColu: String): Integer;
var
  qryPega, qryAtua: TFDQuery;
  li_NovoID: Integer;
  lt_HoraAtua: TDateTime;
begin
  // Criamos uma query para pegar o contador e outra para atualizá-lo
  qryPega := CriaQuery(True);
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
}

// *************************************************************************
// * ProcuRegis
// *************************************************************************
//
function ProcuRegis(ps_NomeTabe, ps_NomeColu, ps_TipoColu: String; pv_ValoColu: Variant; pb_EmprFili: Boolean = True; ps_ExprAdic: String = ''): Boolean;
var
  qryTemp: TFDQuery;
  ls_Expressao: String;
begin
  Result := False;

  if ps_TipoColu = 'S' then
    ls_Expressao := '''' + pv_ValoColu + ''''
  else if ps_TipoColu = 'D' then
    ls_Expressao := 'TO_DATE(''' + DateToStr(pv_ValoColu) + ''',''DD/MM/YYYY'')'
  else if ps_TipoColu = 'I' then
    ls_Expressao := IntToStr(pv_ValoColu)
  else if ps_TipoColu = 'F' then
    ls_Expressao := FloatToStr(pv_ValoColu);

  qryTemp := CriaQuery(False);
  if pb_EmprFili then
    qryTemp.SQL.Text := 'SELECT ' + ps_NomeColu + ' FROM ' + ps_NomeTabe +
                        ' WHERE EMPRESA = ''' + gs_Empresa + '''' +
                        '   AND FILIAL  = ' + IntToStr(gi_Filial) +
                        '   AND ' + ps_NomeColu + ' = ' + ls_Expressao + ps_ExprAdic
  else
    qryTemp.SQL.Text := 'SELECT ' + ps_NomeColu + ' FROM ' + ps_NomeTabe +
                        ' WHERE ' + ps_NomeColu + ' = ' + ls_Expressao + ps_ExprAdic;

  qryTemp.Open;
  Result := not(QueryVazia(qryTemp));
  qryTemp.Close;
  qryTemp.Free;

end;


// *************************************************************************
// * SelecRegis
// *************************************************************************
//
function SelecRegis(ps_NomeTabe, ps_NomeColu, ps_TipoColu: String; pv_ValoColu: Variant; pb_EmprFili: Boolean = True): TFDQuery;
var
  qryTemp: TFDQuery;
  ls_Expressao: String;
begin

  if ps_TipoColu = 'S' then
    ls_Expressao := '''' + pv_ValoColu + ''''
  else if ps_TipoColu = 'D' then
    ls_Expressao := 'TO_DATE(''' + DateToStr(pv_ValoColu) + ''',''DD/MM/YYYY'')'
  else if ps_TipoColu = 'I' then
    ls_Expressao := IntToStr(pv_ValoColu)
  else if ps_TipoColu = 'F' then
    ls_Expressao := FloatToStr(pv_ValoColu);

  qryTemp := CriaQuery(False);
  if pb_EmprFili then
    qryTemp.SQL.Text := 'SELECT * FROM ' + ps_NomeTabe +
                        ' WHERE EMPRESA = ''' + gs_Empresa + '''' +
                        '   AND FILIAL  = ' + IntToStr(gi_Filial) +
                        '   AND ' + ps_NomeColu + ' = ' + ls_Expressao
  else
    qryTemp.SQL.Text := 'SELECT * FROM ' + ps_NomeTabe +
                        ' WHERE ' + ps_NomeColu + ' = ' + ls_Expressao;

  qryTemp.Open;
  Result := qryTemp;
  Exit;
  //qryTemp.Close;
  //qryTemp.Free;
end;


// *************************************************************************
// * CompoVazio
// *************************************************************************
//
function CompoVazio(cpnComponente: TComponent): Boolean;
var
  lb_Vazio: Boolean;
begin
  // Inicializamos a flag
  lb_Vazio := False;

{  // DBDateEdit
  if cpnComponente is TCustomDateEdit then
  begin
    // Se o componente não foi preenchido
    if Trim(Copy(TCustomDateEdit(cpnComponente).EditText, 1, 1)) = '' then
      lb_Vazio := True;
  end

  // Edit
 } if cpnComponente is TEdit then
  begin
    // Se o componente não foi preenchido
    if TEdit(cpnComponente).Text = '' then
      lb_Vazio := True;
  end


  // DBCalcEdit
{  else if cpnComponente is TRxDBCalcEdit then//TRxCustomCalcEdit then
  begin
    if TRxDBCalcEdit(cpnComponente).ZeroEmpty = True then
    begin
      // Se o componente não foi preenchido
      if TRxDBCalcEdit(cpnComponente).Value = 0 then
        lb_Vazio := True;
    end
    else
    begin
      // Se o componente não foi preenchido
      if TRxDBCalcEdit(cpnComponente).Value = Null then
        lb_Vazio := True;
    end;
  end

  // CalcEdit
  if cpnComponente is TRxCustomCalcEdit then//TRxCustomCalcEdit then
  begin
    // Se o componente não foi preenchido
    if TRxCustomCalcEdit(cpnComponente).Value = 0 then
      lb_Vazio := True;
  end
 }
  // DBEdit
  else if cpnComponente is TCustomMaskEdit then
  begin
    // Se o componente não foi preenchido
    if TCustomMaskEdit(cpnComponente).Text = '' then
      lb_Vazio := True;
  end

  // DBListBox
  else if cpnComponente is TCustomListBox then
  begin
    // Se o componente não foi preenchido
    if TCustomListBox(cpnComponente).ItemIndex = -1 then
      lb_Vazio := True;
  end

  // TRxDBLookupCombo
{  else if cpnComponente is TRxDBLookupCombo then
  begin
    // Se o componente não foi preenchido
    if TRxDBLookupCombo(cpnComponente).Text = TRxDBLookupCombo(cpnComponente).DisplayEmpty then
    begin
      lb_Vazio := True;
    end;
  end
 }
  // DBComboBox
  else if cpnComponente is TCustomComboBox then
  begin
    // Se o componente não foi preenchido
    if TCustomComboBox(cpnComponente).ItemIndex = -1 then
      lb_Vazio := True;
  end

  // DBRadioGroup
  else if cpnComponente is TDBRadioGroup then
  begin
    // Se o componente não foi preenchido
    if TDBRadioGroup(cpnComponente).Value = '' then
      lb_Vazio := True;
  end

  // DBLookupListBox
  else if cpnComponente is TDBLookupListBox then
  begin
    // Se o componente não foi preenchido
    if TDBLookupListBox(cpnComponente).SelectedItem = '' then
      lb_Vazio := True;
  end

  // DBLookupComboBox
  else if cpnComponente is TDBLookupComboBox then
  begin
    // Se o componente não foi preenchido
    if TDBLookupComboBox(cpnComponente).Text = '' then
      lb_Vazio := True;
  end

  // RxDBLookupList
{  else if cpnComponente is TRxDBLookupList then
  begin
    // Se o componente não foi preenchido
    if TRxDBLookupList(cpnComponente).Value = '' then
      lb_Vazio := True;
  end

  // RxDBLookupCombo
  else if cpnComponente is TRxDBLookupCombo then
  begin
    // Se o componente não foi preenchido
    if TRxDBLookupCombo(cpnComponente).Value = '' then
      lb_Vazio := True;
  end
 }
  // DbMemoEdit
  else if cpnComponente is TDBMemo then
  begin
    // Se o componente não foi preenchido
    if TDBMemo(cpnComponente).Text = '' then
      lb_Vazio := True;
  end;

{  // DbMemoEdit
  else if cpnComponente is TDateEdit then
  begin
    // Se o componente não foi preenchido
    if TDBMemo(cpnComponente).Text = '' then
      lb_Vazio := True;

  end;
}
  Result := lb_Vazio

end;

// *************************************************************************
// * PegaIP
// *************************************************************************
//
function PegaIP: String;
var
  VersionReq: Word;
  WSAData: TWSAData;
  p: PHostEnt;
  s: Array[0..128] of Char;
begin
  VersionReq := MakeWord(1, 1);
  WSAStartup(VersionReq, WSAData);
  GetHostName(@s, 128);
  p := GetHostByName(@s);
  Result := iNet_ntoa(PInAddr(p^.h_addr_list^)^);
  WSACleanup;
end;

// *************************************************************************
// * ExecuModal
// *************************************************************************
//
procedure ExecuModal(Tipo: TFormClass; Dono: TComponent);
begin
  with Tipo.Create(Dono) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

{procedure AcertParamField(crpRela: TCrpe);
var
  li_Count : integer;
begin
  // Varremos os ParamsFields
  for li_Count := crpRela.ParamFields.Count - 1 downto 0 do
  begin
    //Se o ParamField não for do Report Principal...
    if crpRela.ParamFields[li_Count].ReportName <> crpRela.Subreports[0].Name then
    begin
      // Apagamos o ParamField
      crpRela.ParamFields.Delete(li_Count);
    end;
  end;
end;
}
// *************************************************************************
// * DiasMesAno
// *************************************************************************
//
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

// *************************************************************************
// * DiasMesAno
// *************************************************************************
//
function ProcuAplic(pp_Class, pp_NomeJane : Pchar): Boolean;
var
  hdl_Modulo : THandle;

begin

  // Procuramos o Módulo
  hdl_Modulo := FindWindow(pp_Class,pp_NomeJane);

  // Se o Módulo estiver aberto
  if hdl_Modulo <> 0 then
  begin

    // Colocamos o módulo em primeiro plano
    SetForegroundWindow(hdl_Modulo);


    // Retornamos verdadeiro
    Result := True;
  end

  // Se o módulo não estiver aberto
  else
  begin

    // Retornamos Falso
    Result := False;
  end;
end;

// *************************************************************************
// * ExecuPesqu
// *************************************************************************
//
function ExecuPesqu(FormClass: TFormClass; ps_ExprProc: String = ''; pi_ColuProc: Integer = 1; ps_WherAdic: String = ''): TStringList;
var
  Dlg: TFormPesq;
begin
  Application.CreateForm(FormClass, Dlg);
  try
    Result := Dlg.ShowModal(ps_ExprProc, pi_ColuProc, ps_wherAdic);
  finally
    Dlg.Free;
  end;
end;

procedure ContrBarraFerra(pi_TagJane: Integer; pb_Status: Boolean);
var
  li_Posicao: Integer;
begin
  // Não aceitamos janelas não preparadas
  if pi_TagJane = 0 then
  begin
    Exit;
  end;

  // Se estivermos ativando uma janela grande
  if pb_Status then
  begin
    // Se a janela não existir na lista
//    if sltJaneGran.IndexOf(IntToStr(pi_TagJane)) = -1 then
//    begin
//      // Incluimos a janela na lista
//      sltJaneGran.Add(IntToStr(pi_TagJane));
//    end;

    // Se a barra de ferramentas estiver ativada
{    if form1.spbBarrFerr.Visible = True then
    begin
      // Desativamos a barra de ferramentas
      frmPrincipal.spbBarrFerr.Visible := False;
    end; }
  end

  // Se estivermos desativando uma janela grande
  else
  begin
    // Procuramos a janela na lista
//    li_Posicao := sltJaneGran.IndexOf(IntToStr(pi_TagJane));

    // Se a janela existir na lista
    if li_Posicao <> -1 then
    begin
      // Tiramos a janela da lista
//      sltJaneGran.Delete(li_Posicao);
    end;

    // Se nao existir nenhuma janela na lista
//    if sltJaneGran.Count = 0 then
//    begin
      // Se a barra de ferramentas estiver desativada
{      if frmPrincipal.spbBarrFerr.Visible = False then
      begin

        // Ativamos a barra de ferramentas
        frmPrincipal.spbBarrFerr.Visible := True;
      end;
} //   end

    // Se existir alguma janela
//    else
//    begin
      // Se a barra de ferramentas estiver ativada
{      if frmPrincipal.spbBarrFerr.Visible = True then
      begin
        frmPrincipal.spbBarrFerr.Visible := False;
      end;  }
//    end;
  end;
end;

{function FRound(pr_Valor: Real; pi_CasaDeci: Integer): Real;
begin
  Result := StrToFloat(FloatToStr(MRound(Double(pr_Valor), pi_CasaDeci)));
end;
 }

procedure Foco(cpnCompo: TComponent; tabGuia: TTabSheet; pgePagina: TPageControl; ps_Mensagem: String = '');
begin
  // Se a página do componente não for a ativa
  if tabGuia <> pgePagina.ActivePage then
  begin
    // Ativamos a pagina correspondente
    pgePagina.ActivePage := tabGuia;
  end;

  // Se houver mensagem
  if ps_Mensagem <> '' then
  begin
    MessageDlg(ps_Mensagem, mtWarning, [mbOk], 0);

  end;

  // Colocamos o foco no código
  TCustomForm(cpnCompo).SetFocus;
end;


procedure QueryReverExclu(qryTemp: TFDQuery);
var
  lb_Eof: Boolean;
begin
  // Flab para definir se é final de arquivo
  lb_Eof := QueryEof(qryTemp);

  // Cancelamos os updates
  qryTemp.CancelUpdates;

  // Se estávamos no final do arquivo
  if lb_Eof then
  begin
    // Se não estivermos mais no final do arquivo
    if not QueryEof(qryTemp) then
    begin
      qryTemp.Next;
    end
    // Se continuamos no final do arquivo
    else
    begin
      qryTemp.Prior;
    end;
  end
  // Se não estávamos no final do arquivo
  else
  begin
    qryTemp.Prior;
  end;
end;

function QueryEof(qryTemp: TFDQuery): Boolean;
var
  lb_Controls: Boolean;
begin
  // Pegamos a situação atual dos controles
  lb_Controls := not qryTemp.ControlsDisabled;

  // Se necessário, desabilitamos os controles da query
  if lb_Controls then
  begin
    qryTemp.DisableControls;
  end;

  // Se não for final de arquivo
  if not qryTemp.Eof then
  begin
    // Avançamos um registro
    qryTemp.Next;

    // Se tornou-se final de arquivo
    if qryTemp.Eof then
    begin
      Result := True;
    end
    // Caso ainda não seja final de arquivo
    else
    begin
      // Retornamos ao registro anterior
      qryTemp.Prior;
      Result := False;
    end;
  end
  else
  begin
    Result := True;
  end;

  // Se necessário, habilitamos novamente os controles
  if lb_Controls then
  begin
    qryTemp.EnableControls;
  end;
end;

{
function IniciTrans(dtbBanco: TDataBase; pi_TempTole: Integer = 5): Boolean;
var
  lt_HoraAtua: TDateTime;
begin
  // Incialmente, consideramos que a transação não foi criada
  Result := False;

  // Pegamos a hora atual
  lt_HoraAtua := Time();

  // Loop enquanto durar o tempo de tolerância
  while SecondsBetween(lt_HoraAtua, Time()) <= pi_TempTole do
  begin
    // Se uma transação estiver em curso
    if dtbBanco.InTransaction then
    begin
      Continue;
    end;

    // Nenhuma transação em curso

    // Tentamos criar a transação
    try
      dtbBanco.StartTransaction;
      Result := True;
      Exit;
    except
      // Se ocorreu algum erro na criação da transação
      if gb_ErroBanc then
      begin
        // Ajustamos a variável
        gb_ErroBanc := False;

        Exit;
      end;
    end;

  end;

  // Se não conseguimos criar a transação
  MessageDlg('Não foi possível iniciar a transação com o banco de dados.' + #13 +
             'Esta operação será abortada e as alterações ignoradas !', mtError, [mbOk], 0);

end;
}
function FatorConveUnidaMedid(pi_UnidOrig, pi_UnidDest: Integer; pi_Material: Integer = 0): Real;
var
  qryConv, qryExce: TFDQuery;
begin
  // Valor default - falha na conversão
  Result := 0;

  // Procuramos o fator de conversão
  qryConv := CriaQuery(False);
  qryConv.SQL.Text :=
  'SELECT ID_CONVUNID,                                '+
  '       QN_FATOCONVUNID                             '+
  '  FROM UNIDADE_MEDIDA_CONVERSAO                    '+
  ' WHERE ID_UNIDMEDI_ORIG = ' + IntToStr(pi_UnidOrig) +
  '   AND ID_UNIDMEDI_DEST = ' + IntToStr(pi_UnidDest) ;
  qryConv.Open;

  // Se não encontrarmos a conversão
  if qryConv.IsEmpty then
  begin
    // Destruimos o objeto e retornamos
    qryConv.Close;
    qryConv.Free;
    Exit;
  end;

  Result := qryConv['QN_FATOCONVUNID'];

  // Se recebemos o código do material
  if pi_Material > 0 then
  begin
    // Procuramos por excessão
    qryExce := CriaQuery(False);
    qryExce.SQL.Text :=
    'SELECT QN_FATOEXCECONVUNID                              '+
    '  FROM UNIDADE_MEDIDA_CONVERSAO_EXCES                   '+
    ' WHERE EMPRESA = ''' + gs_Empresa + '''                 '+
    '   AND FILIAL = ' + IntToStr(gi_Filial)                  +
    '   AND ID_CONVUNID = ' + IntToStr(qryConv['ID_CONVUNID'])+
    '   AND ID_MATERIAL = ' + IntToStr(pi_Material)           ;
    qryExce.Open;

    if not qryExce.IsEmpty then
    begin
      Result := qryExce['QN_FATOEXCECONVUNID'];
    end;

  end;

  // Destruimos os objetos
  qryExce.Close;
  qryExce.Free;

  qryConv.Close;
  qryConv.Free;
end;

function RemovAcent(ps_Text:String): String;
Const ls_ComAcen = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ''`"';
      ls_SemAcen = 'aaeouaoaeioucuAAEOUAOAEIOUCU   ';
var
  li_Loop : Integer;
Begin
   For li_Loop := 1 to Length(ps_Text) do
  Begin
    if Pos(ps_Text[li_Loop],ls_ComAcen)<>0 Then
    begin
      ps_Text[li_Loop] := ls_SemAcen[Pos(ps_Text[li_Loop],ls_ComAcen)];
    end;
  end;
  Result := ps_Text;
end;

function SqlExpre(ps_OperLiga, ps_TabeColu, ps_OperRela: String; pv_ContColu: Variant; ps_OperAgru: String = ''): String;
begin
  // Ajustamos os parâmetros
  ps_OperLiga := AnsiUpperCase(ps_OperLiga);
  ps_OperAgru := AnsiUpperCase(ps_OperAgru);

  // Se o tipo da coluna for Inteiro
  if (VarType(pv_ContColu) = varSmallint) or
     (VarType(pv_ContColu) = varInteger)  then
  begin
    // Ajustamos o operador de atribuição
    if ps_OperRela = ':=' then
    begin
      ps_OperRela := '=';
    end;

    // Ajustamos a expressão
    Result := '(' + ps_TabeColu + ps_OperRela + IntToStr(pv_ContColu) + ')';
  end

  // Se for Float
  else if (VarType(pv_ContColu) = varSingle)   or
          (VarType(pv_ContColu) = varDouble)   or
          (VarType(pv_ContColu) = varCurrency) then
  begin
    // Ajustamos o operador de atribuição
    if ps_OperRela = ':=' then
    begin
      ps_OperRela := '=';
    end;

    // Ajustamos a expressão
//    Result := '(' + ps_TabeColu + ps_OperRela + StrSubst(FloatToStr(pv_ContColu), '.',',', 0) + ')';
    Result := '(' + ps_TabeColu + ps_OperRela + FloatToStr(pv_ContColu)+ ')';
  end

  // Se for String
  else if VarType(pv_ContColu) = varString then
  begin
    // Se o operador for "%%" (Contendo)
    if ps_OperRela = '%%' then
    begin
      Result := '(UPPER(' + ps_TabeColu + ') LIKE ''' + '%' + AnsiUpperCase(pv_ContColu) + '%'')';
    end

    // Se o operador for "%" (Iniciando com)
    else if ps_OperRela = '%' then
    begin
      Result := '(UPPER(' + ps_TabeColu + ') LIKE ''' + AnsiUpperCase(pv_ContColu) + '%'')';
    end

    // Se o operador for "<>" (Diferente de)
    else if ps_OperRela = '<>' then
    begin
      Result := '(UPPER(' + ps_TabeColu + ') NOT LIKE ''' + AnsiUpperCase(pv_ContColu) + '%'')';
    end

    // Se o operador for ":=" (Atribuição)
    else if ps_OperRela = ':='  then
    begin
      Result := '(' + ps_TabeColu +  '= ''' + pv_ContColu + ''')';
    end

    // Se for outro operador
    else
    begin
      Result := '(UPPER(' + ps_TabeColu + ') ' + ps_OperRela + '''' + AnsiUpperCase(pv_ContColu) + ''')';
    end;

  end

  // Se for DateTime
  else if VarType(pv_ContColu) = varDate then
  begin
    // Se o banco for Oracle
    if gs_BancDado = 'ORACLE' then
    begin
      // Se o operador for ":=" (Atribuição)
      if ps_OperRela = ':=' then
      begin
        Result := '(' + ps_TabeColu + '= TO_DATE(''' +
                  FormatDateTime('dd/mm/yyyy', pv_ContColu) + ''', ''dd/mm/yyyy''))';
      end
      // Se for outro operador
      else
      begin
        Result := '(TO_DATE( TO_CHAR(' + ps_TabeColu + ', ''dd/mm/yyyy''), ''dd/mm/yyyy'') ' +
                  ps_OperRela +
                  'TO_DATE(''' + FormatDateTime('dd/mm/yyyy', pv_ContColu) + ''', ''dd/mm/yyyy''))';
      end;
    end
    // Outros bancos
    else
    begin
      // Se o operador for ":=" (Atribuição)
      if ps_OperRela = ':=' then
      begin
        Result := '(' + ps_TabeColu +  '=''' + FormatDateTime('dd/mm/yyyy', pv_ContColu) + ''')';
      end
      // Se for outro operador
      else
      begin
        Result := '(' + ps_TabeColu + ps_OperRela + '''' + FormatDateTime('dd/mm/yyyy', pv_ContColu) + ''')';
      end;
    end;

  end;

  // Se precisarmos fazer abertura de agrupamento
  if Pos('(', ps_OperAgru) > 0 then
  begin
    Result := '(' + Result;
  end;

  // Se precisarmos fazer fechamento de agrupamento
  if Pos(')', ps_OperAgru) > 0 then
  begin
    Result := Result + ')';
  end;

  // Se o operador de ligação for "AND"
  if Copy(ps_OperLiga, 1, 1) = 'A' then
  begin
    Result := ' AND ' + Result;
  end
  // Se o operador for "WHERE"
  else if Copy(ps_OperLiga, 1, 1) = 'W' then
  begin
    Result := ' WHERE ' + Result;
  end
  // Se não houver operador
  else
  begin
    Result := ' ' + Result;
  end;

end;

function SqlEmpreFilia(ps_OperLiga, ps_NomeTabe, ps_OperAgru: String; pb_AtivSele: Boolean = True): String;
begin
  // Ajustamos os parâmetros
  ps_OperLiga := AnsiUpperCase(ps_OperLiga);
  ps_OperAgru := AnsiUpperCase(ps_OperAgru);

  // Inicializamos o resultado
  Result := '';

  // Se a seleção de empresa/filial estiver desativada
  if not pb_AtivSele then
  begin
    // Se houver comando só de fechamento de agrupamento
    if ps_OperAgru = ')' then
    begin
      Result := ')';
    end;

    Exit;
  end;

  // Se houver empresa ativada
  if gs_Empresa <> '' then
  begin
    Result := '(' + ps_NomeTabe + '.EMPRESA = ''' + gs_Empresa + ''')';
  end;

  // Se houver filial ativada
  if gi_Filial <> 0 then
  begin
    // Se há filial ativada, a empresa necessariamente também está
    Result := Result + ' AND (' + ps_NomeTabe + '.FILIAL = ' + IntToStr(gi_Filial) + ')';
  end;

  // Se houver sentença p/ empresa/filial
  if Result <> '' then
  begin

    // Se precisarmos fazer abertura de agrupamento
    if Pos('(', ps_OperAgru) > 0 then
    begin
      Result := '(' + Result;
    end;

    // Se precisarmos fazer fechamento de agrupamento
    if Pos(')', ps_OperAgru) > 0 then
    begin
      Result := Result + ')';
    end;

    // Se o operador de ligação for "AND"
    if Copy(ps_OperLiga, 1, 1) = 'A' then
    begin
      Result := ' AND ' + Result;
    end
    // Se o operador for "WHERE"
    else if Copy(ps_OperLiga, 1, 1) = 'W' then
    begin
      Result := ' WHERE ' + Result;
    end
    // Se não houver operador
    else
    begin
      Result := ' ' + Result;
    end;
  end
  // Se não houver sentença p/ empresa/filial
  else
  begin
    // Se houver comando só de fechamento de agrupamento
    if ps_OperAgru = ')' then
    begin
      Result := ')';
    end;
  end;

end;

function CalcCnpjCpf(Numero: String): String;
var
  li_Cont1: Integer;
  li_Cont2: Integer;
  li_Cont3: Integer;
  li_Soma: Integer;
  li_Digito: Integer;
  lb_Cnpj: Boolean;
begin
  case Length(Numero) of
    9 : lb_Cnpj := False;
    12 : lb_Cnpj := True;
  else raise Exception.Create('Número inválido');
  end;
  Result := Numero;
  for li_Cont2 := 1 to 2 do begin
    li_Cont3 := 2;
    li_Soma := 0;
    for li_Cont1 := Length(Result) downto 1 do begin
      li_Soma := li_Soma + (Ord(Result[li_Cont1])-Ord('0')) * li_Cont3;
      Inc(li_Cont3);
      if (li_Cont3 > 9) and lb_Cnpj then
        li_Cont3 := 2;
    end;
    li_Digito := 11 - li_Soma mod 11;
    if li_Digito >= 10 then
      li_Digito := 0;
    Result := Result + Chr(li_Digito + Ord('0'));
  end;
end;
{
function TextoToReal(ps_Numero: String): Double;
var
  ls_Numero: String;
  ls_Resto: String;
begin
  try
    ls_Numero := StrSubst(ps_Numero, ',', '', 0);
    ls_Numero := StrSubst(ls_Numero, '.', '', 0);

    ls_Resto := Copy(ls_Numero, Length(ls_Numero) - 1, 2);
    ls_Numero := Copy(ls_Numero, 1, Length(ls_Numero) - 2);

    Result := StrToFloat(ls_Numero) + StrToFloat(ls_Resto);
  except
    // Mensagem
    MessageDlg('''' + ps_Numero + ''' não é um número válido !', mtWarning, [mbOk], 0);
    Result := 0;
  end;
end;
}

procedure PegaUsuaSist();
var
  qryTemp: TFDQuery;
begin
  try
    try
      qryTemp := CriaQuery(True);
      qryTemp.SQL.Text := 'SELECT Sistema_usuario.ID_USUASIST,                                '+
                          '       Sistema_usuario.NM_REDUUSUASIST                             '+
                          '  FROM SISTEMA_USUARIO Sistema_usuario                             '+
                          ' WHERE (Sistema_usuario.ID_USUARIO = ' + IntToStr(gi_IdenUsua) + ')';
      qryTemp.Open;

      gi_CodiUsuaSist := qryTemp.FieldByName('ID_USUASIST').AsInteger;
      gs_NomeReduUsuaSist := qryTemp.FieldByName('NM_REDUUSUASIST').AsString;
    finally
      qryTemp.Close;
      qryTemp.Free;
    end;
  except
    gi_CodiUsuaSist := 0;
    gs_NomeReduUsuaSist := '';
    Exit;
  end;
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

end.

