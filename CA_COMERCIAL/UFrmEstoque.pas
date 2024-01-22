unit UFrmEstoque;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DB, MemDS, DBAccess, Ora,
  Grids, DBGrids, ComCtrls, DBCtrls, DBClient, Winapi.Windows, OraSmart;

type
  TFrmEstoque = class(TForm)
    Pfundo: TPanel;
    btnAtualizar: TSpeedButton;
    btnConfirma: TSpeedButton;
    btnCancela: TSpeedButton;
    btnSair: TSpeedButton;
    edt_Data: TMaskEdit;
    btnBuscaData: TBitBtn;
    lbData: TLabel;
    btnEditar: TSpeedButton;
    PageControl1: TPageControl;
    tabEstoque: TTabSheet;
    DBGrid1: TDBGrid;
    dsEstoqueInicial: TOraDataSource;
    OraSQL1: TOraSQL;
    QryJob: TOraQuery;
    Panel1: TPanel;
    btnJob: TButton;
    LbJob: TLabel;
    QryJobJOB_NAME: TStringField;
    QryJobSTATE: TStringField;
    QryAjuste: TOraQuery;
    QryAjusteMAXID_AJUSTE: TFloatField;
    QryAcesso: TOraQuery;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    btnImportaXLS: TSpeedButton;
    CdsTemp: TClientDataSet;
    DsTemp: TDataSource;
    CdsTempID_PRODMATEEMBA: TStringField;
    CdsTempESTOQUE_ANT_CX: TStringField;
    DsAtualiza: TOraDataSource;
    QryAtualiza: TOraQuery;
    QryEstoqueInicial: TSmartQuery;
    QryEstoqueInicialID_PRODMATEEMBA: TStringField;
    QryEstoqueInicialNM_PRODMATEEMBA: TStringField;
    QryEstoqueInicialDATA: TDateTimeField;
    QryEstoqueInicialTIPO: TStringField;
    QryEstoqueInicialESTOQUE_ANT: TFloatField;
    QryEstoqueInicialESTOQUE_ANT_CX: TFloatField;
    QryLog: TSmartQuery;
    QryLogEMPRESA: TStringField;
    QryLogFILIAL: TFloatField;
    QryLogDATA: TDateTimeField;
    QryLogID_PRODMATEEMBA: TStringField;
    QryLogESTOQUE_ANT_CX_NEW: TFloatField;
    QryLogESTOQUE_ANT_NEW: TFloatField;
    QryLogESTOQUE_ANT_CX_OLD: TFloatField;
    QryLogESTOQUE_ANT_OLD: TFloatField;
    QryLogUSUARIO: TFloatField;
    QryLogID_AJUSTE: TFloatField;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBuscaDataClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnJobClick(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure btnImportaXLSClick(Sender: TObject);
    procedure QryEstoqueInicialAfterUpdateExecute(Sender: TDataSet;
      StatementTypes: TStatementTypes; Params: TDAParams);
  private
    { Private declarations }
    Function  Atual_ToolBar(BtOrdem:Integer):string;
  public
    { Public declarations }
    Dt_Estoque :TDateTime;
    StatusJob  :Boolean;
  end;

var
  FrmEstoque: TFrmEstoque;

implementation

uses Principal, UFrmSeldata, Global, UFrmImportaEstoqueXLS;

{$R *.dfm}

procedure TFrmEstoque.btnSairClick(Sender: TObject);
begin
  if StatusJob = False then
  begin
    QryAcesso.Close;
    QryAcesso.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
    QryAcesso.ParamByName('VRECUR').AsInteger := 88;
    QryAcesso.Open;

    if (QryAcesso.RecordCount > 0) then
      Close
    else
    begin
      Application.MessageBox('Ative a Job antes de sair.', PChar(FrmEstoque.Caption),MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
  end
  else
  begin
    Close;
  end;
end;

procedure TFrmEstoque.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);

  QryAcesso.Close;
  QryAcesso.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QryAcesso.ParamByName('VRECUR').AsInteger := 4;
  QryAcesso.Open;

  if (QryAcesso.RecordCount > 0) then
    Atual_ToolBar(1);

  QryAcesso.Close;
  QryAcesso.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QryAcesso.ParamByName('VRECUR').AsInteger := 88;
  QryAcesso.Open;

  if (QryAcesso.RecordCount > 0) then
    Atual_ToolBar(5);

  QryAcesso.Close;
  QryAcesso.ParamByName('VUSUARIO').AsInteger := gi_IdenUsua;
  QryAcesso.ParamByName('VRECUR').AsInteger := 5;
  QryAcesso.Open;

  if (QryAcesso.RecordCount > 0) then
    Atual_ToolBar(2);

end;

procedure TFrmEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPrincipal.VEN074.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmEstoque.btnBuscaDataClick(Sender: TObject);
var
  Data :string;
begin
  Data := DateToStr(Dt_Estoque);
  Cria_FrmSelData(Data);

  edt_Data.Text := Data;
end;

procedure TFrmEstoque.FormShow(Sender: TObject);
begin
  Dt_Estoque := Date();
  QryEstoqueInicial.ParamByName('DATA').AsString := DateToStr(Dt_Estoque);

  QryEstoqueInicial.Open;
  QryJob.Open;

  if (QryJob.IsEmpty) then
  begin
    LbJob.Caption := 'Job Desativada.';
    LbJob.Font.Color := clRed;
    StatusJob := False;
  end
  else
  begin
    LbJob.Caption := 'Job Ativa.';
    LbJob.Font.Color := clgreen;
    StatusJob := True;
  end;

  DBGrid1.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgAlwaysShowSelection,dgMultiSelect];
  edt_Data.Text := DateToStr(Dt_Estoque);

  tabEstoque.Show;
  QryJob.Close;

  QryAtualiza.Open;
  QryAtualiza.First;
end;

procedure TFrmEstoque.QryEstoqueInicialAfterUpdateExecute(Sender: TDataSet;
  StatementTypes: TStatementTypes; Params: TDAParams);
begin
  QryAjuste.Open;

  QryLog.ParamByName('DATA').Value := edt_Data.Text;
  QryLog.Open;

  QryLog.Insert;

  QryLogEMPRESA.Value := gs_Empresa;
  QryLogFILIAL.Value := gi_Filial;
  QryLogUSUARIO.Value := gi_IdenUsua;

  if QryLog.RecordCount > 0 then
    QryLogID_AJUSTE.Value := QryAjusteMAXID_AJUSTE.Value
  else
    QryLogID_AJUSTE.Value := QryAjusteMAXID_AJUSTE.Value + 1;

  QryLogDATA.Value := QryEstoqueInicialDATA.Value;
  QryLogID_PRODMATEEMBA.Value := QryEstoqueInicialID_PRODMATEEMBA.Value;

  QryLogESTOQUE_ANT_CX_OLD.Value := QryEstoqueInicialESTOQUE_ANT_CX.OldValue;
  QryLogESTOQUE_ANT_OLD.Value    := QryEstoqueInicialESTOQUE_ANT.OldValue;

  QryLogESTOQUE_ANT_CX_NEW.Value :=  QryEstoqueInicialESTOQUE_ANT_CX.NewValue;
  QryLogESTOQUE_ANT_NEW.Value    := QryEstoqueInicialESTOQUE_ANT.NewValue;

  QryLog.Post;
  QryLog.ApplyUpdates;
  QryLog.CommitUpdates;

  QryLog.Close;
  QryAjuste.Close;

end;

procedure TFrmEstoque.btnAtualizarClick(Sender: TObject);
begin
  QryEstoqueInicial.ParamByName('DATA').AsString := edt_Data.Text;
  QryEstoqueInicial.Refresh;
end;

procedure TFrmEstoque.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  with DBGrid1 do
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

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmEstoque.btnEditarClick(Sender: TObject);
begin
  if StatusJob then
  begin
    Application.MessageBox('Desative a Job para editar.', PChar(FrmEstoque.Caption),MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  QryEstoqueInicial.Edit;

  DBGrid1.Options := [dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgAlwaysShowSelection,dgMultiSelect];
  DBGrid1.OnColEnter := DBGrid1ColEnter;

  Atual_ToolBar(3);
end;

procedure TFrmEstoque.btnCancelaClick(Sender: TObject);
begin
  QryEstoqueInicial.CancelUpdates;
  DBGrid1.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgAlwaysShowSelection,dgMultiSelect];
  DBGrid1.OnColEnter := nil;

  Atual_ToolBar(4);
end;

procedure TFrmEstoque.btnConfirmaClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;

  if StatusJob then
  begin
    Application.MessageBox('Desative a Job para atualizar.', PChar(FrmEstoque.Caption),MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  QryEstoqueInicial.ApplyUpdates;
  QryEstoqueInicial.CommitUpdates;

  try
    OraSQL1.SQL.Clear;
    OraSQL1.SQL.Add('update POSICAO_ESTOQUE PE ');
    OraSQL1.SQL.Add('set PE.ESTOQUE_ANT = PE.ESTOQUE_ANT_CX * (select ME.QN_CAPAMEDIMATEEMBA from MATERIAL_EMBALAGEM ME where ME.ID_MATERIAL = PE.ID_MATERIAL  and ME.ID_PRODMATEEMBA = PE.ID_PRODMATEEMBA) ');
    OraSQL1.SQL.Add('WHERE PE.TIPO = ''F'' AND  DATA in to_date(''' + edt_Data.Text + ''',''' + 'DD/MM/YYYY' + ''') ');
    OraSQL1.Execute;

    OraSQL1.SQL.Clear;
    OraSQL1.SQL.Add('UPDATE POSICAO_ESTOQUE PE ');
    OraSQL1.SQL.Add('SET PE.ESTOQUE_ANT_CX = (SELECT PEF.ESTOQUE_ANT_CX FROM POSICAO_ESTOQUE PEF WHERE PEF.DATA in to_date(''' + edt_Data.Text + ''',''' + 'DD/MM/YYYY' + ''') AND PEF.TIPO = ''F'' AND PEF.ID_PRODMATEEMBA = PE.ID_PRODMATEEMBA) ');
    OraSQL1.SQL.Add('WHERE PE.TIPO = ''M'' AND PE.DATA in to_date(''' + edt_Data.Text + ''',''' + 'DD/MM/YYYY' + ''')');
    OraSQL1.Execute;

    OraSQL1.SQL.Clear;
    OraSQL1.SQL.Add('update POSICAO_ESTOQUE PE ');
    OraSQL1.SQL.Add('set PE.ESTOQUE_ANT = (SELECT PEF.ESTOQUE_ANT FROM POSICAO_ESTOQUE PEF WHERE PEF.DATA in to_date(''' + edt_Data.Text + ''',''' + 'DD/MM/YYYY' + ''') AND PEF.TIPO = ''F'' AND PEF.ID_PRODMATEEMBA = PE.ID_PRODMATEEMBA) ');
    OraSQL1.SQL.Add('WHERE PE.TIPO = ''M'' AND PE.DATA in to_date(''' + edt_Data.Text + ''',''' + 'DD/MM/YYYY' + ''')');
    OraSQL1.Execute;
  except
    Application.MessageBox('Estoque atualizado.', PChar(FrmEstoque.Caption), MB_OK + MB_ICONINFORMATION);
  end;

  btnJobClick(Self);

  QryEstoqueInicial.ParamByName('DATA').AsString := edt_Data.Text;
  QryEstoqueInicial.Refresh;

  QryAtualiza.Refresh;

  Application.MessageBox('Estoque inicial atualizado.', PChar(FrmEstoque.Caption), MB_OK + MB_ICONINFORMATION);

  DBGrid1.OnColEnter := nil;

  Atual_ToolBar(4);
  Screen.Cursor := crDefault;
end;

procedure TFrmEstoque.btnJobClick(Sender: TObject);
var
  erro :Boolean;
begin
  Screen.Cursor := crSQLWait;
  QryJob.Open;

  if (QryJob.IsEmpty) then
  begin
    try
      try
        OraSQL1.SQL.Clear;
        OraSQL1.SQL.Add('BEGIN DBMS_SCHEDULER.ENABLE(''ATUALIZA_ESTOQUE''); END;');
        OraSQL1.Execute;

        erro := False;
        StatusJob := True;
      except
        erro := True;
      end;
    finally
      if erro then
      begin
        Application.MessageBox('Erro ao ativar a Job.', PChar(FrmEstoque.Caption),MB_OK + MB_ICONINFORMATION);
      end
      else
      begin
        Application.MessageBox('Job Ativa.', PChar(FrmEstoque.Caption),MB_OK + MB_ICONINFORMATION);

        LbJob.Caption := 'Job Ativa';
        LbJob.Font.Color := clgreen;
      end;
    end;
  end
  else
  begin
    try
      try
        OraSQL1.SQL.Clear;
        OraSQL1.SQL.Add('BEGIN DBMS_SCHEDULER.DISABLE(''ATUALIZA_ESTOQUE'', FORCE => TRUE); END;');
        OraSQL1.Execute;

        OraSQL1.SQL.Clear;
        OraSQL1.SQL.Add('BEGIN DBMS_SCHEDULER.stop_job (JOB_NAME => ''ATUALIZA_ESTOQUE''); END;');
        OraSQL1.Execute;

        erro := False;
        StatusJob := False;
      except
        erro := True;
      end;
    finally
      if erro then
      begin
        Application.MessageBox('Erro ao desativar a Job.', PChar(FrmEstoque.Caption),MB_OK + MB_ICONINFORMATION);
      end
      else
      begin
        Application.MessageBox('Job Desativada.', PChar(FrmEstoque.Caption),MB_OK + MB_ICONINFORMATION);

        LbJob.Caption := 'Job Desativada';
        LbJob.Font.Color := clRed;
      end;
    end;
  end;

  Screen.Cursor := crDefault;
  QryJob.Close;
end;


function TFrmEstoque.Atual_ToolBar(BtOrdem: Integer): string;
begin
  CASE BtOrdem of
    1:begin
      btnAtualizar.Enabled := True;
      btnEditar.Enabled := False;
      btnConfirma.Enabled := False;
      btnCancela.Enabled := False;
      btnJob.Enabled := False;
    end;

    2:begin
      btnAtualizar.Enabled := True;
      btnEditar.Enabled := True;
      btnConfirma.Enabled := False;
      btnCancela.Enabled := False;
      btnJob.Enabled := True;
    end;

    3:begin
      btnAtualizar.Enabled := True;
      btnEditar.Enabled := False;
      btnConfirma.Enabled := True;
      btnCancela.Enabled := True;
      btnJob.Enabled := True;
    end;

    4:begin
      btnAtualizar.Enabled := True;
      btnEditar.Enabled := True;
      btnConfirma.Enabled := False;
      btnCancela.Enabled := False;
      btnJob.Enabled := True;
    end;

    5:begin
      btnAtualizar.Enabled := True;
      btnEditar.Enabled := False;
      btnConfirma.Enabled := False;
      btnCancela.Enabled := False;
      btnJob.Enabled := True;
    end;
  end;
end;

procedure TFrmEstoque.DBGrid1ColEnter(Sender: TObject);
begin
  if DBGrid1.SelectedIndex=2 then
  begin
    DBGrid1.Options := DBGrid1.Options + [dgEditing]
  end
  else
  begin
    DBGrid1.Options := DBGrid1.Options - [dgEditing];
    showMessage('Campo não permitido para edição');
  end;
end;

procedure TFrmEstoque.btnImportaXLSClick(Sender: TObject);
begin
//  btnEditarClick(Self);

  if StatusJob then
  begin
    Application.MessageBox('Desative a Job para editar.', PChar(FrmEstoque.Caption),MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  QryEstoqueInicial.Edit;

  if StatusJob = False then
  begin

    CdsTemp.EmptyDataSet;
    FrmImportaEstoqueXLS:=TFrmImportaEstoqueXLS.Create(Self);
    FrmImportaEstoqueXLS.ShowModal;

    if CdsTemp.RecordCount > 0 then
    begin
      CdsTemp.First;
      QryEstoqueInicial.First;

      QryAjuste.Open;

      while not QryEstoqueInicial.Eof do
      begin
        if CdsTempID_PRODMATEEMBA.Value = QryEstoqueInicialID_PRODMATEEMBA.Value then
        begin
          QryEstoqueInicial.Edit;

          QryEstoqueInicialESTOQUE_ANT_CX.AsString := CdsTempESTOQUE_ANT_CX.Value;

          QryEstoqueInicial.Post;

          CdsTemp.Next;
        end;

        QryEstoqueInicial.Next;
      end;

      QryEstoqueInicial.First;
      CdsTemp.First;

      btnConfirmaClick(Self);
    end
    else
      btnCancelaClick(Self);

  end;
end;

end.


