unit UFrmDialCupom;

interface

uses
  SysUtils, Types, Classes, Variants , Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, MemDS,
  DBAccess, Ora;

type
  TFrmDialCupom = class(TForm)
    Panel1: TPanel;
    btnOK: TBitBtn;
    btnCan: TBitBtn;
    DBGrid1: TDBGrid;
    edtNumCupom: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DtsPesq: TDataSource;
    QryPesq: TOraQuery;
    QryPesqID_PRODMATEEMBA: TStringField;
    QryPesqNM_PRODMATEEMBA: TStringField;
    QryPesqPR_UNIT: TFloatField;
    QryPesqID_MATEEMBA: TFloatField;
    QryPesqID_MATERIAL: TFloatField;
    QryPesqID_EMBALAGEM: TFloatField;
    QryPesqQTDE: TFloatField;
    Label2: TLabel;
    edtData: TEdit;
    BPESQ: TBitBtn;
    grdCupom: TDBGrid;
    QryCupom: TOraQuery;
    QryCupomDT_MOVIMENTO: TDateTimeField;
    QryCupomNUM_CUPOM: TStringField;
    QryCupomTOTALKG: TFloatField;
    QryCupomVL_TOTALVENDA: TFloatField;
    QryCupomNR_CPFCLIE: TStringField;
    DtsCupom: TDataSource;
    QryCupomID_VAR_SAIDA: TFloatField;
    Panel2: TPanel;
    QryPesqVL_TotItem: TCurrencyField;
    QryPesqPESOCAIXA: TFloatField;
    Label3: TLabel;
    edt_Total: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure grdCupomCellClick(Column: TColumn);
    procedure QryPesqCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Vdtstr:String;
  end;

var
  FrmDialCupom: TFrmDialCupom;

implementation

uses UFrmSeldata;

{$R *.dfm}

procedure TFrmDialCupom.BitBtn1Click(Sender: TObject);
Var Total : Double;
begin
  if (edtNumCupom.Text = '') then
    begin
      ShowMessage('Favor informar o número do cupom fiscal.');
      edtNumCupom.SetFocus;
      exit;
    end;
  if (edtData.Text = '') then
    begin
      ShowMessage('Favor informar a data do cupom fiscal.');
      edtData.SetFocus;
      exit;
    end;

  try
    StrToDate(edtData.Text);
  except
    on E: Exception do
      ShowMessage('Data inválida' + #10 + E.Message);
  end;

  {
    Descrição: Busca os cupons existentes com o filtro passado pelo usuário
    Autor: Vinícius Godinho Del Rio
    Data: 04/03/2015
  }
  QryCupom.Close;
  QryCupom.ParamByName('NUM_CUPOM').Value := edtNumCupom.Text;
  QryCupom.ParamByName('DT_MOVIMENTO').AsDate := StrToDate(edtData.Text);
  QryCupom.Open;

  //Verifica se encontrou resultados, se encontrar libera o botão de Ok e filtra os itens dos cupons
  if QryCupom.IsEmpty then
    btnOk.Enabled := False
  else
  begin

    QryPesq.Close;
    QryPesq.ParamByName('ID_VAR_SAIDA').Value := QryCupomID_VAR_SAIDA.Value;
    QryPesq.Open;

    QryPesq.DisableControls;
    QryPesq.First;
    Total := 0 ;
    while not QryPesq.Eof do
    begin
         Total := Total + QryPesqVL_TotItem.Value;
         QryPesq.Next;
    end;

    edt_Total.Text := FloatToStr(Total);
    QryPesq.EnableControls;
    QryPesq.First;
    btnOk.Enabled := True;

  end;

end;

procedure TFrmDialCupom.BPESQClick(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  edtData.text:= Vdtstr;
end;

{
  Descrição: Busca os itens de um cupom quando o mesmo é selecionado na grid d cupons
  Autor: Vinícius Godinho Del Rio
  Data: 04/03/2015
}
procedure TFrmDialCupom.grdCupomCellClick(Column: TColumn);
begin

  QryPesq.Close;
  QryPesq.ParamByName('ID_VAR_SAIDA').Value := QryCupomID_VAR_SAIDA.Value;
  QryPesq.Open;

end;

procedure TFrmDialCupom.QryPesqCalcFields(DataSet: TDataSet);
begin
      QryPesqVL_TotItem.Value := QryPesqQTDE.Value *  QryPesqPESOCAIXA.Value * QryPesqPR_UNIT.Value;
end;

end.
