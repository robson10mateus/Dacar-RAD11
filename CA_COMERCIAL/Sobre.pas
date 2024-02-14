unit Sobre;

interface

uses

  StdCtrls, ExtCtrls, Buttons, Types, DBCtrls, DB, Ora, MemDS,
  DBAccess, Forms, Vcl.Controls, Vcl.Graphics, System.Classes;

type
  TFrmSobre = class(TForm)
    Bevel1: TBevel;
    Image1: TImage;
    Label3: TLabel;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    Image2: TImage;
    Timer2: TTimer;
    Image3: TImage;
    Label17: TLabel;
    Label2: TLabel;
    Image4: TImage;
    Qr: TOraQuery;
    DS: TOraDataSource;
    DBVersao: TDBText;
    QrID_MODULO: TIntegerField;
    QrNOME_MODULO: TStringField;
    QrDESC_MODULO: TStringField;
    QrATIVO: TStringField;
    QrVERSAO: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    Procedure Restaura;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSobre: TFrmSobre;

implementation

{$R *.dfm}

Procedure TFrmSobre.Restaura;
Begin
Image2.Visible:=not Image2.Visible;
End;

procedure TFrmSobre.BitBtn1Click(Sender: TObject);
begin
 Qr.Close;
 Close;
end;

procedure TFrmSobre.FormShow(Sender: TObject);
begin
  Qr.Open;
  bitbtn1.SetFocus;
end;

procedure TFrmSobre.Timer2Timer(Sender: TObject);
begin
 Restaura;
end;

end.
