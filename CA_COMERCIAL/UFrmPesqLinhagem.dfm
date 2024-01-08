object FrmPesqLinhagem: TFrmPesqLinhagem
  Left = 593
  Top = 203
  Width = 401
  Height = 296
  HorzScrollBar.Range = 385
  VertScrollBar.Range = 284
  ActiveControl = DBGrid1
  Caption = 'Pesquisa Linhagem'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 8
    Width = 385
    Height = 237
    DataSource = DS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = 16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_LINHAGEM'
        Title.Caption = 'Id Linhagem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_LINHAGEM'
        Title.Caption = 'Desc Linhagem'
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 56
    Top = 259
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
    TabOrder = 1
  end
  object BitBtn3: TBitBtn
    Left = 240
    Top = 259
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
    TabOrder = 2
  end
  object Qr: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT IL.ID_LINHAGEM, IL.DESC_LINHAGEM '
      '  FROM INTEGRADO_LINHAGEM IL'
      ' ORDER BY IL.ID_LINHAGEM')
    Left = 336
    Top = 264
    object QrID_LINHAGEM: TFloatField
      FieldName = 'ID_LINHAGEM'
      Required = True
    end
    object QrDESC_LINHAGEM: TStringField
      FieldName = 'DESC_LINHAGEM'
      Size = 40
    end
  end
  object DS: TOraDataSource
    DataSet = Qr
    Left = 368
    Top = 264
  end
end
