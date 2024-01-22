program Utils;

uses
  Forms,
  uFrmSenha in 'uFrmSenha.pas' {frmSenha},
  TesteUnit in 'TesteUnit.pas' {frmTesteUtils},
  uDmSenha in 'uDmSenha.pas' {dmSenha: TDataModule},
  uDataAccess in 'uDataAccess.pas',
  uStringBuilder in 'uStringBuilder.pas',
  uUtil in 'uUtil.pas',
  uDadosCadastraisFilial in 'uDadosCadastraisFilial.pas',
  uDmUtil in 'uDmUtil.pas' {dmUtil: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmTesteUtils, frmTesteUtils);
  Application.CreateForm(TdmUtil, dmUtil);
  Application.Run;
end.
