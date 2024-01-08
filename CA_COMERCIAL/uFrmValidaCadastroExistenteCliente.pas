unit uFrmValidaCadastroExistenteCliente;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBAccess, Ora, Buttons, DB, MemDS,
  Winapi.Windows;

type
  TfrmValidaCadastroExistenteCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtCNPJ_CPF: TEdit;
    SB_CONFIRMA: TSpeedButton;
    Qrytemp: TOraQuery;
    QrytempID_CLIENTE: TFloatField;
    QrytempNM_CLIENTE: TStringField;
    SpeedButton1: TSpeedButton;
    procedure edtCNPJ_CPFKeyPress(Sender: TObject; var Key: Char);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  bExiste : Boolean;
  end;

var
  frmValidaCadastroExistenteCliente: TfrmValidaCadastroExistenteCliente;

implementation

uses Global, UFrmClientes, Principal;

{$R *.dfm}

procedure TfrmValidaCadastroExistenteCliente.edtCNPJ_CPFKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TfrmValidaCadastroExistenteCliente.SB_CONFIRMAClick(
  Sender: TObject);
var
  sWhere: string;
begin
  sWhere:= '';

  if (edtCNPJ_CPF.Text <> '') then
  begin
    if Length(edtCNPJ_CPF.Text) = 14 then
    begin
      if (cnpj(StrZerodec( StrToFloat(sonumeros(edtCNPJ_CPF.Text)),14,0)) = false) then
      begin
        Application.MessageBox('O CNPJ informado é Inválido.', PChar(frmValidaCadastroExistenteCliente.Caption), MB_OK + MB_ICONINFORMATION);
        Screen.Cursor := crDefault;
        edtCNPJ_CPF.setfocus;
        Exit;
      end
      else
        sWhere:= 'NR_CNPJCLIE = ''' + edtCNPJ_CPF.Text + '''';
    end
    else if (Length(edtCNPJ_CPF.Text) = 11) then
    begin
      if cpf(StrZerodec( StrToFloat(sonumeros(edtCNPJ_CPF.Text)),11,0))=false then
      begin
        Application.MessageBox('O CPF informado é Inválido.', PChar(frmValidaCadastroExistenteCliente.Caption), MB_OK + MB_ICONINFORMATION);
        Screen.Cursor := crDefault;
        edtCNPJ_CPF.setfocus;
        Exit;
      end
      else
        sWhere:= 'NR_CPFCLIE = ''' + edtCNPJ_CPF.Text + '''';
    end
    else
    begin
      Application.MessageBox('                    Dados Incompletos para validação.                  ', PChar(frmValidaCadastroExistenteCliente.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      edtCNPJ_CPF.setfocus;
      Exit;
    end;

    Qrytemp.Close;
    Qrytemp.SQL.Clear;
    Qrytemp.SQL.Text := 'SELECT ID_CLIENTE, NM_CLIENTE FROM CLIENTE WHERE ' + sWhere;
    Qrytemp.Open;

    if Qrytemp.RecordCount >= 1 then
    begin
      Application.MessageBox(PChar('Já existe um cliente cadastrado com esse CNPJ/ CPF.' +#13+#10 +
                            QrytempID_CLIENTE.AsString + ' - ' + QrytempNM_CLIENTE.VALUE), PChar(frmValidaCadastroExistenteCliente.Caption), MB_OK + MB_ICONINFORMATION);
      bExiste:= True;
    end
    else
    begin
      if Application.MessageBox('Não foram encontrados registros para esse CNPJ/ CPF.'+#13+#10 +
      'Deseja prosseguir com cadastro?', PChar(frmValidaCadastroExistenteCliente.Caption), MB_YESNO) = IDNO then
        bExiste:= True;
    end;

  end
  else
  begin
    Application.MessageBox('          Informe o CNPJ/ CPF a ser consultado.                             ', PChar(frmValidaCadastroExistenteCliente.Caption), MB_OK + MB_ICONINFORMATION);
    edtCNPJ_CPF.SetFocus;
    Exit;
  end;

  Close;

end;

procedure TfrmValidaCadastroExistenteCliente.FormShow(Sender: TObject);
begin
  edtCNPJ_CPF.SetFocus;
end;

procedure TfrmValidaCadastroExistenteCliente.FormCreate(Sender: TObject);
begin
  bExiste := False;
end;

procedure TfrmValidaCadastroExistenteCliente.SpeedButton1Click(
  Sender: TObject);
begin
  bExiste := True;
  Close;
end;

end.

