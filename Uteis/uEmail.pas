unit uEmail;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms,

  IdBaseComponent, IdMessage, ComObj, CheckLst, ACBrMail, Vcl.Dialogs, ACBrBase,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Winapi.Windows;

type
  TfrmEnviaEmail = class(TForm)
    ACBrMail1: TACBrMail;
    pnlBotoes: TPanel;
    btnFechar: TSpeedButton;
    btnCancelar: TSpeedButton;
    pnlCabecalho: TPanel;
    lblAssunto: TLabel;
    lblDestinatarios: TLabel;
    edtAssunto: TEdit;
    edtDestinatarios: TEdit;
    pnlAnexos: TPanel;
    lblAviso: TLabel;
    OpenDialog1: TOpenDialog;
    lblCopia: TLabel;
    edtCopia: TEdit;
    lblCopiaOculta: TLabel;
    edtCopiaOculta: TEdit;
    btnEnviarEmail: TSpeedButton;
    btnAnexar: TSpeedButton;
    edtMensagem: TLabel;
    men_CorpoMensagem: TMemo;
    lblAnexo: TLabel;
    lstAnexos: TListBox;
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure lstAnexosDrawItem(Sender: TObject; Index: Integer;
      Rect: TRect; State: TOwnerDrawState; var Handled: Boolean);
    procedure lstAnexosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEnviaEmail: TfrmEnviaEmail;

implementation

uses uFrmOcorrencias, Global, uUtil, Principal;

{$R *.dfm}

procedure TfrmEnviaEmail.btnEnviarEmailClick(Sender: TObject);
var
  i, posicao:integer;
  d, cc, cco, email:string;
begin

  with ACBrMail1 do
  begin
    //CONFIGURAÇÕES DE PROTOCOLO DE ENVIO
    Clear;
    From := gs_Email;
    Host := gs_Host;//'email-ssl.com.br'; // troque pelo seu servidor smtp
    Username := gs_Email;
    Password := fCript(gs_EmailPass);
    Port := gs_Porta;//'465'; // troque pela porta do seu servidor smtp

    SetTLS := True;
    SetSSL := True;

    FromName := gs_NomeUsuario;

    if Trim(edtDestinatarios.Text) = '' then
    begin
      Application.MessageBox('É necessário informar o(s) Destinatário(s) da mensagem.', PChar(frmEnviaEmail.Caption), MB_OK + MB_ICONINFORMATION);
      edtDestinatarios.SetFocus;
      Abort;
    end
    else
    begin
      d:=edtDestinatarios.Text;
      while (d <> '') do
      begin
        posicao:=pos(';', d);
        if posicao > 0 then
        begin
          email:=copy(d, 1, posicao-1);
          d:=copy(d, posicao+1, length(d)-posicao);
          if d = ';' then
             d:='';
        end
        else
        begin
          email:=d;
          d:='';
        End;

        AddAddress(email,'');
      End;
    end;

    email:= '';

    cc:=edtCopia.Text;
    while (cc <> '') do
    begin
      posicao:=pos(';', cc);
      if posicao > 0 then
      begin
        email:=copy(cc, 1, posicao-1);
        cc:=copy(cc, posicao+1, length(cc)-posicao);
        if cc = ';' then
           cc:='';
      end
      else
      begin
        email:=cc;
        cc:='';
      End;

      AddCC(email,'');
    End;

    email:= '';

    cco:=edtCopia.Text;
    while (cco <> '') do
    begin
      posicao:=pos(';', cco);
      if posicao > 0 then
      begin
        email:=copy(cco, 1, posicao-1);
        cco:=copy(cco, posicao+1, length(cco)-posicao);
        if cco = ';' then
           cco:='';
      end
      else
      begin
        email:=cco;
        cco:='';
      End;

      AddBCC(email);
    End;

    if Trim(edtAssunto.Text) = '' then
    begin
      Application.MessageBox('É necessário descrever o ASSUNTO da mensagem.', PChar(frmEnviaEmail.Caption), MB_OK + MB_ICONINFORMATION);
      edtAssunto.SetFocus;
      Abort;
    end
    else
      Subject := UpperCase(edtAssunto.Text);

    For i:=0 to lstAnexos.items.count-1 do
      if fileexists(lstAnexos.Items.Strings[i]) then
        AddAttachment(lstAnexos.Items.Strings[i]);

    IsHTML := False;
    AltBody.Assign(men_CorpoMensagem.Lines);

    try
      Send();
//      Application.MessageBox('Email enviado com sucesso.', frmEnviaEmail.Caption, MB_OK + MB_ICONINFORMATION);
    except on E:Exception do
    begin
//      ShowMessage('Erro ao enviar email: '+E.Message);
      ShowMessage('ErroR: '+E.Message);
      Abort;
    end;
    end;
  end;

end;

procedure TfrmEnviaEmail.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEnviaEmail.SpeedButton1Click(Sender: TObject);
var
  I:Integer;
begin
  if OpenDialog1.Execute then
  begin
    for I := 0 to OpenDialog1.Files.Count - 1 do
      lstAnexos.Items.Add(OpenDialog1.Files[I]);
  end
  else
    Exit;

end;

procedure TfrmEnviaEmail.btnCancelarClick(Sender: TObject);
var
  I:Integer;
begin

  for i := frmEnviaEmail.ComponentCount -1 downto 0 do
  begin
    if (frmEnviaEmail.Components[i] is TEdit) then
       (frmEnviaEmail.Components[i] as TEdit).text := '';
  end;

  men_CorpoMensagem.Clear;
  lstAnexos.Clear;

end;

procedure TfrmEnviaEmail.lstAnexosDrawItem(Sender: TObject; Index: Integer;
  Rect: TRect; State: TOwnerDrawState; var Handled: Boolean);
begin

  if odSelected in State then
  begin
    lstAnexos.Canvas.Brush.Color := $00FFF2D9;
    lstAnexos.Canvas.Font.Color := clRed;
  end
  else
  begin
    lstAnexos.Canvas.Font.Color := clBlack;

    if Odd(Index) then
      lstAnexos.Canvas.Brush.Color := clgreen
    else
      lstAnexos.Canvas.Brush.Color := clOlive;

  end;

  lstAnexos.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2,
  lstAnexos.Items[Index]);
end;

procedure TfrmEnviaEmail.lstAnexosDblClick(Sender: TObject);
begin
  lstAnexos.Items.Delete(lstAnexos.ItemIndex);
end;

end.
