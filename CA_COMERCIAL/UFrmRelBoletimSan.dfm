object FrmRelBoletimSan: TFrmRelBoletimSan
  Left = -227
  Top = 101
  Width = 1398
  Height = 614
  HorzScrollBar.Position = 212
  HorzScrollBar.Range = 1594
  VertScrollBar.Position = 134
  VertScrollBar.Range = 1124
  Caption = 'Boletim Sanit'#225'rio'
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
    Left = -211
    Top = -133
    Width = 794
    Height = 1123
    DataSource = Ds_Boletim
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    NextReport = RLReport2
    ExpressionParser = RLExpressionParser1
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 23
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 115
        Top = 0
        Width = 488
        Height = 19
        Align = faCenterTop
        Alignment = taCenter
        Caption = 'BOLETIM SANITARIO ( Anexo Circular 13/07/DICAO/CGI/DIPOA )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 61
      Width = 718
      Height = 99
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object RLLabel2: TRLLabel
        Left = 5
        Top = 2
        Width = 214
        Height = 15
        Caption = 'Nome da Granja de Origem das Aves :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 5
        Top = 18
        Width = 56
        Height = 15
        Caption = 'Produtor :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 5
        Top = 34
        Width = 234
        Height = 15
        Caption = 'Respons'#225'vel T'#233'cnico ( emissor de GTA ) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 5
        Top = 50
        Width = 200
        Height = 15
        Caption = 'N'#186' cadastro org'#227'o estadual defesa :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 5
        Top = 66
        Width = 126
        Height = 15
        Caption = 'Georreferenciamento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 5
        Top = 82
        Width = 61
        Height = 15
        Caption = 'Munic'#237'pio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 234
        Top = 2
        Width = 92
        Height = 15
        DataField = 'NOME_GRANJA'
        DataSource = Ds_Boletim
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
        Left = 67
        Top = 18
        Width = 114
        Height = 15
        DataField = 'NM_FORNECEDOR'
        DataSource = Ds_Boletim
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 217
        Top = 50
        Width = 85
        Height = 15
        DataField = 'COD_GEDAVE'
        DataSource = Ds_Boletim
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
        Left = 140
        Top = 66
        Width = 53
        Height = 15
        DataField = 'GEOREF'
        DataSource = Ds_Boletim
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
        Left = 76
        Top = 82
        Width = 48
        Height = 15
        DataField = 'CIDADE'
        DataSource = Ds_Boletim
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 12
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText18: TRLDBText
        Left = 258
        Top = 34
        Width = 99
        Height = 15
        DataField = 'NOME_TECNICO'
        DataSource = Ds_Boletim
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
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 160
      Width = 718
      Height = 45
      DataSource = Ds_Pintainho
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 29
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Color = 14408667
        ParentColor = False
        Transparent = False
        object RLLabel8: TRLLabel
          Left = 8
          Top = 1
          Width = 91
          Height = 13
          Caption = 'Carga de pintos de '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 7
          Top = 13
          Width = 90
          Height = 13
          Caption = '1 dia recebidas (1) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 124
          Top = 1
          Width = 66
          Height = 13
          Caption = 'N'#186' GTA pintos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel11: TRLLabel
          Left = 138
          Top = 15
          Width = 39
          Height = 13
          Caption = 'de 1 dia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel12: TRLLabel
          Left = 222
          Top = 1
          Width = 95
          Height = 13
          Caption = 'Data da emiss'#227'o da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel13: TRLLabel
          Left = 224
          Top = 14
          Width = 91
          Height = 13
          Caption = 'GTA no Incubat'#243'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel14: TRLLabel
          Left = 348
          Top = 1
          Width = 94
          Height = 13
          Caption = 'Total de pintos de 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel15: TRLLabel
          Left = 342
          Top = 14
          Width = 106
          Height = 13
          Caption = 'dia declarados na GTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel16: TRLLabel
          Left = 467
          Top = 1
          Width = 121
          Height = 13
          Caption = 'Data de recebimento dos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel17: TRLLabel
          Left = 470
          Top = 14
          Width = 117
          Height = 13
          Caption = 'pintos de 1 dia na granja'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel18: TRLLabel
          Left = 619
          Top = 1
          Width = 72
          Height = 13
          Caption = 'Total de Pintos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel19: TRLLabel
          Left = 608
          Top = 13
          Width = 97
          Height = 13
          Caption = 'Recebidos na granja'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDraw2: TRLDraw
          Left = 105
          Top = 1
          Width = 5
          Height = 27
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
        object RLDraw3: TRLDraw
          Left = 205
          Top = 1
          Width = 5
          Height = 27
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
        object RLDraw6: TRLDraw
          Left = 328
          Top = 1
          Width = 5
          Height = 27
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
        object RLDraw8: TRLDraw
          Left = 457
          Top = 1
          Width = 5
          Height = 27
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
        object RLDraw9: TRLDraw
          Left = 595
          Top = 1
          Width = 5
          Height = 27
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 29
        Width = 718
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLDBText6: TRLDBText
          Left = 11
          Top = 1
          Width = 52
          Height = 14
          DataField = 'NR_NOTA'
          DataSource = Ds_Pintainho
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
          Left = 142
          Top = 1
          Width = 25
          Height = 14
          DataField = 'GTA'
          DataSource = Ds_Pintainho
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
          Left = 230
          Top = 1
          Width = 60
          Height = 14
          DataField = 'DATA_GTA'
          DataSource = Ds_Pintainho
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
          Left = 349
          Top = 1
          Width = 69
          Height = 14
          DataField = 'QUANTIDADE'
          DataSource = Ds_Pintainho
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
          Left = 482
          Top = 1
          Width = 71
          Height = 14
          DataField = 'DATA_RECEB'
          DataSource = Ds_Pintainho
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
          Left = 618
          Top = 1
          Width = 69
          Height = 14
          DataField = 'QUANTIDADE'
          DataSource = Ds_Pintainho
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw4: TRLDraw
          Left = 105
          Top = 0
          Width = 5
          Height = 16
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw5: TRLDraw
          Left = 205
          Top = 0
          Width = 5
          Height = 16
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw7: TRLDraw
          Left = 328
          Top = 0
          Width = 5
          Height = 16
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw10: TRLDraw
          Left = 457
          Top = 0
          Width = 5
          Height = 16
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw11: TRLDraw
          Left = 595
          Top = 0
          Width = 5
          Height = 16
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 38
      Top = 205
      Width = 718
      Height = 110
      DataSource = Ds_Retirada
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 29
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Color = 14408667
        ParentColor = False
        Transparent = False
        object RLLabel20: TRLLabel
          Left = 8
          Top = 1
          Width = 91
          Height = 13
          Caption = 'Carga de aves para'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel21: TRLLabel
          Left = 32
          Top = 14
          Width = 44
          Height = 13
          Caption = 'abate (1)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel22: TRLLabel
          Left = 137
          Top = 7
          Width = 34
          Height = 13
          Caption = 'N'#186' GTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel24: TRLLabel
          Left = 229
          Top = 7
          Width = 81
          Height = 13
          Caption = 'Data da emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel26: TRLLabel
          Left = 340
          Top = 7
          Width = 109
          Height = 13
          Caption = 'Data de Carregamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel28: TRLLabel
          Left = 480
          Top = 1
          Width = 96
          Height = 13
          Caption = 'para o abate na GTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel29: TRLLabel
          Left = 469
          Top = 14
          Width = 119
          Height = 13
          Caption = 'Total de aves declaradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel30: TRLLabel
          Left = 615
          Top = 1
          Width = 85
          Height = 13
          Caption = '% de mortalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel31: TRLLabel
          Left = 604
          Top = 14
          Width = 104
          Height = 13
          Caption = 'na emiss'#227'o do GTA (2)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDraw12: TRLDraw
          Left = 105
          Top = 1
          Width = 5
          Height = 27
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
        object RLDraw13: TRLDraw
          Left = 205
          Top = 1
          Width = 5
          Height = 27
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
        object RLDraw14: TRLDraw
          Left = 328
          Top = 1
          Width = 5
          Height = 27
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
        object RLDraw15: TRLDraw
          Left = 457
          Top = 1
          Width = 5
          Height = 27
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
        object RLDraw16: TRLDraw
          Left = 595
          Top = 1
          Width = 5
          Height = 27
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 29
        Width = 718
        Height = 18
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLDraw17: TRLDraw
          Left = 105
          Top = 0
          Width = 5
          Height = 17
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
        object RLDraw18: TRLDraw
          Left = 205
          Top = 0
          Width = 5
          Height = 17
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
        object RLDraw19: TRLDraw
          Left = 328
          Top = 0
          Width = 5
          Height = 17
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
        object RLDraw20: TRLDraw
          Left = 457
          Top = 0
          Width = 5
          Height = 17
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
        object RLDraw21: TRLDraw
          Left = 595
          Top = 0
          Width = 5
          Height = 17
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Transparent = False
        end
        object RLDBText12: TRLDBText
          Left = 12
          Top = 1
          Width = 74
          Height = 14
          DataField = 'NR_NOTAFISC'
          DataSource = Ds_Retirada
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
          Left = 142
          Top = 1
          Width = 25
          Height = 14
          DataField = 'GTA'
          DataSource = Ds_Retirada
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
          Left = 214
          Top = 1
          Width = 97
          Height = 14
          DataField = 'DT_SAIDNOTAFISC'
          DataSource = Ds_Retirada
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
          Left = 341
          Top = 1
          Width = 97
          Height = 14
          DataField = 'DT_SAIDNOTAFISC'
          DataSource = Ds_Retirada
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
          Left = 471
          Top = 1
          Width = 43
          Height = 14
          DataField = 'QTD_NF'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText17: TRLDBText
          Left = 612
          Top = 1
          Width = 59
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PER_MORTBOLETIM'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel84: TRLLabel
          Left = 674
          Top = 1
          Width = 13
          Height = 14
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 47
        Width = 718
        Height = 63
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLLabel23: TRLLabel
          Left = 1
          Top = 0
          Width = 207
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Aves carregadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 207
          Top = 0
          Width = 253
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Aves remanescentes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLRes_AvesAbat: TRLDBResult
          Left = 1
          Top = 15
          Width = 207
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'QTD_NF'
          DataSource = Ds_Retirada
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
          Left = 1
          Top = 31
          Width = 716
          Height = 16
          Align = faWidth
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = '% Mortalidade ap'#243's finaliza'#231#227'o do lote (4)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 1
          Top = 47
          Width = 716
          Height = 16
          Align = faWidth
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Doen'#231'as detectadas no lote :   N'#195'O DETECTADA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDraw54: TRLDraw
          Left = 1
          Top = 14
          Width = 716
          Height = 4
          Align = faWidth
          DrawKind = dkLine
        end
        object Lbl_Reman: TRLLabel
          Left = 207
          Top = 16
          Width = 253
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          BeforePrint = Lbl_RemanBeforePrint
        end
      end
    end
    object RLSubDetail3: TRLSubDetail
      Left = 38
      Top = 315
      Width = 718
      Height = 353
      DataSource = Ds_Boletim
      object RLBand8: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 353
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLLabel33: TRLLabel
          Left = 1
          Top = -1
          Width = 716
          Height = 16
          Align = faWidth
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = 'Drogas administradas no lote (5)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 65
          Top = 24
          Width = 70
          Height = 13
          Caption = 'Principio Ativo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel35: TRLLabel
          Left = 224
          Top = 24
          Width = 53
          Height = 13
          Caption = 'Data Inicio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel36: TRLLabel
          Left = 321
          Top = 24
          Width = 44
          Height = 13
          Caption = 'Data Fim'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel37: TRLLabel
          Left = 412
          Top = 15
          Width = 99
          Height = 13
          Caption = 'Periodo de Car'#234'ncia '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel38: TRLLabel
          Left = 442
          Top = 25
          Width = 45
          Height = 13
          Caption = 'atendido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel39: TRLLabel
          Left = 571
          Top = 24
          Width = 97
          Height = 13
          Caption = 'Vacina'#231#227'o para DNC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Calibri'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDraw22: TRLDraw
          Left = 1
          Top = 36
          Width = 716
          Height = 4
          Align = faWidth
          DrawKind = dkLine
        end
        object RLDraw23: TRLDraw
          Left = 1
          Top = 53
          Width = 716
          Height = 4
          Align = faWidth
          DrawKind = dkLine
        end
        object RLDBText19: TRLDBText
          Left = 5
          Top = 39
          Width = 47
          Height = 14
          DataField = 'DROGA1'
          DataSource = Ds_Boletim
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
          Left = 204
          Top = 39
          Width = 77
          Height = 14
          DataField = 'DT_INIDROGA1'
          DataSource = Ds_Boletim
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
          Left = 302
          Top = 39
          Width = 82
          Height = 14
          DataField = 'DT_FIMDROGA1'
          DataSource = Ds_Boletim
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw24: TRLDraw
          Left = 1
          Top = 69
          Width = 716
          Height = 5
          Align = faWidth
          DrawKind = dkLine
        end
        object RLDBText22: TRLDBText
          Left = 5
          Top = 56
          Width = 47
          Height = 14
          DataField = 'DROGA2'
          DataSource = Ds_Boletim
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText23: TRLDBText
          Left = 204
          Top = 56
          Width = 77
          Height = 14
          DataField = 'DT_INIDROGA2'
          DataSource = Ds_Boletim
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
          Left = 302
          Top = 56
          Width = 82
          Height = 14
          DataField = 'DT_FIMDROGA2'
          DataSource = Ds_Boletim
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw25: TRLDraw
          Left = 200
          Top = 14
          Width = 3
          Height = 75
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw26: TRLDraw
          Left = 536
          Top = 14
          Width = 4
          Height = 90
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw27: TRLDraw
          Left = 573
          Top = 39
          Width = 14
          Height = 14
        end
        object RLDraw28: TRLDraw
          Left = 573
          Top = 56
          Width = 14
          Height = 14
        end
        object RLLabel40: TRLLabel
          Left = 592
          Top = 39
          Width = 20
          Height = 14
          Caption = 'SIM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDraw29: TRLDraw
          Left = 623
          Top = 39
          Width = 14
          Height = 14
        end
        object RLLabel41: TRLLabel
          Left = 643
          Top = 39
          Width = 26
          Height = 14
          Caption = 'N'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel42: TRLLabel
          Left = 575
          Top = 39
          Width = 10
          Height = 14
          Caption = 'X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel43: TRLLabel
          Left = 592
          Top = 56
          Width = 20
          Height = 14
          Caption = 'SIM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDraw30: TRLDraw
          Left = 623
          Top = 56
          Width = 14
          Height = 14
        end
        object RLLabel44: TRLLabel
          Left = 575
          Top = 56
          Width = 10
          Height = 14
          Caption = 'X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel45: TRLLabel
          Left = 643
          Top = 56
          Width = 26
          Height = 14
          Caption = 'N'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel46: TRLLabel
          Left = 436
          Top = 39
          Width = 62
          Height = 14
          Caption = 'SIM 10 DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel47: TRLLabel
          Left = 440
          Top = 56
          Width = 56
          Height = 14
          Caption = 'SIM 5 DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDraw31: TRLDraw
          Left = 398
          Top = 14
          Width = 3
          Height = 75
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw32: TRLDraw
          Left = 297
          Top = 14
          Width = 3
          Height = 75
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw33: TRLDraw
          Left = 1
          Top = 84
          Width = 716
          Height = 5
          Align = faWidth
          DrawKind = dkLine
        end
        object RLDraw34: TRLDraw
          Left = 1
          Top = 130
          Width = 716
          Height = 5
          Align = faWidth
          DrawKind = dkLine
        end
        object RLDraw35: TRLDraw
          Left = 1
          Top = 101
          Width = 716
          Height = 5
          Align = faWidth
          DrawKind = dkLine
        end
        object RLLabel48: TRLLabel
          Left = 5
          Top = 88
          Width = 189
          Height = 14
          Caption = 'Data e hora da retirada da alimenta'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDBText25: TRLDBText
          Left = 230
          Top = 88
          Width = 93
          Height = 14
          DataField = 'DT_RETIRALIMENT'
          DataSource = Ds_Boletim
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel49: TRLLabel
          Left = 19
          Top = 104
          Width = 669
          Height = 14
          Caption = 
            'O abaixo assinado declara que os registros e documentos relativo' +
            's a estes animais est'#227'o em conformidade com os requisitos legais' +
            ', e os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel50: TRLLabel
          Left = 5
          Top = 118
          Width = 647
          Height = 14
          Caption = 
            'animais acima identificados foram considerados saud'#225'veis durante' +
            ' a avalia'#231#227'o pr'#233'via ao abato, no momento do presente documento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDraw36: TRLDraw
          Left = 1
          Top = 145
          Width = 716
          Height = 5
          Align = faWidth
          DrawKind = dkLine
        end
        object RLDraw37: TRLDraw
          Left = 1
          Top = 158
          Width = 716
          Height = 5
          Align = faWidth
          DrawKind = dkLine
        end
        object RLDraw38: TRLDraw
          Left = 1
          Top = 225
          Width = 716
          Height = 5
          Align = faWidth
          DrawKind = dkLine
        end
        object RLLabel51: TRLLabel
          Left = 6
          Top = 133
          Width = 492
          Height = 14
          Caption = 
            'Informa'#231#245'es adicionais ( declara'#231#245'es adicionais e respaldo para ' +
            'certifica'#231#227'o sanit'#225'ria - no verso) (6)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDraw39: TRLDraw
          Left = 22
          Top = 195
          Width = 216
          Height = 7
          DrawKind = dkLine
        end
        object RLLabel52: TRLLabel
          Left = 67
          Top = 204
          Width = 101
          Height = 14
          Caption = '( Local ) data e hora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel53: TRLLabel
          Left = 34
          Top = 180
          Width = 52
          Height = 14
          Caption = 'Pereiras , '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDBText27: TRLDBText
          Left = 93
          Top = 179
          Width = 77
          Height = 15
          DataField = 'DT_BOLETIM'
          DataSource = Ds_Boletim
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw40: TRLDraw
          Left = 478
          Top = 205
          Width = 216
          Height = 4
          DrawKind = dkLine
        end
        object RLLabel54: TRLLabel
          Left = 483
          Top = 209
          Width = 203
          Height = 14
          Caption = 'Carimbo e Assinatura do emissor do GTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDraw43: TRLDraw
          Left = 1
          Top = 292
          Width = 716
          Height = 5
          Align = faWidth
          DrawKind = dkLine
        end
        object RLDraw44: TRLDraw
          Left = 1
          Top = 322
          Width = 716
          Height = 5
          Align = faWidth
          DrawKind = dkLine
        end
        object RLLabel55: TRLLabel
          Left = 273
          Top = 228
          Width = 158
          Height = 14
          Caption = 'USO DO SERVI'#199'O OFICIAL - SIF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel56: TRLLabel
          Left = 1
          Top = 244
          Width = 716
          Height = 18
          Align = faWidth
          Alignment = taCenter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = 'VERIFICA'#199#213'ES OFICIAIS/A'#199#213'ES FISCAIS'
          Color = 14408667
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel57: TRLLabel
          Left = 3
          Top = 263
          Width = 252
          Height = 14
          Caption = 'Verifica'#231#227'o de mortalidade > 10% n'#227'o notificada ao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel58: TRLLabel
          Left = 3
          Top = 277
          Width = 168
          Height = 14
          Caption = 'servi'#231'o de defesa sanit'#225'ria animal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel59: TRLLabel
          Left = 3
          Top = 295
          Width = 240
          Height = 14
          Caption = 'Apresenta'#231#227'o de sinais clinicos compat'#237'veis com'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel60: TRLLabel
          Left = 3
          Top = 309
          Width = 241
          Height = 14
          Caption = 'doen'#231'a de notifica'#231#227'o obrigat'#243'ria no ante mortem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel61: TRLLabel
          Left = 6
          Top = 331
          Width = 121
          Height = 14
          Caption = 'Coleta realizada pelo SIF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDraw42: TRLDraw
          Left = 272
          Top = 260
          Width = 4
          Height = 92
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw49: TRLDraw
          Left = 360
          Top = 260
          Width = 4
          Height = 92
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw50: TRLDraw
          Left = 369
          Top = 268
          Width = 20
          Height = 20
        end
        object RLLabel65: TRLLabel
          Left = 398
          Top = 268
          Width = 32
          Height = 16
          Caption = 'N'#195'O'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLDraw51: TRLDraw
          Left = 369
          Top = 298
          Width = 20
          Height = 20
        end
        object RLLabel66: TRLLabel
          Left = 398
          Top = 298
          Width = 32
          Height = 16
          Caption = 'N'#195'O'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLDraw46: TRLDraw
          Left = 285
          Top = 268
          Width = 20
          Height = 20
        end
        object RLLabel62: TRLLabel
          Left = 315
          Top = 268
          Width = 27
          Height = 16
          Caption = 'SIM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDraw53: TRLDraw
          Left = 446
          Top = 260
          Width = 4
          Height = 92
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw47: TRLDraw
          Left = 285
          Top = 298
          Width = 20
          Height = 20
        end
        object RLDraw52: TRLDraw
          Left = 369
          Top = 328
          Width = 20
          Height = 20
        end
        object RLLabel63: TRLLabel
          Left = 315
          Top = 298
          Width = 27
          Height = 16
          Caption = 'SIM'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLLabel64: TRLLabel
          Left = 315
          Top = 328
          Width = 27
          Height = 16
          Caption = 'SIM'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLLabel67: TRLLabel
          Left = 398
          Top = 328
          Width = 32
          Height = 16
          Caption = 'N'#195'O'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLDraw48: TRLDraw
          Left = 285
          Top = 328
          Width = 20
          Height = 20
        end
        object RLLabel68: TRLLabel
          Left = 454
          Top = 268
          Width = 92
          Height = 15
          Caption = 'N'#186' SIF/PNSA/02:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLLabel69: TRLLabel
          Left = 454
          Top = 298
          Width = 92
          Height = 15
          Caption = 'N'#186' SIF/PNSA/01:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object RLLabel70: TRLLabel
          Left = 454
          Top = 328
          Width = 92
          Height = 15
          Caption = 'N'#186' SIF/PNSA/04:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
      end
    end
  end
  object RLReport2: TRLReport
    Left = 588
    Top = -134
    Width = 794
    Height = 1123
    DataSource = Ds_Boletim
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []
    object RLBand9: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 234
      BandType = btTitle
      PageBreaking = pbAfterPrint
      object RLLabel71: TRLLabel
        Left = 115
        Top = 0
        Width = 488
        Height = 19
        Align = faCenterTop
        Alignment = taCenter
        Caption = 'BOLETIM SANITARIO ( Anexo Circular 13/07/DICAO/CGI/DIPOA )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLPanel1: TRLPanel
        Left = 0
        Top = 24
        Width = 718
        Height = 81
        Align = faWidth
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLLabel72: TRLLabel
          Left = 4
          Top = 3
          Width = 154
          Height = 14
          Caption = 'Outras Observa'#231#245'es no verso.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel73: TRLLabel
          Left = 284
          Top = 65
          Width = 82
          Height = 14
          Caption = 'Carimbo datador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel74: TRLLabel
          Left = 532
          Top = 65
          Width = 145
          Height = 14
          Caption = 'Carimbo e Assinatura do FFA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 502
          Top = 61
          Width = 202
          Height = 3
          DrawKind = dkLine
        end
      end
      object RLMemo1: TRLMemo
        Left = 58
        Top = 113
        Width = 603
        Height = 112
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Lines.Strings = (
          
            '(1) Para utiliza'#231#227'o no caso de mais de uma carga por lote, trans' +
            'portadas em datas diferentes (por ex: 1'#170' carga, 2'#170' carga , etc .' +
            '.. ) Poder'#227'o ser inclu'#237'das mais linhas quando houver mais de dua' +
            's cargas;'
          
            '(2) informar a porcentagem de aves mortas at'#233' a data de emiss'#227'o ' +
            'do GTA (N'#186' de aves vivas X 100/n'#186' de aves alojadas);'
          '(3) N'#186' de aves que permaneceram na granja ap'#243's a carga parcial;'
          
            '(4) % de mortalidade na emiss'#227'o de GTA + Mortalidade entre a emi' +
            'ss'#227'o da GTA e a chegada das aves no frigorifico;'
          
            '(5) incluir drogas terap'#234'uticas e n'#227'o terap'#234'uticas como os melho' +
            'radores de desempenho e outros;'
          
            '(6) Respaldos para atendimento de mercado especifico (por ex: ad' +
            'ministra'#231#227'o de ra'#231#227'o vegetal, credenciamento de granjas para dec' +
            'lara'#231#227'o de ordem sanit'#225'ria e etc...).')
        ParentFont = False
      end
    end
    object RLSubDetail4: TRLSubDetail
      Left = 38
      Top = 272
      Width = 718
      Height = 342
      DataSource = Ds_Retirada
      PageBreaking = pbAfterPrint
      object RLBand10: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 53
        BandType = btTitle
        object RLLabel75: TRLLabel
          Left = 115
          Top = 0
          Width = 488
          Height = 19
          Align = faCenterTop
          Alignment = taCenter
          Caption = 'BOLETIM SANITARIO ( Anexo Circular 13/07/DICAO/CGI/DIPOA )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 16
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel76: TRLLabel
          Left = 16
          Top = 23
          Width = 132
          Height = 15
          Caption = 'Informa'#231#245'es Adicionais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel77: TRLLabel
          Left = 15
          Top = 38
          Width = 137
          Height = 15
          Caption = '1) - Informa'#231#245'es do Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand11: TRLBand
        Left = 0
        Top = 85
        Width = 718
        Height = 17
        object RLDBText26: TRLDBText
          Left = 174
          Top = 1
          Width = 74
          Height = 14
          DataField = 'NR_NOTAFISC'
          DataSource = Ds_Retirada
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
          Left = 126
          Top = 1
          Width = 25
          Height = 14
          DataField = 'GTA'
          DataSource = Ds_Retirada
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
          Left = 242
          Top = 1
          Width = 97
          Height = 14
          DataField = 'DT_SAIDNOTAFISC'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText30: TRLDBText
          Left = 335
          Top = 1
          Width = 97
          Height = 14
          DataField = 'DT_SAIDNOTAFISC'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText31: TRLDBText
          Left = 450
          Top = 1
          Width = 43
          Height = 14
          DataField = 'QTD_NF'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText33: TRLDBText
          Left = 531
          Top = 1
          Width = 61
          Height = 14
          Alignment = taRightJustify
          DataField = 'PLACAVEIC'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText34: TRLDBText
          Left = 142
          Top = 1
          Width = 94
          Height = 14
          Alignment = taRightJustify
          DataField = 'NUM_SERVINSPEC'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel83: TRLLabel
          Left = 697
          Top = 0
          Width = 13
          Height = 14
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDBText32: TRLDBText
          Left = 602
          Top = 0
          Width = 86
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PER_MORTBOLETIM'
          DataSource = Ds_Retirada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText35: TRLDBText
          Left = 30
          Top = 1
          Width = 47
          Height = 14
          DataField = 'SEQ_DIA'
          DataSource = Ds_Retirada
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
      object RLBand12: TRLBand
        Left = 0
        Top = 53
        Width = 718
        Height = 32
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLMemo2: TRLMemo
          Left = 1
          Top = 1
          Width = 122
          Height = 30
          Align = faHeight
          Alignment = taCenter
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          Lines.Strings = (
            'Carga de aves para '
            'abate (1) ')
          ParentFont = False
        end
        object RLMemo3: TRLMemo
          Left = 123
          Top = 1
          Width = 69
          Height = 30
          Align = faHeight
          Alignment = taJustify
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          Lines.Strings = (
            'N'#186' GTA')
          ParentFont = False
        end
        object RLMemo4: TRLMemo
          Left = 190
          Top = 1
          Width = 51
          Height = 30
          Align = faHeight
          Alignment = taRightJustify
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          Lines.Strings = (
            'SIF')
          ParentFont = False
        end
        object RLMemo5: TRLMemo
          Left = 241
          Top = 1
          Width = 92
          Height = 30
          Align = faHeight
          Alignment = taCenter
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          Lines.Strings = (
            'Data da emiss'#227'o')
          ParentFont = False
        end
        object RLMemo6: TRLMemo
          Left = 333
          Top = 1
          Width = 114
          Height = 30
          Align = faHeight
          Alignment = taCenter
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          Lines.Strings = (
            'Data do carregamento')
          ParentFont = False
        end
        object RLMemo7: TRLMemo
          Left = 447
          Top = 1
          Width = 148
          Height = 30
          Align = faHeight
          Alignment = taCenter
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          Lines.Strings = (
            'Total de aves declaradas'
            'para o abate no GTA e Placa')
          ParentFont = False
        end
        object RLMemo8: TRLMemo
          Left = 594
          Top = 1
          Width = 124
          Height = 30
          Align = faHeight
          Alignment = taCenter
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          Lines.Strings = (
            '% de mortalidade'
            'na emiss'#227'o da GTA (2)')
          ParentFont = False
        end
      end
      object RLBand13: TRLBand
        Left = 0
        Top = 102
        Width = 718
        Height = 320
        BandType = btFooter
        object RLLabel78: TRLLabel
          Left = 3
          Top = 4
          Width = 193
          Height = 14
          Caption = '2) - Informa'#231#245'es exames de laborat'#243'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel79: TRLLabel
          Left = 3
          Top = 17
          Width = 246
          Height = 14
          Caption = 'Negativo, para Salmonela, n'#250'mero do(s) Laudo(s) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel80: TRLLabel
          Left = 3
          Top = 45
          Width = 143
          Height = 14
          Caption = '3) - Aditivos e Medicamentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel81: TRLLabel
          Left = 3
          Top = 59
          Width = 423
          Height = 14
          Caption = 
            'Ap'#243's a emiss'#227'o deste boletim sanit'#225'rio n'#227'o foi administrado nenh' +
            'uma droga veterin'#225'ria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel82: TRLLabel
          Left = 3
          Top = 78
          Width = 273
          Height = 14
          Caption = 'Aves n'#227'o medicadas com Quinolonas/Fluoroquinolonas '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDraw41: TRLDraw
          Left = 0
          Top = 108
          Width = 649
          Height = 3
          DrawKind = dkLine
        end
        object RLMemo9: TRLMemo
          Left = 3
          Top = 126
          Width = 648
          Height = 98
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          Lines.Strings = (
            
              '- As ra'#231#245'es consumidas n'#227'o receberam em nenhum momento de sua fa' +
              'brica'#231#227'o ars'#234'nio, anti'#244'nio e estrog'#234'nio.'
            '- As ra'#231#245'es de abate s'#227'o livres de antibi'#243'ticos.'
            
              '- As aves abatidas permaneceram no territ'#243'rio do Brasil, regi'#227'o ' +
              'do estado de S'#227'o Paulo, desde o nascimento.'
            
              '- Atendem todas as exig'#234'ncias legais para as quais o estabelecim' +
              'ento est'#225' habilitado, em se tratando de aditivos e medi-'
            
              'camentos utilizados em qualquer fase da cria'#231#227'o das aves, inclus' +
              'ive nas ra'#231#245'es fornecidas.'
            
              '- As aves n'#227'o foram tratadas com medicamentos n'#227'o prescritos e a' +
              's car'#234'ncias dos produtos utilizados foram respeitadas, bem co-'
            
              'mo atende o que prescreve o programa nacional de controle de res' +
              #237'duos e contaminates (PNRC)')
          ParentFont = False
        end
        object RLDBText36: TRLDBText
          Left = 253
          Top = 17
          Width = 296
          Height = 14
          AutoSize = False
          DataField = 'NUM_LAUDO'
          DataSource = Ds_Boletim
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText37: TRLDBText
          Left = 636
          Top = 17
          Width = 66
          Height = 14
          AutoSize = False
          DataField = 'DT_COLETA'
          DataSource = Ds_Boletim
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel85: TRLLabel
          Left = 3
          Top = 31
          Width = 46
          Height = 14
          Caption = 'Emiss'#227'o '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLDBText38: TRLDBText
          Left = 52
          Top = 31
          Width = 66
          Height = 14
          AutoSize = False
          DataField = 'DT_EMISSAO'
          DataSource = Ds_Boletim
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel86: TRLLabel
          Left = 123
          Top = 32
          Width = 92
          Height = 14
          Caption = 'Laborat'#243'rio Avipa.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object RLLabel87: TRLLabel
          Left = 557
          Top = 17
          Width = 73
          Height = 14
          Caption = 'Data da Coleta'
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
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 198
    Top = 23
  end
  object Qr_Boletim: TOraQuery
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
      'Select A.ID_LOTE, F.NM_LOGRFORN Nome_Granja, F.NM_FORNECEDOR,'
      
        '       I.COD_GEDAVE, I.LATITUDE_INTEGRADO ||'#39'   '#39'|| I.LONGITUDE_' +
        'INTEGRADO GEOREF,         '
      '       C.NM_CIDADE ||'#39' - '#39'|| E.SG_ESTADO CIDADE,       '
      
        '       T.NOME_TECNICO, D1.NOME_DROGA Droga1 , B.DT_INIDROGA1,B.D' +
        'T_FIMDROGA1, '
      
        '       D2.NOME_DROGA Droga2, B.DT_INIDROGA2, B.DT_FIMDROGA2, B.D' +
        'T_RETIRALIMENT,'
      
        '       B.DT_BOLETIM, B.MORTALIDADE, B.NUM_LAUDO , B.DT_COLETA , ' +
        'B.DT_EMISSAO'
      '  From INTEGRADO_ALOJAMENTO A'
      ' Inner Join INTEGRADO I '
      '    On A.ID_INTEGRADO = I.ID_INTEGRADO'
      ' Inner Join FORNECEDOR F'
      '    On I.ID_FORNECEDOR = F.ID_FORNECEDOR   '
      ' Inner Join CIDADE C '
      '    On F.ID_CIDADE = C.ID_CIDADE'
      ' Inner Join ESTADO E '
      '    On C.ID_ESTADO = E.ID_ESTADO'
      ' Inner Join BOLETIM_SANITARIO B'
      '    On B.ID_LOTE = A.ID_LOTE'
      '  Left Join INTEGRADO_TECNICO T'
      '    On B.ID_TECRESP = T.ID_TECNICO    '
      '  Left Join  BOLETIM_DROGAS D1'
      '    On B.ID_DROGA1 = D1.ID_DROGA '
      '  Left Join  BOLETIM_DROGAS D2'
      '    On B.ID_DROGA2 = D2.ID_DROGA '
      ' Where A.ID_LOTE = :ID_LOTE ')
    FetchAll = True
    Left = 168
    Top = 55
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_LOTE'
        Value = 43022
      end>
    object Qr_BoletimID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_BoletimNOME_GRANJA: TStringField
      FieldName = 'NOME_GRANJA'
      Required = True
      Size = 40
    end
    object Qr_BoletimNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Required = True
      Size = 40
    end
    object Qr_BoletimCOD_GEDAVE: TStringField
      FieldName = 'COD_GEDAVE'
    end
    object Qr_BoletimGEOREF: TStringField
      FieldName = 'GEOREF'
      Size = 43
    end
    object Qr_BoletimCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 53
    end
    object Qr_BoletimNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      Size = 50
    end
    object Qr_BoletimDROGA1: TStringField
      FieldName = 'DROGA1'
      Size = 50
    end
    object Qr_BoletimDT_INIDROGA1: TDateTimeField
      FieldName = 'DT_INIDROGA1'
    end
    object Qr_BoletimDT_FIMDROGA1: TDateTimeField
      FieldName = 'DT_FIMDROGA1'
    end
    object Qr_BoletimDROGA2: TStringField
      FieldName = 'DROGA2'
      Size = 50
    end
    object Qr_BoletimDT_INIDROGA2: TDateTimeField
      FieldName = 'DT_INIDROGA2'
    end
    object Qr_BoletimDT_FIMDROGA2: TDateTimeField
      FieldName = 'DT_FIMDROGA2'
    end
    object Qr_BoletimDT_RETIRALIMENT: TDateTimeField
      FieldName = 'DT_RETIRALIMENT'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object Qr_BoletimDT_BOLETIM: TDateTimeField
      FieldName = 'DT_BOLETIM'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object Qr_BoletimMORTALIDADE: TFloatField
      FieldName = 'MORTALIDADE'
    end
    object Qr_BoletimDT_COLETA: TDateTimeField
      FieldName = 'DT_COLETA'
    end
    object Qr_BoletimDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
    end
    object Qr_BoletimNUM_LAUDO: TStringField
      FieldName = 'NUM_LAUDO'
    end
  end
  object Ds_Boletim: TOraDataSource
    DataSet = Qr_Boletim
    Left = 206
    Top = 55
  end
  object Qr_Pintainho: TOraQuery
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
      
        ' Select AF.ID_LOTE, AF.NR_NOTA, AF.GTA, AF.DATA_GTA,  AF.QUANTID' +
        'ADE , AF.DATA_RECEB  '
      '  From INTEGRADO_ALOJAMENTO_FORNEC AF '
      ' WHERE AF.ID_LOTE = :ID_LOTE ')
    FetchAll = True
    AfterOpen = Qr_PintainhoAfterOpen
    Left = 168
    Top = 86
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_LOTE'
        Value = 43022
      end>
    object Qr_PintainhoID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_PintainhoNR_NOTA: TFloatField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object Qr_PintainhoGTA: TFloatField
      FieldName = 'GTA'
    end
    object Qr_PintainhoDATA_GTA: TDateTimeField
      FieldName = 'DATA_GTA'
    end
    object Qr_PintainhoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object Qr_PintainhoDATA_RECEB: TDateTimeField
      FieldName = 'DATA_RECEB'
    end
  end
  object Ds_Pintainho: TOraDataSource
    DataSet = Qr_Pintainho
    Left = 206
    Top = 86
  end
  object Qr_Retiradas: TOraQuery
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
      'Select IR.ID_LOTE , IR.ID_NOTAFISC, NF.NR_NOTAFISC, IR.GTA,'
      '       NF.DT_SAIDNOTAFISC , IR.QTD_AVESABAT, '
      
        '       ( IR.MORTALIDADE / A.AVES_ALOJ ) * 100 PER_MORT  , IR.MOR' +
        'TALIDADE, NF.GN_PLACVEICNOTAFISC PLACAVEIC,'
      
        '        C.SIGLA_SERVINSPEC, C.NUM_SERVINSPEC, IR.PER_MORTBOLETIM' +
        ','
      
        '     ROW_NUMBER() OVER (PARTITION BY NF.DT_SAIDNOTAFISC ORDER BY' +
        ' IR.ID_NOTAFISC ) Seq_Dia, '
      '    TO_NUMBER( P.GN_OBSEPEDIVEND ) QTD_NF'
      '  From INTEGRADO_RETIRADA IR'
      ' Inner Join NOTA_FISCAL NF '
      '    On IR.ID_NOTAFISC = NF.ID_NOTAFISC'
      ' Inner Join INTEGRADO_ALOJAMENTO A'
      '    On A.ID_LOTE = IR.ID_LOTE   '
      ' Inner Join Cliente C'
      '   On NF.ID_CLIENTE = C.ID_CLIENTE'
      ' Inner Join PEDIDO_VENDA_NOTA_FISCAL PN'
      '    ON NF.ID_NOTAFISC = PN.ID_NOTAFISC '
      ' Inner Join PEDIDO_VENDA P'
      '    ON P.ID_PEDIVEND = PN.ID_PEDIVEND'
      ' Where IR.ID_LOTE =  :ID_LOTE '
      '   AND NVL(GTA,0) <> 0'
      'Order By IR.ID_LOTE , IR.ID_NOTAFISC')
    FetchAll = True
    AfterOpen = Qr_RetiradasAfterOpen
    Left = 168
    Top = 115
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_LOTE'
        Value = 43022
      end>
    object Qr_RetiradasID_LOTE: TFloatField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object Qr_RetiradasID_NOTAFISC: TFloatField
      FieldName = 'ID_NOTAFISC'
      Required = True
    end
    object Qr_RetiradasNR_NOTAFISC: TFloatField
      FieldName = 'NR_NOTAFISC'
      Required = True
    end
    object Qr_RetiradasGTA: TFloatField
      FieldName = 'GTA'
    end
    object Qr_RetiradasDT_SAIDNOTAFISC: TDateTimeField
      FieldName = 'DT_SAIDNOTAFISC'
      Required = True
    end
    object Qr_RetiradasQTD_AVESABAT: TFloatField
      FieldName = 'QTD_AVESABAT'
    end
    object Qr_RetiradasPER_MORT: TFloatField
      FieldName = 'PER_MORT'
      DisplayFormat = '#0.00'
    end
    object Qr_RetiradasMORTALIDADE: TFloatField
      FieldName = 'MORTALIDADE'
    end
    object Qr_RetiradasPLACAVEIC: TStringField
      FieldName = 'PLACAVEIC'
      Size = 10
    end
    object Qr_RetiradasSIGLA_SERVINSPEC: TStringField
      FieldName = 'SIGLA_SERVINSPEC'
      Size = 4
    end
    object Qr_RetiradasNUM_SERVINSPEC: TStringField
      FieldName = 'NUM_SERVINSPEC'
      Size = 5
    end
    object Qr_RetiradasPER_MORTBOLETIM: TFloatField
      FieldName = 'PER_MORTBOLETIM'
    end
    object Qr_RetiradasSEQ_DIA: TFloatField
      FieldName = 'SEQ_DIA'
    end
    object Qr_RetiradasQTD_NF: TFloatField
      FieldName = 'QTD_NF'
    end
  end
  object Ds_Retirada: TOraDataSource
    DataSet = Qr_Retiradas
    Left = 206
    Top = 115
  end
end
