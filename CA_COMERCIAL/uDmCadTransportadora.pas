unit uDmCadTransportadora;

interface

uses
  SysUtils, Classes, Types, DB, MemDS, DBAccess, Ora;

type
  TdmCadTransportadora = class(TDataModule)
    QrVeiculos: TOraQuery;
    QrVeiculosEMPRESA: TStringField;
    QrVeiculosFILIAL: TIntegerField;
    QrVeiculosID_VEICTRAN: TFloatField;
    QrVeiculosIE_VEICTRAN: TStringField;
    QrVeiculosID_FORNECEDOR_TRANSPORTADOR: TFloatField;
    QrVeiculosGN_PLACVEICTRAN: TStringField;
    QrVeiculosNM_VEICTRAN: TStringField;
    QrVeiculosNM_REDUVEICTRAN: TStringField;
    QrVeiculosID_TIPOVEIC: TFloatField;
    QrVeiculosFL_ATIVVEICTRAN: TStringField;
    QrVeiculosFX_VEICTRAN: TStringField;
    QrVeiculosNM_TIPOVEIC: TStringField;
    QrVeiculosFL_RASTVEICTRAN: TStringField;
    QrVeiculosQN_FATOFRETABATVEICTRAN: TFloatField;
    QrVeiculosQN_TARAPADRVEICTRAN: TFloatField;
    QrVeiculosKMREVISAO: TIntegerField;
    QrVeiculosEIXOS: TIntegerField;
    QrVeiculosQT_GAIOLAS: TIntegerField;
    DSVeiculo: TDataSource;
    QrVeiculosNR_ULTIMO_KM: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCadTransportadora: TdmCadTransportadora;

implementation

{$R *.dfm}
uses TFrmCadTransport;

end.
