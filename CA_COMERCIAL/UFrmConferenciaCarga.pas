unit UFrmConferenciaCarga;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, Grids, DBGrids,
  ComCtrls, Buttons, ExtCtrls;

type
  TFrmConferenciaCarga = class(TForm)
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
    QrID_CARGEXPE: TFloatField;
    QrGN_PLACVEICTRAN: TStringField;
    QrNM_FORNECEDOR: TStringField;
    QrFL_STATCARGEXPE: TStringField;
    QrDT_CARGEXPE: TDateTimeField;
    QrNR_ORDEENTRCARGEXPE: TFloatField;
    Panel1: TPanel;
    btnAtualizar: TSpeedButton;
    btnImprimir: TSpeedButton;
    btnSair: TSpeedButton;
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
    procedure btnImprimirClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    SELPE : integer;
  public
    { Public declarations }
  end;

var
  FrmConferenciaCarga: TFrmConferenciaCarga;

implementation

{$R *.dfm}
uses Principal,Global,UFrmSeldata, UFrmPesCaminhao , UFrmRelConfCarga, UFrmConfCargaNovo;

procedure TFrmConferenciaCarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmConferenciaCarga:=nil;
//  FrmPrincipal.VEN052.Enabled:= True;
  FrmPrincipal.ACVEN052.Enabled := True;
  Action:=caFree;
end;

procedure TFrmConferenciaCarga.FormShow(Sender: TObject);
begin
  IF LCAMPOS.Items.Count=0 then
  BEGIN
    With LCampos.Items do
    begin
      Add('Data da Carga ');//0
      Add('Placa         ');//1
      Add('Transportador ');//2
    end;
  END;

  PageControl1.Pages[1].TabVisible:=false;
  PageControl1.ActivePage :=  Tab_Criterio ;
end;

procedure TFrmConferenciaCarga.Sb_SairClick(Sender: TObject);
begin
//    Close;
end;

procedure TFrmConferenciaCarga.BtAtivarClick(Sender: TObject);
VAR
  XTM:INTEGER;
begin
  Qr.DisableControls;
  Qr.Close;
  Qr.MacroByName('Macro').Value := '';

  XTM:=MResul.Lines.Count;
  If XTM >0 then
  begin
    Qr.MacroByName('Macro').Value :=  ' Where ' + MResul.Text ;
  end;

  Qr.Open;
  Qr.EnableControls;
  PageControl1.Pages[1].TabVisible := true;
  PageControl1.Pages[1].Show;

end;

procedure TFrmConferenciaCarga.LCamposClick(Sender: TObject);
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

procedure TFrmConferenciaCarga.EdExpreChange(Sender: TObject);
begin
     BtIncluir.Enabled:=true;
end;

procedure TFrmConferenciaCarga.BtLimparClick(Sender: TObject);
begin
    EdExpre.Text:='';
    MResul.Clear;
    EdExpre.SetFocus;
    BtIncluir.Enabled:=false;
end;

procedure TFrmConferenciaCarga.BtIncluirClick(Sender: TObject);
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
          Vre:='AND ';
        end
      Else
      begin
        Vlinha:= MResul.Lines.Strings[MResul.Lines.Count-1];
        MResul.Lines.Strings[MResul.Lines.Count-1]:= Copy(Vlinha,1,length(Vlinha)-1);
        Vre:='OR ';
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
      0:Vre:=Vre + 'E.DT_CARGEXPE ';
      1:Vre:=Vre + 'E.GN_PLACVEICTRAN ';
      2:Vre:=Vre + 'F.ID_FORNECEDOR ';
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
      0 : Vre:=Vre + 'TO_DATE(''';
    end;
  // Abre aspas para texto
    Case LCampos.itemindex of
      1: Vre:=Vre +'''';
    end;

    Vre:=Vre + Edexpre.text;

    Case LCampos.itemindex of
      0 : Vre:= Vre + '''' + ',' + '''DD/MM/YYYY''' +')';
    end;

  // Fecha aspas para texto
    Case LCampos.itemindex of
      1 : Vre:=Vre +'''' ;
    end ;

    Vre:=Vre+')';

    MResul.Lines.Add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;
  end;

  BtAtivar.SetFocus;
end;

procedure TFrmConferenciaCarga.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = Ord('C')) then
       CTRL_C_Grig ( DBGrid1 );
end;

procedure TFrmConferenciaCarga.SB_ATUALClick(Sender: TObject);
begin
//     Qr.Close;
//     Qr.Open;
end;

procedure TFrmConferenciaCarga.BPESQClick(Sender: TObject);
var  Vdtstr : String;
begin
  CASE SELPE OF
    1:Begin
      Cria_FrmSelData(Vdtstr);
      EdExpre.text:= Vdtstr;
    end;
    2:Begin
      try
        FrmPesqCaminhao:=TFrmPesqCaminhao.Create(Self);
        FrmPesqCaminhao.VORIGEM:=6;
        FrmPesqCaminhao.ShowModal;
      except;
        FrmPesqCaminhao.Free;
      end;
    end ;
  END;
end;

procedure TFrmConferenciaCarga.btnImprimirClick(Sender: TObject);
var Cargas : string ;
         i : Integer ;
begin
  if DBGrid1.SelectedRows.Count = 0 then
  begin
    MessageDlg('Pelo menos uma carga deve ser selecionada !', mtWarning, [mbOk], 0);
    Exit;
  end;


  for i := 0 to DBGrid1.SelectedRows.Count - 1 do
  begin
    // Posicionamos no registro desejado
    DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[i]);
    if ( i = 0 ) then
      Cargas := QrID_CARGEXPE.AsString
    else
      Cargas := Cargas +', '+QrID_CARGEXPE.AsString ;
  end;

  FrmRelConfCarga := TFrmRelConfCarga.Create(Self);
//  FrmRelConfCarga.RLPrintDialogSetup1.Copies := 1;
  FrmRelConfCarga.Qr.Close;
  FrmRelConfCarga.Qr.MacroByName('Where').Value :=  'WHERE E.ID_CARGEXPE IN ( '+Cargas + ' ) ';
  FrmRelConfCarga.Qr.Open;
  FrmRelConfCarga.RLReport1.Preview(nil);

end;

procedure TFrmConferenciaCarga.btnAtualizarClick(Sender: TObject);
begin
  Qr.Close;
  Qr.Open;
end;

procedure TFrmConferenciaCarga.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
