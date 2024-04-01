object FrmParametrosIntegrado: TFrmParametrosIntegrado
  Left = 355
  Top = 23
  Width = 888
  Height = 575
  VertScrollBar.Range = 345
  ActiveControl = dbg_Drogas
  Caption = 'Par'#226'metros do Sistema de Integrados'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 876
    Height = 123
    Align = alTop
    Caption = 'Drogas - Boletim Sanit'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 872
    object Nav_Drogas: TDBNavigator
      Left = 2
      Top = 17
      Width = 872
      Height = 27
      DataSource = Ds_Drogas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 868
    end
    object dbg_Drogas: TDBGrid
      Left = 2
      Top = 44
      Width = 872
      Height = 77
      Align = alClient
      DataSource = Ds_Drogas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = 16
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_DROGA'
          Title.Caption = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_DROGA'
          Title.Caption = 'Nome Droga'
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 123
    Width = 876
    Height = 222
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 872
    object GroupBox2: TGroupBox
      Left = 422
      Top = 1
      Width = 453
      Height = 220
      Align = alClient
      Caption = 'Consumo de Ra'#231#227'o Semanal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 449
      object Nav_RacaoSem: TDBNavigator
        Left = 2
        Top = 17
        Width = 449
        Height = 27
        DataSource = Ds_RacaoSem
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 445
      end
      object Dbg_RacaoSem: TDBGrid
        Left = 2
        Top = 44
        Width = 449
        Height = 174
        Align = alClient
        DataSource = Ds_RacaoSem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = 16
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'Cod'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEMANA'
            Title.Caption = 'Semana'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAL_CONSUMO'
            Title.Caption = 'Consumo p/ Ave'
            Visible = True
          end>
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 421
      Height = 220
      Align = alLeft
      Caption = 'Consumo de Ra'#231#227'o por Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Nav_RacaoTipo: TDBNavigator
        Left = 2
        Top = 17
        Width = 417
        Height = 27
        DataSource = Ds_RacaoTipo
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
        Align = alTop
        TabOrder = 0
      end
      object Dbg_RacaoTipo: TDBGrid
        Left = 2
        Top = 44
        Width = 417
        Height = 174
        Align = alClient
        DataSource = Ds_RacaoTipo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = 16
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TIPO_RACAO'
            Title.Caption = 'Cod Ra'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nm_Racao'
            ReadOnly = True
            Title.Caption = 'Ra'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAL_CONSUMO'
            Title.Caption = 'Consumo p/ Ave'
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 345
    Width = 876
    Height = 192
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 872
    ExplicitHeight = 191
    object GroupBox4: TGroupBox
      Left = 527
      Top = 1
      Width = 348
      Height = 190
      Align = alClient
      Caption = 'Pagamento por Fator'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 344
      ExplicitHeight = 189
      object DBNavigator1: TDBNavigator
        Left = 2
        Top = 17
        Width = 344
        Height = 27
        DataSource = Ds_FatorPagto
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 340
      end
      object Dbg_FatorPagto: TDBGrid
        Left = 2
        Top = 44
        Width = 344
        Height = 144
        Align = alClient
        DataSource = Ds_FatorPagto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = 16
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'EMPRESA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FILIAL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IEP_INICIO'
            Title.Caption = 'IEP Inicio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IEP_FIM'
            Title.Caption = 'IEP Fim'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_MACHO'
            Title.Caption = 'Vl Macho'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_FEMEA'
            Title.Caption = 'Vll Femea'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_MISTO'
            Title.Caption = 'Vl Misto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_GERAL'
            Title.Caption = 'Vl Geral'
            Visible = True
          end>
      end
    end
    object GroupBox5: TGroupBox
      Left = 1
      Top = 1
      Width = 526
      Height = 190
      Align = alLeft
      Caption = 'Bonus Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitHeight = 189
      object Nav_Bonus: TDBNavigator
        Left = 2
        Top = 17
        Width = 522
        Height = 27
        DataSource = Ds_Bonus
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
        Align = alTop
        TabOrder = 0
      end
      object Dbg_Bonus: TDBGrid
        Left = 2
        Top = 44
        Width = 522
        Height = 144
        Align = alClient
        DataSource = Ds_Bonus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = 16
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_BONUS'
            Title.Caption = 'Id Bonus'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESC_BONUS'
            Title.Caption = 'Desc Bonus'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARAM_BONUS'
            Title.Caption = 'Param Bonus'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAL_BONUS'
            Title.Caption = 'Valor Bonus'
            Visible = True
          end>
      end
    end
  end
  object Qr_Drogas: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO BOLETIM_DROGAS'
      '  (ID_DROGA, NOME_DROGA)'
      'VALUES'
      '  (:ID_DROGA, :NOME_DROGA)')
    SQLDelete.Strings = (
      'DELETE FROM BOLETIM_DROGAS'
      'WHERE'
      '  ID_DROGA = :ID_DROGA')
    SQLUpdate.Strings = (
      'UPDATE BOLETIM_DROGAS'
      'SET'
      '  ID_DROGA = :ID_DROGA,'
      '  NOME_DROGA = :NOME_DROGA'
      'WHERE'
      '  ID_DROGA = :OLD_ID_DROGA')
    SQLLock.Strings = (
      'SELECT * FROM BOLETIM_DROGAS'
      'WHERE'
      '  ID_DROGA = :ID_DROGA'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_DROGA = :ID_DROGA')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT * '
      '  FROM BOLETIM_DROGAS')
    FetchAll = True
    IndexFieldNames = 'ID_DROGA'
    Left = 16
    Top = 56
    object Qr_DrogasID_DROGA: TFloatField
      FieldName = 'ID_DROGA'
      Required = True
    end
    object Qr_DrogasNOME_DROGA: TStringField
      FieldName = 'NOME_DROGA'
      Required = True
      Size = 50
    end
  end
  object Ds_Drogas: TOraDataSource
    DataSet = Qr_Drogas
    Left = 48
    Top = 57
  end
  object Qr_RacaoTipo: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CONSUMO_RACAO_TIPO'
      '  (TIPO_RACAO, VAL_CONSUMO)'
      'VALUES'
      '  (:TIPO_RACAO, :VAL_CONSUMO)')
    SQLDelete.Strings = (
      'DELETE FROM CONSUMO_RACAO_TIPO'
      'WHERE'
      '  ROWID = :OLD_ROWID')
    SQLUpdate.Strings = (
      'UPDATE CONSUMO_RACAO_TIPO'
      'SET'
      '  TIPO_RACAO = :TIPO_RACAO,'
      '  VAL_CONSUMO = :VAL_CONSUMO'
      'WHERE'
      '  TIPO_RACAO = :OLD_TIPO_RACAO')
    SQLLock.Strings = (
      'SELECT * FROM CONSUMO_RACAO_TIPO'
      'WHERE'
      '  ROWID = :OLD_ROWID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ROWID = :OLD_ROWID')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT * '
      '  FROM CONSUMO_RACAO_TIPO')
    FetchAll = True
    Left = 16
    Top = 184
    object Qr_RacaoTipoTIPO_RACAO: TIntegerField
      FieldName = 'TIPO_RACAO'
      Required = True
    end
    object Qr_RacaoTipoVAL_CONSUMO: TFloatField
      FieldName = 'VAL_CONSUMO'
    end
    object Qr_RacaoTipoNm_Racao: TStringField
      FieldKind = fkLookup
      FieldName = 'Nm_Racao'
      LookupDataSet = Qr_Racao
      LookupKeyFields = 'ID_PRODMATEEMBA'
      LookupResultField = 'NM_PRODMATEEMBA'
      KeyFields = 'TIPO_RACAO'
      Lookup = True
    end
  end
  object Ds_RacaoTipo: TOraDataSource
    DataSet = Qr_RacaoTipo
    Left = 48
    Top = 185
  end
  object Qr_Racao: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT ID_PRODMATEEMBA , NM_PRODMATEEMBA '
      '  FROM MATERIAL_EMBALAGEM'
      'WHERE ID_PRODMATEEMBA in (7302, 7303, 7304, 7305, 7306 )')
    FetchAll = True
    Left = 16
    Top = 216
    object Qr_RacaoID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
    object Qr_RacaoNM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
  end
  object Ds_Racao: TOraDataSource
    DataSet = Qr_Racao
    Left = 48
    Top = 217
  end
  object Qr_RacaoSem: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CONSUMO_RACAO_SEMANA'
      '  (CODIGO, SEMANA, VAL_CONSUMO)'
      'VALUES'
      '  (:CODIGO, :SEMANA, :VAL_CONSUMO)')
    SQLDelete.Strings = (
      'DELETE FROM CONSUMO_RACAO_SEMANA'
      'WHERE'
      '  ROWID = :OLD_ROWID')
    SQLUpdate.Strings = (
      'UPDATE CONSUMO_RACAO_SEMANA'
      'SET'
      '  CODIGO = :CODIGO,'
      '  SEMANA = :SEMANA,'
      '  VAL_CONSUMO = :VAL_CONSUMO'
      'WHERE CODIGO = :OLD_ CODIGO'
      'AND SEMANA = :OLD_SEMANA')
    SQLLock.Strings = (
      'SELECT * FROM CONSUMO_RACAO_SEMANA'
      'WHERE'
      '  ROWID = :OLD_ROWID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ROWID = :OLD_ROWID')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT * '
      '  FROM CONSUMO_RACAO_SEMANA'
      'ORDER BY SEMANA ')
    FetchAll = True
    Left = 440
    Top = 184
    object Qr_RacaoSemCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 2
    end
    object Qr_RacaoSemSEMANA: TIntegerField
      FieldName = 'SEMANA'
      Required = True
    end
    object Qr_RacaoSemVAL_CONSUMO: TFloatField
      FieldName = 'VAL_CONSUMO'
    end
  end
  object Ds_RacaoSem: TOraDataSource
    DataSet = Qr_RacaoSem
    Left = 472
    Top = 185
  end
  object Qr_Bonus: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO BONUS_PAGAMENTO'
      '  (COD_BONUS, DESC_BONUS, PARAM_BONUS, VAL_BONUS)'
      'VALUES'
      '  (:COD_BONUS, :DESC_BONUS, :PARAM_BONUS, :VAL_BONUS)')
    SQLDelete.Strings = (
      'DELETE FROM BONUS_PAGAMENTO'
      'WHERE'
      '  COD_BONUS = :COD_BONUS')
    SQLUpdate.Strings = (
      'UPDATE BONUS_PAGAMENTO'
      'SET'
      '  COD_BONUS = :COD_BONUS,'
      '  DESC_BONUS = :DESC_BONUS,'
      '  PARAM_BONUS = :PARAM_BONUS,'
      '  VAL_BONUS = :VAL_BONUS'
      'WHERE'
      '  COD_BONUS = :OLD_COD_BONUS')
    SQLLock.Strings = (
      'SELECT * FROM BONUS_PAGAMENTO'
      'WHERE'
      '  COD_BONUS = :COD_BONUS'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  COD_BONUS = :COD_BONUS')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT * '
      '  FROM BONUS_PAGAMENTO')
    FetchAll = True
    Left = 16
    Top = 408
    object Qr_BonusCOD_BONUS: TIntegerField
      FieldName = 'COD_BONUS'
    end
    object Qr_BonusDESC_BONUS: TStringField
      FieldName = 'DESC_BONUS'
      Size = 50
    end
    object Qr_BonusPARAM_BONUS: TFloatField
      FieldName = 'PARAM_BONUS'
    end
    object Qr_BonusVAL_BONUS: TFloatField
      FieldName = 'VAL_BONUS'
    end
  end
  object Ds_Bonus: TOraDataSource
    DataSet = Qr_Bonus
    Left = 48
    Top = 409
  end
  object Qr_FatorPagto: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_PAGTO_FATOR'
      
        '  (EMPRESA, FILIAL, IEP_INICIO, IEP_FIM, VL_MACHO, VL_FEMEA, VL_' +
        'MISTO, VL_GERAL)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :IEP_INICIO, :IEP_FIM, :VL_MACHO, :VL_FEME' +
        'A, :VL_MISTO, :VL_GERAL)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_PAGTO_FATOR'
      'WHERE'
      'WHERE  EMPRESA = :OLD_EMPRESA'
      ' AND FILIAL = :OLD_FILIAL'
      ' AND IEP_INICIO = :OLD_IEP_INICIO'
      ' AND IEP_FIM = :OLD_IEP_FIM'
      '')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_PAGTO_FATOR'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  IEP_INICIO = :IEP_INICIO,'
      '  IEP_FIM = :IEP_FIM,'
      '  VL_MACHO = :VL_MACHO,'
      '  VL_FEMEA = :VL_FEMEA,'
      '  VL_MISTO = :VL_MISTO,'
      '  VL_GERAL = :VL_GERAL'
      'WHERE  EMPRESA = :OLD_EMPRESA'
      ' AND FILIAL = :OLD_FILIAL'
      ' AND IEP_INICIO = :OLD_IEP_INICIO'
      ' AND IEP_FIM = :OLD_IEP_FIM')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_PAGTO_FATOR'
      'WHERE'
      '  ROWID = :OLD_ROWID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ROWID = :OLD_ROWID')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT * '
      '  FROM INTEGRADO_PAGTO_FATOR'
      ' ORDER BY IEP_INICIO')
    FetchAll = True
    AfterInsert = Qr_FatorPagtoAfterInsert
    Left = 544
    Top = 400
    object Qr_FatorPagtoEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object Qr_FatorPagtoFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object Qr_FatorPagtoIEP_INICIO: TFloatField
      FieldName = 'IEP_INICIO'
    end
    object Qr_FatorPagtoIEP_FIM: TFloatField
      FieldName = 'IEP_FIM'
    end
    object Qr_FatorPagtoVL_MACHO: TFloatField
      FieldName = 'VL_MACHO'
    end
    object Qr_FatorPagtoVL_FEMEA: TFloatField
      FieldName = 'VL_FEMEA'
    end
    object Qr_FatorPagtoVL_MISTO: TFloatField
      FieldName = 'VL_MISTO'
    end
    object Qr_FatorPagtoVL_GERAL: TFloatField
      FieldName = 'VL_GERAL'
    end
  end
  object Ds_FatorPagto: TOraDataSource
    DataSet = Qr_FatorPagto
    Left = 576
    Top = 401
  end
end
