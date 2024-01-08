unit UFrmPesqMatEmba;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DB, Ora, MemDS, DBAccess;

type
  TFrmPesqMatEmba = class(TForm)
    Label1: TLabel;
    EdExpre: TEdit;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    QrMatEmba: TOraQuery;
    QrMatEmbaEMPRESA: TStringField;
    QrMatEmbaFILIAL: TIntegerField;
    QrMatEmbaID_MATERIAL: TFloatField;
    QrMatEmbaID_MATEEMBA: TFloatField;
    QrMatEmbaID_PRODMATEEMBA: TStringField;
    QrMatEmbaNM_PRODMATEEMBA: TStringField;
    QrMatEmbaNM_PRODREDUMATEEMBA: TStringField;
    QrMatEmbaID_EMBALAGEM: TFloatField;
    QrMatEmbaQN_CAPAMINIMATEEMBA: TFloatField;
    QrMatEmbaQN_CAPAMAXIMATEEMBA: TFloatField;
    QrMatEmbaQN_CAPAPADRMATEEMBA: TFloatField;
    QrMatEmbaQN_CAPAMEDIMATEEMBA: TFloatField;
    QrMatEmbaQN_CAPAPADRUNIDMATEEMBA: TFloatField;
    QrMatEmbaQN_CAPAMEDIUNIDMATEEMBA: TFloatField;
    QrMatEmbaFX_MATEEMBA: TStringField;
    QrMatEmbaNM_MATERIAL: TStringField;
    QrMatEmbaIE_MATERIAL: TStringField;
    QrMatEmbaNM_EMBALAGEM: TStringField;
    DSMatEmba: TOraDataSource;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    xresul,vcampo,vexpre:string;
    { Public declarations }
  end;

var
  FrmPesqMatEmba: TFrmPesqMatEmba;

implementation

uses UfrmPedVenda,global, UFrmPediDevoVend, UFrmTabPreco,  Principal, UFrmParamComercial, UFrmCorte, UFrmHistoricoPrecoTelevendas, uFrmVendasDiaria;

{$R *.dfm}

procedure TFrmPesqMatEmba.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPesqMatEmba.BitBtn1Click(Sender: TObject);
begin
  CASE ComboBox1.ItemIndex OF
   0:VCAMPO:='Material_embalagem.ID_PRODMATEEMBA'; // Nome da coluna na tabela
   1:VCAMPO:='UPPER(Material_embalagem.NM_PRODMATEEMBA)'; // Nome da coluna na tabela
   2:VCAMPO:='Material_embalagem.ID_MATERIAL';
   3:VCAMPO:='Material.IE_MATERIAL'; // Nome da coluna na tabela
   4:VCAMPO:='UPPER(Material.NM_MATERIAL)'; // Nome da coluna na tabela
   5:VCAMPO:='Material_embalagem.ID_EMBALAGEM'; // Nome da coluna na tabela
   6:VCAMPO:='UPPER(Embalagem.NM_EMBALAGEM)'; // Nome da coluna na tabela
   7:VCAMPO:='Material.IE_PRODMATEEMBA'; // Nome da coluna na tabela

  END;
  VEXPRE:=EdExpre.Text;
  QrMatEmba.Close;
  WITH QrMatEmba.SQL DO
   BEGIN
    Clear;
    ADD('SELECT DISTINCT Material_embalagem.EMPRESA,');
    ADD('Material_embalagem.FILIAL,');
    ADD('Material_embalagem.ID_MATERIAL,');
    ADD('Material_embalagem.ID_MATEEMBA,');
    ADD('   Material_embalagem.ID_PRODMATEEMBA,');
    ADD('   Material_embalagem.NM_PRODMATEEMBA,');
    ADD('   Material_embalagem.NM_PRODREDUMATEEMBA,');
    ADD('   Material_embalagem.ID_EMBALAGEM,');
    ADD('   Material_embalagem.QN_CAPAMINIMATEEMBA,');
    ADD('   Material_embalagem.QN_CAPAMAXIMATEEMBA,');
    ADD('   Material_embalagem.QN_CAPAPADRMATEEMBA,');
    ADD('   Material_embalagem.QN_CAPAMEDIMATEEMBA,');
    ADD('   Material_embalagem.QN_CAPAPADRUNIDMATEEMBA,');
    ADD('   Material_embalagem.QN_CAPAMEDIUNIDMATEEMBA,');
    ADD('   Material_embalagem.FX_MATEEMBA,');
    ADD('   Material.NM_MATERIAL,');
    ADD('   Material.IE_MATERIAL,');
    ADD('   Embalagem.NM_EMBALAGEM');
    ADD('FROM MATERIAL Material,');
    ADD(' EMBALAGEM Embalagem,');
    ADD(' MATERIAL_EMBALAGEM Material_embalagem');
    ADD(' WHERE  (Embalagem.EMPRESA = Material_embalagem.EMPRESA)');
    ADD(' AND  (Embalagem.FILIAL = Material_embalagem.FILIAL)');
    ADD(' AND  (Embalagem.ID_EMBALAGEM = Material_embalagem.ID_EMBALAGEM)');
    ADD(' AND  (Material.EMPRESA = Material_embalagem.EMPRESA)');
    ADD(' AND  (Material.FILIAL = Material_embalagem.FILIAL)');
    ADD(' AND  (Material.ID_MATERIAL = Material_embalagem.ID_MATERIAL) AND ');

   CASE ComboBox2.ItemIndex OF
     0:ADD(VCAMPO+'= ''' + VEXPRE + '''');
     1:ADD(VCAMPO+' LIKE '''+'%'+ VEXPRE + '%' + '''');
    END;
    ADD(' ORDER BY Material_embalagem.ID_PRODMATEEMBA ');
  END;

  QrMatEmba.Open;
  QrMatEmba.Refresh;
  BitBtn2.SetFocus;
end;

procedure TFrmPesqMatEmba.BitBtn2Click(Sender: TObject);
begin
  xRESUL:=QrMatEmbaID_PRODMATEEMBA.Value;
  TRY
    CASE FrmOriPesq OF
      1:FrmPedVenda.EdExpre.Text:=XRESUL;
      2:FrmPediDevoVend.edtCodiMate.Text:=XRESUL;

      3:
      begin
        FrmParamComercial.QrItemID_PRODMATEEMBA.Value:=QrMatEmbaID_PRODMATEEMBA.Value;
        FrmParamComercial.QrItemNM_PRODMATEEMBA.Value:=QrMatEmbaNM_PRODMATEEMBA.Value;
      end;

      4:
      begin
        FrmTabPreco.DBCod.Text:= QrMatEmbaID_PRODMATEEMBA.Value;
        FrmTabPreco.DBDescItem.Text:= QrMatEmbaNM_PRODMATEEMBA.Value;
        FrmTabPreco.QryTabPrecoID_MATERIAL.Value:= QrMatEmbaID_MATERIAL.Value;
        FrmTabPreco.QryTabPrecoID_EMBALAGEM.Value:= QrMatEmbaID_EMBALAGEM.Value;
        FrmTabPreco.QryTabPrecoID_MATEEMBA.Value:=  QrMatEmbaID_MATEEMBA.Value;
      end;

      5:
      begin
        FrmCorte.edtCodiProd.Text := QrMatEmbaID_PRODMATEEMBA.Value;
        FrmCorte.edtNomeProd.Text := QrMatEmbaNM_PRODMATEEMBA.Value;
        FrmCorte.VCodiMate := QrMatEmbaID_MATEEMBA.VALUE;
      end;

      11:
      begin
        FrmPedVenda.DBCodMatEmba.Text:=XRESUL;
        FrmPedVenda.DBCodMatEmba.SetFocus;
      end;

      12:
      begin
        FrmHistoricoPrecoTelevendas.DBCod.Text := QrMatEmbaID_PRODMATEEMBA.Value;
        FrmHistoricoPrecoTelevendas.DBDescItem.Text := QrMatEmbaNM_PRODMATEEMBA.Value;
      end;

      13:
      begin
        FrmPedVenda.edtProdutoPredominante.Text    := QrMatEmbaID_PRODMATEEMBA.Value;
        FrmPedVenda.edtProdutoPredominante.SetFocus;
        FrmPedVenda.cbProdutoPredominante.KeyValue := QrMatEmbaID_PRODMATEEMBA.Value;
      end;

      {NOME: FABRICIO DATA:30/01/2018 MOTIVO: RELATORIO DE VENDAS DIARIAS}
      56:frmVendasDiaria.edtExpressao.Text := xresul;
    end;
  EXCEPT
    ShowMessage('Pesquisa não disponível, tente novamente.');
  END;

  Close;

end;

procedure TFrmPesqMatEmba.FormActivate(Sender: TObject);
begin
  QrMatEmba.Open;
end;

procedure TFrmPesqMatEmba.FormCreate(Sender: TObject);
begin
frmPrincipal.TrocaNomeSequence(Self);
end;

end.
