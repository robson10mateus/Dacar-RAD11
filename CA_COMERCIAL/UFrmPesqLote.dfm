object FrmPesqLote: TFrmPesqLote
  Left = 550
  Top = 270
  Width = 586
  Height = 378
  HorzScrollBar.Range = 549
  VertScrollBar.Range = 334
  BorderStyle = bsSingle
  Caption = 'Pesquisa Lote'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 574
    Height = 340
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 384
    ExplicitTop = 400
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 12
      Top = 0
      Width = 24
      Height = 15
      Caption = 'Lote'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 56
      Top = 309
      Width = 75
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 155
      Top = 309
      Width = 75
      Height = 25
      Caption = 'Cancela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object btn_PesqLote: TBitBtn
      Left = 115
      Top = 14
      Width = 20
      Height = 20
      Hint = 'Localiza Lote'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE6000000000000007600000028000000100000000E0000000100
        04000000000070000000120B0000120B00001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333033333333333333000333333333333000333333333333100
        3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
        3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
        33333333333333333333}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = btn_PesqLoteClick
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 39
      Width = 574
      Height = 269
      DataSource = DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = 16
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_LOTE'
          Title.Caption = 'Lote'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INTEGRADO'
          Title.Caption = 'Integrado'
          Width = 265
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NR_CNPJFORN'
          Title.Caption = 'CNPJ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_ALOJAMENTO'
          Title.Caption = 'Data Lote'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FL_STATUS'
          Title.Caption = 'Status'
          Visible = True
        end>
    end
    object Edt_Lote: TEdit
      Left = 8
      Top = 13
      Width = 101
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = Edt_LoteKeyPress
    end
  end
  object Qr: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT A.ID_LOTE, A.DATA_ALOJAMENTO, F.NR_CNPJFORN,'
      
        '            CASE WHEN NG.ID_NUCLEO IS NULL THEN F.NM_FORNECEDOR ' +
        ' ELSE '
      
        '            F.NM_FORNECEDOR ||'#39' - '#39'||NG.DESC_NUCLEO END INTEGRAD' +
        'O, '
      '            A.FL_STATUS'
      '  FROM INTEGRADO_ALOJAMENTO A'
      ' INNER JOIN  INTEGRADO I     '
      '    ON A.ID_INTEGRADO = I.ID_INTEGRADO'
      ' INNER JOIN FORNECEDOR F'
      '    ON I.ID_FORNECEDOR = F.ID_FORNECEDOR '
      '  LEFT JOIN NUCLEO_GALPAO NG'
      '    ON A.ID_NUCLEO = NG.ID_NUCLEO'
      ' &WHERE'
      '&Macro'
      ''
      'ORDER BY A.ID_LOTE')
    Left = 336
    Top = 264
    MacroData = <
      item
        Name = 'WHERE'
      end
      item
        Name = 'Macro'
      end>
    object QrID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object QrDATA_ALOJAMENTO: TDateTimeField
      FieldName = 'DATA_ALOJAMENTO'
    end
    object QrNR_CNPJFORN: TStringField
      FieldName = 'NR_CNPJFORN'
      Size = 14
    end
    object QrFL_STATUS: TStringField
      FieldName = 'FL_STATUS'
      Size = 2
    end
    object QrINTEGRADO: TStringField
      FieldName = 'INTEGRADO'
      Required = True
      Size = 40
    end
  end
  object DS: TOraDataSource
    DataSet = Qr
    Left = 368
    Top = 264
  end
end
