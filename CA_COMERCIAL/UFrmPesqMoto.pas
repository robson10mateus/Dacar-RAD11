unit UFrmPesqMoto;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DB, Ora, MemDS, DBAccess, UFrmModelPesqui;

type
  TFrmPesqMoto = class(TForm)
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
    QrMoto: TOraQuery;
    DSFor: TOraDataSource;
    QrMotoID_MOTOTRAN: TFloatField;
    QrMotoID_FORNECEDOR_TRANSPORTADOR: TFloatField;
    QrMotoNM_MOTOTRAN: TStringField;
    QrMotoNM_FORNECEDOR: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
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

var
  FrmPesqMoto: TFrmPesqMoto;

implementation

uses global, UFrmPediDevoVend, Principal;

{$R *.dfm}

procedure TFrmPesqMoto.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPesqMoto.BitBtn1Click(Sender: TObject);
begin
 CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='upper(Transportador_motorista.NM_MOTOTRAN)';
    1:VCAMPO:='Transportador_motorista.ID_MOTOTRAN';
    2:VCAMPO:='upper(FORNECEDOR.NM_FORNECEDOR)';
    3:VCAMPO:='FORNECEDOR.ID_FORNECEDOR';
 END;
  VEXPRE:=EdExpre.Text;
  QrMoto.Close;
  WITH QrMoto.SQL DO
   BEGIN
    Clear;
        ADD('SELECT Transportador_motorista.ID_MOTOTRAN,                                             ');
        ADD('       Transportador_motorista.ID_FORNECEDOR_TRANSPORTADOR,                             ');
        ADD('       Transportador_motorista.NM_MOTOTRAN,                                             ');
        ADD('       Fornecedor.NM_FORNECEDOR                                                        ');
        ADD('  FROM TRANSPORTADOR_MOTORISTA Transportador_motorista,                                 ');
        ADD('       FORNECEDOR Fornecedor                                                            ');
        ADD(' WHERE (Transportador_motorista.ID_FORNECEDOR_TRANSPORTADOR = Fornecedor.ID_FORNECEDOR) ');
        ADD(' AND ');
    CASE ComboBox2.ItemIndex OF
     1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;
  END;
  QrMoto.Open;
//  QrMoto.Refresh;
  BitBtn2.SetFocus;
end;

procedure TFrmPesqMoto.BitBtn2Click(Sender: TObject);
begin
 XRESUL:=FLOATTOSTR(QrMotoID_MOTOTRAN.Value);
 TRY
    FrmPediDevoVend.DBID_MOTO.TEXT := XRESUL;
    FrmPediDevoVend.DBNOME_MOTO.TEXT := QrMotoNM_MOTOTRAN.Value;
 EXCEPT
    showMessage('Pesquisa não disponível, tente novamente.');
 END;

   close;

end;

procedure TFrmPesqMoto.FormActivate(Sender: TObject);
begin
  QrMoto.Open;
end;

procedure TFrmPesqMoto.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);
end;

end.
