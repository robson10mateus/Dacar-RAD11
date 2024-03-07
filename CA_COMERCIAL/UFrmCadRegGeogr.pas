unit UFrmCadRegGeogr;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, Mask, DBCtrls, Grids,
  DBGrids, Buttons, ExtCtrls, ComCtrls, Vcl.ToolWin, OraSmart;

type
  TFrmCadRegGeog = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    SB_PRIMEIRO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SB_NOVO: TSpeedButton;
    SB_EXCLUI: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    Sb_Sair: TSpeedButton;
    SB_EDIT: TSpeedButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
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
    TabLista: TTabSheet;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    TabDetalhes: TTabSheet;
    Panel3: TPanel;
    DBNmRegGeog: TDBEdit;
    Label14: TLabel;
    DBCodRegGeog: TDBEdit;
    Label15: TLabel;
    DBSigla: TDBEdit;
    Label3: TLabel;
    Label13: TLabel;
    DBCodPais: TDBEdit;
    BtCenCus: TBitBtn;
    Label6: TLabel;
    DBNmPais: TDBEdit;
    DtSrcRegGeog: TOraDataSource;
    QrDireitos: TOraQuery;
    QryPais: TOraQuery;
    DtSrcPais: TOraDataSource;
    QryPaisID_PAIS: TFloatField;
    QryPaisNM_PAIS: TStringField;
    QryRegGeogr: TSmartQuery;
    QryRegGeogrEMPRESA: TStringField;
    QryRegGeogrFILIAL: TIntegerField;
    QryRegGeogrID_REGIGEOG: TFloatField;
    QryRegGeogrNM_REGIGEOG: TStringField;
    QryRegGeogrSG_REGIGEOG: TStringField;
    QryRegGeogrID_PAIS: TFloatField;
    QryRegGeogrFX_REGIGEOG: TStringField;
    QryRegGeogrNM_PAIS: TStringField;
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    procedure LDcomponentes(LD:boolean);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure SB_EDITClick(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure EdExprChange(Sender: TObject);
    procedure EdExprKeyPress(Sender: TObject; var Key: Char);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure TabCriterioShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtCenCusClick(Sender: TObject);
    procedure DBCodPaisExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  VIDPAIS, NPAIS:string;
    { Public declarations }
  end;

var
  FrmCadRegGeog: TFrmCadRegGeog;

implementation
 uses
  UFrmClientes , Principal, global, UFrmPesqPais, Math;

{$R *.dfm}

procedure TFrmCadRegGeog.SB_PRIMEIROClick(Sender: TObject);
begin
 QryRegGeogr.First;
end;

procedure TFrmCadRegGeog.SB_ANTERIORClick(Sender: TObject);
begin
 QryRegGeogr.Prior;
end;

procedure TFrmCadRegGeog.SB_PROXIMOClick(Sender: TObject);
begin
 QryRegGeogr.Next;
end;

procedure TFrmCadRegGeog.SB_ULTIMOClick(Sender: TObject);
begin
  QryRegGeogr.Last;
end;

procedure TFrmCadRegGeog.Sb_SairClick(Sender: TObject);
begin
 close;
end;

procedure TFrmCadRegGeog.SB_CANCELClick(Sender: TObject);
begin
  if (QryRegGeogr.State in [dsedit,dsinsert]) then
    QryRegGeogr.CancelUpdates;
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

procedure TFrmCadRegGeog.SB_EDITClick(Sender: TObject);
begin
if (gi_Filial = 2) or (gi_filial = 8) then
  begin
  MessageDlg('Para Edição ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
  Screen.Cursor := crDefault;
  Exit;
  end;

if (TabDetalhes.Showing) then
 begin
   QryRegGeogr.Edit;
 end;
  Atual_ToolBar(7);
 LDcomponentes(True);
end;



procedure TFrmCadRegGeog.LDcomponentes(LD:boolean);
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

function TFrmCadRegGeog.Atual_ToolBar(BtOrdem: Integer): string;
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

procedure TFrmCadRegGeog.SB_EXCLUIClick(Sender: TObject);
begin
if (gi_Filial = 2) or (gi_filial = 8) then
  begin
  MessageDlg('Para Edição, Exclusão ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
  Screen.Cursor := crDefault;
  Exit;
  end;

if (TabLista.Showing) then
   begin
    MessageDlg('Para excluir um item, a janela é DETALHE!!!.',mtInformation,[mbOk], 0, mbOk);
    Screen.Cursor := crDefault;
    Exit;
  // end
    end;

    if (TabDetalhes.Showing) then
   begin
   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
     QryRegGeogr.Delete;
     QryRegGeogr.ApplyUpdates;
     QryRegGeogr.CommitUpdates;
     QryRegGeogr.Refresh;
   end

end;
Atual_ToolBar(6);
end;

procedure TFrmCadRegGeog.SB_NOVOClick(Sender: TObject);
begin
if (gi_Filial = 2) or (gi_filial = 8) then
  begin
  MessageDlg('Para Edição ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
  Screen.Cursor := crDefault;
  Exit;
  end;
  
   ActiveControl := Nil;
   LDcomponentes(True);
   if (TabLista.Showing) or (TabDetalhes.Showing) then
    begin
    QryRegGeogr.open;
    QryRegGeogr.Insert;
    QryRegGeogrEMPRESA.Value:=gs_Empresa;
    QryRegGeogrFILIAL.Value:=gi_Filial;
    QryRegGeogrFX_REGIGEOG.Value:='N';
    PageControl1.Pages[01].TabVisible := False;
    PageControl1.Pages[00].TabVisible := False;
    PageControl1.Pages[02].TabVisible := True;
    end;
     Atual_ToolBar(5);
end;

procedure TFrmCadRegGeog.SB_CONFIRMAClick(Sender: TObject);
begin
Screen.Cursor := crSQLWait;


  if (TabDetalhes.Showing)  then
  begin
  If (DBSigla.Text ='') or (DBNmRegGeog.text ='') then
   begin
      MessageDlg('Gravação Cancelada! Falta campo a ser preenchido.',mtInformation,[mbOk], 0, mbOk);
      Screen.Cursor := crDefault;
      Exit;
   end;
   if (QryRegGeogr.State=DSEDIT) or (QryRegGeogr.State=DSINSERT) then
   begin
    QryRegGeogr.Post;
    QryRegGeogr.CommitUpdates;
    QryRegGeogr.ApplyUpdates;
   end

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

procedure TFrmCadRegGeog.EdExprChange(Sender: TObject);
begin
 BtIncluir.Enabled:=true;
end;

procedure TFrmCadRegGeog.EdExprKeyPress(Sender: TObject; var Key: Char);
begin
 Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadRegGeog.BtIncluirClick(Sender: TObject);
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

    //VERIFICAR SE COLOCA PARENTESES ANTES DO OR
    If RGeou.ItemIndex=0  then
       Vre:= Vre + '(' ;

   //Alterar nomes



     Case LCampos.itemindex of
        0:Vre:=Vre + '  regiao_geografica.id_pais  ';
        1:Vre:=Vre + '  regiao_geografica.id_regigeog ';
        2:Vre:=Vre + '  UPPER(regiao_geografica.nm_pais) ';
        3:Vre:=Vre + '  UPPER(regiao_geografica.nm_regigeog) ';
        4:Vre:=Vre + '  UPPER(regiao_geografica.sg_regigeog) ';

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

procedure TFrmCadRegGeog.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmCadRegGeog.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin

// TRY
 Screen.Cursor := crSQLWait;
 QryRegGeogr.Close;

 WITH QryRegGeogr.SQL DO
  BEGIN
      Clear;

   Add('      SELECT                                                      ');
   Add('   regiao_geografica.empresa,                                     ');
   Add('   regiao_geografica.filial,                                      ');
   Add('   regiao_geografica.id_regigeog,                                 ');
   Add('   regiao_geografica.nm_regigeog,                                ');
   Add('   regiao_geografica.sg_regigeog,                                 ');
   Add('   regiao_geografica.id_pais,                                     ');
   Add('   regiao_geografica.fx_regigeog,                                 ');
   Add('   pais.nm_pais                                                   ');                                       
   Add('   FROM                                                           ');
   Add('   regiao_geografica,                                             ');
   Add('   pais                                                           ');
   Add('   WHERE                                                          ');
   Add('   regiao_geografica.id_pais = pais.id_pais                       ');


 XTM:=MResul.Lines.Count;
 If XTM >0 then
 begin
   QryRegGeogr.SQL.Add(' And ');
   QryRegGeogr.SQL.Add(MResul.Text);
 end
 else
 begin
   Screen.Cursor := crDefault;
   If MessageDlg('Exibir listagem sem filtro?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
     exit
   Else
     Screen.Cursor := crSQLWait;
 end;
 QryRegGeogr.SQL.Add('order by regiao_geografica.nm_regigeog');
 QryRegGeogr.Open;

// QryRegInt.close;
// QryRegInt.open;



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

procedure TFrmCadRegGeog.TabCriterioShow(Sender: TObject);
begin
  CBCond.Enabled := True;
  EdExpr.Enabled := True;
  BtLimpar.Enabled := True;
  BtAtivar.Enabled := True;
 // BPESQ.Enabled := True;
  RGeou.Enabled := True;
end;

procedure TFrmCadRegGeog.FormShow(Sender: TObject);
var
  Temp: TComponent;
  li_Loop : Integer;
begin
 if (LCAMPOS.Items.Count=0) then
 begin
   With LCampos.Items do
   begin
     Add('Código da País ');
     Add('Código Região Geográfica ');
     Add('Nome do País');
     Add('Nome da Região Geográfica');
     Add('Sigla Região Geográfica');

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
//end;
end;
procedure TFrmCadRegGeog.BtCenCusClick(Sender: TObject);
begin
   Cria_FrmPesqPais(VIDPAIS, NPAIS);
   DBCodPais.text:= VIDPAIS;
   DBNmPais.Text:= NPAIS;
end;

procedure TFrmCadRegGeog.DBCodPaisExit(Sender: TObject);
begin
If (QryRegGeogr.State in [dsedit,dsinsert]) and (DBCodPais.Text<>'')  then
 begin
  QryPais.Close;
  QryPais.ParamByName('VPAIS').ASFLOAT:= STRTOFLOAT(DBCodPais.Text);
  QryPais.Open;
  QryRegGeogrID_PAIS.Value := QryPais.FieldByname('ID_PAIS').AsFloat;
  QryRegGeogrNM_PAIS.Value := QryPais.FieldByname('NM_PAIS').AsString;
end;
end;

procedure TFrmCadRegGeog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmCadRegGeog:=nil;
  FrmPrincipal.CadastrodeRegioGeogrfica1.Enabled:= True;
  Action:=caFree;
end;

end.
