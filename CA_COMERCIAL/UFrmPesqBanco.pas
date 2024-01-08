unit UFrmPesqBanco;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, UFrmModelPesqui, Grids, DBGrids, Buttons, DB, Ora, MemDS,
  DBAccess, UFrmPesqFor;

type
  TFrmPesqBanco = class(TForm)
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
    QrID_BANCO: TFloatField;
    QrNM_BANCO: TStringField;
    QrNR_BANCO: TStringField;
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

function Cria_FrmPesqBanco(var VBanco,NMBanco:String): boolean;

var
  FrmPesqBanco: TFrmPesqBanco;

implementation

uses global;

{$R *.dfm}

procedure TFrmPesqBanco.BitBtn1Click(Sender: TObject);
begin

  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='BANCO.ID_BANCO';
    1:VCAMPO:='UPPER(BANCO.NM_BANCO)';
    2:VCAMPO:='BANCO.NR_BANCO';
  END;

  VEXPRE:=EdExpre.Text;
  WITH Qr.SQL DO
   BEGIN
    Close;
    Clear;
    ADD(' SELECT  ');
    ADD('    BANCO.ID_BANCO,  ');
    ADD('    BANCO.NM_BANCO,  ');
    ADD('    BANCO.NR_BANCO   ');
    ADD('  FROM  ');
    ADD('    BANCO  ');
    ADD(' WHERE                             ');
   CASE ComboBox2.ItemIndex OF
     1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;
    ADD('  ORDER BY BANCO.NM_BANCO  ');

  END;
  Qr.Open;
  BitBtn2.SetFocus;
end;

procedure TFrmPesqBanco.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  BitBtn2.Click;
end;

function Cria_FrmPesqBanco(var VBanco,NMBanco:String): boolean;
begin

  try
    FrmPesqBanco := TFrmPesqBanco.Create(Application);
    Result := FrmPesqBanco.ShowModal = mrOk;
    If Result then
    begin
      VBanco := FloatToStr(FrmPesqBanco.QrID_Banco.Value);
      NMBanco:= (FrmPesqBanco.QrNM_Banco.Value);
    end
    Else
    begin
      VBanco := '';
      NMBanco:= '';
    end;
  Finally
    FrmPesqBanco.Release;
    FrmPesqBanco := nil;
  end;
end;

procedure TFrmPesqBanco.FormShow(Sender: TObject);
begin
  Qr.Open;
  EdExpre.SetFocus;
end;

procedure TFrmPesqBanco.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPesqBanco.DBGrid1TitleClick(Column: TColumn);
var
   linha:integer;
begin
 linha := Pos('ORDER',Qr.SQL.text);
 Qr.SQL.text := copy(Qr.SQL.text,0,linha-1);
 Qr.SQL.add(' ORDER BY ' + Column.FieldName);
 Qr.Open;

end;

end.
