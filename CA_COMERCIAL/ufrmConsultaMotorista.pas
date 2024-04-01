unit ufrmConsultaMotorista;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, Buttons, ExtCtrls, Grids,
  DBGrids, DB, MemDS, DBAccess, Ora, Winapi.Windows;

type
  TfrmConsultaMotorista = class(TFrmModelPesqui)
    dtsMotorista: TOraDataSource;
    qryMotorista: TOraQuery;
    qryMotoristaID_MOTOTRAN: TFloatField;
    qryMotoristaID_FORNECEDOR_TRANSPORTADOR: TFloatField;
    qryMotoristaNM_MOTOTRAN: TStringField;
    qryMotoristaNM_FORNECEDOR: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XRESUL, VCAMPO, VEXPRE:STRING;    
  end;

var
  frmConsultaMotorista: TfrmConsultaMotorista;

implementation

uses Principal, UfrmControleCaixas, Global, UfrmMontaCarga;

{$R *.dfm}

procedure TfrmConsultaMotorista.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='UPPER(M.NM_MOTOTRAN)';
    1:VCAMPO:='M.ID_MOTOTRAN';
  END;

  VEXPRE:=UpperCase(EdExpre.Text);
  qryMotorista.Close;
  WITH qryMotorista.SQL DO
  BEGIN
    Clear;
    ADD('SELECT M.ID_MOTOTRAN, M.NM_MOTOTRAN, M.ID_FORNECEDOR_TRANSPORTADOR, F.NM_FORNECEDOR ');
    ADD('FROM TRANSPORTADOR_MOTORISTA M, FORNECEDOR F ');
    ADD('WHERE (M.ID_FORNECEDOR_TRANSPORTADOR = F.ID_FORNECEDOR AND M.FL_ATIVMOTOTRAN = ''S'')');
    ADD(' AND ');
    CASE ComboBox2.ItemIndex OF
      1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
      0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;
  END;
  qryMotorista.Open;
  qryMotorista.Refresh;
  BitBtn2.SetFocus;

end;

procedure TfrmConsultaMotorista.BitBtn2Click(Sender: TObject);
begin
  inherited;

  XRESUL:= qryMotoristaID_MOTOTRAN.AsString;

  TRY
    CASE FrmOriPesq OF
      11:
      begin
        FrmMontaCarga.QryFormMOTORISTA.Value := qryMotoristaNM_MOTOTRAN.AsString;
        FrmMontaCarga.QryFormID_MOTORISTA.Value  := StrToInt(XRESUL);
      end;

      541:
      begin
        FrmControleCaixas.edtCodMotorista.Text  := XRESUL;
        FrmControleCaixas.QrID_MOTORISTA.Value  := StrToInt(XRESUL);
        FrmControleCaixas.edtNomeMotorista.Text := qryMotoristaNM_MOTOTRAN.Value;
      end;
    end;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(frmConsultaMotorista.Caption), MB_OK + MB_ICONINFORMATION);
  END;

   close;   
end;

procedure TfrmConsultaMotorista.BitBtn3Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmConsultaMotorista.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  qryMotorista.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsultaMotorista.FormShow(Sender: TObject);
begin
  inherited;
  qryMotorista.Open;
  EdExpre.SetFocus;
end;

procedure TfrmConsultaMotorista.FormActivate(Sender: TObject);
begin
  inherited;
  qryMotorista.Open;
end;

procedure TfrmConsultaMotorista.EdExpreKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TfrmConsultaMotorista.FormCreate(Sender: TObject);
begin
  inherited;
  frmPrincipal.TrocaNomeSequence(Self);
end;

end.
