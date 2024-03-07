unit UFrmCadBairro;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Ora, MemDS, DBAccess, Mask,
  DBCtrls, Grids, DBGrids, Buttons, ComCtrls, Winapi.Windows, OraSmart;

type
  TFrmCadBairro = class(TForm)
    PageControl1: TPageControl;
    TabCriterio: TTabSheet;
    Lbl_Filtro: TLabel;
    LCampos: TListBox;
    Lbl_Cond: TLabel;
    Lbl_Expr: TLabel;
    CBCond: TComboBox;
    RGeou: TRadioGroup;
    BtIncluir: TBitBtn;
    BtLimpar: TBitBtn;
    BtAtivar: TBitBtn;
    MResul: TMemo;
    EdExpr: TEdit;
    BitBtn2: TBitBtn;
    TabLista: TTabSheet;
    DBGrid1: TDBGrid;
    TabDetalhes: TTabSheet;
    DtSrcCadBairro: TOraDataSource;
    QrDireitos: TOraQuery;
    QryCidade: TOraQuery;
    DtSrcCidade: TOraDataSource;
    QryCidadeID_CIDADE: TFloatField;
    QryCidadeNM_CIDADE: TStringField;
    QryCidadeID_ESTADO: TFloatField;
    QryCidadeSG_ESTADO: TStringField;
    QryCidadeNM_REGIGEOG: TStringField;
    QryCidadeID_REGIGEOG: TFloatField;
    QryCidadeNM_PAIS: TStringField;
    QryCidadeID_PAIS: TFloatField;
    Panel2: TPanel;
    SB_ULTIMO: TSpeedButton;
    Sb_Sair: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_PRIMEIRO: TSpeedButton;
    SB_NOVO: TSpeedButton;
    SB_EXCLUI: TSpeedButton;
    SB_EDIT: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    DBReg: TDBEdit;
    DBPais: TDBEdit;
    DBNmCid: TDBEdit;
    DBNmBairro: TDBEdit;
    DBEst: TDBEdit;
    DBEdit9: TDBEdit;
    DBCodCid: TDBEdit;
    BtCenCus: TBitBtn;
    QryCadBairro: TSmartQuery;
    QryCadBairroEMPRESA: TStringField;
    QryCadBairroFILIAL: TIntegerField;
    QryCadBairroNM_BAIRRO: TStringField;
    QryCadBairroID_BAIRRO: TFloatField;
    QryCadBairroID_CIDADE: TFloatField;
    QryCadBairroFX_BAIRRO: TStringField;
    QryCadBairroNM_CIDADE: TStringField;
    QryCadBairroSG_ESTADO: TStringField;
    QryCadBairroNM_PAIS: TStringField;
    QryCadBairroID_REGIGEOG: TFloatField;
    QryCadBairroNM_REGIGEOG: TStringField;
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    procedure LDcomponentes(LD:boolean);
    procedure BtAtivarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure TabCriterioShow(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtCenCusClick(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure EdExprKeyPress(Sender: TObject; var Key: Char);
    procedure EdExprChange(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure SB_EDITClick(Sender: TObject);
    procedure DBCodCidExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNmBairroKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Private declarations }
    OrdemColuna , Ordem : string ;
  public
   VCid, NCid, NEst, NPais, NReg: string;
  end;

var
  FrmCadBairro: TFrmCadBairro;

implementation
 uses
  UFrmClientes , Principal, global, UFrmPesqCid;

{$R *.dfm}

procedure TFrmCadBairro.BtAtivarClick(Sender: TObject);

VAR
  XTM:INTEGER;
Begin
  Screen.Cursor := crSQLWait;
  QryCadBairro.Close;

  WITH QryCadBairro.SQL DO
  BEGIN
    Clear;
    ADD('SELECT BAIRRO.EMPRESA, BAIRRO.FILIAL, BAIRRO.NM_BAIRRO, BAIRRO.ID_BAIRRO, BAIRRO.ID_CIDADE, ');
    ADD('BAIRRO.FX_BAIRRO, CIDADE.NM_CIDADE, ESTADO.SG_ESTADO, PAIS.NM_PAIS, REGIAO_GEOGRAFICA.ID_REGIGEOG, ');
    ADD('REGIAO_GEOGRAFICA.NM_REGIGEOG ');
    ADD('FROM BAIRRO, CIDADE, ESTADO, PAIS, REGIAO_GEOGRAFICA, REGIAO_INTERNACIONAL ');
    ADD('WHERE BAIRRO.ID_CIDADE(+) = CIDADE.ID_CIDADE AND CIDADE.ID_ESTADO = ESTADO.ID_ESTADO AND ');
    ADD('ESTADO.ID_PAIS = PAIS.ID_PAIS AND REGIAO_GEOGRAFICA.ID_REGIGEOG(+) = ESTADO.ID_REGIGEOG AND ');
    ADD('REGIAO_INTERNACIONAL.ID_REGIINTE = PAIS.ID_REGIINTE ');

    XTM:=MResul.Lines.Count;

    If XTM >0 then
    begin
      QryCadBairro.SQL.Add('AND');
      QryCadBairro.SQL.Add(MResul.Text);
    end
    else
    begin
      Screen.Cursor := crDefault;
      if Application.MessageBox('             Exibir listagem sem filtro?                        ', PChar(FrmCadBairro.Caption), MB_YESNO) = IDNO then
        exit
      Else
        Screen.Cursor := crSQLWait;
    end;

    QryCadBairro.SQL.Add('order by bairro.nm_bairro');
    QryCadBairro.Open;

    PageControl1.Pages[1].Show;
    Screen.Cursor := crDefault;
    PageControl1.Pages[1].TabVisible := True;
    PageControl1.Pages[2].TabVisible := true;
    Atual_ToolBar(9);
    LDcomponentes(False);
  end;
end;

procedure TFrmCadBairro.LDcomponentes(LD:boolean);
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


function TFrmCadBairro.Atual_ToolBar(BtOrdem: Integer): string;
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

procedure TFrmCadBairro.FormShow(Sender: TObject);
var
  Temp: TComponent;
  li_Loop : Integer;
begin
  if (LCAMPOS.Items.Count=0) then
  begin
    With LCampos.Items do
    begin
      Add('Código do Bairro  ');
      Add('Nome do Bairro ');
      Add('Cód Cidade');
      Add('Nome da Cidade');
    end;
  end;

  PageControl1.Pages[1].TabVisible:= False;
  PageControl1.Pages[2].TabVisible:= False;

  For li_Loop :=0 to ComponentCount - 1  do
  begin
    Temp := Components[li_Loop];
    if (Temp is TDBlookupCOMBOBOX) then
      TScrollBox(temp).ScaleBy(100,100);
  end;

  SB_PRIMEIRO.Enabled := False;
  SB_ANTERIOR.Enabled := False;
  SB_PROXIMO.enabled := False;
  SB_ULTIMO.enabled := False;
  SB_NOVO.Enabled := False;
  SB_EXCLUI.Enabled := False;
  SB_CONFIRMA.Enabled := False;
  SB_CANCEL.Enabled := False;
  SB_EDIT.Enabled := False;
end;

procedure TFrmCadBairro.Sb_SairClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmCadBairro.TabCriterioShow(Sender: TObject);
begin
  CBCond.Enabled := True;
  EdExpr.Enabled := True;
  BtLimpar.Enabled := True;
  BtAtivar.Enabled := True;
  RGeou.Enabled := True;
end;

procedure TFrmCadBairro.BtIncluirClick(Sender: TObject);
var
   Vre,Vlinha:String;
   Vcampos,FA,FO:integer;
begin
  If EdExpr.Text<>'' then
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

    Case LCampos.itemindex of
      0:Vre:=Vre + '  bairro.id_bairro  ';
      1:Vre:=Vre + '  UPPER(bairro.nm_bairro) ';
      2:Vre:=Vre + '  bairro.id_cidade ';
      3:Vre:=Vre + '  UPPER(cidade.nm_cidade) ';
    end;

    Case CBCond.ItemIndex of
      0: Vre:=Vre + ' =  ';
      1: Vre:=Vre + ' <> ';
      2: Vre:=Vre + ' >  ';
      3: Vre:=Vre + ' >= ';
      4: Vre:=Vre + ' <  ';
      5: Vre:=Vre + ' <= ';
      6: Vre:=Vre + ' Like ';
    end;

    Case LCampos.itemindex of
      1:Vre:= Vre + '''';
      3:Vre:= Vre + '''';
    end;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

      Vre:=Vre + EdExpr.text;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

    Case LCampos.itemindex of
      1:Vre:= Vre + '''';
      3:Vre:= Vre + '''';
    end;

    Vre:=Vre+')';

    MResul.Lines.Add(Vre);

    EdExpr.Text :='';
    BtIncluir.Enabled :=false;
  end;

  BtAtivar.SetFocus;
end;

procedure TFrmCadBairro.BtCenCusClick(Sender: TObject);
begin
  Cria_FrmPesqCid(VCid, NCid, NEst, NPais, NReg);
  DBCodCid.text:= VCid;
  DBNmCid.Text:= NCid;
  DBEst.Text := NEst;
  DBPais.Text := NPais;
  DBReg.Text := NReg;
  DBNmCid.SetFocus;

end;

procedure TFrmCadBairro.SB_NOVOClick(Sender: TObject);
begin
  if (gi_Filial = 2) or (gi_filial = 8) then
  begin
    Application.MessageBox('Para Edição ou Inclusão, entrar contato em Sorocaba.', PChar(FrmCadBairro.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Exit;
  end;

  ActiveControl := Nil;
  LDcomponentes(True);

  if (TabLista.Showing) or (TabDetalhes.Showing) then
  begin
    QryCadBairro.open;
    QryCadBairro.Insert;
    QryCadBairroEMPRESA.Value:=gs_Empresa;
    QryCadBairroFILIAL.Value:=gi_Filial;
    QryCadBairroFX_BAIRRO.Value:='N';
    PageControl1.Pages[01].TabVisible := False;
    PageControl1.Pages[00].TabVisible := False;
    PageControl1.Pages[02].TabVisible := True;
  end;

  Atual_ToolBar(5);
end;

procedure TFrmCadBairro.SB_CONFIRMAClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;

  if (TabDetalhes.Showing)  then
  begin
    If (DBNmBairro.Text ='')then
    begin
      Application.MessageBox('É neceesário preencher todos os campos. Verifique.', PChar(FrmCadBairro.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      Exit;
    end;
    if (QryCadBairro.State=DSEDIT) or (QryCadBairro.State=DSINSERT) then
    begin
      QryCadBairro.Post;
      QryCadBairro.CommitUpdates;
      QryCadBairro.ApplyUpdates;
    end;
  end;

  PageControl1.Pages[01].TabVisible := True;
  PageControl1.Pages[00].TabVisible := True;
  PageControl1.Pages[02].TabVisible := True;
  LDcomponentes(False);
  Screen.Cursor := crDefault;
  Atual_ToolBar(1);

  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(9);

  LDcomponentes(False);
end;

procedure TFrmCadBairro.FormCreate(Sender: TObject);
begin
  FrmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmCadBairro.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmCadBairro.EdExprKeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadBairro.EdExprChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmCadBairro.SB_ANTERIORClick(Sender: TObject);
begin
 QryCadBairro.Prior;
end;

procedure TFrmCadBairro.SB_PROXIMOClick(Sender: TObject);
begin
 QryCadBairro.Next;
end;

procedure TFrmCadBairro.SB_ULTIMOClick(Sender: TObject);
begin
 QryCadBairro.Last;
end;

procedure TFrmCadBairro.SB_PRIMEIROClick(Sender: TObject);
begin
 QryCadBairro.First;
end;

procedure TFrmCadBairro.SB_CANCELClick(Sender: TObject);
begin

  if (QryCadBairro.State in [dsedit,dsinsert]) then
    QryCadBairro.CancelUpdates;

  LDcomponentes(False);

  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(9);

  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(10);

  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 4;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(1);

end;

procedure TFrmCadBairro.SB_EXCLUIClick(Sender: TObject);
begin
  if (gi_Filial = 2) or (gi_filial = 8) then
  begin
    Application.MessageBox('Para Edição, Exclusão ou Inclusão, entrar contato em Sorocaba.', PChar(FrmCadBairro.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Exit;
  end;

  if (TabLista.Showing) then
  begin
    Application.MessageBox('Para exclusão do registro, acesse a aba DETALHE.', PChar(FrmCadBairro.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Exit;
  end;

  if (TabDetalhes.Showing) then
  begin
    if Application.MessageBox('Deseja Realmente Excluir esta Informação?', PChar(FrmCadBairro.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
    begin
      QryCadBairro.Delete;
      QryCadBairro.ApplyUpdates;
      QryCadBairro.CommitUpdates;
      QryCadBairro.Refresh;
    end;
  end;

  Atual_ToolBar(6);
end;

procedure TFrmCadBairro.SB_EDITClick(Sender: TObject);
begin
  if (gi_Filial = 2) or (gi_filial = 8) then
  begin
    Application.MessageBox('Para Edição ou Inclusão, entrar contato em Sorocaba.', PChar(FrmCadBairro.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Exit;
  end;

  if (TabDetalhes.Showing) then
  begin
    QryCadBairro.Edit;
  end;

  Atual_ToolBar(7);
  LDcomponentes(True);
end;

procedure TFrmCadBairro.DBCodCidExit(Sender: TObject);
begin
  If (QryCadBairro.State in [dsedit,dsinsert]) and (DBCodCid.Text<>'')  then
  begin
    QryCidade.Close;
    QryCidade.ParamByName('VCID').ASFLOAT:= STRTOFLOAT(DBCodCid.Text);
    QryCidade.Open;
    QryCadBairroID_CIDADE.Value := QryCidade.FieldByname('ID_CIDADE').AsFloat;
    QryCadBairroNM_CIDADE.Value := QryCidade.FieldByname('NM_CIDADE').AsString;
    QryCadBairroSG_ESTADO.Value := QryCidade.FieldByname('SG_ESTADO').AsString;
    QryCadBairroNM_PAIS.Value := QryCidade.FieldByname('NM_PAIS').AsString;
    QryCadBairroNM_REGIGEOG.Value := QryCidade.FieldByname('NM_REGIGEOG').AsString;
  end;
end;

procedure TFrmCadBairro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmCadBairro:=nil;
  FrmPrincipal.CadastrodeBairro1.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmCadBairro.DBNmBairroKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = '''') then
    Key:= #0;
end;

procedure TFrmCadBairro.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGrid ( DBGrid1 , QryCadBairro , Column,  OrdemColuna , Ordem );
  OrdemColuna := Column.FieldName;
  if (OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente') then
    Ordem := 'Crescente'
  else
    Ordem := 'Decrescente';
end;

procedure TFrmCadBairro.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

End.


