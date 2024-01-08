unit UFrmSelDoa;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DBCtrls, DB, Ora, MemDS,
  DBAccess;

type
  TFrmSelRelDoa = class(TForm)
    Panel1: TPanel;
    DTIni: TEdit;
    DtFim: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RGTipoPedi: TRadioGroup;
    QrCliente: TOraQuery;
    Label3: TLabel;
    DSCliente: TOraDataSource;
    DcbCliente: TDBLookupComboBox;
    CBCliente: TCheckBox;
    EdCodCli: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure DcbClienteExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelRelDoa: TFrmSelRelDoa;

implementation

uses UFrmRelDoa,global, Principal;

{$R *.dfm}

procedure TFrmSelRelDoa.BitBtn1Click(Sender: TObject);
begin
   Screen.Cursor := crSQLWait;
   FrmRelDoa:=TFrmRelDoa.Create(Self);
   FrmRelDoa.DT1.Caption := DTIni.Text ;
   FrmRelDoa.DT2.Caption := DtFim.Text ;

   FrmRelDoa.LblUnidade.Caption := ' - Unidade ' + dadosCadastraisFilial.Apelido;
   FrmRelDoa.RLLabel1.Caption :=  dadosCadastraisFilial.NomeFilial;

   FrmRelDoa.QrDoa.Close;
   FrmRelDoa.QrDoa.ParamByName('DTINI').AsDate := StrToDate(DTIni.Text);
   FrmRelDoa.QrDoa.ParamByName('DTFIM').AsDate := StrToDate(DTFim.Text);
   FrmRelDoa.QrDoa.ParamByName('FILIAL').Value := gi_Filial;


   if (RGTipoPedi.ItemIndex = 0) then
   begin
      FrmRelDoa.QrDoa.ParamByName('VTIPO').AsFloat := 9;
      FrmRelDoa.lbltitulo.caption:= 'Relatório de Doação';
   end
   else
   begin
      FrmRelDoa.QrDoa.ParamByName('VTIPO').AsFloat := 17;
      FrmRelDoa.lbltitulo.caption:= 'Relatório de Bonificação';
   end;
   if CBCliente.Checked then
   begin
      FrmRelDoa.QrDoa.SQL.Add(' AND PEDIDO_VENDA.ID_CLIENTE = ' + FloatToStr(DcbCliente.KeyValue) ) ;
   end;

  FrmRelDoa.QrDoa.SQL.Add('ORDER BY ID_PEDIVEND');
  FrmRelDoa.QrDoa.Open;
  Screen.Cursor := crDefault;
//  FrmRelDoa.RLPrintDialogSetup1.Copies :=1;
  FrmRelDoa.RLReport1.Preview(nil);
end;

procedure TFrmSelRelDoa.FormCreate(Sender: TObject);
begin
  DTIni.Text := DateToStr(Date());
  DtFim.Text := DateToStr(Date());
  QrCliente.Open;
end;

procedure TFrmSelRelDoa.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmSelRelDoa.EdCodCliExit(Sender: TObject);
begin
  If EdCodCli.Text <> '' then
    begin
      DcbCliente.KeyValue := StrToFloat(EdCodCli.Text);
    end;
end;

procedure TFrmSelRelDoa.DcbClienteExit(Sender: TObject);
begin
  EdCodCli.Text:= DcbCliente.KeyValue;
  // FloatToStr('DcbCliente.KeyValue');
end;

procedure TFrmSelRelDoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.VEN008.Enabled:= True;
end;

end.

