unit UFrmSelQuebr;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, Ora, MemDS,
  DBAccess, Grids, DBGrids, Vcl.ToolWin;

type
  TFrmSelQuebr = class(TForm)
    PageControl1: TPageControl;
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
    BPESQ: TBitBtn;
    DTini: TEdit;
    DtFim: TEdit;
    Label1: TLabel;
    cmbData: TComboBox;
    BtAtivar: TBitBtn;
    Qr: TOraQuery;
    Ds: TOraDataSource;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    SB_Relatorio: TSpeedButton;
    Sb_Sair: TSpeedButton;
    SB_ATUAL: TSpeedButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    QrDT_ENTRPEDIVEND: TDateTimeField;
    QrID_CARGEXPE: TFloatField;
    QrNM_FORNECEDOR: TStringField;
    QrPESO_EXP: TFloatField;
    QrPESO_DEV: TFloatField;
    QrKG_TOTAQUEB: TFloatField;
    QrQN_PERCQUEB: TFloatField;
    QrGN_PLACVEICTRAN: TStringField;
    QrPESO_ENTR: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SB_RelatorioClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
  private
    { Private declarations }
  public
    SELPE:integer;
  end;

var
  FrmSelQuebr: TFrmSelQuebr;

implementation

{$R *.dfm}

uses Principal,Global, UFrmSelRelQuebr, UFrmPesCaminhao;

procedure TFrmSelQuebr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmSelQuebr:=nil;
  FrmPrincipal.VEN061.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmSelQuebr.FormActivate(Sender: TObject);
begin
IF LCAMPOS.Items.Count=0 THEN
 BEGIN
  With LCampos.Items do
   begin
     Add('Nº da Carga ');
     Add('Placa Veículo ');
     //Add('Código do Transportador ');

   end;
 END;
end;

procedure TFrmSelQuebr.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TFrmSelQuebr.BtIncluirClick(Sender: TObject);
 var
   Vre,VA,Vlinha:String;
   Vcampos,FA,FO:integer;
 begin
  If (EdExpre.Text<>'') or (CBCond.ItemIndex > 6) then
   Begin
     IF MResul.Lines.Count>0 then
       begin
         If RGeou.ItemIndex=0  then
          begin
            Vre:='And ';
          end
         Else
          begin
            Vlinha:= MResul.Lines.Strings[MResul.Lines.Count-1];
            MResul.Lines.Strings[MResul.Lines.Count-1]:= Copy(Vlinha,1,length(Vlinha)-1);
            Vre:='Or ';
          end;
       end;
     If  LCampos.itemindex=-1 then
         Vcampos:=0
     else
         Vcampos:=LCampos.itemindex;

     //COLOCAR PARENTESES ANTES DO AND
     If RGeou.ItemIndex=0  then
       Vre:= Vre + '(' ;

     Case LCampos.itemindex of
        0:Vre:=Vre + 'EXPEDICAO_CARGA.ID_CARGEXPE ';
        1:Vre:=Vre + 'EXPEDICAO_CARGA.GN_PLACVEICTRAN';
     end;



     Case CBCond.ItemIndex of
       0: Vre:=Vre + ' =  ';
       1: Vre:=Vre + ' <> ';
       2: Vre:=Vre + ' >  ';
       3: Vre:=Vre + ' >= ';
       4: Vre:=Vre + ' <  ';
       5: Vre:=Vre + ' <= ';
       6: Vre:=Vre + ' like ';
       7: Vre:=Vre + ' is null ';
       8: Vre:=Vre + ' is not null ';
     end;

     //Abre aspas p/ texto
     Case LCampos.itemindex of
           1:Vre:=Vre + '''';
          //15:Vre:=Vre + 'TO_DATE(''';
     end;

     If CBCond.ItemIndex = 6 then
        Vre:=Vre + '%';

     Vre:=Vre + Edexpre.text;

     If CBCond.ItemIndex = 6 then
        Vre:=Vre + '%';

     //Fecha aspas p/ texto
     Case LCampos.itemindex of
         1:Vre:= Vre + '''';
         //15:Vre:= Vre + '''' + ',' + '''DD/MM/YYYY''' +')';
     end;

     Vre:=Vre+')';

     MResul.Lines.Add(Vre);

     EdExpre.Text :='';
     BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;
 end;

procedure TFrmSelQuebr.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmSelQuebr.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
begin
  Qr.DisableControls;
  Qr.Close;
  Qr.MacroByName('Macro').Value := '';


  XTM:=MResul.Lines.Count;
  If XTM >0 then
  begin
    Qr.MacroByName('Macro').Value :=  ' AND ' + MResul.Text ;
  end;

  Qr.ParamByName('DTINI').AsDate := StrToDate(DTIni.Text);
  Qr.ParamByName('DTFIM').AsDate := StrToDate(DTFim.Text);

  Qr.Open;
  Qr.EnableControls;
  PageControl1.Pages[1].TabVisible := true;
  PageControl1.Pages[1].Show;

end;

procedure TFrmSelQuebr.Sb_SairClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmSelQuebr.FormShow(Sender: TObject);
begin
 DTini.Text := DateToStr(Date());
 DtFim.Text := DateToStr(Date());
end;

procedure TFrmSelQuebr.SB_RelatorioClick(Sender: TObject);
begin
  Qr.DisableControls;
  FrmSelRelQuebr:=TFrmSelRelQuebr.Create(Self);
  FrmSelRelQuebr.DT1.Caption := DTIni.Text ;
  FrmSelRelQuebr.DT2.Caption := DtFim.Text ;

  Screen.Cursor := crDefault;
//  FrmSelRelQuebr.PDSetup.Copies:=1;
  FrmSelRelQuebr.RLReport1.PreviewModal;
  Qr.EnableControls;
end;

procedure TFrmSelQuebr.BPESQClick(Sender: TObject);
begin
  FrmOriPesq:=61;
  CASE SELPE OF
   1:BEGIN
       FrmPesqCaminhao:= TFrmPesqCaminhao.Create(Self);
       FrmPesqCaminhao.Show;
     END;
  end;
  BPESQ.Visible:=FALSE;
end;

procedure TFrmSelQuebr.LCamposClick(Sender: TObject);
begin
 SELPE:=0;
  CASE LCAMPOS.ItemIndex OF
     1:SELPE:=1;
  end;
   IF SELPE>0 THEN
    BPESQ.Visible:=TRUE;


end;

end.
