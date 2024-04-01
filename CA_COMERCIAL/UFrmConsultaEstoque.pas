unit UFrmConsultaEstoque;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  Mask, DBAccess, Ora, DB, MemDS, DateUtils, DBCtrls, Vcl.ToolWin,
  Winapi.Windows, OraSmart;

type
  TPageControl = class(ComCtrls.TPageControl)
  protected
    function DoMouseWheel(Shift: TShiftState; WheelDelta: Integer;
      const MousePos: TPoint): Boolean; virtual;
  end;

type
  TFrmConsultaEstoque = class(TForm)
    PageControl1: TPageControl;
    Tab_Criterio: TTabSheet;
    LCampos: TListBox;
    Label6: TLabel;
    CBCond: TComboBox;
    RGeou: TRadioGroup;
    EdExpre: TEdit;
    Label7: TLabel;
    MResul: TMemo;
    BtIncluir: TBitBtn;
    BtLimpar: TBitBtn;
    BtAtivar: TBitBtn;
    BPESQ: TBitBtn;
    Tab_Lista: TTabSheet;
    ToolBar1: TToolBar;
    SB_ATUAL: TSpeedButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    DBGrid1: TDBGrid;
    Tab_Processa: TTabSheet;
    Panel1: TPanel;
    Label49: TLabel;
    edtDataInicial: TMaskEdit;
    brnDataInicial: TBitBtn;
    SP_ESTOQUE: TOraSQL;
    Ds: TOraDataSource;
    Qr: TOraQuery;
    Qr_Estoque: TOraQuery;
    Ds_Estoque: TOraDataSource;
    Qr_EstoqueEMPRESA: TStringField;
    Qr_EstoqueFILIAL: TIntegerField;
    Qr_EstoqueID_MATERIAL: TFloatField;
    Qr_EstoqueID_PRODMATEEMBA: TStringField;
    Qr_EstoqueNM_PRODMATEEMBA: TStringField;
    Qr_EstoquePRODUZIDO: TFloatField;
    Qr_EstoqueEXPEDIDO: TFloatField;
    Qr_EstoqueESTOQUE_ANT: TFloatField;
    DBGrid2: TDBGrid;
    QrEMPRESA: TStringField;
    QrFILIAL: TIntegerField;
    QrID_MATERIAL: TFloatField;
    QrID_PRODMATEEMBA: TStringField;
    QrNM_PRODMATEEMBA: TStringField;
    QrDATA: TDateTimeField;
    QrTIPO: TStringField;
    QrESTOQUE_ANT: TFloatField;
    QrPRODUZIDO: TFloatField;
    QrFATURADO: TFloatField;
    QrESTOQUE: TFloatField;
    QrDT_ULT_POSICAO: TDateTimeField;
    Qr_Data: TOraQuery;
    Qr_DataDT_ULTPROC: TDateTimeField;
    Qr_DataDT_PROC: TDateTimeField;
    Qr_DataDIAS_PROC: TFloatField;
    Tab_Inventario: TTabSheet;
    dbg_Inventario: TDBGrid;
    Ds_Inventario: TOraDataSource;
    sqlFinalizaInventario: TOraSQL;
    QrDES_TIPO: TStringField;
    Qr_DataDT_INV: TDateTimeField;
    QrDEVOLUCAO: TFloatField;
    Qr_EstoqueDEVOLUCAO: TFloatField;
    QrQTD_AJUSTE: TFloatField;
    Qr_EstoqueQTD_AJUSTE: TFloatField;
    Tab_Ajuste: TTabSheet;
    pnl_TopoAjuste: TPanel;
    Label1: TLabel;
    edt_DataAjuste: TMaskEdit;
    BitBtn1: TBitBtn;
    dbg_Ajuste: TDBGrid;
    Ds_Ajuste: TOraDataSource;
    Qr_Produtos: TOraQuery;
    Ds_Produtos: TOraDataSource;
    Qr_ProdutosID_MATERIAL: TFloatField;
    Qr_ProdutosID_PRODMATEEMBA: TStringField;
    Qr_ProdutosNM_PRODMATEEMBA: TStringField;
    QrPMEDIO: TFloatField;
    QrCAIXA: TFloatField;
    chkComputarProducao: TCheckBox;
    Qr_EstoqueESTOQUE_ANT_CX: TFloatField;
    Qr_EstoqueCX_VENDIDO: TFloatField;
    Qr_EstoqueKG_VENDIDO: TFloatField;
    Qr_EstoqueCX_AJUSTE: TFloatField;
    Qr_EstoqueCX_ESTOQUE_ATUAL: TFloatField;
    SB_Relatorio: TSpeedButton;
    Sb_Sair: TSpeedButton;
    btnConsultar: TSpeedButton;
    Qr_EstoqueKG_ESTOQUE_ATUAL: TFloatField;
    Panel2: TPanel;
    btnImpInventario: TSpeedButton;
    btnGravaInventario: TSpeedButton;
    btnPesqInventario: TSpeedButton;
    lblDataInventario: TLabel;
    edtDataInventario: TMaskEdit;
    btnDataInventario: TBitBtn;
    SpeedButton2: TSpeedButton;
    Qr_EstoqueCX_PRODUZIDO: TFloatField;
    Qr_EstoqueCX_DEVOLUCAO: TFloatField;
    Qr_EstoqueCX_EXPEDIDO: TFloatField;
    sql_Inventario_PosEstoque: TOraSQL;
    qryTempInven: TOraQuery;
    Panel4: TPanel;
    lblDataFinal: TLabel;
    edtDataFinal: TMaskEdit;
    btnDataFinal: TBitBtn;
    Qr_EstoqueFL_AJUSTADO: TStringField;
    rgpOpcao: TRadioGroup;
    btnAjusteIncluir: TSpeedButton;
    btnAjusteAlterar: TSpeedButton;
    btnAjusteExcluir: TSpeedButton;
    btnAjusteConfirmar: TSpeedButton;
    btnAjusteCancelar: TSpeedButton;
    btnAjusteConsultar: TSpeedButton;
    Label2: TLabel;
    edtDescProduto: TEdit;
    edtCodProduto: TEdit;
    Btmaterial: TBitBtn;
    BitBtn2: TBitBtn;
    btnExcel: TSpeedButton;
    dlgSaveArquivo: TSaveDialog;
    Qr_EstoqueDATA: TDateTimeField;
    Qr_EstoqueCX_VENDIDO_BON: TFloatField;
    Qr_EstoqueKG_VENDIDO_BON: TFloatField;
    Qr_EstoqueCX_EXPEDIDO_BON: TFloatField;
    Qr_EstoqueKG_EXPEDIDO_BON: TFloatField;
    QryTemp: TOraQuery;
    Qr_Ajuste: TSmartQuery;
    Qr_AjusteEMPRESA: TStringField;
    Qr_AjusteFILIAL: TIntegerField;
    Qr_AjusteID_MATERIAL: TFloatField;
    Qr_AjusteID_PRODMATEEMBA: TStringField;
    Qr_AjusteNM_PRODMATEEMBA: TStringField;
    Qr_AjusteDATA: TDateTimeField;
    Qr_AjusteQTD_AJUSTE: TFloatField;
    Qr_AjusteOBS_AJUSTE: TStringField;
    Qr_AjusteLkp_Produto: TStringField;
    Qr_AjusteLkp_Id_Material: TIntegerField;
    Qr_AjusteCO_DESCARTE: TFloatField;
    qry_Inventario: TSmartQuery;
    qry_InventarioID_MATERIAL: TFloatField;
    qry_InventarioID_PRODMATEEMBA: TStringField;
    qry_InventarioNM_PRODMATEEMBA: TStringField;
    qry_InventarioKG_INVENTARIO: TFloatField;
    qry_InventarioCX_INVENTARIO: TFloatField;
    qry_InventarioDT_REGIPROD: TStringField;
    qry_InventarioOP_FECHADO: TStringField;
    procedure brnDataInicialClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_ProcessarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_RelatorioClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure CRTemp_qry_InventarioAfterPost(DataSet: TDataSet);
    procedure dbg_InventarioTitleClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg_InventarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn_AlterarAjusteClick(Sender: TObject);
    procedure Btn_ExcluirAjusteClick(Sender: TObject);
    procedure Btn_ConfAjusteClick(Sender: TObject);
    procedure btn_CancAjusteClick(Sender: TObject);
    procedure CRTemp_Qr_AjusteBeforeOpen(DataSet: TDataSet);
    procedure CRTemp_Qr_AjusteAfterInsert(DataSet: TDataSet);
    procedure CRTemp_Qr_AjusteAfterOpen(DataSet: TDataSet);
    procedure Ds_AjusteStateChange(Sender: TObject);
    procedure CRTemp_Qr_AjusteBeforePost(DataSet: TDataSet);
    procedure CRTemp_Qr_AjusteBeforeDelete(DataSet: TDataSet);
    procedure dbg_AjusteTitleClick(Column: TColumn);
    procedure btnConsultarClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg_InventarioDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbg_AjusteDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnGravaInventarioClick(Sender: TObject);
    procedure btnPesqInventarioClick(Sender: TObject);
    procedure btnDataInventarioClick(Sender: TObject);
    procedure btnImpInventarioClick(Sender: TObject);
    procedure FormShortCut(Key: Integer; Shift: TShiftState;
      var Handled: Boolean);
    procedure btnDataFinalClick(Sender: TObject);
    procedure rgpOpcaoClick(Sender: TObject);
    procedure btnAjusteIncluirClick(Sender: TObject);
    procedure btnAjusteAlterarClick(Sender: TObject);
    procedure btnAjusteExcluirClick(Sender: TObject);
    procedure btnAjusteConfirmarClick(Sender: TObject);
    procedure btnAjusteCancelarClick(Sender: TObject);
    procedure BtmaterialClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
    OrdemColuna , Ordem : String;
    SomenteConsulta : Boolean;
   procedure AtualizaBotoes ();

  public
    { Public declarations }
    nCodProd: Integer;
  end;

var
  FrmConsultaEstoque: TFrmConsultaEstoque;

implementation

{$R *.dfm}
uses Principal,Global, UFrmSeldata , UFrmRelEstoque, UFrmRelInventario, UFrmRelEstoquePeriodo, ufrmConsultaProdutos;

procedure TFrmConsultaEstoque.brnDataInicialClick(Sender: TObject);
Var Vdtstr:String;
begin
  Cria_FrmSelData(Vdtstr);
  edtDataInicial.Text := Vdtstr;
  if ( edtDataInicial.Enabled )then
    edtDataInicial.SetFocus;
end;

procedure TFrmConsultaEstoque.FormShow(Sender: TObject);
begin
  nCodProd := 0;
  edtDataInicial.Text := DateToStr( Today );
  edtDataFinal.Text := DateToStr( Today );
  PageControl1.ActivePage := Tab_Processa;
  Tab_Criterio.TabVisible := False;
  Tab_Lista.TabVisible := False;
  Tab_Ajuste.TabVisible := False;
  rgpOpcaoClick(Self);
  btnConsultarClick(Self);
end;

procedure TFrmConsultaEstoque.btn_ProcessarClick(Sender: TObject);
begin
  if ( StrToDate(edtDataInicial.Text) > (Today) ) OR ( StrToDate(edtDataFinal.Text) > (Today) )then
  begin
    Application.MessageBox('Não é permitido Processar Estoque para datas futuras.', PChar(FrmConsultaEstoque.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
end;

procedure TFrmConsultaEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmConsultaEstoque:=nil;
//  FrmPrincipal.VEN051.Enabled:= True;
  FrmPrincipal.ACVEN051.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmConsultaEstoque.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsultaEstoque.SB_RelatorioClick(Sender: TObject);
var
  sAjuste, sMotivo: string;
  a, b, c, i : Integer;
begin
  if ( Qr_Estoque.RecordCount = 0 ) then
  begin
    Application.MessageBox('Efetue a Consulta de Estoque para geração do Relatório.', PChar(FrmConsultaEstoque.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  Qr_Estoque.DisableControls;
  Qr_Estoque.Filtered := False;
  Qr_Estoque.Filter := ' FL_AJUSTADO = ''*''';
  Qr_Estoque.Filtered := True;
  Qr_Estoque.First;

  for i := 0 to Qr_Estoque.RecordCount -1 do
  begin
    sMotivo := '';
    Qr_Ajuste.Close;
    Qr_Ajuste.SQL.Clear;
    Qr_Ajuste.SQL.Text := 'SELECT A.EMPRESA, A.FILIAL, A.ID_MATERIAL, A.ID_PRODMATEEMBA, ME.NM_PRODMATEEMBA, ' +
                          'A.DATA, A.QTD_AJUSTE, A.OBS_AJUSTE, A.CO_DESCARTE FROM AJUSTE_ESTOQUE A ' +
                          'INNER JOIN MATERIAL_EMBALAGEM ME ON (A.ID_MATERIAL = ME.ID_MATERIAL AND A.ID_PRODMATEEMBA = ME.ID_PRODMATEEMBA) ' +
                          'WHERE TO_DATE(A.DATA) = ''' + edtDataInicial.EditText + ''' AND A.ID_MATERIAL = ' + Qr_EstoqueID_MATERIAL.AsString +
                          ' AND A.ID_PRODMATEEMBA = ''' + Qr_EstoqueID_PRODMATEEMBA.AsString + ''' ORDER BY A.CO_DESCARTE';
    Qr_Ajuste.Open;
    Qr_Ajuste.First;

    for c := 0 to Qr_Ajuste.RecordCount -1 do
    begin
      if not(Qr_AjusteCO_DESCARTE.IsNull) then
      begin
        a:= 0;
        b:= 0;

        if c = 0 then
          a:= 1
        else
          a:= Pos('º',Qr_AjusteOBS_AJUSTE.AsString) + 1;

        b:= Pos('}',Qr_AjusteOBS_AJUSTE.AsString);

        sMotivo := sMotivo + Copy(Qr_AjusteOBS_AJUSTE.AsString,a,b-a);

        if (c = (Qr_Ajuste.RecordCount -1)) then
          sMotivo := sMotivo + '}'
        else
          sMotivo := sMotivo + ',';
      end
      else
        sMotivo := sMotivo + Qr_AjusteOBS_AJUSTE.AsString;

      Qr_Ajuste.Next;
    end;

    sAjuste:= sAjuste + Qr_EstoqueFL_AJUSTADO.AsString + '  ' + Qr_EstoqueNM_PRODMATEEMBA.AsString + ' ajustado em ' +
              FloatToStr(Qr_EstoqueQTD_AJUSTE.Value) + ', ao peso de ' + FloatToStr(Qr_EstoqueCX_AJUSTE.Value) + '. Motivo: ' +  sMotivo + #13; //+ Qr_EstoqueOBS_AJUSTE.AsString + #13;

    Qr_Estoque.Next
  end;

  Qr_Estoque.DisableControls;
  Qr_Estoque.Filtered := False;
  Qr_Estoque.Filter := '';
  Qr_Estoque.Filtered := True;
  Qr_Estoque.First;

  if rgpOpcao.ItemIndex = 0 then
  begin
    FrmRelEstoque := TFrmRelEstoque.Create(Self);
    FrmRelEstoque.lblTitulo.Caption := 'AVÍCOLA DACAR LTDA';
    FrmRelEstoque.lblSubTitulo.Caption := 'Posição de Estoque em ' + edtDataInicial.Text;
    FrmRelEstoque.lblUsuario.Caption := gs_NomeUsuario;
    FrmRelEstoque.RLMemo1.Lines.Add(sAjuste);
//    FrmRelEstoque.RLPrintDialogSetup1.Copies := 1;
    FrmRelEstoque.RLReport1.Preview(nil);
  end
  else
  begin
    FrmRelEstoquePeriodo := TFrmRelEstoquePeriodo.Create(Self);
    FrmRelEstoquePeriodo.qryEstoquePeriodo.Close;
    FrmRelEstoquePeriodo.qryEstoquePeriodo.ParamByName('Data_Ini').Value := edtDataInicial.EditText;
    FrmRelEstoquePeriodo.qryEstoquePeriodo.ParamByName('Data_Fin').Value := edtDataFinal.EditText;
    FrmRelEstoquePeriodo.qryEstoquePeriodo.Open;

    if nCodProd > 0 then
    begin
      FrmRelEstoquePeriodo.qryEstoquePeriodo.DisableControls;
      FrmRelEstoquePeriodo.qryEstoquePeriodo.Filtered := False;
      FrmRelEstoquePeriodo.qryEstoquePeriodo.Filter := ' ID_MATERIAL = ' + IntToStr(nCodProd) + ' AND ID_PRODMATEEMBA = ''' + edtCodProduto.Text + '''';
      FrmRelEstoquePeriodo.qryEstoquePeriodo.Filtered := True;
      FrmRelEstoquePeriodo.qryEstoquePeriodo.First;
    end
    else
    begin
      FrmRelEstoquePeriodo.qryEstoquePeriodo.DisableControls;
      FrmRelEstoquePeriodo.qryEstoquePeriodo.Filtered := False;
      FrmRelEstoquePeriodo.qryEstoquePeriodo.Filter := '';
      FrmRelEstoquePeriodo.qryEstoquePeriodo.Filtered := True;
      FrmRelEstoquePeriodo.qryEstoquePeriodo.First;
    end;

    FrmRelEstoquePeriodo.lblTitulo.Caption := 'AVÍCOLA DACAR LTDA';
    FrmRelEstoquePeriodo.lblSubTitulo.Caption := 'Posição de Estoque no período de ' + edtDataInicial.Text + ' a ' + edtDataFinal.Text;
//    FrmRelEstoquePeriodo.RLPrintDialogSetup1.Copies := 1;
    FrmRelEstoquePeriodo.lblUsuario.Caption := gs_NomeUsuario;
    FrmRelEstoquePeriodo.RLReport1.Preview(nil);
  end;

  Qr_Estoque.EnableControls;
  Qr_Estoque.First;
end;



procedure TFrmConsultaEstoque.PageControl1Change(Sender: TObject);
begin
  if ( PageControl1.ActivePage = Tab_Inventario ) then
    edtDataInventario.Text := DateToStr( Today );

  if ( PageControl1.ActivePage = Tab_Ajuste ) then
  begin
    if( edt_DataAjuste.Text = '') then
    begin
         edt_DataAjuste.Text := DateToStr(Today());
    end;
    Qr_Ajuste.Close;
    Qr_Ajuste.Open;
  end;

end;

procedure TFrmConsultaEstoque.CRTemp_qry_InventarioAfterPost(DataSet: TDataSet);
begin
     qry_Inventario.CommitUpdates;
     qry_Inventario.ApplyUpdates;
end;

procedure TFrmConsultaEstoque.dbg_InventarioTitleClick(Column: TColumn);
begin
     OrdenarGrid ( dbg_Inventario, qry_Inventario , Column,  OrdemColuna , Ordem );
     OrdemColuna := Column.FieldName;
     if (OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente') then
      Ordem := 'Crescente'
     else
      Ordem := 'Decrescente';
end;

procedure TFrmConsultaEstoque.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Shift = [ssCtrl]) and (Key = Ord('C')) then
       CTRL_C_Grig ( DBGrid1 );
end;

procedure TFrmConsultaEstoque.dbg_InventarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Shift = [ssCtrl]) and (Key = Ord('C')) then
       CTRL_C_Grig ( dbg_Inventario );
end;

function TPageControl.DoMouseWheel(Shift: TShiftState; WheelDelta: Integer; const MousePos: TPoint): Boolean;
begin
  Result := true;
end;

procedure TFrmConsultaEstoque.BitBtn1Click(Sender: TObject);
Var Vdtstr : String;
begin
  Cria_FrmSelData(Vdtstr);
  edt_DataAjuste.Text := Vdtstr;
  if ( edt_DataAjuste.Enabled )then
    edt_DataAjuste.SetFocus;
end;

procedure TFrmConsultaEstoque.btn_AlterarAjusteClick(Sender: TObject);
begin
     if ( Qr_AjusteDATA.Value <> Today   ) then
     begin
          MessageDlg('Alteração não permitida. O estoque nesta data já foi processado . ', mtInformation,[mbOk], 0, mbOk);
          Exit;
     end
     else
     begin
          Qr_Ajuste.Edit;
     end;

end;

procedure TFrmConsultaEstoque.Btn_ExcluirAjusteClick(Sender: TObject);
begin
     if ( Qr_AjusteDATA.Value <> Today   ) then
     begin
          MessageDlg('Alteração não permitida. O estoque nesta data já foi processado . ', mtInformation,[mbOk], 0, mbOk);
          Exit;
     end
     else
     begin
         If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
           begin
             Qr_Ajuste.Delete;
             Qr_Ajuste.ApplyUpdates;
             Qr_Ajuste.CommitUpdates;
             Qr_Ajuste.Refresh;
             AtualizaBotoes;
           end;
     end;
end;

procedure TFrmConsultaEstoque.Btn_ConfAjusteClick(Sender: TObject);
begin
     IF (Qr_Ajuste.State =DSINSERT)  then
     BEGIN
          Qr_AjusteID_MATERIAL.Value := Qr_AjusteLkp_Id_Material.AsFloat;
          Qr_Ajuste.Post;
          Qr_Ajuste.ApplyUpdates;
          Qr_Ajuste.CommitUpdates;
          Qr_Ajuste.Close;
          Qr_Ajuste.Open;
         dbg_Ajuste.Refresh;
     END;

     IF (Qr_Ajuste.State=DSEDIT) then
     BEGIN
          Qr_Ajuste.Post;
          Qr_Ajuste.ApplyUpdates;
          Qr_Ajuste.CommitUpdates;
          dbg_Ajuste.Refresh;
     END;
     AtualizaBotoes;
end;

procedure TFrmConsultaEstoque.btn_CancAjusteClick(Sender: TObject);
begin
     Qr_Ajuste.Cancel;
     Qr_Ajuste.CancelUpdates;
end;

procedure TFrmConsultaEstoque.CRTemp_Qr_AjusteBeforeOpen(DataSet: TDataSet);
begin
//     Qr_Ajuste.MacroByName('Macro').Value := ' WHERE A.DATA = TO_DATE ( ''' + edt_DataAjuste.Text + ''',''DD/MM/YYYY'' )';
end;

procedure TFrmConsultaEstoque.CRTemp_Qr_AjusteAfterInsert(DataSet: TDataSet);
begin
      Qr_AjusteEMPRESA.value := gs_Empresa;
      Qr_AjusteFILIAL.value  := gi_Filial;
      Qr_AjusteDATA.Value    := Today();
end;

procedure TFrmConsultaEstoque.AtualizaBotoes ();
var Edicao : Boolean;
begin
  if( SomenteConsulta ) then
  begin
    btnAjusteIncluir.Enabled     := false;
    btnAjusteAlterar.Enabled := false;
    btnAjusteExcluir.Enabled := false ;

    btnAjusteConfirmar.Enabled  := false;
    btnAjusteCancelar.Enabled  := false ;
    dbg_Ajuste.ReadOnly := True;
  end
  else
  begin
    Edicao := ( Ds_Ajuste.State in [dsEdit , dsInsert] );

    btnAjusteIncluir.Enabled     := ( not Edicao ) ;
    btnAjusteAlterar.Enabled   := ( not Edicao ) AND (Qr_Ajuste.RecordCount > 0 ) ;
    btnAjusteExcluir.Enabled  := ( not Edicao ) AND (Qr_Ajuste.RecordCount > 0 ) ;

    btnAjusteConfirmar.Enabled := Edicao ;
    btnAjusteCancelar.Enabled  := Edicao ;
  end;
end;

procedure TFrmConsultaEstoque.CRTemp_Qr_AjusteAfterOpen(DataSet: TDataSet);
begin
    AtualizaBotoes;
end;

procedure TFrmConsultaEstoque.Ds_AjusteStateChange(Sender: TObject);
begin
     AtualizaBotoes;
end;

procedure TFrmConsultaEstoque.CRTemp_Qr_AjusteBeforePost(DataSet: TDataSet);
begin
     if ( Qr_AjusteDATA.Value <> Today   ) then
     begin
          MessageDlg('Alteração não permitida. O estoque nesta data já foi processado . ', mtInformation,[mbOk], 0, mbOk);
          Exit;
     end;
end;

procedure TFrmConsultaEstoque.CRTemp_Qr_AjusteBeforeDelete(DataSet: TDataSet);
begin
     if ( Qr_AjusteDATA.Value <> Today   ) then
     begin
          MessageDlg('Alteração não permitida. O estoque nesta data já foi processado . ', mtInformation,[mbOk], 0, mbOk);
          Exit;
     end;
end;

procedure TFrmConsultaEstoque.dbg_AjusteTitleClick(Column: TColumn);
begin
  OrdenarGrid ( dbg_Ajuste, Qr_Ajuste , Column,  OrdemColuna , Ordem );
  OrdemColuna := Column.FieldName;

  if (OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente') then
    Ordem := 'Crescente'
  else
    Ordem := 'Decrescente';
end;

procedure TFrmConsultaEstoque.btnConsultarClick(Sender: TObject);
begin
  if rgpOpcao.ItemIndex = 1 then
  begin
    if ( edtDataInicial.EditText = '' ) then
    begin
      Application.MessageBox('Data Inicial deve ser preenchida.', PChar(FrmConsultaEstoque.Caption), MB_OK + MB_ICONINFORMATION);
      edtDataInicial.SetFocus;
      Exit;
    end;

    if ( edtDataFinal.EditText = '' ) then
    begin
      Application.MessageBox('Data Final deve ser preenchida.', PChar(FrmConsultaEstoque.Caption), MB_OK + MB_ICONINFORMATION);
      edtDataFinal.SetFocus;
      Exit;
    end;

    if StrToDate(edtDataFinal.EditText) < StrToDate(edtDataInicial.EditText) then
    begin
      Application.MessageBox('Data Final não pode ser menor que Data Inicial.', PChar(FrmConsultaEstoque.Caption), MB_OK + MB_ICONINFORMATION);
      edtDataFinal.SetFocus;
      Exit;
    end;
  end;

  if rgpOpcao.ItemIndex = 0 then
  begin
    Qr_Estoque.Close;
    Qr_Estoque.ParamByName('Data_Ini').Value := edtDataInicial.EditText;
    Qr_Estoque.ParamByName('Data_Fin').Value := edtDataInicial.EditText;
    Qr_Estoque.Open;
  end
  else
  begin
    Qr_Estoque.Close;
    Qr_Estoque.ParamByName('Data_Ini').Value := edtDataInicial.EditText;
    Qr_Estoque.ParamByName('Data_Fin').Value := edtDataFinal.EditText;
    Qr_Estoque.Open;
  end;

  if nCodProd > 0 then
  begin
    Qr_Estoque.DisableControls;
    Qr_Estoque.Filtered := False;
    Qr_Estoque.Filter := ' ID_MATERIAL = ' + IntToStr(nCodProd) + ' AND ID_PRODMATEEMBA = ''' + edtCodProduto.Text + '''';
    Qr_Estoque.Filtered := True;
    Qr_Estoque.First;
  end
  else
  begin
    Qr_Estoque.DisableControls;
    Qr_Estoque.Filtered := False;
    Qr_Estoque.Filter := '';
    Qr_Estoque.Filtered := True;
    Qr_Estoque.First;
  end;

  Qr_Estoque.EnableControls;
  DBGrid2.Refresh;
end;

procedure TFrmConsultaEstoque.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  with DBGrid2 do
  begin
    if Odd( DataSource.DataSet.RecNo) then
      Canvas.Brush.Color := $00FFF2D9
    else
      Canvas.Brush.Color := clWindow;

    Canvas.Font.Color  := clBlack;
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);

  end;

  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($00CEE7FF);

  DBGrid2.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmConsultaEstoque.dbg_InventarioDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with dbg_Inventario do
  begin
    if Odd( DataSource.DataSet.RecNo) then
      Canvas.Brush.Color := $00FFF2D9
    else
      Canvas.Brush.Color := clWindow;

    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);

  end;

  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  dbg_Inventario.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmConsultaEstoque.dbg_AjusteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= clSilver;

  dbg_Ajuste.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmConsultaEstoque.btnGravaInventarioClick(Sender: TObject);
Var i: Integer;
begin
  Application.MessageBox('Os valores visualizados serão contabilizados como INVENTÁRIO FINAL DE ESTOQUE.', PChar(FrmConsultaEstoque.Caption), MB_OK + MB_ICONINFORMATION);


  if Application.MessageBox('Deseja realmente FINALIZAR INVENTÁRIO?', PChar(FrmConsultaEstoque.Caption), MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    if (qry_Inventario.RecordCount > 0  ) then
    begin
      sqlFinalizaInventario.ParamByName('PR_DATA').Value := edtDataInventario.EditText;
      try
        begin
          sqlFinalizaInventario.Execute;

          qry_Inventario.DisableControls;
          qry_Inventario.Refresh;
          qry_Inventario.EnableControls;

          btnGravaInventario.Enabled := False;
        end;

        qry_Inventario.First;
        for i:=0 to qry_Inventario.RecordCount-1 do
        begin
          qryTempInven.Close;
          qryTempInven.Sql.clear;
          {FABRICIO - 07/03/2019 - MOTIVO: INCLUSAO DE REGISTRO DE INVENTARIO}
          qryTempInven.SqL.Text := 'INSERT INTO POSICAO_ESTOQUE (EMPRESA, FILIAL, ID_MATERIAL, ID_PRODMATEEMBA, DATA, TIPO,' +
                                   ' ESTOQUE_ANT_CX, ESTOQUE_ANT,'+
                                   ' CX_PRODUZIDO, PRODUZIDO,'+
                                   ' CX_VENDIDO, KG_VENDIDO,'+
                                   ' CX_EXPEDIDO, EXPEDIDO,'+
                                   ' CX_DEVOLUCAO, DEVOLUCAO,'+
                                   ' ESTOQUE,'+
                                   ' QTD_AJUSTE, CX_AJUSTE,'+
                                   ' CX_ESTOQUE_ATUAL, KG_ESTOQUE_ATUAL)' +
                                   ' VALUES (''CA'', 1, ' +
                                   qry_InventarioID_MATERIAL.AsString + ', ''' +
                                   qry_InventarioID_PRODMATEEMBA.Value + ''', ' +
                                   ' ''' + qry_InventarioDT_REGIPROD.Value + ''', ' +
                                   ' ''IV'', ' +
                                   qry_InventarioCX_INVENTARIO.AsString + ', ' +
                                   StringReplace(qry_InventarioKG_INVENTARIO.AsString, ',', '.', []) + ', ' +
                                   '0, 0, ' +
                                   '0, 0, ' +
                                   '0, 0, ' +
                                   '0, 0, ' +
                                   '0, ' +
                                   '0, 0, ' +
                                   '0, 0) ';

          qryTempInven.ExecSQL;
          qryTempInven.Close;

          qry_Inventario.Next;
        end;

        QryTemp.Close;
        QryTemp.SQL.Clear;
        QryTemp.SQL.Text := 'SELECT * FROM POSICAO_ESTOQUE WHERE TIPO = ''F'' AND DATA = :DATA';

        QryTemp.ParamByName('DATA').Value := DateToStr( StrToDate( edtDataInventario.EditText ) + 1);
        QryTemp.Open;

        if QryTemp.RecordCount > 1 then
        begin

          qry_Inventario.First;
          for i:=0 to qry_Inventario.RecordCount-1 do
          begin
            {ROBSON - 06/11/2023 - MOTIVO: ATUALIZAÇÃO DE REGISTROS PARA INICIO DE ESTOQUE APÓS INVENTÁRIO}
            qryTempInven.SQL.Clear;
            qryTempInven.SQL.Text := 'UPDATE POSICAO_ESTOQUE '+
                                     'SET '+
                                     '  ESTOQUE_ANT_CX = :ESTOQUE_ANT_CX,'+
                                     '  ESTOQUE_ANT = :ESTOQUE_ANT,'+
                                     '  CX_PRODUZIDO = 0,'+
                                     '  PRODUZIDO = 0,'+
                                     '  CX_VENDIDO = 0,'+
                                     '  KG_VENDIDO = 0,'+
                                     '  CX_EXPEDIDO = 0,'+
                                     '  EXPEDIDO = 0,'+
                                     '  CX_DEVOLUCAO = 0,'+
                                     '  DEVOLUCAO = 0,'+
                                     '  ESTOQUE = 0,'+
                                     '  QTD_AJUSTE = 0,'+
                                     '  CX_AJUSTE = 0,'+
                                     '  CX_ESTOQUE_ATUAL = 0,'+
                                     '  KG_ESTOQUE_ATUAL = 0' +
                                     'WHERE'+
                                     '  TIPO = ''F'' AND'+
                                     '  DATA = :DATA AND'+
                                     '  ID_MATERIAL = :ID_MATERIAL AND'+
                                     '  ID_PRODMATEEMBA = :ID_PRODMATEEMBA';

            qryTempInven.ParamByName('ESTOQUE_ANT_CX').Value := qry_InventarioCX_INVENTARIO.Value;
            qryTempInven.ParamByName('ESTOQUE_ANT').Value := qry_InventarioKG_INVENTARIO.Value;

            qryTempInven.ParamByName('DATA').AsString := DateToStr( StrToDate( qry_InventarioDT_REGIPROD.Value ) + 1 );
            qryTempInven.ParamByName('ID_MATERIAL').AsInteger := qry_InventarioID_MATERIAL.AsInteger;
            qryTempInven.ParamByName('ID_PRODMATEEMBA').AsString := qry_InventarioID_PRODMATEEMBA.AsString;

            qryTempInven.ExecSQL;
            qryTempInven.Close;

            qry_Inventario.Next;
          end;

        end
        else
        begin

          qry_Inventario.First;
          for i:=0 to qry_Inventario.RecordCount-1 do
          begin

            {FABRICIO - 07/03/2019 - MOTIVO:INCLUSÃO DE REGISTROS PARA INICIO DE ESTOQUE APÓS INVENTÁRIO}
            qryTempInven.Sql.clear;
            qryTempInven.SqL.Text := 'INSERT INTO POSICAO_ESTOQUE (EMPRESA, FILIAL, ID_MATERIAL, ID_PRODMATEEMBA, DATA, TIPO,' +
                                     ' ESTOQUE_ANT_CX, ESTOQUE_ANT,'+
                                     ' CX_PRODUZIDO, PRODUZIDO,'+
                                     ' CX_VENDIDO, KG_VENDIDO,'+
                                     ' CX_EXPEDIDO, EXPEDIDO,'+
                                     ' CX_DEVOLUCAO, DEVOLUCAO,'+
                                     ' ESTOQUE,'+
                                     ' QTD_AJUSTE, CX_AJUSTE,'+
                                     ' CX_ESTOQUE_ATUAL, KG_ESTOQUE_ATUAL)' +
                                     ' VALUES (''CA'', 1, ' +
                                     qry_InventarioID_MATERIAL.AsString + ', ''' +
                                     qry_InventarioID_PRODMATEEMBA.Value + ''', ' +
                                     ' ''' + DateToStr(StrToDate(qry_InventarioDT_REGIPROD.Value)+1) + ''', ' +
                                     ' ''F'', ' +
                                     qry_InventarioCX_INVENTARIO.AsString + ', ' +
                                     StringReplace(qry_InventarioKG_INVENTARIO.AsString, ',', '.', []) + ', ' +
                                     '0, 0, ' +
                                     '0, 0, ' +
                                     '0, 0, ' +
                                     '0, 0, ' +
                                     '0, ' +
                                     '0, 0, ' +
                                     '0, 0) ';

            qryTempInven.ExecSQL;
            qryTempInven.Close;

            qry_Inventario.Next;
          end;

        end;

        Application.MessageBox('Inventário realizado com sucesso.', PChar(FrmConsultaEstoque.Caption), MB_OK + MB_ICONINFORMATION);
        qry_Inventario.First;

      except
        on E: Exception do
        begin
          MessageDlg('Erro ao FINALIZAR Inventário .'+ E.Message , mtInformation,[mbOk], 0, mbOk);
          exit;
        end;
      end;

    end;
  end;

end;

procedure TFrmConsultaEstoque.btnPesqInventarioClick(Sender: TObject);
begin
  if ( edtDataInventario.EditText = '' ) then
  begin
    Application.MessageBox('Informe a data para Consulta de Registros de Inventário.', PChar(FrmConsultaEstoque.Caption), MB_OK + MB_ICONINFORMATION);
    edtDataInventario.SetFocus;
    Exit;
  end;

  qry_Inventario.Close;
  qry_Inventario.ParamByName('pr_Data').Value := edtDataInventario.EditText;
  qry_Inventario.Open;

  if qry_Inventario.RecordCount = 0 then
  begin
    Application.MessageBox('Não há Registros de Inventário dessa data.', PChar(FrmConsultaEstoque.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end
  else
  begin
    btnImpInventario.Enabled := True;
    if qry_InventarioOP_FECHADO.AsString = 'EM ABERTO' then
      btnGravaInventario.Enabled := True;
  end;

end;

procedure TFrmConsultaEstoque.btnDataInventarioClick(Sender: TObject);
Var Vdtstr:String;
begin
  Cria_FrmSelData(Vdtstr);
  edtDataInventario.Text := Vdtstr;

  if ( edtDataInventario.Enabled )then
    edtDataInventario.SetFocus;
end;

procedure TFrmConsultaEstoque.btnImpInventarioClick(Sender: TObject);
begin
  qry_Inventario.DisableControls;
  frmRelInventario := TfrmRelInventario.Create(Self);
  frmRelInventario.lblTitulo.Caption := 'AVÍCOLA DACAR LTDA';
  frmRelInventario.lblSubTitulo.Caption := 'Inventário de Estoque realizado em ' + edtDataInventario.Text;
//  frmRelInventario.RLPrintDialogSetup1.Copies := 1;
  frmRelInventario.RLReport1.Preview(nil);
  qry_Inventario.EnableControls;
  qry_Inventario.First;
end;

procedure TFrmConsultaEstoque.FormShortCut(Key: Integer;
  Shift: TShiftState; var Handled: Boolean);
begin
  case Key of
    4096: Close;          // ESC para sair
    4048: btnConsultar.Click; // F5 pesquisa
    4152: SB_Relatorio.Click; // F9 para gerar relatório
  end;
end;

procedure TFrmConsultaEstoque.btnDataFinalClick(Sender: TObject);
Var Vdtstr:String;
begin
  Cria_FrmSelData(Vdtstr);
  edtDataFinal.Text := Vdtstr;
  if ( edtDataFinal.Enabled )then
    edtDataFinal.SetFocus;
end;

procedure TFrmConsultaEstoque.rgpOpcaoClick(Sender: TObject);
begin
  lblDataFinal.Enabled := rgpOpcao.ItemIndex = 1;
  edtDataFinal.Enabled := rgpOpcao.ItemIndex = 1;
  btnDataFinal.Enabled := rgpOpcao.ItemIndex = 1;
  btnExcel.Enabled     := rgpOpcao.ItemIndex = 1;
end;

procedure TFrmConsultaEstoque.btnAjusteIncluirClick(Sender: TObject);
begin
  Qr_Ajuste.Append;
end;

procedure TFrmConsultaEstoque.btnAjusteAlterarClick(Sender: TObject);
begin
  if ( Qr_AjusteDATA.Value <> Today   ) then
  begin
    MessageDlg('Alteração não permitida. O estoque nesta data já foi processado . ', mtInformation,[mbOk], 0, mbOk);
    Exit;
  end
  else
  begin
    Qr_Ajuste.Edit;
  end;
end;

procedure TFrmConsultaEstoque.btnAjusteExcluirClick(Sender: TObject);
begin
  if ( Qr_AjusteDATA.Value <> Today   ) then
  begin
    MessageDlg('Alteração não permitida. O estoque nesta data já foi processado . ', mtInformation,[mbOk], 0, mbOk);
    Exit;
  end
  else
  begin
    If MessageDlg('Deseja Realmente Excluir esta Informação?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      Qr_Ajuste.Delete;
      Qr_Ajuste.ApplyUpdates;
      Qr_Ajuste.CommitUpdates;
      Qr_Ajuste.Refresh;
      AtualizaBotoes;
    end;
  end;
end;

procedure TFrmConsultaEstoque.btnAjusteConfirmarClick(Sender: TObject);
begin
  IF (Qr_Ajuste.State =DSINSERT)  then
  BEGIN
    Qr_AjusteID_MATERIAL.Value := Qr_AjusteLkp_Id_Material.AsFloat;
    Qr_Ajuste.Post;
    Qr_Ajuste.ApplyUpdates;
    Qr_Ajuste.CommitUpdates;
    Qr_Ajuste.Close;
    Qr_Ajuste.Open;
    dbg_Ajuste.Refresh;
  END;

  IF (Qr_Ajuste.State=DSEDIT) then
  BEGIN
    Qr_Ajuste.Post;
    Qr_Ajuste.ApplyUpdates;
    Qr_Ajuste.CommitUpdates;
    dbg_Ajuste.Refresh;
  END;
  AtualizaBotoes;
end;

procedure TFrmConsultaEstoque.btnAjusteCancelarClick(Sender: TObject);
begin
  Qr_Ajuste.Cancel;
  Qr_Ajuste.CancelUpdates;
end;

procedure TFrmConsultaEstoque.BtmaterialClick(Sender: TObject);
begin
  FrmOriPesq:=51;
  frmConsultaProdutos:=TfrmConsultaProdutos.Create(Self);
  frmConsultaProdutos.ShowModal;
end;

procedure TFrmConsultaEstoque.BitBtn2Click(Sender: TObject);
begin
  edtCodProduto.Text := '';
  edtDescProduto.Text := '';
  nCodProd := 0;
end;

procedure TFrmConsultaEstoque.DBGrid2TitleClick(Column: TColumn);
begin
  Qr_Estoque.IndexFieldNames := Column.FieldName;
end;

procedure TFrmConsultaEstoque.btnExcelClick(Sender: TObject);
var
  Arquivo: TextFile;
begin
  Screen.Cursor := crSQLWait;

  try
    if dlgSaveArquivo.Execute then
    begin
      dlgSaveArquivo.FileName := 'EXTRATO_ESTOQUE_' + ReplaceStr(edtDataInicial.Text,'/','') + '_' + ReplaceStr(edtDataFinal.Text,'/','') + '.csv';
      AssignFile(Arquivo, dlgSaveArquivo.FileName);
      Rewrite(Arquivo);

      Write(Arquivo, 'Data;');
      Write(Arquivo, 'Código;');
      Write(Arquivo, 'Descrição do Produto;');
      Write(Arquivo, 'Saldo Inicial;');
      Write(Arquivo, 'Caixas Produzidas;');
      Write(Arquivo, 'Caixas Vendidas;');
      Write(Arquivo, 'Caixas Expedidas;');
      Write(Arquivo, 'Caixas Vend. Bonificação;');
      Write(Arquivo, 'Caixas Exp. Bonificação;');
      Write(Arquivo, 'Caixas Devolvidas;');
      Write(Arquivo, 'Ajuste;');
      WriteLn(Arquivo, 'Saldo Final;');

      Qr_Estoque.First;

      while not Qr_Estoque.Eof do
      begin
        Write(Arquivo, Qr_EstoqueDATA.AsString + ';');
        Write(Arquivo, Qr_EstoqueID_PRODMATEEMBA.AsString + ';');
        Write(Arquivo, Qr_EstoqueNM_PRODMATEEMBA.AsString + ';');
        Write(Arquivo, Qr_EstoqueESTOQUE_ANT_CX.AsString + ';');
        Write(Arquivo, Qr_EstoqueCX_PRODUZIDO.AsString + ';');
        Write(Arquivo, Qr_EstoqueCX_VENDIDO.AsString + ';');
        Write(Arquivo, Qr_EstoqueCX_EXPEDIDO.AsString + ';');
        Write(Arquivo, Qr_EstoqueCX_VENDIDO_BON.AsString + ';');
        Write(Arquivo, Qr_EstoqueCX_EXPEDIDO_BON.AsString + ';');
        Write(Arquivo, Qr_EstoqueCX_DEVOLUCAO.AsString + ';');
        Write(Arquivo, Qr_EstoqueQTD_AJUSTE.AsString + ';');
        WriteLn(Arquivo, Qr_EstoqueKG_ESTOQUE_ATUAL.AsString + ';');

        Qr_Estoque.Next;

      end;

      CloseFile(Arquivo);
      Application.MessageBox(PChar('Arquivo gerado com sucesso em ' + dlgSaveArquivo.FileName), PChar(FrmConsultaEstoque.Caption), MB_OK + MB_ICONINFORMATION);

    end;
  except
    Application.MessageBox('Erro ao gerar o arquivo. Verifique se o local de destino existe e está acessível.', PChar(FrmConsultaEstoque.Caption), MB_OK + MB_ICONINFORMATION);
  end;

  Screen.Cursor := crDefault;

end;

end.


