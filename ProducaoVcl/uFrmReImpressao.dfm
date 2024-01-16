object FrmReImpressao: TFrmReImpressao
  Left = 182
  Top = 96
  ActiveControl = PageControl1
  BorderStyle = bsDialog
  Caption = 'Re-Impress'#227'o de Etiquetas'
  ClientHeight = 343
  ClientWidth = 478
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 478
    Height = 343
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    ExplicitWidth = 494
    ExplicitHeight = 382
    object TabSheet1: TTabSheet
      Caption = 'Re-Impress'#227'o'
      object Label1: TLabel
        Left = 6
        Top = 8
        Width = 66
        Height = 16
        Caption = 'Data inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 110
        Top = 8
        Width = 56
        Height = 16
        Caption = 'Data final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 214
        Top = 8
        Width = 50
        Height = 16
        Caption = 'Balan'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 294
        Top = 8
        Width = 65
        Height = 16
        Caption = 'Seq. inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 390
        Top = 8
        Width = 55
        Height = 16
        Caption = 'Seq. final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
      end
      object edtDataInicial: TMaskEdit
        Left = 6
        Top = 29
        Width = 90
        Height = 28
        EditMask = '!99/99/00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 0
        Text = '  /  /  '
      end
      object edtDataFinal: TMaskEdit
        Left = 110
        Top = 29
        Width = 90
        Height = 28
        EditMask = '!99/99/00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 1
        Text = '  /  /  '
      end
      object edtBalanca: TEdit
        Left = 214
        Top = 29
        Width = 65
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 2
        OnKeyPress = edtBalancaKeyPress
      end
      object edtSeqInicial: TEdit
        Left = 294
        Top = 29
        Width = 84
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        MaxLength = 5
        ParentFont = False
        TabOrder = 5
        OnExit = edtSeqInicialExit
        OnKeyPress = edtBalancaKeyPress
      end
      object edtSeqFinal: TEdit
        Left = 390
        Top = 29
        Width = 84
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 16
        Font.Name = 'Microsoft Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        MaxLength = 5
        ParentFont = False
        TabOrder = 8
        OnExit = edtSeqInicialExit
        OnKeyPress = edtBalancaKeyPress
      end
      object Panel1: TPanel
        Left = 0
        Top = 151
        Width = 479
        Height = 41
        BevelOuter = bvLowered
        TabOrder = 3
        object btnVerificar: TButton
          Left = 246
          Top = 8
          Width = 105
          Height = 25
          Caption = 'Verificar'
          TabOrder = 0
          OnClick = btnVerificarClick
        end
        object btnFechar: TButton
          Left = 363
          Top = 8
          Width = 105
          Height = 25
          Caption = 'Fechar'
          TabOrder = 1
          OnClick = btnFecharClick
        end
        object btnImpUltEtiqueta: TButton
          Left = 12
          Top = 8
          Width = 105
          Height = 25
          Caption = 'Imp. ult. etiqueta'
          TabOrder = 2
          OnClick = btnImpUltEtiquetaClick
        end
        object btnImprimir: TButton
          Left = 129
          Top = 8
          Width = 105
          Height = 25
          Caption = 'Imprimir'
          Enabled = False
          TabOrder = 3
          OnClick = btnImprimirClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 264
        Top = 72
        Width = 209
        Height = 73
        Caption = 'Procurar o produto'
        TabOrder = 4
        object edtCodProd_01: TEdit
          Left = 89
          Top = 28
          Width = 29
          Height = 21
          MaxLength = 3
          TabOrder = 0
          OnKeyPress = edtBalancaKeyPress
        end
      end
      object dbgResultado: TDBGrid
        Left = 0
        Top = 201
        Width = 486
        Height = 132
        Align = alBottom
        Color = clBackground
        DataSource = dtsReImpressao
        ReadOnly = True
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_IDENREGIPROD'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODMATEEMBA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_PRODREDUMATEEMBA'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_BALAREGIPROD'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QN_PESOPADRREGIPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QN_PESOLIQUREGIPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QN_TARAEMBAREGIPROD'
            Visible = True
          end>
      end
      object RadioGroup1: TRadioGroup
        Left = 8
        Top = 72
        Width = 250
        Height = 73
        Caption = 'Procurar registros com flag'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'ES - Estoque'
          'CR - Carregando'
          'DV - Devolvendo')
        TabOrder = 7
      end
      object StatusBar1: TStatusBar
        Left = 0
        Top = 333
        Width = 486
        Height = 19
        Panels = <
          item
            Width = 50
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Log'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 486
        Height = 352
        Align = alClient
        Color = clBackground
        DataSource = dtsLogReImpressao
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'LRI_DATA_HORA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LRI_IDENTIFICACAO'
            Visible = True
          end>
      end
    end
  end
  object dtsReImpressao: TDataSource
    DataSet = DmPrincipal.qryOraReImpressao
    OnDataChange = dtsReImpressaoDataChange
    Left = 192
    Top = 240
  end
  object dtsLogReImpressao: TDataSource
    DataSet = DmPrincipal.cdsLogReImpressao
    OnDataChange = dtsReImpressaoDataChange
    Left = 232
    Top = 240
  end
end
