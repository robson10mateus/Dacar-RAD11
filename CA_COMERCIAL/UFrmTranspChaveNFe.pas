unit UFrmTranspChaveNFe;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, MemDS, DBAccess, Ora, DBCtrls,
  Buttons, Grids, DBGrids, ComObj;

type
  TFrmTranspChaveNFe = class(TForm)
    pnlCab: TPanel;
    qryTransp: TOraQuery;
    qryPesq: TOraQuery;
    dtsTransp: TDataSource;
    lkTransp: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DTIni: TEdit;
    Label3: TLabel;
    DtFim: TEdit;
    Sb_Sair: TSpeedButton;
    SB_EXCEL: TSpeedButton;
    SB_Exec: TSpeedButton;
    SB_BROF: TSpeedButton;
    qryTranspID_FORNECEDOR: TFloatField;
    qryTranspNM_FORNECEDOR: TStringField;
    qryPesqDT_CARGEXPE: TDateTimeField;
    qryPesqGN_PLACVEICTRAN: TStringField;
    qryPesqNFE_CHAVE: TStringField;
    DBGrid1: TDBGrid;
    dtsPesq: TDataSource;
    pnlRod: TPanel;
    lblTotal: TLabel;
    qryPesqQN_PESOLIQUNOTAFISC: TFloatField;
    qryPesqVL_NOTAFISC: TFloatField;
    EdCodFor: TEdit;
    qryPlaca: TOraQuery;
    dtsPlaca: TDataSource;
    Label4: TLabel;
    cmbPlaca: TComboBox;
    qryPlacaGN_PLACVEICTRAN: TStringField;
    SB_CSV: TSpeedButton;
    dlgSaveArquivo: TSaveDialog;
    qryPesqNFE_XML: TBlobField;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SB_ExecClick(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_EXCELClick(Sender: TObject);
    procedure SB_BROFClick(Sender: TObject);
    procedure EdCodForExit(Sender: TObject);
    procedure SB_CSVClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTranspChaveNFe: TFrmTranspChaveNFe;

implementation

uses Principal, global;

{$R *.dfm}

procedure TFrmTranspChaveNFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmTranspChaveNFe:=nil;
  FrmPrincipal.VEN041.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmTranspChaveNFe.FormCreate(Sender: TObject);
begin
  DTIni.Text := DateToStr(Date());
  DtFim.Text := DateToStr(Date());
  qryTransp.Open;
end;

procedure TFrmTranspChaveNFe.SB_ExecClick(Sender: TObject);
begin
  if (lkTransp.Text = '') then
    begin
      ShowMessage('Favor informar o transportador.');
      lkTransp.SetFocus;
      exit;
    end;
  if (trim(DTIni.Text) = '') then
    begin
      ShowMessage('Favor informar a data inicial.');
      DTIni.SetFocus;
      exit;
    end;
  if (trim(DtFim.Text) = '') then
    begin
      ShowMessage('Favor informar a data final.');
      DtFim.SetFocus;
      exit;
    end;

  qryPesq.Close;
  qryPesq.SQL.Clear;
  qryPesq.SQL.Add('');
  qryPesq.SQL.Add('SELECT');
  qryPesq.SQL.Add('  EC.DT_CARGEXPE,');
  qryPesq.SQL.Add('  TV.GN_PLACVEICTRAN,');
  qryPesq.SQL.Add('  NF.QN_PESOLIQUNOTAFISC,');
  qryPesq.SQL.Add('  NF.VL_NOTAFISC,');
  qryPesq.SQL.Add('  NFX.NFE_CHAVE,');
  qryPesq.SQL.Add('  NFX.NFE_XML');
  qryPesq.SQL.Add('FROM');
  qryPesq.SQL.Add('  EXPEDICAO_CARGA EC,');
  qryPesq.SQL.Add('  PEDIDO_VENDA PV,');
  qryPesq.SQL.Add('  TRANSPORTADOR_VEICULO TV,');
  qryPesq.SQL.Add('  FORNECEDOR FO,');
  qryPesq.SQL.Add('  PEDIDO_VENDA_NOTA_FISCAL PVNF,');
  qryPesq.SQL.Add('  NOTA_FISCAL NF,');
  qryPesq.SQL.Add('  NOTA_FISCAL_XML NFX');
  qryPesq.SQL.Add('WHERE');
  qryPesq.SQL.Add('  EC.ID_CARGEXPE = PV.ID_CARGEXPE AND');
  qryPesq.SQL.Add('  EC.ID_ITEMPROGCAMI = FO.ID_FORNECEDOR AND');
  qryPesq.SQL.Add('  EC.GN_PLACVEICTRAN = TV.GN_PLACVEICTRAN AND');
  qryPesq.SQL.Add('  TV.ID_FORNECEDOR_TRANSPORTADOR = FO.ID_FORNECEDOR AND');
  qryPesq.SQL.Add('  FO.ID_FORNECEDOR = :VTRANSP AND');
  qryPesq.SQL.Add('  TRUNC(EC.DT_CARGEXPE) >= :DTINI AND');
  qryPesq.SQL.Add('  TRUNC(EC.DT_CARGEXPE) <= :DTFIM AND');
  if cmbPlaca.Text <> '' then
    qryPesq.SQL.Add('  TV.GN_PLACVEICTRAN = :VPLACA AND');
  qryPesq.SQL.Add('  PVNF.ID_PEDIVEND (+) = PV.ID_PEDIVEND AND');
  qryPesq.SQL.Add('  NF.ID_NOTAFISC (+) = PVNF.ID_NOTAFISC AND');
  qryPesq.SQL.Add('  NFX.ID_NOTAFISC = NF.ID_NOTAFISC AND');
  qryPesq.SQL.Add('  NVL(NF.FL_CANCNOTAFISC,''N'') = ''N''  AND');
  qryPesq.SQL.Add(' PV.FILIAL = ' + inttoStr( gi_filial ) +' AND ');
  qryPesq.SQL.Add('  EC.FL_STATCARGEXPE <>''NF''');
  qryPesq.SQL.Add('ORDER BY');
  qryPesq.SQL.Add('  EC.DT_CARGEXPE');
  qryPesq.ParamByName('VTRANSP').Value:= qryTranspID_FORNECEDOR.Value;
  qryPesq.ParamByName('DTINI').Value:= StrToDate(DTIni.Text);
  qryPesq.ParamByName('DTFIM').Value:= StrToDate(DtFim.Text);
  if cmbPlaca.Text <> '' then
    qryPesq.ParamByName('VPLACA').Value:= cmbPlaca.Text;
  //qryPesq.SQL.SaveToFile('C:\chave_nfe.sql');
  qryPesq.Open;
  if not qryPesq.IsEmpty then
    begin
      SB_EXCEL.Enabled:= True;
      SB_BROF.Enabled:= True;
    end
  else
    begin
      SB_EXCEL.Enabled:= False;
      SB_BROF.Enabled:= False;
    end;
  qryPesq.Last;
  qryPesq.First;
  lblTotal.Caption:= 'Total: ' + IntToStr(qryPesq.RecordCount);
end;

procedure TFrmTranspChaveNFe.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmTranspChaveNFe.SB_EXCELClick(Sender: TObject);
var
  excel : variant;
  LINHA : integer;
begin
  try
    excel := CreateOleObject('excel.application');
    if not Excel.Application.Visible then
      Excel.Application.Visible := true;
    //ShowMessage('Aguarde...');
    Excel.WorkBooks.Add;
    Excel.Cells[1,1] := 'Transportador ' + lkTransp.Text;
    Excel.Cells[2,1] := 'Data';
    Excel.Cells[2,2] := 'Placa';
    Excel.Cells[2,3] := 'Peso';
    Excel.Cells[2,4] := 'Valor';
    Excel.Cells[2,5] := 'Chave NFe';
    LINHA := 3;
    qryPesq.First;
    WHILE NOT qryPesq.Eof DO
      BEGIN
        if qryPesqDT_CARGEXPE.IsNull then
          Excel.Cells[LINHA ,1] := ''
        else
          Excel.Cells[LINHA ,1] := qryPesqDT_CARGEXPE.Value;
        Excel.Cells[LINHA ,2] := qryPesqGN_PLACVEICTRAN.Value;
        Excel.Cells[LINHA ,3] := qryPesqQN_PESOLIQUNOTAFISC.Value;
        Excel.Cells[LINHA ,4] := qryPesqVL_NOTAFISC.Value;
        Excel.Cells[LINHA ,5] := QuotedStr(qryPesqNFE_CHAVE.Value);
        LINHA := LINHA + 1;
        qryPesq.Next;
      END;
    //ShowMessage('Processo finalizado...');
  except
    on E:exception do
      begin
        showmessage('Ocorreu erro ao executar a transferência' + #10 + 'Erro:' + E.Message);
      end;
  end;
end;

procedure TFrmTranspChaveNFe.SB_BROFClick(Sender: TObject);
var
  parametro, OpenOffice, OpenDesktopOpenOffice, CalcOpenOffice, SheetsOpenOffice, SheetOpenOffice: Variant;
  linha: integer;
  arquivo: string;

function CriaParametroOpenOffice(nome: string; tipoData: variant): variant;
var
  reflection: variant;
begin
  reflection:=OpenOffice.CreateInstance('com.sun.star.reflection.CoreReflection');
  reflection.forName('com.sun.star.beans.PropertyValue').createObject(result);
  result.Name:=nome;
  result.Value:=tipoData;
end;

function FileName2URL(FileName: string): string;
begin
  result:='';
  if (LowerCase(copy(FileName,1,8)) <> 'file:///') then
    result:='file:///';
  result:=result + StringReplace(FileName, '\', '/', [rfReplaceAll, rfIgnoreCase]);
end;
begin
  try
    arquivo:=FileName2URL('c:\smart\'+'TRANSPORTADOR_CHAVE_NFE_'+FormatDateTime('ddmmyyyy', date)+'.xls');

    OpenOffice:=CreateOleObject('com.sun.star.ServiceManager');
    OpenDesktopOpenOffice:=OpenOffice.CreateInstance('com.sun.star.frame.Desktop');
    parametro:=VarArrayCreate([0, 0], varVariant);
    parametro[0]:=CriaParametroOpenOffice('Hidden',True);
    CalcOpenOffice:=OpenDesktopOpenOffice.LoadComponentFromURL('private:factory/scalc', '_blank', 0, parametro);
    SheetsOpenOffice:=CalcOpenOffice.Sheets;
    SheetOpenOffice:=SheetsOpenOffice.getByIndex(0);

    SheetOpenOffice.GetCellByPosition(0,0).SetString('Transportador: ' + lkTransp.Text);
    SheetOpenOffice.GetCellByPosition(0,1).SetString('Data');
    SheetOpenOffice.GetCellByPosition(1,1).SetString('Placa');
    SheetOpenOffice.GetCellByPosition(2,1).SetString('Peso');
    SheetOpenOffice.GetCellByPosition(3,1).SetString('Valor');
    SheetOpenOffice.GetCellByPosition(4,1).SetString('Chave NFe');

    linha:= 2;
    qryPesq.First;
    WHILE NOT qryPesq.Eof DO
      BEGIN
        if qryPesqDT_CARGEXPE.IsNull then
          SheetOpenOffice.GetCellByPosition(0,linha).SetString('')
        else
          SheetOpenOffice.GetCellByPosition(0,linha).SetString(qryPesqDT_CARGEXPE.Value);
        SheetOpenOffice.GetCellByPosition(1,linha).SetString(qryPesqGN_PLACVEICTRAN.Value);
        SheetOpenOffice.GetCellByPosition(2,linha).SetString(qryPesqQN_PESOLIQUNOTAFISC.Value);
        SheetOpenOffice.GetCellByPosition(3,linha).SetString(qryPesqVL_NOTAFISC.Value);
        SheetOpenOffice.GetCellByPosition(4,linha).SetString(qryPesqNFE_CHAVE.Value);
        LINHA := LINHA + 1;
        qryPesq.Next;
      END;

    parametro:=VarArrayCreate([0, 0], varVariant);
    parametro[0]:=CriaParametroOpenOffice('Hidden',False);
    CalcOpenOffice.StoreToURL(arquivo, parametro);
    OpenDesktopOpenOffice.LoadComponentFromURL(arquivo, '_blank', 0, parametro);
    OpenOffice:=Unassigned;
  except
    on E:exception do
      begin
        showmessage('Ocorreu erro ao executar a transferência' + #10 + 'Erro:' + E.Message);
      end;
  end;
end;

procedure TFrmTranspChaveNFe.EdCodForExit(Sender: TObject);
begin
  If EdCodFor.Text <> '' then
    begin
      lkTransp.KeyValue := StrToFloat(EdCodFor.Text);
      qryPlaca.Close;
      qryPlaca.ParamByName('VTRANSP').Value:= StrToFloat(EdCodFor.Text);
      qryPlaca.Open;
      qryPlaca.First;
      cmbPlaca.Items.Clear;
      cmbPlaca.Items.Add('');
      while not qryPlaca.Eof do
        begin
          cmbPlaca.Items.Add(qryPlacaGN_PLACVEICTRAN.Value);
          qryPlaca.Next;
        end;
    end;
end;

procedure TFrmTranspChaveNFe.SB_CSVClick(Sender: TObject);
var
  Arquivo: TextFile;
begin
  try
    if dlgSaveArquivo.Execute then
      begin
        AssignFile(Arquivo, dlgSaveArquivo.FileName);
        Rewrite(Arquivo);
        Write(Arquivo, 'Data;');
        Write(Arquivo, 'Placa;');
        Write(Arquivo, 'Peso;');
        Write(Arquivo, 'Valor;');
        Writeln(Arquivo, 'Chave NFe;');
        qryPesq.DisableControls;
        qryPesq.First;
        while not qryPesq.Eof do
          begin
            Write(Arquivo, qryPesqDT_CARGEXPE.AsString + ';');
            Write(Arquivo, qryPesqGN_PLACVEICTRAN.AsString + ';');
            Write(Arquivo, qryPesqQN_PESOLIQUNOTAFISC.AsString + ';');
            Write(Arquivo, qryPesqVL_NOTAFISC.AsString + ';');
            WriteLn(Arquivo, QuotedStr(qryPesqNFE_CHAVE.AsString) + ';');
            qryPesq.Next;
          end;
        qryPesq.EnableControls;
        qryPesq.First;
        CloseFile(Arquivo);
        MessageDlg('Arquivo gerado com sucesso em ' + dlgSaveArquivo.FileName, mtInformation, [mbOK], 0);
      end;
  except
    MessageDlg('Erro ao gerar o arquivo. Verifique se o local de destino existe e está acessível.', mtError, [mbOK], 0);
  end;
end;

procedure TFrmTranspChaveNFe.SpeedButton1Click(Sender: TObject);
begin
  qryPesq.First;
  while not qryPesq.Eof do
    begin
      qryPesqNFE_XML.SaveToFile('C:\TESTE_XML\' + qryPesqNFE_CHAVE.Value + '.xml');
      qryPesq.Next;
    end;
end;

end.
