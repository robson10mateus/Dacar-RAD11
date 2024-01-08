unit UFrmRelNFRacao;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, DB, MemDS, DBAccess, Ora, RLReport, RLFilters,
  RLDraftFilter, RLHTMLFilter, RLSaveDialog;

type
  TFrmRelNFRacao = class(TForm)
    RL_Notas: TRLReport;
    qryNotaFisc: TOraQuery;
    qryItemNotaFisc: TOraQuery;
    dtsNotaFisc: TOraDataSource;
    dtsItemNotaFisc: TOraDataSource;
    qryNotaFiscEMPRESA: TStringField;
    qryNotaFiscFILIAL: TIntegerField;
    qryNotaFiscID_NOTAFISC: TFloatField;
    qryNotaFiscSG_SERINOTAFISC_NOTAFISC: TStringField;
    qryNotaFiscFL_TIPONOTAFISC: TStringField;
    qryNotaFiscDT_EMISNOTAFISC: TDateTimeField;
    qryNotaFiscDT_SAIDNOTAFISC: TDateTimeField;
    qryNotaFiscNR_CFOP_NOTAFISC: TStringField;
    qryNotaFiscNM_NATUOPERNOTAFISC: TStringField;
    qryNotaFiscID_CLIENTE: TFloatField;
    qryNotaFiscID_FORNECEDOR: TFloatField;
    qryNotaFiscNM_DESTREMENOTAFISC: TStringField;
    qryNotaFiscGN_ENDENOTAFISC: TStringField;
    qryNotaFiscNM_BAIRNOTAFISC: TStringField;
    qryNotaFiscNR_CEPNOTAFISC: TStringField;
    qryNotaFiscNM_CIDANOTAFISC: TStringField;
    qryNotaFiscSG_ESTANOTAFISC: TStringField;
    qryNotaFiscNM_PAISNOTAFISC: TStringField;
    qryNotaFiscNR_FONENOTAFISC: TStringField;
    qryNotaFiscNR_CNPJNOTAFISC: TStringField;
    qryNotaFiscNR_CPFNOTAFISC: TStringField;
    qryNotaFiscNR_IENOTAFISC: TStringField;
    qryNotaFiscNR_RGNOTAFISC: TStringField;
    qryNotaFiscVL_BASEICMSNOTAFISC: TFloatField;
    qryNotaFiscVL_ICMSNOTAFISC: TFloatField;
    qryNotaFiscVL_SEGUNOTAFISC: TFloatField;
    qryNotaFiscVL_OUTRDESPNOTAFISC: TFloatField;
    qryNotaFiscVL_IPINOTAFISC: TFloatField;
    qryNotaFiscVL_NOTAFISC: TFloatField;
    qryNotaFiscVL_BASEIPINOTAFISC: TFloatField;
    qryNotaFiscNM_TRANSPORTADOR_NOTAFISC: TStringField;
    qryNotaFiscGN_PLACVEICNOTAFISC: TStringField;
    qryNotaFiscNM_ENDETRANNOTAFISC: TStringField;
    qryNotaFiscNM_CIDATRANNOTAFISC: TStringField;
    qryNotaFiscSG_ESTATRANNOTAFISC: TStringField;
    qryNotaFiscNR_CNPJTRANNOTAFISC: TStringField;
    qryNotaFiscNR_CPFTRANNOTAFISC: TStringField;
    qryNotaFiscNR_IETRANNOTAFISC: TStringField;
    qryNotaFiscNR_RGTRANNOTAFISC: TStringField;
    qryNotaFiscQN_VOLUNOTAFISC: TIntegerField;
    qryNotaFiscGN_ESPENOTAFISC: TStringField;
    qryNotaFiscGN_MARCNOTAFISC: TStringField;
    qryNotaFiscNR_VOLUNOTAFISC: TIntegerField;
    qryNotaFiscQN_PESOBRUTNOTAFISC: TFloatField;
    qryNotaFiscQN_PESOLIQUNOTAFISC: TFloatField;
    qryNotaFiscGN_ENDEENTRNOTAFISC: TStringField;
    qryNotaFiscNM_BAIRENTRNOTAFISC: TStringField;
    qryNotaFiscNM_CIDAENTRNOTAFISC: TStringField;
    qryNotaFiscSG_ESTAENTRNOTAFISC: TStringField;
    qryNotaFiscGN_CEPENTRNOTAFISC: TStringField;
    qryNotaFiscFL_PESSNOTAFISC: TStringField;
    qryNotaFiscFL_PESSTRANNOTAFISC: TStringField;
    qryNotaFiscFL_TIPOFRETNOTAFISC: TStringField;
    qryNotaFiscPC_ICMSFRETNOTAFISC: TFloatField;
    qryNotaFiscVL_ICMSFRETNOTAFISC: TFloatField;
    qryNotaFiscDT_PROCNOTAFISC: TDateTimeField;
    qryNotaFiscVL_DEVOIPINOTAFISC: TFloatField;
    qryNotaFiscFL_ZONAFRANNOTAFISC: TStringField;
    qryNotaFiscFL_IMPRNOTAFISC: TStringField;
    qryNotaFiscFL_CANCNOTAFISC: TStringField;
    qryNotaFiscFL_EXPONOTAFISC: TStringField;
    qryNotaFiscVL_IPIISENNOTAFISC: TFloatField;
    qryNotaFiscVL_IPIOUTRNOTAFISC: TFloatField;
    qryNotaFiscGN_OBSENOTAFISC: TStringField;
    qryNotaFiscVL_DESCPEDIVEND_NOTAFISC: TFloatField;
    qryNotaFiscVL_PRODNOTAFISC: TFloatField;
    qryNotaFiscSG_ESTAPLACVEICNOTAFISC: TStringField;
    qryNotaFiscVL_FRETNOTAFISC: TFloatField;
    qryNotaFiscFX_NOTAFISC: TStringField;
    qryNotaFiscNR_NOTAFISC: TFloatField;
    qryNotaFiscGN_OBSDESCNOTAFISC: TStringField;
    qryItemNotaFiscEMPRESA: TStringField;
    qryItemNotaFiscFILIAL: TIntegerField;
    qryItemNotaFiscID_ITEMNOTAFISC: TFloatField;
    qryItemNotaFiscID_NOTAFISC: TFloatField;
    qryItemNotaFiscID_MATERIAL: TFloatField;
    qryItemNotaFiscID_EMBALAGEM: TFloatField;
    qryItemNotaFiscID_MATEEMBA: TFloatField;
    qryItemNotaFiscNM_MATERIAL_ITEMNOTAFISC: TStringField;
    qryItemNotaFiscNR_CLASFISC_ITEMNOTAFISC: TStringField;
    qryItemNotaFiscSG_UNIDMEDI_ITEMNOTAFISC: TStringField;
    qryItemNotaFiscQN_EMBAITEMNOTAFISC: TIntegerField;
    qryItemNotaFiscQN_PESOITEMNOTAFISC: TFloatField;
    qryItemNotaFiscVL_UNITITEMNOTAFISC: TFloatField;
    qryItemNotaFiscVL_UNITBRUTITEMNOTAFISC: TFloatField;
    qryItemNotaFiscPC_ICMSITEMNOTAFISC: TFloatField;
    qryItemNotaFiscPC_IPIITEMNOTAFISC: TFloatField;
    qryItemNotaFiscPC_REDUICMSITEMNOTAFISC: TFloatField;
    qryItemNotaFiscVL_IPIITEMNOTAFISC: TFloatField;
    qryItemNotaFiscVL_ICMSITEMNOTAFISC: TFloatField;
    qryItemNotaFiscFL_LEGECLASITEMNOTAFISC: TIntegerField;
    qryItemNotaFiscID_PRODMATEEMBA_ITEMNOTAFISC: TStringField;
    qryItemNotaFiscVL_DESCICMSITEMNOTAFISC: TFloatField;
    qryItemNotaFiscVL_ITEMNOTAFISC: TFloatField;
    qryItemNotaFiscVL_BRUTITEMNOTAFISC: TFloatField;
    qryItemNotaFiscFX_ITEMNOTAFISC: TStringField;
    qryItemNotaFiscNR_CFOP_ITEMNOTAFISC: TStringField;
    qryItemNotaFiscNM_NATUOPERCFOP_ITEMNF: TStringField;
    qryItemNotaFiscFL_SITUTRIBICMS_ITEMNOTAFISC: TStringField;
    qryItemNotaFiscNM_SITUTRIBICMSITEMNOTAFISC: TStringField;
    RLBand1: TRLBand;
    qrlNotaFiscSaid: TRLLabel;
    qrlNotaFiscEntr: TRLLabel;
    qrlNumeNotaCabe: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    qrtCNPJCPF: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    qrlNumeNotaRoda: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLDBText4: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDraftFilter1: TRLDraftFilter;
    RLDBText44: TRLDBText;
    RLBand2: TRLBand;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText18: TRLDBText;
    RLHTML: TRLHTMLFilter;
//    RLSaveDialogSetup1: TRLSaveDialogSetup;
    RLEnd: TRLLabel;
    RLBairro: TRLLabel;
    RLCepFone: TRLLabel;
    RLCnpj: TRLLabel;
    RLIe: TRLLabel;
    procedure RL_NotasBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelNFRacao: TFrmRelNFRacao;

implementation

uses global;
{$R *.dfm}

procedure TFrmRelNFRacao.RL_NotasBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 // Ajustamos a apresentação do numero da nota fiscal
  qrlNumeNotaCabe.Caption := StrZerodec(qryNotaFisc.FieldByName('NR_NOTAFISC').AsInteger, 6, 0);
  qrlNumeNotaRoda.Caption := StrZerodec(qryNotaFisc.FieldByName('NR_NOTAFISC').AsInteger, 6, 0);

  //verificamos se é pessoa física(CPF) ou Juridica(CNPJ) para destinatário
  if qryNotaFisc.FieldByName('FL_PESSNOTAFISC').AsString = 'J' then
  begin
    qrtCNPJCPF.DataField := 'NR_CNPJNOTAFISC';
  end
  else
  begin
    qrtCNPJCPF.DataField := 'NR_CPFNOTAFISC';
  end;

  //verificamos se é pessoa física(CPF) ou Juridica(CNPJ) para o transportador
 { if qryNotaFisc.FieldByName('FL_PESSTRANNOTAFISC').AsString = 'J' then
  begin
    qrtTRANCNPJCPF.DataField := 'NR_CNPJTRANNOTAFISC'
  end
  else
  begin
    qrtTRANCNPJCPF.DataField := 'NR_CPFTRANNOTAFISC'
  end;}

  //Verificamos o tipo da Nota Fiscal (Entrada ou Saida)
  if qryNotaFisc.FieldByName('FL_TIPONOTAFISC').AsString = 'S' then
  begin
    qrlNotaFiscEntr.Visible := False;
    qrlNotaFiscSaid.Visible := True;
  end
  else
  begin
    qrlNotaFiscEntr.Visible := True;
    qrlNotaFiscSaid.Visible := False;
  end;

end;

end.
