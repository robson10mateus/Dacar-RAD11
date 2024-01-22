unit uDmUtil;

interface

uses
  SysUtils, Classes, Types, Ora;

type
  TdmUtil = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
  
  end;

var
  dmUtil: TdmUtil;

implementation

{$R *.dfm}

uses
  uDataAccess;



procedure TdmUtil.DataModuleCreate(Sender: TObject);
begin
  DataAccess := TDataAccess.Create;
end;

procedure TdmUtil.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(DataAccess);
end;

end.
