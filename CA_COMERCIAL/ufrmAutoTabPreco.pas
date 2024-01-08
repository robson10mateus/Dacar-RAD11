unit ufrmAutoTabPreco;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Buttons, DBCtrls, Ora, MemDS, DBAccess,
  ExtCtrls, Winapi.Windows;

type
  TfrmAutoTabPreco = class(TForm)
    pnlMotivo: TPanel;
    GroupBox1: TGroupBox;
    pnlBotoes: TPanel;
    qryTabPrecoDesatualizada: TOraQuery;
    dtsTabPrecoDesatualizada: TOraDataSource;
    memMotivo: TDBMemo;
    Panel1: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    qryTabPrecoDesatualizadaID_HISTPEDVEN_DES: TFloatField;
    qryTabPrecoDesatualizadaID_USUARIO: TIntegerField;
    qryTabPrecoDesatualizadaDT_HISTORICO: TDateTimeField;
    qryTabPrecoDesatualizadaNM_MOTIVO: TStringField;
    qryTabPrecoDesatualizadaID_PEDIDO: TFloatField;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    qryTemp: TOraQuery;
    Panel2: TPanel;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    iCodMotivo: Integer;
  end;

var
  frmAutoTabPreco: TfrmAutoTabPreco;

implementation

{$R *.dfm}
uses Global,UfrmPedVenda;

procedure TfrmAutoTabPreco.btnCancelarClick(Sender: TObject);
begin
  iCodMotivo:= 0;
  Close;
end;

procedure TfrmAutoTabPreco.FormActivate(Sender: TObject);
begin
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := 'SELECT SYSDATE FROM DUAL';
  qryTemp.Open;

  edtUsuario.Text := gs_NomeUsuario;
  qryTabPrecoDesatualizada.Close;
  qryTabPrecoDesatualizada.Open;
  qryTabPrecoDesatualizada.Insert;
  qryTabPrecoDesatualizadaID_USUARIO.Value := gi_IdenUsua;
  qryTabPrecoDesatualizadaDT_HISTORICO.Value := qryTemp.FieldByName('SYSDATE').AsDateTime;
  qryTabPrecoDesatualizadaID_PEDIDO.Value := 0;
  memMotivo.SetFocus;
end;

procedure TfrmAutoTabPreco.btnConfirmarClick(Sender: TObject);
begin

  if Length(qryTabPrecoDesatualizadaNM_MOTIVO.AsString) < 20 then
  begin
    Application.MessageBox('Motivo da Autorização deve conter mínimo de 20 caracteres.', PChar(frmAutoTabPreco.Caption), MB_OK + MB_ICONINFORMATION);
    memMotivo.SetFocus;
    Exit;
  end;

  if UpperCase(edtSenha.Text) <> ('DC'+ FormatDateTime('ddmmyy', Now) + '++') then
  begin
    Application.MessageBox('                     Senha Inválida.                               ', PChar(frmAutoTabPreco.Caption), MB_OK + MB_ICONSTOP);
    edtSenha.Text := '';
    edtSenha.SetFocus;
  end
  else
  begin
    qryTabPrecoDesatualizada.Post;
    iCodMotivo := qryTabPrecoDesatualizadaID_HISTPEDVEN_DES.AsInteger;
  end;

end;

procedure TfrmAutoTabPreco.edtSenhaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Length(edtSenha.Text) >= 9 then
    btnConfirmar.Enabled := True
  else
    btnConfirmar.Enabled := False;
end;

end.


