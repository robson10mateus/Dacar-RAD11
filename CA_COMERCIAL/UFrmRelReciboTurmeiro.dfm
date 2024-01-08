object FrmRelReciboTurmeiro: TFrmRelReciboTurmeiro
  Left = 386
  Top = 62
  Width = 827
  Height = 574
  HorzScrollBar.Range = 794
  VertScrollBar.Range = 1123
  Caption = 'FrmRelReciboTurmeiro'
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
    DataSource = Ds_Recibo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 1008
      object RLLabel1: TRLLabel
        Left = 173
        Top = 11
        Width = 308
        Height = 22
        Caption = 'Recibo de Apanha de Frangos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 19
        Font.Name = 'Courier New'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLMemo1: TRLMemo
        Left = 48
        Top = 88
        Width = 625
        Height = 385
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Courier New'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        BeforePrint = RLMemo1BeforePrint
      end
      object lbl_Data: TRLLabel
        Left = 64
        Top = 528
        Width = 81
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Courier New'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        BeforePrint = lbl_DataBeforePrint
      end
      object RLDraw1: TRLDraw
        Left = 58
        Top = 711
        Width = 288
        Height = 9
        DrawKind = dkLine
      end
      object RLDBText2: TRLDBText
        Left = 57
        Top = 720
        Width = 90
        Height = 17
        DataField = 'INTEGRADO'
        DataSource = Ds_Recibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'Courier New'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 694
    Top = 18
  end
  object Qr_Recibo: TOraQuery
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
      ' Select L.ID_LOTE,'
      
        '        '#39'      Eu '#39' ||FI.NM_FORNECEDOR ||'#39', autorizo a empresa '#39 +
        ' || T.NM_FORNECEDOR ||'
      
        '        CASE T.FL_PESSFORN WHEN  '#39'J'#39' THEN '#39', CNPJ '#39' ELSE '#39', CPF ' +
        #39' END         Texto,'
      
        '        LT.NM_TIPOLOGR ||'#39' '#39'|| T.Nm_Logrforn ||'#39', '#39'|| T.NR_LOGRF' +
        'ORN ||'#39'  '#39'|| T.GN_COMPENDEFORN ||'#39'  '#39'|| T.NM_BAIRFORN Texto1 ,'
      
        '        '#39' na pessoa de seu s'#243'cio '#39' || REPLACE( T.NM_FORNECEDOR,'#39 +
        ' - ME'#39','#39#39') ||'
      
        '        '#39' receber diretamente da PARCEIRA(S) AVICULTORA(S) Ceu A' +
        'zul Alimentos Ltda., o valor de R$ '#39' Texto2,'
      
        '        '#39' ,referente ao carregamento efetuado nesta data em minh' +
        'a propriedade rural de'#39'  Texto3,'
      
        '        '#39' frangos, mediante apresentacao deste e da respectiva n' +
        'ota fiscal de servico, cujo o valor '#39' ||'
      
        '        '#39' sera descontado do acerto final do lote, conforme clau' +
        'sula 3'#170' , e paragrafos do '#39'||'
      '        '#39'contrato de parceria avicola entre as partes.'#39' Texto4,'
      '        FI.NM_FORNECEDOR INTEGRADO,'
      '                SUM(IR.QTD_AVESABAT *  T.VL_AVE_TURMA) VALOR,'
      '       SUM(IR.QTD_AVESABAT) QTD_AVESABAT, L.DT_FECHAMENTO,'
      
        '        CASE T.FL_PESSFORN WHEN  '#39'J'#39' THEN T.NR_CNPJFORN ELSE T.N' +
        'R_CPFFORN END Documento'
      ''
      '   From INTEGRADO_ALOJAMENTO L'
      '  Inner Join INTEGRADO I'
      '     On L.ID_INTEGRADO = I.ID_INTEGRADO'
      '  Inner Join FORNECEDOR FI'
      '     On FI.ID_FORNECEDOR = I.ID_FORNECEDOR'
      '  Inner Join INTEGRADO_RETIRADA IR'
      '     On L.ID_LOTE = IR.ID_LOTE'
      '  INNER JOIN Fornecedor T'
      '     ON IR.TURMA = T.TURMA  '
      '  Inner Join LOGRADOURO_TIPO LT'
      '     On  T.ID_TIPOLOGR = LT.ID_TIPOLOGR   '
      '  Where L.ID_LOTE =  :ID_LOTE'
      'AND NVL(IR.PESO_AVES,0) > 0 '
      
        '  Group by L.ID_LOTE,  FI.NM_FORNECEDOR , T.NM_FORNECEDOR , L.DT' +
        '_FECHAMENTO,'
      
        '        CASE T.FL_PESSFORN WHEN  '#39'J'#39' THEN T.NR_CNPJFORN ELSE T.N' +
        'R_CPFFORN END ,'
      
        '          '#39'      Eu '#39' ||FI.NM_FORNECEDOR ||'#39', autorizo a empresa' +
        ' '#39' || T.NM_FORNECEDOR ||'
      
        '        CASE T.FL_PESSFORN WHEN  '#39'J'#39' THEN '#39', CNPJ '#39' ELSE '#39', CPF ' +
        #39' END ,'
      
        '        LT.NM_TIPOLOGR ||'#39' '#39'|| T.Nm_Logrforn ||'#39', '#39'|| T.NR_LOGRF' +
        'ORN ||'#39'  '#39'|| T.GN_COMPENDEFORN ||'#39'  '#39'|| T.NM_BAIRFORN '
      ' ')
    FetchAll = True
    Left = 696
    Top = 43
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_LOTE'
        Value = 42852
      end>
    object Qr_ReciboID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_ReciboTEXTO1: TStringField
      FieldName = 'TEXTO1'
      Size = 270
    end
    object Qr_ReciboTEXTO2: TStringField
      FieldName = 'TEXTO2'
      Size = 153
    end
    object Qr_ReciboTEXTO3: TStringField
      FieldName = 'TEXTO3'
      FixedChar = True
      Size = 78
    end
    object Qr_ReciboTEXTO4: TStringField
      FieldName = 'TEXTO4'
      FixedChar = True
      Size = 214
    end
    object Qr_ReciboINTEGRADO: TStringField
      FieldName = 'INTEGRADO'
      Required = True
      Size = 40
    end
    object Qr_ReciboVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '#,##0.00'
    end
    object Qr_ReciboQTD_AVESABAT: TFloatField
      FieldName = 'QTD_AVESABAT'
      DisplayFormat = '#,###'
    end
    object Qr_ReciboDT_FECHAMENTO: TDateTimeField
      FieldName = 'DT_FECHAMENTO'
    end
    object Qr_ReciboTEXTO: TStringField
      FieldName = 'TEXTO'
      Size = 117
    end
    object Qr_ReciboDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
  end
  object Ds_Recibo: TOraDataSource
    DataSet = Qr_Recibo
    Left = 736
    Top = 57
  end
end
