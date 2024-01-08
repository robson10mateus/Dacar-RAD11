unit UFrmPesqLinhagem;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, Buttons, Grids, DBGrids;

type
  TFrmPesqLinhagem = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Qr: TOraQuery;
    DS: TOraDataSource;
    QrID_LINHAGEM: TFloatField;
    QrDESC_LINHAGEM: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

function Cria_FrmPesqLinhagem(var ID_LIN :String): boolean;

var
  FrmPesqLinhagem: TFrmPesqLinhagem;

implementation

{$R *.dfm}

function Cria_FrmPesqLinhagem(var ID_LIN :String): boolean;
begin
 try
   FrmPesqLinhagem := TFrmPesqLinhagem.Create(Application);
   Result := FrmPesqLinhagem.ShowModal = mrOk;
   If Result then
     begin
      ID_LIN := FloatToStr(FrmPesqLinhagem.QrID_LINHAGEM.Value);
     end
   else
     begin
          ID_LIN := '';
     end;
 finally
   FrmPesqLinhagem.Release;
   FrmPesqLinhagem := nil;
 end;
end;

procedure TFrmPesqLinhagem.FormCreate(Sender: TObject);
begin
     Qr.Open;
end;

end.
