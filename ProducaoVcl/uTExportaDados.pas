unit uTExportaDados;

interface

uses
  Classes, SysUtils;

type
  TExportaDados = class(TThread)
  private
    priErr: Boolean;
    procedure Atualiza;
  protected
    procedure Execute; override;
  public
    constructor Create(ViCreateSuspended: boolean);
  end;

implementation

uses uDmPrincipal, uFrmPrincipal, DB;

{ TExportaDados }

procedure TExportaDados.Atualiza;
begin
  if not priErr then
  begin
//    FrmPrincipal.lblIntegracao01.Caption :=  IntToStr(StrToIntDef(FrmPrincipal.lblIntegracao01.Caption, 0) + 1);
 //   FrmPrincipal.LblAviso.Visible := False;
  end
  else
  begin
//    FrmPrincipal.lblIntegracao02.Caption :=  IntToStr(StrToIntDef(FrmPrincipal.lblIntegracao02.Caption, 0) + 1);
//    FrmPrincipal.LblAviso.Visible := True;
  end;
end;

constructor TExportaDados.Create(ViCreateSuspended: boolean);
begin
  inherited Create(ViCreateSuspended);
  Priority := tpNormal;
  priErr := False;
  FreeOnTerminate := True;
end;

procedure TExportaDados.Execute;
begin
  FreeOnTerminate := True;
  try
    DmPrincipal.ExportaDados;
    //Teste para GravaServer
 //   FrmPrincipal.LblAviso.Caption := ' Cod. Itentificação: '+ DmPrincipal.VIDENTIFICACAO;
 //   DmPrincipal.GravaServer(DmPrincipal.VIDENTIFICACAO);
    priErr := False;
  except
    priErr := True;
  end;
  Synchronize(Atualiza);
end;

end.
