unit UFrmPesqGrupoCli;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DB, Ora, MemDS, DBAccess;

type
  TFrmPesqGrupoCli = class(TForm)
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
    QrGrupo: TOraQuery;
    DSGrupo: TOraDataSource;
    QrGrupoID_GRUPCLIE: TFloatField;
    QrGrupoNM_GRUPCLIE: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqGrupoCli: TFrmPesqGrupoCli;

implementation

uses global, UFrmSelVenProd;

{$R *.dfm}

procedure TFrmPesqGrupoCli.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPesqGrupoCli.BitBtn1Click(Sender: TObject);
 var vcampo,vexpre:string;
begin

  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:= 'CLIENTE_GRUPO.ID_GRUPCLIE';
    1:VCAMPO:= 'CLIENTE_GRUPO.NM_GRUPCLIE';

  END;
  VEXPRE:=EdExpre.Text;
  QrGRUPO.Close;
  WITH QrGRUPO.SQL DO
   BEGIN
    Clear;
    ADD('SELECT                           ');
    ADD('     CLIENTE_GRUPO.ID_GRUPCLIE,  ');
    ADD('     CLIENTE_GRUPO.NM_GRUPCLIE   ');
    ADD('FROM CLIENTE_GRUPO               ');
    ADD('WHERE                            ');
   CASE ComboBox2.ItemIndex OF
     0:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     1:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;
  END;
  QrGRUPO.Open;
  BitBtn2.SetFocus;
end;

procedure TFrmPesqGrupoCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPesqGrupoCli:=Nil;
  Action:=caFree;

end;

procedure TFrmPesqGrupoCli.BitBtn2Click(Sender: TObject);
var xresul:string;
begin
 XRESUL:=FLOATTOSTR(QrGrupoID_GRUPCLIE.Value);
 TRY
  CASE FrmOriPesq OF

     5:FrmSelVenProd.EdExpre.Text:=XRESUL;

  end;
 EXCEPT
    showMessage('Pesquisa não disponível, tente novamente.');
 END;
 close;

end;

procedure TFrmPesqGrupoCli.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn2Click(sender);
end;

procedure TFrmPesqGrupoCli.FormCreate(Sender: TObject);
begin
  QrGrupo.Open;
end;

end.
