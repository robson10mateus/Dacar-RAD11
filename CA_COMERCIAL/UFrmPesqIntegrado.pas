unit UFrmPesqIntegrado;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, UFrmPesqFor, DB, Ora, MemDS, DBAccess, Grids,
  DBGrids, Buttons;

type
  TFrmPesqIntegrado = class(TFrmPesqFor)
    QrIntegrado: TOraQuery;
    QrIntegradoID_INTEGRADO: TFloatField;
    QrIntegradoNM_FORNECEDOR: TStringField;
    QrIntegradoNR_CNPJFORN: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XRESUL:STRING;
  end;

var
  FrmPesqIntegrado: TFrmPesqIntegrado;

implementation

uses UFrmLoteIntegrado, UFrmResultGranjeiro, global ;

{$R *.dfm}

procedure TFrmPesqIntegrado.BitBtn3Click(Sender: TObject);
begin
     inherited;
     Close;
end;

procedure TFrmPesqIntegrado.BitBtn2Click(Sender: TObject);
begin
     XRESUL:=FLOATTOSTR(QrIntegradoID_INTEGRADO.Value);

      CASE FrmOriPesq OF
         1:FrmLoteIntegrado.EdExpre.Text:=XRESUL;
         2:FrmResultGranjeiro.EdExpre.Text:=XRESUL;
      end;
      ActiveControl := Nil;
      close;

  end;

procedure TFrmPesqIntegrado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPesqIntegrado:=Nil;
  Action:=caFree;

end;

procedure TFrmPesqIntegrado.BitBtn1Click(Sender: TObject);
begin
      CASE ComboBox1.ItemIndex OF
        0:VCAMPO:= 'upper(F.NM_FORNECEDOR)';
        1:VCAMPO:= 'I.ID_INTEGRADO';
        2:VCAMPO:= 'upper(F.NR_CNPJFORN)';
      END;
      VEXPRE:=EdExpre.Text;
      QrIntegrado.Close;
      WITH QrIntegrado.SQL DO
       BEGIN
        Clear;
        ADD('Select I.ID_INTEGRADO , F.NM_FORNECEDOR , F.NR_CNPJFORN');
        ADD('  From INTEGRADO I ');
        ADD(' Inner Join FORNECEDOR F ');
        ADD(' On I.ID_FORNECEDOR = F.ID_FORNECEDOR ');
        ADD('WHERE ');

       CASE ComboBox2.ItemIndex OF
         1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
         0,2:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
        END;
        add ('order by F.NM_FORNECEDOR ');
      END;
      QrIntegrado.Open;
      QrIntegrado.Refresh;
      BitBtn2.SetFocus;

end;

procedure TFrmPesqIntegrado.DBGrid1DblClick(Sender: TObject);
begin
     BitBtn2Click(sender);
end;

end.
