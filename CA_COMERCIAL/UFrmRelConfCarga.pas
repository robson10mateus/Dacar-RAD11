unit UFrmRelConfCarga;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLPrintDialog, RLParser, RLSaveDialog, RLFilters,
  RLXLSFilter, RLReport, DB, Ora, MemDS, DBAccess;

type
  TFrmRelConfCarga = class(TForm)
    RLReport1: TRLReport;
    RLXLSFilter1: TRLXLSFilter;
    RLExpressionParser1: TRLExpressionParser;
    Qr: TOraQuery;
    Ds: TOraDataSource;
    QrID_CARGEXPE: TFloatField;
    QrGN_PLACVEICTRAN: TStringField;
    QrNM_FORNECEDOR: TStringField;
    QrFL_STATCARGEXPE: TStringField;
    QrDT_CARGEXPE: TDateTimeField;
    QrNR_ORDEPEDIVEND: TFloatField;
    QrID_PEDIVEND: TFloatField;
    QrGN_OBSEEXPEPEDIVEND: TStringField;
    QrNM_CLIENTE: TStringField;
    QrID_PRODMATEEMBA: TStringField;
    QrNM_PRODMATEEMBA: TStringField;
    QrQN_EMBAITEMPEDIVEND: TFloatField;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLGroup2: TRLGroup;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLBand7: TRLBand;
    RLLabel11: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    QrPEDIDOS: TFloatField;
    RLLabel13: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLBand5: TRLBand;
    RLLabel14: TRLLabel;
    RLMemo1: TRLMemo;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    lblTitulo: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    lblMeiaCaixa: TRLLabel;
    imgLogoTipo: TRLImage;
    QrFL_PRIORIDADE: TStringField;
    procedure lbl_UnidadeBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLMemo1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLGroup2AfterPrint(Sender: TObject);
    procedure RLGroup2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4AfterPrint(Sender: TObject);
    procedure RLBand1AfterPrint(Sender: TObject);
    procedure RLBand2AfterPrint(Sender: TObject);
    procedure RLBand7AfterPrint(Sender: TObject);
    procedure RLBand3AfterPrint(Sender: TObject);
    procedure RLBand5AfterPrint(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
    fDisponivel , PItens : Integer;

  public
    { Public declarations }
  function getAlturaDisponivel(): Integer;
  end;

var
  FrmRelConfCarga: TFrmRelConfCarga;

implementation

{$R *.dfm}
uses UFrmConferenciaCarga, Global, strutils ;
procedure TFrmRelConfCarga.lbl_UnidadeBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
//     lbl_Unidade.Caption := gs_Unidade;
end;

procedure TFrmRelConfCarga.RLMemo1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
Var i : Integer;
begin
     if ( QrGN_OBSEEXPEPEDIVEND.AsString <> '' ) then
     begin
          RLBand5.Height := 17 ;
          Text := QrGN_OBSEEXPEPEDIVEND.AsString ;
          //Text := StringReplace( QrGN_OBSEEXPEPEDIVEND.AsString , #13#10#13#10#13#10 , #13#10, [rfReplaceAll] );
          //Text := StringReplace( Text , #13#10#13#10 , #13#10, [rfReplaceAll] );

     end
     else
     begin
          RLBand5.Height := 0 ;
          PrintIt := false ;
     end;
end;

procedure TFrmRelConfCarga.RLGroup2AfterPrint(Sender: TObject);
var tamCalculado : Integer;
    msg : String;

begin
     {if (  RLMemo1.Height  > RLBand4.Height  ) then
        RLBand4.Height := RLMemo1.Height + 25 ;}
     if ( PItens > 0 ) then
     begin
           if ( fDisponivel = 0 ) then
               fDisponivel := getAlturaDisponivel();

        tamCalculado := RLBand3.Height + RLBand5.Height  + (  PItens * RLBand4.Height )  ;

     msg := 'Pedido: ' + QrID_PEDIVEND.AsString + ' Itens: ' + intTostr(PItens) +
            ' Disp: ' + intTostr(fDisponivel) + ' Calculado: ' + intTostr(tamCalculado);

    // ShowMessage(msg);

        if ( tamCalculado > fDisponivel ) then
          RLGroup2.PageBreaking := pbBeforePrint
        else
           RLGroup2.PageBreaking := pbNone;
     end;

    fDisponivel := fDisponivel - RLGroup2.Height;

end;

function TFrmRelConfCarga.getAlturaDisponivel(): Integer;
begin

      Result := RLReport1.Height - 1 - //Sempre falta 1
      Trunc((RLReport1.Margins.TopMargin + RLReport1.Margins.BottomMargin) );

     { if ( RLBand1.Visible ) then
      Result := Result - RLBand1.Height;}

      {if ( RLBand2.Visible ) then
      Result := Result - RLBand1.Height;}

end;

procedure TFrmRelConfCarga.RLGroup2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var tamCalculado : Integer;
    msg : String;
begin
    {

     if ( PItens > 0 ) then
     begin
           if ( fDisponivel = 0 ) then
               fDisponivel := getAlturaDisponivel();

        tamCalculado := RLBand3.Height + RLBand5.Height  + (  PItens * RLBand4.Height )  ;

     msg := 'Pedido: ' + QrID_PEDIVEND.AsString + ' Itens: ' + intTostr(PItens) +
            ' Disp: ' + intTostr(fDisponivel) + ' Calculado: ' + intTostr(tamCalculado);

     ShowMessage(msg);

        if ( tamCalculado > fDisponivel ) then
          RLGroup2.PageBreaking := pbBeforePrint
        else
           RLGroup2.PageBreaking := pbNone;
     end;
     }
end;

procedure TFrmRelConfCarga.RLBand4AfterPrint(Sender: TObject);
begin
//     fDisponivel := fDisponivel - RLBand4.Height;

end;

procedure TFrmRelConfCarga.RLBand1AfterPrint(Sender: TObject);
begin
     fDisponivel := fDisponivel - RLBand4.Height;
end;

procedure TFrmRelConfCarga.RLBand2AfterPrint(Sender: TObject);
begin
     fDisponivel := fDisponivel - RLBand2.Height;
end;

procedure TFrmRelConfCarga.RLBand7AfterPrint(Sender: TObject);
begin

     fDisponivel := fDisponivel - RLBand7.Height;

end;

procedure TFrmRelConfCarga.RLBand3AfterPrint(Sender: TObject);
begin
    // fDisponivel := fDisponivel - RLBand3.Height;
    PItens := 1 ;

end;

procedure TFrmRelConfCarga.RLBand5AfterPrint(Sender: TObject);
begin
     //fDisponivel := fDisponivel - RLBand5.Height;
end;

procedure TFrmRelConfCarga.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//  if ((QrID_PRODMATEEMBA.AsString = '062') or (QrID_PRODMATEEMBA.AsString = '063') or (QrID_PRODMATEEMBA.AsString = '064')) then
//    lblMeiaCaixa.Visible := True
//  else
//    lblMeiaCaixa.Visible := False;


  lblMeiaCaixa.Visible := (QrFL_PRIORIDADE.AsString = 'S');


  PItens := PItens + 1 ;
end;

procedure TFrmRelConfCarga.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     if ( RLReport1.PageNumber = 1 ) then
        fDisponivel :=  getAlturaDisponivel();
end;

procedure TFrmRelConfCarga.RLReport1PageStarting(Sender: TObject);
begin
     if ( RLReport1.PageNumber > 1 ) then
        fDisponivel :=  getAlturaDisponivel();
end;

end.
