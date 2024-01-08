unit UFrmPesqUsuario;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF}, Types, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, DB, Ora, MemDS, DBAccess, Buttons,
  ExtCtrls, Grids, DBGrids;

type
  TFrmPesqUsuario = class(TFrmModelPesqui)
    QrUsuario: TOraQuery;
    DsUsuario: TOraDataSource;
    QrUsuarioID_USUARIO: TIntegerField;
    QrUsuarioNM_USUASIST: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
     VCAMPO:STRING;
     VCONDI:STRING;
     VEXPRE:STRING;
     XRESUL:STRING;
     XRESUL1:STRING;
     SELPE:Integer;
  end;

var
  FrmPesqUsuario: TFrmPesqUsuario;

implementation

uses UFrmSelRelConfVenda, Global;

{$R *.dfm}

procedure TFrmPesqUsuario.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CASE ComboBox1.ItemIndex OF
    //1:VCAMPO:= ' SISTEMA_USUARIO.ID_USUARIO ';
    0:VCAMPO:='UPPER(S.NM_USUASIST)';

  END;

  VEXPRE:=EdExpre.Text;
  QrUsuario.Close;

  WITH QrUsuario.SQL DO
  BEGIN
    Clear;
    ADD('SELECT S.ID_USUARIO,');
    ADD('S.NM_USUASIST');
    ADD('FROM SISTEMA_USUARIO S');
    ADD('WHERE S.FL_ATIVUSUASIST = ''S'' AND ');

    CASE ComboBox2.ItemIndex OF
     //1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    ADD('ORDER BY S.NM_USUASIST');
  END;

  QrUsuario.Open;
  QrUsuario.Refresh;
  DBGrid1.SetFocus;
end;

procedure TFrmPesqUsuario.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL:=FloatToStr(QrUsuarioID_USUARIO.Value);

    TRY
     CASE FrmOriPesq OF


      13:FrmSelRelConfVenda.EdExpre.Text:=XRESUL;

     end;

     //ActiveControl := Nil;

     EXCEPT

      Application.MessageBox('Pesquisa não disponível, tente novamente.', 'Comercial Dacar - Pesquisa de Usuários', [ID_OK], smsInformation, ID_OK);

    END;

    Close;

end;

procedure TFrmPesqUsuario.BitBtn3Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.

