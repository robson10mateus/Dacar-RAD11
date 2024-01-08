unit uFrmJustificativaPrecoTab;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, ExtCtrls, Winapi.Windows;

type
  TfrmJustificativaPrecoTab = class(TForm)
    pnlBotoes: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    pnlMotivo: TPanel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    memMotivo: TMemo;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iCodMotivo: Integer;    
  end;

var
  frmJustificativaPrecoTab: TfrmJustificativaPrecoTab;

implementation

uses UfrmPedVenda, Global;

{$R *.dfm}

procedure TfrmJustificativaPrecoTab.btnConfirmarClick(Sender: TObject);
begin
  if Length(Trim(memMotivo.Text)) < 20 then
  begin
    Application.MessageBox('Justificativa deve conter mínimo de 20 caracteres.', PChar(frmJustificativaPrecoTab.Caption), MB_OK + MB_ICONINFORMATION);
    memMotivo.SetFocus;
  end
  else
  begin
    iCodMotivo:= Length(Trim(memMotivo.Text));
    FrmPedVenda.QPediVeNM_JUSTIFICATIVA_PRECO.AsString := ReplaceStr(memMotivo.Text, #13#10, ' ');
    Close;
  end;
end;

procedure TfrmJustificativaPrecoTab.btnCancelarClick(Sender: TObject);
begin
  iCodMotivo:= 0;
  Close;
end;

procedure TfrmJustificativaPrecoTab.FormShow(Sender: TObject);
begin
  memMotivo.SetFocus;
end;

end.
