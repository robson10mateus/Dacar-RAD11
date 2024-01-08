unit uFfmFormularioComissao;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, RLPrintDialog, DB, Ora, MemDS, DBAccess;

type
  TfrmFormularioComissao = class(TForm)
    rptFormularioComissao: TRLReport;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    lblTitulo: TRLLabel;
    imgLogoTipo: TRLImage;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel17: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBText7: TRLDBText;
    qryFormularioComissao: TOraQuery;
    qryFormularioComissaoID_CLIENTE: TFloatField;
    qryFormularioComissaoNM_CLIENTE: TStringField;
    qryFormularioComissaoCNPJ_CPF: TStringField;
    qryFormularioComissaoVENDEDOR: TStringField;
    qryFormularioComissaoFL_RESGATADO: TStringField;
    qryFormularioComissaoVENDEDOR_RESG: TStringField;
    dtsFormularioComissao: TOraDataSource;
    RLLabel16: TRLLabel;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    lblClienteNovo: TRLLabel;
    qryFormularioComissaoRESGATADO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormularioComissao: TfrmFormularioComissao;

implementation

{$R *.dfm}

uses UFrmClientes;

end.
