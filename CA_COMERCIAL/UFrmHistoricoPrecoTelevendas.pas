unit UFrmHistoricoPrecoTelevendas;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, Grids, DBGrids,
  Buttons, ComCtrls, DB, MemDS, DBAccess, Ora, Vcl.ToolWin;

type
  TFrmHistoricoPrecoTelevendas = class(TForm)
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
    BPESQ: TBitBtn;
    EdExpr: TEdit;
    TabLista: TTabSheet;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    TabDetalhes: TTabSheet;
    Panel3: TPanel;
    DBDescItem: TDBEdit;
    Label14: TLabel;
    DBCod: TDBEdit;
    Label15: TLabel;
    Qry_HistoricoPreco: TOraQuery;
    Qry_HistoricoPrecoEMPRESA: TStringField;
    Qry_HistoricoPrecoFILIAL: TIntegerField;
    Qry_HistoricoPrecoID_HISTORICOPRECO: TFloatField;
    Qry_HistoricoPrecoID_PRODMATEEMBA: TStringField;
    Qry_HistoricoPrecoVL_PRECOCUSTO: TFloatField;
    Qry_HistoricoPrecoNM_PRODMATEEMBA: TStringField;
    Dsc_HistoricoPreco: TDataSource;
    QrDireitos: TOraQuery;
    Dbe_Data: TDBEdit;
    DbePreco: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Btn_Data: TBitBtn;
    Qry_HistoricoPrecoDT_ALTERACAOPRECO: TDateTimeField;
    Btn_Material: TBitBtn;
    Qry_ChecaExite: TOraQuery;
    Qry_ChecaExiteID_HISTORICOPRECO: TFloatField;
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    procedure LDcomponentes(LD:boolean);        
    procedure Sb_SairClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdExprKeyPress(Sender: TObject; var Key: Char);
    procedure LCamposClick(Sender: TObject);
    procedure EdExprChange(Sender: TObject);
    procedure SB_CANCELMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_CONFIRMAMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_EDITMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_EXCLUIMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_NOVOMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_ULTIMOMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_PROXIMOMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_ANTERIORMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_PRIMEIROMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure SB_EDITClick(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure Btn_DataClick(Sender: TObject);
    procedure Dbe_DataChange(Sender: TObject);
    procedure DbePrecoChange(Sender: TObject);
    procedure Btn_MaterialClick(Sender: TObject);
    procedure DBCodKeyPress(Sender: TObject; var Key: Char);
    procedure DBDescItemKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  SELPE: integer;
  Vdtstr:String;  
    { Public declarations }
  end;

var
  FrmHistoricoPrecoTelevendas: TFrmHistoricoPrecoTelevendas;

implementation
uses Principal, Global, UFrmSeldata, UFrmPesqMatEmba;

{$R *.dfm}

procedure TFrmHistoricoPrecoTelevendas.Sb_SairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmHistoricoPrecoTelevendas.BtIncluirClick(Sender: TObject);
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
        0:Vre:=Vre + '  Televendas_Historico_Preco.id_prodmateemba ';
        1:Vre:=Vre + '  Material_Embalagem.Nm_Prodmateemba ';
        2:Vre:=Vre + '  Televendas_Historico_Preco.Dt_AlteracaoPreco ';
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
        0..1:Vre:= Vre + '''';
           2:Vre:= Vre + 'TO_DATE(''';
    end;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

      Vre:=Vre + EdExpr.text;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

     Case LCampos.itemindex of
         0..1:Vre:= Vre + '''';
            2:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY''' +')';
     end;

     Vre:=Vre+')';

     MResul.Lines.Add(Vre);

     EdExpr.Text :='';
     BtIncluir.Enabled :=false;
   end;

   BtAtivar.SetFocus;
end;

procedure TFrmHistoricoPrecoTelevendas.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmHistoricoPrecoTelevendas.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin

    Screen.Cursor := crSQLWait;
    Qry_HistoricoPreco.Close;

    WITH Qry_HistoricoPreco.SQL DO
    BEGIN
        Clear;

        Add(' Select Televendas_Historico_Preco.Empresa,           ');
        Add('        Televendas_Historico_Preco.Filial,            ');
        Add('        Televendas_Historico_Preco.ID_HistoricoPreco, ');
        Add('        Televendas_Historico_Preco.Id_ProdMateEmba,   ');
        Add('        Televendas_Historico_Preco.Dt_AlteracaoPreco, ');
        Add('        Televendas_Historico_Preco.Vl_PrecoCusto,     ');
        Add('        Material_Embalagem.Nm_Prodmateemba            ');
        Add('   from Televendas_Historico_Preco                    ');
        Add('   Join Material_Embalagem                            ');
        Add('     On Televendas_Historico_Preco.id_prodmateemba = Material_Embalagem.Id_Prodmateemba ');
        Add('    where 0=0                       ');
        Add('     ');

        XTM:=MResul.Lines.Count;

        If XTM >0 then
          begin
            Qry_HistoricoPreco.SQL.Add(' And ');
            Qry_HistoricoPreco.SQL.Add(MResul.Text);
          end
        else
          begin
            Screen.Cursor := crDefault;

            If MessageDlg('Exibir listagem sem filtro?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
              exit
            Else
              Screen.Cursor := crSQLWait;
          end;

        Qry_HistoricoPreco.SQL.Add('order by Televendas_Historico_Preco.Id_ProdMateEmba, Televendas_Historico_Preco.Dt_AlteracaoPreco Desc ');
        Qry_HistoricoPreco.Open;

//        Qry_HistoricoPreco.close;
//        Qry_HistoricoPreco.Open;

//        Qry_moeda.close;
//        Qry_moeda.Open;

        PageControl1.Pages[1].Show;
        Screen.Cursor := crDefault;
        PageControl1.Pages[1].TabVisible := True;
        PageControl1.Pages[2].TabVisible := true;
//        PageControl1.Pages[3].TabVisible := True;
        Atual_ToolBar(1);

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
    END;
end;

procedure TFrmHistoricoPrecoTelevendas.FormShow(Sender: TObject);
var
  Temp: TComponent;
  li_Loop : Integer;
begin
 PageControl1.Pages[1].TabVisible:= False;
 PageControl1.Pages[2].TabVisible:= False;
// PageControl1.Pages[3].TabVisible:= False;

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

function TFrmHistoricoPrecoTelevendas.Atual_ToolBar(BtOrdem: Integer): string;
begin
 CASE BtOrdem of
   1:begin
    SB_NOVO.Enabled := true;
    SB_EDIT.Enabled := true;
    SB_EXCLUI.Enabled := true;
    SB_CONFIRMA.Enabled := False;
    SB_CANCEL.Enabled := false;
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
   11:begin
    SB_NOVO.Enabled := False;
    SB_EDIT.Enabled := False;
    SB_EXCLUI.Enabled := False;
    SB_CONFIRMA.Enabled := False;
    SB_CANCEL.Enabled := False;
    SB_PRIMEIRO.Enabled := False;
    SB_ANTERIOR.Enabled := False;
    SB_PROXIMO.Enabled := False;
    SB_ULTIMO.Enabled := False;

   end;

  end;

end;

procedure TFrmHistoricoPrecoTelevendas.EdExprKeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmHistoricoPrecoTelevendas.LCamposClick(Sender: TObject);
begin
  SELPE:=0;
  CASE LCAMPOS.ItemIndex OF
        0:SELPE:=0;
        1:SELPE:=0;
        2:SELPE:=1;
  END;
  IF SELPE>0 then
    BPESQ.Visible:=TRUE;
end;

procedure TFrmHistoricoPrecoTelevendas.LDcomponentes(LD: boolean);
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

procedure TFrmHistoricoPrecoTelevendas.EdExprChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_CANCELMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
    SB_PROXIMO.Flat  := True;
    SB_ANTERIOR.Flat := True;
    SB_ULTIMO.Flat   := True;
    SB_PRIMEIRO.Flat := True;
    SB_NOVO.Flat     := True;
    SB_EXCLUI.Flat   := True;
    SB_EDIT.Flat     := True;
    SB_CONFIRMA.Flat := True;
    SB_CANCEL.Flat   := False;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_CONFIRMAMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
    SB_PROXIMO.Flat  := True;
    SB_ANTERIOR.Flat := True;
    SB_ULTIMO.Flat   := True;
    SB_PRIMEIRO.Flat := True;
    SB_NOVO.Flat     := True;
    SB_EXCLUI.Flat   := True;
    SB_EDIT.Flat     := True;
    SB_CONFIRMA.Flat := False;
    SB_CANCEL.Flat   := True;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_EDITMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
    SB_PROXIMO.Flat  := True;
    SB_ANTERIOR.Flat := True;
    SB_ULTIMO.Flat   := True;
    SB_PRIMEIRO.Flat := True;
    SB_NOVO.Flat     := True;
    SB_EXCLUI.Flat   := True;
    SB_EDIT.Flat     := False;
    SB_CONFIRMA.Flat := True;
    SB_CANCEL.Flat   := True;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_EXCLUIMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
    SB_PROXIMO.Flat  := True;
    SB_ANTERIOR.Flat := True;
    SB_ULTIMO.Flat   := True;
    SB_PRIMEIRO.Flat := True;
    SB_NOVO.Flat     := True;
    SB_EXCLUI.Flat   := False;
    SB_EDIT.Flat     := True;
    SB_CONFIRMA.Flat := True;
    SB_CANCEL.Flat   := True;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_NOVOMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
    SB_PROXIMO.Flat  := True;
    SB_ANTERIOR.Flat := True;
    SB_ULTIMO.Flat   := True;
    SB_PRIMEIRO.Flat := True;
    SB_NOVO.Flat     := False;
    SB_EXCLUI.Flat   := True;
    SB_EDIT.Flat     := True;
    SB_CONFIRMA.Flat := True;
    SB_CANCEL.Flat   := True;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_ULTIMOMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
    SB_PROXIMO.Flat  := True;
    SB_ANTERIOR.Flat := True;
    SB_ULTIMO.Flat   := False;
    SB_PRIMEIRO.Flat := True;
    SB_NOVO.Flat     := True;
    SB_EXCLUI.Flat   := True;
    SB_EDIT.Flat     := True;
    SB_CONFIRMA.Flat := True;
    SB_CANCEL.Flat   := True;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_PROXIMOMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
    SB_PROXIMO.Flat  := False;
    SB_ANTERIOR.Flat := True;
    SB_ULTIMO.Flat   := True;
    SB_PRIMEIRO.Flat := True;
    SB_NOVO.Flat     := True;
    SB_EXCLUI.Flat   := True;
    SB_EDIT.Flat     := True;
    SB_CONFIRMA.Flat := True;
    SB_CANCEL.Flat   := True;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_ANTERIORMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
    SB_PROXIMO.Flat  := True;
    SB_ANTERIOR.Flat := False;
    SB_ULTIMO.Flat   := True;
    SB_PRIMEIRO.Flat := True;
    SB_NOVO.Flat     := True;
    SB_EXCLUI.Flat   := True;
    SB_EDIT.Flat     := True;
    SB_CONFIRMA.Flat := True;
    SB_CANCEL.Flat   := True;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_PRIMEIROMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
    SB_PROXIMO.Flat  := True;
    SB_ANTERIOR.Flat := True;
    SB_ULTIMO.Flat   := True;
    SB_PRIMEIRO.Flat := False;
    SB_NOVO.Flat     := True;
    SB_EXCLUI.Flat   := True;
    SB_EDIT.Flat     := True;
    SB_CONFIRMA.Flat := True;
    SB_CANCEL.Flat   := True;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_PRIMEIROClick(Sender: TObject);
begin
   Qry_HistoricoPreco.First;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_ANTERIORClick(Sender: TObject);
begin
   Qry_HistoricoPreco.Prior;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_PROXIMOClick(Sender: TObject);
begin
   Qry_HistoricoPreco.Next;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_ULTIMOClick(Sender: TObject);
begin
   Qry_HistoricoPreco.Last;
end;

procedure TFrmHistoricoPrecoTelevendas.SB_CANCELClick(Sender: TObject);
begin
    if (Qry_HistoricoPreco.State in [dsedit,dsinsert]) then
        Qry_HistoricoPreco.CancelUpdates;

    Atual_ToolBar(1);

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

procedure TFrmHistoricoPrecoTelevendas.SB_EDITClick(Sender: TObject);
begin
    if (gi_Filial = 2) or (gi_filial = 8) then
      begin
        MessageDlg('Para Edição ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
        Screen.Cursor := crDefault;
        Exit;
      end;

    if (TabLista.Showing) then
      TabDetalhes.Show;
      
    if (TabDetalhes.Showing) then
      begin
        Qry_HistoricoPreco.Edit;
      end;

    Atual_ToolBar(7);
    LDcomponentes(True);
end;

procedure TFrmHistoricoPrecoTelevendas.SB_NOVOClick(Sender: TObject);
begin
    if (gi_Filial = 2) or (gi_filial = 8) then
      begin
          MessageDlg('Para Edição ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
          Screen.Cursor := crDefault;
          Exit;
      end;

    ActiveControl := Nil;
    LDcomponentes(True);

    if (TabLista.Showing) then
      begin
        TabDetalhes.Show;
//      MessageDlg('Para cadastro de Tabela de preço, a janela é DETALHE!!!.',mtInformation,[mbOk], 0, mbOk);
//      Screen.Cursor := crDefault;
//      Exit;
      end;

  if (TabDetalhes.Showing) then
    begin
      Qry_HistoricoPreco.open;
      Qry_HistoricoPreco.Insert;
      Qry_HistoricoPrecoEMPRESA.Value:=gs_Empresa;
      Qry_HistoricoPrecoFILIAL.Value:=gi_Filial;

      PageControl1.Pages[01].TabVisible := False;
      PageControl1.Pages[00].TabVisible := False;
      PageControl1.Pages[02].TabVisible := True;
    end;

{  else if (TabItens.Showing) then
    begin
      QryTabPreco.open;
      QryTabPreco.Insert;
      QryTabPrecoEMPRESA.Value :=gs_Empresa;
      QryTabPrecoFILIAL.Value :=gi_Filial;
      QryTabPrecoID_TABEPREC.Value := StrToFloat(DBEdit3.Text);
      PageControl1.Pages[01].TabVisible := False;
      PageControl1.Pages[00].TabVisible := False;
      PageControl1.Pages[02].TabVisible := false;
      PageControl1.Pages[03].TabVisible := True;
      QryTabPrecoFX_ITEMTABEPREC.Value:='N';
    end;}
  Atual_ToolBar(5);
end;

procedure TFrmHistoricoPrecoTelevendas.SB_CONFIRMAClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;

  if (TabDetalhes.Showing)  then
    begin
      if (DBCod.Text ='') or (DBDescItem.Text ='') or (Dbe_Data.Text ='') or (DbePreco.Text ='') then
        begin
          MessageDlg('Gravação Cancelada! Falta campo a ser preenchido.',mtInformation,[mbOk], 0, mbOk);
          Screen.Cursor := crDefault;
          Exit;
        end;

      if (Qry_HistoricoPreco.State=DSEDIT) or (Qry_HistoricoPreco.State=DSINSERT) then
        begin
          if (Qry_HistoricoPreco.State=DSINSERT) then
            begin
              Qry_ChecaExite.Close;
              Qry_ChecaExite.ParamByName('Empresa').Value           := Qry_HistoricoPrecoEMPRESA.Value;
              Qry_ChecaExite.ParamByName('Filial').Value            := Qry_HistoricoPrecoFILIAL.Value;
              Qry_ChecaExite.ParamByName('Id_ProdMateEmba').Value   := DBCod.Text;
              Qry_ChecaExite.ParamByName('DT_ALTERACAOPRECO').Value := Dbe_Data.Text;
              Qry_ChecaExite.Open;

              if Qry_ChecaExite.RecordCount > 0 then
                Begin
                  ShowMessage('Já existe preço cadastrado neste dia para este produto. Se necessário, faça alteração diretamente no registro.');
                  Exit;
                end;
            end;

          Qry_HistoricoPreco.Post;
          Qry_HistoricoPreco.ApplyUpdates;
          Qry_HistoricoPreco.CommitUpdates;
        end;

      Qry_HistoricoPreco.Refresh;
    end;

  PageControl1.Pages[01].TabVisible := True;
  PageControl1.Pages[00].TabVisible := True;
  PageControl1.Pages[02].TabVisible := True;
//  PageControl1.Pages[03].TabVisible := True;
  LDcomponentes(False);
  Screen.Cursor := crDefault;
  Atual_ToolBar(1);
end;

procedure TFrmHistoricoPrecoTelevendas.SB_EXCLUIClick(Sender: TObject);
begin
  if (gi_Filial = 2) or (gi_filial = 8) then
    begin
      MessageDlg('Para Edição, Exclusão ou Inclusão, entrar contato em Sorocaba!!!.',mtInformation,[mbOk], 0, mbOk);
      Screen.Cursor := crDefault;
      Exit;
    end;

  If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
       if (TabLista.Showing) then
        begin
          MessageDlg('Para exclusão da Tabela de preço, direcione para janela DETALHE!!!.',mtInformation,[mbOk], 0, mbOk);
          Screen.Cursor := crDefault;
          Exit;
        end
      else if (TabDetalhes.Showing) then
        begin
          Qry_HistoricoPreco.Delete;
          Qry_HistoricoPreco.ApplyUpdates;
          Qry_HistoricoPreco.CommitUpdates;
          Qry_HistoricoPreco.Refresh;
        end
    end;

  Atual_ToolBar(6);
end;

procedure TFrmHistoricoPrecoTelevendas.FormCreate(Sender: TObject);
begin
   frmPrincipal.TrocaNomeSequence(Self);

   if (LCAMPOS.Items.Count=0) then
    begin
      With LCampos.Items do
        begin
          Add('Código do Produto  ');
          Add('Descrição do Produto ');
          Add('Data de Alteração');
        end;
    end;
end;

procedure TFrmHistoricoPrecoTelevendas.BPESQClick(Sender: TObject);
begin
    Cria_FrmSelData(Vdtstr);
    EdExpr.text:= Vdtstr;
    BtIncluir.SetFocus;
    BPESQ.Visible:=FALSE;
end;

procedure TFrmHistoricoPrecoTelevendas.Btn_DataClick(Sender: TObject);
begin
    Cria_FrmSelData(Vdtstr);
//    Qry_HistoricoPrecoDT_ALTERACAOPRECO.Value := Vdtstr;
    Dbe_Data.Text := Vdtstr;
end;

procedure TFrmHistoricoPrecoTelevendas.Dbe_DataChange(Sender: TObject);
begin
    if SB_EDIT.Enabled then
      SB_EDIT.Click;
end;

procedure TFrmHistoricoPrecoTelevendas.DbePrecoChange(Sender: TObject);
begin
    if SB_EDIT.Enabled then
      SB_EDIT.Click;
end;

procedure TFrmHistoricoPrecoTelevendas.Btn_MaterialClick(Sender: TObject);
begin
  FrmOriPesq:=12;
  FrmPesqMatEmba:=TFrmPesqMatEmba.Create(Self);
  FrmPesqMatEmba.ShowModal;
end;

procedure TFrmHistoricoPrecoTelevendas.DBCodKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TFrmHistoricoPrecoTelevendas.DBDescItemKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TFrmHistoricoPrecoTelevendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmHistoricoPrecoTelevendas:=nil;
//  FrmPrincipal.VEN039.Enabled:= True;
  FrmPrincipal.ACVEN039.Enabled:= True;
  Action:=caFree;
end;

end.
