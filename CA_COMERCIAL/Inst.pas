unit Inst;

interface

uses

  Db, StdCtrls, Mask, DBCtrls, DBAccess, Ora, OraSmart, MemDS, OraError, Buttons,
  Vcl.Controls, Vcl.ExtCtrls, System.Classes, Forms;

type
  TFrmInst = class(TForm)
    TbInst: TOraTable;
    TbInstLinha1: TStringField;
    TbInstLinha2: TStringField;
    TbInstLinha3: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DsInst: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BtSair: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInst: TFrmInst;

implementation

{$R *.dfm}

procedure TFrmInst.FormShow(Sender: TObject);
begin
TbInst.Open;
end;

procedure TFrmInst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TbInst.Edit;
TbInst.Post;
TbInst.Close;
end;

procedure TFrmInst.BtSairClick(Sender: TObject);
begin
  Close;
end;

end.
