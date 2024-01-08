unit UFrmPesCaminhao;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DB, Ora, MemDS, DBAccess,
  ExtCtrls, UFrmModelPesqui, Winapi.Windows;

type
  TFrmPesqCaminhao = class(TForm)
    DBGrid1: TDBGrid;
    QrCam: TOraQuery;
    DSCam: TOraDataSource;
    QrCamGN_PLACVEICTRAN: TStringField;
    QrCamQN_FATOFRETABATVEICTRAN: TFloatField;
    QrCamID_FORNECEDOR: TFloatField;
    QrCamNM_FORNECEDOR: TStringField;
    QrCamFL_RASTVEICTRAN: TStringField;
    QrCamQN_CAPATIPOVEIC: TFloatField;
    QrCamVL_QUILFRETABAT: TFloatField;
    pnlBotoes: TPanel;
    pnlFiltros: TPanel;
    QrPlacaCarga: TOraQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Label1: TLabel;
    EdExpre: TEdit;
    QrCamNM_PLACA: TStringField;
    QrCamID_VEICTRAN: TFloatField;
    QrCamNM_VEICTRAN: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormShortCut(Key: Integer; Shift: TShiftState;
      var Handled: Boolean);
  private
    { Private declarations }
  public
     VCAMPO:STRING;
     VCONDI:STRING;
     VEXPRE:STRING;
     XRESUL:STRING;
     VORIGEM:INTEGER;
  end;

var
  FrmPesqCaminhao: TFrmPesqCaminhao;

implementation

uses global, UfrmMontaCarga, UFrmCargaNF, Principal, UFrmParamComercial, UFrmSelSintCarga,
  UfrmPedVenda, UFrmSelRelConfVenda, UFrmSelVenProd, UfrmImpDocPed, UfrmControleCaixas,
  UFrmAlteracaoPlaca,UFrmConferenciaCarga, UFrmSelQuebr, uFrmDocumentacaoNFE, UFrmPediDevoVend, UFrmEntradaSaidaCaixas;

{$R *.dfm}

procedure TFrmPesqCaminhao.BitBtn3Click(Sender: TObject);
begin
  if VORIGEM=5 then
  begin
    FrmAlteracaoPlaca.ID_FORNECEDOR   := 0;
    FrmAlteracaoPlaca.GN_PLACVEICTRAN := '';
    FrmAlteracaoPlaca.VL_QUILFRETABAT := 0;
  End;

  close;
end;

procedure TFrmPesqCaminhao.BitBtn1Click(Sender: TObject);
begin
  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='UPPER(M.GN_PLACVEICTRAN)';
    1:VCAMPO:='F.ID_FORNECEDOR';
    2:VCAMPO:='UPPER(F.NM_FORNECEDOR)';
  END;

  VEXPRE:=EdExpre.Text;
  QrCam.Close;
  //metal usa tipo_frete = 15 - Genérico
  WITH QrCam.SQL DO
  BEGIN
    Clear;
    ADD('SELECT M.GN_PLACVEICTRAN, M.QN_FATOFRETABATVEICTRAN, F.ID_FORNECEDOR, F.NM_FORNECEDOR, M.FL_RASTVEICTRAN, VEI.QN_CAPATIPOVEIC,');
    ADD('FR.VL_QUILFRETABAT, M.ID_VEICTRAN, SUBSTR(M.GN_PLACVEICTRAN,1,3) || '' - '' || SUBSTR(M.GN_PLACVEICTRAN,4,4) AS NM_PLACA,');
    ADD(' (CASE WHEN M.OP_MODELO = ''TQ'' then');
    ADD('''3/4''');
    ADD(' WHEN M.OP_MODELO = ''TC'' then');
    ADD('   ''TOCO''');
    ADD(' WHEN M.OP_MODELO = ''TR'' then');
    ADD('   ''TRUCK''');
    ADD(' WHEN M.OP_MODELO = ''CC'' then');
    ADD('   ''CARROCERIA''');
    ADD(' WHEN M.OP_MODELO = ''OT'' then');
    ADD('   ''OUTROS''');
    ADD(' END) AS MODELO, M.NM_VEICTRAN');
    ADD('FROM FORNECEDOR F, TRANSPORTADOR_VEICULO M, VEICULO_TIPO VEI, FRETE_ABATIDO FR');
    ADD('WHERE (M.ID_FORNECEDOR_TRANSPORTADOR = F.ID_FORNECEDOR) ');
    ADD('AND (M.ID_TIPOVEIC = VEI.ID_TIPOVEIC)');
    ADD('AND (M.ID_TIPOVEIC = FR.ID_TIPOVEIC) ');
    ADD('AND (M.fl_ativveictran = ''S'')');
    ADD(' AND ');

    CASE ComboBox2.ItemIndex OF
      1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
      0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    Add('ORDER BY F.ID_FORNECEDOR, F.NM_FORNECEDOR, M.GN_PLACVEICTRAN');

  END;

  QrCam.Open;
  QrCam.Refresh;
  DBGrid1.SetFocus;

end;

procedure TFrmPesqCaminhao.BitBtn2Click(Sender: TObject);
begin
  TRY
    case VORIGEM OF
      1..2:
      begin
        // Verificamos se o veículo selecionado já foi utilizado em outra carga
        QrPlacaCarga.Close;
        QrPlacaCarga.Parambyname('VIDVEIC').AsSTRING := QrCam.FieldByName('GN_PLACVEICTRAN').AsSTRING;
        IF VORIGEM=2 then
          QrPlacaCarga.Parambyname('VDATA').AsDate := StrToDate(FrmCargaNF.edtDataCarg.TEXT)
        ELSE
          QrPlacaCarga.Parambyname('VDATA').AsDate := StrToDate(FrmMontaCarga.edtDataCarg.TEXT);

        QrPlacaCarga.Open;

        If not QrPlacaCarga.IsEmpty then
          begin
            //If MessageDlg('O veículo selecionado já foi utilizado em outra carga ! Confirma a Placa selecionada?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrNo then
            if (Application.MessageBox('O veículo selecionado já foi utilizado em outra carga! Confirma a Placa selecionada?', 'Comercial Dacar - Pesquisa de Veículos', MB_YESNO + MB_ICONINFORMATION) = IDNO) then
            begin
              EdExpre.SetFocus;
              Exit;
            end;
          end;

        IF VORIGEM=2 then
        BEGIN
         WITH FrmCargaNF DO
          BEGIN
            QryForm.FieldByName('NM_FORNECEDOR').AsString := QrCam.FieldByName('NM_FORNECEDOR').AsString;
            QryForm.FieldByName('GN_PLACVEICTRAN').AsString := QrCam.FieldByName('GN_PLACVEICTRAN').AsString;
            QryForm.FieldByName('ID_ITEMPROGCAMI').AsFloat := QrCam.FieldByName('ID_FORNECEDOR').AsFloat;
            QryForm.FieldByName('VL_UNITFRETCARGEXPE').AsFloat := QrCam.FieldByName('VL_QUILFRETABAT').AsFloat;
          END;
        END
        ELSE
        BEGIN
          FrmMontaCarga.VFatoFreteCam := QrCam.FieldByName('QN_FATOFRETABATVEICTRAN').AsFloat;
          FrmMontaCarga.VQNCAPA := QrCam.FieldByName('QN_CAPATIPOVEIC').AsFloat;
          FrmMontaCarga.QryForm.FieldByName('NM_FORNECEDOR').AsString := QrCam.FieldByName('NM_FORNECEDOR').AsString;
          FrmMontaCarga.QryForm.FieldByName('GN_PLACVEICTRAN').AsString := QrCam.FieldByName('GN_PLACVEICTRAN').AsString;
          FrmMontaCarga.QryForm.FieldByName('ID_ITEMPROGCAMI').AsFloat := QrCam.FieldByName('ID_FORNECEDOR').AsFloat;
          FrmMontaCarga.QryForm.FieldByName('VL_UNITFRETCARGEXPE').AsFloat := QrCam.FieldByName('VL_QUILFRETABAT').AsFloat;
        END;
      end;

      3:
      begin
        With FrmParamComercial do
        Begin
          Qr.FieldByName('QN_FATOFRETABATVEICTRAN').AsFloat := QrCam.FieldByName('QN_FATOFRETABATVEICTRAN').AsFloat;
          Qr.FieldByName('QN_CAPATIPOVEIC').AsFloat := QrCam.FieldByName('QN_CAPATIPOVEIC').AsFloat;
          Qr.FieldByName('GN_PLACVEICTRAN').AsString := QrCam.FieldByName('GN_PLACVEICTRAN').AsString;
          Qr.FieldByName('VL_QUILFRETABAT').AsFloat := QrCam.FieldByName('VL_QUILFRETABAT').AsFloat;
          Qr.FieldByName('ID_FORNECEDOR_TRANSPORTADOR').AsFloat := QrCam.FieldByName('ID_FORNECEDOR').AsFloat;
        end;
      end;

      4:
      begin
        FrmPedVenda.QPediVe.FieldByName('ID_FORNECEDOR').AsFloat := QrCam.FieldByName('ID_FORNECEDOR').AsFloat;
        FrmPedVenda.QPediVe.FieldByName('NM_FORNECEDOR').AsString := QrCam.FieldByName('NM_FORNECEDOR').AsString;
        FrmPedVenda.QPediVe.FieldByName('GN_PLACVEICTRAN').AsString := QrCam.FieldByName('GN_PLACVEICTRAN').AsString;
        FrmPedVenda.VKGFRETE := QrCam.FieldByName('VL_QUILFRETABAT').AsFloat;
      end;

      5:
      begin
        FrmAlteracaoPlaca.ID_FORNECEDOR   := QrCam.FieldByName('ID_FORNECEDOR').AsInteger;
        FrmAlteracaoPlaca.GN_PLACVEICTRAN := QrCam.FieldByName('GN_PLACVEICTRAN').AsString;
        FrmAlteracaoPlaca.VL_QUILFRETABAT := QrCam.FieldByName('VL_QUILFRETABAT').AsFloat;
      end;

      6:FrmConferenciaCarga.EdExpre.Text := QrCam.FieldByName('GN_PLACVEICTRAN').AsString;
      8:FrmImpDocPed.EdExpre.Text := QrCam.FieldByName('GN_PLACVEICTRAN').AsString;

     13:FrmSelRelConfVenda.EdExpre.Text := QrCam.FieldByName('GN_PLACVEICTRAN').AsString;
     14:FrmSelVenProd.EdExpre.Text := QrCam.FieldByName('GN_PLACVEICTRAN').AsString;
    end;

    case FrmOriPesq of
      17:FrmSelSintCarga.EdExpre.Text := QrCam.FieldByName('GN_PLACVEICTRAN').AsString;
      54:FrmControleCaixas.EdExpre.Text := QrCam.FieldByName('NM_PLACA').AsString;
      2:FrmMontaCarga.EdExpre.Text := QrCam.FieldByName('GN_PLACVEICTRAN').AsString;
      541:
      begin
        FrmControleCaixas.edtPlacaVeiculo.Text      := QrCam.FieldByName('NM_PLACA').AsString;
        FrmControleCaixas.QrNO_PLACAVEICULO.Value   := QrCam.FieldByName('NM_PLACA').AsString;
        FrmControleCaixas.edt_nmTransp.Text         := QrCam.FieldByName('NM_FORNECEDOR').AsString;
        FrmControleCaixas.QrID_TRANSPORTADOR.Value  := QrCam.FieldByName('ID_FORNECEDOR').AsInteger;
      end;
      61:FrmSelQuebr.EdExpre.Text := QrCam.FieldByName('GN_PLACVEICTRAN').AsString;
      63:
      begin
        FrmDocumentacaoNFE.edtPlacaVeiculo.Text := QrCam.FieldByName('GN_PLACVEICTRAN').AsString;
        FrmDocumentacaoNFE.edtVeiculoDescricao.Text := QrCam.FieldByName('NM_VEICTRAN').AsString;
      end;

      170:FrmPediDevoVend.EdExpre.Text:= QrCam.FieldByName('GN_PLACVEICTRAN').AsString;

      60: FrmEntradaSaidaCaixas.EdExpr.Text:= QrCam.FieldByName('GN_PLACVEICTRAN').AsString;

    end;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(FrmPesqCaminhao.Caption), MB_OK + MB_ICONINFORMATION);
  END;

  close;

end;

procedure TFrmPesqCaminhao.FormActivate(Sender: TObject);
begin
  QrCam.Open;
end;

procedure TFrmPesqCaminhao.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmPesqCaminhao.DBGrid1TitleClick(Column: TColumn);
begin
  QrCam.IndexFieldNames := Column.FieldName;
end;

procedure TFrmPesqCaminhao.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFrmPesqCaminhao.EdExpreKeyPress(Sender: TObject; var Key: Char);
begin
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TFrmPesqCaminhao.FormShow(Sender: TObject);
begin
  QrCam.Open;
  EdExpre.SetFocus;
end;

procedure TFrmPesqCaminhao.FormShortCut(Key: Integer; Shift: TShiftState;
  var Handled: Boolean);
begin
  case Key of
    4096: Close;          // ESC para sair
    4145: BitBtn2.Click;  // F2 para confirmar a seleção
    4148: BitBtn1.Click;  // F5 para pesquisa
  end;
end;

end.


