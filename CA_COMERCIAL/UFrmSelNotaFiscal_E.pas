unit UFrmSelNotaFiscal_E;

interface

uses
  SysUtils, Types, Classes, {$IFNDEF VER130} Variants {$ENDIF, Types}, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Mask, DB, Ora, MemDS, DBAccess, Grids, DBGrids,
  Buttons;

type
  TFrmSelNotaFiscal_E = class(TForm)
    Label1: TLabel;
    EdExpre: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    QrNotas: TOraQuery;
    DSNotas: TOraDataSource;
    BitBtn2: TBitBtn;
    Edt_DataI: TEdit;
    btnDataI: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Edt_DataF: TEdit;
    BitBtn4: TBitBtn;
    QrNotasID_FORNECEDOR: TFloatField;
    QrNotasNM_FORNECEDOR: TStringField;
    QrNotasNR_NOTA: TFloatField;
    QrNotasDT_ENTRADA: TDateTimeField;
    QrNotasCFOP: TStringField;
    QrNotasNM_NATUOPERCFOP: TStringField;
    QrNotasID_PRODMATEEMBA: TStringField;
    QrNotasNM_PRODMATEEMBA: TStringField;
    QrNotasQTDE: TFloatField;
    QrNotasVL_UNITARIO: TFloatField;
    procedure btnDataIClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QrNotasBeforeOpen(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Macro :String;
  end;

   function Cria_FrmPesqNota( var ID_FORN,NR_NOTA, QTD, Valor : String ): boolean;

var
  FrmSelNotaFiscal_E: TFrmSelNotaFiscal_E;

implementation

{$R *.dfm}
uses  UFrmSeldata;


function Cria_FrmPesqNota( var ID_FORN, NR_NOTA, QTD, Valor : String ): boolean;
begin
     try
         FrmSelNotaFiscal_E := TFrmSelNotaFiscal_E.Create(Application);
         Result := FrmSelNotaFiscal_E.ShowModal = mrOk;
         If Result then
           begin
                ID_FORN := FrmSelNotaFiscal_E.QrNotasID_FORNECEDOR.AsString;
                NR_NOTA := FrmSelNotaFiscal_E.QrNotasNR_NOTA.AsString;
                QTD     :=  FrmSelNotaFiscal_E.QrNotasQTDE.AsString;
                Valor   := FrmSelNotaFiscal_E.QrNotasVL_UNITARIO.AsString;
            //VFor := FloatToStr(FrmPesqFor.QrForID_fornecedor.Value);
            //NFor := FrmPesqFor.QrForNM_FORNECEDOR.Value;
            //NEND := FrmPesqFor.QrForENDERECO.Value;
            //NCEP := FrmPesqFor.QrForNR_CEPFORN.Value;
            //NFONE := FrmPesqFor.QrForNR_FONEFORN.Value;
      //      NCNPJ := FrmPesqFor.QrForNR_CNPJFORN.Value;
           end
         else
           begin
                ID_FORN := '';
                NR_NOTA := '';
                QTD     := '0';
                Valor   := '0';
           end;
     finally
         FrmSelNotaFiscal_E.Release;
         FrmSelNotaFiscal_E := nil;
     end;
end;

procedure TFrmSelNotaFiscal_E.btnDataIClick(Sender: TObject);
Var Vdtstr : String;
begin
     Cria_FrmSelData(Vdtstr);
     Edt_DataI.Text := Vdtstr;
     Edt_DataI.SetFocus;
end;

procedure TFrmSelNotaFiscal_E.BitBtn4Click(Sender: TObject);
Var Vdtstr : String;
begin
     Cria_FrmSelData(Vdtstr);
     Edt_DataF.Text := Vdtstr;
     Edt_DataF.SetFocus;

end;

procedure TFrmSelNotaFiscal_E.FormCreate(Sender: TObject);
begin
     Edt_DataI.Text := DateToStr( Date - 30 );
     Edt_DataF.Text := DateToStr( Date );
end;

procedure TFrmSelNotaFiscal_E.QrNotasBeforeOpen(DataSet: TDataSet);
begin
     QrNotas.ParamByName('Data_INI').Value := Edt_DataI.Text;
     QrNotas.ParamByName('Data_FIM').Value := Edt_DataF.Text;
     QrNotas.MacroByName('Macro').Value    := Macro;
end;

procedure TFrmSelNotaFiscal_E.BitBtn1Click(Sender: TObject);
Var VCAMPO,VEXPRE : string;
begin

     MACRO := '';
     CASE ComboBox1.ItemIndex OF
        0:VCAMPO:=' upper(F.NM_FORNECEDOR) ';
        1:VCAMPO:=' F.ID_FORNECEDOR ';
        2:VCAMPO:=' E.NR_NOTA ';
     END;

     VEXPRE:=EdExpre.Text;
     QrNotas.Close;

     if ( VEXPRE <> '' ) then
     begin
          CASE ComboBox2.ItemIndex OF
            1,2:MACRO := VCAMPO+' = ''' + VEXPRE + '''  ';
            0  :MACRO := VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''  ';
          END;
          MACRO := ' AND ' + MACRO + ' AND M.ID_PRODMATEEMBA  in( 4045 ,4046, 7313, 2998,2999 ) ';
     end
     else
     begin
          MACRO := ' AND M.ID_PRODMATEEMBA  in( 4045 ,4046, 7313, 2998,2999 ) ';
     end;

     QrNotas.Open;
     BitBtn2.SetFocus;
end;

end.
