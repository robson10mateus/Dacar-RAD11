unit UFrmPesqContas;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DB, Ora, MemDS, DBAccess;

type
  TFrmPesqConta = class(TForm)
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
    QrConta: TOraQuery;
    DSGrupo: TOraDataSource;
    QrContaID_CONTA: TFloatField;
    QrContaNM_CONTA: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
     VCAMPO:STRING;
     VCONDI:STRING;
     VEXPRE:STRING;
     XRESUL:STRING;
  end;

function Cria_FrmPesqConta(var VIDConta,VNMConta:String): boolean;

var
  FrmPesqConta: TFrmPesqConta;

implementation

uses global;

{$R *.dfm}

procedure TFrmPesqConta.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPesqConta.BitBtn1Click(Sender: TObject);
 var vcampo,vexpre:string;
begin

  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:='CONTA.ID_CONTA';
    1:VCAMPO:='CONTA.NM_CONTA';

  END;
  VEXPRE:=EdExpre.Text;
  Qrconta.Close;
  WITH Qrconta.SQL DO
   BEGIN
    Clear;
    ADD('SELECT CONTA.ID_CONTA, ');
    ADD('       CONTA.NM_CONTA  ');
    ADD('  FROM CONTA           ');
    ADD(' WHERE                 ');
   CASE ComboBox2.ItemIndex OF
     0:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     1:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;
    ADD('ORDER BY NM_CONTA ');
  END;
  QrConta.Open;
  BitBtn2.SetFocus;
end;

procedure TFrmPesqConta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  FrmPesqConta:=Nil;
//  Action:=caFree;
end;

function Cria_FrmPesqConta(var VIDConta,VNMConta:String): boolean;
begin
 try
    FrmPesqConta := TFrmPesqConta.Create(Application);
    Result := FrmPesqConta.ShowModal = mrOk;
    if Result then
    begin
      VIDConta := FloatToStr(FrmPesqConta.QrContaID_CONTA.Value);
      VNMConta := (FrmPesqConta.QrContaNM_CONTA.Value);
    end
    else
    begin
      VIDConta := '';
      VNMConta := '';
    end;
  finally
    FrmPesqConta.Release;
    FrmPesqConta := nil;
  end;
end;

end.
