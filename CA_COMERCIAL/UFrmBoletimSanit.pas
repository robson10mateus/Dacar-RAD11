unit UFrmBoletimSanit;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Ora, MemDS, DBAccess, DBCtrls, Mask,
  ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TFrmBoletimSanit = class(TForm)
    Qr: TOraQuery;
    Ds: TOraDataSource;
    QrEMPRESA: TStringField;
    QrFILIAL: TIntegerField;
    QrID_LOTE: TFloatField;
    QrID_TECRESP: TFloatField;
    QrID_DROGA1: TFloatField;
    QrDT_INIDROGA1: TDateTimeField;
    QrDT_FIMDROGA1: TDateTimeField;
    QrID_DROGA2: TFloatField;
    QrDT_INIDROGA2: TDateTimeField;
    QrDT_FIMDROGA2: TDateTimeField;
    QrDT_RETIRALIMENT: TDateTimeField;
    QrDT_BOLETIM: TDateTimeField;
    Label1: TLabel;
    edt_Lote: TDBEdit;
    Qr_Tecnico: TOraQuery;
    Ds_Tecnico: TOraDataSource;
    Qr_TecnicoID_TECNICO: TFloatField;
    Qr_TecnicoNOME_TECNICO: TStringField;
    Label2: TLabel;
    cbx_Tecnico: TDBLookupComboBox;
    Edt_RetiradaAlim: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edt_DataBoletim: TDBEdit;
    ToolBar1: TToolBar;
    SB_CONFIRMA: TSpeedButton;
    SB_CANCEL: TSpeedButton;
    btn_Boletim: TSpeedButton;
    Qr_Droga: TOraQuery;
    Ds_Droga: TOraDataSource;
    Qr_DrogaID_DROGA: TFloatField;
    Qr_DrogaNOME_DROGA: TStringField;
    Cbx_Droga1: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Cbx_Droga2: TDBLookupComboBox;
    Label7: TLabel;
    Edt_Droga1Dt_Ini: TDBEdit;
    Label8: TLabel;
    Edt_Droga1Dt_Fim: TDBEdit;
    Label9: TLabel;
    Edt_Droga2Dt_Ini: TDBEdit;
    Label10: TLabel;
    Edt_Droga2Dt_Fim: TDBEdit;
    Sb_Sair: TSpeedButton;
    Qr_Mortalidade: TOraQuery;
    Qr_AtualizaMortalidade: TOraQuery;
    Qr_MortalidadePER_MORT: TFloatField;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    QrMORTALIDADE: TFloatField;
    Label12: TLabel;
    edt_dataMort: TMaskEdit;
    Btn_Mortalidade: TBitBtn;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    QrDT_COLETA: TDateTimeField;
    QrDT_EMISSAO: TDateTimeField;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    QrNUM_LAUDO: TStringField;
    procedure btn_BoletimClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QrBeforeOpen(DataSet: TDataSet);
    procedure QrAfterPost(DataSet: TDataSet);
    procedure DsStateChange(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_CONFIRMAClick(Sender: TObject);
    procedure SB_CANCELClick(Sender: TObject);
    procedure QrAfterCancel(DataSet: TDataSet);
    procedure Edt_Droga1Dt_FimExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_MortalidadeClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaMortalidade();
  public
    { Public declarations }
    PID_LOTE : integer ;
    DATA_ALOJ, DATA_RACENGORDA : TDateTime;
  end;

var
  FrmBoletimSanit: TFrmBoletimSanit;

implementation

uses UFrmRelBoletimSan , global ;

{$R *.dfm}

procedure TFrmBoletimSanit.btn_BoletimClick(Sender: TObject);
begin
      if ( Ds.State in [dsinsert,dsedit] ) then
      begin
           Qr.Post;
      end;

      FrmRelBoletimSan := TFrmRelBoletimSan.Create(Self);
      FrmRelBoletimSan.PID_LOTE := QrID_LOTE.AsInteger;
//      FrmRelBoletimSan.RLPrintDialogSetup1.Copies := 1;
      FrmRelBoletimSan.RLReport1.Preview(nil);
end;

procedure TFrmBoletimSanit.FormShow(Sender: TObject);
begin
     Qr.Close;
     Qr.Open;
     Qr_Tecnico.Open;
     Qr_Droga.Open;

     if  (Qr.RecordCount  = 0 ) then
     begin
           Qr.Append;
           QrEMPRESA.Value    := gs_Empresa;
           QrFILIAL.Value     := gi_Filial;
           QrID_LOTE.Value    := PID_LOTE;
           QrID_TECRESP.Value := 3 ; // Técnico Padrão
           QrID_DROGA1.Value  := 1;
           QrID_DROGA2.Value  := 2;
           QrDT_RETIRALIMENT.Value := Date;
           QrDT_BOLETIM.Value      := NOW();
           QrDT_INIDROGA1.Value    := DATA_ALOJ;
           QrDT_FIMDROGA1.Value    := DATA_RACENGORDA;
           QrDT_INIDROGA2.Value    := DATA_RACENGORDA;
           Qr.Post;
     end
     else
     begin
           Qr.Edit;
           QrDT_BOLETIM.Value      := NOW();
           if ( QrDT_FIMDROGA1.AsString = '' )   then
           begin
                QrDT_FIMDROGA1.Value    := DATA_RACENGORDA;
                QrDT_INIDROGA2.Value    := DATA_RACENGORDA;
           end;

           if ( QrDT_INIDROGA1.AsString = '' ) then
              QrDT_INIDROGA1.Value    := DATA_ALOJ;

           Qr.Post;
     end;
     Qr.Refresh;

end;

procedure TFrmBoletimSanit.QrBeforeOpen(DataSet: TDataSet);
begin
     Qr.ParamByName('ID_LOTE').Value := PID_LOTE;
end;

procedure TFrmBoletimSanit.QrAfterPost(DataSet: TDataSet);
begin
     Qr.CommitUpdates;
     Qr.ApplyUpdates;
end;

procedure TFrmBoletimSanit.DsStateChange(Sender: TObject);
begin
    SB_CONFIRMA.Enabled := Ds.State in [dsinsert,dsedit];
    SB_CANCEL.Enabled   := Ds.State in [dsinsert,dsedit];
end;

procedure TFrmBoletimSanit.Sb_SairClick(Sender: TObject);
begin
     close;
end;

procedure TFrmBoletimSanit.SB_CONFIRMAClick(Sender: TObject);
begin
    // ShowMessage('Data 1 ' + QrDT_RETIRALIMENT.AsString + ' Data 2 '+ Edt_RetiradaAlim.Text );
    // QrDT_RETIRALIMENT.Value := StrToDateTime( Edt_RetiradaAlim.Text );

     Qr.Post;
end;

procedure TFrmBoletimSanit.SB_CANCELClick(Sender: TObject);
begin
    Qr.Cancel;
end;

procedure TFrmBoletimSanit.QrAfterCancel(DataSet: TDataSet);
begin
     Qr.CancelUpdates;
end;

procedure TFrmBoletimSanit.Edt_Droga1Dt_FimExit(Sender: TObject);
begin
     if ( Qr.State in [dsedit]) then
     begin
          QrDT_INIDROGA2.Value := QrDT_FIMDROGA1.Value;
     end;
end;

procedure TFrmBoletimSanit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TFrmBoletimSanit.AtualizaMortalidade();
begin
     Qr_Mortalidade.Close;
     Qr_Mortalidade.ParamByName('ID_LOTE').Value := PID_LOTE ;
     Qr_Mortalidade.Open;

     Qr_AtualizaMortalidade.ParamByName('ID_LOTE').Value  := PID_LOTE;
     Qr_AtualizaMortalidade.ParamByName('DATA').Value      := edt_dataMort.Text;

     Qr_AtualizaMortalidade.ParamByName('PER_MORT').Value := Qr_MortalidadePER_MORT.Value;
     Qr_AtualizaMortalidade.ExecSQL;

end;

procedure TFrmBoletimSanit.Btn_MortalidadeClick(Sender: TObject);
begin
     if ( Qr.State in [dsinsert,dsedit]) then
        Qr.Post;
     if ( edt_dataMort.Text = '' ) OR ( edt_dataMort.Text = '  /  /    ' ) then
     begin
           Showmessage('Informar a data para cálculo de percentual de mortalidade .');
           exit;
     end;

     AtualizaMortalidade();
end;

end.
