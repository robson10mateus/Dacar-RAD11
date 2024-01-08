unit UFrmSelLoteIntegrado;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF}, Types, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DB, MemDS, DBAccess, Ora, Grids, DBGrids;

type
  TFrmSelLoteIntegrado = class(TForm)
    dbg_Lote: TDBGrid;
    Qr_Lote: TOraQuery;
    Ds_Lote: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelLoteIntegrado: TFrmSelLoteIntegrado;

implementation

{$R *.dfm}

end.
