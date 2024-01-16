{************ CRÉDITOS DO SISTEMA *************
* Desenvolvido por: Edmilde Freire Montagnoli *
* Desenvolvido para: Céu Azul Alimentos       *
* Inicio: 25/07/2010 * Versão: 1.0.0.0        *
**********************************************}

unit FrSenha;

interface

uses

  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, MemDS, DBAccess, Ora, Winsock;

type
  TFrmSenha = class(TForm)
    QrGModulo: TOraQuery;
    qryTemp: TOraQuery;
    QrGModuloMODCODIGO: TStringField;
    QrGModuloMODAPELIDO: TStringField;
    QrGModuloMODNOME: TStringField;
    QrGModuloMODATIVO: TStringField;
    QrGModuloMODVERSAO: TStringField;
    QrGModuloMODPATHATUALIZACAO: TStringField;
    RGImpress: TRadioGroup;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CB1: TComboBox;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    btnOk: TBitBtn;
    Btcancel: TBitBtn;
    Panel1: TPanel;
    lblData: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure BtcancelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure VerificaIP;
    procedure FormCreate(Sender: TObject);
  private
    FLogin: Boolean;
    procedure VerificaIP;
    { Private declarations }
  public
    vLib:integer;
    VBT:String;
    { Public declarations }
  end;

var
  FrmSenha: TFrmSenha;

implementation

uses uFrmPrincipal, uVg_VariaveisGlobais, uDmPrincipal, Global;

{$R *.dfm}

procedure TFrmSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If vLib=0 then Application.Terminate;
end;

procedure TFrmSenha.btnOkClick(Sender: TObject);
var
   x:integer;
   crip,parte,prolo,desfe,conectastring,hora_log:string;
   data_log: TDateTime;
begin
  vLib:= 0;
  crip := 'SMA';
  parte:= 'RT/py';
  prolo:= 'xis';

  // Acesso por Sorocaba
  If CB1.ItemIndex=0 then
  Begin
    desfe:= '@10.0.1.254:1521:orcl';
    conectastring:= crip+parte+prolo+desfe;
    FrMEtiqueta.DB.ConnectString:=conectastring;
    gs_Empresa:= 'CA';
    gi_Filial:= 1;
  End

  // Acesso por Itape
  Else If CB1.ItemIndex=1 then
  Begin
    desfe:= '@10.0.5.3:1521:orcl';
    conectastring:= crip+parte+prolo+desfe;
    FrMEtiqueta.DB.ConnectString:=conectastring;
    gs_Empresa:= 'CA';
    gi_Filial:= 2;
  End

  // Acesso base teste
  Else If CB1.ItemIndex=2 then
  Begin
    desfe:= '@10.0.1.254:1521:test';
    conectastring:= crip+parte+prolo+desfe;
    FrMEtiqueta.DB.ConnectString:=conectastring;
    gs_Empresa:= 'CA';
    gi_Filial:= 1;
  End

  // Acesso Metalurgica
  Else If CB1.ItemIndex=3 then
  Begin
    crip:='cam';
    parte:= 'etal/ch';
    prolo:= 'apa';
    desfe:= '@10.0.1.254:1521:orcl';
    conectastring:= crip+parte+prolo+desfe;
    FrMEtiqueta.DB.ConnectString:=conectastring;
    gs_Empresa:= 'CA';
    gi_Filial := 4;
  End

  // Acesso por Itape Fábrica Ração
  Else If  CB1.ItemIndex=4 then
  Begin
    crip:= 'RAC';
    parte:= 'AO/py';
    prolo:= 'xis';
    desfe:= '@10.0.5.3:1521:orcl';
    conectastring:= crip+parte+prolo+desfe;
    FrMEtiqueta.DB.ConnectString:=conectastring;
    gs_Empresa:= 'CA';
    gi_Filial:= 5;
  End

  // Acesso por Rh
  Else If  CB1.ItemIndex=5 then
  Begin
    crip := 'SMA';
    parte:= 'RT/or';
    prolo:= 'ion';
    desfe:= '@10.0.1.252:1521:orcl';
    conectastring:= crip+parte+prolo+desfe;
    FrMEtiqueta.DB.ConnectString:=conectastring;
    gs_Empresa:='CA';
    gi_Filial := 7;
  End

  // Acesso por Itape Base 2
  Else If CB1.ItemIndex=6 then
  Begin
    crip := 'SMA';
    parte:= 'RT2/py';
    prolo:= 'xis';
    desfe:= '@10.0.5.3:1521:orcl';
    conectastring:= crip+parte+prolo+desfe;
    FrMEtiqueta.DB.ConnectString:=conectastring;
    gs_Empresa:= 'CA';
    gi_Filial:= 8;
  End

  // Acesso por Pereiras
  else if cb1.ItemIndex=7 then
  begin
    crip:=  'sma';
    parte:= 'rt/py';
    prolo:= 'xis';
    desfe:= '@10.0.3.240:1521:pere';
    conectastring:= crip+parte+prolo+desfe;
    FrMEtiqueta.DB.ConnectString:=conectastring;
    gs_Empresa:= 'CA';
    gi_Filial:= 6;
  end

  // Acesso por Pereiras
  else if cb1.ItemIndex=8 then
  begin
    crip:=  'sma';
    parte:= 'rt/py';
    prolo:= 'xis';
    desfe:= '@10.0.3.240:1521:pere';
    conectastring:= crip+parte+prolo+desfe;
    FrMEtiqueta.DB.ConnectString:=conectastring;
    gs_Empresa:= 'CA';
    gi_Filial:= 6;
  end;

  FrMEtiqueta.Caption := 'Manutenção de Etiquetas | Versão 1.0.0 | 12/08/2010';

  //VERIFICAMOS A VERSÃO DO MÓDULO
  QrGModulo.Close;
  QrGModulo.ParamByName('MODULO').ASSTRING := 'S';
  QrGModulo.ParamByName('VERSAO').ASSTRING := '1.0.0'; //Instalação inicial
  QrGModulo.Open;

  QrGModulo.Close;

  //Não preencheu nome de usuario
  If edtUsuario.Text = '' then
  begin
    showMessage('Usuário deve estar preenchido');
    exit;
  end
  //Não preencheu senha
  Else if edtSenha.Text = '' then
  begin
    showMessage('Senha deve estar preenchida');
    exit;
  end;

  //Verifica a Data do Sistema
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := ' Select sysdate  from  dual ';
  qryTemp.Open;
  if not(qryTemp.IsEmpty) then
  begin
    ld_DataHora := qryTemp.FieldByName('SYSDATE').AsDateTime;
  end;

  // Procuramos o usuário
  qryTemp.SQL.Text := 'SELECT * FROM SCT_USUARIO WHERE LOG_USUARIO = ' + #39 + Copy(edtUsuario.Text, 1, 8) + #39;
  qryTemp.Open;

  // Se não encontramos o usuário
  if qryTemp.Eof then
  begin
    ShowMessage('Usuário não cadastrado');
    qryTemp.Close;
    Exit;
  end;

  //Pegamos o nome do usuário logado.
  gs_NomeUsuario:= qryTemp.FieldByName('nome_usuario').AsString;

  //Se colocamos o curinga acessamos o sistema
  If edtSenha.Text <> '1539' then
  Begin
    //Se a senha estiver incorreta
    If qryTemp.FieldByName('SENHA').AsString <> CriptografaSenha(edtSenha.Text) then
    Begin
      ShowMessage('Senha incorreta');
      qryTemp.Close;
      edtSenha.Text:='';
      edtSenha.SetFocus;
      Exit;
    End;
  end;

  // Se o usuário for o Admin
  If (Trim(edtUsuario.Text) = 'roberto') then
    // Desativamos a segurança
    gb_SeguAtiv := False
  Else
    gb_SeguAtiv := True;

  // Se a segurança estiver ativada
  If gb_SeguAtiv then
  Begin

    // Verificamos se a senha está em vigência
    If qryTemp.FieldByName('VIGENCIA_SENHA').AsDateTime > ld_DataHora then
    begin
      ShowMessage('Senha não vigente');
      qryTemp.Close;
      Btcancel.Click;
      //Exit;
    end;

    // Verificamos se o usuário está liberado
    If qryTemp.FieldByName('ESTA_LIBERADO').AsString <> 'S' then
    begin
      ShowMessage('Usuário não liberado');
      qryTemp.Close;
      Btcancel.Click;
    end;

    // Verificamos se a senha expirou
    If qryTemp.FieldByName('VENCTO_SENHA').AsDateTime < ld_DataHora then
    begin
      ShowMessage('Senha expirada');
      qryTemp.Close;
      Btcancel.Click;
    end;

  End;

  // Registramos o ID e o Log do usuário
  gi_IdenUsua := qryTemp.FieldByName('ID_USUARIO').AsInteger;
  gs_LogUsua  := qryTemp.FieldByName('LOG_USUARIO').AsString;

  //atualiza a data do sistema
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Add('SELECT TO_CHAR(SYSDATE,''DD/MM/YYYY'') as DatAtual FROM dual');
  qryTemp.Open;
  data_log:= qryTemp.FieldByName('DatAtual').AsDateTime;

  //atualiza a hora do sistema
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Add('SELECT TO_CHAR(SYSDATE,''HH24:MI:SS'') as HorAtual FROM dual');
  qryTemp.Open;
  hora_log:= qryTemp.FieldByName('HorAtual').Value;

  //Registra a ultima data e hora de acesso do usuario
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Add(' update sct_usuario set hora_ult_login = :P_HORA, data_ult_login = :P_DATA');
  qryTemp.SQL.Add(' where id_usuario = ' + IntToStr(gi_IdenUsua));
  qryTemp.ParamByName('P_DATA').AsDateTime := data_log;
  qryTemp.ParamByName('P_HORA').AsString   := hora_log;
  qryTemp.ExecSQL;

  // Fechamos a query do login
  qryTemp.Close;

  //registra o id e o nome do usuario
  qryTemp.SQL.Clear;
  qryTemp.SQL.text:='Select  '+
  ' empresa , filial, id_usuasist, id_usuario, nm_reduusuasist  '+
  ' FROM smart.sistema_usuario    '+
  ' Where id_usuario= ' +  inttostr(gi_IdenUsua);
  qryTemp.open;
  gi_CodiUsuaSist := qryTemp.FieldByName('id_usuasist').AsInteger;
  gs_NomeReduUsuaSist := qryTemp.FieldByName('nm_reduusuasist').AsString;

  //Verifica se o usuario esta cadastrado no modulo
  qryTemp.close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT ID_MODULO FROM SCT_MODULO WHERE NOME_MODULO = '''  + 'CAR' + '''';
  qryTemp.Open;
  //Usuario nao cadastrado
  If qryTemp.Eof then
  begin
    ShowMessage('Módulo não cadastrado');
    qryTemp.Close;
    Btcancel.Click;
  end;

  // Se a segurança estiver ativada
  If gb_SeguAtiv then
    Begin

    End;
  vLib:=1;

  // inicio: colocar em comentario para exportacao de dados manual
  VerificaIP;

  Vg_impressora := RGImpress.ItemIndex;

  FLogin := True;

  Close;

end;

procedure TFrmSenha.BtcancelClick(Sender: TObject);
begin

  try
    DeleteFile('C:\CaaSistemas\Producao\producao.ini');
  except
    //
  end;

  Application.Terminate;

end;

procedure TFrmSenha.Button1Click(Sender: TObject);
begin
  Panel1.Visible := False;
  CB1.Enabled := True;
  CB1.SetFocus;
end;

procedure TFrmSenha.Button2Click(Sender: TObject);
begin

  try
    DeleteFile('C:\CaaSistemas\Producao\producao.ini');
  except
    //
  end;
  Application.Terminate;

end;

procedure TFrmSenha.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then edtSenha.Setfocus;
end;

procedure TFrmSenha.edtSenhaChange(Sender: TObject);
begin
  If Key = #13 then btnOk.Click;
end;

procedure TFrmSenha.FormShow(Sender: TObject);
begin

  //Mostra a data
  lblData.Caption := FormatDateTime('dd "de" mmmm "de" yyyy', Now)

end;

procedure TFrmSenha.VerificaIP;
var
  strIPS: String;
begin

  strIPS := '10.0.1.153-10.0.1.240-10.0.1.165-10.0.1.245-10.0.5.240-10.0.1.241-10.0.1.242-10.0.5.243-10.0.1.244-10.0.5.245-10.0.5.246-10.0.5.247-10.0.5.248-10.0.5.249-10.0.1.152';  //10.0.1.104 teste sorocaba
  //strIPS := '10.0.1.240-10.0.1.3-10.0.1.245-10.0.5.240-10.0.1.241-10.0.1.242-10.0.5.243-10.0.1.244-10.0.5.245-10.0.5.246-10.0.5.247-10.0.5.248-10.0.5.249'; //sorocaba = 10.0.1.3 ou 10.0.1.12
  //strIPS := '10.0.1.240-10.0.5.10-10.0.1.245-10.0.5.240-10.0.1.241-10.0.1.242-10.0.5.243-10.0.1.244-10.0.5.245-10.0.5.246-10.0.5.247-10.0.5.248-10.0.5.249';  //itape = 10.0.5.10
  if Pos(Vg_Ip, strIPS) = 0 then
  raise Exception.Create('IP inválido para o sistema de Produção.');

end;

procedure TFrmSenha.FormCreate(Sender: TObject);
begin
  FLogin := False;
end;

end.
