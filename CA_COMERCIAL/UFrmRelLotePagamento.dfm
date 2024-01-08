object FrmRelLotePagamento: TFrmRelLotePagamento
  Left = 377
  Top = 203
  Width = 853
  Height = 555
  HorzScrollBar.Range = 794
  VertScrollBar.Range = 1123
  Caption = 'Relat'#243'rio de Pagamento do Lote'
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
    Margins.TopMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = Ds_Fechamento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLB_Cabecalho: TRLBand
      Left = 38
      Top = 19
      Width = 718
      Height = 78
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 158
        Top = 0
        Width = 402
        Height = 22
        Align = faCenterTop
        Caption = 'FICHA PARA PAGAMENTO DO INTEGRADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 19
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 5
        Top = 41
        Width = 83
        Height = 16
        Caption = 'INTEGRADO:'
      end
      object RLLabel3: TRLLabel
        Left = 271
        Top = 24
        Width = 82
        Height = 16
        Caption = 'DATA ALOJ :'
      end
      object RLDBText1: TRLDBText
        Left = 94
        Top = 41
        Width = 283
        Height = 16
        AutoSize = False
        DataField = 'NM_FORNECEDOR'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 6
        Top = 24
        Width = 41
        Height = 16
        Caption = 'LOTE:'
      end
      object RLDBText3: TRLDBText
        Left = 50
        Top = 24
        Width = 56
        Height = 16
        DataField = 'ID_LOTE'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 73
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
      object RLDBText2: TRLDBText
        Left = 357
        Top = 24
        Width = 130
        Height = 16
        Alignment = taJustify
        AutoSize = False
        DataField = 'DATA_ALOJAMENTO'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLLabel34: TRLLabel
        Left = 111
        Top = 24
        Width = 58
        Height = 16
        Caption = 'STATUS:'
      end
      object RLDBText24: TRLDBText
        Left = 175
        Top = 24
        Width = 54
        Height = 16
        DataField = 'STATUS'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLLabel35: TRLLabel
        Left = 492
        Top = 24
        Width = 85
        Height = 16
        Caption = 'DATA FECH :'
      end
      object RLDBText25: TRLDBText
        Left = 583
        Top = 24
        Width = 130
        Height = 16
        AutoSize = False
        DataField = 'DT_FECHAMENTO'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLLabel36: TRLLabel
        Left = 503
        Top = 41
        Width = 41
        Height = 16
        Caption = 'CNPJ:'
      end
      object RLDBText26: TRLDBText
        Left = 549
        Top = 41
        Width = 164
        Height = 16
        AutoSize = False
        DataField = 'CNPJ'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText31: TRLDBText
        Left = 378
        Top = 41
        Width = 117
        Height = 16
        AutoSize = False
        DataField = 'DESC_NUCLEO'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLLabel43: TRLLabel
        Left = 5
        Top = 58
        Width = 57
        Height = 16
        Caption = 'BAIRRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLDBText34: TRLDBText
        Left = 65
        Top = 58
        Width = 165
        Height = 16
        AutoSize = False
        DataField = 'NM_BAIRFORN'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLLabel44: TRLLabel
        Left = 232
        Top = 58
        Width = 56
        Height = 16
        Caption = 'CIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLDBText35: TRLDBText
        Left = 290
        Top = 58
        Width = 202
        Height = 16
        AutoSize = False
        DataField = 'NM_CIDADE'
        DataSource = Ds_Fechamento
        Text = ''
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 211
      object RLLabel5: TRLLabel
        Left = 4
        Top = 6
        Width = 112
        Height = 16
        Caption = '01 - Aves Alojadas'
      end
      object RLLabel6: TRLLabel
        Left = 4
        Top = 41
        Width = 113
        Height = 16
        Caption = '03 - Aves Abatidas'
      end
      object RLLabel7: TRLLabel
        Left = 4
        Top = 59
        Width = 97
        Height = 16
        Caption = '04 - Mortalidade'
      end
      object RLLabel8: TRLLabel
        Left = 4
        Top = 78
        Width = 84
        Height = 16
        Caption = '05 - Diferen'#231'a'
      end
      object RLLabel9: TRLLabel
        Left = 4
        Top = 98
        Width = 99
        Height = 16
        Caption = '06 - Peso M'#233'dio'
      end
      object RLLabel10: TRLLabel
        Left = 4
        Top = 116
        Width = 99
        Height = 16
        Caption = '07 - Idade (Dias)'
      end
      object RLLabel11: TRLLabel
        Left = 4
        Top = 134
        Width = 117
        Height = 16
        Caption = '08 - Viabilidade (%)'
      end
      object RLLabel12: TRLLabel
        Left = 4
        Top = 152
        Width = 110
        Height = 16
        Caption = '09 - Total Receber'
      end
      object RLLabel13: TRLLabel
        Left = 315
        Top = 24
        Width = 114
        Height = 16
        Caption = '13- Valor Pintainho'
      end
      object RLLabel14: TRLLabel
        Left = 315
        Top = 61
        Width = 136
        Height = 16
        Caption = '15 - Ra'#231#227'o Consumida'
      end
      object RLLabel15: TRLLabel
        Left = 315
        Top = 79
        Width = 109
        Height = 16
        Caption = '16 - Total de Kilos'
      end
      object RLLabel16: TRLLabel
        Left = 315
        Top = 98
        Width = 121
        Height = 16
        Caption = '17 - Conv. Alimentar'
      end
      object RLLabel17: TRLLabel
        Left = 315
        Top = 118
        Width = 125
        Height = 16
        Caption = '18 - Ganho Peso Dia'
      end
      object RLLabel18: TRLLabel
        Left = 315
        Top = 136
        Width = 63
        Height = 16
        Caption = '19 - I.E.P.'
      end
      object RLLabel19: TRLLabel
        Left = 315
        Top = 170
        Width = 113
        Height = 16
        Caption = '21 - Pre'#231'o Por Ave'
      end
      object RLDBText4: TRLDBText
        Left = 125
        Top = 6
        Width = 80
        Height = 16
        DataField = 'AVES_ALOJ'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 125
        Top = 41
        Width = 82
        Height = 16
        DataField = 'AVES_ABAT'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 125
        Top = 59
        Width = 96
        Height = 16
        DataField = 'MORTALIDADE'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 125
        Top = 78
        Width = 68
        Height = 16
        DataField = 'DIF_MORT'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 125
        Top = 98
        Width = 90
        Height = 16
        DataField = 'PESO_MEDIO'
        DataSource = Ds_Fechamento
        DisplayMask = '##0.00'
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 125
        Top = 116
        Width = 43
        Height = 16
        DataField = 'IDADE'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 125
        Top = 134
        Width = 83
        Height = 16
        DataField = 'VIABILIDADE'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText11: TRLDBText
        Left = 125
        Top = 152
        Width = 72
        Height = 16
        DataField = 'VL_PAGTO'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLLabel20: TRLLabel
        Left = 5
        Top = 170
        Width = 96
        Height = 16
        Caption = '10 - Pagamento'
      end
      object RLDBText12: TRLDBText
        Left = 125
        Top = 170
        Width = 90
        Height = 16
        DataField = 'DATA_PAGTO'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText13: TRLDBText
        Left = 457
        Top = 24
        Width = 123
        Height = 16
        DataField = 'VALOR_PINTAINHO'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText14: TRLDBText
        Left = 457
        Top = 61
        Width = 135
        Height = 16
        DataField = 'RACAO_CONSUMIDA'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText15: TRLDBText
        Left = 457
        Top = 79
        Width = 55
        Height = 16
        DataField = 'TOT_KG'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText16: TRLDBText
        Left = 457
        Top = 98
        Width = 121
        Height = 16
        DataField = 'CONV_ALIMENTAR'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText17: TRLDBText
        Left = 457
        Top = 118
        Width = 123
        Height = 16
        DataField = 'GANHO_PESO_DIA'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText18: TRLDBText
        Left = 457
        Top = 136
        Width = 25
        Height = 16
        DataField = 'IEP'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDBText19: TRLDBText
        Left = 457
        Top = 170
        Width = 84
        Height = 16
        DataField = 'PRECO_AVE'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 206
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel37: TRLLabel
        Left = 4
        Top = 24
        Width = 104
        Height = 16
        Caption = '02 - Origem Aves'
      end
      object RLDBText27: TRLDBText
        Left = 125
        Top = 24
        Width = 189
        Height = 16
        AutoSize = False
        DataField = 'ORIGEM_AVES'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLLabel38: TRLLabel
        Left = 315
        Top = 42
        Width = 129
        Height = 16
        Caption = '14- Linhagem do Lote'
      end
      object RLDBText28: TRLDBText
        Left = 457
        Top = 42
        Width = 114
        Height = 16
        DataField = 'DESC_LINHAGEM'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLLabel39: TRLLabel
        Left = 5
        Top = 189
        Width = 123
        Height = 16
        Caption = '11- Mort. 1'#170' Semana'
      end
      object RLDBText29: TRLDBText
        Left = 129
        Top = 190
        Width = 143
        Height = 16
        DataField = 'MORT_PRIM_SEMANA'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLLabel40: TRLLabel
        Left = 315
        Top = 153
        Width = 70
        Height = 16
        Caption = '20 - Regi'#227'o'
      end
      object RLDBText30: TRLDBText
        Left = 457
        Top = 152
        Width = 106
        Height = 16
        DataField = 'NOME_TECNICO'
        DataSource = Ds_Fechamento
        Text = ''
      end
      object RLLabel41: TRLLabel
        Left = 315
        Top = 5
        Width = 133
        Height = 16
        Caption = '12- Ra'#231#227'o Retorndada'
      end
      object RLDBText32: TRLDBText
        Left = 457
        Top = 5
        Width = 103
        Height = 16
        DataField = 'SOBRA_RACAO'
        DataSource = Ds_Fechamento
        Text = ''
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 308
      Width = 718
      Height = 70
      DataSource = Ds_LanctoAcr
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 32
        BandType = btColumnHeader
        object RLLabel21: TRLLabel
          Left = 258
          Top = 0
          Width = 202
          Height = 16
          Caption = 'ACR'#201'SCIMOS AO PAGAMENTO'
        end
        object RLLabel22: TRLLabel
          Left = 16
          Top = 15
          Width = 62
          Height = 16
          Caption = 'Descri'#231#227'o'
        end
        object RLLabel23: TRLLabel
          Left = 494
          Top = 15
          Width = 34
          Height = 16
          Caption = 'Valor'
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 32
        Width = 718
        Height = 20
        object RLDBText21: TRLDBText
          Left = 16
          Top = 2
          Width = 81
          Height = 16
          DataField = 'DESC_LANC'
          DataSource = Ds_LanctoAcr
          Text = ''
        end
        object RLDBText22: TRLDBText
          Left = 441
          Top = 2
          Width = 89
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALOR_LANC'
          DataSource = Ds_LanctoAcr
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 52
        Width = 718
        Height = 21
        BandType = btColumnFooter
        object RLLabel24: TRLLabel
          Left = 366
          Top = 1
          Width = 49
          Height = 16
          Caption = 'TOTAL:'
        end
        object RLDBResult1: TRLDBResult
          Left = 404
          Top = 1
          Width = 128
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALOR_LANC'
          DataSource = Ds_LanctoAcr
          Info = riSum
          Text = ''
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 17
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 448
      Width = 718
      Height = 640
      BandType = btFooter
      object RLLabel25: TRLLabel
        Left = 304
        Top = -96
        Width = 65
        Height = 16
      end
      object RLLabel27: TRLLabel
        Left = 56
        Top = 579
        Width = 88
        Height = 16
        Caption = 'Administra'#231#227'o'
      end
      object RLLabel28: TRLLabel
        Left = 264
        Top = 0
        Width = 189
        Height = 16
        Align = faCenterTop
        Caption = 'RELAT'#211'RIO DO SUPERVISOR'
      end
      object RLLabel29: TRLLabel
        Left = 303
        Top = 579
        Width = 64
        Height = 16
        Alignment = taCenter
        Caption = 'Supervisor'
      end
      object RLLabel30: TRLLabel
        Left = 584
        Top = 579
        Width = 78
        Height = 16
        Caption = 'Sr. Integrado'
      end
      object RLDraw4: TRLDraw
        Left = 3
        Top = 23
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw5: TRLDraw
        Left = 3
        Top = 53
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw6: TRLDraw
        Left = 2
        Top = 112
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw7: TRLDraw
        Left = 3
        Top = 83
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw8: TRLDraw
        Left = 2
        Top = 170
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw9: TRLDraw
        Left = 2
        Top = 141
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw10: TRLDraw
        Left = 2
        Top = 346
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw11: TRLDraw
        Left = 2
        Top = 317
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw12: TRLDraw
        Left = 2
        Top = 288
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw13: TRLDraw
        Left = 2
        Top = 259
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw14: TRLDraw
        Left = 2
        Top = 229
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw15: TRLDraw
        Left = 2
        Top = 199
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw16: TRLDraw
        Left = 2
        Top = 375
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw17: TRLDraw
        Left = 2
        Top = 404
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw18: TRLDraw
        Left = 2
        Top = 461
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw19: TRLDraw
        Left = 2
        Top = 432
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw20: TRLDraw
        Left = 2
        Top = 489
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw21: TRLDraw
        Left = 2
        Top = 518
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
      object RLDraw22: TRLDraw
        Left = 2
        Top = 547
        Width = 714
        Height = 30
        Anchors = [fkLeft, fkRight]
        DrawKind = dkLine
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 38
      Top = 378
      Width = 718
      Height = 70
      DataSource = Ds_LanctoDesc
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 31
        BandType = btColumnHeader
        object RLLabel26: TRLLabel
          Left = 261
          Top = 2
          Width = 195
          Height = 16
          Caption = 'DESCONTOS AO PAGAMENTO'
        end
        object RLLabel31: TRLLabel
          Left = 16
          Top = 14
          Width = 62
          Height = 16
          Caption = 'Descri'#231#227'o'
        end
        object RLLabel32: TRLLabel
          Left = 493
          Top = 14
          Width = 34
          Height = 16
          Caption = 'Valor'
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 31
        Width = 718
        Height = 20
        object RLDBText20: TRLDBText
          Left = 16
          Top = 2
          Width = 81
          Height = 16
          DataField = 'DESC_LANC'
          DataSource = Ds_LanctoDesc
          Text = ''
        end
        object RLDBText23: TRLDBText
          Left = 441
          Top = 2
          Width = 89
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALOR_LANC'
          DataSource = Ds_LanctoDesc
          Text = ''
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 51
        Width = 718
        Height = 19
        BandType = btColumnFooter
        object RLLabel33: TRLLabel
          Left = 366
          Top = 2
          Width = 49
          Height = 16
          Caption = 'TOTAL:'
        end
        object RLDBResult2: TRLDBResult
          Left = 404
          Top = 2
          Width = 128
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALOR_LANC'
          DataSource = Ds_LanctoDesc
          Info = riSum
          Text = ''
        end
        object RLDraw23: TRLDraw
          Left = 0
          Top = 15
          Width = 718
          Height = 4
          Align = faBottom
          DrawKind = dkLine
        end
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 702
    Top = 7
  end
  object Qr_Fechamento: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_RETIRADA'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_NOTAFISC, QTD_AVESABAT, PESO_AVE' +
        'S, TURMA)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_NOTAFISC, :QTD_AVESABAT, :PE' +
        'SO_AVES, :TURMA)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_RETIRADA'
      'SET'
      '  QTD_AVESABAT = :QTD_AVESABAT,'
      '  PESO_AVES = :PESO_AVES,'
      '  TURMA = :TURMA'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE and'
      '  ID_NOTAFISC = :OLD_ID_NOTAFISC')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_RETIRADA'
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LOTE = :ID_LOTE and'
      '  ID_NOTAFISC = :ID_NOTAFISC')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      ' Select A.ID_LOTE , A.DATA_ALOJAMENTO , A.FL_STATUS,'
      '        CASE A.FL_STATUS  WHEN  '#39'AB'#39' THEN '#39'ABERTO'#39' '
      '                          WHEN  '#39'PR'#39' THEN '#39'PREVIS'#195'O'#39'          '
      '                          WHEN  '#39'FE'#39' THEN '#39'FECHADO'#39' '
      '                          WHEN  '#39'CN'#39' THEN '#39'CANCELADO'#39
      '                         END STATUS,'
      
        '        F.NM_FORNECEDOR, A.QTD_ALOJ AVES_ALOJ , A.AVES_ABAT, A.T' +
        'OT_KG,'
      '        A.QTD_ALOJ - A.AVES_ABAT Mortalidade,'
      '        A.MORTALIDADE - (A.QTD_ALOJ - A.AVES_ABAT)  DIF_MORT,'
      '        A.PESO_MEDIO, A.IDADE,   '
      '        ROUND(A.AVES_ABAT / A.QTD_ALOJ * 100 , 1) VIABILIDADE,'
      '        CASE A.FL_STATUS  WHEN  '#39'FE'#39' THEN A.VL_PAGTO_FINAL  '
      '                          ELSE A.VL_PAGTO END VL_PAGTO ,'
      '        A.DATA_PAGTO, A.SOBRA_RACAO, A.CONV_ALIMENTAR,'
      '        A.GANHO_PESO_DIA, A.IEP,'
      '        CASE A.FL_STATUS  WHEN  '#39'FE'#39' THEN A.PRECO_AVE_FINAL'
      '                          ELSE A.PRECO_AVE END PRECO_AVE ,'
      '        A.TOTAL_RACAO - A.SOBRA_RACAO RACAO_CONSUMIDA,'
      '        A.DT_FECHAMENTO, F.NR_CNPJFORN CNPJ, IT.ID_TECNICO, '
      '       IT.NOME_TECNICO, LIN.DESC_LINHAGEM, ORI.Origem_Aves,  '
      '       A.MORT_PRIM_SEMANA,  NG.DESC_NUCLEO, '
      '     ORI.VALOR_PINTAINHO, F.NM_BAIRFORN , C.NM_CIDADE'
      '   From INTEGRADO_ALOJAMENTO A'
      '  Inner Join Integrado I'
      '     On I.ID_INTEGRADO = A.ID_INTEGRADO'
      '  Inner Join INTEGRADO_TECNICO IT '
      '      On I.ID_TECNICO = IT.ID_TECNICO'
      '  Inner Join Fornecedor F'
      '     on I.ID_FORNECEDOR = F.ID_FORNECEDOR   '
      ' LEFT JOIN CIDADE C'
      '   ON F.ID_CIDADE = C.ID_CIDADE'
      '  Left join NUCLEO_GALPAO NG'
      '    On A.ID_NUCLEO = NG.ID_NUCLEO   '
      '  Left Join (  SELECT ID_LOTE, DESC_LINHAGEM '
      
        '                  FROM (    SELECT ROW_NUMBER() OVER (ORDER BY S' +
        'UM(AF.QUANTIDADE) desc  ) AS RNO , '
      
        '                                   AF.ID_LINHAGEM, L.DESC_LINHAG' +
        'EM, SUM(AF.QUANTIDADE) QTD,'
      '                                   AF.ID_LOTE'
      
        '                              FROM INTEGRADO_ALOJAMENTO_FORNEC A' +
        'F'
      '                             Inner JOIN INTEGRADO_LINHAGEM L'
      
        '                                On AF.ID_LINHAGEM = L.ID_LINHAGE' +
        'M '
      '                             Where AF.ID_LOTE = :ID_LOTE'
      
        '                             GROUP BY AF.ID_LOTE, AF.ID_LINHAGEM' +
        ', L.DESC_LINHAGEM'
      '                             ORDER BY QTD DESC  ) '
      '                  WHERE RNO = 1 ) LIN'
      '    On A.ID_LOTE = LIN.ID_LOTE'
      
        '  Left Join ( SELECT ID_LOTE , NM_FORNECEDOR Origem_Aves, VALOR_' +
        'PINTAINHO'
      
        '                FROM ( SELECT ROW_NUMBER() OVER (ORDER BY SUM(AF' +
        '.QUANTIDADE) desc  ) AS RNO , '
      
        '                               F.ID_FORNECEDOR , F.NM_FORNECEDOR' +
        ', SUM(AF.QUANTIDADE) QTD,'
      
        '                               AF.ID_LOTE, MAX(AF.VALOR_PINTAINH' +
        'O) VALOR_PINTAINHO'
      '                          FROM INTEGRADO_ALOJAMENTO_FORNEC AF'
      '                         Inner JOIN Fornecedor  F'
      
        '                            On AF.ID_FORNECEDOR = F.ID_FORNECEDO' +
        'R '
      '                         Where AF.ID_LOTE = :ID_LOTE'
      
        '                         GROUP BY AF.ID_LOTE, F.ID_FORNECEDOR , ' +
        'F.NM_FORNECEDOR'
      '                         ORDER BY QTD DESC  )'
      '                 WHERE RNO = 1  ) ORI'
      '     On A.ID_LOTE = ORI.ID_LOTE'
      '  Where A.ID_LOTE = :ID_LOTE'
      ' ')
    FetchAll = True
    Left = 632
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_FechamentoID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_FechamentoDATA_ALOJAMENTO: TDateTimeField
      FieldName = 'DATA_ALOJAMENTO'
    end
    object Qr_FechamentoFL_STATUS: TStringField
      FieldName = 'FL_STATUS'
      Size = 2
    end
    object Qr_FechamentoNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Required = True
      Size = 40
    end
    object Qr_FechamentoAVES_ALOJ: TFloatField
      FieldName = 'AVES_ALOJ'
      DisplayFormat = '#,###'
    end
    object Qr_FechamentoAVES_ABAT: TFloatField
      FieldName = 'AVES_ABAT'
      DisplayFormat = '#,###'
    end
    object Qr_FechamentoTOT_KG: TFloatField
      FieldName = 'TOT_KG'
      DisplayFormat = '#,###'
    end
    object Qr_FechamentoMORTALIDADE: TFloatField
      FieldName = 'MORTALIDADE'
      DisplayFormat = '#,###'
    end
    object Qr_FechamentoDIF_MORT: TFloatField
      FieldName = 'DIF_MORT'
      DisplayFormat = '#,###'
    end
    object Qr_FechamentoPESO_MEDIO: TFloatField
      FieldName = 'PESO_MEDIO'
      DisplayFormat = '0.000'
    end
    object Qr_FechamentoIDADE: TFloatField
      FieldName = 'IDADE'
    end
    object Qr_FechamentoVIABILIDADE: TFloatField
      FieldName = 'VIABILIDADE'
      DisplayFormat = '0.0'
    end
    object Qr_FechamentoVL_PAGTO: TFloatField
      FieldName = 'VL_PAGTO'
      DisplayFormat = '#,##0.00'
    end
    object Qr_FechamentoDATA_PAGTO: TDateTimeField
      FieldName = 'DATA_PAGTO'
    end
    object Qr_FechamentoSOBRA_RACAO: TFloatField
      FieldName = 'SOBRA_RACAO'
      DisplayFormat = '#,##0'
    end
    object Qr_FechamentoCONV_ALIMENTAR: TFloatField
      FieldName = 'CONV_ALIMENTAR'
      DisplayFormat = '0.00'
    end
    object Qr_FechamentoGANHO_PESO_DIA: TFloatField
      FieldName = 'GANHO_PESO_DIA'
      DisplayFormat = '0.000'
    end
    object Qr_FechamentoIEP: TFloatField
      FieldName = 'IEP'
      DisplayFormat = '#0.00'
    end
    object Qr_FechamentoPRECO_AVE: TFloatField
      FieldName = 'PRECO_AVE'
      DisplayFormat = '#0.0000'
    end
    object Qr_FechamentoRACAO_CONSUMIDA: TFloatField
      FieldName = 'RACAO_CONSUMIDA'
      DisplayFormat = '#,##0'
    end
    object Qr_FechamentoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 7
    end
    object Qr_FechamentoDT_FECHAMENTO: TDateTimeField
      FieldName = 'DT_FECHAMENTO'
    end
    object Qr_FechamentoCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object Qr_FechamentoID_TECNICO: TFloatField
      FieldName = 'ID_TECNICO'
      Required = True
    end
    object Qr_FechamentoNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      Size = 50
    end
    object Qr_FechamentoDESC_LINHAGEM: TStringField
      FieldName = 'DESC_LINHAGEM'
      Size = 40
    end
    object Qr_FechamentoORIGEM_AVES: TStringField
      FieldName = 'ORIGEM_AVES'
      Size = 40
    end
    object Qr_FechamentoMORT_PRIM_SEMANA: TFloatField
      FieldName = 'MORT_PRIM_SEMANA'
    end
    object Qr_FechamentoDESC_NUCLEO: TStringField
      FieldName = 'DESC_NUCLEO'
      Size = 30
    end
    object Qr_FechamentoVALOR_PINTAINHO: TFloatField
      FieldName = 'VALOR_PINTAINHO'
    end
    object Qr_FechamentoNM_BAIRFORN: TStringField
      FieldName = 'NM_BAIRFORN'
      Required = True
      Size = 30
    end
    object Qr_FechamentoNM_CIDADE: TStringField
      FieldName = 'NM_CIDADE'
      Size = 40
    end
  end
  object Ds_Fechamento: TOraDataSource
    DataSet = Qr_Fechamento
    Left = 664
    Top = 110
  end
  object Qr_LanctoAcr: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_ALOJ_LANCAM'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_LANCLOTE, TIPO_LANC, DESC_LANC, ' +
        'VALOR_LANC)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_LANCLOTE, :TIPO_LANC, :DESC_' +
        'LANC, :VALOR_LANC)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_ALOJ_LANCAM'
      'WHERE'
      '  ID_LANCLOTE = :ID_LANCLOTE')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_ALOJ_LANCAM'
      'SET'
      '  TIPO_LANC = :TIPO_LANC,'
      '  DESC_LANC = :DESC_LANC,'
      '  VALOR_LANC = :VALOR_LANC'
      'WHERE'
      '  ID_LANCLOTE = :OLD_ID_LANCLOTE')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_ALOJ_LANCAM'
      'WHERE'
      '  ID_LANCLOTE = :ID_LANCLOTE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LANCLOTE = :ID_LANCLOTE')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'Select L.ID_LOTE , L.ID_LANCLOTE, '
      
        '       CASE L.TIPO_LANC WHEN '#39'A'#39' THEN '#39'Acr'#233'scimo'#39' WHEN '#39'D'#39' THEN ' +
        #39'Desconto'#39' END TIPO , '
      '       L.DESC_LANC, L.VALOR_LANC '
      '  FROM INTEGRADO_ALOJ_LANCAM L'
      '  Where  L.TIPO_LANC = '#39'A'#39
      '      AND L.ID_LOTE = :ID_LOTE')
    FetchAll = True
    Left = 632
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_LanctoAcrID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_LanctoAcrID_LANCLOTE: TFloatField
      FieldName = 'ID_LANCLOTE'
      Required = True
    end
    object Qr_LanctoAcrTIPO: TStringField
      FieldName = 'TIPO'
      Size = 9
    end
    object Qr_LanctoAcrDESC_LANC: TStringField
      FieldName = 'DESC_LANC'
      Size = 50
    end
    object Qr_LanctoAcrVALOR_LANC: TFloatField
      FieldName = 'VALOR_LANC'
      DisplayFormat = '#,###.00'
    end
  end
  object Ds_LanctoAcr: TOraDataSource
    DataSet = Qr_LanctoAcr
    Left = 664
    Top = 142
  end
  object Qr_LanctoDesc: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_ALOJ_LANCAM'
      
        '  (EMPRESA, FILIAL, ID_LOTE, ID_LANCLOTE, TIPO_LANC, DESC_LANC, ' +
        'VALOR_LANC)'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :ID_LANCLOTE, :TIPO_LANC, :DESC_' +
        'LANC, :VALOR_LANC)')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_ALOJ_LANCAM'
      'WHERE'
      '  ID_LANCLOTE = :ID_LANCLOTE')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_ALOJ_LANCAM'
      'SET'
      '  TIPO_LANC = :TIPO_LANC,'
      '  DESC_LANC = :DESC_LANC,'
      '  VALOR_LANC = :VALOR_LANC'
      'WHERE'
      '  ID_LANCLOTE = :OLD_ID_LANCLOTE')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_ALOJ_LANCAM'
      'WHERE'
      '  ID_LANCLOTE = :ID_LANCLOTE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_LANCLOTE = :ID_LANCLOTE')
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'Select L.ID_LOTE , L.ID_LANCLOTE, '
      
        '       CASE L.TIPO_LANC WHEN '#39'A'#39' THEN '#39'Acr'#233'scimo'#39' WHEN '#39'D'#39' THEN ' +
        #39'Desconto'#39' END TIPO , '
      '       L.DESC_LANC, L.VALOR_LANC '
      '  FROM INTEGRADO_ALOJ_LANCAM L'
      '  Where  L.TIPO_LANC = '#39'D'#39
      '      AND L.ID_LOTE = :ID_LOTE')
    FetchAll = True
    Left = 632
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object FloatField1: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'ID_LANCLOTE'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'TIPO'
      Size = 9
    end
    object StringField2: TStringField
      FieldName = 'DESC_LANC'
      Size = 50
    end
    object FloatField3: TFloatField
      FieldName = 'VALOR_LANC'
      DisplayFormat = '#,###.00'
    end
  end
  object Ds_LanctoDesc: TOraDataSource
    DataSet = Qr_LanctoDesc
    Left = 664
    Top = 174
  end
end
