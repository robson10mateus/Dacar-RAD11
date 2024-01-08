object FrmRelNFRacao66: TFrmRelNFRacao66
  Left = 361
  Top = 144
  Width = 792
  Height = 543
  HorzScrollBar.Range = 794
  VertScrollBar.Position = 78
  VertScrollBar.Range = 605
  Caption = 'FrmRelNFRacao66'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 15
  object RL_Notas: TRLReport
    Left = 0
    Top = -97
    Width = 794
    Height = 624
    Margins.LeftMargin = 0.000000000000000000
    Margins.TopMargin = 0.000000000000000000
    Margins.RightMargin = 0.000000000000000000
    Margins.BottomMargin = 0.000000000000000000
    DataSource = dtsItemNotaFisc
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 165.000000000000000000
    BeforePrint = RL_NotasBeforePrint
    object RLBand1: TRLBand
      Left = 0
      Top = 0
      Width = 794
      Height = 197
      BandType = btColumnHeader
      object qrlNotaFiscSaid: TRLLabel
        Left = 412
        Top = 27
        Width = 11
        Height = 16
        Caption = 'X'
      end
      object qrlNotaFiscEntr: TRLLabel
        Left = 499
        Top = 27
        Width = 11
        Height = 16
        Caption = 'X'
      end
      object qrlNumeNotaCabe: TRLLabel
        Left = 622
        Top = 27
        Width = 68
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 13
        Top = 87
        Width = 127
        Height = 13
        AutoSize = False
        DataField = 'NM_NATUOPERNOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Tahoma'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 176
        Top = 87
        Width = 51
        Height = 13
        AutoSize = False
        DataField = 'NR_CFOP_NOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Tahoma'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 13
        Top = 111
        Width = 128
        Height = 14
        DataField = 'NM_DESTREMENOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object qrtCNPJCPF: TRLDBText
        Left = 444
        Top = 111
        Width = 99
        Height = 14
        DataField = 'NR_CNPJNOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 599
        Top = 111
        Width = 96
        Height = 14
        Alignment = taRightJustify
        DataField = 'DT_EMISNOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 13
        Top = 135
        Width = 101
        Height = 14
        DataField = 'GN_ENDENOTAFISC'
        DataSource = dtsNotaFisc
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
        Left = 388
        Top = 134
        Width = 99
        Height = 14
        DataField = 'NM_BAIRNOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 512
        Top = 134
        Width = 93
        Height = 14
        DataField = 'NR_CEPNOTAFISC'
        DataSource = dtsNotaFisc
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
        Left = 598
        Top = 134
        Width = 97
        Height = 14
        Alignment = taRightJustify
        DataField = 'DT_SAIDNOTAFISC'
        DataSource = dtsNotaFisc
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
        Left = 13
        Top = 158
        Width = 99
        Height = 14
        DataField = 'NM_CIDANOTAFISC'
        DataSource = dtsNotaFisc
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
        Left = 264
        Top = 158
        Width = 101
        Height = 14
        DataField = 'NR_FONENOTAFISC'
        DataSource = dtsNotaFisc
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
        Left = 387
        Top = 158
        Width = 22
        Height = 14
        AutoSize = False
        DataField = 'SG_ESTANOTAFISC'
        DataSource = dtsNotaFisc
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
        Left = 460
        Top = 159
        Width = 82
        Height = 14
        DataField = 'NR_IENOTAFISC'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLEnd: TRLLabel
        Left = 160
        Top = 27
        Width = 176
        Height = 14
        Caption = 'Rodovia Raposo Tavares, Km 176,8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLBairro: TRLLabel
        Left = 160
        Top = 43
        Width = 153
        Height = 14
        Caption = 'Bairro: Pinhal - itapetininga - SP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLCepFone: TRLLabel
        Left = 160
        Top = 59
        Width = 213
        Height = 14
        Caption = 'CEP: 18.201-012 - Fone/Fax: (15) 271-1018'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLCnpj: TRLLabel
        Left = 445
        Top = 65
        Width = 100
        Height = 14
        Caption = '58.852.518/0011-05'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLIe: TRLLabel
        Left = 453
        Top = 88
        Width = 84
        Height = 14
        Caption = '371.191.901.118'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
    end
    object RLDBText22: TRLDBText
      Left = 23
      Top = 313
      Width = 675
      Height = 14
      AutoSize = False
      DataField = 'GN_OBSEEXPEPEDIVEND'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText24: TRLDBText
      Left = 10
      Top = 366
      Width = 132
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VL_FRETNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText27: TRLDBText
      Left = 161
      Top = 366
      Width = 115
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VL_SEGUNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText28: TRLDBText
      Left = 288
      Top = 366
      Width = 129
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VL_OUTRDESPNOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLDBText29: TRLDBText
      Left = 437
      Top = 366
      Width = 111
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VL_IPINOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object qrlNumeNotaRoda: TRLLabel
      Left = 734
      Top = 22
      Width = 42
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
    end
    object RLDBMemo1: TRLDBMemo
      Left = 17
      Top = 455
      Width = 305
      Height = 110
      AutoSize = False
      Behavior = [beSiteExpander]
      DataField = 'GN_OBSENOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
    end
    object RLDBText4: TRLDBText
      Left = 589
      Top = 366
      Width = 116
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VL_NOTAFISC'
      DataSource = dtsNotaFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      Text = ''
    end
    object RLBand2: TRLBand
      Left = 0
      Top = 197
      Width = 794
      Height = 114
      AutoExpand = False
      AutoSize = True
      Completion = ctMaxBands
      object RLDBMemo2: TRLDBMemo
        Left = 23
        Top = 1
        Width = 675
        Height = 113
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'GN_OBSEPEDIVEND'
        DataSource = dtsNotaFisc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object qryNotaFisc: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT'
      '  Nota_fiscal.EMPRESA,'
      '  Nota_fiscal.FILIAL,'
      '  Nota_fiscal.ID_NOTAFISC,'
      '  Nota_fiscal.SG_SERINOTAFISC_NOTAFISC,'
      '  Nota_fiscal.FL_TIPONOTAFISC,'
      '  Nota_fiscal.DT_EMISNOTAFISC,'
      '  Nota_fiscal.DT_SAIDNOTAFISC,'
      '  Nota_fiscal.NR_CFOP_NOTAFISC,'
      '  Nota_fiscal.NM_NATUOPERNOTAFISC,'
      '  Nota_fiscal.ID_CLIENTE,'
      '  Nota_fiscal.ID_FORNECEDOR,'
      '  Nota_fiscal.NM_DESTREMENOTAFISC,'
      '  Nota_fiscal.GN_ENDENOTAFISC,'
      '  Nota_fiscal.NM_BAIRNOTAFISC,'
      '  Nota_fiscal.NR_CEPNOTAFISC,'
      '  Nota_fiscal.NM_CIDANOTAFISC,'
      '  Nota_fiscal.SG_ESTANOTAFISC,'
      '  Nota_fiscal.NM_PAISNOTAFISC,'
      '  Nota_fiscal.NR_FONENOTAFISC,'
      '  Nota_fiscal.NR_CNPJNOTAFISC,'
      '  Nota_fiscal.NR_CPFNOTAFISC,'
      '  Nota_fiscal.NR_IENOTAFISC,'
      '  Nota_fiscal.NR_RGNOTAFISC,'
      '  Nota_fiscal.VL_BASEICMSNOTAFISC,'
      '  Nota_fiscal.VL_ICMSNOTAFISC,'
      '  Nota_fiscal.VL_SEGUNOTAFISC,'
      '  Nota_fiscal.VL_OUTRDESPNOTAFISC,'
      '  Nota_fiscal.VL_IPINOTAFISC,'
      '  Nota_fiscal.VL_NOTAFISC,'
      '  Nota_fiscal.VL_BASEIPINOTAFISC,'
      '  Nota_fiscal.NM_TRANSPORTADOR_NOTAFISC,'
      '  Nota_fiscal.GN_PLACVEICNOTAFISC,'
      '  Nota_fiscal.NM_ENDETRANNOTAFISC,'
      '  Nota_fiscal.NM_CIDATRANNOTAFISC,'
      '  Nota_fiscal.SG_ESTATRANNOTAFISC,'
      '  Nota_fiscal.NR_CNPJTRANNOTAFISC,'
      '  Nota_fiscal.NR_CPFTRANNOTAFISC,'
      '  Nota_fiscal.NR_IETRANNOTAFISC,'
      '  Nota_fiscal.NR_RGTRANNOTAFISC,'
      '  Nota_fiscal.QN_VOLUNOTAFISC,'
      '  Nota_fiscal.GN_ESPENOTAFISC,'
      '  Nota_fiscal.GN_MARCNOTAFISC,'
      '  Nota_fiscal.NR_VOLUNOTAFISC,'
      '  Nota_fiscal.QN_PESOBRUTNOTAFISC,'
      '  Nota_fiscal.QN_PESOLIQUNOTAFISC,'
      '  Nota_fiscal.GN_ENDEENTRNOTAFISC,'
      '  Nota_fiscal.NM_BAIRENTRNOTAFISC,'
      '  Nota_fiscal.NM_CIDAENTRNOTAFISC,'
      '  Nota_fiscal.SG_ESTAENTRNOTAFISC,'
      '  Nota_fiscal.GN_CEPENTRNOTAFISC,'
      '  Nota_fiscal.FL_PESSNOTAFISC,'
      '  Nota_fiscal.FL_PESSTRANNOTAFISC,'
      '  Nota_fiscal.FL_TIPOFRETNOTAFISC,'
      '  Nota_fiscal.PC_ICMSFRETNOTAFISC,'
      '  Nota_fiscal.VL_ICMSFRETNOTAFISC,'
      '  Nota_fiscal.DT_PROCNOTAFISC,'
      '  Nota_fiscal.VL_DEVOIPINOTAFISC,'
      '  Nota_fiscal.FL_ZONAFRANNOTAFISC,'
      '  Nota_fiscal.FL_IMPRNOTAFISC,'
      '  Nota_fiscal.FL_CANCNOTAFISC,'
      '  Nota_fiscal.FL_EXPONOTAFISC,'
      '  Nota_fiscal.VL_IPIISENNOTAFISC,'
      '  Nota_fiscal.VL_IPIOUTRNOTAFISC,'
      '  Nota_fiscal.GN_OBSENOTAFISC,'
      '  Nota_fiscal.VL_DESCPEDIVEND_NOTAFISC,'
      '  Nota_fiscal.VL_PRODNOTAFISC,'
      '  Nota_fiscal.SG_ESTAPLACVEICNOTAFISC,'
      '  Nota_fiscal.VL_FRETNOTAFISC,'
      '  Nota_fiscal.FX_NOTAFISC,'
      '  Nota_fiscal.NR_NOTAFISC,'
      '  Nota_fiscal.GN_OBSDESCNOTAFISC,'
      '  PEDIDO_VENDA.GN_OBSEPEDIVEND,'
      '  PEDIDO_VENDA.GN_OBSEEXPEPEDIVEND'
      'FROM'
      '  NOTA_FISCAL Nota_fiscal,'
      '  PEDIDO_VENDA_NOTA_FISCAL Pedido_venda_nota_fiscal,'
      '  PEDIDO_VENDA'
      'WHERE'
      '  (Pedido_venda_nota_fiscal.ID_PEDIVEND = :pi_pedivend) AND'
      
        '  (Pedido_venda_nota_fiscal.ID_NOTAFISC = Nota_fiscal.ID_NOTAFIS' +
        'C) AND'
      '  (Nota_fiscal.FL_CANCNOTAFISC = :VCANCEL) AND'
      
        '  PEDIDO_VENDA.ID_PEDIVEND = Pedido_venda_nota_fiscal.ID_PEDIVEN' +
        'D')
    Left = 432
    Top = 435
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pi_pedivend'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VCANCEL'
        Value = nil
      end>
    object qryNotaFiscEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object qryNotaFiscFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object qryNotaFiscID_NOTAFISC: TFloatField
      FieldName = 'ID_NOTAFISC'
      Required = True
    end
    object qryNotaFiscSG_SERINOTAFISC_NOTAFISC: TStringField
      FieldName = 'SG_SERINOTAFISC_NOTAFISC'
      Required = True
      Size = 3
    end
    object qryNotaFiscFL_TIPONOTAFISC: TStringField
      FieldName = 'FL_TIPONOTAFISC'
      Required = True
      Size = 1
    end
    object qryNotaFiscDT_EMISNOTAFISC: TDateTimeField
      FieldName = 'DT_EMISNOTAFISC'
      Required = True
    end
    object qryNotaFiscDT_SAIDNOTAFISC: TDateTimeField
      FieldName = 'DT_SAIDNOTAFISC'
      Required = True
    end
    object qryNotaFiscNR_CFOP_NOTAFISC: TStringField
      FieldName = 'NR_CFOP_NOTAFISC'
      Required = True
      Size = 4
    end
    object qryNotaFiscNM_NATUOPERNOTAFISC: TStringField
      FieldName = 'NM_NATUOPERNOTAFISC'
      Required = True
      Size = 40
    end
    object qryNotaFiscID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
    end
    object qryNotaFiscID_FORNECEDOR: TFloatField
      FieldName = 'ID_FORNECEDOR'
    end
    object qryNotaFiscNM_DESTREMENOTAFISC: TStringField
      FieldName = 'NM_DESTREMENOTAFISC'
      Required = True
      Size = 40
    end
    object qryNotaFiscGN_ENDENOTAFISC: TStringField
      FieldName = 'GN_ENDENOTAFISC'
      Required = True
      Size = 60
    end
    object qryNotaFiscNM_BAIRNOTAFISC: TStringField
      FieldName = 'NM_BAIRNOTAFISC'
      Size = 40
    end
    object qryNotaFiscNR_CEPNOTAFISC: TStringField
      FieldName = 'NR_CEPNOTAFISC'
      Size = 8
    end
    object qryNotaFiscNM_CIDANOTAFISC: TStringField
      FieldName = 'NM_CIDANOTAFISC'
      Size = 40
    end
    object qryNotaFiscSG_ESTANOTAFISC: TStringField
      FieldName = 'SG_ESTANOTAFISC'
      Size = 2
    end
    object qryNotaFiscNM_PAISNOTAFISC: TStringField
      FieldName = 'NM_PAISNOTAFISC'
      Size = 40
    end
    object qryNotaFiscNR_FONENOTAFISC: TStringField
      FieldName = 'NR_FONENOTAFISC'
      Size = 14
    end
    object qryNotaFiscNR_CNPJNOTAFISC: TStringField
      FieldName = 'NR_CNPJNOTAFISC'
      Size = 19
    end
    object qryNotaFiscNR_CPFNOTAFISC: TStringField
      FieldName = 'NR_CPFNOTAFISC'
      Size = 14
    end
    object qryNotaFiscNR_IENOTAFISC: TStringField
      FieldName = 'NR_IENOTAFISC'
    end
    object qryNotaFiscNR_RGNOTAFISC: TStringField
      FieldName = 'NR_RGNOTAFISC'
    end
    object qryNotaFiscVL_BASEICMSNOTAFISC: TFloatField
      FieldName = 'VL_BASEICMSNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_ICMSNOTAFISC: TFloatField
      FieldName = 'VL_ICMSNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_SEGUNOTAFISC: TFloatField
      FieldName = 'VL_SEGUNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_OUTRDESPNOTAFISC: TFloatField
      FieldName = 'VL_OUTRDESPNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_IPINOTAFISC: TFloatField
      FieldName = 'VL_IPINOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_NOTAFISC: TFloatField
      FieldName = 'VL_NOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_BASEIPINOTAFISC: TFloatField
      FieldName = 'VL_BASEIPINOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscNM_TRANSPORTADOR_NOTAFISC: TStringField
      FieldName = 'NM_TRANSPORTADOR_NOTAFISC'
      Size = 40
    end
    object qryNotaFiscGN_PLACVEICNOTAFISC: TStringField
      FieldName = 'GN_PLACVEICNOTAFISC'
      Size = 10
    end
    object qryNotaFiscNM_ENDETRANNOTAFISC: TStringField
      FieldName = 'NM_ENDETRANNOTAFISC'
      Size = 60
    end
    object qryNotaFiscNM_CIDATRANNOTAFISC: TStringField
      FieldName = 'NM_CIDATRANNOTAFISC'
      Size = 40
    end
    object qryNotaFiscSG_ESTATRANNOTAFISC: TStringField
      FieldName = 'SG_ESTATRANNOTAFISC'
      Size = 2
    end
    object qryNotaFiscNR_CNPJTRANNOTAFISC: TStringField
      FieldName = 'NR_CNPJTRANNOTAFISC'
      Size = 19
    end
    object qryNotaFiscNR_CPFTRANNOTAFISC: TStringField
      FieldName = 'NR_CPFTRANNOTAFISC'
      Size = 14
    end
    object qryNotaFiscNR_IETRANNOTAFISC: TStringField
      FieldName = 'NR_IETRANNOTAFISC'
    end
    object qryNotaFiscNR_RGTRANNOTAFISC: TStringField
      FieldName = 'NR_RGTRANNOTAFISC'
    end
    object qryNotaFiscQN_VOLUNOTAFISC: TIntegerField
      FieldName = 'QN_VOLUNOTAFISC'
      DisplayFormat = '###,##0.00'
    end
    object qryNotaFiscGN_ESPENOTAFISC: TStringField
      FieldName = 'GN_ESPENOTAFISC'
      Size = 40
    end
    object qryNotaFiscGN_MARCNOTAFISC: TStringField
      FieldName = 'GN_MARCNOTAFISC'
      Size = 40
    end
    object qryNotaFiscNR_VOLUNOTAFISC: TIntegerField
      FieldName = 'NR_VOLUNOTAFISC'
    end
    object qryNotaFiscQN_PESOBRUTNOTAFISC: TFloatField
      FieldName = 'QN_PESOBRUTNOTAFISC'
      DisplayFormat = '###,##0.00'
    end
    object qryNotaFiscQN_PESOLIQUNOTAFISC: TFloatField
      FieldName = 'QN_PESOLIQUNOTAFISC'
      DisplayFormat = '###,##0.00'
    end
    object qryNotaFiscGN_ENDEENTRNOTAFISC: TStringField
      FieldName = 'GN_ENDEENTRNOTAFISC'
      Size = 60
    end
    object qryNotaFiscNM_BAIRENTRNOTAFISC: TStringField
      FieldName = 'NM_BAIRENTRNOTAFISC'
      Size = 40
    end
    object qryNotaFiscNM_CIDAENTRNOTAFISC: TStringField
      FieldName = 'NM_CIDAENTRNOTAFISC'
      Size = 40
    end
    object qryNotaFiscSG_ESTAENTRNOTAFISC: TStringField
      FieldName = 'SG_ESTAENTRNOTAFISC'
      Size = 2
    end
    object qryNotaFiscGN_CEPENTRNOTAFISC: TStringField
      FieldName = 'GN_CEPENTRNOTAFISC'
      Size = 8
    end
    object qryNotaFiscFL_PESSNOTAFISC: TStringField
      FieldName = 'FL_PESSNOTAFISC'
      Size = 1
    end
    object qryNotaFiscFL_PESSTRANNOTAFISC: TStringField
      FieldName = 'FL_PESSTRANNOTAFISC'
      Size = 1
    end
    object qryNotaFiscFL_TIPOFRETNOTAFISC: TStringField
      FieldName = 'FL_TIPOFRETNOTAFISC'
      Size = 1
    end
    object qryNotaFiscPC_ICMSFRETNOTAFISC: TFloatField
      FieldName = 'PC_ICMSFRETNOTAFISC'
      DisplayFormat = '###,##0.00'
    end
    object qryNotaFiscVL_ICMSFRETNOTAFISC: TFloatField
      FieldName = 'VL_ICMSFRETNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscDT_PROCNOTAFISC: TDateTimeField
      FieldName = 'DT_PROCNOTAFISC'
    end
    object qryNotaFiscVL_DEVOIPINOTAFISC: TFloatField
      FieldName = 'VL_DEVOIPINOTAFISC'
      DisplayFormat = '#,###,###.00'
    end
    object qryNotaFiscFL_ZONAFRANNOTAFISC: TStringField
      FieldName = 'FL_ZONAFRANNOTAFISC'
      Size = 1
    end
    object qryNotaFiscFL_IMPRNOTAFISC: TStringField
      FieldName = 'FL_IMPRNOTAFISC'
      Size = 1
    end
    object qryNotaFiscFL_CANCNOTAFISC: TStringField
      FieldName = 'FL_CANCNOTAFISC'
      Size = 1
    end
    object qryNotaFiscFL_EXPONOTAFISC: TStringField
      FieldName = 'FL_EXPONOTAFISC'
      Size = 1
    end
    object qryNotaFiscVL_IPIISENNOTAFISC: TFloatField
      FieldName = 'VL_IPIISENNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_IPIOUTRNOTAFISC: TFloatField
      FieldName = 'VL_IPIOUTRNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscGN_OBSENOTAFISC: TStringField
      FieldName = 'GN_OBSENOTAFISC'
      Size = 400
    end
    object qryNotaFiscVL_DESCPEDIVEND_NOTAFISC: TFloatField
      FieldName = 'VL_DESCPEDIVEND_NOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscVL_PRODNOTAFISC: TFloatField
      FieldName = 'VL_PRODNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscSG_ESTAPLACVEICNOTAFISC: TStringField
      FieldName = 'SG_ESTAPLACVEICNOTAFISC'
      Size = 2
    end
    object qryNotaFiscVL_FRETNOTAFISC: TFloatField
      FieldName = 'VL_FRETNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryNotaFiscFX_NOTAFISC: TStringField
      FieldName = 'FX_NOTAFISC'
      Required = True
      Size = 1
    end
    object qryNotaFiscNR_NOTAFISC: TFloatField
      FieldName = 'NR_NOTAFISC'
      Required = True
    end
    object qryNotaFiscGN_OBSDESCNOTAFISC: TStringField
      FieldName = 'GN_OBSDESCNOTAFISC'
      Size = 60
    end
    object qryNotaFiscGN_OBSEPEDIVEND: TStringField
      FieldName = 'GN_OBSEPEDIVEND'
      Size = 2000
    end
    object qryNotaFiscGN_OBSEEXPEPEDIVEND: TStringField
      FieldName = 'GN_OBSEEXPEPEDIVEND'
      Size = 2000
    end
  end
  object qryItemNotaFisc: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT EMPRESA,'
      '       FILIAL,'
      '       ID_ITEMNOTAFISC,'
      '       ID_NOTAFISC,'
      '       ID_MATERIAL,'
      '       ID_EMBALAGEM,'
      '       ID_MATEEMBA,'
      '       NM_MATERIAL_ITEMNOTAFISC,'
      '       NR_CLASFISC_ITEMNOTAFISC,'
      '       SG_UNIDMEDI_ITEMNOTAFISC,'
      '       QN_EMBAITEMNOTAFISC,'
      '       QN_PESOITEMNOTAFISC,'
      '       VL_UNITITEMNOTAFISC,'
      '       VL_UNITBRUTITEMNOTAFISC,       '
      '       PC_ICMSITEMNOTAFISC,'
      '       PC_IPIITEMNOTAFISC,'
      '       PC_REDUICMSITEMNOTAFISC,'
      '       VL_IPIITEMNOTAFISC,'
      '       VL_ICMSITEMNOTAFISC,'
      '       FL_LEGECLASITEMNOTAFISC,'
      '       ID_PRODMATEEMBA_ITEMNOTAFISC,'
      '       VL_DESCICMSITEMNOTAFISC,'
      '       VL_ITEMNOTAFISC,'
      '       VL_BRUTITEMNOTAFISC,'
      '       FX_ITEMNOTAFISC,'
      '       NR_CFOP_ITEMNOTAFISC,'
      '       NM_NATUOPERCFOP_ITEMNF,'
      '       FL_SITUTRIBICMS_ITEMNOTAFISC,'
      '       NM_SITUTRIBICMSITEMNOTAFISC'
      '  FROM NOTA_FISCAL_ITEM Nota_fiscal_item'
      ' WHERE Nota_fiscal_item.ID_NOTAFISC = :id_notafisc')
    MasterSource = dtsNotaFisc
    MasterFields = 'ID_NOTAFISC'
    DetailFields = 'id_notafisc'
    Left = 464
    Top = 436
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_notafisc'
        Value = nil
      end>
    object qryItemNotaFiscEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 2
    end
    object qryItemNotaFiscFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object qryItemNotaFiscID_ITEMNOTAFISC: TFloatField
      FieldName = 'ID_ITEMNOTAFISC'
      Required = True
    end
    object qryItemNotaFiscID_NOTAFISC: TFloatField
      FieldName = 'ID_NOTAFISC'
      Required = True
    end
    object qryItemNotaFiscID_MATERIAL: TFloatField
      FieldName = 'ID_MATERIAL'
      Required = True
    end
    object qryItemNotaFiscID_EMBALAGEM: TFloatField
      FieldName = 'ID_EMBALAGEM'
      Required = True
    end
    object qryItemNotaFiscID_MATEEMBA: TFloatField
      FieldName = 'ID_MATEEMBA'
      Required = True
    end
    object qryItemNotaFiscNM_MATERIAL_ITEMNOTAFISC: TStringField
      FieldName = 'NM_MATERIAL_ITEMNOTAFISC'
      Required = True
      Size = 40
    end
    object qryItemNotaFiscNR_CLASFISC_ITEMNOTAFISC: TStringField
      FieldName = 'NR_CLASFISC_ITEMNOTAFISC'
      Size = 8
    end
    object qryItemNotaFiscSG_UNIDMEDI_ITEMNOTAFISC: TStringField
      FieldName = 'SG_UNIDMEDI_ITEMNOTAFISC'
      Required = True
      Size = 3
    end
    object qryItemNotaFiscQN_EMBAITEMNOTAFISC: TIntegerField
      FieldName = 'QN_EMBAITEMNOTAFISC'
      Required = True
      DisplayFormat = '#,###,##0.00'
    end
    object qryItemNotaFiscQN_PESOITEMNOTAFISC: TFloatField
      FieldName = 'QN_PESOITEMNOTAFISC'
      Required = True
      DisplayFormat = '#,###,##0.00'
    end
    object qryItemNotaFiscVL_UNITITEMNOTAFISC: TFloatField
      FieldName = 'VL_UNITITEMNOTAFISC'
      Required = True
      DisplayFormat = '###,###,##0.00###'
    end
    object qryItemNotaFiscVL_UNITBRUTITEMNOTAFISC: TFloatField
      FieldName = 'VL_UNITBRUTITEMNOTAFISC'
      DisplayFormat = '###,###,##0.00###'
    end
    object qryItemNotaFiscPC_ICMSITEMNOTAFISC: TFloatField
      FieldName = 'PC_ICMSITEMNOTAFISC'
      Required = True
    end
    object qryItemNotaFiscPC_IPIITEMNOTAFISC: TFloatField
      FieldName = 'PC_IPIITEMNOTAFISC'
      Required = True
      DisplayFormat = '#,###,##0.00'
    end
    object qryItemNotaFiscPC_REDUICMSITEMNOTAFISC: TFloatField
      FieldName = 'PC_REDUICMSITEMNOTAFISC'
      Required = True
      DisplayFormat = '#,###,##0.00'
    end
    object qryItemNotaFiscVL_IPIITEMNOTAFISC: TFloatField
      FieldName = 'VL_IPIITEMNOTAFISC'
      Required = True
      DisplayFormat = '###,###,##0.00'
    end
    object qryItemNotaFiscVL_ICMSITEMNOTAFISC: TFloatField
      FieldName = 'VL_ICMSITEMNOTAFISC'
      Required = True
      DisplayFormat = '###,###,##0.00'
    end
    object qryItemNotaFiscFL_LEGECLASITEMNOTAFISC: TIntegerField
      FieldName = 'FL_LEGECLASITEMNOTAFISC'
    end
    object qryItemNotaFiscID_PRODMATEEMBA_ITEMNOTAFISC: TStringField
      FieldName = 'ID_PRODMATEEMBA_ITEMNOTAFISC'
      Required = True
      Size = 3
    end
    object qryItemNotaFiscVL_DESCICMSITEMNOTAFISC: TFloatField
      FieldName = 'VL_DESCICMSITEMNOTAFISC'
      Required = True
      DisplayFormat = '###,###,##0.00'
    end
    object qryItemNotaFiscVL_ITEMNOTAFISC: TFloatField
      FieldName = 'VL_ITEMNOTAFISC'
      Required = True
      DisplayFormat = '###,###,##0.00###'
    end
    object qryItemNotaFiscVL_BRUTITEMNOTAFISC: TFloatField
      FieldName = 'VL_BRUTITEMNOTAFISC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryItemNotaFiscFX_ITEMNOTAFISC: TStringField
      FieldName = 'FX_ITEMNOTAFISC'
      Required = True
      Size = 1
    end
    object qryItemNotaFiscNR_CFOP_ITEMNOTAFISC: TStringField
      FieldName = 'NR_CFOP_ITEMNOTAFISC'
      Size = 4
    end
    object qryItemNotaFiscNM_NATUOPERCFOP_ITEMNF: TStringField
      FieldName = 'NM_NATUOPERCFOP_ITEMNF'
      Size = 40
    end
    object qryItemNotaFiscFL_SITUTRIBICMS_ITEMNOTAFISC: TStringField
      FieldName = 'FL_SITUTRIBICMS_ITEMNOTAFISC'
      Size = 3
    end
    object qryItemNotaFiscNM_SITUTRIBICMSITEMNOTAFISC: TStringField
      FieldName = 'NM_SITUTRIBICMSITEMNOTAFISC'
      Size = 40
    end
  end
  object dtsNotaFisc: TOraDataSource
    DataSet = qryNotaFisc
    Left = 424
    Top = 467
  end
  object dtsItemNotaFisc: TOraDataSource
    DataSet = qryItemNotaFisc
    Left = 464
    Top = 468
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 400
    Top = 428
  end
  object RLHTML: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 352
    Top = 444
  end
end
