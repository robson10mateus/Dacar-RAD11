unit UFrmVendedorCliente;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls,
  DB, Ora, MemDS, DBAccess, Winapi.Windows;

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
    DBGrid1: TDBGrid;
    Qr: TOraQuery;
    Ds: TOraDataSource;
    pnlBotoes: TPanel;
    SB_Relatorio: TSpeedButton;
    Sb_Sair: TSpeedButton;
    QrCODIGO: TFloatField;
    QrRAZAO_SOCIAL: TStringField;
    QrCNPJ_CPF: TStringField;
    QrCIDADE: TStringField;
    QrBAIRRO: TStringField;
    QrTELEFONE: TStringField;
    QrLIMITE_ATUAL: TFloatField;
    QrID_VENDEDOR: TFloatField;
    QrNM_VENDEDOR: TStringField;
    btnExcel: TSpeedButton;
    dlgSaveArquivo: TSaveDialog;
    QrGN_EMAICLIE: TStringField;
    QrNM_TABEPREC: TStringField;
    QrID_GRUPCLIE: TFloatField;
    QrSIMPLES: TStringField;
    QrFANTASIA: TStringField;
    QrVENDEDOR: TStringField;
    QrFL_RESGATADO: TStringField;
    QrULT_VEND: TDateTimeField;
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
    procedure SB_RelatorioClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnExcelClick(Sender: TObject);
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
uses Principal, Global, ufrmConsultaCidades, UFrmPesqVend, UFrmRelVendedorCliente, ufrmConsultaTabPreco, ufrmConsultaGrupoClientes;

procedure TFrmVendedorCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPrincipal.VEN050.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmVendedorCliente.FormShow(Sender: TObject);
begin
  FrmOriPesq:=14;

  IF LCAMPOS.Items.Count=0 then
  BEGIN
    With LCampos.Items do
    begin
      Add('Vendedor');//0
      Add('Cidade');//1
      Add('Pessoa(F/J)');//2
      Add('Ativo(S/N)');//3
      Add('Tabela de Preço');//4
      Add('Grupo de Clientes');//5
      Add('Cliente Resgatado');//6
      Add('Vendedor Padrão(S/N)');//7
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
  Qr.MacroByName('Macro').Value := '';

  XTM:=MResul.Lines.Count;
  If XTM >0 then
  begin
    Qr.MacroByName('Macro').Value :=  ' WHERE ' + MResul.Text ;
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
    4:SELPE:=4;
    5:SELPE:=5;
  End;

  BPESQ.Visible := (SELPE>0);
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

    Case LCampos.itemindex of
      0:Vre:=Vre + 'V.ID_VENDEDOR';
      1:Vre:=Vre + 'M.ID_CIDADE';
      2:Vre:=Vre + 'C.FL_PESSCLIE';
      3:Vre:=Vre + 'C.FL_ATIVCLIE';
      4:Vre:=Vre + 'C.ID_TABEPREC';
      5:Vre:=Vre + 'C.ID_GRUPCLIE';
      6:Vre:=Vre + 'C.FL_RESGATADO';
      7:Vre:=Vre + 'CV.FL_PADRVENDCLIE';
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

    Vre:=Vre +''''+ UpperCase(Edexpre.text);

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

procedure TFrmVendedorCliente.BPESQClick(Sender: TObject);
Var Vdtstr : String;
begin
  CASE SELPE OF
    1:BEGIN
        FrmPesqVend:=TFrmPesqVend.Create(Self);
        FrmPesqVend.ShowModal;
      END;
    2:BEGIN
        frmConsultaCidades:=TfrmConsultaCidades.Create(Self);
        frmConsultaCidades.ShowModal;
      END;
    4:BEGIN
        frmConsultaTabPreco:=TfrmConsultaTabPreco.Create(Self);
        frmConsultaTabPreco.ShowModal;
      END;
    5:BEGIN
        frmConsultaGrupoClientes:=TfrmConsultaGrupoClientes.Create(Self);
        frmConsultaGrupoClientes.Show;
      END;
  end
end;

procedure TFrmVendedorCliente.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = Ord('C')) then
    CTRL_C_Grig ( DBGrid1 );
end;

procedure TFrmVendedorCliente.SB_RelatorioClick(Sender: TObject);
begin
  Qr.DisableControls;
  FrmRelVendedorCliente := TFrmRelVendedorCliente.Create(Self);
  FrmRelVendedorCliente.lblUsuario.Caption:= gs_NomeUsuario;
  FrmRelVendedorCliente.RLReport1.Preview(nil);
  Qr.EnableControls;
end;

procedure TFrmVendedorCliente.DBGrid1TitleClick(Column: TColumn);
begin
  qr.IndexFieldNames := Column.FieldName;
end;

procedure TFrmVendedorCliente.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmVendedorCliente.btnExcelClick(Sender: TObject);
var Arquivo: TextFile;
begin
  try
    Qr.Open;

    if dlgSaveArquivo.Execute then
    begin
      dlgSaveArquivo.FileName := 'CLIENTES_VENDEDOR_' + QrNM_VENDEDOR.AsString + '.csv';
      AssignFile(Arquivo, dlgSaveArquivo.FileName);
      Rewrite(Arquivo);

      Write(Arquivo, 'CODIGO;');
      Write(Arquivo, 'RAZAO SOCIAL;');
      Write(Arquivo, 'FANTASIA;');
      Write(Arquivo, 'CNPJ / CPF;');
      Write(Arquivo, 'CIDADE;');
      Write(Arquivo, 'BAIRRO;');
      Write(Arquivo, 'TELEFONE;');
      Write(Arquivo, 'EMAIL;');
      Write(Arquivo, 'LIMITE ATUAL;');
      Write(Arquivo, 'SIMPLES NACIONAL;');
      Write(Arquivo, 'TABELA DE PREÇO;');
      write(Arquivo, 'VENDEDOR;');
      WriteLn(Arquivo, 'ÚLTIMA VENDA;');

      Qr.First;

      while not Qr.Eof do
      begin
        Write(Arquivo, QrCODIGO.AsString + ';');
        Write(Arquivo, QrRAZAO_SOCIAL.AsString + ';');
        Write(Arquivo, QrFANTASIA.AsString + ';');
        Write(Arquivo, fFormatoCNPJ_CPF(QrCNPJ_CPF.AsString) + ';');
        Write(Arquivo, QrCIDADE.AsString + ';');
        write(Arquivo, QrBAIRRO.AsString + ';');
        write(Arquivo, QrTELEFONE.AsString + ';');
        write(Arquivo, QrGN_EMAICLIE.AsString + ';');
        write(Arquivo, QrLIMITE_ATUAL.AsString + ';');
        write(Arquivo, QrSIMPLES.AsString + ';');
        write(Arquivo, QrNM_TABEPREC.AsString + ';');
        Write(Arquivo, QrVENDEDOR.AsString + ';');
        Writeln(Arquivo, QrULT_VEND.AsString + ';');

        Qr.Next;
      end;

      CloseFile(Arquivo);
      Application.MessageBox(PChar('Arquivo gerado com sucesso em ' + dlgSaveArquivo.FileName), PChar(FrmVendedorCliente.Caption), MB_OK + MB_ICONINFORMATION);
    end;
  except
    Application.MessageBox('Erro ao gerar o arquivo. Verifique se o local de destino existe e está acessível.', PChar(FrmVendedorCliente.Caption), MB_OK + MB_ICONINFORMATION);
  end;

end;

end.

