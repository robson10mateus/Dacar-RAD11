object FrmRelFreteDevo: TFrmRelFreteDevo
  Left = 11
  Top = 113
  Width = 792
  Height = 543
  HorzScrollBar.Position = 9
  HorzScrollBar.Range = 802
  VertScrollBar.Range = 1123
  Caption = 'Relat'#243'rio de Frete Devolu'#231#227'o'
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
    Left = -1
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DSFrete
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
        Left = 216
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
        Left = 150
        Top = 23
        Width = 359
        Height = 18
        Caption = 'Confer'#234'ncia de Frete Devolu'#231#227'o por Transportador'
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
        Top = 46
        Width = 37
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 634
        Top = 45
        Width = 35
        Height = 16
        Caption = 'P'#225'g.:'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 673
        Top = 45
        Width = 40
        Height = 16
        AutoSize = False
        Info = itPageNumber
        Text = ''
      end
      object LblUnidade: TRLLabel
        Left = 291
        Top = 5
        Width = 122
        Height = 16
        Caption = ' - Unidade Sorocaba'
      end
      object RLLabel13: TRLLabel
        Left = 182
        Top = 45
        Width = 52
        Height = 16
        Caption = 'Per'#237'odo:'
      end
      object DT1: TRLLabel
        Left = 248
        Top = 45
        Width = 68
        Height = 16
        Caption = '01/10/2004'
      end
      object RLLabel14: TRLLabel
        Left = 321
        Top = 45
        Width = 11
        Height = 16
        Caption = 'a'
      end
      object DT2: TRLLabel
        Left = 338
        Top = 45
        Width = 68
        Height = 16
        Caption = '01/12/2004'
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 105
      Width = 718
      Height = 97
      DataFields = 'ID_FORNECEDOR'
      object RLBand7: TRLBand
        Left = 0
        Top = 52
        Width = 718
        Height = 17
        Color = clWhite
        ParentColor = False
        Transparent = False
        BeforePrint = RLBand7BeforePrint
        object RLDBText1: TRLDBText
          Left = 2
          Top = 0
          Width = 47
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ID_PEDIVEND'
          DataSource = DSFrete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 225
          Top = 0
          Width = 61
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DT_ENTRPEDIVEND'
          DataSource = DSFrete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 289
          Top = 0
          Width = 57
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'GN_PLACVEICTRAN'
          DataSource = DSFrete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 348
          Top = 0
          Width = 71
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLFATU'
          DataSource = DSFrete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 421
          Top = 0
          Width = 73
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PESOEXPEDIDO'
          DataSource = DSFrete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 496
          Top = 0
          Width = 84
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PESODEVOL'
          DataSource = DSFrete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 582
          Top = 0
          Width = 83
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLDEVO'
          DataSource = DSFrete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 666
          Top = 0
          Width = 50
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'FRETEBRUTO'
          DataSource = DSFrete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 51
          Top = 0
          Width = 48
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ID_PEDIDEVOVEND'
          DataSource = DSFrete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 101
          Top = 0
          Width = 122
          Height = 15
          AutoSize = False
          DataField = 'NM__FRETEPG'
          DataSource = DSFrete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 51
        Width = 718
        Height = 1
        AutoExpand = False
        Background.AutoSize = False
        Borders.Style = bsClear
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 51
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel35: TRLLabel
          Left = 182
          Top = 4
          Width = 84
          Height = 15
          Caption = 'Transportador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 316
          Top = 5
          Width = 315
          Height = 14
          AutoSize = False
          DataField = 'NM_FORNECEDOR'
          DataSource = DSFrete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 270
          Top = 5
          Width = 44
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ID_FORNECEDOR'
          DataSource = DSFrete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel36: TRLLabel
          Left = 0
          Top = 32
          Width = 52
          Height = 15
          Caption = 'P. Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 224
          Top = 32
          Width = 64
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'Dt. Entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel38: TRLLabel
          Left = 296
          Top = 32
          Width = 44
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'Ve'#237'culo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel39: TRLLabel
          Left = 349
          Top = 32
          Width = 68
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl. Faturado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel40: TRLLabel
          Left = 417
          Top = 32
          Width = 75
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Kg. Expedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel41: TRLLabel
          Left = 494
          Top = 32
          Width = 86
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Kg. Devolvido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel42: TRLLabel
          Left = 588
          Top = 32
          Width = 76
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl. Devolu'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel43: TRLLabel
          Left = 667
          Top = 32
          Width = 50
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl. Frete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 52
          Top = 32
          Width = 51
          Height = 15
          Caption = 'P. Devol.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 103
          Top = 32
          Width = 72
          Height = 15
          Caption = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 69
        Width = 718
        Height = 24
        BandType = btFooter
        BeforePrint = RLBand5BeforePrint
        object RLLabel6: TRLLabel
          Left = 232
          Top = 4
          Width = 55
          Height = 15
          Caption = 'Sub-total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLTFatu: TRLLabel
          Left = 347
          Top = 3
          Width = 71
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLTKGEXPED: TRLLabel
          Left = 420
          Top = 3
          Width = 74
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLKGDEVO: TRLLabel
          Left = 496
          Top = 3
          Width = 84
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLVLDEVO: TRLLabel
          Left = 582
          Top = 3
          Width = 83
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLVLFRETE: TRLLabel
          Left = 667
          Top = 3
          Width = 49
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
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
    object RLBand4: TRLBand
      Left = 38
      Top = 202
      Width = 718
      Height = 26
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand4BeforePrint
      object RLLabel2: TRLLabel
        Left = 228
        Top = 4
        Width = 59
        Height = 15
        Caption = 'Total final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLTGFatu: TRLLabel
        Left = 345
        Top = 3
        Width = 72
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLTGKGEXPED: TRLLabel
        Left = 419
        Top = 3
        Width = 74
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLTGKGDEVO: TRLLabel
        Left = 496
        Top = 3
        Width = 84
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLTGVLDEVO: TRLLabel
        Left = 582
        Top = 3
        Width = 83
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLTGVLFRETE: TRLLabel
        Left = 667
        Top = 3
        Width = 49
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
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
  object QrFrete: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  PEDIDO_VENDA.ID_PEDIVEND,'
      '  SISTEMA_PARAMETRO.PC_TOLEQUEBPARASIST,'
      '  (PEDIDO_VENDA.VL_PEDIVEND) AS VLPEDIDO,'
      '  (PEDIDO_VENDA.QN_PESOPADREXPEPEDIVEND) AS VLEXPEDIDO,'
      '  (PEDIDO_VENDA.QN_PESOREALEXPEPEDIVEND) AS PESOEXPEDIDO,'
      '  (PEDIDO_VENDA.VL_FATUPEDIVEND) AS VLFATU,'
      '  (PEDIDO_VENDA.VL_QUEBPEDIVEND) AS VLQUEBRA,'
      
        '  Nvl((CASE WHEN PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND=0 THEN PED' +
        'IDO_VENDA.QN_PESOREALDEVOPEDIVEND ELSE PEDIDO_VENDA.QN_PESOPADRD' +
        'EVOPEDIVEND END),0) AS PESODEVOL,'
      '  TRANSPORTADOR_VEICULO.GN_PLACVEICTRAN,'
      '  TRANSPORTADOR_VEICULO.QN_FATOFRETABATVEICTRAN,'
      '  FORNECEDOR.ID_FORNECEDOR,'
      '  FORNECEDOR.NM_FORNECEDOR,'
      
        '  FRETE_ABATIDO.VL_QUILFRETABAT * (logistica_subregiao.qn_fatofr' +
        'etabatsubrlogi-1) AS FTFRETE_SUBREGIAO,'
      
        '  (TRANSPORTADOR_VEICULO.QN_FATOFRETABATVEICTRAN*FRETE_ABATIDO.V' +
        'L_QUILFRETABAT) AS FTFRETE_VEICU,'
      
        '  (FRETE_ABATIDO.VL_QUILFRETABAT * (logistica_subregiao.qn_fatof' +
        'retabatsubrlogi-1) + (TRANSPORTADOR_VEICULO.QN_FATOFRETABATVEICT' +
        'RAN*FRETE_ABATIDO.VL_QUILFRETABAT)) AS VLMEDIKG,'
      
        '  (CASE WHEN (( Nvl(CLIENTE.pc_fretemax,0) * Nvl((CASE WHEN PEDI' +
        'DO_VENDA.QN_PESOPADRDEVOPEDIVEND=0 THEN PEDIDO_VENDA.QN_PESOREAL' +
        'DEVOPEDIVEND ELSE PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND END),0)) ' +
        '> 0 ) THEN (( Nvl(CLIENTE.pc_fretemax,0) * Nvl((CASE WHEN PEDIDO' +
        '_VENDA.QN_PESOPADRDEVOPEDIVEND=0 THEN PEDIDO_VENDA.QN_PESOREALDE' +
        'VOPEDIVEND ELSE PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND END),0)) ) ' +
        'ELSE (( Nvl((CASE WHEN PEDIDO_VENDA.QN_PESOPADRDEVOPEDIVEND=0 TH' +
        'EN PEDIDO_VENDA.QN_PESOREALDEVOPEDIVEND ELSE PEDIDO_VENDA.QN_PES' +
        'OPADRDEVOPEDIVEND END),0)) * (FRETE_ABATIDO.VL_QUILFRETABAT * (l' +
        'ogistica_subregiao.qn_fatofretabatsubrlogi-1) + (TRANSPORTADOR_V' +
        'EICULO.QN_FATOFRETABATVEICTRAN*FRETE_ABATIDO.VL_QUILFRETABAT))) ' +
        'END) AS FreteBruto,'
      '  PEDIDO_VENDA.DT_ENTRPEDIVEND,'
      '  PEDIDO_VENDA.VL_DEVOPEDIVEND AS VLDEVO,'
      '  PEDIDO_DEVOLUCAO_VENDA.ID_PEDIDEVOVEND,'
      '  PEDIDO_DEVOLUCAO_VENDA.ID_MOTOTRAN,'
      '  PEDIDO_DEVOLUCAO_VENDA.FL_FRETEPG,'
      '  PEDIDO_DEVOLUCAO_VENDA.NM__FRETEPG'
      'FROM'
      '  SISTEMA_PARAMETRO,'
      '  EXPEDICAO_CARGA,'
      '  PEDIDO_VENDA,'
      '  TRANSPORTADOR_VEICULO,'
      '  FORNECEDOR,'
      '  VEICULO_TIPO,'
      '  FRETE_ABATIDO,'
      '  CLIENTE,'
      '  LOGISTICA_SUBREGIAO,'
      '  PEDIDO_DEVOLUCAO_VENDA'
      'WHERE'
      '  EXPEDICAO_CARGA.ID_CARGEXPE = PEDIDO_VENDA.ID_CARGEXPE AND'
      '  EXPEDICAO_CARGA.ID_ITEMPROGCAMI = FORNECEDOR.ID_FORNECEDOR AND'
      
        '  EXPEDICAO_CARGA.GN_PLACVEICTRAN = TRANSPORTADOR_VEICULO.GN_PLA' +
        'CVEICTRAN AND'
      
        '  TRANSPORTADOR_VEICULO.ID_FORNECEDOR_TRANSPORTADOR = FORNECEDOR' +
        '.ID_FORNECEDOR AND'
      
        '  TRANSPORTADOR_VEICULO.ID_TIPOVEIC = VEICULO_TIPO.ID_TIPOVEIC A' +
        'ND'
      '  VEICULO_TIPO.ID_TIPOVEIC = FRETE_ABATIDO.ID_TIPOVEIC AND'
      '  PEDIDO_VENDA.ID_CLIENTE = CLIENTE.ID_CLIENTE AND'
      '  CLIENTE.ID_SUBRLOGI = LOGISTICA_SUBREGIAO.ID_SUBRLOGI AND'
      '  FORNECEDOR.ID_FORNECEDOR = :VFOR AND'
      '  PEDIDO_VENDA.DT_ENTRPEDIVEND BETWEEN :DTINI AND :DTFIM AND'
      '  EXPEDICAO_CARGA.FL_STATCARGEXPE <> '#39'NF'#39' AND'
      
        '  PEDIDO_DEVOLUCAO_VENDA.ID_PEDIVEND = PEDIDO_VENDA.ID_PEDIVEND ' +
        'AND'
      '  PEDIDO_DEVOLUCAO_VENDA.FL_FRETEPG = '#39'S'#39
      'ORDER BY'
      '  FORNECEDOR.ID_FORNECEDOR,'
      '  PEDIDO_VENDA.ID_PEDIVEND')
    Left = 90
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VFOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        Value = nil
      end>
    object QrFreteID_PEDIVEND: TFloatField
      FieldName = 'ID_PEDIVEND'
      Required = True
    end
    object QrFretePC_TOLEQUEBPARASIST: TFloatField
      FieldName = 'PC_TOLEQUEBPARASIST'
      DisplayFormat = '#,##0.000'
    end
    object QrFreteVLPEDIDO: TFloatField
      FieldName = 'VLPEDIDO'
      DisplayFormat = '#,##0.00'
    end
    object QrFreteVLEXPEDIDO: TFloatField
      FieldName = 'VLEXPEDIDO'
      DisplayFormat = '#,##0.00'
    end
    object QrFretePESOEXPEDIDO: TFloatField
      FieldName = 'PESOEXPEDIDO'
      DisplayFormat = '#,##0.000'
    end
    object QrFreteVLFATU: TFloatField
      FieldName = 'VLFATU'
      DisplayFormat = '#,##0.00'
    end
    object QrFreteVLQUEBRA: TFloatField
      FieldName = 'VLQUEBRA'
      DisplayFormat = '#,##0.00'
    end
    object QrFretePESODEVOL: TFloatField
      FieldName = 'PESODEVOL'
      DisplayFormat = '#,##0.000'
    end
    object QrFreteGN_PLACVEICTRAN: TStringField
      FieldName = 'GN_PLACVEICTRAN'
      Required = True
      Size = 7
    end
    object QrFreteQN_FATOFRETABATVEICTRAN: TFloatField
      FieldName = 'QN_FATOFRETABATVEICTRAN'
      Required = True
      DisplayFormat = '#,##0.000'
    end
    object QrFreteID_FORNECEDOR: TFloatField
      FieldName = 'ID_FORNECEDOR'
      Required = True
    end
    object QrFreteNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Required = True
      Size = 40
    end
    object QrFreteFTFRETE_SUBREGIAO: TFloatField
      FieldName = 'FTFRETE_SUBREGIAO'
      DisplayFormat = '#,##0.00'
    end
    object QrFreteFTFRETE_VEICU: TFloatField
      FieldName = 'FTFRETE_VEICU'
      DisplayFormat = '#,##0.00'
    end
    object QrFreteVLMEDIKG: TFloatField
      FieldName = 'VLMEDIKG'
      DisplayFormat = '#,##0.00'
    end
    object QrFreteFRETEBRUTO: TFloatField
      FieldName = 'FRETEBRUTO'
      DisplayFormat = '#,##0.00'
    end
    object QrFreteDT_ENTRPEDIVEND: TDateTimeField
      FieldName = 'DT_ENTRPEDIVEND'
      Required = True
    end
    object QrFreteVLDEVO: TFloatField
      FieldName = 'VLDEVO'
      DisplayFormat = '#,##0.00'
    end
    object QrFreteID_PEDIDEVOVEND: TFloatField
      FieldName = 'ID_PEDIDEVOVEND'
      Required = True
    end
    object QrFreteID_MOTOTRAN: TFloatField
      FieldName = 'ID_MOTOTRAN'
      Required = True
    end
    object QrFreteFL_FRETEPG: TStringField
      FieldName = 'FL_FRETEPG'
      Size = 1
    end
    object QrFreteNM__FRETEPG: TStringField
      FieldName = 'NM__FRETEPG'
      Size = 40
    end
  end
  object DSFrete: TOraDataSource
    DataSet = QrFrete
    Left = 132
    Top = 6
  end
end
