unit UFrmSelPedagio;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DB, MemDS, DBAccess, Ora, Buttons, Mask, ExtCtrls;

type
  TFrmSelPedagio = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MEdIni: TMaskEdit;
    MEdFim: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelPedagio: TFrmSelPedagio;

implementation

uses UFrmRelPedagio,global, uDadosCadastraisFilial, Principal;

{$R *.dfm}

procedure TFrmSelPedagio.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  FrmRelPedagio:=TFrmRelPedagio.Create(Self);
  With FrmRelPedagio.Qr do
  begin
    Close;
    ParamByName('DTINI').AsDate := StrToDate(MEdIni.Text);
    ParamByName('DTFIM').AsDate := StrToDate(MEdFim.Text);
//    ParamByName('DTINI').AsDate := StrToDate('26/03/2007');
//    ParamByName('DTFIM').AsDate := StrToDate('26/03/2007');
    Open;
    if IsEmpty then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Informação não encontrada para o período escolhido.', mtInformation,[mbOk], 0, mbOk);
      exit;
    end;
  end;

  FrmRelPedagio.DT1.Caption := MEdIni.Text ;
  FrmRelPedagio.DT2.Caption := MEdFim.Text ;
{  If (gi_filial=1) then
    FrmRelPedagio.LblUnidade.Caption := ' - Unidade Sorocaba'
  Else
    FrmRelPedagio.LblUnidade.Caption := ' - Unidade Itapetininga'; }
  FrmRelPedagio.RLLabel1.Caption   :=  dadosCadastraisFilial.NomeFilial;
  FrmRelPedagio.LblUnidade.Caption := dadosCadastraisFilial.Apelido;

  FrmRelPedagio.lblusuario.Caption := gs_NomeUsuario;
//  FrmRelPedagio.RLPrintDialogSetup1.Copies :=1;

  Screen.Cursor := crDefault;
  FrmRelPedagio.RLReport1.Preview(nil);

end;

procedure TFrmSelPedagio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmRelPedagio:=nil;
  FrmPrincipal.VEN026.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmSelPedagio.FormShow(Sender: TObject);
begin
  MEdIni.Text := DateToStr(Date()+1);
  MEdFim.Text := DateToStr(Date()+1);
end;

end.
