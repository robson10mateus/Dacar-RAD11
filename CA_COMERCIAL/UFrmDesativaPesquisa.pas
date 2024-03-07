unit UFrmDesativaPesquisa;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DB, MemDS, DBAccess, Ora, Grids, DBGrids, Buttons,
  ShellApi, ExtCtrls;

type
  TFrmDesativaPesquisa = class(TForm)
    DtsPesquisa: TDataSource;
    OraSQL: TOraSQL;
    QryPesquisa: TOraQuery;
    QryPesquisaEMPRESA: TStringField;
    QryPesquisaFILIAL: TIntegerField;
    QryPesquisaNM_TIPOPEDIVEND: TStringField;
    QryPesquisaFL_CONSULTA_IE: TStringField;
    LogSintegra: TOraQuery;
    qryTemp: TOraQuery;
    Panel1: TPanel;
    BtFechar: TBitBtn;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    btnAnexarUm: TBitBtn;
    btnAnexarTodos: TBitBtn;
    btnNEnviarEste: TBitBtn;
    btnNEnviarTodos: TBitBtn;
    Panel5: TPanel;
    lbxAnexo: TListBox;
    Panel6: TPanel;
    BtDesativaPesquisa: TBitBtn;
    BtAtivaPesquisa: TBitBtn;
    Label3: TLabel;
    Label2: TLabel;
    edtCodigo: TEdit;
    LogSintegraEMPRESA: TStringField;
    LogSintegraFILIAL: TIntegerField;
    LogSintegraID_LSTG: TFloatField;
    LogSintegraID_USUARIO: TFloatField;
    LogSintegraDT_ALTERACAO: TDateTimeField;
    LogSintegraHR_ALTERACAO: TStringField;
    LogSintegraFL_ACAO: TStringField;
    LogSintegraCD_TIPO: TStringField;
    procedure Ativa_pesquisa(Sender: TObject);
    procedure Desativa_Pesquisa(Sender: TObject);
    procedure Executa_OraSql(OSql: String);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Salva_log_usuario(Tipo : Integer);
    function conv_hora(OTime: TDatetime; Tipo: integer):String;
    procedure Fecha_janela(Sender: TObject);
    procedure btnAnexarUmClick(Sender: TObject);
    procedure btnAnexarTodosClick(Sender: TObject);
    procedure btnNEnviarEsteClick(Sender: TObject);
    procedure btnNEnviarTodosClick(Sender: TObject);
    procedure edtCodigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Clicou_mouse_codigos(Column: TColumn);
    procedure Pressionou_enter_codigos(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDesativaPesquisa: TFrmDesativaPesquisa;

implementation

Uses Principal;

{$R *.dfm}

function TFrmDesativaPesquisa.conv_hora(OTime: TDatetime; Tipo: integer):String;
var
  Present: TDatetime;
  THora, hh, mm : String;
  Hour, Min, Sec, MSec : Word;
  Dt : Integer;
begin
  Try
    Present := OTime;
    DecodeTime(Present, Hour, Min, Sec, MSec);
    If Tipo = 1 then THora := InttoStr(Hour) + InttoStr(Min) + InttoStr(Sec);
    If Tipo = 2 then
    begin
      If Hour < 10 then hh := '0' + InttoStr(Hour); If Hour >= 10 then hh := InttoStr(Hour);
      If Min < 10 then mm := '0' + InttoStr(Min); If Min >= 10 then mm := InttoStr(Min);
      THora := hh + ':' + mm;
    end;
    If Tipo = 3 then
    begin

    end;
    Result := THora;
  except
    Result := '00:00';
  end;
end;

//Executa um sql no orasql
procedure TFrmDesativaPesquisa.Executa_OraSql(OSql: String);
begin
  OraSQL.SQL.Clear;
  OraSQL.SQL.Add(OSql);
  //OraSQL.SQL.SaveToFile('C:\temp\sqlerrado.txt');
  OraSQL.Execute;
  OraSQL.SQL.Clear;
  OraSQL.SQL.Add('COMMIT');
  OraSQL.Execute;
end;

procedure TFrmDesativaPesquisa.Ativa_pesquisa(Sender: TObject);
var
  Ite, I : Integer;
begin
  //Ativar
  If lbxAnexo.items.Count = 0 then ShowMessage('Cria antes uma lista dos Códigos a serem Ativados / Desativados...');
  If lbxAnexo.items.Count > 0 then
  If MessageDlg('Confirma Ativar a Pesquisa para os itens da lista ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    //Copia os itens
    Ite := lbxAnexo.items.Count;
    For I := 0 to Ite -1 do
    begin
      Executa_OraSql('UPDATE PEDIDO_VENDA_TIPO SET FL_CONSULTA_IE = ''' + 'S' + ''' WHERE NM_TIPOPEDIVEND LIKE ''' + lbxAnexo.Items.Strings[I] + '''');
    end;

    //Salva o log do usuário
    Salva_log_usuario(1);

    //Apaga os itens
    lbxAnexo.Items.Clear;

    //Atualiza a pesquisa
    QryPesquisa.Active := False;
    QryPesquisa.Active := True;

    //Mostra pesquisa ativada
    ShowMessage('OK...PESQUISA ATIVADA PARA OS ITENS SELECIONADOS...');

  end;
end;

procedure TFrmDesativaPesquisa.Desativa_Pesquisa(Sender: TObject);
var
  Ite, I : Integer;
begin
  //Ativar
  If lbxAnexo.items.Count = 0 then ShowMessage('Cria antes uma lista dos Códigos a serem Ativados / Desativados...');
  If lbxAnexo.items.Count > 0 then
  If MessageDlg('Confirma Desativar a Pesquisa para os itens da lista ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    //Copia os itens
    Ite := lbxAnexo.items.Count;
    For I := 0 to Ite -1 do
    begin
      Executa_OraSql('UPDATE PEDIDO_VENDA_TIPO SET FL_CONSULTA_IE = ''' + 'N' + ''' WHERE NM_TIPOPEDIVEND LIKE ''' + lbxAnexo.Items.Strings[I] + '''');
    end;

    //Salva o log do usuário
    Salva_log_usuario(0);

    //Apaga os itens
    lbxAnexo.Items.Clear;

    //Atualiza a pesquisa
    QryPesquisa.Active := False;
    QryPesquisa.Active := True;

    //Mostra pesquisa ativada
    ShowMessage('OK...PESQUISA DESATIVADA PARA OS ITENS SELECIONADOS...');

  end;
end;

procedure TFrmDesativaPesquisa.Salva_log_usuario(Tipo : Integer);
var
  Ite, I : Integer;
  ld_DataHora : TDateTime;
begin

  If FrmPrincipal.Empresa <> '' then
  If FrmPrincipal.Filial  > 0 then
  If FrmPrincipal.Usuario > 0 then
  iF lbxAnexo.items.Count > 0 then
  begin

    //Retorna a data do sistema
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Text := ' select sysdate from dual ';
    qryTemp.Open;
    if not(qryTemp.IsEmpty) then
    begin
      ld_DataHora := qryTemp.FieldByName('SYSDATE').AsDateTime;
    end
    else
    begin
      ld_DataHora := Date;
    end;

    //Abre arquvos
    LogSintegra.Open;

    //Copia os itens
    Ite := lbxAnexo.items.Count;
    For I := 0 to Ite -1 do
    begin

      //Acrescenta aqui os itens da nota fiscal no movimento
      LogSintegra.Append;
      LogSintegraEMPRESA.Value      := FrmPrincipal.Empresa;
      LogSintegraFILIAL.Value       := FrmPrincipal.Filial;
      LogSintegraID_USUARIO.Value   := FrmPrincipal.Usuario;
      LogSintegraDT_ALTERACAO.Value := ld_DataHora;
      LogSintegraHR_ALTERACAO.Value := conv_hora(ld_DataHora, 2);
      If Tipo = 1 then LogSintegraFL_ACAO.Value := 'A';
      If Tipo = 0 then LogSintegraFL_ACAO.Value := 'D';
      LogSintegraCD_TIPO.Value      := lbxAnexo.Items.Strings[I];
      LogSintegra.Post;
      LogSintegra.CommitUpdates;
      LogSintegra.ApplyUpdates;

    end;

    //Abre arquvos
    LogSintegra.Close;

  end;

end;

procedure TFrmDesativaPesquisa.FormShow(Sender: TObject);
begin
  //Abre a tabela de situação da pesquisa
  QryPesquisa.Active := True;
end;

procedure TFrmDesativaPesquisa.FormDestroy(Sender: TObject);
begin
  QryPesquisa.Active := False;
end;

procedure TFrmDesativaPesquisa.Fecha_janela(Sender: TObject);
begin
  //Fecha a janela
  Close;
end;

procedure TFrmDesativaPesquisa.btnAnexarUmClick(Sender: TObject);
begin
  //Anexa um item
  If QryPesquisa.RecordCount > 0 then
  lbxAnexo.Items.Add(QryPesquisaNM_TIPOPEDIVEND.Value);
end;

procedure TFrmDesativaPesquisa.btnAnexarTodosClick(Sender: TObject);
begin
  //Anexar todos xmls
  If QryPesquisa.RecordCount > 0 then
  begin

    QryPesquisa.First;
    While not QryPesquisa.Eof do
    begin
      lbxAnexo.Items.Add(QryPesquisaNM_TIPOPEDIVEND.Value);
      QryPesquisa.Next;
    end;

  end;
end;

procedure TFrmDesativaPesquisa.btnNEnviarEsteClick(Sender: TObject);
begin
  //Apaga um item
  If lbxAnexo.items.Count > 0 then lbxAnexo.Items.Delete(lbxAnexo.ItemIndex);
end;

procedure TFrmDesativaPesquisa.btnNEnviarTodosClick(Sender: TObject);
begin
  //Apaga todos os itens
  If lbxAnexo.Items.Count > 0 then lbxAnexo.Items.Clear;
end;

procedure TFrmDesativaPesquisa.edtCodigoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  QryPesquisa.locate('NM_TIPOPEDIVEND',edtCodigo.Text,[ loPartialKey	]);
end;

procedure TFrmDesativaPesquisa.Clicou_mouse_codigos(Column: TColumn);
begin
  //Anexa um item
  If QryPesquisa.RecordCount > 0 then
  lbxAnexo.Items.Add(QryPesquisaNM_TIPOPEDIVEND.Value);
end;

procedure TFrmDesativaPesquisa.Pressionou_enter_codigos(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
  begin
    //Anexa um item
    If QryPesquisa.RecordCount > 0 then
    lbxAnexo.Items.Add(QryPesquisaNM_TIPOPEDIVEND.Value);
  end;
end;

procedure TFrmDesativaPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmDesativaPesquisa:=nil;
  FrmPrincipal.VEN035.Enabled:= True;
  Action:=caFree;
end;

end.
