unit UFrmDiferencaPreco;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls,
  DB, MemDS, DBAccess, Ora, Mask, Vcl.ToolWin;

type
  TFrmDiferencaPreco = class(TForm)
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
    Ds: TOraDataSource;
    Qr: TOraQuery;
    QrID_VENDEDOR: TFloatField;
    QrNM_VENDEDOR: TStringField;
    QrID_PRODMATEEMBA: TStringField;
    QrNM_PRODMATEEMBA: TStringField;
    QrDT_EMISNOTAFISC: TDateTimeField;
    QrDT_SAIDNOTAFISC: TDateTimeField;
    QrID_PEDIVEND: TFloatField;
    QrID_CLIENTE: TFloatField;
    QrNM_CLIENTE: TStringField;
    QrQUANTIDADE: TFloatField;
    QrTOTAL_VENDA: TFloatField;
    QrTOTAL_TABELA: TFloatField;
    QrUNIT_VENDA: TFloatField;
    QrUNIT_TABELA: TFloatField;
    Cmb_TipoData: TComboBox;
    edtDataIni: TMaskEdit;
    edtDataFim: TMaskEdit;
    Label1: TLabel;
    Label49: TLabel;
    bt_PesqDTI: TBitBtn;
    bt_PesqDTF: TBitBtn;
    QrNR_NOTAFISC: TFloatField;
    QrDIF_TOTAL: TFloatField;
    QrDIF_UNIT: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SB_ATUALClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure bt_PesqDTIClick(Sender: TObject);
    procedure bt_PesqDTFClick(Sender: TObject);
    procedure SB_RelatorioClick(Sender: TObject);
  private
    { Private declarations }
        SELPE : integer;
  public
    { Public declarations }
      DATASELECAO : String ;
  end;

var

  FrmDiferencaPreco: TFrmDiferencaPreco;

implementation

{$R *.dfm}
uses Principal,Global,UFrmSeldata, UFrmPesqVend, DateUtils,
  UFrmRelDiferencaPreco;


procedure TFrmDiferencaPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FrmPrincipal.VEN053.Enabled:= True;
     Action:=caFree;
end;

procedure TFrmDiferencaPreco.FormShow(Sender: TObject);
Var UltData : TDateTime;
begin
     IF LCAMPOS.Items.Count=0 then
     BEGIN
          With LCampos.Items do
          begin
               Add('Vendedor ');//0
          end;
     END;
     PageControl1.Pages[1].TabVisible:=false;

     PageControl1.ActivePage :=  Tab_Criterio ;

     UltData := IncDay( StartOfTheMonth(Date), -1 );

     edtDataIni.Text := DateToStr( StartOfAMonth( YearOf( UltData), MonthOf(UltData)));
     edtDataFim.Text := DateToStr( UltData) ;

     if ( LCampos.Visible ) then
     begin
          LCampos.itemindex := 0 ;
          LCamposClick(Self);
     end;
end;

procedure TFrmDiferencaPreco.Sb_SairClick(Sender: TObject);
begin
    Close;
end;

procedure TFrmDiferencaPreco.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
begin
     Qr.DisableControls;
     Qr.Close;
     Qr.MacroByName('Macro').Value := '';
     Qr.MacroByName('MacroData').Value := '';

     CASE Cmb_TipoData.ItemIndex  OF
         0 :
           Begin
                Qr.MacroByName('MacroData').Value := ' AND (  TRUNC( NF.DT_EMISNOTAFISC )  >=  TO_DATE( ''' + edtDataIni.Text + ''',''DD/MM/YYYY'' ) ' +
                                        '           AND TRUNC( NF.DT_EMISNOTAFISC )  <=  TO_DATE( ''' + edtDataFim.Text + ''',''DD/MM/YYYY'' )  )' ;
                DATASELECAO :=  'DT_EMISNOTAFISC';
           end;
         1 :
            Begin
                Qr.MacroByName('MacroData').Value := ' AND (   TRUNC( NF.DT_SAIDNOTAFISC )  >=  TO_DATE( ''' + edtDataIni.Text + ''',''DD/MM/YYYY'' ) ' +
                                          '           AND TRUNC( NF.DT_SAIDNOTAFISC )  <=  TO_DATE( ''' + edtDataFim.Text + ''',''DD/MM/YYYY'' )  )' ;
                DATASELECAO := 'DT_SAIDNOTAFISC';
            end;
     END ;

      XTM:=MResul.Lines.Count;
      If XTM >0 then
      begin
           //Qr.SQL.Add(' And ');
           //Qr.SQL.Add(MResul.Text);
           Qr.MacroByName('Macro').Value :=  ' AND ' + MResul.Text ;
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

procedure TFrmDiferencaPreco.LCamposClick(Sender: TObject);
begin
     SELPE:=0;

      Case LCAMPOS.ItemIndex of
         0:SELPE:=1;

      End;

      If SELPE>0 then
         BPESQ.Visible := TRUE
      else
          BPESQ.Visible :=FALSE;
end;

procedure TFrmDiferencaPreco.EdExpreChange(Sender: TObject);
begin
     BtIncluir.Enabled:=true;
end;

procedure TFrmDiferencaPreco.BtLimparClick(Sender: TObject);
begin
    EdExpre.Text:='';
    MResul.Clear;
    EdExpre.SetFocus;
    BtIncluir.Enabled:=false;

end;

procedure TFrmDiferencaPreco.BtIncluirClick(Sender: TObject);
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
        0:Vre:=Vre + '   PV.ID_VENDEDOR ';
    end;

    Case CBCond.ItemIndex of
       0: Vre:=Vre + ' =  ';
       1: Vre:=Vre + ' <> ';
       2: Vre:=Vre + ' >  ';
       3: Vre:=Vre + ' >= ';
       4: Vre:=Vre + ' <  ';
       5: Vre:=Vre + ' <= ';
    end;
    {
    Case LCampos.itemindex of
         0 : Vre:=Vre + 'TO_DATE(''';
    end;}

    // Abre aspas para texto
    Case LCampos.itemindex of
        0: Vre:=Vre +'''';
    end;

    Vre:=Vre + Edexpre.text;

    {
    Case LCampos.itemindex of
         0 : Vre:= Vre + '''' + ',' + '''DD/MM/YYYY''' +')';
    end;
     }

    // Fecha aspas para texto
    Case LCampos.itemindex of
        0 : Vre:=Vre +'''' ;
    end ;

    Vre:=Vre+' )';

    MResul.Lines.Add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;

end;

procedure TFrmDiferencaPreco.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = Ord('C')) then
       CTRL_C_Grig ( DBGrid1 );
end;

procedure TFrmDiferencaPreco.SB_ATUALClick(Sender: TObject);
begin
     Qr.EnableControls;
     Qr.Close;
     Qr.Open;
end;

procedure TFrmDiferencaPreco.BPESQClick(Sender: TObject);
var  Vdtstr : String;
begin
     FrmOriPesq:=53;
     CASE SELPE OF
       1:Begin
              try
                 FrmPesqVend:=TFrmPesqVend.Create(Self);
                 FrmPesqVend.Show;
              except;
                 FrmPesqVend.Free;
               end;
         end ;
     END;
end;

procedure TFrmDiferencaPreco.bt_PesqDTIClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     edtDataIni.Text := Vdtstr;
     if ( edtDataIni.Enabled )then
        edtDataIni.SetFocus;
end;

procedure TFrmDiferencaPreco.bt_PesqDTFClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     edtDataFim.Text := Vdtstr;
     if ( edtDataFim.Enabled )then
        edtDataFim.SetFocus;
end;

procedure TFrmDiferencaPreco.SB_RelatorioClick(Sender: TObject);
begin
    if Qr.RecordCount = 0 then
    begin
         MessageDlg('Não há registros para geração do relatório!', mtWarning, [mbOk], 0);
         Exit;
    end;
    Qr.DisableControls;

    FrmRelDiferencaPreco := TFrmRelDiferencaPreco.Create(Self);
//    FrmRelDiferencaPreco.RLPrintDialogSetup1.Copies := 1;
    FrmRelDiferencaPreco.lbl_Unidade.Caption := gs_Unidade;
    FrmRelDiferencaPreco.lbl_Data.Caption     := ' Data : ' + edtDataIni.Text + ' até ' + edtDataFim.Text;
    FrmRelDiferencaPreco.RLDBText4.DataField  := DATASELECAO;
    FrmRelDiferencaPreco.RLReport1.Preview(nil);

    Qr.EnableControls;
end;

end.
