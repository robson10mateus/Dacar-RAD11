unit UFrmCadEstado;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ExtCtrls, ComCtrls, DB, Ora, MemDS, DBAccess, Vcl.ToolWin, OraSmart;

type
  TFrmCadEstado = class(TForm)
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
    Panel3: TPanel;
    Label13: TLabel;
    DBNmEstado: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    DBCodPais: TDBEdit;
    DBNmPais: TDBEdit;
    DBEst: TDBEdit;
    DBAliq: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    BtCenCus: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    DBAliqN: TDBEdit;
    DtSrcCadEstado: TOraDataSource;
    DBReg: TDBLookupComboBox;
    QryRegiaoGeog: TOraQuery;
    DtSrcRegiaoGeog: TOraDataSource;
    QryRegiaoGeogID_REGIGEOG: TFloatField;
    QryRegiaoGeogNM_REGIGEOG: TStringField;
    QrDireitos: TOraQuery;
    QryPais: TOraQuery;
    DtSrcPais: TOraDataSource;
    QryPaisID_PAIS: TFloatField;
    QryPaisNM_PAIS: TStringField;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    QryCadEstado: TSmartQuery;
    QryCadEstadoEMPRESA: TStringField;
    QryCadEstadoFILIAL: TIntegerField;
    QryCadEstadoID_ESTADO: TFloatField;
    QryCadEstadoNM_ESTADO: TStringField;
    QryCadEstadoID_IBGE: TIntegerField;
    QryCadEstadoSG_ESTADO: TStringField;
    QryCadEstadoPC_ICMSCONTESTA: TFloatField;
    QryCadEstadoPC_ICMSNAOCONTESTA: TFloatField;
    QryCadEstadoID_PAIS: TFloatField;
    QryCadEstadoID_REGIGEOG: TFloatField;
    QryCadEstadoFX_ESTADO: TStringField;
    QryCadEstadoNM_REGIGEOG: TStringField;
    QryCadEstadoNM_PAIS: TStringField;
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    procedure LDcomponentes(LD:boolean);
    procedure BtCenCusClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdExprChange(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure EdExprKeyPress(Sender: TObject; var Key: Char);
    procedure TabCriterioShow(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure TabDetalhesShow(Sender: TObject);
    procedure SB_EDITClick(Sender: TObject);
    procedure DBCodPaisExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  VIDPAIS, NPAIS:string;
    { Public declarations }
  end;

var
  FrmCadEstado: TFrmCadEstado;

implementation

uses
  UFrmClientes , Principal, global, UFrmPesqPais, Math;

{$R *.dfm}

procedure TFrmCadEstado.BtCenCusClick(Sender: TObject);
begin
   Cria_FrmPesqPais(VIDPAIS, NPAIS);
   DBCodPais.text:= VIDPAIS;
   DBNmPais.Text:= NPAIS;
   DBReg.SetFocus;
   with QryRegiaoGeog do
  begin
    close;
    ParamByName('id_pais').AsFloat:= StrToFloat(VIDPAIS);
    open;
  end;
end;

procedure TFrmCadEstado.BtIncluirClick(Sender: TObject);
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
        0:Vre:=Vre + '  pais.id_pais  ';
        1:Vre:=Vre + '  estado.id_regigeog ';
        2:Vre:=Vre + '  UPPER(pais.nm_pais) ';
        3:Vre:=Vre + '  UPPER(regiao_geografica.nm_regigeog) ';
        4:Vre:=Vre + '  UPPER(estado.sg_estado) ';

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

procedure TFrmCadEstado.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmCadEstado.LDcomponentes(LD:boolean);
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

function TFrmCadEstado.Atual_ToolBar(BtOrdem: Integer): string;
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

procedure TFrmCadEstado.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin

// TRY
 Screen.Cursor := crSQLWait;
 QryCadEstado.Close;

 WITH QryCadEstado.SQL DO
  BEGIN
      Clear;

   Add('    SELECT                                      ');
   Add('     estado.empresa,                            ');
   Add('     estado.filial,                             ');
   Add('     estado.id_estado,                          ');
   Add('     estado.ID_IBGE,                            ');
   Add('     estado.nm_estado,                          ');
   Add('     estado.sg_estado,                          ');
   Add('     estado.pc_icmscontesta,                    ');
   Add('     estado.pc_icmsnaocontesta,                 ');
   Add('     estado.id_pais,                            ');
   Add('     estado.id_regigeog,                        ');
   Add('     estado.fx_estado,                          ');
   Add('     regiao_geografica.nm_regigeog,             ');
   Add('     pais.nm_pais                               ');
   Add('    FROM                                        ');
   Add('     estado,                                    ');
   Add('     pais,                                      ');
   Add('     regiao_geografica                          ');
   Add('    WHERE                                       ');
   Add('     pais.id_pais(+) = estado.id_pais AND       ');
   Add('     regiao_geografica.id_regigeog(+) = estado.id_regigeog     ');


 XTM:=MResul.Lines.Count;
 If XTM >0 then
 begin
   QryCadEstado.SQL.Add(' And ');
   QryCadEstado.SQL.Add(MResul.Text);
 end
 else
 begin
   Screen.Cursor := crDefault;
   If MessageDlg('Exibir listagem sem filtro?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
     exit
   Else
     Screen.Cursor := crSQLWait;
 end;
 QryCadEstado.SQL.Add('order by estado.nm_estado');
 QryCadEstado.Open;

 QryRegiaoGeog.close;
 QryRegiaoGeog.open;



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
end;

procedure TFrmCadEstado.FormCreate(Sender: TObject);
begin
  FrmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmCadEstado.FormShow(Sender: TObject);
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
     Add('Nome País');
     Add('Nome Região Geográfica');
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
//end;
end;

procedure TFrmCadEstado.EdExprChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmCadEstado.SB_PRIMEIROClick(Sender: TObject);
begin
  QryCadEstado.First;
end;

procedure TFrmCadEstado.SB_ANTERIORClick(Sender: TObject);
begin
  QryCadEstado.Prior;
end;

procedure TFrmCadEstado.SB_PROXIMOClick(Sender: TObject);
begin
 QryCadEstado.Next;
end;

procedure TFrmCadEstado.SB_ULTIMOClick(Sender: TObject);
begin
  QryCadEstado.Last;
end;

procedure TFrmCadEstado.SB_CANCELClick(Sender: TObject);
begin
 if (QryCadEstado.State in [dsedit,dsinsert]) then
    QryCadEstado.CancelUpdates;
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

procedure TFrmCadEstado.SB_EXCLUIClick(Sender: TObject);
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
     QryCadEstado.Delete;
     QryCadEstado.ApplyUpdates;
     QryCadEstado.CommitUpdates;
     QryCadEstado.Refresh;
   end

end;
Atual_ToolBar(6);
end;

procedure TFrmCadEstado.SB_NOVOClick(Sender: TObject);
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
    QryCadEstado.open;
    QryCadEstado.Insert;
    QryCadEstadoEMPRESA.Value:=gs_Empresa;
    QryCadEstadoFILIAL.Value:=gi_Filial;
    QryCadEstadoFX_ESTADO.Value:='N';
    PageControl1.Pages[01].TabVisible := False;
    PageControl1.Pages[00].TabVisible := False;
    PageControl1.Pages[02].TabVisible := True;
    end;
     Atual_ToolBar(5);
end;



procedure TFrmCadEstado.Sb_SairClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmCadEstado.EdExprKeyPress(Sender: TObject; var Key: Char);
begin
 Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadEstado.TabCriterioShow(Sender: TObject);
begin
  CBCond.Enabled := True;
  EdExpr.Enabled := True;
  BtLimpar.Enabled := True;
  BtAtivar.Enabled := True;
 // BPESQ.Enabled := True;
  RGeou.Enabled := True;
end;

procedure TFrmCadEstado.SB_CONFIRMAClick(Sender: TObject);
begin
Screen.Cursor := crSQLWait;


  if (TabDetalhes.Showing)  then
  begin
  If (DBNmEstado.Text ='') or (DBEst.text ='') or
     (DBCodPais.Text ='')  or (DBNmPais.Text ='')
      then
   begin
      MessageDlg('Gravação Cancelada! Falta campo a ser preenchido.',mtInformation,[mbOk], 0, mbOk);
      Screen.Cursor := crDefault;
      Exit;
    end;
   if (QryCadEstado.State=DSEDIT) or (QryCadEstado.State=DSINSERT) then
   begin
    QryCadEstado.Post;
    QryCadEstado.CommitUpdates;
    QryCadEstado.ApplyUpdates;


  end

 end;
  PageControl1.Pages[01].TabVisible := True;
  PageControl1.Pages[00].TabVisible := True;
  PageControl1.Pages[02].TabVisible := True;
  LDcomponentes(False);
  Screen.Cursor := crDefault;
  //Direito a Incluir
 QrDireitos.Close;
 QrDireitos.ParamByName('VRECUR').AsInteger   := 5;
 QrDireitos.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
 QrDireitos.Open;
 If (QrDireitos.RecordCount>0) then
   Atual_ToolBar(9);

 end;

procedure TFrmCadEstado.TabDetalhesShow(Sender: TObject);
begin
   with QryRegiaoGeog do
  begin
    close;
    ParamByName('id_pais').AsFloat:= QryCadEstadoID_PAIS.AsFloat;;
    open;
  end;
end;

procedure TFrmCadEstado.SB_EDITClick(Sender: TObject);
begin
if (gi_Filial = 2) or (gi_filial = 8) then
  begin
  MessageDlg('Para Edição ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
  Screen.Cursor := crDefault;
  Exit;
  end;
if (TabDetalhes.Showing) then
 begin
   QryCadEstado.Edit;
 end;
  Atual_ToolBar(7);
 LDcomponentes(True);
end;

procedure TFrmCadEstado.DBCodPaisExit(Sender: TObject);
begin
If (QryCadEstado.State in [dsedit,dsinsert]) and (DBCodPais.Text<>'')  then
 begin
  QryPais.Close;
  QryPais.ParamByName('VPAIS').ASFLOAT:= STRTOFLOAT(DBCodPais.Text);
  QryPais.Open;
  QryCadEstadoID_PAIS.Value := QryPais.FieldByname('ID_PAIS').AsFloat;
  QryCadEstadoNM_PAIS.Value := QryPais.FieldByname('NM_PAIS').AsString;
end;
end;

procedure TFrmCadEstado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmCadEstado := nil;
  FrmPrincipal.CadastrodeEstados1.Enabled:= True;
  Action := caFree;
end;

end.
