inherited frmLanctoDiariaMotorista: TfrmLanctoDiariaMotorista
  Width = 598
  Height = 518
  Caption = 'Comercial Dacar - Lancto Di'#225'ria Motorista'
  FormStyle = fsMDIChild
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16

  inherited pnlBotoes: TPanel
    Width = 598
    inherited btnPrimeiro: TSpeedButton
      OnClick = btnPrimeiroClick
    end
    inherited btnAnterior: TSpeedButton
      OnClick = btnAnteriorClick
    end
    inherited btnProximo: TSpeedButton
      OnClick = btnProximoClick
    end
    inherited btnUltimo: TSpeedButton
      OnClick = btnUltimoClick
    end
    inherited btnIncluir: TSpeedButton
      OnClick = btnIncluirClick
    end
    inherited btnExcluir: TSpeedButton
      OnClick = btnExcluirClick
    end
    inherited btnEditar: TSpeedButton
      OnClick = btnEditarClick
    end
    inherited btnConfirmar: TSpeedButton
      OnClick = btnConfirmarClick
    end
    inherited btnCancelar: TSpeedButton
      OnClick = btnCancelarClick
    end
    inherited btnPesquisar: TSpeedButton
      OnClick = btnPesquisarClick
    end
  end
  inherited PageControl1: TPageControl
    Width = 598
    Height = 468
    ActivePage = tbsFiltro
    inherited tbsFiltro: TTabSheet
      inherited Panel1: TPanel
        Width = 590
        Caption = ''
        object edtVeiculo: TEdit
          Left = 10
          Top = 130
          Width = 101
          Height = 24
          TabOrder = 0
        end
        object edtMotoristaFiltro: TEdit
          Left = 120
          Top = 130
          Width = 90
          Height = 24
          TabOrder = 1
        end
        object lblVeiculo: TLabel
          Left = 10
          Top = 110
          Width = 33
          Height = 16
          Caption = 'Placa'
        end
        object lblMotoristaFiltro: TLabel
          Left = 120
          Top = 110
          Width = 117
          Height = 16
          Caption = 'Motorista / Ajudante'
        end
        object grpPeriodo: TGroupBox
          Left = 11
          Top = 10
          Width = 235
          Height = 75
          Caption = ' Per'#237'odo '
          TabOrder = 4
          object lblDataInicial: TLabel
            Left = 10
            Top = 20
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Data Inicial'
          end
          object edtDataInicial: TEdit
            Left = 10
            Top = 40
            Width = 80
            Height = 24
            AutoSize = False
            TabOrder = 1
          end
          object lblDataFinal: TLabel
            Left = 120
            Top = 20
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Data Final'
          end
          object edtDataFinal: TEdit
            Left = 120
            Top = 40
            Width = 80
            Height = 24
            AutoSize = False
            TabOrder = 3
          end
          object btnPesqDtInicial: TBitBtn
            Left = 89
            Top = 42
            Width = 21
            Height = 19
            TabOrder = 4
            OnClick = btnPesqDtInicialClick
            Glyph.Data = {
              EA000000424DE6000000000000007600000028000000100000000E0000000100
              04000000000070000000120B0000120B00001000000010000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333033333333333333000333333333333000333333333333100
              3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
              3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
              33333333333333333333}
          end
          object btnPesqDtFinal: TBitBtn
            Left = 200
            Top = 41
            Width = 21
            Height = 19
            TabOrder = 5
            OnClick = btnPesqDtFinalClick
            Glyph.Data = {
              EA000000424DE6000000000000007600000028000000100000000E0000000100
              04000000000070000000120B0000120B00001000000010000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333033333333333333000333333333333000333333333333100
              3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
              3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
              33333333333333333333}
          end
        end
        object grpOpcoes: TGroupBox
          Left = 460
          Top = 10
          Width = 110
          Height = 105
          Caption = ' Op'#231#245'es '
          TabOrder = 5
          object CheckBox1: TCheckBox
            Left = 10
            Top = 70
            Width = 90
            Height = 31
            Caption = 'Ped'#225'gios'
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
          object CheckBox2: TCheckBox
            Left = 10
            Top = 45
            Width = 90
            Height = 31
            Caption = 'Di'#225'rias'
            Checked = True
            State = cbChecked
            TabOrder = 1
          end
          object CheckBox3: TCheckBox
            Left = 10
            Top = 20
            Width = 90
            Height = 31
            Caption = 'Vales'
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
        end
        object grpDiaria: TGroupBox
          Left = 260
          Top = 10
          Width = 190
          Height = 75
          Caption = ' Di'#225'rias '
          TabOrder = 6
          object lblDiariaInicial: TLabel
            Left = 10
            Top = 20
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Di'#225'ria Inicial'
          end
          object edtDiariaInicial: TEdit
            Left = 10
            Top = 40
            Width = 80
            Height = 24
            AutoSize = False
            TabOrder = 1
          end
          object lblDiariaFinal: TLabel
            Left = 100
            Top = 20
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Di'#225'ria Final'
          end
          object edtDiariaFinal: TEdit
            Left = 100
            Top = 40
            Width = 80
            Height = 24
            AutoSize = False
            TabOrder = 3
          end
        end
        object edtNomeMotoristaFiltro: TEdit
          Left = 213
          Top = 130
          Width = 355
          Height = 24
          TabOrder = 7
        end
        object btnVeiculo: TBitBtn
          Left = 90
          Top = 132
          Width = 19
          Height = 19
          TabOrder = 8
          OnClick = btnVeiculoClick
          Glyph.Data = {
            EA000000424DE6000000000000007600000028000000100000000E0000000100
            04000000000070000000120B0000120B00001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333033333333333333000333333333333000333333333333100
            3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
            3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
            33333333333333333333}
        end
        object BPESQ: TBitBtn
          Left = 186
          Top = 132
          Width = 23
          Height = 21
          TabOrder = 9
          Glyph.Data = {
            EA000000424DE6000000000000007600000028000000100000000E0000000100
            04000000000070000000120B0000120B00001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333033333333333333000333333333333000333333333333100
            3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
            3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
            33333333333333333333}
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 590
        Height = 261
      end
    end
    inherited tbsDados: TTabSheet
      object edtCodDiaria: TDBEdit
        Left = 10
        Top = 30
        Width = 100
        Height = 23
        DataField = 'CO_DIARIA'
        DataSource = dtsControleDiarias
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtDtLancto: TDBEdit
        Left = 120
        Top = 30
        Width = 100
        Height = 23
        DataField = 'DT_LANCTO'
        DataSource = dtsControleDiarias
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtUsuario: TDBEdit
        Left = 230
        Top = 30
        Width = 130
        Height = 24
        AutoSize = False
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edtValorDiaria: TDBEdit
        Left = 370
        Top = 30
        Width = 100
        Height = 24
        AutoSize = False
        DataSource = dtsControleDiarias
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
        TabOrder = 3
      end
      object edtMotorista: TDBEdit
        Left = 120
        Top = 150
        Width = 100
        Height = 23
        DataField = 'CO_MOTORISTA'
        DataSource = dtsControleDiarias
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
        TabOrder = 4
      end
      object edtPlaca: TDBEdit
        Left = 10
        Top = 150
        Width = 100
        Height = 23
        DataField = 'NO_PLACA'
        DataSource = dtsControleDiarias
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
        TabOrder = 5
      end
      object rgpMovto: TDBRadioGroup
        Left = 10
        Top = 65
        Width = 220
        Height = 54
        Caption = ' Movimento E/S '
        Columns = 2
        DataField = 'OP_MOVTO'
        DataSource = dtsControleDiarias
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Items.Strings = (
          'Entrada'
          'Sa'#237'da')
        ParentFont = False
        TabOrder = 6
        Values.Strings = (
          'E'
          'S')
      end
      object rgpTipoLancto: TDBRadioGroup
        Left = 250
        Top = 65
        Width = 220
        Height = 54
        Caption = ' Tipo Lancto  '
        Columns = 2
        DataField = 'OP_LANCTO'
        DataSource = dtsControleDiarias
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        Items.Strings = (
          'Di'#225'ria'
          'Vales')
        ParentFont = False
        TabOrder = 7
        Values.Strings = (
          'E'
          'S')
      end
      object lblCodDiaria: TLabel
        Left = 10
        Top = 10
        Width = 33
        Height = 16
        Caption = 'Di'#225'ria'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object lblDtLancto: TLabel
        Left = 120
        Top = 10
        Width = 70
        Height = 16
        Caption = 'Data Lancto'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object lblUsuario: TLabel
        Left = 230
        Top = 10
        Width = 130
        Height = 15
        AutoSize = False
        Caption = 'Usu'#225'rio'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object lblValorDiaria: TLabel
        Left = 370
        Top = 10
        Width = 100
        Height = 15
        AutoSize = False
        Caption = 'Valor Di'#225'ria'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object lblPlaca: TLabel
        Left = 10
        Top = 130
        Width = 33
        Height = 16
        Caption = 'Placa'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object lblMotorista: TLabel
        Left = 120
        Top = 130
        Width = 117
        Height = 16
        Caption = 'Motorista / Ajudante'
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object edtNomeMotorista: TEdit
        Left = 220
        Top = 150
        Width = 250
        Height = 23
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
        TabOrder = 14
      end
      object GroupBox1: TGroupBox
        Left = 10
        Top = 185
        Width = 460
        Height = 190
        Caption = ' Observa'#231#227'o '
        TabOrder = 15
        object memObservacao: TDBMemo
          Left = 12
          Top = 22
          Width = 437
          Height = 158
          DataField = 'NO_OBSERVACAO'
          DataSource = dtsControleDiarias
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []

          ParentFont = False
          TabOrder = 0
        end
      end
      object btnPlaca: TBitBtn
        Left = 91
        Top = 152
        Width = 19
        Height = 19
        TabOrder = 16
        OnClick = btnPlacaClick
        Glyph.Data = {
          EA000000424DE6000000000000007600000028000000100000000E0000000100
          04000000000070000000120B0000120B00001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333033333333333333000333333333333000333333333333100
          3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
          3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
          33333333333333333333}
      end
    end
  end
  object qryControleDiarias: TOraQuery
    KeyFields = 'CO_DIARIA'
    KeySequence = 'SMART.CO_DIARIA_CONTROLE_DIARIA'
    SQLInsert.Strings = (
      'INSERT INTO DACAR_CONTROLE_DIARIA'
      
        '(EMPRESA, FILIAL, CO_DIARIA, DT_LANCTO, CO_USUARIO, OP_MOVTO, OP' +
        '_LANCTO, NO_PLACA, CO_MOTORISTA, NO_OBSERVACAO, VL_DIARIA)'
      'VALUES'
      
        '(:EMPRESA, :FILIAL, :CO_DIARIA, :DT_LANCTO, :CO_USUARIO, :OP_MOV' +
        'TO, :OP_LANCTO, :NO_PLACA, :CO_MOTORISTA, :NO_OBSERVACAO, :VL_DI' +
        'ARIA)')
    SQLDelete.Strings = (
      'DELETE FROM DACAR_CONTROLE_DIARIA'
      'WHERE CO_DIARIA= :CO_DIARIA')
    SQLUpdate.Strings = (
      'UPDATE DACAR_CONTROLE_DIARIA'
      'SET'
      '    EMPRESA         :EMPRESA,'
      '    FILIAL          :FILIAL,'
      '    CO_DIARIA       :CO_DIARIA,'
      '    DT_LANCTO       :DT_LANCTO,'
      '    CO_USUARIO      :CO_USUARIO,'
      '    OP_MOVTO        :OP_MOVTO,'
      '    OP_LANCTO       :OP_LANCTO,'
      '    NO_PLACA        :NO_PLACA,'
      '    CO_MOTORISTA    :CO_MOTORISTA,'
      '    NO_OBSERVACAO   :NO_OBSERVACAO,'
      '    VL_DIARIA       :VL_DIARIA'
      'WHERE'
      '  CO_DIARIA= :OLD_CO_DIARIA')
    SQLLock.Strings = (
      'SELECT * FROM DACAR_CONTROLE_DIARIA'
      'WHERE'
      '  CO_DIARIA= :CO_DIARIA'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  DACAR_CONTROLE_DIARIA.CO_DIARIA= :CO_DIARIA')
    LocalUpdate = True
    SQL.Strings = (
      'SELECT'
      '    CO_DIARIA,'
      '    DT_LANCTO,'
      '    EMPRESA,'
      '    FILIAL,'
      '    CO_USUARIO,'
      '    OP_MOVTO,'
      '    OP_LANCTO,'
      '    NO_PLACA,'
      '    CO_MOTORISTA,'
      '    NO_OBSERVACAO,'
      '    VL_DIARIA'
      'FROM'
      '    DACAR_CONTROLE_DIARIA'
      'WHERE'
      '    CO_DIARIA= :CO_DIARIA')
    FetchAll = True
    CachedUpdates = True
    Left = 13
    Top = 467
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CO_DIARIA'
      end>
    object qryControleDiariasCO_DIARIA: TFloatField
      FieldName = 'CO_DIARIA'
      Required = True
    end
    object qryControleDiariasDT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
    end
    object qryControleDiariasEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 2
    end
    object qryControleDiariasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object qryControleDiariasCO_USUARIO: TIntegerField
      FieldName = 'CO_USUARIO'
    end
    object qryControleDiariasOP_MOVTO: TStringField
      FieldName = 'OP_MOVTO'
      Size = 1
    end
    object qryControleDiariasOP_LANCTO: TStringField
      FieldName = 'OP_LANCTO'
      Size = 1
    end
    object qryControleDiariasNO_PLACA: TStringField
      FieldName = 'NO_PLACA'
    end
    object qryControleDiariasCO_MOTORISTA: TIntegerField
      FieldName = 'CO_MOTORISTA'
    end
    object qryControleDiariasNO_OBSERVACAO: TStringField
      FieldName = 'NO_OBSERVACAO'
      Size = 500
    end
    object qryControleDiariasVL_DIARIA: TFloatField
      FieldName = 'VL_DIARIA'
    end
  end
  object dtsControleDiarias: TOraDataSource
    DataSet = qryControleDiarias
    Left = 40
    Top = 467
  end
  object qryTemp: TOraQuery
    Session = FrmPrincipal.DB
    Left = 78
    Top = 466
  end
  object qryUsuario: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT NOME_USUARIO FROM SCT_USUARIO '
      'WHERE ID_USUARIO = :ID_USUARIO')
    Left = 118
    Top = 469
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_USUARIO'
      end>
  end
  object dtsUsuario: TOraDataSource
    DataSet = qryUsuario
    Left = 142
    Top = 469
  end
end
