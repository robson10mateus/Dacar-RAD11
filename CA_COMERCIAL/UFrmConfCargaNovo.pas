unit UFrmConfCargaNovo;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, RLFilters, RLXLSFilter, RLParser, RLPrintDialog,
  RLSaveDialog, Ora, MemDS, DBAccess, RLReport;

type
  TFrmConfCargaNovo = class(TForm)
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    Qr: TOraQuery;
    Ds: TOraDataSource;
    RLXLSFilter1: TRLXLSFilter;
    RLBand3: TRLBand;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    QrID_CARGEXPE: TFloatField;
    QrGN_PLACVEICTRAN: TStringField;
    QrNM_FORNECEDOR: TStringField;
    QrFL_STATCARGEXPE: TStringField;
    QrDT_CARGEXPE: TDateTimeField;
    QrNR_ORDEPEDIVEND: TFloatField;
    QrID_PEDIVEND: TFloatField;
    QrGN_OBSEEXPEPEDIVEND: TStringField;
    QrNM_CLIENTE: TStringField;
    QrQN_EMBAITEMPEDIVEND: TFloatField;
    QrPEDIDOS: TFloatField;
    RLSubDetail1: TRLSubDetail;
    Qr_Item: TOraQuery;
    Ds_Item: TOraDataSource;
    Qr_ItemID_CARGEXPE: TFloatField;
    Qr_ItemNR_ORDEPEDIVEND: TFloatField;
    Qr_ItemID_PEDIVEND: TFloatField;
    Qr_ItemGN_OBSEEXPEPEDIVEND: TStringField;
    Qr_ItemID_PRODMATEEMBA: TStringField;
    Qr_ItemNM_PRODMATEEMBA: TStringField;
    Qr_ItemQN_EMBAITEMPEDIVEND: TFloatField;
    RLBand4: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    QrITENS: TFloatField;
    Qr_ItemNM_CLIENTE: TStringField;
    RLMemo1: TRLMemo;
    RLExpressionParser1: TRLExpressionParser;
    RLBand6: TRLBand;
    RLGroup2: TRLGroup;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    QrCAIXAS: TFloatField;
    Cabecalho: TRLBand;
    lblSubTitulo: TRLLabel;
    lblTitulo: TRLLabel;
    lblPagina: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    imgLogoTipo: TRLImage;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    procedure lbl_UnidadeBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSubDetail1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand1AfterPrint(Sender: TObject);
    procedure RLBand2AfterPrint(Sender: TObject);
    procedure RLBand3AfterPrint(Sender: TObject);
    procedure RLBand4AfterPrint(Sender: TObject);
    procedure RLReport1PageStarting(Sender: TObject);
    procedure RLMemo1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDisponivel, B1, B2, B3, B4 : Integer;

    function getAlturaDisponivel(): Integer;
  public
    { Public declarations }
  end;

var
  FrmConfCargaNovo: TFrmConfCargaNovo;

implementation

{$R *.dfm}
uses UFrmConferenciaCarga, Global, strutils ;


procedure TFrmConfCargaNovo.lbl_UnidadeBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
//     lbl_Unidade.Caption := gs_Unidade;
end;

function TFrmConfCargaNovo.getAlturaDisponivel(): Integer;
begin
      Result := RLReport1.Height -  //Sempre falta 1
      Trunc((RLReport1.Margins.TopMargin + RLReport1.Margins.BottomMargin) );

      Result := Result - RLBand1.Height;
//      Result := Result - RLBand2.Height;
      Result := Result - 53;
     { if ( RLBand1.Visible ) then
      Result := Result - RLBand1.Height;}

      {if ( RLBand2.Visible ) then
      Result := Result - RLBand1.Height;}
end;


procedure TFrmConfCargaNovo.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    fDisponivel :=  getAlturaDisponivel();
   // B1 := 0; B2 := 0; B3 := 0; B4 := 0;
end;

procedure TFrmConfCargaNovo.RLSubDetail1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var tamCalculado : Integer;
    msg : String;
begin
     tamCalculado := RLBand3.Height + (  QrITENS.AsInteger * RLBand4.Height )  ;

    { msg := 'Pedido: ' + QrID_PEDIVEND.AsString + ' Itens: ' + intTostr(QrITENS.AsInteger ) +
            ' Disp: ' + intTostr(fDisponivel) + ' Calculado: ' + intTostr(tamCalculado) +
            'Bands :'+ intTostr(B1) + ' ,' + intTostr(B2) + ' ,' + intTostr(B3) + ' ,'+ intTostr(B4);

     if ( QrID_PEDIVEND.AsInteger = 12255 ) or ( QrID_PEDIVEND.AsInteger = 12258 ) or
        ( QrID_PEDIVEND.AsInteger = 12239 ) or ( QrID_PEDIVEND.AsInteger = 12240 )  then
     ShowMessage(msg);}

      if ( tamCalculado > fDisponivel ) then
        RLSubDetail1.PageBreaking := pbBeforePrint
      else
         RLSubDetail1.PageBreaking := pbNone;

      {if ( B3 + B4 +  QrITENS.AsInteger + 1 > 38 ) then
        RLSubDetail1.PageBreaking := pbBeforePrint
      else
         RLSubDetail1.PageBreaking := pbNone;}

end;

procedure TFrmConfCargaNovo.RLBand1AfterPrint(Sender: TObject);
begin
   //  fDisponivel := fDisponivel - RLBand1.Height;
   //  B1 := B1 + 1
end;

procedure TFrmConfCargaNovo.RLBand2AfterPrint(Sender: TObject);
begin
    // fDisponivel := fDisponivel - RLBand2.Height;
    // B2 := B2 + 1

end;

procedure TFrmConfCargaNovo.RLBand3AfterPrint(Sender: TObject);
begin
     fDisponivel := fDisponivel - RLBand3.Height;
     //B3 := B3 + 1

end;

procedure TFrmConfCargaNovo.RLBand4AfterPrint(Sender: TObject);
begin
     fDisponivel := fDisponivel - RLBand4.Height;
     //B4 := B4 + 1
end;

procedure TFrmConfCargaNovo.RLReport1PageStarting(Sender: TObject);
begin
      if ( RLReport1.PageNumber > 1) then
      begin
           fDisponivel :=  getAlturaDisponivel();
       //    B1 := 0; B2 := 0; B3 := 0; B4 := 0;
      end;

end;

procedure TFrmConfCargaNovo.RLMemo1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     if ( QrGN_OBSEEXPEPEDIVEND.AsString <> '' ) then
     begin
         // RLBand5.Height := 17 ;
          Text := QrGN_OBSEEXPEPEDIVEND.AsString ;
          Text := StringReplace( QrGN_OBSEEXPEPEDIVEND.AsString , #13#10#13#10#13#10 , #13#10, [rfReplaceAll] );
          Text := StringReplace( Text , #13#10#13#10 , #13#10, [rfReplaceAll] );
     end
     else
     begin
         // RLBand5.Height := 0 ;
          PrintIt := false ;
     end;
end;

procedure TFrmConfCargaNovo.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    RLLabel11.Caption := 'Total de Pedidos : ' + QrPEDIDOS.AsString;
    RLLabel13.Caption :=  'Caixas : ' + QrCAIXAS.AsString;
end;

end.
