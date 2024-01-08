unit uFrmConsultaSubRegiao;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, DB, Ora, MemDS, DBAccess, Buttons,
  ExtCtrls, Grids, DBGrids, Winapi.Windows;

type
  TfrmConsultaSubRegiao = class(TFrmModelPesqui)
    qryConsultaSubRegiao: TOraQuery;
    qryConsultaSubRegiaoID_SUBRLOGI: TFloatField;
    qryConsultaSubRegiaoNM_SUBRLOGI: TStringField;
    dtsConsultaSubRegiao: TOraDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EdExpreKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    VEXPRE, XRESUL, VCAMPO: string;
  public
    { Public declarations }
  end;

var
  frmConsultaSubRegiao: TfrmConsultaSubRegiao;

implementation

uses uFrmMontaCarga, Global;

{$R *.dfm}

procedure TfrmConsultaSubRegiao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmConsultaSubRegiao:=Nil;
  Action:=caFree;
end;

procedure TfrmConsultaSubRegiao.FormShow(Sender: TObject);
begin
  inherited;
  qryConsultaSubRegiao.Open;
  EdExpre.SetFocus;
end;

procedure TfrmConsultaSubRegiao.EdExpreKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key= #13 then
    BitBtn1Click(Sender);
end;

procedure TfrmConsultaSubRegiao.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:= 'ID_SUBRLOGI';
    1:VCAMPO:= 'NM_SUBRLOGI';
  END;

  VEXPRE:=UpperCase(EdExpre.Text);
  qryConsultaSubRegiao.Close;

  WITH qryConsultaSubRegiao.SQL DO
  BEGIN
    Clear;
    ADD('SELECT ID_SUBRLOGI, NM_SUBRLOGI FROM LOGISTICA_SUBREGIAO WHERE ');

    CASE ComboBox2.ItemIndex OF
      0:ADD(VCAMPO+' = ''' + VEXPRE + '''');
      1:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    ADD('ORDER BY ID_SUBRLOGI ');
  END;

  qryConsultaSubRegiao.Open;
  qryConsultaSubRegiao.Refresh;
  DBGrid1.SetFocus;
end;

procedure TfrmConsultaSubRegiao.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL:=FLOATTOSTR(qryConsultaSubRegiaoID_SUBRLOGI.Value);

  TRY
    CASE FrmOriPesq OF
      3:begin
        FrmMontaCarga.edtCodiRegi.Text:=XRESUL;
        FrmMontaCarga.edtNomeRegi.Text:=qryConsultaSubRegiaoNM_SUBRLOGI.Value;
      end;
    end;

    ActiveControl := Nil;
    
  EXCEPT
    Application.MessageBox('Pesquisa não disponível, tente novamente.', PChar(frmConsultaSubRegiao.Caption), MB_OK + MB_ICONINFORMATION);
  END;

  Close;
end;

end.
