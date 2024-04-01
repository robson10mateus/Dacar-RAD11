unit UFrmSelFreteDevo;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DBCtrls, DB, Ora, MemDS,
  DBAccess;

type
  TFrmSelFreteDevo = class(TForm)
    Panel1: TPanel;
    DTIni: TEdit;
    DtFim: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QrFor: TOraQuery;
    Label3: TLabel;
    DSFor: TOraDataSource;
    DcbFor: TDBLookupComboBox;
    EdCodFor: TEdit;
    EdCodCol: TEdit;
    Label4: TLabel;
    RGSubTotal: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EdCodForExit(Sender: TObject);
    procedure DcbForExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelFreteDevo: TFrmSelFreteDevo;

implementation

Uses UFrmRelDoa, Global, UFrmRelFreteFg, UFrmRelFreteDevo,
  UFrmRelFreteDevoCol, Principal;

{$R *.dfm}

procedure TFrmSelFreteDevo.BitBtn1Click(Sender: TObject);
var vsqlini:string;
begin
   Screen.Cursor := crSQLWait;
   vsqlini:= '    SELECT DISTINCT                                                   '+
     '  PEDIDO_VENDA.ID_PEDIVEND,                                   '+
     '  SISTEMA_PARAMETRO.PC_TOLEQUEBPARASIST,                      '+
     '  (PEDIDO_VENDA.VL_PEDIVEND) AS VLPEDIDO,                     '+
     '  (PEDIDO_VENDA.QN_PESOPADREXPEPEDIVEND) AS VLEXPEDIDO,       '+
     '  (PEDIDO_VENDA.QN_PESOREALEXPEPEDIVEND) AS PESOEXPEDIDO,     '+
     '  (PEDIDO_VENDA.VL_FATUPEDIVEND) AS VLFATU,                   '+
     '  (PEDIDO_VENDA.VL_QUEBPEDIVEND) AS VLQUEBRA,                 '+
     '  Nvl((CASE WHEN PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND=0 then PEDIDO_VENDA.QN_PESOREALDEVOPEDIVEND ELSE PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND END),0) AS PESODEVOL, '+
     '  TRANSPORTADOR_VEICULO.GN_PLACVEICTRAN,                      '+
     '  TRANSPORTADOR_VEICULO.QN_FATOFRETABATVEICTRAN,              '+
     '  FORNECEDOR.ID_FORNECEDOR,                                   '+
     '  FORNECEDOR.NM_FORNECEDOR,                                   '+
     '  FRETE_ABATIDO.VL_QUILFRETABAT * (logistica_subregiao.qn_fatofretabatsubrlogi-1) AS FTFRETE_SUBREGIAO,  '+
     '  (TRANSPORTADOR_VEICULO.QN_FATOFRETABATVEICTRAN*FRETE_ABATIDO.VL_QUILFRETABAT) AS FTFRETE_VEICU,        '+
     '  (FRETE_ABATIDO.VL_QUILFRETABAT * (logistica_subregiao.qn_fatofretabatsubrlogi-1) + (TRANSPORTADOR_VEICULO.QN_FATOFRETABATVEICTRAN*FRETE_ABATIDO.VL_QUILFRETABAT)) AS VLMEDIKG,  '+
     '  (CASE WHEN (( Nvl(CLIENTE.pc_fretemax,0) * Nvl((CASE WHEN PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND=0 then PEDIDO_VENDA.QN_PESOREALDEVOPEDIVEND ELSE PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND END),0)) > 0 ) '+
     '  then (( Nvl(CLIENTE.pc_fretemax,0) * Nvl((CASE WHEN PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND=0 then PEDIDO_VENDA.QN_PESOREALDEVOPEDIVEND ELSE PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND END),0)) ) ELSE      '+
     '  (( Nvl((CASE WHEN PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND=0 then PEDIDO_VENDA.QN_PESOREALDEVOPEDIVEND ELSE PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND END),0)) * (FRETE_ABATIDO.VL_QUILFRETABAT * '+
     '  (logistica_subregiao.qn_fatofretabatsubrlogi-1) + (TRANSPORTADOR_VEICULO.QN_FATOFRETABATVEICTRAN*FRETE_ABATIDO.VL_QUILFRETABAT))) END) AS FreteBruto,  '+
     '  PEDIDO_VENDA.DT_ENTRPEDIVEND,            '+
     '  PEDIDO_VENDA.VL_DEVOPEDIVEND AS VLDEVO,  '+
     '  PEDIDO_DEVOLUCAO_VENDA.ID_PEDIDEVOVEND,  '+
     '  PEDIDO_DEVOLUCAO_VENDA.ID_MOTOTRAN,      '+
     '  PEDIDO_DEVOLUCAO_VENDA.FL_FRETEPG,       '+
     '  PEDIDO_DEVOLUCAO_VENDA.NM__FRETEPG,      '+
     '  PEDIDO_DEVOLUCAO_VENDA.COD_FRETEPG       '+
     'FROM                      '+
     '  SISTEMA_PARAMETRO,      '+
     '  EXPEDICAO_CARGA,        '+
     '  PEDIDO_VENDA,           '+
     '  TRANSPORTADOR_VEICULO,  '+
     '  FORNECEDOR,             '+
     '  VEICULO_TIPO,           '+
     '  FRETE_ABATIDO,          '+
     '  CLIENTE,                '+
     '  LOGISTICA_SUBREGIAO,    '+
     '  PEDIDO_DEVOLUCAO_VENDA  '+
     'WHERE                     '+
     '  EXPEDICAO_CARGA.ID_CARGEXPE = PEDIDO_VENDA.ID_CARGEXPE AND       '+
     '  EXPEDICAO_CARGA.ID_ITEMPROGCAMI = FORNECEDOR.ID_FORNECEDOR AND   '+
     '  EXPEDICAO_CARGA.GN_PLACVEICTRAN = TRANSPORTADOR_VEICULO.GN_PLACVEICTRAN AND       '+
     '  TRANSPORTADOR_VEICULO.ID_FORNECEDOR_TRANSPORTADOR = FORNECEDOR.ID_FORNECEDOR AND  '+
     '  TRANSPORTADOR_VEICULO.ID_TIPOVEIC = VEICULO_TIPO.ID_TIPOVEIC AND     '+
     '  VEICULO_TIPO.ID_TIPOVEIC = FRETE_ABATIDO.ID_TIPOVEIC AND             '+
     '  PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE AND                     '+
     '  CLIENTE.ID_SUBRLOGI = LOGISTICA_SUBREGIAO.ID_SUBRLOGI AND            '+
     '  PEDIDO_VENDA.DT_ENTRPEDIVEND BETWEEN :DTINI AND :DTFIM AND           '+
     '  EXPEDICAO_CARGA.FL_STATCARGEXPE <> ''NF'' AND                        '+
     '  PEDIDO_VENDA.VL_DEVOPEDIVEND >0   AND                                '+
     '  PEDIDO_DEVOLUCAO_VENDA.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND AND    '+
     '  PEDIDO_DEVOLUCAO_VENDA.FL_FRETEPG = ''S''                            ';

   //Ordenar por transportador
   IF (RGSubTotal.ItemIndex = 0) then
   BEGIN
      FrmRelFreteDevo:=TFrmRelFreteDevo.Create(Self);
      FrmRelFreteDevo.DT1.Caption := DTIni.Text;
      FrmRelFreteDevo.DT2.Caption := DtFim.Text;
      FrmRelFreteDevo.RLLabel1.Caption   :=  dadosCadastraisFilial.NomeFilial;
      FrmRelFreteDevo.LblUnidade.Caption := ' - Unidade ' + dadosCadastraisFilial.Apelido;

      FrmRelFreteDevo.QrFrete.Close;
      FrmRelFreteDevo.QrFrete.SQL.Clear;

      FrmRelFreteDevo.QrFrete.SQL.Text := vsqlini;

      if (EdCodFor.Text <> '') then
         FrmRelFreteDevo.QrFrete.SQL.Add(' AND FORNECEDOR.ID_FORNECEDOR = :VFOR      ');

      //FrmRelFreteDevo.QrFrete.SQL.Add(' AND PEDIDO_VENDA.sg_tipofretpedivend = ''CIF''   ');

      FrmRelFreteDevo.QrFrete.SQL.Add(' ORDER BY                               ');
      FrmRelFreteDevo.QrFrete.SQL.Add('  FORNECEDOR.ID_FORNECEDOR,            ');
      FrmRelFreteDevo.QrFrete.SQL.Add('  PEDIDO_VENDA.ID_PEDIVEND             ');

      FrmRelFreteDevo.QrFrete.ParamByName('DTINI').AsDate := StrToDate(DTIni.Text);
      FrmRelFreteDevo.QrFrete.ParamByName('DTFIM').AsDate := StrToDate(DTFim.Text);

      if (EdCodFor.Text <> '') then
         FrmRelFreteDevo.QrFrete.ParamByName('VFOR').AsFloat := StrToFloat(EdCodFor.Text);

      FrmRelFreteDevo.QrFrete.Open;

      //FrmRelFreteDevo.QrFrete.SQL.SaveToFile('C:\SQL.txt');

      Screen.Cursor := crDefault;
//      FrmRelFreteDevo.PDSetup.Copies := 1;
      FrmRelFreteDevo.RLReport1.Preview(nil);
   END
   ELSE
   BEGIN
      FrmRelFreteDevoCol:=TFrmRelFreteDevoCol.Create(Self);
      FrmRelFreteDevoCol.DT1.Caption := DTIni.Text;
      FrmRelFreteDevoCol.DT2.Caption := DtFim.Text;

      FrmRelFreteDevoCol.LblUnidade.Caption := ' - Unidade ' + dadosCadastraisFilial.Apelido;

      FrmRelFreteDevoCol.QrFrete.Close;
      FrmRelFreteDevoCol.QrFrete.SQL.Clear;

      FrmRelFreteDevoCol.QrFrete.SQL.Text := vsqlini;

      if (EdCodCol.Text <> '') then
      FrmRelFreteDevoCol.QrFrete.SQL.Add(' AND PEDIDO_DEVOLUCAO_VENDA.COD_FRETEPG = :VCODCOL      ');

      //     FrmRelFreteDevo.QrFrete.SQL.Add(' AND PEDIDO_VENDA.sg_tipofretpedivend = ''CIF''   ');

      FrmRelFreteDevoCol.QrFrete.SQL.Add(' ORDER BY                              ');
      FrmRelFreteDevoCol.QrFrete.SQL.Add('  PEDIDO_DEVOLUCAO_VENDA.COD_FRETEPG,  ');
      FrmRelFreteDevoCol.QrFrete.SQL.Add('  PEDIDO_VENDA.ID_PEDIVEND             ');

      FrmRelFreteDevoCol.QrFrete.ParamByName('DTINI').AsDate := StrToDate(DTIni.Text);
      FrmRelFreteDevoCol.QrFrete.ParamByName('DTFIM').AsDate := StrToDate(DTFim.Text);

      if (EdCodCol.Text <> '') then
       FrmRelFreteDevoCol.QrFrete.ParamByName('VCODCOL').AsString := EdCodCol.Text;

      // FrmRelFreteDevoCol.RLDBText2.Visible := False;
      //  FrmRelFreteDevoCOl.RLDBText1.Visible := False;

      FrmRelFreteDevoCol.QrFrete.Open;
      Screen.Cursor := crDefault;
//      FrmRelFreteDevoCol.PDSetup.Copies := 1;
      FrmRelFreteDevoCol.RLReport1.Preview(nil);
   END;
end;

procedure TFrmSelFreteDevo.FormCreate(Sender: TObject);
begin
  DTIni.Text := DateToStr(Date());
  DtFim.Text := DateToStr(Date());
  QrFor.Open;
end;

procedure TFrmSelFreteDevo.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmSelFreteDevo.EdCodForExit(Sender: TObject);
begin
  If EdCodFor.Text <> '' then
    begin
      DcbFor.KeyValue := StrToFloat(EdCodFor.Text);
    end;
end;

procedure TFrmSelFreteDevo.DcbForExit(Sender: TObject);
begin
  If DcbFor.KeyValue <> null  then
     EdCodFor.Text:= FloatToStr(DcbFor.KeyValue);
end;

procedure TFrmSelFreteDevo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmSelFreteDevo:=nil;
//  FrmPrincipal.VEN034.Enabled:= True;
  FrmPrincipal.ACVEN034.Enabled:= True;
  Action:=caFree;
end;

end.
