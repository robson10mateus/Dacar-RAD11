unit UFrmPesqAgencia;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, UFrmModelPesqui, Grids, DBGrids, Buttons, DB, Ora, MemDS,
  DBAccess, UFrmPesqFor;

type
  TFrmPesqAgencia = class(TForm)
    Qr: TOraQuery;
    DS: TOraDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    EdExpre: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    QrID_AGENBANC: TFloatField;
    QrNR_AGENBANC: TStringField;
    QrNM_AGENBANC: TStringField;
    QrNM_BANCO: TStringField;
    QrID_BANCO: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
     VCAMPO:STRING;
     VCONDI:STRING;
     VEXPRE:STRING;
     XRESUL:STRING;
  end;

function Cria_FrmPesqAgencia(var VCODAG,VNMAG,VNRAG,VNRBANCO,VNMBANCO:String): boolean;

var
  FrmPesqAgencia: TFrmPesqAgencia;

implementation

uses global, UFrmPesqBanco;

{$R *.dfm}

procedure TFrmPesqAgencia.BitBtn1Click(Sender: TObject);
begin

  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='BANCO_AGENCIA.ID_AGENBANC';
    1:VCAMPO:='UPPER(BANCO_AGENCIA.NM_AGENBANC)';
    2:VCAMPO:='BANCO_AGENCIA.NR_AGENBANC';
  END;

  VEXPRE:=EdExpre.Text;
  WITH Qr.SQL DO
   BEGIN
    Close;
    Clear;
    ADD(' SELECT  ');
    ADD('   BANCO_AGENCIA.ID_AGENBANC,    ');
    ADD('   BANCO_AGENCIA.NR_AGENBANC,      ');
    ADD('   BANCO_AGENCIA.NM_AGENBANC,      ');
    ADD('   BANCO.NM_BANCO,                ');
    ADD('   BANCO.ID_BANCO                ');
    ADD(' FROM                            ');
    ADD('   BANCO_AGENCIA,                ');
    ADD('   BANCO                          ');
    ADD(' WHERE                            ');
    ADD('   BANCO.ID_BANCO = BANCO_AGENCIA.ID_BANCO  AND ');
   CASE ComboBox2.ItemIndex OF
     1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;
    ADD('  ORDER BY BANCO_AGENCIA.NM_AGENBANC  ');

  END;
  Qr.Open;
  BitBtn2.SetFocus;
end;

procedure TFrmPesqAgencia.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  BitBtn2.Click;
end;

function Cria_FrmPesqAgencia(var VCODAG,VNMAG,VNRAG,VNRBANCO,VNMBANCO:String): boolean;
begin

  try
    FrmPesqAgencia := TFrmPesqAgencia.Create(Application);
    Result := FrmPesqAgencia.ShowModal = mrOk;
    If Result then
    begin
      VCODAG := FloatToStr(FrmPesqAgencia.QrID_AGENBANC.Value);
      VNMAG:= (FrmPesqAgencia.QrNM_AGENBANC.Value);
      VNRAG:= (FrmPesqAgencia.QrNR_AGENBANC.Value);
      VNRBANCO:= FloatToStr(FrmPesqAgencia.QrID_BANCO.Value);
      VNMBANCO:= FrmPesqAgencia.QrNM_BANCO.Value;
    end
    Else
    begin
      VCODAG:= '';
      VNMAG := '';
      VNRAG := '';
      VNRBANCO:= '';
      VNMBANCO:= '';
    end;
  Finally
    FrmPesqAgencia.Release;
    FrmPesqAgencia := nil;
  end;
end;

procedure TFrmPesqAgencia.FormShow(Sender: TObject);
begin
  Qr.Open;
  EdExpre.SetFocus;
end;

procedure TFrmPesqAgencia.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPesqAgencia.DBGrid1TitleClick(Column: TColumn);
var
   linha:integer;
begin
 linha := Pos('ORDER',Qr.SQL.text);
 Qr.SQL.text := copy(Qr.SQL.text,0,linha-1);
 Qr.SQL.add(' ORDER BY ' + Column.FieldName);
 Qr.Open;

end;

end.
