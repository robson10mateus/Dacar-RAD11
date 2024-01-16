unit uTBalanca;

interface

uses
  Classes, SerialNG;

type
  TBalanca = class(TThread)
  private
    FBalanca: TSerialPortNG;
    procedure Atualiza;
    procedure Serial_BalancaRxClusterEvent(Sender: TObject);
  protected
    procedure Execute; override;
  public
    constructor Create(ViCreateSuspended: boolean);
  end;

implementation

uses uDmPrincipal, DB;

{ TBalanca }

procedure TBalanca.Atualiza;
begin

end;

constructor TBalanca.Create(ViCreateSuspended: boolean);
begin

  inherited Create(ViCreateSuspended);
  Priority := tpNormal;

  with FBalanca do
  begin
    CommPort := DmPrincipal.cdsIpBalancaIPB_PORTA_BALANCA.AsString;
    BaudRate := 9600;
    OnRxClusterEvent := Serial_BalancaRxClusterEvent;
    Active := True;
  end;

end;

procedure TBalanca.Execute;
begin
  FreeOnTerminate := True;
  while FBalanca.Active do
    Synchronize(Atualiza);
end;

procedure TBalanca.Serial_BalancaRxClusterEvent(Sender: TObject);
begin

end;

end.
