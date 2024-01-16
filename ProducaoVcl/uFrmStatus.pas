unit uFrmStatus;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Global;

type
  TFrmStatus = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    lblData: TLabel;
    LbMensagem: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStatus: TFrmStatus;

implementation

{$R *.dfm}

procedure TFrmStatus.FormShow(Sender: TObject);
var
  F: TextFile;
  NomeArq: string;
begin
  lblData.Caption := 'Tietê, ' + FormatDateTime('dd "de" mmmm "de" yyyy', Now);
end;

end.
