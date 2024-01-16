unit uFrmLogin_;

interface

uses

  Dialogs, StdCtrls, ExtCtrls, Winsock;

type
  TFrmLogin_ = class(TForm)
    RGImpress: TRadioGroup;
    Image1: TImage;
    btnOk: TButton;
    btnSair: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblData: TLabel;
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btnOkClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FLogin: Boolean;
    procedure VerificaIP;
    { Private declarations }
  public
    { Public declarations }
  end;

  //procedure CriaForm_FrmLogin;

var
  FrmLogin_: TFrmLogin_;

implementation

uses uFrmPrincipal, uVg_VariaveisGlobais, uDmPrincipal;

{$R *.dfm}

procedure TFrmLogin_.VerificaIP;
var
  strIPS: String;
begin

  strIPS := '10.0.1.153-10.0.1.240-10.0.1.165-10.0.1.245-10.0.5.240-10.0.1.241-10.0.1.242-10.0.5.243-10.0.1.244-10.0.5.245-10.0.5.246-10.0.5.247-10.0.5.248-10.0.5.249-10.0.1.152';  //10.0.1.104 teste sorocaba
  //strIPS := '10.0.1.240-10.0.1.3-10.0.1.245-10.0.5.240-10.0.1.241-10.0.1.242-10.0.5.243-10.0.1.244-10.0.5.245-10.0.5.246-10.0.5.247-10.0.5.248-10.0.5.249'; //sorocaba = 10.0.1.3 ou 10.0.1.12
  //strIPS := '10.0.1.240-10.0.5.10-10.0.1.245-10.0.5.240-10.0.1.241-10.0.1.242-10.0.5.243-10.0.1.244-10.0.5.245-10.0.5.246-10.0.5.247-10.0.5.248-10.0.5.249';  //itape = 10.0.5.10
  if Pos(Vg_Ip, strIPS) = 0 then
    raise Exception.Create('IP inválido para o sistema de Produção.');
end;

procedure TFrmLogin_.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnOk.Click;
end;

procedure TFrmLogin_.btnOkClick(Sender: TObject);
begin

  // inicio: colocar em comentario para exportacao de dados manual
  VerificaIP;

  // fim: colocar em comentario para exportacao de dados manual
   if edtSenha.Text <> 'producao' then
     raise Exception.Create('Senha incorreta !!!');

  Vg_impressora := RGImpress.ItemIndex;

  FLogin := True;
  Close;
end;

procedure TFrmLogin_.btnSairClick(Sender: TObject);
begin
 try
    DeleteFile('C:\CaaSistemas\Producao\producao.ini');
 except
    //
 end;
 Close;
end;

procedure TFrmLogin_.Button1Click(Sender: TObject);
begin
  Panel1.Visible := False;
  edtSenha.Enabled := True;
  edtSenha.SetFocus;
end;

procedure TFrmLogin_.Button2Click(Sender: TObject);
begin
  try
    DeleteFile('C:\CaaSistemas\Producao\producao.ini');
  except
    //
  end;
  Application.Terminate;
end;

procedure TFrmLogin_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if not FLogin then
    Application.Terminate;
end;

procedure TFrmLogin_.FormCreate(Sender: TObject);
begin
  FLogin := False;
end;

procedure TFrmLogin_.FormShow(Sender: TObject);
begin
  lblData.Caption := FormatDateTime('dd "de" mmmm "de" yyyy', Now)
end;

end.
