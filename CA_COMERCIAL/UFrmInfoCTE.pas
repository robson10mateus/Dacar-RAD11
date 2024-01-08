{
  Descrição: Formulário para cadastro de informações complementares do Controle de Transporte Eletrônico (CT-e)
  Autor: Vinícius Godinho Del Rio
  Data da criação: 12/01/2015
  Revisões:
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
    //ID do Pedido de Venda em questão
    idPedidoVenda : Integer;

    //Modo da tela (Visualização e Edição). Utilizar as constantes criadas.
    modoTela : Integer;

  end;

const
  //Constantes para controlar o modo da tela (Exibição ou Edição)
  MODO_TELA_VISUALIZACAO = 0;
  MODO_TELA_EDICAO = 1;

  //Separado de decimal
  SEPARADOR_DECIMAL = ',';

  //Número máximo de componentes de serviço que poderão ser inseridos na Grid
  MAX_COMP_SERVICO = 3;

var
  FrmInfoCTE: TFrmInfoCTE;

implementation

uses
  Principal;

{$R *.dfm}

{
  Descrição: Habilita/Desabilita a edição dos campos
  Autor: Vinícius Godinho Del Rio
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
  Descrição: Adiciona um componente de valor da prestação de serviço
  Autor: Vinícius Godinho Del Rio
  Data: 13/01/2015
}
procedure TFrmInfoCTE.btnAdicionarClick(Sender: TObject);
begin

  //Verificando se existem menos de 3 (No documento de CT-e gerado existem apenas 3 campos)
  if QryCTECompServ.RecordCount < MAX_COMP_SERVICO then
  begin

    //Colocando a OracleQuery em modo de inserção
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

    ShowMessage('Só é possível ter ' + IntToStr(MAX_COMP_SERVICO) + ' componente(s) do valor da prestação de serviço!');

  end;

end;

{
  Descrição: Remove um componente de valor de prestação do serviço.
  Autor: Vinícius Godinho Del Rio
  Data: 13/01/2015
}
procedure TFrmInfoCTE.btnRemoverClick(Sender: TObject);
begin

  //Verificando se existe registro selecionado para a exclusão
  if QryCTECompServID_CTECOMPSERV.AsInteger <> 0 then
  begin

    //Confirmando se realmente o usuário quer excluir
    if MessageDlg('Confirma a exclusão deste componente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      //Realizando a exclusão
      QryCTECompServ.Delete;
      QryCTECompServ.ApplyUpdates;

    end;

  end
  else
  begin

    ShowMessage('Você precisa selecionar uma linha para poder realizar essa operação!');

  end;

end;

{
  Descrição: Salva as alterações realizadas na tela caso ela esteja em modo de edição
  Autor: Vinícius Godinho Del Rio
  Data: 13/01/2015
}
procedure TFrmInfoCTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  //Verifica se está em modo de edição
  if QryPedidoVenda.State = dsEdit then
  begin
  
    //Se tiver, salva as alterações no banco de dados
    QryPedidoVenda.Post;
    QryPedidoVenda.ApplyUpdates;

  end;

end;

{
  Descrição: Prepara a tela no momento em que ela é exibida
  Autor: Vinícius Godinho Del Rio
  Data: 13/01/2015
}
procedure TFrmInfoCTE.FormShow(Sender: TObject);
begin

    //Abrindo os datasets
  QryMaterialEmbalagem.Open;
  QryUnidadeMedida.Open;
  AbreQueryComParametro(QryCTECompServ, 'ID_PEDIVEND', idPedidoVenda);
  AbreQueryComParametro(QryPedidoVenda, 'ID_PEDIVEND', idPedidoVenda);

  //Habilitando/Desabilitando a edição dos campos dependendo do modo da tela
  HabilitaCampos(modoTela = MODO_TELA_EDICAO);

  //Se a tela estiver no modo de edição, então coloca também a query em modo de edição
  if modoTela = MODO_TELA_EDICAO then
    QryPedidoVenda.Edit;

end;

{
  Descrição: Abre uma query passando um unico parâmetro do tipo inteiro
  Autor: Vinícius Godinho Del Rio
  Data: 13/01/2015
}
procedure TFrmInfoCTE.AbreQueryComParametro(qry : TOraQuery; paramName : string; paramValue : Integer);
begin

  qry.ParamByName(paramName).Value := paramValue;
  qry.Open;

end;

{
  Descrição: Valida se o que foi digitado é um número ou o separador numérico
  Autor: Vinícius Godinho Del Rio
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
  Descrição: Busca o produto com o código digitado na DBEdit do Produto Predominante
  Autor: Vinícius Godinho Del Rio
  Data: 14/01/2015
}
procedure TFrmInfoCTE.edtProdutoPredominanteExit(Sender: TObject);
begin

  //Verificando se existe algo digitado na textbox de Produto Predominante
  if edtProdutoPredominante.Text <> '' then
  begin

    //Tentando localizar o produto com o código digitado na textbox de Produto Predominante
    if not QryMaterialEmbalagem.Locate('ID_PRODMATEEMBA', edtProdutoPredominante.Text, []) then
    begin

      //Se não encontrou, exibe mensagem alertando o usuário
      MessageDlg('Código de produto inexistente.' + #10, mtWarning, [mbOk], 0);

      //Limpa a caixa de texto e joga o foco para ela
      edtProdutoPredominante.Text := '';
      edtProdutoPredominante.SetFocus;

    end;

  end;

end;

end.
