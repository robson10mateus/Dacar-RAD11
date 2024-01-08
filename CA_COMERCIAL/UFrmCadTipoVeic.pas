unit UFrmCadTipoVeic;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, ComCtrls, Buttons, Mask,
  Grids, DBGrids, DB, Ora, MemDS, DBAccess, Vcl.ToolWin;

type
  TFrmCadTipoVeic = class(TForm)
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
    DBCodTrans: TDBEdit;
    Label15: TLabel;
    DBDescTrans: TDBEdit;
    Label3: TLabel;
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
    QryCadTpVeic: TOraQuery;
    DtSrcCadTpVeic: TOraDataSource;
    QrDireitos: TOraQuery;
    QryCadTpVeicEMPRESA: TStringField;
    QryCadTpVeicFILIAL: TIntegerField;
    QryCadTpVeicID_TIPOVEIC: TFloatField;
    QryCadTpVeicNM_TIPOVEIC: TStringField;
    QryCadTpVeicQN_CAPATIPOVEIC: TFloatField;
    QryCadTpVeicID_UNIDMEDI: TFloatField;
    QryCadTpVeicFX_TIPOVEIC: TStringField;
    QryUniMed: TOraQuery;
    QryUniMedID_UNIDMEDI: TFloatField;
    QryUniMedSG_UNIDMEDI: TStringField;
    DtSrcUniMed: TOraDataSource;
    DBCapCarg: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
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
    { Public declarations }
  end;

var
  FrmCadTipoVeic: TFrmCadTipoVeic;

implementation
  uses
  UFrmClientes , Principal, global, Math;

{$R *.dfm}

procedure TFrmCadTipoVeic.Sb_SairClick(Sender: TObject);
begin
 close
end;

procedure TFrmCadTipoVeic.EdExprChange(Sender: TObject);
begin
 BtIncluir.Enabled:=true;
end;

procedure TFrmCadTipoVeic.EdExprKeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadTipoVeic.TabCriterioShow(Sender: TObject);
begin
  CBCond.Enabled := True;
  EdExpr.Enabled := True;
  BtLimpar.Enabled := True;
  BtAtivar.Enabled := True;
 // BPESQ.Enabled := True;
  RGeou.Enabled := True;
end;

procedure TFrmCadTipoVeic.SB_PRIMEIROClick(Sender: TObject);
begin
 QryCadTpVeic.First;
end;

procedure TFrmCadTipoVeic.SB_ANTERIORClick(Sender: TObject);
begin
 QryCadTpVeic.Prior;
end;

procedure TFrmCadTipoVeic.SB_PROXIMOClick(Sender: TObject);
begin
 QryCadTpVeic.Next;
end;

procedure TFrmCadTipoVeic.SB_ULTIMOClick(Sender: TObject);
begin
  QryCadTpVeic.Last;
end;

procedure TFrmCadTipoVeic.SB_CANCELClick(Sender: TObject);
begin
 if (QryCadTpVeic.State in [dsedit,dsinsert]) then
    QryCadTpVeic.CancelUpdates;
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

procedure TFrmCadTipoVeic.LDcomponentes(LD:boolean);
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

function TFrmCadTipoVeic.Atual_ToolBar(BtOrdem: Integer): string;
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


procedure TFrmCadTipoVeic.SB_EXCLUIClick(Sender: TObject);
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
     QryCadTpVeic.Delete;
     QryCadTpVeic.ApplyUpdates;
     QryCadTpVeic.CommitUpdates;
     QryCadTpVeic.Refresh;
   end

end;
Atual_ToolBar(6);
end;

procedure TFrmCadTipoVeic.SB_EDITClick(Sender: TObject);
begin
if (gi_Filial = 2) or (gi_filial = 8) then
  begin
  MessageDlg('Para Edição ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
  Screen.Cursor := crDefault;
  Exit;
  end;

if (TabDetalhes.Showing) then
 begin
   QryCadTpVeic.Edit;
 end;
  Atual_ToolBar(7);
 LDcomponentes(True);
end;

procedure TFrmCadTipoVeic.SB_NOVOClick(Sender: TObject);
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
    QryCadTpVeic.open;
    QryCadTpVeic.Insert;
    QryCadTpVeicEMPRESA.Value:=gs_Empresa;
    QryCadTpVeicFILIAL.Value:=gi_Filial;
    QryCadTpVeicFX_TIPOVEIC.Value:='N';
    PageControl1.Pages[01].TabVisible := False;
    PageControl1.Pages[00].TabVisible := False;
    PageControl1.Pages[02].TabVisible := True;
    end;
     Atual_ToolBar(5);
end;

procedure TFrmCadTipoVeic.SB_CONFIRMAClick(Sender: TObject);
begin
Screen.Cursor := crSQLWait;


  if (TabDetalhes.Showing)  then
  begin
  If (DBCapCarg.Text ='') or (DBDescTrans.text ='') then
   begin
      MessageDlg('Gravação Cancelada! Falta campo a ser preenchido.',mtInformation,[mbOk], 0, mbOk);
      Screen.Cursor := crDefault;
      Exit;
    end;
   if (QryCadTpVeic.State=DSEDIT) or (QryCadTpVeic.State=DSINSERT) then
   begin
    QryCadTpVeic.Post;
    QryCadTpVeic.CommitUpdates;
    QryCadTpVeic.ApplyUpdates;


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


procedure TFrmCadTipoVeic.FormShow(Sender: TObject);
var
  Temp: TComponent;
  li_Loop : Integer;
begin
 if (LCAMPOS.Items.Count=0) then
 begin
   With LCampos.Items do
   begin
     Add('Cód. Tipo Veículo');
     Add('Descr. Tipo Veículo ');



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

procedure TFrmCadTipoVeic.BtIncluirClick(Sender: TObject);
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
        0:Vre:=Vre + '  veiculo_tipo.id_tipoveic ';
        1:Vre:=Vre + '  UPPER(veiculo_tipo.nm_tipoveic) ';


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

procedure TFrmCadTipoVeic.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmCadTipoVeic.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin

// TRY
 Screen.Cursor := crSQLWait;
 QryCadTpVeic.Close;

 WITH QryCadTpVeic.SQL DO
  BEGIN
      Clear;


   Add('        SELECT                                 ');
   Add('     veiculo_tipo.empresa,                     ');
   Add('     veiculo_tipo.filial,                      ');
   Add('     veiculo_tipo.id_tipoveic,                 ');
   Add('     veiculo_tipo.nm_tipoveic,                 ');
   Add('     veiculo_tipo.qn_capatipoveic,             ');
   Add('     veiculo_tipo.id_unidmedi,                 ');
   Add('     veiculo_tipo.fx_tipoveic                  ');
   Add('     FROM                                      ');
   Add('     veiculo_tipo                              ');

 XTM:=MResul.Lines.Count;
 If XTM >0 then
 begin
   QryCadTpVeic.SQL.Add(' where ');
   QryCadTpVeic.SQL.Add(MResul.Text);
 end
 else
 begin
   Screen.Cursor := crDefault;
   If MessageDlg('Exibir listagem sem filtro?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
     exit
   Else
     Screen.Cursor := crSQLWait;
 end;
 QryCadTpVeic.SQL.Add('order by veiculo_tipo.nm_tipoveic   ');
 QryCadTpVeic.Open;

 QryUniMed.Close;
 QryUniMed.Open;

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

procedure TFrmCadTipoVeic.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.CadastroTipodeVeculo1.Enabled:= True;
end;

end.
