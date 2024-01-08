unit UFrmSelVenProd;

interface

//uses Vcl.Dialogs, Data.DB, DBAccess, Ora, MemDS, Vcl.StdCtrls, Vcl.Buttons,
//  Vcl.ExtCtrls, Vcl.Controls, System.Classes;

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, Variants, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmSelVenProd = class(TForm)
    Qr: TOraQuery;
    DS: TOraDataSource;
    QrID_PRODMATEEMBA: TStringField;
    QrCX_PED: TFloatField;
    QrKG_PED: TFloatField;
    QrVL_UNIT: TFloatField;
    QrVL_TOTAL: TFloatField;
    QrCX_EXPED: TFloatField;
    QrKG_EXPED: TFloatField;
    QrNM_PRODMATEEMBA: TStringField;
    dlgSaveArquivo: TSaveDialog;
    QrVL_FATURADO: TFloatField;
    QrTotConta: TOraQuery;
    QrTotContaID_CONTA: TFloatField;
    QrTotContaNM_CONTA: TStringField;
    QrTotContaQTDE_PEDIDOS: TFloatField;
    QrTotContaNF: TOraQuery;
    QrTotContaNFID_CONTA: TFloatField;
    QrTotContaNFNM_CONTA: TStringField;
    QrTotContaNFQTDE_PEDIDOS: TFloatField;
    QrTotContaNFTOTAL_FATURADO: TFloatField;
    QrTotContaTOTAL_PEDIDO: TFloatField;
    qryTotalItensNaoExp: TOraQuery;
    qryTotalItensNaoExpID_PRODMATEEMBA: TStringField;
    qryTotalItensNaoExpNM_PRODMATEEMBA: TStringField;
    qryTotalItensNaoExpQN_EMBAITEMPEDIVEND: TFloatField;
    qryTotalItensNaoExpQN_EMBAEXPEITEMPEDIVEND: TFloatField;
    qryTotalItensNaoExpDIF: TFloatField;
    dtsTotalItensNaoExp: TOraDataSource;
    Panel1: TPanel;
    btnExcel: TSpeedButton;
    Sb_Sair: TSpeedButton;
    Panel3: TPanel;
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
    Panel2: TPanel;
    Lcli: TLabel;
    Lven: TLabel;
    LbCliente: TLabel;
    LbVen: TLabel;
    lblDigita: TLabel;
    lblDigitador: TLabel;
    cmbData: TComboBox;
    Label2: TLabel;
    MResulT: TMemo;
    chkRes: TCheckBox;
    chkQtdeNaoAtendida: TCheckBox;
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure SB_PRINTClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DTiniExit(Sender: TObject);
    procedure ConsultaSQL;
    procedure ConsultaSQLTotConta;
    procedure btnExcelClick(Sender: TObject);

  private
    { Private declarations }
  public
    VFINAL,Vdata, VIDPAIS, NMPAIS, VIDCONTA, NMCONTA :STRING;
    SELPE:integer;
    VCid, NCid, NEst, NPais, NReg:String;

  end;

var
  FrmSelVenProd: TFrmSelVenProd;

implementation

uses Principal, UFrmRelConfVenda, Global, UFrmPesqTPV, UFrmPesqVend,
  UPesquiCliente, UFrmRelVendaProd, UFrmSelRelConfVenda, UFrmPesqGrupo,
  UFrmPesqGrupoCli, UFrmPesCaminhao, UFrmPesqCid, UFrmPesqPais,
  UFrmPesqContas, ufrmConsultaUsuarios;

{$R *.dfm}

procedure TFrmSelVenProd.Sb_SairClick(Sender: TObject);
begin
  Close;

end;

procedure TFrmSelVenProd.SB_PRIMEIROClick(Sender: TObject);
begin
  Qr.First;
end;

procedure TFrmSelVenProd.SB_ANTERIORClick(Sender: TObject);
begin
  Qr.Prior;
end;

procedure TFrmSelVenProd.SB_PROXIMOClick(Sender: TObject);
begin
  Qr.Next;
end;

procedure TFrmSelVenProd.SB_ULTIMOClick(Sender: TObject);
begin
  Qr.Last;
end;

procedure TFrmSelVenProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.VEN013.Enabled:= True;
  Action:=caFree;
end;


procedure TFrmSelVenProd.Button1Click(Sender: TObject);
var
  Bitmap : TBitMap;
begin

end;



procedure TFrmSelVenProd.LCamposClick(Sender: TObject);
begin
 SELPE:=0;
  CASE LCAMPOS.ItemIndex OF
    0:SELPE:=1;
    1:SELPE:=2;
    2:SELPE:=3;
    8:SELPE:=8;
    10:SELPE:=9;
    11:SELPE:=10;
    12:SELPE:=11;
    14:SELPE:=12;
    17:SELPE:=13;
    18:SELPE:=14; // FILTRO DIGITADOR
  END;

  BPESQ.Visible:=(SELPE>0);

end;

procedure TFrmSelVenProd.FormActivate(Sender: TObject);
begin
IF LCAMPOS.Items.Count=0 then
 BEGIN
  With LCampos.Items do
   begin
     Add('Cód. do Tipo de Pedido ');
     Add('Cód. do Vendedor ');
     Add('Cód. do Cliente ');
     Add('Peso Padrão Expedido do Ítem do Pedido *');
     Add('Valor Unitário do Ítem do Pedido *');
     Add('Cód. do Produto (Mater./Embal.) *');
     Add('Nº do Pedido ');
     Add('Nº do Documento ');
     Add('Cód. do Grupo de Materiais *');
     Add('Data do Faturamento');
     Add('Cód. do Grupo de Clientes');
     Add('Placa do Pedido');
     Add('Cód. Cidade Carregamento/Embarque');
     Add('Estado do Cliente');
     Add('Código do País do Cliente');
     Add('Status da Carga');
     Add('Nome do Produto *');
     Add('Cód. da Conta Bancária');
     Add('Cód. do Digitador ');
     Add('Funcionário (S/N) ');
   end;
 END;

end;

procedure TFrmSelVenProd.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmSelVenProd.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text := '';
  MResul.Clear;
  MResulT.Clear;
  Lcli.Caption := '';
  Lven.Caption := '';
  LbCliente.Caption := '';
  LbVen.Caption := '';
  lblDigita.Caption:= '';
  lblDigitador.Caption:= '';
  EdExpre.SetFocus;
  BtIncluir.Enabled := False;
  chkRes.Enabled:= True;
end;

procedure TFrmSelVenProd.BtIncluirClick(Sender: TObject);
var
  Vre,VA,Vlinha:String;
  Vcampos,FA,FO:integer;
begin
  If EdExpre.Text<>'' then
  Begin
    IF MResul.Lines.Count>0 then
    begin
      If RGeou.ItemIndex=0  then
        begin
          Vre:='AND ';
        end
      Else
        begin
          Vlinha:= MResul.Lines.Strings[MResul.Lines.Count-1];
          MResul.Lines.Strings[MResul.Lines.Count-1]:= Copy(Vlinha,1,length(Vlinha)-1);
          Vre:='OR ';
        end;
    end;

    If LCampos.itemindex=-1 then
      Vcampos:=0
    else
      Vcampos:=LCampos.itemindex;

    If RGeou.ItemIndex=0  then
      Vre:= Vre + '(' ;

    //alterar nomes
    Case LCampos.itemindex of
      0:Vre:=Vre + 'PEDIDO_VENDA.ID_TIPOPEDIVEND ';
      1:Vre:=Vre + 'PEDIDO_VENDA.ID_VENDEDOR';
      2:Vre:=Vre + 'PEDIDO_VENDA.ID_CLIENTE';
      3:Vre:=Vre + 'PEDIDO_VENDA_ITEM.QN_PESOPADREXPEITEMPEDIVEND';
      4:Vre:=Vre + 'PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND';
      5:Vre:=Vre + 'MATERIAL_EMBALAGEM.ID_PRODMATEEMBA';
      6:Vre:=Vre + 'PEDIDO_VENDA.ID_PEDIVEND';
      7:Vre:=Vre + 'NOTA_FISCAL.NR_NOTAFISC';
      8:Vre:=Vre + 'MATERIAL.ID_GRUPMATE';
      9:Vre:=Vre + 'PEDIDO_VENDA.DT_FATUPEDIVEND';
      10:Vre:=Vre + 'CLIENTE.ID_GRUPCLIE';
      11:Vre:=Vre + 'PEDIDO_VENDA.GN_PLACVEICTRAN';
      12:Vre:=Vre + 'PEDIDO_VENDA.ID_CIDADE_ENTREGA';
      13:Vre:=Vre + 'ESTADO.SG_ESTADO';
      14:Vre:=Vre + 'ESTADO.ID_PAIS';
      15:Vre:=Vre + 'EXPEDICAO_CARGA.FL_STATCARGEXPE';
      16:Vre:=Vre + 'UPPER(MATERIAL_EMBALAGEM.NM_PRODMATEEMBA)';
      17:Vre:=Vre + 'PEDIDO_VENDA.ID_CONTA';
      18:Vre:=Vre + 'PEDIDO_VENDA.ID_USUASIST_DIGIPEDIVEND';
      19:Vre:=Vre + 'CLIENTE.FL_FUNCIONARIO';
    end;

    Case CBCond.ItemIndex of
      0: Vre:=Vre + ' =  ';
      1: Vre:=Vre + ' <> ';
      2: Vre:=Vre + ' >  ';
      3: Vre:=Vre + ' >= ';
      4: Vre:=Vre + ' <  ';
      5: Vre:=Vre + ' <= ';
      6: Vre:=Vre + ' like ';
    end;

    Case LCampos.itemindex of
       9:Vre:=Vre + 'TO_DATE(''';
      11:Vre:=Vre + '''';
      13:Vre:=Vre + '''';
      15..16:Vre:=Vre + '''';
      19:Vre:=Vre + '''';
    end;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

    Vre:=Vre + Edexpre.text;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

    Case LCampos.itemindex of
       9:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY''' +')';
      11:Vre:= Vre + '''';
      13:Vre:= Vre + '''';
      15..16:Vre:=Vre + '''';
      19:Vre:=Vre + '''';
    end;

    Vre:=Vre+')';

    MResul.Lines.add(Vre);

    if (LCampos.ItemIndex in [3,4,5,8,16]) then
    begin
      chkRes.Checked:= False;
      chkRes.Enabled:= False;
      MResulT.Lines.Clear;
    end;

    if not (LCampos.ItemIndex in [3,4,5,8,16]) then
    begin
      Vre:= '';
      IF MResulT.Lines.Count>0 then
      begin
        If RGeou.ItemIndex=0  then
        begin
          Vre:='AND ';
        end
        Else
        begin
          Vlinha:= MResulT.Lines.Strings[MResulT.Lines.Count-1];
          MResulT.Lines.Strings[MResulT.Lines.Count-1]:= Copy(Vlinha,1,length(Vlinha)-1);
          Vre:='OR ';
        end;
      end;

      If LCampos.itemindex=-1 then
        Vcampos:=0
      else
        Vcampos:=LCampos.itemindex;

      If RGeou.ItemIndex=0  then
        Vre:= Vre + '(' ;

      //alterar nomes
      Case LCampos.itemindex of
        0:Vre:=Vre + 'PEDIDO_VENDA.ID_TIPOPEDIVEND ';
        1:Vre:=Vre + 'PEDIDO_VENDA.ID_VENDEDOR';
        2:Vre:=Vre + 'PEDIDO_VENDA.ID_CLIENTE';
        3:Vre:=Vre + 'PEDIDO_VENDA_ITEM.QN_PESOPADREXPEITEMPEDIVEND';
        4:Vre:=Vre + 'PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND';
        6:Vre:=Vre + 'PEDIDO_VENDA_ITEM.ID_PEDIVEND';
        7:Vre:=Vre + 'NOTA_FISCAL.NR_NOTAFISC';
        9:Vre:=Vre + 'PEDIDO_VENDA.DT_FATUPEDIVEND';
        10:Vre:=Vre + 'CLIENTE.ID_GRUPCLIE';
        11:Vre:=Vre + 'PEDIDO_VENDA.GN_PLACVEICTRAN';
        12:Vre:=Vre + 'CIDADE.ID_CIDADE';
        13:Vre:=Vre + 'ESTADO.SG_ESTADO';
        14:Vre:=Vre + 'ESTADO.ID_PAIS';
        15:Vre:=Vre + 'EXPEDICAO_CARGA.FL_STATCARGEXPE';
        17:Vre:=Vre + 'PEDIDO_VENDA.ID_CONTA';
        18:Vre:=Vre + 'PEDIDO_VENDA.ID_USUASIST_DIGIPEDIVEND';
        19:Vre:=Vre + 'CLIENTE.FL_FUNCIONARIO';
      end;

      Case CBCond.ItemIndex of
        0: Vre:=Vre + ' =  ';
        1: Vre:=Vre + ' <> ';
        2: Vre:=Vre + ' >  ';
        3: Vre:=Vre + ' >= ';
        4: Vre:=Vre + ' <  ';
        5: Vre:=Vre + ' <= ';
        6: Vre:=Vre + ' like ';
      end;

      Case LCampos.itemindex of
         9:Vre:=Vre + 'TO_DATE(''';
        11:Vre:=Vre + '''';
        13:Vre:=Vre + '''';
        15:Vre:=Vre + '''';
        19:Vre:=Vre + '''';
      end;

      If CBCond.ItemIndex=6 then
        Vre:=Vre + '%';

      Vre:=Vre + Edexpre.text;

      If CBCond.ItemIndex=6 then
        Vre:=Vre + '%';

      Case LCampos.itemindex of
         9:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY''' +')';
        11:Vre:= Vre + '''';
        13:Vre:= Vre + '''';
        15:Vre:= Vre + '''';
        19:Vre:=Vre + '''';
      end;

      Vre:=Vre+')';

      MResulT.Lines.Add(Vre);
    end;

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;
  end;

  BtAtivar.SetFocus;
end;

procedure TFrmSelVenProd.BtAtivarClick(Sender: TObject);
Begin
  Screen.Cursor := crSQLWait;

  ConsultaSQL;

  if chkRes.Checked then
   ConsultaSQLTotConta;

  FrmRelVendaProd:=TFrmRelVendaProd.Create(Self);
  FrmRelVendaProd.RLLabel13.Caption := 'Período de ' + DTIni.Text + ' a ' + DtFim.Text ;

  Screen.Cursor := crDefault;
//  FrmRelVendaProd.RLPrintDialogSetup1.Copies:=1;

  If LbCliente.Caption <> '' then
  begin
    FrmRelVendaProd.Cabecalho_Cliente.Visible := True;
    FrmRelVendaProd.RLCli.Caption := 'CLIENTE: ' + UpperCase(LbCliente.Caption);
  end;

  If LbVen.Caption <> '' then
  begin
    FrmRelVendaProd.Cabecalho_Vendedor.Visible := True;
    FrmRelVendaProd.RLVen.Caption := 'VENDEDOR: ' + UpperCase(LbVen.Caption);
  end;

  If lblDigitador.Caption <> '' then
  begin
    FrmRelVendaProd.Cabecalho_Digitador.Visible := True;
    FrmRelVendaProd.RLDigitador.Caption := 'DIGITADOR: ' + UpperCase(lblDigitador.Caption);
  end;

  FrmRelVendaProd.lblUsuario.Caption := gs_NomeUsuario;
  FrmRelVendaProd.RLReport1.PreviewModal;

end;

procedure TFrmSelVenProd.SB_PRINTClick(Sender: TObject);
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

procedure TFrmSelVenProd.FormDestroy(Sender: TObject);
begin
  FrmSelRelConfVenda:=Nil;
end;

procedure TFrmSelVenProd.BPESQClick(Sender: TObject);
begin
  XRPM:=2;
  FrmOriPesq:=5;
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
    8:BEGIN
        FrmPesqGrupo:=TFrmPesqGrupo.Create(Self);
        FrmPesqGrupo.Show;
      END;
    9:BEGIN
        FrmPesqGrupoCli:=TFrmPesqGrupoCli.Create(Self);
        FrmPesqGrupoCli.Show;
      END;
   10:BEGIN
        FrmPesqCaminhao:=TFrmPesqCaminhao.Create(Self);
        FrmPesqCaminhao.VORIGEM:=14;
        FrmPesqCaminhao.Show;
      END;
   11:BEGIN
        Cria_FrmPesqCid(VCid, NCid, NEst, NPais, NReg);
        EdExpre.text:= VCid;
        BtIncluir.SetFocus;
      END;
   12:BEGIN
        Cria_FrmPesqPais(VIDPAIS, NMPAIS);
        EdExpre.text:= VIDPAIS;
        BtIncluir.SetFocus;
      END;
   13:BEGIN
        Cria_FrmPesqConta(VIDCONTA, NMCONTA);
        EdExpre.text:= VIDCONTA;
        BtIncluir.SetFocus;
      END;
   14:BEGIN
        frmConsultaUsuarios:=TfrmConsultaUsuarios.Create(Self);
        frmConsultaUsuarios.Show;
      END;
  end;
  
  BPESQ.Visible:=FALSE;
end;

procedure TFrmSelVenProd.FormShow(Sender: TObject);
begin
 DTini.Text := DateToStr(Date());
 DtFim.Text := DateToStr(Date());
end;

procedure TFrmSelVenProd.DTiniExit(Sender: TObject);
begin
  If StrToDate(DtFim.Text) < StrToDate(DTini.Text) then
     DtFim.Text:= DTini.Text;
end;

procedure TFrmSelVenProd.ConsultaSQL;
VAR
  XTM:INTEGER;
begin
  Qr.Close;

  WITH Qr.SQL DO
  BEGIN
    Clear;
    Add(' SELECT ');
    Add('  MATERIAL_EMBALAGEM.ID_PRODMATEEMBA, ');
    Add('  MATERIAL_EMBALAGEM.NM_PRODMATEEMBA, ');
    Add('  Sum(Nvl(PEDIDO_VENDA_ITEM.qn_embaitempedivend,0)) as Cx_Ped, ');
    Add('  Sum(Nvl(PEDIDO_VENDA_ITEM.qn_pesoitempedivend,0)) as Kg_Ped, ');
    Add('  SUM(PEDIDO_VENDA_ITEM.qn_pesoitempedivend*PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND)/(CASE WHEN Sum(Nvl(PEDIDO_VENDA_ITEM.qn_pesoitempedivend,0))=0 then 1 ELSE Sum(Nvl(PEDIDO_VENDA_ITEM.qn_pesoitempedivend,0)) END) AS Vl_Unit, ');
    Add('  SUM(PEDIDO_VENDA_ITEM.qn_pesoitempedivend*PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND) AS Vl_Total, ');
    Add('  Sum(Nvl(PEDIDO_VENDA_ITEM.qn_embaexpeitempedivend,0)) as Cx_Exped,     ');
    Add('  Sum(Nvl(PEDIDO_VENDA_ITEM.QN_PESOPADREXPEITEMPEDIVEND,0)) as Kg_Exped, ');
    Add('  Sum(PEDIDO_VENDA_ITEM.Qn_Pesopadrexpeitempedivend*PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND) AS Vl_Faturado ');
    Add(' FROM                 ');
    Add('  PEDIDO_VENDA_ITEM,  ');
    Add('  PEDIDO_VENDA,       ');
    Add('  EXPEDICAO_CARGA,    ');
    Add('  CLIENTE,            ');
    Add('  VENDEDOR,           ');
    Add('  MATERIAL_EMBALAGEM, ');
    Add('  MATERIAL_EMBALAGEM_COMPLEMENTO, ');
    Add('  MATERIAL,           ');
    Add('  PEDIDO_VENDA_NOTA_FISCAL, ');
    Add('  NOTA_FISCAL,  ');
    Add('  BAIRRO,       ');
    Add('  CIDADE,       ');
    Add('  ESTADO        ');
    Add(' WHERE          ');
    Add('  (PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND) AND       ');
    Add('  (PEDIDO_VENDA_ITEM.ID_MATEEMBA = MATERIAL_EMBALAGEM.ID_MATEEMBA) AND ');
    Add('  (PEDIDO_VENDA.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE(+)) AND      ');
    Add('  (PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE) AND          ');
    Add('  (PEDIDO_VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR(+)) AND    ');
    Add('  MATERIAL.ID_MATERIAL = MATERIAL_EMBALAGEM.ID_MATERIAL AND   ');
    Add('  (MATERIAL_EMBALAGEM_COMPLEMENTO.ID_MATEEMBA = MATERIAL_EMBALAGEM.ID_MATEEMBA and MATERIAL_EMBALAGEM_COMPLEMENTO.FL_PRODUZ = ''S'') AND');
    Add('  PEDIDO_VENDA_NOTA_FISCAL.ID_PEDIVEND(+) = PEDIDO_VENDA.ID_PEDIVEND AND  ');
    Add('  NOTA_FISCAL.ID_NOTAFISC(+) = PEDIDO_VENDA_NOTA_FISCAL.ID_NOTAFISC  AND  ');
    Add('  PEDIDO_VENDA.FL_STATPEDIVEND <> ''CN'' AND ');
    Add('  NVL(NOTA_FISCAL.FL_CANCNOTAFISC,''N'') = ''N''  AND ');
    Add('  BAIRRO.ID_BAIRRO = CLIENTE.ID_BAIRRO AND      ');
    Add('  CIDADE.ID_CIDADE = BAIRRO.ID_CIDADE AND       ');
    Add('  ESTADO.ID_ESTADO = CIDADE.ID_ESTADO AND       ');

    if cmbData.ItemIndex = 0 then
    begin
      Add('  PEDIDO_VENDA.DT_ENTRPEDIVEND >= TO_DATE(''' + DTini.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') AND ');
      Add('  PEDIDO_VENDA.DT_ENTRPEDIVEND <= TO_DATE(''' + DTFim.Text + ''',''' + 'DD/MM/YYYY' + '''' + ')     ');
    end;
    
    if cmbData.ItemIndex = 1 then
    begin
      Add('  PEDIDO_VENDA.DT_DIGIPEDIVEND >= TO_DATE(''' + DTini.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') AND ');
      Add('  PEDIDO_VENDA.DT_DIGIPEDIVEND <= TO_DATE(''' + DTFim.Text + ''',''' + 'DD/MM/YYYY' + '''' + ')     ');
    end;
  end;

  XTM:=MResul.Lines.Count;

  If XTM >0 then
  begin
    Qr.SQL.Add(' AND ');
    Qr.SQL.Add(MResul.Text);
  end;


  Screen.Cursor := crSQLWait;
  Qr.SQL.Add(' GROUP BY  MATERIAL_EMBALAGEM.ID_PRODMATEEMBA,  ');
  Qr.SQL.Add('           MATERIAL_EMBALAGEM.NM_PRODMATEEMBA   ');
  Qr.SQL.Add(' ORDER BY  MATERIAL_EMBALAGEM.ID_PRODMATEEMBA   ');
  Qr.Open;

  if chkQtdeNaoAtendida.Checked then
  begin
    WITH qryTotalItensNaoExp.SQL DO
    BEGIN
      Clear;

      Add('SELECT MATERIAL_EMBALAGEM.ID_PRODMATEEMBA , MATERIAL_EMBALAGEM.NM_PRODMATEEMBA, ');
      Add('SUM(Nvl(PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND,0)) As QN_EMBAITEMPEDIVEND, ');
      Add('SUM(Nvl(PEDIDO_VENDA_ITEM.QN_EMBAEXPEITEMPEDIVEND,0)) As QN_EMBAEXPEITEMPEDIVEND, ');
      Add('( SUM(Nvl(PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND,0)) - SUM(Nvl(PEDIDO_VENDA_ITEM.QN_EMBAEXPEITEMPEDIVEND,0))) as dif ');
      Add('FROM PEDIDO_VENDA_ITEM, PEDIDO_VENDA, EXPEDICAO_CARGA, CLIENTE, VENDEDOR, MATERIAL_EMBALAGEM, SISTEMA_USUARIO SISTEMA_USUARIO_A, SISTEMA_USUARIO SISTEMA_USUARIO_B, ');
      Add('SISTEMA_USUARIO SISTEMA_USUARIO_C, SISTEMA_USUARIO SISTEMA_USUARIO_D, BAIRRO, CIDADE, ESTADO, PAIS, NOTA_FISCAL, PEDIDO_VENDA_NOTA_FISCAL, CONTA, FORNECEDOR, FORMA_PAGAMENTO, ');
      Add('MATERIAL ');
      Add('WHERE (PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND) AND ');
      Add('(PEDIDO_VENDA_ITEM.ID_MATEEMBA = MATERIAL_EMBALAGEM.ID_MATEEMBA) AND ');
      Add('(PEDIDO_VENDA.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE (+)) AND ');
      Add('(PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE) AND ');
      Add('(PEDIDO_VENDA.ID_USUASIST_DIGIPEDIVEND = SISTEMA_USUARIO_a.ID_USUASIST (+)) AND ');
      Add('(EXPEDICAO_CARGA.ID_USUASIST_ABERTURA = SISTEMA_USUARIO_b.ID_USUASIST (+)) AND ');
      Add('(PEDIDO_VENDA.ID_USUASIST_AUTOPEDIVEND = SISTEMA_USUARIO_c.ID_USUASIST (+)) AND ');
      Add('(PEDIDO_VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR) AND ');
      Add('BAIRRO.ID_BAIRRO = CLIENTE.ID_BAIRRO AND ');
      Add('CIDADE.ID_CIDADE = BAIRRO.ID_CIDADE  AND ');
      Add('ESTADO.ID_ESTADO = CIDADE.ID_ESTADO  AND ');
      Add('PAIS.ID_PAIS = ESTADO.ID_PAIS  AND ');
      Add('NOTA_FISCAL.ID_NOTAFISC(+) = PEDIDO_VENDA_NOTA_FISCAL.ID_NOTAFISC   AND ');
      Add('PEDIDO_VENDA_NOTA_FISCAL.ID_PEDIVEND(+) = PEDIDO_VENDA.ID_PEDIVEND  AND ');
      Add('EXPEDICAO_CARGA.ID_ITEMPROGCAMI  = FORNECEDOR.ID_FORNECEDOR (+) AND ');
      Add('CLIENTE.ID_USUARIO_RESG = SISTEMA_USUARIO_D.ID_USUARIO (+) AND ');
      Add('NVL(NOTA_FISCAL.FL_CANCNOTAFISC,''N'') = ''N''  AND ');
      Add('CONTA.ID_CONTA = PEDIDO_VENDA.ID_CONTA  AND ');
      Add('FORMA_PAGAMENTO.ID_FORMPAGA = PEDIDO_VENDA.ID_FORMPAGA AND ');
      Add('  PEDIDO_VENDA.FL_STATPEDIVEND <> ''CN'' AND ');
      Add('PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND > PEDIDO_VENDA_ITEM.QN_EMBAEXPEITEMPEDIVEND AND ');
      Add('MATERIAL.ID_MATERIAL = MATERIAL_EMBALAGEM.ID_MATERIAL AND  ');
      Add('MATERIAL.ID_ALMOXARIFADO = 1 AND ');

      if cmbData.ItemIndex = 0 then
      begin
        Add('PEDIDO_VENDA.DT_ENTRPEDIVEND >= TO_DATE(''' + DTini.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') AND ');
        Add('PEDIDO_VENDA.DT_ENTRPEDIVEND <= TO_DATE(''' + DTFim.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') ');
      end;

      if cmbData.ItemIndex = 1 then
      begin
        Add('PEDIDO_VENDA.DT_DIGIPEDIVEND >= TO_DATE(''' + DTini.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') AND ');
        Add('PEDIDO_VENDA.DT_DIGIPEDIVEND <= TO_DATE(''' + DTFim.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') ');
      end;

    end;

    XTM:=MResul.Lines.Count;

    If XTM >0 then
    begin
      qryTotalItensNaoExp.SQL.Add(' AND ');
      qryTotalItensNaoExp.SQL.Add(MResul.Text);
    end;

    Screen.Cursor := crSQLWait;
    qryTotalItensNaoExp.SQL.Add('GROUP BY MATERIAL_EMBALAGEM.ID_PRODMATEEMBA, MATERIAL_EMBALAGEM.NM_PRODMATEEMBA ');
    qryTotalItensNaoExp.SQL.Add('ORDER BY MATERIAL_EMBALAGEM.ID_PRODMATEEMBA, MATERIAL_EMBALAGEM.NM_PRODMATEEMBA ');
    qryTotalItensNaoExp.Open;
  end;
  
end;

procedure TFrmSelVenProd.btnExcelClick(Sender: TObject);
var
  Arquivo: TextFile;
begin
  Screen.Cursor := crSQLWait;

  ConsultaSQL;

  try
    if dlgSaveArquivo.Execute then
    begin
      AssignFile(Arquivo, dlgSaveArquivo.FileName);
      Rewrite(Arquivo);

      Write(Arquivo, 'Código;');
      Write(Arquivo, 'Descrição do Produto;');
      Write(Arquivo, 'Caixas Pedido;');
      Write(Arquivo, 'kg Pedido;');
      Write(Arquivo, 'Valor Unitário Pedido;');
      Write(Arquivo, 'Valor Total Pedido;');
      Write(Arquivo, 'Caixas Expedidas;');
      WriteLn(Arquivo, 'kg Expedido;');

      Qr.First;

      while not Qr.Eof do
      begin
        Write(Arquivo, QrID_PRODMATEEMBA.AsString + ';');
        Write(Arquivo, QrNM_PRODMATEEMBA.AsString + ';');
        Write(Arquivo, QrCX_PED.AsString + ';');
        Write(Arquivo, QrKG_PED.AsString + ';');
        Write(Arquivo, QrVL_UNIT.AsString + ';');
        Write(Arquivo, QrVL_TOTAL.AsString + ';');
        Write(Arquivo, QrCX_EXPED.AsString + ';');
        WriteLn(Arquivo, QrKG_EXPED.AsString + ';');

        Qr.Next;
      end;

      CloseFile(Arquivo);
      MessageDlg('Arquivo gerado com sucesso em ' + dlgSaveArquivo.FileName, mtInformation, [mbOK], 0);
    end;
  except
    MessageDlg('Erro ao gerar o arquivo. Verifique se o local de destino existe e está acessível.', mtError, [mbOK], 0);
  end;

  Screen.Cursor := crDefault;
end;

procedure TFrmSelVenProd.ConsultaSQLTotConta;
VAR
  XTM:INTEGER;
begin
  QrTotConta.Close;
  WITH QrTotConta.SQL DO
    BEGIN
      Clear;
      Add('SELECT ');
      Add('  PEDIDO_VENDA.ID_CONTA, ');
      Add('  CONTA.NM_CONTA, ');
      Add('  COUNT(0) as QTDE_PEDIDOS, ');
      Add('  SUM(PEDIDO_VENDA.VL_PEDIVEND) AS TOTAL_PEDIDO '); 
      Add('FROM ');
      Add('  PEDIDO_VENDA, ');
      Add('  EXPEDICAO_CARGA, ');
      Add('  CLIENTE, ');
      Add('  VENDEDOR, ');
      Add('  PEDIDO_VENDA_NOTA_FISCAL, ');
      Add('  NOTA_FISCAL, ');
      Add('  BAIRRO, ');
      Add('  CIDADE, ');
      Add('  ESTADO, ');
      Add('  CONTA ');
      Add('WHERE ');
      Add('  PEDIDO_VENDA.ID_CONTA = CONTA.ID_CONTA AND ');
      Add('  (PEDIDO_VENDA.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE(+)) AND ');
      Add('  (PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE) AND ');
      Add('  (PEDIDO_VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR(+)) AND ');
      Add('  PEDIDO_VENDA_NOTA_FISCAL.ID_PEDIVEND(+) = PEDIDO_VENDA.ID_PEDIVEND AND ');
      Add('  NOTA_FISCAL.ID_NOTAFISC(+) = PEDIDO_VENDA_NOTA_FISCAL.ID_NOTAFISC  AND ');
      Add('  NVL(NOTA_FISCAL.FL_CANCNOTAFISC,''N'') = ''N''  AND ');
      Add('  PEDIDO_VENDA.FL_STATPEDIVEND <> ''CN'' AND ');
      Add('  (NOTA_FISCAL.SG_SERINOTAFISC_NOTAFISC <> 22 OR NOTA_FISCAL.SG_SERINOTAFISC_NOTAFISC IS NULL) AND ');
      Add('  BAIRRO.ID_BAIRRO = CLIENTE.ID_BAIRRO AND ');
      Add('  CIDADE.ID_CIDADE = BAIRRO.ID_CIDADE AND ');
      Add('  ESTADO.ID_ESTADO = CIDADE.ID_ESTADO AND ');

      if cmbData.ItemIndex = 0 then
        begin
          Add('  PEDIDO_VENDA.DT_ENTRPEDIVEND >= TO_DATE(''' + DTini.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') AND ');
          Add('  PEDIDO_VENDA.DT_ENTRPEDIVEND <= TO_DATE(''' + DTFim.Text + ''',''' + 'DD/MM/YYYY' + '''' + ')     ');
        end;
      if cmbData.ItemIndex = 1 then
        begin
          Add('  PEDIDO_VENDA.DT_DIGIPEDIVEND >= TO_DATE(''' + DTini.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') AND ');
          Add('  PEDIDO_VENDA.DT_DIGIPEDIVEND <= TO_DATE(''' + DTFim.Text + ''',''' + 'DD/MM/YYYY' + '''' + ')     ');
        end;
    end;
  
  XTM:=MResul.Lines.Count;

  If XTM >0 then
    begin
      QrTotConta.SQL.Add(' AND ');
      QrTotConta.SQL.Add(MResul.Text);
    end;

  Screen.Cursor := crSQLWait;
  QrTotConta.SQL.Add('GROUP BY ');
  QrTotConta.SQL.Add('  PEDIDO_VENDA.ID_CONTA, CONTA.NM_CONTA ');
  QrTotConta.SQL.Add('ORDER BY 2');
  QrTotConta.Open;


  QrTotContaNF.Close;
  WITH QrTotContaNF.SQL DO
    BEGIN
      Clear;
      Add('SELECT ');
      Add('  PEDIDO_VENDA.ID_CONTA, ');
      Add('  CONTA.NM_CONTA, ');
      Add('  COUNT(0) as QTDE_PEDIDOS, ');
      Add('  SUM(PEDIDO_VENDA.VL_FATUPEDIVEND) AS TOTAL_FATURADO ');
      Add('FROM ');
      Add('  PEDIDO_VENDA, ');
      Add('  EXPEDICAO_CARGA, ');
      Add('  CLIENTE, ');
      Add('  VENDEDOR, ');
      Add('  PEDIDO_VENDA_NOTA_FISCAL, ');
      Add('  NOTA_FISCAL, ');
      Add('  BAIRRO, ');
      Add('  CIDADE, ');
      Add('  ESTADO, ');
      Add('  CONTA ');
      Add('WHERE ');
      Add('  PEDIDO_VENDA.ID_CONTA = CONTA.ID_CONTA AND ');
      Add('  (PEDIDO_VENDA.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE(+)) AND ');
      Add('  (PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE) AND ');
      Add('  (PEDIDO_VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR(+)) AND ');
      Add('  PEDIDO_VENDA_NOTA_FISCAL.ID_PEDIVEND(+) = PEDIDO_VENDA.ID_PEDIVEND AND ');
      Add('  NOTA_FISCAL.ID_NOTAFISC(+) = PEDIDO_VENDA_NOTA_FISCAL.ID_NOTAFISC  AND ');
      Add('  NVL(NOTA_FISCAL.FL_CANCNOTAFISC,''N'') = ''N''  AND ');
      Add('  PEDIDO_VENDA.FL_STATPEDIVEND <> ''CN'' AND ');      
      Add('  (NOTA_FISCAL.SG_SERINOTAFISC_NOTAFISC <> 22 OR NOTA_FISCAL.SG_SERINOTAFISC_NOTAFISC IS NULL) AND ');
      Add('  BAIRRO.ID_BAIRRO = CLIENTE.ID_BAIRRO AND ');
      Add('  CIDADE.ID_CIDADE = BAIRRO.ID_CIDADE AND ');
      Add('  ESTADO.ID_ESTADO = CIDADE.ID_ESTADO AND ');

      if cmbData.ItemIndex = 0 then
        begin
          Add('  PEDIDO_VENDA.DT_ENTRPEDIVEND >= TO_DATE(''' + DTini.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') AND ');
          Add('  PEDIDO_VENDA.DT_ENTRPEDIVEND <= TO_DATE(''' + DTFim.Text + ''',''' + 'DD/MM/YYYY' + '''' + ')     ');
        end;
      if cmbData.ItemIndex = 1 then
        begin
          Add('  PEDIDO_VENDA.DT_DIGIPEDIVEND >= TO_DATE(''' + DTini.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') AND ');
          Add('  PEDIDO_VENDA.DT_DIGIPEDIVEND <= TO_DATE(''' + DTFim.Text + ''',''' + 'DD/MM/YYYY' + '''' + ')     ');
        end;
    end;

  XTM:=MResul.Lines.Count;

  If XTM >0 then
    begin
      QrTotContaNF.SQL.Add(' AND ');
      QrTotContaNF.SQL.Add(MResul.Text);
    end;

  Screen.Cursor := crSQLWait;
  QrTotContaNF.SQL.Add('GROUP BY ');
  QrTotContaNF.SQL.Add('  PEDIDO_VENDA.ID_CONTA, CONTA.NM_CONTA ');
  QrTotContaNF.SQL.Add('ORDER BY 2');
  QrTotContaNF.Open;
end;

end.

