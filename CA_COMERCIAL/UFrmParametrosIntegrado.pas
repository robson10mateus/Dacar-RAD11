unit UFrmParametrosIntegrado;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, ExtCtrls, Grids,
  DBGrids, DBCtrls;

type
  TFrmParametrosIntegrado = class(TForm)
    GroupBox1: TGroupBox;
    Nav_Drogas: TDBNavigator;
    dbg_Drogas: TDBGrid;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Nav_RacaoSem: TDBNavigator;
    Dbg_RacaoSem: TDBGrid;
    GroupBox3: TGroupBox;
    Nav_RacaoTipo: TDBNavigator;
    Dbg_RacaoTipo: TDBGrid;
    Qr_Drogas: TOraQuery;
    Ds_Drogas: TOraDataSource;
    Qr_DrogasID_DROGA: TFloatField;
    Qr_DrogasNOME_DROGA: TStringField;
    Qr_RacaoTipo: TOraQuery;
    Ds_RacaoTipo: TOraDataSource;
    Qr_Racao: TOraQuery;
    Ds_Racao: TOraDataSource;
    Qr_RacaoID_PRODMATEEMBA: TStringField;
    Qr_RacaoNM_PRODMATEEMBA: TStringField;
    Qr_RacaoTipoTIPO_RACAO: TIntegerField;
    Qr_RacaoTipoVAL_CONSUMO: TFloatField;
    Qr_RacaoTipoNm_Racao: TStringField;
    Qr_RacaoSem: TOraQuery;
    Ds_RacaoSem: TOraDataSource;
    Qr_RacaoSemCODIGO: TStringField;
    Qr_RacaoSemSEMANA: TIntegerField;
    Qr_RacaoSemVAL_CONSUMO: TFloatField;
    Panel2: TPanel;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Nav_Bonus: TDBNavigator;
    Dbg_Bonus: TDBGrid;
    Qr_Bonus: TOraQuery;
    Ds_Bonus: TOraDataSource;
    Qr_BonusCOD_BONUS: TIntegerField;
    Qr_BonusDESC_BONUS: TStringField;
    Qr_BonusPARAM_BONUS: TFloatField;
    Qr_BonusVAL_BONUS: TFloatField;
    DBNavigator1: TDBNavigator;
    Dbg_FatorPagto: TDBGrid;
    Qr_FatorPagto: TOraQuery;
    Ds_FatorPagto: TOraDataSource;
    Qr_FatorPagtoEMPRESA: TStringField;
    Qr_FatorPagtoFILIAL: TIntegerField;
    Qr_FatorPagtoIEP_INICIO: TFloatField;
    Qr_FatorPagtoIEP_FIM: TFloatField;
    Qr_FatorPagtoVL_MACHO: TFloatField;
    Qr_FatorPagtoVL_FEMEA: TFloatField;
    Qr_FatorPagtoVL_MISTO: TFloatField;
    Qr_FatorPagtoVL_GERAL: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Qr_FatorPagtoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmParametrosIntegrado: TFrmParametrosIntegrado;

implementation

{$R *.dfm}
Uses Global,Principal ;

procedure TFrmParametrosIntegrado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FrmPrincipal.VEN048.Enabled   := True;
     Qr_Drogas.Close;
     Qr_RacaoTipo.Close;
     Qr_RacaoSem.Close;
     Qr_Bonus.Close;
     Qr_FatorPagto.Close;
     Action := caFree;
end;

procedure TFrmParametrosIntegrado.FormShow(Sender: TObject);
begin
     Qr_Drogas.Open;
     Qr_RacaoTipo.Open;
     Qr_RacaoSem.Open;
     Qr_Bonus.Open;
     Qr_FatorPagto.Open;
end;

procedure TFrmParametrosIntegrado.Qr_FatorPagtoAfterInsert(
  DataSet: TDataSet);
begin
     Qr_FatorPagtoEMPRESA.Value := gs_Empresa;
     Qr_FatorPagtoFILIAL.Value  := gi_Filial;
end;

end.
