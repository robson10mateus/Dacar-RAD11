unit UFrmPesqCidade;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DB, Ora, MemDS, DBAccess;

type
  TFrmPesqCidade = class(TForm)
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
    QrCIDADE: TOraQuery;
    DSSubReg: TOraDataSource;
    QrCIDADEID_CIDADE: TFloatField;
    QrCIDADENM_CIDADE: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    XRESUL,VCAMPO,VEXPRE:STRING;

  end;

var
  FrmPesqCidade: TFrmPesqCidade;

implementation

uses UfrmMontaCarga,global, Principal;

{$R *.dfm}

procedure TFrmPesqCidade.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPesqCidade.BitBtn1Click(Sender: TObject);
begin
 CASE ComboBox1.ItemIndex OF
    0:VCAMPO:= 'id_cidade';
    1:VCAMPO:= 'nm_cidade';

  END;
  VEXPRE:=EdExpre.Text;
  Qrcidade.Close;
  WITH Qrcidade.SQL DO
   BEGIN
    Clear;
    ADD('SELECT id_cidade,');
    ADD(' nm_cidade ');
    ADD('FROM  cidade ');
    ADD('WHERE ');
   CASE ComboBox2.ItemIndex OF
     0:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     1:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;
  END;
  Qrcidade.Open;
end;

procedure TFrmPesqCidade.BitBtn2Click(Sender: TObject);
begin
 XRESUL:=FLOATTOSTR(QrCIDADEID_CIDADE.Value);
 TRY
  CASE FrmOriPesq OF
    3:begin
       FrmMontaCarga.edtCodiCida.Text := XRESUL;
       FrmMontaCarga.edtNomeCida.Text := QrCIDADENM_CIDADE.Value;
      end;
  end;
 EXCEPT
    ShowMessage('Pesquisa não disponível, tente novamente.');
 END;
  close;

end;

procedure TFrmPesqCidade.FormShow(Sender: TObject);
begin
  QrCIDADE.Open;
end;

procedure TFrmPesqCidade.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);
end;

end.
