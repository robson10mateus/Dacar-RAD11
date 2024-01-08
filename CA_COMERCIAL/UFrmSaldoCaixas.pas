unit UFrmSaldoCaixas;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, Grids, DBGrids,
  ComCtrls, Buttons, ExtCtrls;

type
  TFrmSaldoCaixas = class(TForm)
    PageControl1: TPageControl;
    Tab_Criterio: TTabSheet;
    LCampos: TListBox;
    Label6: TLabel;
    CBCond: TComboBox;
    RGeou: TRadioGroup;
    EdExpre: TEdit;
    Label7: TLabel;
    MResul: TMemo;
    BtIncluir: TBitBtn;
    BtLimpar: TBitBtn;
    BtAtivar: TBitBtn;
    BPESQ: TBitBtn;
    Tab_Lista: TTabSheet;
    DBGrid1: TDBGrid;
    Qr: TOraQuery;
    Ds: TOraDataSource;
    QrID_CLIENTE: TFloatField;
    QrNM_CLIENTE: TStringField;
    QrID_CIDADE: TFloatField;
    QrNM_CIDADE: TStringField;
    QrID_VALE: TFloatField;
    QrSALDO: TFloatField;
    QrFL_PESSCLIE: TStringField;
    QrFL_ATIVCLIE: TStringField;
    QrID_VENDEDOR: TFloatField;
    QrNM_VENDEDOR: TStringField;
    QrID_GRUPCLIE: TFloatField;
    QrNM_GRUPCLIE: TStringField;
    Panel1: TPanel;
    SB_ATUAL: TSpeedButton;
    SB_Relatorio: TSpeedButton;
    Sb_Sair: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SB_ATUALClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure SB_RelatorioClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Private declarations }
    SELPE : integer;
    OrdemColuna , Ordem : String;
  public
    { Public declarations }
    VCid, NCid, NEst, NPais, NReg, Vdtstr : String;
  end;

var
  FrmSaldoCaixas: TFrmSaldoCaixas;

implementation

uses Principal, UFrmPesqVend, Global,UFrmPesqCid, UFrmRelSaldoCaixas, UFrmPesqGrupoClie,
  UPesquiCliente, UFrmSelData, ufrmConsultaCidades;

{$R *.dfm}

procedure TFrmSaldoCaixas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.VEN055.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmSaldoCaixas.FormShow(Sender: TObject);
begin
  IF LCAMPOS.Items.Count=0 then
  BEGIN
    With LCampos.Items do
    begin
      Add('Cód. do Vendedor         '); //0
      Add('Cód. da Cidade           '); //1
      Add('Cliente (F/J)            '); //2
      Add('Cad. Ativo (S/N)         '); //3
      Add('Saldo Caixa (Quantidade) '); //4
      Add('Possui Vale CX (S/N)     '); //5
      Add('Grupo de Clientes        '); //6
      Add('Cód. do Cliente          '); //7
    end;
  END;
  PageControl1.Pages[1].TabVisible:=false;

  PageControl1.ActivePage :=  Tab_Criterio ;
end;

procedure TFrmSaldoCaixas.Sb_SairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmSaldoCaixas.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
begin
  Qr.DisableControls;
  Qr.Close;
  // Qr.MacroByName('MacroData').Value := '';
  Qr.MacroByName('Macro').Value := '';
  //   Qr.MacroByName('OrderBY').Value := '';

  XTM:=MResul.Lines.Count;
  If XTM >0 then
  begin
    //Qr.SQL.Add(' And ');
    //Qr.SQL.Add(MResul.Text);
    Qr.MacroByName('Macro').Value :=  ' WHERE ' + MResul.Text ;
  end
  else
  begin
    If MessageDlg('Exibir listagem sem filtro?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    begin
      Qr.EnableControls;
      exit;
    end;
  end;

  Qr.Open;
  Qr.EnableControls;
  PageControl1.Pages[1].TabVisible := true;
  PageControl1.Pages[1].Show;
end;

procedure TFrmSaldoCaixas.LCamposClick(Sender: TObject);
begin
  SELPE:=0;

  Case LCAMPOS.ItemIndex of
    0:SELPE:=1;
    1:SELPE:=2;
    6:SELPE:=3;
    7:SELPE:=4;
  End;

  If SELPE>0 then
    BPESQ.Visible := TRUE
  else
    BPESQ.Visible := FALSE;
end;

procedure TFrmSaldoCaixas.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmSaldoCaixas.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmSaldoCaixas.BtIncluirClick(Sender: TObject);
var
  Vre,Vlinha:String;
  Vcampos:integer;
begin
  If EdExpre.Text <> '' then
  Begin
    IF MResul.Lines.Count>0 then
    begin
      If RGeou.ItemIndex=0  then
      begin
        Vre:='AND ';
      end
      Else
      begin
        Vlinha:= MResul.Lines.Strings[MResul.Lines.Count-1];
        MResul.Lines.Strings[MResul.Lines.Count-1]:= Copy(Vlinha,1,length(Vlinha)-1);
        Vre:='OR ';
      end;
    end;

    If LCampos.itemindex=-1 then
      Vcampos:=0
    else
      Vcampos:=LCampos.itemindex;

    If RGeou.ItemIndex=0  then
      Vre:= Vre + '( ' ;

    //Alterar nomes
    Case LCampos.itemindex of
      0:Vre:=Vre + 'CV.ID_VENDEDOR';
      1:Vre:=Vre + 'M.ID_CIDADE';
      2:Vre:=Vre + 'C.FL_PESSCLIE';
      3:Vre:=Vre + 'C.FL_ATIVCLIE';
      4:Vre:=Vre + 'NVL(SAL.SALDO,0)';
      5:Vre:=Vre + 'CASE WHEN NVL(SAL.ID_VALE,0) > 0 then ''S'' ELSE ''N'' END';
      6:Vre:=Vre + 'CG.ID_GRUPCLIE';
      7:Vre:=Vre + 'C.ID_CLIENTE';
    end;

    Case CBCond.ItemIndex of
      0: Vre:=Vre + ' = ';
      1: Vre:=Vre + ' <> ';
      2: Vre:=Vre + ' > ';
      3: Vre:=Vre + ' >= ';
      4: Vre:=Vre + ' < ';
      5: Vre:=Vre + ' <= ';
    end;

    Case LCampos.itemindex of
      99 : Vre:=Vre + 'TO_DATE(''';
    end;

    Vre:=Vre +''''+ UpperCase(Edexpre.Text);

    Case LCampos.itemindex of
      99 : Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
    end;

    Vre:=Vre+''')';


    MResul.Lines.Add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

  end;
  BtAtivar.SetFocus;

end;

procedure TFrmSaldoCaixas.BPESQClick(Sender: TObject);
Var Vdtstr : String;
begin
  FrmOriPesq:=55;
  CASE SELPE OF
    1:
    BEGIN
      FrmPesqVend:=TFrmPesqVend.Create(Self);
      FrmPesqVend.ShowModal;
    END;
    2:
    BEGIN
      frmConsultaCidades:=TfrmConsultaCidades.Create(Self);
      frmConsultaCidades.ShowModal;
    END;
    3:
    BEGIN
      FrmPesqGrupoClie:= TFrmPesqGrupoClie.Create(Self);
      FrmPesqGrupoClie.ShowModal;
    END;
    4:
    BEGIN
      FrmPesqCliente:= TFrmPesqCliente.Create(Self);
      FrmPesqCliente.ShowModal;
    END;
  end;
end;

procedure TFrmSaldoCaixas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = Ord('C')) then
    CTRL_C_Grig ( DBGrid1 );
end;

procedure TFrmSaldoCaixas.SB_ATUALClick(Sender: TObject);
begin
  Qr.Close;
  Qr.Open;
end;

procedure TFrmSaldoCaixas.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGrid ( DBGrid1, Qr , Column,  OrdemColuna , Ordem );
  OrdemColuna := Column.FieldName;
  if (OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente') then
    Ordem := 'Crescente'
  else
    Ordem := 'Decrescente';
end;

procedure TFrmSaldoCaixas.SB_RelatorioClick(Sender: TObject);
begin
  Qr.DisableControls;
  FrmRelSaldoCaixas := TFrmRelSaldoCaixas.Create(Self);
  FrmRelSaldoCaixas.lblUsuario.Caption := gs_NomeUsuario;
  FrmRelSaldoCaixas.RLReport1.Preview(nil);
  Qr.EnableControls;
end;

procedure TFrmSaldoCaixas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

end.
