unit UFrmVerificaProducao;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, ComCtrls, StdCtrls, ExtCtrls,
  Provider, DBClient, Grids, DBGrids, Dateutils, Buttons, DBAccess, Ora,
  MemDS, DBCtrls, Mask, strutils, JvExStdCtrls, JvEdit, OraCall,
  Data.DBXFirebird;

type
  TFrm_DadosProducao = class(TForm)
    Panel1: TPanel;
    Edt_Data: TDateTimePicker;
    PageControl1: TPageControl;
    Tab_DBLocal: TTabSheet;
    Tab_Log: TTabSheet;
    CnxFireBird: TSQLConnection;
    qryProducao: TSQLQuery;
    qryProducaoPRC_CODIGO: TFMTBCDField;
    qryProducaoPRC_IDENTIFICACAO: TStringField;
    qryProducaoPRD_CODIGO: TStringField;
    qryProducaoPRC_DT_REGISTRO: TSQLTimeStampField;
    qryProducaoPRC_DT_PADRAO: TSQLTimeStampField;
    qryProducaoPRC_DT_BALANCA: TSQLTimeStampField;
    qryProducaoPRC_BALANCA: TIntegerField;
    qryProducaoPRC_PESO_PADRAO: TFMTBCDField;
    qryProducaoPRC_PESO_LIQUIDO: TFMTBCDField;
    qryProducaoPRC_TARA: TFMTBCDField;
    qryProducaoPRC_INTEGRADO: TStringField;
    qryProducaoPRC_DIGITO: TStringField;
    qryProducaoPRC_CODBARRAS: TStringField;
    qryProducaoPRC_NUMBARRAS: TStringField;
    qryProducaoLOTEEXPO: TStringField;
    DBGrid1: TDBGrid;
    cdsProducao: TClientDataSet;
    dspProducao: TDataSetProvider;
    pnl_TopoAba1: TPanel;
    Ds_Producao: TDataSource;
    Qr_ResProdLocal: TSQLQuery;
    DS_ResProdLocal: TDataSource;
    DBGrid2: TDBGrid;
    dsp_ResProdLocal: TDataSetProvider;
    Cds_ResProdLocal: TClientDataSet;
    Qr_ResProdLocalPRC_BALANCA: TIntegerField;
    Qr_ResProdLocalDIA: TStringField;
    Qr_ResProdLocalSEQUECIAL_I: TStringField;
    Qr_ResProdLocalSEQUECIAL_F: TStringField;
    Qr_ResProdLocalREGISTROS: TIntegerField;
    Qr_ResProdLocalDATA_I: TSQLTimeStampField;
    Qr_ResProdLocalDATA_F: TSQLTimeStampField;
    Cds_ResProdLocalPRC_BALANCA: TIntegerField;
    Cds_ResProdLocalDIA: TStringField;
    Cds_ResProdLocalSEQUECIAL_I: TStringField;
    Cds_ResProdLocalSEQUECIAL_F: TStringField;
    Cds_ResProdLocalREGISTROS: TIntegerField;
    Cds_ResProdLocalDATA_I: TSQLTimeStampField;
    Cds_ResProdLocalDATA_F: TSQLTimeStampField;
    cdsProducaoPRC_CODIGO: TFMTBCDField;
    cdsProducaoPRC_IDENTIFICACAO: TStringField;
    cdsProducaoPRD_CODIGO: TStringField;
    cdsProducaoPRC_DT_REGISTRO: TSQLTimeStampField;
    cdsProducaoPRC_DT_PADRAO: TSQLTimeStampField;
    cdsProducaoPRC_DT_BALANCA: TSQLTimeStampField;
    cdsProducaoPRC_BALANCA: TIntegerField;
    cdsProducaoPRC_PESO_PADRAO: TFMTBCDField;
    cdsProducaoPRC_PESO_LIQUIDO: TFMTBCDField;
    cdsProducaoPRC_TARA: TFMTBCDField;
    cdsProducaoPRC_INTEGRADO: TStringField;
    cdsProducaoPRC_DIGITO: TStringField;
    cdsProducaoPRC_CODBARRAS: TStringField;
    cdsProducaoPRC_NUMBARRAS: TStringField;
    cdsProducaoLOTEEXPO: TStringField;
    OpenDialog1: TOpenDialog;
    CnxOracle: TOraSession;
    qryOraProducao: TOraQuery;
    DS_OraProducao: TDataSource;
    qryOraProducaoPRC_CODIGO: TFloatField;
    qryOraProducaoPRC_IDENTIFICACAO: TStringField;
    qryOraProducaoPRD_CODIGO: TStringField;
    qryOraProducaoPRC_DT_REGISTRO: TStringField;
    qryOraProducaoPRC_DT_PADRAO: TStringField;
    qryOraProducaoPRC_DT_BALANCA: TStringField;
    qryOraProducaoPRC_BALANCA: TFloatField;
    qryOraProducaoPRC_PESO_PADRAO: TFloatField;
    qryOraProducaoPRC_PESO_LIQUIDO: TFloatField;
    qryOraProducaoPRC_TARA: TFloatField;
    qryOraProducaoPRC_INTEGRADO: TStringField;
    qryOraProducaoPRC_DIGITO: TStringField;
    qryOraProducaoPRC_CODBARRAS: TStringField;
    qryOraProducaoPRC_NUMBARRAS: TStringField;
    qryOraProducaoLOTEEXPO: TStringField;
    qryOraProducaoDB_KEY: TStringField;
    dbg_LogResumo: TDBGrid;
    dbg_Log: TDBGrid;
    SQL_ApagaDBLocal: TOraSQL;
    Qry_ResProducaoLog: TOraQuery;
    Ds_ResProducaoLog: TDataSource;
    Tab_Servidor: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Qr_ProducaoServer: TOraQuery;
    DS_ProducaoServer: TDataSource;
    Qr_ProdServerRes: TOraQuery;
    Ds_ProdServerRes: TDataSource;
    Qr_ProdServerResDDMMAA: TStringField;
    Qr_ProdServerResBALANCA: TStringField;
    Qr_ProdServerResSEQINI: TStringField;
    Qr_ProdServerResSEQFIM: TStringField;
    Qr_ProdServerResCAIXAS: TFloatField;
    Qr_ProdServerResPRIM_REGISTRO: TDateTimeField;
    Qr_ProdServerResULT_REGISTRO: TDateTimeField;
    Qr_ProducaoServerEMPRESA: TStringField;
    Qr_ProducaoServerFILIAL: TIntegerField;
    Qr_ProducaoServerID_REGIPROD: TFloatField;
    Qr_ProducaoServerID_IDENREGIPROD: TStringField;
    Qr_ProducaoServerID_MATERIAL: TFloatField;
    Qr_ProducaoServerID_EMBALAGEM: TFloatField;
    Qr_ProducaoServerID_ALMOXARIFADO: TFloatField;
    Qr_ProducaoServerID_MATEALMO: TFloatField;
    Qr_ProducaoServerID_PRODMATEEMBA: TStringField;
    Qr_ProducaoServerDT_REGIPROD: TDateTimeField;
    Qr_ProducaoServerDT_PADRREGIPROD: TDateTimeField;
    Qr_ProducaoServerDT_BALAREGIPROD: TDateTimeField;
    Qr_ProducaoServerID_BALANCA: TFloatField;
    Qr_ProducaoServerQN_PESOPADRREGIPROD: TFloatField;
    Qr_ProducaoServerQN_PESOLIQUREGIPROD: TFloatField;
    Qr_ProducaoServerFL_STATREGIPROD: TStringField;
    Qr_ProducaoServerFX_REGIPROD: TStringField;
    Qr_ProducaoServerQN_TARAEMBAREGIPROD: TFloatField;
    Qr_ProducaoServerID_TRANREGIPROD: TFloatField;
    Qr_ProducaoServerID_PEDIVEND: TFloatField;
    Qr_ProducaoServerDIGITOVER: TStringField;
    Qr_ProducaoServerLOTEEXPO: TStringField;
    Qr_ProducaoServerFL_TRANSFERE: TStringField;
    Qr_ProducaoServerID_GRUPO: TStringField;
    Qry_ResProducaoLogPRC_BALANCA: TFloatField;
    Qry_ResProducaoLogDIA: TStringField;
    Qry_ResProducaoLogSEQUECIAL_I: TStringField;
    Qry_ResProducaoLogSEQUECIAL_F: TStringField;
    Qry_ResProducaoLogREGISTROS: TFloatField;
    Qry_ResProducaoLogDATA_I: TStringField;
    Qry_ResProducaoLogDATA_F: TStringField;
    Sql_RecuperaLog: TOraSQL;
    Qry_RecuperaLog: TOraQuery;
    Qry_RecuperaLogIDENTIFICACAO: TStringField;
    Qry_RecuperaLogID_MATERIAL: TFloatField;
    Qry_RecuperaLogID_EMBALAGEM: TFloatField;
    Qry_RecuperaLogID_ALMOXARIFADO: TFloatField;
    Qry_RecuperaLogID_MATEALMO: TFloatField;
    Qry_RecuperaLogID_PRODMATEEMBA: TStringField;
    Qry_RecuperaLogDT_REGISTRO: TDateTimeField;
    Qry_RecuperaLogDT_PADRAO: TDateTimeField;
    Qry_RecuperaLogDT_BALANCA: TDateTimeField;
    Qry_RecuperaLogPRC_BALANCA: TFloatField;
    Qry_RecuperaLogPRC_PESO_PADRAO: TFloatField;
    Qry_RecuperaLogPRC_PESO_LIQUIDO: TFloatField;
    Qry_RecuperaLogPRC_TARA: TFloatField;
    Qry_RecuperaLogPRC_DIGITO: TStringField;
    Pnl_Servidor: TPanel;
    btn_Servidor: TButton;
    Label1: TLabel;
    Lkp_Balanca: TDBLookupComboBox;
    Label2: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    btn_Pesquisar: TButton;
    Btn_AbreLog: TButton;
    btn_RecuperaLog: TButton;
    edt_arquivo: TEdit;
    SpeedButton1: TSpeedButton;
    btn_Log: TButton;
    Qry_Balanca: TOraQuery;
    Ds_Balanca: TDataSource;
    Qry_BalancaIPB_BALANCA: TFloatField;
    Qry_BalancaIPB_IP: TStringField;
    Qry_BalancaIPB_SEQUENCIAL: TFloatField;
    Qry_BalancaIPB_ULTIMADT: TDateTimeField;
    Qry_BalancaBALA: TStringField;
    btn_RegistrosServ: TSpeedButton;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ProgressBar1: TProgressBar;
    lbl_Aguarde: TLabel;
    Qry_ResProducaoLogID_DTBAL: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    btn_ContaReg: TSpeedButton;
    Label7: TLabel;
    Edit1: TJvEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_LogClick(Sender: TObject);
    procedure btn_ServidorClick(Sender: TObject);
    procedure Btn_AbreLogClick(Sender: TObject);
    procedure btn_RecuperaLogClick(Sender: TObject);
    procedure btn_RegistrosServClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btn_ContaRegClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_DadosProducao: TFrm_DadosProducao;

implementation

uses Math,IniFiles;

{$R *.dfm}

procedure TFrm_DadosProducao.FormCreate(Sender: TObject);
var  Server , crip, parte, prolo, desfe, conectastring  : string;
var ArqIni: TIniFile ;
begin
     try
        ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'ProducaoVcl.ini');
        Server     :=  ArqIni.ReadString('SERVIDOR','ServerBD','192.168.0.250:1521:orcl' ) ;
     finally
       ArqIni.Free;
     end;
     crip := 'SMA';
     parte := 'RT/py';
     prolo := 'xis';

     desfe := '@'+Server;
     conectastring := crip + parte + prolo + desfe;

    try
      CnxOracle.Disconnect;
      CnxOracle.ConnectString := conectastring;
      CnxOracle.Connect;
    except on E: Exception do
      begin
           MessageDlg('Erro ao conectar ao servidor Oracle. '+ E.Message, mtError, [mbOK], 0);
      end;
    end;

    //Conecta ao banco de dados firebird
    try
      CnxFireBird.Connected := False;
      CnxFireBird.Connected := True;
      
    except on E: Exception do
      begin
           MessageDlg('Erro ao conectar ao servidor Firebird. '+ E.Message, mtError, [mbOK], 0);
      end;
    end;

    Edt_Data.Date := Today - 1;
    PageControl1.ActivePage := Tab_Servidor;

    Qry_Balanca.Close;
    Qry_Balanca.Open;
    Lkp_Balanca.KeyValue := 2;

end;

procedure TFrm_DadosProducao.btn_PesquisarClick(Sender: TObject);
begin
      cdsProducao.Active      := false ;
      Cds_ResProdLocal.Active := false ;
      Qr_ResProdLocal.Params[0].Value := DateToStr( Edt_Data.DateTime );
      Qr_ResProdLocal.Params[1].Value := DateToStr( Edt_Data.DateTime )+' 23:59:59';//DateToStr(EndOfTheDay( Edt_Data.DateTime )) ;
      Qr_ResProdLocal.Params[2].Value := Lkp_Balanca.KeyValue;
      Cds_ResProdLocal.Active := true;

end;

procedure TFrm_DadosProducao.SpeedButton1Click(Sender: TObject);
begin
    if ( OpenDialog1.Execute ) then
       edt_arquivo.Text := OpenDialog1.FileName;
end;

procedure TFrm_DadosProducao.btn_LogClick(Sender: TObject);
var
  myFile : TextFile;
  text   : string;
  i : Integer;
begin
      if ( edt_arquivo.Text = '' ) then
      begin
           ShowMessage('Arquivo não informado');
           exit;
      end;
      if ( not FileExists( edt_arquivo.Text) ) then
      begin
           ShowMessage('Arquivo não encontrado');
           exit;
      end;

     ProgressBar1.Visible := true;
     lbl_Aguarde.Visible := True;
     Cursor := crHourGlass;
     Application.ProcessMessages;

     SQL_ApagaDBLocal.ParamByName('DT_INI').Value := DateToStr( Edt_Data.DateTime );
     SQL_ApagaDBLocal.ParamByName('DT_FIM').Value := DateToStr( Edt_Data.DateTime )+' 23:59:59';
     SQL_ApagaDBLocal.ParamByName('PRC_BALANCA').Value := Lkp_Balanca.KeyValue;

     SQL_ApagaDBLocal.Execute;
     qryOraProducao.Open;
     qryOraProducao.DisableControls;

     i := 1 ;
     AssignFile(myFile, edt_arquivo.Text );
     Reset(myFile);

     while not Eof(myFile) do
     begin
         ReadLn(myFile, text);
         if ( Copy(text,1,6) <> ' - Pr.' ) then
         begin
             qryOraProducao.Append;
             qryOraProducaoPRC_CODIGO.Value := i;
             qryOraProducaoPRC_IDENTIFICACAO.Value := Copy(text,1,12);
             qryOraProducaoPRD_CODIGO.Value        := Copy(text,21,3);
             qryOraProducaoPRC_DT_REGISTRO.Value   := Copy(text,63,19);
             qryOraProducaoPRC_DT_PADRAO.Value     := Copy(text,32,19);
             qryOraProducaoPRC_DT_BALANCA.Value    := Copy(text,63,19);

             qryOraProducaoPRC_BALANCA.Value      := StrToFloat( Copy(text,7,2));
             qryOraProducaoPRC_PESO_PADRAO.Value  := StrToFloat( Copy(text,95,5));
             qryOraProducaoPRC_PESO_LIQUIDO.Value := StrToFloat( Copy(text,111,5));
             qryOraProducaoPRC_TARA.Value         := StrToFloat( Copy(text,125,3));
             qryOraProducaoPRC_DIGITO.Value       := Copy(text,138,2);
             i := i + 1;

             ProgressBar1.Position := i;
             Application.ProcessMessages;
             qryOraProducao.Post;
             qryOraProducao.ApplyUpdates;
             qryOraProducao.CommitUpdates;
         end;
     end;
     qryOraProducao.EnableControls;
     CloseFile(myFile);
     lbl_Aguarde.Visible := false;
     ProgressBar1.Visible := False;
     Cursor := crDefault;
     Application.ProcessMessages;

     Showmessage('Importação Finalizada.');

     Qry_ResProducaoLog.Close;
     Qry_ResProducaoLog.ParamByName('DT_INI').Value := DateToStr( Edt_Data.DateTime );
     Qry_ResProducaoLog.ParamByName('DT_FIM').Value := DateToStr( Edt_Data.DateTime )+' 23:59:59';
     Qry_ResProducaoLog.ParamByName('PRC_BALANCA').Value := Lkp_Balanca.KeyValue;
     Qry_ResProducaoLog.Open;
end;

procedure TFrm_DadosProducao.btn_ServidorClick(Sender: TObject);
begin
     if ( Lkp_Balanca.Text = '' ) then
     begin
          Showmessage('Selecione uma balança');
          exit;
     end;
     Qr_ProducaoServer.Close;
     Qr_ProdServerRes.Close;
     Qr_ProdServerRes.ParamByName('DT_INI').Value :=  Edt_Data.DateTime;
     Qr_ProdServerRes.ParamByName('DT_FIM').Value :=  EndOfTheDay( Edt_Data.DateTime ) ;
     Qr_ProdServerRes.ParamByName('ID_BALANCA').Value := Lkp_Balanca.KeyValue;
     Qr_ProdServerRes.Open;
     btn_PesquisarClick(Sender);
     Btn_AbreLogClick(Sender);
     btn_ContaRegClick(Sender);
end;

procedure TFrm_DadosProducao.Btn_AbreLogClick(Sender: TObject);
begin
     qryOraProducao.Close;
     Qry_ResProducaoLog.Close;
     Qry_ResProducaoLog.ParamByName('DT_INI').Value := DateToStr( Edt_Data.DateTime );
     Qry_ResProducaoLog.ParamByName('DT_FIM').Value := DateToStr( Edt_Data.DateTime )+' 23:59:59';
     Qry_ResProducaoLog.ParamByName('PRC_BALANCA').Value := Lkp_Balanca.KeyValue;
     Qry_ResProducaoLog.Open;

end;

procedure TFrm_DadosProducao.btn_RecuperaLogClick(Sender: TObject);
begin


     Qry_RecuperaLog.Close;
     Qry_RecuperaLog.ParamByName('DT_INISTR').Value := DateToStr( Edt_Data.DateTime );
     Qry_RecuperaLog.ParamByName('DT_FIMSTR').Value := DateToStr( Edt_Data.DateTime )+' 23:59:59';
     Qry_RecuperaLog.ParamByName('DT_INI').Value    := DateToStr( Edt_Data.DateTime );
     Qry_RecuperaLog.ParamByName('DT_FIM').Value    := DateToStr( Edt_Data.DateTime )+' 23:59:59';
     Qry_RecuperaLog.ParamByName('ID_BALANCA').Value  := Lkp_Balanca.KeyValue;
     Qry_RecuperaLog.ParamByName('PRC_BALANCA').Value := Lkp_Balanca.KeyValue;
     Qry_RecuperaLog.ParamByName('ID_DTBAL').Value := Qry_ResProducaoLogID_DTBAL.Value;


     //Qry_RecuperaLog.SQL.SaveToFile('Dacar.txt');
     Qry_RecuperaLog.Open;

     if (Qry_RecuperaLog.RecordCount > 0  ) then
     begin
           if (  MessageDlg('Foram encontrados ' + intToStr( Qry_RecuperaLog.RecordCount) + ' Registros do dia '+ Qry_ResProducaoLogID_DTBAL.Value + ' . Deseja importá-los para o Servidor ? .', mtConfirmation, [mbYes,mbNo], 0)= mrNo ) then
           begin
                Exit;
           end;
     end
     else
     begin
          Showmessage('Não foram encontrados registros para recuperar.');
          Exit;
     end;

     Sql_RecuperaLog.ParamByName('DT_INISTR').Value := DateToStr( Edt_Data.DateTime );
     Sql_RecuperaLog.ParamByName('DT_FIMSTR').Value := DateToStr( Edt_Data.DateTime )+' 23:59:59';
     Sql_RecuperaLog.ParamByName('DT_INI').Value    := DateToStr( Edt_Data.DateTime );
     Sql_RecuperaLog.ParamByName('DT_FIM').Value    := DateToStr( Edt_Data.DateTime )+' 23:59:59';
     Sql_RecuperaLog.ParamByName('ID_BALANCA').Value  := Lkp_Balanca.KeyValue;
     Sql_RecuperaLog.ParamByName('PRC_BALANCA').Value := Lkp_Balanca.KeyValue;
     Sql_RecuperaLog.ParamByName('ID_DTBAL').Value := Qry_ResProducaoLogID_DTBAL.Value;

      try
        Sql_RecuperaLog.Execute;
      except on E: Exception do
        begin
             MessageDlg('Erro ao Recuperar dados. '+ E.Message, mtError, [mbOK], 0);
             Exit;
        end;
      end;
      Showmessage('Dados Recuperados.');

end;

procedure TFrm_DadosProducao.btn_RegistrosServClick(Sender: TObject);
begin
     Qr_ProducaoServer.Close;
     Qr_ProducaoServer.ParamByName('DT_INI').Value := Edt_Data.DateTime ;
     Qr_ProducaoServer.ParamByName('DT_FIM').Value := EndOfTheDay( Edt_Data.DateTime ) ;
     Qr_ProducaoServer.ParamByName('ID_BALANCA').Value := Lkp_Balanca.KeyValue;
     Qr_ProducaoServer.Open;
end;

procedure TFrm_DadosProducao.SpeedButton2Click(Sender: TObject);
begin
     qryOraProducao.Close;
     qryOraProducao.ParamByName('DT_INI').Value := DateToStr( Edt_Data.DateTime );
     qryOraProducao.ParamByName('DT_FIM').Value := DateToStr( Edt_Data.DateTime )+' 23:59:59';
     qryOraProducao.ParamByName('PRC_BALANCA').Value := Lkp_Balanca.KeyValue;
     qryOraProducao.Open;
end;

procedure TFrm_DadosProducao.SpeedButton3Click(Sender: TObject);
begin
      cdsProducao.Active := false ;
      qryProducao.Params[0].Value := DateToStr( Edt_Data.DateTime );
      qryProducao.Params[1].Value := DateToStr( Edt_Data.DateTime )+' 23:59:59';//DateToStr(EndOfTheDay( Edt_Data.DateTime )) ;
      qryProducao.Params[2].Value := Lkp_Balanca.KeyValue;
      cdsProducao.Active := true;
end;

procedure TFrm_DadosProducao.btn_ContaRegClick(Sender: TObject);
var Arqlog : String;
   myFile : TextFile;
   text   : string;
   i : Integer;
begin
     Arqlog := Copy ( DateToStr( Edt_Data.Date),1,2) + Copy ( DateToStr( Edt_Data.Date),4,2) +  Copy ( DateToStr( Edt_Data.Date),9,2) ;
     Arqlog := 'log' + Arqlog +'.txt';
     Arqlog := 'C:\caasistemas\log\'+ Arqlog ;

      if ( not FileExists( Arqlog  ) ) then
      begin
           ShowMessage('Arquivo de log não encontrado'  + Arqlog );
           exit;
      end;
     Cursor := crHourGlass;
     Application.ProcessMessages;
     i := 1 ;
     AssignFile(myFile, Arqlog );
     Reset(myFile);

     while not Eof(myFile) do
     begin
         ReadLn(myFile, text);
         if ( Copy(text,1,6) <> ' - Pr.' ) then
         begin
             i := i + 1;
         end;
     end;
     Edit1.Text := IntToStr(i);
     CloseFile(myFile);
     Cursor := crDefault;
     Application.ProcessMessages;
end;

end.
