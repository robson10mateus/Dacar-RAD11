unit uFrmOcorrencias;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ExtCtrls, ComCtrls, DB, Ora, MemDS, DBAccess, Winapi.Windows, OraSmart;

type
  TFrmOcorrencias = class(TForm)
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
    Tab_Detalhe: TTabSheet;
    Label14: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edt_DtOcorrencia: TDBEdit;
    Label4: TLabel;
    btn_DtEntrega: TBitBtn;
    Ds: TOraDataSource;
    Qr_Direitos: TOraQuery;
    edtNomeUsuario: TDBEdit;
    Label5: TLabel;
    Qr_DireitosID_RECURSO: TFloatField;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    MemOcorrencia: TDBMemo;
    MemMedida: TDBMemo;
    MemObs: TDBMemo;
    MemObs2: TDBMemo;
    QryTemp: TOraQuery;
    rgpFlag: TDBRadioGroup;
    pnlBotoes: TPanel;
    SB_ANTERIOR: TSpeedButton;
    SB_PROXIMO: TSpeedButton;
    SBNovo: TSpeedButton;
    SB_Editar: TSpeedButton;
    SBDel: TSpeedButton;
    SBSalva: TSpeedButton;
    SBCancel: TSpeedButton;
    Sb_Sair: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Qr: TSmartQuery;
    QrEMPRESA: TStringField;
    QrFILIAL: TIntegerField;
    QrID_CHAMADOS: TIntegerField;
    QrDT_CHAMADOS: TDateTimeField;
    QrOCORRENCIA: TStringField;
    QrMED_CHAMADOS: TStringField;
    QrOBS_CHAMADOS: TStringField;
    QrOBS_CHAMADOS2: TStringField;
    QrFL_CHAMADOS: TStringField;
    QrID_USUARIO: TIntegerField;
    QrNOME_USUARIO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sb_SairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);
    procedure BtAtivarClick(Sender: TObject);
    procedure EdExpreChange(Sender: TObject);
    procedure LCamposClick(Sender: TObject);
    procedure BPESQClick(Sender: TObject);
    procedure SB_ANTERIORClick(Sender: TObject);
    procedure SB_PROXIMOClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btn_DtEntregaClick(Sender: TObject);
    procedure SBNovoClick(Sender: TObject);
    procedure SB_EditarClick(Sender: TObject);
    procedure SBDelClick(Sender: TObject);
    procedure SBSalvaClick(Sender: TObject);
    procedure SBCancelClick(Sender: TObject);
    procedure DsDataChange(Sender: TObject; Field: TField);
    procedure CRTemp_QrAfterCancel(DataSet: TDataSet);
    procedure CRTemp_QrAfterScroll(DataSet: TDataSet);
    procedure CRTemp_QrBeforePost(DataSet: TDataSet);
    procedure MemOcorrenciaKeyPress(Sender: TObject; var Key: Char);
    procedure MemMedidaKeyPress(Sender: TObject; var Key: Char);
    procedure MemObsKeyPress(Sender: TObject; var Key: Char);
    procedure MemObs2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    SELPE : integer;
    OrdemColuna , Ordem : String;
    SomenteConsulta: boolean;
    procedure AtualizaBotoes ();
    procedure DesabilitaCampos();
  public
    { Public declarations }
  end;

var
  FrmOcorrencias: TFrmOcorrencias;

implementation

{$R *.dfm}

uses Principal,Global,UFrmSeldata, uEmail;

procedure TFrmOcorrencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmOcorrencias:=nil;
//  FrmPrincipal.VEN059.Enabled:= True;
  FrmPrincipal.ACVEN059.Enabled:= True;
  Action:=caFree;
end;

procedure TFrmOcorrencias.Sb_SairClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmOcorrencias.FormShow(Sender: TObject);
begin
  Qr_Direitos.Close;
  Qr_Direitos.ParamByName('ID_Usuario').Value := IntToStr( gi_IdenUsua );
  Qr_Direitos.Open;


  if( Qr_DireitosID_RECURSO.AsInteger = 4  ) then
   SomenteConsulta := true
  else
   SomenteConsulta := false;

  IF LCAMPOS.Items.Count=0 then
  BEGIN
    With LCampos.Items do
    begin
      Add('Data da Ocorrencia');//0
      Add('Resolvido S/N');//1

    end;
  END;
  PageControl1.Pages[1].TabVisible:=false;
  PageControl1.Pages[2].TabVisible:=false;

  PageControl1.ActivePage :=  Tab_Criterio ;
end;

procedure TFrmOcorrencias.BtIncluirClick(Sender: TObject);
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
      Vre:= Vre + '( ' ;


    Case LCampos.itemindex of
      0:Vre:=Vre + 'DC.DT_CHAMADOS';
      1:Vre:=Vre + 'DC.FL_CHAMADOS';

    end;

    Case CBCond.ItemIndex of
      0: Vre:=Vre + ' = ';
      1: Vre:=Vre + ' <> ';
      2: Vre:=Vre + ' > ';
      3: Vre:=Vre + ' >= ';
      4: Vre:=Vre + ' < ';
      5: Vre:=Vre + ' <= ';
      6: Vre:=Vre + ' LIKE ';
    end;

    Case LCampos.itemindex of
      0 : Vre:=Vre + 'TO_DATE(''';
      1 : Vre:= Vre + '''';
    end;

    Vre:=Vre + Edexpre.text;


    Case LCampos.itemindex of
      0 : Vre:= Vre + '''' + ',' + '''DD/MM/YYYY''' +')';
      1 : Vre:= Vre + '''';
    end;

    Vre:=Vre+' )';

    MResul.Lines.Add(Vre);

    EdExpre.Text :='';
    BtIncluir.Enabled:=false;
  end;

  BtAtivar.SetFocus;
end;

procedure TFrmOcorrencias.BtLimparClick(Sender: TObject);
begin
  EdExpre.Text:='';
  MResul.Clear;
  EdExpre.SetFocus;
  BtIncluir.Enabled:=false;
end;

procedure TFrmOcorrencias.BtAtivarClick(Sender: TObject);
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
  PageControl1.Pages[2].TabVisible := True;
  PageControl1.Pages[1].Show;
  AtualizaBotoes;
  DesabilitaCampos;
end;

procedure TFrmOcorrencias.EdExpreChange(Sender: TObject);
begin
 BtIncluir.Enabled:=true
end;

procedure TFrmOcorrencias.LCamposClick(Sender: TObject);
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

procedure TFrmOcorrencias.BPESQClick(Sender: TObject);
Var Vdtstr : String;
begin
  FrmOriPesq := 59;

  CASE SELPE OF
    1:
    BEGIN
      Cria_FrmSelData
      (Vdtstr);
      if ( Vdtstr <> '' ) then
        EdExpre.text:= Vdtstr;
    END;
  end
end;

procedure TFrmOcorrencias.SB_ANTERIORClick(Sender: TObject);
begin
  Qr.Prior;
end;

procedure TFrmOcorrencias.SB_PROXIMOClick(Sender: TObject);
begin
  Qr.Next;
end;

procedure TFrmOcorrencias.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGrid ( DBGrid1, Qr , Column,  OrdemColuna , Ordem );
  OrdemColuna := Column.FieldName;
  if (OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente') then
    Ordem := 'Crescente'
  else
    Ordem := 'Decrescente';
end;

procedure TFrmOcorrencias.btn_DtEntregaClick(Sender: TObject);
Var Vdtstr:String;
begin
  Cria_FrmSelData(Vdtstr);
  if ( Vdtstr <> '' ) then
    Edt_DtOcorrencia.Text := Vdtstr;
  if ( Edt_DtOcorrencia.Enabled ) then
    Edt_DtOcorrencia.SetFocus;
end;

procedure TFrmOcorrencias.AtualizaBotoes ();
var Edicao, EdicaoLote : Boolean;
begin
  if ( PageControl1.ActivePage = Tab_Detalhe ) OR ( PageControl1.ActivePage = Tab_Lista )then
  begin
    if ( SomenteConsulta ) then
    begin
      SBNOVO.Enabled := false;
      SB_EDITAR.Enabled  :=  false;
      SBDel.Enabled  := false ;

      SBSalva.Enabled := false ;
      SBCancel.Enabled  := false ;
    end
    else
    begin
      Edicao := ( Ds.State in [dsEdit , dsInsert] );
      SBNOVO.Enabled := ( not Edicao ) ;
      SB_EDITAR.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 )  ;
      SBDel.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 )  ;

      SBSalva.Enabled := Edicao ;
      SBCancel.Enabled  := Edicao ;
      SB_PROXIMO.Enabled  := ( not Edicao ) And ( Qr.RecordCount > 0 );
      SB_ANTERIOR.Enabled := ( not Edicao ) And ( Qr.RecordCount > 0 );
    end;
  end;

end;

procedure TFrmOcorrencias.SBNovoClick(Sender: TObject);
begin
  PageControl1.ActivePage := Tab_Detalhe;


  if ( PageControl1.ActivePage = Tab_Lista ) or ( PageControl1.ActivePage = Tab_Detalhe ) then
  begin
   if ( PageControl1.ActivePageIndex <> 2 ) then
    PageControl1.ActivePageIndex := 2 ;

    Qr.Append;
    QrEMPRESA.Value        := gs_Empresa;
    QrFILIAL.Value         := gi_Filial;
    QrID_USUARIO.Value     := gi_IdenUsua;
    //QrDT_CHAMADOS.Value    := Now;
    QrDT_CHAMADOS.Value    := DATE();
    btn_DtEntrega.Enabled  := True;
    AtualizaBotoes;

   // Criamos um novo ID e o associamos ao campo
   QryTemp.close;
   QryTemp.SQL.clear;
   QryTemp.SQL.Text := ' SELECT NVL(MAX(ID_CHAMADOS),0) AS IDCHAMADOS '+
                       ' FROM   DACAR_CHAMADOS               ';
   QryTemp.Open;

   Qr.FieldByName('ID_CHAMADOS').AsInteger := QryTemp['IDCHAMADOS']+1;
   QryTemp.Close;

  end;
end;

procedure TFrmOcorrencias.SB_EditarClick(Sender: TObject);
begin
  PageControl1.ActivePage := Tab_Detalhe;

  if ( PageControl1.ActivePage = Tab_Lista ) or ( PageControl1.ActivePage = Tab_Detalhe ) then
  begin
    Qr.Edit;
    AtualizaBotoes;

  end;
end;

procedure TFrmOcorrencias.SBDelClick(Sender: TObject);
begin
  if ( PageControl1.ActivePage = Tab_Lista ) or ( PageControl1.ActivePage = Tab_Detalhe ) then
  begin
    if Application.MessageBox('Deseja Realmente Excluir esta Informação?', 'Comercial Dacar - Ocorrências', MB_YESNO + MB_ICONINFORMATION) = IDYES then
    begin
      Qr.Delete;
      Qr.ApplyUpdates;
      Qr.CommitUpdates;
      DBGrid1.Refresh;
    end;
  end;
end;

procedure TFrmOcorrencias.SBSalvaClick(Sender: TObject);
begin
  ActiveControl := Nil;
  if ( PageControl1.ActivePage = Tab_Lista ) or ( PageControl1.ActivePage = Tab_Detalhe ) then
  begin

    if ( QrDt_CHAMADOS.IsNull ) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('O preenchimento da Data da Ocorrência é obrigatório.', 'Comercial Dacar - Ocorrências', MB_OK + MB_ICONINFORMATION);
      MemOcorrencia.SetFocus;
      Exit;
    end;

    if ( QrOCORRENCIA.IsNull ) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('O preenchimento da Ocorrência é obrigatório.', 'Comercial Dacar - Ocorrências', MB_OK + MB_ICONINFORMATION);
      MemMedida.SetFocus;
      Exit;
    end;

    if ( QrMED_CHAMADOS.IsNull ) then
    begin
      Screen.Cursor := crDefault;
      Application.MessageBox('O preenchimento da Medida é obrigatório.', 'Comercial Dacar - Ocorrências', MB_OK + MB_ICONINFORMATION);
      Exit;
    end;

    if rgpFlag.ItemIndex = 0 then
    begin
      Qr.FieldByName('FL_CHAMADOS').AsString := 'S';
    end;

    if rgpFlag.ItemIndex = 1 then
    begin
      Qr.FieldByName('FL_CHAMADOS').AsString := 'N';
    end;


    if (Qr.State in [DsInsert,DsEdit])  then
   begin
    Qr.Post;

    Qr.CommitUpdates;
    Qr.ApplyUpdates;

    Qr.Refresh;
    DBGrid1.Refresh;
    AtualizaBotoes;
   end;

    btn_DtEntrega.Enabled  := False;
  end;
end;

procedure TFrmOcorrencias.SBCancelClick(Sender: TObject);
begin
  if ( PageControl1.ActivePage = Tab_Lista ) or ( PageControl1.ActivePage = Tab_Detalhe )  then
  begin
    Qr.CancelUpdates;
    AtualizaBotoes;
    btn_DtEntrega.Enabled  := False;
  end
end;

procedure TFrmOcorrencias.DsDataChange(Sender: TObject; Field: TField);
begin
  AtualizaBotoes;
end;

procedure TFrmOcorrencias.CRTemp_QrAfterCancel(DataSet: TDataSet);
begin
  Qr.CancelUpdates;
end;

procedure TFrmOcorrencias.CRTemp_QrAfterScroll(DataSet: TDataSet);
begin
  if ( PageControl1.ActivePage =  Tab_Detalhe ) OR ( PageControl1.ActivePage =  Tab_Lista  )  then
  begin
    AtualizaBotoes;
  end;
    DesabilitaCampos();
end;

procedure TFrmOcorrencias.CRTemp_QrBeforePost(DataSet: TDataSet);
begin
  if   (ds.State in [dsedit, dsinsert ]) then
  begin
    //QrID_USUARIO.Value := gi_IdenUsua;
  end;
end;

procedure TFrmOcorrencias.DesabilitaCampos();
Var Resolvido, Edicao : Boolean ;
begin
  Resolvido := ( rgpFlag.ItemIndex = 0 ) ;

  if (Resolvido ) then
  begin
    MemOcorrencia.Enabled := False;
    MemMedida.Enabled := False;
    rgpFlag.Enabled := False;
    MemObs.Enabled := False;
    MemObs2.Enabled := False;
    Edt_DtOcorrencia.Enabled := False;
  end
  else
  begin
    MemOcorrencia.Enabled := True;
    MemMedida.Enabled := True;
    MemObs.Enabled := True;
    MemObs2.Enabled := True;
    rgpFlag.Enabled := True;
  end;

end;

procedure TFrmOcorrencias.MemOcorrenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If not (key in ['0'..'9','A'..'Z','a'..'z',chr(8),chr(32),chr(13),'.',',','$','-',':','%','(',')','/','ç','ê','é','º']) then
     key:= #0;
end;

procedure TFrmOcorrencias.MemMedidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If not (key in ['0'..'9','A'..'Z','a'..'z',chr(8),chr(32),chr(13),'.',',','$','-',':','%','(',')','/','ç','ê','é','º']) then
     key:= #0;
end;

procedure TFrmOcorrencias.MemObsKeyPress(Sender: TObject; var Key: Char);
begin
  If not (key in ['0'..'9','A'..'Z','a'..'z',chr(8),chr(32),chr(13),'.',',','$','-',':','%','(',')','/','ç','ê','é','º']) then
     key:= #0;
end;

procedure TFrmOcorrencias.MemObs2KeyPress(Sender: TObject; var Key: Char);
begin
  If not (key in ['0'..'9','A'..'Z','a'..'z',chr(8),chr(32),chr(13),'.',',','$','-',':','%','(',')','/','ç','ê','é','º']) then
     key:= #0;
end;

procedure TFrmOcorrencias.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:= TColor($F0CAA6);

  DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmOcorrencias.SpeedButton1Click(Sender: TObject);
begin
  Try
    frmEnviaEmail := TfrmEnviaEmail.Create(nil);
    frmEnviaEmail.ShowModal;

  Except;
    frmEnviaEmail.Free;
  End;
end;

end.
