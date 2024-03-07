unit UFrmCorte;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, Variants, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmCorte = class(TForm)
    PageControl1: TPageControl;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    TabLista: TTabSheet;
    TabDetalhe: TTabSheet;
    grdados: TDBGrid;
    Sb_Sair: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PRIMEIRO: TSpeedButton;
    SB_NOVO: TSpeedButton;
    SB_EXCLUI: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    SB_EDIT: TSpeedButton;
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
    SB_ATUAL: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    edtCodiProd: TEdit;
    BPesqProduto: TBitBtn;
    edtNomeProd: TEdit;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label8: TLabel;
    edtPercCort: TEdit;
    EdNomeProd: TEdit;
    Label9: TLabel;
    edtCaixCort: TEdit;
    EdtPedido: TEdit;
    edtCortado: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    edtProgramado: TEdit;
    Label12: TLabel;
    EdtDiferenca: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    btnCalcular: TBitBtn;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit5: TDBEdit;
    Label19: TLabel;
    DBEdit2: TDBEdit;
    Label20: TLabel;
    DBEdit3: TDBEdit;
    Label21: TLabel;
    DBEdit6: TDBEdit;
    Label22: TLabel;
    DBEdit7: TDBEdit;
    grpProduto: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DS: TOraDataSource;
    QryTemp: TOraQuery;
    QryClie: TOraQuery;
    OSQL: TOraSQL;
    Qr: TSmartQuery;
    QrID_ITEMPEDIVEND: TFloatField;
    QrID_MATEEMBA: TFloatField;
    QrNM_PRODMATEEMBA: TStringField;
    QrID_PRODMATEEMBA: TStringField;
    QrQN_PESOPADRITEMPEDIVEND: TFloatField;
    QrQN_TARAEMBA: TFloatField;
    QrVL_UNITITEMPEDIVEND: TFloatField;
    QrQN_EMBAITEMPEDIVEND: TFloatField;
    QrQN_PESOITEMPEDIVEND: TFloatField;
    QrQN_TARAITEMPEDIVEND: TFloatField;
    QrQN_CAIXCORTITEMPEDIVEND: TFloatField;
    QrQN_CAIXORIGITEMPEDIVEND: TFloatField;
    QrQN_CAIXACORT: TFloatField;
    QrVL_UNITBRUTITEMPEDIVEND: TFloatField;
    QrPC_DESCITEMPEDIVEND: TFloatField;
    QrID_PEDIVEND: TFloatField;
    QrID_CLIENTE: TFloatField;
    QrID_VENDEDOR: TFloatField;
    QrNM_VENDEDOR: TStringField;
    QrNM_CLIENTE: TStringField;
    QrNM_LOGRENDECLIE: TStringField;
    QrNR_LOGRENDECLIE: TStringField;
    QrGN_COMPENDECLIE: TStringField;
    QrNM_BAIRRO: TStringField;
    QrNM_CIDADE: TStringField;
    QrDT_PEDIVEND: TDateTimeField;
    QrDT_ENTRPEDIVEND: TDateTimeField;
    QrFL_CREDUSADPEDIVEND: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure grdadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SB_EDITClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure QrCBRBeforePost(DataSet: TDataSet);
    procedure LCamposClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    Function  Bot_Flat(Botao:Integer):string;
    procedure SB_ATUALClick(Sender: TObject);
    procedure SB_PRIMEIROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_ANTERIORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_PROXIMOMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_ULTIMOMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_NOVOMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_EXCLUIMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_EDITMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_ATUALMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_CONFIRMAMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_CANCELMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Sb_SairMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolBar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PageControl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BPesqProdutoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure edtCodiProdExit(Sender: TObject);
    procedure QrAfterOpen(DataSet: TDataSet);
    procedure QrAfterPost(DataSet: TDataSet);
    procedure edtProgramadoChange(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure edtCortadoChange(Sender: TObject);
    procedure edtCaixCortChange(Sender: TObject);
    Function AjusCredClie(pi_CodiClie: Integer; ps_TipoAjus: string; pr_ValoAjus: Real):Boolean;

  private
    { Private declarations }
  public
    VFINAL,Vdata,Vdtstr:STRING;
    SELPE,ui_CortInic,ui_CaixCort,ui_CodiMate:integer;
    VCodiMate:DOUBLE;
  end;

var
  FrmCorte: TFrmCorte;

implementation

uses Principal,Global, UFrmPesqMatEmba, UPesquiCliente, UFrmPesqVend,UFrmSeldata;

{$R *.dfm}

procedure TFrmCorte.FormCreate(Sender: TObject);
begin
  // QrCliente.Open;
 //  QrVENDEDOR.Open;
 //  QryCtPr.Open;
 //  QryCtPr.Last;

end;

procedure TFrmCorte.Sb_SairClick(Sender: TObject);
begin
   Qr.Close;
   Close;
//   QrVENDEDOR.Close;
//   FrmCTAReceber.Close;
end;

procedure TFrmCorte.SB_PRIMEIROClick(Sender: TObject);
begin
  Qr.First;
end;

procedure TFrmCorte.SB_ANTERIORClick(Sender: TObject);
begin
  Qr.Prior;
end;

procedure TFrmCorte.SB_PROXIMOClick(Sender: TObject);
begin
  Qr.Next;
end;

procedure TFrmCorte.SB_ULTIMOClick(Sender: TObject);
begin
  Qr.Last;
end;

procedure TFrmCorte.SB_NOVOClick(Sender: TObject);
begin
//  Qr.Append;
//  IF PageControl1.ActivePageIndex=0 then
//    DBGrid1.SetFocus
//  ELSE
//     DBNUMTITU.SetFocus;
     Atual_ToolBar(5);
end;

procedure TFrmCorte.SB_CONFIRMAClick(Sender: TObject);
var
  ls_QuerStat: String;
  li_Loop    : Integer;
  tabFoco    : TTabSheet;
 lr_DifeTara, lr_DifePeso, lr_DifeValo, lr_DifeDesc: Real;
begin
  if MessageDlg('Deseja registrar os cortes ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  begin
    Exit;
  end;

 try
  // Abrimos uma transação
   FrmPrincipal.DB.StartTransaction;

    // Se o cortador for maior que o definido
     if STRTOINT(edtCortado.TEXT) > STRTOINT(edtProgramado.TEXT) then
     begin
      if MessageDlg('Confirma o corte maior que o definido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
       begin
        Exit;
       end;
     end;

    // Loop para todos as linhas
     qr.First;
     while not qr.Eof do
      begin
        // Se o corte for maior que o pedido
        if qr.FieldByName('QN_CAIXACORT').AsInteger > qr.FieldByName('QN_EMBAITEMPEDIVEND').AsInteger then
        begin
          MessageDlg('O corte não pode ser superior ao pedido. O Valor será ajustado.', mtWarning, [mbOk], 0);

          // Ajustamos o valor
          qr.Edit;
          qr.FieldByName('QN_CAIXACORT').AsInteger := qr.FieldByName('QN_EMBAITEMPEDIVEND').AsInteger;
          qr.Post;
        end;

        // Se o a cortar for zero
        if qr.FieldByName('QN_CAIXACORT').AsInteger = 0 then
        begin
          qr.Next;
          Continue;
        end;

        // Calculamos as diferenças
        lr_DifeTara := qr.FieldByName('QN_CAIXACORT').AsInteger *
                       qr.FieldByName('QN_TARAEMBA').AsFloat;

        lr_DifePeso := qr.FieldByName('QN_CAIXACORT').AsInteger *
                       qr.FieldByName('QN_PESOPADRITEMPEDIVEND').AsFloat;

        lr_DifeValo := ROUND((lr_DifePeso * qr.FieldByName('VL_UNITITEMPEDIVEND').AsFloat));

        lr_DifeDesc := ROUND((lr_DifePeso *
                              qr.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsFloat) -
                            (lr_DifePeso * qr.FieldByName('VL_UNITITEMPEDIVEND').AsFloat));

        // Ajustamos o pedido
        QryTemp.Close;
        QryTemp.SQL.Clear;
        QryTemp.SQL.Text :=
          'UPDATE PEDIDO_VENDA                                               '+
          '   SET QN_EMBAPEDIVEND = QN_EMBAPEDIVEND - :DIFEEMBA,             '+
          '       QN_TARAPEDIVEND = QN_TARAPEDIVEND - :DIFETARA,             '+
          '       QN_PESOPEDIVEND = QN_PESOPEDIVEND - :DIFEPESO,             '+
          '       VL_PEDIVEND = VL_PEDIVEND - :DIFEVALO,                     '+
          '       VL_DESCPEDIVEND = VL_DESCPEDIVEND - :DIFEDESC              '+
          ' WHERE ID_PEDIVEND =  :ID_PEDIVEND                                ';

        qryTemp.ParamByName('DIFEEMBA').AsFloat      := qr.FieldByName('QN_CAIXACORT').AsFloat;
        qryTemp.ParamByName('DIFETARA').AsFloat      := lr_DifeTara;
        qryTemp.ParamByName('DIFEPESO').AsFloat      := lr_DifePeso;
        qryTemp.ParamByName('DIFEVALO').AsFloat      := lr_DifeValo;
        qryTemp.ParamByName('DIFEDESC').AsFloat      := lr_DifeDesc;
        qryTemp.ParamByName('ID_PEDIVEND').AsInteger := qr.FieldByName('ID_PEDIVEND').AsInteger;

        qryTemp.ExecSQL;

        // Ajustamos o crédito do cliente
        AjusCredClie(qr['ID_CLIENTE'],'D', lr_DifeValo);

        // Liberamos os campos para edição
        qr.FieldByName('QN_EMBAITEMPEDIVEND').ReadOnly := False;
        qr.FieldByName('QN_CAIXCORTITEMPEDIVEND').ReadOnly := False;

        // Registramos o corte
        qr.Edit;
        qr.FieldByName('QN_EMBAITEMPEDIVEND').AsInteger := qr.FieldByName('QN_EMBAITEMPEDIVEND').AsInteger -
                                                                qr.FieldByName('QN_CAIXACORT').AsInteger;

        // Ajustamos as caixas cortadas
        qr.FieldByName('QN_CAIXCORTITEMPEDIVEND').AsInteger := qr.FieldByName('QN_CAIXCORTITEMPEDIVEND').AsInteger +
                                                                    qr.FieldByName('QN_CAIXACORT').AsInteger;

        // Ajustamos o peso do item
        QR.FieldByName('QN_PESOITEMPEDIVEND').AsFloat := QR.FieldByName('QN_PESOITEMPEDIVEND').AsFloat -
                                                                lr_DifePeso;

        // Ajustamos a tara do item
        QR.FieldByName('QN_TARAITEMPEDIVEND').AsFloat := QR.FieldByName('QN_TARAITEMPEDIVEND').AsFloat -
                                                                lr_DifeTara;
        // Zeramos as caixas à cortar
        QR.FieldByName('QN_CAIXACORT').AsInteger := 0;
        QR.Post;

        // Próxima linha
        QR.Next;

      end;

      // Aplicamos as alterações
      QR.ApplyUpdates;
      QR.CommitUpdates;

      // Confirmamos a transação
      FrmPrincipal.DB.Commit;
    except
      // Se ocorreu algum erro durante a alteração dos dados
      if gb_ErroBanc then
      begin
        // Ajustamos a variável
        gb_ErroBanc := False;
      end;

      // Cancelamos a transação
      FrmPrincipal.DB.Rollback;

      // Bloqueamos os campos para edição
      QR.FieldByName('QN_EMBAITEMPEDIVEND').ReadOnly := True;
      QR.FieldByName('QN_CAIXCORTITEMPEDIVEND').ReadOnly := True;

      MessageDlg('Erro na transação ao efetuar o corte dos pedidos! Verifique.', mtWarning, [mbOk], 0);
      Exit;
    end;

  // Ajustamos a barra de ferramentas e as guias
//  AjustBarraFerra([bcNave, bcPesq, bcOrga, bcDive, bcSair]);
 // AjustGuias(RelacGuias('NavePadr'));

  // Limpamos os totais
  ui_CaixCort := 0;
  ui_CortInic := 0;
  edtCortado.TEXT := '0';

  // Bloqueamos os campos para edição
  QR.FieldByName('QN_EMBAITEMPEDIVEND').ReadOnly := True;
  QR.FieldByName('QN_CAIXCORTITEMPEDIVEND').ReadOnly := True;

  // Ativamos o botão calcular
  btnCalcular.Enabled := True;

  grDados.ReadOnly := True;

  // Atualizamos a query
  QR.Refresh;

 Atual_ToolBar(9);
 btnCalcular.Enabled := True;
end;

procedure TFrmCorte.SB_CANCELClick(Sender: TObject);
begin
 // Limpamos os totais
  ui_CaixCort := 0;
  ui_CortInic := 0;
  edtCortado.Text := '0';

  // Impedimos a edição dos dados
  grDados.ReadOnly := True;

  Qr.CancelUpdates;
  Atual_ToolBar(10);
  btnCalcular.Enabled := True;
end;

procedure TFrmCorte.SB_EXCLUIClick(Sender: TObject);
begin
   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    Begin
     Qr.Delete;
     Qr.ApplyUpdates;
     Qr.CommitUpdates;
     GrDados.Refresh;
    End;
end;

procedure TFrmCorte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmCorte:=nil;
  FrmPrincipal.VEN020.Enabled:= True;
  Action:=caFree;
end;


procedure TFrmCorte.Button1Click(Sender: TObject);
var
  Bitmap : TBitMap;
begin
//  Bitmap := TBitmap.Create;
//  try
//    with Bitmap do begin
//      LoadFromFile('tablogo[1].png');
//      Transparent := True;
//      TransParentColor := BitMap.Canvas.Brush.Color;
//      DBGRID1.Canvas.Draw(70,0,BitMap);
//      TransparentMode := tmAuto;
//    end;
//  finally
//    Bitmap.Free;
//  end;
end;



procedure TFrmCorte.grdadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//if Qr.FieldByName('RTIPO').AsString = 'B' then
//  DBGrid1.Canvas.Brush.Color := clgreen;
//if Qr.FieldByName('RTIPO').AsString = 'C' then
//  DBGrid1.Canvas.Brush.Color := clRED;
//  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;


procedure TFrmCorte.SB_EDITClick(Sender: TObject);
begin
  Qr.Edit;
  Atual_ToolBar(7);
end;

procedure TFrmCorte.RadioGroup1Click(Sender: TObject);
VAR
  Vsitu:integer;
begin
//  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//  Vsitu:=0;
//  QryCtPr.Close;
//  QryCtPr.SQL.Clear;
//  QryCtPr.SQL.Add('Select * from CA_TITUREC ');
//  case RadioGroup1.ItemIndex  of
//    0:Vsitu:=0;

//    1:
//     begin
//      QryCtPr.SQL.Add ('Where RTIPO='''+ 'Q' + '''');
//      Vsitu:=1;
//     end;
//    2:
//     begin
//      QryCtPr.SQL.Add ('Where RTIPO<>''' + 'Q' + '''');
//      Vsitu:=2;
//     end;
//  end;

//  QryCtPr.Open;
//  QryCtPr.ApplyUpdates;
//  Screen.Cursor := crDefault;

end;

procedure TFrmCorte.QrCBRBeforePost(DataSet: TDataSet);
begin
//  ShowMessage(DBEdit3.Field.CurValue);

//  QrCBRRSEQUENCI.Value:= strtoint(DBEdit3.Field.CurValue);

end;

procedure TFrmCorte.LCamposClick(Sender: TObject);
begin
 SELPE:=0;
  CASE LCAMPOS.ItemIndex OF
        5:SELPE:=5;
        7:SELPE:=7;
   18..19:SELPE:=18;
  END;
  IF SELPE>0 then
    BPESQ.Visible:=TRUE;
end;

procedure TFrmCorte.FormActivate(Sender: TObject);
begin
IF LCAMPOS.Items.Count=0 then
 BEGIN
  With LCampos.Items do
   begin
  add('Caixas Pedido');
  add('Caixas Cortadas');
  add('Código Cidade Entrega');
  add('Nome Cidade Entrega');
  add('Bairro');
  add('Código Cliente');
  add('Nome Cliente');
  add('Código Vendedor');
  add('Nome Vendedor');
  add('Código Região Comercial');
  add('Nome Região Comercial');
  add('Código Região Logística');
  add('Nome Região Logística');
  add('Código Subregião Logística');
  add('Nome Subregião Logística');
  add('Código Tipo Pedido Venda');
  add('Descrição Tipo Pedido Venda');
  add('Número Pedido Venda');
  add('Data Pedido Venda');
  add('Data Entrega Pedido Venda');
  add('Limite Crédito');
  add('Crédito Atual');
  add('Crédito Usado');
  add('Crédito Especial Usado');
  add('Preço Venda');

   end;
 END;
end;

procedure TFrmCorte.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmCorte.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmCorte.BtIncluirClick(Sender: TObject);
var
  Vre,Vlinha:String;
  Vcampos:integer;
begin
  If EdExpre.Text<>'' then
   Begin
     IF MResul.Lines.Count>0 then
       begin
         If RGeou.ItemIndex=0  then
          begin
            Vre:='And ';
          end
         Else
          begin
            Vlinha:= MResul.Lines.Strings[MResul.Lines.Count-1];
            MResul.Lines.Strings[MResul.Lines.Count-1]:= Copy(Vlinha,1,length(Vlinha)-1);
            Vre:='Or ';
          end;
       end;
     If  LCampos.itemindex=-1 then
         Vcampos:=0
     else
         Vcampos:=LCampos.itemindex;

     If RGeou.ItemIndex=0  then
        Vre:= Vre + '(' ;

   //Alterar nomes
    Case LCampos.itemindex of
          0:Vre:=Vre + 'Pedido_venda_item.QN_EMBAITEMPEDIVEND';
          1:Vre:=Vre + 'PEDIDO_VENDA_ITEM.QN_CAIXCORTITEMPEDIVEND';
          2:Vre:=Vre + 'Pedido_venda.ID_ENDECLIE_ENTREGA';
          3:Vre:=Vre + 'Cidade.NM_CIDADE';
          4:Vre:=Vre + 'Bairro.NM_BAIRRO';
          5:Vre:=Vre + 'Pedido_venda.ID_CLIENTE';
          6:Vre:=Vre + 'Cliente.NM_CLIENTE';
          7:Vre:=Vre + 'Pedido_venda.ID_VENDEDOR';
          8:Vre:=Vre + 'Vendedor.NM_VENDEDOR';
          9:Vre:=Vre + 'Cliente.ID_REGICOME';
         10:Vre:=Vre + 'Regiao_comercial.NM_REGICOME';
         11:Vre:=Vre + 'Cliente.ID_REGILOGI';
         12:Vre:=Vre + 'Logistica_regiao.NM_REGILOGI';
         13:Vre:=Vre + 'Cliente.ID_SUBRLOGI';
         14:Vre:=Vre + 'Logistica_subregiao.NM_SUBRLOGI';
         15:Vre:=Vre + 'Pedido_venda.ID_TIPOPEDIVEND';
         16:Vre:=Vre + 'Pedido_venda_tipo.NM_TIPOPEDIVEND';
         17:Vre:=Vre + 'Pedido_venda.ID_PEDIVEND';
         18:Vre:=Vre + 'TRUNC(Pedido_venda.DT_PEDIVEND)';
         19:Vre:=Vre + 'TRUNC(Pedido_venda.DT_ENTRPEDIVEND)';
         20:Vre:=Vre + 'Cliente.VL_LIMICREDCLIE';
         21:Vre:=Vre + 'Cliente.VL_CREDATUACLIE';
         22:Vre:=Vre + 'Cliente.VL_CREDUSADCLIE';
         23:Vre:=Vre + 'Cliente.VL_CREDESPEUSADCLIE';
         24:Vre:=Vre + 'Pedido_venda_item.VL_UNITITEMPEDIVEND';
     end;

    Case CBCond.ItemIndex of
       0: Vre:=Vre + ' =  ';
       1: Vre:=Vre + ' <> ';
       2: Vre:=Vre + ' >  ';
       3: Vre:=Vre + ' >= ';
       4: Vre:=Vre + ' <  ';
       5: Vre:=Vre + ' <= ';
    end;

    Case LCampos.itemindex of
         3..4:Vre:=Vre + '''';
         6:Vre:=Vre + '''';
         8:Vre:=Vre + '''';
        10:Vre:=Vre + '''';
        12:Vre:=Vre + '''';
        14:Vre:=Vre + '''';
        16:Vre:=Vre + '''';
    18..19:Vre:=Vre + 'TO_DATE(''';
    end;

    Vre:=Vre + Edexpre.text;

    Case LCampos.itemindex of
      3..4:Vre:=Vre + '''';
         6:Vre:=Vre + '''';
         8:Vre:=Vre + '''';
        10:Vre:=Vre + '''';
        12:Vre:=Vre + '''';
        14:Vre:=Vre + '''';
        16:Vre:=Vre + '''';
    18..19:Vre:=Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';

    end;

    Vre:=Vre+')';

    MResul.Lines.Add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;

end;

procedure TFrmCorte.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin
   // Forçamos o Exit do componente anterior
  ActiveControl := Nil;

  // Verificamos se os dados fixos foram preenchidos
  if  edtCodiProd.Text = '' then
  begin
    MessageDlg('O campo Produto deve ser preenchido !', mtWarning, [mbOk], 0);
    edtCodiProd.SetFocus;
    Exit;
  end;

   Screen.Cursor := crSQLWait;
   Qr.Close;
   WITH Qr.SQL DO
    BEGIN
     Clear;
     Text :=       '  SELECT PEDIDO_VENDA_ITEM.ID_ITEMPEDIVEND,                    '+
                   '         PEDIDO_VENDA_ITEM.ID_MATEEMBA,                        '+
                   '         MATERIAL_EMBALAGEM.NM_PRODMATEEMBA,                   '+
                   '         MATERIAL_EMBALAGEM.ID_PRODMATEEMBA,                   '+
                   '         EMBALAGEM.QN_TARAEMBA,                                '+
                   '         DECODE(NVL(QN_CAPAPADRMATEEMBA, 0), 0, QN_CAPAMEDIMATEEMBA,                       '+
                   '                                             QN_CAPAPADRMATEEMBA) QN_PESOPADRITEMPEDIVEND, '+
                   '         PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND,                '+
                   '         PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND,                '+
                   '         PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND,                '+
                   '         PEDIDO_VENDA_ITEM.QN_TARAITEMPEDIVEND,                '+
                   '         PEDIDO_VENDA_ITEM.QN_CAIXCORTITEMPEDIVEND,            '+
                   '         ( PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND +             '+
                   '           NVL(PEDIDO_VENDA_ITEM.QN_CAIXCORTITEMPEDIVEND, 0) ) '+
                   '           QN_CAIXORIGITEMPEDIVEND,                            '+
                   '         0 QN_CAIXACORT,                                       '+
                   '         PEDIDO_VENDA_ITEM.VL_UNITBRUTITEMPEDIVEND,            '+
                   '         PEDIDO_VENDA_ITEM.PC_DESCITEMPEDIVEND,                '+
                   '         PEDIDO_VENDA.ID_PEDIVEND,                             '+
                   '         PEDIDO_VENDA.ID_CLIENTE,                              '+
                   '         VENDEDOR.ID_VENDEDOR,                                 '+
                   '         VENDEDOR.NM_VENDEDOR,                                 '+
                   '         CLIENTE.NM_CLIENTE,                                   '+
                   '         CLIENTE_ENDERECO.NM_LOGRENDECLIE,                     '+
                   '         CLIENTE_ENDERECO.NR_LOGRENDECLIE,                     '+
                   '         CLIENTE_ENDERECO.GN_COMPENDECLIE,                     '+
                   '         BAIRRO.NM_BAIRRO,                                     '+
                   '         CIDADE.NM_CIDADE,                                     '+
                   '         PEDIDO_VENDA.DT_PEDIVEND,                             '+
                   '         PEDIDO_VENDA.DT_ENTRPEDIVEND,                         '+
                   '         PEDIDO_VENDA.FL_CREDUSADPEDIVEND                      '+
                   '    FROM BAIRRO,                                               '+
                   '         CIDADE,                                               '+
                   '         CLIENTE,                                              '+
                   '         CLIENTE_ENDERECO,                                     '+
                   '         LOGISTICA_REGIAO,                                     '+
                   '         LOGISTICA_SUBREGIAO,                                  '+
                   '         MATERIAL,                                             '+
                   '         EMBALAGEM,                                            '+
                   '         MATERIAL_EMBALAGEM,                                   '+
                   '         PEDIDO_VENDA,                                         '+
                   '         PEDIDO_VENDA_ITEM,                                    '+
                   '         PEDIDO_VENDA_TIPO,                                    '+
                   '         REGIAO_COMERCIAL,                                     '+
                   '         VENDEDOR,                                             '+
                   '         LOGRADOURO_TIPO LOGRADOURO_TIPO_V,                    '+
                   '         LOGRADOURO_TIPO LOGRADOURO_TIPO_CE,                   '+
                   '         LOGRADOURO_TIPO LOGRADOURO_TIPO_C                     '+
                   '   WHERE ( PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND ) and            '+
                   '         ( PEDIDO_VENDA.FILIAL = ' + inttoStr( gi_filial ) +' )       and            '+
                   '         ( PEDIDO_VENDA_ITEM.ID_MATEEMBA = MATERIAL_EMBALAGEM.ID_MATEEMBA ) and      '+
                   '         ( MATERIAL_EMBALAGEM.ID_MATERIAL = MATERIAL.ID_MATERIAL ) and               '+
                   '         ( MATERIAL_EMBALAGEM.ID_EMBALAGEM = EMBALAGEM.ID_EMBALAGEM ) and            '+
                   '         ( PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE ) and                        '+
                   '         ( PEDIDO_VENDA.ID_ENDECLIE_ENTREGA = CLIENTE_ENDERECO.ID_ENDECLIE ) and     '+
                   '         ( CLIENTE_ENDERECO.ID_BAIRRO = BAIRRO.ID_BAIRRO ) and                       '+
                   '         ( BAIRRO.ID_CIDADE = CIDADE.ID_CIDADE ) and                                 '+
                   '         ( PEDIDO_VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR ) and                     '+
                   '         ( PEDIDO_VENDA.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND ) and    '+
                   '         ( CLIENTE.ID_REGICOME = REGIAO_COMERCIAL.ID_REGICOME ) and                  '+
                   '         ( CLIENTE.ID_REGILOGI = LOGISTICA_REGIAO.ID_REGILOGI ) and                  '+
                   '         ( CLIENTE.ID_SUBRLOGI = LOGISTICA_SUBREGIAO.ID_SUBRLOGI ) and               '+
                   '         ( LOGRADOURO_TIPO_V.ID_TIPOLOGR = VENDEDOR.ID_TIPOLOGR ) and                '+
                   '         ( LOGRADOURO_TIPO_CE.ID_TIPOLOGR = CLIENTE_ENDERECO.ID_TIPOLOGR ) and      '+
                   '         ( LOGRADOURO_TIPO_C.ID_TIPOLOGR = CLIENTE.ID_TIPOLOGR ) and              '+
                   '         ( ( PEDIDO_VENDA.FL_STATPEDIVEND = ''AB'' ) )  and                     '+
                   '          PEDIDO_VENDA.EMPRESA= ''' + gs_Empresa + ''' AND                    '+
                   '          PEDIDO_VENDA.FILIAL=  ' + IntToStr(GI_FILIAL) + ' and              '+
                   '          PEDIDO_VENDA_TIPO.fl_consfinatipopedivend = ''S'' AND             '+
                   '          PEDIDO_VENDA.ID_CLIENTE <> 18 AND                                '+
                   '          PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND > 1    AND                '+
                   '         (Pedido_venda_item.ID_MATEEMBA = ' +  FLOATToStr(VCodiMate) + ')';
    end;
      XTM:=MResul.Lines.Count;
      If XTM >0 then
        begin
         Qr.SQL.Add(' And ');
         Qr.SQL.Add(MResul.Text);
        end
       ELSE
        begin
         Screen.Cursor := crDefault;
         If MessageDlg('Exibir listagem somente com o Produto?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
            exit
         Else
            Screen.Cursor := crSQLWait;
        end;
      Qr.SQL.Add('ORDER BY PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND,PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND desc');
      Qr.Open;
   //   Qr.Refresh;

   PageControl1.Pages[1].Show;
   Screen.Cursor := crDefault;
   PageControl1.Pages[1].TabVisible := True;
   PageControl1.Pages[2].TabVisible := True;
   EdNomeProd.Text := edtNomeProd.Text;
   edtPercCort.Text := '0';
   edtCaixCort.Text := '0';
   Atual_ToolBar(9);
end;

procedure TFrmCorte.FormDestroy(Sender: TObject);
begin
  FrmCorte:=Nil;
end;

Function  TFrmCorte.Bot_Flat(Botao:Integer):string;
begin
 SB_PROXIMO.Flat  := True;
 SB_ANTERIOR.Flat := True;
 SB_ULTIMO.Flat   := True;
 SB_PRIMEIRO.Flat := True;
 SB_NOVO.Flat     := True;
 SB_EXCLUI.Flat   := True;
 SB_EDIT.Flat     := True;
 SB_ATUAL.Flat    := True;
 SB_CONFIRMA.Flat := True;
 SB_CANCEL.Flat   := True;
// SB_PRINT.Flat    := True;
 Sb_Sair.Flat     := True;
 If Botao=1  then SB_PRIMEIRO.Flat := False;
 If Botao=2  then SB_ANTERIOR.Flat := False;
 If Botao=3  then SB_PROXIMO.Flat  := False;
 If Botao=4  then SB_ULTIMO.Flat   := False;
 If Botao=5  then SB_NOVO.Flat     := False;
 If Botao=6  then SB_EXCLUI.Flat   := False;
 If Botao=7  then SB_EDIT.Flat     := False;
 If Botao=8  then SB_ATUAL.Flat    := False;
 If Botao=9  then SB_CONFIRMA.Flat := False;
 If Botao=10 then SB_CANCEL.Flat   := False;
 If Botao=11 then Sb_Sair.Flat     := False;
// If Botao=12 then SB_PRINT.Flat    := False;
end;

Function TFrmCorte.Atual_ToolBar(BtOrdem: Integer): string;
begin
 CASE BtOrdem of
   5,7:begin
    SB_NOVO.Enabled := False;
    SB_EDIT.Enabled := False;
    SB_ATUAL.Enabled := False;
    SB_EXCLUI.Enabled := False;
    SB_CONFIRMA.Enabled := TRUE;
    SB_CANCEL.Enabled := TRUE;
    SB_PRIMEIRO.Enabled := False;
    SB_ANTERIOR.Enabled := False;
    SB_PROXIMO.Enabled := False;
    SB_ULTIMO.Enabled := False;
 //   SB_PRINT.Enabled := False;
   end;
   9..11:begin
    SB_NOVO.Enabled := True;
    SB_EDIT.Enabled := True;
    SB_ATUAL.Enabled := True;
    SB_EXCLUI.Enabled := True;
    SB_CONFIRMA.Enabled := FALSE;
    SB_CANCEL.Enabled := FALSE;
    SB_PRIMEIRO.Enabled := True;
    SB_ANTERIOR.Enabled := True;
    SB_PROXIMO.Enabled := True;
    SB_ULTIMO.Enabled := True;
//    SB_PRINT.Enabled := True;
   end;
 end;
end;

procedure TFrmCorte.SB_ATUALClick(Sender: TObject);
begin
  Qr.Refresh;
end;

procedure TFrmCorte.SB_PRIMEIROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 Bot_Flat(1);
end;

procedure TFrmCorte.SB_ANTERIORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(2);
end;

procedure TFrmCorte.SB_PROXIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(3);
end;

procedure TFrmCorte.SB_ULTIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(4);
end;

procedure TFrmCorte.SB_NOVOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(5);
end;

procedure TFrmCorte.SB_EXCLUIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(6);
end;

procedure TFrmCorte.SB_EDITMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(7);
end;

procedure TFrmCorte.SB_ATUALMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(8);
end;

procedure TFrmCorte.SB_CONFIRMAMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(9);
end;

procedure TFrmCorte.SB_CANCELMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(10);
end;

procedure TFrmCorte.Sb_SairMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(11);
end;

procedure TFrmCorte.ToolButton3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmCorte.ToolBar1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmCorte.ToolButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmCorte.ToolButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmCorte.PageControl1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmCorte.BPesqProdutoClick(Sender: TObject);
begin
 FrmOriPesq:= 5;
 FrmPesqMatEmba:=TFrmPesqMatEmba.Create(Self);
 FrmPesqMatEmba.ShowModal;
end;

procedure TFrmCorte.FormShow(Sender: TObject);
begin
 edtProgramado.Text := '0';
 edtCortado.Text := '0';
 EdtPedido.Text := '0';
 EdtDiferenca.Text := '0';

 PageControl1.Pages[1].TabVisible:=false;
 PageControl1.Pages[2].TabVisible:=false;
end;

procedure TFrmCorte.btnCalcularClick(Sender: TObject);
var
  li_Corte, li_CaixCort: Integer;
begin
  // Forçamos o Exit do componente anterior
  ActiveControl := Nil;

  // Zeramos o total de corte
  ui_CaixCort := 0;
  li_CaixCort := 0;

  // Se houver o que calcular
  if (StrToInt(edtPercCort.Text) > 0) or (StrToInt(edtCaixCort.Text) > 0) then
  begin

    // Posicionamos no primeiro registro e iniciamos o loop p/ todas as linhas
    qr.First;
    while not qr.Eof do
    begin

      // Se o corte for por percentual
      if StrToInt(edtPercCort.Text) > 0 then
      begin
        // Calculamos o corte
        li_Corte := Trunc((((qr.FieldByName('QN_EMBAITEMPEDIVEND').AsInteger * StrToInt(edtPercCort.Text)) / 100)));
      end
      // Se não for percentual
      else
      begin
        // O corte será todo o possível para o registro
        li_Corte :=  qr.FieldByName('QN_EMBAITEMPEDIVEND').AsInteger;
      end;

      // Se houver limite de corte
      if (StrToInt(edtCaixCort.Text) > 0) then
      begin
        // Se o corte for maior ou igual ao que falta cortar
        if li_CaixCort + li_Corte >= StrToInt(edtCaixCort.Text) then
        begin
          li_Corte := Trunc(StrToInt(edtCaixCort.Text)) - li_CaixCort;
          li_CaixCort := Trunc(StrToInt(edtCaixCort.Text));
        end
        // Se o corte for menor que o que falta cortar
        else
        begin
          li_CaixCort := li_CaixCort + li_Corte;
        end;
      end
      // Se nao houver limite de corte
      else
      begin
        li_CaixCort := li_CaixCort + li_Corte;
      end;

      // Ajustamos o registro
      qr.Edit;
      qr.FieldByName('QN_CAIXACORT').AsInteger := li_Corte;
      qr.Post;

      // Se houver limite de corte e este já foi atingido
      if (StrToInt(edtCaixCort.Text) > 0) then
      begin
        if li_CaixCort = Trunc(StrToInt(edtCaixCort.Text)) then
          break;
      end;

      // Próxima linha
      qr.Next;

    end;

    // Voltamos ao primeiro registro
    qr.First;

  end;

  // Registramos o corte inicial
  ui_CortInic := li_CaixCort;

  // Ajustamos o display
  edtCortado.Text:= iNTtOSTR(li_CaixCort);

  // Desativamos o botão de calcular
  btnCalcular.Enabled := False;

  // Ajustamos a barra de ferramentas
  Atual_ToolBar(7);

  // Liberamos a edição dos dados
  grDados.ReadOnly := False;

end;

procedure TFrmCorte.edtCodiProdExit(Sender: TObject);
begin

  // Se o código estiver vazio
  if edtCodiProd.Text = '' then
  begin
    // Limpamos os campos demonstrativos
    edtNomeProd.Text := '';

    Exit;
  end;

  // Procuramos o código
  qryTemp.Close ;
  qryTemp.sql.Clear;
  qryTemp.SQL.Text :=
  'SELECT Material_embalagem.ID_PRODMATEEMBA,                                '+
  '       Material_embalagem.ID_MATEEMBA,                                    '+
  '       Material_embalagem.NM_PRODMATEEMBA,                                '+
  '       Material_embalagem.FL_ATIVMATEEMBA                                 '+
  '  FROM MATERIAL_EMBALAGEM Material_embalagem                              '+
  ' WHERE (Material_embalagem.ID_PRODMATEEMBA = ''' + edtCodiProd.Text + ''')';

  qryTemp.Open;

  // Se não encontramos o código
  if qryTemp.IsEmpty  then
  begin
    MessageDlg('Código não encontrado !', mtWarning, [mbOk], 0);
    edtCodiProd.SetFocus;
    qryTemp.Close;
    Exit;
  end;

  // Ajustamos os campos
  edtCodiProd.Text := qryTemp.FieldByName('ID_PRODMATEEMBA').AsString;
  edtNomeProd.Text := qryTemp.FieldByName('NM_PRODMATEEMBA').AsString;

  // Ajustamos a variável
  VCodiMate := qryTemp.FieldByName('ID_MATEEMBA').AsInteger;

  qryTemp.Close;

end;

procedure TFrmCorte.QrAfterOpen(DataSet: TDataSet);
begin
  // Geramos o total do Pedido
  qr.DisableControls;
  qr.First;
  edtPedido.Text := '0';
  while not qr.Eof do
  begin
    edtPedido.Text := IntToStr(StrToInt(edtPedido.Text) + qr.FieldByName('QN_EMBAITEMPEDIVEND').AsInteger);
    qr.Next;
  end;
  qr.First;
  qr.EnableControls;
end;

procedure TFrmCorte.QrAfterPost(DataSet: TDataSet);
begin
//  ui_CaixCort := ui_CaixCort - (ui_CaixAnte - qr.FieldByName('QN_CAIXACORT').AsInteger);
  edtCortado.Text := IntToStr(ui_CaixCort);

end;

procedure TFrmCorte.edtProgramadoChange(Sender: TObject);
begin
 If edtCortado.Text='' then
    edtCortado.Text:= '0';
 If edtProgramado.Text='' then
    edtProgramado.Text:= '0';
 edtDiferenca.Text := IntToStr(StrToInt(edtCortado.Text) - StrToInt(edtProgramado.Text));
end;

procedure TFrmCorte.BPESQClick(Sender: TObject);
begin
   XRPM:=2;
   FrmOriPesq:=10;
   CASE SELPE OF
     5:BEGIN
        FrmPesqCliente:=TFrmPesqCliente.Create(Self);
        FrmPesqCliente.ShowModal;
       END;
     7:BEGIN
        FrmPesqVend:=TFrmPesqVend.Create(Self);
        FrmPesqVend.ShowModal;
       END;
    18:BEGIN
        Cria_FrmSelData(Vdtstr);
        EdExpre.text:= Vdtstr;
        BtIncluir.SetFocus;
       END;

   end;
   BPESQ.Visible:=FALSE;

end;

procedure TFrmCorte.edtCortadoChange(Sender: TObject);
begin
  If edtProgramado.Text='' then
     edtProgramado.Text:='0';
  If edtCortado.Text='' then
     edtCortado.Text:= '0';
  edtDiferenca.Text := IntToStr(StrToInt(edtCortado.Text) - StrToInt(edtProgramado.Text));
end;

procedure TFrmCorte.edtCaixCortChange(Sender: TObject);
begin
//  edtCaixas.Text   := edtCaixCort.Text;
  edtProgramado.Text := edtCaixCort.Text;
end;

Function TFrmCorte.AjusCredClie(pi_CodiClie: Integer; ps_TipoAjus: string; pr_ValoAjus: Real):Boolean;
BEGIN
 qryClie.Close;
 qryClie.SQL.Clear;
 qryClie.SQL.Text :=
    'SELECT Cliente.VL_LIMICREDCLIE,                                      '+
    '       Cliente.VL_CREDATUACLIE,                                      '+
    '       Cliente.VL_CREDUSADCLIE,                                      '+
    '       Cliente.VL_CREDESPECLIE,                                      '+
    '       Cliente.VL_CREDESPEUSADCLIE,                                  '+
    '       Cliente.FL_TIPOBLOQCLIE,                                      '+
    '       Cliente.QN_TITUVENCCLIE,                                      '+
    '       Cliente.VL_TITUVENCCLIE                                       '+
    '  FROM CLIENTE Cliente                                               '+
    ' WHERE (Cliente.ID_CLIENTE = ' + IntToStr(pi_CodiClie) + ')';

 qryClie.Open;

  // Se o pedido utilizou controle de crédito
 If Qr.FieldByName('FL_CREDUSADPEDIVEND').AsString = 'S' then
   begin
     // Se o cliente tiver bloqueio por crédito
     if (qryClie.FieldByName('FL_TIPOBLOQCLIE').AsString = 'CI') or
        (qryClie.FieldByName('FL_TIPOBLOQCLIE').AsString = 'AB') then
      begin
        // Se estivermos na matriz
        if gi_Filial = 1 then
          begin
           OSQL.SQL.Clear;
           OSQL.SQL.Text :=
            ' UPDATE CLIENTE                                                                                    '+
            '   SET VL_CREDUSADCLIE = VL_CREDUSADCLIE - ' + ReplaceStr(FloatToStr(pr_ValoAjus), ',', '.') + ','+
            '       VL_CREDATUACLIE = VL_CREDATUACLIE + ' + ReplaceStr(FloatToStr(pr_ValoAjus), ',', '.')      +
            ' WHERE (ID_CLIENTE = ' + IntToStr(pi_CodiClie)                                      + ')';
          end
        // Se estivermos em alguma filial
        else
          begin
           OSQL.SQL.Clear;
           OSQL.SQL.Text :=
             'UPDATE LNK_CLIENTE                                                                                '+
             '   SET VL_CREDUSADCLIE = VL_CREDUSADCLIE - ' + ReplaceStr(FloatToStr(pr_ValoAjus), ',', '.') + ','+
             '       VL_CREDATUACLIE = VL_CREDATUACLIE + ' + ReplaceStr(FloatToStr(pr_ValoAjus), ',', '.')      +
             ' WHERE (ID_CLIENTE = ' + IntToStr(pi_CodiClie)                                      + ')';
          end;
      OSQL.Execute;
      end;
   end;
END;

end.

