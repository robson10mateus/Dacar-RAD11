unit UFrmSite;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Winapi.Windows, Dialogs;
type
  TFrmSite = class(TForm)
    Label17: TLabel;
    Image3: TImage;
    aguarde: TLabel;
    Timer1: TTimer;
    Site: TComboBox;
    btn_pesquisa: TBitBtn;
    Edit_uf: TEdit;
    edRetorno: TEdit;
    function FileExec(const aCmdLine: String; aHide, aWait,bWait: Boolean):Boolean;
    procedure Timer1Timer(Sender: TObject);
    procedure btn_pesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSite: TFrmSite;
  ProcessInfo : TProcessInformation;
implementation
{$R *.dfm}

function TFrmSite.FileExec(const aCmdLine: String; aHide, aWait,bWait: Boolean):Boolean;
// aHide = Se vai ser exibido ou oculto
// aWait = Se o aplicativo será executado em segundo plano
// bWait = Se o Sistema deve esperar este aplicativo ser finalizado para
// prosseguir ou não
var
  StartupInfo : TStartupInfo;
//  ProcessInfo : TProcessInformation;
//  lExitCode: dword;
begin
    FillChar(StartupInfo, SizeOf(TStartupInfo), 0);
    with StartupInfo do
    begin
      cb:= SizeOf(TStartupInfo);
      dwFlags:= STARTF_USESHOWWINDOW or STARTF_FORCEONFEEDBACK;
      if aHide then
      begin
        wShowWindow:= SW_HIDE
      end
      else
      begin
        wShowWindow:= SW_SHOWNORMAL;
      end;
    end;
    Result := CreateProcess(nil,PChar(aCmdLine),
nil, nil, False,NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo);

    if aWait and Result then
    begin
      WaitForInputIdle(ProcessInfo.hProcess, INFINITE);
    if bWait then
    begin
      WaitForSingleObject(ProcessInfo.hProcess,INFINITE);
      CloseHandle(ProcessInfo.hProcess);
      CloseHandle(ProcessInfo.hThread);
    end;
  end;
end;

procedure TFrmSite.Timer1Timer(Sender: TObject);
var
  lExitCode: dword;
begin
  Image3.Visible:=not Image3.Visible;
  if GetExitCodeProcess(ProcessInfo.hProcess, lExitCode) then
  if (lExitCode<>STILL_ACTIVE) then
    begin
      Timer1.Enabled := False;
      aguarde.Visible := False;
      Image3.Enabled := False;

      edRetorno.Clear;
      edRetorno.PasteFromClipboard;
      if trim(UpperCase(edRetorno.Text)) = 'IMG_INVALIDA' then
        btn_pesquisaClick(nil)
      else
        close;
    end;
end;

procedure TFrmSite.btn_pesquisaClick(Sender: TObject);
var
  uf: string;
begin
  if not FileExists('Ca_Sintegra.exe') then
    begin
      MessageDlg('Não foi possível localizar o programa do sintegra. Entre em contato com o setor de T.I. ', mtWarning, [mbOk], 0);
      exit;
    end;
  //Clipboard.Clear;
  //Edit_uf.SelectAll;
  //Edit_uf.CopyToClipboard;
  Timer1.Enabled := True;
  //FileExec('C:\Smart\Ca_Sintegra.exe', false, false, true);
  FileExec('Ca_Sintegra.exe', false, false, true);
  aguarde.Visible := True;
  Image3.Enabled := True;
  btn_pesquisa.Enabled :=false;
end;

procedure TFrmSite.FormShow(Sender: TObject);
var
  f: TextFile;
  linha: string;
begin
  AssignFile(f,'ca_sintegra.txt');
  Reset(f); //abre o arquivo para leitura;
  Readln(f,linha); //le do arquivo e desce uma linha. O conteúdo lido é transferido para a variável linha
  edit_uf.Text:= linha;
  Closefile(f);

  //edit_uf.PasteFromClipboard;
  if copy(edit_uf.Text,1,2) = 'SP' then site.ItemIndex := 0
  else if copy(edit_uf.Text,1,2) = 'PR' then site.ItemIndex := 1
  else if copy(edit_uf.Text,1,2) = 'BA' then site.ItemIndex := 2
  else if copy(edit_uf.Text,1,2) = 'PI' then site.ItemIndex := 3
  else if copy(edit_uf.Text,1,2) = 'RJ' then site.ItemIndex := 4
  else if copy(edit_uf.Text,1,2) = 'MA' then site.ItemIndex := 5
  else if copy(edit_uf.Text,1,2) = 'PA' then site.ItemIndex := 6
  else if copy(edit_uf.Text,1,2) = 'AP' then site.ItemIndex := 7
  else if copy(edit_uf.Text,1,2) = 'XX' then site.ItemIndex := 8;
  site.Enabled := False;
  btn_pesquisa.SetFocus;
end;

end.
