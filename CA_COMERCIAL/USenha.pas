unit USenha;

interface

uses
   SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, Data.DB, MemDS, DBAccess, Ora,
  Vcl.DBCtrls, Menus;


//Graphics, Controls, Forms, StdCtrls, , ExtCtrls, Dialogs,
//Db, Menus, IBSQL, DBAccess, Ora, MemDS;

type
   TFenha = class(TForm)
      BitBtn1: TBitBtn;
      Btcancel: TBitBtn;
      Panel1: TPanel;
      Panel2: TPanel;
      Panel3: TPanel;
      Image1: TImage;
      qryTemp: TOraQuery;
      Label2: TLabel;
      edtUsuario: TEdit;
      QrGModulo: TOraQuery;
      Label1: TLabel;
      edtSenha: TEdit;
      SpeedButton1: TSpeedButton;
      Qry_Schemas: TOraQuery;
    Label3: TLabel;
    cmbCon: TDBLookupComboBox;
    qryCnx: TOraQuery;
    dtsCnx: TDataSource;
    Label4: TLabel;
    lbl_Obs: TLabel;
    Mem_Obs: TDBMemo;
    qryCnxID_BASE: TIntegerField;
    qryCnxEMPRESA: TStringField;
    qryCnxFILIAL: TIntegerField;
    qryCnxDESCR: TStringField;
    qryCnxCONEXAO: TStringField;
    qryCnxCNPJ: TStringField;
    qryCnxOBS: TStringField;
    qryCnxDESCR2: TStringField;
    cbx_Abat: TCheckBox;
    cbx_Avic: TCheckBox;
    Cbx_Outros: TCheckBox;
    qryCnxID_GRUPO: TIntegerField;
    qryCnxDATABASE_LINK: TStringField;
    qryCnxSERVIDOR: TStringField;
    qryCnxFL_ATU_DT_FATU: TStringField;
    qryUptData: TOraQuery;
    qryUptDataUSUARIO: TStringField;
    qryUptDataDATABASE_LINK: TStringField;
    qrFilial: TOraQuery;
    qrFilialFILIAL: TFloatField;
    qrFilialUNOMEUNEG: TStringField;
    qrFilialUCGCUNEG: TStringField;
    qrFilialDESCR: TStringField;
    dsFilial: TDataSource;
    cbbFilial: TDBLookupComboBox;
      procedure BtcancelClick (Sender: TObject);
      procedure BitBtn1Click (Sender: TObject);
      procedure FormClose (Sender: TObject; var Action: TCloseAction);
      procedure FormShow (Sender: TObject);
      procedure Altera_Senha (Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtsCnxDataChange(Sender: TObject; Field: TField);
    procedure qryCnxAfterOpen(DataSet: TDataSet);
    procedure cbx_AbatClick(Sender: TObject);
    procedure cbx_AvicClick(Sender: TObject);
    procedure Cbx_OutrosClick(Sender: TObject);
    procedure cria_cnx;
    procedure dsFilialDataChange(Sender: TObject; Field: TField);
   private
      { Private declarations }
      procedure FiltrarConexoes ;
    procedure BuscarFiliais;
   public
      vLib, Filial_Atual : integer;
      VBT: string;
      IP_Local  : String ;
      pVersao : String ;
   end;

var
   Fenha: TFenha;

implementation

uses
   Principal, global, UFrmBaseTeste, UFrmTrocaSenha, Math;

{$R *.dfm}

procedure TFenha.BtcancelClick (Sender: TObject);
begin
   close;
   Application.Terminate;
end;

procedure TFenha.BitBtn1Click (Sender: TObject);
var
   x: integer;
   crip, parte, prolo, desfe, conectastring, hora_log : string;
   data_log, vDT_FATUDOCU, vDATA: TDateTime;
begin
     if ( qryCnxCONEXAO.AsString = '' ) then
     begin
          ShowMessage ('A Conexão não foi selecionada .');
          exit;
     end;

  if qryCnxID_BASE.Value > 0 then
     Filial_Atual := qryCnxID_BASE.Value;

  conectastring:= qryCnxCONEXAO.Value;

  //Alterado o valor da filial, para buscar da tabela de unidade de negocio
  gi_Filial := cbbFilial.KeyValue;
  //gi_Filial:= qryCnxFILIAL.Value;

  //Adicionado o campo de empresa, para diferenciacao de raiz de CNPJ
  gi_empresa := cmbCon.KeyValue;

  gs_Empresa:= qryCnxEMPRESA.Value;
  gs_CNPJ2:= copy(SoNumeros(qryCnxCNPJ.Value),1,8);

  if(gi_empresa in [66,67,68,69]) then
  begin
    qrFilial.Open;
    qrFilial.Locate('FILIAL', gi_Filial,[loCaseInsensitive]);
    gs_CNPJ := qrFilialUCGCUNEG.Value;
    qrFilial.Close;
  end
  else
  begin
    gs_CNPJ := qryCnxCNPJ.Value;
  end;

  gs_Unidade:= qryCnxDESCR.Value;

  FrmPrincipal.Caption:= 'Comercial '+'- Conectado na base ' + qryCnxDESCR.Value;
  FrmPrincipal.DB.ConnectString:= conectastring;

  vLib := 0;

  if ( not qryCnx.Active ) then
    begin
      qryCnx.open;
    end;

  if qryCnxFL_ATU_DT_FATU.Value = 'S' then
    begin
      //pega a data do oracle
      qryTemp.Close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Add('select to_date(sysdate, ''DD/MM/YY'') AS DATA from dual');
      qryTemp.Open;
      vDATA:= qryTemp.FieldByName('DATA').Value;

      //pega a data da tabela de faturamento
      qryUptData.Close;
      qryUptData.Open;
      qryUptData.First;
      qryTemp.Close;
      qryTemp.SQL.Clear;
      while not qryUptData.Eof do
        begin
          qryTemp.SQL.Add('SELECT DT_FATUDOCU FROM '+ qryUptDataUSUARIO.Text +'.SISTEMA_PARAMETRO'+qryUptDataDATABASE_LINK.Text);
          //qryTemp.SQL.Add('SELECT DT_FATUDOCU FROM '+ qryUptDataUSUARIO.Text +'.SISTEMA_PARAMETRO');
          qryUptData.Next;
          if not qryUptData.Eof then
            qryTemp.SQL.Add('UNION');
        end;
      qryTemp.SQL.Add('ORDER BY 1');
      //qryTemp.SQL.SaveToFile('C:\DATA_FATURA.SQL');
      qryTemp.Open;
      vDT_FATUDOCU:= qryTemp.FieldByName('DT_FATUDOCU').Value;

      if vDATA > vDT_FATUDOCU then
        begin
          qryUptData.First;
          while not qryUptData.Eof do
            begin
              qryTemp.Close;
              qryTemp.SQL.Clear;
              qryTemp.SQL.Add('update '+qryUptDataUSUARIO.Value+'.SISTEMA_PARAMETRO'+qryUptDataDATABASE_LINK.Text+' set DT_FATUDOCU = (select to_date(sysdate, ''DD/MM/YY'') AS DATA from dual)');
              qryTemp.ExecSQL;
              qryUptData.Next;
            end;
          qryTemp.Close;
          qryTemp.SQL.Clear;
          qryTemp.SQL.Add('commit');
          qryTemp.ExecSQL;
        end;
    end;
   //crip := 'SMA';
   //parte := 'RT/py';
   //prolo := 'xis';
   //desfe := '@10.0.1.254:1521:orcl';
   //conectastring := crip + parte + prolo + desfe;

   {
   if (crip = '') and (prolo = '') then
      raise Exception.Create ('Erro ao conectar.');}

   FrmPrincipal.Filial := gi_Filial;
   FrmPrincipal.Empresa := gs_Empresa;

   //VERIFICAMOS A VERSÃO DO MÓDULO
   QrGModulo.close;
   QrGModulo.ParamByName ('MODULO').AsString := 'V';

   QrGModulo.ParamByName ('VERSAO').AsString := pVersao ; //NOVO CLIENTE TELEVENDAS - 3584
   QrGModulo.Open;

   if (QrGModulo.FieldByName('modativo').AsString = '') or (QrGModulo.FieldByName('modativo').AsString = 'N') then
     begin
       ShowMessage ('A Versão do seu sistema está desatualizada. Atualize e tente novamente.');
       QrGModulo.close;
       Btcancel.Click;
     end;

   QrGModulo.close;

   Qry_Schemas.Open;
   FrmPrincipal.StatusBar1.Panels[4].Text := qryCnxCNPJ.Value; //Qry_Schemas.FieldByName ('SCHEMAS').AsString;
   Qry_Schemas.close;

   //Verificamos se os dados estão preenchidos
   if edtUsuario.Text = '' then
   begin
      ShowMessage ('Usuário deve estar preenchido');
      exit;
   end
   else if edtSenha.Text = '' then
   begin
      ShowMessage ('Senha deve estar preenchida');
      exit;
   end;

   //Verifica a Data do Sistema
   qryTemp.close;
   qryTemp.SQL.Clear;
   qryTemp.SQL.Text := ' select sysdate  from  dual ';
   qryTemp.Open;
   if not(qryTemp.IsEmpty) then
   begin
      ld_DataHora := qryTemp.FieldByName ('SYSDATE').AsDateTime;
   end;

   // ************
   qryTemp.close;
   qryTemp.SQL.Clear;
   qryTemp.SQL.Text := ' SELECT * FROM SCT_USUARIO ' + '  WHERE LOG_USUARIO = ' + #39 + Copy (edtUsuario.Text + '        ', 1, 8) + #39;
   //Abrimos a query
   qryTemp.Open;

   //Se não encontramos o usuário
   if qryTemp.Eof then
   begin
      ShowMessage ('Usuário não cadastrado');
      //lblMensagem.Caption := 'Usuário não cadastrado';
      qryTemp.close;
      //Btcancel.Click;
      exit;
   end;
   //end;

   //Pegamos o nome do usuário logado.
   gs_NomeUsuario := qryTemp.FieldByName ('nome_usuario').AsString;

   //Se colocamos o curinga acessamos o sistema
   if edtSenha.Text <> '1539' then
   begin
      //Comparamos a senha
      if qryTemp.FieldByName ('SENHA').AsString <> CriptografaSenha (edtSenha.Text) then
      begin
         ShowMessage ('Senha incorreta');
         //lblMensagem.Caption := 'Senha incorreta';
         qryTemp.close;
         //Btcancel.Click;
         edtSenha.Text := '';
         edtSenha.SetFocus;
         exit;
      end;
   end;

   //Se o usuário for o Admin
   if (Trim(edtUsuario.Text) = 'roberto') then
      //Desativamos a segurança
      gb_SeguAtiv := False
   else
      gb_SeguAtiv := True;

   //Se a segurança estiver ativada
   if gb_SeguAtiv then
   begin
      //Verificamos se a senha está em vigência
      if qryTemp.FieldByName ('VIGENCIA_SENHA').AsDateTime > ld_DataHora then
      begin
         ShowMessage ('Senha não vigente');
         qryTemp.close;
         Btcancel.Click;
         //Exit;
      end;

      //Verificamos se o usuário está liberado
      if qryTemp.FieldByName ('ESTA_LIBERADO').AsString <> 'S' then
      begin
         ShowMessage ('Usuário não liberado');
         qryTemp.close;
         Btcancel.Click;
      end;

      //Verificamos se a senha expirou
      if qryTemp.FieldByName ('VENCTO_SENHA').AsDateTime < ld_DataHora then
      begin
         ShowMessage ('Senha expirada');
         qryTemp.close;
         Btcancel.Click;
         //Altera_Senha(Sender);
         //exit;
      end;

   end;

   //Registramos o ID e o Log do usuário
   gi_IdenUsua := qryTemp.FieldByName ('ID_USUARIO').AsInteger;
   gs_LogUsua := qryTemp.FieldByName ('LOG_USUARIO').AsString;

   FrmPrincipal.Usuario := qryTemp.FieldByName ('ID_USUARIO').AsInteger;

   //gs_NomeReduUsuaSist := qryTemp.FieldByName('NOME_USUARIO').AsString;
   //Registramos o ID e o Nome Reduzido do usuário em Sistema_usuario
   //PegaUsuaSist();

   //atualizar data e hora do ultimo login
   qryTemp.close;
   qryTemp.SQL.Clear;
   qryTemp.SQL.Add ('SELECT TO_CHAR(SYSDATE,''DD/MM/YYYY'') as DatAtual FROM dual');
   qryTemp.Open;
   data_log := qryTemp.FieldByName ('DatAtual').AsDateTime;

   qryTemp.close;
   qryTemp.SQL.Clear;
   qryTemp.SQL.Add ('SELECT TO_CHAR(SYSDATE,''HH24:MI:SS'') as HorAtual FROM dual');
   qryTemp.Open;
   hora_log := qryTemp.FieldByName ('HorAtual').Value;

   qryTemp.close;
   qryTemp.SQL.Clear;
   qryTemp.SQL.Add (' update sct_usuario set hora_ult_login = :P_HORA, data_ult_login = :P_DATA');
   qryTemp.SQL.Add (' where id_usuario = ' + IntToStr(gi_IdenUsua));
   qryTemp.ParamByName ('P_DATA').AsDateTime := data_log;
   qryTemp.ParamByName ('P_HORA').AsString := hora_log;
   qryTemp.ExecSQL;

   qryTemp.close;

   qryTemp.SQL.Clear;
   qryTemp.SQL.Text := ' select  ' + ' empresa , filial, id_usuasist, id_usuario, nm_reduusuasist  ' + '  from sistema_usuario   ' +
     ' where id_usuario =  ' + IntToStr (gi_IdenUsua);
   qryTemp.Open;
   gi_CodiUsuaSist := qryTemp.FieldByName ('id_usuasist').AsInteger;
   gs_NomeReduUsuaSist := qryTemp.FieldByName ('nm_reduusuasist').AsString;

   qryTemp.close;
   qryTemp.SQL.Clear;
   qryTemp.SQL.Text := 'SELECT ID_MODULO FROM SCT_MODULO ' + ' WHERE NOME_MODULO = ''' + 'VEN' + '''';
   qryTemp.Open;

   if qryTemp.Eof then
   begin
      ShowMessage ('Módulo não cadastrado');
      qryTemp.close;
      Btcancel.Click;
   end;

  //{$DEFINE DEBUG}
  {$IFNDEF DEBUG}

   //Se a segurança estiver ativada
   if gb_SeguAtiv then
   begin
      //Pegamos o ID do módulo
      gi_IdenModu := qryTemp.FieldByName ('ID_MODULO').AsInteger;
      qryTemp.close;
      //Verificamos se o usuário pode entrar neste módulo
      qryTemp.SQL.Text := 'SELECT * FROM SCT_DIREITOS_US WHERE ID_MODULO = ' + IntToStr (gi_IdenModu) + 'And ID_USUARIO = ' + IntToStr (gi_IdenUsua);
      qryTemp.Open;

      if qryTemp.Eof then
      begin
         ShowMessage ('Usuário sem permissão p/ este módulo');
         qryTemp.close;
         Btcancel.Click;
      end;

      FrmPrincipal.VEN004.Enabled:= False;
      FrmPrincipal.VEN005.Enabled:= False;
      FrmPrincipal.VEN006.Enabled:= False;
      FrmPrincipal.VEN007.Enabled:= False;
      FrmPrincipal.VEN008.Enabled:= False;
      FrmPrincipal.VEN009.Enabled:= False;
      FrmPrincipal.VEN010.Enabled:= False;
      FrmPrincipal.VEN011.Enabled:= False;
      FrmPrincipal.VEN012.Enabled:= False;
      FrmPrincipal.VEN013.Enabled:= False;
      FrmPrincipal.VEN014.Enabled:= False;
      FrmPrincipal.VEN015.Enabled:= False;
      FrmPrincipal.VEN015a.Enabled:= False;
      FrmPrincipal.VEN015b.Enabled:= False;
      FrmPrincipal.VEN016.Enabled:= False;
      FrmPrincipal.VEN017.Enabled:= False;
      FrmPrincipal.VEN018.Enabled:= False;
      FrmPrincipal.VEN019.Enabled:= False;
      FrmPrincipal.VEN020.Enabled:= False;
      FrmPrincipal.VEN021.Enabled:= False;
      FrmPrincipal.VEN022.Enabled:= False;
      FrmPrincipal.VEN023.Enabled:= False;
      FrmPrincipal.VEN024.Enabled:= False;
      FrmPrincipal.VEN025.Enabled:= False;
      FrmPrincipal.VEN026.Enabled:= False;
      FrmPrincipal.VEN027.Enabled:= False;
      FrmPrincipal.VEN028.Enabled:= False;
      FrmPrincipal.VEN029.Enabled:= False;
      FrmPrincipal.VEN030.Enabled:= False;
      FrmPrincipal.VEN031.Enabled:= False;
      FrmPrincipal.VEN032.Enabled:= False;
      FrmPrincipal.VEN033.Enabled:= False;
      FrmPrincipal.VEN034.Enabled:= False;
      FrmPrincipal.VEN035.Enabled:= False;
      FrmPrincipal.VEN036.Enabled:= False;
      FrmPrincipal.VEN037.Enabled:= False;
      FrmPrincipal.VEN038.Enabled:= False;
      FrmPrincipal.VEN039.Enabled:= False;
      FrmPrincipal.VEN040.Enabled:= False;
      FrmPrincipal.VEN041.Enabled:= False;
      FrmPrincipal.VEN042.Enabled:= False;
      FrmPrincipal.VEN043.Enabled:= False;
      FrmPrincipal.VEN044.Enabled:= False;
      FrmPrincipal.VEN045.Enabled:= False;
      FrmPrincipal.VEN046.Enabled:= False;
      FrmPrincipal.VEN047.Enabled:= False;
      FrmPrincipal.VEN048.Enabled:= False;
      FrmPrincipal.VEN049.Enabled:= False;
      FrmPrincipal.VEN050.Enabled:= False;
      FrmPrincipal.VEN051.Enabled:= False;
      FrmPrincipal.VEN052.Enabled:= False;
      FrmPrincipal.VEN053.Enabled:= False;
      FrmPrincipal.VEN054.Enabled:= False;
      FrmPrincipal.VEN055.Enabled:= False;
      FrmPrincipal.VEN056.Enabled:= False;  {NOME: FABRICIO DATA:05/02/2018 MOTIVO: RELATÓRIO DE VENDA DIARIA}
      FrmPrincipal.VEN064.Enabled:= False;
      FrmPrincipal.VEN065.Enabled:= False;
      FrmPrincipal.VEN066.Enabled:= False;
      FrmPrincipal.VEN068.Enabled:= False;
      FrmPrincipal.VEN071.Enabled:= False;
      FrmPrincipal.VEN058.Enabled:= False;

      qryTemp.First;

      while not qryTemp.Eof do
        begin
          case qryTemp.FieldByName ('id_janela').AsInteger of
             4:  FrmPrincipal.VEN004.Enabled:= True;
             5:  FrmPrincipal.VEN005.Enabled:= True;
             6:  FrmPrincipal.VEN006.Enabled:= True;
             7:  FrmPrincipal.VEN007.Enabled:= True;
             8:  FrmPrincipal.VEN008.Enabled:= True;
             9:  FrmPrincipal.VEN009.Enabled:= True;
            10:  FrmPrincipal.VEN010.Enabled:= True;
            11:  FrmPrincipal.VEN011.Enabled:= True;
            12:  FrmPrincipal.VEN012.Enabled:= True;
            13:  FrmPrincipal.VEN013.Enabled:= True;
            14:  FrmPrincipal.VEN014.Enabled:= True;
            15:  FrmPrincipal.VEN015.Enabled:= True;
            16:  FrmPrincipal.VEN016.Enabled:= True;
            17:  FrmPrincipal.VEN017.Enabled:= True;
            18:  FrmPrincipal.VEN018.Enabled:= True;
            19:  FrmPrincipal.VEN019.Enabled:= True;
            20:  FrmPrincipal.VEN020.Enabled:= True;
            21:  FrmPrincipal.VEN021.Enabled:= True;
            22:  FrmPrincipal.VEN022.Enabled:= True;
            23:  FrmPrincipal.VEN023.Enabled:= True;
            24:  FrmPrincipal.VEN024.Enabled:= True;
            25:  FrmPrincipal.VEN025.Enabled:= True;
            26:  FrmPrincipal.VEN026.Enabled:= True;
            27:  FrmPrincipal.VEN027.Enabled:= True;
            28:  FrmPrincipal.VEN028.Enabled:= True;
            29:  FrmPrincipal.VEN029.Enabled:= True;
            30:  FrmPrincipal.VEN030.Enabled:= True;
            31:  FrmPrincipal.VEN031.Enabled:= True;
            32:  FrmPrincipal.VEN032.Enabled:= True;
            33:  FrmPrincipal.VEN033.Enabled:= True;
            34:  FrmPrincipal.VEN034.Enabled:= True;
            35:  FrmPrincipal.VEN035.Enabled:= True;
            36:  FrmPrincipal.VEN036.Enabled:= True;
            37:  FrmPrincipal.VEN037.Enabled:= True;
            38:  FrmPrincipal.VEN038.Enabled:= True;
            39:  FrmPrincipal.VEN039.Enabled:= True;
            40:  FrmPrincipal.VEN040.Enabled:= True;
            41:  FrmPrincipal.VEN041.Enabled:= True;
            42:  FrmPrincipal.VEN042.Enabled:= True;
            43:  FrmPrincipal.VEN043.Enabled:= True;
            44:  FrmPrincipal.VEN044.Enabled:= True;
            45:  FrmPrincipal.VEN045.Enabled:= True;
            46:  FrmPrincipal.VEN046.Enabled:= True;
            47:  FrmPrincipal.VEN047.Enabled:= True;
            48:  FrmPrincipal.VEN048.Enabled:= True;
            49:  FrmPrincipal.VEN049.Enabled:= True;
            50:  FrmPrincipal.VEN050.Enabled:= True;
            51:  FrmPrincipal.VEN051.Enabled:= True;
            52:  FrmPrincipal.VEN052.Enabled:= True;
            53:  FrmPrincipal.VEN053.Enabled:= True;
            54:  FrmPrincipal.VEN054.Enabled:= True;
            55:  FrmPrincipal.VEN055.Enabled:= True;
            56:  FrmPrincipal.VEN055.Enabled:= True;  {NOME: FABRICIO DATA:05/02/2018 MOTIVO: RELATÓRIO DE VENDA DIARIA}
            64:  FrmPrincipal.VEN064.Enabled:= True;
            65:  FrmPrincipal.VEN065.Enabled:= True;
            66:  FrmPrincipal.VEN066.Enabled:= True;
            68:  FrmPrincipal.VEN068.Enabled:= True;
            71:  FrmPrincipal.VEN071.Enabled:= True;

          end;
          qryTemp.Next;
        end;
   end;

   {$ENDIF}

   FrmPrincipal.Caption := FrmPrincipal.Caption + ' V. ' + pVersao;

   vLib := 1;

   FrmPrincipal.DB.Options.DateFormat := 'DD/MM/YYYY';//'DD-MON-RR';
   FrmPrincipal.DB.Options.DateLanguage :=  'PORTUGUESE';//'ENGLISH';

   FrmPrincipal.DB.Connect;
   close;

end;

procedure TFenha.FormClose (Sender: TObject; var Action: TCloseAction);
begin
   if vLib = 0 then
   begin
      //FrmPrincipal.Close;
      Application.Terminate;
   end;
end;

procedure TFenha.FormShow (Sender: TObject);
begin
   Brush.Style := BsClear;
   Fenha.Caption := Fenha.Caption + ' - Comercial - V.:' + pVersao ;

end;

procedure TFenha.Altera_Senha (Sender: TObject);
begin
   if cmbCon.KeyValue <= 0 then
      ShowMessage ('Primeiro escolha uma unidade para continuar...');

   if edtUsuario.Text = '' then
      ShowMessage ('Escolha um nome de usuário para continuar...');
   //Abre a janela de nova senha

   if cmbCon.KeyValue > 0 then
      if edtUsuario.Text <> '' then
      begin
         try
            FrmTrocaSenha := TFrmTrocaSenha.Create (Self);
            // FrmTrocaSenha.Filial := CB1.ItemIndex;
            FrmTrocaSenha.Pconectastring := qryCnxCONEXAO.Value;
            FrmTrocaSenha.Usuario := edtUsuario.Text;
            FrmTrocaSenha.Servidor :=  qryCnxSERVIDOR.Value;
            FrmTrocaSenha.ShowModal;
         finally
            FreeAndNil (FrmTrocaSenha);
         end;
      end;
end;

procedure TFenha.FormCreate(Sender: TObject);
begin
  Filial_Atual := 0 ;
  pVersao := '1.4.62';
  GlbVersao := pVersao;
  IP_Local := GetIP ;
  cria_cnx;
  qryCnx.Open;
  FrmPrincipal.StatusBar1.Panels[5].Text := 'IP - '+ IP_Local ;
  if gs_LogUsua <> '' then
    begin
      edtUsuario.Text:= gs_LogUsua;
      edtSenha.SetFocus;
    end;


end;

procedure TFenha.dtsCnxDataChange(Sender: TObject; Field: TField);
begin
//  edtCNPJ.Text:= qryCnxCNPJ.Value;

  BuscarFiliais;
end;

procedure TFenha.qryCnxAfterOpen(DataSet: TDataSet);
begin
  if Filial_Atual = 0 then
    begin
      if Pos('10.0.1', IP_Local) <> 0  then
        cmbCon.KeyValue := 1;
      if Pos('10.0.5', IP_Local) <> 0  then
        cmbCon.KeyValue := 2 ;
      if Pos('10.0.3', IP_Local) <> 0  then
        cmbCon.KeyValue := 5 ;
      if Pos('10.0.7', IP_Local) <> 0  then
        cmbCon.KeyValue := 10 ;
    end
  else
    begin
      //qryCnx.Locate('ID_BASE', Filial_Atual , [] );
    end;

  qrFilial.Open;

  //if (cmbCon.Text = '') then
    //cmbCon.KeyValue := qryCnxID_BASE.Value ;
end;

procedure TFenha.FiltrarConexoes ;
var Grupos : String ;
begin
  Grupos := '';

  if ( Cbx_Abat.Checked )  then
    Grupos := '1' ;

  if ( Cbx_Avic.Checked ) then
    if ( Grupos = '' ) then
      Grupos := '2'
    else
      Grupos := Grupos + ', 2 '  ;

  if ( Cbx_Outros.Checked ) then
    if ( Grupos = '' ) then
      Grupos := '3'
    else
      Grupos := Grupos + ', 3 '  ;

  if ( Grupos <> '' ) then
    begin
      qryCnx.MacroByName('Grupos').Value := ' AND t.ID_GRUPO in (' + Grupos + ' ) ';
    end
  else
    qryCnx.MacroByName('Grupos').Value := '';

  qryCnx.Close;
  qryCnx.Open;
end;


procedure TFenha.cbx_AbatClick(Sender: TObject);
begin
     FiltrarConexoes;
end;

procedure TFenha.cbx_AvicClick(Sender: TObject);
begin
     FiltrarConexoes;
end;

procedure TFenha.Cbx_OutrosClick(Sender: TObject);
begin
     FiltrarConexoes;
end;

procedure TFenha.cria_cnx;
var
  crip, parte, prolo, desfe: string;
begin
  if Pos('10.0.3', IP_Local) <> 0  then
    begin
      crip := 'sma';
      parte := 'rt/py';
      prolo := 'xis';
      desfe := '@10.0.3.240:1521:pere';
    end
  else if Pos('10.0.5', IP_Local) <> 0  then
    begin
      crip := 'SMA';
      parte := 'RT/py';
      prolo := 'xis';
      desfe := '@10.0.5.3:1521:orcl';
    end
  else if Pos('10.0.7', IP_Local) <> 0  then
    begin
      crip := 'guapi';
      parte := 'acu/gua';
      prolo := 'piacu';
      desfe := '@10.0.7.3:1521:orcl';
    end
  else
    begin
      crip := 'SMA';
      parte := 'RT/py';
      prolo := 'xis';
      desfe := '@10.0.1.254:1521:orcl';
    end;
  FrmPrincipal.DB.ConnectString := crip + parte + prolo + desfe;
end;

procedure TFenha.dsFilialDataChange(Sender: TObject; Field: TField);
begin
  if(cbbFilial.Enabled) then
  begin
    cbbFilial.Color := $FFFFFF;
    cbbFilial.Font.Color := $000000;
  end
  else
  begin
    cbbFilial.Color := $E0E0E0;
    cbbFilial.Font.Color := $606060;
  end;
end;

procedure TFenha.BuscarFiliais;
begin
  if(cmbCon.KeyValue <> Null) then
  begin

    if(Integer(cmbCon.KeyValue) in [66, 67, 68, 69]) then
    begin

      qrFilial.Filtered := False;

      qrFilial.Filter := 'uCgcUneg like ' + QuotedStr(ReplaceStr(ReplaceStr(Copy(qryCnxCNPJ.Value, 0, 13), '.', ''), '/', '')+ '*');

      cbbFilial.KeyValue := qryCnxFILIAL.Value;

      cbbFilial.Enabled := True;
      qrFilial.Filtered := True;

    end
    else
    begin

      qrFilial.Filtered := False;

      qrFilial.Filter := 'uCgcUneg = ' + QuotedStr(ReplaceStr(ReplaceStr(qryCnxCNPJ.Value, '.', ''), '/', ''));

      cbbFilial.KeyValue := qryCnxFILIAL.Value;

      cbbFilial.Enabled := False;
      qrFilial.Filtered := True;

    end;

  end;

end;


end.
