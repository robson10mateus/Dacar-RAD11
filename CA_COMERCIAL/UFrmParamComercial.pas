unit UFrmParamComercial;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, Variants, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmParamComercial = class(TForm)
    PageControl1: TPageControl;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    TabLista: TTabSheet;
    TabDetalhe: TTabSheet;
    DBGrid1: TDBGrid;
    Sb_Sair: TSpeedButton;
    SB_CONFIRMA: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PRIMEIRO: TSpeedButton;
    SB_NOVO: TSpeedButton;
    SB_EXCLUI: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    ToolButton3: TToolButton;
    SB_EDIT: TSpeedButton;
    TabCriterio: TTabSheet;
    LCampos: TListBox;
    MResul: TMemo;
    Label6: TLabel;
    CBCond: TComboBox;
    Label7: TLabel;
    EdExpre: TEdit;
    RGeou: TRadioGroup;
    BtIncluir: TBitBtn;
    BtLimpar: TBitBtn;
    BtAtivar: TBitBtn;
    BPESQ: TBitBtn;
    DS: TOraDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBPlaca: TDBEdit;
    Label3: TLabel;
    DBCodVen: TDBEdit;
    Label4: TLabel;
    DBVendedor: TDBEdit;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBCheckBox1: TDBCheckBox;
    SB_ATUAL: TSpeedButton;
    BPesqPlaca: TBitBtn;
    BtPesqVend: TBitBtn;
    Panel2: TPanel;
    PanelItens: TPanel;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    BtPesqMatEmba: TBitBtn;
    DBEdit4: TDBEdit;
    Label15: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBPmedio: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBGrid2: TDBGrid;
    DSItem: TOraDataSource;
    DBEdit5: TDBEdit;
    Label16: TLabel;
    GroupBox1: TGroupBox;
    SB_NOVOITEM: TSpeedButton;
    SB_EXCLUIITEM: TSpeedButton;
    SB_CONFIRMAITEM: TSpeedButton;
    SB_CANCELITEM: TSpeedButton;
    Osql: TOraSQL;
    DBCheckBox2: TDBCheckBox;
    QryTemp: TOraQuery;
    DBCheckBox3: TDBCheckBox;
    Qr: TSmartQuery;
    QrEMPRESA: TStringField;
    QrFILIAL: TIntegerField;
    QrID_PARAMETRO: TFloatField;
    QrDT_PARAMETRO: TDateTimeField;
    QrGN_PLACVEICTRAN: TStringField;
    QrID_VENDEDOR: TFloatField;
    QrNM_VENDEDOR: TStringField;
    QrQN_COTA: TFloatField;
    QrVL_COTA: TFloatField;
    QrVL_PM: TFloatField;
    QrFL_TRAVAQN: TStringField;
    QrQN_CAPATIPOVEIC: TFloatField;
    QrQN_FATOFRETABATVEICTRAN: TFloatField;
    QrVL_QUILFRETABAT: TFloatField;
    QrFL_TRAVAKG: TStringField;
    QrFL_TRAVAKGMIN: TStringField;
    QrID_FORNECEDOR_TRANSPORTADOR: TFloatField;
    QrItem: TSmartQuery;
    QrItemID_PARAMETRO: TFloatField;
    QrItemID_PRODMATEEMBA: TStringField;
    QrItemQN_COTA: TFloatField;
    QrItemVL_COTA: TFloatField;
    QrItemVL_PM: TFloatField;
    QrItemFL_TRAVAITEM: TStringField;
    QrItemNM_PRODMATEEMBA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure SB_EXCLUIClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
              DataCol:Integer; Column:TColumn; State:TGridDrawState);
    procedure SB_EDITClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure QrCBRBeforePost(DataSet: TDataSet);
    procedure LCamposClick(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    Function  Atual_ToolBar(BtOrdem:Integer):string;
    Function  Bot_Flat(Botao:Integer):string;
    procedure SB_ATUALClick(Sender: TObject);
    procedure SB_PRIMEIROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_ANTERIORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_PROXIMOMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_ULTIMOMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_NOVOMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_EXCLUIMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_EDITMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_ATUALMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_CONFIRMAMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_CANCELMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Sb_SairMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolBar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PageControl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BPesqPlacaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtPesqVendClick(Sender: TObject);
    procedure DBPmedioExit(Sender: TObject);
    procedure BtPesqMatEmbaClick(Sender: TObject);
    procedure SB_NOVOITEMClick(Sender: TObject);
    procedure SB_CONFIRMAITEMClick(Sender: TObject);
    procedure SB_CANCELITEMClick(Sender: TObject);
    procedure SB_EXCLUIITEMClick(Sender: TObject);

  private
    { Private declarations }
  public
    VFINAL,VData:STRING;
    SELPE:Integer;
    VORIGEM:STRING;
  end;

var
  FrmParamComercial: TFrmParamComercial;

implementation

uses Principal,GLOBAL, UFrmPesCaminhao, UFrmPesqVend, UFrmPesqMatEmba,
  Math;

{$R *.dfm}

procedure TFrmParamComercial.FormCreate(Sender: TObject);
begin
 // QrCliente.Open;
 // QrVENDEDOR.Open;
 // QryCtPr.Open;
 // QryCtPr.Last;
end;

procedure TFrmParamComercial.Sb_SairClick(Sender: TObject);
begin
   Qr.Close;
   Close;
 // QrVENDEDOR.Close;
 // FrmCTAReceber.Close;
end;

procedure TFrmParamComercial.SB_PRIMEIROClick(Sender: TObject);
begin
  Qr.First;
end;

procedure TFrmParamComercial.SB_ANTERIORClick(Sender: TObject);
begin
  Qr.Prior;
end;

procedure TFrmParamComercial.SB_PROXIMOClick(Sender: TObject);
begin
  Qr.Next;
end;

procedure TFrmParamComercial.SB_ULTIMOClick(Sender: TObject);
begin
  Qr.Last;
end;

procedure TFrmParamComercial.SB_NOVOClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=2;
  Qr.Insert;
  QrEMPRESA.Value := gs_Empresa;
  QrFILIAL.Value :=  gi_Filial;
  QrDT_PARAMETRO.Value := Date();
  Atual_ToolBar(5);
  SB_NOVOITEM.Enabled := True;
  SB_EXCLUIITEM.Enabled := True;
  SB_CONFIRMAITEM.Enabled := False;
  SB_CANCELITEM.Enabled := False;
end;

procedure TFrmParamComercial.SB_CONFIRMAClick(Sender: TObject);
begin
  IF (SB_CONFIRMAITEM.Enabled = True) then
      SB_CONFIRMAITEMClick(nil);

  IF (QrItem.State in [DsInsert,DsEdit,DsBrowse])  then
    Begin
     Qritem.Edit;
     QrItemVL_COTA.Value := (QrItemVL_PM.value * QrItemQN_COTA.Value);
     QrItem.Post;
    End;
  QrItem.ApplyUpdates;
  QrItem.CommitUpdates;
  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Text :=
        'SELECT                             '+
        ' Sum(qn_cota) AS kgitem            '+
        'FROM  ca_parametro_comercial_item  '+
        'WHERE id_parametro= :vidparametro  ';
  QryTemp.ParamByName('vidparametro').AsFloat := QrID_PARAMETRO.Value ;
  QryTemp.Open;

  If not (Qr.State in [DsInsert,DsEdit])  then
    Qr.Edit;
  QrQN_COTA.Value:= QryTemp.FieldByname('kgitem').AsFloat;
  QR.Post;
  QR.ApplyUpdates;
  QR.CommitUpdates;

  Atual_ToolBar(9);
  SB_NOVOITEM.Enabled := False;
  SB_EXCLUIITEM.Enabled := False;
  SB_CONFIRMAITEM.Enabled := False;
  SB_CANCELITEM.Enabled := False;

end;

procedure TFrmParamComercial.SB_CANCELClick(Sender: TObject);
begin
  Qr.CancelUpdates;
  Atual_ToolBar(10);
  SB_NOVOITEM.Enabled := False;
  SB_EXCLUIITEM.Enabled := False;
  SB_CONFIRMAITEM.Enabled := False;
  SB_CANCELITEM.Enabled := False;
end;

procedure TFrmParamComercial.SB_EXCLUIClick(Sender: TObject);
Begin
 If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  Begin
   Osql.SQL.Clear;
   Osql.SQL.Text := ' delete ca_parametro_comercial_item  '+
                    ' where  id_parametro = ' + FloatToStr(QrID_PARAMETRO.Value);
   Osql.Execute;
   Qr.Delete;
   Qr.ApplyUpdates;
   Qr.CommitUpdates;
   DBGrid1.Refresh;
  End;
end;

procedure TFrmParamComercial.FormClose(Sender: TObject;
  var Action: TCloseAction);
Begin
  FrmParamComercial:=nil;
//  FrmPrincipal.VEN019.Enabled:= True;
  FrmPrincipal.VEN019.Enabled:= True;
  Action:=caFree;
End;


procedure TFrmParamComercial.Button1Click(Sender: TObject);
var
  Bitmap : TBitMap;
Begin
//  Bitmap := TBitmap.Create;
//  try
//    with Bitmap do begin
//      LoadFromFile('tablogo[1].png');
//      Transparent := True;
//      TransParentColor := BitMap.Canvas.Brush.Color;
//      DBGRID1.Canvas.Draw(70,0,BitMap);
//      TransparentMode := tmAuto;
//    end;
//  finally
//    Bitmap.Free;
//  end;
End;

procedure TFrmParamComercial.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//if QryCtPr.FieldByName('RTIPO').AsString = 'B' then
//  DBGrid1.Canvas.Brush.Color := clgreen;
//if QryCtPr.FieldByName('RTIPO').AsString = 'C' then
//  DBGrid1.Canvas.Brush.Color := clRED;
//  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;


procedure TFrmParamComercial.SB_EDITClick(Sender: TObject);
begin
  Qr.Edit;
  Atual_ToolBar(7);
  SB_NOVOITEM.Enabled := True;
  SB_EXCLUIITEM.Enabled := True;
  SB_CONFIRMAITEM.Enabled := False;
  SB_CANCELITEM.Enabled := False;

end;

procedure TFrmParamComercial.RadioGroup1Click(Sender: TObject);
VAR
  Vsitu:integer;

begin
//  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//  Vsitu:=0;
//  QryCtPr.Close;
//  QryCtPr.SQL.Clear;
//  QryCtPr.SQL.Add('Select * from CA_TITUREC ');
//  case RadioGroup1.ItemIndex  of
//    0:Vsitu:=0;

//    1:
//     begin
//      QryCtPr.SQL.Add ('Where RTIPO='''+ 'Q' + '''');
//      Vsitu:=1;
//     end;
//    2:
//     begin
//      QryCtPr.SQL.Add ('Where RTIPO<>''' + 'Q' + '''');
//      Vsitu:=2;
//     end;
//  end;

//  QryCtPr.Open;
//  QryCtPr.ApplyUpdates;
//  Screen.Cursor := crDefault;

end;

procedure TFrmParamComercial.QrCBRBeforePost(DataSet: TDataSet);
begin
//  ShowMessage(DBEdit3.Field.CurValue);

//  QrCBRRSEQUENCI.Value:= strtoint(DBEdit3.Field.CurValue);

end;

procedure TFrmParamComercial.LCamposClick(Sender: TObject);
begin
 SELPE:=0;
//  CASE LCAMPOS.ItemIndex OF
//     0:SELPE:=1;
//    15:SELPE:=15;
//    2:SELPE:=2;
//    6:SELPE:=6;
//  END;
  IF SELPE>0 then
    BPESQ.Visible:=TRUE;

end;

procedure TFrmParamComercial.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmParamComercial.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmParamComercial.BtIncluirClick(Sender: TObject);
var
   Vre,Vlinha:String;
   Vcampos:integer;
begin
  If EdExpre.Text<>'' then
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

   //alterar nomes
     Case LCampos.itemindex of
        0:Vre:=Vre + 'CA_PARAMETRO_COMERCIAL.ID_PARAMETRO';
        1:Vre:=Vre + 'TRUNC(CA_PARAMETRO_COMERCIAL.DT_PARAMETRO)';
        2:Vre:=Vre + 'CA_PARAMETRO_COMERCIAL.GN_PLACVEICTRAN';
        3:Vre:=Vre + 'CA_PARAMETRO_COMERCIAL.ID_VENDEDOR';
        4:Vre:=Vre + 'VENDEDOR.NM_VENDEDOR';
        5:Vre:=Vre + 'CA_PARAMETRO_COMERCIAL.QN_COTA';
        6:Vre:=Vre + 'CA_PARAMETRO_COMERCIAL.VL_COTA';
        7:Vre:=Vre + 'CA_PARAMETRO_COMERCIAL.VL_PM';
        8:Vre:=Vre + 'CA_PARAMETRO_COMERCIAL.FL_TRAVAQN';
        9:Vre:=Vre + 'VEICULO_TIPO.QN_CAPATIPOVEIC';
       10:Vre:=Vre + 'TRANSPORTADOR_VEICULO.QN_FATOFRETABATVEICTRAN';
       11:Vre:=Vre + 'FRETE_ABATIDO.VL_QUILFRETABAT';
     end;

     Case CBCond.ItemIndex of
       0: Vre:=Vre + ' =  ';
       1: Vre:=Vre + ' <> ';
       2: Vre:=Vre + ' >  ';
       3: Vre:=Vre + ' >= ';
       4: Vre:=Vre + ' <  ';
       5: Vre:=Vre + ' <= ';
     end;

     Case LCampos.itemindex of
         1:Vre:=Vre + 'TO_DATE(''';
         2:Vre:=Vre + '''';
         4:Vre:=Vre + '''';
         8:Vre:=Vre + '''';
     end;

     Vre:=Vre + Edexpre.text;

     Case LCampos.itemindex of
        1:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
        2:Vre:= Vre + '''';
        4:Vre:= Vre + '''';
        8:Vre:= Vre + '''';
     end;

     Vre:=Vre+')';

     MResul.Lines.Add(Vre);

     EdExpre.Text :='';
     BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;

end;

procedure TFrmParamComercial.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin
// TRY
 Screen.Cursor := crSQLWait;
 Qr.Close;
 WITH Qr.SQL DO
  BEGIN
    Clear;
    Add('SELECT   ');
    Add('  CA_PARAMETRO_COMERCIAL.EMPRESA, ');
    Add('  CA_PARAMETRO_COMERCIAL.FILIAL, ');
    Add('  CA_PARAMETRO_COMERCIAL.ID_PARAMETRO, ');
    Add('  CA_PARAMETRO_COMERCIAL.DT_PARAMETRO, ');
    Add('  CA_PARAMETRO_COMERCIAL.GN_PLACVEICTRAN, ');
    Add('  CA_PARAMETRO_COMERCIAL.ID_VENDEDOR, ');
    Add('  CA_PARAMETRO_COMERCIAL.QN_COTA, ');
    Add('  CA_PARAMETRO_COMERCIAL.VL_COTA, ');
    Add('  CA_PARAMETRO_COMERCIAL.VL_PM,  ');
    Add('  CA_PARAMETRO_COMERCIAL.FL_TRAVAQN, ');
    Add('  CA_PARAMETRO_COMERCIAL.FL_TRAVAKG, ');
    Add('  CA_PARAMETRO_COMERCIAL.FL_TRAVAKGMIN, ');
    Add('  VENDEDOR.NM_VENDEDOR,  ');
    Add('  VEICULO_TIPO.QN_CAPATIPOVEIC,  ');
    Add('  TRANSPORTADOR_VEICULO.QN_FATOFRETABATVEICTRAN,  ');
    Add('  FRETE_ABATIDO.VL_QUILFRETABAT,  ');
    Add('  CA_PARAMETRO_COMERCIAL.ID_FORNECEDOR_TRANSPORTADOR  ');
    Add('FROM  CA_PARAMETRO_COMERCIAL,    ');
    Add('      VENDEDOR,                  ');
    Add('      TRANSPORTADOR_VEICULO,     ');
    Add('      VEICULO_TIPO,              ');
    Add('      FRETE_ABATIDO              ');
    Add('WHERE VENDEDOR.ID_VENDEDOR = CA_PARAMETRO_COMERCIAL.ID_VENDEDOR  AND ');
    Add('      TRANSPORTADOR_VEICULO.GN_PLACVEICTRAN = CA_PARAMETRO_COMERCIAL.GN_PLACVEICTRAN AND ');
    Add('      TRANSPORTADOR_VEICULO.ID_TIPOVEIC = VEICULO_TIPO.ID_TIPOVEIC AND  ');
    Add('      VEICULO_TIPO.ID_TIPOVEIC = FRETE_ABATIDO.ID_TIPOVEIC AND ');
    Add('      TRANSPORTADOR_VEICULO.ID_FORNECEDOR_TRANSPORTADOR =  CA_PARAMETRO_COMERCIAL.ID_FORNECEDOR_TRANSPORTADOR(+) ');
    Add('  AND CA_PARAMETRO_COMERCIAL.EMPRESA= ''' + gs_Empresa + '''  ');
    Add('  AND CA_PARAMETRO_COMERCIAL.FILIAL= ' + IntToStr(GI_FILIAL));
  End;
 XTM:=MResul.Lines.Count;
 If XTM >0 then
  Begin
    Qr.SQL.Add(' AND ');
    Qr.SQL.Add(MResul.Text);
  End
 ELSE
  Begin
    Screen.Cursor := crDefault;
    If MessageDlg('Exibir listagem sem filtro?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
      exit
    Else
      Screen.Cursor := crSQLWait;
    end;
    Qr.SQL.Add('ORDER BY CA_PARAMETRO_COMERCIAL.DT_PARAMETRO');
    Qr.Open;
  //**********************************************
    PageControl1.Pages[1].Show;
    Screen.Cursor := crDefault;
    PageControl1.Pages[1].TabVisible := True;
    PageControl1.Pages[2].TabVisible := True;
    QrItem.Open;
    Atual_ToolBar(9);
    PanelItens.Enabled := False;
End;

procedure TFrmParamComercial.FormDestroy(Sender: TObject);
begin
  FrmParamComercial:=Nil;
end;

Function  TFrmParamComercial.Bot_Flat(Botao:Integer):string;
begin
 SB_PROXIMO.Flat  := True;
 SB_ANTERIOR.Flat := True;
 SB_ULTIMO.Flat   := True;
 SB_PRIMEIRO.Flat := True;
 SB_NOVO.Flat     := True;
 SB_EXCLUI.Flat   := True;
// SB_Divide.Flat   := True;
 SB_EDIT.Flat     := True;
 SB_ATUAL.Flat    := True;
// SB_ZERA.Flat     := True;
 SB_CONFIRMA.Flat := True;
 SB_CANCEL.Flat   := True;
// SB_PRINT.Flat    := True;
 Sb_Sair.Flat     := True;
// SB_Bloqueio.Flat := True;
// SB_CancelBloqueio.Flat := True;
 If Botao=1  then SB_PRIMEIRO.Flat := False;
 If Botao=2  then SB_ANTERIOR.Flat := False;
 If Botao=3  then SB_PROXIMO.Flat  := False;
 If Botao=4  then SB_ULTIMO.Flat   := False;
 If Botao=5  then SB_NOVO.Flat     := False;
 If Botao=6  then SB_EXCLUI.Flat   := False;
 If Botao=7  then SB_EDIT.Flat     := False;
 If Botao=8  then SB_ATUAL.Flat    := False;
 If Botao=9  then SB_CONFIRMA.Flat := False;
 If Botao=10 then SB_CANCEL.Flat   := False;
 If Botao=11 then Sb_Sair.Flat     := False;
// If Botao=12 then SB_PRINT.Flat    := False;
end;

procedure TFrmParamComercial.SB_ATUALClick(Sender: TObject);
begin
  Qr.Refresh;
end;

Function TFrmParamComercial.Atual_ToolBar(BtOrdem: Integer): string;
begin
 CASE BtOrdem of
   5,7:begin
    SB_NOVO.Enabled := False;
    SB_EDIT.Enabled := False;
    SB_ATUAL.Enabled := False;
    SB_EXCLUI.Enabled := False;
    SB_CONFIRMA.Enabled := TRUE;
    SB_CANCEL.Enabled := TRUE;
    SB_PRIMEIRO.Enabled := False;
    SB_ANTERIOR.Enabled := False;
    SB_PROXIMO.Enabled := False;
    SB_ULTIMO.Enabled := False;
 //   SB_PRINT.Enabled := False;
   end;
   9..11:begin
    SB_NOVO.Enabled := True;
    SB_EDIT.Enabled := True;
    SB_ATUAL.Enabled := True;
    SB_EXCLUI.Enabled := True;
    SB_CONFIRMA.Enabled := FALSE;
    SB_CANCEL.Enabled := FALSE;
    SB_PRIMEIRO.Enabled := True;
    SB_ANTERIOR.Enabled := True;
    SB_PROXIMO.Enabled := True;
    SB_ULTIMO.Enabled := True;
//    SB_PRINT.Enabled := True;
   end;
 end;
end;

procedure TFrmParamComercial.SB_PRIMEIROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(1);
end;

procedure TFrmParamComercial.SB_ANTERIORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(2);
end;

procedure TFrmParamComercial.SB_PROXIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(3);
end;

procedure TFrmParamComercial.SB_ULTIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(4);
end;

procedure TFrmParamComercial.SB_NOVOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(5);
end;

procedure TFrmParamComercial.SB_EXCLUIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(6);
end;

procedure TFrmParamComercial.SB_EDITMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(7);
end;

procedure TFrmParamComercial.SB_ATUALMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(8);
end;

procedure TFrmParamComercial.SB_CONFIRMAMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(9);
end;

procedure TFrmParamComercial.SB_CANCELMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(10);
end;

procedure TFrmParamComercial.Sb_SairMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(11);
end;

procedure TFrmParamComercial.ToolButton3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmParamComercial.ToolBar1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmParamComercial.PageControl1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmParamComercial.ToolButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmParamComercial.ToolButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmParamComercial.BPesqPlacaClick(Sender: TObject);
begin
If (Qr.State in [dsedit,dsinsert]) then
begin
 try
   FrmPesqCaminhao:=TFrmPesqCaminhao.Create(Self);
   FrmPesqCaminhao.VORIGEM:= 3;
   FrmPesqCaminhao.ShowModal;
 except;
   FrmPesqCaminhao.Free;
 end;
 Qr.Post;
// Qr.ApplyUpdates;
// Qr.CommitUpdates;
// Qr.Refresh;
// Qr.Edit;
end;

end;

procedure TFrmParamComercial.FormShow(Sender: TObject);
begin
IF LCAMPOS.Items.Count=0 then
 BEGIN
  With LCampos.Items do
   Begin
     Add('Código do Parâmetro ');
     Add('Data do Lançamento     ');
     Add('Placa do Veículo  ');
     Add('Cód. Vendedor  ');
     Add('Vendedor ');
     Add('Cota de Peso ');
     Add('Cota Valor ');
     Add('Preço Médio ');
     Add('Flag Trava ');
     Add('Capacidade do Veículo  ');
     Add('Fator de Frete ');
     Add('Frete do Veículo ');
   End;
 END;
 PageControl1.Pages[1].TabVisible:=false;
 PageControl1.Pages[2].TabVisible:=false;
end;

procedure TFrmParamComercial.BtPesqVendClick(Sender: TObject);
begin
 FrmOriPesq:= 9;
 try
  FrmPesqVend:=TFrmPesqVend.Create(Self);
  FrmPesqVend.ShowModal;
 except;
  FrmPesqVend.Free;
 end;
end;

procedure TFrmParamComercial.DBPmedioExit(Sender: TObject);
begin
  If (Qr.State in [DsEdit,DsInsert]) then
  begin
    QrVL_COTA.Value := (QrVL_PM.value * QrQN_COTA.Value);
  end;
end;

procedure TFrmParamComercial.BtPesqMatEmbaClick(Sender: TObject);
begin
If (QrItem.State in [DsEdit,DsInsert]) then
Begin
 FrmOriPesq:= 3;
 try
  FrmPesqMatEmba:=TFrmPesqMatEmba.Create(Self);
  FrmPesqMatEmba.ShowModal;
 except;
  FrmPesqMatEmba.Free;
 end;
End;
end;

procedure TFrmParamComercial.SB_NOVOITEMClick(Sender: TObject);
begin
  Qr.Post;
  Qr.CommitUpdates;
  Qr.ApplyUpdates;
  QrItem.Insert;
  QrItemID_PARAMETRO.Value := QrID_PARAMETRO.Value;
  PanelItens.Enabled := True;
  BtPesqMatEmbaClick(nil);
  SB_NOVOITEM.Enabled := False;
  SB_EXCLUIITEM.Enabled := False;
  SB_CONFIRMAITEM.Enabled := True;
  SB_CANCELITEM.Enabled := True;
end;

procedure TFrmParamComercial.SB_CONFIRMAITEMClick(Sender: TObject);
begin
 IF (QrItem.State in [DsInsert,DsEdit])  then
   Begin
    If (QrQN_COTA.Value+QrItemQN_COTA.Value)>QrQN_CAPATIPOVEIC.Value then
     begin
      If MessageDlg('Atenção! Cota maior que a capacidade do veiculo. Confirma?',mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrNo then
         Exit;
     end;
    QrItemVL_COTA.Value := (QrItemVL_PM.value * QrItemQN_COTA.Value);
    QRItem.Post;
    QRItem.ApplyUpdates;
    QRItem.CommitUpdates;

    Qr.Edit;
    QrQN_COTA.Value := QrQN_COTA.Value + QrItemQN_COTA.Value;
    If (QrQN_COTA.Value < 1) then
      QrQN_COTA.Value := 0;
    Qr.Post;
    Qr.CommitUpdates;
    Qr.ApplyUpdates;
    SB_NOVOITEM.Enabled := True;
    SB_EXCLUIITEM.Enabled := True;
    SB_CONFIRMAITEM.Enabled := False;
    SB_CANCELITEM.Enabled := False;
   End;

end;

procedure TFrmParamComercial.SB_CANCELITEMClick(Sender: TObject);
begin
  QrItem.CancelUpdates; 
  SB_NOVOITEM.Enabled := True;
  SB_EXCLUIITEM.Enabled := True;
  SB_CONFIRMAITEM.Enabled := False;
  SB_CANCELITEM.Enabled := False;
end;

procedure TFrmParamComercial.SB_EXCLUIITEMClick(Sender: TObject);
begin
 If MessageDlg('Deseja Realmente Excluir o Item selecionado?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  Begin
   Qr.Edit;
   QrQN_COTA.Value := QrQN_COTA.Value - QrItemQN_COTA.Value;
   Qr.Post;
   QrItem.Delete;
   QrItem.ApplyUpdates;
   QrItem.CommitUpdates;
   DBGrid2.Refresh;
  End;
end;

end.

