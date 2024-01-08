unit UFrmPesqGrupoClie;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UFrmModelPesqui, DB, Ora, MemDS, DBAccess, Buttons,
  ExtCtrls, Grids, DBGrids, Winapi.Windows;

type
  TFrmPesqGrupoClie = class(TFrmModelPesqui)
    qryGrup: TOraQuery;
    dtsGrup: TOraDataSource;
    qryGrupID_GRUPCLIE: TFloatField;
    qryGrupNM_GRUPCLIE: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
     VCAMPO:STRING;
     VCONDI:STRING;
     VEXPRE:STRING;
     XRESUL:STRING;
     XRESUL1:STRING;
  end;

var
  FrmPesqGrupoClie: TFrmPesqGrupoClie;

implementation

uses UfrmControleCaixas, Global, UFrmSaldoCaixas;

{$R *.dfm}

procedure TFrmPesqGrupoClie.BitBtn3Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmPesqGrupoClie.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CASE ComboBox1.ItemIndex OF
       0:VCAMPO:= 'CLIENTE_GRUPO.NM_GRUPCLIE';
     //1:VCAMPO:= 'CLIENTE_GRUPO.NM_GRUPCLIE';

  END;

  VEXPRE:=EdExpre.Text;
  qryGrup.Close;

  WITH qryGrup.SQL DO
  BEGIN
    Clear;
    ADD('SELECT CLIENTE_GRUPO.ID_GRUPCLIE,');
    ADD('CLIENTE_GRUPO.NM_GRUPCLIE');
    ADD('FROM CLIENTE_GRUPO');
    ADD(' WHERE            ');

    CASE ComboBox2.ItemIndex OF
     1:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     0:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;

    ADD('ORDER BY CLIENTE_GRUPO.ID_GRUPCLIE');
  END;

  qryGrup.Open;
  qryGrup.Refresh;
  DBGrid1.SetFocus;
end;

procedure TFrmPesqGrupoClie.BitBtn2Click(Sender: TObject);
begin
  inherited;
  XRESUL:= FLOATTOSTR(qryGrupID_GRUPCLIE.Value);
    TRY
     CASE FrmOriPesq OF


      54:FrmControleCaixas.EdExpre.Text:=XRESUL;
      55:FrmSaldoCaixas.EdExpre.Text:=XRESUL;
     end;


     EXCEPT

      Application.MessageBox('Pesquisa não disponível, tente novamente.', 'Comercial Dacar - Pesquisa de Grupos', MB_OK + MB_ICONINFORMATION);

    END;

    Close;

end;

procedure TFrmPesqGrupoClie.FormShow(Sender: TObject);
begin
  inherited;
  qryGrup.Open;
  EdExpre.SetFocus;
end;

end.

