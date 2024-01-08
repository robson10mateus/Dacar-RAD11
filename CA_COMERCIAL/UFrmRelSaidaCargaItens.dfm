object FrmRelSaidaCargaItens: TFrmRelSaidaCargaItens
  Left = 512
  Top = 73
  Width = 812
  Height = 631
  HorzScrollBar.Range = 791
  VertScrollBar.Range = 1123
  Caption = 'Relat'#243'rio Sa'#237'da de Carga'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 15
  object RLReport1: TRLReport
    Left = -3
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DSSAIDACARGA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    object RLGroup1: TRLGroup
      Left = 38
      Top = 130
      Width = 718
      Height = 67
      DataFields = 'ID_CARGEXPE'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 36
        BandType = btColumnHeader
        object RLLabel8: TRLLabel
          Left = 32
          Top = 3
          Width = 44
          Height = 16
          Caption = 'Cliente'
        end
        object RLLabel10: TRLLabel
          Left = 322
          Top = 3
          Width = 44
          Height = 16
          Caption = 'Cidade'
        end
        object RLLabel11: TRLLabel
          Left = 433
          Top = 3
          Width = 38
          Height = 16
          Caption = 'Bairro'
        end
        object RLLabel12: TRLLabel
          Left = 539
          Top = 3
          Width = 127
          Height = 16
          Caption = 'Sub-Regi'#227'o Log'#237'stica'
        end
        object RLLabel13: TRLLabel
          Left = 673
          Top = 3
          Width = 44
          Height = 16
          Caption = 'Pedido'
        end
        object RLDBText6: TRLDBText
          Left = -29
          Top = 20
          Width = 58
          Height = 14
          Alignment = taRightJustify
          DataField = 'ID_CLIENTE'
          DataSource = DSSAIDACARGA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 34
          Top = 20
          Width = 285
          Height = 14
          AutoSize = False
          DataField = 'NM_FANTCLIE'
          DataSource = DSSAIDACARGA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 321
          Top = 20
          Width = 108
          Height = 14
          AutoSize = False
          DataField = 'NM_CIDADE'
          DataSource = DSSAIDACARGA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 431
          Top = 20
          Width = 104
          Height = 14
          AutoSize = False
          DataField = 'NM_BAIRRO'
          DataSource = DSSAIDACARGA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 537
          Top = 20
          Width = 135
          Height = 14
          AutoSize = False
          DataField = 'NM_SUBRLOGI'
          DataSource = DSSAIDACARGA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText13: TRLDBText
          Left = 674
          Top = 20
          Width = 43
          Height = 14
          AutoSize = False
          DataField = 'ID_PEDIVEND'
          DataSource = DSSAIDACARGA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 36
        Width = 718
        Height = 20
        object RLDBText8: TRLDBText
          Left = 34
          Top = 3
          Width = 285
          Height = 14
          AutoSize = False
          DataField = 'NM_PRODMATEEMBA'
          DataSource = DSSAIDACARGA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 92
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 248
        Top = 4
        Width = 66
        Height = 18
        Caption = 'C'#233'u Azul'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object lbltitulo: TRLLabel
        Left = 248
        Top = 24
        Width = 213
        Height = 17
        Caption = 'Autoriza'#231#227'o de Sa'#237'da de Ve'#237'culo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 29
        Width = 39
        Height = 16
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 634
        Top = 28
        Width = 35
        Height = 16
        Caption = 'P'#225'g.:'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 673
        Top = 28
        Width = 40
        Height = 16
        AutoSize = False
        Info = itPageNumber
        Text = ''
      end
      object LblUnidade: TRLLabel
        Left = 323
        Top = 5
        Width = 122
        Height = 16
        Caption = ' - Unidade Sorocaba'
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 57
        Width = 56
        Height = 16
        Caption = 'Carga N'#186
      end
      object RLLabel4: TRLLabel
        Left = 136
        Top = 57
        Width = 83
        Height = 16
        Caption = 'Transportador'
      end
      object RLLabel6: TRLLabel
        Left = 496
        Top = 57
        Width = 37
        Height = 16
        Caption = 'Placa'
      end
      object RLLabel7: TRLLabel
        Left = 592
        Top = 57
        Width = 75
        Height = 16
        Caption = 'Tipo Ve'#237'culo'
      end
      object RLDBText1: TRLDBText
        Left = 0
        Top = 73
        Width = 78
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'ID_CARGEXPE'
        DataSource = DSSAIDACARGA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 9
        Top = 72
        Width = 114
        Height = 16
        Alignment = taRightJustify
        DataField = 'ID_FORNECEDOR'
        DataSource = DSSAIDACARGA
        Text = ''
      end
      object RLLabel5: TRLLabel
        Left = 126
        Top = 72
        Width = 8
        Height = 16
        Caption = '-'
      end
      object RLDBText3: TRLDBText
        Left = 136
        Top = 72
        Width = 122
        Height = 16
        DataField = 'NM_FORNECEDOR'
        DataSource = DSSAIDACARGA
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 483
        Top = 72
        Width = 128
        Height = 16
        DataField = 'GN_PLACVEICTRAN'
        DataSource = DSSAIDACARGA
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 556
        Top = 72
        Width = 90
        Height = 16
        DataField = 'NM_TIPOVEIC'
        DataSource = DSSAIDACARGA
        Text = ''
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 197
      Width = 718
      Height = 271
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 112
        Top = 10
        Width = 46
        Height = 16
        DataField = 'ID_PEDIVEND'
        DataSource = DSSAIDACARGA
        Info = riCount
        Text = ''
      end
      object RLLabel14: TRLLabel
        Left = 0
        Top = 10
        Width = 109
        Height = 16
        Caption = 'Qtde. de Pedidos:'
      end
      object RLLabel15: TRLLabel
        Left = 328
        Top = 10
        Width = 84
        Height = 16
        Caption = 'Qtde. Caixas:'
      end
      object RLLabel16: TRLLabel
        Left = 540
        Top = 10
        Width = 70
        Height = 16
        Caption = 'Peso Total:'
      end
      object RLDBResult3: TRLDBResult
        Left = 622
        Top = 10
        Width = 92
        Height = 16
        AutoSize = False
        DataField = 'QN_PESOPEDIVEND'
        DataSource = DSSAIDACARGA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLMemo1: TRLMemo
        Left = 23
        Top = 44
        Width = 667
        Height = 48
        Behavior = [beSiteExpander]
        Lines.Strings = (
          
            'EU,  __________________________________________  , DECLARO QUE P' +
            'OSSUO HABILITA'#199#195'O V'#193'LIDA E COMPAT'#205'VEL PARA A CONDU'#199#195'O DESTE VE'#205'C' +
            'ULO, E QUE O MESMO EST'#193' ACOMPANHADO DE SEUS ACESS'#211'RIOS OBRIGAT'#211'R' +
            'IOS, MUNIDO DE DOCUMENTA'#199#195'O E EM CONDI'#199#195'O SEGURA DE VIAGEM.')
      end
      object RLLabel17: TRLLabel
        Left = 503
        Top = 134
        Width = 137
        Height = 16
        Caption = 'ASS. DO MOTORISTA'
      end
      object RLDraw1: TRLDraw
        Left = 461
        Top = 118
        Width = 225
        Height = 17
        DrawKind = dkLine
      end
      object RLLabel18: TRLLabel
        Left = 24
        Top = 107
        Width = 126
        Height = 16
        Caption = 'AUTORIZADO POR: '
      end
      object RLLabel19: TRLLabel
        Left = 21
        Top = 197
        Width = 128
        Height = 16
        Caption = 'ASS. DO PORTEIRO'
      end
      object RLDraw2: TRLDraw
        Left = 11
        Top = 182
        Width = 183
        Height = 17
        DrawKind = dkLine
      end
      object RLDraw3: TRLDraw
        Left = 10
        Top = 235
        Width = 183
        Height = 17
        DrawKind = dkLine
      end
      object RLLabel20: TRLLabel
        Left = 21
        Top = 249
        Width = 128
        Height = 16
        Caption = 'ASS. DO PORTEIRO'
      end
      object RLLabel21: TRLLabel
        Left = 209
        Top = 249
        Width = 92
        Height = 16
        Caption = 'KM CHEGADA'
      end
      object RLDraw4: TRLDraw
        Left = 208
        Top = 235
        Width = 95
        Height = 17
        DrawKind = dkLine
      end
      object RLLabel22: TRLLabel
        Left = 209
        Top = 197
        Width = 67
        Height = 16
        Caption = 'KM SA'#205'DA'
      end
      object RLDraw5: TRLDraw
        Left = 209
        Top = 182
        Width = 94
        Height = 17
        DrawKind = dkLine
      end
      object RLDraw6: TRLDraw
        Left = 321
        Top = 182
        Width = 110
        Height = 17
        DrawKind = dkLine
      end
      object RLLabel23: TRLLabel
        Left = 321
        Top = 197
        Width = 84
        Height = 16
        Caption = 'HORA SA'#205'DA'
      end
      object RLDraw7: TRLDraw
        Left = 321
        Top = 235
        Width = 111
        Height = 17
        DrawKind = dkLine
      end
      object RLLabel24: TRLLabel
        Left = 321
        Top = 248
        Width = 109
        Height = 16
        Caption = 'HORA CHEGADA'
      end
      object RLDraw8: TRLDraw
        Left = 459
        Top = 182
        Width = 113
        Height = 17
        DrawKind = dkLine
      end
      object RLLabel25: TRLLabel
        Left = 460
        Top = 197
        Width = 81
        Height = 16
        Caption = 'DATA SA'#205'DA'
      end
      object RLDraw9: TRLDraw
        Left = 459
        Top = 235
        Width = 114
        Height = 17
        DrawKind = dkLine
      end
      object RLLabel26: TRLLabel
        Left = 460
        Top = 248
        Width = 106
        Height = 16
        Caption = 'DATA CHEGADA'
      end
      object RLDraw10: TRLDraw
        Left = 165
        Top = 118
        Width = 225
        Height = 17
        DrawKind = dkLine
      end
      object RLLabel27: TRLLabel
        Left = 215
        Top = 134
        Width = 86
        Height = 16
        Caption = 'ASSINATURA'
      end
      object RLDBResult2: TRLDBResult
        Left = 418
        Top = 10
        Width = 73
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QN_EMBAPEDIVEND'
        DataSource = DSSAIDACARGA
        Info = riSum
        Text = ''
      end
    end
  end
  object QrSAIDACARGA: TOraQuery
    SQL.Strings = (
      '/*'
      ' SELECT DISTINCT EXPEDICAO_CARGA.EMPRESA,'
      '                 EXPEDICAO_CARGA.FILIAL,'
      '                 EXPEDICAO_CARGA.ID_CARGEXPE,'
      '                 EXPEDICAO_CARGA.GN_PLACVEICTRAN,'
      '                 EXPEDICAO_CARGA.FL_IMPRCARGEXPE,'
      '                 FORNECEDOR.ID_FORNECEDOR,'
      '                 FORNECEDOR.NM_FORNECEDOR,'
      '                 Pedido_venda.ID_PEDIVEND,'
      '                 PEDIDO_VENDA.QN_PESOPEDIVEND,'
      
        '                 (PEDIDO_VENDA.QN_PESOPEDIVEND + Pedido_venda.QN' +
        '_TARAPEDIVEND) QN_PESOBRUTPEDIVEND,'
      '                 PEDIDO_VENDA.QN_EMBAPEDIVEND,'
      '                 PEDIDO_VENDA.ID_CLIENTE,'
      '                 CLIENTE.NM_FANTCLIE,'
      '                 CLIENTE.NM_REDUCLIE,'
      '                 pedido_venda_tipo.nm_tipopedivend,'
      '                 CLIENTE.ID_SUBRLOGI,'
      '                 LOGISTICA_SUBREGIAO.NM_SUBRLOGI,'
      '                 PEDIDO_VENDA.FL_STATPEDIVEND,'
      '                 BAIRRO.NM_BAIRRO,'
      '                 CIDADE.NM_CIDADE,'
      '                 VEICULO_TIPO.NM_TIPOVEIC'
      '            FROM EXPEDICAO_CARGA,'
      '                 PEDIDO_VENDA,'
      '                 FORNECEDOR,'
      '                 CLIENTE,'
      '                 CLIENTE_ENDERECO,'
      '                 LOGISTICA_SUBREGIAO,'
      '                 BAIRRO,'
      '                 CIDADE,'
      '                 TRANSPORTADOR_VEICULO,'
      '                 VEICULO_TIPO,'
      '                 pedido_venda_tipo'
      
        '           WHERE (Expedicao_carga.ID_CARGEXPE = Pedido_venda.ID_' +
        'CARGEXPE(+))'
      
        '             AND (Expedicao_carga.ID_ITEMPROGCAMI = Fornecedor.I' +
        'D_FORNECEDOR)'
      '             AND (Pedido_venda.ID_CLIENTE = Cliente.ID_CLIENTE)'
      
        '             AND (Pedido_venda.ID_ENDECLIE_ENTREGA = Cliente_end' +
        'ereco.ID_ENDECLIE)'
      '             AND (Cliente_endereco.ID_BAIRRO = Bairro.ID_BAIRRO)'
      '             AND (Bairro.ID_CIDADE = Cidade.ID_CIDADE)'
      
        '             AND (Cliente.ID_SUBRLOGI = Logistica_subregiao.ID_S' +
        'UBRLOGI)'
      
        '             AND (Transportador_veiculo.gn_placveictran = Expedi' +
        'cao_carga.gn_placveictran)'
      
        '             AND (Transportador_veiculo.ID_TIPOVEIC = Veiculo_ti' +
        'po.ID_TIPOVEIC)'
      
        '             AND  Pedido_venda.id_tipopedivend = pedido_venda_ti' +
        'po.id_tipopedivend'
      
        '             AND  Fornecedor.ID_FORNECEDOR = Transportador_veicu' +
        'lo.id_fornecedor_transportador '
      '             AND  Expedicao_carga.ID_CARGEXPE = :VCARGA'
      '*/'
      ''
      ''
      ''
      'SELECT DISTINCT EXPEDICAO_CARGA.EMPRESA,'
      '                 EXPEDICAO_CARGA.FILIAL,'
      '                 EXPEDICAO_CARGA.ID_CARGEXPE,'
      '                 EXPEDICAO_CARGA.GN_PLACVEICTRAN,'
      '                 EXPEDICAO_CARGA.FL_IMPRCARGEXPE,'
      '                 FORNECEDOR.ID_FORNECEDOR,'
      '                 FORNECEDOR.NM_FORNECEDOR,'
      '                 Pedido_venda.ID_PEDIVEND,'
      '                 PEDIDO_VENDA.QN_PESOPEDIVEND,'
      
        '                 (PEDIDO_VENDA.QN_PESOPEDIVEND + Pedido_venda.QN' +
        '_TARAPEDIVEND) QN_PESOBRUTPEDIVEND,'
      '                 PEDIDO_VENDA.QN_EMBAPEDIVEND,'
      '                 PEDIDO_VENDA.ID_CLIENTE,'
      '                 CLIENTE.NM_FANTCLIE,'
      '                 CLIENTE.NM_REDUCLIE,'
      '                 pedido_venda_tipo.nm_tipopedivend,'
      '                 CLIENTE.ID_SUBRLOGI,'
      '                 LOGISTICA_SUBREGIAO.NM_SUBRLOGI,'
      '                 PEDIDO_VENDA.FL_STATPEDIVEND,'
      '                 BAIRRO.NM_BAIRRO,'
      '                 CIDADE.NM_CIDADE,'
      '                 VEICULO_TIPO.NM_TIPOVEIC,'
      ''
      '                 material_embalagem.id_prodmateemba,'
      '                 material_embalagem.nm_prodmateemba,'
      '                 pedido_venda_item.qn_embaitempedivend,'
      '                 pedido_venda_item.qn_pesoitempedivend'
      '                 '
      '            FROM EXPEDICAO_CARGA,'
      '                 PEDIDO_VENDA,'
      '                 FORNECEDOR,'
      '                 CLIENTE,'
      '                 CLIENTE_ENDERECO,'
      '                 LOGISTICA_SUBREGIAO,'
      '                 BAIRRO,'
      '                 CIDADE,'
      '                 TRANSPORTADOR_VEICULO,'
      '                 VEICULO_TIPO,'
      '                 pedido_venda_tipo,'
      '                 '
      '                 pedido_venda_item,'
      '                 material_embalagem'
      '                 '
      
        '           WHERE (Expedicao_carga.ID_CARGEXPE = Pedido_venda.ID_' +
        'CARGEXPE(+))'
      
        '             AND (Expedicao_carga.ID_ITEMPROGCAMI = Fornecedor.I' +
        'D_FORNECEDOR)'
      '             AND (Pedido_venda.ID_CLIENTE = Cliente.ID_CLIENTE)'
      
        '             AND (Pedido_venda.ID_ENDECLIE_ENTREGA = Cliente_end' +
        'ereco.ID_ENDECLIE)'
      '             AND (Cliente_endereco.ID_BAIRRO = Bairro.ID_BAIRRO)'
      '             AND (Bairro.ID_CIDADE = Cidade.ID_CIDADE)'
      
        '             AND (Cliente.ID_SUBRLOGI = Logistica_subregiao.ID_S' +
        'UBRLOGI)'
      
        '             AND (Transportador_veiculo.gn_placveictran = Expedi' +
        'cao_carga.gn_placveictran)'
      
        '             AND (Transportador_veiculo.ID_TIPOVEIC = Veiculo_ti' +
        'po.ID_TIPOVEIC)'
      
        '             AND  Pedido_venda.id_tipopedivend = pedido_venda_ti' +
        'po.id_tipopedivend'
      
        '             AND  Fornecedor.ID_FORNECEDOR = Transportador_veicu' +
        'lo.id_fornecedor_transportador '
      '             '
      
        '             and pedido_venda.id_pedivend = pedido_venda_item.id' +
        '_pedivend'
      
        '             and pedido_venda_item.id_mateemba = material_embala' +
        'gem.id_mateemba'
      '             '
      '             AND  Expedicao_carga.ID_CARGEXPE = 140337'
      'order by '
      '                 CLIENTE.NM_FANTCLIE,'
      '                 material_embalagem.id_prodmateemba'
      '            '
      '             '
      '             '
      '')
    Left = 8
    Top = 8
    object QrSAIDACARGAEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object QrSAIDACARGAFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object QrSAIDACARGAID_CARGEXPE: TFloatField
      FieldName = 'ID_CARGEXPE'
      Required = True
    end
    object QrSAIDACARGAGN_PLACVEICTRAN: TStringField
      FieldName = 'GN_PLACVEICTRAN'
      Size = 7
    end
    object QrSAIDACARGAFL_IMPRCARGEXPE: TStringField
      FieldName = 'FL_IMPRCARGEXPE'
      Required = True
      Size = 2
    end
    object QrSAIDACARGAID_FORNECEDOR: TFloatField
      FieldName = 'ID_FORNECEDOR'
      Required = True
    end
    object QrSAIDACARGANM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Required = True
      Size = 40
    end
    object QrSAIDACARGAID_PEDIVEND: TFloatField
      FieldName = 'ID_PEDIVEND'
    end
    object QrSAIDACARGAQN_PESOPEDIVEND: TFloatField
      FieldName = 'QN_PESOPEDIVEND'
    end
    object QrSAIDACARGAQN_PESOBRUTPEDIVEND: TFloatField
      FieldName = 'QN_PESOBRUTPEDIVEND'
    end
    object QrSAIDACARGAQN_EMBAPEDIVEND: TIntegerField
      FieldName = 'QN_EMBAPEDIVEND'
      DisplayFormat = '#,###,##'
    end
    object QrSAIDACARGAID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
    end
    object QrSAIDACARGANM_FANTCLIE: TStringField
      FieldName = 'NM_FANTCLIE'
      Required = True
      Size = 40
    end
    object QrSAIDACARGANM_REDUCLIE: TStringField
      FieldName = 'NM_REDUCLIE'
      Required = True
      Size = 15
    end
    object QrSAIDACARGANM_TIPOPEDIVEND: TStringField
      FieldName = 'NM_TIPOPEDIVEND'
      Required = True
      Size = 40
    end
    object QrSAIDACARGAID_SUBRLOGI: TFloatField
      FieldName = 'ID_SUBRLOGI'
      Required = True
    end
    object QrSAIDACARGANM_SUBRLOGI: TStringField
      FieldName = 'NM_SUBRLOGI'
      Required = True
      Size = 40
    end
    object QrSAIDACARGAFL_STATPEDIVEND: TStringField
      FieldName = 'FL_STATPEDIVEND'
      Size = 2
    end
    object QrSAIDACARGANM_BAIRRO: TStringField
      FieldName = 'NM_BAIRRO'
      Required = True
      Size = 30
    end
    object QrSAIDACARGANM_CIDADE: TStringField
      FieldName = 'NM_CIDADE'
      Required = True
      Size = 40
    end
    object QrSAIDACARGANM_TIPOVEIC: TStringField
      FieldName = 'NM_TIPOVEIC'
      Required = True
      Size = 40
    end
    object QrSAIDACARGAID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
    object QrSAIDACARGANM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
    object QrSAIDACARGAQN_EMBAITEMPEDIVEND: TFloatField
      FieldName = 'QN_EMBAITEMPEDIVEND'
      Required = True
    end
    object QrSAIDACARGAQN_PESOITEMPEDIVEND: TFloatField
      FieldName = 'QN_PESOITEMPEDIVEND'
      Required = True
    end
  end
  object DSSAIDACARGA: TOraDataSource
    DataSet = QrSAIDACARGA
    Left = 56
    Top = 8
  end
end
