unit UFrmVendedorCliente;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF}, Types, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls,
  DB, Ora, MemDS, DBAccess;

type
  TFrmVendedorCliente = class(TForm)
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
    QrID_VENDEDOR: TFloatField;
    QrNM_VENDEDOR: TStringField;
    QrID_CLIENTE: TFloatField;
    QrNM_CLIENTE: TStringField;
    QrFL_PESSCLIE: TStringField;
    QrID_CIDADE: TFloatField;
    QrNM_CIDADE: TStringField;
    QrNM_BAIRRO: TStringField;
    QrVL_CREDATUACLIE: TFloatField;
    QrTELEFONE: TStringField;
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
  private
    { Private declarations }
    SELPE : integer;
  public
    { Public declarations }
    VCid, NCid, NEst, NPais, NReg : String;
  end;

var
  FrmVendedorCliente: TFrmVendedorCliente;

implementation

{$R *.dfm}
uses Principal,Global,UFrmPesqCid, UFrmPesqVend, UFrmRelVendedorCliente;

procedure TFrmVendedorCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FrmPrincipal.VEN050.Enabled:= True;
     Action:=caFree;
end;

procedure TFrmVendedorCliente.FormShow(Sender: TObject);
begin
     IF LCAMPOS.Items.Count=0 THEN
     BEGIN
          With LCampos.Items do
          begin
               Add('Vendedor    ');//0
               Add('Cidade      ');//1
               Add('Pessoa(F/J) ');//2
               Add('Ativo(S/N) ');//3

          end;
     END;
     PageControl1.Pages[1].TabVisible:=false;

     PageControl1.ActivePage :=  Tab_Criterio ;
end;

procedure TFrmVendedorCliente.Sb_SairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmVendedorCliente.BtAtivarClick(Sender: TObject);
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
           Qr.MacroByName('Macro').Value :=  ' Where ' + MResul.Text ;
      end;

     Qr.Open;
     Qr.EnableControls;
     PageControl1.Pages[1].TabVisible := true;
     PageControl1.Pages[1].Show;

end;

procedure TFrmVendedorCliente.LCamposClick(Sender: TObject);
begin
     SELPE:=0;

      Case LCAMPOS.ItemIndex of
         0:SELPE:=1;
         1:SELPE:=2;
      End;

      If SELPE>0 then
         BPESQ.Visible := TRUE
      else
          BPESQ.Visible :=FALSE;
end;

procedure TFrmVendedorCliente.EdExpreChange(Sender: TObject);
begin
     BtIncluir.Enabled:=true;
end;

procedure TFrmVendedorCliente.BtLimparClick(Sender: TObject);
begin
    EdExpre.Text:='';
    MResul.Clear;
    EdExpre.SetFocus;
    BtIncluir.Enabled:=false;
end;

procedure TFrmVendedorCliente.BtIncluirClick(Sender: TObject);
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
        0:Vre:=Vre + '   CV.ID_VENDEDOR  ';
        1:Vre:=Vre + '   M.ID_CIDADE  ';
        2:Vre:=Vre + '   C.FL_PESSCLIE    ';
        3:Vre:=Vre + '   C.FL_ATIVCLIE    ';
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
         99 : Vre:=Vre + 'TO_DATE(''';
    end;

    Vre:=Vre +''''+ Edexpre.text;

    Case LCampos.itemindex of
         99 : Vre:= Vre + '''' + ',' + '''DD/MM/YYYY HH24:MI:SS''' +')';
    end;

    Vre:=Vre+''')';

    MResul.Append(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

   end;
   BtAtivar.SetFocus;
end;

procedure TFrmVendedorCliente.BPESQClick(Sender: TObject);
Var Vdtstr : String;
begin
     CASE SELPE OF
       1:BEGIN
              FrmOriPesq:=14;
              FrmPesqVend:=TFrmPesqVend.Create(Self);
              FrmPesqVend.ShowModal;
             // Cria_FrmPesqFor(VFor,NFor,NEND,NCEP,NFONE );
              //EdExpre.text := VFor;
         END;
       2:BEGIN
              Cria_FrmPesqCid(VCid, NCid, NEst, NPais, NReg );
              EdExpre.text := VCid;
         END;
     end
end;

procedure TFrmVendedorCliente.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = Ord('C')) then
       CTRL_C_Grig ( DBGrid1 );
end;

procedure TFrmVendedorCliente.SB_ATUALClick(Sender: TObject);
begin
     Qr.Close;
     Qr.Open;
end;

procedure TFrmVendedorCliente.SB_RelatorioClick(Sender: TObject);
begin
     Qr.DisableControls;
     FrmRelVendedorCliente := TFrmRelVendedorCliente.Create(Self);
     FrmRelVendedorCliente.RLReport1.Preview(nil);
     Qr.EnableControls;
end;

end.
