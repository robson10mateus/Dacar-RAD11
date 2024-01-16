unit UFrmLiberacarga;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, {$IFNDEF VER130} Variants {$ENDIF}, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Winapi.Windows;

type
  TFrmLiberacarga = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    grdCargas: TDBGrid;
    DSFORM: TOraDataSource;
    qryTemp: TOraQuery;
    QryPedItem: TOraQuery;
    QrPedCarga: TOraQuery;
    Panel2: TPanel;
    SB_ATIVA: TSpeedButton;
    SB_ALTERA: TSpeedButton;
    SB_ITENS: TSpeedButton;
    SB_BLOQUEAR: TSpeedButton;
    SB_DESBLOQUEAR: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Sb_Sair: TSpeedButton;
    EDt: TEdit;
    BPesqDt: TBitBtn;
    Label2: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    QryForm: TSmartQuery;
    QryFormID_CARGEXPE: TFloatField;
    QryFormGN_PLACVEICTRAN: TStringField;
    QryFormNM_FORNECEDOR: TStringField;
    QryFormNM_REDUFORN: TStringField;
    QryFormNR_ORDEENTRCARGEXPE: TFloatField;
    QryFormFL_STATCARGEXPE: TStringField;
    QryFormDT_DESBCARGEXPE: TDateTimeField;
    QryFormFL_IMPRCARGEXPE: TStringField;
    QryFormDT_CARGEXPE: TDateTimeField;
    QryFormID_USR_VOLT_AB: TIntegerField;
    QryFormNOME_USUARIO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_ATIVAClick(Sender: TObject);
    procedure SB_DESBLOQUEARClick(Sender: TObject);
    procedure SB_BLOQUEARClick(Sender: TObject);
    procedure SB_ALTERAClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SB_ITENSClick(Sender: TObject);
    procedure BPesqDtClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grdCargasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CRTemp_QryFormAfterOpen(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CRTemp_QryFormBeforeOpen(DataSet: TDataSet);
    procedure grdCargasTitleClick(Column: TColumn);

  private
    { Private declarations }
     OrdemColuna, Ordem : string;
  public
    VFINAL,Vdtstr:STRING;
  end;

var
  FrmLiberacarga: TFrmLiberacarga;

implementation

uses Principal, UFrmSeldata, GLOBAL, UFrmItemCarLibCar, UFrmRelSaidaCarga,
  UFrmRelSaidaCargaItens, uDadosCadastraisFilial;

{$R *.dfm}

procedure TFrmLiberacarga.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);
  EDt.Text := DateToStr(Date());
  SB_ATIVAClick(Self);
end;

procedure TFrmLiberacarga.Sb_SairClick(Sender: TObject);
begin

  Close;
end;

procedure TFrmLiberacarga.SB_ATIVAClick(Sender: TObject);
begin
  try
    qryForm.Close;
    qryForm.ParamByName('DtCarg').AsDate := StrToDate(Edt.Text);
    qryForm.Open;

    SB_ALTERA.Enabled := True;
    SB_ITENS.Enabled := True;
    SB_BLOQUEAR.Enabled := True;
    SB_DESBLOQUEAR.Enabled := True;

  except
    MessageDlg('Data inválida !', mtWarning, [mbOk], 0);
  end;

end;

procedure TFrmLiberacarga.SB_DESBLOQUEARClick(Sender: TObject);
var
  li_Loop: Integer;
begin
  If grdCargas.SelectedRows.Count = 0 then
  begin
    MessageDlg('Selecione uma carga !', mtWarning, [mbOk], 0);
    Exit;
  end;

  // Pedimos confirmação
  if MessageDlg('Confirma desbloqueio da(s) carga(s) selecionadas?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  begin
    Exit;
  end;

  //Verifica a Data do Sistema
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Text := ' Select sysdate  from  dual ';
  qryTemp.Open;
  if not(qryTemp.IsEmpty) then
    begin
     ld_DataHora := qryTemp.FieldByName('SYSDATE').AsDateTime;
    end;
  qryTemp.close;

  // Para todos as cargas selecionadas
  for li_Loop := 0 to grdCargas.SelectedRows.Count - 1 do
  begin

    // Posicionamos no registro a ser Desbloqueado
    qryForm.GotoBookmark(grdCargas.SelectedRows.Items[li_Loop]);

    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.text:= ' SELECT id_pedivend  '+
        ' FROM   pedido_venda                '+
        ' WHERE  id_cargexpe = :VCarga          '+
        '  AND   dt_entrpedivend <> :DtEntrCarga  ';
    QryTemp.ParamByName('VCarga').AsFloat := QryFormID_CARGEXPE.AsFloat;
    QryTemp.ParamByName('DtEntrCarga').AsDate := QryFormDT_CARGEXPE.Value;
    QryTemp.Open;

    // Verificamos se existe alguma data de entrega diferente da carga
    If (QryTemp.RecordCount>0)  then
    begin
      Screen.Cursor := crDefault;
      MessageDlg('Data de Entrega de Pedidos Incorreta!' + #13 +
                 'Por favor, verifique antes de desbloquear.', mtWarning, [mbOk], 0);
      Exit;
    end;

    //Verificar se existem pedidos sem itens
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.text:= ' SELECT id_pedivend  '+
        ' FROM   pedido_venda                '+
        ' WHERE  id_cargexpe = :VCarga       ';
    QryTemp.ParamByName('VCarga').AsFloat := QryFormID_CARGEXPE.AsFloat;
    QryTemp.Open;
    qryTemp.First;
    while not qryTemp.Eof do
    begin
      with QryPedItem do
      begin
        Close;
        ParamByName('ID_PEDIVEND').AsFloat := QryTemp.FieldByName('ID_PEDIVEND').AsFloat;
        Open;
        if IsEmpty then
        begin
          Screen.Cursor := crDefault;
          MessageDlg('O Pedido: ' + FloatToStr(QryTemp.FieldByName('ID_PEDIVEND').AsFloat) + ' está sem ítens(produtos) lançados; ' + #10 + #13 +
                     'Por favor, verifique antes de desbloquear.', mtWarning, [mbOk], 0);
          Exit;
        end;
      end;
      qryTemp.Next;
    end;

    // Se o status da carga atual for 'BQ'
    If qryForm.FieldByName('FL_STATCARGEXPE').AsString = 'BQ' then
    begin
      // Bloqueamos a carga
      qryForm.Edit;
      qryForm['FL_STATCARGEXPE'] := 'AB';
      qryForm['DT_DESBCARGEXPE'] := ld_DataHora;
      qryForm['ID_USR_VOLT_AB'] := gi_IdenUsua;
      qryForm.Post;
    end
    else
     MessageDlg('A Carga so pode ser Desbloqueada se o Status estiver (BQ)!', mtWarning, [mbOk], 0);

  end;
  QryTemp.Close;
end;

procedure TFrmLiberacarga.SB_BLOQUEARClick(Sender: TObject);
var
  li_Loop: Integer;
begin
  if grdCargas.SelectedRows.Count = 0 then
  begin
    MessageDlg('Selecione uma carga !', mtWarning, [mbOk], 0);

    Exit;
  end;

  // Pedimos confirmação
  if MessageDlg('Confirma bloqueio da(s) carga(s) selecionadas ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  begin
    Exit;
  end;

  // Para todos as cargas selecionadas
  For li_Loop := 0 to grdCargas.SelectedRows.Count - 1 do
  begin

    // Posicionamos no registro a ser Bloqueado
    qryForm.GotoBookmark(grdCargas.SelectedRows.Items[li_Loop]);

    //Só permite Bloqueio pelo usuário que Desbloqueou
    if (qryForm.FieldByName('ID_USR_VOLT_AB').AsInteger <> gi_IdenUsua)  then
    begin
      MessageDlg('A Carga: '+qryForm.FieldByName('ID_CARGEXPE').AsString+' so pode ser BLOQUEADA pelo usuário que à DESBLOQUEOU. Operação Cancelada!', mtWarning, [mbOk], 0);
      Exit;
    end;

    // Se o status da carga atual for 'AB'
    if qryForm.FieldByName('FL_STATCARGEXPE').AsString = 'AB' then
    begin
      // Bloqueamos a carga
      qryForm.Edit;
      qryForm['FL_STATCARGEXPE'] := 'BQ';
      qryForm.Post;
    end
    ELSE
     MessageDlg('A Carga so pode ser Bloqueada se o Status estiver (AB)!', mtWarning, [mbOk], 0);

  end;
end;

procedure TFrmLiberacarga.SB_ALTERAClick(Sender: TObject);
begin
  // Verificamos se existe alguma carga selecionada
  if grdCargas.SelectedRows.Count = 0 then
  begin
    MessageDlg('Selecione uma carga !', mtWarning, [mbOk], 0);

    Exit;
  end;

  // Verificamos se existe alguma carga selecionada
  if grdCargas.SelectedRows.Count > 1 then
  begin
    // Mensagem
    MessageDlg('Selecione apenas uma carga !', mtWarning, [mbOk], 0);

    Exit;
  end;

  // Pedimos confirmação
  if MessageDlg('Confirma alteração do status da carga selecionada para "BQ" ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    // Se o Status for 'MT'
    if qryForm.FieldByName('FL_STATCARGEXPE').AsString = 'MT' then
    begin
      // Bloqueamos a carga
      qryForm.Edit;
      qryForm['FL_STATCARGEXPE'] := 'BQ';
      qryForm.Post;
    end
    ELSE
      MessageDlg('A Status so pode ser alterado para (BQ) se estiver (MT)!', mtWarning, [mbOk], 0);

  end;

end;

procedure TFrmLiberacarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.VEN009.Enabled:= True;
  Action:=caFree;
end;


procedure TFrmLiberacarga.SB_ITENSClick(Sender: TObject);
begin
  If qryForm.IsEmpty then
  begin
    MessageDlg('Esta carga não possui pedidos !', mtWarning, [mbOk], 0);
    Exit;
  end;

  FrmItemCarLibCar := TFrmItemCarLibCar.Create(Self);
  FrmItemCarLibCar.Caption := FrmItemCarLibCar.Caption + qryForm.FieldByName('ID_CARGEXPE').AsString;
  FrmItemCarLibCar.qryForm.Close;
  FrmItemCarLibCar.qryForm.ParamByName('pi_NumeCarg').AsInteger := qryForm.FieldByName('ID_CARGEXPE').AsInteger;
  FrmItemCarLibCar.qryForm.Open;
  FrmItemCarLibCar.ShowModal;

end;

procedure TFrmLiberacarga.BPesqDtClick(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  Edt.text:= Vdtstr;
end;

procedure TFrmLiberacarga.FormDestroy(Sender: TObject);
begin
  FrmLiberacarga:=Nil;
end;

procedure TFrmLiberacarga.grdCargasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  IF QryFormFL_STATCARGEXPE.AsString = 'AB' then
    grdCargas.Canvas.Font.Color := clgreen;

  grdCargas.DefaultDrawColumnCell(rect,DataCol,column,state);

end;

procedure TFrmLiberacarga.CRTemp_QryFormAfterOpen(DataSet: TDataSet);
var
  li_Orde: Integer;
begin

  // Criamos uma ordenação inicial
  try
    qryForm.DisableControls;

    qryForm.First;

    li_Orde := 0;

    // Varremos o Result Set da qryForm
    while not qryForm.Eof do
    begin
      // Atribuímos uma ordenação
      qryForm.edit;
      qryForm['NR_ORDEENTRCARGEXPE'] := li_Orde + 1;
      qryForm.Post;

      // Atualizamos li_Ordem
      li_Orde := li_Orde + 1;

      qryForm.Next;
    end;
  finally
    //Movemos para o primeiro registro
    qryForm.First;

    qryForm.EnableControls;
  end;

end;

procedure TFrmLiberacarga.SpeedButton1Click(Sender: TObject);
var
  li_Loop: Integer;
begin
  If grdCargas.SelectedRows.Count = 0 then
  begin
    Application.MessageBox('É necessário selecionar uma carga para impressão.', PChar(PChar(FrmLiberacarga)), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  //Para todos as cargas selecionadas
  For li_Loop := 0 to grdCargas.SelectedRows.Count - 1 do
  begin
    qryForm.GotoBookmark(grdCargas.SelectedRows.Items[li_Loop]);

    //Se o status da carga atual for 'MT'
    If qryForm.FieldByName('FL_STATCARGEXPE').AsString = 'MT' then
    begin
      Application.MessageBox('Para impressão, a Carga selecionada não pode estar com Status(MT).', PChar(FrmLiberacarga), MB_OK + MB_ICONINFORMATION);
      Continue;
    end;

    try
      FrmRelSaidaCarga:=TFrmRelSaidaCarga.Create(Self);
      FrmRelSaidaCarga.RLReport1.PrintDialog := True;
      FrmRelSaidaCarga.QrSAIDACARGA.Close;
      FrmRelSaidaCarga.QrSAIDACARGA.ParamByName('VCARGA').AsFloat := qryForm.FieldByName('ID_CARGEXPE').AsInteger;
      FrmRelSaidaCarga.QrSAIDACARGA.Open;

      //Marcamos o Status de Impressa a Carga
      qryForm.Edit;
      qryForm['FL_IMPRCARGEXPE']:= 'S';
      qryForm.Post;

//      FrmRelSaidaCarga.RLPrintDialogSetup1.Copies := 1;
      FrmRelSaidaCarga.RLReport1.Print;
    except;
      FrmRelSaidaCarga.Free;
      Application.MessageBox(PChar('Não foi possível imprimir a Carga ' + QryFormID_CARGEXPE.AsString + '.'), PChar(FrmLiberacarga), MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
  end;
end;

procedure TFrmLiberacarga.SpeedButton2Click(Sender: TObject);
var
  li_Loop: Integer;
begin
  If grdCargas.SelectedRows.Count = 0 then
  begin
    Application.MessageBox('É necessário selecionar uma carga para impressão.', PChar(FrmLiberacarga), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  // Para todos as cargas selecionadas
  For li_Loop := 0 to grdCargas.SelectedRows.Count - 1 do
  begin
    // Posicionamos no registro a ser Bloqueado
    qryForm.GotoBookmark(grdCargas.SelectedRows.Items[li_Loop]);
    // Se o status da carga atual for 'MT'
    If qryForm.FieldByName('FL_STATCARGEXPE').AsString = 'MT' then
    begin
      Application.MessageBox('Para impressão, a Carga selecionada não pode estar com Status(MT).', PChar(FrmLiberacarga), MB_OK + MB_ICONINFORMATION);
      Continue;
    end;

    try
      FrmRelSaidaCarga:=TFrmRelSaidaCarga.Create(Self);
      FrmRelSaidaCarga.QrSAIDACARGA.Close;
      FrmRelSaidaCarga.QrSAIDACARGA.ParamByName('VCARGA').AsFloat := qryForm.FieldByName('ID_CARGEXPE').AsInteger;
      FrmRelSaidaCarga.QrSAIDACARGA.Open;
      qryForm.Edit;
      qryForm['FL_IMPRCARGEXPE']:= 'S';
      qryForm.Post;
      FrmRelSaidaCarga.RLReport1.Preview(nil);
    except;
      FrmRelSaidaCarga.Free;
      Application.MessageBox('Não foi possível imprimir a Carga selecionada.', PChar(FrmLiberacarga), MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
  end;

end;

procedure TFrmLiberacarga.CRTemp_QryFormBeforeOpen(DataSet: TDataSet);
begin
  QryForm.ParamByName('FILIAL').Value := gi_Filial;
end;

procedure TFrmLiberacarga.grdCargasTitleClick(Column: TColumn);
begin
  qryForm.IndexFieldNames := Column.FieldName;
end;

end.



