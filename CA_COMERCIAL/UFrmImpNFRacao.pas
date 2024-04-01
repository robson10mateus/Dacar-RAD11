unit UFrmImpNFRacao;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TFrmImpNFRacao = class(TForm)
    PageControl1: TPageControl;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    TabLista: TTabSheet;
    ToolButton1: TToolButton;
    Sb_Sair: TSpeedButton;
    SB_PRINT: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PRIMEIRO: TSpeedButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
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
    QrNF: TOraQuery;
    SB_ATUAL: TSpeedButton;
    DSNF: TOraDataSource;
    QrNFDCA: TStringField;
    QrNFMEMOEXP: TStringField;
    QrNFDT_EMBARQUE: TDateTimeField;
    QrNFOBS: TStringField;
    QrNFFL_TIPONOTAFISC: TStringField;
    QrNFDT_EMISNOTAFISC: TDateTimeField;
    QrNFDT_SAIDNOTAFISC: TDateTimeField;
    QrNFNR_CFOP_NOTAFISC: TStringField;
    QrNFNM_NATUOPERNOTAFISC: TStringField;
    QrNFID_CLIENTE: TFloatField;
    QrNFID_FORNECEDOR: TFloatField;
    QrNFNM_DESTREMENOTAFISC: TStringField;
    QrNFGN_ENDENOTAFISC: TStringField;
    QrNFNM_BAIRNOTAFISC: TStringField;
    QrNFNR_CEPNOTAFISC: TStringField;
    QrNFNM_CIDANOTAFISC: TStringField;
    QrNFSG_ESTANOTAFISC: TStringField;
    QrNFNM_PAISNOTAFISC: TStringField;
    QrNFNR_FONENOTAFISC: TStringField;
    QrNFNR_CNPJNOTAFISC: TStringField;
    QrNFNR_CPFNOTAFISC: TStringField;
    QrNFNR_IENOTAFISC: TStringField;
    QrNFNR_RGNOTAFISC: TStringField;
    QrNFVL_BASEICMSNOTAFISC: TFloatField;
    QrNFVL_ICMSNOTAFISC: TFloatField;
    QrNFVL_SEGUNOTAFISC: TFloatField;
    QrNFVL_OUTRDESPNOTAFISC: TFloatField;
    QrNFVL_IPINOTAFISC: TFloatField;
    QrNFVL_NOTAFISC: TFloatField;
    QrNFVL_BASEIPINOTAFISC: TFloatField;
    QrNFNM_TRANSPORTADOR_NOTAFISC: TStringField;
    QrNFGN_PLACVEICNOTAFISC: TStringField;
    QrNFNM_ENDETRANNOTAFISC: TStringField;
    QrNFNM_CIDATRANNOTAFISC: TStringField;
    QrNFSG_ESTATRANNOTAFISC: TStringField;
    QrNFNR_CNPJTRANNOTAFISC: TStringField;
    QrNFNR_CPFTRANNOTAFISC: TStringField;
    QrNFNR_IETRANNOTAFISC: TStringField;
    QrNFNR_RGTRANNOTAFISC: TStringField;
    QrNFQN_VOLUNOTAFISC: TIntegerField;
    QrNFGN_ESPENOTAFISC: TStringField;
    QrNFGN_MARCNOTAFISC: TStringField;
    QrNFNR_VOLUNOTAFISC: TIntegerField;
    QrNFQN_PESOBRUTNOTAFISC: TFloatField;
    QrNFQN_PESOLIQUNOTAFISC: TFloatField;
    QrNFGN_ENDEENTRNOTAFISC: TStringField;
    QrNFNM_BAIRENTRNOTAFISC: TStringField;
    QrNFNM_CIDAENTRNOTAFISC: TStringField;
    QrNFSG_ESTAENTRNOTAFISC: TStringField;
    QrNFGN_CEPENTRNOTAFISC: TStringField;
    QrNFFL_PESSNOTAFISC: TStringField;
    QrNFFL_PESSTRANNOTAFISC: TStringField;
    QrNFFL_TIPOFRETNOTAFISC: TStringField;
    QrNFPC_ICMSFRETNOTAFISC: TFloatField;
    QrNFVL_ICMSFRETNOTAFISC: TFloatField;
    QrNFDT_PROCNOTAFISC: TDateTimeField;
    QrNFVL_DEVOIPINOTAFISC: TFloatField;
    QrNFFL_ZONAFRANNOTAFISC: TStringField;
    QrNFFL_IMPRNOTAFISC: TStringField;
    QrNFFL_CANCNOTAFISC: TStringField;
    QrNFFL_EXPONOTAFISC: TStringField;
    QrNFVL_IPIISENNOTAFISC: TFloatField;
    QrNFVL_IPIOUTRNOTAFISC: TFloatField;
    QrNFGN_OBSENOTAFISC: TStringField;
    QrNFVL_DESCPEDIVEND_NOTAFISC: TFloatField;
    QrNFVL_FRETNOTAFISC: TFloatField;
    QrNFSG_ESTAPLACVEICNOTAFISC: TStringField;
    QrNFFX_NOTAFISC: TStringField;
    QrNFVL_PRODNOTAFISC: TFloatField;
    QrNFNR_NOTAFISC: TFloatField;
    QrNFGN_OBSDESCNOTAFISC: TStringField;
    QrNFEMPRESA: TStringField;
    QrNFFILIAL: TIntegerField;
    QrNFID_NOTAFISC: TFloatField;
    QrNFSG_SERINOTAFISC_NOTAFISC: TStringField;
    QrNFID_PEDIVEND: TFloatField;
    SB_Gera: TSpeedButton;
    ToolButton4: TToolButton;
    qryTemp: TOraQuery;
    grdDados: TDBGrid;
    DSPediVe: TOraDataSource;
    qryTempPediItem: TOraQuery;
    qryPediVend: TOraQuery;
    qryNotaFisc: TOraQuery;
    qryPediVendItem: TOraQuery;
    qryNotaFiscItem: TOraQuery;
    qryNotaFiscBaseIcms: TOraQuery;
    OSQL: TOraSQL;
    ToolButton5: TToolButton;
    SB_HTML: TSpeedButton;
    SB_CancelaNF: TSpeedButton;
    ToolButton6: TToolButton;
    QrytempUpda: TOraQuery;
    QImpDocPed: TSmartQuery;
    QImpDocPedDT_CARGEXPE: TDateTimeField;
    QImpDocPedID_CARGEXPE: TFloatField;
    QImpDocPedFL_STATCARGEXPE: TStringField;
    QImpDocPedID_PEDIVEND: TFloatField;
    QImpDocPedID_CLIENTE: TFloatField;
    QImpDocPedFL_STATPEDIVEND: TStringField;
    QImpDocPedDT_FATUPEDIVEND: TDateTimeField;
    QImpDocPedID_TIPOPEDIVEND: TFloatField;
    QImpDocPedID_FORMPAGA: TFloatField;
    QImpDocPedID_SITUCOBR: TFloatField;
    QImpDocPedID_INSTCOBR: TFloatField;
    QImpDocPedID_CONTA: TFloatField;
    QImpDocPedDT_ENTRPEDIVEND: TDateTimeField;
    QImpDocPedEMPRESA: TStringField;
    QImpDocPedFILIAL: TIntegerField;
    QImpDocPedID_VENDEDOR: TFloatField;
    QImpDocPedVL_PEDIVEND: TFloatField;
    QImpDocPedFL_CREDUSADPEDIVEND: TStringField;
    QImpDocPedVL_TRANAUTOPEDIVEND: TFloatField;
    QImpDocPedPC_IMPOFRETAUTOPEDIVEND: TFloatField;
    QImpDocPedFL_BLOQAJUSFINAPEDIVEND: TStringField;
    QImpDocPedVL_OUTRAJUSANTPEDIVEND: TFloatField;
    QImpDocPedVL_OUTRAJUSPEDIVEND: TFloatField;
    QImpDocPedFL_COMIVEND: TStringField;
    QImpDocPedPC_COMIVEND: TFloatField;
    QImpDocPedNM_CLIENTE: TStringField;
    QImpDocPedNR_AGENBANC: TStringField;
    QImpDocPedNR_BANCO: TStringField;
    QImpDocPedNR_CONTA: TStringField;
    QImpDocPedNR_CODICEDECONT: TStringField;
    QImpDocPedSG_SERINOTAFISC: TStringField;
    QImpDocPedNR_NOTAFISC: TFloatField;
    QImpDocPedFL_CANCNOTAFISC: TStringField;
    QImpDocPedFL_IMPRNOTAFISC: TStringField;
    QImpDocPedNM_FORMPAGA: TStringField;
    QImpDocPedNM_TIPOPEDIVEND: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
    procedure SB_NOVOClick(Sender: TObject);
    procedure SB_PRINTClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure grdDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
    procedure SB_PRINTMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_CANCELMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Sb_SairMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolBar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PageControl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BPESQClick(Sender: TObject);
    procedure SB_GeraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_GeraClick(Sender: TObject);
    function GeraNota(pi_CodiPedi: Integer; ps_TipoPedi: String; ps_numbole:string): Boolean;
    procedure SB_HTMLMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SB_HTMLClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SB_CancelaNFClick(Sender: TObject);

  private
    ls_nrieprodclie:String;

    { Private declarations }
  public
    VFINAL,Vdata,Vdtstr:STRING;
    SELPE:integer;
    us_MensErro,ls_NumeBole:string;
    ub_AjusFretPedi,VHTML: Boolean;
    ur_ValoFreteAuto, ur_PercImpFretAuto:Double;

  end;

var
  FrmImpNFRacao: TFrmImpNFRacao;

implementation

uses Principal,Global, UFrmRelNFRacao, UfrmQRMDNotas, UFrmSeldata,
  UPesquiCliente, UFrmPesqVend, UFrmRelNFRacao66;

{$R *.dfm}

procedure TFrmImpNFRacao.FormCreate(Sender: TObject);
begin
  // QrCliente.Open;
 //  QrVENDEDOR.Open;
 //  QryCtPr.Open;
 //  QryCtPr.Last;

end;

procedure TFrmImpNFRacao.Sb_SairClick(Sender: TObject);
begin
   QImpDocPed.Close;
   Close;
//   QrVENDEDOR.Close;
//   FrmCTAReceber.Close;
end;

procedure TFrmImpNFRacao.SB_PRIMEIROClick(Sender: TObject);
begin
  QImpDocPed.First;
end;

procedure TFrmImpNFRacao.SB_ANTERIORClick(Sender: TObject);
begin
  QImpDocPed.Prior;
end;

procedure TFrmImpNFRacao.SB_PROXIMOClick(Sender: TObject);
begin
  QImpDocPed.Next;
end;

procedure TFrmImpNFRacao.SB_ULTIMOClick(Sender: TObject);
begin
  QImpDocPed.Last;
end;

procedure TFrmImpNFRacao.SB_NOVOClick(Sender: TObject);
begin
//  QImpDocPed.Append;
//  IF PageControl1.ActivePageIndex=0 then
//    DBGrid1.SetFocus
//  ELSE
//     DBNUMTITU.SetFocus;
     Atual_ToolBar(5);
end;

procedure TFrmImpNFRacao.SB_PRINTClick(Sender: TObject);
var
  //iniImpressora: TIniFile;
  li_IndeImpr: Integer;
  li_Loop: Integer;
  li_NumeNota: Integer;
  ls_SiglSeriNota: String;
  ls_NomeImpr: String;
  vlLinha, VSEQNOTA: Integer;
begin
  Atual_ToolBar(9);
  If grdDados.SelectedRows.Count = 0 then
    begin
      MessageDlg('Nenhum pedido foi selecionado para impressão de nota fiscal.' + #13 +
                 'Por favor, verifique !', mtInformation, [mbOK], 0);
      Exit;
    end;

  // Loop para todos os pedidos selecionados
  for li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
    begin
      //Verificar se a NF tem o tipo para a cfop 5601 (sem itens com obs do pedido)
      if (QImpDocPed['ID_TIPOPEDIVEND']= 66 ) then
        begin
          FrmRelNFRacao66 := TFrmRelNFRacao66.Create(Self);
          with FrmRelNFRacao66 do
            begin
              // Posicionamos no registro a ser impresso
              grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);
              // Selecionamos a nota fiscal de acordo com o pedido
              qryNotaFisc.Close;
              qryItemNotaFisc.Close;
              qryNotaFisc.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
              qryNotaFisc.ParamByName('VCANCEL').AsString := 'N';

              qryNotaFisc.Open;
              qryItemNotaFisc.Open;

              // Imprimimos a nota fiscal
              RL_Notas.PageSetup.OrientedHeight := 165;
              RL_Notas.PageSetup.OrientedWidth  := 210;

              //Dados cadastrais
              if gi_Filial = 5 then
                begin
                  RLEnd.Caption:= 'Rodovia Raposo Tavares, Km 176,8';
                  RLBairro.Caption:= 'Bairro: Pinhal - Itapetininga - SP';
                  RLCepFone.Caption:= 'CEP: 18.201-012 - Fone/Fax: (15) 3275-9018';
                  RLCnpj.Caption:= '58.852.518/0011-05';
                  RLIe.Caption:= '371.191.901.118';
                end;
              if gi_Filial = 6 then
                begin
                  RLEnd.Caption:= 'Estrada Municipal Estacao de Pereiras, sn';
                  RLBairro.Caption:= 'Bairro: Estacao de Pereiras - Pereiras - SP';
                  RLCepFone.Caption:= 'CEP: 18.580-000 - Fone: (14) 3888-8700';
                  RLCnpj.Caption:= '58.852.518/0012-96';
                  RLIe.Caption:= '523.001.860.117';
                end;
              If VHTML then
                RL_Notas.Preview
              Else
                RL_Notas.Print;
              RL_Notas.DefaultFilter.Free;
            end;
        end
      else
        begin
          FrmRelNFRacao := TFrmRelNFRacao.Create(Self);
          with FrmRelNFRacao do
            begin
              // Posicionamos no registro a ser impresso
              grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);
              // Selecionamos a nota fiscal de acordo com o pedido
              qryNotaFisc.Close;
              qryItemNotaFisc.Close;
              qryNotaFisc.ParamByName('pi_pedivend').AsInteger := QImpDocPed.FieldByName('ID_PEDIVEND').AsInteger;
              qryNotaFisc.ParamByName('VCANCEL').AsString := 'N';

              qryNotaFisc.Open;
              qryItemNotaFisc.Open;

              // Imprimimos a nota fiscal
              RL_Notas.PageSetup.OrientedHeight := 165;
              RL_Notas.PageSetup.OrientedWidth  := 210;

              //Dados cadastrais
              if gi_Filial = 5 then
                begin
                  RLEnd.Caption:= 'Rodovia Raposo Tavares, Km 176,8';
                  RLBairro.Caption:= 'Bairro: Pinhal - Itapetininga - SP';
                  RLCepFone.Caption:= 'CEP: 18.201-012 - Fone/Fax: (15) 3275-9018';
                  RLCnpj.Caption:= '58.852.518/0011-05';
                  RLIe.Caption:= '371.191.901.118';
                end;
              if gi_Filial = 6 then
                begin
                  RLEnd.Caption:= 'Estrada Municipal Estacao de Pereiras, sn';
                  RLBairro.Caption:= 'Bairro: Estacao de Pereiras - Pereiras - SP';
                  RLCepFone.Caption:= 'CEP: 18.580-000 - Fone: (14) 3888-8700';
                  RLCnpj.Caption:= '58.852.518/0012-96';
                  RLIe.Caption:= '523.001.860.117';
                end;

              If VHTML then
                RL_Notas.Preview
              Else
                RL_Notas.Print;

              RL_Notas.DefaultFilter.Free;
            end;
        end;
      VHTML:= False;
    end;
end;

procedure TFrmImpNFRacao.SB_CANCELClick(Sender: TObject);
begin
  QImpDocPed.CancelUpdates;
  Atual_ToolBar(10);
end;

procedure TFrmImpNFRacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmImpNFRacao:=Nil;
//  FrmPrincipal.VEN021.Enabled:= True;
  FrmPrincipal.ACVEN021.Enabled:= True;
  Action:=caFree;
end;


procedure TFrmImpNFRacao.Button1Click(Sender: TObject);
var
  Bitmap : TBitMap;
begin
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
end;



procedure TFrmImpNFRacao.grdDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 IF QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString <> '' then
    grdDados.Canvas.font.Color := clTeal;
 IF QImpDocPed.FieldByName('FL_IMPRNOTAFISC').AsString = 'S' then
    grdDados.Canvas.font.Color  := clLIME;
 IF QImpDocPed.FieldByName('FL_CANCNOTAFISC').AsString = 'S' then
    grdDados.Canvas.font.Color  := clRED;
 If gdFocused in State then
   with (Sender as TDBGrid).Canvas do
     begin
       Brush.Color:=clAqua;
       font.Color :=clBlack;
     end;

 grdDados.DefaultDrawColumnCell(rect,DataCol,column,state);
end;


procedure TFrmImpNFRacao.SB_EDITClick(Sender: TObject);
begin
  QImpDocPed.Edit;
  Atual_ToolBar(7);
end;

procedure TFrmImpNFRacao.RadioGroup1Click(Sender: TObject);
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

procedure TFrmImpNFRacao.QrCBRBeforePost(DataSet: TDataSet);
begin
//  ShowMessage(DBEdit3.Field.CurValue);

//  QrCBRRSEQUENCI.Value:= strtoint(DBEdit3.Field.CurValue);

end;

procedure TFrmImpNFRacao.LCamposClick(Sender: TObject);
begin
 SELPE:=0;
 CASE LCAMPOS.ItemIndex OF
       1:SELPE:=1;
       3:SELPE:=3;
    4..5:SELPE:=5;
  17..18:SELPE:=5;
 END;
 IF SELPE>0 then
   BPESQ.Visible:=TRUE;
end;

procedure TFrmImpNFRacao.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmImpNFRacao.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmImpNFRacao.BtIncluirClick(Sender: TObject);
var
  Vre,Vlinha:String;
  Vcampos:integer;
begin
  If EdExpre.Text<>'' then
   Begin
     IF MResul.Lines.Count>0 then
       begin
         If RGeou.ItemIndex=0  then
            Vre:='And '
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

   //Alterar nomes
    Case LCampos.itemindex of
       0:Vre:=Vre + 'Pedido_venda.ID_FORMPAGA';
       1:Vre:=Vre + 'pedido_venda.ID_CLIENTE';
       2:Vre:=Vre + 'Pedido_venda.ID_CONTA';
       3:Vre:=Vre + 'pedido_venda.ID_VENDEDOR';
       4:Vre:=Vre + 'Expedicao_carga.DT_CARGEXPE';
       5:Vre:=Vre + 'Pedido_venda.DT_PEDIVEND';
       6:Vre:=Vre + 'Forma_pagamento.NM_FORMPAGA';
       7:Vre:=Vre + 'Cliente.NM_CLIENTE';
       8:Vre:=Vre + 'Vendedor.NM_VENDEDOR';
       9:Vre:=Vre + 'Boleto.NR_BOLETO';
      10:Vre:=Vre + 'Expedicao_carga.ID_CARGEXPE';
      11:Vre:=Vre + 'Conta.NR_CONTA';
      12:Vre:=Vre + 'Nota_fiscal.NR_NOTAFISC';
      13:Vre:=Vre + 'Pedido_venda.ID_PEDIVEND';
      14:Vre:=Vre + 'Nota_fiscal.SG_SERINOTAFISC_NOTAFISC';
      15:Vre:=Vre + 'Expedicao_carga.FL_STATCARGEXPE';
      16:Vre:=Vre + 'Pedido_venda.FL_STATPEDIVEND';
      17:Vre:=Vre + 'Pedido_venda.DT_FATUPEDIVEND';
      18:Vre:=Vre + 'TRUNC(Pedido_venda.dt_entrpedivend)';
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
         4..5:Vre:=Vre + 'TO_DATE(''';
         6..9:Vre:=Vre + '''';
           11:Vre:=Vre + '''';
       14..16:Vre:=Vre + '''';
       17..18:Vre:=Vre + 'TO_DATE(''';
    end;

    If CBCond.ItemIndex=6 then
     Vre:=Vre + '%';

    Vre:=Vre + Edexpre.text;

    If CBCond.ItemIndex=6 then
     Vre:=Vre + '%';

    Case LCampos.itemindex of
         4..5:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
         6..9:Vre:= Vre + '''';
           11:Vre:= Vre + '''';
       14..16:Vre:= Vre + '''';
       17..18:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
    end;

    Vre:=Vre+')';

    MResul.Lines.Add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;

end;

procedure TFrmImpNFRacao.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin
// TRY
   Screen.Cursor := crSQLWait;
   QImpDocPed.Close;
   WITH QImpDocPed.SQL DO
    BEGIN
      Clear;
      Text :=      ' SELECT DISTINCT Expedicao_carga.DT_CARGEXPE,                                        '+
                   '       Expedicao_carga.ID_CARGEXPE,                                                  '+
                   '       Expedicao_carga.FL_STATCARGEXPE,                                              '+
                   '       Pedido_venda.ID_PEDIVEND,                                                     '+
                   '       Pedido_venda.ID_CLIENTE,                                                      '+
                   '       Pedido_venda.FL_STATPEDIVEND,                                                 '+
                   '       Pedido_venda.DT_FATUPEDIVEND,                                                 '+
                   '       Pedido_venda.ID_TIPOPEDIVEND,                                                 '+
                   '       Pedido_venda.ID_FORMPAGA,                                                     '+
                   '       Pedido_venda.ID_SITUCOBR,                                                     '+
                   '       Pedido_venda.ID_INSTCOBR,                                                     '+
                   '       Pedido_venda.ID_CONTA,                                                        '+
                   '       Pedido_venda.DT_ENTRPEDIVEND,                                                 '+
                   '       Pedido_venda.EMPRESA,                                                         '+
                   '       Pedido_venda.FILIAL,                                                          '+
                   '       Pedido_venda.ID_VENDEDOR,                                                     '+
                   '       Pedido_venda.VL_PEDIVEND,                                                     '+
                   '       Pedido_venda.FL_CREDUSADPEDIVEND,                                             '+
                   '       Pedido_venda.VL_TRANAUTOPEDIVEND,                                             '+
                   '       Pedido_Venda.PC_IMPOFRETAUTOPEDIVEND,                                         '+
                   '       Pedido_venda.fl_bloqajusfinapedivend,                                         '+
                   '       Pedido_venda.VL_OUTRAJUSANTPEDIVEND,                                          '+
                   '       Pedido_venda.VL_OUTRAJUSPEDIVEND,                                             '+
                   '       Vendedor.FL_COMIVEND,                                                         '+
                   '       Vendedor.PC_COMIVEND,                                                         '+
                   '       Cliente.NM_CLIENTE,                                                           '+
                   '       Banco_agencia.NR_AGENBANC,                                                    '+
                   '       Banco.NR_BANCO,                                                               '+
                   '       Conta.NR_CONTA,                                                               '+
                   '       Conta.NR_CODICEDECONT,                                                        '+
                   '       Nota_fiscal_serie2.SG_SERINOTAFISC,                                           '+
                   '       Nota_fiscal.NR_NOTAFISC,                                                      '+
                   '       Nota_fiscal.FL_CANCNOTAFISC,                                                  '+
                   '       Nota_fiscal.FL_IMPRNOTAFISC,                                                  '+
                   '       Forma_pagamento.NM_FORMPAGA,                                                  '+
                   '       Pedido_venda_tipo.NM_TIPOPEDIVEND                                             '+
                   '  FROM EXPEDICAO_CARGA Expedicao_carga,                                              '+
                   '       PEDIDO_VENDA Pedido_venda,                                                    '+
                   '       PEDIDO_VENDA_NOTA_FISCAL Pedido_venda_nota_fiscal,                            '+
                   '       PEDIDO_VENDA_TIPO Pedido_venda_tipo,                                          '+
                   '       CLIENTE Cliente,                                                              '+
                   '       NOTA_FISCAL_SERIE Nota_fiscal_serie,                                          '+
                   '       NOTA_FISCAL_SERIE Nota_fiscal_serie2,                                         '+
                   '       NOTA_FISCAL Nota_fiscal,                                                      '+
                   '       CONTA Conta,                                                                  '+
                   '       BANCO Banco,                                                                  '+
                   '       BANCO_AGENCIA Banco_agencia,                                                  '+
                   '       VENDEDOR Vendedor,                                                            '+
                   '       BOLETO Boleto,                                                                '+
                   '       FORMA_PAGAMENTO Forma_pagamento                                               '+
                   ' WHERE (Pedido_venda.ID_PEDIVEND = Pedido_venda_nota_fiscal.ID_PEDIVEND (+))          '+
                   '   AND (Nota_fiscal.SG_SERINOTAFISC_NOTAFISC = Nota_fiscal_serie.SG_SERINOTAFISC (+)) '+
                   '   AND (Pedido_venda_nota_fiscal.ID_NOTAFISC = Nota_fiscal.ID_NOTAFISC(+))            '+
                   '   AND (Expedicao_carga.ID_CARGEXPE = Pedido_venda.ID_CARGEXPE)                       '+
                   '   AND (Pedido_venda.ID_CLIENTE = Cliente.ID_CLIENTE)                                 '+
                   '   AND (Pedido_venda.ID_CONTA = Conta.ID_CONTA)                                       '+
                   '   AND (Conta.ID_AGENBANC = Banco_agencia.ID_AGENBANC(+))                             '+
                   '   AND (Banco_agencia.ID_BANCO = Banco.ID_BANCO(+))                                   '+
                   '   AND (Pedido_venda.ID_VENDEDOR = Vendedor.ID_VENDEDOR)                              '+
                   '   AND (Pedido_venda.ID_PEDIVEND = Boleto.ID_PEDIVEND(+))                             '+
                   '   AND (Pedido_venda.ID_TIPOPEDIVEND = Pedido_venda_tipo.ID_TIPOPEDIVEND)             '+
                   '   AND (Pedido_venda_tipo.ID_SERINOTAFISC = Nota_fiscal_serie2.ID_SERINOTAFISC)       '+
                   '   AND (Pedido_venda.ID_FORMPAGA = Forma_pagamento.ID_FORMPAGA)                       '+
                   '   AND (Expedicao_carga.FL_STATCARGEXPE = ''NF'')                                     ';
//                   '   AND (Pedido_venda.FL_STATPEDIVEND = ''NF'')                                        ';
    end;
      XTM:=MResul.Lines.Count;
      If XTM >0 then
        begin
         QImpDocPed.SQL.Add(' And ');
         QImpDocPed.SQL.Add(MResul.Text);
        end
       ELSE
        begin
         Screen.Cursor := crDefault;
         If MessageDlg('Exibir listagem sem filtro?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
            exit
         Else
            Screen.Cursor := crSQLWait;
        end;
      QImpDocPed.SQL.Add('ORDER BY Pedido_venda.ID_PEDIVEND');
      QImpDocPed.Open;

   PageControl1.Pages[1].Show;
   Screen.Cursor := crDefault;
   PageControl1.Pages[1].TabVisible := True;

   Atual_ToolBar(9);
end;

procedure TFrmImpNFRacao.FormDestroy(Sender: TObject);
begin
  FrmImpNFRacao:=Nil;
end;

Function  TFrmImpNFRacao.Bot_Flat(Botao:Integer):string;
begin
 SB_PROXIMO.Flat  := True;
 SB_ANTERIOR.Flat := True;
 SB_ULTIMO.Flat   := True;
 SB_PRIMEIRO.Flat := True;
// SB_NOVO.Flat     := True;
// SB_EXCLUI.Flat   := True;
// SB_EDIT.Flat     := True;
 SB_ATUAL.Flat    := True;
// SB_CONFIRMA.Flat := True;
// SB_CANCEL.Flat   := True;
 SB_PRINT.Flat    := True;
 SB_Gera.Flat     := True;
 Sb_Sair.Flat     := True;
 SB_HTML.Flat     := True;

 If Botao=1  then SB_PRIMEIRO.Flat := False;
 If Botao=2  then SB_ANTERIOR.Flat := False;
 If Botao=3  then SB_PROXIMO.Flat  := False;
 If Botao=4  then SB_ULTIMO.Flat   := False;
// If Botao=5  then SB_NOVO.Flat     := False;
// If Botao=6  then SB_EXCLUI.Flat   := False;
// If Botao=7  then SB_EDIT.Flat     := False;
 If Botao=8  then SB_ATUAL.Flat   := False;
// If Botao=9  then SB_CONFIRMA.Flat := False;
// If Botao=10 then SB_CANCEL.Flat   := False;
 If Botao=11 then Sb_Sair.Flat    := False;
 If Botao=12 then SB_PRINT.Flat   := False;
 If Botao=13 then SB_Gera.Flat    := False;
 If Botao=14 then SB_HTML.Flat    := False;

end;

Function TFrmImpNFRacao.Atual_ToolBar(BtOrdem: Integer): string;
begin
 CASE BtOrdem of
   5,7:begin
//    SB_NOVO.Enabled := False;
//    SB_EDIT.Enabled := False;
    SB_ATUAL.Enabled := False;
//    SB_EXCLUI.Enabled := False;
//    SB_CONFIRMA.Enabled := TRUE;
//    SB_CANCEL.Enabled := TRUE;
    SB_PRIMEIRO.Enabled := False;
    SB_ANTERIOR.Enabled := False;
    SB_PROXIMO.Enabled := False;
    SB_ULTIMO.Enabled := False;
    SB_PRINT.Enabled := False;
    SB_Gera.Enabled := False;
   end;
   9..13:begin
//    SB_NOVO.Enabled := True;
//    SB_EDIT.Enabled := True;
    SB_ATUAL.Enabled := True;
//    SB_EXCLUI.Enabled := True;
//    SB_CONFIRMA.Enabled := FALSE;
//    SB_CANCEL.Enabled := FALSE;
    SB_PRIMEIRO.Enabled := True;
    SB_ANTERIOR.Enabled := True;
    SB_PROXIMO.Enabled := True;
    SB_ULTIMO.Enabled := True;
    SB_PRINT.Enabled := True;
    SB_Gera.Enabled := True;
    SB_HTML.Enabled := True;
   end;
 end;
end;

procedure TFrmImpNFRacao.SB_ATUALClick(Sender: TObject);
begin
  QImpDocPed.Refresh;
end;

procedure TFrmImpNFRacao.SB_PRIMEIROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 Bot_Flat(1);
end;

procedure TFrmImpNFRacao.SB_ANTERIORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(2);
end;

procedure TFrmImpNFRacao.SB_PROXIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(3);
end;

procedure TFrmImpNFRacao.SB_ULTIMOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(4);
end;

procedure TFrmImpNFRacao.SB_NOVOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(5);
end;

procedure TFrmImpNFRacao.SB_EXCLUIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(6);
end;

procedure TFrmImpNFRacao.SB_EDITMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(7);
end;

procedure TFrmImpNFRacao.SB_ATUALMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(8);
end;

procedure TFrmImpNFRacao.SB_PRINTMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(12);
end;

procedure TFrmImpNFRacao.SB_CANCELMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(10);
end;

procedure TFrmImpNFRacao.Sb_SairMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(11);
end;

procedure TFrmImpNFRacao.ToolButton3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmImpNFRacao.ToolBar1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmImpNFRacao.ToolButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmImpNFRacao.ToolButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmImpNFRacao.PageControl1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(0);
end;

procedure TFrmImpNFRacao.BPESQClick(Sender: TObject);
begin
   XRPM:=2;
   FrmOriPesq:=9;
   CASE SELPE OF
     1:BEGIN
        FrmPesqCliente:=TFrmPesqCliente.Create(Self);
        FrmPesqCliente.Show;
       END;
     3:BEGIN
        FrmPesqVend:=TFrmPesqVend.Create(Self);
        FrmPesqVend.Show;
       END;
  4..5:BEGIN
        Cria_FrmSelData(Vdtstr);
        EdExpre.text:= Vdtstr;
       END;
   end;
   BPESQ.Visible:=FALSE;

end;

procedure TFrmImpNFRacao.SB_GeraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(13);
end;

procedure TFrmImpNFRacao.SB_GeraClick(Sender: TObject);
var
  lb_RegiAtua    : TBookMark;

  li_BoleTipoDocu: Integer;
  li_Loop, li_LoopParc: Integer;
  li_SequBole: Integer;
  ls_SequBole: String;
  lr_ValoTotaPediVend: Double;
  lr_ValoBole: Double;
  lr_ValoPrimParcBole: Double;
  lr_CentBole: Double;
  ld_DataBole: TDateTime;
  ls_ImprBole: String;
  ls_NumeTitu: String;
  ld_DataFatu: TDateTime;
  li_NumeNotaFisc,vlLinha: Integer;
  ls_NumeNotaFisc: String;
  ld_DataNotaFisc: TDateTime;
  lr_ValoNotaFisc: Double;
  lr_PercComi, lr_PercFixo: Double;
  lr_PercTotaComi: Double;
  lb_PagaComi: Boolean;
  lb_ComiVend: Boolean;
  lb_ComiVendClie: Boolean;
  lb_NotaCanc,ub_EdicInte: Boolean;
  lr_ValoComi: Double;
  lr_PercComiTota,ur_ValoFreteAuto,ur_PercImpFretAuto: Double;
  lr_DifePediFatu: Real;
  ls_WherAdic: String;
  ls_Boletos: String;
  lr_CotaDia: Real;
  ls_Moeda: String;
  VNF,vnovoboleto: Boolean;
begin

 Screen.Cursor := crSQLWait;

 // Iniciamos a variavel de controle
 lb_NotaCanc := False;

 // Verificamos se existe algum ítem selecionado
 If grdDados.SelectedRows.Count = 0 then
 begin
   Screen.Cursor := crDefault;
   MessageDlg('Nenhum pedido foi selecionado para geração de NF.' + #13 +
              'Por favor, verifique !', mtInformation, [mbOK], 0);
   Exit;
 end;
   //Verifica a Data do Sistema
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := ' select sysdate  from  dual ';
  qryTemp.Open;
  If not(qryTemp.IsEmpty) then
    ld_DataHora := qryTemp.FieldByName('SYSDATE').AsDateTime;
  qryTemp.close;

  // Iniciamos a variavel de controle
  lb_NotaCanc := False;

  // Pegamos a Data de Faturamento padrão
  Try //1
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Text := 'SELECT Sistema_parametro.ID_TIPODOCU_BOLETO,   '+
                        '       Sistema_parametro.DT_FATUDOCU            '+
                        '  FROM SISTEMA_PARAMETRO Sistema_parametro        ';
  //                        ' WHERE (Sistema_parametro.EMPRESA = ''' + gs_Empresa + ''')    '+
  //                        '   AND (Sistema_parametro.FILIAL = ' + IntToStr(gi_Filial) + ')';
    qryTemp.Open;

    // Guardamos o valor
    ld_DataFatu := qryTemp.FieldByName('DT_FATUDOCU').AsDateTime;

    If qryTemp.FieldByName('DT_FATUDOCU').AsString = '' then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Você deve especificar nos parâmetros do sistema ' +
                 'qual a data de faturamento padrão !', mtWarning, [mbOk], 0);
      Exit;
    end;
  Finally  //1
    qryTemp.Close;
  end;   //1

  // Marcamos o registro atual
  lb_RegiAtua := QImpDocPed.GetBookmark;

  For li_Loop := 0 to grdDados.SelectedRows.Count - 1 do
  begin

    // Posicionamos no registro a ser gerada NF
    grdDados.DataSource.DataSet.GotoBookmark(grdDados.SelectedRows.Items[li_Loop]);

    //Verificamos se o Status da Carga está FE.
    If (QImpDocPedFL_STATCARGEXPE.Value <> 'NF') then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('A documentação não pode ser gerada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + '.' + #13 +
                 'O Status da carga nro ' + IntToStr(QImpDocPed['ID_CARGEXPE']) + ' não está NF!', mtInformation, [mbOK], 0);
      // Pegamos o proximo pedido
      Continue;
    end;

    if (QImpDocPedFL_CANCNOTAFISC.Value = 'S') then
    begin
      // Indicamos que encontramos a nota fiscal cancelada
      lb_NotaCanc := True;
      Screen.Cursor := crDefault;
      If MessageDlg('A nota fiscal do pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' foi cancelada !' + #13 +
                    'Deseja gerar nova nota fiscal para o pedido ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Continue;
    end;
    //Verifica se a NF ja foi gerada
    if (QImpDocPedNR_NOTAFISC.Value > 0) then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('A Nota Fiscal do pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' já  foi gerada !', mtInformation, [mbOK], 0);
      qryTemp.Close;
      Continue;
    end;
    // Verificamos se a Data da Emissão (ld_DataFatu) é maior que a
    // data da Entrega do Pedido (DT_ENTRPEDIVEND).
    If ld_DataFatu > QImpDocPed.FieldByName('DT_ENTRPEDIVEND').AsDateTime then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('A Documentação não foi gerada para o pedido: ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' devido a Data da Entrega do Pedido incorreta.', mtInformation, [mbOK], 0);
      // Fechamos a query
      qryTemp.Close;
      Continue;
    end;

    // Verificamos se a documentação já foi gerada para o pedido
    If QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString <> '' then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Documentação já gerada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']), mtInformation, [mbOK], 0);
      // Fechamos a query
      qryTemp.Close;

      Continue;
    end;

    try
      // Ajustamos a variável dos erros
      us_MensErro := 'Geração da Nota Fiscal.';

      // Flag para ajuste do valor do frete no pedido
      ub_AjusFretPedi := True;

      li_SequBole := 0;

      ls_NumeBole := '';

      // Geramos a nota para o pedido
      If not GeraNota(QImpDocPed['ID_PEDIVEND'], 'NM',ls_NumeBole) then
      begin
                // Pedimos confirmação
        Screen.Cursor := crDefault;
        if MessageDlg('Erro na geração da NF do pedido: ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + #13 + #13 +
                      'Continua a gerar os proximos pedidos?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          QryTemp.Close;
          Exit;
        end
        Else
        begin
          continue;
        end;

      end;

      // Ajustamos a variável dos erros
      us_MensErro := 'Atualizando Data de Geração da Nota Fiscal.';

      // Ajustamos a variável dos erros
      us_MensErro := 'Atualizando Dados do Pedido de Venda.';

      // a flag de status e o total faturado
      ub_EdicInte := True;

      //  Atualizamos a data de geração no pedido de venda,
      QImpDocPed.Edit;
      QImpDocPed['DT_FATUPEDIVEND'] := ld_DataFatu;

      QryTemp.Close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Text := ' SELECT NOTA_FISCAL.qn_pesobrutnotafisc  '+
                          ' FROM NOTA_FISCAL,                       '+
                          '      pedido_venda_nota_fiscal           '+
                          ' WHERE  NOTA_FISCAL.id_notafisc = pedido_venda_nota_fiscal.id_notafisc   '+
                          '  and pedido_venda_nota_fiscal.id_pedivend = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString ;
      QryTemp.Open;

      QImpDocPed['VL_TRANAUTOPEDIVEND'] := QryTemp.Fieldbyname('qn_pesobrutnotafisc').AsFloat*0.02 ;
      QImpDocPed['PC_IMPOFRETAUTOPEDIVEND'] := ur_PercImpFretAuto;

      // Se tivermos faturando depois do pedido expedido
      If (QImpDocPed['FL_STATPEDIVEND'] = 'EX') or (QImpDocPed['FL_STATPEDIVEND'] = 'FE') or (QImpDocPed['FL_STATPEDIVEND'] = 'NF') then
      begin
        qryTemp.Close;
        qryTemp.SQL.Text :=
        'UPDATE PEDIDO_VENDA                                                                                                  '+
        '   SET VL_FATUPEDIVEND = (SELECT SUM(ROUND((VL_UNITITEMPEDIVEND *                                                     '+
        '                                 DECODE(QN_PESOPADREXPEITEMPEDIVEND, NULL, QN_PESOREALEXPEITEMPEDIVEND,              '+
        '                                                                        0, QN_PESOREALEXPEITEMPEDIVEND,              '+
        '                                        QN_PESOPADREXPEITEMPEDIVEND)*NVL(1+(Pedido_venda_item.vl_unitipi/100),1) ),2)) VL_FATURA                                   '+
        '                            FROM PEDIDO_VENDA_ITEM                                                                   '+
        '                           WHERE PEDIDO_VENDA_ITEM.ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ')'+
        ' WHERE ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + '                                             ';
      end
      else
      begin

        qryTemp.Close;
        qryTemp.SQL.Text :=
        'UPDATE PEDIDO_VENDA                                                                                                  '+
        '   SET VL_FATUPEDIVEND = (SELECT SUM(ROUND((VL_UNITITEMPEDIVEND *                                                     '+
        '                                 DECODE(QN_PESOPADREXPEITEMPEDIVEND, NULL, QN_PESOITEMPEDIVEND,                      '+
        '                                                                        0, QN_PESOITEMPEDIVEND,                      '+
        '                                        QN_PESOPADREXPEITEMPEDIVEND)*NVL(1+(Pedido_venda_item.vl_unitipi/100),1)),2)) VL_FATURA                                   '+
        '                            FROM PEDIDO_VENDA_ITEM                                                                   '+
        '                           WHERE PEDIDO_VENDA_ITEM.ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + ')'+
        ' WHERE ID_PEDIVEND = ' + QImpDocPed.FieldByName('ID_PEDIVEND').AsString + '                                             ';
      end;
      qryTemp.ExecSQL;

      // Iniciamos a variável
      lr_DifePediFatu := 0;

      // Se o pedido estiver com status de expedido sem documentação
      // impressa finalizamos o pedido
      if (QImpDocPed['FL_STATPEDIVEND'] = 'EX') OR (QImpDocPed['FL_STATPEDIVEND'] = 'NF') then
      begin
        // Ajustamos a flag do pedido
        QImpDocPed['FL_STATPEDIVEND'] := 'FE';

       // Atualizamos a data de geração no pedido de venda,
        QImpDocPed['DT_FATUPEDIVEND'] := ld_DataFatu;
      end;

      QImpDocPed.Post;
      ub_EdicInte := False;

      // Atualizamos o banco
      QImpDocPed.ApplyUpdates;

      // Limpamos o cache
      QImpDocPed.CommitUpdates;
      //colocar aqui
    except
      // Fechamos a query
      qryTemp.Close;
      qryTempPediItem.Close;

      Screen.Cursor := crDefault;
      MessageDlg('Erro na geração dos documentos do pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !', mtError, [mbOK], 0);

      MessageDlg('Ocorrência do erro: ' + #13 +
                 us_MensErro, mtWarning, [mbOk], 0);
      Exit;
     end;
  end;
  Screen.Cursor := crDefault;
  QImpDocPed.Refresh;
end;

Function TFrmImpNFRacao.GeraNota(pi_CodiPedi: Integer; ps_TipoPedi: String;ps_numbole:string): Boolean;
var
  lr_ValoIPI, lr_ValoItem, lr_ValoBrutItem, lr_ValoICMS, lr_ValoNota, lr_PercICMS, lr_Frete: Real;
  lr_BaseICMS, lr_TotaItem, lr_TotaBrutItem, lr_BaseRedu, lr_Volumes, lr_PesoBrut, lr_PesoLiqu, lr_palet : Real;
  lr_IsenICMS, lr_OutrICMS, lr_TotaIPI, lr_IsenIPI, lr_OutrIPI, lr_BaseIPI,VSITUTRIBITEM: Real;
  lr_BaseIcmsItem, lr_ValoIcmsItem, lr_IsenIcmsItem, lr_OutrIcmsItem, lr_PcDescNotaFisc: Real;
  sltPercIcms, sltBaseICMS, sltValoICMS, sltIsenICMS, sltOutrICMS: TStringList;
  li_Posicao, li_NumeNota, li_NumeNotaSeri, li_Loop: Integer;
  la_SituTrib, la_DescSituTrib: array[0..10] of String;
  ls_ObseNota, ls_StatPediVend, ls_TipoFrete, VDESCRI, VNM_TIPOEMBA: String;
  lb_TranAuto: Boolean;
begin
  // Damos o retorno
  Result := False;

  // Se o pedido for do tipo Normal
  If ps_TipoPedi = 'NM' then
  begin
    // Ajustamos a variável dos erros
    us_MensErro := 'Obtenção dos Dados para a Nota Fiscal.';

    // Criamos a query para os dados do header da nota
    qryPediVend.Close;
    qryPediVend.SQL.Clear;
    qryPediVend.SQL.Text := '  SELECT SUBSTR(Nota_fiscal_serie.SG_SERINOTAFISC,1,3) SG_SERINOTAFISC_NOTAFISC,                                                       '+
                            '         Sistema_parametro.DT_FATUDOCU,                                                                                                '+
                            '         Pedido_venda.DT_ENTRPEDIVEND,                                                                                                 '+
                            '         Cfop.NR_CFOP NR_CFOP_NOTAFISC,                                                                                                '+
                            '         SUBSTR(Cfop.NM_NATUOPERCFOP,1,40) NM_NATUOPERNOTAFISC,                                                                        '+
                            '         Cliente.ID_CLIENTE,                                                                                                           '+
                            '         SUBSTR(Cliente.NM_CLIENTE,1,40) NM_DESTREMENOTAFISC,                                                                          '+
                            '         SUBSTR(Logradouro_tipo_clie.SG_TIPOLOGR || '' '' || Cliente.NM_LOGRENDECLIE || '', '' ||                                      '+
                            '           Cliente.NR_LOGRENDECLIE || '' '' || Cliente.GN_COMPENDECLIE,1,60) GN_ENDENOTAFISC,                                          '+
                            '         Cliente.FL_PESSCLIE FL_PESSNOTAFISC,                                                                                          '+
                            '         SUBSTR(Bairro_clie.NM_BAIRRO,1,40) NM_BAIRNOTAFISC,                                                                           '+
                            '         Cliente.NR_CEPENDECLIE NR_CEPNOTAFISC,                                                                                        '+
                            '         SUBSTR(Cidade_clie.NM_CIDADE,1,40) NM_CIDANOTAFISC,                                                                           '+
                            '         Estado_clie.SG_ESTADO SG_ESTANOTAFISC,                                                                                        '+
                            '         SUBSTR(Pais.NM_PAIS,1,40) NM_PAISNOTAFISC,                                                                                    '+
                            '         Cliente.NR_FONECLIE NR_FONENOTAFISC,                                                                                          '+
                            '         DECODE(Cliente.NR_CNPJCLIE, NULL, NULL,                                                                                       '+
                            '                                     SUBSTR(Cliente.NR_CNPJCLIE,1,2) || ''.'' || SUBSTR(Cliente.NR_CNPJCLIE,3,3) || ''.'' ||           '+
                            '                                       SUBSTR(Cliente.NR_CNPJCLIE,6,3) || ''/'' || SUBSTR(Cliente.NR_CNPJCLIE,9,4) || ''-'' ||         '+
                            '                                       SUBSTR(Cliente.NR_CNPJCLIE,13,3)) NR_CNPJNOTAFISC,                                              '+
                            '         Cliente.NR_INSCESTACLIE NR_IENOTAFISC,                                                                                        '+
                            '         Cliente.NR_INSCPRODCLIE NR_INSCPRODCLIE,                                                                                      '+
                            '         Cliente.NR_RGCLIE NR_RGNOTAFISC,                                                                                              '+
                            '         Cliente.NR_CPFCLIE NR_CPFNOTAFISC,                                                                                            '+
                            '         NVL(Pedido_venda.VL_FRETPEDIVEND,0) VL_FRETNOTAFISC,                                                                          '+
                            '         NVL(Pedido_venda.VL_SEGUPEDIVEND,0) VL_SEGUNOTAFISC,                                                                          '+
                            '         NVL(Pedido_venda.VL_DESPPEDIVEND,0) VL_OUTRDESPNOTAFISC,                                                                      '+
                            '         DECODE(NVL(Pedido_venda.VL_DESCPEDIVEND,0), 0, '' '',                                                                         '+
                            '                                                        ''Desconto (''|| TO_CHAR(PC_DESCPEDIVEND, ''0.00'') || ''%):... R$ ''|| TO_CHAR(VL_DESCPEDIVEND, ''999,990.00'') ) GN_OBSEDESCNOTAFISC,  '+
                            '         NVL(Pedido_venda.VL_DESCPEDIVEND,0) VL_DESCPEDIVEND_NOTAFISC,                                                                 '+
                            '         SUBSTR(Fornecedor.NM_FORNECEDOR,1,40) NM_TRANSPORTADOR_NOTAFISC,                                                              '+
                            '         SUBSTR(Transportador_veiculo.GN_PLACVEICTRAN,1,10) GN_PLACVEICNOTAFISC,                                                       '+
                            '         SUBSTR(Logradouro_tipo_transp.SG_TIPOLOGR || '' '' || Fornecedor.NM_LOGRFORN || '', '' ||                                     '+
                            '           Fornecedor.NR_LOGRFORN || '' '' || Fornecedor.GN_COMPENDEFORN,1,60) NM_ENDETRANNOTAFISC,                                    '+
                            '         Fornecedor.FL_PESSFORN 	FL_PESSTRANNOTAFISC,                                                                                  '+
                            '         SUBSTR(Cidade_transp.NM_CIDADE,1,40) NM_CIDATRANNOTAFISC,                                                                     '+
                            '         Estado_transp.SG_ESTADO SG_ESTATRANNOTAFISC,                                                                                  '+
                            '         DECODE(Fornecedor.NR_CNPJFORN, NULL,NULL,                                                                                     '+
                            '                                        SUBSTR(Fornecedor.NR_CNPJFORN,1,2) || ''.'' || SUBSTR(Fornecedor.NR_CNPJFORN,3,3) || ''.'' ||  '+
                            '                                          SUBSTR(Fornecedor.NR_CNPJFORN,6,3) || ''/'' || SUBSTR(Fornecedor.NR_CNPJFORN,9,4) || ''-'' ||'+
                            '                                          SUBSTR(Fornecedor.NR_CNPJFORN,13,3)) NR_CNPJTRANNOTAFISC,                                    '+
                            '         Fornecedor.NR_INSCESTAFORN NR_IETRANNOTAFISC,                                                                                 '+
                            '         Fornecedor.NR_RGFORN NR_RGTRANNOTAFISC,                                                                                       '+
                            '         Fornecedor.NR_CPFFORN NR_CPFTRANNOTAFISC,                                                                                     '+
                            '         SUBSTR(Logradouro_tipo_entr.SG_TIPOLOGR || '' '' || Cliente_endereco_entr.NM_LOGRENDECLIE || '', '' ||                        '+
                            '           Cliente_endereco_entr.NR_LOGRENDECLIE || '' '' || Cliente_endereco_entr.GN_COMPENDECLIE,1,60) GN_ENDEENTRNOTAFISC,          '+
                            '         SUBSTR(Bairro_entr.NM_BAIRRO,1,40) NM_BAIRENTRNOTAFISC,                                                                       '+
                            '         SUBSTR(Cidade_entr.NM_CIDADE,1,40) NM_CIDAENTRNOTAFISC,                                                                       '+
                            '         Estado_entr.SG_ESTADO SG_ESTAENTRNOTAFISC,                                                                                    '+
                            '         Cliente_endereco_entr.NR_CEPENDECLIE GN_CEPENTRNOTAFISC,                                                                      '+
                            '         DECODE(Pedido_venda.SG_TIPOFRETPEDIVEND, ''CIF'', ''1'',                                                                      '+
                            '                                                  ''FOB'', ''2'') FL_TIPOFRETNOTAFISC,                                                 '+
                            '         Cidade_clie.FL_ZONAFRAN FL_ZONAFRANNOTAFISC,                                                                                  '+
                            '         Estado_transp.SG_ESTADO SG_ESTAPLACVEICNOTAFISC,                                                                              '+
                            '         Pedido_venda.FL_STATPEDIVEND,                                                                                                 '+
                            '         Fornecedor.FL_TRANAUTOFORN FL_TRANAUTOFORN,                                                                                   '+
                            '         Sistema_parametro.VL_PRECPADRTRANPARASIST VL_PRECPADRTRANPARASIST,                                                            '+
                            '         Sistema_parametro.PC_IMPOFRETAUTOPARASIST PC_IMPOFRETAUTOPARASIST,                                                            '+
                            '         Operacao_tipo.FL_ENTRSAIDTIPOOPER                                                                                             '+
                            '    FROM PEDIDO_VENDA Pedido_venda,                                                                                                    '+
                            '         CLIENTE Cliente,                                                                                                              '+
                            '         BAIRRO Bairro_clie,                                                                                                           '+
                            '         PAIS Pais,                                                                                                                    '+
                            '         PEDIDO_VENDA_TIPO Pedido_venda_tipo,                                                                                          '+
                            '         PEDIDO_VENDA_TIPO_DOCU_TIPO Pedido_venda_tipo_docu_tipo,                                                                      '+
                            '         DOCUMENTO_TIPO Documento_tipo,                                                                                                '+
                            '         DOCUMENTO_CLASSIFICACAO Documento_classificacao,                                                                              '+
                            '         TIPO_OPER_PEDI_VEND_TIPO Tipo_oper_pedi_vend_tipo,                                                                            '+
                            '         OPERACAO_TIPO Operacao_tipo,                                                                                                  '+
                            '         EXPEDICAO_CARGA Expedicao_carga,                                                                                              '+
                            '         FORNECEDOR Fornecedor,                                                                                                        '+
                            '         TRANSPORTADOR_VEICULO Transportador_veiculo,                                                                                  '+
                            '         CIDADE Cidade_clie,                                                                                                           '+
                            '         ESTADO Estado_clie,                                                                                                           '+
                            '         SISTEMA_PARAMETRO Sistema_parametro,                                                                                          '+
                            '         CFOP Cfop,                                                                                                                    '+
                            '         NOTA_FISCAL_SERIE Nota_fiscal_serie,                                                                                          '+
                            '         LOGRADOURO_TIPO Logradouro_tipo_clie,                                                                                         '+
                            '         LOGRADOURO_TIPO Logradouro_tipo_transp,                                                                                       '+
                            '         CIDADE Cidade_transp,                                                                                                         '+
                            '         ESTADO Estado_transp,                                                                                                         '+
                            '         CLIENTE_ENDERECO Cliente_endereco_entr,                                                                                       '+
                            '         LOGRADOURO_TIPO Logradouro_tipo_entr,                                                                                         '+
                            '         CIDADE Cidade_entr,                                                                                                           '+
                            '         ESTADO Estado_entr,                                                                                                           '+
                            '         BAIRRO Bairro_entr                                                                                                            '+
                            '   WHERE (Pedido_venda.ID_CLIENTE = Cliente.ID_CLIENTE)                                                                                '+
                            '     AND (Cliente.ID_BAIRRO = Bairro_clie.ID_BAIRRO)                                                                                   '+
                            '     AND (Bairro_clie.ID_CIDADE = Cidade_clie.ID_CIDADE)                                                                               '+
                            '     AND (Cidade_clie.ID_ESTADO = Estado_clie.ID_ESTADO)                                                                               '+
                            '     AND (Estado_clie.ID_PAIS = Pais.ID_PAIS)                                                                                          '+
                            '     AND (Pedido_venda.ID_TIPOPEDIVEND = Pedido_venda_tipo.ID_TIPOPEDIVEND)                                                            '+
                            '     AND (Pedido_venda_tipo.ID_TIPOPEDIVEND = Pedido_venda_tipo_docu_tipo.ID_TIPOPEDIVEND)                                             '+
                            '     AND (Pedido_venda_tipo_docu_tipo.ID_TIPODOCU = Documento_tipo.ID_TIPODOCU)                                                        '+
                            '     AND (Documento_tipo.ID_CLASDOCU = Documento_classificacao.ID_CLASDOCU)                                                            '+
                            '     AND (Pedido_venda_tipo.ID_TIPOPEDIVEND = Tipo_oper_pedi_vend_tipo.ID_TIPOPEDIVEND)                                                '+
                            '     AND (Tipo_oper_pedi_vend_tipo.ID_TIPOOPER = Operacao_tipo.ID_TIPOOPER)                                                            '+
                            '     AND (Operacao_tipo.ID_CFOP = Cfop.ID_CFOP)                                                                                        '+
                            '     AND (Documento_tipo.ID_TIPODOCU = Sistema_parametro.ID_TIPODOCU_NOTAFISC)                                                         '+
                            '     AND (Pedido_venda.ID_CARGEXPE = Expedicao_carga.ID_CARGEXPE)                                                                      '+
                            '     AND (Expedicao_carga.id_itemprogcami = Fornecedor.ID_FORNECEDOR)                                                                  '+
                            '     AND (Transportador_veiculo.ID_FORNECEDOR_TRANSPORTADOR = Fornecedor.ID_FORNECEDOR)                                                '+
                            '     AND (Expedicao_carga.gn_placveictran = Transportador_veiculo.gn_placveictran)                                                     '+
                            '     AND (Pedido_venda_tipo.ID_SERINOTAFISC = Nota_fiscal_serie.ID_SERINOTAFISC)                                                       '+
                            '     AND (Cliente.ID_TIPOLOGR = Logradouro_tipo_clie.ID_TIPOLOGR)                                                                      '+
                            '     AND (Fornecedor.ID_TIPOLOGR = Logradouro_tipo_transp.ID_TIPOLOGR)                                                                 '+
                            '     AND (Fornecedor.ID_CIDADE = Cidade_transp.ID_CIDADE)                                                                              '+
                            '     AND (Cidade_transp.ID_ESTADO = Estado_transp.ID_ESTADO)                                                                           '+
                            '     AND (Cliente.ID_CLIENTE = Cliente_endereco_entr.ID_CLIENTE)                                                                       '+
                            '     AND (Cliente_endereco_entr.ID_TIPOLOGR = Logradouro_tipo_entr.ID_TIPOLOGR)                                                        '+
                            '     AND (Cliente_endereco_entr.ID_BAIRRO = Bairro_entr.ID_BAIRRO)                                                                     '+
                            '     AND (Bairro_entr.ID_CIDADE = Cidade_entr.ID_CIDADE)                                                                               '+
                            '     AND (Cidade_entr.ID_ESTADO = Estado_entr.ID_ESTADO)                                                                               '+
                            '     AND (Cliente_endereco_entr.FL_ENTRPADRENDECLIE = ''S'')                                                                           '+
                            '     AND (Pedido_venda.ID_PEDIVEND = ' + IntToStr(pi_CodiPedi) + ')                                                                    ';

    // Abrimos a query
    qryPediVend.Open;

    // Se a pesquisa retornou os dados
    If not qryPediVend.IsEmpty then
    begin
      // Guardamos o numero da ie produtor
      ls_nrieprodclie := qryPediVend.FieldByName('NR_INSCPRODCLIE').AsSTRING;

      qryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text:=
      ' SELECT NM_CONTADOR,               '+
      ' QN_ULTIVALOCONT                    '+
      ' FROM CONTADOR Contador              '+
      ' WHERE Contador.NM_CONTADOR = ''' +  'NR_NOTAFISC' + qryPediVend.FieldByName('SG_SERINOTAFISC_NOTAFISC').AsSTRING + '''';
      QryTemp.Open;

      li_NumeNotaSeri :=  QryTemp.FieldByname('QN_ULTIVALOCONT').AsINTEGER+1;

      //CONFERE O NUMERO DA NOTA
      QryTemp.Close;
      qryTemp.SQL.Clear;
      qryTemp.SQL.Text := ' SELECT Max(NR_NOTAFISC) AS NUMAX  '+
                          ' FROM NOTA_FISCAL  '+
                          ' WHERE sg_serinotafisc_notafisc = ''' + qryPediVend.FieldByName('SG_SERINOTAFISC_NOTAFISC').AsSTRING + '''';
      QryTemp.Open;

      IF  li_NumeNotaSeri <> QryTemp.FieldByname('NUMAX').AsINTEGER+1 then
        BEGIN
          MESSAGEDLG('ATENÇÃO! O número da Nota '+IntToStr(QryTemp.FieldByname('NUMAX').AsINTEGER+1)+' pulou, verifique na hora da impressão. ',mtWarning, [mbOK], 0);
        END;

      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text:=
      ' UPDATE CONTADOR                 '+
      ' SET QN_ULTIVALOCONT = ' + INTTOSTR(li_NumeNotaSeri) +
      ' WHERE Contador.NM_CONTADOR = ''' +  'NR_NOTAFISC' + qryPediVend.FieldByName('SG_SERINOTAFISC_NOTAFISC').AsSTRING + '''';
      try
        QryTemp.ExecSQL;
      except
        MessageDlg('Erro ao gravar próximo nº da nota fiscal. Verifique.', mtWarning, [mbOk], 0);

        qryPediVend.Close;
        qryNotaFisc.Close;
        // Damos o retorno
        Result := False;
        Exit;
      end;

      // Criamos a query da nota fiscal
      qryNotaFisc.Close;
      qryNotaFisc.SQL.Clear;
      qryNotaFisc.SQL.Text := 'INSERT INTO NOTA_FISCAL                                                                    '+
                              '        (EMPRESA,                                                                          '+
                              '         FILIAL,                                                                           '+
                              '         ID_NOTAFISC,                                                                      '+
                              '         NR_NOTAFISC,                                                                      '+
                              '         SG_SERINOTAFISC_NOTAFISC,                                                         '+
                              '         FL_TIPONOTAFISC,                                                                  '+
                              '         DT_EMISNOTAFISC,                                                                  '+
                              '         DT_SAIDNOTAFISC,                                                                  '+
                              '         NR_CFOP_NOTAFISC,                                                                 '+
                              '         NM_NATUOPERNOTAFISC,                                                              '+
                              '         ID_CLIENTE,                                                                       '+
                              '         NM_DESTREMENOTAFISC,                                                              '+
                              '         GN_ENDENOTAFISC,                                                                  '+
                              '         FL_PESSNOTAFISC,                                                                  '+
                              '         NM_BAIRNOTAFISC,                                                                  '+
                              '         NR_CEPNOTAFISC,                                                                   '+
                              '         NM_CIDANOTAFISC,                                                                  '+
                              '         SG_ESTANOTAFISC,                                                                  '+
                              '         NM_PAISNOTAFISC,                                                                  '+
                              '         NR_FONENOTAFISC,                                                                  '+
                              '         NR_CNPJNOTAFISC,                                                                  '+
                              '         NR_IENOTAFISC,                                                                    '+
                              '         NR_RGNOTAFISC,                                                                    '+
                              '         NR_CPFNOTAFISC,                                                                   '+
                              '         VL_FRETNOTAFISC,                                                                  '+
                              '         VL_SEGUNOTAFISC,                                                                  '+
                              '         VL_OUTRDESPNOTAFISC,                                                              '+
                              '         VL_DESCPEDIVEND_NOTAFISC,                                                         '+
                              '         NM_TRANSPORTADOR_NOTAFISC,                                                        '+
                              '         GN_PLACVEICNOTAFISC,                                                              '+
                              '         NM_ENDETRANNOTAFISC,                                                              '+
                              '         FL_PESSTRANNOTAFISC,                                                              '+
                              '         NM_CIDATRANNOTAFISC,                                                              '+
                              '         SG_ESTATRANNOTAFISC,                                                              '+
                              '         NR_CNPJTRANNOTAFISC,                                                              '+
                              '         NR_IETRANNOTAFISC,                                                                '+
                              '         NR_RGTRANNOTAFISC,                                                                '+
                              '         NR_CPFTRANNOTAFISC,                                                               '+
                              '         GN_ENDEENTRNOTAFISC,                                                              '+
                              '         NM_BAIRENTRNOTAFISC,                                                              '+
                              '         NM_CIDAENTRNOTAFISC,                                                              '+
                              '         SG_ESTAENTRNOTAFISC,                                                              '+
                              '         GN_CEPENTRNOTAFISC,                                                               '+
                              '         FL_TIPOFRETNOTAFISC,                                                              '+
                              '         DT_PROCNOTAFISC,                                                                  '+
                              '         FL_ZONAFRANNOTAFISC,                                                              '+
                              '         FL_IMPRNOTAFISC,                                                                  '+
                              '         FL_CANCNOTAFISC,                                                                  '+
                              '         FL_EXPONOTAFISC,                                                                  '+
                              '         SG_ESTAPLACVEICNOTAFISC,                                                          '+
                              '         GN_ESPENOTAFISC,                                                                  '+
                              '         GN_OBSDESCNOTAFISC,                                                               '+
                              '         FX_NOTAFISC)                                                                      '+
                              '  VALUES( ''' + gs_Empresa + ''',                                                          '+
                              '          ' + IntToStr(gi_Filial) + ',                                                     '+
                              '          ID_NOTAFISC.NEXTVAL ,                                                   '+
                              '          ' + IntToStr(li_NumeNotaSeri) + ',                                               '+
                              '          ''' + qryPediVend.FieldByName('SG_SERINOTAFISC_NOTAFISC').AsString + ''',        '+
                              '          ''' + qryPediVend.FieldByName('FL_ENTRSAIDTIPOOPER').AsString + ''',             '+
                              '          TO_DATE(''' + FormatDateTime('DD/MM/YYYY',qryPediVend.FieldByName('DT_FATUDOCU').AsDateTime) + ''',''DD/MM/YYYY''), '+
                              '          TO_DATE(''' + FormatDateTime('DD/MM/YYYY',qryPediVend.FieldByName('DT_ENTRPEDIVEND').AsDateTime) + ''',''DD/MM/YYYY''), '+
                              '          ''' + qryPediVend.FieldByName('NR_CFOP_NOTAFISC').AsString + ''',                '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('NM_NATUOPERNOTAFISC').AsString) + ''', '+
                              '          ' + qryPediVend.FieldByName('ID_CLIENTE').AsString + ',                          '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('NM_DESTREMENOTAFISC').AsString) + ''', '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('GN_ENDENOTAFISC').AsString) + ''',     '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('FL_PESSNOTAFISC').AsString) + ''',     '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('NM_BAIRNOTAFISC').AsString) + ''',     '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('NR_CEPNOTAFISC').AsString) + ''',      '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('NM_CIDANOTAFISC').AsString) + ''',     '+
                              '          ''' + qryPediVend.FieldByName('SG_ESTANOTAFISC').AsString + ''',                 '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('NM_PAISNOTAFISC').AsString) + ''',     '+
                              '          ''' + qryPediVend.FieldByName('NR_FONENOTAFISC').AsString + ''',                 '+
                              '          ''' + qryPediVend.FieldByName('NR_CNPJNOTAFISC').AsString + ''',                 ';
                     if Length(qryPediVend.FieldByName('NR_INSCPRODCLIE').AsString)>3 then
                        qryNotaFisc.SQL.Add('    ''' + qryPediVend.FieldByName('NR_INSCPRODCLIE').AsString + ''',   ')
                     else
                        qryNotaFisc.SQL.Add('    ''' + qryPediVend.FieldByName('NR_IENOTAFISC').AsString + ''',                   ');

                   qryNotaFisc.SQL.Add('          ''' + qryPediVend.FieldByName('NR_RGNOTAFISC').AsString + ''',                   '+
                              '          ''' + qryPediVend.FieldByName('NR_CPFNOTAFISC').AsString + ''',                  '+
                              '          ' + ReplaceStr(FloatToStr(qryPediVend.FieldByName('VL_FRETNOTAFISC').AsFloat),',','.') + ',       '+
                              '          ' + ReplaceStr(FloatToStr(qryPediVend.FieldByName('VL_SEGUNOTAFISC').AsFloat),',','.') + ',       '+
                              '          ' + ReplaceStr(FloatToStr(qryPediVend.FieldByName('VL_OUTRDESPNOTAFISC').AsFloat),',','.') + ',   '+
                              '          ' + ReplaceStr(FloatToStr(qryPediVend.FieldByName('VL_DESCPEDIVEND_NOTAFISC').AsFloat),',','.') + ', '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('NM_TRANSPORTADOR_NOTAFISC').AsString) + ''',            '+
                              '          ''' + qryPediVend.FieldByName('GN_PLACVEICNOTAFISC').AsString + ''',             '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('NM_ENDETRANNOTAFISC').AsString) + ''', '+
                              '          ''' + qryPediVend.FieldByName('FL_PESSTRANNOTAFISC').AsString + ''',             '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('NM_CIDATRANNOTAFISC').AsString) + ''', '+
                              '          ''' + qryPediVend.FieldByName('SG_ESTATRANNOTAFISC').AsString + ''',             '+
                              '          ''' + qryPediVend.FieldByName('NR_CNPJTRANNOTAFISC').AsString + ''',             '+
                              '          ''' + qryPediVend.FieldByName('NR_IETRANNOTAFISC').AsString + ''',               '+
                              '          ''' + qryPediVend.FieldByName('NR_RGTRANNOTAFISC').AsString + ''',               '+
                              '          ''' + qryPediVend.FieldByName('NR_CPFTRANNOTAFISC').AsString + ''',              '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('GN_ENDEENTRNOTAFISC').AsString) + ''', '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('NM_BAIRENTRNOTAFISC').AsString) + ''', '+
                              '          ''' + TiraAcentos(qryPediVend.FieldByName('NM_CIDAENTRNOTAFISC').AsString) + ''', '+
                              '          ''' + qryPediVend.FieldByName('SG_ESTAENTRNOTAFISC').AsString + ''',             '+
                              '          ''' + qryPediVend.FieldByName('GN_CEPENTRNOTAFISC').AsString + ''',              '+
                              '          ''' + qryPediVend.FieldByName('FL_TIPOFRETNOTAFISC').AsString + ''',             '+
                              '          TO_DATE(''' + FormatDateTime('DD/MM/YYYY', ld_DataHora) + ''', ''DD/MM/YYYY''),  '+
                              '          ''' + qryPediVend.FieldByName('FL_ZONAFRANNOTAFISC').AsString + ''',             '+
                              '          ''N'',                                                                           '+
                              '          ''N'',                                                                           '+
                              '          ''N'',                                                                           '+
                              '          ''' + qryPediVend.FieldByName('SG_ESTAPLACVEICNOTAFISC').AsString + ''',         '+
                              '          ''Granel'',                                                                 '+
                              '          ''' + qryPediVend.FieldByName('GN_OBSEDESCNOTAFISC').AsString + ''',             '+
                              '          ''S'')                                                                           ');

      // Executamos a query
      try
        qryNotaFisc.ExecSQL;
      except
        MessageDlg('Erro ao gerar nota fiscal. Verifique.', mtWarning, [mbOk], 0);

        qryPediVend.Close;
        qryNotaFisc.Close;
        // Damos o retorno
        Result := False;
        Exit;
      end;

      //Pegamos o ID da Nota
      qryNotaFisc.Close;
      qryNotaFisc.SQL.Clear;
      qryNotaFisc.SQL.Text :=' SELECT       '+
                     '         EMPRESA,     '+
                     '         FILIAL,      '+
                     '         ID_NOTAFISC,   '+
                     '         NR_NOTAFISC     '+
                     '     FROM NOTA_FISCAL      '+
                     '  WHERE  EMPRESA= ''' + gs_Empresa + ''' AND    '+
                     '         FILIAL= ' + IntToStr(gi_Filial) + ' AND  '+
                     '         NR_NOTAFISC =' + IntToStr(li_NumeNotaSeri) + ' AND  '+
                     '         SG_SERINOTAFISC_NOTAFISC =' + qryPediVend.FieldByName('SG_SERINOTAFISC_NOTAFISC').AsString ;
      qryNotaFisc.OPEN;
      li_NumeNota := qryNotaFisc.FieldByName('ID_NOTAFISC').AsInteger;

      // Pegamos o status do pedido de venda
      ls_StatPediVend := qryPediVend.FieldByName('FL_STATPEDIVEND').AsString;

      // Pegamos o valor padrão para o frete autônomo
      ur_ValoFreteAuto := qryPediVend.FieldByName('VL_PRECPADRTRANPARASIST').AsFloat;

      // Pegamos o valor padrão para o frete autônomo
      ur_PercImpFretAuto := qryPediVend.FieldByName('PC_IMPOFRETAUTOPARASIST').AsFloat;

      // Flag Frete autonomo
      If qryPediVend.FieldByName('FL_TRANAUTOFORN').AsString = 'S'  then
        lb_TranAuto:= True
      Else
        lb_TranAuto:= False;

      // Destruimos as querys
      qryPediVend.Close;
      qryNotaFisc.Close;

      // Ajustamos a variável dos erros
      us_MensErro := 'Obtenção dos Dados para os Itens da Nota Fiscal.';

      // Criamos a query para os itens
      qryPediVendItem.Close;
      qryPediVendItem.SQL.Clear;
      qryPediVendItem.SQL.Text := '  SELECT Pedido_venda_item.ID_MATEEMBA,                                                '+
                                  '         Pedido_venda_item.EMPRESA,                                                    '+
                                  '         Pedido_venda_item.FILIAL,                                                     '+
                                  '         Pedido_venda_item.ID_ITEMPEDIVEND,                                            '+
                                  '         Pedido_venda_item.ID_PEDIVEND,                                                '+
                                  '         Pedido_venda_item.ID_MATERIAL,                                                '+
                                  '         Pedido_venda_item.ID_EMBALAGEM,                                               '+
                                  '         Pedido_venda_item.ID_TIPOOPER,                                                '+
                                  '         Pedido_venda_item.VL_UNITITEMPEDIVEND,                                        '+
                                  '         Pedido_venda_item.QN_EMBAITEMPEDIVEND,                                        '+
                                  '         Pedido_venda_item.QN_PESOITEMPEDIVEND,                                        '+
                                  '         Pedido_venda_item.QN_TARAITEMPEDIVEND,                                        '+
                                  '         Pedido_venda_item.QN_EMBAEXPEITEMPEDIVEND,                                    '+
                                  '         Pedido_venda_item.QN_PESOPADREXPEITEMPEDIVEND,                                '+
                                  '         Pedido_venda_item.QN_TARAREALEXPEITEMPEDIVEND,                                '+
                                  '         Pedido_venda_item.QN_PESOREALEXPEITEMPEDIVEND,                                '+
                                  '         Pedido_venda_item.QN_CAIXCORTITEMPEDIVEND,                                    '+
                                  '         NVL(Pedido_venda_item.VL_UNITBRUTITEMPEDIVEND,                                '+
                                  '             Pedido_venda_item.VL_UNITITEMPEDIVEND) VL_UNITBRUTITEMPEDIVEND,           '+
                                  '         Pedido_venda_item.FX_ITEMPEDIVEND,                                            '+
                                  '         Pedido_venda_item.FL_IPIBASEICMS,                                             '+
                                  '         Pedido_venda_item.vl_unitipi,                                                 '+
                                  '         Pedido_venda_item.fl_ipibaseicms,                                              '+
                                  '         Material_embalagem.ID_PRODMATEEMBA,                                           '+
                                  '         Material_embalagem.NM_PRODMATEEMBA,                                           '+
                                  '         Material_embalagem.qn_capapadrunidmateemba,                                   '+
                                  '        (case when NVL(Pedido_venda_item.QN_EMBAEXPEITEMPEDIVEND,0)=0 then (Pedido_venda_item.QN_EMBAITEMPEDIVEND*Material_embalagem.qn_taraembaprod_balancao) else  '+
                                  '        (Pedido_venda_item.QN_EMBAEXPEITEMPEDIVEND*Material_embalagem.qn_taraembaprod_balancao) end) AS TARA,            '+
                                  '         Unidade_medida.SG_UNIDMEDI,                                                   '+
                                  '         Classificacao_fiscal.ID_CLASFISC,                                             '+
                                  '         Classificacao_fiscal.NM_CLASFISC,                                             '+
                                  '         Classificacao_fiscal.NR_CLASFISC,                                             '+
                                  '         MATEEMBACLASSFISCAL.PC_IPICLASFISC,                                           '+
                                  '         Estado_clie.PC_ICMSCONTESTA,                                                  '+
                                  '         Cfop.NR_CFOP,                                                                 '+
                                  '         Operacao_tipo.FL_SITUTRIBICMS,                                                '+
                                  '         Operacao_tipo.NR_SITUTRIBIPI,                                                 '+
                                  '         Operacao_tipo.FL_ISSTIPOOPER,                                                 '+
                                  '         Operacao_tipo.FL_IPIBASEICMSTIPOOPER,                                         '+
                                  '         Operacao_tipo.NM_DESCNOTAFISCTIPOOPER,                                        '+
                                  '         Operacao_tipo.FL_CONDCPRTIPOOPER,                                             '+
                                  '         Operacao_tipo.FL_CPRTIPOOPER,                                                 '+
                                  '         Material.ID_ORIGMATE,                                                         '+
                                  '         (SELECT PC_ICMSMATEESTA                                                       '+
                                  '            FROM MATERIAL_ESTADO_ICMS ME                                               '+
                                  '           WHERE ME.ID_ESTADO = Estado_clie.ID_ESTADO                                  '+
                                  '             AND ME.ID_MATERIAL = Pedido_venda_item.ID_MATERIAL) PC_ICMSMATEESTA,      '+
                                  '         (SELECT PC_REDUICMSMATEESTA                                                   '+
                                  '            FROM MATERIAL_ESTADO_ICMS ME                                               '+
                                  '           WHERE ME.ID_ESTADO = Estado_clie.ID_ESTADO                                  '+
                                  '             AND ME.ID_MATERIAL = Pedido_venda_item.ID_MATERIAL)  PC_REDUICMSMATEESTA  '+
                                  '    FROM PEDIDO_VENDA_ITEM Pedido_venda_item,                                          '+
                                  '         CLASSIFICACAO_FISCAL Classificacao_fiscal,                                    '+
                                  '         ESTADO Estado_clie,                                                           '+
                                  '         MATERIAL Material,                                                            '+
                                  '         MATERIAL_EMBALAGEM Material_embalagem,                                        '+
                                  '         UNIDADE_MEDIDA Unidade_medida,                                                '+
                                  '         OPERACAO_TIPO Operacao_tipo,                                                  '+
                                  '         CFOP Cfop,                                                                    '+
                                  '         BAIRRO Bairro,                                                                '+
                                  '         PEDIDO_VENDA Pedido_venda,                                                    '+
                                  '         CIDADE Cidade,                                                                '+
                                  '         CLIENTE_ENDERECO Cliente_endereco,                                            '+
                                  '         MATEEMBACLASSFISCAL                                                           '+
                                  '   WHERE (Pedido_venda_item.ID_MATEEMBA = Material_embalagem.ID_MATEEMBA)              '+
                                  '     AND (Pedido_venda_item.ID_TIPOOPER = Operacao_tipo.ID_TIPOOPER)                   '+
                                  '     AND (Material_embalagem.ID_PRODMATEEMBA = MATEEMBACLASSFISCAL.ID_PRODMATEEMBA(+)) '+
                                  '     AND (Material_embalagem.ID_MATERIAL = Material.ID_MATERIAL)                       '+
                                  '     AND (Material.ID_UNIDMEDI = Unidade_medida.ID_UNIDMEDI)                           '+
                                  '     AND (Material.ID_CLASFISC = Classificacao_fiscal.ID_CLASFISC (+))                 '+
                                  '     AND (Operacao_tipo.ID_CFOP = Cfop.ID_CFOP)                                        '+
                                  '     AND (Pedido_venda_item.ID_PEDIVEND = Pedido_venda.ID_PEDIVEND)                    '+
                                  '     AND (Bairro.ID_CIDADE = Cidade.ID_CIDADE)                                         '+
                                  '     AND (Cidade.ID_ESTADO = Estado_clie.ID_ESTADO)                                    '+
                                  '     AND (Pedido_venda.ID_ENDECLIE_ENTREGA = Cliente_endereco.ID_ENDECLIE)             '+
                                  '     AND (Cliente_endereco.ID_BAIRRO = Bairro.ID_BAIRRO)                               '+
                                  '     AND (Pedido_venda.ID_PEDIVEND = ' + IntToStr(pi_CodiPedi) + ')                    ';

      qryPediVendItem.Open;

      //se controla caixas por palet
      if qryPediVendItem.FieldByName('qn_capapadrunidmateemba').AsFloat >0 then
      begin
        lr_palet:= qryPediVendItem.FieldByName('qn_capapadrunidmateemba').AsFloat;
      end;


      // Criamos as listas para os valores
      sltPercIcms := TStringList.Create;
      sltBaseICMS := TStringList.Create;
      sltValoICMS := TStringList.Create;
      sltIsenICMS := TStringList.Create;
      sltOutrICMS := TStringList.Create;

      // Populamos a matriz de Situação Tributária
      la_SituTrib[0] := '00';
      la_SituTrib[1] := '10';
      la_SituTrib[2] := '20';
      la_SituTrib[3] := '30';
      la_SituTrib[4] := '40';
      la_SituTrib[5] := '41';
      la_SituTrib[6] := '50';
      la_SituTrib[7] := '51';
      la_SituTrib[8] := '60';
      la_SituTrib[9] := '70';
      la_SituTrib[10] := '90';

      la_DescSituTrib[0]  := 'Tributada integralmente';
      la_DescSituTrib[1]  := 'Tributada e com cobrança do ICMS por substituição tributária';
      la_DescSituTrib[2]  := 'Com redução de base de cálculo';
      la_DescSituTrib[3]  := 'Isenta ou não tributada e com cobrança do ICMS por substituição tributária';
      la_DescSituTrib[4]  := 'Isenta';
      la_DescSituTrib[5]  := 'Não tributada';
      la_DescSituTrib[6]  := 'Suspensão';
      la_DescSituTrib[7]  := 'Diferimento';
      la_DescSituTrib[8]  := 'ICMS cobrado anteriormente por substituição tributária';
      la_DescSituTrib[9]  := 'Com redução de base de cálculo e cobrança do ICMS por substituição tributária';
      la_DescSituTrib[10] := 'Outras';

      // Criamos a query para os itens da nota
      qryNotaFiscItem.Close;
      qryNotaFiscItem.SQL.Clear;

      // Iniciamos as variaveis
      lr_ValoIPI  := 0;
      lr_ValoItem := 0;
      lr_ValoBrutItem := 0;
      lr_ValoICMS := 0;
      lr_ValoNota := 0;
      lr_PercICMS := 0;
      lr_BaseICMS := 0;
      lr_TotaItem := 0;
      lr_TotaBrutItem := 0;
      lr_BaseRedu := 0;
      lr_IsenICMS := 0;
      lr_OutrICMS := 0;
      lr_TotaIPI  := 0;
      lr_IsenIPI  := 0;
      lr_OutrIPI  := 0;
      lr_BaseIPI  := 0;
      lr_Volumes  := 0;
      lr_PesoBrut := 0;
      lr_PesoLiqu := 0;
      lr_BaseIcmsItem := 0;
      lr_ValoIcmsItem := 0;
      lr_IsenIcmsItem := 0;
      lr_OutrIcmsItem := 0;

      // Loop para os Itens
      qryPediVendItem.First;
      while not qryPediVendItem.Eof do
      begin

        // Verificamos o status do pedido de venda
        if (ls_StatPediVend = 'EX') or (ls_StatPediVend = 'FE') then
        begin
          if qryPediVendItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsInteger = 0 then
          begin
            // Proximo registro
            qryPediVendItem.Next;
            Continue;
          end;
        end;

        // Calculamos o valor total do item
        If  qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat > 0 then
           lr_ValoItem := qryPediVendItem.FieldByName('VL_UNITITEMPEDIVEND').AsFloat *  qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat
        Else
           lr_ValoItem := qryPediVendItem.FieldByName('VL_UNITITEMPEDIVEND').AsFloat * qryPediVendItem.FieldByName('QN_PESOITEMPEDIVEND').AsFloat;

        // Calculamos o valor total bruto do item (sem desconto)
        If qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat > 0 then
           lr_ValoBrutItem := qryPediVendItem.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsFloat * qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat
        Else
           lr_ValoBrutItem := qryPediVendItem.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsFloat * qryPediVendItem.FieldByName('QN_PESOITEMPEDIVEND').AsFloat;

       // Acumulamos o valor do item
        lr_TotaItem := lr_TotaItem + lr_ValoItem;

       // Acumulamos o valor do item
        lr_TotaBrutItem := lr_TotaBrutItem + lr_ValoBrutItem;

        // Pegamos o percentual do ICMS para o item
           //Se o Valor do
        if (qryPediVendItem.FieldByName('PC_ICMSMATEESTA').AsString ='0') then
           lr_PercICMS := 0
        else
        begin
          If qryPediVendItem.FieldByName('PC_ICMSMATEESTA').AsFloat > 0 then
            lr_PercICMS := qryPediVendItem.FieldByName('PC_ICMSMATEESTA').AsFloat
          Else
            lr_PercICMS := qryPediVendItem.FieldByName('PC_ICMSCONTESTA').AsFloat;
        end;
        // Verificamos a situação tributária do IPI
        // Se for tributado
//        if qryPediVendItem.FieldByName('NR_SITUTRIBIPI').AsString = '01' then
        if (qryPediVendItem.FieldByName('vl_unitipi').AsFloat) >0 then
        begin
          // Calculamos o valor do IPI do Item
          lr_ValoIPI := (lr_ValoItem * qryPediVendItem.FieldByName('vl_unitipi').AsFloat / 100);
          // Acumulamos o total do IPI
          lr_TotaIPI := lr_TotaIPI + lr_ValoIPI;
          // Acumulamos a base do IPI
          lr_BaseIPI := lr_BaseIPI + lr_ValoItem;
        end
        else
        begin
          lr_IsenIPI := lr_IsenIPI + lr_ValoItem;
        end;


        // Verificamos a situação tributária do ICMS do item
        // Se for tributado integralmente
       // Se for tributado integralmente
        if qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '00' then
        begin
          // Se o IPI fizer parte da base do ICMS
          if qryPediVendItem.FieldByName('FL_IPIBASEICMS').AsString = 'S' then
          begin
            // Acumulamos o valor do imposto
            lr_ValoICMS := lr_ValoICMS + ((lr_ValoItem  + lr_ValoIPI) * lr_PercICMS / 100);
            lr_ValoIcmsItem := ((lr_ValoItem  + lr_ValoIPI) * lr_PercICMS / 100);
          end
          // Se não fizer parte
          else
          begin
            // Acumulamos o valor do imposto
            lr_ValoICMS := lr_ValoICMS + (lr_ValoItem * lr_PercICMS / 100);
            lr_ValoIcmsItem := (lr_ValoItem * lr_PercICMS / 100 );
          end;

          // Acumulamos a base do Icms
          if qryPediVendItem.FieldByName('FL_IPIBASEICMS').AsString = 'S' then
            lr_BaseICMS := lr_BaseICMS + lr_ValoItem + lr_ValoIPI
          Else
            lr_BaseICMS := lr_BaseICMS + lr_ValoItem;

          If qryPediVendItem.FieldByName('FL_IPIBASEICMS').AsString = 'S' then
            lr_BaseIcmsItem := lr_ValoItem + lr_ValoIPI
          Else
            lr_BaseIcmsItem := lr_ValoItem;

        end
        // Se for tributado com redução da Base
        else if (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '50') then
        begin
          // Calculamos o valor da base reduzida
          if  (lr_PercICMS = 0) then
            lr_BaseRedu := 0
          else
            lr_BaseRedu := (lr_ValoItem * (100 - qryPediVendItem.FieldByName('PC_REDUICMSMATEESTA').AsFloat) / 100 );

          // Se o IPI fizer parte da base do ICMS
          if qryPediVendItem.FieldByName('FL_IPIBASEICMS').AsString = 'S' then
          begin
            // Calculamos o valor do imposto
            lr_ValoICMS := lr_ValoICMS + ((lr_BaseRedu + lr_ValoIPI) * lr_PercICMS / 100);
            lr_ValoIcmsItem := ((lr_BaseRedu + lr_ValoIPI) * lr_PercICMS / 100);
          end
          // Se não fizer parte
          else
          begin
            // Calculamos o valor do imposto
            lr_ValoICMS := lr_ValoICMS + ((lr_BaseRedu * lr_PercICMS) / 100);
            lr_ValoIcmsItem := ((lr_BaseRedu * lr_PercICMS) / 100);
          end;

          // Acumulamos a base do Icms
          if qryPediVendItem.FieldByName('FL_IPIBASEICMS').AsString = 'S' then
          begin
            lr_BaseICMS := lr_BaseICMS + lr_BaseRedu + lr_ValoIPI;
            lr_BaseIcmsItem := lr_BaseRedu + lr_ValoIPI;
          end
          Else
          begin
            lr_BaseICMS := lr_BaseICMS + lr_BaseRedu;
            lr_BaseIcmsItem := lr_BaseRedu;
          end;

          // Acumulamos a base Outras
          lr_OutrICMS := lr_OutrICMS + lr_ValoItem - lr_BaseRedu;
          lr_OutrIcmsItem := lr_ValoItem - lr_BaseRedu;

        end
        // Se for Isento ou Não tributado
        else if (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '40') or
                (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '41') or
                (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '20') then
        begin
    //alteração 29/01/2007
          // Calculamos o valor da base reduzida
          if  (lr_PercICMS = 0) then
            lr_BaseRedu := 0
          else
            lr_BaseRedu := (lr_ValoItem * (100 - qryPediVendItem.FieldByName('PC_REDUICMSMATEESTA').AsFloat) / 100 );

          // Se o IPI fizer parte da base do ICMS
          if qryPediVendItem.FieldByName('FL_IPIBASEICMS').AsString = 'S' then
          begin
            // Calculamos o valor do imposto
            lr_ValoICMS := lr_ValoICMS + ((lr_BaseRedu + lr_ValoIPI) * lr_PercICMS / 100);
            lr_ValoIcmsItem := ((lr_BaseRedu + lr_ValoIPI) * lr_PercICMS / 100);
          end
          // Se não fizer parte
          else
          begin
            // Calculamos o valor do imposto
            lr_ValoICMS := lr_ValoICMS + ((lr_BaseRedu * lr_PercICMS) / 100);
            lr_ValoIcmsItem := ((lr_BaseRedu * lr_PercICMS) / 100);
          end;

          // Acumulamos a base do Icms
          if qryPediVendItem.FieldByName('FL_IPIBASEICMS').AsString = 'S' then
          begin
            lr_BaseICMS := lr_BaseICMS + lr_BaseRedu + lr_ValoIPI;
            lr_BaseIcmsItem := lr_BaseRedu + lr_ValoIPI;
          end
          Else
          begin
            lr_BaseICMS := lr_BaseICMS + lr_BaseRedu;
            lr_BaseIcmsItem := lr_BaseRedu;
          end;
    //até aqui - alteração 29/01/2007
          lr_IsenICMS := lr_IsenICMS + lr_ValoItem;
          lr_IsenIcmsItem := lr_ValoItem;
        end
        // Se for os demais tipos
        else
        begin
          lr_OutrICMS := lr_OutrICMS + lr_ValoItem;
          lr_OutrIcmsItem := lr_ValoItem;
        end;

        // Pegamos a posição na lista de aliquotas
        // Pesquisamos a situação tributária juntamente com a alíquota de icms
        li_Posicao := sltPercIcms.IndexOf(qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString + FloatToStr(lr_PercICMS));

        // Procuramos a aliquota do ICMS
        // Se não encontrarmos
        If  li_Posicao = -1 then
        begin
          // Adicionamos a lista
          sltPercIcms.Add(qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString + FloatToStr(lr_PercICMS));
          sltBaseICMS.Add(FloatToStr(lr_BaseIcmsItem));
          sltValoICMS.Add(FloatToStr(lr_ValoIcmsItem));
          sltIsenICMS.Add(FloatToStr(lr_IsenIcmsItem));
          sltOutrICMS.Add(FloatToStr(lr_OutrIcmsItem));
        end
        // Se encontrarmos
        else
        begin
          // Ajustamos o valor
          sltBaseICMS[li_Posicao] := FloatToStr(StrToFloat(sltBaseICMS[li_Posicao]) + lr_BaseIcmsItem);
          sltValoICMS[li_Posicao] := FloatToStr(StrToFloat(sltValoICMS[li_Posicao]) + lr_ValoIcmsItem);
          sltIsenICMS[li_Posicao] := FloatToStr(StrToFloat(sltIsenICMS[li_Posicao]) + lr_IsenIcmsItem);
          sltOutrICMS[li_Posicao] := FloatToStr(StrToFloat(sltOutrICMS[li_Posicao]) + lr_OutrIcmsItem);
        end;

        // Procuramos a descrição da Situação Tributária
        for li_Loop := 0 to 10 do
        begin
          // Verificamos a situação
          if la_SituTrib[li_Loop] = qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString then
          begin
            Break;
          end;
        end;


        // Adicionamos o item da Nota Fiscal
        qryNotaFiscItem.Close;
        qryNotaFiscItem.SQL.Clear;
        qryNotaFiscItem.SQL.Text := '  INSERT INTO NOTA_FISCAL_ITEM                                                      '+
                                    '            ( EMPRESA,                                                              '+
                                    '              FILIAL,                                                               '+
                                    '              ID_ITEMNOTAFISC,                                                      '+
                                    '              ID_NOTAFISC,                                                          '+
                                    '              ID_MATERIAL,                                                          '+
                                    '              ID_EMBALAGEM,                                                         '+
                                    '              ID_MATEEMBA,                                                          '+
                                    '              NM_MATERIAL_ITEMNOTAFISC,                                             '+
                                    '              NR_CLASFISC_ITEMNOTAFISC,                                             '+
                                    '              SG_UNIDMEDI_ITEMNOTAFISC,                                             '+
                                    '              QN_EMBAITEMNOTAFISC,                                                  '+
                                    '              QN_PESOITEMNOTAFISC,                                                  '+
                                    '              VL_UNITITEMNOTAFISC,                                                  '+
                                    '              VL_UNITBRUTITEMNOTAFISC,                                              '+
                                    '              PC_ICMSITEMNOTAFISC,                                                  '+
                                    '              PC_REDUICMSITEMNOTAFISC,                                              '+
                                    '              PC_IPIITEMNOTAFISC,                                                   '+
                                    '              VL_IPIITEMNOTAFISC,                                                   '+
                                    '              VL_ICMSITEMNOTAFISC,                                                  '+
                                    '              FL_LEGECLASITEMNOTAFISC,                                              '+
                                    '              ID_PRODMATEEMBA_ITEMNOTAFISC,                                         '+
                                    '              VL_DESCICMSITEMNOTAFISC,                                              '+
                                    '              VL_ITEMNOTAFISC,                                                      '+
                                    '              VL_BRUTITEMNOTAFISC,                                                  '+
                                    '              FX_ITEMNOTAFISC,                                                      '+
                                    '              NR_CFOP_ITEMNOTAFISC,                                                 '+
                                    '              NM_NATUOPERCFOP_ITEMNF,                                               '+
                                    '              FL_SITUTRIBICMS_ITEMNOTAFISC,                                         '+
                                    '              vl_IsenIcmsItem,                                                      '+
                                    '              vl_OutrIcmsItem,                                                      '+
                                    '              NM_SITUTRIBICMSITEMNOTAFISC )                                         '+
                                    '     VALUES ( ''' + gs_Empresa + ''',                                               '+
                                    '              ' + IntToStr(gi_Filial) + ',                                          '+
                                    '              ID_ITEMNOTAFISC.NextVal,                           '+
                                    '              ' + IntToStr(li_NumeNota) + ',                                        '+
                                    '              ' + qryPediVendItem.FieldByName('ID_MATERIAL').AsString + ',          '+
                                    '              ' + qryPediVendItem.FieldByName('ID_EMBALAGEM').AsString + ',         '+
                                    '              ' + qryPediVendItem.FieldByName('ID_MATEEMBA').AsString + ',          '+
                                    '              ''' + qryPediVendItem.FieldByName('NM_PRODMATEEMBA').AsString + ''',  '+
                                    '              ''' + qryPediVendItem.FieldByName('NR_CLASFISC').AsString + ''',      '+
                                    '              ''' + qryPediVendItem.FieldByName('SG_UNIDMEDI').AsString + ''',      ';

        // Ajustamos a quantidade em embalagens
        if  qryPediVendItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsFloat > 0 then
          begin
           qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                    '              ' + ReplaceStr(qryPediVendItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsString,',', '.') + ', ';
          end
        Else
          begin
           qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                    '              ' + ReplaceStr(qryPediVendItem.FieldByName('QN_EMBAITEMPEDIVEND').AsString,',', '.') + ', ';
          end;

        // Ajustamos a quantidade em peso
        If qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat > 0 then
          begin
           qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                    '              ' + ReplaceStr(qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsString,',', '.') + ', ';
          end
       Else
          begin
           qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                    '              ' + ReplaceStr(qryPediVendItem.FieldByName('QN_PESOITEMPEDIVEND').AsString,',', '.') + ', ';
          end;

        // Passamos o valor unitário
        qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                    '              ' + ReplaceStr(qryPediVendItem.FieldByName('VL_UNITITEMPEDIVEND').AsString, ',', '.') + ',     '+
                                    '              ' + ReplaceStr(qryPediVendItem.FieldByName('VL_UNITBRUTITEMPEDIVEND').AsString, ',', '.') + ', ';

        // Se for tributado integralmente pelo ICMS
    if qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '00' then
        begin
          qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                      '              ' + ReplaceStr(FloatToStr(lr_PercICMS), ',', '.') + ', ' +
                                      '              0, ';
          VSITUTRIBITEM:= 0;
        end
        // 29/01/2007 Se for tributado com redução da Base de Cálculo
        else if (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '20') or (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '50') or (qryPediVendItem.FieldByName('FL_SITUTRIBICMS').AsString = '40') then
        begin
          qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                      '              ' + ReplaceStr(FloatToStr(lr_PercICMS), ',', '.') + ', ' +
                                      '              ' + ReplaceStr(FloatToStr(qryPediVendItem.FieldByName('PC_REDUICMSMATEESTA').AsFloat), ',', '.') + ', ';


          VSITUTRIBITEM:= qryPediVendItem.FieldByName('PC_REDUICMSMATEESTA').AsFloat;

         end
        // Se não for tributado
        else
        begin
          qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                      '              0, ' +
                                      '              0, ';
          VSITUTRIBITEM:= 0;
        end;

        // Se for tributado pelo IPI
        if qryPediVendItem.FieldByName('PC_IPICLASFISC').AsFloat>0 then
        begin
          qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                      '              ' + ReplaceStr(qryPediVendItem.FieldByName('PC_IPICLASFISC').AsString, ',', '.') + ', ';
        end
        // Se não for tributado
        else
        begin
          qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                      '              0, ';
        end;

        // Ajustamos o restante do script
        qryNotaFiscItem.SQL.Text := qryNotaFiscItem.SQL.Text +
                                    '              ' + ReplaceStr(FloatToStr(lr_ValoIPI), ',', '.') + ',                       '+
                                    '              ' + ReplaceStr(FloatToStr(lr_ValoICMSitem), ',', '.') + ',                      '+
                                    '              ''' + qryPediVendItem.FieldByName('ID_CLASFISC').AsString + ''',             '+
                                    '              ''' + qryPediVendItem.FieldByName('ID_PRODMATEEMBA').AsString + ''',         '+
                                    '              0,                                                                           '+  // Desconto do Icms
                                    '              ' + ReplaceStr(FloatToStr(lr_ValoItem), ',', '.') + ',                      '+
                                    '              ' + ReplaceStr(FloatToStr(lr_ValoBrutItem), ',', '.') + ',                  '+
                                    '              ''S'',                                                                       '+
                                    '              ''' + qryPediVendItem.FieldByName('NR_CFOP').AsString + ''',                 '+
                                    '              ''' + qryPediVendItem.FieldByName('NM_DESCNOTAFISCTIPOOPER').AsString + ''', ';
                if  (VSITUTRIBITEM=100) then
                  qryNotaFiscItem.SQL.Add('              ''' + qryPediVendItem.FieldByName('ID_ORIGMATE').AsString+'50' + ''',         ')
                else if  (VSITUTRIBITEM=0) then
                  qryNotaFiscItem.SQL.Add('              ''' + qryPediVendItem.FieldByName('ID_ORIGMATE').AsString+'00' + ''',         ')
                else
                  qryNotaFiscItem.SQL.Add('              ''' + qryPediVendItem.FieldByName('ID_ORIGMATE').AsString+'20' + ''',         ');

              qryNotaFiscItem.SQL.Add('              ' + ReplaceStr(FloatToStr(lr_IsenIcmsItem), ',', '.') + ',            ');
              qryNotaFiscItem.SQL.Add('              ' + ReplaceStr(FloatToStr(lr_OutrIcmsItem), ',', '.') + ',            ');
              qryNotaFiscItem.SQL.Add('              ''' + la_DescSituTrib[li_Loop] + ''')                  ');

        try
          qryNotaFiscItem.ExecSQL;
        except
          MessageDlg('Erro ao manipular itens da Nota Fiscal. Verifique.', mtWarning, [mbOk], 0);
          qryPediVendItem.Close;
          qryNotaFiscItem.Close;
          // Damos o retorno
          Result := False;
          Exit;
        end;


        // Acumulamos os totais para a nota
        if qryPediVendItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsInteger > 0 then
           lr_Volumes  := lr_Volumes + qryPediVendItem.FieldByName('QN_EMBAEXPEITEMPEDIVEND').AsInteger
        Else
           lr_Volumes  := lr_Volumes + qryPediVendItem.FieldByName('QN_EMBAITEMPEDIVEND').AsInteger;
//*************** é aqui
        If qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat > 0 then
         begin
          lr_PesoBrut := lr_PesoBrut + qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat +
                                       qryPediVendItem.FieldByName('TARA').AsFloat;
//                                        qryPediVendItem.FieldByName('QN_TARAREALEXPEITEMPEDIVEND').AsFloat;
         end
        Else
         begin
          lr_PesoBrut := lr_PesoBrut +  qryPediVendItem.FieldByName('QN_PESOITEMPEDIVEND').AsFloat +
                                        qryPediVendItem.FieldByName('TARA').AsFloat;
//                                        qryPediVendItem.FieldByName('QN_TARAITEMPEDIVEND').AsFloat;
         end;

        If qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat > 0 then
          lr_PesoLiqu := lr_PesoLiqu + qryPediVendItem.FieldByName('QN_PESOPADREXPEITEMPEDIVEND').AsFloat
        Else
          lr_PesoLiqu := lr_PesoLiqu + qryPediVendItem.FieldByName('QN_PESOITEMPEDIVEND').AsFloat;

        // Proximo registro
        qryPediVendItem.Next;
      end;

      // Acumulamos o valor da nota fiscal
      lr_ValoNota := lr_TotaItem + lr_TotaIPI;

      // Destruimos a query
      qryPediVendItem.Close;
      qryNotaFiscItem.Close;

    end
    // Se não encontramos os dados
    else
    begin

      MessageDlg('Pedido não disponível ou não encontrado. Verifique.', mtWarning, [mbOk], 0);

      qryPediVend.Close;
      // Damos o retorno
      Result := False;
      Exit;
    end;

    // Atualizamos as bases de icms da nota fiscal
    qryNotaFiscBaseIcms.Close;
    qryNotaFiscBaseIcms.SQL.Clear;

    For li_Loop := 0 to sltPercIcms.Count - 1 do
    begin
      qryNotaFiscBaseIcms.SQL.Text := 'INSERT INTO NOTA_FISCAL_BASE_ICMS                                                                     '+
                                      '  VALUES(''' + gs_Empresa                                  + ''',                                     '+
                                      '           ' + IntToStr(gi_Filial)                         + ',                                       '+
                                      '           ID_BASEICMSNOTAFISC.NextVal,                                       '+
                                      '           ' + IntToStr(li_NumeNota)                       + ',                                       '+
                                      '           ''' + Copy(sltPercIcms[li_Loop], 1, 2)          + ''',                                     '+
                                      '           ' + ReplaceStr(Copy(sltPercIcms[li_Loop], 3, Length(sltPercIcms[li_Loop])), ',', '.') + ','+
                                      '           ' + ReplaceStr(sltBaseICMS[li_Loop], ',', '.') + ',                                       '+
                                      '           ' + ReplaceStr(sltValoICMS[li_Loop], ',', '.') + ',                                       '+
                                      '           ' + ReplaceStr(sltIsenICMS[li_Loop], ',', '.') + ',                                       '+
                                      '           ' + ReplaceStr(sltOutrICMS[li_Loop], ',', '.') + ',                                       '+
                                      '           ''S'')';

      try
        qryNotaFiscBaseIcms.ExecSQL;
      except
        // Mensagem
        MessageDlg('Erro ao manipular Base de Icms da Nota Fiscal. Verifique.', mtWarning, [mbOk], 0);
        qryNotaFiscBaseIcms.Close;
        Result := False;
        Exit;
      end;
    end;

    // Destruimos as querys
    qryNotaFiscBaseIcms.Close;

    // Ajustamos a variável dos erros
    us_MensErro := 'Obtenção dos Dados para a Observação da Nota Fiscal.';

    // Montamos a observação da nota fiscal
    qryTemp.Close;
    QryTemp.SQL.Clear;
    qryTemp.SQL.Text := '  SELECT DISTINCT                                                                                 '+
                        '         PEDIDO_VENDA.ID_PEDIVEND,                                                                '+
                        '         BOLETO.NR_BOLETO,                                                                        '+
                        '         OBS_PADR_ICMS.GN_OBSEPADRNOTAFISC OBS_ICMS,                                              '+
                        '         OBS_PADR_IPI.GN_OBSEPADRNOTAFISC  OBS_IPI,                                               '+
                        '         GN_OBSEPADR_PEDIVEND                                                                     '+
                        '    FROM OPERACAO_TIPO,                                                                           '+
                        '         BOLETO,                                                                                  '+
                        '         PEDIDO_VENDA,                                                                            '+
                        '         PEDIDO_VENDA_ITEM,                                                                       '+
                        '         NOTA_FISCAL_OBSERVACAO_PADRAO OBS_PADR_ICMS,                                             '+
                        '         NOTA_FISCAL_OBSERVACAO_PADRAO OBS_PADR_IPI                                               '+
                        '   WHERE ( OPERACAO_TIPO.ID_TIPOOPER = PEDIDO_VENDA_ITEM.ID_TIPOOPER ) and                        '+
                        '         ( OPERACAO_TIPO.ID_OBSEPADRNOTAFISC_DLICMS = OBS_PADR_ICMS.ID_OBSEPADRNOTAFISC (+)) and  '+
                        '         ( OPERACAO_TIPO.ID_OBSEPADRNOTAFISC_DLIPI = OBS_PADR_IPI.ID_OBSEPADRNOTAFISC (+)) and    '+
                        '         (PEDIDO_VENDA.ID_PEDIVEND = PEDIDO_VENDA_ITEM.ID_PEDIVEND) and                           '+
                        '         ( PEDIDO_VENDA.ID_PEDIVEND = BOLETO.ID_PEDIVEND (+) ) and                                '+
                        '         ( PEDIDO_VENDA.ID_PEDIVEND = ' + IntToStr(pi_CodiPedi) + ')                              ';

    qryTemp.Open;

    // Concatenamos as observações
    qryTemp.First;
    ls_ObseNota := qryTemp.FieldByName('GN_OBSEPADR_PEDIVEND').AsString + #13 + #13 +
                   'Nº Pedido: ' + qryTemp.FieldByName('ID_PEDIVEND').AsString + #13 + #13;

    while not qryTemp.Eof do
    begin
      ls_ObseNota := ls_ObseNota + qryTemp.FieldByName('OBS_ICMS').AsString +
                     qryTemp.FieldByName('OBS_IPI').AsString;
      // Proximo registro
      qryTemp.Next;
    end;

    // Calculmamos o frete
 {   ur_ValoFreteAuto := (lr_PesoBrut * 0.02);

    //GRAVA O FRETE PARA O PEDIDO AQUI
     OSQL.SQL.Clear;
     OSQL.SQL.Text:= ' update pedido_venda '+
                     ' set    vl_tranautopedivend = '+ ReplaceStr(FLOATTOSTR(lr_PesoBrut * 0.02),',','.') + ' , '+
                     '        pc_impofretautopedivend = '+ ReplaceStr(FLOATTOSTR(ur_PercImpFretAuto),',','.') +
                     ' where (pedido_venda.id_pedivend = '+ IntToStr(pi_CodiPedi) + ')                    ';
     OSQL.Execute;   }

    // Se o fornecedor for autônomo
     If (lb_TranAuto=true) and (ls_TipoFrete = '1')  then
    begin
      //Calculo do valor do frete
      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text :=
        'SELECT                                                                                         '+
        '     ((PEDIDO_VENDA.QN_PESOPADREXPEPEDIVEND-(CASE WHEN PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND=0  '+
        '     then PEDIDO_VENDA.QN_PESOREALDEVOPEDIVEND ELSE PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND END)) '+
        '     * (FRETE_ABATIDO.VL_QUILFRETABAT * (LOGISTICA_SUBREGIAO.QN_FATOFRETABATSUBRLOGI-1)        '+
        '     + (TRANSPORTADOR_VEICULO.QN_FATOFRETABATVEICTRAN*FRETE_ABATIDO.VL_QUILFRETABAT))) Frete   '+
        'FROM                                                                                           '+
        '     SISTEMA_PARAMETRO,                                                                        '+
        '     EXPEDICAO_CARGA,                                                                          '+
        '     PEDIDO_VENDA,                                                                             '+
        '     TRANSPORTADOR_VEICULO,                                                                    '+
        '     FORNECEDOR,                                                                               '+
        '     VEICULO_TIPO,                                                                             '+
        '     FRETE_ABATIDO,                                                                            '+
        '     CLIENTE,                                                                                  '+
        '     LOGISTICA_SUBREGIAO                                                                       '+
        'WHERE                                                                                          '+
        '     EXPEDICAO_CARGA.ID_CARGEXPE  =  PEDIDO_VENDA.ID_CARGEXPE  AND                             '+
        '     EXPEDICAO_CARGA.ID_ITEMPROGCAMI  =  FORNECEDOR.ID_FORNECEDOR  AND                         '+
        '     EXPEDICAO_CARGA.GN_PLACVEICTRAN  =  TRANSPORTADOR_VEICULO.GN_PLACVEICTRAN AND             '+
        '     TRANSPORTADOR_VEICULO.ID_FORNECEDOR_TRANSPORTADOR  =  FORNECEDOR.ID_FORNECEDOR  AND       '+
        '     TRANSPORTADOR_VEICULO.ID_TIPOVEIC  =  VEICULO_TIPO.ID_TIPOVEIC  AND                       '+
        '     VEICULO_TIPO.ID_TIPOVEIC  =  FRETE_ABATIDO.ID_TIPOVEIC  AND                               '+
        '     PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE  AND                                         '+
        '     CLIENTE.ID_SUBRLOGI = LOGISTICA_SUBREGIAO.ID_SUBRLOGI AND                                 '+
        '     (PEDIDO_VENDA.ID_PEDIVEND = ' + IntToStr(pi_CodiPedi) + ')                                ';
      QryTemp.Open;
      If  QryTemp.IsEmpty then
        lr_Frete:= 0
      Else
        lr_Frete:= qryTemp.FieldByName('Frete').AsFloat;

     //Colocar no Pedido o Valor da Obs. da NF
      OSQL.SQL.Clear;
      OSQL.SQL.Text:= ' UPDATE  PEDIDO_VENDA ' +
                      '    SET  vl_tranautopedivend = ' + ReplaceStr(FloatToStr(lr_Frete),',','.') + ' , '+
                      '         pc_impofretautopedivend = ' + ReplaceStr(FLOATTOSTR(ur_PercImpFretAuto),',','.') +
                      '  WHERE  ( PEDIDO_VENDA.ID_PEDIVEND = ' + IntToStr(pi_CodiPedi) + ')                    ';
      OSQL.Execute;


      // Colocamos o valor do frete na observação
      ls_ObseNota := ls_ObseNota + #13 +  #13 +
                     'Preço do frete R$ ..: ' + FloatToStr(lr_Frete) + ' Alíq.: ' +
                     FloatToStr(ur_PercImpFretAuto) + ' % - ' +
                     'Valor do Imposto R$ ..: ' + FloatToStr((ur_ValoFreteAuto * ur_PercImpFretAuto /100)) + ' - ' +
                     'Demonstrativo de prestação de serviços de transportador autonomo ' +
                     'ou empresa transportadora conforme parag. 3.o. do art. 285 do RICMS.' +
                     'Responsabilidade do recolhimento do Imposto: Emitente da Nota Fiscal.';

    end
    else
    begin
      // Zeramos o frete autonomo
      ur_ValoFreteAuto := 0;
      ur_PercImpFretAuto := 0;
    end;

    //COLOCAMOS O NUMERO DO BOLETO NA OBS. DA NOTA
    ls_ObseNota := ls_ObseNota + ' Nº Boleto: ' + ls_NumeBole;
   // E JA
    //***

    //VERIFICAMOS SE QTDE DE MATERIAL EMBALAGEM POR CAIXA OU PALET
    if lr_palet>0 then
       lr_Volumes :=  lr_Volumes/lr_palet;


    // Finalizamos a nota fiscal
    qryNotaFisc.Close;
    qryNotaFisc.SQL.Clear;
        qryNotaFisc.SQL.Text := '  UPDATE NOTA_FISCAL                                                                     '+
                            '     SET VL_BASEICMSNOTAFISC = ' + ReplaceStr(FloatToStr(lr_BaseICMS), ',', '.') + ',   '+
                            '         VL_ICMSNOTAFISC = ' + ReplaceStr(FloatToStr(lr_ValoICMS), ',', '.') + ',       '+
                            '         VL_IPINOTAFISC = ' + ReplaceStr(FloatToStr(lr_TotaIPI), ',', '.') + ',         '+
                            '         VL_NOTAFISC = round((' + ReplaceStr(FloatToStr(lr_ValoNota), ',', '.') +
                                 ' + VL_SEGUNOTAFISC + VL_OUTRDESPNOTAFISC),2),                           '+
                            '         VL_BASEIPINOTAFISC = ' + ReplaceStr(FloatToStr(lr_BaseIPI), ',', '.') + ',     '+
                            '         QN_VOLUNOTAFISC = ' + FloatToStr(lr_Volumes) + ',                              '+
                            '         QN_PESOBRUTNOTAFISC = ' + ReplaceStr(FloatToStr(lr_PesoBrut), ',', '.') + ',   '+
                            '         QN_PESOLIQUNOTAFISC = ' + ReplaceStr(FloatToStr(lr_PesoLiqu), ',', '.') + ',   '+
                            '         PC_ICMSFRETNOTAFISC = 0,                                                       '+
                            '         VL_ICMSFRETNOTAFISC = 0,                                                       '+
                            '         VL_DEVOIPINOTAFISC = 0,                                                        '+
                            '         GN_ESPENOTAFISC = ''' +  VNM_TIPOEMBA  + ''',     '+
                            '         VL_IPIISENNOTAFISC = ' + ReplaceStr(FloatToStr(lr_IsenIPI), ',', '.') + ',     '+
                            '         VL_IPIOUTRNOTAFISC = ' + ReplaceStr(FloatToStr(lr_OutrIPI), ',', '.') + ',     '+
                            '         VL_PRODNOTAFISC = ' + ReplaceStr(FloatToStr(lr_TotaBrutItem), ',', '.') + ',   '+
                            '         VL_DESCPEDIVEND_NOTAFISC = ' + ReplaceStr(FloatToStr((lr_TotaBrutItem*lr_PcDescNotaFisc)/100), ',', '.') + ',   ';
    If (lr_PcDescNotaFisc>0) then
       qryNotaFisc.SQL.Add('         GN_OBSDESCNOTAFISC = GN_OBSDESCNOTAFISC || ''' + (FloatToStrF(((lr_TotaBrutItem*lr_PcDescNotaFisc)/100),ffNumber,15,2))  +  ''' , ');

    qryNotaFisc.SQL.Add('         GN_OBSENOTAFISC = ''' + ls_ObseNota + '''                                      ');
    qryNotaFisc.SQL.Add('   WHERE NOTA_FISCAL.ID_NOTAFISC = ' + IntToStr(li_NumeNota) +'                         ');

    try
      qryNotaFisc.ExecSQL;
    except
      MessageDlg('Erro ao manipular Totais da Nota Fiscal. Verifique.', mtWarning, [mbOk], 0);
      qryNotaFisc.Close;
      Result := False;
      Exit;
    end;
    qryNotaFisc.Close;

    // Criamos o relacionamento nota fiscal com pedido de venda
    qryTemp.SQL.Text := 'INSERT INTO PEDIDO_VENDA_NOTA_FISCAL                        '+
                        '        ( EMPRESA,                                          '+
                        '          FILIAL,                                           '+
                        '          ID_PEDIVENDNOTAFISC,                              '+
                        '          ID_PEDIVEND,                                      '+
                        '          ID_NOTAFISC,                                      '+
                        '          FX_PEDIVENDNOTAFISC )                             '+
                        'VALUES ( ''' + gs_Empresa + ''',                            '+
                        '         ' + IntToStr(gi_Filial) + ','  +
                        '         ID_PEDIVENDNOTAFISC.NextVal  ' + ',' +
                        '         ' + IntToStr(pi_CodiPedi) +',                      '+
                        '         ' + IntToStr(li_NumeNota) +',                      '+
                        '         ''S'' )                                            ';

    try
      qryTemp.ExecSQL;
    except
      MessageDlg('Erro ao manipular relacionamento da Nota Fiscal com o Pedido. Verifique.', mtWarning, [mbOk], 0);
      qryTemp.Close;
      Result := False;
      Exit;
    end;

    // Destruimos a query
    qryTemp.Close;

    // Destruimos as StringList
    sltPercIcms.Free;
    sltBaseICMS.Free;
    sltValoICMS.Free;
    sltIsenICMS.Free;
    sltOutrICMS.Free;

    // Damos o retorno
    Result := True;

  end
  // Se o pedido for do tipo ___
  else
  if ps_TipoPedi = '___' then
  begin
    // ....
  end;
end;

procedure TFrmImpNFRacao.SB_HTMLMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Bot_Flat(14);
end;

procedure TFrmImpNFRacao.SB_HTMLClick(Sender: TObject);
begin
  VHTML:= True;
  SB_PRINTClick(nil);
end;

procedure TFrmImpNFRacao.FormShow(Sender: TObject);
begin
IF LCAMPOS.Items.Count=0 then
 BEGIN
  With LCampos.Items do
   begin
     Add('Cód. Forma Pagamento');
     Add('Código Cliente');
     Add('Código da Conta');
     Add('Cód. do Vendedor');
     Add('Data Carga');
     Add('Data do Pedido');
     Add('Descrição Forma Pagto.');
     Add('Nome Cliente');
     Add('Nome Vendedor');
     Add('Número Boleto');
     Add('Número Carga');
     Add('Número da Conta');
     Add('Número Documento');
     Add('Número Pedido');
     Add('Série Documento');
     Add('Status Carga');
     Add('Status do Pedido');
     Add('Data do Faturamento');
     Add('Data de Entrega do Pedido');

   end;
 END;

 PageControl1.Pages[1].TabVisible:=false;

end;

procedure TFrmImpNFRacao.SB_CancelaNFClick(Sender: TObject);
begin
  if grdDados.SelectedRows.Count = 0 then
  begin
    MessageDlg('Nenhum pedido selecionado !', mtWarning, [mbOk], 0);
    Exit;
  end;
  // Selecionamos a carga a ser cancelada.
  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Text :=
    'SELECT NOTA_FISCAL.ID_NOTAFISC,                                                         '+
    '       NOTA_FISCAL.NR_NOTAFISC,                                                         '+
    '       NOTA_FISCAL.FL_CANCNOTAFISC                                                      '+
    '  FROM NOTA_FISCAL,                                                                     '+
    '       PEDIDO_VENDA_NOTA_FISCAL                                                         '+
    ' WHERE (NOTA_FISCAL.ID_NOTAFISC = PEDIDO_VENDA_NOTA_FISCAL.ID_NOTAFISC)                 '+
    '   AND (NOTA_FISCAL.FL_CANCNOTAFISC = ''N'')                                            '+
    '   AND (PEDIDO_VENDA_NOTA_FISCAL.ID_PEDIVEND = ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ')';
  QryTemp.Open;

  // Verificamos se foi encontrada a nota fiscal para o pedido
  if qryTemp.IsEmpty then
  begin
    MessageDlg('Nota fiscal não encontrada para o pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' !', mtInformation, [mbOK], 0);
    exit;
  end;

  // Verificamos se a nota fiscal já está cancelada
  if qryTemp.FieldByName('FL_CANCNOTAFISC').AsString = 'S' then
  begin
    MessageDlg('A Nota fiscal ' + IntToStr(qryTemp['NR_NOTAFISC']) + ' do pedido ' + IntToStr(QImpDocPed['ID_PEDIVEND']) + ' já está cancelada !' + #13 +
               'Por favor, verifique !', mtInformation, [mbOK], 0);
    exit;
  end;

  // Verificamos se o usuario deseja cancelar a nota fiscal
  if MessageDlg('Deseja realmente cancelar a nota fiscal ' +
                 IntToStr(QImpDocPed['NR_NOTAFISC']), mtConfirmation, [mbYes, mbNO], 0) = mrYes then
  begin
    // Cancelamos a NF
    qryTempUpda.Close;
    qryTempUpda.SQL.Clear;
    qryTempUpda.SQL.Text := 'UPDATE NOTA_FISCAL                                                     '+
                           '   SET FL_CANCNOTAFISC = ''S''                                         '+
                           ' WHERE ID_NOTAFISC = ' + qryTemp.FieldByName('ID_NOTAFISC').AsString;
    qryTempUpda.ExecSQL;

    // Atualizamos a data de geração no pedido de venda
    QImpDocPed.Edit;
    QImpDocPed.FieldByName('DT_FATUPEDIVEND').AsString := '';
    QImpDocPed.FieldByName('VL_OUTRAJUSANTPEDIVEND').AsFloat:= QImpDocPed.FieldByName('VL_OUTRAJUSPEDIVEND').AsFloat;
    QImpDocPed.FieldByName('VL_OUTRAJUSPEDIVEND').AsFloat:= 0;
    QImpDocPed.Post;

    // Atualizamos o banco
    QImpDocPed.ApplyUpdates;

    // Limpamos o cache
    QImpDocPed.CommitUpdates;

    MessageDlg('A Nota fiscal ' + IntToStr(qryTemp['NR_NOTAFISC']) + ' do pedido '
             + IntToStr(QImpDocPed['ID_PEDIVEND'])
             + ' foi cancelada com sucesso !',mtInformation, [mbOK], 0);
  end;

end;

end.

