unit uFrmConsultaFornecedores;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, Buttons, ExtCtrls, Grids,
  DBGrids, DB, Ora, MemDS, DBAccess, Winapi.Windows;

type
  TfrmConsultaFornecedores = class(TFrmModelPesqui)
    qryFornecedor: TOraQuery;
    qryFornecedorID_FORNECEDOR: TFloatField;
    qryFornecedorNM_FORNECEDOR: TStringField;
    qryFornecedorENDERECO: TStringField;
    qryFornecedorNR_CEPFORN: TStringField;
    qryFornecedorNR_FONEFORN: TStringField;
    qryFornecedorNR_CNPJFORN: TStringField;
    dtsFornecedor: TOraDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    VEXPRE, XRESUL, VCAMPO: string;
  public
    { Public declarations }
  end;

var
  frmConsultaFornecedores: TfrmConsultaFornecedores;

implementation

uses Global, UfrmMontaCarga, UFrmSelFreteFg;

{$R *.dfm}

procedure TfrmConsultaFornecedores.BitBtn1Click(Sender: TObject);
begin
  inherited;

  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='AND F.ID_FORNECEDOR';
    1:VCAMPO:='AND UPPER(F.NM_FORNECEDOR)';
  END;

  VEXPRE:= UpperCase(EdExpre.Text);
  qryFornecedor.Close;

  WITH qryFornecedor.SQL DO
  BEGIN
    Clear;
    ADD('SELECT F.ID_FORNECEDOR, F.NM_FORNECEDOR, F.NM_LOGRFORN || '', '' || NR_LOGRFORN AS ENDERECO, ');
    ADD('F.NR_CEPFORN, F.NR_FONEFORN, F.NR_CNPJFORN ');
    ADD('FROM FORNECEDOR F ');
    ADD('WHERE NVL(F.FL_ATIVFORN,''N'') = ''S'' ');

    CASE ComboBox2.ItemIndex OF
      1:ADD(VCAMPO + ' = ''' + VEXPRE + '''');
      0:ADD(VCAMPO + ' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    ADD('ORDER BY F.ID_FORNECEDOR ');
  END;

  qryFornecedor.Open;
  qryFornecedor.Refresh;
  DBGrid1.SetFocus;

end;

procedure TfrmConsultaFornecedores.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  qryFornecedor.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsultaFornecedores.EdExpreKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TfrmConsultaFornecedores.FormShow(Sender: TObject);
begin
  inherited;
  qryFornecedor.Open;
  EdExpre.SetFocus;
end;

procedure TfrmConsultaFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmConsultaFornecedores:=Nil;
  Action:=caFree;
end;

procedure TfrmConsultaFornecedores.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL:=FLOATTOSTR(qryFornecedorID_FORNECEDOR.Value);

  TRY
    CASE FrmOriPesq OF
      1:
      begin
        FrmSelFreteFg.edtTransp.Text := XRESUL;
        FrmSelFreteFg.edtTranspDesc.Text := qryFornecedorNM_FORNECEDOR.AsString;
      end;
      2: FrmMontaCarga.EdExpre.Text:= XRESUL;
    end;

    ActiveControl := Nil;
    
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(frmConsultaFornecedores.Caption), MB_OK + MB_ICONINFORMATION);
  END;

  Close;
end;

end.
