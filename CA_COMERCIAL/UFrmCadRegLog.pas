unit UFrmCadRegLog;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, DB, Ora, MemDS, DBAccess,
  Mask, Grids, DBGrids, Buttons, ComCtrls, Vcl.ToolWin, OraSmart;

type
  TFrmCadRegLog = class(TForm)
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
    DBNmReg: TDBEdit;
    DBCodInt: TDBEdit;
    Label3: TLabel;
    Label6: TLabel;
    DtSrcRegLog: TOraDataSource;
    DBRadioGroup7: TDBRadioGroup;
    QrDireitos: TOraQuery;
    QryRegLog: TSmartQuery;
    QryRegLogEMPRESA: TStringField;
    QryRegLogFILIAL: TIntegerField;
    QryRegLogID_REGILOGI: TFloatField;
    QryRegLogNM_REGILOGI: TStringField;
    QryRegLogFX_REGILOGI: TStringField;
    QryRegLogID_INTEREGILOGI: TStringField;
    QryRegLogGN_RISCREGILOGI: TIntegerField;
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    procedure LDcomponentes(LD:boolean);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure SB_EDITClick(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure EdExprKeyPress(Sender: TObject; var Key: Char);
    procedure TabCriterioShow(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdExprChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    OrdemColuna , Ordem : string ;
  public
    { Public declarations }
  end;

var
  FrmCadRegLog: TFrmCadRegLog;

implementation
 uses
  UFrmClientes , Principal, global, Math;

{$R *.dfm}

procedure TFrmCadRegLog.SB_PRIMEIROClick(Sender: TObject);
begin
  QryRegLog.First;
end;

procedure TFrmCadRegLog.SB_ANTERIORClick(Sender: TObject);
begin
  QryRegLog.prior;
end;

procedure TFrmCadRegLog.SB_PROXIMOClick(Sender: TObject);
begin
  QryRegLog.next;
end;

procedure TFrmCadRegLog.SB_ULTIMOClick(Sender: TObject);
begin
  QryRegLog.Last;
end;

procedure TFrmCadRegLog.Sb_SairClick(Sender: TObject);
begin
 close;
end;


procedure TFrmCadRegLog.LDcomponentes(LD:boolean);
var
  Temp:TComponent;
  li_Loop:Integer;
begin
  For li_Loop :=0 to ComponentCount - 1  do
    begin
      Temp := Components[li_Loop];
      if (Temp is TDBEDIT) then
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

function TFrmCadRegLog.Atual_ToolBar(BtOrdem: Integer): string;
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

procedure TFrmCadRegLog.SB_CANCELClick(Sender: TObject);
begin
  if (QryRegLog.State in [dsedit,dsinsert]) then
    QryRegLog.CancelUpdates;
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

procedure TFrmCadRegLog.SB_CONFIRMAClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  if (TabDetalhes.Showing)  then
    begin
      If (DBNmReg.Text ='') or (DBRadioGroup7.Value ='') then
        begin
          MessageDlg('Gravação Cancelada! Falta campo a ser preenchido.',mtInformation,[mbOk], 0, mbOk);
          Screen.Cursor := crDefault;
          Exit;
        end;
      if (QryRegLog.State=DSEDIT) or (QryRegLog.State=DSINSERT) then
        begin
          QryRegLog.Post;
          QryRegLog.CommitUpdates;
          QryRegLog.ApplyUpdates;
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

procedure TFrmCadRegLog.SB_EDITClick(Sender: TObject);
begin
  if (gi_Filial = 2) or (gi_filial = 8) then
    begin
      MessageDlg('Para Edição ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
      Screen.Cursor := crDefault;
      Exit;
    end;
  if (TabDetalhes.Showing) then
    begin
      QryRegLog.Edit;
    end;
  Atual_ToolBar(7);
  LDcomponentes(True);
end;

procedure TFrmCadRegLog.SB_EXCLUIClick(Sender: TObject);
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
    end;

  if (TabDetalhes.Showing) then
    begin
      If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
        begin
          QryRegLog.Delete;
          QryRegLog.ApplyUpdates;
          QryRegLog.CommitUpdates;
          QryRegLog.Refresh;
        end;
    end;
  Atual_ToolBar(6);
end;

procedure TFrmCadRegLog.SB_NOVOClick(Sender: TObject);
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
      QryRegLog.open;
      QryRegLog.Insert;
      QryRegLogEMPRESA.Value:=gs_Empresa;
      QryRegLogFILIAL.Value:=gi_Filial;
      QryRegLogFX_REGILOGI.Value:='N';
      QryRegLogGN_RISCREGILOGI.Value:=1;
      PageControl1.Pages[01].TabVisible := False;
      PageControl1.Pages[00].TabVisible := False;
      PageControl1.Pages[02].TabVisible := True;
    end;
  Atual_ToolBar(5);
end;

procedure TFrmCadRegLog.EdExprKeyPress(Sender: TObject; var Key: Char);
begin
 Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCadRegLog.TabCriterioShow(Sender: TObject);
begin
  CBCond.Enabled := True;
  EdExpr.Enabled := True;
  BtLimpar.Enabled := True;
  BtAtivar.Enabled := True;
 // BPESQ.Enabled := True;
  RGeou.Enabled := True;
end;

procedure TFrmCadRegLog.BtIncluirClick(Sender: TObject);
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
        0:Vre:=Vre + '  logistica_regiao.id_regilogi  ';
        1:Vre:=Vre + '  UPPER(logistica_regiao.nm_regilogi) ';


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

procedure TFrmCadRegLog.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmCadRegLog.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin
  // TRY
  Screen.Cursor := crSQLWait;
  QryRegLog.Close;
  WITH QryRegLog.SQL DO
    BEGIN
      Clear;
      Add('    SELECT                                     ');
      Add('    logistica_regiao.empresa,                  ');
      Add('    logistica_regiao.filial,                   ');
      Add('    logistica_regiao.id_regilogi,              ');
      Add('    logistica_regiao.nm_regilogi,              ');
      Add('    logistica_regiao.fx_regilogi,              ');
      Add('    logistica_regiao.id_interegilogi,          ');
      Add('    logistica_regiao.gn_riscregilogi           ');
      Add('    FROM  logistica_regiao                     ');

      XTM:=MResul.Lines.Count;
      If XTM >0 then
        begin
          QryRegLog.SQL.Add(' Where ');
          QryRegLog.SQL.Add(MResul.Text);
        end
      else
        begin
          Screen.Cursor := crDefault;
          If MessageDlg('Exibir listagem sem filtro?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
            exit
          Else
            Screen.Cursor := crSQLWait;
        end;
      QryRegLog.SQL.Add('order by logistica_regiao.nm_regilogi');
      QryRegLog.Open;

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

procedure TFrmCadRegLog.FormShow(Sender: TObject);
var
  Temp: TComponent;
  li_Loop : Integer;
begin
  if (LCAMPOS.Items.Count=0) then
    begin
      With LCampos.Items do
        begin
          Add('Cód. da Região Logística');
          Add('Nome da Região Logística');
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

procedure TFrmCadRegLog.EdExprChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmCadRegLog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.CadastrodeRegiesLogsticas1.Enabled:= True;
end;

procedure TFrmCadRegLog.DBGrid1TitleClick(Column: TColumn);
begin
     OrdenarGrid ( DBGrid1 , QryRegLog , Column,  OrdemColuna , Ordem );
     OrdemColuna := Column.FieldName;
     if (OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente') then
      Ordem := 'Crescente'
     else
      Ordem := 'Decrescente';
end;

end.
