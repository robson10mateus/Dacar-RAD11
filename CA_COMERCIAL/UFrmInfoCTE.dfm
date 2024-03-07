object FrmInfoCTE: TFrmInfoCTE
  Left = 414
  Top = 174
  ActiveControl = edtOutrasCaracteristicas
  Caption = 'Informa'#231#245'es do CT-e'
  ClientHeight = 283
  ClientWidth = 358
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object pnlBackground: TPanel
    Left = 0
    Top = 0
    Width = 358
    Height = 283
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 370
    ExplicitHeight = 286
    object lblProdutoPredominante: TLabel
      Left = 55
      Top = 20
      Width = 126
      Height = 15
      Caption = 'Produto predominante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblOutrasCaracteristicas: TLabel
      Left = 10
      Top = 45
      Width = 174
      Height = 15
      Caption = 'Outras caracter'#237'sticas da carga:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblValorTotal: TLabel
      Left = 42
      Top = 70
      Width = 139
      Height = 15
      Caption = 'Valor total da mercadoria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblCodUnidadeMedida: TLabel
      Left = 29
      Top = 95
      Width = 156
      Height = 15
      Caption = 'C'#243'd. da unidade de medida:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblTipoMedida: TLabel
      Left = 84
      Top = 120
      Width = 89
      Height = 15
      Caption = 'Tipo de medida:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblQuantidade: TLabel
      Left = 102
      Top = 145
      Width = 67
      Height = 15
      Caption = 'Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edtOutrasCaracteristicas: TDBEdit
      Left = 169
      Top = 42
      Width = 212
      Height = 23
      DataField = 'GN_OUTRAS_CARACTERISTICAS'
      DataSource = DsPedidoVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtValorTotal: TDBEdit
      Left = 170
      Top = 67
      Width = 101
      Height = 23
      DataField = 'VL_TOTAL_MERCADORIA'
      DataSource = DsPedidoVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 2
    end
    object edtTipoMedida: TDBEdit
      Left = 170
      Top = 116
      Width = 151
      Height = 23
      DataField = 'NM_TIPO_MEDIDA'
      DataSource = DsPedidoVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 7
    end
    object edtQuantidade: TDBEdit
      Left = 170
      Top = 141
      Width = 101
      Height = 23
      DataField = 'QN_QUANTIDADE_CTE'
      DataSource = DsPedidoVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 16
      ParentFont = False
      TabOrder = 1
    end
    object grpCompValorPrestacao: TGroupBox
      Left = 5
      Top = 170
      Width = 381
      Height = 146
      Caption = 'Componentes do valor da presta'#231#227'o do servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object lblNome: TLabel
        Left = 10
        Top = 25
        Width = 37
        Height = 15
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblValor: TLabel
        Left = 198
        Top = 26
        Width = 30
        Height = 15
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object edtNome: TEdit
        Left = 45
        Top = 22
        Width = 146
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        TabOrder = 0
      end
      object btnAdicionar: TButton
        Left = 335
        Top = 20
        Width = 31
        Height = 25
        Caption = '+'
        TabOrder = 2
        OnClick = btnAdicionarClick
      end
      object grdComponentes: TDBGrid
        Left = 10
        Top = 55
        Width = 321
        Height = 86
        DataSource = DsCTECompServ
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = 16
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NM_NOME'
            Title.Caption = 'Nome'
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_VALOR'
            Title.Caption = 'Valor'
            Width = 150
            Visible = True
          end>
      end
      object btnRemover: TButton
        Left = 335
        Top = 55
        Width = 31
        Height = 25
        Caption = '-'
        TabOrder = 1
        OnClick = btnRemoverClick
      end
      object edtValor: TEdit
        Left = 230
        Top = 23
        Width = 101
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        TabOrder = 3
        OnKeyPress = edtValorKeyPress
      end
    end
    object cbProdutoPredominante: TDBLookupComboBox
      Left = 220
      Top = 15
      Width = 161
      Height = 23
      DataField = 'ID_PRODUTO_PREDOMINANTE'
      DataSource = DsPedidoVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'ID_PRODMATEEMBA'
      ListField = 'NM_PRODMATEEMBA'
      ListSource = DsMaterialEmbalagem
      ParentFont = False
      TabOrder = 4
    end
    object cbUnidadeMedida: TDBLookupComboBox
      Left = 170
      Top = 90
      Width = 151
      Height = 23
      DataField = 'ID_UNIDMEDI'
      DataSource = DsPedidoVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'ID_UNIDMEDI'
      ListField = 'NM_UNIDMEDI'
      ListSource = DsUnidadeMedida
      ParentFont = False
      TabOrder = 5
    end
    object edtProdutoPredominante: TDBEdit
      Left = 170
      Top = 16
      Width = 46
      Height = 23
      DataField = 'ID_PRODUTO_PREDOMINANTE'
      DataSource = DsPedidoVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnExit = edtProdutoPredominanteExit
    end
  end
  object QryPedidoVenda: TOraQuery
    KeyFields = 'ID_PEDIVEND'
    SQLUpdate.Strings = (
      'UPDATE PEDIDO_VENDA'
      'SET'
      '  ID_PRODUTO_PREDOMINANTE = :ID_PRODUTO_PREDOMINANTE,'
      '  GN_OUTRAS_CARACTERISTICAS = :GN_OUTRAS_CARACTERISTICAS,'
      '  VL_TOTAL_MERCADORIA = :VL_TOTAL_MERCADORIA,'
      '  ID_UNIDMEDI = :ID_UNIDMEDI,'
      '  NM_TIPO_MEDIDA = :NM_TIPO_MEDIDA,'
      '  QN_QUANTIDADE_CTE = :QN_QUANTIDADE_CTE'
      'WHERE'
      '  ID_PEDIVEND = :ID_PEDIVEND')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  ID_PEDIVEND,'
      '  ID_PRODUTO_PREDOMINANTE,'
      '  GN_OUTRAS_CARACTERISTICAS,'
      '  VL_TOTAL_MERCADORIA,'
      '  ID_UNIDMEDI,'
      '  NM_TIPO_MEDIDA,'
      '  QN_QUANTIDADE_CTE'
      '  '
      'FROM'
      '  PEDIDO_VENDA'
      '  '
      'WHERE'
      '  ID_PEDIVEND = :ID_PEDIVEND')
    CachedUpdates = True
    Left = 30
    Top = 242
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PEDIVEND'
        Value = nil
      end>
    object QryPedidoVendaID_PEDIVEND: TFloatField
      FieldName = 'ID_PEDIVEND'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPedidoVendaID_PRODUTO_PREDOMINANTE: TFloatField
      FieldName = 'ID_PRODUTO_PREDOMINANTE'
    end
    object QryPedidoVendaGN_OUTRAS_CARACTERISTICAS: TStringField
      FieldName = 'GN_OUTRAS_CARACTERISTICAS'
      Size = 50
    end
    object QryPedidoVendaVL_TOTAL_MERCADORIA: TFloatField
      FieldName = 'VL_TOTAL_MERCADORIA'
    end
    object QryPedidoVendaID_UNIDMEDI: TFloatField
      FieldName = 'ID_UNIDMEDI'
    end
    object QryPedidoVendaNM_TIPO_MEDIDA: TStringField
      FieldName = 'NM_TIPO_MEDIDA'
    end
    object QryPedidoVendaQN_QUANTIDADE_CTE: TFloatField
      FieldName = 'QN_QUANTIDADE_CTE'
    end
  end
  object DsPedidoVenda: TOraDataSource
    AutoEdit = False
    DataSet = QryPedidoVenda
    Left = 25
    Top = 285
  end
  object QryMaterialEmbalagem: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  ID_MATEEMBA,'
      '  ID_PRODMATEEMBA,'
      '  NM_PRODMATEEMBA'
      '  '
      'FROM'
      '  MATERIAL_EMBALAGEM'
      '  '
      'WHERE'
      '  NVL(FL_ATIVMATEEMBA, '#39'N'#39') = '#39'S'#39
      ''
      'ORDER BY'
      '  NM_PRODMATEEMBA')
    Left = 130
    Top = 242
    object QryMaterialEmbalagemID_MATEEMBA: TFloatField
      FieldName = 'ID_MATEEMBA'
      Required = True
    end
    object QryMaterialEmbalagemNM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
    object QryMaterialEmbalagemID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
  end
  object DsMaterialEmbalagem: TOraDataSource
    DataSet = QryMaterialEmbalagem
    Left = 130
    Top = 285
  end
  object QryUnidadeMedida: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  ID_UNIDMEDI,'
      '  SG_UNIDMEDI,'
      '  NM_UNIDMEDI'
      '  '
      'FROM'
      '  UNIDADE_MEDIDA')
    Left = 235
    Top = 242
    object QryUnidadeMedidaID_UNIDMEDI: TFloatField
      FieldName = 'ID_UNIDMEDI'
      Required = True
    end
    object QryUnidadeMedidaSG_UNIDMEDI: TStringField
      FieldName = 'SG_UNIDMEDI'
      Required = True
      Size = 3
    end
    object QryUnidadeMedidaNM_UNIDMEDI: TStringField
      FieldName = 'NM_UNIDMEDI'
      Required = True
      Size = 40
    end
  end
  object DsUnidadeMedida: TOraDataSource
    DataSet = QryUnidadeMedida
    Left = 234
    Top = 285
  end
  object QryCTECompServ: TOraQuery
    KeyFields = 'ID_CTECOMPSERV'
    KeySequence = 'PEREI_DRAG_AZUL.SEQ_CTE_COMPONENTES_SERVICO'
    SQLInsert.Strings = (
      
        'INSERT INTO CTE_COMPONENTES_SERVICO (ID_CTECOMPSERV, ID_PEDIVEND' +
        ', NM_NOME, VL_VALOR)'
      
        'VALUES (SEQ_CTE_COMPONENTES_SERVICO.NEXTVAL, :ID_PEDIVEND, :NM_N' +
        'OME, :VL_VALOR)')
    SQLDelete.Strings = (
      
        'DELETE FROM CTE_COMPONENTES_SERVICO WHERE ID_CTECOMPSERV = :ID_C' +
        'TECOMPSERV')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  ID_CTECOMPSERV,'
      '  ID_PEDIVEND,'
      '  NM_NOME,'
      '  VL_VALOR'
      ''
      'FROM'
      '  CTE_COMPONENTES_SERVICO'
      '  '
      'WHERE'
      '  ID_PEDIVEND = :ID_PEDIVEND')
    CachedUpdates = True
    Left = 329
    Top = 242
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PEDIVEND'
        Value = nil
      end>
    object QryCTECompServID_CTECOMPSERV: TFloatField
      FieldName = 'ID_CTECOMPSERV'
    end
    object QryCTECompServID_PEDIVEND: TFloatField
      FieldName = 'ID_PEDIVEND'
    end
    object QryCTECompServNM_NOME: TStringField
      FieldName = 'NM_NOME'
      Size = 50
    end
    object QryCTECompServVL_VALOR: TFloatField
      FieldName = 'VL_VALOR'
    end
  end
  object DsCTECompServ: TOraDataSource
    DataSet = QryCTECompServ
    Left = 330
    Top = 285
  end
end
