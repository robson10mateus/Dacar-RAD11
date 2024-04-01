unit UFrmEntradaSaidaCaixas;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, Ora, MemDS,
  DBAccess, Grids, DBGrids, Mask, Winapi.Windows;

type
  TFrmEntradaSaidaCaixas = class(TForm)
    Panel1: TPanel;
    pnlBotoes: TPanel;
    SB_PRIMEIRO: TSpeedButton;
    SB_ANTERIOR: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SB_ULTIMO: TSpeedButton;
    btnImprimir: TSpeedButton;
    Sb_Sair: TSpeedButton;
    PageControl1: TPageControl;
    TabFiltro: TTabSheet;
    LCampos: TListBox;
    MResul: TMemo;
    Lbl_Cond: TLabel;
    CBCond: TComboBox;
    Lbl_Expr: TLabel;
    EdExpr: TEdit;
    RGeou: TRadioGroup;
    BtIncluir: TBitBtn;
    BtLimpar: TBitBtn;
    BtAtivar: TBitBtn;
    BPESQ: TBitBtn;
    Lbl_Filtro: TLabel;
    TabLista: TTabSheet;
    DBGrid1: TDBGrid;
    Qr: TOraQuery;
    DsQr: TOraDataSource;
    TabDetalhe: TTabSheet;
    QrDetalhe: TOraQuery;
    DsDetalhe: TOraDataSource;
    QrSaidaSucata: TOraQuery;
    DsCaixaSucata: TOraDataSource;
    PanelEntradaCaixas: TPanel;
    DBGrid3: TDBGrid;
    Label1: TLabel;
    QrEntradaCaixa: TOraQuery;
    DsEntradaCaixa: TOraDataSource;
    PanelSaidaCaixas: TPanel;
    DBGrid4: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    QrTemp: TOraQuery;
    QrRel: TOraQuery;
    PanelRetornoCaixas: TPanel;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    rgpTipoRel: TRadioGroup;
    QrDetalheDATA_ENTREGA: TDateTimeField;
    QrDetalheID_VALE: TFloatField;
    QrDetalheID_PEDIDO: TFloatField;
    QrDetalheCLIENTE: TStringField;
    QrDetalheSALDO_ANTERIOR: TFloatField;
    QrDetalheSALDO: TFloatField;
    QrDetalheQTD_ENTREGUE: TFloatField;
    QrDetalheQTD_DEVOLVIDA: TFloatField;
    QrDetalheVENDEDOR: TStringField;
    QrRelAnalitico: TOraQuery;
    Edit1: TMaskEdit;
    Edit2: TMaskEdit;
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtAtivarClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure EdExprChange(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImprimirClick(Sender: TObject);
    procedure SB_PRIMEIROClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure SB_ULTIMOClick(Sender: TObject);
  private
    { Private declarations }
    SELPE :Integer;
  public
    { Public declarations }
  end;

var
  FrmEntradaSaidaCaixas: TFrmEntradaSaidaCaixas;

implementation

uses Principal, UPesquiCliente, UFrmPesqVend, UFrmPesCaminhao, Global, UFrmSeldata, UFrmPesqGrupoClie, UFrmRelEntradaSaidaCaixas, ufrmConsultaGrupoClientes,
  UFrmRelAnaliticoSaidaCaixas;

{$R *.dfm}

procedure TFrmEntradaSaidaCaixas.Sb_SairClick(Sender: TObject);
begin
  Close;

  Qr.Close;
  QrDetalhe.Close;
  QrRel.Close;
  QrEntradaCaixa.Close;
  QrSaidaSucata.Close;
end;

procedure TFrmEntradaSaidaCaixas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Qr.Close;
  QrDetalhe.Close;
  QrRel.Close;
  QrEntradaCaixa.Close;
  QrSaidaSucata.Close;

  FrmEntradaSaidaCaixas:=nil;
//  FrmPrincipal.VEN076.Enabled:= True;
  FrmPrincipal.ACControleCaixas.Enabled := True;
  Action:=caFree;
end;

procedure TFrmEntradaSaidaCaixas.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);

  PageControl1.Pages[0].TabVisible := True;
  PageControl1.Pages[1].TabVisible := False;
  PageControl1.Pages[2].TabVisible := False;

  PageControl1.Pages[0].Show;
end;

procedure TFrmEntradaSaidaCaixas.FormDestroy(Sender: TObject);
begin
  FrmEntradaSaidaCaixas:= Nil;
end;

procedure TFrmEntradaSaidaCaixas.FormActivate(Sender: TObject);
begin
  PageControl1.Pages[0].Show;
end;

procedure TFrmEntradaSaidaCaixas.FormShow(Sender: TObject);
begin
  IF LCAMPOS.Items.Count=0 THEN
  BEGIN
    With LCampos.Items do
    begin
      Add('Cód. Cliente          ');//0
      Add('Cód. Vendedor         ');//1
      Add('Nº Pedido             ');//2
      Add('Nº Vale Caixa         ');//3
      Add('Placa Veículo         ');//4
      Add('Vale Impresso (S/N)   ');//5
      Add('Grupo de Clientes     ');//6
    end;
  END;

  QrTemp.Open;

  Edit1.Text := QrTemp.FieldByName('DATA').Value;
  Edit2.Text := QrTemp.FieldByName('DATA').Value;
end;

procedure TFrmEntradaSaidaCaixas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
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


  with DBGrid2 do
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

  DBGrid2.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmEntradaSaidaCaixas.BtAtivarClick(Sender: TObject);
var
  XTM: Integer;
begin
  Qr.Close;
  QrDetalhe.Close;
  QrSaidaSucata.Close;
  QrEntradaCaixa.Close;

  Qr.MacroByName('Macro').Value := '';
  QrDetalhe.MacroByName('Macro').Value := '';

  Qr.ParamByName('DtInicial').AsString := Edit1.EditText;
  Qr.ParamByName('DtFinal').AsString := Edit2.EditText;

  XTM := MResul.Lines.Count;
  If XTM >0 then
  begin
    Qr.MacroByName('Macro').Value := MResul.Text;
    QrDetalhe.MacroByName('Macro').Value := MResul.Text;

    Qr.Open;
    QrDetalhe.Open;
    QrSaidaSucata.Open;
    QrEntradaCaixa.Open;
  end
  else
  begin
    Screen.Cursor := crDefault;
    if Application.MessageBox('       Exibir listagem sem filtro?             ', PChar(FrmEntradaSaidaCaixas.Caption), MB_YESNO + MB_ICONINFORMATION) = IDNO then
      Exit
    else
    begin
      Qr.Open;
      QrDetalhe.Open;
      QrSaidaSucata.Open;
      QrEntradaCaixa.Open;
    end;
  end;

  SB_ULTIMO.Enabled := True;
  SB_PROXIMO.Enabled := True;
  SB_PRIMEIRO.Enabled := True;
  SB_ANTERIOR.Enabled := True;
  btnImprimir.Enabled := True;

  PageControl1.Pages[1].TabVisible := true;
  PageControl1.Pages[2].TabVisible := True;
  PageControl1.Pages[1].Show;
end;

procedure TFrmEntradaSaidaCaixas.BtIncluirClick(Sender: TObject);
var
  Vre,Vlinha:String;
  Vcampos:integer;
begin
  If EdExpr.Text<>'' then
  Begin
    IF (MResul.Lines.Count>0) then
    begin
      if RGeou.ItemIndex=0  then
      begin
        Vre:='AND( ';
      end
      else
      begin
         Vre:='OR( ';
      end;
    end;

    If  LCampos.itemindex=-1 then
      Vcampos:=0
    else
      Vcampos:=LCampos.itemindex;

    if MResul.Lines.Count = 0 then
    begin
        Vre:= Vre + ' And( ' ;
    end;

    //Alterar nomes
    Case LCampos.itemindex of
      0:Vre:=Vre + 'VC.ID_CLIENTE';
      1:Vre:=Vre + 'VC.ID_VENDEDOR';
      2:Vre:=Vre + 'VC.ID_PEDIDO';
      3:Vre:=Vre + 'VC.ID_VALE';
      4:Vre:=Vre + 'REPLACE(VC.NO_PLACAVEICULO,'' - '')';
      5:Vre:=Vre + 'NVL(VC.FL_IMPRESSO,''N'')';
      6:Vre:=Vre + 'CL.ID_GRUPCLIE ';
    end;

    Case CBCond.ItemIndex of
      0: Vre:=Vre + ' = ';
      1: Vre:=Vre + ' <> ';
      2: Vre:=Vre + ' > ';
      3: Vre:=Vre + ' >= ';
      4: Vre:=Vre + ' < ';
      5: Vre:=Vre + ' <= ';
      6: Vre:=Vre + ' LIKE ';
    end;

    // Campo String
    If CBCond.ItemIndex = 6 then
    begin
      Case LCampos.itemindex of
        4..5 : Vre:=Vre +'''%'+ UpperCase(Edexpr.text);
      else
        Vre:=Vre + UpperCase(Edexpr.text);
      end;
    end
    else
    begin
      Case LCampos.itemindex of
        4..5 : Vre:=Vre +''''+ UpperCase(EdExpr.Text);
      else
        Vre:=Vre + UpperCase(EdExpr.Text);
      end;
    end;

    If CBCond.ItemIndex=6 then
      Vre:=Vre + '%';

    // Campo String
    Case LCampos.itemindex of
      4..5 : Vre:=Vre+'''';
    end;

    Vre:=Vre+' )';

    MResul.Lines.Add(Vre);

    EdExpr.Text :='';
    BtIncluir.Enabled:=false;
  end;

  BtAtivar.SetFocus;
end;

procedure TFrmEntradaSaidaCaixas.BtLimparClick(Sender: TObject);
begin
  EdExpr.Text:='';
  MResul.Clear;
  EdExpr.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmEntradaSaidaCaixas.EdExprChange(Sender: TObject);
begin
  BtIncluir.Enabled := true;
end;

procedure TFrmEntradaSaidaCaixas.BPESQClick(Sender: TObject);
Var
  Vdtstr : String;
begin
  FrmOriPesq := 60;
  CASE SELPE OF
    1:
    BEGIN
      FrmPesqCliente := TFrmPesqCliente.Create (Self);
      FrmPesqCliente.ShowModal;
    END;
    2:
    BEGIN
      FrmPesqVend:=TFrmPesqVend.Create(Self);
      FrmPesqVend.ShowModal;
    END;
    4:
    BEGIN
      FrmPesqCaminhao:= TFrmPesqCaminhao.Create(Self);
      FrmPesqCaminhao.ShowModal;
    END;
    6:
    BEGIN
      frmConsultaGrupoClientes:=TfrmConsultaGrupoClientes.Create(Self);
        frmConsultaGrupoClientes.Show;;
    end;
  end
end;

procedure TFrmEntradaSaidaCaixas.LCamposClick(Sender: TObject);
begin
  SELPE:=0;
  Case LCAMPOS.ItemIndex of
    0:SELPE:=1;
    1:SELPE:=2;
    4:SELPE:=4;
    6:SELPE:=6;
  End;

  If SELPE>0 then
    BPESQ.Visible := TRUE
  else
    BPESQ.Visible :=FALSE;
end;

procedure TFrmEntradaSaidaCaixas.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with DBGrid3 do
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

  DBGrid3.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmEntradaSaidaCaixas.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with DBGrid4 do
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

  DBGrid4.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmEntradaSaidaCaixas.btnImprimirClick(Sender: TObject);
begin
  if rgpTipoRel.ItemIndex = 1 then
  begin
    QrRel.Close;

    QrRel.MacroByName('Macro').Value := MResul.Text;
    QrRel.ParamByName('DtInicial').AsString := Edit1.Text;
    QrRel.ParamByName('DtFinal').AsString := Edit2.Text;

    QrRel.Open;


    FrmRelEntradaSaidaCaixas := TFrmRelEntradaSaidaCaixas.Create(Self);
    FrmRelEntradaSaidaCaixas.lblUsuario.Caption := gs_NomeUsuario;
    FrmRelEntradaSaidaCaixas.RLLabel13.Caption := Edit1.Text + ' a ' + Edit2.Text;
    FrmRelEntradaSaidaCaixas.RLReport1.Preview(nil);
  end
  else if rgpTipoRel.ItemIndex = 0 then
  begin
    QrRelAnalitico.Close;

    QrRelAnalitico.MacroByName('Macro').Value := MResul.Text;
    QrRelAnalitico.ParamByName('DtInicial').Value := Edit1.Text;
    QrRelAnalitico.ParamByName('DtFinal').Value := Edit2.Text;

    QrRelAnalitico.Open;

    FrmRelAnaliticoSaidaCaixas := TFrmRelAnaliticoSaidaCaixas.Create(Self);
    FrmRelAnaliticoSaidaCaixas.lblUsuario.Caption := gs_NomeUsuario;
    FrmRelAnaliticoSaidaCaixas.RLLabel13.Caption := Edit1.Text + ' a ' + Edit2.Text;
    FrmRelAnaliticoSaidaCaixas.RLReport1.Preview(nil);
  end;
end;

procedure TFrmEntradaSaidaCaixas.SB_PRIMEIROClick(Sender: TObject);
begin
  Qr.First;
end;

procedure TFrmEntradaSaidaCaixas.SB_ANTERIORClick(Sender: TObject);
begin
  Qr.Prior;
end;

procedure TFrmEntradaSaidaCaixas.SB_PROXIMOClick(Sender: TObject);
begin
  Qr.Next;
end;

procedure TFrmEntradaSaidaCaixas.SB_ULTIMOClick(Sender: TObject);
begin
  Qr.Last;
end;

end.

