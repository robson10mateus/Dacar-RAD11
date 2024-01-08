{
  Descri��o: Formul�rio para cadastro de informa��es complementares do Controle de Transporte Eletr�nico (CT-e)
  Autor: Vin�cius Godinho Del Rio
  Data da cria��o: 12/01/2015
  Revis�es:
}
unit UFrmInfoCTE;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Mask, Grids, DBGrids, DB,
  MemDS, DBAccess, Ora;

type
  TFrmInfoCTE = class(TForm)
    pnlBackground: TPanel;
    lblProdutoPredominante: TLabel;
    lblOutrasCaracteristicas: TLabel;
    edtOutrasCaracteristicas: TDBEdit;
    edtValorTotal: TDBEdit;
    lblValorTotal: TLabel;
    lblCodUnidadeMedida: TLabel;
    lblTipoMedida: TLabel;
    edtTipoMedida: TDBEdit;
    lblQuantidade: TLabel;
    edtQuantidade: TDBEdit;
    grpCompValorPrestacao: TGroupBox;
    lblNome: TLabel;
    edtNome: TEdit;
    lblValor: TLabel;
    btnAdicionar: TButton;
    grdComponentes: TDBGrid;
    btnRemover: TButton;
    QryPedidoVenda: TOraQuery;
    QryPedidoVendaID_PRODUTO_PREDOMINANTE: TFloatField;
    QryPedidoVendaGN_OUTRAS_CARACTERISTICAS: TStringField;
    QryPedidoVendaVL_TOTAL_MERCADORIA: TFloatField;
    QryPedidoVendaID_UNIDMEDI: TFloatField;
    QryPedidoVendaNM_TIPO_MEDIDA: TStringField;
    QryPedidoVendaQN_QUANTIDADE_CTE: TFloatField;
    DsPedidoVenda: TOraDataSource;
    cbProdutoPredominante: TDBLookupComboBox;
    cbUnidadeMedida: TDBLookupComboBox;
    QryMaterialEmbalagem: TOraQuery;
    QryMaterialEmbalagemID_MATEEMBA: TFloatField;
    QryMaterialEmbalagemNM_PRODMATEEMBA: TStringField;
    DsMaterialEmbalagem: TOraDataSource;
    QryUnidadeMedida: TOraQuery;
    QryUnidadeMedidaID_UNIDMEDI: TFloatField;
    QryUnidadeMedidaSG_UNIDMEDI: TStringField;
    QryUnidadeMedidaNM_UNIDMEDI: TStringField;
    DsUnidadeMedida: TOraDataSource;
    QryCTECompServ: TOraQuery;
    QryCTECompServID_CTECOMPSERV: TFloatField;
    QryCTECompServID_PEDIVEND: TFloatField;
    QryCTECompServNM_NOME: TStringField;
    QryCTECompServVL_VALOR: TFloatField;
    DsCTECompServ: TOraDataSource;
    QryPedidoVendaID_PEDIVEND: TFloatField;
    edtValor: TEdit;
    edtProdutoPredominante: TDBEdit;
    QryMaterialEmbalagemID_PRODMATEEMBA: TStringField;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure edtProdutoPredominanteExit(Sender: TObject);
  private
    procedure HabilitaCampos(enabled : Boolean);
    procedure AbreQueryComParametro(qry : TOraQuery; paramName : string; paramValue : Integer);

  public
    //ID do Pedido de Venda em quest�o
    idPedidoVenda : Integer;

    //Modo da tela (Visualiza��o e Edi��o). Utilizar as constantes criadas.
    modoTela : Integer;

  end;

const
  //Constantes para controlar o modo da tela (Exibi��o ou Edi��o)
  MODO_TELA_VISUALIZACAO = 0;
  MODO_TELA_EDICAO = 1;

  //Separado de decimal
  SEPARADOR_DECIMAL = ',';

  //N�mero m�ximo de componentes de servi�o que poder�o ser inseridos na Grid
  MAX_COMP_SERVICO = 3;

var
  FrmInfoCTE: TFrmInfoCTE;

implementation

uses
  Principal;

{$R *.dfm}

{
  Descri��o: Habilita/Desabilita a edi��o dos campos
  Autor: Vin�cius Godinho Del Rio
  Data: 13/01/2015
}
procedure TFrmInfoCTE.HabilitaCampos(enabled : Boolean);
begin

  edtProdutoPredominante.Enabled := enabled;
  cbProdutoPredominante.Enabled := enabled;
  edtOutrasCaracteristicas.Enabled := enabled;
  edtValorTotal.Enabled := enabled;
  cbUnidadeMedida.Enabled := enabled;
  edtTipoMedida.Enabled := enabled;
  edtQuantidade.Enabled := enabled;
  edtNome.Enabled := enabled;
  edtValor.Enabled := enabled;
  grdComponentes.Enabled := enabled;
  btnAdicionar.Enabled := enabled;
  btnRemover.Enabled := enabled;

  QryPedidoVenda.ReadOnly := not enabled;
  QryMaterialEmbalagem.ReadOnly := not enabled;
  QryCTECompServ.ReadOnly := not enabled;
  QryUnidadeMedida.ReadOnly := not enabled;

end;

{
  Descri��o: Adiciona um componente de valor da presta��o de servi�o
  Autor: Vin�cius Godinho Del Rio
  Data: 13/01/2015
}
procedure TFrmInfoCTE.btnAdicionarClick(Sender: TObject);
begin

  //Verificando se existem menos de 3 (No documento de CT-e gerado existem apenas 3 campos)
  if QryCTECompServ.RecordCount < MAX_COMP_SERVICO then
  begin

    //Colocando a OracleQuery em modo de inser��o
    QryCTECompServ.Insert;

    //Definindo os valores dos campos
    QryCTECompServID_PEDIVEND.Value := idPedidoVenda;
    QryCTECompServNM_NOME.Value := edtNome.Text;
    QryCTECompServVL_VALOR.Value := StrToFloatDef(edtValor.Text, 0);

    //Comitando
    QryCTECompServ.Post;
    QryCTECompServ.ApplyUpdates;

    //Limpando os campos
    edtNome.Text := '';
    edtValor.Text := '';

  end
  else
  begin

    ShowMessage('S� � poss�vel ter ' + IntToStr(MAX_COMP_SERVICO) + ' componente(s) do valor da presta��o de servi�o!');

  end;

end;

{
  Descri��o: Remove um componente de valor de presta��o do servi�o.
  Autor: Vin�cius Godinho Del Rio
  Data: 13/01/2015
}
procedure TFrmInfoCTE.btnRemoverClick(Sender: TObject);
begin

  //Verificando se existe registro selecionado para a exclus�o
  if QryCTECompServID_CTECOMPSERV.AsInteger <> 0 then
  begin

    //Confirmando se realmente o usu�rio quer excluir
    if MessageDlg('Confirma a exclus�o deste componente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      //Realizando a exclus�o
      QryCTECompServ.Delete;
      QryCTECompServ.ApplyUpdates;

    end;

  end
  else
  begin

    ShowMessage('Voc� precisa selecionar uma linha para poder realizar essa opera��o!');

  end;

end;

{
  Descri��o: Salva as altera��es realizadas na tela caso ela esteja em modo de edi��o
  Autor: Vin�cius Godinho Del Rio
  Data: 13/01/2015
}
procedure TFrmInfoCTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  //Verifica se est� em modo de edi��o
  if QryPedidoVenda.State = dsEdit then
  begin
  
    //Se tiver, salva as altera��es no banco de dados
    QryPedidoVenda.Post;
    QryPedidoVenda.ApplyUpdates;

  end;

end;

{
  Descri��o: Prepara a tela no momento em que ela � exibida
  Autor: Vin�cius Godinho Del Rio
  Data: 13/01/2015
}
procedure TFrmInfoCTE.FormShow(Sender: TObject);
begin

    //Abrindo os datasets
  QryMaterialEmbalagem.Open;
  QryUnidadeMedida.Open;
  AbreQueryComParametro(QryCTECompServ, 'ID_PEDIVEND', idPedidoVenda);
  AbreQueryComParametro(QryPedidoVenda, 'ID_PEDIVEND', idPedidoVenda);

  //Habilitando/Desabilitando a edi��o dos campos dependendo do modo da tela
  HabilitaCampos(modoTela = MODO_TELA_EDICAO);

  //Se a tela estiver no modo de edi��o, ent�o coloca tamb�m a query em modo de edi��o
  if modoTela = MODO_TELA_EDICAO then
    QryPedidoVenda.Edit;

end;

{
  Descri��o: Abre uma query passando um unico par�metro do tipo inteiro
  Autor: Vin�cius Godinho Del Rio
  Data: 13/01/2015
}
procedure TFrmInfoCTE.AbreQueryComParametro(qry : TOraQuery; paramName : string; paramValue : Integer);
begin

  qry.ParamByName(paramName).Value := paramValue;
  qry.Open;

end;

{
  Descri��o: Valida se o que foi digitado � um n�mero ou o separador num�rico
  Autor: Vin�cius Godinho Del Rio
  Data: 13/01/2015
}
procedure TFrmInfoCTE.edtValorKeyPress(Sender: TObject; var Key: Char);
begin

  if not (Key in [#8, '0'..'9', SEPARADOR_DECIMAL]) then
    Key := #0
  else if (Key = SEPARADOR_DECIMAL) and (Pos(Key, edtValor.Text) > 0) then
    Key := #0;
    
end;

{
  Descri��o: Busca o produto com o c�digo digitado na DBEdit do Produto Predominante
  Autor: Vin�cius Godinho Del Rio
  Data: 14/01/2015
}
procedure TFrmInfoCTE.edtProdutoPredominanteExit(Sender: TObject);
begin

  //Verificando se existe algo digitado na textbox de Produto Predominante
  if edtProdutoPredominante.Text <> '' then
  begin

    //Tentando localizar o produto com o c�digo digitado na textbox de Produto Predominante
    if not QryMaterialEmbalagem.Locate('ID_PRODMATEEMBA', edtProdutoPredominante.Text, []) then
    begin

      //Se n�o encontrou, exibe mensagem alertando o usu�rio
      MessageDlg('C�digo de produto inexistente.' + #10, mtWarning, [mbOk], 0);

      //Limpa a caixa de texto e joga o foco para ela
      edtProdutoPredominante.Text := '';
      edtProdutoPredominante.SetFocus;

    end;

  end;

end;

end.
