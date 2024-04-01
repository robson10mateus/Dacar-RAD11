unit UfrmFeCarManu;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, DB, Ora, MemDS,
  DBAccess, Grids, DBGrids, Vcl.ToolWin;

type
  TfrmFeCarManu = class(TForm)
    ToolBar1: TToolBar;
    Sb_Sair: TSpeedButton;
    ToolButton3: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    BtCorri: TBitBtn;
    BitBtn2: TBitBtn;
    EdCarga: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    QrFeCarMa: TOraQuery;
    DSFeCarMa: TOraDataSource;
    QrFeCarMaID_PEDIVEND: TFloatField;
    QrFeCarMaQN_PESOPADREXPEPEDIVEND: TFloatField;
    QrFeCarMaFL_STATCARGEXPE: TStringField;
    QrFeCarMaID_CARGEXPE: TFloatField;
    QrFeCarMaQN_PESOPEDIVEND: TFloatField;
    QrFeCarMaID_ITEMPEDIVEND: TFloatField;
    QrFeCarMaQN_PESOITEMPEDIVEND: TFloatField;
    QrFeCarMaQN_PESOPADREXPEITEMPEDIVEND: TFloatField;
    BtFiltro: TButton;
    OSQL1: TOraSQL;
    QrFeCarMaQN_EMBAPEDIVEND: TIntegerField;
    QrFeCarMaQN_EMBAITEMPEDIVEND: TFloatField;
    QryTemp: TOraQuery;
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtCorriClick(Sender: TObject);
    procedure BtFiltroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFeCarManu: TfrmFeCarManu;

implementation

uses global, Principal;
{$R *.dfm}

procedure TfrmFeCarManu.Sb_SairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFeCarManu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmFeCarManu:=Nil;
  FrmPrincipal.ACVEN007.Enabled := True;
  Action:=caFree;
end;

procedure TfrmFeCarManu.FormShow(Sender: TObject);
begin
  EdCarga.SetFocus;
end;

procedure TfrmFeCarManu.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmFeCarManu.BtCorriClick(Sender: TObject);
VAR
  VNUMGARGA:String;
begin
 If EdCarga.Text = '' then
   begin
     ShowMessage('Digite uma carga para Fechamento.');
     exit;
   end;
 IF QrFeCarMa.IsEmpty then
   BEGIN
     SHOWMESSAGE('Nenhuma carga para fechar.');
     BtFiltro.Visible:= True;
     BtCorri.Visible := False;
     exit;
   END;

 If MessageDlg('Confirma fechar a carga ' + EdCarga.Text + ' ?',
   mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    Screen.Cursor := crSQLWait;
    QrFeCarMa.First;
    VNUMGARGA:= QrFeCarMaID_CARGEXPE.AsString;
    WHILE NOT QrFeCarMa.Eof DO
    BEGIN
{      If QrFeCarMaQN_PESOPADREXPEPEDIVEND.AsFloat > 0 then
       BEGIN
         Screen.Cursor := crDefault;
         ShowMessage('O Pedido ' + QrFeCarMaID_PEDIVEND.AsString + ' já possui valor expedido.');
         Screen.Cursor := crSQLWait;
        END
      Else
       Begin  }
       //COPIA O PESO DO PEDIDO
       OSQL1.SQL.Clear;
       OSQL1.SQL.Text:= ' Update PEDIDO_VENDA ' +
         ' Set  QN_PESOPADREXPEPEDIVEND = ' + ReplaceStr(QrFeCarMaQN_PESOPEDIVEND.AsString,',','.') + ', ' +
         '      QN_EMBAEXPEPEDIVEND = ' + ReplaceStr(QrFeCarMaQN_EMBAPEDIVEND.AsString,',','.') +
         ' WHERE PEDIDO_VENDA.ID_PEDIVEND = ' + QrFeCarMaID_PEDIVEND.AsString;
       OSQL1.Execute;
       //COPIA O PESO DO ITEM DO PEDIDO
       OSQL1.SQL.Clear;
       OSQL1.SQL.Text:= ' Update PEDIDO_VENDA_ITEM ' +
         ' Set  qn_pesopadrexpeitempedivend = ' + ReplaceStr(QrFeCarMaQN_PESOITEMPEDIVEND.AsString,',','.') + ', ' +
         '      qn_embaexpeitempedivend = ' + ReplaceStr(QrFeCarMaQN_EMBAITEMPEDIVEND.AsString,',','.') +
         ' WHERE id_itempedivend = ' + QrFeCarMaID_ITEMPEDIVEND.AsString;
       OSQL1.Execute;
//       end;
      QrFeCarMa.Next;
    END;
    Try
      //ALTERA STATUS CARGA P/ FE
      OSQL1.SQL.Clear;
      OSQL1.SQL.Text:= ' UPDATE EXPEDICAO_CARGA ' +
                       ' SET    FL_STATCARGEXPE = ''FE'' ' +
                       ' WHERE  EXPEDICAO_CARGA.ID_CARGEXPE = ' + VNUMGARGA;
      OSQL1.Execute;

      Screen.Cursor := crDefault;
      ShowMessage('Carga ' + VNUMGARGA + ' fechada com sucesso.');
      EdCarga.Text:= '';
      QrFeCarMa.Refresh;
      EdCarga.SetFocus;
    Except
      Screen.Cursor := crDefault;
      MessageDlg('Ocorreu um problema no fechamento da da carga, tente novamente.', mtInformation,[mbOk], 0, mbOk);
      QrFeCarMa.Refresh;
      EdCarga.SetFocus;
    End;
  END;
  BtFiltro.Visible:= True;
  BtCorri.Visible := False;

end;

procedure TfrmFeCarManu.BtFiltroClick(Sender: TObject);
var v1,v2:integer;
begin
   If EdCarga.Text = '' then
   begin
     ShowMessage('Digite uma carga para Fechamento.');
     exit;
   end;
   //Verifica o numero de Pedidos da Carga
   QryTemp.Close;
   QryTemp.SQL.Clear;
   QryTemp.SQL.Text :=
        'SELECT                                                           '+
        '     COUNT(PEDIDO_VENDA_ITEM.ID_ITEMPEDIVEND) AS TOTALPEDIDOS    '+
        'FROM                                                             '+
        '     PEDIDO_VENDA,                                               '+
        '     PEDIDO_VENDA_ITEM                                           '+
        'WHERE                                                            '+
        '     PEDIDO_VENDA.ID_CARGEXPE = :Vcarga                          '+
        'AND  PEDIDO_VENDA.ID_PEDIVEND = PEDIDO_VENDA_ITEM.ID_PEDIVEND    ';

   QryTemp.ParamByName('Vcarga').AsInteger :=  strtoint(EdCarga.text);
   QryTemp.Open;
   v1:=QryTemp.FieldByName('TOTALPEDIDOS').asInteger;
  // showmessage(inttostr(v1)+ ' Total pedidos. ');
   // Abre os pedidos da Carga para Fechamento
   QrFeCarMa.Close;
   QrFeCarMa.SQL.Clear;
   QrFeCarMa.SQL.Text :=
        'SELECT                                                           '+
        '  PEDIDO_VENDA.ID_PEDIVEND,                                      '+
        '  PEDIDO_VENDA.QN_PESOPADREXPEPEDIVEND,                          '+
        '  EXPEDICAO_CARGA.FL_STATCARGEXPE,                               '+
        '  EXPEDICAO_CARGA.ID_CARGEXPE,                                   '+
        '  PEDIDO_VENDA.QN_PESOPEDIVEND,                                  '+
        '  PEDIDO_VENDA_ITEM.ID_ITEMPEDIVEND,                             '+
        '  PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND,                         '+
        '  PEDIDO_VENDA_ITEM.QN_PESOPADREXPEITEMPEDIVEND,                 '+
        '  PEDIDO_VENDA.QN_EMBAPEDIVEND,                                  '+
        '  PEDIDO_VENDA_ITEM.QN_EMBAITEMPEDIVEND                          '+
        'FROM                                                             '+
        '  PEDIDO_VENDA,                                                  '+
        '  EXPEDICAO_CARGA,                                               '+
        '  PEDIDO_VENDA_ITEM,                                             '+
        '  PEDIDO_VENDA_TIPO                                              '+
        'WHERE                                                            '+
        '  EXPEDICAO_CARGA.ID_CARGEXPE = PEDIDO_VENDA.ID_CARGEXPE AND     '+
        '  PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND AND   '+
        '  PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND = PEDIDO_VENDA.ID_TIPOPEDIVEND AND  '+
        '  EXPEDICAO_CARGA.FL_STATCARGEXPE = ''BQ'' AND                   '+
        '  PEDIDO_VENDA.FILIAL = ' + inttoStr( gi_filial ) +' AND         '+
        '  PEDIDO_VENDA.ID_CARGEXPE = :Vcarga                             ';

    if gi_IdenUsua <> 66 then
    begin
      QrFeCarMa.SQL.add(' AND NVL(PEDIDO_VENDA_TIPO.FL_CONSFINATIPOPEDIVEND,''N'') = ''N''  ');
      QrFeCarMa.SQL.add(' AND PEDIDO_VENDA.FL_STATPEDIVEND = ''EC''                         ');
    end;

    QrFeCarMa.SQL.add('ORDER BY                                           ');
    QrFeCarMa.SQL.add('  PEDIDO_VENDA.ID_PEDIVEND                         ');

    //    '  EXPEDICAO_CARGA.FL_STATCARGEXPE = ''BQ'' AND                   '+
    //    '  NVL(PEDIDO_VENDA_TIPO.FL_CONSFINATIPOPEDIVEND,''N'') = ''N'' AND  '+


   QrFeCarMa.ParamByName('Vcarga').AsInteger :=  strtoint(EdCarga.text);
   QrFeCarMa.Open;
   v2:=QrFeCarMa.RecordCount;
   //showmessage(inttostr(v2)+ ' pedidos da carga. ');
   //Verifica se todos os pedido da carga obedecem as condições para Fechamento.
   If (v1<>v2) then
   begin
     MessageDlg('Não é permitido o Fechamento Manual desta carga! '+ #13 + #13 +
                'Um dos Pedidos não correponde as condições necessárias. ' , mtWarning,[mbOk], 0, mbOk);
     Exit;
   end;

   If (QrFeCarMa.RecordCount > 0) then
   Begin
     BtFiltro.Visible:= False;
     BtCorri.Visible := True;
   End
   Else
   Begin
    MessageDlg('Não é permitido o fechamento manual para esta carga.', mtInformation,[mbOk], 0, mbOk);
    EdCarga.SetFocus;
   End;
end;

procedure TfrmFeCarManu.FormCreate(Sender: TObject);
begin
  FrmPrincipal.TrocaNomeSequence(Self);
end;

end.
