unit ufrmVendasVendedorCliente;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, Ora, MemDS, DBAccess,
  ComCtrls, DBCtrls, Grids, DBGrids, DateUtils, Winapi.Windows;

type
  TfrmVendasVendedorCliente = class(TForm)
    pnlBotoes: TPanel;
    pnlFiltros: TPanel;
    Sb_Sair: TSpeedButton;
    Label2: TLabel;
    Label1: TLabel;
    DtFim: TEdit;
    DTini: TEdit;
    BPESQ: TBitBtn;
    BtAtivar: TBitBtn;
    BtLimpar: TBitBtn;
    BtIncluir: TBitBtn;
    RGeou: TRadioGroup;
    EdExpre: TEdit;
    Label7: TLabel;
    CBCond: TComboBox;
    Label6: TLabel;
    MResul: TMemo;
    LCampos: TListBox;
    lblFiltros: TLabel;
    qryVendasCliente: TOraQuery;
    dtsVendasCliente: TOraDataSource;
    qryVendasClienteCO_VENDEDOR: TFloatField;
    qryVendasClienteCO_CLIENTE: TFloatField;
    qryVendasClienteCO_USUARIO: TFloatField;
    qryVendasClienteNO_VENDEDOR: TStringField;
    qryVendasClienteNO_CLIENTE: TStringField;
    qryVendasClienteNO_USUARIO: TStringField;
    qryVendasClienteCX_JAN: TFloatField;
    qryVendasClienteKG_JAN: TFloatField;
    qryVendasClienteVL_JAN: TFloatField;
    qryVendasClienteCX_FEV: TFloatField;
    qryVendasClienteKG_FEV: TFloatField;
    qryVendasClienteVL_FEV: TFloatField;
    qryVendasClienteCX_MAR: TFloatField;
    qryVendasClienteKG_MAR: TFloatField;
    qryVendasClienteVL_MAR: TFloatField;
    qryVendasClienteCX_ABR: TFloatField;
    qryVendasClienteKG_ABR: TFloatField;
    qryVendasClienteVL_ABR: TFloatField;
    qryVendasClienteCX_MAI: TFloatField;
    qryVendasClienteKG_MAI: TFloatField;
    qryVendasClienteVL_MAI: TFloatField;
    qryVendasClienteCX_JUN: TFloatField;
    qryVendasClienteKG_JUN: TFloatField;
    qryVendasClienteVL_JUN: TFloatField;
    qryVendasClienteCX_JUL: TFloatField;
    qryVendasClienteKG_JUL: TFloatField;
    qryVendasClienteVL_JUL: TFloatField;
    qryVendasClienteCX_AGO: TFloatField;
    qryVendasClienteKG_AGO: TFloatField;
    qryVendasClienteVL_AGO: TFloatField;
    qryVendasClienteCX_SET: TFloatField;
    qryVendasClienteKG_SET: TFloatField;
    qryVendasClienteVL_SET: TFloatField;
    qryVendasClienteCX_OUT: TFloatField;
    qryVendasClienteKG_OUT: TFloatField;
    qryVendasClienteVL_OUT: TFloatField;
    qryVendasClienteCX_NOV: TFloatField;
    qryVendasClienteKG_NOV: TFloatField;
    qryVendasClienteVL_NOV: TFloatField;
    qryVendasClienteCX_DEZ: TFloatField;
    qryVendasClienteKG_DEZ: TFloatField;
    qryVendasClienteVL_DEZ: TFloatField;
    qryVendasClienteCX_JAN_2: TFloatField;
    qryVendasClienteKG_JAN_2: TFloatField;
    qryVendasClienteVL_JAN_2: TFloatField;
    qryVendasClienteCX_TOT: TFloatField;
    qryVendasClienteKG_TOT: TFloatField;
    qryVendasClienteVL_TOT: TFloatField;
    qryVendasClienteCX_FEV_2: TFloatField;
    qryVendasClienteKG_FEV_2: TFloatField;
    qryVendasClienteVL_FEV_2: TFloatField;
    qryVendasClienteCX_MAR_2: TFloatField;
    qryVendasClienteKG_MAR_2: TFloatField;
    qryVendasClienteVL_MAR_2: TFloatField;
    qryVendasClienteCX_ABR_2: TFloatField;
    qryVendasClienteKG_ABR_2: TFloatField;
    qryVendasClienteVL_ABR_2: TFloatField;
    qryVendasClienteCX_MAI_2: TFloatField;
    qryVendasClienteKG_MAI_2: TFloatField;
    qryVendasClienteVL_MAI_2: TFloatField;
    qryVendasClienteCX_JUN_2: TFloatField;
    qryVendasClienteKG_JUN_2: TFloatField;
    qryVendasClienteVL_JUN_2: TFloatField;
    qryVendasClienteCX_JUL_2: TFloatField;
    qryVendasClienteKG_JUL_2: TFloatField;
    qryVendasClienteVL_JUL_2: TFloatField;
    qryVendasClienteCX_AGO_2: TFloatField;
    qryVendasClienteKG_AGO_2: TFloatField;
    qryVendasClienteVL_AGO_2: TFloatField;
    qryVendasClienteCX_SET_2: TFloatField;
    qryVendasClienteKG_SET_2: TFloatField;
    qryVendasClienteVL_SET_2: TFloatField;
    qryVendasClienteCX_OUT_2: TFloatField;
    qryVendasClienteKG_OUT_2: TFloatField;
    qryVendasClienteVL_OUT_2: TFloatField;
    qryVendasClienteCX_NOV_2: TFloatField;
    qryVendasClienteKG_NOV_2: TFloatField;
    qryVendasClienteVL_NOV_2: TFloatField;
    qryVendasClienteCX_DEZ_2: TFloatField;
    qryVendasClienteKG_DEZ_2: TFloatField;
    qryVendasClienteVL_DEZ_2: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    sp_Consulta: TOraSQL;
    Panel1: TPanel;
    tvVendasClienteVendedor: TTreeView;
    Panel2: TPanel;
    Panel3: TPanel;
    qryTemp: TOraQuery;
    FloatField2: TFloatField;
    StringField2: TStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    FloatField51: TFloatField;
    FloatField52: TFloatField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    FloatField55: TFloatField;
    FloatField56: TFloatField;
    FloatField57: TFloatField;
    FloatField58: TFloatField;
    FloatField59: TFloatField;
    FloatField60: TFloatField;
    FloatField61: TFloatField;
    FloatField62: TFloatField;
    FloatField63: TFloatField;
    FloatField64: TFloatField;
    FloatField65: TFloatField;
    FloatField66: TFloatField;
    FloatField67: TFloatField;
    FloatField68: TFloatField;
    FloatField69: TFloatField;
    FloatField70: TFloatField;
    FloatField71: TFloatField;
    FloatField72: TFloatField;
    FloatField73: TFloatField;
    FloatField74: TFloatField;
    FloatField75: TFloatField;
    FloatField76: TFloatField;
    FloatField77: TFloatField;
    FloatField78: TFloatField;
    dtsTemp: TOraDataSource;
    DBGrid1: TDBGrid;
    btnExcel: TSpeedButton;
    dlgSaveArquivo: TSaveDialog;
    procedure Sb_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
//    procedure tvVendasClienteVendedorItemClick(Sender: TObject;
//      Button: TMouseButton; Node: TTreeNode; const Pt: TPoint);
    procedure btnExcelClick(Sender: TObject);
    procedure tvVendasClienteVendedorClick(Sender: TObject);
  private
    { Private declarations }
    VFINAL, Vdata:STRING;
    SELPE:integer;
    bUserResg : Boolean;
  public
    { Public declarations }
  sCodV, sCodC : string;
  end;

var
  frmVendasVendedorCliente: TfrmVendasVendedorCliente;

implementation

uses Principal, Global, UFrmPesqVend, UPesquiCliente, ufrmConsultaUsuarioSistema, ufrmRelVendasVendedorCliente;

{$R *.dfm}

procedure TfrmVendasVendedorCliente.Sb_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVendasVendedorCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.VEN015a.Enabled:= True;
  Action:=caFree;
end;

procedure TfrmVendasVendedorCliente.FormActivate(Sender: TObject);
begin
  IF LCAMPOS.Items.Count=0 then
  BEGIN
    With LCampos.Items do
    begin
      Add('Cód. Cliente ');
      Add('Cód. Vendedor ');
      Add('Cód. Vendedor Resg ');
    end;
    LCAMPOS.ItemIndex := 0;
  END;

  PageControl1.Pages[0].Show;

  DTini.Text := DateToStr( StartOfAMonth( YearOf( now), MonthOf(now)));
  DtFim.Text := DateToStr( EndOfAMonth( YearOf( now), MonthOf(now)));

  EdExpre.SetFocus;

end;

procedure TfrmVendasVendedorCliente.LCamposClick(Sender: TObject);
begin
  SELPE:=0;

  CASE LCAMPOS.ItemIndex OF
    0:SELPE:=1;
    1:SELPE:=2;
    2:SELPE:=3;
  END;

  BPESQ.Visible:=(SELPE > 0);

end;

procedure TfrmVendasVendedorCliente.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TfrmVendasVendedorCliente.EdExpreChange(Sender: TObject);
begin
  BtIncluir.Enabled:=true;
end;

procedure TfrmVendasVendedorCliente.BPESQClick(Sender: TObject);
begin
  FrmOriPesq:=151;

  CASE SELPE OF
    1:BEGIN
      FrmPesqCliente:=TFrmPesqCliente.Create(Self);
      FrmPesqCliente.ShowModal;
    END;
    2,3:BEGIN
      FrmPesqVend:=TFrmPesqVend.Create(Self);
      FrmPesqVend.ShowModal;
    END;
  end;

  BPESQ.Visible:=FALSE;
end;

procedure TfrmVendasVendedorCliente.BtIncluirClick(Sender: TObject);
var
  Vre,VA:String;
  Vcampos,FA,FO:integer;
begin

  If EdExpre.Text <> '' then
  Begin
    IF MResul.Lines.Count>0 then
    begin
      If RGeou.ItemIndex=0  then
        Vre:=' AND '
      Else
        Vre:=' OR ';
    end;

    If  LCampos.itemindex=-1 then
      Vcampos:=0
    else
      Vcampos:=LCampos.itemindex;

    Case LCampos.itemindex of
      0:Vre:=Vre + 'CO_CLIENTE';
      1:Vre:=Vre + 'CO_VENDEDOR';
      2:Vre:=Vre + 'CO_USUARIO';
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
      7:Vre:=Vre + '''';
    end;

    Vre:=Vre + Edexpre.text;

    Case LCampos.itemindex of
      7:Vre:= Vre + '''';
    end;

    MResul.Lines.add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;

  end;

  BtAtivar.SetFocus;
end;

procedure TfrmVendasVendedorCliente.BtAtivarClick(Sender: TObject);
VAR
  XTM, x:INTEGER;
  tvVENDEDOR, tvCLIENTE, tvANO, tvMES: TTreeNode;
  sVENDEDOR, sCLIENTE, sANO, sMES: String;

Begin
  tvVendasClienteVendedor.Items.Clear;
  qryTemp.Close;
  qryTemp.SQL.Clear;

  bUserResg:= False;

  for x := 0 to DBGrid1.Columns.Count - 1 do
  begin
    DBGrid1.Columns[x].Visible := True;
  end;

  Screen.Cursor := crSQLWait;

  WITH sp_Consulta DO
  begin
    ParamByName('dataini').Value := DTini.Text;
    ParamByName('datafim').Value := DtFim.Text;
    Execute;
  end;

  qryVendasCliente.Close;
  qryVendasCliente.SQL.Clear;
  qryVendasCliente.SQL.Add('SELECT * FROM TAB_TEMP_VENDAS_CLIENTE_VEND TB');

  XTM:=MResul.Lines.Count;

  If XTM >0 then
  begin
    qryVendasCliente.SQL.Add(' WHERE ');
    qryVendasCliente.SQL.Add(MResul.Text);
  end;

  bUserResg:= Pos('CO_USUARIO', qryVendasCliente.SQL.Text) > 0;

  if bUserResg then
    qryVendasCliente.SQL.Add('ORDER BY VL_TOT DESC  ')
  else
    qryVendasCliente.SQL.Add('ORDER BY CO_VENDEDOR, VL_TOT DESC  ');

  qryVendasCliente.Open;
  qryVendasCliente.First;

  while not qryVendasCliente.Eof do
  begin

    if not(bUserResg) then
    begin
      // VENDEDOR
      if sVENDEDOR <> qryVendasCliente.FieldByName('CO_VENDEDOR').AsString then
      begin
        tvVENDEDOR := tvVendasClienteVendedor.Items.AddChild(Nil,
        qryVendasCliente.FieldByName('CO_VENDEDOR').AsString + ' - ' +qryVendasCliente.FieldByName('NO_VENDEDOR').AsString);
      end;
      // CLIENTE
      if sCLIENTE <> qryVendasCliente.FieldByName('CO_CLIENTE').AsString then
      begin
        tvCLIENTE := tvVendasClienteVendedor.Items.AddChild(tvVENDEDOR,
        qryVendasCliente.FieldByName('CO_CLIENTE').AsString + ' - ' +qryVendasCliente.FieldByName('NO_CLIENTE').AsString);
      end;

      sVENDEDOR := qryVendasCliente.FieldByName('CO_VENDEDOR').AsString;

    end
    else
    begin

      if sVENDEDOR <> qryVendasCliente.FieldByName('CO_USUARIO').AsString then
      begin
        tvVENDEDOR := tvVendasClienteVendedor.Items.AddChild(Nil,
        qryVendasCliente.FieldByName('CO_USUARIO').AsString + ' - ' +qryVendasCliente.FieldByName('NO_USUARIO').AsString);
      end;

      if sCLIENTE <> qryVendasCliente.FieldByName('CO_CLIENTE').AsString then
      begin
        tvCLIENTE := tvVendasClienteVendedor.Items.AddChild(tvVENDEDOR,
        qryVendasCliente.FieldByName('CO_CLIENTE').AsString + ' - ' +qryVendasCliente.FieldByName('NO_CLIENTE').AsString);
      end;

      sVENDEDOR := qryVendasCliente.FieldByName('CO_USUARIO').AsString;

    end;

    sCLIENTE := qryVendasCliente.FieldByName('CO_CLIENTE').AsString;
    qryVendasCliente.Next;
  end;

  Screen.Cursor := crDefault;
  PageControl1.Pages[1].Show;

end;

procedure TfrmVendasVendedorCliente.tvVendasClienteVendedorClick(
  Sender: TObject);
var
  Nodo : TTreeNode;
  index, X, y : integer;
  sCodV, sCodC, sDesc, sDescV, sDescC, sDescVendedor, sDescCliente : string;
begin
  sCodV :='';
  sCodC :='';
  sDescV :='';
  sDescC :='';
  x:= 0;
  y:= 0;

  for x := 0 to DBGrid1.Columns.Count - 1 do
  begin
    DBGrid1.Columns[x].Visible := True;
  end;

  index := tvVendasClienteVendedor.Selected.AbsoluteIndex;
  sDesc:= tvVendasClienteVendedor.Items[index].Text;

  if not(bUserResg) then
  begin
    if tvVendasClienteVendedor.Selected.Level = 0 then
    begin
      sCodV := 'CO_VENDEDOR = ' + SoNumeros(Copy(sDesc,1,(Pos('-',sDesc))-1));
      Panel3.Caption := sDesc;
    end
    else
    begin
      for x := 0 to index do  //percorre o TreeView
      begin

        sDesc:= tvVendasClienteVendedor.Items[x].Text;

        if tvVendasClienteVendedor.Items[x].Level = 0 then
        begin
          sCodV := 'CO_VENDEDOR = ' + SoNumeros(Copy(sDesc,1,(Pos('-',sDesc))-1));
          sDescV := sDesc;
        end;

        if tvVendasClienteVendedor.Items[x].Level = 1 then
        begin
          sCodC := ' AND CO_CLIENTE = ' + SoNumeros(Copy(sDesc,1,(Pos('-',sDesc))-1));
          sDescC := sDesc;
        end;

        if tvVendasClienteVendedor.Items[x].Selected then
          break;
      end;
    end;
  end
  else
  begin

    if tvVendasClienteVendedor.Selected.Level = 0 then
    begin
      sCodV := 'CO_USUARIO = ' + SoNumeros(Copy(sDesc,1,(Pos('-',sDesc))-1));
      Panel3.Caption := sDesc;
    end
    else
    begin
      for x := 0 to index do  //percorre o TreeView
      begin

        sDesc:= tvVendasClienteVendedor.Items[x].Text;

        if tvVendasClienteVendedor.Items[x].Level = 0 then
        begin
          sCodV := 'CO_USUARIO = ' + SoNumeros(Copy(sDesc,1,(Pos('-',sDesc))-1));
          sDescV := sDesc;
        end;

        if tvVendasClienteVendedor.Items[x].Level = 1 then
        begin
          sCodC := ' AND CO_CLIENTE = ' + SoNumeros(Copy(sDesc,1,(Pos('-',sDesc))-1));
          sDescC := sDesc;
        end;

        if tvVendasClienteVendedor.Items[x].Selected then
          break;
      end;
    end;
  end;

  qryTemp.Close;
  qryTemp.SQL.Clear;
  if not(bUserResg) then
  begin
    qryTemp.SQL.Text := 'SELECT * FROM TAB_TEMP_VENDAS_CLIENTE_VEND WHERE ' + sCodV + sCodC + ' ORDER BY CO_VENDEDOR, VL_TOT DESC';
    Panel3.Caption := sDescV + ' >> ' + sDescC;
  end
  else
  begin
    qryTemp.SQL.Text := 'SELECT CO_CLIENTE, NO_CLIENTE, '+
                        'SUM(CX_JAN) AS CX_JAN,SUM(KG_JAN) AS KG_JAN,SUM(VL_JAN) AS VL_JAN,SUM(CX_FEV) AS CX_FEV,SUM(KG_FEV) AS KG_FEV, '+
                        'SUM(VL_FEV) AS VL_FEV,SUM(CX_MAR) AS CX_MAR,SUM(KG_MAR) AS KG_MAR,SUM(VL_MAR) AS VL_MAR,SUM(CX_ABR) AS CX_ABR, '+
                        'SUM(KG_ABR) AS KG_ABR,SUM(VL_ABR) AS VL_ABR,SUM(CX_MAI) AS CX_MAI,SUM(KG_MAI) AS KG_MAI,SUM(VL_MAI) AS VL_MAI, '+
                        'SUM(CX_JUN) AS CX_JUN,SUM(KG_JUN) AS KG_JUN,SUM(VL_JUN) AS VL_JUN,SUM(CX_JUL) AS CX_JUL,SUM(KG_JUL) AS KG_JUL, '+
                        'SUM(VL_JUL) AS VL_JUL,SUM(CX_AGO) AS CX_AGO,SUM(KG_AGO) AS KG_AGO,SUM(VL_AGO) AS VL_AGO,SUM(CX_SET) AS CX_SET, '+
                        'SUM(KG_SET) AS KG_SET,SUM(VL_SET) AS VL_SET,SUM(CX_OUT) AS CX_OUT,SUM(KG_OUT) AS KG_OUT,SUM(VL_OUT) AS VL_OUT, '+
                        'SUM(CX_NOV) AS CX_NOV,SUM(KG_NOV) AS KG_NOV,SUM(VL_NOV) AS VL_NOV,SUM(CX_DEZ) AS CX_DEZ,SUM(KG_DEZ) AS KG_DEZ, '+
                        'SUM(VL_DEZ) AS VL_DEZ,SUM(CX_JAN_2) AS CX_JAN_2,SUM(KG_JAN_2) AS KG_JAN_2,SUM(VL_JAN_2) AS VL_JAN_2, '+
                        'SUM(CX_TOT) AS CX_TOT,SUM(KG_TOT) AS KG_TOT,SUM(VL_TOT) AS VL_TOT,SUM(CX_FEV_2) AS CX_FEV_2, '+
                        'SUM(KG_FEV_2) AS KG_FEV_2,SUM(VL_FEV_2) AS VL_FEV_2,SUM(CX_MAR_2) AS CX_MAR_2,SUM(KG_MAR_2) AS KG_MAR_2, '+
                        'SUM(VL_MAR_2) AS VL_MAR_2,SUM(CX_ABR_2) AS CX_ABR_2,SUM(KG_ABR_2) AS KG_ABR_2,SUM(VL_ABR_2) AS VL_ABR_2, '+
                        'SUM(CX_MAI_2) AS CX_MAI_2,SUM(KG_MAI_2) AS KG_MAI_2,SUM(VL_MAI_2) AS VL_MAI_2,SUM(CX_JUN_2) AS CX_JUN_2, '+
                        'SUM(KG_JUN_2) AS KG_JUN_2,SUM(VL_JUN_2) AS VL_JUN_2,SUM(CX_JUL_2) AS CX_JUL_2,SUM(KG_JUL_2) AS KG_JUL_2, '+
                        'SUM(VL_JUL_2) AS VL_JUL_2,SUM(CX_AGO_2) AS CX_AGO_2,SUM(KG_AGO_2) AS KG_AGO_2,SUM(VL_AGO_2) AS VL_AGO_2, '+
                        'SUM(CX_SET_2) AS CX_SET_2,SUM(KG_SET_2) AS KG_SET_2,SUM(VL_SET_2) AS VL_SET_2,SUM(CX_OUT_2) AS CX_OUT_2, '+
                        'SUM(KG_OUT_2) AS KG_OUT_2,SUM(VL_OUT_2) AS VL_OUT_2,SUM(CX_NOV_2) AS CX_NOV_2,SUM(KG_NOV_2) AS KG_NOV_2, '+
                        'SUM(VL_NOV_2) AS VL_NOV_2,SUM(CX_DEZ_2) AS CX_DEZ_2,SUM(KG_DEZ_2) AS KG_DEZ_2,SUM(VL_DEZ_2) AS VL_DEZ_2 '+
                        'FROM TAB_TEMP_VENDAS_CLIENTE_VEND WHERE ' + sCodV + sCodC + ' GROUP BY CO_CLIENTE, NO_CLIENTE ORDER BY VL_TOT DESC';
    Panel3.Caption := sDesc;
  end;

  qryTemp.Open;
  qryTemp.DisableControls;

  for x := 0 to DBGrid1.Columns.Count - 1 do
  begin
    DBGrid1.Columns[x].Visible := False;
  end;

  for x := 0 to DBGrid1.Columns.Count - 1 do
  begin
    qryTemp.First;
    for y := 0 to qryTemp.RecordCount - 1 do
    begin
      if (qryTemp.FieldByName(DBGrid1.Columns[x].FieldName).Value > 0) then //OR (not(qryTemp.FieldByName(DBGrid1.Columns[x].FieldName).IsNull)) then
      begin
        DBGrid1.Columns[x].Visible := True;
        Break;
      end
      else
        qryTemp.Next;
    end;
  end;

  qryTemp.First;
  qryTemp.EnableControls;
end;

procedure TfrmVendasVendedorCliente.btnExcelClick(Sender: TObject);
var
  Arquivo: TextFile;
  index, X : integer;
begin
  Screen.Cursor := crSQLWait;

  if qryTemp.RecordCount = 0 then
  begin
    Application.MessageBox('Selecione um registro para exportação dos dados.', PChar(frmVendasVendedorCliente.Caption), MB_OK + MB_ICONINFORMATION);
    Screen.Cursor := crDefault;
    Exit;
  end;

  try
    if dlgSaveArquivo.Execute then
    begin
      dlgSaveArquivo.FileName := 'VENDAS_VENDEDOR_CLIENTE_' + ReplaceStr(DTini.Text,'/','') + '_' + ReplaceStr(DTini.Text,'/','') + '.csv';
      AssignFile(Arquivo, dlgSaveArquivo.FileName);
      Rewrite(Arquivo);

      Write(Arquivo, 'CLIENTE;');

      for x := 0 to DBGrid1.Columns.Count - 1 do
      begin
        if (DBGrid1.Columns[x].Visible = True) AND (DBGrid1.Columns.Items[x].Field.AsString <> '') then
          Write(Arquivo, UpperCase(DBGrid1.Columns[x].Title.Caption) + ';');
      end;

      Writeln(Arquivo, ';');

      qryTemp.First;

      while not qryTemp.Eof do
      begin
        Write(Arquivo, qryTemp.FieldByName('NO_CLIENTE').AsString + ';');

        for x := 0 to DBGrid1.Columns.Count - 1 do
        begin
          if (DBGrid1.Columns[x].Visible = True) then
            Write(Arquivo, DBGrid1.Columns.Items[x].Field.AsString + ';');
        end;

        Writeln(Arquivo, ';');
        qryTemp.Next;

      end;

      CloseFile(Arquivo);
      Application.MessageBox(PChar('Arquivo gerado com sucesso em ' + dlgSaveArquivo.FileName), PChar(frmVendasVendedorCliente.Caption), MB_OK + MB_ICONINFORMATION);

    end;
  except
    Application.MessageBox('Erro ao gerar o arquivo. Verifique se o local de destino existe e está acessível.', PChar(frmVendasVendedorCliente.Caption), MB_OK + MB_ICONINFORMATION);
  end;

  Screen.Cursor := crDefault;

end;

end.

