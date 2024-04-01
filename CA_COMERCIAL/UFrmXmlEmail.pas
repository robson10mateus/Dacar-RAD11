{************ CRÉDITOS DO SISTEMA *************
* Desenvolvido por: Edmilde Freire Montagnoli *
* Desenvolvido para: Céu Azul Alimentos       *
* 17/07/2012                                  *
* 1.0.1.15                                    *
**********************************************}

unit UFrmXmlEmail;

interface

uses

  Dialogs, StdCtrls, Buttons, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdMessage,
  ExtCtrls, Mask, ComCtrls, DB, MemDS, DBAccess, Ora, ShellApi,
  IdTCPServer, IdHTTP, IniFiles, IdPOP3, IdIMAP4, FMX.Forms,
  IdExplicitTLSClientServerBase, IdSMTPBase, Vcl.Controls, Vcl.Forms,
  System.Classes, System.SysUtils, Variants, IdAttachmentFile, Winapi.Windows;

type
  TFrmXmlEmail = class(TForm)
    IdMessage: TIdMessage;
    IdSMTP: TIdSMTP;
    Relatorio: TMemo;
    IdIMAP4: TIdIMAP4;
    PageControl1: TPageControl;
    PgTsEnviar: TTabSheet;
    PgTsReceber: TTabSheet;
    PnTopo: TPanel;
    ScrollBox5: TScrollBox;
    edtPara: TEdit;
    edtCC: TEdit;
    edtCCO: TEdit;
    edtAssunto: TEdit;
    cbxPrioridade: TComboBox;
    cbxConfirmaLeitura: TCheckBox;
    BtnEnviar: TBitBtn;
    BtnFechar: TBitBtn;
    mmMensagem: TMemo;
    Label14: TLabel;
    edtDe: TEdit;
    BitBtn1: TBitBtn;
    ScrollBox6: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    gbxLocalXML: TGroupBox;
    spbLocalizaOrigem: TSpeedButton;
    Label11: TLabel;
    edtLocalOrigem: TEdit;
    gbxPeriodo: TGroupBox;
    Shape1: TShape;
    Label9: TLabel;
    edtCodigo: TEdit;
    Label10: TLabel;
    cbxRazao: TComboBox;
    Label13: TLabel;
    edtCNPJ: TEdit;
    Label7: TLabel;
    edtDataIni: TMaskEdit;
    Label8: TLabel;
    edtDataFim: TMaskEdit;
    Label30: TLabel;
    edtNrNota: TEdit;
    RdPasta: TRadioButton;
    RdBDados: TRadioButton;
    RdReenviar: TRadioButton;
    Label23: TLabel;
    Panel1: TPanel;
    GroupBox4: TGroupBox;
    spbLocalizaDestino: TSpeedButton;
    Label12: TLabel;
    edtLocalDestino: TEdit;
    lblCodigo: TLabel;
    lblRazao: TLabel;
    lblCNPJ: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    PnlPadrao: TPanel;
    spbLocalizaOrigem_: TSpeedButton;
    spbLocalizaDestino_: TSpeedButton;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edtDe_: TEdit;
    edtPara_: TEdit;
    edtCC_: TEdit;
    edtCCO_: TEdit;
    edtAssunto_: TEdit;
    cbxPrioridade_: TComboBox;
    Label24: TLabel;
    mmMensagem_: TMemo;
    Label25: TLabel;
    Label16: TLabel;
    edtLocalOrigem_: TEdit;
    Label17: TLabel;
    edtLocalDestino_: TEdit;
    Label26: TLabel;
    edtUsuario_: TEdit;
    BtFechaPadrao: TBitBtn;
    BtSalvaPadrao: TBitBtn;
    cbxConfirmaLeitura_: TCheckBox;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    Panel2: TPanel;
    lbxAnexo: TListBox;
    PnlLogin: TPanel;
    Label6: TLabel;
    edtUsuario: TEdit;
    Label15: TLabel;
    edtSenha: TEdit;
    Panel4: TPanel;
    ScrollBox3: TScrollBox;
    Panel3: TPanel;
    lbxEnviar: TListBox;
    Panel5: TPanel;
    lbxNota: TListBox;
    ScrollBox4: TScrollBox;
    btnAnexarUm: TBitBtn;
    btnEnviarArquivo: TBitBtn;
    btnAnexarTodos: TBitBtn;
    btnNEnviarEste: TBitBtn;
    btnNEnviarTodos: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edXDe: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    edXUsuario: TEdit;
    Label33: TLabel;
    edXSenha: TEdit;
    BitBtn2: TBitBtn;
    btnAbrirPastaEmail: TBitBtn;
    btnImportarXmlAgora: TBitBtn;
    GroupBox3: TGroupBox;
    SpeedButton2: TSpeedButton;
    Label35: TLabel;
    edXLocalDestino: TEdit;
    btnReceberXmlPasta: TBitBtn;
    Progresso: TProgressBar;
    GroupBox5: TGroupBox;
    SpeedButton1: TSpeedButton;
    GroupBox6: TGroupBox;
    SpeedButton3: TSpeedButton;
    EmailPastas: TListBox;
    ScrollBox7: TScrollBox;
    ScrollBox8: TScrollBox;
    scbAssunto: TScrollBox;
    scbDe: TScrollBox;
    scbData: TScrollBox;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    EmailAssunto: TListBox;
    EmailDe: TListBox;
    EmailData: TListBox;
    btnDesconectarEmail: TBitBtn;
    ScrollBox9: TScrollBox;
    Panel9: TPanel;
    EmailMensagem: TListBox;
    ScrollBox10: TScrollBox;
    Panel10: TPanel;
    EmailAnexo: TListBox;
    BitBtn3: TBitBtn;
    Qry_Cliente: TOraQuery;
    Qry_ClienteID_CLIENTE: TFloatField;
    Qry_ClienteNM_CLIENTE: TStringField;
    Qry_ClienteNR_CNPJCLIE: TStringField;
    Qry_ClienteNR_INSCESTACLIE: TStringField;
    Qry_ClienteGN_EMAICLIE: TStringField;
    Qry_ClienteDT_EMISNOTAFISC: TDateTimeField;
    Qry_ClienteDT_SAIDNOTAFISC: TDateTimeField;
    Qry_ClienteNR_NOTAFISC: TFloatField;
    Qry_ClienteVL_NOTAFISC: TFloatField;
    Qry_ClienteNFE_XML: TBlobField;
    Qry_ClienteSG_SERINOTAFISC_NOTAFISC: TStringField;
    Qry_ClienteID_NOTAFISC: TFloatField;
    qryNFEXML: TOraQuery;
    qryNFEXMLEMPRESA: TStringField;
    qryNFEXMLFILIAL: TIntegerField;
    qryNFEXMLID_NFE_XML: TFloatField;
    qryNFEXMLID_NOTAFISC: TFloatField;
    qryNFEXMLDT_EMISNOTAFISC: TStringField;
    qryNFEXMLNR_NOTAFISC: TFloatField;
    qryNFEXMLRECIBO_ENVIO: TStringField;
    qryNFEXMLRECIBO_RETORNO: TStringField;
    qryNFEXMLDATA_ENVIO: TStringField;
    qryNFEXMLNFE_NUMERO: TFloatField;
    qryNFEXMLNFE_CHAVE: TStringField;
    qryNFEXMLNFE_DT_RECEBTO: TStringField;
    qryNFEXMLNFE_PROTOCOLO: TStringField;
    qryNFEXMLNFE_CHAVE_DIGITAL: TStringField;
    qryNFEXMLNFE_LOCAL: TStringField;
    qryNFEXMLNFE_XML: TBlobField;
    qryNFEXMLENVIO: TStringField;
    qryNFEXMLRETORNO: TStringField;
    qryNFEXMLAUTORIZACAO: TStringField;
    qryNFEXMLSR_NOTAFISC: TStringField;
    qryNFEXMLLOTE: TFloatField;
    qryNFEXMLDANFE: TStringField;
    qryNFEXMLCANCELADA: TStringField;
    qryNFEXMLINUTILIZADA: TStringField;
    qryNFEXMLEMAIL: TStringField;
    Qry_Vendedor: TOraQuery;
    Qry_VendedorGN_EMAIVEND: TStringField;
    Qry_ClienteFILIAL: TIntegerField;

    function Arquivo_data(Arquivo : String; DATAI : TDatetime; DATAF : TDatetime):Boolean;
    function Arquivo_string(OArquivo : String; OTexto : String):Boolean;
    function MoveCopia(const Origem, Destino : string; Operacao, Modo:Integer) : Boolean;
    function conv_hora(OTime: TDatetime; Tipo: integer):String;
    function conv_data(AData: TDatetime; Tipo: integer):String;
    function LocalizaXML(Local : String; DATAI : TDatetime; DATAF : TDatetime; CNPJ : String; NRNOTA : String): String;

    procedure Escolheu_cliente(Sender: TObject);
    procedure Escolheu_cliente_tabela;

    Procedure Arquivo_lista( ASource : string; ADirList :TListBox; DATAI : TDatetime; DATAF : TDatetime; OCNPJ : String; NRNOTA : String);
    Procedure Arquivo_nrnota( ADirList :TListBox; NRNOTA : String);

    procedure Anexar_arquivo(Sender: TObject);
    procedure Fecha_Email(Sender: TObject);
    procedure Enviar_email(Sender: TObject);
    procedure Anexar_um_xml(Sender: TObject);
    procedure Anexar_todos_xml(Sender: TObject);
    procedure Nao_enviar_esse_xml(Sender: TObject);
    procedure Nao_enviar_todos_xml(Sender: TObject);
    procedure Localiza_local(Sender: TObject);
    procedure Carrega_arquivos_xml;
    procedure FormShow(Sender: TObject);
    procedure Limpa_procura;
    procedure Filtrar_xml_envio(CNPJ : String; DATAI : TDatetime; DATAF : TDatetime; NRNOTA : String);
    procedure Abre_configuracao_padrao(Sender: TObject);
    procedure Fecha_configuracao_padrao(Sender: TObject);
    procedure Salva_configuracao_padrao(Sender: TObject);
    procedure Le_configuracao_padrao;
    procedure Carrega_clientes;
    procedure Salva_NrNota_NFXML(Arquivo : String);
    procedure Sai_data_final(Sender: TObject);
    procedure Salva_saiu_senha(Sender: TObject);
    procedure Salva_saiu_usuario(Sender: TObject);
    procedure Abre_configuracao_padrao_leitura(Sender: TObject);
    procedure Mudou_local_xml(Sender: TObject);
    procedure Abrir_pasta_email(Sender: TObject);
    procedure Receber_xml(Sender: TObject);
    procedure Desconectar_email(Sender: TObject);
    procedure Clicou_pasta(Sender: TObject);
    procedure Enviar_automaticamente_emails(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
    CB1, Envio_automatico : Integer;
  end;

var
  FrmXmlEmail: TFrmXmlEmail;
  Procura : Integer;
  vArqINI: TIniFile;
  SalvaSenha, SalvaUsuario, XMLTemp, Pasta : String;


implementation

Uses Global, USeleFile, Principal;

{$R *.dfm}

{
function TFrmXmlEmail.SetScreenResolution(Width, Height: integer): Longint;
var
  DeviceMode: TDeviceMode;
begin
  with DeviceMode do
  begin
    dmSize := SizeOf(TDeviceMode);
    dmPelsWidth := Width;
    dmPelsHeight := Height;
    dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
  end;
  Result := ChangeDisplaySettings(DeviceMode, CDS_UPDATEREGISTRY);
end;
}

function TFrmXmlEmail.conv_data(AData: TDatetime; Tipo: integer):String;
var
  Present: TDatetime;
  ODia, SDia, SMes, SAno, Inicio, Fim : String;
  Year, Month, Day, Ano : Word;
begin

  Try

    DecodeDate(AData, Year, Month, Day);

    If Tipo = 7 then
    begin

      Month := Month - 1;
      If Month = 12 then
      begin
        Month := 1;
        Year := Year -1;
      end;

      If Month = 1 then Day := 31;
      If Month = 2 then Day := 28;
      If Month = 3 then Day := 31;
      If Month = 4 then Day := 30;
      If Month = 5 then Day := 31;
      If Month = 6 then Day := 30;
      If Month = 7 then Day := 31;
      If Month = 8 then Day := 31;
      If Month = 9 then Day := 30;
      If Month = 10 then Day := 31;
      If Month = 11 then Day := 30;
      If Month = 12 then Day := 31;

    end;

    If Tipo = 8 then
    begin

      Month := Month - 1;
      If Month = 12 then
      begin
        Month := 1;
        Year := Year -1;
      end;

    end;

    Ano := Year - 2000;
    If Ano < 10 then SAno := '0' + InttoStr(Ano);
    If Ano > 9 then SAno := InttoStr(Ano);

    If Day < 10 then SDia := '0' + InttoStr(Day);
    If Day > 9 then SDia := InttoStr(Day);

    If Month < 10 then SMes := '0' + InttoStr(Month);
    If Month > 9 then SMes := InttoStr(Month);

    If tipo = 0 then ODia := InttoStr(Day) + '/' +  InttoStr(Month) + '/' + InttoStr(Year);
    If Tipo = 1 then ODia := InttoStr(Year) + '-' + SMes + '-' + SDia;
    If tipo = 2 then ODia := SDia + SMes + SAno;
    If tipo = 3 then ODia := SDia + SMes + InttoStr(Year);
    If tipo = 4 then ODia := SMes + '/' + InttoStr(Year);

    If tipo = 5 then ODia := '01' + '/' + SMes + '/' + InttoStr(Year) + ' 00:00:00';

    If tipo = 6 then
    begin

      If Month = 1 then ODia := '31' + '/' + SMes + '/' + InttoStr(Year);
      If Month = 2 then ODia := '28' + '/' + SMes + '/' + InttoStr(Year);
      If Month = 3 then ODia := '31' + '/' + SMes + '/' + InttoStr(Year);
      If Month = 4 then ODia := '30' + '/' + SMes + '/' + InttoStr(Year);
      If Month = 5 then ODia := '31' + '/' + SMes + '/' + InttoStr(Year);
      If Month = 6 then ODia := '30' + '/' + SMes + '/' + InttoStr(Year);
      If Month = 7 then ODia := '31' + '/' + SMes + '/' + InttoStr(Year);
      If Month = 8 then ODia := '31' + '/' + SMes + '/' + InttoStr(Year);
      If Month = 9 then ODia := '30' + '/' + SMes + '/' + InttoStr(Year);
      If Month = 10 then ODia := '31' + '/' + SMes + '/' + InttoStr(Year);
      If Month = 11 then ODia := '30' + '/' + SMes + '/' + InttoStr(Year);
      If Month = 12 then ODia := '31' + '/' + SMes + '/' + InttoStr(Year);

      ODia := ODia + ' 23:59:00'

    end;

    If tipo = 7 then ODia := SDia + '/' + SMes + '/' + InttoStr(Year) + ' 23:59:00';
    If tipo = 8 then ODia := '01' + '/' + SMes + '/' + InttoStr(Year) + ' 00:00:00';

    If tipo = 9 then ODia := SDia + '/' + SMes + '/' + InttoStr(Year);

    Result := ODia;

  except

    Result := '01/01/2010';

  end;
end;

function TFrmXmlEmail.conv_hora(OTime: TDatetime; Tipo: integer):String;
var
  Present: TDatetime;
  THora : String;
  Hour, Min, Sec, MSec : Word;
  Dt : Integer;
begin
  Try
    Present := OTime;
    DecodeTime(Present, Hour, Min, Sec, MSec);
    If Tipo = 1 then THora := InttoStr(Hour) + InttoStr(Min) + InttoStr(Sec);
    If Tipo = 2 then THora := InttoStr(Hour) + ':' + InttoStr(Min) + ':' + InttoStr(Sec);
    Result := THora;
  except
    Result := '00:00:00';
  end;
end;

function TFrmXmlEmail.MoveCopia(const Origem, Destino : string; Operacao, Modo:Integer) : Boolean;
// Requer a unit ShellApi na clausula uses da unit
Const
  Aborted : Boolean = False;
var
  shfo : TSHFileOpStruct;
begin

  FillChar( shfo , SizeOf ( shfo ) , $0 );

  with shfo do
  begin

    if Operacao > 2 then operacao := 2;

    if Modo > 5 then modo := 1;

    case operacao of
      1: wFunc := FO_MOVE;
      2: wFunc := FO_COPY;
    end;

    pFrom := Pchar(Origem);
    pTo := Pchar(Destino);

    case Modo of
      1: fFlags := FOF_SILENT;
      2: fFlags := FOF_ALLOWUNDO or FOF_FILESONLY;
      3: fFlags := FOF_RENAMEONCOLLISION;
      4: fFlags := FOF_NOCONFIRMATION;
      5: fFlags := FOF_SIMPLEPROGRESS;
    end;

  end;

  Result := ( SHFileOperation ( shfo ) = 0 ) and ( not Aborted );

end;

function TFrmXmlEmail.Arquivo_string(OArquivo : String; OTexto : String):Boolean;
var
    var_Texto:TStringList;
Begin
  var_Texto := TStringList.Create;
  var_Texto.LoadFromFile(OArquivo);
  Result := (Pos(OTexto,var_Texto.Text)>0);
  var_Texto.Free;
End;

//Retorna a data e a hora de um arquivo}
function TFrmXmlEmail.Arquivo_data(Arquivo : String; DATAI : TDatetime; DATAF : TDatetime):Boolean;
var
  FHandle: integer;
  ADATA : TDatetime;
begin
  If not fileexists(Arquivo) then
  begin
    Result := null;
  end
  else
  begin

    DATAI := DATAI + 0.000001;
    DATAF := DATAF + 0.999999;

    FHandle := FileOpen(Arquivo, 0);
    try

      ADATA := FileDateToDateTime(FileGetDate(FHandle));

      If ADATA >= DATAI then
      If ADATA <= DATAF then Result := True;
      //Result := FileDateToDateTime(FileGetDate(FHandle));
    finally
      FileClose(FHandle);
    end;
  end;
end;

//DirList('C:\*.bat',lista);
Procedure TFrmXmlEmail.Arquivo_lista( ASource : string; ADirList :TListBox; DATAI : TDatetime; DATAF : TDatetime; OCNPJ : String; NRNOTA : String);
var
  Local     : String;
  Result    : integer;
  SearchRec : TSearchRec;
begin

  Result := FindFirst( ASource, faAnyFile, SearchRec );

  If Result = 0 then

  while (Result = 0) do
  begin

    //Se pegou nome de SubDiretorio
    If (SearchRec.Name+' ')[1] = '.' then
    begin

      Result := FindNext( SearchRec );
      Continue;

    end;

    LOCAL := edtLocalOrigem.Text + SearchRec.Name;

    If Arquivo_data(LOCAL, DATAI, DATAF) = true then
    begin

      If Arquivo_string(LOCAL, OCNPJ) = true then ADirList.Items.Add(edtLocalOrigem.Text + SearchRec.Name);

    end;

    Result := FindNext( SearchRec );

  end;

  System.SysUtils.FindClose( SearchRec );
  ADirList.Sorted := True;

end;

//DirList('C:\*.bat',lista);
Procedure TFrmXmlEmail.Arquivo_nrnota( ADirList :TListBox; NRNOTA : String);
var
  Local     : String;
  Result, Ite, I    : integer;
  SearchRec : TSearchRec;
begin

  If lbxEnviar.Items.Count > 0 then
  begin

    //lbxAnexo.Items.Clear;
    Ite := lbxEnviar.items.Count;
    For I := 0 to Ite -1 do
    begin

     If Arquivo_string(lbxEnviar.Items.Strings[I], NRNOTA) = true then
     begin
       lbxNota.Items.Add(lbxEnviar.Items.Strings[I]);
       lbxAnexo.Items.Add(lbxEnviar.Items.Strings[I]);
     end;

    end;

  end;

end;

procedure TFrmXmlEmail.Anexar_arquivo(Sender: TObject);
var
  dlg: TOpenDialog;
begin

  //Anexar de uma pasta
  dlg := TOpenDialog.Create(Self);
  // podia ser dlg := TOpenDialog.Create(nil);

  try

    dlg.DefaultExt := 'xml';
    dlg.Filter := 'Arquivos xml (*.xml)|*.xml|Arquivos (*.*)|*.*';
    dlg.Options := [ofHideReadOnly, ofPathMustExist, ofFileMustExist];
    dlg.Title := 'Anexar o Arquivo Xml desta pasta';
    dlg.InitialDir := ExtractFilePath(Application.ExeName);

    If dlg.Execute then
    begin
      // dlg.FileName tem o nome do arquivo
      lbxAnexo.Items.Add(dlg.FileName);
    end;

  finally

    dlg.Free;

  end;

end;

procedure TFrmXmlEmail.Fecha_Email(Sender: TObject);
begin
  Close;
end;

procedure TFrmXmlEmail.Enviar_email(Sender: TObject);
var
 xAnexo, Ite, I : Integer;
 lMaixBoxes : TStringList;
 lCaixaSel : String;
begin

  If edtLocalOrigem.Text  = '' then ShowMessage('Para enviar o email é necessario o endereço de origem dos xmls... Preencha e tente novamente...');
  If edtLocalDestino.Text = '' then ShowMessage('Para enviar o email é necessario o endereço de destino dos xmls... Preencha e tente novamente...');
  If edtDe.Text           = '' then ShowMessage('Para enviar o email é necessario o endereço de email de origem... Preencha e tente novamente...');
  If edtPara.Text         = '' then ShowMessage('Para enviar o email é necessario o endereço de email de destino... Preencha e tente novamente...');
  If edtAssunto.Text      = '' then ShowMessage('Para enviar o email é necessario o descrever o assunto do email... Preencha e tente novamente...');
  If edtSenha.Text        = '' then ShowMessage('Para enviar o email é necessario o digitar a senha do email... Preencha e tente novamente...');
  If edtUsuario.Text      = '' then ShowMessage('Para enviar o email é necessario o digitar o nome do usuario do email... Preencha e tente novamente...');


  If edtDe.Text           <> '' then
  If edtPara.Text         <> '' then
  If edtSenha.Text        <> '' then
  If edtAssunto.Text      <> '' then
  If edtUsuario.Text      <> '' then
  If edtLocalOrigem.Text  <> '' then
  If edtLocalDestino.Text <> '' then
  begin

    IdMessage.Clear;
    IdMessage.ClearBody;
    IdMessage.ClearHeader;

    IdMessage.Body.Clear;
    IdMessage.Headers.Clear;
    IdMessage.MessageParts.Clear;

    idmessage.ContentType  := 'html';
    idmessage.from.address := edtDe.Text;
    //IdMessage.From.Name := edtDe.Text;
    IdMessage.Recipients.EMailAddresses := edtPara.Text;
    If edtCC.Text <> '' then IdMessage.CCList.EMailAddresses     := edtCC.Text;
    If edtCC.Text <> '' then IdMessage.BccList.EMailAddresses    := edtCCO.Text;

    case cbxPrioridade.ItemIndex of
      0 : IdMessage.Priority := mpHigh;
      1 : IdMessage.Priority := mpNormal;
      2 : IdMessage.Priority := mpLow;
    end;

    mmMensagem.Lines.Add( 'Cliente: ' + edtCodigo.Text );
    mmMensagem.Lines.Add( 'Razão  : ' + cbxRazao.Text );
    mmMensagem.Lines.Add( 'CNPJ   : ' + edtCNPJ.Text );
    mmMensagem.Lines.Add( 'NF nº  : ' + edtNrNota.Text );

    IdMessage.Body    := mmMensagem.Lines;
    IdMessage.Subject := edtAssunto.Text;

    if cbxConfirmaLeitura.Checked then
    IdMessage.ReceiptRecipient.Text := IdMessage.From.Text; // Auto Resposta

    //Tratando os arquivos anexos
    for xAnexo := 0 to lbxAnexo.Items.Count-1 do
    TIdAttachmentFile.create(idmessage.MessageParts, TFileName(lbxAnexo.Items.Strings[xAnexo]));

    //Salva o login
    IdSMTP.Host     := '10.0.1.16';
    IdSMTP.Port     := 25;
    IdSMTP.Password := edtSenha.Text;
    IdSMTP.Username := edtUsuario.Text;

    //Conecta-se e envia o email
    if IdSMTP.Connected = False then
      IdSMTP.Connect;                //Fechei aqui
    try
      IdSMTP.Send(IdMessage);      //Fechei aqui

      If Envio_automatico = 0 then
      begin
        Application.MessageBox('Email enviado com sucesso!', 'Confirmação', IDOK);
      end;

      //Salva na tabela xml
      Ite := lbxAnexo.items.Count;
      For I := 0 to Ite -1 do
      begin

        //Salva o arquivo antes de apagar
        Salva_NrNota_NFXML(lbxAnexo.Items.Strings[I]);

        Relatorio.Lines.Add(lbxAnexo.Items.Strings[I] + ' - Enviada');

        If RdPasta.Checked = True then
        begin
          MoveCopia(lbxAnexo.Items.Strings[I], edtLocalDestino.Text + ExtractFileName(lbxAnexo.Items.Strings[I]), 2, 2);
          lbxAnexo.Items.Delete(lbxAnexo.ItemIndex);
        end;

      end;


    finally

    end;

    If Envio_automatico = 0 then
    begin
      //Limpa campos do email
      edtUsuario.Text := '';
      edtSenha.Text   := '';
      edtPara.Text    := '';
    end;
    If Envio_automatico = 1 then
    begin
      //Limpa campos do email
      edtPara.Text    := '';
    end;

    lbxAnexo.Items.Clear;

    lbxEnviar.Items.Clear;
    lbxNota.Items.Clear;
    lbxAnexo.Items.Clear;

    //Apaga o arquivo temporario depois de enviar
    If RdBDados.Checked = True then
    If FileExists(XMLTemp) then
    begin
      DeleteFile(PChar(XMLTemp));
      XMLTemp := '';
    end;

    If Envio_automatico = 1 then
    begin

      While cbxRazao.Items.Count > 0 do
      begin
        cbxRazao.Text := '';
        Carrega_clientes;
        cbxRazao.ItemIndex := 0;
        cbxRazao.Focused;
        If cbxRazao.Items[cbxRazao.ItemIndex] <> '' then
        begin
          cbxRazao.Text := cbxRazao.Items[cbxRazao.ItemIndex];
          Escolheu_cliente_tabela;
          BtnEnviar.Click;
        end;
      end;

    end;

  end;

end;

procedure TFrmXmlEmail.Salva_NrNota_NFXML(Arquivo : String);
begin

  If RdPasta.Checked = True then
  begin

    If edtNrNota.Text = '' then If lblRazao.Caption = '' then  ShowMessage('XML não foi salvo... sem Nº da NF e Razão Social Cadastrada...');
    If edtNrNota.Text   = '' then ShowMessage('XML não foi salvo... sem Nº da NF Cadastrada...');
    If lblRazao.Caption = '' then ShowMessage('XML não foi salvo... sem Razão Social Cadastrada...');

    //Cria o sql do carregamento
    If edtNrNota.Text <> '' then
    If lblRazao.Caption <> '' then
    begin

      Qry_Cliente.Close;
      Qry_Cliente.SQL.Clear;
      Qry_Cliente.SQL.Add('Select t.id_cliente, t.nm_cliente, t.nr_cnpjclie, t.nr_inscestaclie, t.gn_emaiclie, n.ID_NOTAFISC,');
      Qry_Cliente.SQL.Add('n.dt_emisnotafisc, n.dt_saidnotafisc, n.nr_notafisc, n.vl_notafisc, x.nfe_xml, n.SG_SERINOTAFISC_NOTAFISC, n.Filial');
      Qry_Cliente.SQL.Add('from cliente t, nota_fiscal n, nota_fiscal_xml x where');
      Qry_Cliente.SQL.Add(' n.id_cliente = t.id_cliente');
      Qry_Cliente.SQL.Add(' and x.id_notafisc (+) = n.id_notafisc');
      Qry_Cliente.SQL.Add(' and x.nfe_xml is null');
      Qry_Cliente.SQL.Add(' and n.dt_saidnotafisc >= TO_DATE(' + QuotedStr(edtDataIni.Text + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
      Qry_Cliente.SQL.Add(' and n.dt_saidnotafisc <= TO_DATE(' + QuotedStr(edtDataFim.Text + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
      Qry_Cliente.SQL.Add(' and t.gn_emaiclie is not null');
      Qry_Cliente.SQL.Add(' and nvl(n.fl_cancnotafisc,''' +'N' + ''')= ''' + 'N' + '''');
      Qry_Cliente.SQL.Add(' and t.nm_cliente = ' + QuotedStr(lblRazao.Caption));
      Qry_Cliente.SQL.Add(' and n.nr_notafisc = ' + edtNrNota.Text);
      Qry_Cliente.SQL.Add(' order by t.nm_cliente');
      //Qry_Cliente.SQL.SaveToFile('Qry_Cliente.txt');
      Qry_Cliente.Open;

      If Qry_Cliente.RecordCount > 0 then
      begin

        If Arquivo <> '' then
        begin

          //Salva a tabela em nota_fiscal_xml
          qryNFEXML.Open;
          qryNFEXML.Append;
          qryNFEXMLEMPRESA.Value           := gs_Empresa;
          qryNFEXMLFILIAL.Value            := Qry_ClienteFILIAL.Value ;
          qryNFEXMLID_NOTAFISC.Value       := Qry_ClienteID_NOTAFISC.Value;
          qryNFEXMLDT_EMISNOTAFISC.Value   := Qry_ClienteDT_EMISNOTAFISC.AsString;
          qryNFEXMLNR_NOTAFISC.Value       := Qry_ClienteNR_NOTAFISC.Value;
          qryNFEXMLSR_NOTAFISC.Value       := Qry_ClienteSG_SERINOTAFISC_NOTAFISC.Value;
          qryNFEXMLDATA_ENVIO.Value        := DatetoStr(Date);
          qryNFEXMLNFE_NUMERO.Value        := Qry_ClienteNR_NOTAFISC.Value;
          qryNFEXMLNFE_CHAVE.Value         := '';
          qryNFEXMLNFE_LOCAL.Value         := edtLocalOrigem.Text;
          qryNFEXMLENVIO.Value             := 'S';
          If FileExists(Arquivo) then TBlobField(qryNFEXML.FieldByName('NFE_XML')).LoadFromFile(Arquivo);
          qryNFEXML.Post;
          qryNFEXML.CommitUpdates;
          qryNFEXML.ApplyUpdates;
          qryNFEXML.Close;

        end;

      end;

    end;

  end;

  If RdBDados.Checked = True then
  begin

    //Cria o sql do carregamento
    If edtNrNota.Text <> '' then
    If lblRazao.Caption <> '' then
    begin

      Qry_Cliente.Close;
      Qry_Cliente.SQL.Clear;
      Qry_Cliente.SQL.Add('Select t.id_cliente, t.nm_cliente, t.nr_cnpjclie, t.nr_inscestaclie, t.gn_emaiclie, n.ID_NOTAFISC,');
      Qry_Cliente.SQL.Add('n.dt_emisnotafisc, n.dt_saidnotafisc, n.nr_notafisc, n.vl_notafisc, x.nfe_xml, n.SG_SERINOTAFISC_NOTAFISC, n.Filial ');
      Qry_Cliente.SQL.Add('from cliente t, nota_fiscal n, nota_fiscal_xml x where');
      Qry_Cliente.SQL.Add(' n.id_cliente = t.id_cliente');
      Qry_Cliente.SQL.Add(' and x.id_notafisc (+) = n.id_notafisc');
      Qry_Cliente.SQL.Add(' and x.nfe_xml is not null');
      Qry_Cliente.SQL.Add(' and n.dt_saidnotafisc >= TO_DATE(' + QuotedStr(edtDataIni.Text + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
      Qry_Cliente.SQL.Add(' and n.dt_saidnotafisc <= TO_DATE(' + QuotedStr(edtDataFim.Text + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
      Qry_Cliente.SQL.Add(' and t.gn_emaiclie is not null');
      Qry_Cliente.SQL.Add(' and nvl(n.fl_cancnotafisc,''' +'N' + ''')= ''' + 'N' + '''');
      Qry_Cliente.SQL.Add(' and t.nm_cliente = ' + QuotedStr(lblRazao.Caption));
      Qry_Cliente.SQL.Add(' and n.nr_notafisc = ' + edtNrNota.Text);
      Qry_Cliente.SQL.Add(' order by t.nm_cliente');
      //Qry_Cliente.SQL.SaveToFile('Qry_Cliente.txt');
      Qry_Cliente.Open;

      If Qry_Cliente.RecordCount > 0 then
      begin

        qryNFEXML.Close;
        qryNFEXML.SQL.Clear;
        qryNFEXML.SQL.Add('SELECT * FROM NOTA_FISCAL_XML WHERE');
        qryNFEXML.SQL.Add(' EMPRESA = '         + QuotedStr(gs_Empresa));
        qryNFEXML.SQL.Add(' AND FILIAL = '      + Qry_ClienteFILIAL.AsString );
        qryNFEXML.SQL.Add(' AND ID_NOTAFISC = ' + Qry_ClienteID_NOTAFISC.AsString);
        qryNFEXML.SQL.Add(' AND NR_NOTAFISC = ' + Qry_ClienteNR_NOTAFISC.AsString);
        qryNFEXML.SQL.Add(' AND SR_NOTAFISC = ' + Qry_ClienteSG_SERINOTAFISC_NOTAFISC.Value);
        //qryNFEXML.SQL.SaveToFile('qryNFEXML_salva.txt');
        qryNFEXML.Open;
        If qryNFEXML.RecordCount > 0 then
        begin
          //Salva a tabela em nota_fiscal_xml
          qryNFEXML.Edit;
          qryNFEXMLENVIO.Value := 'S';
          qryNFEXML.Post;
          qryNFEXML.CommitUpdates;
          qryNFEXML.ApplyUpdates;
          qryNFEXML.Close;
        end;
        qryNFEXML.Close;
        qryNFEXML.SQL.Clear;
        qryNFEXML.SQL.Add('SELECT * FROM NOTA_FISCAL_XML');

      end;

    end;

  end;

  If RdReenviar.Checked = True then
  begin

    //Cria o sql do carregamento
    If edtNrNota.Text <> '' then
    If lblRazao.Caption <> '' then
    begin

      Qry_Cliente.Close;
      Qry_Cliente.SQL.Clear;
      Qry_Cliente.SQL.Add('Select t.id_cliente, t.nm_cliente, t.nr_cnpjclie, t.nr_inscestaclie, t.gn_emaiclie, n.ID_NOTAFISC,');
      Qry_Cliente.SQL.Add('n.dt_emisnotafisc, n.dt_saidnotafisc, n.nr_notafisc, n.vl_notafisc, x.nfe_xml, n.SG_SERINOTAFISC_NOTAFISC, n.Filial ');
      Qry_Cliente.SQL.Add('from cliente t, nota_fiscal n, nota_fiscal_xml x where');
      Qry_Cliente.SQL.Add(' n.id_cliente = t.id_cliente');
      Qry_Cliente.SQL.Add(' and x.id_notafisc (+) = n.id_notafisc');
      Qry_Cliente.SQL.Add(' and x.nfe_xml is not null');
      Qry_Cliente.SQL.Add(' and n.dt_saidnotafisc >= TO_DATE(' + QuotedStr(edtDataIni.Text + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
      Qry_Cliente.SQL.Add(' and n.dt_saidnotafisc <= TO_DATE(' + QuotedStr(edtDataFim.Text + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
      Qry_Cliente.SQL.Add(' and t.gn_emaiclie is not null');
      Qry_Cliente.SQL.Add(' and nvl(n.fl_cancnotafisc,''' +'N' + ''')= ''' + 'N' + '''');
      Qry_Cliente.SQL.Add(' and t.nm_cliente = ' + QuotedStr(lblRazao.Caption));
      Qry_Cliente.SQL.Add(' and n.nr_notafisc = ' + edtNrNota.Text);
      Qry_Cliente.SQL.Add(' order by t.nm_cliente');
      //Qry_Cliente.SQL.SaveToFile('Qry_Cliente.txt');
      Qry_Cliente.Open;

      If Qry_Cliente.RecordCount > 0 then
      begin

        qryNFEXML.Close;
        qryNFEXML.SQL.Clear;
        qryNFEXML.SQL.Add('SELECT * FROM NOTA_FISCAL_XML WHERE');
        qryNFEXML.SQL.Add(' EMPRESA = '         + QuotedStr(gs_Empresa));
        qryNFEXML.SQL.Add(' AND FILIAL = '    +  Qry_ClienteFILIAL.AsString );
        qryNFEXML.SQL.Add(' AND ID_NOTAFISC = ' + Qry_ClienteID_NOTAFISC.AsString);
        qryNFEXML.SQL.Add(' AND NR_NOTAFISC = ' + Qry_ClienteNR_NOTAFISC.AsString);
        qryNFEXML.SQL.Add(' AND SR_NOTAFISC = ' + Qry_ClienteSG_SERINOTAFISC_NOTAFISC.Value);
        qryNFEXML.Open;
        If qryNFEXML.RecordCount > 0 then
        begin
          //Salva a tabela em nota_fiscal_xml
          qryNFEXML.Edit;
          qryNFEXMLENVIO.Value := 'S';
          qryNFEXML.Post;
          qryNFEXML.CommitUpdates;
          qryNFEXML.ApplyUpdates;
          qryNFEXML.Close;
        end;
        qryNFEXML.Close;
        qryNFEXML.SQL.Clear;
        qryNFEXML.SQL.Add('SELECT * FROM NOTA_FISCAL_XML');

      end;

    end;

  end;

  //Carrega clientes denovo
  Carrega_clientes;

end;

procedure TFrmXmlEmail.Anexar_um_xml(Sender: TObject);
begin

  //Anexar um xml
  If lbxNota.Items.Count > 0 then
  begin
    If lbxNota.ItemIndex = -1 then ShowMessage('Primeiro selecione o item a enviar que deseja mover');
    If lbxNota.ItemIndex >= 0 then
    begin
      lbxAnexo.Items.Add(lbxEnviar.Items.Strings[lbxNota.ItemIndex]);
      lbxNota.Items.Delete(lbxNota.ItemIndex);
    end;
  end;

  //Coloca a senha como padrao
  If SalvaSenha <> '' then edtSenha.Text := SalvaSenha;
  If SalvaUsuario <> '' then edtUsuario.Text := SalvaUsuario;

end;

procedure TFrmXmlEmail.Anexar_todos_xml(Sender: TObject);
var
  Ite, I : Integer;
begin
  //Anexar todos xmls
  If lbxNota.Items.Count > 0 then
  begin
    //lbxAnexo.Items.Clear;
    Ite := lbxNota.items.Count;
    For I := 0 to Ite -1 do lbxAnexo.Items.Add(lbxNota.Items.Strings[I]);
    lbxNota.Items.Clear;
  end;
  //Coloca a senha como padrao
  If SalvaSenha <> '' then edtSenha.Text := SalvaSenha;
  If SalvaUsuario <> '' then edtUsuario.Text := SalvaUsuario;
end;

procedure TFrmXmlEmail.Nao_enviar_esse_xml(Sender: TObject);
begin
  //Não enviar esse xml
  If lbxAnexo.Items.Count > 0 then
  begin
    If lbxAnexo.ItemIndex = -1 then ShowMessage('Primeiro selecione o item anexo que não deseja enviar');
    If lbxAnexo.ItemIndex >= 0 then
    begin
      lbxNota.Items.Add(lbxAnexo.Items.Strings[lbxAnexo.ItemIndex]);
      lbxAnexo.Items.Delete(lbxAnexo.ItemIndex);
    end;
  end;
  //Coloca a senha como padrao
  If SalvaSenha <> '' then edtSenha.Text := SalvaSenha;
  If SalvaUsuario <> '' then edtUsuario.Text := SalvaUsuario;
end;

procedure TFrmXmlEmail.Nao_enviar_todos_xml(Sender: TObject);
var
  Ite, I : Integer;
begin
  //Não enviar todos xml
  If lbxAnexo.Items.Count > 0 then
  begin
    Ite := lbxAnexo.items.Count;
    For I := 0 to Ite -1 do lbxNota.Items.Add(lbxAnexo.Items.Strings[I]);
    lbxAnexo.Items.Clear;
  end;
  //Coloca a senha como padrao
  If SalvaSenha <> '' then edtSenha.Text := SalvaSenha;
  If SalvaUsuario <> '' then edtUsuario.Text := SalvaUsuario;
end;

procedure TFrmXmlEmail.Localiza_local(Sender: TObject);
var
  dlg: TOpenDialog;
begin

  //Anexar de uma pasta
  dlg := TOpenDialog.Create(Self);
  // podia ser dlg := TOpenDialog.Create(nil);

  try

    dlg.DefaultExt := 'xml';
    dlg.Filter := 'Arquivos xml (*.xml)|*.xml|Arquivos (*.*)|*.*';
    dlg.Options := [ofHideReadOnly, ofPathMustExist, ofFileMustExist];
    dlg.Title := 'Local dos Arquivos Xml armazenados';
    dlg.InitialDir := ExtractFilePath(Application.ExeName);

    If dlg.Execute then
    begin

      // dlg.FileName tem o nome do arquivo
      If Sender = spbLocalizaOrigem then edtLocalOrigem.Text := ExtractFilePath(dlg.FileName);
      If Sender = spbLocalizaDestino then edtLocalDestino.Text := ExtractFilePath(dlg.FileName);
      If Sender = spbLocalizaOrigem_ then edtLocalOrigem_.Text := ExtractFilePath(dlg.FileName);
      If Sender = spbLocalizaDestino_ then edtLocalDestino_.Text := ExtractFilePath(dlg.FileName);

      //Carrega os arquivos xml
      Carrega_arquivos_xml;

    end;

  finally

    dlg.Free;

  end;

end;

procedure TFrmXmlEmail.Carrega_arquivos_xml;
begin
  //Carrega os arquivos xml

end;

procedure TFrmXmlEmail.Escolheu_cliente(Sender: TObject);
begin
  Escolheu_cliente_tabela;
end;

procedure TFrmXmlEmail.Escolheu_cliente_tabela;
begin

  If cbxRazao.Text <> '' then
  begin

    lbxEnviar.Items.Clear;
    lbxNota.Items.Clear;
    lbxAnexo.Items.Clear;

    //Cria o sql do carregamento
    Qry_Cliente.Close;
    Qry_Cliente.SQL.Clear;
    Qry_Cliente.SQL.Add('Select t.id_cliente, t.nm_cliente, t.nr_cnpjclie, t.nr_inscestaclie, t.gn_emaiclie, n.ID_NOTAFISC,');
    Qry_Cliente.SQL.Add('n.dt_emisnotafisc, n.dt_saidnotafisc, n.nr_notafisc, n.vl_notafisc, x.nfe_xml, n.SG_SERINOTAFISC_NOTAFISC, n.Filial');
    Qry_Cliente.SQL.Add('from cliente t, nota_fiscal n, nota_fiscal_xml x where');
    Qry_Cliente.SQL.Add(' n.id_cliente = t.id_cliente');
    Qry_Cliente.SQL.Add(' and x.id_notafisc (+) = n.id_notafisc');

    If RdPasta.Checked = True  then Qry_Cliente.SQL.Add(' and x.nfe_xml is null');
    If RdBDados.Checked = True then
    begin
      Qry_Cliente.SQL.Add(' and x.nfe_xml is not null');
      Qry_Cliente.SQL.Add(' and nvl(x.envio,''' +'N' + ''')= ''' + 'N' + '''');
    end;
    If RdReenviar.Checked = True then
    begin
      Qry_Cliente.SQL.Add(' and x.nfe_xml is not null');
      Qry_Cliente.SQL.Add(' and nvl(x.envio,''' +'S' + ''')= ''' + 'S' + '''');
    end;

    Qry_Cliente.SQL.Add(' and n.dt_saidnotafisc >= TO_DATE(' + QuotedStr(edtDataIni.Text + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
    Qry_Cliente.SQL.Add(' and n.dt_saidnotafisc <= TO_DATE(' + QuotedStr(edtDataFim.Text + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
    Qry_Cliente.SQL.Add(' and t.gn_emaiclie is not null');
    Qry_Cliente.SQL.Add(' and nvl(n.fl_cancnotafisc,''' +'N' + ''')= ''' + 'N' + '''');
    Qry_Cliente.SQL.Add(' and t.nm_cliente = ' + QuotedStr(cbxRazao.Text));
    Qry_Cliente.SQL.Add(' order by t.nm_cliente');
    //Qry_Cliente.SQL.SaveToFile('Qry_Cliente.txt');
    Qry_Cliente.Open;

    If Qry_ClienteID_NOTAFISC.Value > 0 then
    begin
      Qry_Vendedor.Close;
      Qry_Vendedor.SQL.Clear;
      Qry_Vendedor.SQL.Add('SELECT v.gn_emaivend FROM pedido_venda P, pedido_venda_nota_fiscal F, nota_fiscal N, vendedor V WHERE');
      Qry_Vendedor.SQL.Add(' v.id_vendedor     = p.id_vendedor');
      Qry_Vendedor.SQL.Add(' AND p.id_pedivend = f.id_pedivend');
      Qry_Vendedor.SQL.Add(' AND f.id_notafisc = n.id_notafisc');
      Qry_Vendedor.SQL.Add(' AND n.id_notafisc = ' + Qry_ClienteID_NOTAFISC.AsString);
      //Qry_Vendedor.SQL.SaveToFile('Qry_Cliente.txt');
      Qry_Vendedor.Open;
    end;

    If Qry_Cliente.RecordCount > 0 then
    begin

      //Limpa os campos de procura
      Limpa_procura;

      //Salva o codigo do cliente
      edtCNPJ.Text   := Qry_ClienteNR_CNPJCLIE.Value;
      edtCodigo.Text := Qry_ClienteID_CLIENTE.AsString;
      edtPara.Text   := Qry_ClienteGN_EMAICLIE.Value;

      If Qry_ClienteID_NOTAFISC.Value > 0 then
      If Qry_Vendedor.RecordCount > 0 then
      If Qry_Vendedorgn_emaivend.Value <> '' then
      edtCCO.Text := edtCCO.Text + ';' + Qry_Vendedorgn_emaivend.Value;

      edtNrNota.Text := Qry_ClienteNR_NOTAFISC.AsString;

      //Mostra os dados do cliente
      lblCodigo.Caption := Qry_ClienteID_CLIENTE.AsString;
      lblRazao.Caption  := Qry_ClienteNM_CLIENTE.Value;
      lblCNPJ.Caption   := Qry_ClienteNR_CNPJCLIE.Value;

      //Filtra os xml para o envio
      Filtrar_xml_envio(Qry_ClienteNR_CNPJCLIE.Value, StrtoDate(edtDataIni.Text), StrtoDate(edtDataFim.Text), edtNrNota.Text);

    end;

    Abre_configuracao_padrao_leitura(nil);

  end;

end;

procedure TFrmXmlEmail.Filtrar_xml_envio(CNPJ : String; DATAI : TDatetime; DATAF : TDatetime; NRNOTA : String);
begin

  XMLTemp := '';

  //Filtra os xms e prepara para o envio
  If CNPJ <> '' then
  If DATAI <> null then
  If DATAF <> null then
  If NRNOTA <> '' then
  begin

    If RdPasta.Checked = True then
    begin
      //Cloca aqui os arquivos encontrados no diretorio
      If edtLocalOrigem.Text <> '' then Arquivo_lista(edtLocalOrigem.Text + '\*.xml',lbxEnviar, DATAI, DATAF, CNPJ, NRNOTA);
      //Verifica se o xml é valido
      Arquivo_nrnota(lbxNota, edtNrNota.Text);
    end;

    If RdBDados.Checked = True then
    begin

      //Obtem o nome e local do xml
      XMLTemp := '';
      XMLTemp := LocalizaXML(edtLocalDestino.Text, DATAI, DATAF, CNPJ, NRNOTA);

      If XMLTemp = '' then ShowMessage('INFORMAÇÕES INCOMPLETAS NO BANCO DE DADOS XML... O ANEXO NÃO PODE SER ENVIADO...');
      //Transfere para as duas listas os anexos
      If XMLTemp <> '' then
      begin

        //Se o arquivo foi salvo no disco coloca como anexo
        If FileExists(XMLTemp) then
        begin
          lbxEnviar.Items.Add(XMLTemp);
          lbxNota.Items.Add(XMLTemp);
          lbxAnexo.Items.Add(XMLTemp);
        end;

      end;

    end;

    If RdReenviar.Checked = True then
    begin

      //Obtem o nome e local do xml
      XMLTemp := '';
      XMLTemp := LocalizaXML(edtLocalDestino.Text, DATAI, DATAF, CNPJ, NRNOTA);

      If XMLTemp = '' then ShowMessage('INFORMAÇÕES INCOMPLETAS NO BANCO DE DADOS XML... O ANEXO NÃO PODE SER ENVIADO...');
      //Transfere para as duas listas os anexos
      If XMLTemp <> '' then
      begin

        //Se o arquivo foi salvo no disco coloca como anexo
        If FileExists(XMLTemp) then
        begin
          lbxEnviar.Items.Add(XMLTemp);
          lbxNota.Items.Add(XMLTemp);
          lbxAnexo.Items.Add(XMLTemp);
        end;

      end;

    end;

  end;

end;

function TFrmXmlEmail.LocalizaXML(Local : String; DATAI : TDatetime; DATAF : TDatetime; CNPJ : String; NRNOTA : String): String;
var
  ONomeTemp : String;
begin

  //Limpa o nome do arquivo temporario
  ONomeTemp := '';
  //localiza no banco a nota com o xml
  qryNFEXML.Close;
  qryNFEXML.SQL.Clear;
  qryNFEXML.SQL.Add('Select x.* from cliente t, nota_fiscal n, nota_fiscal_xml x where');
  qryNFEXML.SQL.Add(' n.id_cliente = t.id_cliente');
  qryNFEXML.SQL.Add(' and x.id_notafisc (+) = n.id_notafisc');
  qryNFEXML.SQL.Add(' and x.nfe_xml is not null');
  qryNFEXML.SQL.Add(' and n.dt_saidnotafisc >= TO_DATE(' + QuotedStr(Conv_data(DATAI, 9) + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
  qryNFEXML.SQL.Add(' and n.dt_saidnotafisc <= TO_DATE(' + QuotedStr(Conv_data(DATAF, 9) + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
  qryNFEXML.SQL.Add(' and t.nr_cnpjclie = ' + QuotedStr(CNPJ));
  qryNFEXML.SQL.Add(' and n.nr_notafisc = ' + NRNOTA);
  //qryNFEXML.SQL.SaveToFile('qryNFEXML.txt');
  qryNFEXML.Open;

  //Não achou a nota fiscal
  If qryNFEXML.RecordCount = 0 then Result := '';
  //Achou a nota fiscal no arquivo xml
  If qryNFEXML.RecordCount > 0 then
  begin

    If qryNFEXMLNFE_CHAVE.Value <> '' then
    begin
      qryNFEXMLNFE_XML.SaveToFile(local + qryNFEXMLNFE_CHAVE.Value + '-procNfe.xml');
      ONomeTemp := local + qryNFEXMLNFE_CHAVE.Value + '-procNfe.xml';
    end;

    If qryNFEXMLNFE_CHAVE.Value = '' then ONomeTemp := '';

  end;

  //Volta o sql para o inicial
  qryNFEXML.Close;
  qryNFEXML.SQL.Clear;
  qryNFEXML.SQL.Add('SELECT * FROM NOTA_FISCAL_XML');

  //Retorna o nome do arquivo
  Result := ONomeTemp;

end;


procedure TFrmXmlEmail.Limpa_procura;
begin
  //Limpa a procura
  edtCNPJ.Text   := '';
  //cbxRazao.Text  := '';
  edtCodigo.Text := '';
  edtNrNota.Text := '';
  lblCNPJ.Caption   := '';
  lblRazao.Caption  := '';
  lblCodigo.Caption := '';
end;

procedure TFrmXmlEmail.Carrega_clientes;
begin
  //Apaga o combobox
  cbxRazao.Items.Clear;
  //Cria o sql do carregamento
  Qry_Cliente.Close;
  Qry_Cliente.SQL.Clear;
  Qry_Cliente.SQL.Add('Select t.id_cliente, t.nm_cliente, t.nr_cnpjclie, t.nr_inscestaclie, t.gn_emaiclie, n.ID_NOTAFISC,');
  Qry_Cliente.SQL.Add(' n.dt_emisnotafisc, n.dt_saidnotafisc, n.nr_notafisc, n.vl_notafisc, x.nfe_xml, n.SG_SERINOTAFISC_NOTAFISC, n.Filial');
  Qry_Cliente.SQL.Add(' from cliente t, nota_fiscal n, nota_fiscal_xml x where');
  Qry_Cliente.SQL.Add(' n.id_cliente = t.id_cliente');
  Qry_Cliente.SQL.Add(' and x.id_notafisc (+) = n.id_notafisc');

  If RdPasta.Checked = True  then
    Qry_Cliente.SQL.Add(' and x.nfe_xml is null');

  If RdBDados.Checked = True then
    begin
      Qry_Cliente.SQL.Add(' and x.nfe_xml is not null');
      Qry_Cliente.SQL.Add(' and nvl(x.envio,''' +'N' + ''')= ''' + 'N' + '''');
    end;

  If RdReenviar.Checked = True then
    begin
      Qry_Cliente.SQL.Add(' and x.nfe_xml is not null');
      Qry_Cliente.SQL.Add(' and nvl(x.envio,''' +'S' + ''')= ''' + 'S' + '''');
    end;

  Qry_Cliente.SQL.Add(' and n.dt_saidnotafisc >= TO_DATE(' + QuotedStr(edtDataIni.Text + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
  Qry_Cliente.SQL.Add(' and n.dt_saidnotafisc <= TO_DATE(' + QuotedStr(edtDataFim.Text + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
  Qry_Cliente.SQL.Add(' and t.gn_emaiclie is not null');
  Qry_Cliente.SQL.Add(' and nvl(n.fl_cancnotafisc,''' +'N' + ''')= ''' + 'N' + '''');
  Qry_Cliente.SQL.Add(' order by t.nm_cliente');
 // Qry_Cliente.SQL.SaveToFile('Qry_Cliente_XML.txt');
  Qry_Cliente.Open;
  If Qry_Cliente.RecordCount > 0 then
    begin
      Qry_Cliente.First;
      While not Qry_Cliente.Eof do
        begin
          cbxRazao.Items.Add(Qry_ClienteNM_CLIENTE.Value);
          Qry_Cliente.next;
        end;
    end;

  //Da o foco no
  cbxRazao.SetFocus;

  //Faz leitura da configuracação padrão
  Le_configuracao_padrao;

  //Coloca a senha como padrao
  If SalvaSenha <> '' then
    edtSenha.Text := SalvaSenha;

  If SalvaUsuario <> '' then
    edtUsuario.Text := SalvaUsuario;

end;

procedure TFrmXmlEmail.FormShow(Sender: TObject);
begin

  FrmXmlEmail.Caption := FrmXmlEmail.Caption + ' ' + gs_Unidade + ' ' + gs_CNPJ;

  //Filtra o clietne e carrega o combobox
  edtDataIni.Text := DatetoStr(Date);
  edtDataFim.Text := DatetoStr(Date);

  //Carrega os clientes
  Carrega_clientes;

end;

procedure TFrmXmlEmail.Abre_configuracao_padrao(Sender: TObject);
var
  Arquivo, Confirma, Mensagem : String;
begin

  //Faz a leitura do arquivo ini
  Arquivo := '';
  Arquivo := ExtractFilePath(application.ExeName) + 'XmlEmail.ini';
  vArqINI:= TIniFile.Create(Arquivo);

  //Le o ini do disco
  edtLocalOrigem_.Text        := vArqINI.ReadString('LocalOrigem',  'LOCALORIGEM',  '');
  edtLocalDestino_.Text       := vArqINI.ReadString('LocalDestino', 'LOCALDESTINO', '');
  edtDe_.Text                 := vArqINI.ReadString('De',           'DE',           '');
  edtUsuario_.Text            := vArqINI.ReadString('Usuario',      'USUARIO',      '');
  edtPara_.Text               := vArqINI.ReadString('Para',         'PARA',         '');
  edtCC_.Text                 := vArqINI.ReadString('Cc',           'CC',           '');
  edtCCO_.Text                := vArqINI.ReadString('Cco',          'CCO',          '');
  edtAssunto_.Text            := vArqINI.ReadString('Assunto',      'ASSUNTO',      '');
  cbxPrioridade_.Text         := vArqINI.ReadString('Prioridade',   'PRIORIDADE',   '');
  Confirma                    := vArqINI.ReadString('Confirma',     'CONFIRMA',     '');
  Mensagem                    := vArqINI.ReadString('Mensagem',     'MENSAGEM',     '');

  If Confirma = 'SIM' then cbxConfirmaLeitura_.Checked := True;
  If Confirma = 'NÃO' then cbxConfirmaLeitura_.Checked := False;

  mmMensagem_.Lines.Clear;
  mmMensagem_.Lines.Add(Mensagem);

  //Fecha arquivo ini
  vArqINI.Free;

  //Mostra a janela
  pnlPadrao.Visible := True;

  Abre_configuracao_padrao_leitura(Sender);

end;

procedure TFrmXmlEmail.Abre_configuracao_padrao_leitura(Sender: TObject);
var
  Arquivo, Confirma, Mensagem : String;
begin

  //Faz a leitura do arquivo ini
  Arquivo := '';
  Arquivo := ExtractFilePath(application.ExeName) + 'XmlEmail.ini';
  vArqINI:= TIniFile.Create(Arquivo);

  //Le o ini do disco
  edtLocalOrigem.Text        := vArqINI.ReadString('LocalOrigem',  'LOCALORIGEM',   '');
  edtLocalDestino.Text       := vArqINI.ReadString('LocalDestino', 'LOCALDESTINO', '');
  edtDe.Text                 := vArqINI.ReadString('De',           'DE',           '');
  edtUsuario.Text            := vArqINI.ReadString('Usuario',      'USUARIO',      '');
  //edtPara.Text              := vArqINI.ReadString('Para',         'PARA',         '');
  edtCC.Text                 := vArqINI.ReadString('Cc',           'CC',           '');
  edtCCO.Text                := vArqINI.ReadString('Cco',          'CCO',          '');
  edtAssunto.Text            := vArqINI.ReadString('Assunto',      'ASSUNTO',      '');
  cbxPrioridade.Text         := vArqINI.ReadString('Prioridade',   'PRIORIDADE',   '');
  Confirma                   := vArqINI.ReadString('Confirma',     'CONFIRMA',     '');
  Mensagem                   := vArqINI.ReadString('Mensagem',     'MENSAGEM',     '');

  If Confirma = 'SIM' then cbxConfirmaLeitura.Checked := True;
  If Confirma = 'NÃO' then cbxConfirmaLeitura.Checked := False;

  mmMensagem.Lines.Clear;
  mmMensagem.Lines.Add(Mensagem);

  //Fecha arquivo ini
  vArqINI.Free;

  //Coloca a senha como padrao
  If SalvaSenha <> '' then edtSenha.Text := SalvaSenha;
  If SalvaUsuario <> '' then edtUsuario.Text := SalvaUsuario;

end;

procedure TFrmXmlEmail.Le_configuracao_padrao;
var
  Arquivo, Confirma, Mensagem : String;
begin

  //Faz a leitura do arquivo ini
  Arquivo := '';
  Arquivo := ExtractFilePath(application.ExeName) + 'XmlEmail.ini';
  vArqINI:= TIniFile.Create(Arquivo);

  //Le o ini do disco
  edtLocalOrigem.Text        := vArqINI.ReadString('LocalOrigem',  'LOCALORIGEM',   '');
  edtLocalDestino.Text       := vArqINI.ReadString('LocalDestino', 'LOCALDESTINO', '');
  edtDe.Text                 := vArqINI.ReadString('De',           'DE',           '');
  edtUsuario.Text            := vArqINI.ReadString('Usuario',      'USUARIO',      '');
  //edtPara.Text               := vArqINI.ReadString('Para',         'PARA',         '');
  edtCC.Text                 := vArqINI.ReadString('Cc',           'CC',           '');
  edtCCO.Text                := vArqINI.ReadString('Cco',          'CCO',          '');
  edtAssunto.Text            := vArqINI.ReadString('Assunto',      'ASSUNTO',      '');
  cbxPrioridade.Text         := vArqINI.ReadString('Prioridade',   'PRIORIDADE',   '');
  Confirma                   := vArqINI.ReadString('Confirma',     'CONFIRMA',     '');
  Mensagem                   := vArqINI.ReadString('Mensagem',     'MENSAGEM',     '');

  If Confirma = 'SIM' then cbxConfirmaLeitura.Checked := True;
  If Confirma = 'NÃO' then cbxConfirmaLeitura.Checked := False;

  mmMensagem.Lines.Clear;
  mmMensagem.Lines.Add(Mensagem);

  //Fecha arquivo ini
  vArqINI.Free;

  //Coloca a senha como padrao
  If SalvaSenha <> '' then edtSenha.Text := SalvaSenha;
  If SalvaUsuario <> '' then edtUsuario.Text := SalvaUsuario;
end;

procedure TFrmXmlEmail.Fecha_configuracao_padrao(Sender: TObject);
begin
  PnlPadrao.Visible := False;
end;

procedure TFrmXmlEmail.Salva_configuracao_padrao(Sender: TObject);
var
  Arquivo, Confirma, Mensagem : String;
begin

  //Cria o arquivo ini
  Arquivo := '';
  Arquivo := ExtractFilePath(application.ExeName) + 'XmlEmail.ini';
  vArqINI:= TIniFile.Create(Arquivo);

  //Salva os valores no arquivo ini
  Mensagem := mmMensagem_.Lines.Text;
  If  cbxConfirmaLeitura_.Checked = True then Confirma := 'SIM';
  If  cbxConfirmaLeitura_.Checked = False then Confirma := 'NÃO';

  vArqINI.WriteString('LocalOrigem',  'LOCALORIGEM',  edtLocalOrigem_.Text);
  vArqINI.WriteString('LocalDestino', 'LOCALDESTINO', edtLocalDestino_.Text);
  vArqINI.WriteString('De',           'DE',           edtDe_.Text);
  vArqINI.WriteString('Usuario',      'USUARIO',      edtUsuario_.Text);
  vArqINI.WriteString('Para',         'PARA',         edtPara_.Text);
  vArqINI.WriteString('Cc',           'CC',           edtCc_.Text);
  vArqINI.WriteString('Cco',          'CCO',          edtCco_.Text);
  vArqINI.WriteString('Assunto',      'ASSUNTO',      edtAssunto_.Text);
  vArqINI.WriteString('Prioridade',   'PRIORIDADE',   cbxPrioridade_.Text );
  vArqINI.WriteString('Confirma',     'CONFIRMA',     Confirma);
  vArqINI.WriteString('Mensagem',     'MENSAGEM',     Mensagem);

  //Encerra o arquivo ini
  vArqINI.Free;

  //Faz a leitura do arquivo ini
  Arquivo := '';
  Arquivo := ExtractFilePath(application.ExeName) + 'XmlEmail.ini';
  vArqINI:= TIniFile.Create(Arquivo);

  //Le o ini do disco
  edtLocalOrigem.Text        := vArqINI.ReadString('LocalOrigem',  'LOCALORIGEM',   '');
  edtLocalDestino.Text       := vArqINI.ReadString('LocalDestino', 'LOCALDESTINO', '');
  edtDe.Text                 := vArqINI.ReadString('De',           'DE',           '');
  edtUsuario.Text            := vArqINI.ReadString('Usuario',      'USUARIO',      '');
  //edtPara.Text               := vArqINI.ReadString('Para',         'PARA',         '');
  edtCC.Text                 := vArqINI.ReadString('Cc',           'CC',           '');
  edtCCO.Text                := vArqINI.ReadString('Cco',          'CCO',          '');
  edtAssunto.Text            := vArqINI.ReadString('Assunto',      'ASSUNTO',      '');
  cbxPrioridade.Text         := vArqINI.ReadString('Prioridade',   'PRIORIDADE',   '');
  Confirma                   := vArqINI.ReadString('Confirma',     'CONFIRMA',     '');
  Mensagem                   := vArqINI.ReadString('Mensagem',     'MENSAGEM',     '');

  If Confirma = 'SIM' then cbxConfirmaLeitura.Checked := True;
  If Confirma = 'NÃO' then cbxConfirmaLeitura.Checked := False;

  mmMensagem.Lines.Clear;
  mmMensagem.Lines.Add(Mensagem);

  //Fecha arquivo ini
  vArqINI.Free;

  //Fecha a janela
  PnlPadrao.Visible := False;

end;

procedure TFrmXmlEmail.Sai_data_final(Sender: TObject);
begin
  //carrega clientes
  lbxEnviar.Items.Clear;
  lbxNota.Items.Clear;
  lbxAnexo.Items.Clear;
  Carrega_clientes;
  Abre_configuracao_padrao_leitura(Sender);
end;

procedure TFrmXmlEmail.Salva_saiu_senha(Sender: TObject);
begin
  //Salva a saida da senha
  SalvaSenha := edtSenha.Text;
  SalvaUsuario := edtUsuario.Text;
end;

procedure TFrmXmlEmail.Salva_saiu_usuario(Sender: TObject);
begin
  //Salva a saida da senha
  SalvaSenha := edtSenha.Text;
  SalvaUsuario := edtUsuario.Text;
end;

procedure TFrmXmlEmail.Mudou_local_xml(Sender: TObject);
var
  Local : Integer;
begin
  //Mudou o local do armazenamento dos xml
  If RdPasta.Checked    = True then Local := 1;
  If RdBDados.Checked   = True then Local := 2;
  If RdReenviar.Checked = True then Local := 2;
  If Local = 1 then gbxLocalXML.Enabled := True;
  If Local = 2 then gbxLocalXML.Enabled := False;
  //Carrega os clientes
  Carrega_clientes;
end;

procedure TFrmXmlEmail.Abrir_pasta_email(Sender: TObject);
var
  lMaixBoxes : TStringList;
  lCaixaSel : String;
  I : Integer;
begin

  EmailDe.Items.Clear;
  EmailData.Items.Clear;
  EmailAnexo.Items.Clear;
  EmailAssunto.Items.Clear;
  EmailMensagem.Items.Clear;
  //****************************************************************************
  If edXLocalDestino.Text = '' then ShowMessage('Para enviar o email é necessario o endereço de destino dos xmls... Preencha e tente novamente...');
  If edXDe.Text      = '' then ShowMessage('Para enviar o email é necessario o endereço de email de origem... Preencha e tente novamente...');
  If edXSenha.Text   = '' then ShowMessage('Para enviar o email é necessario o digitar a senha do email... Preencha e tente novamente...');
  If edXUsuario.Text = '' then ShowMessage('Para enviar o email é necessario o digitar o nome do usuario do email... Preencha e tente novamente...');

  If IdImap4.ConnectionState <> csAuthenticated then
  If edXLocalDestino.Text <> '' then
  If edXDe.Text      <> '' then
  If edXSenha.Text   <> '' then
  If edXUsuario.Text <> '' then
  begin

    If IdImap4.Connected = True then IdImap4.Disconnect;
    //Salva o login
    IdImap4.host     := 'imap.ceuazul.ind.br';
    IdImap4.Port     := 143;
    IdImap4.Password := edXSenha.Text;
    IdImap4.Username := edXUsuario.Text;

    //Conecta-se e envia o email
    IdImap4.Connect;
    try

      lMaixBoxes := TStringList.Create();

      IdImap4.ListMailBoxes(lMaixBoxes);

      EmailPastas.Items.Clear;
      EmailPastas.Items.Text := lMaixBoxes.Text;

      lMaixBoxes.Free();

      btnAbrirPastaEmail.Enabled := False;
      btnDesconectarEmail.Enabled := True;

      If EmailPastas.Items.Count > 0 then
      For I := 0 to EmailPastas.Items.Count -1 do
      If EmailPastas.Items.Strings[I] = 'INBOX' then
      begin
        //EmailPastas.Items.
        Exit;
      end;

    finally

    end;

  end;
  //****************************************************************************

end;

procedure TFrmXmlEmail.Receber_xml(Sender: TObject);
var
 i1,nummsgs,x: integer;
begin

  If Pasta <> '' then
  If IdImap4.ConnectionState = csAuthenticated then
  begin
    //If IdImap4.SelectMailBox('INBOX') then  IMBOX/Ceuazul/Misael
    If IdImap4.SelectMailBox(Pasta) then
    begin
      nummsgs := 0;
      //IdImap4.StatusMailBox('INBOX',IdImap4.MailBox);
      nummsgs := IdImap4.MailBox.TotalMsgs;
      If nummsgs = 0 then ShowMessage('Não existem mensagens na Caixa de Entrada...');
      If nummsgs > 0 then
      begin
        i1 := IdImap4.MailBox.UnseenMsgs;
        ShowMessage('Qtdade de mensagens: ' + IntToStr(nummsgs) + ' - Mensagens não lidas: ' + IntToStr(i1));
        EmailAssunto.Items.Clear;
        EmailDe.Items.Clear;
        EmailData.Items.Clear;
        EmailMensagem.Items.Clear;
        EmailAnexo.Items.Clear;
        for x:=nummsgs-1 downto 1 do
        begin
          Application.ProcessMessages;
          IdImap4.RetrieveHeader(x,IdMessage);
          EmailAssunto.Items.Add(IdMessage.Subject);
          EmailDe.Items.Add(IdMessage.From.Text);
          EmailData.Items.Add(DatetoStr(IdMessage.Date));
          Caption := IntToStr(x);
          IdMessage.Clear;
        end;
      end;
    end;
    Pasta := '';
    Abrir_pasta_email(Sender);
  end;
end;

procedure TFrmXmlEmail.Desconectar_email(Sender: TObject);
begin
  //Desconectar-se
  If IdImap4.ConnectionState = csAuthenticated then
  begin

    edXSenha.Text := '';
    EmailPastas.Items.Clear;
    EmailAssunto.Items.Clear;
    EmailDe.Items.Clear;
    EmailData.Items.Clear;
    EmailMensagem.Items.Clear;
    EmailAnexo.Items.Clear;

    IdImap4.Disconnect;

    btnAbrirPastaEmail.Enabled := True;
    btnDesconectarEmail.Enabled := False;

  end;
end;

procedure TFrmXmlEmail.Clicou_pasta(Sender: TObject);
begin
  Pasta := '';
  // vamos obter o item selecionado na ListBox
  Pasta := EmailPastas.Items[EmailPastas.ItemIndex];
end;

procedure TFrmXmlEmail.Enviar_automaticamente_emails(Sender: TObject);
begin
  Envio_automatico := 0;
  If MessageDlg('Deseja enviar automaticamente os Emails ?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      Envio_automatico := 1;
      If cbxRazao.Items.Count = 0 then ShowMessage('NÃO EXISTEM EMAILS PARA ENVIAR...');
      If cbxRazao.Items.Count > 0 then
        begin
          While cbxRazao.Items.Count > 0 do
            begin
              Carrega_clientes;
              cbxRazao.ItemIndex := 0;
              cbxRazao.Focused;
              If cbxRazao.Items[cbxRazao.ItemIndex] <> '' then
                begin
                  cbxRazao.Text := cbxRazao.Items[cbxRazao.ItemIndex];
                  Escolheu_cliente_tabela;
                  BtnEnviar.Click;
                end;
            end;//while
        end;
      If cbxRazao.Items.Count = 0 then ShowMessage('ENVIO AUTOMÁTICO TERMINADO COM SUCESSO...');
    end;
end;

procedure TFrmXmlEmail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmXmlEmail:=nil;
//  FrmPrincipal.VEN036.Enabled:= True;
  FrmPrincipal.ACVEN036.Enabled:= True;
  Action:=caFree;
end;

end.


