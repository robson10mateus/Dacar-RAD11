unit UFrmCorteProdutos;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls,
  DB, Ora, MemDS, DBAccess, RLReport, Vcl.ToolWin;

type
  TFrmCorteProdutos = class(TForm)
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
    ToolBar1: TToolBar;
    SB_Relatorio: TSpeedButton;
    Sb_Sair: TSpeedButton;
    SB_ATUAL: TSpeedButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    DBGrid1: TDBGrid;
    Qr: TOraQuery;
    Ds: TOraDataSource;
    QrID_PEDIVEND: TFloatField;
    QrID_CLIENTE: TFloatField;
    QrNM_CLIENTE: TStringField;
    QrQN_CAIXCORTITEMPEDIVEND: TFloatField;
    QrID_MATEEMBA: TFloatField;
    QrNM_PRODMATEEMBA: TStringField;
    QrVL_UNITITEMPEDIVEND: TFloatField;
    QrQN_PESOITEMPEDIVEND: TFloatField;
    QrPMEDIO: TFloatField;
    QrID_VENDEDOR: TFloatField;
    QrNM_VENDEDOR: TStringField;
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
    procedure SB_RelatorioClick(Sender: TObject);
    //procedure SB_RelatorioClick(Sender: TObject);
  private
    { Private declarations }
    SELPE : integer;
  public
    { Public declarations }
    VCid, NCid, NEst, NPais, NReg : String;
  end;

var
  FrmCorteProdutos: TFrmCorteProdutos;

implementation

{$R *.dfm}
uses Principal,Global,UFrmPesqCid, UFrmPesqVend, UPesquiCliente,
     UFrmSelData, UFrmRelCorteProdutos;

procedure TFrmCorteProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FrmPrincipal.VEN058.Enabled:= True;
     Action:=caFree;
end;

procedure TFrmCorteProdutos.FormShow(Sender: TObject);
begin
     IF LCAMPOS.Items.Count=0 THEN
     BEGIN
          With LCampos.Items do
          begin

               Add('Nº Pedido ');//0
               Add('Cód. Cliente      ');//1
               Add('Qtd. Caixas ');//2
               Add('Cód. Item ');//3
               Add('Data de Entrega ');//4
               Add('Cód. Vendedor ');//5

          end;
     END;
     PageControl1.Pages[1].TabVisible:=false;

     PageControl1.ActivePage :=  Tab_Criterio ;
end;

procedure TFrmCorteProdutos.Sb_SairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmCorteProdutos.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
  sWhere: string;
begin
     Qr.DisableControls;
     Qr.Close;
     //Qr.MacroByName('MacroData').Value := '';
     Qr.MacroByName('Macro').Value := '';
    //Qr.MacroByName('OrderBY').Value := '';

      sWhere := 'Where P.QN_CAIXCORTITEMPEDIVEND > 0';

      XTM:=MResul.Lines.Count;
      If XTM >0 then
      begin
           //Qr.SQL.Add(' And ');
           //Qr.SQL.Add(MResul.Text);
           Qr.MacroByName('Macro').Value :=  sWhere + ' AND '  + MResul.Text ;

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

procedure TFrmCorteProdutos.LCamposClick(Sender: TObject);
begin
     SELPE:=0;

      Case LCAMPOS.ItemIndex of
         1:SELPE:=1;
         4:SELPE:=4;
         5:SELPE:=5;
      End;

      If SELPE>0 then
         BPESQ.Visible := TRUE
      else
          BPESQ.Visible :=FALSE;
end;

procedure TFrmCorteProdutos.EdExpreChange(Sender: TObject);
begin
     BtIncluir.Enabled:=true;
end;

procedure TFrmCorteProdutos.BtLimparClick(Sender: TObject);
begin
    EdExpre.Text:='';
    MResul.Clear;
    EdExpre.SetFocus;
    BtIncluir.Enabled:=false;
end;

procedure TFrmCorteProdutos.BtIncluirClick(Sender: TObject);
var
  Vre,Vlinha:String;
  Vcampos:integer;
begin
  If EdExpre.Text<>'' then
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

     If RGeou.ItemIndex=0  then
        Vre:= Vre + '( ' ;

   //Alterar nomes
    Case LCampos.itemindex of
        0:Vre:=Vre + '   PV.ID_PEDIVEND  ';
        1:Vre:=Vre + '   C.ID_CLIENTE  ';
        2:Vre:=Vre + '   P.QN_CAIXCORTITEMPEDIVEND    ';
        3:Vre:=Vre + '   P.ID_MATEEMBA    ';
        4:Vre:=Vre + '   PV.DT_ENTRPEDIVEND ';
        5:Vre:=Vre + '   V.ID_VENDEDOR     ';
    end;

    Case CBCond.ItemIndex of
       0: Vre:=Vre + ' =  ';
       1: Vre:=Vre + ' <> ';
       2: Vre:=Vre + ' >  ';
       3: Vre:=Vre + ' >= ';
       4: Vre:=Vre + ' <  ';
       5: Vre:=Vre + ' <= ';
    end;

    Case LCampos.itemindex of
         4 : Vre:=Vre + 'TO_DATE(''';
    end;

      Vre:=Vre + Edexpre.text;

    Case LCampos.itemindex of
         4 : Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
    end;

    Vre:=Vre+' )';

    MResul.Lines.Add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;
end;

procedure TFrmCorteProdutos.BPESQClick(Sender: TObject);
Var Vdtstr : String;
begin
     FrmOriPesq:=58;
     CASE SELPE OF
       1:BEGIN
           FrmPesqCliente:=TFrmPesqCliente.Create(Self);
           FrmPesqCliente.ShowModal;
         END;
       2:BEGIN
           Cria_FrmPesqCid(VCid, NCid, NEst, NPais, NReg );
           EdExpre.text := VCid;
         END;
       4:BEGIN
           Cria_FrmSelData
           (Vdtstr);
           if ( Vdtstr <> '' ) then
           EdExpre.text:= Vdtstr;
         END;
       5:BEGIN
           //FrmOriPesq:=14;
           FrmPesqVend:=TFrmPesqVend.Create(Self);
           FrmPesqVend.ShowModal;
           //Cria_FrmPesqFor(VFor,NFor,NEND,NCEP,NFONE );
         END;
         end;
end;

procedure TFrmCorteProdutos.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = Ord('C')) then
       CTRL_C_Grig ( DBGrid1 );
end;

procedure TFrmCorteProdutos.SB_ATUALClick(Sender: TObject);
begin
     Qr.Close;
     Qr.Open;
end;

procedure TFrmCorteProdutos.SB_RelatorioClick(Sender: TObject);
begin
     if Qr.RecordCount = 0 then
     begin
      MessageDlg('Não há registros para geração do relatório!', mtInformation, [mbOk], 0);
      Abort;
     end;

     Qr.DisableControls;
     FrmRelCorteProdutos := TFrmRelCorteProdutos.Create(Self);
     FrmRelCorteProdutos.RLReport1.Preview(nil);
     Qr.EnableControls;
end;

end.

