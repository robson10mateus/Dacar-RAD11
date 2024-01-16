{************ CRÉDITOS DO SISTEMA *************
* Revisado por: Edmilde Freire Montagnoli     *
* Desenvolvido para: Céu Azul Alimentos       *
* Inicio: 25/07/2010 * Versão: 1.0.0.0        *
**********************************************}

unit uFrmLogIntegracao;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB;

type
  TFrmLogIntegracao = class(TForm)
    dtsLogIntegracao: TDataSource;
    Panel1: TPanel;
    Image1: TImage;
    btnFechar: TButton;
    btnAtualizar: TButton;
    DBGrid1: TDBGrid;
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  //procedure CriaForm_FormLogIntegracao;

var
  FrmLogIntegracao: TFrmLogIntegracao;

implementation

uses uDmPrincipal;

{$R *.dfm}

{
procedure CriaForm_FormLogIntegracao;
begin
  try
    FrmLogIntegracao := TFrmLogIntegracao.Create(FrmLogIntegracao);
    FrmLogIntegracao.ShowModal;
  finally
    FreeAndNil(FrmLogIntegracao);
  end;
end;
}

procedure TFrmLogIntegracao.btnAtualizarClick(Sender: TObject);
begin

  Screen.Cursor := crSQLWait;
  try
    DmPrincipal.cdsLogIntegracao.Close;
    DmPrincipal.cdsLogIntegracao.Open;
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TFrmLogIntegracao.btnFecharClick(Sender: TObject);
begin

  Close;

end;

procedure TFrmLogIntegracao.FormShow(Sender: TObject);
begin

  btnAtualizar.Click;

end;

end.
