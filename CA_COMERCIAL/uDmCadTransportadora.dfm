object dmCadTransportadora: TdmCadTransportadora

  Left = 664
  Top = 299
  Height = 346
  Width = 457
  object QrVeiculos: TOraQuery
    KeyFields = 'ID_VEICTRAN'
    KeySequence = 'SMART.ID_VEICTRAN'
    SQLInsert.Strings = (
      'INSERT INTO TRANSPORTADOR_VEICULO'
      
        '  (EMPRESA, FILIAL, ID_VEICTRAN, IE_VEICTRAN, ID_FORNECEDOR_TRAN' +
        'SPORTADOR, GN_PLACVEICTRAN, NM_VEICTRAN, NM_REDUVEICTRAN, ID_TIP' +
        'OVEIC, FL_ATIVVEICTRAN, FX_VEICTRAN, FL_RASTVEICTRAN, QN_FATOFRE' +
        'TABATVEICTRAN, QN_TARAPADRVEICTRAN, NR_ULTIMO_KM, KMREVISAO, EIX' +
        'OS, QT_GAIOLAS)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_VEICTRAN, :IE_VEICTRAN, :ID_FORNECEDOR' +
        '_TRANSPORTADOR, :GN_PLACVEICTRAN, :NM_VEICTRAN, :NM_REDUVEICTRAN' +
        ', :ID_TIPOVEIC, :FL_ATIVVEICTRAN, :FX_VEICTRAN, :FL_RASTVEICTRAN' +
        ', :QN_FATOFRETABATVEICTRAN, :QN_TARAPADRVEICTRAN, :NR_ULTIMO_KM,' +
        ' :KMREVISAO, :EIXOS, :QT_GAIOLAS)')
    SQLDelete.Strings = (
      'DELETE FROM TRANSPORTADOR_VEICULO'
      'WHERE'
      '  ID_VEICTRAN = :ID_VEICTRAN')
    SQLUpdate.Strings = (
      'UPDATE TRANSPORTADOR_VEICULO'
      'SET'
      '  EMPRESA = :EMPRESA,'
      '  FILIAL = :FILIAL,'
      '  ID_VEICTRAN = :ID_VEICTRAN,'
      '  IE_VEICTRAN = :IE_VEICTRAN,'
      '  ID_FORNECEDOR_TRANSPORTADOR = :ID_FORNECEDOR_TRANSPORTADOR,'
      '  GN_PLACVEICTRAN = :GN_PLACVEICTRAN,'
      '  NM_VEICTRAN = :NM_VEICTRAN,'
      '  NM_REDUVEICTRAN = :NM_REDUVEICTRAN,'
      '  ID_TIPOVEIC = :ID_TIPOVEIC,'
      '  FL_ATIVVEICTRAN = :FL_ATIVVEICTRAN,'
      '  FX_VEICTRAN = :FX_VEICTRAN,'
      '  FL_RASTVEICTRAN = :FL_RASTVEICTRAN,'
      '  QN_FATOFRETABATVEICTRAN = :QN_FATOFRETABATVEICTRAN,'
      '  QN_TARAPADRVEICTRAN = :QN_TARAPADRVEICTRAN,'
      '  KMOLEO = :NR_ULTIMO_KM, '
      '  KMREVISAO = :KMREVISAO,'
      '  EIXOS = :EIXOS,'
      '  QT_GAIOLAS = :QT_GAIOLAS'
      'WHERE'
      '  ID_VEICTRAN = :OLD_ID_VEICTRAN')
    SQLLock.Strings = (
      'SELECT * FROM TRANSPORTADOR_VEICULO'
      'WHERE'
      '  ID_VEICTRAN = :ID_VEICTRAN'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  Transportador_veiculo.ID_VEICTRAN = :ID_VEICTRAN')
    LocalUpdate = True
    SQL.Strings = (
      'SELECT'
      '  Transportador_veiculo.EMPRESA,'
      '  Transportador_veiculo.FILIAL,'
      '  Transportador_veiculo.ID_VEICTRAN,'
      '  Transportador_veiculo.IE_VEICTRAN,'
      '  Transportador_veiculo.ID_FORNECEDOR_TRANSPORTADOR,'
      '  Transportador_veiculo.GN_PLACVEICTRAN,'
      '  Transportador_veiculo.NM_VEICTRAN,'
      '  Transportador_veiculo.NM_REDUVEICTRAN,'
      '  Transportador_veiculo.ID_TIPOVEIC,'
      '  Transportador_veiculo.FL_ATIVVEICTRAN,'
      '  Transportador_veiculo.FX_VEICTRAN,'
      '  Veiculo_tipo.NM_TIPOVEIC,'
      '  Transportador_veiculo.FL_RASTVEICTRAN,'
      '  Transportador_veiculo.QN_FATOFRETABATVEICTRAN,'
      '  Transportador_veiculo.QN_TARAPADRVEICTRAN,'
      '  Transportador_veiculo.NR_ULTIMO_KM,'
      '  Transportador_veiculo.KMREVISAO,'
      '  Transportador_veiculo.EIXOS,'
      '  Transportador_veiculo.QT_GAIOLAS'
      'FROM'
      '  TRANSPORTADOR_VEICULO Transportador_veiculo,'
      '  VEICULO_TIPO Veiculo_tipo'
      'WHERE'
      
        '  (Transportador_veiculo.ID_TIPOVEIC = Veiculo_tipo.ID_TIPOVEIC)' +
        ' AND'
      
        '  (Transportador_veiculo.ID_FORNECEDOR_TRANSPORTADOR = :ID_FORNE' +
        'CEDOR)')
    MasterFields = 'ID_FORNECEDOR'
    CachedUpdates = True
    Left = 20
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_FORNECEDOR'
      end>
    object QrVeiculosEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object QrVeiculosFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object QrVeiculosID_VEICTRAN: TFloatField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_VEICTRAN'
      Required = True
    end
    object QrVeiculosIE_VEICTRAN: TStringField
      DisplayLabel = 'C'#243'd. Externo'
      FieldName = 'IE_VEICTRAN'
      Size = 10
    end
    object QrVeiculosID_FORNECEDOR_TRANSPORTADOR: TFloatField
      DisplayLabel = 'C'#243'd. For.'
      FieldName = 'ID_FORNECEDOR_TRANSPORTADOR'
      Required = True
    end
    object QrVeiculosGN_PLACVEICTRAN: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'GN_PLACVEICTRAN'
      Size = 7
    end
    object QrVeiculosNM_VEICTRAN: TStringField
      DisplayLabel = 'Descri'#231#227'o Ve'#237'culo'
      FieldName = 'NM_VEICTRAN'
      Size = 40
    end
    object QrVeiculosNM_REDUVEICTRAN: TStringField
      DisplayLabel = 'Descri'#231#227'o Reduzida'
      FieldName = 'NM_REDUVEICTRAN'
      Size = 15
    end
    object QrVeiculosID_TIPOVEIC: TFloatField
      DisplayLabel = 'Id. Tipo'
      FieldName = 'ID_TIPOVEIC'
      Required = True
    end
    object QrVeiculosFL_ATIVVEICTRAN: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'FL_ATIVVEICTRAN'
      Required = True
      Size = 1
    end
    object QrVeiculosFX_VEICTRAN: TStringField
      FieldName = 'FX_VEICTRAN'
      Required = True
      Size = 1
    end
    object QrVeiculosNM_TIPOVEIC: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NM_TIPOVEIC'
      Size = 40
    end
    object QrVeiculosFL_RASTVEICTRAN: TStringField
      DisplayLabel = 'Rastreado'
      FieldName = 'FL_RASTVEICTRAN'
      Size = 1
    end
    object QrVeiculosQN_FATOFRETABATVEICTRAN: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'QN_FATOFRETABATVEICTRAN'
    end
    object QrVeiculosQN_TARAPADRVEICTRAN: TFloatField
      DisplayLabel = 'Tara'
      FieldName = 'QN_TARAPADRVEICTRAN'
    end
    object QrVeiculosKMREVISAO: TIntegerField
      FieldName = 'KMREVISAO'
    end
    object QrVeiculosEIXOS: TIntegerField
      FieldName = 'EIXOS'
    end
    object QrVeiculosQT_GAIOLAS: TIntegerField
      FieldName = 'QT_GAIOLAS'
    end
    object QrVeiculosNR_ULTIMO_KM: TIntegerField
      FieldName = 'NR_ULTIMO_KM'
    end
  end
  object DSVeiculo: TDataSource
    DataSet = QrVeiculos
    Left = 62
    Top = 13
  end
end
