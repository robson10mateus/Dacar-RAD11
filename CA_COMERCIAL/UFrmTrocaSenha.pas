unit UFrmTrocaSenha;

interface

uses
  SysUtils, Types, Classes, Variants , Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBAccess, Ora, MemDS, OraCall;

type
  TFrmTrocaSenha = class(TForm)
    Label6: TLabel;
    EdSenhaAnterior: TEdit;
    Label5: TLabel;
    EdNovaSenha: TEdit;
    Label4: TLabel;
    EdSenhaNova: TEdit;
    BtConfirmaSenha: TBitBtn;
    BtCancelaSenha: TBitBtn;
    qryTemp: TOraQuery;
    DBSenha: TOraSession;
    Qry_Bases: TOraQuery;
    qry_AtualizaUsuarios: TOraQuery;
    Qry_BasesID_BASE: TIntegerField;
    Qry_BasesID_USUARIO: TIntegerField;
    Qry_BasesLOG_USUARIO: TStringField;
    Qry_BasesUSUARIO: TStringField;
    Qry_BasesSERVIDOR: TStringField;
    Qry_BasesDESCR: TStringField;
    procedure Confirma_Senha(Sender: TObject);
    procedure FecharTrocaSenha(Sender: TObject);
    procedure Pressionou_enter_senhas(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    Filial : Integer;
    Usuario , Pconectastring , Servidor: String;
    { Public declarations }
  end;

var
  FrmTrocaSenha: TFrmTrocaSenha;

implementation

uses Global;

{$R *.dfm}

procedure TFrmTrocaSenha.Confirma_Senha(Sender: TObject);
var
  Altera , qtAlteracoes : Integer;
  x:integer;
  gb_SeguAtiv : Boolean;
  crip,parte,prolo,desfe,conectastring, hora_log, NovaSenha , datalink : string;
  data_log, ld_DataHora : TDateTime;
begin
  //Confirma a nova senha
  Altera := 0;

  If Filial >= 0 then
  If Usuario <> '' then
  If EdSenhaAnterior.Text <> '' then
  If EdNovaSenha.Text <> '' then
  If EdSenhaNova.Text <> '' then
  If EdNovaSenha.Text = EdSenhaNova.Text then
  If EdNovaSenha.Text <> EdSenhaAnterior.Text then Altera := 1;

  If Filial <= 0 then
  begin
    ShowMessage('Filial Não Cadastrada...');
    qryTemp.Close;
    Close;
  end;

  If EdSenhaAnterior.Text = '' then
  begin
    ShowMessage('Digite a senha anterior pra continuar...');
    EdSenhaAnterior.SetFocus;
    Exit;
  end;

  If EdNovaSenha.Text = '' then
  If EdSenhaNova.Text = '' then
  begin
    ShowMessage('É necessário digitar uma nova senha e redigita-la no campo a baixo para continuar...');
    EdNovaSenha.SetFocus;
    Exit;
  end;

  If EdNovaSenha.Text <> EdSenhaNova.Text then
  begin
    ShowMessage('As nova senha digitada não coincide com a redigitada... tente novamente');
    EdSenhaNova.Text := '';
    EdNovaSenha.Text := '';
    EdNovaSenha.SetFocus;
    Exit;
  end;

  If EdSenhaAnterior.Text <> '' then
  If EdNovaSenha.Text <> '' then
  If EdSenhaNova.Text <> '' then
  If EdNovaSenha.Text = EdSenhaNova.Text then
  If EdNovaSenha.Text = EdSenhaAnterior.Text then
  begin
    ShowMessage('A Nova Senha e a Senha Anterior são iguais... tente novamente');
    EdSenhaNova.Text := '';
    EdNovaSenha.Text := '';
    EdNovaSenha.SetFocus;
    Exit;
  end;

  //Faz a alteração na senha
  If Altera = 1 then
  begin

    conectastring := Pconectastring;

    DBSenha.ConnectString:=conectastring;

    //Verifica a Data do Sistema
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Text := ' Select sysdate  from  dual ';
    qryTemp.Open;
    If not(qryTemp.IsEmpty) then
    begin
      ld_DataHora := qryTemp.FieldByName('SYSDATE').AsDateTime;
    end;

    //Verifica se o usuário existe
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('SELECT * FROM SCT_USUARIO WHERE LOG_USUARIO = ' + QuotedStr(Copy(Usuario, 1, 8)));
    qryTemp.Open;

    // Se não encontramos o usuário
    if qryTemp.Eof then
    begin
      ShowMessage('Usuário não cadastrado');
      qryTemp.Close;
      EdSenhaAnterior.Text := '';
      EdSenhaNova.Text     := '';
      EdNovaSenha.Text     := '';
      Close;
    end;

    // Comparamos a senha anterior
    if qryTemp.FieldByName('SENHA').AsString <> CriptografaSenha(EdSenhaAnterior.text) then
    begin
      ShowMessage('Senha Anterior Incorreta... digite novamente');
      qryTemp.Close;
      EdSenhaAnterior.Text := '';
      EdSenhaAnterior.SetFocus;
      Exit;
    end;

    gb_SeguAtiv := True;
    // Se o usuário for o Admin
    if (Trim(Usuario) = 'Admin') then gb_SeguAtiv := False;

    // Se a segurança estiver ativada
    If gb_SeguAtiv then
    begin

      // Verificamos se a senha está em vigência
      If qryTemp.FieldByName('VIGENCIA_SENHA').AsDateTime > ld_DataHora then
      begin
        ShowMessage('Senha não vigente');
        qryTemp.Close;
        Exit;
      end;

      // Verificamos se o usuário está liberado
      If qryTemp.FieldByName('ESTA_LIBERADO').AsString <> 'S' then
      begin
        ShowMessage('Usuário não liberado');
        qryTemp.Close;
        Exit;
      end;

    end;

    //salva a nova senha
    If MessageDlg('CONFIRMA ALTERAR O SISTEMA PARA A NOVA SENHA ? - Anote a senha nova antes de continuar !!!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      //Encripta a nova senha
      NovaSenha := '';
      NovaSenha := CriptografaSenha(EdNovaSenha.text);

      //Grava a nova senha
      If NovaSenha <> '' then
      begin

        //Altera para a nova senha
        {
        qryTemp.Close;
        qryTemp.SQL.Clear;
        qryTemp.SQL.Add('UPDATE SCT_USUARIO SET SENHA = ' + QuotedStr(NovaSenha) +  ' WHERE LOG_USUARIO = ' + QuotedStr(Copy(Usuario, 1, 8)));

        qryTemp.Execute;
        qryTemp.SQL.Clear;
        qryTemp.SQL.Add('COMMIT');
        qryTemp.Execute;
         }
        Qry_Bases.Close;
        Qry_Bases.ParamByName('LOG_USUARIO').Value := Copy(Usuario, 1, 8);

        if ( Servidor <> '10.0.1.254:1521' ) then
             Qry_Bases.MacroByName('Datalink').Value := '@sorocaba.ceuazul.com.br'
        else Qry_Bases.MacroByName('Datalink').Value := '' ;


        Qry_Bases.Open;
        Qry_Bases.First;

        qtAlteracoes := 0;

        while not Qry_Bases.Eof do
        begin
             qry_AtualizaUsuarios.ParamByName('LOG_USUARIO').Value := Copy(Usuario, 1, 8) ;
             qry_AtualizaUsuarios.MacroByName('ESQUEMA').Value    := Qry_BasesUSUARIO.Value;

              if ( qry_BasesSERVIDOR.Value = '10.0.5.3:1521' ) AND ( qry_BasesSERVIDOR.Value <> Servidor )  then
                 datalink := '@itape.ceuazul.com.br'
              else if  ( qry_BasesSERVIDOR.Value = '10.0.3.240:1521' ) AND ( qry_BasesSERVIDOR.Value <> Servidor ) then
                      datalink := '@pereiras.ceuazul.com.br'
              else if  ( qry_BasesSERVIDOR.Value = '10.0.1.254:1521' ) AND ( qry_BasesSERVIDOR.Value <> Servidor ) then
                      datalink := '@sorocaba.ceuazul.com.br'
              else  datalink := '';


              qry_AtualizaUsuarios.MacroByName('DATALINK').Value   :=  datalink ;
              qry_AtualizaUsuarios.ParamByName('Senha').Value      := NovaSenha ;

              try
                  qry_AtualizaUsuarios.ExecSQL;
              except
                on E: Exception do
                begin
                     raise Exception.CreateFmt(' Senha alterada em '+ IntToStr(qtAlteracoes) +' bases . Erro ao atualizar usuário na Base :'  + #13 + Qry_BasesDESCR.Asstring + #13 +
                                               ' Tente efetuar a troca por outra Base' + #13 +
                                               ' Erro do Banco de Dados: %s ', [E.Message]);
                end;
              end;

              qtAlteracoes := qtAlteracoes + 1;

              Qry_Bases.Next;
              
        end;

        //Avisa senha alterada com sucesso
        ShowMessage('SENHA ALTERADA COM SUCESSO !!! - Não esqueça de guardar sua senha com segurança...');

      end;

    end;
    //Fecha a tabela
    qryTemp.Close;
    //Fecha a janela
    Close;

  end;
end;

procedure TFrmTrocaSenha.FecharTrocaSenha(Sender: TObject);
begin
  //Troca a senha
  Close;
end;

procedure TFrmTrocaSenha.Pressionou_enter_senhas(Sender: TObject;
  var Key: Char);
begin
  //Pressionou enter nos campos senhas
  If Key = #13 then
  begin
    If Sender = EdSenhaAnterior then begin EdNovaSenha.SetFocus; end;
    If Sender = EdNovaSenha     then begin EdSenhaNova.SetFocus; end;
    If Sender = EdSenhaNova     then begin BtConfirmaSenha.SetFocus; end;
  end;
end;

end.
