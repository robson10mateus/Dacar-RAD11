unit UFrmSelProdVend;

interface

//uses Data.DB, DBAccess, Ora, MemDS, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
//  Vcl.Controls, Vcl.ComCtrls, System.Classes;

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, Variants, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFrmSelProdVend = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
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
    Qr: TOraQuery;
    DS: TOraDataSource;
    DTini: TEdit;
    DtFim: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    QrID_PRODMATEEMBA: TStringField;
    QrNM_PRODMATEEMBA: TStringField;
    QrID_VENDEDOR: TFloatField;
    QrCX_PED: TFloatField;
    QrKG_PED: TFloatField;
    QrVL_UNIT: TFloatField;
    QrVL_TOTAL: TFloatField;
    QrCX_EXPED: TFloatField;
    QrKG_EXPED: TFloatField;
    QrNM_VENDEDOR: TStringField;
    Panel2: TPanel;
    Sb_Sair: TSpeedButton;
    QrID_CLIENTE: TFloatField;
    QrNM_CLIENTE: TStringField;
    QrNM_PRODREDUMATEEMBA: TStringField;
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LCamposClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure SB_PRINTClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BPESQClick(Sender: TObject);

  private
    { Private declarations }
  public
    VFINAL,Vdata:STRING;
    SELPE:integer;
  end;

var
  FrmSelProdVend: TFrmSelProdVend;

implementation

uses Principal, UFrmRelConfVenda, Global, UFrmPesqTPV, UFrmPesqVend,
  UPesquiCliente, UFrmRelProdVend, UFrmSelRelConfVenda, ufrmConsultaProdutos;

{$R *.dfm}

procedure TFrmSelProdVend.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelProdVend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.VEN015b.Enabled:= True;
  Action:=caFree;
end;


procedure TFrmSelProdVend.LCamposClick(Sender: TObject);
begin
  SELPE:=0;

  CASE LCAMPOS.ItemIndex OF
    0:SELPE:=1;
    1:SELPE:=2;
    2:SELPE:=3;
    5:SELPE:=5;
  END;

  IF SELPE > 0 then
    BPESQ.Visible:=TRUE
  else
    BPESQ.Visible:=False

end;

procedure TFrmSelProdVend.FormActivate(Sender: TObject);
begin

  IF LCAMPOS.Items.Count=0 then
  BEGIN
    With LCampos.Items do
    begin
      Add('Tipo de Pedido ');
      Add('Cód. Vendedor ');
      Add('Cód. Cliente ');
      Add('Kg Padrão Expedido Ítem do Pedido ');
      Add('Valor Unitário do Ítem do Pedido');
      Add('Cód. Produto');
      Add('Nº do Pedido ');
      Add('Status da Carga ');
    end;
  END;

  DTini.Text := DateToStr(Date());
  DtFim.Text := DateToStr(Date());

end;

procedure TFrmSelProdVend.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmSelProdVend.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmSelProdVend.BtIncluirClick(Sender: TObject);
var
  Vre,VA:String;
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
      0:Vre:=Vre + 'PEDIDO_VENDA.ID_TIPOPEDIVEND ';
      1:Vre:=Vre + 'PEDIDO_VENDA.ID_VENDEDOR';
      2:Vre:=Vre + 'PEDIDO_VENDA.ID_CLIENTE';
      3:Vre:=Vre + 'PEDIDO_VENDA_ITEM.QN_PESOPADREXPEITEMPEDIVEND';
      4:Vre:=Vre + 'PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND';
      5:Vre:=Vre + 'MATERIAL_EMBALAGEM.ID_PRODMATEEMBA';
      6:Vre:=Vre + 'PEDIDO_VENDA_ITEM.ID_PEDIVEND';
      7:Vre:=Vre + 'EXPEDICAO_CARGA.FL_STATCARGEXPE';
    end;


    Case CBCond.ItemIndex of
      0: Vre:=Vre + ' = ';
      1: Vre:=Vre + ' <> ';
      2: Vre:=Vre + ' > ';
      3: Vre:=Vre + ' >= ';
      4: Vre:=Vre + ' < ';
      5: Vre:=Vre + ' <= ';
    end;

    Case LCampos.itemindex of
      7:Vre:=Vre + '''';
    end;

    Vre:=Vre + Edexpre.text;

    Case LCampos.itemindex of
      7:Vre:= Vre + '''';
    end;

    MResul.Lines.Add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

  end;

  BtAtivar.SetFocus;

end;

procedure TFrmSelProdVend.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin
  Screen.Cursor := crSQLWait;
  Qr.Close;

  WITH Qr.SQL DO
  BEGIN
    Clear;
    Add('SELECT MATERIAL_EMBALAGEM.ID_PRODMATEEMBA, MATERIAL_EMBALAGEM.NM_PRODMATEEMBA, MATERIAL_EMBALAGEM.NM_PRODREDUMATEEMBA, VENDEDOR.ID_VENDEDOR, CLIENTE.ID_CLIENTE, CLIENTE.NM_CLIENTE, ');
    Add('VENDEDOR.NM_VENDEDOR, Sum(Nvl(PEDIDO_VENDA_ITEM.qn_embaitempedivend,0)) as Cx_Ped, ');
    Add('Sum(Nvl(PEDIDO_VENDA_ITEM.qn_pesoitempedivend,0)) as Kg_Ped, ');
    Add('(CASE WHEN (Sum(Nvl(PEDIDO_VENDA_ITEM.qn_pesoitempedivend,1)))=0 then 0 ELSE SUM(PEDIDO_VENDA_ITEM.qn_pesoitempedivend*PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND)/Sum(Nvl(PEDIDO_VENDA_ITEM.qn_pesoitempedivend,1)) END) AS Vl_Unit, ');
    Add('SUM(PEDIDO_VENDA_ITEM.qn_pesoitempedivend*PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND) AS Vl_Total, ');
    Add('Sum(Nvl(PEDIDO_VENDA_ITEM.qn_embaexpeitempedivend,0)) as Cx_Exped, ');
    Add('Sum(Nvl(PEDIDO_VENDA_ITEM.QN_PESOPADREXPEITEMPEDIVEND,0)) as Kg_Exped ');
    Add('FROM PEDIDO_VENDA_ITEM, PEDIDO_VENDA, EXPEDICAO_CARGA, CLIENTE, VENDEDOR, MATERIAL_EMBALAGEM ');
    Add('WHERE  ');
    Add('(PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND) AND ');
    Add('(PEDIDO_VENDA_ITEM.ID_MATEEMBA = MATERIAL_EMBALAGEM.ID_MATEEMBA) AND ');
    Add('(PEDIDO_VENDA.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE(+)) AND  ');
    Add('(PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE) AND     ');
    Add('(PEDIDO_VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR) AND  ');
    Add(' PEDIDO_VENDA.FL_STATPEDIVEND <> ''CN'' AND ');
    Add('PEDIDO_VENDA.DT_ENTRPEDIVEND >= TO_DATE(''' + DTini.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') AND ');
    Add('PEDIDO_VENDA.DT_ENTRPEDIVEND <= TO_DATE(''' + DTFim.Text + ''',''' + 'DD/MM/YYYY' + '''' + ')  ');
  end;

  XTM:=MResul.Lines.Count;

  If XTM >0 then
  begin
    Qr.SQL.Add(' AND ');
    Qr.SQL.Add(MResul.Text);
  end;

  Qr.SQL.Add('GROUP BY  MATERIAL_EMBALAGEM.ID_PRODMATEEMBA, MATERIAL_EMBALAGEM.NM_PRODMATEEMBA, MATERIAL_EMBALAGEM.NM_PRODREDUMATEEMBA, VENDEDOR.ID_VENDEDOR, VENDEDOR.NM_VENDEDOR, CLIENTE.ID_CLIENTE, CLIENTE.NM_CLIENTE ');
  Qr.SQL.Add('ORDER BY  VENDEDOR.ID_VENDEDOR, CLIENTE.ID_CLIENTE, MATERIAL_EMBALAGEM.ID_PRODMATEEMBA ');
  Qr.Open;

  FrmRelProdVend:=TFrmRelProdVend.Create(Self);
  FrmRelProdVend.RLLabel11.Caption :=  'Período de ' + DTIni.Text + ' a ' + DtFim.Text;
  FrmRelProdVend.lblUsuario.Caption := gs_NomeUsuario; 

  Screen.Cursor := crDefault;
//  FrmRelProdVend.RLPrintDialogSetup1.Copies:=1;
  FrmRelProdVend.RLReport1.Preview(nil);
end;

procedure TFrmSelProdVend.SB_PRINTClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Qr.DisableControls;
  FrmRelConfVenda:=TFrmRelConfVenda.Create(Self);
  FrmRelConfVenda.DT1.Caption := DTIni.Text ;
  FrmRelConfVenda.DT2.Caption := DtFim.Text ;
  Screen.Cursor := crDefault;
  FrmRelConfVenda.RLReport1.Preview(nil);
  Qr.EnableControls;
end;

procedure TFrmSelProdVend.FormDestroy(Sender: TObject);
begin
  FrmSelRelConfVenda:=Nil;
end;

procedure TFrmSelProdVend.BPESQClick(Sender: TObject);
begin
  XRPM:=2;
  FrmOriPesq:=7;

  CASE SELPE OF
    1:BEGIN
      FrmPesqTPV:=TFrmPesqTPV.Create(Self);
      FrmPesqTPV.Show;
    END;
    2:BEGIN
      FrmPesqVend:=TFrmPesqVend.Create(Self);
      FrmPesqVend.Show;
    END;
    3:BEGIN
      FrmPesqCliente:=TFrmPesqCliente.Create(Self);
      FrmPesqCliente.Show;
    END;
    5:BEGIN
      frmConsultaProdutos:=TfrmConsultaProdutos.Create(Self);
      frmConsultaProdutos.Show;
    END;
  end;

  BPESQ.Visible:=FALSE;

end;

end.

