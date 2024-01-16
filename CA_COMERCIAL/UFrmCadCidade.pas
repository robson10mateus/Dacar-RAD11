unit UFrmCadCidade;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Ora, MemDS, DBAccess, DBCtrls,
  Mask, Grids, DBGrids, Buttons, ComCtrls, Winapi.Windows, OraSmart;

type
  TFrmCadCidade = class(TForm)
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
    Panel4: TPanel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    TabDetalhes: TTabSheet;
    DtSrcCadCidade: TOraDataSource;
    QryEstado: TOraQuery;
    DtSrcEstado: TOraDataSource;
    QryPais: TOraQuery;
    DtSrcPais: TOraDataSource;
    QryEstadoID_ESTADO: TFloatField;
    QryEstadoNM_ESTADO: TStringField;
    QryEstadoSG_ESTADO: TStringField;
    QryEstadoNM_REGIGEOG: TStringField;
    QryPaisID_PAIS: TFloatField;
    QryPaisNM_PAIS: TStringField;
    QryEstadoID_PAIS: TFloatField;
    QrDireitos: TOraQuery;
    Panel1: TPanel;
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
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    DBZnFranca: TDBRadioGroup;
    DBReg: TDBEdit;
    DBNmCidade: TDBEdit;
    DBLTplog: TDBLookupComboBox;
    DBEstado: TDBLookupComboBox;
    DBEdit9: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBCodIBGE: TDBEdit;
    QryCadCidade: TSmartQuery;
    QryCadCidadeEMPRESA: TStringField;
    QryCadCidadeFILIAL: TIntegerField;
    QryCadCidadeID_CIDADE: TFloatField;
    QryCadCidadeNM_CIDADE: TStringField;
    QryCadCidadeID_ESTADO: TFloatField;
    QryCadCidadeNR_DDDCIDA: TStringField;
    QryCadCidadeFL_ZONAFRAN: TStringField;
    QryCadCidadeNR_DIPAM: TIntegerField;
    QryCadCidadeFX_CIDADE: TStringField;
    QryCadCidadeNM_PAIS: TStringField;
    QryCadCidadeSG_ESTADO: TStringField;
    QryCadCidadeID_REGIGEOG: TFloatField;
    QryCadCidadeNM_REGIGEOG: TStringField;
    QryCadCidadeID_PAIS: TFloatField;
    QryCadCidadeID_IBGE: TIntegerField;
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    procedure LDcomponentes(LD:boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure TabCriterioShow(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure EdExprChange(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure DBLTplogClick(Sender: TObject);
    procedure DBEstadoClick(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure TabDetalhesShow(Sender: TObject);
    procedure SB_EDITClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Private declarations }
    OrdemColuna , Ordem : string ;
  public
    { Public declarations }
  end;

var
  FrmCadCidade: TFrmCadCidade;

implementation
 uses
  UFrmClientes , Principal, global, UFrmPesqCid, Math;
{$R *.dfm}

procedure TFrmCadCidade.FormCreate(Sender: TObject);
begin
  FrmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmCadCidade.FormShow(Sender: TObject);
var
  Temp: TComponent;
  li_Loop : Integer;
begin
  if (LCAMPOS.Items.Count=0) then
  begin
    With LCampos.Items do
    begin
      Add('Código da Cidade ');
      Add('Código País ');
      Add('Nome Cidade');
      Add('Nome País');
      Add('Sigla Estado');
    end;
  end;

 PageControl1.Pages[1].TabVisible:= False;
 PageControl1.Pages[2].TabVisible:= False;


 // Loop para todos os componentes da janela
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

procedure TFrmCadCidade.Sb_SairClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmCadCidade.TabCriterioShow(Sender: TObject);
begin
  CBCond.Enabled := True;
  EdExpr.Enabled := True;
  BtLimpar.Enabled := True;
  BtAtivar.Enabled := True;
  RGeou.Enabled := True;
end;

procedure TFrmCadCidade.LDcomponentes(LD:boolean);
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


function TFrmCadCidade.Atual_ToolBar(BtOrdem: Integer): string;
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

procedure TFrmCadCidade.BtIncluirClick(Sender: TObject);
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
        Vre:='AND';
      end
      Else
      begin
        Vlinha:= MResul.Lines.Strings[MResul.Lines.Count-1];
        MResul.Lines.Strings[MResul.Lines.Count-1]:= Copy(Vlinha,1,length(Vlinha)-1);
        Vre:='OR';
      end;
    end;

    If  LCampos.itemindex=-1 then
      Vcampos:=0
    else
      Vcampos:=LCampos.itemindex;

    If RGeou.ItemIndex=0  then
       Vre:= Vre + '(' ;

    Case LCampos.itemindex of
      0:Vre:=Vre + 'cidade.id_cidade';
      1:Vre:=Vre + 'pais.id_pais';
      2:Vre:=Vre + 'UPPER(cidade.nm_cidade)';
      3:Vre:=Vre + 'UPPER(pais.nm_pais)';
      4:Vre:=Vre + 'UPPER(estado.sg_estado)';
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

      Vre:=Vre + EdExpr.text;

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
    BtIncluir.Enabled :=false;
  end;

  BtAtivar.SetFocus;
end;

procedure TFrmCadCidade.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin

  Screen.Cursor := crSQLWait;
  QryCadCidade.Close;

  WITH QryCadCidade.SQL DO
  BEGIN
    Clear;
    ADD('SELECT CIDADE.EMPRESA, CIDADE.FILIAL, CIDADE.ID_CIDADE, CIDADE.NM_CIDADE, CIDADE.ID_IBGE, CIDADE.ID_ESTADO, ');
    ADD('CIDADE.NR_DDDCIDA, CIDADE.FL_ZONAFRAN, CIDADE.NR_DIPAM, CIDADE.FX_CIDADE, PAIS.ID_PAIS, PAIS.NM_PAIS, ESTADO.SG_ESTADO, ');
    ADD('REGIAO_GEOGRAFICA.ID_REGIGEOG, REGIAO_GEOGRAFICA.NM_REGIGEOG ');
    ADD('FROM CIDADE, ESTADO, PAIS, REGIAO_GEOGRAFICA, REGIAO_INTERNACIONAL ');
    ADD('WHERE CIDADE.ID_ESTADO = ESTADO.ID_ESTADO AND ESTADO.ID_PAIS = PAIS.ID_PAIS AND ');
    ADD('REGIAO_GEOGRAFICA.ID_REGIGEOG(+) = ESTADO.ID_REGIGEOG AND REGIAO_INTERNACIONAL.ID_REGIINTE(+) = PAIS.ID_REGIINTE ');

    XTM:=MResul.Lines.Count;
    If XTM >0 then
    begin
      QryCadCidade.SQL.Add(' And ');
      QryCadCidade.SQL.Add(MResul.Text);
    end
    else
    begin
      Screen.Cursor := crDefault;
      if Application.MessageBox('             Exibir listagem sem filtro?                        ', PChar(FrmCadCidade.Caption), MB_YESNO) = IDNO then
        exit
      Else
        Screen.Cursor := crSQLWait;
    end;

    QryCadCidade.SQL.Add('order by cidade.nm_cidade');
    QryCadCidade.Open;
    QryEstado.close;
    QryEstado.open;
    QryPais.close;
    QryPais.open;

    PageControl1.Pages[1].Show;
    Screen.Cursor := crDefault;
    PageControl1.Pages[1].TabVisible := True;
    PageControl1.Pages[2].TabVisible := true;
    Atual_ToolBar(1);

    //Direito a Incluir
    QrDireitos.Close;
    QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
    QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QrDireitos.Open;
    If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(9);

  end;

  LDcomponentes(False);
end;

procedure TFrmCadCidade.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmCadCidade.EdExprChange(Sender: TObject);
begin
 BtIncluir.Enabled:=true;
end;

procedure TFrmCadCidade.SB_NOVOClick(Sender: TObject);
begin
  if (gi_Filial = 2) or (gi_filial = 8) then
  begin
    Application.MessageBox('Para Edição ou Inclusão, entrar contato em Sorocaba.', PChar(FrmCadCidade.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Exit;
  end;

  ActiveControl := Nil;
  LDcomponentes(True);

  if (TabLista.Showing) or (TabDetalhes.Showing) then
  begin
    QryCadCidade.open;
    QryCadCidade.Insert;
    QryCadCidadeEMPRESA.Value:=gs_Empresa;
    QryCadCidadeFILIAL.Value:=gi_Filial;
    QryCadCidadeFX_CIDADE.Value:='N';
    PageControl1.Pages[01].TabVisible := False;
    PageControl1.Pages[00].TabVisible := False;
    PageControl1.Pages[02].TabVisible := True;
  end;

  Atual_ToolBar(5);
end;

procedure TFrmCadCidade.SB_CONFIRMAClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  if (TabDetalhes.Showing)  then
  begin
    If (DBNmCidade.Text ='') or (DBZnFranca.Value ='') or (DBEstado.Text ='') or (DBCodIBGE.Text = '') then
    begin
      Application.MessageBox('É necessário ainda preencher alguns campos Verifique.', PChar(FrmCadCidade.Caption), MB_OK + MB_ICONINFORMATION);
      Screen.Cursor := crDefault;
      Exit;
    end;

    if Length(DBCodIBGE.Text) < 7 then
    begin
      if Application.MessageBox('         O código do IBGE está menor que 7 dígitos. Confirma?         ', PChar(FrmCadCidade.Caption), MB_YESNO) = IDNO then
      begin
        Screen.Cursor := crDefault;
        Exit;
      end;
    end;

    if (QryCadCidade.State=DSEDIT) or (QryCadCidade.State=DSINSERT) then
    begin
      QryCadCidade.Post;
      QryCadCidade.CommitUpdates;
      QryCadCidade.ApplyUpdates;
    end;
  end;

  PageControl1.Pages[01].TabVisible := True;
  PageControl1.Pages[00].TabVisible := True;
  PageControl1.Pages[02].TabVisible := True;
  LDcomponentes(False);
  Screen.Cursor := crDefault;
  Atual_ToolBar(1);

  //Direito a Incluir
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
   Atual_ToolBar(9);
end;


procedure TFrmCadCidade.SB_ANTERIORClick(Sender: TObject);
begin
 QryCadCidade.Prior;
end;

procedure TFrmCadCidade.SB_PROXIMOClick(Sender: TObject);
begin
 QryCadCidade.Next;
end;

procedure TFrmCadCidade.SB_ULTIMOClick(Sender: TObject);
begin
 QryCadCidade.Last;
end;

procedure TFrmCadCidade.SB_PRIMEIROClick(Sender: TObject);
begin
 QryCadCidade.First;
end;

procedure TFrmCadCidade.SB_CANCELClick(Sender: TObject);
begin
  if (QryCadCidade.State in [dsedit,dsinsert]) then
    QryCadCidade.CancelUpdates;

  LDcomponentes(False);
  //Direito a Incluir
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(9);

  //Direito a Editar
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 41;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(10);

  //Direito de Leitura
  QrDireitos.Close;
  QrDireitos.ParamByName('VRECUR').AsInteger   := 4;
  QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QrDireitos.Open;

  If (QrDireitos.RecordCount>0) then
    Atual_ToolBar(1);
end;

procedure TFrmCadCidade.DBLTplogClick(Sender: TObject);
begin
  with QryEstado do
  begin
    close;
    ParamByName('id_pais').AsFloat:= QryCadCidadeID_PAIS.Value;
    open;
  end;
end;

procedure TFrmCadCidade.DBEstadoClick(Sender: TObject);
begin
 If DBEstado.Text <> '' then
  DBReg.Text:= QryEstadoNM_REGIGEOG.Value;
end;

procedure TFrmCadCidade.SB_EXCLUIClick(Sender: TObject);
begin
  if (gi_Filial = 2) or (gi_filial = 8) then
  begin
    Application.MessageBox('Para Edição, Exclusão ou Inclusão, entrar contato em Sorocaba.', PChar(FrmCadCidade.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Exit;
  end;

  if (TabLista.Showing) then
  begin
    Application.MessageBox('Para efetuar o cadastro, acesse a aba DETALHE.', PChar(FrmCadCidade.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Exit;
  end;

  if (TabDetalhes.Showing) then
  begin
    if Application.MessageBox('         Deseja Realmente Excluir esta Informação?         ', PChar(FrmCadCidade.Caption), MB_YESNO + MB_ICONINFORMATION) = IDYES then
    begin
      QryCadCidade.Delete;
      QryCadCidade.ApplyUpdates;
      QryCadCidade.CommitUpdates;
      QryCadCidade.Refresh;
    end;
  end;
  Atual_ToolBar(6);
end;

procedure TFrmCadCidade.TabDetalhesShow(Sender: TObject);
begin
  with QryEstado do
  begin
    close;
    ParamByName('id_pais').AsFloat:=QryCadCidadeID_PAIS.AsFloat;
    open;
  end;
end;

procedure TFrmCadCidade.SB_EDITClick(Sender: TObject);
begin
  if (gi_Filial = 2) or (gi_filial = 8) then
  begin
    Application.MessageBox('Para Edição ou Inclusão, entrar contato em Sorocaba.', PChar(FrmCadCidade.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Exit;
  end;

  if (TabDetalhes.Showing) then
  begin
    QryCadCidade.Edit;
  end;
  Atual_ToolBar(7);
  LDcomponentes(True);
end;

procedure TFrmCadCidade.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGrid ( DBGrid1 , QryCadCidade , Column,  OrdemColuna , Ordem );
  OrdemColuna := Column.FieldName;
  if (OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente') then
    Ordem := 'Crescente'
  else
    Ordem := 'Decrescente';
end;

procedure TFrmCadCidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FrmPrincipal.CadastrodeCidades1.Enabled:= True;
end;

procedure TFrmCadCidade.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

end.


