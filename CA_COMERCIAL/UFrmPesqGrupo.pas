unit UFrmPesqGrupo;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DB, Ora, MemDS, DBAccess;

type
  TFrmPesqGrupo = class(TForm)
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
    QrGrupoID_GRUPMATE: TFloatField;
    QrGrupoNM_GRUPMATE: TStringField;
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
  FrmPesqGrupo: TFrmPesqGrupo;

implementation

uses Global, UFrmSelVenProd, Principal;

{$R *.dfm}

procedure TFrmPesqGrupo.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPesqGrupo.BitBtn1Click(Sender: TObject);
 var vcampo,vexpre:string;
begin

  CASE ComboBox1.ItemIndex OF
    0:VCAMPO:= 'material_grupo.Id_grupmate';
    1:VCAMPO:='material_grupo.nm_grupmate';

  END;
  VEXPRE:=EdExpre.Text;
  QrGRUPO.Close;
  WITH QrGRUPO.SQL DO
   BEGIN
    Clear;
    ADD('Select Id_grupmate,');
    ADD('nm_grupmate');
    ADD('FROM material_grupo');
    ADD('WHERE ');
   CASE ComboBox2.ItemIndex OF
     0:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     1:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;
  END;
  QrGRUPO.Open;
  QrGRUPO.Refresh;
  BitBtn2.SetFocus;
///************
end;

procedure TFrmPesqGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmPesqGrupo:=Nil;
  Action:=caFree;

end;

procedure TFrmPesqGrupo.BitBtn2Click(Sender: TObject);
var xresul:string;
begin
 XRESUL:=FLOATTOSTR(QrGrupoID_GRUPMATE.Value);
 TRY
  CASE FrmOriPesq OF
 //    1:FrmPedVenda.EdExpre.Text:=XRESUL;

//     2:FrmRelPM.EdExpre.Text:=XRESUL;

//     3:FrmCtaRec.EdExpre.Text:=XRESUL;

     5:FrmSelVenProd.EdExpre.Text:=XRESUL;
  end;
 EXCEPT
    showMessage('Pesquisa não disponível, tente novamente.');
 END;
 close;

end;

procedure TFrmPesqGrupo.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn2Click(sender);
end;

procedure TFrmPesqGrupo.FormCreate(Sender: TObject);
begin
frmPrincipal.TrocaNomeSequence(Self);
end;

end.
