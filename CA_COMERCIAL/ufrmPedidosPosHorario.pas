unit ufrmPedidosPosHorario;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, Grids, DBGrids, DB,
  Ora, MemDS, DBAccess,DateUtils;

type
  TfrmPedidosPosHorario = class(TForm)
    Panel1: TPanel;
    SB_Relatorio: TSpeedButton;
    Sb_Sair: TSpeedButton;
    Label49: TLabel;
    edtDataInicial: TMaskEdit;
    brnDataInicial: TBitBtn;
    lblDataFinal: TLabel;
    edtDataFinal: TMaskEdit;
    btnDataFinal: TBitBtn;
    btnConsultar: TSpeedButton;
    qryPedidos: TOraQuery;
    qryPedidosID_PEDIVEND: TFloatField;
    qryPedidosDT_DIGIPEDIVEND: TDateTimeField;
    qryPedidosCLIENTE: TStringField;
    qryPedidosNM_LANCTO_POS_HORARIO: TStringField;
    dtsPedidos: TOraDataSource;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    qryPedidosNM_USUASIST: TStringField;
    procedure SB_RelatorioClick(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure brnDataInicialClick(Sender: TObject);
    procedure btnDataFinalClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidosPosHorario: TfrmPedidosPosHorario;

implementation

uses Principal, Global, UFrmSeldata, ufrmRelPedidosPosHorario;

{$R *.dfm}

procedure TfrmPedidosPosHorario.SB_RelatorioClick(Sender: TObject);
begin
  frmRelPedidosPosHorario := TfrmRelPedidosPosHorario.Create(Self);
  frmRelPedidosPosHorario.lblSubTitulo2.Caption := 'Período de ' + edtDataInicial.Text + ' a ' + edtDataFinal.Text;
  frmRelPedidosPosHorario.lblUsuario.Caption := gs_NomeUsuario;
//  frmRelPedidosPosHorario.RLPrintDialogSetup1.Copies := 1;
  frmRelPedidosPosHorario.RLReport1.Preview(nil);
end;

procedure TfrmPedidosPosHorario.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPedidosPosHorario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPedidosPosHorario:=nil;
//  FrmPrincipal.VEN064.Enabled:= True;
  FrmPrincipal.ACVEN064.Enabled:= True;
  Action:=caFree;
end;

procedure TfrmPedidosPosHorario.brnDataInicialClick(Sender: TObject);
Var Vdtstr:String;
begin
  Cria_FrmSelData(Vdtstr);
  edtDataInicial.Text := Vdtstr;
  if ( edtDataInicial.Enabled )then
    edtDataInicial.SetFocus;
end;

procedure TfrmPedidosPosHorario.btnDataFinalClick(Sender: TObject);
Var Vdtstr:String;
begin
  Cria_FrmSelData(Vdtstr);
  edtDataFinal.Text := Vdtstr;
  if ( edtDataFinal.Enabled )then
    edtDataFinal.SetFocus;
end;

procedure TfrmPedidosPosHorario.btnConsultarClick(Sender: TObject);
begin
  qryPedidos.Close;
  qryPedidos.ParamByName('Data_Ini').Value := edtDataInicial.EditText;
  qryPedidos.ParamByName('Data_Fin').Value := edtDataFinal.EditText;
  qryPedidos.Open;
end;

procedure TfrmPedidosPosHorario.FormShow(Sender: TObject);
begin
  btnConsultarClick(Self);
end;

procedure TfrmPedidosPosHorario.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
  begin
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);
  end;

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TfrmPedidosPosHorario.FormCreate(Sender: TObject);
begin
  edtDataInicial.Text := DateToStr(StartOfTheMonth(now));
  edtDataFinal.Text := DateToStr(EndOfTheMonth(now));
end;

procedure TfrmPedidosPosHorario.DBGrid1TitleClick(Column: TColumn);
begin
  qryPedidos.IndexFieldNames := Column.FieldName;
end;

end.
