unit uFrmCadRegioes;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, Grids, DBGrids, Mask,
  DBCtrls, Buttons, ExtCtrls, ComCtrls, Winapi.Windows, OraSmart;

type
  TFrmCadRegiao = class(TForm)
    Panel25: TPanel;
    SB_ULTIMO: TSpeedButton;
    Sb_Sair: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_PRIMEIRO: TSpeedButton;
    SB_NOVO: TSpeedButton;
    SB_EDIT: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    PageControl2: TPageControl;
    TabCriterio: TTabSheet;
    LCampos: TListBox;
    MResul: TMemo;
    Lbl_Cond: TLabel;
    CBCond: TComboBox;
    Lbl_Expr: TLabel;
    EdExpr: TEdit;
    RGeou: TRadioGroup;
    BtLimpar: TBitBtn;
    BtAtivar: TBitBtn;
    BPESQ: TBitBtn;
    Lbl_Filtro: TLabel;
    Panel1: TPanel;
    LRodape: TLabel;
    TabDetalhe: TTabSheet;
    DBidRegiao: TDBEdit;
    gridRegiao: TDBGrid;
    dtsRegiao: TOraDataSource;
    DBNmRegiao: TDBEdit;
    SB_EXCLUI: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    BtIncluir: TBitBtn;
    TabCidade: TTabSheet;
    btnPesqCid: TBitBtn;
    dtsCidade: TOraDataSource;
    edtPesqCid: TEdit;
    gridCidade: TDBGrid;
    GroupBox1: TGroupBox;
    qryConsulta: TOraQuery;
    qryConsultaID_REGIAO: TFloatField;
    qryConsultaNM_REGIAO: TStringField;
    qryConsultaID_CIDADE: TFloatField;
    qryTemp: TOraQuery;
    QryRegiao: TSmartQuery;
    QryRegiaoID_REGIAO: TFloatField;
    QryRegiaoNM_REGIAO: TStringField;
    QryCidade: TSmartQuery;
    QryCidadeID_CID_REG: TIntegerField;
    QryCidadeID_REGIAO: TFloatField;
    QryCidadeID_CIDADE: TFloatField;
    QryCidadeNM_CIDADE: TStringField;
    procedure LDcomponentes(LD:boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sb_SairClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure SB_EDITClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure btnPesqCidClick(Sender: TObject);
    procedure dtsRegiaoStateChange(Sender: TObject);
  private
    Function  Atual_ToolBar(BtOrdem:Integer):string;
  public
    SELPE: integer;
    iCodCidade : Integer;
  end;

var
  FrmCadRegiao: TFrmCadRegiao;

implementation

uses Principal, Global, ufrmConsultaCidades, ufrmConsultarRegioes;

{$R *.dfm}

procedure TFrmCadRegiao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmCadRegiao:=nil;
//  FrmPrincipal.CadastrodeRegio1.Enabled:= True;
  FrmPrincipal.ACCadRegiao.Enabled := True;
  Action:=caFree;
end;

procedure TFrmCadRegiao.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadRegiao.BtAtivarClick(Sender: TObject);
VAR
  XTM,i:INTEGER;
  sCodReg : string;
  sCodCid : string;

begin
  sCodReg := '';

  if (LCampos.ItemIndex < 0) and (Length(MResul.Text)>0) then
  begin
    Application.MessageBox('É necessário selecionar um campo para Filtro.', PChar(FrmCadRegiao.Caption), MB_OK + MB_ICONINFORMATION);
    MResul.Text:= '';
    LCampos.SetFocus;
    Exit;
  end;

  Screen.Cursor := crSQLWait;
  qryConsulta.Close;

  WITH qryConsulta.SQL DO
  BEGIN
    Clear;
    Add('SELECT DISTINCT H.ID_REGIAO, H.NM_REGIAO, Y.ID_CIDADE ');
    Add('FROM DACAR_CIDADE_REG Y ');
    Add('RIGHT JOIN DACAR_REGIAO_LOGISTICA H ON H.ID_REGIAO = Y.ID_REGIAO');

    XTM:=MResul.Lines.Count;

    If XTM >0 then
    begin
      qryConsulta.SQL.Add(' WHERE ');
      qryConsulta.SQL.Add(MResul.Text);
    end
    ELSE
    begin
      Screen.Cursor := crDefault;
      if Application.MessageBox('                   Exibir listagem sem filtro?                    ', PChar(FrmCadRegiao.Caption), MB_YESNO) = IDNO then
        exit
      Else
        Screen.Cursor := crSQLWait;
    end;

    qryConsulta.SQL.Add('ORDER BY H.ID_REGIAO');
    qryConsulta.Open;

    if qryConsulta.RecordCount > 0 then
    begin
      qryConsulta.First;

//      for i:= 0 to qryConsulta.RecordCount -1 do
      while not qryConsulta.Eof do
      begin
        if qryConsultaID_REGIAO.AsString <> '' then
          if sCodReg <> '' then
            sCodReg := sCodReg + ', ' + qryConsultaID_REGIAO.AsString
          else
            sCodReg := sCodReg + qryConsultaID_REGIAO.AsString;

        qryConsulta.Next;
      end;

      IF sCodReg <> '' then
      begin
        QryRegiao.Close;
        QryRegiao.MacroByName('Macro').Value := 'WHERE ID_REGIAO IN (' + sCodReg + ')';
        QryRegiao.Open;
      end;

      qryConsulta.First;
      i:= 0;

//      for i:= 0 to qryConsulta.RecordCount -1 do
      while not qryConsulta.Eof do
      begin
        if qryConsultaID_CIDADE.AsString <> '' then
          if sCodCid <> '' then
            sCodCid := sCodCid + ', ' + qryConsultaID_CIDADE.AsString
          else
            sCodCid := sCodCid + qryConsultaID_CIDADE.AsString;

        qryConsulta.Next;
      end;

      IF sCodCid <> '' then
      begin
        QryCidade.Close;
        QryCidade.MacroByName('Macro').Value := 'WHERE ID_CIDADE IN (' + sCodCid + ')';
        QryCidade.Open;
      end;
    end
    else
    begin
      Application.MessageBox('                    Não há registros com essa informação.                   ', PChar(FrmCadRegiao.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      Exit;
    end;

    PageControl2.Pages[1].Show;
    PageControl2.Pages[0].TabVisible := True;
    PageControl2.Pages[2].TabVisible := True;
    Screen.Cursor := crDefault;
  end;

  LDcomponentes(True);
end;

procedure TFrmCadRegiao.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=True;
end;

procedure TFrmCadRegiao.LCamposClick(Sender: TObject);
begin
  SELPE:=0;
  CASE LCAMPOS.ItemIndex OF
        0:SELPE:=1;
        1:SELPE:=2;
  END;
  IF SELPE>0 then
    BPESQ.Visible:=TRUE;
end;

procedure TFrmCadRegiao.FormShow(Sender: TObject);
var
  Temp: TComponent;
  li_Loop : Integer;

begin
  QryRegiao.Open;

  if (LCAMPOS.Items.Count=0) then
  begin
    With LCampos.Items do
    begin
      Add('Cód. Região');
      Add('Cód. Cidade');
      Add('Nome Região');
    end;
  end;

  // Loop para todos os componentes da janela
  For li_Loop :=0 to ComponentCount - 1  do
  begin
    Temp := Components[li_Loop];
    if (Temp is TDBlookupCOMBOBOX) then
      TScrollBox(temp).ScaleBy(100,100);
  end;

end;

procedure TFrmCadRegiao.SB_EXCLUIClick(Sender: TObject);
begin

  if (TabDetalhe.Showing) then
  begin

    QryRegiao.Open;

    if QryCidade.RecordCount >= 1 then
    begin
      ShowMessage('Atenção! Existem cidades cadastradas nessa região. Não foi possível prosseguir com a exclusão.');
      Abort;
    end;

    if   Application.MessageBox('         Deseja Realmente Excluir esta Informação?         ', PChar(FrmCadRegiao.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
    begin
      QryRegiao.Delete;
      QryRegiao.ApplyUpdates;
      QryRegiao.CommitUpdates;
      QryRegiao.Refresh;
    end;
  end;

  if (TabCidade.Showing) then
  begin
    if Application.MessageBox('         Deseja Realmente Excluir esta Informação?         ', PChar(FrmCadRegiao.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
    begin
      QryCidade.Delete;
      QryCidade.ApplyUpdates;
      QryCidade.CommitUpdates;
      QryCidade.Refresh;
    end;
  end;

  Atual_ToolBar(6);
end;


function TFrmCadRegiao.Atual_ToolBar(BtOrdem: Integer): string;
begin
  CASE BtOrdem of
    1:begin
      SB_NOVO.Enabled := False;
      SB_EDIT.Enabled := False;
      SB_EXCLUI.Enabled := False;
      SB_CONFIRMA.Enabled := False;
      SB_CANCEL.Enabled := False;
      SB_PRIMEIRO.Enabled := True;
      SB_ANTERIOR.Enabled := True;
      SB_PROXIMO.Enabled := True;
      SB_ULTIMO.Enabled := True;
    end;

    5,7:begin
      SB_NOVO.Enabled := False;
      SB_EDIT.Enabled := False;
      SB_EXCLUI.Enabled := False;
      SB_CONFIRMA.Enabled := TRUE;
      SB_CANCEL.Enabled := TRUE;
      SB_PRIMEIRO.Enabled := False;
      SB_ANTERIOR.Enabled := False;
      SB_PROXIMO.Enabled := False;
      SB_ULTIMO.Enabled := False;
    end;

    6,8..9:begin
      SB_NOVO.Enabled := True;
      SB_EDIT.Enabled := True;
      SB_EXCLUI.Enabled := True;
      SB_CONFIRMA.Enabled := FALSE;
      SB_CANCEL.Enabled := FALSE;
      SB_PRIMEIRO.Enabled := True;
      SB_ANTERIOR.Enabled := True;
      SB_PROXIMO.Enabled := True;
      SB_ULTIMO.Enabled := True;
    end;
   10:begin
      SB_NOVO.Enabled := False;
      SB_EDIT.Enabled := True;
      SB_EXCLUI.Enabled := False;
      SB_CONFIRMA.Enabled := False;
      SB_CANCEL.Enabled := False;
      SB_PRIMEIRO.Enabled := True;
      SB_ANTERIOR.Enabled := True;
      SB_PROXIMO.Enabled := True;
      SB_ULTIMO.Enabled := True;
    end;
  end;

end;

procedure TFrmCadRegiao.SB_NOVOClick(Sender: TObject);
begin
  ActiveControl := Nil;
  LDcomponentes(True);

  if (TabCriterio.Showing) then
    TabDetalhe.Show;

  if (TabDetalhe.Showing) then
  begin
    DBNmRegiao.SetFocus;
    QryRegiao.open;
    QryRegiao.Insert;
  end;

  if (TabCidade.Showing)then
  begin
    QryCidade.open;
    QryCidade.Insert;
  end;

  Atual_ToolBar(5);

end;

procedure TFrmCadRegiao.LDcomponentes(LD:boolean);
var
  Temp:TComponent;
  li_Loop:Integer;
begin
  For li_Loop :=0 to ComponentCount - 1  do
  begin
    Temp := Components[li_Loop];
    if  (Temp is TDBEDIT) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;

    if (Temp is TDBlookupCOMBOBOX) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;

    if (Temp is TBitBtn) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;

    if (Temp is TRadioGroup) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;

    if (Temp is TDBMemo) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;

    if (Temp is TDBRadioGroup) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;

    if (Temp is TGroupBox) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;

    if (Temp is TDBCheckBox) then
    begin
      TScrollBox(temp).Enabled := LD;
    end;
  end;
end;

procedure TFrmCadRegiao.SB_CONFIRMAClick(Sender: TObject);
var
  sWhere: string;
begin
  Screen.Cursor := crSQLWait;

  if (TabDetalhe.Showing)  then
  begin
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text := 'SELECT COUNT(*) AS QTD FROM DACAR_REGIAO_LOGISTICA WHERE NM_REGIAO = ''' + UpperCase(DBNmRegiao.Text) + '''';
    QryTemp.Open;

    if QryTemp.FieldByName('QTD').Value > 0 then
    begin
      Application.MessageBox('          Já existe uma região com este nome.                   ', PChar(FrmCadRegiao.Caption), MB_OK + MB_ICONINFORMATION);
      SB_CANCELClick(self);
    end;

    If (DBNmRegiao.Text ='') then
    begin
      Application.MessageBox('          É necessário informar a descrição para região.                   ', PChar(FrmCadRegiao.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      DBNmRegiao.SetFocus;
      Exit;
    end;

    if (QryRegiao.State=DSEDIT) or (QryRegiao.State=DSINSERT) then
    begin
      QryRegiao.Post;
      QryRegiao.CommitUpdates;
      QryRegiao.ApplyUpdates;
      DBNmRegiao.Clear;
    end;
  end
  else if (TabCidade.Showing)  then
  begin
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Text := 'SELECT COUNT(*) AS QTD FROM DACAR_CIDADE_REG WHERE ID_CIDADE = ' + IntToStr(iCodCidade) + ' AND ID_REGIAO = ' + QryRegiaoID_REGIAO.AsString;
    QryTemp.Open;

    if QryTemp.FieldByName('QTD').Value > 0 then
    begin
      Application.MessageBox('          Cidade já inserida para essa Região.                    ', PChar(FrmCadRegiao.Caption), MB_OK + MB_ICONINFORMATION);
      SB_CANCELClick(self);
    end;

    If (edtPesqCid.Text ='') then
    begin
      Application.MessageBox('          É necessário informar selecionar uma cidade.                   ', PChar(FrmCadRegiao.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      Exit;
    end;

    if (QryCidade.State=DSEDIT) or (QryCidade.State=DSINSERT) then
    begin
      QryCidadeID_REGIAO.Value := QryRegiaoID_REGIAO.Value;
      QryCidadeID_CIDADE.Value := iCodCidade;
      QryCidadeNM_CIDADE.Value := edtPesqCid.Text;
      QryCidade.Post;
      QryCidade.CommitUpdates;
      QryCidade.ApplyUpdates;
    end;
  end;

  PageControl2.Pages[0].TabVisible := True;
  PageControl2.Pages[1].TabVisible := True;
  PageControl2.Pages[2].TabVisible := True;
  LDcomponentes(True);
  Screen.Cursor := crDefault;
  Atual_ToolBar(6);
  edtPesqCid.Text := '';

end;

procedure TFrmCadRegiao.SB_EDITClick(Sender: TObject);
begin
  if (TabDetalhe.Showing) then
  begin
    QryRegiao.Edit;
  end;

  if (TabCidade.Showing) then
  begin
    QryCidade.Edit;
  end;
  Atual_ToolBar(5);
  LDcomponentes(True);
end;

procedure TFrmCadRegiao.SB_CANCELClick(Sender: TObject);
begin
  if (QryRegiao.State in [dsedit,dsinsert]) then
  begin
    QryRegiao.CancelUpdates;
    QryRegiao.Refresh;
  end;

  if (QryCidade.State in [dsedit,dsinsert]) then
  begin
    QryCidade.CancelUpdates;
    QryCidade.Refresh;
  end;

  LDcomponentes(True);
  Atual_ToolBar(6);
end;

procedure TFrmCadRegiao.SB_PRIMEIROClick(Sender: TObject);
begin
  QryRegiao.First;
end;

procedure TFrmCadRegiao.SB_ANTERIORClick(Sender: TObject);
begin
  QryRegiao.Prior;
end;

procedure TFrmCadRegiao.SB_PROXIMOClick(Sender: TObject);
begin
  QryRegiao.Next;
end;

procedure TFrmCadRegiao.SB_ULTIMOClick(Sender: TObject);
begin
  QryRegiao.Last;
end;

procedure TFrmCadRegiao.BtIncluirClick(Sender: TObject);
var
  Vre,Vlinha:String;
  Vcampos:integer;
begin

  If EdExpr.Text<>'' then
  Begin
    IF MResul.Lines.Count>0 then
    begin
      If RGeou.ItemIndex=0  then
      begin
        Vre:=' AND ';
      end
      Else
      begin
        Vlinha:= MResul.Lines.Strings[MResul.Lines.Count-1];
        MResul.Lines.Strings[MResul.Lines.Count-1]:= Copy(Vlinha,1,length(Vlinha)-1);
        Vre:=' OR ';
      end;
    end;

    If  LCampos.itemindex=-1 then
      Vcampos:=0
    else
      Vcampos:=LCampos.itemindex;

    If RGeou.ItemIndex=0  then
       Vre:= Vre + '(' ;

    Case LCampos.itemindex of
      0:Vre:=Vre + ' H.ID_REGIAO ';
      1:Vre:=Vre + ' Y.ID_CIDADE ';
      2:Vre:=Vre + ' H.NM_REGIAO ';
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
      2:Vre:= Vre + '''';
      3:Vre:= Vre + '''';
      4:Vre:= Vre + '''';
    end;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

    Vre:=Vre + (EdExpr.text);

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

    Case LCampos.itemindex of
      2:Vre:= Vre + '''';
      3:Vre:= Vre + '''';
      4:Vre:= Vre + '''';
    end;

    Vre:=Vre+')';

    MResul.Lines.Add(Vre);

    EdExpr.Text :='';
    BtIncluir.Enabled :=True;
  end;

  BtAtivar.SetFocus;
end;

procedure TFrmCadRegiao.BPESQClick(Sender: TObject);
begin
  try
    FrmOriPesq:=33;
    CASE SELPE OF
      1:
      BEGIN
        ufrmConsultaRegioes:=TufrmConsultaRegioes.Create(Self);
        ufrmConsultaRegioes.ShowModal;
      END;
      2:
      BEGIN
        frmConsultaCidades:=TfrmConsultaCidades.Create(Self);
        frmConsultaCidades.ShowModal;
      END;
    end;

    if BtIncluir.Enabled then
      BtIncluir.SetFocus;

  except;
    Application.MessageBox('Não foi possível abrir o Form.', PChar(FrmCadRegiao.Caption), MB_OK + MB_ICONINFORMATION);
  end;

  BPESQ.Visible:=FALSE;
end;

procedure TFrmCadRegiao.btnPesqCidClick(Sender: TObject);
begin
  FrmOriPesq:=333;
  frmConsultaCidades:=TfrmConsultaCidades.Create(Self);
  frmConsultaCidades.ShowModal;
end;

procedure TFrmCadRegiao.dtsRegiaoStateChange(Sender: TObject);
begin
  DBNmRegiao.Enabled := (QryRegiao.State in [dsedit,dsinsert]);
end;

end.

