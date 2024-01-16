unit UFrmSelRelConfVenda;

interface

//uses Vcl.Dialogs, Data.DB, DBAccess, Ora, MemDS, Vcl.StdCtrls, Vcl.Buttons,
//  Vcl.Controls, Vcl.ExtCtrls, Vcl.ComCtrls, System.Classes;

uses
  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, Variants , Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Winapi.Windows;

type
  TFrmSelRelConfVenda = class(TForm)
    pnlBotoes: TPanel;
    Qr: TOraQuery;
    DS: TOraDataSource;
    QrID_TIPOPEDIVEND: TFloatField;
    QrDT_ENTRPEDIVEND: TDateTimeField;
    QrNM_CLIENTE: TStringField;
    QrAUTORIZANTE: TStringField;
    QrDIGITADOR: TStringField;
    QrEXPEDIDOR: TStringField;
    QrNM_PRODMATEEMBA: TStringField;
    QrVL_UNITITEMPEDIVEND: TFloatField;
    QrVLTOTAL: TFloatField;
    QrID_PEDIVEND: TFloatField;
    QrID_PRODMATEEMBA: TStringField;
    QrID_CLIENTE: TFloatField;
    QrQN_PESOITEMPEDIVEND: TFloatField;
    QrNVLPEDIDO_VENDA_ITEMQN_PESOPADREXPEITEMPEDIVEND0: TFloatField;
    QrNVLPEDIDO_VENDA_ITEMQN_EMBAITEMPEDIVEND0: TFloatField;
    QrNVLPEDIDO_VENDA_ITEMQN_EMBAEXPEITEMPEDIVEND0: TFloatField;
    QrID_VENDEDOR: TFloatField;
    QrNM_VENDEDOR: TStringField;
    QrSG_ESTADO: TStringField;
    QrID_PAIS: TFloatField;
    QrNR_NOTAFISC: TFloatField;
    QrNM_CONTA: TStringField;
    QrGN_PLACVEICTRAN: TStringField;
    QrVL_IPINOTAFISC: TFloatField;
    QrPLACA: TStringField;
    QrVL_DESCPEDIVEND_NOTAFISC: TFloatField;
    QrVL_PRODNOTAFISC: TFloatField;
    QrVL_DESCPEDIVEND: TFloatField;
    QrNM_FORNECEDOR: TStringField;
    QrNR_FONEFORN: TStringField;
    QrGN_OBSEEXPEPEDIVEND: TStringField;
    QrNM_FORMPAGA: TStringField;
    Sb_Sair: TSpeedButton;
    SpeedButton1: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    RGeou: TRadioGroup;
    MResul: TMemo;
    LCampos: TListBox;
    Label7: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    EdExpre: TEdit;
    DTini: TEdit;
    DtFim: TEdit;
    cmbData: TComboBox;
    Chk_Exped: TCheckBox;
    Chk_Agrupar: TCheckBox;
    CBCond: TComboBox;
    BtLimpar: TBitBtn;
    BtIncluir: TBitBtn;
    BtAtivar: TBitBtn;
    BPESQ: TBitBtn;
    dlgSaveArquivo: TSaveDialog;
    QrDT_DIGIPEDIVEND: TDateTimeField;
    QrID_GRUPCLIE: TFloatField;
    QrID_CARGEXPE: TFloatField;
    QrDT_FATUPEDIVEND: TDateTimeField;
    QrNM_FANTCLIE: TStringField;
    chkQtdeNaoAtendida: TCheckBox;
    qryNaoExpedido: TOraQuery;
    dtsNaoExpedido: TOraDataSource;
    qryTotalItensNaoExp: TOraQuery;
    dtsTotalItensNaoExp: TOraDataSource;
    qryTotalItensNaoExpID_PRODMATEEMBA: TStringField;
    qryTotalItensNaoExpNM_PRODMATEEMBA: TStringField;
    qryTotalItensNaoExpQN_EMBAITEMPEDIVEND: TFloatField;
    qryTotalItensNaoExpQN_EMBAEXPEITEMPEDIVEND: TFloatField;
    qryTotalItensNaoExpDIF: TFloatField;
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
    procedure FormShow(Sender: TObject);
    procedure DTiniExit(Sender: TObject);
    procedure CBCondChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
    procedure pExecutaQr();
  public
    VFINAL,Vdata,VIDPAIS, NMPAIS:STRING;
    SELPE:integer;
    VCid, NCid, NEst, NPais, NReg, sTipoData:STRING;
  end;

var
  FrmSelRelConfVenda: TFrmSelRelConfVenda;

implementation

uses Principal, UFrmRelConfVenda, Global, UFrmPesqTPV, UFrmPesqVend, ufrmConsultaProdutos,
  UPesquiCliente, UFrmPesqPais, UFrmPesCaminhao, UFrmPesqCid, ufrmConsultaUsuarios, ufrmConsultaUsuarioSistema,
  UFrmRelConfVenCarga, ufrmConsultaGrupoClientes;

{$R *.dfm}

procedure TFrmSelRelConfVenda.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelRelConfVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.VEN012.Enabled:= True;
  Action:=caFree;
end;


procedure TFrmSelRelConfVenda.LCamposClick(Sender: TObject);
begin
 SELPE:=0;

  CASE LCAMPOS.ItemIndex OF
    0:SELPE:=1;
    1:SELPE:=2;
    2:SELPE:=3;
    3:SELPE:=4;
    4:SELPE:=5;
    8:SELPE:=6;
    9:SELPE:=7;
    12:SELPE:=8;
  END;

  IF SELPE>0 then
    BPESQ.Visible:=TRUE
  else
    BPESQ.Visible:=False;

end;

procedure TFrmSelRelConfVenda.FormActivate(Sender: TObject);
begin
  IF LCAMPOS.Items.Count=0 then
  BEGIN
    With LCampos.Items do
    begin
      Add('Cód. Tipo de Pedido');
      Add('Cód. Vendedor');
      Add('Cód. Cliente');
      Add('Cód. Produto');
      Add('Cód. Usuário Digitação');
      Add('Nº do Pedido');
      Add('Nº da Carga');
      Add('Nº da NF-e');
      Add('Grupo Cliente');
      Add('Veículo');
      Add('Kg Expedido do Ítem');
      Add('Valor Ítem');
      Add('Cód. Vendedor Resgate');
      Add('Funcionário (S/N)');
      Add('Qtd. Cxs. Pedido');
      Add('Qtd. Cxs. Expedido');
      Add('Valor Venda');
    end;
  END;
end;

procedure TFrmSelRelConfVenda.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmSelRelConfVenda.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmSelRelConfVenda.BtIncluirClick(Sender: TObject);
var
  Vre,VA,Vlinha:String;
  Vcampos,FA,FO:integer;
begin
  If (EdExpre.Text<>'') or (CBCond.ItemIndex > 6) then
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

    If LCampos.itemindex = -1 then
      Vcampos:=0
    else
      Vcampos:=LCampos.itemindex;

    If RGeou.ItemIndex=0  then
      Vre:= Vre + '(' ;

    Case LCampos.itemindex of
      0:Vre:=Vre + 'PEDIDO_VENDA.ID_TIPOPEDIVEND ';
      1:Vre:=Vre + 'PEDIDO_VENDA.ID_VENDEDOR';
      2:Vre:=Vre + 'PEDIDO_VENDA.ID_CLIENTE';
      3:Vre:=Vre + 'MATERIAL_EMBALAGEM.ID_PRODMATEEMBA';
      4:Vre:=Vre + 'PEDIDO_VENDA.ID_USUASIST_DIGIPEDIVEND';
      5:Vre:=Vre + 'PEDIDO_VENDA_ITEM.ID_PEDIVEND';
      6:Vre:=Vre + 'PEDIDO_VENDA.ID_CARGEXPE';
      7:Vre:=Vre + 'NOTA_FISCAL.NR_NOTAFISC';
      8:Vre:=Vre + 'CLIENTE.ID_GRUPCLIE';
      9:Vre:=Vre + 'EXPEDICAO_CARGA.GN_PLACVEICTRAN';
      10:Vre:=Vre + 'PEDIDO_VENDA_ITEM.QN_PESOPADREXPEITEMPEDIVEND';
      11:Vre:=Vre + 'PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND';
      12:Vre:=Vre + 'CLIENTE.ID_USUARIO_RESG';
      13:Vre:=Vre + 'CLIENTE.FL_FUNCIONARIO';
      14:Vre:=Vre + 'pedido_venda.QN_EMBAPEDIVEND';
      15:Vre:=Vre + 'pedido_venda.QN_EMBAEXPEPEDIVEND';
      16:Vre:=Vre + 'pedido_venda.VL_PEDIVEND';
    end;

    Case CBCond.ItemIndex of
      0: Vre:=Vre + ' = ';
      1: Vre:=Vre + ' <> ';
      2: Vre:=Vre + ' > ';
      3: Vre:=Vre + ' >= ';
      4: Vre:=Vre + ' < ';
      5: Vre:=Vre + ' <= ';
      6: Vre:=Vre + ' LIKE ';
      7: Vre:=Vre + ' IS NULL ';
      8: Vre:=Vre + ' IS NOT NULL ';
    end;

    Case LCampos.itemindex of
      9:Vre:=Vre + '''';
      13:Vre:=Vre + '''';
    end;

    If CBCond.ItemIndex = 6 then
      Vre:=Vre + '%';

    Vre:=Vre + UpperCase(Edexpre.text);

    If CBCond.ItemIndex = 6 then
      Vre:=Vre + '%';

    Case LCampos.itemindex of
      9:Vre:= Vre + '''';
      13:Vre:=Vre + '''';
    end;

    Vre:=Vre+')';

    MResul.Lines.Add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

  end;

  BtAtivar.SetFocus;

end;

procedure TFrmSelRelConfVenda.BtAtivarClick(Sender: TObject);
Begin
  Screen.Cursor := crSQLWait;
  Qr.Close;

  pExecutaQr;

  if Chk_Exped.Checked then
  begin
    FrmRelConfVenCarga:=TFrmRelConfVenCarga.Create(Self);
    FrmRelConfVenCarga.DT1.Caption := DTIni.Text ;
    FrmRelConfVenCarga.DT2.Caption := DtFim.Text ;
    FrmRelConfVenCarga.RLDBText8.Visible  := Not(Chk_Agrupar.Checked);
    FrmRelConfVenCarga.RLDBText17.Visible := Not(Chk_Agrupar.Checked);
    FrmRelConfVenCarga.RLDBText5.Visible  := Not(Chk_Agrupar.Checked);
    FrmRelConfVenCarga.RLDBText11.Visible := Not(Chk_Agrupar.Checked);
    FrmRelConfVenCarga.lblUsuario.Caption := gs_NomeUsuario;
    Screen.Cursor := crDefault;
//    FrmRelConfVenCarga.RLPrintDialogSetup1.Copies:=1;
    FrmRelConfVenCarga.RLReport1.PreviewModal;
  end
  else
  begin
    FrmRelConfVenda:=TFrmRelConfVenda.Create(Self);
    FrmRelConfVenda.DT1.Caption := DTIni.Text ;
    FrmRelConfVenda.DT2.Caption := DtFim.Text ;
    FrmRelConfVenda.RLDBText8.Visible  := Not(Chk_Agrupar.Checked);
    FrmRelConfVenda.RLDBText17.Visible := Not(Chk_Agrupar.Checked);
    FrmRelConfVenda.RLDBText5.Visible  := Not(Chk_Agrupar.Checked);
    FrmRelConfVenda.RLDBText11.Visible := Not(Chk_Agrupar.Checked);
    FrmRelConfVenda.lblUsuario.Caption := gs_NomeUsuario;
    Screen.Cursor := crDefault;
//    FrmRelConfVenda.RLPrintDialogSetup1.Copies:=1;
    FrmRelConfVenda.RLReport1.PreviewModal;

    if chkQtdeNaoAtendida.Checked then
    begin
      FrmRelConfVenda.lblDtInicial.Caption := DTIni.Text ;
      FrmRelConfVenda.lblDtFinal.Caption := DtFim.Text ;
      FrmRelConfVenda.lblUsuario2.Caption := gs_NomeUsuario;
      FrmRelConfVenda.RLReport2.PreviewModal;
    end;

  end;
end;

procedure TFrmSelRelConfVenda.SB_PRINTClick(Sender: TObject);
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

procedure TFrmSelRelConfVenda.FormDestroy(Sender: TObject);
begin
  FrmSelRelConfVenda:=Nil;
end;

procedure TFrmSelRelConfVenda.BPESQClick(Sender: TObject);
begin
  XRPM:=2;
  FrmOriPesq:=13;

  CASE SELPE OF
    1:
    BEGIN
      FrmPesqTPV:=TFrmPesqTPV.Create(Self);
      FrmPesqTPV.ShowModal;
    END;
    2,8:
    BEGIN
      FrmPesqVend:=TFrmPesqVend.Create(Self);
      FrmPesqVend.ShowModal;
    END;
    3:
    BEGIN
      FrmPesqCliente:=TFrmPesqCliente.Create(Self);
      FrmPesqCliente.ShowModal;
    END;
    4:
    BEGIN
      FrmOriPesq:= 131;
      frmConsultaProdutos:=TfrmConsultaProdutos.Create(Self);
      frmConsultaProdutos.ShowModal;
    END;
    5:
    BEGIN
      FrmConsultaUsuarioSistema:=TFrmConsultaUsuarioSistema.Create(Self);
      FrmConsultaUsuarioSistema.ShowModal;
    end;
    6:
    BEGIN
      frmConsultaGrupoClientes:=TfrmConsultaGrupoClientes.Create(Self);
      frmConsultaGrupoClientes.ShowModal;
    end;
    7:
    BEGIN
      FrmPesqCaminhao:=TFrmPesqCaminhao.Create(Self);
      FrmPesqCaminhao.VORIGEM:=13;
      FrmPesqCaminhao.ShowModal;
    END;
  end;

  BPESQ.Visible:=FALSE;

end;

procedure TFrmSelRelConfVenda.FormShow(Sender: TObject);
begin
 DTini.Text := DateToStr(Date());
 DtFim.Text := DateToStr(Date());
end;

procedure TFrmSelRelConfVenda.DTiniExit(Sender: TObject);
begin
 If StrToDate(DtFim.Text) < StrToDate(DTini.Text) then
     DtFim.Text:= DTini.Text;
end;

procedure TFrmSelRelConfVenda.CBCondChange(Sender: TObject);
begin
  if CBCond.ItemIndex > 6 then
    BtIncluir.Enabled:= True
  else
    BtIncluir.Enabled:= False;
end;

procedure TFrmSelRelConfVenda.SpeedButton1Click(Sender: TObject);
var
  Arquivo: TextFile;
begin

  pExecutaQr;

  if Qr.RecordCount = 0 then
  begin
    Application.MessageBox('Não há registros para o período ou filtro selecionado.', PChar(FrmSelRelConfVenda.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end
  else
  begin
    Qr.Refresh;

    Screen.Cursor := crSQLWait;

    try
      if dlgSaveArquivo.Execute then
      begin
        dlgSaveArquivo.FileName := 'CONFERENCIA_VENDA_' + sTipoData + StringReplace(DTini.Text, '/', '.', [rfReplaceAll]) + '_' + StringReplace(DtFim.Text, '/', '.', [rfReplaceAll]) + '.csv';
        AssignFile(Arquivo, dlgSaveArquivo.FileName);
        Rewrite(Arquivo);

        if cmbData.ItemIndex = 0 then
          Write(Arquivo, 'DT ENTREGA;')
        else
            Write(Arquivo, 'DT DIGITACAO;');

        Write(Arquivo, 'CODIGO - RAZAO SOCIAL;');
        Write(Arquivo, 'NOME FANTASIA;');
        Write(Arquivo, 'Nº PEDIDO;');
        Write(Arquivo, 'PRODUTO;');
        Write(Arquivo, 'CX PEDIDO;');
        Write(Arquivo, 'KG PEDIDO;');
        Write(Arquivo, 'CX EXPEDIDAS;');
        Write(Arquivo, 'KG EXPEDIDO;');
        Write(Arquivo, 'VL PROD. VENDA;');
        Write(Arquivo, 'VL PROD. TAB;');
        Write(Arquivo, 'DIFERENCA;');
        Write(Arquivo, 'VL IPI;');
        Write(Arquivo, 'VENDEDOR;');
        Write(Arquivo, 'DT FATURA;');
        Write(Arquivo, 'NOTA FISCAL;');
        Write(Arquivo, 'PRAZO;');
        Write(Arquivo, 'PLACA;');
        WriteLn(Arquivo, 'Nº CARGA;');

        Qr.First;

        while not Qr.Eof do
        begin
          if cmbData.ItemIndex = 0 then
            Write(Arquivo, QrDT_ENTRPEDIVEND.AsString + ';')
          else
            Write(Arquivo, QrDT_DIGIPEDIVEND.AsString + ';');

          Write(Arquivo, QrID_CLIENTE.asString + ' - ' + QrNM_CLIENTE.AsString + ';');
          Write(Arquivo, QrNM_FANTCLIE.AsString + ';');
          Write(Arquivo, QrID_PEDIVEND.AsString + ';');
          Write(Arquivo, QrID_PRODMATEEMBA.AsString + ' - ' + QrNM_PRODMATEEMBA.AsString + ';');
          Write(Arquivo, QrNVLPEDIDO_VENDA_ITEMQN_EMBAITEMPEDIVEND0.AsString + ';');
          Write(Arquivo, FormatFloat('###.000', QrQN_PESOITEMPEDIVEND.Value) + ';');
          Write(Arquivo, QrNVLPEDIDO_VENDA_ITEMQN_EMBAEXPEITEMPEDIVEND0.AsString + ';');
          Write(Arquivo, FormatFloat('###.000', QrNVLPEDIDO_VENDA_ITEMQN_PESOPADREXPEITEMPEDIVEND0.Value) + ';');
          Write(Arquivo, FormatFloat('##.00', QrVL_UNITITEMPEDIVEND.Value) + ';');
          Write(Arquivo, ' ;');
//          Write(Arquivo, FormatFloat('##.00', QrVL_TABELA.Value) + ';');
          Write(Arquivo, ' ;');
          Write(Arquivo, FormatFloat('##.00',QrVL_IPINOTAFISC.Value) + ';');
          Write(Arquivo, QrID_VENDEDOR.AsString + ' - ' + QrNM_VENDEDOR.AsString + ';');
          Write(Arquivo, QrDT_FATUPEDIVEND.AsString + ';');
          Write(Arquivo, QrNR_NOTAFISC.AsString + ';');
          Write(Arquivo, QrNM_FORMPAGA.AsString + ';');
          Write(Arquivo, QrGN_PLACVEICTRAN.AsString + ';');
          Writeln(Arquivo, QrID_CARGEXPE.AsString + ';');
          Qr.Next;
        end;

        CloseFile(Arquivo);
        Application.MessageBox(PChar('Arquivo gerado com sucesso em ' + dlgSaveArquivo.FileName), PChar(FrmSelRelConfVenda.Caption), MB_OK + MB_ICONINFORMATION);

      end;
    except
      MessageDlg('Erro ao gerar o arquivo. Verifique se o local de destino existe e está acessível.', mtError, [mbOK], 0);
    end;

    Screen.Cursor := crDefault;
  end;

end;

procedure TFrmSelRelConfVenda.pExecutaQr;
VAR
  XTM:INTEGER;
begin
  WITH Qr.SQL DO
  BEGIN
    Clear;

    if Chk_Agrupar.Checked then
    begin
      Add(' Select 0 As ID_TIPOPEDIVEND, ');
      Add(' Min(DT_ENTRPEDIVEND) As DT_ENTRPEDIVEND, ');
      Add(' NM_CLIENTE, ');
      Add(' ''Agrupado'' AS AUTORIZANTE, ');
      Add(' ''Agrupado'' AS DIGITADOR, ');
      Add(' ''Agrupado'' AS EXPEDIDOR, ');
      Add(' NM_PRODMATEEMBA, ');
      Add(' Sum(NVL(QN_PESOPADREXPEITEMPEDIVEND,0)) As QN_PESOPADREXPEITEMPEDIVEND, ');
      Add(' VL_UNITITEMPEDIVEND, ');
      Add(' Sum(QN_PESOITEMPEDIVEND) As QN_PESOITEMPEDIVEND, ');
      Add(' Sum(QN_PESOITEMPEDIVEND*VL_UNITITEMPEDIVEND) AS vltotal, ');
      Add(' ID_CLIENTE As ID_PEDIVEND, ');
      Add(' Count(Nvl(QN_EMBAITEMPEDIVEND,0)) As QN_EMBAITEMPEDIVEND, ');
      Add(' Count(QN_EMBAEXPEITEMPEDIVEND) As QN_EMBAEXPEITEMPEDIVEND, ');
      Add(' ID_PRODMATEEMBA, ');
      Add(' ID_CLIENTE, ');
      Add(' 0 As ID_VENDEDOR, ');
      Add(' ''Agrupado'' As NM_VENDEDOR, ');
      Add(' SG_ESTADO, ');
      Add(' 0 As ID_PAIS, ');
      Add(' 0 As NR_NOTAFISC, ');
      Add(' ''Agrupado'' As NM_CONTA, ');
      Add(' ''Agrupado'' As GN_PLACVEICTRAN, ');
      Add(' Sum(NVL(VL_IPINOTAFISC,0)) AS VL_IPINOTAFISC, ');
      Add(' '''' AS PLACA, ');
      Add(' Sum(VL_DESCPEDIVEND_NOTAFISC) As VL_DESCPEDIVEND_NOTAFISC, ');
      Add(' Sum(VL_PRODNOTAFISC) As VL_PRODNOTAFISC, ');
      Add(' Sum(VL_DESCPEDIVEND) As VL_DESCPEDIVEND, ');
      Add(' NM_FORNECEDOR, ');
      Add(' NR_FONEFORN ');
      Add(' From ( ');
    end;

    Add('SELECT PEDIDO_VENDA.ID_TIPOPEDIVEND, PEDIDO_VENDA.DT_ENTRPEDIVEND, PEDIDO_VENDA.DT_DIGIPEDIVEND, CLIENTE.NM_CLIENTE, CLIENTE.NM_FANTCLIE, ');
    Add('SISTEMA_USUARIO_c.NM_USUASIST AS AUTORIZANTE, SISTEMA_USUARIO_A.ID_USUASIST, SISTEMA_USUARIO_a.NM_USUASIST AS DIGITADOR, ');
    Add('SISTEMA_USUARIO_b.NM_USUASIST AS EXPEDIDOR, MATERIAL_EMBALAGEM.NM_PRODMATEEMBA, NVL(PEDIDO_VENDA_ITEM.QN_PESOPADREXPEITEMPEDIVEND,0) As QN_PESOPADREXPEITEMPEDIVEND, ');
    Add('PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND, PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND, (PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND*PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND) AS vltotal, ');
    Add('PEDIDO_VENDA_ITEM.ID_PEDIVEND, Nvl(PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND,0) As QN_EMBAITEMPEDIVEND, Nvl(PEDIDO_VENDA_ITEM.QN_EMBAEXPEITEMPEDIVEND,0) As QN_EMBAEXPEITEMPEDIVEND,   ');
    Add('MATERIAL_EMBALAGEM.ID_PRODMATEEMBA, PEDIDO_VENDA.ID_CLIENTE, PEDIDO_VENDA.ID_VENDEDOR, VENDEDOR.NM_VENDEDOR, ESTADO.SG_ESTADO, PAIS.ID_PAIS, NOTA_FISCAL.NR_NOTAFISC, ');
    Add('CONTA.NM_CONTA, EXPEDICAO_CARGA.GN_PLACVEICTRAN, NVL(NOTA_FISCAL.VL_IPINOTAFISC,0) AS VL_IPINOTAFISC, PEDIDO_VENDA.GN_PLACVEICTRAN AS PLACA, ');
    Add('NOTA_FISCAL.VL_DESCPEDIVEND_NOTAFISC, NOTA_FISCAL.VL_PRODNOTAFISC, PEDIDO_VENDA.VL_DESCPEDIVEND, FORNECEDOR.NM_FORNECEDOR, FORNECEDOR.NR_FONEFORN, ');
    Add('PEDIDO_VENDA.GN_OBSEEXPEPEDIVEND, FORMA_PAGAMENTO.NM_FORMPAGA, CLIENTE.ID_GRUPCLIE, EXPEDICAO_CARGA.ID_CARGEXPE, PEDIDO_VENDA.DT_FATUPEDIVEND, ');
    Add('CLIENTE.ID_USUARIO_RESG, SISTEMA_USUARIO_d.ID_USUARIO, CLIENTE.FL_FUNCIONARIO, ( Nvl(PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND,0) - Nvl(PEDIDO_VENDA_ITEM.QN_EMBAEXPEITEMPEDIVEND,0)) as dif, ');
    Add('pedido_venda.VL_PEDIVEND, pedido_venda.QN_EMBAPEDIVEND, pedido_venda.QN_EMBAEXPEPEDIVEND');
    Add('FROM PEDIDO_VENDA_ITEM, PEDIDO_VENDA, EXPEDICAO_CARGA, CLIENTE, VENDEDOR, MATERIAL_EMBALAGEM, SISTEMA_USUARIO SISTEMA_USUARIO_A, SISTEMA_USUARIO SISTEMA_USUARIO_B, ');
    Add('SISTEMA_USUARIO SISTEMA_USUARIO_C, SISTEMA_USUARIO SISTEMA_USUARIO_D, BAIRRO, CIDADE, ESTADO, PAIS, NOTA_FISCAL, PEDIDO_VENDA_NOTA_FISCAL, CONTA, FORNECEDOR, FORMA_PAGAMENTO');
    Add('WHERE (PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND) AND   ');
    Add('(PEDIDO_VENDA_ITEM.ID_MATEEMBA = MATERIAL_EMBALAGEM.ID_MATEEMBA) AND   ');
    Add('(PEDIDO_VENDA.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE (+)) AND   ');
    Add('(PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE) AND   ');
    Add('(PEDIDO_VENDA.ID_USUASIST_DIGIPEDIVEND = SISTEMA_USUARIO_a.ID_USUASIST (+)) AND   ');
    Add('(EXPEDICAO_CARGA.ID_USUASIST_ABERTURA = SISTEMA_USUARIO_b.ID_USUASIST (+)) AND   ');
    Add('(PEDIDO_VENDA.ID_USUASIST_AUTOPEDIVEND = SISTEMA_USUARIO_c.ID_USUASIST (+)) AND   ');
    Add('(PEDIDO_VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR) AND   ');
    Add('BAIRRO.ID_BAIRRO = CLIENTE.ID_BAIRRO AND    ');
    Add('CIDADE.ID_CIDADE = BAIRRO.ID_CIDADE  AND    ');
    Add('ESTADO.ID_ESTADO = CIDADE.ID_ESTADO  AND    ');
    Add('PAIS.ID_PAIS = ESTADO.ID_PAIS  AND          ');
    Add('NOTA_FISCAL.ID_NOTAFISC(+) = PEDIDO_VENDA_NOTA_FISCAL.ID_NOTAFISC   AND  ');
    Add('PEDIDO_VENDA_NOTA_FISCAL.ID_PEDIVEND(+) = PEDIDO_VENDA.ID_PEDIVEND  AND  ');
    Add('EXPEDICAO_CARGA.ID_ITEMPROGCAMI  = FORNECEDOR.ID_FORNECEDOR (+) AND ');
    Add('CLIENTE.ID_USUARIO_RESG = SISTEMA_USUARIO_D.ID_USUARIO (+) AND  ');
    Add('NVL(NOTA_FISCAL.FL_CANCNOTAFISC,''N'') = ''N''  AND ');
    Add('CONTA.ID_CONTA = PEDIDO_VENDA.ID_CONTA  AND  ');
    Add('FORMA_PAGAMENTO.ID_FORMPAGA = PEDIDO_VENDA.ID_FORMPAGA AND');
    Add('PEDIDO_VENDA.FL_STATPEDIVEND <> ''CN'' AND');

    if cmbData.ItemIndex = 0 then
    begin
      Add('PEDIDO_VENDA.DT_ENTRPEDIVEND >= TO_DATE(''' + DTini.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') AND ');
      Add('PEDIDO_VENDA.DT_ENTRPEDIVEND <= TO_DATE(''' + DTFim.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') ');
      sTipoData := 'ENTREGA_';
    end;

    if cmbData.ItemIndex = 1 then
    begin
      Add('PEDIDO_VENDA.DT_DIGIPEDIVEND >= TO_DATE(''' + DTini.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') AND ');
      Add('PEDIDO_VENDA.DT_DIGIPEDIVEND <= TO_DATE(''' + DTFim.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') ');
      sTipoData := 'DIGITACAO_';
    end;
  end;

  XTM:=MResul.Lines.Count;

  If XTM >0 then
  begin
    Qr.SQL.Add(' AND ');
    Qr.SQL.Add(MResul.Text);
  end;

  Screen.Cursor := crSQLWait;

  if Chk_Agrupar.Checked then
  begin
    Qr.SQL.Add(' ) GROUP BY NM_CLIENTE, NM_PRODMATEEMBA, VL_UNITITEMPEDIVEND, ID_PRODMATEEMBA, ID_CLIENTE, SG_ESTADO, NM_FORNECEDOR, NR_FONEFORN ');
    Qr.SQL.Add('ORDER BY NM_CLIENTE, ');
  end
  else
    Qr.SQL.Add('ORDER BY ID_PEDIVEND, ');

  Qr.SQL.Add('ID_PRODMATEEMBA ');

  Qr.Open;

  if chkQtdeNaoAtendida.Checked then
  begin
    WITH qryNaoExpedido.SQL DO
    BEGIN
      Clear;

      Add('SELECT VENDEDOR.NM_VENDEDOR, MATERIAL_EMBALAGEM.ID_PRODMATEEMBA , MATERIAL_EMBALAGEM.NM_PRODMATEEMBA, ');
      Add('SUM(Nvl(PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND,0)) As QN_EMBAITEMPEDIVEND, ');
      Add('SUM(Nvl(PEDIDO_VENDA_ITEM.QN_EMBAEXPEITEMPEDIVEND,0)) As QN_EMBAEXPEITEMPEDIVEND, ');
      Add('( SUM(Nvl(PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND,0)) - SUM(Nvl(PEDIDO_VENDA_ITEM.QN_EMBAEXPEITEMPEDIVEND,0))) as dif ');
      Add('FROM PEDIDO_VENDA_ITEM, PEDIDO_VENDA, EXPEDICAO_CARGA, CLIENTE, VENDEDOR, MATERIAL_EMBALAGEM, SISTEMA_USUARIO SISTEMA_USUARIO_A, SISTEMA_USUARIO SISTEMA_USUARIO_B, ');
      Add('SISTEMA_USUARIO SISTEMA_USUARIO_C, SISTEMA_USUARIO SISTEMA_USUARIO_D, BAIRRO, CIDADE, ESTADO, PAIS, NOTA_FISCAL, PEDIDO_VENDA_NOTA_FISCAL, CONTA, FORNECEDOR, FORMA_PAGAMENTO');
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
      Add('PEDIDO_VENDA.FL_STATPEDIVEND <> ''CN'' AND');
      Add('PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND > PEDIDO_VENDA_ITEM.QN_EMBAEXPEITEMPEDIVEND AND ');

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
      qryNaoExpedido.SQL.Add(' AND ');
      qryNaoExpedido.SQL.Add(MResul.Text);
    end;

    Screen.Cursor := crSQLWait;
    qryNaoExpedido.SQL.Add('GROUP BY VENDEDOR.NM_VENDEDOR, MATERIAL_EMBALAGEM.ID_PRODMATEEMBA, MATERIAL_EMBALAGEM.NM_PRODMATEEMBA ');
    qryNaoExpedido.SQL.Add('ORDER BY VENDEDOR.NM_VENDEDOR, MATERIAL_EMBALAGEM.ID_PRODMATEEMBA, MATERIAL_EMBALAGEM.NM_PRODMATEEMBA ');
    qryNaoExpedido.Open;


    WITH qryTotalItensNaoExp.SQL DO
    BEGIN
      Clear;

      Add('SELECT MATERIAL_EMBALAGEM.ID_PRODMATEEMBA , MATERIAL_EMBALAGEM.NM_PRODMATEEMBA, ');
      Add('SUM(Nvl(PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND,0)) As QN_EMBAITEMPEDIVEND, ');
      Add('SUM(Nvl(PEDIDO_VENDA_ITEM.QN_EMBAEXPEITEMPEDIVEND,0)) As QN_EMBAEXPEITEMPEDIVEND, ');
      Add('( SUM(Nvl(PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND,0)) - SUM(Nvl(PEDIDO_VENDA_ITEM.QN_EMBAEXPEITEMPEDIVEND,0))) as dif');
      Add('FROM PEDIDO_VENDA_ITEM, PEDIDO_VENDA, EXPEDICAO_CARGA, CLIENTE, VENDEDOR, MATERIAL_EMBALAGEM, SISTEMA_USUARIO SISTEMA_USUARIO_A, SISTEMA_USUARIO SISTEMA_USUARIO_B, ');
      Add('SISTEMA_USUARIO SISTEMA_USUARIO_C, SISTEMA_USUARIO SISTEMA_USUARIO_D, BAIRRO, CIDADE, ESTADO, PAIS, NOTA_FISCAL, PEDIDO_VENDA_NOTA_FISCAL, CONTA, FORNECEDOR, FORMA_PAGAMENTO ');
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
      Add('PEDIDO_VENDA.FL_STATPEDIVEND <> ''CN'' AND');
      Add('PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND > PEDIDO_VENDA_ITEM.QN_EMBAEXPEITEMPEDIVEND AND ');

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

end.


