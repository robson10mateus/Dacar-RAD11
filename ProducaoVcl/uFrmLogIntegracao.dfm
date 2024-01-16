object FrmLogIntegracao: TFrmLogIntegracao
  Left = 559
  Top = 247
  Caption = 'Log Integra'#231#227'o'
  ClientHeight = 362
  ClientWidth = 536
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'helvetica'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 321
    Width = 536
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 326
    ExplicitWidth = 544
    object Image1: TImage
      Left = 112
      Top = 8
      Width = 105
      Height = 105
    end
    object btnFechar: TButton
      Left = 467
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btnFecharClick
    end
    object btnAtualizar: TButton
      Left = 380
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 1
      OnClick = btnAtualizarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 536
    Height = 321
    Align = alClient
    DataSource = dtsLogIntegracao
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'helvetica'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'LIT_CODIGO'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIT_DT_INICIAL'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIT_DT_FINAL'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IPB_BALANCA'
        Width = 50
        Visible = True
      end>
  end
  object dtsLogIntegracao: TDataSource
    DataSet = DmPrincipal.cdsLogIntegracao
    Left = 264
    Top = 168
  end
end
