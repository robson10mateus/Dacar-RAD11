unit UFrmPesqPais;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DB, Ora, MemDS, DBAccess;

type
  TFrmPesqPais = class(TForm)
    Label1: TLabel;
    EdExpre: TEdit;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    QrPAIS: TOraQuery;
    DSPAIS: TOraDataSource;
    QrPAISID_PAIS: TFloatField;
    QrPAISNM_PAIS: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
     VCampo:STRING;
     VExpre:STRING;
  end;

  function Cria_FrmPesqPais(var VIDPAIS, NMPAIS:String): boolean;

var
  FrmPesqPais: TFrmPesqPais;

implementation

uses global,UFrmSelRelConfVenda, Principal;

{$R *.dfm}

procedure TFrmPesqPais.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPesqPais.BitBtn1Click(Sender: TObject);
begin
 CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='Upper(PAIS.NM_PAIS)';
    1:VCAMPO:='PAIS.ID_PAIS';
  END;
  VEXPRE:=EdExpre.Text;
  QrPais.Close;
  WITH qrPais.SQL DO
   BEGIN
    Clear;
    ADD(' SELECT  PAIS.ID_PAIS,      ');
    ADD('         PAIS.NM_PAIS       ');
    ADD(' FROM                       ');
    ADD('  PAIS                      ');
    ADD(' WHERE ');
   CASE ComboBox2.ItemIndex OF
     1:ADD(VCAMPO + ' = ''' + VEXPRE + '''');
     0:ADD(VCAMPO + ' LIKE ''' + '%' + VEXPRE + '%' + '''');
    END;
    ADD(' ORDER BY            ');
    ADD('   PAIS.NM_PAIS      ');
  END;
  QrPais.Open;
  BitBtn2.SetFocus;
end;

procedure TFrmPesqPais.FormActivate(Sender: TObject);
begin
  QrPais.Open;
end;

function Cria_FrmPesqPais(var VIDPAIS, NMPAIS:String): boolean;
begin
 try
   FrmPesqPais := TFrmPesqPais.Create(Application);
   Result := FrmPesqPais.ShowModal = mrOk;
   If Result then
     begin
      VIDPAIS :=  FloatToStr(FrmPesqPais.QrPaisID_PAIS.Value);
      NMPAIS   :=  FrmPesqPais.QrPaisNM_PAIS.Value;
     end
   else
     begin
      VIDPAIS  := '';
      NMPAIS  := '';
     end;
 finally
   FrmPesqPais.Release;
   FrmPesqPais := nil;
 end;
end;


end.
