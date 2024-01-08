unit UFrmPesqFor;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DB, Ora, MemDS, DBAccess;

type
  TFrmPesqFor = class(TForm)
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
    QrFor: TOraQuery;
    DSFor: TOraDataSource;
    QrForID_FORNECEDOR: TFloatField;
    QrForNM_FORNECEDOR: TStringField;
    QrForENDERECO: TStringField;
    QrForNR_CEPFORN: TStringField;
    QrForNR_FONEFORN: TStringField;
    QrForNR_CNPJFORN: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     VCAMPO:STRING;
     VCONDI:STRING;
     VEXPRE:STRING;
     XRESUL:STRING;
  end;

 function Cria_FrmPesqFor(var VFor,NFor,NEND,NCEP,NFONE:String): boolean;

var
  FrmPesqFor: TFrmPesqFor;

implementation

uses global, Principal;

{$R *.dfm}

procedure TFrmPesqFor.BitBtn1Click(Sender: TObject);
begin
 CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='upper(FORNECEDOR.NM_FORNECEDOR)';
    1:VCAMPO:='FORNECEDOR.ID_FORNECEDOR';
  END;
  VEXPRE:=EdExpre.Text;
  QrFor.Close;
  WITH QrFor.SQL DO
   BEGIN
    Clear;
    ADD('SELECT   FORNECEDOR.ID_FORNECEDOR,                ');
    ADD('FORNECEDOR.NM_FORNECEDOR,                         ');
    ADD('FORNECEDOR.NM_LOGRFORN || '', '' || NR_LOGRFORN AS ENDERECO,  ');
    ADD('FORNECEDOR.NR_CEPFORN,                                        ');
    ADD('FORNECEDOR.NR_FONEFORN,             ');
    ADD('FORNECEDOR.NR_CNPJFORN              ');
    ADD('FROM                                ');
    ADD('FORNECEDOR                          ');
    ADD('WHERE ');
   CASE ComboBox2.ItemIndex OF
     1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;
  END;
  QrFor.Open;
  BitBtn2.SetFocus;
end;

procedure TFrmPesqFor.FormActivate(Sender: TObject);
begin
  QrFor.Open;
end;

function Cria_FrmPesqFor(var VFor,NFor,NEND,NCEP,NFONE:String): boolean;
begin
 try
   FrmPesqFor := TFrmPesqFor.Create(Application);
   Result := FrmPesqFor.ShowModal = mrOk;
   If Result then
     begin
      VFor := FloatToStr(FrmPesqFor.QrForID_fornecedor.Value);
      NFor := FrmPesqFor.QrForNM_FORNECEDOR.Value;
      NEND := FrmPesqFor.QrForENDERECO.Value;
      NCEP := FrmPesqFor.QrForNR_CEPFORN.Value;
      NFONE := FrmPesqFor.QrForNR_FONEFORN.Value;
//      NCNPJ := FrmPesqFor.QrForNR_CNPJFORN.Value;
     end
   else
     begin
      VFor  := '';
      NFor  := '';
      NEND  := '';
      NCEP  := '';
      NFONE := '';
     end;
 finally
   FrmPesqFor.Release;
   FrmPesqFor := nil;
 end;
end;

procedure TFrmPesqFor.FormCreate(Sender: TObject);
begin
//  frmPrincipal.TrocaNomeSequence(Self);
end;

end.
