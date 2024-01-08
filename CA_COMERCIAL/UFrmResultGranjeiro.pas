unit UFrmResultGranjeiro;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, Grids, DBGrids,
  Buttons, Mask, ExtCtrls, ComCtrls, DateUtils, Vcl.ToolWin;

type
  TFrmResultGranjeiro = class(TForm)
    ToolBar1: TToolBar;
    SB_Relatorio: TSpeedButton;
    Sb_Sair: TSpeedButton;
    SB_ATUAL: TSpeedButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    DBGrid1: TDBGrid;
    Qr: TOraQuery;
    Ds: TOraDataSource;
    QrDATA_SAIDA: TDateTimeField;
    QrGRANJEIRO: TStringField;
    QrQTD_INICIAL: TFloatField;
    QrAVES_ABAT: TFloatField;
    QrPER_PRIM_SEM: TFloatField;
    QrPER_MORTALIDADE: TFloatField;
    QrPESO: TFloatField;
    QrPESO_MEDIO: TFloatField;
    QrIDADE: TFloatField;
    QrTOTAL_RACAO: TFloatField;
    QrCONV_ALIMENTAR: TFloatField;
    QrIEP: TFloatField;
    QrGANHO_PESO_DIA: TFloatField;
    QrPRECO_AVE: TFloatField;
    QrPRECO_AVE_FINAL: TFloatField;
    QrAVE_M2: TFloatField;
    QrTL: TStringField;
    QrORIG: TStringField;
    QrLINHAGEM: TStringField;
    QrID_LOTE: TFloatField;
    PageControl1: TPageControl;
    Tab_Lista: TTabSheet;
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
    Label49: TLabel;
    edtDataIni: TMaskEdit;
    Label1: TLabel;
    edtDataFim: TMaskEdit;
    bt_PesqDTI: TBitBtn;
    bt_PesqDTF: TBitBtn;
    BPESQ: TBitBtn;
    Rdg_Ordem: TRadioGroup;
    QrCONS_MEDIO: TFloatField;
    Cmb_TipoData: TComboBox;
    QrDT_FECHAMENTO: TDateTimeField;
    QrPRIM_RETIRADA: TDateTimeField;
    QrULTIMA_RETIRADA: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_PesqDTIClick(Sender: TObject);
    procedure bt_PesqDTFClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure SB_RelatorioClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    SELPE : integer;
  public
    { Public declarations }
    VFor,NFor,NEND,NCEP,NFONE, ID_LIN : String;
    VCid, NCid, NEst, NPais, NReg : String;
  end;

var
  FrmResultGranjeiro: TFrmResultGranjeiro;

implementation

{$R *.dfm}
uses Principal,Global, UFrmSeldata , UFrmPesqIntegrado , UFrmPesqFor,
     UFrmPesqLinhagem , UFrmRelResultGranjeiro, UFrmPesqCid ,
  UFrmRelRemessaRacao;

procedure TFrmResultGranjeiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FrmPrincipal.VEN045.Enabled:= True;
     Action:=caFree;
end;

procedure TFrmResultGranjeiro.bt_PesqDTIClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     edtDataIni.Text := Vdtstr;
     if ( edtDataIni.Enabled )then
        edtDataIni.SetFocus;
end;

procedure TFrmResultGranjeiro.bt_PesqDTFClick(Sender: TObject);
Var Vdtstr:String;
begin
     Cria_FrmSelData(Vdtstr);
     edtDataFim.Text := Vdtstr;
     if ( edtDataFim.Enabled )then
        edtDataFim.SetFocus;

end;

procedure TFrmResultGranjeiro.FormShow(Sender: TObject);
var UltData : TDateTime;
begin
     IF LCAMPOS.Items.Count=0 THEN
     BEGIN
          With LCampos.Items do
          begin
               Add('Lote      ');       //0
               Add('Data Alojamento ');       //1
               Add('Integrado ');       //2
               Add('Cidade');           //3
               Add('Incubatório');      //4
               Add('Linhagem');         //5

          end;
     END;
     PageControl1.Pages[1].TabVisible:=false;

     PageControl1.ActivePage :=  Tab_Criterio ;
     UltData := IncDay( StartOfTheMonth(Date), -1 );

     edtDataIni.Text := DateToStr( StartOfAMonth( YearOf( UltData), MonthOf(UltData)));
     edtDataFim.Text := DateToStr( UltData) ;
end;

procedure TFrmResultGranjeiro.Sb_SairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmResultGranjeiro.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
begin
     Qr.DisableControls;
     Qr.Close;
     Qr.MacroByName('MacroData').Value := '';
     Qr.MacroByName('Macro').Value := '';
     Qr.MacroByName('OrderBY').Value := '';

     CASE Cmb_TipoData.ItemIndex  OF
         0 : Qr.MacroByName('MacroData').Value := ' AND (   A.DATA_ALOJAMENTO + A.IDADE + 1  >=  TO_DATE( ''' + edtDataIni.Text + ''',''DD/MM/YYYY'' ) ' +
                                      '           AND A.DATA_ALOJAMENTO + A.IDADE + 1  <=  TO_DATE( ''' + edtDataFim.Text + ''',''DD/MM/YYYY'' )  )' ;
         1 : Qr.MacroByName('MacroData').Value := ' AND (   A.DT_FECHAMENTO  >=  TO_DATE( ''' + edtDataIni.Text + ''',''DD/MM/YYYY'' ) ' +
                                      '           AND A.DT_FECHAMENTO   <=  TO_DATE( ''' + edtDataFim.Text + ''',''DD/MM/YYYY'' )  )' ;
         2 : Qr.MacroByName('MacroData').Value := ' AND (   IR.ULTIMA_RETIRADA   >=  TO_DATE( ''' + edtDataIni.Text + ''',''DD/MM/YYYY'' ) ' +
                                      '           AND IR.ULTIMA_RETIRADA    <=  TO_DATE( ''' + edtDataFim.Text + ''',''DD/MM/YYYY'' )  )' ;
         3 : Qr.MacroByName('MacroData').Value := ' AND (   IR.PRIM_RETIRADA  >=  TO_DATE( ''' + edtDataIni.Text + ''',''DD/MM/YYYY'' ) ' +
                                      '           AND IR.PRIM_RETIRADA   <=  TO_DATE( ''' + edtDataFim.Text + ''',''DD/MM/YYYY'' )  )' ;
     END  ;

     {
     if ( Cmb_TipoData.ItemIndex = 0 ) then
        Qr.MacroByName('MacroData').Value := ' AND (   A.DATA_ALOJAMENTO + A.IDADE + 1  >=  TO_DATE( ''' + edtDataIni.Text + ''',''DD/MM/YYYY'' ) ' +
                                      '           AND A.DATA_ALOJAMENTO + A.IDADE + 1  <=  TO_DATE( ''' + edtDataFim.Text + ''',''DD/MM/YYYY'' )  )'
     else
        Qr.MacroByName('MacroData').Value := ' AND (   A.DT_FECHAMENTO  >=  TO_DATE( ''' + edtDataIni.Text + ''',''DD/MM/YYYY'' ) ' +
                                      '           AND A.DT_FECHAMENTO   <=  TO_DATE( ''' + edtDataFim.Text + ''',''DD/MM/YYYY'' )  )' ;
      }
      XTM:=MResul.Lines.Count;
      If XTM >0 then
      begin
           //Qr.SQL.Add(' And ');
           //Qr.SQL.Add(MResul.Text);
           Qr.MacroByName('Macro').Value :=  ' And ' + MResul.Text ;
      end;

     if ( Rdg_Ordem.ItemIndex = 0 ) then
        Qr.MacroByName('OrderBY').Value := ' Order By A.IEP DESC '
     else if ( Rdg_Ordem.ItemIndex = 1 ) then
        Qr.MacroByName('OrderBY').Value := ' Order By A.IEP '
     else if ( Rdg_Ordem.ItemIndex = 2 ) then
        Qr.MacroByName('OrderBY').Value := ' Order By Granjeiro '
     else
     begin
         CASE Cmb_TipoData.ItemIndex  OF
             0 : Qr.MacroByName('OrderBY').Value:= ' Order By DATA_SAIDA'     ;
             1 : Qr.MacroByName('OrderBY').Value := ' Order By DT_FECHAMENTO'  ;
             2 : Qr.MacroByName('OrderBY').Value := ' Order By ULTIMA_RETIRADA';
             3 : Qr.MacroByName('OrderBY').Value := ' Order By PRIM_RETIRADA'  ;
         END  ;
     end;

     Qr.Open;
     Qr.SQL.SaveToFile('C:\VEN045.Sql');

     Qr.EnableControls;
     PageControl1.Pages[1].TabVisible := true;
     PageControl1.Pages[1].Show;
end;

procedure TFrmResultGranjeiro.LCamposClick(Sender: TObject);
begin
     SELPE:=0;
      Case LCAMPOS.ItemIndex of
         1:SELPE:=1;
         2:SELPE:=2;
         3:SELPE:=3;
         4:SELPE:=4;
         5:SELPE:=5;
      End;

      If SELPE>0 then
         BPESQ.Visible := TRUE
      else
          BPESQ.Visible :=FALSE;
end;

procedure TFrmResultGranjeiro.EdExpreChange(Sender: TObject);
begin
     BtIncluir.Enabled:=true;
end;

procedure TFrmResultGranjeiro.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmResultGranjeiro.BtIncluirClick(Sender: TObject);
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
        Vre:= Vre + '(' ;

   //Alterar nomes
    Case LCampos.itemindex of
        0:Vre:=Vre + '   A.ID_LOTE   ';
        1:Vre:=Vre + '   TRUNC( DATA_ALOJAMENTO )  ';
        2:Vre:=Vre + '   A.ID_INTEGRADO     ';
        3:Vre:=Vre + '   F.ID_CIDADE     ';
        4:Vre:=Vre + '   FP.Id_Fornecedor  ';
        5:Vre:=Vre + '   IL.ID_LINHAGEM    ';
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
         1 : Vre:=Vre + 'TO_DATE(''';
//            3:Vre:=Vre + '''';
         //3 : Vre:=Vre + '''';
    end;

    Vre:=Vre + Edexpre.text;

    Case LCampos.itemindex of
         1 : Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
//            3:Vre:= Vre + '''';
        //3 :Vre:= Vre + '''';

    end;

    Vre:=Vre+')';

    MResul.Lines.Add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;

end;

procedure TFrmResultGranjeiro.BPESQClick(Sender: TObject);
Var Vdtstr : String;
begin
     CASE SELPE OF
       1:BEGIN
          Cria_FrmSelData(Vdtstr);
            EdExpre.text:= Vdtstr;
          if BtIncluir.Enabled then
            BtIncluir.SetFocus;
         END;
       2:BEGIN
              FrmOriPesq := 2;
              FrmPesqIntegrado:=TFrmPesqIntegrado.Create(Self);
              FrmPesqIntegrado.Show;

         END;
       3:BEGIN
              Cria_FrmPesqCid(VCid, NCid, NEst, NPais, NReg );
              EdExpre.text := VCid;
         END;
       4:BEGIN
              Cria_FrmPesqFor(VFor,NFor,NEND,NCEP,NFONE );
              EdExpre.text := VFor;
         END;
       5:BEGIN
              Cria_FrmPesqLinhagem( ID_LIN );
              EdExpre.text := ID_LIN;
         END;

     end
end;

procedure TFrmResultGranjeiro.SB_RelatorioClick(Sender: TObject);
begin
      Qr.DisableControls;
      FrmRelResultGranjeiro := TFrmRelResultGranjeiro.Create(Self);
      FrmRelResultGranjeiro.lbl_Periodo.Caption := edtDataIni.EditText+ ' A ' + edtDataFim.EditText ; //01/03/2017 A 31/03/2017

     CASE Cmb_TipoData.ItemIndex  OF
         0 : FrmRelResultGranjeiro.RLDBText1.DataField := 'DATA_SAIDA'     ;
         1 : FrmRelResultGranjeiro.RLDBText1.DataField := 'DT_FECHAMENTO'  ;
         2 : FrmRelResultGranjeiro.RLDBText1.DataField := 'ULTIMA_RETIRADA';
         3 : FrmRelResultGranjeiro.RLDBText1.DataField := 'PRIM_RETIRADA'  ;
     END  ;

     CASE Cmb_TipoData.ItemIndex  OF
         0 : FrmRelResultGranjeiro.RLLabel5.Caption := 'Dt_Saída'   ;
         1 : FrmRelResultGranjeiro.RLLabel5.Caption := 'Dt Fech.'   ;
         2 : FrmRelResultGranjeiro.RLLabel5.Caption := 'Dt Ult Ret' ;
         3 : FrmRelResultGranjeiro.RLLabel5.Caption := 'Dt Prim Ret';
     END  ;

      //FrmRelResultGranjeiro.RLDBText1.DataField :=

      //FrmRelResultGranjeiro.PDSetup.Copies := 1;
      FrmRelResultGranjeiro.RLReport1.Preview(nil);
      Qr.EnableControls;

end;

procedure TFrmResultGranjeiro.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = Ord('C')) then
       CTRL_C_Grig ( DBGrid1 );
end;

end.
