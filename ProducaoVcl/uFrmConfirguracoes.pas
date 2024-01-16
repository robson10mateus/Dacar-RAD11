unit uFrmConfirguracoes;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ExtCtrls, DBClient, Midas;

type
  TuFrmConfiguracoes = class(TForm)
    Panel1: TPanel;
    btnSalvar: TButton;
    btnFechar: TButton;
    dtsConfiguracoes: TDataSource;
    Label1: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit10: TDBEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dtsConfiguracoesDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmConfiguracoes: TuFrmConfiguracoes;

implementation

uses uDmPrincipal, IniFiles, uFrmPrincipal, uVg_VariaveisGlobais,
     UFrmVerificaProducao, uFrmConfiguracoes;

{$R *.dfm}

procedure CriaFor_FrmConfiguracoes;
begin
  try
    FrmConfiguracoes := TFrmConfiguracoes.Create(Application);
    FrmConfiguracoes.ShowModal;
  finally
    FreeAndNil(FrmConfiguracoes);
  end;
end;

procedure TuFrmConfiguracoes.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TuFrmConfiguracoes.btnSalvarClick(Sender: TObject);
begin
  DmPrincipal.cdsIpBalanca.Post;
  //DmPrincipal.cdsIpBalanca.ApplyUpdates(0);
  DmPrincipal.cdsIpBalanca.ApplyUpdates(0);
end;

procedure TuFrmConfiguracoes.dtsConfiguracoesDataChange(Sender: TObject;
  Field: TField);
begin
  btnSalvar.Enabled := DmPrincipal.cdsIpBalanca.State = dsEdit;
end;

end.
