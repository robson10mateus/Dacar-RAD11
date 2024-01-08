object FrmRelDoa: TFrmRelDoa
  Left = 359
  Top = 156
  Width = 731
  Height = 405
  HorzScrollBar.Position = 31
  HorzScrollBar.Range = 794
  VertScrollBar.Range = 1123
  Caption = 'Relat'#243'rio de Doa'#231#227'o e Bonifica'#231#227'o'
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
    Left = -31
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DSDoa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 280
        Top = 4
        Width = 66
        Height = 18
        Alignment = taRightJustify
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
        Left = 280
        Top = 24
        Width = 149
        Height = 18
        Caption = 'Relat'#243'rio de Doa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 40
        Width = 39
        Height = 16
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 634
        Top = 40
        Width = 35
        Height = 16
        Caption = 'P'#225'g.:'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 673
        Top = 40
        Width = 40
        Height = 16
        AutoSize = False
        Info = itPageNumber
        Text = ''
      end
      object LblUnidade: TRLLabel
        Left = 347
        Top = 5
        Width = 122
        Height = 16
        Caption = ' - Unidade Sorocaba'
      end
      object RLLabel13: TRLLabel
        Left = 245
        Top = 45
        Width = 52
        Height = 16
        Caption = 'Per'#237'odo:'
      end
      object DT1: TRLLabel
        Left = 304
        Top = 45
        Width = 68
        Height = 16
        Caption = '01/10/2004'
      end
      object RLLabel14: TRLLabel
        Left = 377
        Top = 45
        Width = 11
        Height = 16
        Caption = 'a'
      end
      object DT2: TRLLabel
        Left = 394
        Top = 45
        Width = 68
        Height = 16
        Caption = '01/12/2004'
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 207
      Width = 718
      Height = 156
      BandType = btSummary
      object RLDBResult3: TRLDBResult
        Left = 622
        Top = 11
        Width = 76
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLTOTAL'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel6: TRLLabel
        Left = 271
        Top = 10
        Width = 69
        Height = 16
        Caption = 'Total Final:'
      end
      object RLDraw1: TRLDraw
        Left = 417
        Top = 120
        Width = 193
        Height = 11
        DrawKind = dkLine
      end
      object RLLabel5: TRLLabel
        Left = 475
        Top = 133
        Width = 87
        Height = 15
        Caption = 'Visto do Diretor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLDBResult4: TRLDBResult
        Left = 348
        Top = 11
        Width = 76
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QN_PESOPADREXPEITEMPEDIVEND'
        DataSource = DSDoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 429
        Top = 11
        Width = 21
        Height = 15
        Alignment = taRightJustify
        Caption = 'Kg.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 592
        Top = 11
        Width = 19
        Height = 15
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup3: TRLGroup
      Left = 38
      Top = 105
      Width = 718
      Height = 102
      DataFields = 'ID_PEDIVEND'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 56
        BandType = btColumnHeader
        object RLLabel11: TRLLabel
          Left = 1
          Top = 4
          Width = 67
          Height = 15
          Caption = 'Dt. Entrega:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 137
          Top = 5
          Width = 45
          Height = 15
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 461
          Top = 5
          Width = 66
          Height = 15
          Caption = 'Autorizante:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 129
          Top = 21
          Width = 56
          Height = 15
          Caption = 'Digitador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 465
          Top = 21
          Width = 61
          Height = 15
          Caption = 'Expedidor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 71
          Top = 4
          Width = 61
          Height = 16
          AutoSize = False
          DataField = 'DT_ENTRPEDIVEND'
          DataSource = DSDoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 229
          Top = 6
          Width = 229
          Height = 14
          AutoSize = False
          DataField = 'NM_CLIENTE'
          DataSource = DSDoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 526
          Top = 6
          Width = 189
          Height = 14
          AutoSize = False
          DataField = 'AUTORIZANTE'
          DataSource = DSDoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 188
          Top = 22
          Width = 234
          Height = 14
          AutoSize = False
          DataField = 'DIGITADOR'
          DataSource = DSDoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText16: TRLDBText
          Left = 526
          Top = 21
          Width = 190
          Height = 14
          AutoSize = False
          DataField = 'EXPEDIDOR'
          DataSource = DSDoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw2: TRLDraw
          Left = -6
          Top = -1
          Width = 724
          Height = 6
          DrawKind = dkLine
        end
        object RLLabel23: TRLLabel
          Left = 1
          Top = 21
          Width = 45
          Height = 15
          Caption = 'Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 49
          Top = 22
          Width = 67
          Height = 14
          DataField = 'ID_PEDIVEND'
          DataSource = DSDoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText1: TRLDBText
          Left = 168
          Top = 6
          Width = 58
          Height = 14
          Alignment = taRightJustify
          DataField = 'ID_CLIENTE'
          DataSource = DSDoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel9: TRLLabel
          Left = 1
          Top = 38
          Width = 71
          Height = 15
          Caption = 'Obs.Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 76
          Top = 38
          Width = 629
          Height = 14
          AutoSize = False
          DataField = 'GN_OBSEPEDIVEND'
          DataSource = DSDoa
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
      object RLBand5: TRLBand
        Left = 0
        Top = 56
        Width = 718
        Height = 16
        object RLDBText18: TRLDBText
          Left = 65
          Top = 1
          Width = 273
          Height = 14
          AutoSize = False
          DataField = 'NM_PRODMATEEMBA'
          DataSource = DSDoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText19: TRLDBText
          Left = 341
          Top = 1
          Width = 84
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QN_PESOPADREXPEITEMPEDIVEND'
          DataSource = DSDoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText20: TRLDBText
          Left = 492
          Top = 1
          Width = 63
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VL_UNITITEMPEDIVEND'
          DataSource = DSDoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText21: TRLDBText
          Left = 613
          Top = 1
          Width = 86
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLTOTAL'
          DataSource = DSDoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel24: TRLLabel
          Left = 581
          Top = 1
          Width = 29
          Height = 15
          Caption = '= R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 429
          Top = 1
          Width = 21
          Height = 15
          Alignment = taRightJustify
          Caption = 'Kg.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 471
          Top = 1
          Width = 19
          Height = 15
          Caption = 'R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 3
          Top = 1
          Width = 59
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ID_PRODMATEEMBA'
          DataSource = DSDoa
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
      object RLBand8: TRLBand
        Left = 0
        Top = 72
        Width = 718
        Height = 23
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 623
          Top = 4
          Width = 76
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLTOTAL'
          DataSource = DSDoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel27: TRLLabel
          Left = 260
          Top = 3
          Width = 81
          Height = 16
          Caption = 'Total Pedido:'
        end
        object RLDBResult2: TRLDBResult
          Left = 348
          Top = 3
          Width = 76
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QN_PESOPADREXPEITEMPEDIVEND'
          DataSource = DSDoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel2: TRLLabel
          Left = 429
          Top = 3
          Width = 21
          Height = 15
          Alignment = taRightJustify
          Caption = 'Kg.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 591
          Top = 3
          Width = 19
          Height = 15
          Caption = 'R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object QrDoa: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  PEDIDO_VENDA.ID_TIPOPEDIVEND,'
      '  PEDIDO_VENDA.DT_ENTRPEDIVEND,'
      '  CLIENTE.NM_CLIENTE,'
      '  SISTEMA_USUARIO_c.NM_USUASIST AS AUTORIZANTE,'
      '  SISTEMA_USUARIO_a.NM_USUASIST AS DIGITADOR,'
      '  SISTEMA_USUARIO_b.NOME_USUARIO AS EXPEDIDOR,'
      '  MATERIAL_EMBALAGEM.NM_PRODMATEEMBA,'
      '  PEDIDO_VENDA_ITEM.QN_PESOPADREXPEITEMPEDIVEND,'
      '  PEDIDO_VENDA_ITEM.VL_UNITITEMPEDIVEND,'
      
        '  (PEDIDO_VENDA_ITEM.QN_PESOPADREXPEITEMPEDIVEND*PEDIDO_VENDA_IT' +
        'EM.VL_UNITITEMPEDIVEND) AS vltotal,'
      '  PEDIDO_VENDA_ITEM.ID_PEDIVEND,'
      '  MATERIAL_EMBALAGEM.ID_PRODMATEEMBA,'
      '  PEDIDO_VENDA.ID_CLIENTE,'
      '  PEDIDO_VENDA.GN_OBSEPEDIVEND'
      'FROM'
      '  PEDIDO_VENDA_ITEM,'
      '  PEDIDO_VENDA,'
      '  EXPEDICAO_CARGA,'
      '  CLIENTE,'
      '  MATERIAL_EMBALAGEM,'
      '  SISTEMA_USUARIO SISTEMA_USUARIO_a,'
      '  SCT_USUARIO     SISTEMA_USUARIO_b, '
      '  SISTEMA_USUARIO SISTEMA_USUARIO_c'
      'WHERE'
      
        '  ( PEDIDO_VENDA_ITEM.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND) AN' +
        'D'
      
        '  ( PEDIDO_VENDA_ITEM.ID_MATEEMBA = MATERIAL_EMBALAGEM.ID_MATEEM' +
        'BA) AND'
      '  ( PEDIDO_VENDA.ID_CARGEXPE = EXPEDICAO_CARGA.ID_CARGEXPE) AND'
      '  ( PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE) AND'
      
        '  ( PEDIDO_VENDA.ID_USUASIST_DIGIPEDIVEND = SISTEMA_USUARIO_a.ID' +
        '_USUASIST (+)) AND'
      
        '  ( EXPEDICAO_CARGA.ID_USUASIST_ABERTURA = SISTEMA_USUARIO_b.ID_' +
        'USUARIO (+)) AND'
      
        '  ( PEDIDO_VENDA.ID_USUASIST_AUTOPEDIVEND = SISTEMA_USUARIO_c.ID' +
        '_USUASIST (+)) AND'
      '  ( PEDIDO_VENDA.DT_ENTRPEDIVEND >= :DTINI) AND'
      '  ( PEDIDO_VENDA.DT_ENTRPEDIVEND <= :DTFIM) AND'
      '  ( PEDIDO_VENDA.ID_TIPOPEDIVEND = :VTIPO) AND'
      '  ( PEDIDO_VENDA.FILIAL = :FILIAL ) AND'
      ''
      '  PEDIDO_VENDA_ITEM.QN_PESOPADREXPEITEMPEDIVEND > 0'
      '')
    Left = 74
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DTINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VTIPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILIAL'
        Value = nil
      end>
    object QrDoaDT_ENTRPEDIVEND: TDateTimeField
      FieldName = 'DT_ENTRPEDIVEND'
      Required = True
    end
    object QrDoaNM_CLIENTE: TStringField
      FieldName = 'NM_CLIENTE'
      Required = True
      Size = 40
    end
    object QrDoaAUTORIZANTE: TStringField
      FieldName = 'AUTORIZANTE'
      Size = 40
    end
    object QrDoaDIGITADOR: TStringField
      FieldName = 'DIGITADOR'
      Size = 40
    end
    object QrDoaEXPEDIDOR: TStringField
      FieldName = 'EXPEDIDOR'
      Size = 40
    end
    object QrDoaNM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
    object QrDoaQN_PESOPADREXPEITEMPEDIVEND: TFloatField
      FieldName = 'QN_PESOPADREXPEITEMPEDIVEND'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object QrDoaVL_UNITITEMPEDIVEND: TFloatField
      FieldName = 'VL_UNITITEMPEDIVEND'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object QrDoaVLTOTAL: TFloatField
      FieldName = 'VLTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object QrDoaID_TIPOPEDIVEND: TFloatField
      FieldName = 'ID_TIPOPEDIVEND'
      Required = True
    end
    object QrDoaID_PEDIVEND: TFloatField
      FieldName = 'ID_PEDIVEND'
      Required = True
    end
    object QrDoaID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 3
    end
    object QrDoaID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object QrDoaGN_OBSEPEDIVEND: TStringField
      FieldName = 'GN_OBSEPEDIVEND'
      Size = 2000
    end
  end
  object DSDoa: TOraDataSource
    DataSet = QrDoa
    Left = 188
    Top = 6
  end
end
