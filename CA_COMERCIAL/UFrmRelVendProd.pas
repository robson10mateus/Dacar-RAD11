unit UFrmRelVendProd;

interface

uses
  SysUtils, Types, Classes, Variants, QTypes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, Ora, MemDS,
  DBAccess, Mask, Grids, DBGrids, ComObj;

type
  TFrmRelVendProd = class(TForm)
    PageControl1: TPageControl;
    TabCriterio: TTabSheet;
    LCampos: TListBox;
    MResul: TMemo;
    Label6: TLabel;
    CBCond: TComboBox;
    Label7: TLabel;
    EdExpre: TEdit;
    RGeou: TRadioGroup;
    BtIncluir: TBitBtn;
    BtLimpar: TBitBtn;
    BtAtivar: TBitBtn;
    BPESQ: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Sb_Sair: TSpeedButton;
    Qr: TOraQuery;
    DTini: TMaskEdit;
    DtFim: TMaskEdit;
    SpNovaTabela: TOraSQL;
    QrColunas: TOraQuery;
    SpDelTabela: TOraSQL;
    QrTemp: TOraQuery;
    DsQr: TOraDataSource;
    DsColuna: TOraDataSource;
    QrColunasID_VENDEDOR: TStringField;
    QrRel: TOraQuery;
    DsRel: TOraDataSource;
    QrID_PRODMATEEMBA: TStringField;
    QrID_VENDEDOR: TFloatField;
    QrNM_VENDEDOR: TStringField;
    QrVL_TOTAL: TFloatField;
    QrVL_UNIT_MEDIO: TFloatField;
    QrQN_ITEM: TFloatField;
    QrQN_PESO_TOTAL: TFloatField;
    btnExcel: TSpeedButton;
    QrVendedor: TOraQuery;
    QrVendedorID_VENDEDOR: TFloatField;
    QrVendedorNM_VENDEDOR: TStringField;
    QrNM_PRODMATEEMBA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    function NumeroParaLetra(numero: Integer): string;
  private
    { Private declarations }
  public
    SELPE: Integer;
  end;

var
  FrmRelVendProd: TFrmRelVendProd;

implementation

uses Principal, UFrmRelVendProdutos, Global, UFrmPesqTPV, UFrmPesqVend,
  UPesquiCliente, ufrmConsultaProdutos;

{$R *.dfm}

procedure TFrmRelVendProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FrmPrincipal.VEN077.Enabled:= True;
  FrmRelVendProd:=nil;
end;

procedure TFrmRelVendProd.BtIncluirClick(Sender: TObject);
var
  Vre:String;
  Vcampos:integer;
begin
  If EdExpre.Text<>'' then
  Begin
    IF MResul.Lines.Count>0 then
    begin
      If RGeou.ItemIndex=0  then
        Vre:=' AND '
      Else
        Vre:=' OR ';
    end;

    If  LCampos.itemindex=-1 then
      Vcampos:=0
    else
      Vcampos:=LCampos.itemindex;


    Case LCampos.itemindex of
      0:Vre:=Vre + 'ID_VENDEDOR';
      1:Vre:=Vre + 'ID_PRODMATEEMBA';
      2:Vre:=Vre + 'ID_PEDIVEND';
    end;


    Case CBCond.ItemIndex of
      0: Vre:=Vre + ' = ';
      1: Vre:=Vre + ' <> ';
      2: Vre:=Vre + ' > ';
      3: Vre:=Vre + ' >= ';
      4: Vre:=Vre + ' < ';
      5: Vre:=Vre + ' <= ';
    end;

    Vre:=Vre + Edexpre.text;

    MResul.Append(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

  end;

  BtAtivar.SetFocus;

end;

procedure TFrmRelVendProd.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmRelVendProd.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelVendProd.LCamposClick(Sender: TObject);
begin
  SELPE:=0;

  CASE LCAMPOS.ItemIndex OF
    0:SELPE:=1;
    1:SELPE:=2;
  END;

  IF SELPE > 0 THEN
    BPESQ.Visible:=TRUE
  else
    BPESQ.Visible:=False

end;

procedure TFrmRelVendProd.FormActivate(Sender: TObject);
begin
  IF LCAMPOS.Items.Count=0 THEN
  BEGIN
    With LCampos.Items do
    begin
      Add('Cód. Vendedor ');
      Add('Cód. Produto');
    end;
  END;

  DTini.Text := DateToStr(Date());
  DtFim.Text := DateToStr(Date());
end;

procedure TFrmRelVendProd.BtAtivarClick(Sender: TObject);
var
  XTM :INTEGER;
Begin
  Screen.Cursor := crSQLWait;

  with QrTemp.SQL do
  begin
    Clear;
    Add('SELECT COUNT(*) AS VERIFICA FROM USER_TABLES WHERE TABLE_NAME = ''REL_VENDPROD'' ');
  end;

  QrTemp.Open;

  if QrTemp.FieldByName('VERIFICA').Value > 0 then
  begin
    SpDelTabela.Execute;
  end;

  with SpNovaTabela do
  begin
    ParamByName('DATAINI').Value := DTini.Text;
    ParamByName('DATAFIM').Value := DtFim.Text;
    Execute;
  end;

  Qr.Close;

  QrColunas.Open;
  QrColunas.First;

  while not QrColunas.Eof do
  begin
    XTM:=MResul.Lines.Count;

    If XTM >0 then
    begin
      Qr.MacroByName('Macro').Value := 'AND ' + MResul.Text;
    end;

    Qr.ParamByName('DT_INICIO').Value := DTini.Text;
    Qr.ParamByName('DT_FINAL').Value := DtFim.Text;

    Qr.Open;

    if Qr.RecordCount > 0 then
    begin
      Qr.First;

      while not Qr.Eof do
      begin

        with QrTemp.SQL do
        begin
          Clear;
          Add('UPDATE REL_VENDPROD ');
          Add('SET ');
          Add('VL_TOTAL_' + Qr.FieldByName('id_vendedor').AsString + ' = :VL_TOTAL, ');
          Add('VL_UNIT_MEDIO_' + Qr.FieldByName('id_vendedor').AsString + ' = :VL_UNIT_MEDIO, ');
          Add('QN_PESO_TOTAL_' + Qr.FieldByName('id_vendedor').AsString + ' = :QN_PESO_TOTAL ');
          Add('WHERE ID_PRODMATEEMBA = :ID_PRODMATEEMBA');
        end;

        QrTemp.ParamByName('VL_TOTAL').Value := Qr.FieldByName('VL_TOTAL').Value;
        QrTemp.ParamByName('VL_UNIT_MEDIO').Value := Qr.FieldByName('VL_UNIT_MEDIO').Value;
        QrTemp.ParamByName('QN_PESO_TOTAL').Value := Qr.FieldByName('QN_PESO_TOTAL').Value;
        QrTemp.ParamByName('ID_PRODMATEEMBA').Value := Qr.FieldByName('ID_PRODMATEEMBA').Value;
        QrTemp.Execute;

        Qr.Next;
      end;

    end;

    QrColunas.Next;
  end;

  btnExcelClick(Sender);

  Screen.Cursor := crDefault;
end;

procedure TFrmRelVendProd.BPESQClick(Sender: TObject);
begin
  FrmOriPesq:=77;

  CASE SELPE OF

    1:BEGIN
      FrmPesqVend:=TFrmPesqVend.Create(Self);
      FrmPesqVend.Show;
    END;
    2:BEGIN
      frmConsultaProdutos:=TfrmConsultaProdutos.Create(Self);
      frmConsultaProdutos.Show;
    END;
  end;

  BPESQ.Visible:=FALSE;

end;

procedure TFrmRelVendProd.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmRelVendProd.btnExcelClick(Sender: TObject);
var
    Excel, Sheet : Variant;
    Nome         : String;
    i, j         : Integer;
    ColunaPar    : Boolean;
    ColunaCont   : Integer;
begin
  Screen.Cursor := crSQLWait;

  QrRel.Open; 

  if QrRel.RecordCount = 0 then
  begin
    Application.MessageBox('Nenhum registro a ser exportado', FrmRelVendProd.Caption, MB_ICONINFORMATION+MB_OK, ID_OK);
    Exit;
  end;

  QrVendedor.Close;
  QrVendedor.ParamByName('DT_INICIO').Value := DTini.Text;
  QrVendedor.ParamByName('DT_FINAL').Value := DtFim.Text;
  QrVendedor.Open;

  try
    Nome  := 'Relatório de Vendedor por Produtos';

    Excel := CreateOleObject('Excel.Application');

    Excel.WorkBooks.Add;


    Excel.WorkBooks[1].WorkSheets[1].Name := 'Aba';

    Excel.caption := Nome;
    Excel.visible := False;

    Sheet := Excel.WorkBooks[1].WorkSheets['Aba'];

    Sheet.Range['A1'] := 'Cód';
    Sheet.Range['B1'] := 'Descrição Produto';

    Sheet.Range['A1:B2'].Interior.Color := #10198012;

    i := 3;
    QrRel.First;

    while not QrRel.Eof do
    begin
      Sheet.Cells[i,1] := QrRel.FieldByName('ID_PRODMATEEMBA').Value;
      Sheet.Cells[i,2] := QrRel.FieldByName('NM_PRODMATEEMBA').value;
      Sheet.Cells[i,1].Interior.Color := #10198012;
      Sheet.Cells[i,2].Interior.Color := #10198012;

      ColunaPar := False;
      ColunaCont := 0;

      for j := 2 to QrRel.FieldCount - 1 do
      begin
        if ColunaCont = 3 then
        begin
          ColunaCont := 0;
          ColunaPar := not ColunaPar;
        end;

        if ColunaPar then
          Sheet.Cells[i, j+1].Interior.Color := #10198012
        else
          Sheet.Cells[i, j+1].Interior.Color := #12904146;

        Sheet.Cells[i, j+1] := QrRel.Fields[j].Value;

        Inc(ColunaCont);
      end;

      Inc(i);
      QrRel.Next;
    end;

    i := QrRel.FieldCount;
    j := QrRel.RecordCount;

    Sheet.Range['A1:' + NumeroParaLetra(i) + IntToStr(j+2)].Borders.LineStyle := 1;
    Sheet.Range['A1:' + NumeroParaLetra(i) + IntToStr(j+2)].Borders.ColorIndex := 1;

    i := 3;
    QrVendedor.First;
    ColunaPar := False;
    ColunaCont := 0;

    while not QrVendedor.Eof do
    begin
      Sheet.Cells[1, i] := QrVendedorID_VENDEDOR.AsString + ' - ' + QrVendedorNM_VENDEDOR.AsString;
      Sheet.Cells[2, i] := 'Valor Total';
      Sheet.Cells[2, i+1] := 'Valor Unitário';
      Sheet.Cells[2, i+2] := 'Peso Total';

      if ColunaCont = 1 then
      begin
        ColunaCont := 0;
        ColunaPar := not ColunaPar;
      end;

      if ColunaPar then
      begin
        Sheet.Cells[1, i].Interior.Color := #10198012;
        Sheet.Cells[2, i].Interior.Color := #10198012;
        Sheet.Cells[2, i+1].Interior.Color := #10198012;
        Sheet.Cells[2, i+2].Interior.Color := #10198012;
      end
      else
      begin
        Sheet.Cells[1, i].Interior.Color := #12904146;
        Sheet.Cells[2, i].Interior.Color := #12904146;
        Sheet.Cells[2, i+1].Interior.Color := #12904146;
        Sheet.Cells[2, i+2].Interior.Color := #12904146;
      end;

      for j := 2 to QrRel.FieldCount - 1 do
      begin
        Sheet.Cells[j, i].NumberFormat := '_-R$ * #.##0,00_-;-R$ * #.##0,00_-;_-R$ * "-"??_-;_-@_-';
        Sheet.Cells[j, i+1].NumberFormat := '_-R$ * #.##0,00_-;-R$ * #.##0,00_-;_-R$ * "-"??_-;_-@_-';
        Sheet.Cells[j, i+2].NumberFormat := '_-* #.##0,00_-;-* #.##0,00_-;_-* "-"??_-;_-@_-';
      end;



      Sheet.Range['A1:' + NumeroParaLetra(i+2) + '1'].font.bold := True;
      Sheet.Range['A2:' + NumeroParaLetra(i+2) + '1'].font.bold := True;

      Sheet.Range[NumeroParaLetra(i) + '1:' + NumeroParaLetra(i+2) + '1'].MergeCells := true;

      i := i + 3;
      Inc(ColunaCont);
      QrVendedor.Next;
    end;

    Excel.Visible := true;
    Excel.columns.Autofit;

    Screen.Cursor := crDefault;
  except
    on e : Exception do
        raise Exception.Create('Erro ao exportar planilha ' +#13+
                               '================'+#13+#13+
                               'Menssagem : ' + E.Message +#13+
                               'Classe : '    + E.ClassName);
  end;

end;

function TFrmRelVendProd.NumeroParaLetra(numero: Integer): string;
var
  divisao, resto: Integer;
  letra1, letra2: Char;
begin
  if numero <= 26 then
    Result := Chr(Ord('A') + numero - 1)
  else
  begin
    divisao := (numero - 1) div 26;
    resto := (numero - 1) mod 26;

    letra1 := Chr(Ord('A') + resto);

    if divisao > 0 then
      letra2 := Chr(Ord('A') + divisao - 1)
    else
      letra2 := ' ';

    Result := letra2 + letra1;
  end;
end;

end.
