unit UFrmPesqSubRegiao;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DB, Ora, MemDS, DBAccess;

type
  TFrmPesqSubRegiao = class(TForm)
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
    QrSubReg: TOraQuery;
    DSSubReg: TOraDataSource;
    QrSubRegID_SUBRLOGI: TFloatField;
    QrSubRegNM_SUBRLOGI: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     XRESUL,VCAMPO,VEXPRE:STRING;
    { Public declarations }
  end;

var
  FrmPesqSubRegiao: TFrmPesqSubRegiao;

implementation

uses UfrmMontaCarga,GLOBAL, Principal;

{$R *.dfm}

procedure TFrmPesqSubRegiao.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPesqSubRegiao.BitBtn1Click(Sender: TObject);
begin
 CASE ComboBox1.ItemIndex OF
    0:VCAMPO:= 'id_subrlogi';
    1:VCAMPO:= 'nm_subrlogi';

  END;
  VEXPRE:=EdExpre.Text;
  QrSubReg.Close;
  WITH QrSubReg.SQL DO
   BEGIN
    Clear;
    ADD('SELECT id_subrlogi,');
    ADD(' nm_subrlogi ');
    ADD('FROM   logistica_subregiao');
    ADD('WHERE ');
   CASE ComboBox2.ItemIndex OF
     0:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     1:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;
  END;
  QrSubReg.Open;
end;

procedure TFrmPesqSubRegiao.BitBtn2Click(Sender: TObject);
begin
 XRESUL:=FLOATTOSTR(QrSubRegID_SUBRLOGI.Value);
 TRY
  CASE FrmOriPesq OF
    3:begin
       FrmMontaCarga.edtCodiRegi.Text:=XRESUL;
       FrmMontaCarga.edtNomeRegi.Text:=QrSubRegNM_SUBRLOGI.Value;
      end;
  end;
 EXCEPT
    ShowMessage('Pesquisa não disponível, tente novamente.');
 END;
  close;

end;

procedure TFrmPesqSubRegiao.FormShow(Sender: TObject);
begin
  QrSubReg.Open;
end;

procedure TFrmPesqSubRegiao.FormCreate(Sender: TObject);
begin
  frmPrincipal.TrocaNomeSequence(Self);
end;

end.
