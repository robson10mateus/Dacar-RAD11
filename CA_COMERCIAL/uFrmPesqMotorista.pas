unit uFrmPesqMotorista;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, DB, Ora, MemDS, DBAccess, Buttons,
  ExtCtrls, Grids, DBGrids, Winapi.Windows;

type
  TFrmPesqMotorista = class(TFrmModelPesqui)
    qryMotorista: TOraQuery;
    qryMotoristaID_MOTOTRAN: TFloatField;
    qryMotoristaID_FORNECEDOR_TRANSPORTADOR: TFloatField;
    qryMotoristaNM_MOTOTRAN: TStringField;
    qryMotoristaNM_FORNECEDOR: TStringField;
    dtsMotorista: TOraDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
     VCAMPO, VEXPRE, XRESUL:STRING;
  end;

var
  FrmPesqMotorista: TFrmPesqMotorista;

implementation

uses Principal, UfrmControleCaixas, Global;

{$R *.dfm}

procedure TFrmPesqMotorista.BitBtn1Click(Sender: TObject);
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

procedure TFrmPesqMotorista.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL:=FLOATTOSTR(qryMotoristaID_MOTOTRAN.Value);
  TRY
    CASE FrmOriPesq OF
      541:
      begin
        FrmControleCaixas.edtCodMotorista.Text  := XRESUL;
        FrmControleCaixas.QrID_MOTORISTA.Value  := StrToInt(XRESUL);
        FrmControleCaixas.edtNomeMotorista.Text := qryMotoristaNM_MOTOTRAN.Value;
      end;
    end;
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(FrmPesqMotorista.Caption), MB_OK + MB_ICONINFORMATION);
  END;

   close;
end;

procedure TFrmPesqMotorista.FormActivate(Sender: TObject);
begin
  inherited;
  qryMotorista.Open;
end;

procedure TFrmPesqMotorista.FormCreate(Sender: TObject);
begin
  inherited;
  frmPrincipal.TrocaNomeSequence(Self);
end;

procedure TFrmPesqMotorista.EdExpreKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TFrmPesqMotorista.FormShow(Sender: TObject);
begin
  inherited;
  qryMotorista.Open;
  EdExpre.SetFocus;
end;

procedure TFrmPesqMotorista.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  qryMotorista.IndexFieldNames := Column.FieldName;
end;

end.
