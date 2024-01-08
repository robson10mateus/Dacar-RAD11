unit UFrmGeraVarejo;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, MemDS, DBAccess, Ora,
  Mask, DBCtrls;

type
  TFrmGeraVarejo = class(TForm)
    Panel1: TPanel;
    lblTexto: TLabel;
    Panel2: TPanel;
    LblPedido: TLabel;
    Label2: TLabel;
    BtnSIM: TBitBtn;
    BitBtn2: TBitBtn;
    QrVarMoviFinan: TOraQuery;
    Qrytemp: TOraQuery;
    Label3: TLabel;
    EdtData: TMaskEdit;
    QrVarMoviFinanEMPRESA: TStringField;
    QrVarMoviFinanFILIAL: TIntegerField;
    QrVarMoviFinanID_VAR_MOVIFINAN: TFloatField;
    QrVarMoviFinanID_CAIXA: TIntegerField;
    QrVarMoviFinanDT_MOVIMENTO: TDateTimeField;
    QrVarMoviFinanDEB_CRED: TStringField;
    QrVarMoviFinanVALOR: TFloatField;
    QrVarMoviFinanSALDO: TFloatField;
    QrVarMoviFinanID_VAR_HISTORICO: TFloatField;
    QrVarMoviFinanFORMA_PAGTO: TStringField;
    QrVarMoviFinanID_USUARIO: TIntegerField;
    QrVarMoviFinanID_PEDIVEND: TFloatField;
    QrVarMoviFinanFL_STATUS: TStringField;
    QrEstoque: TOraQuery;
    QrEstoqueEMPRESA: TStringField;
    QrEstoqueFILIAL: TIntegerField;
    QrEstoqueID_VAR_ESTOQUE: TFloatField;
    QrEstoqueID_PRODMATEEMBA: TStringField;
    QrEstoquePACOTES: TIntegerField;
    QrEstoqueKG: TFloatField;
    QrEstoquePR_UNITKG: TFloatField;
    QrEstoquePR_UNITPACOTE: TFloatField;
    QrEstoqueDT_CADASTRO: TDateTimeField;
    QrEstoqueDT_ULTSAIDA: TDateTimeField;
    QrEstoquePERAJUSTEPRE: TFloatField;
    QrEstoqueFL_ATIVO: TStringField;
    lbl_Unidade: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSIMClick(Sender: TObject);
  private
    { Private declarations }
  public

    VGravar:boolean;
    pUsuario : String ;
    pDatabaselink : String ;
    pUnidade      : String;

    { Public declarations }
  end;

var
  FrmGeraVarejo: TFrmGeraVarejo;

implementation

uses global, UFrmPedVenda;

{$R *.dfm}

procedure TFrmGeraVarejo.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmGeraVarejo.FormShow(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Qrytemp.Close;
  Qrytemp.SQL.Clear;
  Qrytemp.SQL.Text := 'select sysdate from dual ';
  Qrytemp.Open;
  ld_DataHora := Qrytemp.FieldByName('sysdate').AsDateTime;
  EdtData.Text := DateToStr(FrmPedVenda.QPediVeDT_ENTRPEDIVEND.Value);
  lbl_Unidade.Caption := 'Loja : ' + pUnidade ;
  
  QrVarMoviFinan.KeySequence := pUsuario + '.SEQCA_VAR_MOVIFINAN';

  //DateToStr(ld_DataHora);
  LblPedido.Caption := FloatToStr(FrmPedVenda.QPediVeID_PEDIVEND.Value);
  with QrVarMoviFinan do
    begin
      Close;
      SQL.Clear;
      sql.Text := ' select                        '+
                  '   empresa,                    '+
                  '   filial,                     '+
                  '   id_var_movifinan,           '+
                  '   id_caixa,                   '+
                  '   dt_movimento,               '+
                  '   deb_cred,                   '+
                  '   valor,                      '+
                  '   saldo,                      '+
                  '   id_var_historico,           '+
                  '   forma_pagto,                '+
                  '   id_usuario,                 '+
                  '   id_pedivend,                '+
                  '   fl_status                   '+
                  ' from                          '+
                  ' &Schema.ca_var_movifinan&Datalink  '+
                  ' where NVL(fl_status,''AB'')= ''AB''  '+
                  '   and deb_cred = ''A''               '+
                  '   and id_pedivend = :Vid_pedivend    ';
      ParamByName('Vid_pedivend').AsFloat := FrmPedVenda.QPediVeID_PEDIVEND.Value;
      MacroByName('Schema').Value := pUsuario ;
      MacroByName('Datalink').Value := pDatabaselink ;

      Open;
      if not IsEmpty then
        begin
          Screen.Cursor := crDefault;
          MessageDlg('Já existe lançamento do Varejo para este pedido, o pedido anterior deve ser apagado antes de ser substituído.'+ #13 + #10 +'Operação cancelada. ', mtInformation,[mbOk], 0, mbOk);
          VGravar:=False;
          Close;
          exit;
          FrmGeraVarejo.Close;
        end;
    end;
  Screen.Cursor := crDefault;
end;

procedure TFrmGeraVarejo.BtnSIMClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  with QrVarMoviFinan do
    begin
      Close;
      SQL.Clear;
      sql.Text := ' select                        '+
                  '   empresa,                    '+
                  '   filial,                     '+
                  '   id_var_movifinan,           '+
                  '   id_caixa,                   '+
                  '   dt_movimento,               '+
                  '   deb_cred,                   '+
                  '   valor,                      '+
                  '   saldo,                      '+
                  '   id_var_historico,           '+
                  '   forma_pagto,                '+
                  '   id_usuario,                 '+
                  '   id_pedivend,                '+
                  '   fl_status                   '+
                  ' from                          '+
                  '   &Schema.ca_var_movifinan&Datalink  '+
                  ' where  deb_cred = ''A''              '+
                  '   and dt_movimento = :Vdt_movimento  '+
                  '   and (NVL(fl_status,''AB'')= ''AB'' '+
                  '    or  (fl_status)= ''AA'' ) ';
      ParamByName('Vdt_movimento').AsDate := StrToDate(EdtData.Text);
      MacroByName('Schema').Value := pUsuario ;
      MacroByName('Datalink').Value := pDatabaselink ;
      Open;
      if not IsEmpty then
        begin
          Screen.Cursor := crDefault;
          if MessageDlg('Já existe lançamento aberto no Varejo para esta Data, o pedido anterior deve ser excluído antes de ser substituído.'+ #13 + #10 +'Confirma substituir o pedido anterior para o Varejo? ', mtConfirmation,[mbYES,mbNO], 0, mbNO)= mrYes then
            begin
              //Verificar se o varejo ainda não está aberto
              if FieldByName('fl_status').AsString = 'AB' then
                begin
                  VGravar:=False;
                  MessageDlg('O Varejo já está aberto nesta Data, o pedido anterior não pode ser substituído.', mtError,[mbOK], 0, mbOK);
                end
              else
                begin
                  Edit;
                  FieldByName('id_pedivend').AsFloat := FrmPedVenda.QPediVeID_PEDIVEND.Value;
                  FieldByName('id_usuario').AsInteger := gi_IdenUsua;
                  Post;
                  CommitUpdates;
                  ApplyUpdates;
                  VGravar:=True;
                end;
            end
          else
            begin
              VGravar:=False;
            end;
          Close;
        end
      else
        begin
          //Inserir no Varejo
          Insert;
          FieldByName('empresa').AsString := gs_Empresa;
          FieldByName('filial').AsInteger := gi_Filial;
          FieldByName('id_caixa').AsInteger := 0;
          FieldByName('dt_movimento').AsDateTime := StrToDate(EdtData.Text);
          FieldByName('deb_cred').AsString := 'A';
          FieldByName('valor').AsFloat := 0;
          FieldByName('saldo').AsFloat := 0;
          FieldByName('id_var_historico').AsFloat := 1;
          FieldByName('id_usuario').AsInteger := gi_IdenUsua;
          FieldByName('id_pedivend').AsFloat := FrmPedVenda.QPediVeID_PEDIVEND.Value;
          FieldByName('fl_status').AsString := 'AA';
          Post;
          CommitUpdates;
          ApplyUpdates;
          VGravar:=True;
        end;
    end;
  Screen.Cursor := crDefault;
end;

end.
