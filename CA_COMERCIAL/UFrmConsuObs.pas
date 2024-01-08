unit UFrmConsuObs;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ComCtrls, Buttons, DBCtrls, MemDS, DBAccess,
  Ora, ExtCtrls, Vcl.ToolWin;

type
  TFrmConsuObs = class(TForm)
    DBMemo1: TDBMemo;
    ToolBar1: TToolBar;
    Sb_Sair: TSpeedButton;
    ToolButton5: TToolButton;
    DS: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    StatusBar1: TStatusBar;
    procedure Sb_SairClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBMemo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsuObs: TFrmConsuObs;

implementation

uses UFrmPedVenda;

{$R *.dfm}
{$H+}

procedure TFrmConsuObs.Sb_SairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmConsuObs.SpeedButton1Click(Sender: TObject);
var l: integer;
begin
     DBMemo1.DataField := 'GN_OBSEPEDIVEND';
     DBMemo1.MaxLength := 2000;
     l := Length(DBMemo1.Text);
     StatusBar1.Panels[0].Text  := IntToStr(DBMemo1.MaxLength) + ' - ' +
                    IntToStr(l)               + ' = ' +
                    IntToStr(DBMemo1.MaxLength - l);
end;

procedure TFrmConsuObs.SpeedButton2Click(Sender: TObject);
var l: integer;
begin
     DBMemo1.DataField := 'GN_OBSEPADR_PEDIVEND';
     DBMemo1.MaxLength := 500;
     l := Length(DBMemo1.Text);
     StatusBar1.Panels[0].Text  := IntToStr(DBMemo1.MaxLength) + ' - ' +
                    IntToStr(l)               + ' = ' +
                    IntToStr(DBMemo1.MaxLength - l);
end;

procedure TFrmConsuObs.SpeedButton3Click(Sender: TObject);
var l: integer;
begin
     DBMemo1.DataField := 'GN_OBSEEXPEPEDIVEND';
     DBMemo1.MaxLength := 2000;
     l := Length(DBMemo1.Text);
     StatusBar1.Panels[0].Text  := IntToStr(DBMemo1.MaxLength) + ' - ' +
                    IntToStr(l)               + ' = ' +
                    IntToStr(DBMemo1.MaxLength - l);
end;

procedure TFrmConsuObs.DBMemo1Change(Sender: TObject);
var l: integer;
begin
    l := Length(DBMemo1.Text);
    StatusBar1.Panels[0].Text  := IntToStr(DBMemo1.MaxLength) + ' - ' +
                    IntToStr(l)               + ' = ' +
                    IntToStr(DBMemo1.MaxLength - l);
end;

end.
