unit UFrmPesqLote;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Ora, MemDS, DBAccess, Buttons, Grids, DBGrids,
  Vcl.ExtCtrls;

type
  TFrmPesqLote = class(TForm)
    Qr: TOraQuery;
    DS: TOraDataSource;
    QrID_LOTE: TFloatField;
    QrDATA_ALOJAMENTO: TDateTimeField;
    QrNR_CNPJFORN: TStringField;
    QrFL_STATUS: TStringField;
    QrINTEGRADO: TStringField;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    btn_PesqLote: TBitBtn;
    DBGrid1: TDBGrid;
    Edt_Lote: TEdit;
    Label1: TLabel;
    procedure Edt_LoteKeyPress(Sender: TObject; var Key: Char);
    procedure btn_PesqLoteClick(Sender: TObject);
  private
    { Private declarations }
    PCNPJ : String;
  public

    { Public declarations }
  end;

function Cria_FrmPesqLote(var CNPJ , Lote :String; VerTodoStatus : Boolean ): boolean;

var
  FrmPesqLote: TFrmPesqLote;

implementation

{$R *.dfm}

function Cria_FrmPesqLote(var CNPJ, Lote :String ; VerTodoStatus : Boolean ): boolean;
begin
 try
   FrmPesqLote := TFrmPesqLote.Create(Application);

   FrmPesqLote.PCNPJ := CNPJ ;

   if ( VerTodoStatus ) then
      FrmPesqLote.Qr.MacroByName('WHERE').Value := ' WHERE A.FL_STATUS in (''AB'',''PR'', ''FE'') '
   else
       FrmPesqLote.Qr.MacroByName('WHERE').Value := ' WHERE A.FL_STATUS in (''AB'',''PR'') ';



   if (CNPJ <> '') then
      FrmPesqLote.Qr.MacroByName('Macro').Value := 'AND F.NR_CNPJFORN = ''' + CNPJ + ''''
   else
      FrmPesqLote.Qr.MacroByName('Macro').Value := '' ;

   //FrmPesqLote.Qr.ParamByName('CNPJ').Value := CNPJ;
   FrmPesqLote.Qr.Open;
   Result := FrmPesqLote.ShowModal = mrOk;
   If Result then
     begin
      Lote := FloatToStr(FrmPesqLote.QrID_LOTE.Value);
     end
   else
     begin
          Lote := '';
     end;
 finally
   FrmPesqLote.Release;
   FrmPesqLote := nil;
 end;
end;

procedure TFrmPesqLote.Edt_LoteKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in ['0'..'9', #8, #13]) then
        key:= #0 ;
     if ( key = #13 ) AND ( Edt_Lote.Text <> '' )then
        Qr.Locate('ID_LOTE', Edt_Lote.Text, []);

end;

procedure TFrmPesqLote.btn_PesqLoteClick(Sender: TObject);
begin
     Qr.Locate('ID_LOTE', Edt_Lote.Text, []);
end;

end.
