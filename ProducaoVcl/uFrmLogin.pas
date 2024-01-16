unit uFrmLogin;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, MemDS, DBAccess, Ora, Winsock, IniFiles,
  jpeg, OraCall;

type
  TFrmLogin = class(TForm)
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
    Panel1: TPanel;
    lblData: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    DB: TOraSession;
    btnOk: TBitBtn;
    Btcancel: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure BtcancelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    FLogin: Boolean;
    procedure VerificaIP;
    { Private declarations }
  public
    vLib: integer;
    VBT: string;
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses uFrmPrincipal, uVg_VariaveisGlobais, uDmPrincipal, Global;

{$R *.dfm}

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if vLib = 0 then Application.Terminate;
end;

procedure TFrmLogin.btnOkClick(Sender: TObject);
var
  x: integer;
  crip, parte, prolo, desfe, conectastring, hora_log,Server, SimulaPeso : string;
  data_log: TDateTime;
var ArqIni: TIniFile ;
begin
  vLib := 0;

  try
    ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'ProducaoVcl.ini');
    Server     :=  ArqIni.ReadString('SERVIDOR','ServerBD','192.168.0.250:1521:orcl' ) ;
    SimulaPeso := ArqIni.ReadString('SERVIDOR','SIMULAPESO','N' ) ;
    PTamString := ArqIni.ReadString('BALANCA','TAMSTR','' );
    PTamStrCompleta :=  ArqIni.ReadString ('BALANCA','TAMSTRCOMPLETA', '' );
    PPosIniString   :=  ArqIni.ReadString ('BALANCA','POSINISTRING', '' );
    PBaudRate := ArqIni.ReadString ('BALANCA','BAUDRATE', '9600' );
    PDataBits := ArqIni.ReadString ('BALANCA','DATABITS', '' );
    PParity   := ArqIni.ReadString ('BALANCA','PARITY', '' );
    PStopBits :=  ArqIni.ReadString ('BALANCA','STOPBITS', '' );
    PFlowControl := ArqIni.ReadString ('BALANCA','FLOWCONTROL', '' );

  finally
    ArqIni.Free;
  end;

  if ( SimulaPeso = 'S' ) then
  begin
    FrmPrincipal.edtPeso.Visible   := true;
    FrmPrincipal.BtBalanca.Visible := true;
    FrmPrincipal.Memo1.Visible     := true;
    FrmPrincipal.btnDataTurno.Visible := true;
    FrmPrincipal.btnDataSomar.Visible := true;
    PSimulaPeso := 'S';
  end
  else
  begin
    FrmPrincipal.edtPeso.Visible   := false;
    FrmPrincipal.BtBalanca.Visible := false;
    FrmPrincipal.Memo1.Visible     := false;
    FrmPrincipal.btnDataTurno.Visible := false;
    FrmPrincipal.btnDataSomar.Visible := false;
    PSimulaPeso := 'N';
  end;

  if UpperCase(edtSenha.Text) <> 'DACAR' then
    raise Exception.Create('Senha incorreta!');

  if UpperCase(edtSenha.Text) = 'DACAR' then
    vLib := 1;

  crip := 'SMA';
  parte := 'RT/py';
  prolo := 'xis';

  desfe := '@'+Server;
  conectastring := crip + parte + prolo + desfe;
  DB.ConnectString := conectastring;
  Vg_strCnx  := conectastring;
  gs_Empresa := 'CA';
  gi_Filial := 1;
  FrmPrincipal.Filial := 1;

  if ( conectastring = '' ) then
  begin
    Showmessage('Não foi possível obter dados para a conexão.');
    exit;
  end;

  DB.Disconnect;

  try
    DB.Connect;
  except
    FrmPrincipal.BdLocal := true;
  end;

  // inicio: colocar em comentario para exportacao de dados manual
  VerificaIP;

  Vg_impressora := RGImpress.ItemIndex;
  FLogin := True;
  Close;

end;

procedure TFrmLogin.BtcancelClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.Button1Click(Sender: TObject);
begin
//  Panel1.Visible := False;
//  edtSenha.SetFocus;
//  //CB1.Enabled := True;
//  //CB1.SetFocus;
end;

procedure TFrmLogin.Button2Click(Sender: TObject);
begin

  {try
    DeleteFile('C:\CaaSistemas\Producao\producao.ini');
  except
    //
  end;}

//  Application.Terminate;

end;

procedure TFrmLogin.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then edtSenha.Setfocus;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin

  if (Vg_Ip = '10.0.1.165') then
  begin
    FrmPrincipal.edtPeso.Visible := true;
    FrmPrincipal.BtBalanca.Visible := true;
    CB1.Enabled := true;
  end;

  //Verifica a conexao pre-definida pelo ip da balança
  if Vg_Cnx_Sorocaba = True then
  begin
    CB1.ItemIndex := 0;
    CB1.Enabled := False;
  end;
  if Vg_Cnx_Itape = True then
  begin
    CB1.ItemIndex := 1;
    CB1.Enabled := False;
  end;
  if Vg_Cnx_Teste = True then
  begin
    CB1.ItemIndex := 2;
    CB1.Enabled := True;
  end;
  if Vg_Cnx_Guapiacu = True then
  begin
    CB1.ItemIndex := 3;
    CB1.Enabled := False;
  end;

  //Mostra a data
  lblData.Caption := FormatDateTime('dd "de" mmmm "de" yyyy', Now);

end;

procedure TFrmLogin.VerificaIP;
var
  strIPS, strIPS_2, strIPS_3: AnsiString;

begin
  strIPS := '10.0.5.242-10.0.1.152-10.0.1.240-10.0.1.165-10.0.1.245-10.0.5.240-10.0.1.241-10.0.1.242-10.0.5.243-10.0.1.244-10.0.5.245-10.0.5.246-10.0.5.247-10.0.5.248-10.0.5.249-10.0.1.195-10.0.5.250-10.0.5.251-10.0.5.252-10.0.5.253-10.0.5.254-10.0.5.255-10.0.5.159'; //10.0.1.104 teste sorocaba
  strIPS_2 := '10.0.1.165-10.0.1.157-10.0.5.28-10.0.1.154-10.0.7.70-10.0.7.71-10.0.7.72-10.0.7.73-10.0.7.74-10.0.7.75-10.0.7.76-10.0.7.77-10.0.7.78-10.0.7.79-10.0.7.80-10.0.7.81-10.0.7.82-10.0.7.83-10.0.7.84-10.0.7.85-10.0.1.157';
  strIPS_3 := '192.168.0.51-192.168.0.48-192.168.0.23-192.168.0.70-192.168.0.54-192.168.0.101';

  if (Pos(Vg_Ip, strIPS) = 0) and (Pos(Vg_Ip, strIPS_2) = 0) and (Pos(Vg_Ip, strIPS_3) = 0) then
    raise Exception.Create('IP inválido para o sistema de Produção.');

end;

procedure TFrmLogin.FormCreate(Sender: TObject);
var ArqIni: TIniFile ;
    Conexao, Usuario : String;
begin

  if VerificaExecutavel('ProducaoVcl.exe') then
  begin
  ShowMessage('O programa não permite ser executado duas vezes!');
  Application.Terminate;
  end;

  try
    ArqIni  := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'ProducaoVcl.ini');
    Conexao :=  ArqIni.ReadString('SERVIDOR','CONEXAO','192.168.0.250:1521:orcl' ) ;
    Usuario :=  ArqIni.ReadString('SERVIDOR','USUARIO','DACAR' ) ;
  finally
    ArqIni.Free;
  end;

  edtUsuario.Text :=  Usuario;
  CB1.Clear;
  CB1.Items.Add(Conexao);
  CB1.ItemIndex := 0 ;

  FLogin := False;
end;

procedure TFrmLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnOk.Click;
end;

end.

