unit UFrmCadRegeSubLog;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, Buttons,
  ExtCtrls, ComCtrls, DB, Ora, MemDS, DBAccess, Vcl.ToolWin;

type
  TFrmCadRegeSubLog = class(TForm)
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
    DBCod: TDBEdit;
    Label15: TLabel;
    Label3: TLabel;
    DBRadioGroup7: TDBRadioGroup;
    QrySubeReg: TOraQuery;
    DtSrcSubeReg: TOraDataSource;
    QrySubeRegEMPRESA: TStringField;
    QrySubeRegFILIAL: TIntegerField;
    QrySubeRegID_REGISUBRLOGI: TFloatField;
    QrySubeRegID_REGILOGI: TFloatField;
    QrySubeRegID_SUBRLOGI: TFloatField;
    QrySubeRegFL_RELAREGISUBRLOGI: TStringField;
    QrySubeRegFX_REGISUBRLOGI: TStringField;
    QrDireitos: TOraQuery;
    DBCodRegLog: TDBEdit;
    DBNmRegLog: TDBEdit;
    Label4: TLabel;
    DBCodIRegLog: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBCodSubRegLog: TDBEdit;
    Label7: TLabel;
    DBNmSubRegLog: TDBEdit;
    Label8: TLabel;
    DBCodISubRegLog: TDBEdit;
    QrySubeRegNM_SUBRLOGI: TStringField;
    QrySubeRegID_INTESUBRLOGI: TStringField;
    QrySubeRegNM_REGILOGI: TStringField;
    QrySubeRegID_INTEREGILOGI: TStringField;
    BtCenCus: TBitBtn;
    BitBtn1: TBitBtn;
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    procedure LDcomponentes(LD:boolean);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure EdExprChange(Sender: TObject);
    procedure EdExprKeyPress(Sender: TObject; var Key: Char);
    procedure SB_CANCELClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure SB_EDITClick(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtCenCusClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TabCriterioShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    OrdemColuna , Ordem : string ;
  public
   VReg, VRegI, NReg: string;
    { Public declarations }
  end;

var
  FrmCadRegeSubLog: TFrmCadRegeSubLog;

implementation
uses UFrmClientes , Principal, global, UFrmPesqRegLog, UFrmPesqRegSubLog, Math;

{$R *.dfm}

procedure TFrmCadRegeSubLog.SB_PRIMEIROClick(Sender: TObject);
begin
  QrySubeReg.First;
end;

procedure TFrmCadRegeSubLog.SB_ANTERIORClick(Sender: TObject);
begin
  QrySubeReg.Prior;
end;

procedure TFrmCadRegeSubLog.SB_PROXIMOClick(Sender: TObject);
begin
  QrySubeReg.Next;
end;

procedure TFrmCadRegeSubLog.SB_ULTIMOClick(Sender: TObject);
begin
  QrySubeReg.Last;
end;

procedure TFrmCadRegeSubLog.Sb_SairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCadRegeSubLog.EdExprChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmCadRegeSubLog.EdExprKeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;



procedure TFrmCadRegeSubLog.LDcomponentes(LD:boolean);
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

function TFrmCadRegeSubLog.Atual_ToolBar(BtOrdem: Integer): string;
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

procedure TFrmCadRegeSubLog.SB_CANCELClick(Sender: TObject);
begin
  if (QrySubeReg.State in [dsedit,dsinsert]) then
    QrySubeReg.CancelUpdates;
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

procedure TFrmCadRegeSubLog.SB_CONFIRMAClick(Sender: TObject);
begin
Screen.Cursor := crSQLWait;

  if (TabDetalhes.Showing)  then
  begin
  If (DBNmRegLog.Text ='') or (DBNmSubRegLog.Text ='')
      then
   begin
      MessageDlg('Gravação Cancelada! Falta campo a ser preenchido.',mtInformation,[mbOk], 0, mbOk);
      Screen.Cursor := crDefault;
      Exit;
    end;
   if (QrySubeReg.State=DSEDIT) or (QrySubeReg.State=DSINSERT) then
   begin
    QrySubeReg.Post;
    QrySubeReg.CommitUpdates;
    QrySubeReg.ApplyUpdates;


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

procedure TFrmCadRegeSubLog.SB_EDITClick(Sender: TObject);
begin
if (gi_Filial = 2) or (gi_filial = 8) then
  begin
  MessageDlg('Para Edição ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
  Screen.Cursor := crDefault;
  Exit;
  end;

if (TabDetalhes.Showing) then
 begin
   QrySubeReg.Edit;
 end;
  Atual_ToolBar(7);
 LDcomponentes(True);
end;

procedure TFrmCadRegeSubLog.SB_EXCLUIClick(Sender: TObject);
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
     QrySubeReg.Delete;
     QrySubeReg.ApplyUpdates;
     QrySubeReg.CommitUpdates;
     QrySubeReg.Refresh;
   end

end;
Atual_ToolBar(6);
end;

procedure TFrmCadRegeSubLog.SB_NOVOClick(Sender: TObject);
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
    QrySubeReg.open;
    QrySubeReg.Insert;
    QrySubeRegEMPRESA.Value:=gs_Empresa;
    QrySubeRegFILIAL.Value:=gi_Filial;
    QrySubeRegFX_REGISUBRLOGI.Value:='N';
    QrySubeRegFL_RELAREGISUBRLOGI.Value:='P';
    PageControl1.Pages[01].TabVisible := False;
    PageControl1.Pages[00].TabVisible := False;
    PageControl1.Pages[02].TabVisible := True;
    end;
     Atual_ToolBar(5);
end;

procedure TFrmCadRegeSubLog.BtIncluirClick(Sender: TObject);
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
        0:Vre:=Vre + '  logistica_regiao_subregiao.id_regilogi  ';
        1:Vre:=Vre + '  logistica_regiao_subregiao.id_subrlogi   ';
        2:Vre:=Vre + '  logistica_regiao_subregiao.id_regisubrlogi ';
        3:Vre:=Vre + '  UPPER(logistica_subregiao.nm_subrlogi)    ';
        4:Vre:=Vre + '  UPPER(logistica_regiao.nm_regilogi) ';


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
        3:Vre:= Vre + '''';
        4:Vre:= Vre + '''';


    end;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

      Vre:=Vre + EdExpr.text;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

     Case LCampos.itemindex of
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

procedure TFrmCadRegeSubLog.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmCadRegeSubLog.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin

// TRY
 Screen.Cursor := crSQLWait;
 QrySubeReg.Close;

 WITH QrySubeReg.SQL DO
  BEGIN
      Clear;

     Add('    SELECT                                           ');
     Add('    logistica_regiao_subregiao.empresa,              ');
     Add('    logistica_regiao_subregiao.filial,               ');
     Add('    logistica_regiao_subregiao.id_regisubrlogi,      ');
     Add('    logistica_regiao_subregiao.id_regilogi,          ');
     Add('    logistica_regiao_subregiao.id_subrlogi,          ');
     Add('    logistica_regiao_subregiao.fl_relaregisubrlogi,  ');
     Add('    logistica_regiao_subregiao.fx_regisubrlogi,      ');
     Add('    logistica_subregiao.nm_subrlogi,                 ');
     Add('    logistica_subregiao.id_intesubrlogi,             ');
     Add('    logistica_regiao.nm_regilogi,                    ');
     Add('    logistica_regiao.id_interegilogi                 ');
     Add('    FROM                                             ');
     Add('    logistica_regiao_subregiao,                      ');
     Add('    logistica_regiao,                                ');
     Add('    logistica_subregiao                              ');
     Add('    WHERE                                            ');
     Add('    logistica_regiao_subregiao.id_regilogi = logistica_regiao.id_regilogi AND            ');
     Add('    logistica_regiao_subregiao.id_subrlogi = logistica_subregiao.id_subrlogi             ');



 XTM:=MResul.Lines.Count;
 If XTM >0 then
 begin
   QrySubeReg.SQL.Add(' AND ');
   QrySubeReg.SQL.Add(MResul.Text);
 end
 else
 begin
   Screen.Cursor := crDefault;
   If MessageDlg('Exibir listagem sem filtro?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
     exit
   Else
     Screen.Cursor := crSQLWait;
 end;
  QrySubeReg.SQL.Add('order by logistica_regiao_subregiao.id_regisubrlogi');
  QrySubeReg.Open;



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

procedure TFrmCadRegeSubLog.FormShow(Sender: TObject);
var
  Temp: TComponent;
  li_Loop : Integer;
begin
 if (LCAMPOS.Items.Count=0) then
 begin
   With LCampos.Items do
   begin
     Add('Cód. da Região Logística');
     Add('Cód. da Subregião Logística');
     Add('Cód. da Região X Subregião Logística');
     Add('Nome da Região Logística');
     Add('Nome da Subregião Logística');
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

procedure TFrmCadRegeSubLog.BtCenCusClick(Sender: TObject);
begin
  Cria_FrmPesqReg(VReg, VRegI, NReg);
  DBCodRegLog.text:= VReg;
  DBCodIRegLog.Text:= VRegI;
  DBNmRegLog.Text := NReg;
  DBNmRegLog.SetFocus;
 // Qry_bairro.Close;
 // Qry_bairro.ParamByName('id_cidade').AsFloat := StrToFloat(VCid);
 // Qry_bairro.Open;
end;

procedure TFrmCadRegeSubLog.BitBtn1Click(Sender: TObject);
begin
  Cria_FrmPesqRegSubLog(VReg, VRegI, NReg);
  DBCodSubRegLog.text:= VReg;
  DBCodISubRegLog.Text:= VRegI;
  DBNmSubRegLog.Text := NReg;
  DBNmSubRegLog.SetFocus;
end;

procedure TFrmCadRegeSubLog.TabCriterioShow(Sender: TObject);
begin
  CBCond.Enabled := True;
  EdExpr.Enabled := True;
  BtLimpar.Enabled := True;
  BtAtivar.Enabled := True;
 // BPESQ.Enabled := True;
  RGeou.Enabled := True;
end;

procedure TFrmCadRegeSubLog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.CadastrodeRegiesXSubregiesLogstica1.Enabled:= True;
end;

procedure TFrmCadRegeSubLog.DBGrid1TitleClick(Column: TColumn);
begin
     OrdenarGrid ( DBGrid1 , QrySubeReg , Column,  OrdemColuna , Ordem );
     OrdemColuna := Column.FieldName;
     if (OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente') then
        Ordem := 'Crescente'
     else
        Ordem := 'Decrescente';
end;

end.

