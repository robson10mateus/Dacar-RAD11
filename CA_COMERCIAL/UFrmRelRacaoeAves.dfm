object FrmRelRacaoeAves: TFrmRelRacaoeAves
  Left = 303
  Top = 208
  Width = 893
  Height = 519
  HorzScrollBar.Range = 794
  VertScrollBar.Position = 8
  VertScrollBar.Range = 1123
  Caption = 'FrmRelRacaoeAves'
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
    Top = -8
    Width = 794
    Height = 1123
    DataSource = Ds_Lote
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLB_Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 63
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 184
        Top = 2
        Width = 363
        Height = 22
        Caption = 'Relat'#243'rio de Pintainho e Ra'#231#227'o do Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 19
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 6
        Top = 41
        Width = 83
        Height = 16
        Caption = 'INTEGRADO:'
      end
      object RLLabel3: TRLLabel
        Left = 302
        Top = 24
        Width = 121
        Height = 16
        Caption = 'AVES ALOJADAS :'
      end
      object RLDBText1: TRLDBText
        Left = 95
        Top = 41
        Width = 370
        Height = 16
        AutoSize = False
        DataField = 'NM_FORNECEDOR'
        DataSource = Ds_Lote
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 426
        Top = 24
        Width = 116
        Height = 16
        DataField = 'AVES_ALOJADAS'
        DataSource = Ds_Lote
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
        DataSource = Ds_Lote
        Text = ''
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 58
        Width = 718
        Height = 5
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel29: TRLLabel
        Left = 557
        Top = 41
        Width = 41
        Height = 16
        Caption = 'CNPJ:'
      end
      object RLLabel32: TRLLabel
        Left = 118
        Top = 24
        Width = 58
        Height = 16
        Caption = 'STATUS:'
      end
      object RLDBText19: TRLDBText
        Left = 184
        Top = 24
        Width = 54
        Height = 16
        DataField = 'STATUS'
        DataSource = Ds_Lote
        Text = ''
      end
      object RLDBText22: TRLDBText
        Left = 601
        Top = 41
        Width = 98
        Height = 16
        AutoSize = False
        DataField = 'NR_CNPJFORN'
        DataSource = Ds_Lote
        Text = ''
      end
      object RLDBText31: TRLDBText
        Left = 451
        Top = 41
        Width = 103
        Height = 16
        AutoSize = False
        DataField = 'DESC_NUCLEO'
        DataSource = Ds_Lote
        Text = ''
      end
    end
    object RLSubFornecedor: TRLSubDetail
      Left = 38
      Top = 101
      Width = 718
      Height = 47
      DataSource = Ds_Aves
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 24
        BandType = btColumnHeader
        object RLLabel6: TRLLabel
          Left = 380
          Top = 4
          Width = 60
          Height = 16
          Caption = 'Qtd Aves'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 605
          Top = 4
          Width = 79
          Height = 16
          Caption = 'Valor da NF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 3
          Top = 4
          Width = 74
          Height = 16
          Caption = 'Nota Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 81
          Top = 4
          Width = 28
          Height = 16
          Caption = 'Ave'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 234
          Top = 4
          Width = 33
          Height = 16
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 513
          Top = 4
          Width = 46
          Height = 16
          Caption = 'Vl Unit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 24
        Width = 718
        Height = 20
        object RLDBText12: TRLDBText
          Left = 591
          Top = 2
          Width = 110
          Height = 15
          Alignment = taRightJustify
          DataField = 'VL_ITEMNOTAFISC'
          DataSource = Ds_Aves
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
          Left = 4
          Top = 2
          Width = 72
          Height = 15
          AutoSize = False
          DataField = 'NR_NOTAFISC'
          DataSource = Ds_Aves
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 82
          Top = 2
          Width = 141
          Height = 15
          AutoSize = False
          DataField = 'NM_PRODMATEEMBA'
          DataSource = Ds_Aves
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
          Left = 231
          Top = 2
          Width = 94
          Height = 15
          AutoSize = False
          DataField = 'DT_SAIDNOTAFISC'
          DataSource = Ds_Aves
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
          Left = 332
          Top = 2
          Width = 109
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QN_EMBAITEMNOTAFISC'
          DataSource = Ds_Aves
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
          Left = 463
          Top = 2
          Width = 98
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VL_UNITITEMNOTAFISC'
          DataSource = Ds_Aves
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
    end
    object RLSubRemessa: TRLSubDetail
      Left = 38
      Top = 148
      Width = 718
      Height = 88
      DataSource = Ds_Remessa
      object RLBand8: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        BandType = btTitle
        object RLLabel16: TRLLabel
          Left = 284
          Top = 4
          Width = 150
          Height = 18
          Align = faCenter
          Caption = 'REMESSA DE RA'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial Black'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 2
          Align = faTop
          DrawKind = dkLine
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 21
        BandType = btColumnHeader
        object RLLabel17: TRLLabel
          Left = 3
          Top = 3
          Width = 74
          Height = 16
          Caption = 'Nota Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 235
          Top = 3
          Width = 33
          Height = 16
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 79
          Top = 3
          Width = 44
          Height = 16
          Caption = 'Ra'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 342
          Top = 3
          Width = 78
          Height = 16
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel41: TRLLabel
          Left = 621
          Top = 3
          Width = 66
          Height = 16
          Caption = 'Opera'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 466
          Top = 5
          Width = 50
          Height = 16
          Caption = 'VL Unit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 531
          Top = 5
          Width = 79
          Height = 16
          Caption = 'Valor da NF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 46
        Width = 718
        Height = 19
        object RLDBText13: TRLDBText
          Left = 5
          Top = 4
          Width = 67
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NR_NOTAFISC'
          DataSource = Ds_Remessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 232
          Top = 3
          Width = 90
          Height = 15
          DataField = 'DT_SAIDNOTAFISC'
          DataSource = Ds_Remessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 80
          Top = 3
          Width = 146
          Height = 15
          DataField = 'NM_PRODMATEEMBA'
          DataSource = Ds_Remessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText16: TRLDBText
          Left = 326
          Top = 3
          Width = 96
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QN_EMBAITEMNOTAFISC'
          DataSource = Ds_Remessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText32: TRLDBText
          Left = 622
          Top = 3
          Width = 69
          Height = 15
          AutoSize = False
          DataField = 'OPERACAO'
          DataSource = Ds_Remessa
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
          Left = 433
          Top = 2
          Width = 83
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VL_UNITITEMNOTAFISC'
          DataSource = Ds_Remessa
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
          Left = 529
          Top = 4
          Width = 83
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VL_ITEMNOTAFISC'
          DataSource = Ds_Remessa
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
      object RLBand1: TRLBand
        Left = 0
        Top = 65
        Width = 718
        Height = 23
        AutoExpand = False
        BandType = btSummary
        object RLLabel27: TRLLabel
          Left = 6
          Top = 3
          Width = 44
          Height = 16
          Caption = 'Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 268
          Top = 3
          Width = 153
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QN_EMBAITEMNOTAFISC'
          DataSource = Ds_Remessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 19
          Width = 718
          Height = 4
          DrawKind = dkLine
        end
        object RLDBResult1: TRLDBResult
          Left = 487
          Top = 3
          Width = 125
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VL_ITEMNOTAFISC'
          DataSource = Ds_Remessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand11: TRLBand
      Left = 38
      Top = 257
      Width = 718
      Height = 27
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 5
        Top = 4
        Width = 73
        Height = 16
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 564
        Top = 4
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 674
        Top = 4
        Width = 112
        Height = 16
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel31: TRLLabel
        Left = 653
        Top = 3
        Width = 18
        Height = 16
        Caption = 'de'
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 236
      Width = 718
      Height = 21
      BandType = btSummary
      object RLLabel13: TRLLabel
        Left = 382
        Top = 3
        Width = 88
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total do Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_TotalLote: TRLLabel
        Left = 516
        Top = 1
        Width = 98
        Height = 18
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial Black'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Qr_Lote: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO INTEGRADO_ALOJAMENTO'
      
        '  (EMPRESA, FILIAL, ID_LOTE, DATA_ALOJAMENTO, ID_USUARIO, ID_INT' +
        'EGRADO,  FL_STATUS, DT_FECHAMENTO )'
      'VALUES'
      
        '  (:EMPRESA, :FILIAL, :ID_LOTE, :DATA_ALOJAMENTO, :ID_USUARIO, :' +
        'ID_INTEGRADO,  :FL_STATUS, :DT_FECHAMENTO )')
    SQLDelete.Strings = (
      'DELETE FROM INTEGRADO_ALOJAMENTO'
      'WHERE'
      '  ID_LOTE = :ID_LOTE')
    SQLUpdate.Strings = (
      'UPDATE INTEGRADO_ALOJAMENTO'
      'SET'
      '  DATA_ALOJAMENTO = :DATA_ALOJAMENTO,'
      '  ID_USUARIO = :ID_USUARIO ,'
      '  FL_STATUS    = :FL_STATUS , '
      ' DT_FECHAMENTO = :DT_FECHAMENTO'
      'WHERE'
      '  ID_LOTE = :OLD_ID_LOTE')
    SQLLock.Strings = (
      'SELECT * FROM INTEGRADO_ALOJAMENTO'
      'WHERE'
      '  ID_LOTE = :ID_LOTE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  A.ID_LOTE = :ID_LOTE')
    SQL.Strings = (
      'Select A.ID_LOTE, --A.ID_INTEGRADO ,F.ID_FORNECEDOR, '
      '       F.NM_FORNECEDOR ,  NG.DESC_NUCLEO,'
      '       A.DATA_ALOJAMENTO, '
      '       A.FL_STATUS, '
      '       CASE WHEN A.FL_STATUS = '#39'AB'#39' THEN '#39'ABERTO'#39' '
      '                 WHEN A.FL_STATUS =  '#39'PR'#39' THEN '#39'PREVIS'#195'O'#39'  '
      '                WHEN A.FL_STATUS = '#39'FE'#39' THEN '#39'FECHADO'#39' '
      '                WHEN A.FL_STATUS = '#39'CN'#39' THEN '#39'CANCELADO'#39' '
      '           END STATUS,'
      '       A.DT_FECHAMENTO,  A.QTD_ALOJ AVES_ALOJADAS,'
      '   A.SOBRA_RACAO, A.MORTALIDADE, F.NR_CNPJFORN '
      '  From INTEGRADO_ALOJAMENTO A'
      '  Left Join INTEGRADO I'
      '    On A.ID_INTEGRADO = I.ID_INTEGRADO'
      '  Left Join FORNECEDOR F'
      '    On I.ID_FORNECEDOR = F.ID_FORNECEDOR'
      '  Left join NUCLEO_GALPAO NG'
      '    On A.ID_NUCLEO = NG.ID_NUCLEO  '
      '  --Left Join INTEGRADO_ALOJAMENTO_GALPAO AG'
      '   -- On A.ID_LOTE = AG.ID_LOTE   '
      ' Where A.ID_LOTE = :ID_LOTE '
      ' ')
    FetchAll = True
    Left = 88
    Top = 65133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_LoteID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_LoteNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Size = 40
    end
    object Qr_LoteFL_STATUS: TStringField
      FieldName = 'FL_STATUS'
      Size = 2
    end
    object Qr_LoteSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 8
    end
    object Qr_LoteDT_FECHAMENTO: TDateTimeField
      FieldName = 'DT_FECHAMENTO'
    end
    object Qr_LoteAVES_ALOJADAS: TFloatField
      FieldName = 'AVES_ALOJADAS'
      DisplayFormat = '0,###'
    end
    object Qr_LoteSOBRA_RACAO: TFloatField
      FieldName = 'SOBRA_RACAO'
      DisplayFormat = '0,###'
    end
    object Qr_LoteMORTALIDADE: TFloatField
      FieldName = 'MORTALIDADE'
      DisplayFormat = '0,###'
    end
    object Qr_LoteDATA_ALOJAMENTO: TDateTimeField
      FieldName = 'DATA_ALOJAMENTO'
    end
    object Qr_LoteNR_CNPJFORN: TStringField
      FieldName = 'NR_CNPJFORN'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object Qr_LoteDESC_NUCLEO: TStringField
      FieldName = 'DESC_NUCLEO'
      Size = 30
    end
  end
  object Ds_Lote: TOraDataSource
    DataSet = Qr_Lote
    Left = 128
    Top = 65131
  end
  object Qr_Aves: TOraQuery
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
    SQL.Strings = (
      'Select P.ID_LOTE , N.DT_SAIDNOTAFISC, N.NR_NOTAFISC, '
      '       ME.ID_PRODMATEEMBA, ME.Nm_Prodmateemba,'
      '       NI.QN_EMBAITEMNOTAFISC,                   '
      '       NI.VL_UNITITEMNOTAFISC, '
      '       NI.VL_ITEMNOTAFISC  '
      '  From Pedido_Venda P'
      ' INNER JOIN Pedido_Venda_ITEM I '
      '    ON P.ID_PEDIVEND = I.ID_PEDIVEND  '
      ' Inner Join Material_Embalagem ME'
      '    On i.Id_Mateemba = ME.ID_Mateemba  '
      ' Inner Join PEDIDO_VENDA_NOTA_FISCAL PN'
      '    ON P.ID_PEDIVEND = PN.ID_PEDIVEND  '
      ' INNER JOIN NOTA_FISCAL N'
      '    ON N.ID_NOTAFISC = PN.ID_NOTAFISC   '
      ' inner Join Nota_Fiscal_Item NI'
      '    ON N.ID_NOTAFISC = NI.ID_NOTAFISC   '
      ' INNER JOIN INTEGRADO_ALOJAMENTO A'
      '    ON P.ID_LOTE = A.ID_LOTE'
      ' Where P.ID_LOTE = :ID_LOTE'
      '   AND N.FL_CANCNOTAFISC = '#39'N'#39
      '   AND ME.ID_PRODMATEEMBA  in ( 7313 ) '
      '   AND P.ID_TIPOPEDIVEND in ( 130 )'
      ' Order By N.DT_SAIDNOTAFISC, N.NR_NOTAFISC ')
    FetchAll = True
    CachedUpdates = True
    Left = 176
    Top = 65133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        Value = nil
      end>
    object Qr_AvesID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
    end
    object Qr_AvesDT_SAIDNOTAFISC: TDateTimeField
      FieldName = 'DT_SAIDNOTAFISC'
      Required = True
    end
    object Qr_AvesNR_NOTAFISC: TFloatField
      FieldName = 'NR_NOTAFISC'
      Required = True
    end
    object Qr_AvesID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
    object Qr_AvesNM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
    object Qr_AvesVL_UNITITEMNOTAFISC: TFloatField
      FieldName = 'VL_UNITITEMNOTAFISC'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object Qr_AvesVL_ITEMNOTAFISC: TFloatField
      FieldName = 'VL_ITEMNOTAFISC'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object Qr_AvesQN_EMBAITEMNOTAFISC: TIntegerField
      FieldName = 'QN_EMBAITEMNOTAFISC'
      Required = True
      DisplayFormat = '#,##0.00'
    end
  end
  object Ds_Aves: TOraDataSource
    DataSet = Qr_Aves
    Left = 208
    Top = 65131
  end
  object Qr_Remessa: TOraQuery
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
    SQL.Strings = (
      'Select P.ID_LOTE , N.DT_SAIDNOTAFISC, N.NR_NOTAFISC, '
      '       ME.ID_PRODMATEEMBA, ME.Nm_Prodmateemba,'
      
        '       CASE WHEN P.ID_TIPOPEDIVEND = 138 THEN '#39'Retorno'#39' ELSE '#39'Re' +
        'messa'#39' END OPERACAO,'
      
        '       ( CASE WHEN P.ID_TIPOPEDIVEND = 138 THEN NI.QN_EMBAITEMNO' +
        'TAFISC * (-1) '
      
        '                 ELSE NI.QN_EMBAITEMNOTAFISC  END ) QN_EMBAITEMN' +
        'OTAFISC,                   '
      '       NI.VL_UNITITEMNOTAFISC, '
      '       NI.VL_ITEMNOTAFISC  '
      '  From Pedido_Venda P'
      ' INNER JOIN Pedido_Venda_ITEM I '
      '    ON P.ID_PEDIVEND = I.ID_PEDIVEND  '
      ' Inner Join Material_Embalagem ME'
      '    On i.Id_Mateemba = ME.ID_Mateemba  '
      ' Inner Join PEDIDO_VENDA_NOTA_FISCAL PN'
      '    ON P.ID_PEDIVEND = PN.ID_PEDIVEND  '
      ' INNER JOIN NOTA_FISCAL N'
      '    ON N.ID_NOTAFISC = PN.ID_NOTAFISC   '
      ' inner Join Nota_Fiscal_Item NI'
      '    ON N.ID_NOTAFISC = NI.ID_NOTAFISC   '
      ' INNER JOIN INTEGRADO_ALOJAMENTO A'
      '    ON P.ID_LOTE = A.ID_LOTE'
      ' Where P.ID_LOTE = :ID_LOTE'
      '   AND N.FL_CANCNOTAFISC = '#39'N'#39
      '   AND ME.ID_PRODMATEEMBA in ( 7302, 7303, 7304, 7305, 7306 ) '
      ' Order By N.DT_SAIDNOTAFISC, N.NR_NOTAFISC ')
    FetchAll = True
    CachedUpdates = True
    Left = 648
    Top = 30
    ParamData = <
      item
        DataType = ftString
        Name = 'ID_LOTE'
        ParamType = ptInput
        Value = nil
      end>
    object Qr_RemessaID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
    end
    object Qr_RemessaDT_SAIDNOTAFISC: TDateTimeField
      FieldName = 'DT_SAIDNOTAFISC'
      Required = True
    end
    object Qr_RemessaNR_NOTAFISC: TFloatField
      FieldName = 'NR_NOTAFISC'
      Required = True
    end
    object Qr_RemessaID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
    object Qr_RemessaNM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
    object Qr_RemessaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      FixedChar = True
      Size = 7
    end
    object Qr_RemessaQN_EMBAITEMNOTAFISC: TFloatField
      FieldName = 'QN_EMBAITEMNOTAFISC'
      DisplayFormat = ' 0,###'
    end
    object Qr_RemessaVL_UNITITEMNOTAFISC: TFloatField
      FieldName = 'VL_UNITITEMNOTAFISC'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object Qr_RemessaVL_ITEMNOTAFISC: TFloatField
      FieldName = 'VL_ITEMNOTAFISC'
      Required = True
      DisplayFormat = '#,##0.00'
    end
  end
  object Ds_Remessa: TOraDataSource
    DataSet = Qr_Remessa
    Left = 672
    Top = 30
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 710
    Top = 23
  end
end
