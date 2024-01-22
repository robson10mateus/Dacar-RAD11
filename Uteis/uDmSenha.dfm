object dmSenha: TdmSenha
  OnCreate = DataModuleCreate
  Height = 209
  Width = 401
  PixelsPerInch = 96
  object qryConexao: TOraQuery
    Session = DB
    SQL.Strings = (
      'SELECT SUBSTR(T.CNPJ, 14) || '#39' '#39' || T.DESCR AS NOME_CNPJ,'
      '    CASE SUBSTR(T.CNPJ, 0, 10) WHEN '#39'58.852.518'#39' THEN 0'
      '    WHEN '#39'15.109.348'#39' THEN 1 ELSE 2 END AS FILTRO, T.*, E.*'
      'FROM CA_BASE T'
      'INNER JOIN EMPRESA E ON E.ID_EMPRESA = T.ID_BASE'
      'WHERE T.CONEXAO IS NOT NULL AND T.CNPJ IS NOT NULL')
    AfterOpen = qryConexaoAfterOpen
    Left = 239
    Top = 16
    object qryConexaoNOME_CNPJ: TStringField
      FieldName = 'NOME_CNPJ'
      Size = 68
    end
    object qryConexaoFILTRO: TFloatField
      FieldName = 'FILTRO'
    end
    object qryConexaoID_BASE: TIntegerField
      FieldName = 'ID_BASE'
      Required = True
    end
    object qryConexaoEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object qryConexaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object qryConexaoDESCR: TStringField
      FieldName = 'DESCR'
      Size = 60
    end
    object qryConexaoCONEXAO: TStringField
      FieldName = 'CONEXAO'
      Size = 100
    end
    object qryConexaoCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object qryConexaoOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object qryConexaoCONEXAORH: TStringField
      FieldName = 'CONEXAORH'
      Size = 100
    end
    object qryConexaoINSCRICAO_ESTADUAL: TStringField
      FieldName = 'INSCRICAO_ESTADUAL'
      Size = 15
    end
    object qryConexaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object qryConexaoFL_TESTE: TStringField
      FieldName = 'FL_TESTE'
      Size = 1
    end
    object qryConexaoNM_EMAIL_HOST: TStringField
      FieldName = 'NM_EMAIL_HOST'
      Size = 100
    end
    object qryConexaoNM_EMAIL_PORTA: TStringField
      FieldName = 'NM_EMAIL_PORTA'
      Size = 10
    end
  end
  object qryFilial: TOraQuery
    Session = DB
    SQL.Strings = (
      'select '
      '  filial, '
      '  unomeuneg AS DESCR, '
      '  ucgcuneg AS CNPJ, '
      
        '  substr(ucgcuneg, 11, 2) || '#39'-'#39' || substr(ucgcuneg, 13, 2) || '#39 +
        ' '#39' || unomeuneg AS NOME_CNPJ,'
      '  ucodiuneg AS UNIDADE_NEGOCIO'
      'from '
      '  ca_unegoci'
      'where '
      '  UCGCUNEG is not null'
      ' AND filial IS NOT NULL')
    FetchAll = True
    Left = 26
    Top = 16
    object qryFilialFILIAL: TFloatField
      FieldName = 'FILIAL'
    end
    object qryFilialDESCR: TStringField
      FieldName = 'DESCR'
      Size = 30
    end
    object qryFilialCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qryFilialNOME_CNPJ: TStringField
      FieldName = 'NOME_CNPJ'
      Size = 36
    end
    object qryFilialUNIDADE_NEGOCIO: TStringField
      FieldName = 'UNIDADE_NEGOCIO'
      Required = True
      Size = 3
    end
  end
  object DB: TOraSession
    Options.DateFormat = 'DD/MM/YYYY'
    Options.DateLanguage = 'PORTUGUESE'
    Options.Direct = True
    Username = 'smart'
    Server = '192.168.0.250:1521:orcl'
    Connected = True
    Left = 131
    Top = 16
    EncryptedPassword = '8FFF86FF87FF96FF8CFF'
  end
  object Qry_Aux: TOraQuery
    Session = DB
    SQL.Strings = (
      'select TRUNC(sysdate) Data,'
      '       sysdate Data_Hora ,'
      '       to_char(sysdate, '#39'dd/mm/yyyy'#39') Data_Str,'
      '       to_char(sysdate, '#39'dd/mm/yyyy hh:mi:ss'#39') DataHora_Str'
      '  from dual'
      '  ')
    Left = 23
    Top = 72
    object Qry_AuxDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object Qry_AuxDATA_HORA: TDateTimeField
      FieldName = 'DATA_HORA'
    end
    object Qry_AuxDATA_STR: TStringField
      FieldName = 'DATA_STR'
      Size = 10
    end
    object Qry_AuxDATAHORA_STR: TStringField
      FieldName = 'DATAHORA_STR'
      Size = 19
    end
  end
end
