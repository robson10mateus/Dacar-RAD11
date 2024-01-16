unit UfrmControleCaixas;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, Mask, ExtCtrls, Grids,
  DBGrids, ComCtrls, Buttons, DBCtrls, Vcl.ToolWin, Winapi.Windows, OraSmart;

type
  TPageControl = class(ComCtrls.TPageControl)
  protected
    function DoMouseWheel(Shift: TShiftState; WheelDelta: Integer;
      const MousePos: TPoint): Boolean; Virtual;
  end;

type
  TFrmControleCaixas = class(TForm)
    PageControl1: TPageControl;
    Tab_Criterio: TTabSheet;
    LCampos: TListBox;
    Label6: TLabel;
    CBCond: TComboBox;
    RGeou: TRadioGroup;
    EdExpre: TEdit;
    Label7: TLabel;
    MResul: TMemo;
    BtIncluir: TBitBtn;
    BtLimpar: TBitBtn;
    BtAtivar: TBitBtn;
    BPESQ: TBitBtn;
    Tab_Lista: TTabSheet;
    ToolBar1: TToolBar;
    DBGrid1: TDBGrid;
    Tab_Detalhe: TTabSheet;
    Ds: TOraDataSource;
    SB_PRIMEIRO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SBNovo: TSpeedButton;
    SBDel: TSpeedButton;
    SB_Editar: TSpeedButton;
    SBSalva: TSpeedButton;
    SBCancel: TSpeedButton;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    edt_Pedido: TDBEdit;
    Edt_DtEntrega: TDBEdit;
    btn_DtEntrega: TBitBtn;
    Label5: TLabel;
    edtCodiClie: TDBEdit;
    edt_nmCliente: TDBEdit;
    BtpesqCli: TBitBtn;
    Label9: TLabel;
    edt_CodVend: TDBEdit;
    BtnVendedor: TBitBtn;
    Label11: TLabel;
    edt_nmVendedor: TDBEdit;
    Edt_QtdE: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    edt_QtdD: TDBEdit;
    Label14: TLabel;
    Edt_Obs: TDBEdit;
    Edt_DtDevolucao: TDBEdit;
    BtnDtDevolucao: TBitBtn;
    Label15: TLabel;
    Qr_Direitos: TOraQuery;
    Qr_DireitosID_RECURSO: TFloatField;
    chk_Impresso: TDBCheckBox;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label16: TLabel;
    DBEdit4: TDBEdit;
    SB_Imprime: TSpeedButton;
    Label1: TLabel;
    Edt_ObsDev: TDBEdit;
    Label17: TLabel;
    DBEdit5: TDBEdit;
    SB_CancelaVale: TSpeedButton;
    SQL_AtualizaValeAnt: TOraSQL;
    Qr_Saldo: TOraQuery;
    Qr_SaldoID_CLIENTE: TFloatField;
    Qr_SaldoSALDO: TFloatField;
    SB_Reabrir: TSpeedButton;
    Qr_SaldoID_VALE: TFloatField;
    lblPlacaVeiculo: TLabel;
    edtPlacaVeiculo: TDBEdit;
    btnPlacaVeiculo: TBitBtn;
    lblMotorista: TLabel;
    edtCodMotorista: TDBEdit;
    btnPesqMotorista: TBitBtn;
    edtNomeMotorista: TDBEdit;
    pnlImpHistorico: TPanel;
    SB_Historico: TSpeedButton;
    rgpTotalHistorico: TRadioGroup;
    qryTemp: TOraQuery;
    edt_nmTransp: TDBEdit;
    Sb_Sair: TSpeedButton;
    Qr: TSmartQuery;
    QrEMPRESA: TStringField;
    QrFILIAL: TIntegerField;
    QrID_VALE: TFloatField;
    QrID_CLIENTE: TFloatField;
    QrID_VENDEDOR: TFloatField;
    QrDATA_ENTREGA: TDateTimeField;
    QrID_PEDIDO: TFloatField;
    QrSALDO_ANTERIOR: TFloatField;
    QrQTD_ENTREGUE: TFloatField;
    QrQTD_DEVOLVIDA: TFloatField;
    QrDATA_DEVOLUCAO: TDateTimeField;
    QrFL_IMPRESSO: TStringField;
    QrOBS: TStringField;
    QrNM_CLIENTE: TStringField;
    QrNM_VENDEDOR: TStringField;
    QrID_USUARIO: TFloatField;
    QrNOME_USUARIO: TStringField;
    QrSALDO: TFloatField;
    QrID_USUARIO_DEV: TFloatField;
    QrOBS_DEV: TStringField;
    QrFL_STATUS: TStringField;
    QrUSUARIO_DEV: TStringField;
    QrID_MOTORISTA: TIntegerField;
    QrNM_MOTOTRAN: TStringField;
    QrNO_PLACAVEICULO: TStringField;
    QrUSUARIO_ENTR: TStringField;
    QrUSUARIO_DEVOL: TStringField;
    QrCLIENTE_REL: TStringField;
    QrID_TRANSPORTADOR: TFloatField;
    QrNM_FORNECEDOR: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sb_SairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btn_DtEntregaClick(Sender: TObject);
    procedure BtpesqCliClick(Sender: TObject);
    procedure BtnVendedorClick(Sender: TObject);
    procedure BtnDtDevolucaoClick(Sender: TObject);
    procedure SBNovoClick(Sender: TObject);
    procedure SB_EditarClick(Sender: TObject);
    procedure SBDelClick(Sender: TObject);
    procedure SBSalvaClick(Sender: TObject);
    procedure SBCancelClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DsStateChange(Sender: TObject);
    procedure CRTemp_QrAfterCancel(DataSet: TDataSet);
    procedure CRTemp_QrAfterScroll(DataSet: TDataSet);
    procedure CRTemp_QrBeforePost(DataSet: TDataSet);
    procedure SB_ImprimeClick(Sender: TObject);
    procedure CRTemp_QrBeforeOpen(DataSet: TDataSet);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SB_CancelaValeClick(Sender: TObject);
    procedure SB_ReabrirClick(Sender: TObject);
    procedure SB_HistoricoClick(Sender: TObject);
    procedure btnPlacaVeiculoClick(Sender: TObject);
    procedure btnPesqMotoristaClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Tab_DetalheShow(Sender: TObject);
    procedure edtCodMotoristaExit(Sender: TObject);
  private
    { Private declarations }
    SELPE : integer;
    OrdemColuna , Ordem : String;
    SomenteConsulta, Atualiza_ValeAnt : boolean;
    procedure AtualizaBotoes ();
    procedure DesabilitaCampos();

  public
    { Public declarations }
  end;

var
  FrmControleCaixas: TFrmControleCaixas;

implementation

uses Global, Principal, UPesquiCliente, UFrmPesqVend, UFrmSeldata, UFrmRelValeCaixa, UFrmPesCaminhao,
  UFrmRelHistCaixas, uFrmPesqMotorista, UFrmPesqGrupoClie;

{$R *.dfm}

function TPageControl.DoMouseWheel(Shift: TShiftState; WheelDelta: Integer; const MousePos: TPoint): Boolean;
begin
  Result := true;
end;

procedure TFrmControleCaixas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.VEN054.Enabled := True;
  Action := Cafree;

end;

procedure TFrmControleCaixas.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmControleCaixas.FormShow(Sender: TObject);
begin
  Qr_Direitos.Close;
  Qr_Direitos.ParamByName('ID_Usuario').Value := IntToStr( gi_IdenUsua );
  Qr_Direitos.Open;

  Atualiza_ValeAnt := False;

  if( Qr_DireitosID_RECURSO.AsInteger = 4  ) then
   SomenteConsulta := true
  else
   SomenteConsulta := false;

  IF LCAMPOS.Items.Count=0 then
  BEGIN
    With LCampos.Items do
    begin
      Add('Cód. Cliente          ');//0
      Add('Cód. Vendedor         ');//1
      Add('Nº Pedido             ');//2
      Add('Nº Vale Caixa         ');//3
      Add('Data de Entrega       ');//4
      Add('Data de Devolução     ');//5
      Add('Placa Veículo         ');//6
      Add('Status Vale (AB,FE,CN)');//7
      Add('Vale Impresso (S/N)   ');//8
      Add('Observação            ');//9
      Add('Grupo de Clientes     ');//10
      Add('Qtd. Devolvida        ');//11

    end;
  END;
  PageControl1.Pages[1].TabVisible:=false;
  PageControl1.Pages[2].TabVisible:=false;

  PageControl1.ActivePage :=  Tab_Criterio ;
end;

procedure TFrmControleCaixas.BtIncluirClick(Sender: TObject);
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
        Vre:='AND ';
      end
      Else
      begin
        Vlinha:= MResul.Lines.Strings[MResul.Lines.Count-1];
        MResul.Lines.Strings[MResul.Lines.Count-1]:= Copy(Vlinha,1,length(Vlinha)-1);
         Vre:='OR ';
      end;
    end;

    If  LCampos.itemindex=-1 then
      Vcampos:=0
    else
      Vcampos:=LCampos.itemindex;

    If RGeou.ItemIndex=0  then
      Vre:= Vre + '( ' ;

    //Alterar nomes
    Case LCampos.itemindex of
      0:Vre:=Vre + 'VC.ID_CLIENTE';
      1:Vre:=Vre + 'VC.ID_VENDEDOR';
      2:Vre:=Vre + 'VC.ID_PEDIDO';
      3:Vre:=Vre + 'VC.ID_VALE';
      4:Vre:=Vre + 'TRUNC(VC.DATA_ENTREGA)';
      5:Vre:=Vre + 'TRUNC(VC.DATA_DEVOLUCAO)';
      6:Vre:=Vre + 'VC.NO_PLACAVEICULO';
      7:Vre:=Vre + 'VC.FL_STATUS';
      8:Vre:=Vre + 'NVL(VC.FL_IMPRESSO,''N'')';
      9:Vre:=Vre + 'UPPER(VC.OBS)';
     10:Vre:=Vre + 'C.ID_GRUPCLIE';
     11:Vre:=Vre + 'VC.QTD_DEVOLVIDA';
    end;

    Case CBCond.ItemIndex of
      0: Vre:=Vre + ' = ';
      1: Vre:=Vre + ' <> ';
      2: Vre:=Vre + ' > ';
      3: Vre:=Vre + ' >= ';
      4: Vre:=Vre + ' < ';
      5: Vre:=Vre + ' <= ';
      6: Vre:=Vre + ' LIKE ';
    end;

    Case LCampos.itemindex of
      4,5 : Vre:=Vre + 'TO_DATE(''';
    end;

    // Campo String
    If CBCond.ItemIndex = 6 then
    begin
      Case LCampos.itemindex of
        6..9 : Vre:=Vre +'''%'+ UpperCase(Edexpre.text);
      else
        Vre:=Vre + UpperCase(Edexpre.text);
      end;
    end
    else
    begin
      Case LCampos.itemindex of
        6..9 : Vre:=Vre +''''+ UpperCase(EdExpre.Text);
      else
        Vre:=Vre + UpperCase(EdExpre.Text);
      end;
    end;

    Case LCampos.itemindex of
      4,5 : Vre:= Vre + '''' + ',' + '''DD/MM/YYYY''' +')';
    end;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

    // Campo String
    Case LCampos.itemindex of
      6..9 : Vre:=Vre+'''';
    end;

    Vre:=Vre+' )';

    MResul.Lines.Add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;
  end;

  BtAtivar.SetFocus;
end;

procedure TFrmControleCaixas.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmControleCaixas.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
begin
  Qr.DisableControls;
  Qr.Close;
  Qr.MacroByName('Macro').Value := '';

  XTM:=MResul.Lines.Count;
  If XTM >0 then
  begin
    Qr.MacroByName('Macro').Value :=  ' Where ' + MResul.Text ;
  end;

  Qr.Open;
  Qr.EnableControls;
  PageControl1.Pages[1].TabVisible := true;
  PageControl1.Pages[2].TabVisible := True;
  PageControl1.Pages[1].Show;
  AtualizaBotoes;
end;

procedure TFrmControleCaixas.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true
end;

procedure TFrmControleCaixas.LCamposClick(Sender: TObject);
begin
  SELPE:=0;
  Case LCAMPOS.ItemIndex of
    0:SELPE:=1;
    1:SELPE:=2;
    4:SELPE:=4;
    5:SELPE:=5;
    6:SELPE:=6;
   10:SELPE:=7;
  End;

  If SELPE>0 then
    BPESQ.Visible := TRUE
  else
    BPESQ.Visible :=FALSE;
end;

procedure TFrmControleCaixas.BPESQClick(Sender: TObject);
Var Vdtstr : String;
begin
  FrmOriPesq := 54;
  CASE SELPE OF
    1:
    BEGIN
      FrmPesqCliente := TFrmPesqCliente.Create (Self);
      FrmPesqCliente.ShowModal;
    END;
    2:
    BEGIN
      FrmPesqVend:=TFrmPesqVend.Create(Self);
      FrmPesqVend.ShowModal;
    END;
    4,5:
    BEGIN
      Cria_FrmSelData
      (Vdtstr);
      if ( Vdtstr <> '' ) then
        EdExpre.text:= Vdtstr;
    END;
    6:
    BEGIN
      FrmPesqCaminhao:= TFrmPesqCaminhao.Create(Self);
      FrmPesqCaminhao.ShowModal;
    END;
    7:
    BEGIN
      FrmPesqGrupoClie:= TFrmPesqGrupoClie.Create(Self);
      FrmPesqGrupoClie.ShowModal;
    END;
  end
end;

procedure TFrmControleCaixas.SB_PRIMEIROClick(Sender: TObject);
begin
     Qr.First;
end;

procedure TFrmControleCaixas.SB_ANTERIORClick(Sender: TObject);
begin
     Qr.Prior;
end;

procedure TFrmControleCaixas.SB_PROXIMOClick(Sender: TObject);
begin
     Qr.Next;
end;

procedure TFrmControleCaixas.SB_ULTIMOClick(Sender: TObject);
begin
     Qr.Last;
end;

procedure TFrmControleCaixas.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGrid ( DBGrid1, Qr , Column,  OrdemColuna , Ordem );
  OrdemColuna := Column.FieldName;
  if (OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente') then
    Ordem := 'Crescente'
  else
    Ordem := 'Decrescente';
end;

procedure TFrmControleCaixas.btn_DtEntregaClick(Sender: TObject);
Var Vdtstr:String;
begin
  Cria_FrmSelData(Vdtstr);
  if ( Vdtstr <> '' ) then
    Edt_DtEntrega.Text := Vdtstr;
  if ( Edt_DtEntrega.Enabled ) then
    Edt_DtEntrega.SetFocus;
end;

procedure TFrmControleCaixas.BtpesqCliClick(Sender: TObject);
begin
  FrmOriPesq:=541;
  FrmPesqCliente:=TFrmPesqCliente.Create(Self);
  FrmPesqCliente.ShowModal;
end;

procedure TFrmControleCaixas.BtnVendedorClick(Sender: TObject);
begin
  FrmOriPesq:=541;
  FrmPesqVend:=TFrmPesqVend.Create(Self);
  FrmPesqVend.ShowModal;
end;

procedure TFrmControleCaixas.BtnDtDevolucaoClick(Sender: TObject);
Var Vdtstr:String;
begin
  Cria_FrmSelData(Vdtstr);
  if ( Vdtstr <> '' ) then
    Edt_DtDevolucao.Text := Vdtstr;
  if ( Edt_DtDevolucao.Enabled ) then
    Edt_DtDevolucao.SetFocus;
end;

procedure TFrmControleCaixas.AtualizaBotoes ();
var Edicao, EdicaoLote : Boolean;
begin
  if ( PageControl1.ActivePage = Tab_Detalhe ) OR ( PageControl1.ActivePage = Tab_Lista )then
  begin
    if ( SomenteConsulta ) then
    begin
      SBNOVO.Enabled := false;
      SB_EDITAR.Enabled  :=  false;
      SBDel.Enabled  := false ;

      SBSalva.Enabled := false ;
      SBCancel.Enabled  := false ;
      SB_Imprime.Enabled  := false ;
      SB_CancelaVale.Enabled  := false ;
      SB_Reabrir.Enabled  := false ;
      {FABRICIO - 08/05/2018 - MOTIVO: adicionado campos de Placa e Motorista }
      btnPlacaVeiculo.Enabled := False;
      btnPesqMotorista.Enabled := False;
    end
    else
    begin
      Edicao := ( Ds.State in [dsEdit , dsInsert] );
      SBNOVO.Enabled := ( not Edicao ) ;
      SB_EDITAR.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 )  ;
      SBDel.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 )  ;

      SBSalva.Enabled := Edicao ;
      SBCancel.Enabled  := Edicao ;
      SB_PRIMEIRO.Enabled := ( not Edicao ) And ( Qr.RecordCount > 0 );
      SB_PROXIMO.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 );
      SB_ANTERIOR.Enabled := ( not Edicao ) And ( Qr.RecordCount > 0 );
      SB_ULTIMO.Enabled   := ( not Edicao ) And ( Qr.RecordCount > 0 );
      SB_Imprime.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 ) ;
      SB_CancelaVale.Enabled := ( not Edicao ) And ( Qr.RecordCount > 0 ) And ( QrFL_STATUS.AsString = 'AB' ) ;
      BtnDtDevolucao.Enabled := ( Edicao ) ;// and  ( QrDATA_DEVOLUCAO.IsNull );
      SB_Reabrir.Enabled     := ( not Edicao ) And ( Qr.RecordCount > 0 ) And ( QrFL_STATUS.AsString = 'FE' ) ;
      {FABRICIO - 08/05/2018 - MOTIVO: adicionado campos de Placa e Motorista }
      btnPlacaVeiculo.Enabled   := ( Edicao );
      btnPesqMotorista.Enabled  := ( Edicao );
      edtPlacaVeiculo.Enabled   := ( Edicao );
      edtCodMotorista.Enabled   := ( Edicao );
      Edt_DtDevolucao.Enabled := Edicao;
      edt_QtdD.Enabled        := Edicao;
      Edt_ObsDev.Enabled      := Edicao;
    end;
  end;

end;

procedure TFrmControleCaixas.SBNovoClick(Sender: TObject);
Var Saldo : Integer;
begin
     PageControl1.ActivePage := Tab_Detalhe;

    { Qr_Saldo.Close;
     Qr_Saldo.ParamByName('ID_Cliente').Value := StrToInt( edtCodiClie.Text );
     Qr_Saldo.Open;
     Saldo := Qr_SaldoSALDO.AsInteger ;}

  if ( PageControl1.ActivePage = Tab_Lista ) or ( PageControl1.ActivePage = Tab_Detalhe ) then
  begin
   if ( PageControl1.ActivePageIndex <> 2 ) then
    PageControl1.ActivePageIndex := 2 ;

    Qr.Append;
    QrEMPRESA.Value        := gs_Empresa;
    QrFILIAL.Value         := gi_Filial;
    QrID_USUARIO.Value     := gi_IdenUsua;
    //QrDATA_ENTREGA.Value   := Now;
    QrDATA_ENTREGA.Value   := DATE();
    QrFL_IMPRESSO.Value    := 'N';
    QrFL_STATUS.Value      := 'AB';
    //QrSALDO_ANTERIOR.Value := Saldo;
    BtpesqCli.Enabled      := True;
    BtnVendedor.Enabled    := True;
    btn_DtEntrega.Enabled  := True;
    BtnDtDevolucao.Enabled := True;
    {FABRICIO - 08/05/2018 - MOTIVO: adicionado campos de Placa e Motorista }
    btnPlacaVeiculo.Enabled := True;
    btnPesqMotorista.Enabled := True;
    AtualizaBotoes;
  end;
  edtCodiClie.SetFocus;
end;

procedure TFrmControleCaixas.SB_EditarClick(Sender: TObject);
begin
  PageControl1.ActivePage := Tab_Detalhe;

  if ( PageControl1.ActivePage = Tab_Lista ) or ( PageControl1.ActivePage = Tab_Detalhe ) then
  begin
    Qr.Edit;
    //Atual_ToolBar(7);
    AtualizaBotoes;

    if Edt_DtDevolucao.Text = '' then
      Edt_DtDevolucao.Text := DateToStr(Now);

  end;
end;

procedure TFrmControleCaixas.SBDelClick(Sender: TObject);
begin
  if ( PageControl1.ActivePage = Tab_Lista ) or ( PageControl1.ActivePage = Tab_Detalhe ) then
  begin
    if Application.MessageBox('Deseja Realmente Excluir esta Informação?', 'Comercial Dacar - Controle de Caixas', MB_YESNO + MB_ICONINFORMATION) = IDYES then
    Begin
      if ( QrFL_STATUS.Value = 'CN' ) then
      begin
        Application.MessageBox('Vale Cancelado não permite exclusão.', 'Comercial Dacar - Controle de Caixas', MB_OK + MB_ICONINFORMATION);
        Exit;
      end;

      if ( QrFL_IMPRESSO.Value = 'S' ) then
      begin
        Application.MessageBox('Vale Impresso não permite exclusão.', 'Comercial Dacar - Controle de Caixas', MB_OK + MB_ICONINFORMATION);
        Exit;
      end;

      Qr.Delete;
      Qr.ApplyUpdates;
      Qr.CommitUpdates;
      DBGrid1.Refresh;
    end;
  end;
end;

procedure TFrmControleCaixas.SBSalvaClick(Sender: TObject);
begin
  ActiveControl := Nil;
  if ( PageControl1.ActivePage = Tab_Lista ) or ( PageControl1.ActivePage = Tab_Detalhe ) then
  begin
    if ( QrID_CLIENTE.AsInteger = 0 ) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('O preenchimento do Cliente é obrigatório.', 'Comercial Dacar - Controle de Caixas', MB_OK + MB_ICONINFORMATION);
      edtCodiClie.SetFocus;
      Exit;
    end;

    if ( QrID_VENDEDOR.AsInteger = 0 ) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('O preenchimento do Vendedor é obrigatório.', 'Comercial Dacar - Controle de Caixas', MB_OK + MB_ICONINFORMATION);
      edt_CodVend.SetFocus;
      Exit;
    end;

    if ( QrDATA_ENTREGA.IsNull ) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('O preenchimento da data de entrega é obrigatório.', 'Comercial Dacar - Controle de Caixas', MB_OK + MB_ICONINFORMATION);
      Edt_DtEntrega.SetFocus;
      Exit;
    end;

    if ( QrNO_PLACAVEICULO.IsNull OR (edtPlacaVeiculo.Text = '')) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('O preenchimento do Veículo é obrigatório.', 'Comercial Dacar - Controle de Caixas', MB_OK + MB_ICONINFORMATION);
      edtPlacaVeiculo.SetFocus;
      Exit;
    end;

    if (Qr.State in [DsInsert,DsEdit])  then
      QR.Post;

    Qr.CommitUpdates;
    Qr.ApplyUpdates;

    if ( Atualiza_ValeAnt ) then
    begin
      SQL_AtualizaValeAnt.ParamByName('ID_CLIENTE').Value := QrID_CLIENTE.Value;
      SQL_AtualizaValeAnt.Execute;
    end;
    Atualiza_ValeAnt := False;

    Qr.Refresh;
    DBGrid1.Refresh;
    AtualizaBotoes;
    BtpesqCli.Enabled      := False;
    BtnVendedor.Enabled    := False;
    btn_DtEntrega.Enabled  := False;
    BtnDtDevolucao.Enabled := False;
    {FABRICIO - 08/05/2018 - MOTIVO: adicionado campos de Placa e Motorista }
    btnPlacaVeiculo.Enabled := False;
    btnPesqMotorista.Enabled := False;
  end;
end;

procedure TFrmControleCaixas.SBCancelClick(Sender: TObject);
begin
  if ( PageControl1.ActivePage = Tab_Lista ) or ( PageControl1.ActivePage = Tab_Detalhe )  then
  begin
    Qr.CancelUpdates;
    AtualizaBotoes;
    BtpesqCli.Enabled      := False;
    BtnVendedor.Enabled    := False;
    btn_DtEntrega.Enabled  := False;
    BtnDtDevolucao.Enabled := False;
    {FABRICIO - 08/05/2018 - MOTIVO: adicionado campos de Placa e Motorista }
    btnPlacaVeiculo.Enabled := False;
    btnPesqMotorista.Enabled := False;
  end;
end;

procedure TFrmControleCaixas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Qr.FieldByName('FL_STATUS').AsString = 'CN' then
    DBGrid1.Canvas.Font.Color := clred
  else if Qr.FieldByName('FL_STATUS').AsString = 'FE' then
    DBGrid1.Canvas.Font.Color := clgreen;

  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= clSilver;

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmControleCaixas.DsStateChange(Sender: TObject);
begin
     AtualizaBotoes;
end;

procedure TFrmControleCaixas.CRTemp_QrAfterCancel(DataSet: TDataSet);
begin
     Qr.CancelUpdates;
end;

procedure TFrmControleCaixas.CRTemp_QrAfterScroll(DataSet: TDataSet);
begin
  if ( PageControl1.ActivePage =  Tab_Detalhe ) OR ( PageControl1.ActivePage =  Tab_Lista  )  then
  begin
    AtualizaBotoes;
  end;
    DesabilitaCampos();
end;

procedure TFrmControleCaixas.CRTemp_QrBeforePost(DataSet: TDataSet);
begin
  if   (ds.State in [dsedit, dsinsert ]) AND ( Edt_DtDevolucao.Text <> '' ) AND (QrFL_STATUS.Value <> 'CN')  then
  begin
    QrID_USUARIO_DEV.Value := gi_IdenUsua;
    QrFL_STATUS.Value      := 'FE';
  end;

  if (ds.State in [dsinsert ]) then
  begin
    Atualiza_ValeAnt := true;

    Qr_Saldo.Close;
    Qr_Saldo.ParamByName('ID_Cliente').Value := StrToInt( edtCodiClie.Text );
    Qr_Saldo.Open;
    QrSALDO_ANTERIOR.Value := Qr_SaldoSALDO.AsInteger;
  end;

end;

procedure TFrmControleCaixas.SB_ImprimeClick(Sender: TObject);
var li_Loop : integer;
begin
  if DBGrid1.SelectedRows.Count = 0 then
  begin
    Application.MessageBox('Nenhum pedido foi selecionado para impressão do Vale Caixa .' + #13 + 'Por favor, verifique !', 'Comercial Dacar - Controle de Caixas', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
  // Confirmação de impressão
  if Application.MessageBox('Confirma impressão do Vale Caixa dos pedido selecionado?', 'Comercial Dacar - Controle de Caixas', MB_YESNO + MB_ICONINFORMATION) = IDYES then
  begin
    For li_Loop := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      // Posicionamos no registro a ser impresso
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[li_Loop]);

      if ( QrID_VALE.Value =  0 ) then
      begin
        Continue;
      end;

      try
        FrmRelValeCaixa := TFrmRelValeCaixa.Create(Self);

        FrmRelValeCaixa.Qr_Vale.Close;
        FrmRelValeCaixa.Qr_Vale.ParamByName('ID_VALE').Value := QrID_VALE.Value;
        FrmRelValeCaixa.Qr_Vale.Open;
        FrmRelValeCaixa.lbl_Unidade.Caption  := dadosCadastraisFilial.NomeFilial;
        FrmRelValeCaixa.lbl_Unidade1.Caption := dadosCadastraisFilial.NomeFilial;

        FrmRelValeCaixa.lbl_Rua.caption      := dadosCadastraisFilial.Endereco +', '+ dadosCadastraisFilial.Numero ;
        FrmRelValeCaixa.lbl_Rua1.caption     := dadosCadastraisFilial.Endereco +', '+ dadosCadastraisFilial.Numero ;

        FrmRelValeCaixa.lbl_Bairro.caption   := dadosCadastraisFilial.Bairro +', '+ dadosCadastraisFilial.Cidade +' - '+ dadosCadastraisFilial.UF ;
        FrmRelValeCaixa.lbl_Bairro1.caption  := dadosCadastraisFilial.Bairro +', '+ dadosCadastraisFilial.Cidade +' - '+ dadosCadastraisFilial.UF ;

        FrmRelValeCaixa.Lbl_Fone.caption     := dadosCadastraisFilial.Fone;
        FrmRelValeCaixa.Lbl_Fone1.caption    := dadosCadastraisFilial.Fone;

        {NOME: FABRICIO DATA:23/01/2018 MOTIVO: NÃO HÁ FAX
        FrmRelValeCaixa.Lbl_FAX.caption      := 'Fax : (15) 3282-2642';
        FrmRelValeCaixa.Lbl_FAX1.caption     := 'Fax : (15) 3282-2642';}

        {NOME: FABRICIO DATA:23/01/2018 MOTIVO: NO CADASTRO NAO PERMITE COM MÁSCARA DE FORMATAÇÃO}
        FrmRelValeCaixa.Lbl_CEP.caption      := 'CEP : 18.530-000'; //+dadosCadastraisFilial.Cep;
        FrmRelValeCaixa.Lbl_CEP1.caption     := 'CEP : 18.530-000'; //+dadosCadastraisFilial.Cep;

        FrmRelValeCaixa.Lbl_CNPJ.caption     := 'CNPJ : '+dadosCadastraisFilial.Cnpj;
        FrmRelValeCaixa.Lbl_CNPJ1.caption    := 'CNPJ : '+dadosCadastraisFilial.Cnpj;

        FrmRelValeCaixa.lbl_IE.caption       := 'IE : '+dadosCadastraisFilial.InscricaoEstadual;
        FrmRelValeCaixa.lbl_IE1.caption      := 'IE : '+dadosCadastraisFilial.InscricaoEstadual;

//        FrmRelValeCaixa.RLPrintDialogSetup1.Copies := 1;
        FrmRelValeCaixa.RLReport1.Preview;
      Finally
        FrmRelValeCaixa.RLReport1.Free;
      End;

      if ( QrFL_IMPRESSO.AsString <> 'S' ) then
      begin
        Qr.Edit;
        QrFL_IMPRESSO.Value := 'S';
        QR.Post;

        Qr.CommitUpdates;
        Qr.ApplyUpdates;
        Qr.Refresh;
        DBGrid1.Refresh;

        AtualizaBotoes;
        DesabilitaCampos;
      end;
    end;
  end;
end;

procedure TFrmControleCaixas.DesabilitaCampos();
Var Impresso , Devolvido, Cancelado, Edicao : Boolean ;
begin
  Cancelado := ( QrFL_STATUS.AsString = 'CN' ) ;
  Impresso  := ( QrFL_IMPRESSO.AsString = 'S' );
  Devolvido := ( not QrDATA_DEVOLUCAO.IsNull );
  Edicao := ( Ds.State in [dsEdit , dsInsert] );

  if (Not Cancelado ) then
  begin
    edt_Pedido.Enabled      := not Impresso;
    edtCodiClie.Enabled     := not Impresso;
    BtpesqCli.Enabled       := not Impresso;
    edt_CodVend.Enabled     := not Impresso;
    BtnVendedor.Enabled     := not Impresso;
    Edt_QtdE.Enabled        := not Impresso;
    Edt_DtEntrega.Enabled   := not Impresso;
    Edt_Obs.Enabled         := not Impresso;
    edtPlacaVeiculo.Enabled := Edicao;
    btnPlacaVeiculo.Enabled := Edicao;
    edtCodMotorista.Enabled := Edicao;
    btnPesqMotorista.Enabled:= Edicao;
    Edt_DtDevolucao.Enabled := Edicao;
    edt_QtdD.Enabled        := Edicao;
    Edt_ObsDev.Enabled      := Edicao;
  end
  else
  begin
    edt_Pedido.Enabled     := false;
    edtCodiClie.Enabled    := false;
    BtpesqCli.Enabled      := false;
    edt_CodVend.Enabled    := false;
    BtnVendedor.Enabled    := false;
    Edt_QtdE.Enabled       := false;
    Edt_DtEntrega.Enabled  := false;
    Edt_Obs.Enabled        := false;
    edtPlacaVeiculo.Enabled := False;
    btnPlacaVeiculo.Enabled := False;
    edtCodMotorista.Enabled := False;
    btnPesqMotorista.Enabled:= False;

    Edt_DtDevolucao.Enabled := false;
    edt_QtdD.Enabled        := false;
    Edt_ObsDev.Enabled      := false;
  end;

end;

procedure TFrmControleCaixas.CRTemp_QrBeforeOpen(DataSet: TDataSet);
begin
     DesabilitaCampos();
end;

procedure TFrmControleCaixas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = Ord('C')) then
       CTRL_C_Grig ( DBGrid1 );
end;

procedure TFrmControleCaixas.SB_CancelaValeClick(Sender: TObject);
begin
  if ( not QrDATA_DEVOLUCAO.IsNull ) then
  begin
    Application.MessageBox('Cancelamento não pode ser feito. Devolução já foi informada .', 'Comercial Dacar - Controle de Caixas', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if Application.MessageBox('Deseja Realmente Cancelar o Vale Caixa?', 'Comercial Dacar - Controle de Caixas', MB_YESNO + MB_ICONINFORMATION) = IDYES then;
  Begin
    Qr.Edit;
    QrFL_STATUS.Value := 'CN';
    QrID_USUARIO_DEV.Value := gi_IdenUsua;
    QrQTD_DEVOLVIDA.Value  := QrQTD_ENTREGUE.Value;
    QrDATA_DEVOLUCAO.Value   := Now;
    Qr.ApplyUpdates;
    Qr.CommitUpdates;
    DBGrid1.Refresh;
    AtualizaBotoes;
    DesabilitaCampos;
  end;
end;

procedure TFrmControleCaixas.SB_ReabrirClick(Sender: TObject);
begin
  if ( not QrQTD_DEVOLVIDA.Isnull  ) then
  begin
    Application.MessageBox('Vale Caixa não pode ser reaberto pois a Qtd Devolvida já foi informada. Por favor, verifique.', 'Comercial Dacar - Controle de Caixas', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
  Qr_Saldo.ParamByName('ID_Cliente').Value := QrID_CLIENTE.Value;
  Qr_Saldo.Close;
  Qr_Saldo.Open;

  if ( Qr_SaldoID_VALE.Value <> QrID_VALE.Value   ) then
  begin
    Application.MessageBox('Só pode ser reaberto o último Vale Caixa válido.', 'Comercial Dacar - Controle de Caixas', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if ( QrQTD_DEVOLVIDA.Isnull  ) And ( Qr_SaldoID_VALE.Value = QrID_VALE.Value   ) AND (QrFL_STATUS.Value = 'FE') then
  begin
    Qr.Edit;
    QrFL_STATUS.Value := 'AB';
    QrID_USUARIO_DEV.Clear ;
    QrDATA_DEVOLUCAO.Clear ;
    QrOBS_DEV.Clear ;
    Qr.ApplyUpdates;
    Qr.CommitUpdates;
    DBGrid1.Refresh;
    AtualizaBotoes;
    DesabilitaCampos;
  end;
end;

procedure TFrmControleCaixas.SB_HistoricoClick(Sender: TObject);
begin
  FrmRelHistCaixas:= TFrmRelHistCaixas.Create(Self);

  if rgpTotalHistorico.ItemIndex = 0 then // Total por Placa
  begin
    //Qr.IndexFieldNames := ' NO_PLACAVEICULO, DATA_ENTREGA ASC, ID_VALE ASC';
    Qr.IndexFieldNames :=  'NO_PLACAVEICULO, DATA_DEVOLUCAO, ID_VALE';
    FrmRelHistCaixas.Grupo_Cliente.Visible := False;
    FrmRelHistCaixas.lblTitulo.Caption := 'Caixas Recolhidas por Veículo'
  end
  else  // Total por Cliente
  begin
    Qr.IndexFieldNames := ' ID_CLIENTE, DATA_ENTREGA ASC, ID_VALE ASC';
    FrmRelHistCaixas.GrupoVeiculo.Visible := False;
    FrmRelHistCaixas.lblTitulo.Caption := 'Histórico de Caixas por Cliente'
  end;


  FrmRelHistCaixas.RLReport1.Preview(nil);
end;

{FABRICIO - 08/05/2018 - MOTIVO: adicionado Pesquisa para Veículo}
procedure TFrmControleCaixas.btnPlacaVeiculoClick(Sender: TObject);
begin
  FrmOriPesq:=541;
  FrmPesqCaminhao:= TFrmPesqCaminhao.Create(Self);
  FrmPesqCaminhao.ShowModal;
end;

{FABRICIO - 08/05/2018 - MOTIVO: adicionado Pesquisa para Motorista }
procedure TFrmControleCaixas.btnPesqMotoristaClick(Sender: TObject);
begin
  FrmOriPesq:=541;
  FrmPesqMotorista := TFrmPesqMotorista.Create(Self);
  FrmPesqMotorista.ShowModal;
end;

procedure TFrmControleCaixas.PageControl1Change(Sender: TObject);
begin
  pnlImpHistorico.Enabled :=  (PageControl1.ActivePage =  Tab_Lista);
end;

procedure TFrmControleCaixas.Tab_DetalheShow(Sender: TObject);
begin
  if (Edt_DtDevolucao.Text = '') AND (Qr.State in [dsEdit, dsInsert]) then
    Edt_DtDevolucao.Text := DateToStr(Now);
end;

procedure TFrmControleCaixas.edtCodMotoristaExit(Sender: TObject);
begin
  If not (Qr.State in [dsEdit, dsInsert]) then
  begin
    Exit;
  end;

  if edtCodMotorista.Text = '' then
  begin
    Qr.FieldByName('NM_MOTOTRAN').AsString  := '';
    Exit;
  end;

  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text :=
  'SELECT M.ID_MOTOTRAN, M.NM_MOTOTRAN ' +
  'FROM TRANSPORTADOR_MOTORISTA M ' +
  'WHERE M.ID_MOTOTRAN = ' + edtCodMotorista.Text;
  qryTemp.Open;

  // Se não encontramos o código
  if qryTemp.IsEmpty then
  begin
    Screen.Cursor := crDefault;
    Application.MessageBox('Código não encontrado.', 'Comercial Dacar - Controle de Caixas', MB_OK + MB_ICONINFORMATION);
    Qr['ID_CLIENTE'] := 0;
    edtCodMotorista.SetFocus;
    qryTemp.Close;
    Exit;
  end;

  Qr['ID_MOTORISTA'] := qryTemp['ID_MOTOTRAN' ];
  Qr['NM_MOTOTRAN'] := qryTemp['NM_MOTOTRAN' ];


end;

end.
