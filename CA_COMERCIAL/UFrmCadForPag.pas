unit UFrmCadForPag;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, ComCtrls, Buttons, Mask,
  Grids, DBGrids, DB, Ora, MemDS, DBAccess, Vcl.ToolWin, OraSmart;

type
  TFrmCadForPag = class(TForm)
    Panel1: TPanel;
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
    DBNmForPag: TDBEdit;
    Label14: TLabel;
    DBCodForPag: TDBEdit;
    Label15: TLabel;
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
    QryCadFormPagPar: TOraQuery;
    DtSrcCadFormPagPar: TOraDataSource;
    DtSrcCadForPag: TOraDataSource;
    QrDireitos: TOraQuery;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    DBPcParForPag: TDBEdit;
    Label5: TLabel;
    Label7: TLabel;
    TabParcela: TTabSheet;
    DBGrid2: TDBGrid;
    DBNrParForPagPar: TDBEdit;
    Label8: TLabel;
    DBPcParForPagPar: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    QryCadFormPagParEMPRESA: TStringField;
    QryCadFormPagParFILIAL: TIntegerField;
    QryCadFormPagParID_PARCFORMPAGA: TFloatField;
    QryCadFormPagParID_FORMPAGA: TFloatField;
    QryCadFormPagParNR_PARCFORMPAGA: TStringField;
    QryCadFormPagParPC_PARCFORMPAGA: TFloatField;
    QryCadFormPagParQN_DIASPARCFORMPAGA: TIntegerField;
    QryCadFormPagParFX_PARCFORMPAGA: TStringField;
    DBNrParForPag: TDBComboBox;
    DBDiaParForPagPar: TDBComboBox;
    DBComboBox1: TDBComboBox;
    lblFormaPagtoNfe: TLabel;
    cbxFormaPagtoNfe: TDBComboBox;
    QryCadForPag: TSmartQuery;
    QryCadForPagEMPRESA: TStringField;
    QryCadForPagFILIAL: TIntegerField;
    QryCadForPagID_FORMPAGA: TFloatField;
    QryCadForPagNM_FORMPAGA: TStringField;
    QryCadForPagQN_PARCFORMPAGA: TIntegerField;
    QryCadForPagQN_DIASTOLEFORMPAGA: TIntegerField;
    QryCadForPagPC_TOLEVALOFORMPAGA: TFloatField;
    QryCadForPagFL_CENTPRIMFORMPAGA: TStringField;
    QryCadForPagFL_FORMPAGA: TStringField;
    QryCadForPagFX_FORMPAGA: TStringField;
    QryCadForPagQN_DIAS: TIntegerField;
    QryCadForPagNU_FORMA_PAGTO_NFE: TStringField;
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    procedure LDcomponentes(LD:boolean);
    procedure Sb_SairClick(Sender: TObject);
    procedure EdExprChange(Sender: TObject);
    procedure EdExprKeyPress(Sender: TObject; var Key: Char);
    procedure TabCriterioShow(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure SB_EDITClick(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
   Cont: integer;
  end;

var
  FrmCadForPag: TFrmCadForPag;

implementation
  uses
  Principal, global, Math;

{$R *.dfm}

procedure TFrmCadForPag.Sb_SairClick(Sender: TObject);
begin
 close
end;

procedure TFrmCadForPag.EdExprChange(Sender: TObject);
begin
 BtIncluir.Enabled:=true;
end;

procedure TFrmCadForPag.EdExprKeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadForPag.TabCriterioShow(Sender: TObject);
begin
  CBCond.Enabled := True;
  EdExpr.Enabled := True;
  BtLimpar.Enabled := True;
  BtAtivar.Enabled := True;
 // BPESQ.Enabled := True;
  RGeou.Enabled := True;
end;

procedure TFrmCadForPag.SB_PRIMEIROClick(Sender: TObject);
begin
 QryCadForPag.First;
end;

procedure TFrmCadForPag.SB_ANTERIORClick(Sender: TObject);
begin
 QryCadForPag.Prior;
end;

procedure TFrmCadForPag.SB_PROXIMOClick(Sender: TObject);
begin
 QryCadForPag.Next;
end;

procedure TFrmCadForPag.SB_ULTIMOClick(Sender: TObject);
begin
  QryCadForPag.Last;
end;

procedure TFrmCadForPag.SB_CANCELClick(Sender: TObject);
begin
 if (QryCadForPag.State in [dsedit,dsinsert]) then
    QryCadForPag.CancelUpdates;
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

procedure TFrmCadForPag.LDcomponentes(LD:boolean);
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
   if (Temp is TDBComboBox) then
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

function TFrmCadForPag.Atual_ToolBar(BtOrdem: Integer): string;
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


procedure TFrmCadForPag.SB_EXCLUIClick(Sender: TObject);
begin
if (gi_Filial = 2) or (gi_filial = 8) then
  begin
  MessageDlg('Para Edição, Exlusão ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
  Screen.Cursor := crDefault;
  Exit;
  end;


 if (TabLista.Showing) then
   begin
    MessageDlg('Para excluir um item, a janela é DETALHE!!!.',mtInformation,[mbOk], 0, mbOk);
    Screen.Cursor := crDefault;
    Exit;
   end;

  if (TabDetalhes.Showing) then
   begin
   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
     QryCadForPag.Delete;
     QryCadForPag.ApplyUpdates;
     QryCadForPag.CommitUpdates;
     QryCadForPag.Refresh;
    end;
   end;
   if (TabParcela.Showing) then
   begin
   If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
     QryCadFormPagPar.Delete;
     QryCadFormPagPar.ApplyUpdates;
     QryCadFormPagPar.CommitUpdates;
     QryCadFormPagPar.Refresh;
    end;
   //end;

end;
Atual_ToolBar(6);
end;

procedure TFrmCadForPag.SB_EDITClick(Sender: TObject);
begin
if (gi_Filial = 2) or (gi_filial = 8) then
  begin
  MessageDlg('Para Edição ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
  Screen.Cursor := crDefault;
  Exit;
  end;
if (TabDetalhes.Showing) then
 begin
   QryCadForPag.Edit;
 end;
  Atual_ToolBar(7);
 LDcomponentes(True);
end;

procedure TFrmCadForPag.SB_NOVOClick(Sender: TObject);
begin
if (gi_Filial = 2) or (gi_filial = 8) then
  begin
  MessageDlg('Para Edição ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
  Screen.Cursor := crDefault;
  Exit;
  end;

   ActiveControl := Nil;
   LDcomponentes(True);
   if (TabDetalhes.Showing) then
    begin
    QryCadForPag.open;
    QryCadForPag.Insert;
    QryCadForPagEMPRESA.Value:=gs_Empresa;
    QryCadForPagFILIAL.Value:=gi_Filial;
    QryCadForPagFX_FORMPAGA.Value:='N';
    QryCadForPagFL_FORMPAGA.Value:='LB';
    QryCadForPagQN_PARCFORMPAGA.Value:=1;
    QryCadForPagFL_CENTPRIMFORMPAGA.Value:='N';
    PageControl1.Pages[01].TabVisible := False;
    PageControl1.Pages[00].TabVisible := False;
    PageControl1.Pages[02].TabVisible := True;
    PageControl1.Pages[03].TabVisible := false;
    end
    else if (TabParcela.Showing) then
     begin
     cont:=1;
     while cont <= QryCadForPagQN_PARCFORMPAGA.Value do
     begin
     QryCadFormPagPar.open;
     QryCadFormPagPar.Append;
     QryCadFormPagParEMPRESA.Value:=gs_Empresa;
     QryCadFormPagParFILIAL.Value:=gi_Filial;
     QryCadFormPagParNR_PARCFORMPAGA.Value:= FloatToStr(cont);
     QryCadFormPagParFX_PARCFORMPAGA.Value:='N';
     PageControl1.Pages[01].TabVisible := False;
     PageControl1.Pages[00].TabVisible := False;
     PageControl1.Pages[02].TabVisible := True;
     PageControl1.Pages[03].TabVisible := True;
     cont:=cont + 1;
     end;
     end
   else if (TabLista.Showing) then
   begin
    MessageDlg('Para cadastro a janela é DETALHE!!!.',mtInformation,[mbOk], 0, mbOk);
    Screen.Cursor := crDefault;
    Exit;
  // end
    end;
     Atual_ToolBar(5);
end;

procedure TFrmCadForPag.SB_CONFIRMAClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;

  if (TabDetalhes.Showing)  then
  begin
    If (DBNmForPag.Text ='') or (DBNrParForPag.text ='') or (cbxFormaPagtoNfe.Text ='')then
    begin
      MessageDlg('Gravação Cancelada! Falta campo a ser preenchido.',mtInformation,[mbOk], 0, mbOk);
      Screen.Cursor := crDefault;
      Exit;
    end;
    if (QryCadForPag.State=DSEDIT) or (QryCadForPag.State=DSINSERT) then
    begin
      QryCadForPag.Post;
      QryCadForPag.CommitUpdates;
      QryCadForPag.ApplyUpdates;
      PageControl1.Pages[3].TabVisible := true;
    end;
  end;

  if (TabParcela.Showing)  then
  begin
    If (DBPcParForPagPar.Text ='') or (DBNrParForPagPar.text ='') then
    begin
      MessageDlg('Gravação Cancelada! Falta campo a ser preenchido.',mtInformation,[mbOk], 0, mbOk);
      Screen.Cursor := crDefault;
      Exit;
    end;
    if (QryCadFormPagPar.State=DSEDIT) or (QryCadFormPagPar.State=DSINSERT) then
    begin
      QryCadFormPagPar.Post;
      QryCadFormPagPar.CommitUpdates;
      QryCadFormPagPar.ApplyUpdates;
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


procedure TFrmCadForPag.FormShow(Sender: TObject);
var
  Temp: TComponent;
  li_Loop : Integer;
begin
     FrmPrincipal.TrocaNomeSequence(Self);

     if (LCAMPOS.Items.Count=0) then
     begin
       With LCampos.Items do
       begin
         Add('Cód. Forma de Pagamento ');
         Add('Desc. Forma de Pagamento');


       end;
     end;

     PageControl1.Pages[1].TabVisible:= False;
     PageControl1.Pages[2].TabVisible:= False;
     PageControl1.Pages[3].TabVisible:= False;

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

procedure TFrmCadForPag.BtIncluirClick(Sender: TObject);
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
        0:Vre:=Vre + '  forma_pagamento.id_formpaga  ';
        1:Vre:=Vre + '  UPPER(forma_pagamento.nm_formpaga) ';

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


    end;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

      Vre:=Vre + EdExpr.text;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

     Case LCampos.itemindex of
         1:Vre:= Vre + '''';


     end;

     Vre:=Vre+')';

     MResul.Lines.Add(Vre);

     EdExpr.Text :='';
     BtIncluir.Enabled :=false;

   end;

   BtAtivar.SetFocus;
end;

procedure TFrmCadForPag.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmCadForPag.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin

// TRY
 Screen.Cursor := crSQLWait;
 QryCadForPag.Close;

 WITH QryCadForPag.SQL DO
  BEGIN
      Clear;
   Add('   SELECT   distinct                             ');
   Add('    forma_pagamento.empresa,                     ');
   Add('    forma_pagamento.filial,                      ');
   Add('    forma_pagamento.id_formpaga,                 ');
   Add('    forma_pagamento.nm_formpaga,                 ');
   Add('    forma_pagamento.qn_parcformpaga,             ');
   Add('    forma_pagamento.qn_diastoleformpaga,         ');
   Add('    forma_pagamento.pc_tolevaloformpaga,         ');
   Add('    forma_pagamento.fl_centprimformpaga,         ');
   Add('    forma_pagamento.fl_formpaga,                 ');
   Add('    forma_pagamento.fx_formpaga,                 ');
   Add('    forma_pagamento.qn_dias,                     ');
   Add('    forma_pagamento.NU_FORMA_PAGTO_NFE           ');
   Add('   FROM                                          ');
   Add('    forma_pagamento,                             ');
   Add('    forma_pagamento_parcela                      ');
   Add('   WHERE                                         ');
   Add('    forma_pagamento.id_formpaga = forma_pagamento_parcela.id_formpaga(+)');


 XTM:=MResul.Lines.Count;
 If XTM >0 then
 begin
   QryCadForPag.SQL.Add('and');
   QryCadForPag.SQL.Add(MResul.Text);
 end
 else
 begin
   Screen.Cursor := crDefault;
   If MessageDlg('Exibir listagem sem filtro?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
     exit
   Else
     Screen.Cursor := crSQLWait;
 end;
 QryCadForPag.SQL.Add('order by forma_pagamento.nm_formpaga');
 QryCadForPag.Open;

 //QryCadForPag.SQL.SaveToFile('C:\VEN032.txt');

 QryCadFormPagPar.close;
 QryCadFormPagPar.open;



 PageControl1.Pages[1].Show;
 Screen.Cursor := crDefault;
 PageControl1.Pages[1].TabVisible := True;
 PageControl1.Pages[2].TabVisible := true;
 PageControl1.Pages[3].TabVisible := true;
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

procedure TFrmCadForPag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmCadForPag:=nil;
//  FrmPrincipal.VEN032.Enabled:= True;
  FrmPrincipal.ACVEN032.Enabled:= True;
  Action:=caFree;
end;

end.
