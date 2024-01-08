unit UFrmAlteracaoPlaca;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, ExtCtrls, Grids,
  DBGrids, ComCtrls, Buttons, Vcl.ToolWin;

type
  TFrmAlteracaoPlaca = class(TForm)
    ToolBar1: TToolBar;
    SB_ATIVA: TSpeedButton;
    SB_ALTERA: TSpeedButton;
    Sb_Sair: TSpeedButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    EDt: TEdit;
    BPesqDt: TBitBtn;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    grdCargas: TDBGrid;
    Panel1: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    QryForm: TOraQuery;
    QryFormID_CARGEXPE: TFloatField;
    QryFormGN_PLACVEICTRAN: TStringField;
    QryFormNM_FORNECEDOR: TStringField;
    QryFormNM_REDUFORN: TStringField;
    QryFormNR_ORDEENTRCARGEXPE: TFloatField;
    QryFormFL_STATCARGEXPE: TStringField;
    QryFormDT_DESBCARGEXPE: TDateTimeField;
    QryFormFL_IMPRCARGEXPE: TStringField;
    QryFormDT_CARGEXPE: TDateTimeField;
    QryFormID_USR_VOLT_AB: TIntegerField;
    DSFORM: TOraDataSource;
    SqlAtualizaPlaca: TOraSQL;
    QryFormID_CLIENTE: TFloatField;
    QryFormNM_CLIENTE: TStringField;
    QryFormNM_FANTCLIE: TStringField;
    QryFormNR_CNPJCLIE: TStringField;
    QryFormID_PEDIVEND: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Sb_SairClick(Sender: TObject);
    procedure SB_ATIVAClick(Sender: TObject);
    procedure SB_ALTERAClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BPesqDtClick(Sender: TObject);
    procedure grdCargasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdCargasTitleClick(Column: TColumn);
    procedure QryFormBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    ID_FORNECEDOR : Integer;
    GN_PLACVEICTRAN, OrdemColuna , Ordem : string;
    VL_QUILFRETABAT : Double;
    Vdtstr:STRING;

  end;

var
  FrmAlteracaoPlaca: TFrmAlteracaoPlaca;

implementation

uses Principal, UFrmPesCaminhao, UFrmSeldata, Global ;

{$R *.dfm}

procedure TFrmAlteracaoPlaca.FormCreate(Sender: TObject);
begin
     frmPrincipal.TrocaNomeSequence(Self);
     EDt.Text    := DateToStr(Date());
     OrdemColuna := '';
     QryForm.MacroByName('OrderBy').Value := ' ORDER BY  Expedicao_carga.NR_ORDEENTRCARGEXPE ';

     SB_ATIVAClick(Sender);

end;

procedure TFrmAlteracaoPlaca.Sb_SairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmAlteracaoPlaca.SB_ATIVAClick(Sender: TObject);
begin
      try
        qryForm.Close;
        qryForm.ParamByName('DtCarg').AsDate := StrToDate(Edt.Text);
        qryForm.Open;

        SB_ALTERA.Enabled := True;
        FrmPrincipal.StatusBar1.Panels[0].Text := '';

      except
        MessageDlg('Data inválida !', mtWarning, [mbOk], 0);
      end;
end;

procedure TFrmAlteracaoPlaca.SB_ALTERAClick(Sender: TObject);
var msgStatus : string;
    i : Integer;
begin
     ID_FORNECEDOR    := 0 ;
     GN_PLACVEICTRAN  := '';
     VL_QUILFRETABAT  := 0 ;
     i                := 0 ;

      if grdCargas.SelectedRows.Count = 0 then
      begin
        MessageDlg('Selecione uma carga !', mtWarning, [mbOk], 0);

        Exit;
      end;

     try
       FrmPesqCaminhao:=TFrmPesqCaminhao.Create(Self);
       FrmPesqCaminhao.VORIGEM:=5;
       FrmPesqCaminhao.ShowModal;

     except;
       FrmPesqCaminhao.Free;
     end;

     if  ( ID_FORNECEDOR <> 0  ) then
     Begin


         for i:=0 to grdCargas.SelectedRows.Count-1 do
         begin
              QryForm.GotoBookmark(grdCargas.SelectedRows.Items[i]);

              SqlAtualizaPlaca.ParamByName('ID_FORNECEDOR').Value := ID_FORNECEDOR;
              SqlAtualizaPlaca.ParamByName('ID_Carga').Value      := QryFormID_CARGEXPE.Value;
              SqlAtualizaPlaca.ParamByName('Placa').Value         := GN_PLACVEICTRAN;
              SqlAtualizaPlaca.ParamByName('ValorFrete').Value    := VL_QUILFRETABAT;

             try
                 //ShowMessage('Carga Atualizada : '+ QryFormID_CARGEXPE.AsString );
                 SqlAtualizaPlaca.Execute;
             except;
                   MessageDlg('Erro ao Atualizar a Placa. !', mtError, [mbOk], 0);
                   Exit;
             end;

         end;

         msgStatus := 'Placa da Carga '+ FloatToStr(QryFormID_CARGEXPE.Value) + ' Alterada !';
         FrmPrincipal.StatusBar1.Panels[0].Text := msgStatus ;

         qryForm.Close;
         qryForm.ParamByName('DtCarg').AsDate := StrToDate(Edt.Text);
         qryForm.Open;
         qryForm.Locate('ID_CARGEXPE',SqlAtualizaPlaca.ParamByName('ID_Carga').Value,[] );
     end;

end;

procedure TFrmAlteracaoPlaca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FrmPrincipal.VEN042.Enabled:= True;
     Action := caFree;
end;

procedure TFrmAlteracaoPlaca.BPesqDtClick(Sender: TObject);
begin
    Cria_FrmSelData(Vdtstr);
    Edt.text:= Vdtstr;
end;

procedure TFrmAlteracaoPlaca.grdCargasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     IF QryFormFL_STATCARGEXPE.AsString = 'AB' then
        grdCargas.Canvas.Font.Color := clgreen;

     If gdFocused in State then
      with (Sender as TDBGrid).Canvas do
       begin
         Brush.Color:=clAqua;
         font.Color :=clBlack;
       end;

     grdCargas.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TFrmAlteracaoPlaca.grdCargasTitleClick(Column: TColumn);
begin

     if ( OrdemColuna <> Column.FieldName ) OR  ((OrdemColuna = Column.FieldName ) AND (Ordem = 'Decrescente')  ) then
     begin
         QryForm.MacroByName('OrderBy').Value := ' ORDER BY  ' + Column.FieldName + ' ';
         Ordem := 'Crescente';
     end
    else
    begin
         QryForm.MacroByName('OrderBy').Value := ' ORDER BY  ' + Column.FieldName + ' Desc ';
         Ordem := 'Decrescente';
    end;

    OrdemColuna := Column.FieldName;
    qryForm.Close;
    qryForm.Open;

end;

procedure TFrmAlteracaoPlaca.QryFormBeforeOpen(DataSet: TDataSet);
begin
     QryForm.ParamByName('Filial').Value := gi_Filial;
end;

end.
