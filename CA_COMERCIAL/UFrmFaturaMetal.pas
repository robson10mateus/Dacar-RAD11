unit UFrmFaturaMetal;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, DB, Ora, RLFilters, RLHTMLFilter, DBAccess;

type
  TFrmFaturaMetal = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLHTMLFilter1: TRLHTMLFilter;
    DS: TOraDataSource;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDraw9: TRLDraw;
    RLLabel10: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText15: TRLDBText;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDraw12: TRLDraw;
    RLLabel20: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    EXTENSO1: TRLLabel;
    EXTENSO2: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel29: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel37: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLDBText25: TRLDBText;
    RLDraw16: TRLDraw;
    RLAngleLabel1: TRLAngleLabel;
    RLAngleLabel2: TRLAngleLabel;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFaturaMetal: TFrmFaturaMetal;

implementation

uses UfrmImpDocPed, extenso;

{$R *.dfm}

procedure TFrmFaturaMetal.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
 var
     VLINHA1,VLINHA2,cont,VrCheque:STRING;
     i, tmA, tmB: integer;
begin

    VrCheque:= ValorPorExtenso(frmImpDocPed.QryFaturaVL_NOTAFISC.Value);
    tmA:=Length(VrCheque);
    //extenso tem 55 caracteres
    //Verifica se o extenso excede o tamanho da linha.
    IF tmA > 40 then
    Begin
      //Procura pelo inicio da ultima palavra.
      cont:='S';
      While cont='S' do
      Begin
        tmA:=tmA-1;
        If copy(VrCheque,tmA,1)=' ' then
          If tmA<=40 then
             cont:='N';
      End;
      tmB:=Length(VrCheque)-tmA;
      VLINHA2:= copy(VrCheque,tmA+1,tmB);
      VrCheque:=copy(VrCheque,1,tmA);
    End;
    //COLOCA OS (*)S NO FINAL DAS LINHAS
    WHILE Length(VRCHEQUE)<40 DO
    BEGIN
      VRCHEQUE:=VRCHEQUE + '/ ';
    END;
    WHILE Length(VLINHA2)<40 DO
    BEGIN
      VLINHA2:=VLINHA2 + '/ ';
    END;
   EXTENSO1.Caption := UpperCase(VRCHEQUE);
   EXTENSO2.Caption := UpperCase(VLINHA2);

end;

procedure TFrmFaturaMetal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caNone;
end;

end.
