object FrmDesativaPesquisa: TFrmDesativaPesquisa
  Left = 420
  Top = 69
  Width = 769
  Height = 599
  HorzScrollBar.Range = 751
  VertScrollBar.Range = 95
  ActiveControl = BtFechar
  Caption = 'Habilitar ou Desabilitar Sintegra'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 753
    object Label1: TLabel
      Left = 21
      Top = 26
      Width = 173
      Height = 15
      Caption = 'C'#243'digos de Pesquisa &Sintegra:'
      FocusControl = DBGrid1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 519
      Top = 26
      Width = 117
      Height = 15
      Caption = 'C'#243'digos &Escolhidos::'
      FocusControl = lbxAnexo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtFechar: TBitBtn
      Left = 667
      Top = 8
      Width = 80
      Height = 25
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 16
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000120B0000120B00001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = Fecha_janela
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 506
    Width = 757
    Height = 55
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 505
    ExplicitWidth = 753
    object Label2: TLabel
      Left = 21
      Top = 14
      Width = 97
      Height = 15
      Caption = '&Localizar C'#243'digo:'
      FocusControl = edtCodigo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodigo: TEdit
      Left = 124
      Top = 8
      Width = 225
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyUp = edtCodigoKeyUp
    end
  end
  object Panel3: TPanel
    Left = 18
    Top = 40
    Width = 334
    Height = 466
    Align = alLeft
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    ExplicitHeight = 465
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 334
      Height = 466
      Align = alClient
      DataSource = DtsPesquisa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = 16
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnCellClick = Clicou_mouse_codigos
      OnKeyPress = Pressionou_enter_codigos
      Columns = <
        item
          Expanded = False
          FieldName = 'NM_TIPOPEDIVEND'
          Title.Caption = 'Tipo de Venda'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FL_CONSULTA_IE'
          Title.Caption = 'Consultar S/ N'
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 352
    Top = 40
    Width = 167
    Height = 466
    Align = alLeft
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    ExplicitHeight = 465
    object btnAnexarUm: TBitBtn
      Left = 8
      Top = 35
      Width = 150
      Height = 30
      Hint = 'utilizar um c'#243'digo'
      Caption = '&Anexar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 16
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      Layout = blGlyphRight
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnAnexarUmClick
    end
    object btnAnexarTodos: TBitBtn
      Left = 8
      Top = 89
      Width = 150
      Height = 30
      Hint = 'Utilizar todos c'#243'digos'
      Caption = 'Anexar &Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 16
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      Layout = blGlyphRight
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnAnexarTodosClick
    end
    object btnNEnviarEste: TBitBtn
      Left = 8
      Top = 167
      Width = 150
      Height = 30
      Hint = 'N'#227'o utilizar este codigo'
      Caption = '&N'#227'o Utilizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 16
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnNEnviarEsteClick
    end
    object btnNEnviarTodos: TBitBtn
      Left = 8
      Top = 219
      Width = 150
      Height = 30
      Hint = 'N'#227'o utilizar todos c'#243'digos'
      Caption = #209' &Utilizar Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 16
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnNEnviarTodosClick
    end
    object BtDesativaPesquisa: TBitBtn
      Left = 9
      Top = 419
      Width = 150
      Height = 30
      Hint = 'Desativa a verifica'#231#227'o do IE no Sintegra'
      Caption = '&Desativar Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = 16
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
        333333333F777773FF333333008888800333333377333F3773F3333077870787
        7033333733337F33373F3308888707888803337F33337F33337F330777880887
        7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
        7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
        0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
        03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
        033333337F73FF737F33B33B778000877333333373F777337333333B30888880
        33333333373FFFF73333333B3300000333333333337777733333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      OnClick = Desativa_Pesquisa
    end
    object BtAtivaPesquisa: TBitBtn
      Left = 11
      Top = 367
      Width = 150
      Height = 30
      Hint = 'Ativa a verifica'#231#227'o do IE no Sintegra'
      Caption = 'Ativar &Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = 16
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
        333333333F777773FF333333008888800333333377333F3773F3333077870787
        7033333733337F33373F3308888707888803337F33337F33337F330777880887
        7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
        7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
        00333337777777777733333308033308033333337F7F337F7F33333308033308
        033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
        7333333373F77733733333333088888033333333373FFFF73333333333000003
        3333333333777773333333333333333333333333333333333333}
      Layout = blGlyphRight
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 5
      OnClick = Ativa_pesquisa
    end
  end
  object Panel5: TPanel
    Left = 519
    Top = 40
    Width = 232
    Height = 466
    Align = alLeft
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    ExplicitHeight = 465
    object lbxAnexo: TListBox
      Left = 0
      Top = 0
      Width = 232
      Height = 466
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 0
      ExplicitHeight = 465
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 40
    Width = 18
    Height = 466
    Align = alLeft
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    ExplicitHeight = 465
  end
  object DtsPesquisa: TDataSource
    DataSet = QryPesquisa
    Left = 134
    Top = 142
  end
  object OraSQL: TOraSQL
    Session = FrmPrincipal.DB
    Left = 60
    Top = 140
  end
  object QryPesquisa: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'SELECT EMPRESA, FILIAL, NM_TIPOPEDIVEND, FL_CONSULTA_IE FROM PED' +
        'IDO_VENDA_TIPO ORDER BY NM_TIPOPEDIVEND')
    Left = 64
    Top = 202
    object QryPesquisaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object QryPesquisaFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object QryPesquisaNM_TIPOPEDIVEND: TStringField
      FieldName = 'NM_TIPOPEDIVEND'
      Required = True
      Size = 40
    end
    object QryPesquisaFL_CONSULTA_IE: TStringField
      FieldName = 'FL_CONSULTA_IE'
      Size = 1
    end
  end
  object LogSintegra: TOraQuery
    KeyFields = 'ID_LSTG'
    KeySequence = 'SMART.ID_LOG_SINTEGRA'
    SQLInsert.Strings = (
      'INSERT INTO LOG_SINTEGRA'
      
        '  (EMPRESA, FILIAL, ID_LSTG, ID_USUARIO, DT_ALTERACAO, HR_ALTERA' +
        'CAO, FL_ACAO, CD_TIPO)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LSTG, :ID_USUARIO, :DT_ALTERACAO, :HR_' +
        'ALTERACAO, :FL_ACAO, :CD_TIPO)')
    SQLDelete.Strings = (
      'DELETE FROM LOG_SINTEGRA'
      'WHERE'
      '  ID_LSTG = :ID_LSTG')
    SQLUpdate.Strings = (
      'UPDATE LOG_SINTEGRA'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  ID_LSTG = :ID_LSTG,'
      '  ID_USUARIO = :ID_USUARIO,'
      '  DT_ALTERACAO = :DT_ALTERACAO,'
      '  HR_ALTERACAO = :HR_ALTERACAO,'
      '  FL_ACAO = :FL_ACAO,'
      '  CD_TIPO = :CD_TIPO'
      'WHERE'
      '  ID_LSTG = :OLD_ID_LSTG')
    SQLLock.Strings = (
      'SELECT * FROM LOG_SINTEGRA'
      'WHERE'
      '  ID_LSTG = :ID_LSTG'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LSTG = :ID_LSTG')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT * FROM LOG_SINTEGRA')
    CachedUpdates = True
    Left = 66
    Top = 264
    object LogSintegraEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object LogSintegraFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object LogSintegraID_LSTG: TFloatField
      FieldName = 'ID_LSTG'
      Required = True
    end
    object LogSintegraID_USUARIO: TFloatField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object LogSintegraDT_ALTERACAO: TDateTimeField
      FieldName = 'DT_ALTERACAO'
    end
    object LogSintegraHR_ALTERACAO: TStringField
      FieldName = 'HR_ALTERACAO'
      Size = 5
    end
    object LogSintegraFL_ACAO: TStringField
      FieldName = 'FL_ACAO'
      Size = 1
    end
    object LogSintegraCD_TIPO: TStringField
      FieldName = 'CD_TIPO'
      Size = 40
    end
  end
  object qryTemp: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT SYSDATE FROM DUAL')
    Left = 65
    Top = 328
  end
end
