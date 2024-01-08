{------------------------------------------------------------------------------+
|                             CREDITOS DO SISTEMA                              |
+------------------------------------------------------------------------------+
|Edmilde Freire Montagnoli                                                     |
|Analista de Desenvolvimento de Sistemas                                       |
|Emails: edmilde@gmail.com ~ edmilde@hotmail.com ~ edmilde@aedu.com            |
+------------------------------------------------------------------------------+
|        Desenvolvido para: Céu Azul Alimentos - 06/08/2012 - 1.0.0.0          |
+------------------------------------------------------------------------------}
unit UFrmCarregaNFe;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, xmldom, XMLIntf, Mask, msxmldom, XMLDoc, Grids,
  DBGrids, Buttons, ExtCtrls, DB, MemDS, DBAccess, Ora, ComCtrls, ShellApi,
  Principal, System.Generics.Collections;

type
  TFrmCarregaNFe = class(TForm)
    XMLDoc: TXMLDocument;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    cbxRazao: TComboBox;
    Label7: TLabel;
    edtDataIni: TMaskEdit;
    Label8: TLabel;
    edtDataFim: TMaskEdit;
    Label30: TLabel;
    edtNrNotaI: TEdit;
    Label13: TLabel;
    edtCNPJ: TEdit;
    Label1: TLabel;
    edtNrNotaF: TEdit;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    DBGrid3: TDBGrid;
    btnAtualizar: TBitBtn;
    pnlStatus: TPanel;
    Panel13: TPanel;
    Qry_Cliente: TOraQuery;
    Qry_XMLI: TOraQuery;
    Dts_XMLI: TDataSource;
    Dts_XMLN: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Qry_Notas: TOraQuery;
    Dts_Notas: TDataSource;
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
    Panel14: TPanel;
    Label4: TLabel;
    edtLocal: TEdit;
    spbLocalizaDestino: TSpeedButton;
    Qry_NFEXML: TOraQuery;
    Qry_NFEXMLEMPRESA: TStringField;
    Qry_NFEXMLFILIAL: TIntegerField;
    Qry_NFEXMLID_NFE_XML: TFloatField;
    Qry_NFEXMLID_NOTAFISC: TFloatField;
    Qry_NFEXMLDT_EMISNOTAFISC: TStringField;
    Qry_NFEXMLNR_NOTAFISC: TFloatField;
    Qry_NFEXMLRECIBO_ENVIO: TStringField;
    Qry_NFEXMLRECIBO_RETORNO: TStringField;
    Qry_NFEXMLDATA_ENVIO: TStringField;
    Qry_NFEXMLNFE_NUMERO: TFloatField;
    Qry_NFEXMLNFE_CHAVE: TStringField;
    Qry_NFEXMLNFE_DT_RECEBTO: TStringField;
    Qry_NFEXMLNFE_PROTOCOLO: TStringField;
    Qry_NFEXMLNFE_CHAVE_DIGITAL: TStringField;
    Qry_NFEXMLNFE_LOCAL: TStringField;
    Qry_NFEXMLNFE_XML: TBlobField;
    Qry_NFEXMLENVIO: TStringField;
    Qry_NFEXMLRETORNO: TStringField;
    Qry_NFEXMLAUTORIZACAO: TStringField;
    Qry_NFEXMLSR_NOTAFISC: TStringField;
    Qry_NFEXMLLOTE: TFloatField;
    Qry_NFEXMLDANFE: TStringField;
    Qry_NFEXMLCANCELADA: TStringField;
    Qry_NFEXMLINUTILIZADA: TStringField;
    Qry_NFEXMLEMAIL: TStringField;
    Qry_XMLN: TOraQuery;
    Label5: TLabel;
    edtTodas: TEdit;
    edtIncluidas: TEdit;
    edtNIncluidas: TEdit;
    Progresso: TProgressBar;
    ListaXML: TListBox;
    Panel15: TPanel;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    edtMovidas: TEdit;
    OraSql: TOraQuery;
    cbxCompletar: TCheckBox;
    rdbTodas: TRadioButton;
    rdbNCanceladas: TRadioButton;
    rdbSCanceladas: TRadioButton;
    CF01: TRadioButton;
    CF03: TRadioButton;
    CF02: TRadioButton;
    Shape1: TShape;
    GroupBox1: TGroupBox;
    XmlEntrada: TRadioButton;
    XmlSaida: TRadioButton;
    Qry_NotasCNPJ: TStringField;
    Qry_NotasCFOP: TStringField;
    Qry_NotasID_NOTA: TFloatField;
    Qry_NotasNR_NOTA: TFloatField;
    Qry_NotasDT_EMISSAO: TDateTimeField;
    Qry_NotasDT_SAIDA: TDateTimeField;
    Qry_NotasSERIE: TStringField;
    Qry_NotasID_CLIENTE: TFloatField;
    Qry_NotasNM_CLIENTE: TStringField;
    Qry_NFEXML_: TOraQuery;
    Qry_Cliente_: TOraQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    BlobField1: TBlobField;
    StringField5: TStringField;
    FloatField4: TFloatField;
    Qry_XMLICNPJ: TStringField;
    Qry_XMLICFOP: TStringField;
    Qry_XMLIID_NOTA: TFloatField;
    Qry_XMLINR_NOTA: TFloatField;
    Qry_XMLIDT_EMISSAO: TDateTimeField;
    Qry_XMLIDT_SAIDA: TDateTimeField;
    Qry_XMLISERIE: TStringField;
    Qry_XMLIID_CLIENTE: TFloatField;
    Qry_XMLINM_CLIENTE: TStringField;
    Sb_Sair: TSpeedButton;
    Qry_NotasCHAVE_NFE: TStringField;
    rdbSNFe: TRadioButton;
    Qry_NotasCHV: TOraQuery;
    Qry_NotasCHVEMPRESA: TStringField;
    Qry_NotasCHVFILIAL: TIntegerField;
    Qry_NotasCHVID_MOVIFISCAL: TFloatField;
    Qry_NotasCHVID_PEDIVEND: TFloatField;
    Qry_NotasCHVID_CLIENTE: TFloatField;
    Qry_NotasCHVDT_ENTRPEDIVEND: TDateTimeField;
    Qry_NotasCHVSERIE: TStringField;
    Qry_NotasCHVNR_NOTA: TFloatField;
    Qry_NotasCHVCFOP: TStringField;
    Qry_NotasCHVSITUTRIBUTARIA: TStringField;
    Qry_NotasCHVALIQ_ICMS: TFloatField;
    Qry_NotasCHVVL_TOTALNF: TFloatField;
    Qry_NotasCHVVL_ICMS: TFloatField;
    Qry_NotasCHVDCA: TStringField;
    Qry_NotasCHVOBS: TStringField;
    Qry_NotasCHVFL_CANCEL: TStringField;
    Qry_NotasCHVID_ESTADO: TFloatField;
    Qry_NotasCHVID_PAIS: TFloatField;
    Qry_NotasCHVMEMOEXP: TStringField;
    Qry_NotasCHVFL_CFOP: TStringField;
    Qry_NotasCHVBASE_ICMS: TFloatField;
    Qry_NotasCHVISENTAS_ICMS: TFloatField;
    Qry_NotasCHVOUTRAS_ICMS: TFloatField;
    Qry_NotasCHVBASE_IPI: TFloatField;
    Qry_NotasCHVALIQ_IPI: TFloatField;
    Qry_NotasCHVISENTAS_IPI: TFloatField;
    Qry_NotasCHVOUTRAS_IPI: TFloatField;
    Qry_NotasCHVVL_IPI: TFloatField;
    Qry_NotasCHVDT_EMBARQUE: TDateTimeField;
    Qry_NotasCHVID_FORNECEDOR: TFloatField;
    Qry_NotasCHVUNIDADES: TFloatField;
    Qry_NotasCHVDT_ENTRADA: TDateTimeField;
    Qry_NotasCHVDESDOBRAMENTO: TStringField;
    Qry_NotasCHVCTB: TStringField;
    Qry_NotasCHVID_USUARIO: TIntegerField;
    Qry_NotasCHVFL_BLOQ: TStringField;
    Qry_NotasCHVDT_BLOQ: TDateTimeField;
    Qry_NotasCHVIPI_NAOCREDTOT: TFloatField;
    Qry_NotasCHVDT_DIGITACAO: TDateTimeField;
    Qry_NotasCHVID_ESPECIE: TFloatField;
    Qry_NotasCHVVL_IR: TFloatField;
    Qry_NotasCHVVL_PIS: TFloatField;
    Qry_NotasCHVVL_COFINS: TFloatField;
    Qry_NotasCHVVL_CSLL: TFloatField;
    Qry_NotasCHVVL_ISS: TFloatField;
    Qry_NotasCHVVL_INSS: TFloatField;
    Qry_NotasCHVNR_SERVICO: TStringField;
    Qry_NotasCHVVL_NF_DEV: TFloatField;
    Qry_NotasCHVCHAVE_NFE: TStringField;
    Qry_XMLICPF: TStringField;
    Qry_NotasCPF: TStringField;
    rdbPRC: TCheckBox;
    Qry_XMLIVALOR: TFloatField;
    Qry_NotasVALOR: TFloatField;
    DataMenos: TSpeedButton;
    DataMais: TSpeedButton;
    ckbMensagens: TCheckBox;
    pnlAuditoria: TPanel;
    MemXml: TMemo;
    Panel12: TPanel;
    Panel16: TPanel;
    BitBtn2: TBitBtn;
    btnFechaAuditoria: TBitBtn;
    btnAbreAuditoria: TButton;
    Qry_XMLNCPF: TStringField;
    Qry_XMLNVALOR: TFloatField;
    Qry_XMLNICMS: TFloatField;
    Qry_XMLNCNPJ: TStringField;
    Qry_XMLNCFOP: TStringField;
    Qry_XMLNID_NOTA: TFloatField;
    Qry_XMLNNR_NOTA: TFloatField;
    Qry_XMLNDT_EMISSAO: TDateTimeField;
    Qry_XMLNDT_SAIDA: TDateTimeField;
    Qry_XMLNSERIE: TStringField;
    Qry_XMLNID_CLIENTE: TFloatField;
    Qry_XMLNNM_CLIENTE: TStringField;
    Qry_NFEXML_EMPRESA: TStringField;
    Qry_NFEXML_FILIAL: TIntegerField;
    Qry_NFEXML_ID_NFE_E_XML: TFloatField;
    Qry_NFEXML_ID_MOVIFISCAL: TFloatField;
    Qry_NFEXML_DT_ENTRADA: TDateTimeField;
    Qry_NFEXML_NR_NOTA: TFloatField;
    Qry_NFEXML_SERIE: TStringField;
    Qry_NFEXML_RECIBO_ENVIO: TStringField;
    Qry_NFEXML_RECIBO_RETORNO: TStringField;
    Qry_NFEXML_DATA_ENVIO: TStringField;
    Qry_NFEXML_NFE_NUMERO: TFloatField;
    Qry_NFEXML_NFE_CHAVE: TStringField;
    Qry_NFEXML_NFE_DT_RECEBTO: TStringField;
    Qry_NFEXML_NFE_PROTOCOLO: TStringField;
    Qry_NFEXML_NFE_CHAVE_DIGITAL: TStringField;
    Qry_NFEXML_NFE_LOCAL: TStringField;
    Qry_NFEXML_NFE_XML: TBlobField;
    Qry_NFEXML_ENVIO: TStringField;
    Qry_NFEXML_RETORNO: TStringField;
    Qry_NFEXML_AUTORIZACAO: TStringField;
    Qry_NFEXML_LOTE: TFloatField;
    Qry_NFEXML_DANFE: TStringField;
    Qry_NFEXML_CANCELADA: TStringField;
    Qry_NFEXML_INUTILIZADA: TStringField;
    Qry_NFEXML_EMAIL: TStringField;
    procedure Localiza_local_xml(Sender: TObject);
    procedure Executa_filtro_notas_fiscais(Sender: TObject);
    procedure Executa_filtro_notas_fiscais_incluidas;
    procedure Executa_filtro_notas_fiscais_nao_incluidas;
    procedure Saindo(Sender: TObject);
    procedure Atualiza_bdados_xml(Sender: TObject);
    Procedure Verifica_grava_xml_banco(OCNPJ: String; NRSERIE: String; NRNOTA: String; EMISSAO: String; SAIDA: String; OCFOP: String; OID: Integer);
    Procedure Arquivo_lista( ASource : string; ADirList :TListBox);
    procedure edtLocalKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Localiza_movidas_xml(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function MoveCopia(const Origem, Destino : string; Operacao, Modo:Integer) : Boolean;
    function Verifica_xml_valido(Arquivo : String; OCNPJ: String; NRSERIE: String; NRNOTA: String; EMISSAO: String; SAIDA: String; OCFOP: String): Integer;
    function Conv_data(AData: TDatetime; Tipo: integer):String;
    function Procura_numero_no_arquivo(Arquivo : String; ANF: String): Integer;
    procedure Marca_ES(Sender: TObject);
    procedure Executa_OraSql(OSql: String);
    procedure Abre_auditoria(Sender: TObject);
    procedure Fecha_auditoria(Sender: TObject);
    procedure Imprime_auditoria(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmCarregaNFe: TFrmCarregaNFe;
  XNF, XSERIE, XCNPJ, XtpAmb, XverAplic, XchNFe, XdhRecbto, XnProt, XdigVal,
  XcStat, XxMotivo, XEmi, XSaiEnt, TPNF, TPCT : String;

implementation

Uses Global, USeleFile;

{$R *.dfm}

function TFrmCarregaNFe.Conv_data(AData: TDatetime; Tipo: integer):String;
var
  Present: TDatetime;
  ODia, SDia, SMes, SAno, Inicio, Fim : String;
  Year, Month, Day, Ano : Word;
begin

  Try

    DecodeDate(AData, Year, Month, Day);

    Ano := Year - 2000;
    If Ano < 10 then SAno := '0' + InttoStr(Ano);
    If Ano > 9 then SAno := InttoStr(Ano);

    If Day < 10 then SDia := '0' + InttoStr(Day);
    If Day > 9 then SDia := InttoStr(Day);

    If Month < 10 then SMes := '0' + InttoStr(Month);
    If Month > 9 then SMes := InttoStr(Month);

    If tipo = 1 then ODia := SDia + '/' + SMes + '/' + InttoStr(Year);
    If tipo = 2 then ODia := InttoStr(Year) + '-' + SMes + '-' + SDia;

    Result := ODia;

  except

    Result := DatetoStr(Date);

  end;

end;

procedure TFrmCarregaNFe.Executa_OraSql(OSql: String);
begin
  OraSQL.SQL.Clear;
  OraSQL.SQL.Add(OSql);
  OraSQL.Execute;
  OraSQL.SQL.Clear;
  OraSQL.SQL.Add('COMMIT');
  OraSQL.Execute;
end;

procedure TFrmCarregaNFe.Localiza_local_xml(Sender: TObject);
var
  dlg: TOpenDialog;
begin

  //Apaga a lista de xmsl
  ListaXML.Items.Clear;

  //Anexar de uma pasta
  dlg := TOpenDialog.Create(Self);
  // podia ser dlg := TOpenDialog.Create(nil);
                                                      
  try

    dlg.DefaultExt := 'xml';
    dlg.Filter     := 'Arquivos xml (*.xml)|*.xml|Arquivos (*.*)|*.*';
    dlg.Options    := [ofHideReadOnly, ofPathMustExist, ofFileMustExist];
    dlg.Title      := 'Local dos Arquivos Xml armazenados';
    dlg.InitialDir := edtLocal.Text;

    If dlg.Execute then
    begin

      // dlg.FileName tem o nome do arquivo
      edtLocal.Text := ExtractFilePath(dlg.FileName);

      //Carrega os xmls
      If edtLocal.Text <> '' then Arquivo_lista(edtLocal.Text + '*.xml',ListaXML);
      If edtLocal.Text = '' then Arquivo_lista(ExtractFilePath(Application.ExeName) + '*.xml',ListaXML);

    end;

  finally

    dlg.Free;

  end;

  If Qry_XMLN.RecordCount > 0 then
  If ListaXML.Items.Count > 0 then btnAtualizar.Enabled    := True;

end;

procedure TFrmCarregaNFe.Executa_filtro_notas_fiscais(Sender: TObject);
var
  Filtro : Integer;
begin

  If edtDataIni.Text <> '' then If edtDataIni.Text <> '  /  /    ' then
  If edtDataFim.Text <> '' then If edtDataFim.Text <> '  /  /    ' then
  begin

    If XmlSaida.Checked = True then
    begin

      //Zera contadores
      btnAtualizar.Enabled  := False;
      edtTodas.Text      := '0';
      edtIncluidas.Text  := '0';
      edtNIncluidas.Text := '0';

      //Define
      Filtro := 0;

      If cbxCompletar.Checked = False then
      begin

        //Filtra a tabela de notas de venda = nota_fiscal
        Qry_Notas.Close;
        Qry_Notas.SQL.Clear;

        Qry_Notas.SQL.Add('Select N.VL_NOTAFISC AS VALOR, F.NR_CPFCLIE AS CPF, F.NR_CNPJCLIE AS CNPJ, N.NR_CFOP_NOTAFISC AS CFOP,');
        Qry_Notas.SQL.Add(' N.ID_NOTAFISC AS ID_NOTA, N.NR_NOTAFISC AS NR_NOTA, N.DT_EMISNOTAFISC AS DT_EMISSAO,');
        Qry_Notas.SQL.Add(' N.dt_saidnotafisc  AS DT_SAIDA, N.SG_SERINOTAFISC_NOTAFISC AS SERIE, N.ID_CLIENTE AS ID_CLIENTE,');
        Qry_Notas.SQL.Add(' F.NM_CLIENTE AS NM_CLIENTE, '''' AS CHAVE_NFE from nota_fiscal N, CLIENTE F where N.ID_CLIENTE = F.ID_CLIENTE');
        Qry_Notas.SQL.Add(' AND N.FILIAL = :FILIAL ');

        If rdbNCanceladas.Checked = True then Qry_Notas.SQL.Add(' and nvl(N.fl_cancnotafisc,''' + 'N' + ''')= ''' + 'N' + '''');
        If rdbSCanceladas.Checked = True then Qry_Notas.SQL.Add(' and nvl(N.fl_cancnotafisc,''' + 'S' + ''')= ''' + 'S' + '''');

        If Length(Trim(edtDataIni.Text)) >= 8 then
        If Length(Trim(edtDataFim.Text)) >= 8 then
        begin
          Filtro := 1;
          Qry_Notas.SQL.Add(' and N.DT_EMISNOTAFISC >= TO_DATE(' + QuotedStr(edtDataIni.Text + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
          Qry_Notas.SQL.Add(' and N.DT_EMISNOTAFISC <= TO_DATE(' + QuotedStr(edtDataFim.Text + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
        end;

        If edtNrNotaI.Text <> '' then
        If edtNrNotaF.Text <> '' then
        If Strtoint(edtNrNotaI.Text) > 0 then
        If Strtoint(edtNrNotaF.Text) > 0 then
        If Strtoint(edtNrNotaI.Text) <= Strtoint(edtNrNotaF.Text) then
        begin
          Filtro := 1;
          Qry_Notas.SQL.Add(' AND N.NR_NOTAFISC >= ' + edtNrNotaI.Text);
          Qry_Notas.SQL.Add(' AND N.NR_NOTAFISC <= ' + edtNrNotaF.Text);
        end;

        If edtCNPJ.Text <> '' then
        begin
          Filtro := 1;
          Qry_Notas.SQL.Add(' AND CNPJ = ' + edtCNPJ.Text);
        end;

        Qry_Notas.SQL.Add(' ORDER BY N.NR_NOTAFISC');
        Qry_Notas.ParamByName('FILIAL').Value := gi_Filial;

        If Filtro = 1 then
        begin

          //Tem filtro de notas
          //Qry_Notas.SQL.SaveToFile('QRY_NOTAS_S.sql');
          Qry_Notas.Open;
          Qry_Notas.Last;
          If Qry_Notas.RecordCount > 0 then
          begin
            edtTodas.Text := InttoStr(Qry_Notas.RecordCount);
          end;

          //Carrega os arquivos xml
          Executa_filtro_notas_fiscais_incluidas;
          Executa_filtro_notas_fiscais_nao_incluidas;

          //atualiza pasta de xmls
          If edtLocal.Text <> '' then Arquivo_lista(edtLocal.Text + '*.xml',ListaXML);

        end;

      end;

      If cbxCompletar.Checked = True then
      begin

      end;

    end;

    If XmlEntrada.Checked = True then
    begin

      //Zera contadores
      btnAtualizar.Enabled  := False;
      edtTodas.Text      := '0';
      edtIncluidas.Text  := '0';
      edtNIncluidas.Text := '0';

      //Define
      Filtro := 0;

      If cbxCompletar.Checked = False then
      begin

        //Filtra a tabela de notas de venda = nota_fiscal
        Qry_Notas.Close;
        Qry_Notas.SQL.Clear;

        Qry_Notas.SQL.Add('SELECT N.VL_TOTALNF AS VALOR, F.NR_CPFFORN AS CPF, F.NR_CNPJFORN AS CNPJ, N.cfop AS CFOP, n.id_movifiscal AS ID_NOTA, n.nr_nota AS NR_NOTA,');
        Qry_Notas.SQL.Add(' n.dt_entrada AS DT_EMISSAO, n.dt_entrpedivend AS DT_SAIDA, n.serie AS SERIE,');
        Qry_Notas.SQL.Add(' n.ID_FORNECEDOR AS ID_CLIENTE, F.NM_FORNECEDOR AS NM_CLIENTE, CHAVE_NFE');
        Qry_Notas.SQL.Add(' FROM CA_MOVIFISCAL_E N, FORNECEDOR F WHERE N.ID_FORNECEDOR = F.ID_FORNECEDOR');
        Qry_Notas.SQL.Add(' AND N.FILIAL = :FILIAL');

        //If rdbSNFe.Checked = True then Qry_Notas.SQL.Add(' AND N.ID_ESPECIE = 4');
        If rdbSNFe.Checked = True then Qry_Notas.SQL.Add(' AND ( (N.ID_ESPECIE = 4) OR (N.ID_ESPECIE = 10) OR (N.ID_ESPECIE = 8) )');

        If rdbNCanceladas.Checked = True then Qry_Notas.SQL.Add(' and nvl(N.FL_CANCEL,''' + 'N' + ''')= ''' + 'N' + '''');
        If rdbSCanceladas.Checked = True then Qry_Notas.SQL.Add(' and nvl(N.FL_CANCEL,''' + 'S' + ''')= ''' + 'S' + '''');

        If Length(Trim(edtDataIni.Text)) >= 8 then
        If Length(Trim(edtDataFim.Text)) >= 8 then
        begin
          Filtro := 1;
          Qry_Notas.SQL.Add(' and n.dt_entrada >= TO_DATE(' + QuotedStr(edtDataIni.Text + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
          Qry_Notas.SQL.Add(' and n.dt_entrada <= TO_DATE(' + QuotedStr(edtDataFim.Text + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
        end;

        If edtNrNotaI.Text <> '' then
        If edtNrNotaF.Text <> '' then
        If Strtoint(edtNrNotaI.Text) > 0 then
        If Strtoint(edtNrNotaF.Text) > 0 then
        If Strtoint(edtNrNotaI.Text) <= Strtoint(edtNrNotaF.Text) then
        begin
          Filtro := 1;
          Qry_Notas.SQL.Add(' and n.nr_nota >= ' + edtNrNotaI.Text);
          Qry_Notas.SQL.Add(' and n.nr_nota <= ' + edtNrNotaF.Text);
        end;

        If edtCNPJ.Text <> '' then
        begin
          Filtro := 1;
          Qry_Notas.SQL.Add(' and F.NR_CNPJCLIE = ' + edtCNPJ.Text);
        end;

        Qry_Notas.SQL.Add(' order by n.nr_nota');
        Qry_Notas.ParamByName('FILIAL').Value := gi_Filial;

        If Filtro = 1 then
        begin

          //Tem filtro de notas
          //Qry_Notas.SQL.SaveToFile('QRY_NOTAS_E.sql');
          Qry_Notas.Open;
          Qry_Notas.Last;
          If Qry_Notas.RecordCount > 0 then
          begin
            edtTodas.Text := InttoStr(Qry_Notas.RecordCount);
          end;

          //Carrega os arquivos xml
          Executa_filtro_notas_fiscais_incluidas;
          Executa_filtro_notas_fiscais_nao_incluidas;

          //atualiza pasta de xmls
          If edtLocal.Text <> '' then Arquivo_lista(edtLocal.Text + '*.xml',ListaXML);

        end;

      end;

      If cbxCompletar.Checked = True then
      begin

      end;

    end;

  end;

end;

procedure TFrmCarregaNFe.Executa_filtro_notas_fiscais_incluidas;
var
  Filtro, XMLI : Integer;
begin

  If XmlSaida.Checked = True then
  begin

    //Define
    XMLI   := 0;
    Filtro := 0;

    //Filtra a tabela de notas de venda = nota_fiscal
    Qry_XMLI.Close;
    Qry_XMLI.SQL.Clear;

    Qry_XMLI.SQL.Add('Select N.VL_NOTAFISC AS VALOR, F.NR_CPFCLIE AS CPF, F.NR_CNPJCLIE AS CNPJ, N.NR_CFOP_NOTAFISC AS CFOP, N.ID_NOTAFISC AS ID_NOTA,');
    Qry_XMLI.SQL.Add(' N.NR_NOTAFISC AS NR_NOTA, N.DT_EMISNOTAFISC AS DT_EMISSAO, N.dt_saidnotafisc AS DT_SAIDA,');
    Qry_XMLI.SQL.Add(' N.SG_SERINOTAFISC_NOTAFISC AS SERIE, N.ID_CLIENTE AS ID_CLIENTE, F.NM_CLIENTE AS NM_CLIENTE');
    Qry_XMLI.SQL.Add(' FROM NOTA_FISCAL N, CLIENTE F, NOTA_FISCAL_XML X WHERE F.ID_CLIENTE = N.ID_CLIENTE');
    Qry_XMLI.SQL.Add(' AND X.FILIAL = :FILIAL ');
    Qry_XMLI.SQL.Add(' and x.id_notafisc (+) = n.id_notafisc and x.nfe_xml is not null');

    If rdbNCanceladas.Checked = True then Qry_XMLI.SQL.Add(' and nvl(N.fl_cancnotafisc,''' + 'N' + ''')= ''' + 'N' + '''');
    If rdbSCanceladas.Checked = True then Qry_XMLI.SQL.Add(' and nvl(N.fl_cancnotafisc,''' + 'S' + ''')= ''' + 'S' + '''');

    If Length(Trim(edtDataIni.Text)) >= 8 then
    If Length(Trim(edtDataFim.Text)) >= 8 then
    begin
      Filtro := 1;
      Qry_XMLI.SQL.Add(' and N.DT_EMISNOTAFISC >= TO_DATE(' + QuotedStr(edtDataIni.Text + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
      Qry_XMLI.SQL.Add(' and N.DT_EMISNOTAFISC <= TO_DATE(' + QuotedStr(edtDataFim.Text + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
    end;

    If edtNrNotaI.Text <> '' then
    If edtNrNotaF.Text <> '' then
    If Strtoint(edtNrNotaI.Text) > 0 then
    If Strtoint(edtNrNotaF.Text) > 0 then
    If Strtoint(edtNrNotaI.Text) <= Strtoint(edtNrNotaF.Text) then
    begin
      Filtro := 1;
      Qry_XMLI.SQL.Add(' and n.nr_notafisc >= ' + edtNrNotaI.Text);
      Qry_XMLI.SQL.Add(' and n.nr_notafisc <= ' + edtNrNotaF.Text);
    end;

    If edtCNPJ.Text <> '' then
    begin
      Filtro := 1;
      Qry_XMLI.SQL.Add(' and CNPJ = ' + edtCNPJ.Text);
    end;

    Qry_XMLI.SQL.Add(' order by n.nr_notafisc');
    Qry_XMLI.ParamByName('FILIAL').Value := gi_Filial;

    If Filtro = 1 then
    begin
      //Qry_XMLI.SQL.SaveToFile('QRY_XMLI_S.sql');
      Qry_XMLI.Open;
      Qry_XMLI.Last;
      XMLI := Qry_XMLI.RecordCount;
      edtIncluidas.Text := InttoStr(XMLI);
    end;

  end;

  If XmlEntrada.Checked = True then
  begin

    //Define
    XMLI   := 0;
    Filtro := 0;

    //Filtra a tabela de notas de venda = nota_fiscal
    Qry_XMLI.Close;
    Qry_XMLI.SQL.Clear;

    Qry_XMLI.SQL.Add('SELECT N.VL_TOTALNF AS VALOR, F.NR_CPFFORN AS CPF, F.NR_CNPJFORN AS CNPJ, N.cfop AS CFOP, n.id_movifiscal AS ID_NOTA, n.nr_nota AS NR_NOTA,');
    Qry_XMLI.SQL.Add(' n.dt_entrada AS DT_EMISSAO, n.dt_entrpedivend AS DT_SAIDA, n.serie AS SERIE,');
    Qry_XMLI.SQL.Add(' n.id_FORNECEDOR AS ID_CLIENTE, f.nm_FORNECEDOR AS NM_CLIENTE');
    Qry_XMLI.SQL.Add(' FROM CA_MOVIFISCAL_E N, FORNECEDOR F WHERE N.ID_FORNECEDOR = F.ID_FORNECEDOR');
    Qry_XMLI.SQL.Add(' AND N.FILIAL = :FILIAL ');
    Qry_XMLI.SQL.Add(' AND N.ID_MOVIFISCAL IN (SELECT X.ID_MOVIFISCAL FROM CA_MOVIFISCAL_E_XML X WHERE 0=0');
    Qry_XMLI.SQL.Add(' --X.DT_ENTRADA >= TO_DATE(' + QuotedStr(edtDataIni.Text + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
    Qry_XMLI.SQL.Add(' --and X.DT_ENTRADA <= TO_DATE(' + QuotedStr(edtDataFim.Text + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
    Qry_XMLI.SQL.Add(' and x.nfe_xml is not null )');

    //If rdbSNFe.Checked = True then Qry_XMLI.SQL.Add(' AND  N.ID_ESPECIE = 4');
    If rdbSNFe.Checked = True then Qry_XMLI.SQL.Add(' AND ( (N.ID_ESPECIE = 4) OR (N.ID_ESPECIE = 10) OR (N.ID_ESPECIE = 8) )');

    If rdbNCanceladas.Checked = True then Qry_XMLI.SQL.Add(' and nvl(N.FL_CANCEL,''' + 'N' + ''')= ''' + 'N' + '''');
    If rdbSCanceladas.Checked = True then Qry_XMLI.SQL.Add(' and nvl(N.FL_CANCEL,''' + 'S' + ''')= ''' + 'S' + '''');

    If Length(Trim(edtDataIni.Text)) >= 8 then
    If Length(Trim(edtDataFim.Text)) >= 8 then
    begin
      Filtro := 1;
      Qry_XMLI.SQL.Add(' and N.DT_ENTRADA >= TO_DATE(' + QuotedStr(edtDataIni.Text + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
      Qry_XMLI.SQL.Add(' and N.DT_ENTRADA <= TO_DATE(' + QuotedStr(edtDataFim.Text + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
    end;

    If edtNrNotaI.Text <> '' then
    If edtNrNotaF.Text <> '' then
    If Strtoint(edtNrNotaI.Text) > 0 then
    If Strtoint(edtNrNotaF.Text) > 0 then
    If Strtoint(edtNrNotaI.Text) <= Strtoint(edtNrNotaF.Text) then
    begin
      Filtro := 1;
      Qry_XMLI.SQL.Add(' and N.NR_NOTA >= ' + edtNrNotaI.Text);
      Qry_XMLI.SQL.Add(' and N.NR_NOTA <= ' + edtNrNotaF.Text);
    end;

    If edtCNPJ.Text <> '' then
    begin
      Filtro := 1;
      Qry_XMLI.SQL.Add(' and F.NR_CNPJCLIE = ' + edtCNPJ.Text);
    end;

    Qry_XMLI.SQL.Add(' order by N.NR_NOTA');
    Qry_XMLI.ParamByName('FILIAL').Value := gi_Filial;

    If Filtro = 1 then
    begin
      //Qry_XMLI.SQL.SaveToFile('QRY_XMLI_E.sql');
      Qry_XMLI.Open;
      Qry_XMLI.Last;
      XMLI := Qry_XMLI.RecordCount;
      edtIncluidas.Text := InttoStr(XMLI);
    end;

  end;

end;

procedure TFrmCarregaNFe.Executa_filtro_notas_fiscais_nao_incluidas;
var
  Filtro, XMLN : Integer;
begin

  If XmlSaida.Checked = True then
  begin

    //Define
    XMLN   := 0;
    Filtro := 0;

    //Filtra a tabela de notas de venda = nota_fiscal
    Qry_XMLN.Close;
    Qry_XMLN.SQL.Clear;
    Qry_XMLN.SQL.Add(' SELECT');
    Qry_XMLN.SQL.Add('   F.NR_CPFCLIE AS CPF,');
    Qry_XMLN.SQL.Add('   N.VL_NOTAFISC AS VALOR,');
    Qry_XMLN.SQL.Add('   N.VL_ICMSNOTAFISC AS ICMS,');
    Qry_XMLN.SQL.Add('   F.NR_CNPJCLIE AS CNPJ,');
    Qry_XMLN.SQL.Add('   N.NR_CFOP_NOTAFISC AS CFOP,');
    Qry_XMLN.SQL.Add('   N.ID_NOTAFISC AS ID_NOTA,');
    Qry_XMLN.SQL.Add('   N.NR_NOTAFISC AS NR_NOTA,');
    Qry_XMLN.SQL.Add('   N.DT_EMISNOTAFISC AS DT_EMISSAO,');
    Qry_XMLN.SQL.Add('   N.dt_saidnotafisc AS DT_SAIDA,');
    Qry_XMLN.SQL.Add('   N.SG_SERINOTAFISC_NOTAFISC AS SERIE,');
    Qry_XMLN.SQL.Add('   N.ID_CLIENTE AS ID_CLIENTE,');
    Qry_XMLN.SQL.Add('   F.NM_CLIENTE AS NM_CLIENTE');
    Qry_XMLN.SQL.Add(' from');
    Qry_XMLN.SQL.Add('   nota_fiscal N,');
    Qry_XMLN.SQL.Add('   CLIENTE F,');
    Qry_XMLN.SQL.Add('   nota_fiscal_xml x');
    Qry_XMLN.SQL.Add(' where');
    Qry_XMLN.SQL.Add(' F.ID_CLIENTE = N.ID_CLIENTE');
    Qry_XMLN.SQL.Add(' AND N.FILIAL = :FILIAL');
    Qry_XMLN.SQL.Add(' and x.id_notafisc (+) = n.id_notafisc and x.nfe_xml is null');

    If rdbNCanceladas.Checked = True then Qry_XMLN.SQL.Add(' and nvl(N.fl_cancnotafisc,''' + 'N' + ''')= ''' + 'N' + '''');
    If rdbSCanceladas.Checked = True then Qry_XMLN.SQL.Add(' and nvl(N.fl_cancnotafisc,''' + 'S' + ''')= ''' + 'S' + '''');

    If Length(Trim(edtDataIni.Text)) >= 8 then
    If Length(Trim(edtDataFim.Text)) >= 8 then
    begin
      Filtro := 1;
      Qry_XMLN.SQL.Add(' and N.DT_EMISNOTAFISC >= TO_DATE(' + QuotedStr(edtDataIni.Text + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
      Qry_XMLN.SQL.Add(' and N.DT_EMISNOTAFISC <= TO_DATE(' + QuotedStr(edtDataFim.Text + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
    end;

    If edtNrNotaI.Text <> '' then
    If edtNrNotaF.Text <> '' then
    If Strtoint(edtNrNotaI.Text) > 0 then
    If Strtoint(edtNrNotaF.Text) > 0 then
    If Strtoint(edtNrNotaI.Text) <= Strtoint(edtNrNotaF.Text) then
    begin
      Filtro := 1;
      Qry_XMLN.SQL.Add(' and n.nr_notafisc >= ' + edtNrNotaI.Text);
      Qry_XMLN.SQL.Add(' and n.nr_notafisc <= ' + edtNrNotaF.Text);
    end;

    If edtCNPJ.Text <> '' then
    begin
      Filtro := 1;
      Qry_XMLN.SQL.Add(' and CNPJ = ' + edtCNPJ.Text);
    end;

    Qry_XMLN.SQL.Add(' order by n.nr_notafisc');

    Qry_XMLN.ParamByName('FILIAL').Value := gi_Filial;

    If Filtro = 1 then
    begin
      //Qry_XMLN.SQL.SaveToFile('QRY_XMLN_S.sql');
      Qry_XMLN.Open;
      Qry_XMLN.Last;
      XMLN := Qry_XMLN.RecordCount;
      edtNIncluidas.Text := InttoStr(XMLN);
      //Abilita o botão atualizar
      If Qry_XMLN.RecordCount > 0 then
      If ListaXML.Items.Count > 0 then
      begin
        btnAtualizar.Enabled    := True;
      end;
    end;

  end;

  If XmlEntrada.Checked = True then
  begin

    //Define
    XMLN   := 0;
    Filtro := 0;

    //Filtra a tabela de notas de venda = nota_fiscal
    Qry_XMLN.Close;
    Qry_XMLN.SQL.Clear;
    Qry_XMLN.SQL.Add(' SELECT');
    Qry_XMLN.SQL.Add(' F.NR_CPFFORN AS CPF,');
    Qry_XMLN.SQL.Add(' N.VL_TOTALNF AS VALOR,');
    Qry_XMLN.SQL.Add(' N.VL_ICMS AS ICMS,');
    Qry_XMLN.SQL.Add(' F.NR_CNPJFORN AS CNPJ,');
    Qry_XMLN.SQL.Add(' N.CFOP AS CFOP,');
    Qry_XMLN.SQL.Add(' N.ID_MOVIFISCAL AS ID_NOTA,');
    Qry_XMLN.SQL.Add(' N.NR_NOTA AS NR_NOTA,');
    Qry_XMLN.SQL.Add(' N.DT_ENTRADA AS DT_EMISSAO,');
    Qry_XMLN.SQL.Add(' N.DT_DIGITACAO AS DT_SAIDA,');
    Qry_XMLN.SQL.Add(' N.SERIE AS SERIE,');
    Qry_XMLN.SQL.Add(' N.ID_FORNECEDOR AS ID_CLIENTE,');
    Qry_XMLN.SQL.Add(' F.NM_FORNECEDOR AS NM_CLIENTE');
    Qry_XMLN.SQL.Add(' FROM CA_MOVIFISCAL_E N, FORNECEDOR F WHERE N.ID_FORNECEDOR = F.ID_FORNECEDOR');
    Qry_XMLN.SQL.Add(' AND N.FILIAL = :FILIAL ');
    Qry_XMLN.SQL.Add(' and n.id_movifiscal not in (SELECT X.ID_MOVIFISCAL FROM CA_MOVIFISCAL_E_XML X WHERE 0=0');
    Qry_XMLN.SQL.Add(' --X.DT_ENTRADA >= TO_DATE(' + QuotedStr(edtDataIni.Text + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
    Qry_XMLN.SQL.Add(' --and X.DT_ENTRADA <= TO_DATE(' + QuotedStr(edtDataFim.Text + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
    Qry_XMLN.SQL.Add(' and x.nfe_xml is not null )');

    //If rdbSNFe.Checked = True then Qry_XMLN.SQL.Add(' AND N.ID_ESPECIE = 4');
    If rdbSNFe.Checked = True then Qry_XMLN.SQL.Add(' AND ( (N.ID_ESPECIE = 4) OR (N.ID_ESPECIE = 10) OR (N.ID_ESPECIE = 8) )');

    If rdbNCanceladas.Checked = True then Qry_XMLN.SQL.Add(' and nvl(N.FL_CANCEL,''' + 'N' + ''')= ''' + 'N' + '''');
    If rdbSCanceladas.Checked = True then Qry_XMLN.SQL.Add(' and nvl(N.FL_CANCEL,''' + 'S' + ''')= ''' + 'S' + '''');

    If Length(Trim(edtDataIni.Text)) >= 8 then
    If Length(Trim(edtDataFim.Text)) >= 8 then
    begin
      Filtro := 1;
      Qry_XMLN.SQL.Add(' and N.Dt_Entrada >= TO_DATE(' + QuotedStr(edtDataIni.Text + ' 00:00:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
      Qry_XMLN.SQL.Add(' and N.Dt_Entrada <= TO_DATE(' + QuotedStr(edtDataFim.Text + ' 23:59:00') + ',''' + 'DD/MM/YYYY HH24:MI:SS' + ''')');
    end;

    If edtNrNotaI.Text <> '' then
    If edtNrNotaF.Text <> '' then
    If Strtoint(edtNrNotaI.Text) > 0 then
    If Strtoint(edtNrNotaF.Text) > 0 then
    If Strtoint(edtNrNotaI.Text) <= Strtoint(edtNrNotaF.Text) then
    begin
      Filtro := 1;
      Qry_XMLN.SQL.Add(' and N.Nr_Nota >= ' + edtNrNotaI.Text);
      Qry_XMLN.SQL.Add(' and N.Nr_Nota <= ' + edtNrNotaF.Text);
    end;

    If edtCNPJ.Text <> '' then
    begin
      Filtro := 1;
      Qry_XMLN.SQL.Add(' and F.NR_CNPJCLIE = ' + edtCNPJ.Text);
    end;

    Qry_XMLN.SQL.Add(' order by N.Nr_Nota');

    Qry_XMLN.ParamByName('FILIAL').Value := gi_Filial;

    If Filtro = 1 then
    begin
      //Qry_XMLN.SQL.SaveToFile('QRY_XMLN_E.sql');
      Qry_XMLN.Open;
      Qry_XMLN.Last;
      XMLN := Qry_XMLN.RecordCount;
      edtNIncluidas.Text := InttoStr(XMLN);
      //Abilita o botão atualizar
      If Qry_XMLN.RecordCount > 0 then
      If ListaXML.Items.Count > 0 then
      begin
        btnAtualizar.Enabled    := True;
      end;
    end;

  end;

end;

procedure TFrmCarregaNFe.Saindo(Sender: TObject);
begin
  Close;
end;

function TFrmCarregaNFe.MoveCopia(const Origem, Destino : string; Operacao, Modo:Integer) : Boolean;
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

procedure TFrmCarregaNFe.Atualiza_bdados_xml(Sender: TObject);
begin

  If cbxCompletar.Checked = False then
  begin

    //Não tem xmls
    If ListaXML.Items.Count < 0 then ShowMessage('NÃO EXISTEM XMLs NA PASTA PARA SEREM INSERIDOS !');

    //Não tem notas
    If Qry_XMLN.RecordCount = 0 then ShowMessage('NÃO EXISTEM NOTAS PARA SEREM LOCALIZADOS E INSERIDOS OS XMLs !');

    //Atualizando bdados
    If Qry_XMLN.RecordCount > 0 then
    If ListaXML.Items.Count > -1 then
    begin

      //Abre a tabela de xml
      //Qry_NFEXML.Active := True;

      //Desabilita a tela das notas nao inseridas
      Qry_XMLN.DisableControls;

      //Define a barra de rolagem
      Qry_XMLN.Last;
      Progresso.Max := Qry_XMLN.RecordCount;
      Progresso.Min := 0;
      Progresso.Position := 0;

      //Verifica e insere os xmls
      Qry_XMLN.First;
      While not Qry_XMLN.Eof do
      begin

        //pnlStatus.Caption := '';
        pnlStatus.Caption := Qry_XMLNCPF.Value + ' - ' + Qry_XMLNSERIE.AsString + ' - ' +
                             Qry_XMLNNR_NOTA.AsString + ' - ' + Qry_XMLNDT_EMISSAO.AsString + ' - ' +
                             Qry_XMLNDT_SAIDA.AsString + ' - ' + Qry_XMLNCFOP.AsString + ' - ' + Qry_XMLNId_NOTA.AsString + ' - ';

        //Verifica se o xml da nota fiscal e se existir inserir no arquivo
        If rdbPRC.Checked = False then
        Verifica_grava_xml_banco(Qry_XMLNCNPJ.Value, Qry_XMLNSERIE.AsString, Qry_XMLNNR_NOTA.AsString, Qry_XMLNDT_EMISSAO.AsString, Qry_XMLNDT_SAIDA.AsString, Qry_XMLNCFOP.AsString, Qry_XMLNId_NOTA.AsInteger);
        If rdbPRC.Checked = true then
        Verifica_grava_xml_banco(Qry_XMLNCPF.Value, Qry_XMLNSERIE.AsString, Qry_XMLNNR_NOTA.AsString, Qry_XMLNDT_EMISSAO.AsString, Qry_XMLNDT_SAIDA.AsString, Qry_XMLNCFOP.AsString, Qry_XMLNId_NOTA.AsInteger);

        //Proxima nota
        Progresso.Position := Progresso.Position + 1;
        application.ProcessMessages;

        Qry_XMLN.Next;
      end;

      //Desabilita a tela das notas nao inseridas
      Qry_XMLN.EnableControls;

      //Abre a tabela de xml
      //Qry_NFEXML.Active := False;

      //Termina o processo
      ShowMessage('NOTAS VERIFICADAS E INSERIDAS COM SUCESSO !');
      Progresso.Position := 0;
      application.ProcessMessages;

      //Executa o filtro novamente para mostrar como ficaram as nfs
      Executa_filtro_notas_fiscais(Sender);

    end;

  end;

  If cbxCompletar.Checked = True then
  begin

    //Não tem xmls
    If ListaXML.Items.Count < 0 then ShowMessage('NÃO EXISTEM XMLs NA PASTA PARA SEREM ATUALIZADOS !');

    //Não tem notas
    If Qry_XMLN.RecordCount = 0 then ShowMessage('NÃO EXISTEM NOTAS PARA SEREM LOCALIZADAS E ALTERADOS OS XMLs !');

    //Atualizando bdados
    If Qry_XMLN.RecordCount > 0 then
    If ListaXML.Items.Count > -1 then
    begin

      //Desabilita a tela das notas nao inseridas
      Qry_XMLN.DisableControls;

      //Define a barra de rolagem
      Qry_XMLN.Last;
      Progresso.Max := Qry_XMLN.RecordCount;
      Progresso.Min := 0;
      Progresso.Position := 0;

      //Verifica e insere os xmls
      Qry_XMLN.First;
      While not Qry_XMLN.Eof do
      begin

        //Verifica se o xml da nota fiscal e se existir inserir no arquivo
        //Verifica_grava_xml_banco(Qry_XMLNCNPJ.Value, Qry_XMLNSG_SERINOTAFISC_NOTAFISC.AsString, Qry_XMLNNR_NOTAFISC.AsString, Qry_XMLNDT_EMISNOTAFISC.AsString, Qry_XMLNdt_saidnotafisc.AsString);

        //Proxima nota
        Progresso.Position := Progresso.Position + 1;
        application.ProcessMessages;

        Qry_XMLN.Next;
      end;

      //Desabilita a tela das notas nao inseridas
      Qry_XMLN.EnableControls;

      //Termina o processo
      ShowMessage('NOTAS VERIFICADAS E ALTERADAS COM SUCESSO !');
      Progresso.Position := 0;
      application.ProcessMessages;

      //Executa o filtro novamente para mostrar como ficaram as nfs
      Executa_filtro_notas_fiscais(Sender);

    end;

  end;

end;

Procedure TFrmCarregaNFe.Verifica_grava_xml_banco(OCNPJ: String; NRSERIE: String; NRNOTA: String; EMISSAO: String; SAIDA: String; OCFOP: String; OID: Integer);
var
  OSql, NomeXml, TNRNOTA  : String;
  Ite, I, R, Gravar, P, Q, Tamanho, TNF, ProcNum: Integer;
  AData : TDateTime;
begin                  
  If XmlSaida.Checked = True then
  begin
    //Corre a lista dos xml verificando se encontram os xmls.
    If ListaXML.Items.Count > 0 then
    begin

      //lbxAnexo.Items.Clear;
      Ite := ListaXML.items.Count;
      For I := 0 to Ite -1 do
      begin

        TNRNOTA := '';
        FOR R := Length(NRNOTA) to 5 do TNRNOTA := TNRNOTA + '0';
        TNRNOTA := TNRNOTA + NRNOTA;

        Gravar := 0;
        Tamanho := 0;
        Tamanho := Length(ExtractFileName(ListaXML.Items.Strings[I]));
        TNF := Length(NRNOTA);
        NomeXml := '';
        NomeXml := ExtractFileName(ListaXML.Items.Strings[I]);

        //Mostra o xml ativo
        pnlStatus.Caption := NomeXml;

        If Tamanho > 33 then
        begin

          //If Copy(NomeXml, 29, TNF) = NRNOTA then
          If Copy(NomeXml, 29, 6) = TNRNOTA then
          Gravar := Verifica_xml_valido(ListaXML.Items.Strings[I], OCNPJ, NRSERIE, NRNOTA, EMISSAO, SAIDA, OCFOP);

        end;

        If Tamanho < 34 then
        Gravar := Verifica_xml_valido(ListaXML.Items.Strings[I], OCNPJ, NRSERIE, NRNOTA, EMISSAO, SAIDA, OCFOP);

        If Gravar = 1 then
        begin

          XdhRecbto := Copy(XdhRecbto, 9,2) + '/' + Copy(XdhRecbto, 6,2) + '/' + Copy(XdhRecbto, 1, 4) + ' ' +  Copy(XdhRecbto, 12, 8);

          Qry_NFEXML.SQL.Clear;
          Qry_NFEXML.SQL.Add('SELECT * FROM NOTA_FISCAL_XML WHERE NFE_CHAVE = ' + QuotedStr(XchNFe));
          Qry_NFEXML.Open;

          If ckbMensagens.Checked = true then
          If Qry_NFEXML.RecordCount > 0 then ShowMessage('JA EXISTE UM XML DE SAIDA PARA A NF: ' + XNF + ' SERIE: ' + Qry_XMLNSERIE.Value );

          //Grava somente se não tiver chave xml
          If Qry_NFEXML.RecordCount = 0 then
          begin

            Qry_NFEXML.Append;
            Qry_NFEXMLEMPRESA.Value           := gs_Empresa;
            Qry_NFEXMLFILIAL.Value            := gi_Filial;
            Qry_NFEXMLID_NOTAFISC.Value       := Qry_XMLNID_NOTA.AsInteger;
            Qry_NFEXMLDT_EMISNOTAFISC.Value   := Qry_XMLNDT_EMISSAO.AsString;
            Qry_NFEXMLNR_NOTAFISC.Value       := StrtoInt(XNF);
            Qry_NFEXMLSR_NOTAFISC.Value       := Qry_XMLNSERIE.Value;
            Qry_NFEXMLRECIBO_RETORNO.Value    := XnProt;
            Qry_NFEXMLDATA_ENVIO.Value        := XdhRecbto;
            Qry_NFEXMLNFE_NUMERO.Value        := StrtoInt(XNF);
            Qry_NFEXMLNFE_CHAVE.Value         := XchNFe;
            Qry_NFEXMLNFE_DT_RECEBTO.Value    := XdhRecbto;
            Qry_NFEXMLNFE_PROTOCOLO.Value     := XnProt;
            Qry_NFEXMLNFE_CHAVE_DIGITAL.Value := XdigVal;
            Qry_NFEXMLNFE_LOCAL.Value         := ListaXML.Items.Strings[I];
            Qry_NFEXMLRETORNO.Value           := 'S';
            Qry_NFEXMLAUTORIZACAO.Value       := 'S';
            If FileExists(ListaXML.Items.Strings[I]) then TBlobField(Qry_NFEXML.FieldByName('NFE_XML')).LoadFromFile(ListaXML.Items.Strings[I]);
            Qry_NFEXML.Post;
            Qry_NFEXML.ApplyUpdates;
            Qry_NFEXML.CommitUpdates;

            //Move o xml
            If edtMovidas.Text <> '' then
            begin
              //Try
              //  MoveCopia(ListaXML.Items.Strings[I], edtMovidas.Text, 1, 2);
              //except
              //
              //end;
            end;

          end;
          Qry_NFEXML.Close;

          //Move o xml
          If edtMovidas.Text <> '' then
          begin

          end;

        end;

      end;

    end;

  end;

  If XmlEntrada.Checked = True then
  begin

    //Carrega os xmls
    ListaXML.Items.Clear;
    If edtLocal.Text <> '' then Arquivo_lista(edtLocal.Text + '*.xml',ListaXML);
    If edtLocal.Text = '' then Arquivo_lista(ExtractFilePath(Application.ExeName) + '*.xml',ListaXML);

    //Corre a lista dos xml verificando se encontram os xmls.
    If ListaXML.Items.Count > 0 then
    begin

      //lbxAnexo.Items.Clear;
      Ite := ListaXML.items.Count;
      For I := 0 to Ite -1 do
      begin

        TNRNOTA := '';
        FOR R := Length(NRNOTA) to 5 do TNRNOTA := TNRNOTA + '0';
        TNRNOTA := TNRNOTA + NRNOTA;

        Gravar := 0;
        Tamanho := 0;
        Tamanho := Length(ExtractFileName(ListaXML.Items.Strings[I]));
        TNF := Length(NRNOTA);
        NomeXml := '';
        NomeXml := ExtractFileName(ListaXML.Items.Strings[I]);

        //Mostra o xml ativo
        pnlStatus.Caption := NomeXml;

        ProcNum := 0;
        ProcNum := Procura_numero_no_arquivo(NomeXml, NRNOTA);

        If ProcNum < 2 then
        begin

          If Tamanho > 33 then
          begin

            If ProcNum = 1 then
            begin
              Gravar := Verifica_xml_valido(ListaXML.Items.Strings[I], OCNPJ, NRSERIE, NRNOTA, EMISSAO, SAIDA, OCFOP);
            end;
            //If Copy(NomeXml, 29, 6) = TNRNOTA then
            //begin
            //  Gravar := Verifica_xml_valido(ListaXML.Items.Strings[I], OCNPJ, NRSERIE, NRNOTA, EMISSAO, SAIDA, OCFOP);
            //end;

          end;

          If Tamanho < 34 then
          begin
            Gravar := Verifica_xml_valido(ListaXML.Items.Strings[I], OCNPJ, NRSERIE, NRNOTA, EMISSAO, SAIDA, OCFOP);
          end;

          If Gravar = 1 then
          begin

            XdhRecbto := Copy(XdhRecbto, 9,2) + '/' + Copy(XdhRecbto, 6,2) + '/' + Copy(XdhRecbto, 1, 4) + ' ' +  Copy(XdhRecbto, 12, 8);

            Qry_NFEXML_.SQL.Clear;
            Qry_NFEXML_.SQL.Add('SELECT * FROM CA_MOVIFISCAL_E_XML WHERE NFE_CHAVE = ' + QuotedStr(XchNFe));
            Qry_NFEXML_.Open;

            If ckbMensagens.Checked = true then
            If Qry_NFEXML_.RecordCount > 0 then
            begin

              ShowMessage('JA EXISTE UM XML DE ENTRADA PARA A NF: ' + XNF + ' SERIE: ' + Qry_XMLNSERIE.Value );

              If MessageDlg('Deseja excluir o XML do Banco de Dados e substituir por este ?',
              mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
              begin

                //Apaga o XML do Banco de Dados
                Executa_OraSql('DELETE FROM NOTA_FISCAL_XML WHERE NFE_CHAVE = ' + QuotedStr(XchNFe));

                //Filtra novamente o banco de dados
                Qry_NFEXML_.SQL.Clear;
                Qry_NFEXML_.SQL.Add('SELECT * FROM CA_MOVIFISCAL_E_XML WHERE NFE_CHAVE = ' + QuotedStr(XchNFe));
                Qry_NFEXML_.Open;

              end;

            end;

            If Qry_NFEXML_.RecordCount = 0 then
            begin

              Qry_NFEXML_.Append;
              Qry_NFEXML_EMPRESA.Value           := gs_Empresa;
              Qry_NFEXML_FILIAL.Value            := gi_Filial;
              Qry_NFEXML_ID_MOVIFISCAL.Value     := Qry_XMLNID_NOTA.AsInteger;
              Qry_NFEXML_DT_ENTRADA.Value        := Qry_XMLNDT_EMISSAO.AsDateTime;
              Qry_NFEXML_NR_NOTA.Value           := StrtoInt(XNF);
              Qry_NFEXML_SERIE.Value             := Qry_XMLNSERIE.Value;
              Qry_NFEXML_RECIBO_RETORNO.Value    := XnProt;
              Qry_NFEXML_DATA_ENVIO.Value        := XdhRecbto;
              Qry_NFEXML_NFE_NUMERO.Value        := StrtoInt(XNF);
              Qry_NFEXML_NFE_CHAVE.Value         := XchNFe;
              Qry_NFEXML_NFE_DT_RECEBTO.Value    := XdhRecbto;
              Qry_NFEXML_NFE_PROTOCOLO.Value     := XnProt;
              Qry_NFEXML_NFE_CHAVE_DIGITAL.Value := XdigVal;
              Qry_NFEXML_NFE_LOCAL.Value         := ListaXML.Items.Strings[I];
              Qry_NFEXML_RETORNO.Value           := 'S';
              Qry_NFEXML_AUTORIZACAO.Value       := 'S';
              If FileExists(ListaXML.Items.Strings[I]) then TBlobField(Qry_NFEXML_.FieldByName('NFE_XML')).LoadFromFile(ListaXML.Items.Strings[I]);
              Qry_NFEXML_.Post;
              Qry_NFEXML_.ApplyUpdates;
              Qry_NFEXML_.CommitUpdates;

              If Qry_XMLNID_NOTA.Value > 0 then
              If XchNFe <> '' then
              begin
                Executa_OraSql('Update ca_movifiscal_e set chave_nfe = ' + QuotedStr(XchNFe) + ' where id_movifiscal = '  + Qry_XMLNID_NOTA.AsString);
              end;

              //Move o xml
              If edtMovidas.Text <> '' then
              begin
                //Try
                //  MoveCopia(ListaXML.Items.Strings[I], edtMovidas.Text, 1, 2);
                //except
                //
                //end;
              end;

            end;

            Qry_NFEXML_.Close;

          end;

        end;

      end;

    end;

  end;

end;

function TFrmCarregaNFe.Procura_numero_no_arquivo(Arquivo : String; ANF: String): Integer;
var
  ArqCanc : String;
  A, Achou, Tamanho : Integer;
begin

  //Verifica
  Achou := 0;
  Tamanho := Length(Arquivo);
  ArqCanc := LowerCase(Arquivo);

  For A := 1 to Tamanho do If Copy(Arquivo, A, Length(ANF)) = ANF then Achou := 1;

  For A := 1 to Tamanho do If Copy(ArqCanc, A, 4) = 'canc' then Achou := 2;

  Result := Achou;

end;

function TFrmCarregaNFe.Verifica_xml_valido(Arquivo : String; OCNPJ: String; NRSERIE: String; NRNOTA: String; EMISSAO: String; SAIDA: String; OCFOP: String): Integer;
var
  //vXMLDoc: TXMLDocument;
  TCNPJ  : String;
  Achou, marcou : Integer;    //, CF
  NodePai, NodeSec, NodeTmp : IXMLNode;
  TNF, TCT : OleVariant;
  NodeX0, NodeX1, NodeX2, NodeX3 : IXMLNode;
  Node00, Node01, Node02, Node03, Node04, Node05, Node06, NodeEmit, NodeDest : IXMLNode;
  Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState;
  XVLRNFE, XVLRICM : String;
begin

  marcou := 0;

  If XmlSaida.Checked = True then
  begin

    //Zera variaveis
    XNF       := '';
    XSERIE    := '';
    XCNPJ     := '';
    XtpAmb    := '';
    XverAplic := '';
    XchNFe    := '';
    XdhRecbto := '';
    XnProt    := '';
    XdigVal   := '';
    XcStat    := '';
    XxMotivo  := '';
    XEmi      := '';
    XSaiEnt   := '';
    TPNF      := '';

    XMLDoc.LoadFromFile(Arquivo);
    XMLDoc.Active := True;

    //é um xml de NFE
    Node00 := XMLDoc.DocumentElement.ChildNodes.FindNode('NFe');
    if (node00 <> nil) then
    begin

      Node01 := Node00.ChildNodes.FindNode('infNFe');
      if (node01 <> nil) then
      begin

        Node02 := Node01.ChildNodes.FindNode('ide');
        if (Node02 <> nil) then
        begin
          Node02.ChildNodes.First;
          XSERIE := Node02.ChildNodes['serie'].Text;
          Node02.ChildNodes.First;
          XNF := Node02.ChildNodes['nNF'].Text;
          Node02.ChildNodes.First;
          TPNF := Node02.ChildNodes['tpNF'].Text;
        end;

        If TPNF = '1' then
        begin

          Node02 := Node01.ChildNodes.FindNode('dest');
          if (node02 <> nil) then
          begin
            If rdbPRC.Checked = true then XCNPJ := Node02.ChildNodes['CPF'].Text;
            If rdbPRC.Checked = false then XCNPJ := Node02.ChildNodes['CNPJ'].Text;
          end;

          //Verifica se o destinatario é diferente do logado e avisa na tela
          Node02.ChildNodes.First;
          NodeDest := Node01.ChildNodes.FindNode('emit');
          If (NodeDest <> nil) then
          begin
            NodeDest.ChildNodes.First;
            TCNPJ := NodeDest.ChildNodes['CNPJ'].Text;
          end;

          If SoNumeros(gs_CNPJ) <> TCNPJ then
          begin

            If ckbMensagens.Checked = true then
            Showmessage('ERRO ! NF nº ' + XNF + ' SERIE ' + XSERIE + ' - LOGOU NA ' + SoNumeros(gs_CNPJ) + ' E O EMITENTE DO XML É ' + TCNPJ);

            Marcou := 1;
            DBGrid3.Canvas.Font.Color:= clSilver; // coloque aqui a cor desejada
            DBGrid3.DefaultDrawDataCell(Rect, DBGrid3.columns[datacol].field, State);

          end;

        end;

        If TPNF = '0' then
        begin

          Node02 := Node01.ChildNodes.FindNode('dest');
          if (node02 <> nil) then
          begin
            If rdbPRC.Checked = true then XCNPJ := Node02.ChildNodes['CPF'].Text;
            If rdbPRC.Checked = false then XCNPJ := Node02.ChildNodes['CNPJ'].Text;
          end;

          //Verifica se o destinatario é diferente do logado e avisa na tela
          Node02.ChildNodes.First;
          NodeDest := Node01.ChildNodes.FindNode('emit');
          If (NodeDest <> nil) then
          begin
            NodeDest.ChildNodes.First;
            TCNPJ := NodeDest.ChildNodes['CNPJ'].Text;
          end;

          If SoNumeros(gs_CNPJ) <> TCNPJ then
          begin

            If ckbMensagens.Checked = true then
            Showmessage('ERRO ! NF nº ' + XNF + ' SERIE ' + XSERIE + ' - LOGOU NA ' + SoNumeros(gs_CNPJ) + ' E O EMITENTE DO XML É ' + TCNPJ);

            Marcou := 1;
            DBGrid3.Canvas.Font.Color:= clSilver; // coloque aqui a cor desejada
            DBGrid3.DefaultDrawDataCell(Rect, DBGrid3.columns[datacol].field, State);

          end;

        end;

      end;

    end;

    //é um xml de NFE
    Node00 := XMLDoc.DocumentElement.ChildNodes.FindNode('CTe');
    if (node00 <> nil) then
    begin

      Node01 := Node00.ChildNodes.FindNode('infCte');
      if (node01 <> nil) then
      begin

        Node02 := Node01.ChildNodes.FindNode('ide');
        if (Node02 <> nil) then
        begin

          Node02.ChildNodes.First;
          XSERIE := Node02.ChildNodes['serie'].Text;
          Node02.ChildNodes.First;
          XNF := Node02.ChildNodes['nCT'].Text;
          Node02.ChildNodes.First;
          TPCT := Node02.ChildNodes['tpCTe'].Text;

        end;

        If TPCT = '1' then
        begin

          Node02 := Node01.ChildNodes.FindNode('dest');
          if (node02 <> nil) then XCNPJ := Node02.ChildNodes['CNPJ'].Text;

        end;

        If TPCT = '0' then
        begin

          //Node02 := Node01.ChildNodes.FindNode('emit');
          Node02 := Node01.ChildNodes.FindNode('dest');
          if (node02 <> nil) then XCNPJ := Node02.ChildNodes['CNPJ'].Text;

        end;

      end;

    end;

    //Verifica se é o xml que precisamos
    Achou := 0;

    If OCFOP <> '' then
    If StrtoInt(OCFOP) > 0 then
    If CF01.Checked = True then
    begin

      If ( StrtoInt(OCFOP) < 5000 ) or ( StrtoInt(OCFOP) = 7101 ) then
      begin

        If XNF    = NRNOTA  then
        If XSERIE = NRSERIE then Achou := 1;

      end;

    end;

    If CF02.Checked = True then
    begin

      If XNF    = NRNOTA  then
      If XSERIE = NRSERIE then Achou := 1;

    end;

    If CF03.Checked = True then
    begin

      If XCNPJ  = OCNPJ   then
      If XNF    = NRNOTA  then
      If XSERIE = NRSERIE then Achou := 1;

    end;

    If Marcou = 1 then Achou := 0;

    If Achou = 1 then
    If sonumeros(XVLRNFE) <> '' then
    If sonumeros(XVLRICM) <> '' then
    begin

      If Qry_XMLNVALOR.Value <> StrtoFloat(sonumeros(XVLRNFE)) then
      If Qry_XMLNICMS.Value  <> StrtoFloat(sonumeros(XVLRICM)) then
      begin

        MemXml.Lines.Add('NF nº: ' + Qry_XMLNNR_NOTA.AsString +
                         ' - ' + Qry_XMLNSERIE.AsString +
                         ' R$ ' + Qry_XMLNVALOR.AsString +
                         ' -> ' + sonumeros(XVLRNFE) +
                         ' ICMS : ' + Qry_XMLNICMS.AsString +
                         ' -> ' + sonumeros(XVLRICM));

        Achou := 0;
      end;

    end;

    If Achou = 1 then
    begin

      //Obrem os valores do protocolo
      Node03 := XMLDoc.DocumentElement.ChildNodes.FindNode('protNFe');

      if (node03 <> nil) then
      begin

        Node04 := Node03.ChildNodes.FindNode('infProt');

        if (node04 <> nil) then
        begin

          Node04.ChildNodes.First;
          XtpAmb    := Node04.ChildNodes['tpAmb'].Text;
          Node04.ChildNodes.First;
          XverAplic := Node04.ChildNodes['verAplic'].Text;
          Node04.ChildNodes.First;
          XchNFe    := Node04.ChildNodes['chNFe'].Text;
          Node04.ChildNodes.First;
          XdhRecbto := Node04.ChildNodes['dhRecbto'].Text;
          Node04.ChildNodes.First;
          XnProt    := Node04.ChildNodes['nProt'].Text;
          Node04.ChildNodes.First;
          XdigVal   := Node04.ChildNodes['digVal'].Text;
          Node04.ChildNodes.First;
          XcStat    := Node04.ChildNodes['cStat'].Text;
          Node04.ChildNodes.First;
          XxMotivo  := Node04.ChildNodes['xMotivo'].Text;

        end;

      end;

      //Obrem os valores do protocolo
      Node03 := XMLDoc.DocumentElement.ChildNodes.FindNode('protCTe');

      if (node03 <> nil) then
      begin

        Node04 := Node03.ChildNodes.FindNode('infProt');

        if (node04 <> nil) then
        begin

          Node04.ChildNodes.First;
          XtpAmb    := Node04.ChildNodes['tpAmb'].Text;
          Node04.ChildNodes.First;
          XverAplic := Node04.ChildNodes['verAplic'].Text;
          Node04.ChildNodes.First;
          XchNFe    := Node04.ChildNodes['chCTe'].Text;
          Node04.ChildNodes.First;
          XdhRecbto := Node04.ChildNodes['dhRecbto'].Text;
          Node04.ChildNodes.First;
          XnProt    := Node04.ChildNodes['nProt'].Text;
          Node04.ChildNodes.First;
          XdigVal   := Node04.ChildNodes['digVal'].Text;
          Node04.ChildNodes.First;
          XcStat    := Node04.ChildNodes['cStat'].Text;
          Node04.ChildNodes.First;
          XxMotivo  := Node04.ChildNodes['xMotivo'].Text;

        end;

      end;

    end;

    //Fecha o xml
    XMLDoc.Active := False;
    //XMLDoc.CleanupInstance;

  end;

  If XmlEntrada.Checked = True then
  begin

    //Zera variaveis
    XNF       := '';
    XSERIE    := '';
    XCNPJ     := '';
    XtpAmb    := '';
    XverAplic := '';
    XchNFe    := '';
    XdhRecbto := '';
    XnProt    := '';
    XdigVal   := '';
    XcStat    := '';
    XxMotivo  := '';
    XEmi      := '';
    XSaiEnt   := '';

    XVLRNFE   := '';
    XVLRICM   := '';

    MemXml.Lines.Add(Arquivo);

    XMLDoc.LoadFromFile(Arquivo);
    XMLDoc.Active := True;

    //Obrem o numero da nf e o cnpj
    Node00 := XMLDoc.DocumentElement.ChildNodes.FindNode('NFe');

    //Node00 := XMLDoc.DocumentElement.ChildNodes.FindNode('retNFe');
    if (node00 <> nil) then
    begin

      Node01 := Node00.ChildNodes.FindNode('infNFe');
      if (node01 <> nil) then
      begin

        Node02 := Node01.ChildNodes.FindNode('ide');
        if (Node02 <> nil) then
        begin

          Node02.ChildNodes.First;
          XSERIE := Node02.ChildNodes['serie'].Text;
          Node02.ChildNodes.First;
          XNF := Node02.ChildNodes['nNF'].Text;
          Node02.ChildNodes.First;
          TPNF := Node02.ChildNodes['tpNF'].Text;

        end;

        If XmlSaida.Checked = True then
        begin

          If TPNF = '1' then
          begin

            Node02 := Node01.ChildNodes.FindNode('dest');

            if (node02 <> nil) then
            begin

              If rdbPRC.Checked = true then XCNPJ  := Node02.ChildNodes['CPF'].Text;
              If rdbPRC.Checked = false then XCNPJ := Node02.ChildNodes['CNPJ'].Text;

            end;

          end;

          If TPNF = '0' then
          begin

            Node02 := Node01.ChildNodes.FindNode('emit');

            if (node02 <> nil) then
            begin

              If rdbPRC.Checked = true then XCNPJ  := Node02.ChildNodes['CPF'].Text;
              If rdbPRC.Checked = false then XCNPJ := Node02.ChildNodes['CNPJ'].Text;

            end;

          end;

        end;

        If XmlEntrada.Checked = True then
        begin

          If TPNF = '0' then
          begin

            Node02 := Node01.ChildNodes.FindNode('dest');

            if (node02 <> nil) then
            begin

              If rdbPRC.Checked = true then XCNPJ  := Node02.ChildNodes['CPF'].Text;
              If rdbPRC.Checked = false then XCNPJ := Node02.ChildNodes['CNPJ'].Text;

            end;

          end;

          If TPNF = '1' then
          begin

            Node02 := Node01.ChildNodes.FindNode('emit');

            If (node02 <> nil) then
            begin

              Node02.ChildNodes.First;

              If rdbPRC.Checked = true then XCNPJ  := Node02.ChildNodes['CPF'].Text;
              If rdbPRC.Checked = false then XCNPJ := Node02.ChildNodes['CNPJ'].Text;

              //Verifica se o destinatario é diferente do logado e avisa na tela
              Node02.ChildNodes.First;
              NodeDest := Node01.ChildNodes.FindNode('dest');

              If (NodeDest <> nil) then
              begin
                NodeDest.ChildNodes.First;
                TCNPJ := NodeDest.ChildNodes['CNPJ'].Text;
              end;

              If SoNumeros(gs_CNPJ) <> TCNPJ then
              begin

                If ckbMensagens.Checked = true then
                Showmessage('ERRO ! NF nº ' + XNF + ' SERIE ' + XSERIE + ' - LOGOU NA ' + SoNumeros(gs_CNPJ) + ' E DESTINATARIO DO XML É ' + TCNPJ);

                Marcou := 1;
                DBGrid3.Canvas.Font.Color:= clSilver; // coloque aqui a cor desejada
                DBGrid3.DefaultDrawDataCell(Rect, DBGrid3.columns[datacol].field, State);

              end;

            end;

          end;

        end;

        //Obtem o valor total da nf e o valor do icms
        Node02 := Node01.ChildNodes.FindNode('total');
        if (Node02 <> nil) then
        begin

          Node02.ChildNodes.First;
          XVLRICM := Node02.ChildNodes['vICMS'].Text;
          Node02.ChildNodes.First;
          XVLRNFE := Node02.ChildNodes['vNF'].Text;

        end;

      end;

    end;

    //$$$$

    //Leitura do XML diferente

    //Obrem o numero da nf e o cnpj
    Node00 := XMLDoc.DocumentElement.ChildNodes.FindNode('retNFe');
    if (node00 <> nil) then
    begin

      Node00.ChildNodes.First;
      Node00.ChildNodes.First;
      Node00.ChildNodes.First;

      Node01 := Node00.ChildNodes.FindNode('procNFe');
      if (Node01 <> nil) then
      begin

        Node01.ChildNodes.First;

        Node02 := Node01.ChildNodes.FindNode('nfeProc');
        if (Node02 <> nil) then
        begin

          Node02.ChildNodes.First;

          Node03 := Node02.ChildNodes.FindNode('NFe');

          if (Node03 <> nil) then
          begin

            Node03.ChildNodes.First;

            Node04 := Node03.ChildNodes.FindNode('infNFe');
            if (Node04 <> nil) then
            begin

              Node04.ChildNodes.First;

              Node05 := Node04.ChildNodes.FindNode('ide');
              if (Node05 <> nil) then
              begin

                Node05.ChildNodes.First;
                XSERIE := Node05.ChildNodes['serie'].Text;
                Node05.ChildNodes.First;
                XNF := Node05.ChildNodes['nNF'].Text;
                Node05.ChildNodes.First;
                TPNF := Node05.ChildNodes['tpNF'].Text;

              end;

              If TPNF = '0' then
              begin

                Node04.ChildNodes.First;

                Node05 := Node04.ChildNodes.FindNode('dest');
                if (node05 <> nil) then
                begin
                  If rdbPRC.Checked = true then XCNPJ  := Node05.ChildNodes['CPF'].Text;
                  If rdbPRC.Checked = false then XCNPJ := Node05.ChildNodes['CNPJ'].Text;
                end;

              end;

              If TPNF = '1' then
              begin

                Node04.ChildNodes.First;

                Node05 := Node04.ChildNodes.FindNode('emit');
                If (node05 <> nil) then
                begin
                  If rdbPRC.Checked = true then XCNPJ  := Node05.ChildNodes['CPF'].Text;
                  If rdbPRC.Checked = false then XCNPJ := Node05.ChildNodes['CNPJ'].Text;
                end;

              end;

              //Verifica se o destinatario é diferente do logado e avisa na tela
              Node04.ChildNodes.First;

              NodeDest := Node04.ChildNodes.FindNode('dest');
              If (NodeDest <> nil) then
              begin
                NodeDest.ChildNodes.First;
                TCNPJ := NodeDest.ChildNodes['CNPJ'].Text;
              end;

              If SoNumeros(gs_CNPJ) <> TCNPJ then
              begin

                If ckbMensagens.Checked = true then
                Showmessage('ERRO ! NF nº ' + XNF + ' SERIE ' + XSERIE + ' - LOGOU NA ' + SoNumeros(gs_CNPJ) + ' E DESTINATARIO DO XML É ' + TCNPJ);

                Marcou := 1;
                DBGrid3.Canvas.Font.Color:= clSilver; // coloque aqui a cor desejada
                DBGrid3.DefaultDrawDataCell(Rect, DBGrid3.columns[datacol].field, State);

              end;

            end;

          end;

        end;

      end;

    end;

    //Leitura do XML CTE
    Node00 := XMLDoc.DocumentElement.ChildNodes.FindNode('CTe');
    if (node00 <> nil) then
    begin

      Node01 := Node00.ChildNodes.FindNode('infCte');
      if (node01 <> nil) then
      begin

        Node02 := Node01.ChildNodes.FindNode('ide');
        if (Node02 <> nil) then
        begin
          Node02.ChildNodes.First;
          XSERIE := Node02.ChildNodes['serie'].Text;
          Node02.ChildNodes.First;
          XNF := Node02.ChildNodes['nCT'].Text;
          Node02.ChildNodes.First;
          TPCT := Node02.ChildNodes['tpCTe'].Text;
        end;

        Node02 := Node01.ChildNodes.FindNode('emit');
        If rdbPRC.Checked = true then if (node02 <> nil) then XCNPJ  := Node02.ChildNodes['CPF'].Text;
        If rdbPRC.Checked = false then if (node02 <> nil) then XCNPJ := Node02.ChildNodes['CNPJ'].Text;

      end;

    end;

    //Verifica se é o xml que precisamos
    Achou := 0;

    If CF01.Checked = True then
    If OCFOP <> '' then
    If StrtoInt(OCFOP) > 0 then
    begin
      If ( StrtoInt(OCFOP) < 5000 ) or ( StrtoInt(OCFOP) = 7101 ) then
      begin
        If XCNPJ  = OCNPJ   then
        If XNF    = NRNOTA  then Achou := 1;
      end;
    end;

    If CF02.Checked = True then
    begin
      If XCNPJ  = OCNPJ   then
      If XNF    = NRNOTA  then Achou := 1;
    end;

    If CF03.Checked = True then
    begin
      If XCNPJ  = OCNPJ   then
      If XNF    = NRNOTA  then Achou := 1;
    end;

    If Achou = 1 then
    begin

      //Obttem o protocolo do xml diferente
      Node00 := XMLDoc.DocumentElement.ChildNodes.FindNode('retNFe');
      if (node00 <> nil) then
      begin

        Node00.ChildNodes.First;
        Node00.ChildNodes.First;
        Node00.ChildNodes.First;

        Node01 := Node00.ChildNodes.FindNode('procNFe');
        if (Node01 <> nil) then
        begin

          Node01.ChildNodes.First;

          Node02 := Node01.ChildNodes.FindNode('nfeProc');
          if (Node02 <> nil) then
          begin

            Node02.ChildNodes.First;

            //Obrem os valores do protocolo
            Node03 := Node02.ChildNodes.FindNode('protNFe');

            if (node03 <> nil) then
            begin

              Node04 := Node03.ChildNodes.FindNode('infProt');

              if (node04 <> nil) then
              begin
                Node04.ChildNodes.First;
                XtpAmb    := Node04.ChildNodes['tpAmb'].Text;
                Node04.ChildNodes.First;
                XverAplic := Node04.ChildNodes['verAplic'].Text;
                Node04.ChildNodes.First;
                XchNFe    := Node04.ChildNodes['chNFe'].Text;
                Node04.ChildNodes.First;
                XdhRecbto := Node04.ChildNodes['dhRecbto'].Text;
                Node04.ChildNodes.First;
                XnProt    := Node04.ChildNodes['nProt'].Text;
                Node04.ChildNodes.First;
                XdigVal   := Node04.ChildNodes['digVal'].Text;
                Node04.ChildNodes.First;
                XcStat    := Node04.ChildNodes['cStat'].Text;
                Node04.ChildNodes.First;
                XxMotivo  := Node04.ChildNodes['xMotivo'].Text;
              end;

            end;

          end;

        end;

      end;

      //Obrem os valores do protocolo
      Node03 := XMLDoc.DocumentElement.ChildNodes.FindNode('protNFe');
      if (node03 <> nil) then
      begin
        Node04 := Node03.ChildNodes.FindNode('infProt');
        if (node04 <> nil) then
        begin
          Node04.ChildNodes.First;
          XtpAmb    := Node04.ChildNodes['tpAmb'].Text;
          Node04.ChildNodes.First;
          XverAplic := Node04.ChildNodes['verAplic'].Text;
          Node04.ChildNodes.First;
          XchNFe    := Node04.ChildNodes['chNFe'].Text;
          Node04.ChildNodes.First;
          XdhRecbto := Node04.ChildNodes['dhRecbto'].Text;
          Node04.ChildNodes.First;
          XnProt    := Node04.ChildNodes['nProt'].Text;
          Node04.ChildNodes.First;
          XdigVal   := Node04.ChildNodes['digVal'].Text;
          Node04.ChildNodes.First;
          XcStat    := Node04.ChildNodes['cStat'].Text;
          Node04.ChildNodes.First;
          XxMotivo  := Node04.ChildNodes['xMotivo'].Text;
        end;
      end;

      //Obrem os valores do protocolo
      Node03 := XMLDoc.DocumentElement.ChildNodes.FindNode('protCTe');
      if (node03 <> nil) then
      begin
        Node04 := Node03.ChildNodes.FindNode('infProt');
        if (node04 <> nil) then
        begin
          Node04.ChildNodes.First;
          XtpAmb    := Node04.ChildNodes['tpAmb'].Text;
          Node04.ChildNodes.First;
          XverAplic := Node04.ChildNodes['verAplic'].Text;
          Node04.ChildNodes.First;
          XchNFe    := Node04.ChildNodes['chCTe'].Text;
          Node04.ChildNodes.First;
          XdhRecbto := Node04.ChildNodes['dhRecbto'].Text;
          Node04.ChildNodes.First;
          XnProt    := Node04.ChildNodes['nProt'].Text;
          Node04.ChildNodes.First;
          XdigVal   := Node04.ChildNodes['digVal'].Text;
          Node04.ChildNodes.First;
          XcStat    := Node04.ChildNodes['cStat'].Text;
          Node04.ChildNodes.First;
          XxMotivo  := Node04.ChildNodes['xMotivo'].Text;
        end;
      end;

    end;

    //Fecha o xml
    XMLDoc.Active := False;
    //XMLDoc.CleanupInstance;

  end;

  //envia o resultado
  If marcou = 1 then Achou := 0;

  Result := Achou;

end;


//DirList('C:\*.bat',lista);
Procedure TFrmCarregaNFe.Arquivo_lista( ASource : string; ADirList :TListBox);
var
  Local     : String;
  Result    : integer;
  SearchRec : TSearchRec;
begin

  //Limpa as linhas dos xmls
  ADirList.Items.Clear;

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

    LOCAL := edtLocal.Text + SearchRec.Name;

    ADirList.Items.Add(edtLocal.Text + SearchRec.Name);

    Result := FindNext( SearchRec );

  end;

  FindClose( SearchRec );
  ADirList.Sorted := True;

end;

procedure TFrmCarregaNFe.edtLocalKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  begin
    Key := #0;
    If edtLocal.Text <> '' then Arquivo_lista(edtLocal.Text + '*.xml',ListaXML);
  end;
end;

procedure TFrmCarregaNFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  XMLDoc.Active := False;
  Qry_XMLI.Close;
  Qry_XMLN.Close;
  Qry_Notas.Close;
  Qry_NFEXML.Close;
  FrmPrincipal.VEN038.Enabled := True;
end;

procedure TFrmCarregaNFe.Localiza_movidas_xml(Sender: TObject);
var
  dlg: TOpenDialog;
begin

  //Anexar de uma pasta
  dlg := TOpenDialog.Create(Self);
  // podia ser dlg := TOpenDialog.Create(nil);

  try

    dlg.DefaultExt := '.xml';
    dlg.Filter     := 'Arquivos xml (*.xml)|*.xml|Arquivos (*.*)|*.*';
    dlg.Options    := [ofHideReadOnly, ofPathMustExist, ofFileMustExist];
    dlg.Title      := 'Local dos Arquivos Xml armazenados';
    dlg.InitialDir := edtMovidas.Text;

    If dlg.Execute then
    begin

      // dlg.FileName tem o nome do arquivo
      edtMovidas.Text := ExtractFilePath(dlg.FileName);

    end;

  finally

    dlg.Free;

  end;

end;

procedure TFrmCarregaNFe.FormShow(Sender: TObject);
begin

  FrmCarregaNFe.Caption := FrmCarregaNFe.Caption + ' ' + gs_Unidade + ' ' + gs_CNPJ;

  //Coloca a data inicial
  edtDataIni.Text := Conv_data(Date, 1);
  edtDataFim.Text := Conv_data(Date, 1);

  Marca_ES(Sender);

  //Execura o filtro
  Executa_filtro_notas_fiscais(Sender);
end;

procedure TFrmCarregaNFe.Marca_ES(Sender: TObject);
var
  XmlES : Integer;
begin
  XmlES := 0;
  If XmlSaida.Checked   = True then XmlES := 1;
  If XmlEntrada.Checked = True then XmlES := 2;
  If XmlES = 1 then
  begin
    rdbSNFe.Checked := False;
    RdbSNFe.Enabled := False;
  end;
  If XmlES = 2 then
  begin
    rdbSNFe.Checked := False;
    RdbSNFe.Enabled := True;
  end;
end;

procedure TFrmCarregaNFe.Abre_auditoria(Sender: TObject);
begin
  //Abre a tela de auditoria
  pnlAuditoria.Visible := True;
end;

procedure TFrmCarregaNFe.Fecha_auditoria(Sender: TObject);
begin
  //Abre a tela de auditoria
  pnlAuditoria.Visible := False;
end;

procedure TFrmCarregaNFe.Imprime_auditoria(Sender: TObject);
begin
  //Imprime auditoria
  
end;

end.
