unit uFrmRelVendaCliente;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, MemDS, DBAccess,
  Ora, Global, Grids, DBGrids, Winapi.Windows;

type
  TFrmRelVendaCliente = class(TForm)
    Panel2: TPanel;
    Sb_Sair: TSpeedButton;
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
    DTini: TEdit;
    DtFim: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DS: TOraDataSource;
    Qr: TOraQuery;
    TabDetalhe: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    OraSQL1: TOraSQL;
    Edit1: TEdit;
    Label3: TLabel;
    QrCO_CLIENTE: TFloatField;
    QrNO_CLIENTE: TStringField;
    QrCX_TOT: TFloatField;
    QrVL_TOT: TFloatField;
    QrKG_TOT: TFloatField;
    QrVL_PORCENTAGEM: TFloatField;
    QrCX_PORCENTAGEM: TFloatField;
    QrKG_PORCENTAGEM: TFloatField;
    BtnImprime: TSpeedButton;
    QrCO_VENDEDOR: TFloatField;
    QrNO_VENDEDOR: TStringField;
    QrID_PRODMATEEMBA: TStringField;
    QrNM_PRODMATEEMBA: TStringField;
    QrQN_EMBA_EXP: TFloatField;
    QrPESO_EMBA_EXP: TFloatField;
    QrPRECO_ITEM: TFloatField;
    procedure Sb_SairClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LCamposClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnImprimeClick(Sender: TObject);
  private
    { Private declarations }
  public
    VFINAL,Vdata:STRING;
    SELPE:integer;
    { Public declarations }
  end;

var
  FrmRelVendaCliente: TFrmRelVendaCliente;

implementation

uses UFrmRelProdVend, UFrmPesqTPV, UFrmPesqVend, UPesquiCliente,
  ufrmConsultaProdutos, Principal, FrmSelRelVendaCliente;

{$R *.dfm}

procedure TFrmRelVendaCliente.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelVendaCliente.BtIncluirClick(Sender: TObject);
var
  Vre,VA, Vri:String;
  Vcampos,FA,FO:integer;
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
      0:Vre:=Vre + 'X.CO_VENDEDOR ';
      1:Vre:=Vre + 'X.CO_CLIENTE ';
//      2:Vre:=Vre + 'ME.ID_PRODMATEEMBA ';
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

//    case LCampos.ItemIndex of
//      1: Vri:=Vri + '1';
//    end;

    MResul.Lines.Add(Vre);
//    Edit1.Text := Vri;

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

  end;

  BtAtivar.SetFocus;
end;

procedure TFrmRelVendaCliente.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmRelVendaCliente.BtAtivarClick(Sender: TObject);
var
    XTM: Integer;
begin

  if ( Edit1.Text = '' ) then
  begin
    Application.MessageBox('É necessário colocar a quantidade de clientes a ser listada. ', PChar(FrmRelVendaCliente.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  Screen.Cursor := crSQLWait;

  WITH OraSQL1 DO
  begin
    ParamByName('dataini').Value := DTini.Text;
    ParamByName('datafim').Value := DtFim.Text;
    Execute;
  end;

  Qr.Close;

  WITH Qr.SQL DO
  BEGIN
    Clear;
    Add('SELECT ME.ID_PRODMATEEMBA, ME.NM_PRODMATEEMBA,');
    Add(' SUM(PVI.QN_EMBAEXPEITEMPEDIVEND) AS QN_EMBA_EXP, ');
    Add(' SUM(PVI.QN_PESOREALEXPEITEMPEDIVEND) AS PESO_EMBA_EXP, ');
    Add(' SUM(PVI.VL_UNITITEMPEDIVEND) * SUM(PVI.QN_PESOREALEXPEITEMPEDIVEND) AS PRECO_ITEM, ');
    Add(' X.CO_CLIENTE, X.NO_CLIENTE, X.CO_VENDEDOR, X.NO_VENDEDOR,X.CX_TOT, ');
    Add(' X.VL_TOT, X.KG_TOT, X.VL_PORCENTAGEM, X.CX_PORCENTAGEM, X.KG_PORCENTAGEM');
    Add('FROM ( SELECT ROW_NUMBER() OVER(ORDER BY TB.VL_TOT DESC) AS Linha, TB.CO_CLIENTE, ');
    Add('         TB.NO_CLIENTE, TB.CO_VENDEDOR, TB.NO_VENDEDOR, TB.CX_TOT, TB.VL_TOT, TB.KG_TOT, ');
    Add('         ROUND(((TB.VL_TOT*100)/(SELECT sum(VL_TOT) FROM TAB_TEMP_VENDAS_CLIENTE_VEND)),2) AS VL_PORCENTAGEM, ');
    Add('         ROUND(((TB.CX_TOT*100)/(SELECT sum(CX_TOT) FROM TAB_TEMP_VENDAS_CLIENTE_VEND)),2) AS CX_PORCENTAGEM, ');
    Add('         ROUND(((TB.KG_TOT*100)/(SELECT sum(KG_TOT) FROM TAB_TEMP_VENDAS_CLIENTE_VEND)),2) AS KG_PORCENTAGEM  ');
    Add('       FROM TAB_TEMP_VENDAS_CLIENTE_VEND TB ');
    Add(' ) X, PEDIDO_VENDA PV, PEDIDO_VENDA_ITEM PVI, MATERIAL_EMBALAGEM ME  ');
    Add('WHERE ');
    Add(' X.CO_CLIENTE = PV.ID_CLIENTE AND ');
    Add(' PV.ID_PEDIVEND = PVI.ID_PEDIVEND AND  ');
    Add(' ME.ID_MATERIAL = PVI.ID_MATERIAL ');
    Add(' AND X.Linha BETWEEN 0 AND ' + Edit1.Text);
    Add(' AND PV.DT_ENTRPEDIVEND >= TO_DATE(''' + DTini.Text + ''',''' + 'DD/MM/YYYY' + '''' + ')  ');
    Add(' AND PV.DT_ENTRPEDIVEND <= TO_DATE(''' + DTFim.Text + ''',''' + 'DD/MM/YYYY' + '''' + ')  ');
  end;

  XTM:=MResul.Lines.Count;

  If XTM >0 then
  begin
    Qr.SQL.Add(' AND ');
    Qr.SQL.Add(MResul.Text);
  end;

  Qr.SQL.Add('GROUP BY X.CO_CLIENTE, X.NO_CLIENTE, X.CO_VENDEDOR, X.NO_VENDEDOR, X.CX_TOT, X.VL_TOT, X.KG_TOT, X.VL_PORCENTAGEM, X.CX_PORCENTAGEM, X.KG_PORCENTAGEM, ME.ID_PRODMATEEMBA, ME.NM_PRODMATEEMBA');
  Qr.SQL.Add('ORDER BY x.VL_TOT DESC');

  Qr.Open;

  Screen.Cursor := crDefault;
  PageControl1.Pages[1].Show;
end;

procedure TFrmRelVendaCliente.BPESQClick(Sender: TObject);
begin
  XRPM:=2;
  FrmOriPesq:=57;

  CASE SELPE OF
    1:BEGIN
      FrmPesqVend:=TFrmPesqVend.Create(Self);
      FrmPesqVend.Show;
    END;
    2:BEGIN
      FrmPesqCliente:=TFrmPesqCliente.Create(Self);
      FrmPesqCliente.Show;
    END;
//    3:BEGIN
//      frmConsultaProdutos:=TfrmConsultaProdutos.Create(Self);
//      frmConsultaProdutos.Show;
//    END;
  end;

  BPESQ.Visible:=FALSE;
end;

procedure TFrmRelVendaCliente.FormActivate(Sender: TObject);
begin
  IF LCAMPOS.Items.Count=0 THEN
  BEGIN
    With LCampos.Items do
    begin
      Add('Cód. Vendedor ');
      Add('Cód. Cliente ');
//      Add('Cód. Produto');
    end;
  END;

  DTini.Text := DateToStr(Date());
  DtFim.Text := DateToStr(Date());

  PageControl1.Pages[0].Show;
end;

procedure TFrmRelVendaCliente.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmRelVendaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmRelVendaCliente:=nil;
  FrmPrincipal.VEN075.Enabled:= True;
  Action:=caFree;;
end;

procedure TFrmRelVendaCliente.LCamposClick(Sender: TObject);
begin
  SELPE:=0;

  CASE LCAMPOS.ItemIndex OF
    0:SELPE:=1;
    1:SELPE:=2;
    2:SELPE:=3;
    5:SELPE:=5;
  END;

  IF SELPE > 0 THEN
    BPESQ.Visible:=TRUE
  else
    BPESQ.Visible:=False
end;

procedure TFrmRelVendaCliente.FormDestroy(Sender: TObject);
begin
  FrmRelVendaCliente:=Nil;
end;

procedure TFrmRelVendaCliente.BtnImprimeClick(Sender: TObject);
begin
  uFrmSelRelVendaCliente:=TuFrmSelRelVendaCliente.Create(Self);
  uFrmSelRelVendaCliente.RLLabel11.Caption :=  'Período de ' + DTIni.Text + ' a ' + DtFim.Text;
  uFrmSelRelVendaCliente.lblUsuario.Caption := gs_NomeUsuario;


//  uFrmSelRelVendaCliente.RLPrintDialogSetup1.Copies:=1;
  uFrmSelRelVendaCliente.RLReport1.Preview(nil);
end;

end.


