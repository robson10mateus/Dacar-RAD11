unit UFrmSelSintCarga;

interface

uses

  Controls, Buttons, DBCtrls, Mask, Grids, TYPES, DBGrids,
  Classes, SysUtils, Variants, Graphics, Forms,
  Dialogs, toolWin, OraSmart, OraError, Data.DB, DBAccess, Ora, MemDS,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Winapi.Windows;

type
  TFrmSelSintCarga = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
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
    Qr: TOraQuery;
    DS: TOraDataSource;
    DTini: TEdit;
    DtFim: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    QrDT_CARGEXPE: TDateTimeField;
    QrID_CARGEXPE: TFloatField;
    QrQT_PEDCARGA: TFloatField;
    QrQT_PESOLIQUIDO: TFloatField;
    QrQT_CAIXAS: TFloatField;
    QrQT_PESOBRUTO: TFloatField;
    QrNO_PLACA: TStringField;
    QrQT_PESOBALANCAO: TFloatField;
    QrQT_DIFPESO: TFloatField;
    QrQT_PERCENTUAL: TFloatField;
    QrMOTORISTA: TStringField;
    QrAJUDANTE: TStringField;
    QrGN_OBSECARGEXPE: TStringField;
    QrHORASAIDA: TStringField;
    Sb_Sair: TSpeedButton;
    QrVL_PAGO_MOTORISTA: TFloatField;
    QrVL_PAGO_AJUDANTE: TFloatField;
    QrVL_PAGO_CHAPA: TFloatField;
    QrNM_CHAPA: TStringField;
    QrFL_STATCARGEXPE: TStringField;
    TabDetalhe: TTabSheet;
    DBGrid1: TDBGrid;
    BtnImprime: TSpeedButton;
    BtnExcel: TSpeedButton;
    dlgSaveArquivo: TSaveDialog;
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LCamposClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure SB_PRINTClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure DTiniExit(Sender: TObject);
    procedure BtnImprimeClick(Sender: TObject);
    procedure BtnExcelClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    SELPE:integer;
  end;

var
  FrmSelSintCarga: TFrmSelSintCarga;

implementation

uses Principal, UFrmRelConfVenda, Global, UFrmPesqTPV, UFrmPesqVend, UFrmPesCaminhao,
  UPesquiCliente, UFrmRelVendaProd, UFrmSelRelConfVenda, UFrmRelSintCarga;

{$R *.dfm}

procedure TFrmSelSintCarga.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelSintCarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmSelSintCarga:=Nil;
//  FrmPrincipal.VEN014.Enabled:= True;
  FrmPrincipal.ACVEN014.Enabled := True;
  Action:=caFree;
end;


procedure TFrmSelSintCarga.LCamposClick(Sender: TObject);
begin
  SELPE:=0;

  CASE LCAMPOS.ItemIndex OF
    0:SELPE:=1;  // PESQ CLIENTE
    1:SELPE:=2;  // PESQ VENDEDOR
    2:SELPE:=3;  // PESQ TIPO PED VENDA
    4:SELPE:=4;  // PESQ PLACA
  END;

  BPESQ.Visible:=(SELPE>0);

end;

procedure TFrmSelSintCarga.FormActivate(Sender: TObject);
begin
  IF LCAMPOS.Items.Count=0 then
  BEGIN
    With LCampos.Items do
    begin
      Add('Cód. Cliente ');
      Add('Cód. Vendedor ');
      Add('Cód. Tipo de Pedido ');
      Add('Nº Pedido ');
      Add('Nº Placa Veículo ');
      Add('Qtd de Caixas');
      Add('Peso Líquido');
      Add('Peso Padrão ');
      Add('Status da Carga');
    end;
  END;

  DTini.Text := DateToStr(Date()+1);
  DtFim.Text := DateToStr(Date()+1);

//  PageControl1.Pages[1].Enabled := False;
  PageControl1.Pages[0].Show;
end;

procedure TFrmSelSintCarga.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmSelSintCarga.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmSelSintCarga.BtIncluirClick(Sender: TObject);
var
   Vre, CAIXA, PESOLIQUIDO, PESOBRUTO:String;
begin
  Case LCampos.itemindex of
    5:CAIXA:= '(SELECT SUM(Nvl(PVD.qn_embaexpepedivend,0)) FROM EXPEDICAO_CARGA EX ' +
        'INNER JOIN PEDIDO_VENDA PVD ON PVD.ID_CARGEXPE = EX.ID_CARGEXPE ' +
        'WHERE EX.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE) ';

    6:PESOLIQUIDO :=  '(SELECT SUM(Nvl(PVD.qn_pesorealexpepedivend,0)) FROM EXPEDICAO_CARGA EX ' +
        'INNER JOIN PEDIDO_VENDA PVD ON PVD.ID_CARGEXPE = EX.ID_CARGEXPE ' +
        'WHERE EX.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE) ';

    7:PESOBRUTO:=  '(SELECT SUM(Nvl(PVD.qn_pesopadrexpepedivend,0)) FROM EXPEDICAO_CARGA EX ' +
        'INNER JOIN PEDIDO_VENDA PVD ON PVD.ID_CARGEXPE = EX.ID_CARGEXPE ' +
        'WHERE EX.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE) ';
  end;


  If EdExpre.Text<>'' then
  Begin
    IF MResul.Lines.Count>0 then
    begin
      If RGeou.ItemIndex=0  then
      begin
        Vre:='AND ';
      end
      Else
      begin
        Vre:='OR ';
      end;
    end;

    Case LCampos.itemindex of
      0:Vre:=Vre + 'PEDIDO_VENDA.ID_CLIENTE';
      1:Vre:=Vre + 'PEDIDO_VENDA.ID_VENDEDOR';
      2:Vre:=Vre + 'PEDIDO_VENDA.ID_TIPOPEDIVEND ';
      3:Vre:=Vre + 'PEDIDO_VENDA.ID_PEDIVEND';
      4:Vre:=Vre + 'EXPEDICAO_CARGA.gn_placveictran';
      5:Vre:=Vre + CAIXA;
      6:Vre:=Vre + PESOLIQUIDO;
      7:Vre:=Vre + PESOBRUTO;
      8:Vre:=Vre + 'EXPEDICAO_CARGA.FL_STATCARGEXPE';
    end;

    Case CBCond.ItemIndex of
      0: Vre:=Vre + ' = ';
      1: Vre:=Vre + ' <> ';
      2: Vre:=Vre + ' > ';
      3: Vre:=Vre + ' >= ';
      4: Vre:=Vre + ' < ';
      5: Vre:=Vre + ' <= ';
      7: Vre:= ''''+ Vre + '''';
    end;

    Case LCampos.itemindex of
      4:Vre:=Vre + '''';
      8:Vre:=Vre + '''';
    end;

    Vre:= UpperCase(Vre + Edexpre.text);

    Case LCampos.itemindex of
      4:Vre:= Vre + '''';
      8:Vre:= Vre + '''';
    end;

     MResul.Lines.Add(Vre);

     EdExpre.Text :='';
     BtIncluir.Enabled:=false;
  end;

  BtAtivar.SetFocus;
end;

procedure TFrmSelSintCarga.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
Begin
  Screen.Cursor := crSQLWait;
  Qr.Close;

  WITH Qr.SQL DO
  BEGIN
    Clear;
    Add('SELECT EXPEDICAO_CARGA.dt_cargexpe, ');
    Add('(SUBSTR(EXPEDICAO_CARGA.gn_placveictran,1,3) || '' - '' || SUBSTR(EXPEDICAO_CARGA.gn_placveictran,4,4)) AS NO_PLACA, ');
    Add('EXPEDICAO_CARGA.id_cargexpe, EXPEDICAO_CARGA.QT_PESOBALANCAO, COUNT(EXPEDICAO_CARGA.id_cargexpe) AS QT_PEDCARGA, ');
    Add('SUM(Nvl(PEDIDO_VENDA.qn_pesorealexpepedivend,0)) AS QT_PESOLIQUIDO, SUM(Nvl(PEDIDO_VENDA.qn_embaexpepedivend,0)) AS QT_CAIXAS, ');
    Add('SUM(Nvl(PEDIDO_VENDA.qn_pesopadrexpepedivend+PEDIDO_VENDA.QN_TARAREALEXPEPEDIVEND,0)) AS QT_PESOBRUTO, ');
    Add('(EXPEDICAO_CARGA.QT_PESOBALANCAO -SUM(Nvl(PEDIDO_VENDA.qn_pesopadrexpepedivend+PEDIDO_VENDA.QN_TARAREALEXPEPEDIVEND,0))) AS QT_DIFPESO, ');
    Add('(CASE WHEN (SUM(Nvl(PEDIDO_VENDA.qn_pesorealexpepedivend,0))) > 0 then ');
    Add('     ROUND((((EXPEDICAO_CARGA.QT_PESOBALANCAO -SUM(Nvl(PEDIDO_VENDA.qn_pesopadrexpepedivend+PEDIDO_VENDA.QN_TARAREALEXPEPEDIVEND,0)))/SUM(Nvl(PEDIDO_VENDA.qn_pesopadrexpepedivend+PEDIDO_VENDA.QN_TARAREALEXPEPEDIVEND,0)))*100),4)');
    Add(' ELSE 0 END) AS QT_PERCENTUAL, ');
    Add('EXPEDICAO_CARGA.MOTORISTA, EXPEDICAO_CARGA.AJUDANTE, EXPEDICAO_CARGA.GN_OBSECARGEXPE, ');
    Add('EXPEDICAO_CARGA.HORASAIDA, EXPEDICAO_CARGA.VL_PAGO_MOTORISTA, EXPEDICAO_CARGA.VL_PAGO_AJUDANTE, EXPEDICAO_CARGA.VL_PAGO_CHAPA, ');
    Add('EXPEDICAO_CARGA.NM_CHAPA, ');
    Add('EXPEDICAO_CARGA.FL_STATCARGEXPE');
    Add('FROM PEDIDO_VENDA, EXPEDICAO_CARGA, CLIENTE, VENDEDOR     ');
    Add('WHERE     ');
    Add('(PEDIDO_VENDA.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE(+)) AND     ');
    Add('(PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE) AND     ');
    Add('(PEDIDO_VENDA.id_vendedor = VENDEDOR.ID_VENDEDOR) AND     ');
    Add('EXPEDICAO_CARGA.dt_cargexpe >= TO_DATE(''' + DTini.Text + ''',''' + 'DD/MM/YYYY' + '''' + ') AND ');
    Add('EXPEDICAO_CARGA.dt_cargexpe <= TO_DATE(''' + DTFim.Text + ''',''' + 'DD/MM/YYYY' + '''' + ')  ');
  end;

   XTM:=MResul.Lines.Count;

  If XTM >0 then
  begin
    Qr.SQL.Add(' AND ');
    Qr.SQL.Add(MResul.Text);
  end;

  Screen.Cursor := crSQLWait;

  Qr.SQL.Add(' GROUP BY EXPEDICAO_CARGA.dt_cargexpe,       ');
  Qr.SQL.Add('          EXPEDICAO_CARGA.ID_CARGEXPE,       ');
  Qr.SQL.Add('          EXPEDICAO_CARGA.gn_placveictran,   ');
  Qr.SQL.Add('          EXPEDICAO_CARGA.QT_PESOBALANCAO,   ');
  Qr.SQL.Add('          EXPEDICAO_CARGA.MOTORISTA,         ');
  Qr.SQL.Add('          EXPEDICAO_CARGA.AJUDANTE,          ');
  Qr.SQL.Add('          EXPEDICAO_CARGA.GN_OBSECARGEXPE,   ');
  Qr.SQL.Add('          EXPEDICAO_CARGA.HORASAIDA,         ');
  Qr.SQL.Add('          EXPEDICAO_CARGA.VL_PAGO_MOTORISTA, ');
  Qr.SQL.Add('          EXPEDICAO_CARGA.VL_PAGO_AJUDANTE,  ');
  Qr.SQL.Add('          EXPEDICAO_CARGA.VL_PAGO_CHAPA,     ');
  Qr.SQL.Add('          EXPEDICAO_CARGA.NM_CHAPA,          ');
  Qr.SQL.Add('          EXPEDICAO_CARGA.FL_STATCARGEXPE    ');
  Qr.SQL.Add(' ORDER BY EXPEDICAO_CARGA.DT_CARGEXPE, EXPEDICAO_CARGA.ID_CARGEXPE');
  Qr.Open;

  Screen.Cursor := crDefault;

//  PageControl1.Pages[1].Enabled := True;
  PageControl1.Pages[1].Show;
end;

procedure TFrmSelSintCarga.SB_PRINTClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Qr.DisableControls;
  FrmRelConfVenda:=TFrmRelConfVenda.Create(Self);
  FrmRelConfVenda.DT1.Caption := DTIni.Text ;
  FrmRelConfVenda.DT2.Caption := DtFim.Text ;

  Screen.Cursor := crDefault;
  FrmRelConfVenda.RLReport1.Preview(nil);
  Qr.EnableControls;
end;

procedure TFrmSelSintCarga.FormDestroy(Sender: TObject);
begin
  FrmSelRelConfVenda:=Nil;
end;

procedure TFrmSelSintCarga.BPESQClick(Sender: TObject);
begin
  XRPM:=2;
  FrmOriPesq:=17;
  CASE SELPE OF
   1:BEGIN
       FrmPesqCliente:=TFrmPesqCliente.Create(Self);
       FrmPesqCliente.ShowModal;
     END;
   2:BEGIN
       FrmPesqVend:=TFrmPesqVend.Create(Self);
       FrmPesqVend.ShowModal;
     END;
   3:BEGIN
       FrmPesqTPV:=TFrmPesqTPV.Create(Self);
       FrmPesqTPV.ShowModal;
     END;
   4:BEGIN
       FrmPesqCaminhao:= TFrmPesqCaminhao.Create(Self);
       FrmPesqCaminhao.ShowModal;
     END;
  end;

  BPESQ.Visible:=FALSE;

end;

procedure TFrmSelSintCarga.DTiniExit(Sender: TObject);
begin
  if DtFim.Text = '' then
    DtFim.Text := DTini.Text;
end;

procedure TFrmSelSintCarga.BtnImprimeClick(Sender: TObject);
begin
  FrmRelSintCarga:=TFrmRelSintCarga.Create(Self);

  if (DTIni.Text <> DtFim.Text) then
  begin
    FrmRelSintCarga.DT1.Caption := DTIni.Text ;
    FrmRelSintCarga.DT2.Caption := DtFim.Text ;
  end
  else
  begin
    FrmRelSintCarga.DT1.Visible := False;
    FrmRelSintCarga.DT2.Visible := False;
    FrmRelSintCarga.RLLabel35.Visible := False;
    FrmRelSintCarga.RLLabel37.Visible := False;
  end;

  FrmRelSintCarga.lblUsuario.Caption := gs_NomeUsuario;

//  FrmRelSintCarga.RLPrintDialogSetup1.Copies:=1;
  FrmRelSintCarga.RLReport1.Preview(nil);
end;

procedure TFrmSelSintCarga.BtnExcelClick(Sender: TObject);
var
  Arquivo: TextFile;
begin
  if Qr.RecordCount = 0 then
  begin
    Application.MessageBox('Não há registros para o período ou filtro selecionado.', PChar(FrmSelSintCarga.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end
  else
  begin
    Qr.Refresh;

    Screen.Cursor := crSQLWait;

    try
      dlgSaveArquivo.FileName := 'SINTETICO_DE_CARGA' + StringReplace(DTini.Text, '/', '.', [rfReplaceAll]) + '_' + StringReplace(DtFim.Text, '/', '.', [rfReplaceAll]) + '.csv';
      if dlgSaveArquivo.Execute then
      begin
        AssignFile(Arquivo, dlgSaveArquivo.FileName);
        Rewrite(Arquivo);

        Write(Arquivo, 'Status;');
        Write(Arquivo, 'Carga;');
        Write(Arquivo, 'Placa;');
        Write(Arquivo, 'Motorista;');
        Write(Arquivo, 'Diária;');
        Write(Arquivo, 'Ajudante;');
        Write(Arquivo, 'Diária;');
        Write(Arquivo, 'Chapa;');
        Write(Arquivo, 'Diária;');
        Write(Arquivo, 'Hr/Saída;');
        Write(Arquivo, 'Qtd Cxs;');
        Write(Arquivo, 'Kg Liq;');
        Write(Arquivo, 'Kg Bruto;');
        Write(Arquivo, 'Kg Balança;');
        Write(Arquivo, 'Dif Kg;');
        Writeln(Arquivo, '% Dif;');

        Qr.First;

        while not Qr.Eof do
        begin
          Write(Arquivo, QrFL_STATCARGEXPE.AsString + ';');
          Write(Arquivo, QrID_CARGEXPE.AsString + ';');
          Write(Arquivo, QrNO_PLACA.AsString + ';');
          Write(Arquivo, QrMOTORISTA.AsString + ';');
          Write(Arquivo, QrVL_PAGO_AJUDANTE.AsString + ';');
          Write(Arquivo, QrAJUDANTE.AsString + ';');
          Write(Arquivo, QrVL_PAGO_MOTORISTA.AsString + ';');
          Write(Arquivo, QrNM_CHAPA.AsString + ';');
          Write(Arquivo, QrVL_PAGO_CHAPA.AsString + ';');

          Write(Arquivo, QrHORASAIDA.AsString + ';');
          Write(Arquivo, QrQT_CAIXAS.AsString + ';');
          Write(Arquivo, QrQT_PESOLIQUIDO.AsString + ';');
          Write(Arquivo, QrQT_PESOBRUTO.AsString + ';');
          Write(Arquivo, QrQT_PESOBALANCAO.AsString + ';');
          Write(Arquivo, QrQT_DIFPESO.AsString + ';');
          Writeln(Arquivo, QrQT_PERCENTUAL.AsString + ';');

          Qr.Next;
        end;

        CloseFile(Arquivo);
        Application.MessageBox(PChar('Arquivo gerado com sucesso em ' + dlgSaveArquivo.FileName), PChar(FrmSelSintCarga.Caption), MB_OK + MB_ICONINFORMATION);
      end;
    except
      MessageDlg('Erro ao gerar o arquivo. Verifique se o local de destino existe e está acessível.', mtError, [mbOK], 0);
    end;

    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSelSintCarga.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with DBGrid1 do
  begin
    if Odd( DataSource.DataSet.RecNo) then
      Canvas.Brush.Color := $00FFF2D9
    else
      Canvas.Brush.Color := clBackground;

    Canvas.Font.Color  := clBlack;
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);

  end;

  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($00CEE7FF);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

end.



