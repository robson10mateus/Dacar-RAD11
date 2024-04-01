unit UFrmPedVendaCorte;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, DB, MemDS, DBAccess, Ora, Grids, DBGrids,
  ComCtrls, ExtCtrls, DBCtrls, Vcl.ToolWin;

type
  TFrmPedVendaCorte = class(TForm)
    eData: TEdit;
    BPESQ: TBitBtn;
    qryVendas: TOraQuery;
    BtAtivar: TBitBtn;
    qryTot: TOraQuery;
    qryTemp: TOraQuery;
    qryPedExc: TOraQuery;
    qryPedAtu: TOraQuery;
    qryPedAtuID_PEDIVEND: TFloatField;
    ToolBar1: TToolBar;
    Sb_Sair: TSpeedButton;
    ToolButton1: TToolButton;
    Label1: TLabel;
    dtsPesq: TDataSource;
    qryPesq: TOraQuery;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    qryPesqNM_VENDEDOR: TStringField;
    DBNavigator1: TDBNavigator;
    qryPesqID_VENDEDOR: TFloatField;
    qryPesqTOTAL: TFloatField;
    Panel1: TPanel;
    Label2: TLabel;
    edTotPed: TEdit;
    chkTds: TCheckBox;
    qryPesqID_PRODMATEEMBA: TStringField;
    qryPesqDIFERENCA: TFloatField;
    qryPesqNM_PRODMATEEMBA: TStringField;
    qryVendasID_VENDEDOR: TFloatField;
    qryVendasID_PRODMATEEMBA: TStringField;
    qryTotID_PRODMATEEMBA: TStringField;
    qryTotDIFERENCA: TFloatField;
    qryVendasDIFERENCA: TFloatField;
    qryTotVL_UNITITEMPEDIVEND: TFloatField;
    qryPedExcID_PEDIVEND: TFloatField;
    qryPedExcID_ITEMPEDIVEND: TFloatField;
    qryPedExcID_PRODMATEEMBA: TStringField;
    qryPedExcVL_DIFERENCA: TFloatField;
    qryPedExcQN_PESOITEMPEDIVEND: TFloatField;
    qryPedExcQN_EMBAITEMPEDIVEND: TFloatField;
    qryPedExcQN_TARAEMBAPROD: TFloatField;
    qryPedExcQN_PESOPADRITEMPEDIVEND: TFloatField;
    qryPedExcVL_UNITITEMPEDIVEND: TFloatField;
    qryPedExcVL_ITEMTABEPREC: TFloatField;
    btnLibTds: TBitBtn;
    Label21: TLabel;
    procedure BtAtivarClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure btnLibTdsClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedVendaCorte: TFrmPedVendaCorte;

implementation

uses Principal, UFrmSeldata, Global;

{$R *.dfm}

procedure TFrmPedVendaCorte.BtAtivarClick(Sender: TObject);
var
  vNumPed, vID_PRODMATEEMBA, vBkp: string;
  vPesoNovo, vQtdeNova: double;
begin
  if eData.Text = '' then
    begin
      MessageDlg('Favor informar uma data.', mtWarning, [mbOk], 0);
      exit;
    end;

  If MessageDlg('Deseja efetuar o corte dos pedidos ?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrNo then exit;

  qryVendas.Close;
  qryVendas.ParamByName('P_DATA').AsDate:= StrToDate(eData.Text);
  qryVendas.Open;

  if qryVendas.IsEmpty then
    begin
      MessageDlg('Não existem pedidos para corte no período selecionado.', mtWarning, [mbOk], 0);
      btnLibTds.Visible:= True;
      exit;
    end;

  Panel1.Caption:= '     Aguarde, efetuando a cópia das tabelas...';
  Application.ProcessMessages;

  //antes de cortar, é feita uma cópia das tabelas: pedidos e itens
  {qryTemp.SQL.Clear;
  qryTemp.SQL.Add('DROP TABLE bkp_pedido_venda');
  qryTemp.ExecSQL;

  qryTemp.SQL.Clear;
  qryTemp.SQL.Add('DROP TABLE bkp_pedido_venda_item');
  qryTemp.ExecSQL;}

  vBkp:= FormatDateTime('ddmmyy_hhmmss',now);

  qryTemp.SQL.Clear;
  qryTemp.SQL.Add('CREATE TABLE PV_'+vBkp+' as select * from pedido_venda');
  qryTemp.ExecSQL;

  qryTemp.SQL.Clear;
  qryTemp.SQL.Add('CREATE TABLE PVI_'+vBkp+' as select * from pedido_venda_item');
  qryTemp.ExecSQL;

  Panel1.Caption:= '     Aguarde, efetuando o corte nos pedidos...';
  Application.ProcessMessages;

  qryVendas.First;
  vID_PRODMATEEMBA:= qryVendasID_PRODMATEEMBA.Value;
  while not qryVendas.Eof do
    begin
      qryTot.Close;
      qryTot.ParamByName('P_DATA').AsDate:= StrToDate(eData.Text);
      qryTot.ParamByName('P_VENDEDOR').AsFloat:= qryVendasID_VENDEDOR.Value;
      qryTot.ParamByName('P_PRODUTO').AsString:= qryVendasID_PRODMATEEMBA.Value;
      qryTot.Open;

      while qryTotDIFERENCA.Value < 0 do
        begin

          qryPedExc.Close;
          qryPedExc.ParamByName('P_DATA').AsDate:= StrToDate(eData.Text);
          qryPedExc.ParamByName('P_VENDEDOR').AsFloat:= qryVendasID_VENDEDOR.Value;
          qryPedExc.ParamByName('P_PRODUTO').AsString:= qryTotID_PRODMATEEMBA.Value;
          qryPedExc.Open;
          //posiciona no primeiro por causa da ordenação de valores
          qryPedExc.First;

          //pega o numero do pedido antes de excluir o item para no caso de ser somente um item no pedido ele excluira o pedido
          vNumPed:= qryPedExcID_PEDIVEND.AsString;

          if qryVendasDIFERENCA.Value < qryPedExcVL_DIFERENCA.Value then
            begin
              //exclui o item do pedido com o maior valor negativo
              qryTemp.SQL.Clear;
              qryTemp.SQL.Add('DELETE FROM pedido_venda_item WHERE id_itempedivend = ' + qryPedExcID_ITEMPEDIVEND.Text);
              qryTemp.ExecSQL;
            end
          else
            begin
              vPesoNovo:= qryPedExcQN_PESOITEMPEDIVEND.Value - int( qryPedExcQN_PESOITEMPEDIVEND.Value * (qryVendasDIFERENCA.Value/qryPedExcVL_DIFERENCA.Value));
              vQtdeNova:= int(vPesoNovo / qryPedExcQN_PESOPADRITEMPEDIVEND.Value);
              vPesoNovo:= vQtdeNova * qryPedExcQN_PESOPADRITEMPEDIVEND.Value;
              {
              ShowMessage('PESO NOVO: ' + FormatFloat('0.00', vPesoNovo));
              ShowMessage('QTDE NOVA: ' + FormatFloat('0.00', vQtdeNova));
              if qryPedExcQN_TARAEMBAPROD.Value <> 0 then
                ShowMessage('TARA NOVA: ' + FormatFloat('0.00', vQtdeNova * qryPedExcQN_TARAEMBAPROD.Value))
              else
                ShowMessage('TARA ZERADA');
              //(QItemQN_PESOITEMPEDIVEND.Value * QItemVL_UNITITEMPEDIVEND.Value) - (QItemQN_PESOITEMPEDIVEND.Value * QItemVL_ITEMTABEPREC.Value);
              ShowMessage('DIFERENÇA: ' + FormatFloat('0.00', (vPesoNovo * qryPedExcVL_UNITITEMPEDIVEND.Value) - (vPesoNovo * qryPedExcVL_ITEMTABEPREC.Value)));
              }
              //editar o item
              if vQtdeNova = 0 then
                begin
                  qryTemp.SQL.Clear;
                  qryTemp.SQL.Add('DELETE FROM pedido_venda_item WHERE id_itempedivend = ' + qryPedExcID_ITEMPEDIVEND.Text);
                  qryTemp.ExecSQL;
                end
              else
                begin
                  qryTemp.Close;
                  qryTemp.SQL.Clear;
                  qryTemp.SQL.Add('UPDATE PEDIDO_VENDA_ITEM');
                  qryTemp.SQL.Add('SET');
                  qryTemp.SQL.Add('QN_EMBAITEMPEDIVEND = :QN_EMBAITEMPEDIVEND,');
                  qryTemp.SQL.Add('QN_PESOITEMPEDIVEND = :QN_PESOITEMPEDIVEND,');
                  qryTemp.SQL.Add('QN_TARAITEMPEDIVEND = :QN_TARAITEMPEDIVEND,');
                  qryTemp.SQL.Add('VL_DIFERENCA = :VL_DIFERENCA');
                  qryTemp.SQL.Add('WHERE');
                  qryTemp.SQL.Add('ID_ITEMPEDIVEND = :ID_ITEMPEDIVEND');

                  qryTemp.ParamByName('QN_EMBAITEMPEDIVEND').Value:= vQtdeNova;
                  qryTemp.ParamByName('QN_PESOITEMPEDIVEND').Value:= vPesoNovo;

                  if qryPedExcQN_TARAEMBAPROD.Value <> 0 then
                     qryTemp.ParamByName('QN_TARAITEMPEDIVEND').Value:= vQtdeNova * qryPedExcQN_TARAEMBAPROD.Value
                  else
                    qryTemp.ParamByName('QN_TARAITEMPEDIVEND').Value:= 0;

                  qryTemp.ParamByName('VL_DIFERENCA').Value:= (vPesoNovo * qryPedExcVL_UNITITEMPEDIVEND.Value) - (vPesoNovo * qryPedExcVL_ITEMTABEPREC.Value);
                  qryTemp.ParamByName('ID_ITEMPEDIVEND').Value:= qryPedExcID_ITEMPEDIVEND.Value;
                  //ShowMessage(qryTemp.SQL.Text);
                  qryTemp.ExecSQL;
                  //exit;
                end;
            end;

          qryTemp.Close;
          qryTemp.SQL.Clear;
          qryTemp.SQL.Add('SELECT');
          qryTemp.SQL.Add('Count(id_itempedivend) AS QTDE_ITENS');
          qryTemp.SQL.Add('FROM');
          qryTemp.SQL.Add('pedido_venda_item');
          qryTemp.SQL.Add('WHERE');
          qryTemp.SQL.Add('id_pedivend = ' + vNumPed);
          qryTemp.Open;

          if qryTemp.FieldByName('QTDE_ITENS').AsInteger = 0 then
            begin
              qryTemp.SQL.Clear;
              qryTemp.SQL.Add('DELETE FROM pedido_venda WHERE id_pedivend = ' + qryPedExcID_PEDIVEND.Text);
              qryTemp.ExecSQL;
            end;
          qryTot.Close;
          qryTot.ParamByName('P_DATA').AsDate:= StrToDate(eData.Text);
          qryTot.ParamByName('P_VENDEDOR').AsFloat:= qryVendasID_VENDEDOR.Value;
          qryTot.ParamByName('P_PRODUTO').AsString:= qryVendasID_PRODMATEEMBA.Value;
          qryTot.Open;

          qryVendas.Close;
          qryVendas.ParamByName('P_DATA').AsDate:= StrToDate(eData.Text);
          qryVendas.Open;

          //if (qryVendasDIFERENCA.Value >= 0) and (qryVendasID_PRODMATEEMBA.Value <> vID_PRODMATEEMBA) then break;
          if qryVendasID_PRODMATEEMBA.Value <> vID_PRODMATEEMBA then
            begin
              vID_PRODMATEEMBA:= qryVendasID_PRODMATEEMBA.Value;
              break;
            end;

          continue;
        end;
      //ShowMessage('proximo');
      //qryVendas.Next;
    end;
  qryPedAtu.Close;
  qryPedAtu.ParamByName('P_DATA').AsDate:= StrToDate(eData.Text);
  qryPedAtu.Open;
  qryPedAtu.First;
  while not qryPedAtu.Eof do
    begin
      qryTemp.SQL.Clear;
      qryTemp.SQL.Add('UPDATE pedido_venda SET fl_corte = ''S'', DTHORA_CORTE = SYSDATE WHERE id_pedivend = ' + qryPedAtuID_PEDIVEND.Text);
      qryTemp.ExecSQL;
      qryPedAtu.Next;
    end;
  Panel1.Caption:= '';
  Application.ProcessMessages;

  MessageDlg('Processo finalizado.', mtInformation, [mbOk], 0);
  qryPesq.Close;
end;

procedure TFrmPedVendaCorte.BPESQClick(Sender: TObject);
var
  Vdtstr:String;
begin
  Cria_FrmSelData(Vdtstr);
  eData.text:= Vdtstr;
end;

procedure TFrmPedVendaCorte.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPedVendaCorte.BitBtn1Click(Sender: TObject);
var
  vTotal: double;
begin
  if eData.Text = '' then
    begin
      MessageDlg('Favor informar uma data.', mtWarning, [mbOk], 0);
      exit;
    end;

  qryPesq.Close;
  qryPesq.SQL.Clear;
  qryPesq.SQL.Add('SELECT');
  qryPesq.SQL.Add('PEDIDO_VENDA.ID_VENDEDOR,');
  qryPesq.SQL.Add('VENDEDOR.NM_VENDEDOR,');
  qryPesq.SQL.Add('Material_embalagem.ID_PRODMATEEMBA,');
  qryPesq.SQL.Add('Material_embalagem.NM_PRODMATEEMBA,');
  qryPesq.SQL.Add('sum(VL_DIFERENCA) AS diferenca,');
  qryPesq.SQL.Add('Sum(PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND * PEDIDO_VENDA_ITEM.QN_PESOITEMPEDIVEND) AS TOTAL');
  qryPesq.SQL.Add('FROM');
  qryPesq.SQL.Add('PEDIDO_VENDA_ITEM,');
  qryPesq.SQL.Add('PEDIDO_VENDA,');
  qryPesq.SQL.Add('PEDIDO_VENDA_TIPO,');
  qryPesq.SQL.Add('VENDEDOR,');
  qryPesq.SQL.Add('MATERIAL_EMBALAGEM,');
  qryPesq.SQL.Add('MATERIAL');
  qryPesq.SQL.Add('WHERE');
  qryPesq.SQL.Add('(PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND)');
  qryPesq.SQL.Add('AND (PEDIDO_VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR)');
  qryPesq.SQL.Add('AND (PEDIDO_VENDA.ID_TIPOPEDIVEND = PEDIDO_VENDA_TIPO.ID_TIPOPEDIVEND)');
  qryPesq.SQL.Add('AND (Pedido_venda_item.ID_MATEEMBA = Material_embalagem.ID_MATEEMBA)');
  qryPesq.SQL.Add('AND MATERIAL.ID_MATERIAL = Pedido_venda_item.ID_MATERIAL');
  qryPesq.SQL.Add('AND NVL(PEDIDO_VENDA.FL_CORTE,''N'') = ''N''');
  qryPesq.SQL.Add('AND (PEDIDO_VENDA.FL_STATPEDIVEND = ''AB'')');
  qryPesq.SQL.Add('AND ( PEDIDO_VENDA.FILIAL = ' + inttoStr( gi_filial ) +' ) ');
  if chkTds.Checked = False then
    qryPesq.SQL.Add('AND VENDEDOR.FL_PARTCORTE = ''S''');

  qryPesq.SQL.Add('AND trunc(PEDIDO_VENDA.DT_PEDIVEND) = :P_DATA');
  qryPesq.SQL.Add('GROUP BY');
  qryPesq.SQL.Add('PEDIDO_VENDA.ID_VENDEDOR,');
  qryPesq.SQL.Add('VENDEDOR.NM_VENDEDOR,');
  qryPesq.SQL.Add('Material_embalagem.ID_PRODMATEEMBA,');
  qryPesq.SQL.Add('Material_embalagem.NM_PRODMATEEMBA');
  qryPesq.SQL.Add('ORDER BY VENDEDOR.NM_VENDEDOR');

  qryPesq.ParamByName('P_DATA').AsDate:= StrToDate(eData.Text);
  qryPesq.Open;

  vTotal:= 0;
  qryPesq.First;
  while not qryPesq.Eof do
    begin
      vTotal:= vTotal + qryPesqTOTAL.Value;
      qryPesq.Next;
    end;
  qryPesq.First;
  edTotPed.Text:= FormatFloat('#,##0.00', vTotal);
end;

procedure TFrmPedVendaCorte.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if qryPesqDIFERENCA.Value > 0 then
    DBGrid1.Canvas.font.Color := clblue;
  if qryPesqDIFERENCA.Value < 0 then
    DBGrid1.Canvas.font.Color := clRed;

  if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
      begin
        Brush.Color := $00DFDFDF;
        FillRect(Rect);
      end;
  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmPedVendaCorte.FormCreate(Sender: TObject);
begin
  eData.Text:= FormatDateTime('dd/mm/yyyy', Date);
end;

procedure TFrmPedVendaCorte.btnLibTdsClick(Sender: TObject);
begin
  Screen.Cursor:= crSQLWait;

  try
    //antes de cortar, é feita uma cópia das tabelas: pedidos e itens
    qryTemp.SQL.Clear;
    //teste
    //qryTemp.SQL.Add('DROP TABLE bkp_pedido_venda');
    qryTemp.SQL.Add('DROP TABLE bkp_pedido_venda');

    qryTemp.ExecSQL;

    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('DROP TABLE bkp_pedido_venda_item');
    qryTemp.ExecSQL;

    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('CREATE TABLE bkp_pedido_venda as select * from pedido_venda');
    qryTemp.ExecSQL;

    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('CREATE TABLE bkp_pedido_venda_item as select * from pedido_venda_item');
    qryTemp.ExecSQL;

    qryPedAtu.Close;
    qryPedAtu.ParamByName('P_DATA').AsDate:= StrToDate(eData.Text);
    qryPedAtu.Open;
    qryPedAtu.First;
    while not qryPedAtu.Eof do
      begin
        qryTemp.SQL.Clear;
        qryTemp.SQL.Add('UPDATE pedido_venda SET fl_corte = ''S'', DTHORA_CORTE = SYSDATE WHERE id_pedivend = ' + qryPedAtuID_PEDIVEND.Text);
        qryTemp.ExecSQL;
        qryPedAtu.Next;
      end;
    Screen.Cursor:= crDefault;
    MessageDlg('Processo finalizado.', mtInformation, [mbOk], 0);
    qryPesq.Close;
    btnLibTds.Visible:= False;
  except
    on E: Exception do
      MessageDlg(E.ClassName + ' erro gerado: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmPedVendaCorte.DBGrid1TitleClick(Column: TColumn);
var
  linha:integer;
begin
  Screen.Cursor := crSQLWait;
  linha := Pos('ORDER',qryPesq.SQL.text);
  qryPesq.SQL.text := copy(qryPesq.SQL.text,0,linha-1);
  qryPesq.SQL.add(' ORDER BY ' + Column.FieldName);
  qryPesq.Open;
  Screen.Cursor:= crDefault;
end;

procedure TFrmPedVendaCorte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPedVendaCorte:=nil;
//  FrmPrincipal.VEN037.Enabled:= True;
  FrmPrincipal.ACVEN037.Enabled:= True;
  Action:=caFree;
end;

end.
