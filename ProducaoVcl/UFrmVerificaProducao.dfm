object Frm_DadosProducao: TFrm_DadosProducao
  Left = 481
  Top = 105
  Caption = 'Dados da Produ'#231#227'o'
  ClientHeight = 530
  ClientWidth = 919
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'helvetica'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 919
    Height = 97
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 915
    object Label1: TLabel
      Left = 13
      Top = 3
      Width = 22
      Height = 14
      Caption = 'Data'
    end
    object Label2: TLabel
      Left = 12
      Top = 40
      Width = 39
      Height = 14
      Caption = 'Balan'#231'a'
    end
    object Label4: TLabel
      Left = 224
      Top = 8
      Width = 53
      Height = 14
      Caption = 'SERVIDOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'helvetica'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 228
      Top = 31
      Width = 55
      Height = 14
      Caption = 'DB LOCAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'helvetica'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 233
      Top = 75
      Width = 46
      Height = 14
      Caption = 'ARQ IMP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'helvetica'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 256
      Top = 54
      Width = 23
      Height = 14
      Caption = 'ARQ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'helvetica'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edt_Data: TDateTimePicker
      Left = 8
      Top = 17
      Width = 97
      Height = 21
      Date = 42934.000000000000000000
      Time = 42934.000000000000000000
      TabOrder = 0
    end
    object Lkp_Balanca: TDBLookupComboBox
      Left = 8
      Top = 56
      Width = 185
      Height = 22
      KeyField = 'IPB_BALANCA'
      ListField = 'BALA'
      ListSource = Ds_Balanca
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 296
      Top = 8
      Width = 86
      Height = 22
      Color = clSilver
      DataField = 'CAIXAS'
      DataSource = Ds_ProdServerRes
      Enabled = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 296
      Top = 31
      Width = 86
      Height = 22
      Color = clSilver
      DataField = 'REGISTROS'
      DataSource = DS_ResProdLocal
      Enabled = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 296
      Top = 73
      Width = 86
      Height = 22
      Color = clSilver
      DataField = 'REGISTROS'
      DataSource = Ds_ResProducaoLog
      Enabled = False
      ReadOnly = True
      TabOrder = 4
    end
    object Edit1: TJvEdit
      Left = 296
      Top = 52
      Width = 86
      Height = 22
      DisabledColor = clSilver
      Alignment = taRightJustify
      Enabled = False
      ReadOnly = True
      TabOrder = 5
      Text = ''
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 97
    Width = 919
    Height = 433
    ActivePage = Tab_DBLocal
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 915
    ExplicitHeight = 432
    object Tab_Servidor: TTabSheet
      Caption = 'Servidor'
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 30
        Width = 911
        Height = 69
        Align = alTop
        DataSource = Ds_ProdServerRes
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'helvetica'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DDMMAA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BALANCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEQINI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEQFIM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAIXAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRIM_REGISTRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULT_REGISTRO'
            Visible = True
          end>
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 99
        Width = 911
        Height = 305
        Align = alClient
        DataSource = DS_ProducaoServer
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'helvetica'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FILIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_REGIPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_IDENREGIPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_MATERIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_EMBALAGEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_ALMOXARIFADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_MATEALMO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODMATEEMBA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_REGIPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_PADRREGIPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_BALAREGIPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_BALANCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QN_PESOPADRREGIPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QN_PESOLIQUREGIPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FL_STATREGIPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FX_REGIPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QN_TARAEMBAREGIPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_TRANREGIPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PEDIVEND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIGITOVER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOTEEXPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FL_TRANSFERE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_GRUPO'
            Visible = True
          end>
      end
      object Pnl_Servidor: TPanel
        Left = 0
        Top = 0
        Width = 911
        Height = 30
        Align = alTop
        TabOrder = 2
        object btn_RegistrosServ: TSpeedButton
          Left = 81
          Top = 5
          Width = 51
          Height = 22
          Caption = 'Registros'
          OnClick = btn_RegistrosServClick
        end
        object btn_Servidor: TButton
          Left = 4
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Servidor'
          TabOrder = 0
          OnClick = btn_ServidorClick
        end
      end
    end
    object Tab_DBLocal: TTabSheet
      Caption = 'DB Local'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 102
        Width = 911
        Height = 302
        Align = alClient
        DataSource = Ds_Producao
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'helvetica'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRC_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_IDENTIFICACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_DT_REGISTRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_DT_PADRAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_DT_BALANCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_BALANCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_PESO_PADRAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_PESO_LIQUIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_TARA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_INTEGRADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_DIGITO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_CODBARRAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_NUMBARRAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOTEEXPO'
            Visible = True
          end>
      end
      object pnl_TopoAba1: TPanel
        Left = 0
        Top = 31
        Width = 911
        Height = 71
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 907
        object DBGrid2: TDBGrid
          Left = 1
          Top = 1
          Width = 909
          Height = 69
          Align = alClient
          DataSource = DS_ResProdLocal
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'helvetica'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PRC_BALANCA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DIA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SEQUECIAL_I'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SEQUECIAL_F'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REGISTROS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_I'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_F'
              Visible = True
            end>
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 911
        Height = 31
        Align = alTop
        TabOrder = 2
        ExplicitWidth = 907
        object SpeedButton3: TSpeedButton
          Left = 88
          Top = 7
          Width = 51
          Height = 22
          Caption = 'Registros'
          OnClick = SpeedButton3Click
        end
        object btn_Pesquisar: TButton
          Left = 8
          Top = 4
          Width = 75
          Height = 25
          Caption = 'BD Local'
          TabOrder = 0
          OnClick = btn_PesquisarClick
        end
      end
    end
    object Tab_Log: TTabSheet
      Caption = 'Log'
      ImageIndex = 1
      object dbg_LogResumo: TDBGrid
        Left = 0
        Top = 59
        Width = 911
        Height = 79
        Align = alTop
        DataSource = Ds_ResProducaoLog
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'helvetica'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRC_BALANCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEQUECIAL_I'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEQUECIAL_F'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REGISTROS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_I'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_F'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_DTBAL'
            Width = 70
            Visible = True
          end>
      end
      object dbg_Log: TDBGrid
        Left = 0
        Top = 138
        Width = 911
        Height = 266
        Align = alClient
        DataSource = DS_OraProducao
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'helvetica'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRC_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_IDENTIFICACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_DT_REGISTRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_DT_PADRAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_DT_BALANCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_BALANCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_PESO_PADRAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_PESO_LIQUIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_TARA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_INTEGRADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_DIGITO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_CODBARRAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_NUMBARRAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOTEEXPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DB_KEY'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 911
        Height = 59
        Align = alTop
        TabOrder = 2
        object SpeedButton1: TSpeedButton
          Left = 146
          Top = 13
          Width = 25
          Height = 25
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FFFFFF404040
            30AFAF30AFAF30AFAF30AFAF30AFAF30AFAF30AFAF30AFAF30AFAF30AFAF30AF
            AF30AFAF30AFAF004040FFFFFF70707060DFDF60DFDF60DFDF60DFDF60DFDF60
            DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF002020FFFFFF70AFAF
            60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DF
            DF60DFDF80BFBF00000020202050CFCF60DFDF60DFDF60DFDF60DFDF60DFDF60
            DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF508F8F00202040404060DFDF
            60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DF
            DF60DFDF50505000404070707060DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60
            DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF40404000404070AFAF60DFDF
            60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DF
            DF50CFCF205F5F0040407FBFBFAFEFEFAFEFEFAFEFEFAFEFEFAFEFEFAFEFEFAF
            EFEFAFEFEFAFEFEFAFEFEFAFEFEFAFEFEF8F8F8F508F8F004040202020707070
            9FDFDF90CFCF90CFCF90CFCF90CFCF90CFCF90CFCF90CFCF90CFCF90CFCF90CF
            CF90CFCF60DFDF004040FFFFFF404040AFEFEF60DFDF60DFDF60DFDF60DFDF60
            DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF004040FFFFFF404040
            AFEFEF60DFDF60DFDF60DFDF60DFDF60DFDF60DFDF8FCFCFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBF000000FFFFFFFFFFFF7F7F7F6FEFEF60DFDF60DFDF60DFDF60
            DFDF80BFBF202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF202020FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = SpeedButton1Click
        end
        object Label3: TLabel
          Left = 11
          Top = 1
          Width = 74
          Height = 14
          Caption = 'Arquivo de Log'
        end
        object SpeedButton2: TSpeedButton
          Left = 354
          Top = 16
          Width = 51
          Height = 22
          Caption = 'Registros'
          OnClick = SpeedButton2Click
        end
        object lbl_Aguarde: TLabel
          Left = 40
          Top = 40
          Width = 57
          Height = 14
          Caption = 'Aguarde ... '
          Visible = False
        end
        object btn_ContaReg: TSpeedButton
          Left = 501
          Top = 16
          Width = 87
          Height = 22
          Caption = 'Conta Reg Arq'
          OnClick = btn_ContaRegClick
        end
        object Btn_AbreLog: TButton
          Left = 274
          Top = 14
          Width = 77
          Height = 25
          Caption = 'Consulta LOG'
          TabOrder = 0
          OnClick = Btn_AbreLogClick
        end
        object btn_RecuperaLog: TButton
          Left = 410
          Top = 14
          Width = 84
          Height = 25
          Caption = 'Recuperar LOG'
          TabOrder = 1
          OnClick = btn_RecuperaLogClick
        end
        object edt_arquivo: TEdit
          Left = 8
          Top = 16
          Width = 129
          Height = 22
          TabOrder = 2
        end
        object btn_Log: TButton
          Left = 178
          Top = 14
          Width = 91
          Height = 25
          Caption = 'Importar Arq LOG'
          TabOrder = 3
          OnClick = btn_LogClick
        end
        object ProgressBar1: TProgressBar
          Left = 112
          Top = 40
          Width = 217
          Height = 16
          Max = 4000
          Step = 1
          TabOrder = 4
          Visible = False
        end
      end
    end
  end
  object CnxFireBird: TSQLConnection
    ConnectionName = 'teste'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver280.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver280.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=localhost:C:\caasistemas\producao\BDPRODUCAO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Left = 10
    Top = 178
  end
  object qryProducao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'DT_INI'
        ParamType = ptInput
        Value = 42919d
      end
      item
        DataType = ftDateTime
        Name = 'DT_FIM'
        ParamType = ptInput
        Value = 42920d
      end
      item
        DataType = ftUnknown
        Name = 'PRC_BALANCA'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'Select * '
      '  From P_Producao'
      'Where PRC_DT_PADRAO >= :DT_INI'
      ' AND PRC_DT_PADRAO <= :DT_FIM'
      'AND   PRC_BALANCA = :PRC_BALANCA'
      'ORDER BY PRC_IDENTIFICACAO')
    SQLConnection = CnxFireBird
    Left = 54
    Top = 208
    object qryProducaoPRC_CODIGO: TFMTBCDField
      FieldName = 'PRC_CODIGO'
      Precision = 15
      Size = 0
    end
    object qryProducaoPRC_IDENTIFICACAO: TStringField
      FieldName = 'PRC_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 12
    end
    object qryProducaoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object qryProducaoPRC_DT_REGISTRO: TSQLTimeStampField
      FieldName = 'PRC_DT_REGISTRO'
    end
    object qryProducaoPRC_DT_PADRAO: TSQLTimeStampField
      FieldName = 'PRC_DT_PADRAO'
    end
    object qryProducaoPRC_DT_BALANCA: TSQLTimeStampField
      FieldName = 'PRC_DT_BALANCA'
    end
    object qryProducaoPRC_BALANCA: TIntegerField
      FieldName = 'PRC_BALANCA'
    end
    object qryProducaoPRC_PESO_PADRAO: TFMTBCDField
      FieldName = 'PRC_PESO_PADRAO'
      Precision = 15
      Size = 6
    end
    object qryProducaoPRC_PESO_LIQUIDO: TFMTBCDField
      FieldName = 'PRC_PESO_LIQUIDO'
      Precision = 15
      Size = 6
    end
    object qryProducaoPRC_TARA: TFMTBCDField
      FieldName = 'PRC_TARA'
      Precision = 15
      Size = 6
    end
    object qryProducaoPRC_INTEGRADO: TStringField
      FieldName = 'PRC_INTEGRADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 1
    end
    object qryProducaoPRC_DIGITO: TStringField
      FieldName = 'PRC_DIGITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object qryProducaoPRC_CODBARRAS: TStringField
      FieldName = 'PRC_CODBARRAS'
      Size = 34
    end
    object qryProducaoPRC_NUMBARRAS: TStringField
      FieldName = 'PRC_NUMBARRAS'
      Size = 40
    end
    object qryProducaoLOTEEXPO: TStringField
      FieldName = 'LOTEEXPO'
      Size = 15
    end
  end
  object cdsProducao: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PRC_CODIGO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 4
      end
      item
        Name = 'PRC_IDENTIFICACAO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'PRD_CODIGO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PRC_DT_REGISTRO'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRC_DT_PADRAO'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRC_DT_BALANCA'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRC_BALANCA'
        DataType = ftInteger
      end
      item
        Name = 'PRC_PESO_PADRAO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 6
      end
      item
        Name = 'PRC_PESO_LIQUIDO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 6
      end
      item
        Name = 'PRC_TARA'
        DataType = ftFMTBcd
        Precision = 15
        Size = 6
      end
      item
        Name = 'PRC_INTEGRADO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PRC_DIGITO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PRC_CODBARRAS'
        DataType = ftString
        Size = 34
      end
      item
        Name = 'PRC_NUMBARRAS'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'LOTEEXPO'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspProducao'
    StoreDefs = True
    Left = 118
    Top = 210
    object cdsProducaoPRC_CODIGO: TFMTBCDField
      FieldName = 'PRC_CODIGO'
      Precision = 15
      Size = 0
    end
    object cdsProducaoPRC_IDENTIFICACAO: TStringField
      FieldName = 'PRC_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 12
    end
    object cdsProducaoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object cdsProducaoPRC_DT_REGISTRO: TSQLTimeStampField
      FieldName = 'PRC_DT_REGISTRO'
    end
    object cdsProducaoPRC_DT_PADRAO: TSQLTimeStampField
      FieldName = 'PRC_DT_PADRAO'
    end
    object cdsProducaoPRC_DT_BALANCA: TSQLTimeStampField
      FieldName = 'PRC_DT_BALANCA'
    end
    object cdsProducaoPRC_BALANCA: TIntegerField
      FieldName = 'PRC_BALANCA'
    end
    object cdsProducaoPRC_PESO_PADRAO: TFMTBCDField
      FieldName = 'PRC_PESO_PADRAO'
      Precision = 15
      Size = 6
    end
    object cdsProducaoPRC_PESO_LIQUIDO: TFMTBCDField
      FieldName = 'PRC_PESO_LIQUIDO'
      Precision = 15
      Size = 6
    end
    object cdsProducaoPRC_TARA: TFMTBCDField
      FieldName = 'PRC_TARA'
      Precision = 15
      Size = 6
    end
    object cdsProducaoPRC_INTEGRADO: TStringField
      FieldName = 'PRC_INTEGRADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 1
    end
    object cdsProducaoPRC_DIGITO: TStringField
      FieldName = 'PRC_DIGITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object cdsProducaoPRC_CODBARRAS: TStringField
      FieldName = 'PRC_CODBARRAS'
      Size = 34
    end
    object cdsProducaoPRC_NUMBARRAS: TStringField
      FieldName = 'PRC_NUMBARRAS'
      Size = 40
    end
    object cdsProducaoLOTEEXPO: TStringField
      FieldName = 'LOTEEXPO'
      Size = 15
    end
  end
  object dspProducao: TDataSetProvider
    DataSet = qryProducao
    Left = 86
    Top = 209
  end
  object Ds_Producao: TDataSource
    DataSet = cdsProducao
    Left = 151
    Top = 211
  end
  object Qr_ResProdLocal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'DT_INI'
        ParamType = ptInput
        Value = '03/07/2017'
      end
      item
        DataType = ftTimeStamp
        Name = 'DT_FIM'
        ParamType = ptInput
        Value = '04/07/2017'
      end
      item
        DataType = ftUnknown
        Name = 'PRC_BALANCA'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'Select  PRC_BALANCA, '
      '        substring(PRC_IDENTIFICACAO from 1 for 6) as DIA,'
      
        '        MIN(substring(PRC_IDENTIFICACAO from 9 for 4)) as SEQUEC' +
        'IAL_I,'
      
        '        MAX(substring(PRC_IDENTIFICACAO from 9 for 4)) as SEQUEC' +
        'IAL_F,        '
      '        COUNT(*) Registros,'
      '        MIN(PRC_DT_PADRAO) DATA_I,'
      '        MAX(PRC_DT_PADRAO) DATA_F'
      '  From P_Producao'
      'Where PRC_DT_PADRAO >= :DT_INI'
      ' AND PRC_DT_PADRAO <= :DT_FIM'
      'AND   PRC_BALANCA = :PRC_BALANCA'
      'GROUP BY PRC_BALANCA, '
      '          substring(PRC_IDENTIFICACAO from 1 for 6) ')
    SQLConnection = CnxFireBird
    Left = 54
    Top = 238
    object Qr_ResProdLocalPRC_BALANCA: TIntegerField
      FieldName = 'PRC_BALANCA'
    end
    object Qr_ResProdLocalDIA: TStringField
      FieldName = 'DIA'
      ReadOnly = True
      Size = 12
    end
    object Qr_ResProdLocalSEQUECIAL_I: TStringField
      FieldName = 'SEQUECIAL_I'
      ReadOnly = True
      Size = 12
    end
    object Qr_ResProdLocalSEQUECIAL_F: TStringField
      FieldName = 'SEQUECIAL_F'
      ReadOnly = True
      Size = 12
    end
    object Qr_ResProdLocalREGISTROS: TIntegerField
      FieldName = 'REGISTROS'
      ReadOnly = True
      Required = True
    end
    object Qr_ResProdLocalDATA_I: TSQLTimeStampField
      FieldName = 'DATA_I'
      ReadOnly = True
    end
    object Qr_ResProdLocalDATA_F: TSQLTimeStampField
      FieldName = 'DATA_F'
      ReadOnly = True
    end
  end
  object DS_ResProdLocal: TDataSource
    DataSet = Cds_ResProdLocal
    Left = 152
    Top = 241
  end
  object dsp_ResProdLocal: TDataSetProvider
    DataSet = Qr_ResProdLocal
    Left = 86
    Top = 241
  end
  object Cds_ResProdLocal: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PRC_BALANCA'
        DataType = ftInteger
      end
      item
        Name = 'DIA'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'SEQUECIAL_I'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'SEQUECIAL_F'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'REGISTROS'
        Attributes = [faReadonly, faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DATA_I'
        Attributes = [faReadonly]
        DataType = ftTimeStamp
      end
      item
        Name = 'DATA_F'
        Attributes = [faReadonly]
        DataType = ftTimeStamp
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dsp_ResProdLocal'
    StoreDefs = True
    Left = 118
    Top = 242
    object Cds_ResProdLocalPRC_BALANCA: TIntegerField
      FieldName = 'PRC_BALANCA'
    end
    object Cds_ResProdLocalDIA: TStringField
      FieldName = 'DIA'
      ReadOnly = True
      Size = 12
    end
    object Cds_ResProdLocalSEQUECIAL_I: TStringField
      FieldName = 'SEQUECIAL_I'
      ReadOnly = True
      Size = 12
    end
    object Cds_ResProdLocalSEQUECIAL_F: TStringField
      FieldName = 'SEQUECIAL_F'
      ReadOnly = True
      Size = 12
    end
    object Cds_ResProdLocalREGISTROS: TIntegerField
      FieldName = 'REGISTROS'
      ReadOnly = True
      Required = True
    end
    object Cds_ResProdLocalDATA_I: TSQLTimeStampField
      FieldName = 'DATA_I'
      ReadOnly = True
    end
    object Cds_ResProdLocalDATA_F: TSQLTimeStampField
      FieldName = 'DATA_F'
      ReadOnly = True
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    InitialDir = 'C:\caasistemas\Recupera'
    Left = 696
    Top = 24
  end
  object CnxOracle: TOraSession
    Options.Direct = True
    Username = 'smart'
    Server = '192.168.0.250:1521:orcl'
    LoginPrompt = False
    Left = 50
    Top = 178
    EncryptedPassword = '8FFF86FF87FF96FF8CFF'
  end
  object qryOraProducao: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO P_PRODUCAO'
      
        '  (PRC_CODIGO, PRC_IDENTIFICACAO, PRD_CODIGO, PRC_DT_REGISTRO, P' +
        'RC_DT_PADRAO, PRC_DT_BALANCA, PRC_BALANCA, PRC_PESO_PADRAO, PRC_' +
        'PESO_LIQUIDO, PRC_TARA, PRC_INTEGRADO, PRC_DIGITO, PRC_CODBARRAS' +
        ', PRC_NUMBARRAS, LOTEEXPO, DB_KEY)'
      'VALUES'
      
        '  (:PRC_CODIGO, :PRC_IDENTIFICACAO, :PRD_CODIGO, :PRC_DT_REGISTR' +
        'O, :PRC_DT_PADRAO, :PRC_DT_BALANCA, :PRC_BALANCA, :PRC_PESO_PADR' +
        'AO, :PRC_PESO_LIQUIDO, :PRC_TARA, :PRC_INTEGRADO, :PRC_DIGITO, :' +
        'PRC_CODBARRAS, :PRC_NUMBARRAS, :LOTEEXPO, :DB_KEY)')
    SQLDelete.Strings = (
      'DELETE FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    SQLUpdate.Strings = (
      'UPDATE P_PRODUCAO'
      'SET'
      '  PRC_CODIGO = :PRC_CODIGO,'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO,'
      '  PRD_CODIGO = :PRD_CODIGO,'
      '  PRC_DT_REGISTRO = :PRC_DT_REGISTRO,'
      '  PRC_DT_PADRAO = :PRC_DT_PADRAO,'
      '  PRC_DT_BALANCA = :PRC_DT_BALANCA,'
      '  PRC_BALANCA = :PRC_BALANCA,'
      '  PRC_PESO_PADRAO = :PRC_PESO_PADRAO,'
      '  PRC_PESO_LIQUIDO = :PRC_PESO_LIQUIDO,'
      '  PRC_TARA = :PRC_TARA,'
      '  PRC_INTEGRADO = :PRC_INTEGRADO,'
      '  PRC_DIGITO = :PRC_DIGITO,'
      '  PRC_CODBARRAS = :PRC_CODBARRAS,'
      '  PRC_NUMBARRAS = :PRC_NUMBARRAS,'
      '  LOTEEXPO = :LOTEEXPO,'
      '  DB_KEY = :DB_KEY'
      'WHERE'
      '  PRC_IDENTIFICACAO = :OLD_PRC_IDENTIFICACAO')
    SQLLock.Strings = (
      'SELECT * FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  t.PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    Session = CnxOracle
    SQL.Strings = (
      ' select t.* '
      '   from P_PRODUCAO t'
      'Where PRC_DT_PADRAO >= :DT_INI'
      '  AND PRC_DT_PADRAO <= :DT_FIM'
      ' AND  PRC_BALANCA = :PRC_BALANCA'
      'ORDER BY PRC_IDENTIFICACAO')
    FetchAll = True
    CachedUpdates = True
    Left = 115
    Top = 277
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRC_BALANCA'
        Value = nil
      end>
    object qryOraProducaoPRC_CODIGO: TFloatField
      FieldName = 'PRC_CODIGO'
    end
    object qryOraProducaoPRC_IDENTIFICACAO: TStringField
      FieldName = 'PRC_IDENTIFICACAO'
      Size = 12
    end
    object qryOraProducaoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object qryOraProducaoPRC_DT_REGISTRO: TStringField
      FieldName = 'PRC_DT_REGISTRO'
      Size = 30
    end
    object qryOraProducaoPRC_DT_PADRAO: TStringField
      FieldName = 'PRC_DT_PADRAO'
      Size = 30
    end
    object qryOraProducaoPRC_DT_BALANCA: TStringField
      FieldName = 'PRC_DT_BALANCA'
      Size = 30
    end
    object qryOraProducaoPRC_BALANCA: TFloatField
      FieldName = 'PRC_BALANCA'
    end
    object qryOraProducaoPRC_PESO_PADRAO: TFloatField
      FieldName = 'PRC_PESO_PADRAO'
    end
    object qryOraProducaoPRC_PESO_LIQUIDO: TFloatField
      FieldName = 'PRC_PESO_LIQUIDO'
    end
    object qryOraProducaoPRC_TARA: TFloatField
      FieldName = 'PRC_TARA'
    end
    object qryOraProducaoPRC_INTEGRADO: TStringField
      FieldName = 'PRC_INTEGRADO'
      Size = 1
    end
    object qryOraProducaoPRC_DIGITO: TStringField
      FieldName = 'PRC_DIGITO'
      Size = 2
    end
    object qryOraProducaoPRC_CODBARRAS: TStringField
      FieldName = 'PRC_CODBARRAS'
      Size = 34
    end
    object qryOraProducaoPRC_NUMBARRAS: TStringField
      FieldName = 'PRC_NUMBARRAS'
      Size = 40
    end
    object qryOraProducaoLOTEEXPO: TStringField
      FieldName = 'LOTEEXPO'
      Size = 15
    end
    object qryOraProducaoDB_KEY: TStringField
      FieldName = 'DB_KEY'
    end
  end
  object DS_OraProducao: TDataSource
    DataSet = qryOraProducao
    Left = 145
    Top = 278
  end
  object SQL_ApagaDBLocal: TOraSQL
    Session = CnxOracle
    AutoCommit = True
    SQL.Strings = (
      'DELETE P_PRODUCAO'
      'Where PRC_DT_PADRAO >= :DT_INI'
      '  AND PRC_DT_PADRAO <= :DT_FIM'
      '  AND PRC_BALANCA = :PRC_BALANCA')
    Left = 32
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRC_BALANCA'
        Value = nil
      end>
  end
  object Qry_ResProducaoLog: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO P_PRODUCAO'
      
        '  (PRC_CODIGO, PRC_IDENTIFICACAO, PRD_CODIGO, PRC_DT_REGISTRO, P' +
        'RC_DT_PADRAO, PRC_DT_BALANCA, PRC_BALANCA, PRC_PESO_PADRAO, PRC_' +
        'PESO_LIQUIDO, PRC_TARA, PRC_INTEGRADO, PRC_DIGITO, PRC_CODBARRAS' +
        ', PRC_NUMBARRAS, LOTEEXPO, DB_KEY)'
      'VALUES'
      
        '  (:PRC_CODIGO, :PRC_IDENTIFICACAO, :PRD_CODIGO, :PRC_DT_REGISTR' +
        'O, :PRC_DT_PADRAO, :PRC_DT_BALANCA, :PRC_BALANCA, :PRC_PESO_PADR' +
        'AO, :PRC_PESO_LIQUIDO, :PRC_TARA, :PRC_INTEGRADO, :PRC_DIGITO, :' +
        'PRC_CODBARRAS, :PRC_NUMBARRAS, :LOTEEXPO, :DB_KEY)')
    SQLDelete.Strings = (
      'DELETE FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    SQLUpdate.Strings = (
      'UPDATE P_PRODUCAO'
      'SET'
      '  PRC_CODIGO = :PRC_CODIGO,'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO,'
      '  PRD_CODIGO = :PRD_CODIGO,'
      '  PRC_DT_REGISTRO = :PRC_DT_REGISTRO,'
      '  PRC_DT_PADRAO = :PRC_DT_PADRAO,'
      '  PRC_DT_BALANCA = :PRC_DT_BALANCA,'
      '  PRC_BALANCA = :PRC_BALANCA,'
      '  PRC_PESO_PADRAO = :PRC_PESO_PADRAO,'
      '  PRC_PESO_LIQUIDO = :PRC_PESO_LIQUIDO,'
      '  PRC_TARA = :PRC_TARA,'
      '  PRC_INTEGRADO = :PRC_INTEGRADO,'
      '  PRC_DIGITO = :PRC_DIGITO,'
      '  PRC_CODBARRAS = :PRC_CODBARRAS,'
      '  PRC_NUMBARRAS = :PRC_NUMBARRAS,'
      '  LOTEEXPO = :LOTEEXPO,'
      '  DB_KEY = :DB_KEY'
      'WHERE'
      '  PRC_IDENTIFICACAO = :OLD_PRC_IDENTIFICACAO')
    SQLLock.Strings = (
      'SELECT * FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  t.PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    Session = CnxOracle
    SQL.Strings = (
      'SELECT PRC_BALANCA, '
      '        Substr(PRC_IDENTIFICACAO, 1 , 6) as DIA,'
      '        MIN(Substr(PRC_IDENTIFICACAO , 9 , 4)) as SEQUECIAL_I,'
      
        '        MAX(Substr(PRC_IDENTIFICACAO , 9 , 4)) as SEQUECIAL_F,  ' +
        '      '
      '        COUNT(*) Registros,'
      '        MIN(PRC_DT_PADRAO) DATA_I,'
      '        MAX(PRC_DT_PADRAO) DATA_F,'
      '       Substr(PRC_IDENTIFICACAO, 1 , 8) as ID_DTBAL'
      '  FROM P_PRODUCAO t'
      'Where PRC_DT_PADRAO >= :DT_INI'
      '  AND PRC_DT_PADRAO <= :DT_FIM'
      'AND  PRC_BALANCA = :PRC_BALANCA'
      'GROUP BY PRC_BALANCA, '
      '          Substr(PRC_IDENTIFICACAO , 1 , 6) , '
      '    Substr(PRC_IDENTIFICACAO, 1 , 8)'
      '   ')
    FetchAll = True
    CachedUpdates = True
    Left = 51
    Top = 277
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRC_BALANCA'
        Value = nil
      end>
    object Qry_ResProducaoLogPRC_BALANCA: TFloatField
      FieldName = 'PRC_BALANCA'
    end
    object Qry_ResProducaoLogDIA: TStringField
      FieldName = 'DIA'
      Size = 6
    end
    object Qry_ResProducaoLogSEQUECIAL_I: TStringField
      FieldName = 'SEQUECIAL_I'
      Size = 4
    end
    object Qry_ResProducaoLogSEQUECIAL_F: TStringField
      FieldName = 'SEQUECIAL_F'
      Size = 4
    end
    object Qry_ResProducaoLogREGISTROS: TFloatField
      FieldName = 'REGISTROS'
    end
    object Qry_ResProducaoLogDATA_I: TStringField
      FieldName = 'DATA_I'
      Size = 30
    end
    object Qry_ResProducaoLogDATA_F: TStringField
      FieldName = 'DATA_F'
      Size = 30
    end
    object Qry_ResProducaoLogID_DTBAL: TStringField
      FieldName = 'ID_DTBAL'
      Size = 8
    end
  end
  object Ds_ResProducaoLog: TDataSource
    DataSet = Qry_ResProducaoLog
    Left = 81
    Top = 278
  end
  object Qr_ProducaoServer: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO P_PRODUCAO'
      
        '  (PRC_CODIGO, PRC_IDENTIFICACAO, PRD_CODIGO, PRC_DT_REGISTRO, P' +
        'RC_DT_PADRAO, PRC_DT_BALANCA, PRC_BALANCA, PRC_PESO_PADRAO, PRC_' +
        'PESO_LIQUIDO, PRC_TARA, PRC_INTEGRADO, PRC_DIGITO, PRC_CODBARRAS' +
        ', PRC_NUMBARRAS, LOTEEXPO, DB_KEY)'
      'VALUES'
      
        '  (:PRC_CODIGO, :PRC_IDENTIFICACAO, :PRD_CODIGO, :PRC_DT_REGISTR' +
        'O, :PRC_DT_PADRAO, :PRC_DT_BALANCA, :PRC_BALANCA, :PRC_PESO_PADR' +
        'AO, :PRC_PESO_LIQUIDO, :PRC_TARA, :PRC_INTEGRADO, :PRC_DIGITO, :' +
        'PRC_CODBARRAS, :PRC_NUMBARRAS, :LOTEEXPO, :DB_KEY)')
    SQLDelete.Strings = (
      'DELETE FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    SQLUpdate.Strings = (
      'UPDATE P_PRODUCAO'
      'SET'
      '  PRC_CODIGO = :PRC_CODIGO,'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO,'
      '  PRD_CODIGO = :PRD_CODIGO,'
      '  PRC_DT_REGISTRO = :PRC_DT_REGISTRO,'
      '  PRC_DT_PADRAO = :PRC_DT_PADRAO,'
      '  PRC_DT_BALANCA = :PRC_DT_BALANCA,'
      '  PRC_BALANCA = :PRC_BALANCA,'
      '  PRC_PESO_PADRAO = :PRC_PESO_PADRAO,'
      '  PRC_PESO_LIQUIDO = :PRC_PESO_LIQUIDO,'
      '  PRC_TARA = :PRC_TARA,'
      '  PRC_INTEGRADO = :PRC_INTEGRADO,'
      '  PRC_DIGITO = :PRC_DIGITO,'
      '  PRC_CODBARRAS = :PRC_CODBARRAS,'
      '  PRC_NUMBARRAS = :PRC_NUMBARRAS,'
      '  LOTEEXPO = :LOTEEXPO,'
      '  DB_KEY = :DB_KEY'
      'WHERE'
      '  PRC_IDENTIFICACAO = :OLD_PRC_IDENTIFICACAO')
    SQLLock.Strings = (
      'SELECT * FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  t.PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    Session = CnxOracle
    SQL.Strings = (
      'SELECT *'
      '  From Producao_Registro P'
      ' WHERE DT_PADRREGIPROD >= :DT_INI  '
      '   AND DT_PADRREGIPROD <= :DT_FIM '
      '  AND ID_BALANCA = :ID_BALANCA '
      ' ORDER BY ID_IDENREGIPROD')
    FetchAll = True
    CachedUpdates = True
    Left = 27
    Top = 381
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DT_INI'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DT_FIM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID_BALANCA'
        Value = nil
      end>
    object Qr_ProducaoServerEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object Qr_ProducaoServerFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object Qr_ProducaoServerID_REGIPROD: TFloatField
      FieldName = 'ID_REGIPROD'
      Required = True
    end
    object Qr_ProducaoServerID_IDENREGIPROD: TStringField
      FieldName = 'ID_IDENREGIPROD'
      Required = True
      Size = 12
    end
    object Qr_ProducaoServerID_MATERIAL: TFloatField
      FieldName = 'ID_MATERIAL'
      Required = True
    end
    object Qr_ProducaoServerID_EMBALAGEM: TFloatField
      FieldName = 'ID_EMBALAGEM'
      Required = True
    end
    object Qr_ProducaoServerID_ALMOXARIFADO: TFloatField
      FieldName = 'ID_ALMOXARIFADO'
      Required = True
    end
    object Qr_ProducaoServerID_MATEALMO: TFloatField
      FieldName = 'ID_MATEALMO'
      Required = True
    end
    object Qr_ProducaoServerID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Required = True
      Size = 5
    end
    object Qr_ProducaoServerDT_REGIPROD: TDateTimeField
      FieldName = 'DT_REGIPROD'
      Required = True
    end
    object Qr_ProducaoServerDT_PADRREGIPROD: TDateTimeField
      FieldName = 'DT_PADRREGIPROD'
      Required = True
    end
    object Qr_ProducaoServerDT_BALAREGIPROD: TDateTimeField
      FieldName = 'DT_BALAREGIPROD'
      Required = True
    end
    object Qr_ProducaoServerID_BALANCA: TFloatField
      FieldName = 'ID_BALANCA'
      Required = True
    end
    object Qr_ProducaoServerQN_PESOPADRREGIPROD: TFloatField
      FieldName = 'QN_PESOPADRREGIPROD'
      Required = True
    end
    object Qr_ProducaoServerQN_PESOLIQUREGIPROD: TFloatField
      FieldName = 'QN_PESOLIQUREGIPROD'
      Required = True
    end
    object Qr_ProducaoServerFL_STATREGIPROD: TStringField
      FieldName = 'FL_STATREGIPROD'
      Required = True
      Size = 2
    end
    object Qr_ProducaoServerFX_REGIPROD: TStringField
      FieldName = 'FX_REGIPROD'
      Required = True
      Size = 1
    end
    object Qr_ProducaoServerQN_TARAEMBAREGIPROD: TFloatField
      FieldName = 'QN_TARAEMBAREGIPROD'
    end
    object Qr_ProducaoServerID_TRANREGIPROD: TFloatField
      FieldName = 'ID_TRANREGIPROD'
    end
    object Qr_ProducaoServerID_PEDIVEND: TFloatField
      FieldName = 'ID_PEDIVEND'
    end
    object Qr_ProducaoServerDIGITOVER: TStringField
      FieldName = 'DIGITOVER'
      Size = 2
    end
    object Qr_ProducaoServerLOTEEXPO: TStringField
      FieldName = 'LOTEEXPO'
      Size = 15
    end
    object Qr_ProducaoServerFL_TRANSFERE: TStringField
      FieldName = 'FL_TRANSFERE'
      Size = 1
    end
    object Qr_ProducaoServerID_GRUPO: TStringField
      FieldName = 'ID_GRUPO'
      Size = 8
    end
  end
  object DS_ProducaoServer: TDataSource
    DataSet = Qr_ProducaoServer
    Left = 57
    Top = 382
  end
  object Qr_ProdServerRes: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO P_PRODUCAO'
      
        '  (PRC_CODIGO, PRC_IDENTIFICACAO, PRD_CODIGO, PRC_DT_REGISTRO, P' +
        'RC_DT_PADRAO, PRC_DT_BALANCA, PRC_BALANCA, PRC_PESO_PADRAO, PRC_' +
        'PESO_LIQUIDO, PRC_TARA, PRC_INTEGRADO, PRC_DIGITO, PRC_CODBARRAS' +
        ', PRC_NUMBARRAS, LOTEEXPO, DB_KEY)'
      'VALUES'
      
        '  (:PRC_CODIGO, :PRC_IDENTIFICACAO, :PRD_CODIGO, :PRC_DT_REGISTR' +
        'O, :PRC_DT_PADRAO, :PRC_DT_BALANCA, :PRC_BALANCA, :PRC_PESO_PADR' +
        'AO, :PRC_PESO_LIQUIDO, :PRC_TARA, :PRC_INTEGRADO, :PRC_DIGITO, :' +
        'PRC_CODBARRAS, :PRC_NUMBARRAS, :LOTEEXPO, :DB_KEY)')
    SQLDelete.Strings = (
      'DELETE FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    SQLUpdate.Strings = (
      'UPDATE P_PRODUCAO'
      'SET'
      '  PRC_CODIGO = :PRC_CODIGO,'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO,'
      '  PRD_CODIGO = :PRD_CODIGO,'
      '  PRC_DT_REGISTRO = :PRC_DT_REGISTRO,'
      '  PRC_DT_PADRAO = :PRC_DT_PADRAO,'
      '  PRC_DT_BALANCA = :PRC_DT_BALANCA,'
      '  PRC_BALANCA = :PRC_BALANCA,'
      '  PRC_PESO_PADRAO = :PRC_PESO_PADRAO,'
      '  PRC_PESO_LIQUIDO = :PRC_PESO_LIQUIDO,'
      '  PRC_TARA = :PRC_TARA,'
      '  PRC_INTEGRADO = :PRC_INTEGRADO,'
      '  PRC_DIGITO = :PRC_DIGITO,'
      '  PRC_CODBARRAS = :PRC_CODBARRAS,'
      '  PRC_NUMBARRAS = :PRC_NUMBARRAS,'
      '  LOTEEXPO = :LOTEEXPO,'
      '  DB_KEY = :DB_KEY'
      'WHERE'
      '  PRC_IDENTIFICACAO = :OLD_PRC_IDENTIFICACAO')
    SQLLock.Strings = (
      'SELECT * FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  t.PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    Session = CnxOracle
    SQL.Strings = (
      'Select SUBSTR(ID_IDENREGIPROD,1,8) DDMMAA ,'
      '       SUBSTR(ID_IDENREGIPROD,7,2) BALANCA,'
      '       MIN(ID_IDENREGIPROD) SEQINI, '
      '       MAX(ID_IDENREGIPROD) SEQFIM, '
      '       COUNT(*) CAIXAS,       '
      '       MIN(DT_PADRREGIPROD) PRIM_REGISTRO,'
      '       MAX(DT_PADRREGIPROD) ULT_REGISTRO'
      '  From Producao_Registro P'
      ' WHERE DT_PADRREGIPROD >= :DT_INI'
      '   AND DT_PADRREGIPROD<= :DT_FIM '
      '  AND ID_BALANCA = :ID_BALANCA '
      
        ' GROUP BY SUBSTR(ID_IDENREGIPROD,1,8) , SUBSTR(ID_IDENREGIPROD,7' +
        ',2)'
      
        ' ORDER BY  SUBSTR(ID_IDENREGIPROD,1,8), SUBSTR(ID_IDENREGIPROD,7' +
        ',2)')
    FetchAll = True
    CachedUpdates = True
    Left = 27
    Top = 349
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DT_INI'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DT_FIM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID_BALANCA'
        Value = nil
      end>
    object Qr_ProdServerResDDMMAA: TStringField
      FieldName = 'DDMMAA'
      Size = 8
    end
    object Qr_ProdServerResBALANCA: TStringField
      FieldName = 'BALANCA'
      Size = 2
    end
    object Qr_ProdServerResSEQINI: TStringField
      FieldName = 'SEQINI'
      Size = 12
    end
    object Qr_ProdServerResSEQFIM: TStringField
      FieldName = 'SEQFIM'
      Size = 12
    end
    object Qr_ProdServerResCAIXAS: TFloatField
      FieldName = 'CAIXAS'
    end
    object Qr_ProdServerResPRIM_REGISTRO: TDateTimeField
      FieldName = 'PRIM_REGISTRO'
    end
    object Qr_ProdServerResULT_REGISTRO: TDateTimeField
      FieldName = 'ULT_REGISTRO'
    end
  end
  object Ds_ProdServerRes: TDataSource
    DataSet = Qr_ProdServerRes
    Left = 57
    Top = 350
  end
  object Sql_RecuperaLog: TOraSQL
    Session = CnxOracle
    AutoCommit = True
    SQL.Strings = (
      'insert into Producao_Registro'
      
        '       (   EMPRESA, FILIAL, ID_REGIPROD, ID_IDENREGIPROD,      I' +
        'D_MATERIAL,  ID_EMBALAGEM,  ID_ALMOXARIFADO,    ID_MATEALMO,   I' +
        'D_PRODMATEEMBA,   '
      
        '           DT_REGIPROD,                                         ' +
        '     '
      
        '           DT_PADRREGIPROD,                                     ' +
        '   '
      
        '           DT_BALAREGIPROD,                                     ' +
        '   '
      
        '           ID_BALANCA, QN_PESOPADRREGIPROD, QN_PESOLIQUREGIPROD,' +
        ' FL_STATREGIPROD, FX_REGIPROD, QN_TARAEMBAREGIPROD, DIGITOVER, L' +
        'OTEEXPO)'
      'SELECT '#39'CA'#39',1, ID_REGIPRODMATE.NEXTVAL , '
      ' '
      '        SUBSTR(P.PRC_IDENTIFICACAO,1,8) || SUBSTR ('#39'000'#39'||'
      '(( SELECT SUBSTR(MAX(ID_IDENREGIPROD),9,4)'
      '  From Producao_Registro P'
      
        ' WHERE DT_BALAREGIPROD >=  TO_DATE( :DT_INI ,'#39'DD/MM/YYYY HH24:MI' +
        ':SS'#39')'
      
        '   AND DT_BALAREGIPROD < TO_DATE( :DT_FIM ,'#39'DD/MM/YYYY HH24:MI:S' +
        'S'#39')'
      '   AND ID_BALANCA = :ID_BALANCA  '
      '   AND SUBSTR(ID_IDENREGIPROD,1,8) = :ID_DTBAL  )'
      '         + rownum) ,-4),'
      '        '
      
        '        M.ID_MATERIAL, M.ID_EMBALAGEM, A.ID_ALMOXARIFADO, A.ID_M' +
        'ATEALMO, M.ID_PRODMATEEMBA,'
      '       TO_DATE( PRC_DT_REGISTRO ,'#39'DD/MM/YYYY HH24:MI:SS'#39') ,'
      '       TO_DATE( PRC_DT_PADRAO   ,'#39'DD/MM/YYYY HH24:MI:SS'#39') ,'
      '       TO_DATE( PRC_DT_BALANCA  ,'#39'DD/MM/YYYY HH24:MI:SS'#39') ,'
      
        '       PRC_BALANCA, PRC_PESO_PADRAO, PRC_PESO_LIQUIDO, '#39'ES'#39','#39'N'#39',' +
        ' PRC_TARA, PRC_DIGITO, '#39'0'#39' '
      '         '
      '  FROM P_PRODUCAO P'
      ' INNER JOIN MATERIAL_EMBALAGEM M'
      '    On  M.ID_PRODMATEEMBA = TRIM(P.PRD_CODIGO)'
      ' Inner Join MATERIAL_ALMOXARIFADO A'
      '    ON M.ID_MATERIAL = A.ID_MATERIAL'
      '   AND M.ID_EMBALAGEM = A.ID_EMBALAGEM'
      '   AND A.ID_ALMOXARIFADO = 1'
      
        ' Where  TO_DATE(PRC_DT_PADRAO,'#39'DD/MM/YYYY HH24:MI:SS'#39') between T' +
        'O_DATE( :DT_INISTR ,'#39'DD/MM/YYYY HH24:MI:SS'#39') AND TO_DATE( :DT_FI' +
        'MSTR  ,'#39'DD/MM/YYYY HH24:MI:SS'#39')   '
      '   AND PRC_BALANCA = :PRC_BALANCA'
      '  AND SUBSTR(P.PRC_IDENTIFICACAO,1,8) = :ID_DTBAL'
      '  AND SUBSTR(PRC_DT_PADRAO,12,8) not in ('
      '  '
      'SELECT TO_CHAR(DT_PADRREGIPROD,'#39'HH24:MI:SS'#39')'
      '  From Producao_Registro P'
      
        ' WHERE DT_PADRREGIPROD >=  TO_DATE( :DT_INI ,'#39'DD/MM/YYYY HH24:MI' +
        ':SS'#39')'
      
        '   AND DT_PADRREGIPROD <= TO_DATE( :DT_FIM ,'#39'DD/MM/YYYY HH24:MI:' +
        'SS'#39')'
      '  AND ID_BALANCA = :ID_BALANCA   '
      ' AND SUBSTR(ID_IDENREGIPROD,1,8) = :ID_DTBAL          )'
      ' ')
    Left = 64
    Top = 424
    ParamData = <
      item
        DataType = ftString
        Name = 'DT_INI'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DT_FIM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID_BALANCA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID_DTBAL'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DT_INISTR'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DT_FIMSTR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRC_BALANCA'
        Value = nil
      end>
  end
  object Qry_RecuperaLog: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO P_PRODUCAO'
      
        '  (PRC_CODIGO, PRC_IDENTIFICACAO, PRD_CODIGO, PRC_DT_REGISTRO, P' +
        'RC_DT_PADRAO, PRC_DT_BALANCA, PRC_BALANCA, PRC_PESO_PADRAO, PRC_' +
        'PESO_LIQUIDO, PRC_TARA, PRC_INTEGRADO, PRC_DIGITO, PRC_CODBARRAS' +
        ', PRC_NUMBARRAS, LOTEEXPO, DB_KEY)'
      'VALUES'
      
        '  (:PRC_CODIGO, :PRC_IDENTIFICACAO, :PRD_CODIGO, :PRC_DT_REGISTR' +
        'O, :PRC_DT_PADRAO, :PRC_DT_BALANCA, :PRC_BALANCA, :PRC_PESO_PADR' +
        'AO, :PRC_PESO_LIQUIDO, :PRC_TARA, :PRC_INTEGRADO, :PRC_DIGITO, :' +
        'PRC_CODBARRAS, :PRC_NUMBARRAS, :LOTEEXPO, :DB_KEY)')
    SQLDelete.Strings = (
      'DELETE FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    SQLUpdate.Strings = (
      'UPDATE P_PRODUCAO'
      'SET'
      '  PRC_CODIGO = :PRC_CODIGO,'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO,'
      '  PRD_CODIGO = :PRD_CODIGO,'
      '  PRC_DT_REGISTRO = :PRC_DT_REGISTRO,'
      '  PRC_DT_PADRAO = :PRC_DT_PADRAO,'
      '  PRC_DT_BALANCA = :PRC_DT_BALANCA,'
      '  PRC_BALANCA = :PRC_BALANCA,'
      '  PRC_PESO_PADRAO = :PRC_PESO_PADRAO,'
      '  PRC_PESO_LIQUIDO = :PRC_PESO_LIQUIDO,'
      '  PRC_TARA = :PRC_TARA,'
      '  PRC_INTEGRADO = :PRC_INTEGRADO,'
      '  PRC_DIGITO = :PRC_DIGITO,'
      '  PRC_CODBARRAS = :PRC_CODBARRAS,'
      '  PRC_NUMBARRAS = :PRC_NUMBARRAS,'
      '  LOTEEXPO = :LOTEEXPO,'
      '  DB_KEY = :DB_KEY'
      'WHERE'
      '  PRC_IDENTIFICACAO = :OLD_PRC_IDENTIFICACAO')
    SQLLock.Strings = (
      'SELECT * FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  t.PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    Session = CnxOracle
    SQL.Strings = (
      'SELECT'
      '        SUBSTR(P.PRC_IDENTIFICACAO,1,8) || SUBSTR ('#39'000'#39'||   '
      '( SELECT SUBSTR(MAX(ID_IDENREGIPROD),9,4)'
      '  From Producao_Registro P'
      ' WHERE ID_BALANCA  = :ID_BALANCA'
      '  AND SUBSTR(ID_IDENREGIPROD,1,8) = :ID_DTBAL'
      
        '   AND DT_PADRREGIPROD>= TO_DATE( :DT_INI ,'#39'DD/MM/YYYY HH24:MI:S' +
        'S'#39')'
      
        '   AND DT_PADRREGIPROD< TO_DATE( :DT_FIM ,'#39'DD/MM/YYYY HH24:MI:SS' +
        #39') )'
      ''
      '         + rownum,-4) IDENTIFICACAO ,'
      '        '
      
        '        M.ID_MATERIAL, M.ID_EMBALAGEM, A.ID_ALMOXARIFADO, A.ID_M' +
        'ATEALMO, M.ID_PRODMATEEMBA,'
      
        '       TO_DATE( PRC_DT_REGISTRO ,'#39'DD/MM/YYYY HH24:MI:SS'#39')  DT_RE' +
        'GISTRO,'
      
        '       TO_DATE( PRC_DT_PADRAO   ,'#39'DD/MM/YYYY HH24:MI:SS'#39')  DT_PA' +
        'DRAO,'
      
        '       TO_DATE( PRC_DT_BALANCA  ,'#39'DD/MM/YYYY HH24:MI:SS'#39') DT_BAL' +
        'ANCA,'
      
        '       PRC_BALANCA, PRC_PESO_PADRAO, PRC_PESO_LIQUIDO, PRC_TARA,' +
        ' PRC_DIGITO'
      '         '
      '  FROM P_PRODUCAO P'
      ' INNER JOIN MATERIAL_EMBALAGEM M'
      '    On  M.ID_PRODMATEEMBA = TRIM(P.PRD_CODIGO)'
      ' Inner Join MATERIAL_ALMOXARIFADO A'
      '    ON M.ID_MATERIAL = A.ID_MATERIAL'
      '   AND M.ID_EMBALAGEM = A.ID_EMBALAGEM'
      '   AND A.ID_ALMOXARIFADO = 1'
      
        ' Where  TO_DATE(PRC_DT_PADRAO,'#39'DD/MM/YYYY HH24:MI:SS'#39')  between ' +
        'TO_DATE( :DT_INISTR ,'#39'DD/MM/YYYY HH24:MI:SS'#39') AND TO_DATE( :DT_F' +
        'IMSTR  ,'#39'DD/MM/YYYY HH24:MI:SS'#39')'
      '  AND PRC_BALANCA = :PRC_BALANCA '
      'AND SUBSTR(P.PRC_IDENTIFICACAO,1,8) = :ID_DTBAL'
      '  AND SUBSTR(PRC_DT_PADRAO,12,8) not in ('
      '  '
      'SELECT TO_CHAR(DT_PADRREGIPROD,'#39'HH24:MI:SS'#39')'
      '  From Producao_Registro P'
      
        ' WHERE DT_PADRREGIPROD>= TO_DATE( :DT_INI ,'#39'DD/MM/YYYY HH24:MI:S' +
        'S'#39') '
      
        '   AND DT_PADRREGIPROD<= TO_DATE( :DT_FIM ,'#39'DD/MM/YYYY HH24:MI:S' +
        'S'#39')     '
      '   AND ID_BALANCA = :ID_BALANCA   '
      '  AND SUBSTR(ID_IDENREGIPROD,1,8) = :ID_DTBAL     )   '
      ' ')
    FetchAll = True
    CachedUpdates = True
    Left = 27
    Top = 421
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_BALANCA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID_DTBAL'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DT_INI'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DT_FIM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DT_INISTR'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'DT_FIMSTR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRC_BALANCA'
        Value = nil
      end>
    object Qry_RecuperaLogIDENTIFICACAO: TStringField
      FieldName = 'IDENTIFICACAO'
      Size = 12
    end
    object Qry_RecuperaLogID_MATERIAL: TFloatField
      FieldName = 'ID_MATERIAL'
      Required = True
    end
    object Qry_RecuperaLogID_EMBALAGEM: TFloatField
      FieldName = 'ID_EMBALAGEM'
      Required = True
    end
    object Qry_RecuperaLogID_ALMOXARIFADO: TFloatField
      FieldName = 'ID_ALMOXARIFADO'
      Required = True
    end
    object Qry_RecuperaLogID_MATEALMO: TFloatField
      FieldName = 'ID_MATEALMO'
      Required = True
    end
    object Qry_RecuperaLogID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
    object Qry_RecuperaLogDT_REGISTRO: TDateTimeField
      FieldName = 'DT_REGISTRO'
    end
    object Qry_RecuperaLogDT_PADRAO: TDateTimeField
      FieldName = 'DT_PADRAO'
    end
    object Qry_RecuperaLogDT_BALANCA: TDateTimeField
      FieldName = 'DT_BALANCA'
    end
    object Qry_RecuperaLogPRC_BALANCA: TFloatField
      FieldName = 'PRC_BALANCA'
    end
    object Qry_RecuperaLogPRC_PESO_PADRAO: TFloatField
      FieldName = 'PRC_PESO_PADRAO'
    end
    object Qry_RecuperaLogPRC_PESO_LIQUIDO: TFloatField
      FieldName = 'PRC_PESO_LIQUIDO'
    end
    object Qry_RecuperaLogPRC_TARA: TFloatField
      FieldName = 'PRC_TARA'
    end
    object Qry_RecuperaLogPRC_DIGITO: TStringField
      FieldName = 'PRC_DIGITO'
      Size = 2
    end
  end
  object Qry_Balanca: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO P_PRODUCAO'
      
        '  (PRC_CODIGO, PRC_IDENTIFICACAO, PRD_CODIGO, PRC_DT_REGISTRO, P' +
        'RC_DT_PADRAO, PRC_DT_BALANCA, PRC_BALANCA, PRC_PESO_PADRAO, PRC_' +
        'PESO_LIQUIDO, PRC_TARA, PRC_INTEGRADO, PRC_DIGITO, PRC_CODBARRAS' +
        ', PRC_NUMBARRAS, LOTEEXPO, DB_KEY)'
      'VALUES'
      
        '  (:PRC_CODIGO, :PRC_IDENTIFICACAO, :PRD_CODIGO, :PRC_DT_REGISTR' +
        'O, :PRC_DT_PADRAO, :PRC_DT_BALANCA, :PRC_BALANCA, :PRC_PESO_PADR' +
        'AO, :PRC_PESO_LIQUIDO, :PRC_TARA, :PRC_INTEGRADO, :PRC_DIGITO, :' +
        'PRC_CODBARRAS, :PRC_NUMBARRAS, :LOTEEXPO, :DB_KEY)')
    SQLDelete.Strings = (
      'DELETE FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    SQLUpdate.Strings = (
      'UPDATE P_PRODUCAO'
      'SET'
      '  PRC_CODIGO = :PRC_CODIGO,'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO,'
      '  PRD_CODIGO = :PRD_CODIGO,'
      '  PRC_DT_REGISTRO = :PRC_DT_REGISTRO,'
      '  PRC_DT_PADRAO = :PRC_DT_PADRAO,'
      '  PRC_DT_BALANCA = :PRC_DT_BALANCA,'
      '  PRC_BALANCA = :PRC_BALANCA,'
      '  PRC_PESO_PADRAO = :PRC_PESO_PADRAO,'
      '  PRC_PESO_LIQUIDO = :PRC_PESO_LIQUIDO,'
      '  PRC_TARA = :PRC_TARA,'
      '  PRC_INTEGRADO = :PRC_INTEGRADO,'
      '  PRC_DIGITO = :PRC_DIGITO,'
      '  PRC_CODBARRAS = :PRC_CODBARRAS,'
      '  PRC_NUMBARRAS = :PRC_NUMBARRAS,'
      '  LOTEEXPO = :LOTEEXPO,'
      '  DB_KEY = :DB_KEY'
      'WHERE'
      '  PRC_IDENTIFICACAO = :OLD_PRC_IDENTIFICACAO')
    SQLLock.Strings = (
      'SELECT * FROM P_PRODUCAO'
      'WHERE'
      '  PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  t.PRC_IDENTIFICACAO = :PRC_IDENTIFICACAO')
    Session = CnxOracle
    SQL.Strings = (
      'SELECT B.IPB_BALANCA , B.IPB_IP, IPB_SEQUENCIAL,  IPB_ULTIMADT, '
      '            B.IPB_BALANCA ||'#39' - IP : '#39'||B.IPB_IP BALA'
      '  FROM P_IP_BALANCA B'
      'ORDER BY IPB_BALANCA ')
    FetchAll = True
    CachedUpdates = True
    Left = 739
    Top = 45
    object Qry_BalancaIPB_BALANCA: TFloatField
      FieldName = 'IPB_BALANCA'
      Required = True
    end
    object Qry_BalancaIPB_IP: TStringField
      FieldName = 'IPB_IP'
      Required = True
      Size = 15
    end
    object Qry_BalancaIPB_SEQUENCIAL: TFloatField
      FieldName = 'IPB_SEQUENCIAL'
      Required = True
    end
    object Qry_BalancaIPB_ULTIMADT: TDateTimeField
      FieldName = 'IPB_ULTIMADT'
    end
    object Qry_BalancaBALA: TStringField
      FieldName = 'BALA'
      Size = 63
    end
  end
  object Ds_Balanca: TDataSource
    DataSet = Qry_Balanca
    Left = 769
    Top = 46
  end
end
