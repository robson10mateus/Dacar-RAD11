inherited frmConsultaProdutos: TfrmConsultaProdutos
  Left = 408
  Top = 339
  Width = 968
  Caption = 'Comercial Dacar - Consulta de Produtos'
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  ExplicitWidth = 968
  TextHeight = 10
  inherited DBGrid1: TDBGrid
    Width = 956
    DataSource = dtsConsultaProdutos
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODMATEEMBA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = 11
        Title.Font.Name = 'Arial'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_PRODMATEEMBA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = 11
        Title.Font.Name = 'Arial'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_PRODREDUMATEEMBA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = 11
        Title.Font.Name = 'Arial'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_EMBALAGEM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = 11
        Title.Font.Name = 'Arial'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QN_CAPAMEDIMATEEMBA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = 11
        Title.Font.Name = 'Arial'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_MATERIAL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = 11
        Title.Font.Name = 'Arial'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_MATERIAL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = 11
        Title.Font.Name = 'Arial'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end>
  end
  inherited pnlBotoes: TPanel
    Width = 956
    ExplicitWidth = 952
    inherited BitBtn1: TBitBtn
      OnClick = BitBtn1Click
    end
    inherited BitBtn2: TBitBtn
      OnClick = BitBtn2Click
    end
  end
  inherited pnlFiltros: TPanel
    Width = 956
    ExplicitWidth = 952
    inherited ComboBox1: TComboBox
      ItemIndex = 3
      Text = 'Descri'#231#227'o do Produto'
      Items.Strings = (
        'C'#243'digo do Produto'
        'C'#243'digo do Material'
        'C'#243'digo da Embalagem'
        'Descri'#231#227'o do Produto'
        'Descri'#231#227'o do Material'
        'Descri'#231#227'o da Embalagem')
    end
    inherited ComboBox2: TComboBox
      ItemIndex = 1
      Text = 'Contendo'
      Items.Strings = (
        'Igual'
        'Contendo')
    end
  end
  object qryConsultaProdutos: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      
        'SELECT DISTINCT ME.EMPRESA, ME.FILIAL, ME.ID_MATERIAL, ME.ID_MAT' +
        'EEMBA, ME.ID_PRODMATEEMBA,'
      
        '       ME.NM_PRODMATEEMBA, ME.NM_PRODREDUMATEEMBA, ME.ID_EMBALAG' +
        'EM, ME.QN_CAPAMINIMATEEMBA,'
      
        '       ME.QN_CAPAMAXIMATEEMBA, ME.QN_CAPAPADRMATEEMBA, ME.QN_CAP' +
        'AMEDIMATEEMBA,'
      
        '       ME.QN_CAPAPADRUNIDMATEEMBA, ME.QN_CAPAMEDIUNIDMATEEMBA, M' +
        'E.FX_MATEEMBA,'
      '       M.NM_MATERIAL, M.IE_MATERIAL, EM.NM_EMBALAGEM'
      'FROM MATERIAL_EMBALAGEM ME'
      
        'INNER JOIN MATERIAL M ON (M.ID_MATERIAL = ME.ID_MATERIAL AND M.E' +
        'MPRESA = ME.EMPRESA AND M.FILIAL = ME.FILIAL)'
      
        'INNER JOIN EMBALAGEM EM ON (EM.EMPRESA = ME.EMPRESA AND EM.FILIA' +
        'L = ME.FILIAL AND EM.ID_EMBALAGEM = ME.ID_EMBALAGEM)'
      'ORDER BY ME.ID_PRODMATEEMBA')
    Left = 124
    Top = 11
    object qryConsultaProdutosID_PRODMATEEMBA: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_PRODMATEEMBA'
      Size = 3
    end
    object qryConsultaProdutosNM_PRODMATEEMBA: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
    object qryConsultaProdutosNM_PRODREDUMATEEMBA: TStringField
      DisplayLabel = 'Descri'#231#227'o Fantasia do Produto'
      FieldName = 'NM_PRODREDUMATEEMBA'
      Size = 15
    end
    object qryConsultaProdutosNM_EMBALAGEM: TStringField
      DisplayLabel = 'Tipo de Embalagem'
      FieldName = 'NM_EMBALAGEM'
      Required = True
      Size = 40
    end
    object qryConsultaProdutosQN_CAPAMEDIMATEEMBA: TFloatField
      DisplayLabel = 'Peso Embalagem'
      FieldName = 'QN_CAPAMEDIMATEEMBA'
    end
    object qryConsultaProdutosID_MATERIAL: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = 'C'#243'd. Interno'
      FieldName = 'ID_MATERIAL'
      Required = True
    end
    object qryConsultaProdutosNM_MATERIAL: TStringField
      DisplayLabel = 'Descri'#231#227'o Interna'
      FieldName = 'NM_MATERIAL'
      Required = True
      Size = 40
    end
    object qryConsultaProdutosEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Visible = False
      Size = 2
    end
    object qryConsultaProdutosFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
      Visible = False
    end
    object qryConsultaProdutosID_MATEEMBA: TFloatField
      FieldName = 'ID_MATEEMBA'
      Required = True
      Visible = False
    end
    object qryConsultaProdutosID_EMBALAGEM: TFloatField
      FieldName = 'ID_EMBALAGEM'
      Required = True
      Visible = False
    end
    object qryConsultaProdutosQN_CAPAMINIMATEEMBA: TFloatField
      FieldName = 'QN_CAPAMINIMATEEMBA'
      Visible = False
    end
    object qryConsultaProdutosQN_CAPAMAXIMATEEMBA: TFloatField
      FieldName = 'QN_CAPAMAXIMATEEMBA'
      Visible = False
    end
    object qryConsultaProdutosQN_CAPAPADRMATEEMBA: TFloatField
      FieldName = 'QN_CAPAPADRMATEEMBA'
      Visible = False
    end
    object qryConsultaProdutosQN_CAPAPADRUNIDMATEEMBA: TFloatField
      FieldName = 'QN_CAPAPADRUNIDMATEEMBA'
      Visible = False
    end
    object qryConsultaProdutosQN_CAPAMEDIUNIDMATEEMBA: TFloatField
      FieldName = 'QN_CAPAMEDIUNIDMATEEMBA'
      Visible = False
    end
    object qryConsultaProdutosFX_MATEEMBA: TStringField
      FieldName = 'FX_MATEEMBA'
      Required = True
      Visible = False
      Size = 1
    end
    object qryConsultaProdutosIE_MATERIAL: TStringField
      FieldName = 'IE_MATERIAL'
      Visible = False
      Size = 15
    end
  end
  object dtsConsultaProdutos: TOraDataSource
    DataSet = qryConsultaProdutos
    Left = 151
    Top = 11
  end
end
