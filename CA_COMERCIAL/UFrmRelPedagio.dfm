object FrmRelPedagio: TFrmRelPedagio
  Left = 659
  Top = 113
  Width = 800
  Height = 551
  HorzScrollBar.Range = 794
  VertScrollBar.Range = 1123
  Caption = 'FrmRelPedagio'
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
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    object RLBand2: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 32
      BandType = btColumnHeader
      Transparent = False
      object RLLabel5: TRLLabel
        Left = 50
        Top = 10
        Width = 37
        Height = 16
        Caption = 'Placa'
      end
      object RLLabel6: TRLLabel
        Left = 124
        Top = 8
        Width = 84
        Height = 16
        Caption = 'Transportador'
      end
      object RLLabel7: TRLLabel
        Left = 406
        Top = 10
        Width = 103
        Height = 16
        Caption = 'Valor do Ped'#225'gio'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 153
      Width = 718
      Height = 26
      Transparent = False
      object RLDBText1: TRLDBText
        Left = 50
        Top = 4
        Width = 47
        Height = 16
        DataField = 'PLACA'
        DataSource = DS
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 124
        Top = 5
        Width = 278
        Height = 16
        AutoSize = False
        DataField = 'NOME'
        DataSource = DS
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 406
        Top = 5
        Width = 104
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VL_PEDAGIO'
        DataSource = DS
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 83
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 248
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
        Left = 248
        Top = 24
        Width = 260
        Height = 17
        Caption = 'Relat'#243'rio de Ped'#225'gio por Transportador'
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
        Top = 48
        Width = 39
        Height = 16
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 634
        Top = 48
        Width = 35
        Height = 16
        Caption = 'P'#225'g.:'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 673
        Top = 48
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
        Left = 248
        Top = 48
        Width = 58
        Height = 17
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object Dt1: TRLLabel
        Left = 311
        Top = 49
        Width = 24
        Height = 16
      end
      object Dt2: TRLLabel
        Left = 411
        Top = 49
        Width = 24
        Height = 16
      end
      object RLLabel8: TRLLabel
        Left = 388
        Top = 48
        Width = 12
        Height = 17
        Caption = 'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
    end
    object RLLabel4: TRLLabel
      Left = 40
      Top = 1088
      Width = 52
      Height = 16
      Caption = 'Usu'#225'rio:'
    end
    object lblusuario: TRLLabel
      Left = 96
      Top = 1088
      Width = 59
      Height = 16
    end
  end
  object DS: TOraDataSource
    DataSet = Qr
    Left = 16
    Top = 32
  end
  object Qr: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT '
      '  EXPEDICAO_CARGA.gn_placveictran PLACA,'
      '  fornecedor.nm_fornecedor NOME,'
      
        '  Sum(transportador_veiculo.eixos * CA_PEDAGIO.VALOR_EIXO) VL_PE' +
        'DAGIO'
      'FROM'
      '  EXPEDICAO_CARGA,'
      '  PEDIDO_VENDA,'
      '  CLIENTE,'
      '  ca_pedagio_subregiao,'
      '  CA_PEDAGIO,'
      '  transportador_veiculo,'
      '  fornecedor'
      'WHERE'
      '      EXPEDICAO_CARGA.ID_CARGEXPE = PEDIDO_VENDA.ID_CARGEXPE  '
      '  AND PEDIDO_VENDA.id_cliente = CLIENTE.id_cliente'
      '  AND CLIENTE.id_subrlogi = ca_pedagio_subregiao.id_subrlogi '
      '  AND ca_pedagio_subregiao.id_pedagio = CA_PEDAGIO.id_pedagio'
      
        '  AND EXPEDICAO_CARGA.gn_placveictran =  transportador_veiculo.g' +
        'n_placveictran'
      
        '  AND EXPEDICAO_CARGA.id_itemprogcami = transportador_veiculo.id' +
        '_fornecedor_transportador'
      
        '  AND transportador_veiculo.id_fornecedor_transportador = fornec' +
        'edor.id_fornecedor'
      '  AND EXPEDICAO_CARGA.dt_cargexpe BETWEEN :DTINI AND :DTFIM'
      '  AND fornecedor.fl_tranautoforn = '#39'S'#39
      
        'GROUP BY EXPEDICAO_CARGA.gn_placveictran,fornecedor.nm_fornecedo' +
        'r'
      '')
    Left = 16
    Top = 64
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
      end>
    object QrPLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object QrNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
    object QrVL_PEDAGIO: TFloatField
      FieldName = 'VL_PEDAGIO'
      DisplayFormat = '##0.00'
    end
  end
end
