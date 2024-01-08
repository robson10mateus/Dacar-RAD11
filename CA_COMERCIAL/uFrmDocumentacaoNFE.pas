unit uFrmDocumentacaoNFE;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, Grids, DBGrids,
  DB, Ora, MemDS, DBAccess, Menus, Winapi.Windows;

type
  TfrmDocumentacaoNFE = class(TForm)
    pnlBotoes: TPanel;
    PageControl1: TPageControl;
    tbsFiltros: TTabSheet;
    tbsDetalhes: TTabSheet;
    pnlFiltros: TPanel;
    lblDataEntrega: TLabel;
    edtDataEntrega: TEdit;
    btnDataEntrega: TBitBtn;
    lblNumCarga: TLabel;
    edtNumCarga: TEdit;
    btnNumCarga: TBitBtn;
    lblPlacaVeiculo: TLabel;
    edtPlacaVeiculo: TEdit;
    btnPlacaVeiculo: TBitBtn;
    edtVeiculoDescricao: TEdit;
    grdDetalhes: TDBGrid;
    grdFiltro: TDBGrid;
    btnConsultar: TSpeedButton;
    btnFechar: TSpeedButton;
    btnImprimir: TSpeedButton;
    qryCargas: TOraQuery;
    dtsCargas: TOraDataSource;
    qryCargaPedidos: TOraQuery;
    dtsCargaPedidos: TOraDataSource;
    pnlDetalhes: TPanel;
    qryCargaPedidosID_PEDIVEND: TFloatField;
    qryCargaPedidosNR_NOTAFISC: TFloatField;
    qryCargaPedidosID_CLIENTE: TFloatField;
    qryCargaPedidosNM_CLIENTE: TStringField;
    qryCargaPedidosID_VENDEDOR: TFloatField;
    qryCargaPedidosNM_VENDEDOR: TStringField;
    qryCargasID_CARGEXPE: TFloatField;
    qryCargasGN_PLACVEICTRAN: TStringField;
    qryCargasPLACA: TStringField;
    qryCargasMOTORISTA: TStringField;
    qryCargasDT_ENTRPEDIVEND: TDateTimeField;
    qryCargasQT_PESOBALANCAO: TFloatField;
    qryCargasTT_PEDIDO: TFloatField;
    qryCargasTT_CAIXAS: TFloatField;
    qryCargaPedidosID_CARGEXPE: TFloatField;
    sqlGeraAutorizacao: TOraSQL;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    chkAutorizacao: TCheckBox;
    chkBoleto: TCheckBox;
    chkCanhoto: TCheckBox;
    chkValeCaixa: TCheckBox;
    chkDANFE: TCheckBox;
    qryCargasID_VEICTRAN: TFloatField;
    qryTemp: TOraQuery;
    qryCargaPedidosID_VALE: TFloatField;
    SelectGrid: TPopupMenu;
    mnu_Todos: TMenuItem;
    SQL_ImpVale: TOraSQL;
    qryCargasNR_ULTIMO_KM: TFloatField;
    qryCargasID_MOTORISTA: TIntegerField;
    procedure btnDataEntregaClick(Sender: TObject);
    procedure grdDetalhesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdFiltroDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdFiltroTitleClick(Column: TColumn);
    procedure grdDetalhesTitleClick(Column: TColumn);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure mnu_TodosClick(Sender: TObject);
    procedure btnNumCargaClick(Sender: TObject);
    procedure edtNumCargaExit(Sender: TObject);
    procedure edtPlacaVeiculoExit(Sender: TObject);
    procedure btnPlacaVeiculoClick(Sender: TObject);

  private
    { Private declarations }
    procedure pPesquisaCargas;
  public
    { Public declarations }
    Vdtstr:STRING;
    pRegAtual : TBookmark;
  end;

var
  frmDocumentacaoNFE: TfrmDocumentacaoNFE;

implementation

uses Principal, UFrmSeldata, GLOBAL, UFrmRelSaidaCarga, ufrmCanhotosNfe,
  UFrmRelValeCaixa, UFrmPesquisaCargas, UFrmPesCaminhao;

{$R *.dfm}

procedure TfrmDocumentacaoNFE.btnDataEntregaClick(Sender: TObject);
begin
  Cria_FrmSelData(Vdtstr);
  edtDataEntrega.Text:= Vdtstr;
end;

procedure TfrmDocumentacaoNFE.grdDetalhesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= clSilver;

  grdDetalhes.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TfrmDocumentacaoNFE.grdFiltroDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= clSilver;

  grdFiltro.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TfrmDocumentacaoNFE.grdFiltroTitleClick(Column: TColumn);
begin
  qryCargas.IndexFieldNames := Column.FieldName;
end;

procedure TfrmDocumentacaoNFE.grdDetalhesTitleClick(Column: TColumn);
begin
  qryCargaPedidos.IndexFieldNames := Column.FieldName;
end;

procedure TfrmDocumentacaoNFE.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDocumentacaoNFE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.VEN063.Enabled := True;
  Action := Cafree;
end;

procedure TfrmDocumentacaoNFE.btnConsultarClick(Sender: TObject);
begin
  pPesquisaCargas;
end;

procedure TfrmDocumentacaoNFE.pPesquisaCargas;
var
  sWhere, sCargas : string;
  i: Integer;
begin
  sWhere  := '';
  qryCargas.Close;
  qryCargaPedidos.Close;
  qryCargas.SQL.Clear;
  qryCargaPedidos.SQL.Clear;

  if (Trim(edtDataEntrega.Text) = '') then
  begin
    Application.MessageBox('Data de Entrega deve ser preenchida.', PChar(frmDocumentacaoNFE.Caption), MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  sWhere := ' WHERE (TRUNC(PV.DT_ENTRPEDIVEND) = TO_DATE(''' + edtDataEntrega.Text + ''',''DD/MM/YYYY'' ))';

  if edtNumCarga.Text <> '' then
    sWhere := sWhere + ' AND C.ID_CARGEXPE = ' + edtNumCarga.Text;

  if edtPlacaVeiculo.Text <> '' then
    sWhere := sWhere + ' AND C.GN_PLACVEICTRAN = ''' + edtPlacaVeiculo.Text + '''';

  qryCargaPedidos.SQL.Add('SELECT DISTINCT C.ID_CARGEXPE, PV.ID_PEDIVEND, NF.NR_NOTAFISC, CL.ID_CLIENTE, CL.NM_CLIENTE, PV.ID_VENDEDOR, V.NM_VENDEDOR, VC.ID_VALE');
  qryCargaPedidos.SQL.Add('FROM EXPEDICAO_CARGA_ITEM CI');
  qryCargaPedidos.SQL.Add('INNER JOIN EXPEDICAO_CARGA C ON (C.ID_CARGEXPE = CI.ID_CARGEXPE)');
  qryCargaPedidos.SQL.Add('INNER JOIN PEDIDO_VENDA PV ON (PV.ID_PEDIVEND = CI.ID_PEDIVEND AND PV.FL_PNF = ''N'')');
  qryCargaPedidos.SQL.Add('INNER JOIN PEDIDO_VENDA_NOTA_FISCAL PVN ON (PVN.ID_PEDIVEND = PV.ID_PEDIVEND)');
  qryCargaPedidos.SQL.Add('INNER JOIN NOTA_FISCAL NF ON (NF.ID_NOTAFISC = PVN.ID_NOTAFISC)');
  qryCargaPedidos.SQL.Add('INNER JOIN VENDEDOR V ON (V.ID_VENDEDOR = PV.ID_VENDEDOR)');
  qryCargaPedidos.SQL.Add('INNER JOIN CLIENTE CL ON (CL.ID_CLIENTE = PV.ID_CLIENTE)');
  qryCargaPedidos.SQL.Add('LEFT JOIN VALE_CAIXA VC ON (VC.ID_PEDIDO = PV.ID_PEDIVEND)');
  qryCargaPedidos.SQL.Add(sWhere);
  qryCargaPedidos.SQL.Add('GROUP BY C.ID_CARGEXPE, PV.ID_PEDIVEND, NF.NR_NOTAFISC, CL.ID_CLIENTE, CL.NM_CLIENTE, PV.ID_VENDEDOR, V.NM_VENDEDOR, VC.ID_VALE');
  qryCargaPedidos.SQL.Add('ORDER BY PV.ID_PEDIVEND');

  qryCargaPedidos.ExecSQL;
  qryCargaPedidos.Open;
  qryCargaPedidos.First;

  if qryCargaPedidos.RecordCount > 0 then
  begin
    for i:=0 to qryCargaPedidos.RecordCount - 1 do
    begin
      if Pos(qryCargaPedidos.Fieldbyname('ID_CARGEXPE').AsString, sCargas) <= 0 then
      begin
        if sCargas <> '' then
          sCargas := sCargas + ',';

        sCargas := sCargas + qryCargaPedidos.Fieldbyname('ID_CARGEXPE').AsString;
      end;
      qryCargaPedidos.Next;
    end;

    qryCargas.SQL.Add('SELECT DISTINCT CA.ID_CARGEXPE, CA.GN_PLACVEICTRAN, SUBSTR(CA.GN_PLACVEICTRAN,1,3)||'' - ''||SUBSTR(CA.GN_PLACVEICTRAN,4,4) AS PLACA, TV.ID_VEICTRAN,');
    qryCargas.SQL.Add('TV.NR_ULTIMO_KM, CA.MOTORISTA, PV.DT_ENTRPEDIVEND, CA.QT_PESOBALANCAO, COUNT(DISTINCT PV.ID_PEDIVEND) AS TT_PEDIDO, SUM(CI.QN_EMBAEXPEITEMCARGEXPE) AS TT_CAIXAS, ');
    qryCargas.SQL.Add('CA.ID_MOTORISTA FROM EXPEDICAO_CARGA_ITEM CI');
    qryCargas.SQL.Add('INNER JOIN EXPEDICAO_CARGA CA ON (CA.ID_CARGEXPE = CI.ID_CARGEXPE)');
    qryCargas.SQL.Add('INNER JOIN PEDIDO_VENDA PV ON (PV.ID_PEDIVEND = CI.ID_PEDIVEND)');
    qryCargas.SQL.Add('INNER JOIN PEDIDO_VENDA_NOTA_FISCAL PVN ON (PVN.ID_PEDIVEND = PV.ID_PEDIVEND)');
    qryCargas.SQL.Add('INNER JOIN NOTA_FISCAL NF ON (NF.ID_NOTAFISC = PVN.ID_NOTAFISC)');
    qryCargas.SQL.Add('INNER JOIN TRANSPORTADOR_VEICULO TV ON (TV.GN_PLACVEICTRAN = CA.GN_PLACVEICTRAN)');
    qryCargas.SQL.Add('WHERE CA.ID_CARGEXPE IN (' + sCargas + ')');
    qryCargas.SQL.Add('GROUP BY CA.ID_CARGEXPE, CA.GN_PLACVEICTRAN, TV.ID_VEICTRAN, TV.NR_ULTIMO_KM, CA.ID_MOTORISTA, CA.MOTORISTA, PV.DT_ENTRPEDIVEND, CA.QT_PESOBALANCAO');
    qryCargas.SQL.Add('ORDER BY PV.DT_ENTRPEDIVEND, CA.ID_CARGEXPE');
    qryCargas.ExecSQL;
    qryCargas.Open;
    qryCargas.First;
  end;
end;

procedure TfrmDocumentacaoNFE.FormShow(Sender: TObject);
begin
  FrmOriPesq:= 63;
  edtDataEntrega.Text := DateToStr(now);
  pPesquisaCargas;
end;

procedure TfrmDocumentacaoNFE.PageControl1Change(Sender: TObject);
begin
  pRegAtual:= 0;

  if tbsDetalhes.Showing then
  begin
    qryCargaPedidos.Filtered := False;
    qryCargaPedidos.Filter := ' ID_CARGEXPE = ' + qryCargasID_CARGEXPE.AsString;
    qryCargaPedidos.Filtered := True;
    qryCargaPedidos.First;
    btnImprimir.Enabled:= True;
  end
  else
  begin
    qryCargaPedidos.Filtered := False;
    qryCargaPedidos.Filter := '';
    qryCargaPedidos.Filtered := True;
    qryCargaPedidos.First;
    btnImprimir.Enabled:= False;
  end;
end;

procedure TfrmDocumentacaoNFE.btnImprimirClick(Sender: TObject);
var
  i, li_Loop, iLoop : integer;
  sCidade: string;
begin
  if chkAutorizacao.Checked then
  begin
    qryTemp.Close;
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('SELECT CO_CONTROLE_VEICULOS, DT_SAIDA FROM DACAR_CONTROLE_VEICULOS WHERE FL_RETORNO = ''N'' AND ID_VEICULO = ' + qryCargasID_VEICTRAN.AsString);
    qryTemp.ExecSQL;
    qryTemp.Open;

    if qryTemp.RecordCount > 0 then
    begin
      MessageDlg('Não é permitido uma nova Autorização para o Veículo ' + qryCargasGN_PLACVEICTRAN.AsString + ', pois a Saída Nº ' + qryTemp.fieldByName('CO_CONTROLE_VEICULOS').AsString +
                 ' do dia ' + FormatDateTime('DD/MM/YYYY', qryTemp.fieldByName('DT_SAIDA').AsDateTime) + ', não foi dado o Retorno.' +  #10#10 +
                 'Favor ajustar o Retorno, para que possa ser lançada uma nova Autorização de Saída.',mtInformation, [mbok], 0);
      Exit;
    end;

    if Application.MessageBox('Confirma Geração de Autorização de Saída?', PChar(frmDocumentacaoNFE.Caption), MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      try
        FrmRelSaidaCarga:=TFrmRelSaidaCarga.Create(Self);
        FrmRelSaidaCarga.RLReport1.PrintDialog := True;
        FrmRelSaidaCarga.QrSAIDACARGA.Close;
        FrmRelSaidaCarga.QrSAIDACARGA.ParamByName('VCARGA').AsFloat := qryCargas.FieldByName('ID_CARGEXPE').AsInteger;
        FrmRelSaidaCarga.QrSAIDACARGA.Open;

        if FrmRelSaidaCarga.QrSAIDACARGA.RecordCount > 0 then
        begin
          for i:=0 to FrmRelSaidaCarga.QrSAIDACARGA.RecordCount - 1 do
          begin
            if Pos(FrmRelSaidaCarga.QrSAIDACARGA.Fieldbyname('NM_CIDADE').AsString, sCidade) <= 0 then
            begin
              if sCidade <> '' then
                sCidade := sCidade + ', ';

              sCidade := sCidade + FrmRelSaidaCarga.QrSAIDACARGA.Fieldbyname('NM_CIDADE').AsString;
            end;
            FrmRelSaidaCarga.QrSAIDACARGA.Next;
          end;
        end;

        FrmRelSaidaCarga.lblTransportadora.Caption := FrmRelSaidaCarga.QrSAIDACARGAID_FORNECEDOR.AsString + ' - ' + FrmRelSaidaCarga.QrSAIDACARGANM_FORNECEDOR.AsString;
        FrmRelSaidaCarga.lblAutorizado.Caption := gs_NomeUsuario;
        FrmRelSaidaCarga.lblDDataHora_Autorizacao.Caption := DateTimeToStr(Now);
        FrmRelSaidaCarga.lblMotorista.Caption := UpperCase(qryCargasMOTORISTA.AsString);
        FrmRelSaidaCarga.lblAssMotorista.Caption := UpperCase(qryCargasMOTORISTA.AsString);
        FrmRelSaidaCarga.lblAssAutorizante.Caption := gs_NomeUsuario;
        FrmRelSaidaCarga.RLMemo1.Lines.Add('EU, ' + UpperCase(qryCargasMOTORISTA.AsString) + ', DECLARO QUE POSSUO HABILITAÇÃO VÁLIDA E COMPATIVEL ' +
                                                        'PARA A CONDUÇÃO DESTE VEÍCULO. O VEÍCULO ESTA DEVIDAMENTE ACOMPANHADO DE SEUS ACESSÓRIOS, MUNIDO DE DOCUMENTAÇÃO, ' +
                                                        'E EM CONDIÇÕES SEGURAS DE VIAGEM.');
//        FrmRelSaidaCarga.RLPrintDialogSetup1.Copies := 1;
        FrmRelSaidaCarga.RLReport1.Preview;

        if Application.MessageBox('Autorização de Saída foi impressa corretamente?', PChar(frmDocumentacaoNFE.Caption), MB_YESNO + MB_ICONWARNING) = IDYES then
        begin
          qryTemp.Close;
          qryTemp.SQL.Clear;
          qryTemp.SQL.Text := 'SELECT COUNT(CO_CONTROLE_VEICULOS) FROM DACAR_CONTROLE_VEICULOS WHERE ID_CARGA_IMPRESSA = ' + qryCargasID_CARGEXPE.AsString;
          qryTemp.Open;

          if qryTemp.FieldByName('COUNT(CO_CONTROLE_VEICULOS)').Value = 0 then
          begin
            sqlGeraAutorizacao.SQL.Clear;
            sqlGeraAutorizacao.SQL.Text := 'INSERT INTO DACAR_CONTROLE_VEICULOS (CO_CONTROLE_VEICULOS,ID_VEICULO,ID_MOTORISTA,NO_DESTINO,NO_MOTIVO,' +
                                         'DT_AUTORIZACAO,NO_HORA_AUTORIZACAO,ID_USUARIO_AUTORIZA, ID_CARGA_IMPRESSA, OP_TIPO) '+
                                         'VALUES(CO_CONTROLE_VEICULOS.NEXTVAL, '+ qryCargasID_VEICTRAN.AsString + ', ' + qryCargasID_MOTORISTA.AsString + ', ''' +
                                         Copy(sCidade,1,150) + ''', ''ENTREGA DE MERCADORIA'', ' +
                                         'SYSDATE, TO_CHAR(SYSDATE,''HH24:MI:SS''), ' +
                                         IntToStr(gi_IdenUsua) + ', ' + qryCargasID_CARGEXPE.AsString +', ''E'')';
            sqlGeraAutorizacao.Execute;
          end;
        end;
      except;
        FrmRelSaidaCarga.Free;
        Application.MessageBox(PChar('Não foi possível imprimir a Carga Nº ' + qryCargasID_CARGEXPE.AsString + '.'), PChar(frmDocumentacaoNFE.Caption), MB_OK + MB_ICONINFORMATION);
        Exit;
      end;
    end;
  end;

  if chkCanhoto.Checked then
  begin
    if grdDetalhes.SelectedRows.Count = 0 then
    begin
      MessageDlg('Nenhum pedido foi selecionado para impressão do Canhoto.' + #13 + 'Por favor, verifique !', mtInformation, [mbOK], 0);
      Abort;
    end;
    // Posicionamos no registro a ser impresso
    pRegAtual := qryCargaPedidos.GetBookmark;

    // Confirmação de impressão
    if Application.MessageBox('Confirma Impressão do Canhoto?', PChar(frmDocumentacaoNFE.Caption), MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      try
        frmCanhotosNfe:= TfrmCanhotosNfe.Create(Self);
        frmCanhotosNfe.qryCanhotosNfe.Close;
        frmCanhotosNfe.qryCanhotosNfe.ParamByName('ID_CARGEXPE').Value := qryCargasID_CARGEXPE.Value;
        frmCanhotosNfe.qryCanhotosNfe.Open;

        frmCanhotosNfe.RLLabel5.Caption := 'RELAÇÃO DAS NOTAS FISCAIS REFERENTE A CARGA Nº ' + qryCargasID_CARGEXPE.AsString;
//        frmCanhotosNfe.RLPrintDialogSetup1.Copies := 1;
        frmCanhotosNfe.RLReport1.Preview;

      Finally
        frmCanhotosNfe.RLReport1.Free;
      End;
    end;
    qryCargaPedidos.Refresh;
    qryCargaPedidos.GotoBookmark(pRegAtual);

  end;

  if chkValeCaixa.Checked then
  begin
    if MessageDlg ('Confirma Impressão do vale do(s)' + #13 + '    Pedido(s) Selecionado(s) ?', mtConfirmation, [mbOk, mbCancel], 0) = mrOk then
    begin
      // Posicionamos no registro a ser impresso
      pRegAtual := qryCargaPedidos.GetBookmark;

      For li_Loop := 0 to grdDetalhes.SelectedRows.Count - 1 do
      begin
        grdDetalhes.DataSource.DataSet.GotoBookmark(grdDetalhes.SelectedRows.Items[li_Loop]);
        if ( qryCargaPedidosID_VALE.Value =  0 ) then
        begin
          Continue;
        end;

        try
          FrmRelValeCaixa := TFrmRelValeCaixa.Create(Self);
          FrmRelValeCaixa.Qr_Vale.Close;
          FrmRelValeCaixa.Qr_Vale.ParamByName('ID_VALE').Value := qryCargaPedidosID_VALE.Value;
          FrmRelValeCaixa.Qr_Vale.Open;
          FrmRelValeCaixa.lbl_Unidade.Caption  := dadosCadastraisFilial.NomeFilial;
          FrmRelValeCaixa.lbl_Unidade1.Caption := dadosCadastraisFilial.NomeFilial;
          FrmRelValeCaixa.lbl_Rua.caption      := dadosCadastraisFilial.Endereco +', '+ dadosCadastraisFilial.Numero ;
          FrmRelValeCaixa.lbl_Rua1.caption     := dadosCadastraisFilial.Endereco +', '+ dadosCadastraisFilial.Numero ;
          FrmRelValeCaixa.lbl_Bairro.caption   := dadosCadastraisFilial.Bairro +', '+ dadosCadastraisFilial.Cidade +' - '+ dadosCadastraisFilial.UF ;
          FrmRelValeCaixa.lbl_Bairro1.caption  := dadosCadastraisFilial.Bairro +', '+ dadosCadastraisFilial.Cidade +' - '+ dadosCadastraisFilial.UF ;
          FrmRelValeCaixa.Lbl_Fone.caption     := dadosCadastraisFilial.Fone;
          FrmRelValeCaixa.Lbl_Fone1.caption    := dadosCadastraisFilial.Fone;
          FrmRelValeCaixa.Lbl_CEP.caption      := 'CEP : 18.530-000';
          FrmRelValeCaixa.Lbl_CEP1.caption     := 'CEP : 18.530-000';
          FrmRelValeCaixa.Lbl_CNPJ.caption     := 'CNPJ : '+dadosCadastraisFilial.Cnpj;
          FrmRelValeCaixa.Lbl_CNPJ1.caption    := 'CNPJ : '+dadosCadastraisFilial.Cnpj;
          FrmRelValeCaixa.lbl_IE.caption       := 'IE : '+dadosCadastraisFilial.InscricaoEstadual;
          FrmRelValeCaixa.lbl_IE1.caption      := 'IE : '+dadosCadastraisFilial.InscricaoEstadual;
          FrmRelValeCaixa.RLReport1.PrintDialog := False;
          FrmRelValeCaixa.RLReport1.Print;
        Finally
          FrmRelValeCaixa.RLReport1.Free;
        End;

        SQL_ImpVale.ParamByName('ID_VALE').Value := qryCargaPedidosID_VALE.Value;
        SQL_ImpVale.Execute;
      end;
    end;
    qryCargaPedidos.Refresh;
    qryCargaPedidos.GotoBookmark(pRegAtual);
  end;
end;

procedure TfrmDocumentacaoNFE.mnu_TodosClick(Sender: TObject);
var
  vlLinha: Integer;
begin
  with grdDetalhes.DataSource.DataSet do
  begin
    DisableControls;
    First;
    for vlLinha := 0 to RecordCount - 1 do
    begin
      grdDetalhes.SelectedRows.CurrentRowSelected := True;
      Next;
    end;
    EnableControls;
  end;
  grdDetalhes.SelectedRows.Refresh;
end;

procedure TfrmDocumentacaoNFE.btnNumCargaClick(Sender: TObject);
begin
  frmPesquisaCargas:=TfrmPesquisaCargas.Create(Self);
  frmPesquisaCargas.ShowModal;
end;

procedure TfrmDocumentacaoNFE.edtNumCargaExit(Sender: TObject);
begin
  pPesquisaCargas;
end;

procedure TfrmDocumentacaoNFE.edtPlacaVeiculoExit(Sender: TObject);
begin
  if edtPlacaVeiculo.Text = '' then
    edtVeiculoDescricao.Text := '';

  pPesquisaCargas;
end;

procedure TfrmDocumentacaoNFE.btnPlacaVeiculoClick(Sender: TObject);
begin
  FrmPesqCaminhao:=TFrmPesqCaminhao.Create(Self);
  FrmPesqCaminhao.ShowModal;
end;

end.






