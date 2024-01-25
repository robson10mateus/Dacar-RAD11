program ProducaoVcl;

uses
  {$IFDEF EurekaLog}
  EMemLeaks,
  EResLeaks,
  EDebugJCL,
  EDebugExports,
  EFixSafeCallException,
  EMapWin32,
  EAppVCL,
  EDialogWinAPIMSClassic,
  EDialogWinAPIEurekaLogDetailed,
  EDialogWinAPIStepsToReproduce,
  ExceptionLog7,
  {$ENDIF EurekaLog}
  Forms,
  CPDrv in 'CPDrv.pas',
  uVg_VariaveisGlobais in 'uVg_VariaveisGlobais.pas',
  uMg_MetodosGlobais in 'uMg_MetodosGlobais.pas',
  Global in 'Global.pas',
  uTBalanca in 'uTBalanca.pas',
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uDmPrincipal in 'uDmPrincipal.pas' {DmPrincipal: TDataModule},
  uFrmConfiguracoes in 'uFrmConfiguracoes.pas' {FrmConfiguracoes},
  uFrmLogIntegracao in 'uFrmLogIntegracao.pas' {FrmLogIntegracao},
  uFrmReImpressao in 'uFrmReImpressao.pas' {FrmReImpressao},
  uFrmStatus in 'uFrmStatus.pas' {FrmStatus},
  uFrmSenhaAcesso in 'uFrmSenhaAcesso.pas' {FrmSenhaAcesso},
  uFrmSelData in 'uFrmSelData.pas' {FrmSelData},
  uFrmRegAtual in 'uFrmRegAtual.pas' {FrmRegAtual},
  uFrmLogin in 'uFrmLogin.pas' {FrmLogin},
  uFrmValidaLote in 'uFrmValidaLote.pas' {FrmValidaLote},
  uFrmEtiqueta in 'uFrmEtiqueta.pas' {FrmEtiqueta},
  uFrmEtiqueta1 in 'uFrmEtiqueta1.pas' {FrmEtiqueta1},
  UFrmVerificaProducao in 'UFrmVerificaProducao.pas' {Frm_DadosProducao};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Programa da Balança';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.


