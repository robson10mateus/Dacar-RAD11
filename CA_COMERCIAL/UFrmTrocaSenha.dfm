object FrmTrocaSenha: TFrmTrocaSenha
  Left = 573
  Top = 135
  Width = 310
  Height = 202
  HorzScrollBar.Range = 282
  VertScrollBar.Range = 166
  ActiveControl = EdSenhaAnterior
  Caption = 'Altera'#231#227'o de Senha do Usu'#225'rio'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label6: TLabel
    Left = 75
    Top = 10
    Width = 148
    Height = 15
    Caption = '&1 - Digite a senha anterior:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 75
    Top = 51
    Width = 130
    Height = 15
    Caption = '&2 - Digite a nova senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 75
    Top = 93
    Width = 144
    Height = 15
    Caption = '&3 - Redigite a nova senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdSenhaAnterior: TEdit
    Left = 74
    Top = 25
    Width = 153
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = Pressionou_enter_senhas
  end
  object EdNovaSenha: TEdit
    Left = 74
    Top = 66
    Width = 153
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = Pressionou_enter_senhas
  end
  object EdSenhaNova: TEdit
    Left = 74
    Top = 108
    Width = 153
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = Pressionou_enter_senhas
  end
  object BtConfirmaSenha: TBitBtn
    Left = 21
    Top = 141
    Width = 160
    Height = 25
    Hint = 'Confirma a Altera'#231#227'o da Senha'
    Caption = '&Confirma Nova Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Confirma_Senha
  end
  object BtCancelaSenha: TBitBtn
    Left = 202
    Top = 141
    Width = 80
    Height = 25
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      04000000000068010000120B0000120B00001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    OnClick = FecharTrocaSenha
  end
  object qryTemp: TOraQuery
    Session = DBSenha
    SQL.Strings = (
      'SELECT SYSDATE FROM DUAL')
    Left = 14
    Top = 77
  end
  object DBSenha: TOraSession
    Options.DateFormat = 'DD/MM/YYYY'
    Options.DateLanguage = 'PORTUGUESE'
    Options.Direct = True
    Username = 'smart'
    Server = '10.0.1.254:1521:orcl'
    LoginPrompt = False
    Left = 12
    Top = 8
    EncryptedPassword = '8FFF86FF87FF96FF8CFF'
  end
  object Qry_Bases: TOraQuery
    Session = DBSenha
    SQL.Strings = (
      'Select C.ID_Base , U.ID_USUARIO,C.Descr,'
      '           U.LOG_USUARIO, C.usuario ,'
      
        '       SUBSTR( SUBSTR(C.Conexao, INSTR(C.Conexao, '#39'@'#39') + 1 , LEN' +
        'GTH(C.Conexao) ), 1,'
      
        '               INSTR( SUBSTR(C.Conexao, INSTR(C.Conexao, '#39'@'#39') + ' +
        '1 , LENGTH(C.Conexao) ), '#39':'#39',1,2)-1 ) Servidor'
      '  From CA_Base C'
      '  INNER join smart.USUARIO_BASE&Datalink U'
      '    On C.ID_BASE = U.ID_BASE'
      '   AND RTRIM ( U.lOG_USUARIO)  = :LOG_USUARIO'
      ' ORDER BY C.ID_BASE ')
    Left = 247
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'LOG_USUARIO'
        ParamType = ptInput
        Value = nil
      end>
    MacroData = <
      item
        Name = 'Datalink'
      end>
    object Qry_BasesID_BASE: TIntegerField
      FieldName = 'ID_BASE'
      Required = True
    end
    object Qry_BasesID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object Qry_BasesLOG_USUARIO: TStringField
      FieldName = 'LOG_USUARIO'
      FixedChar = True
      Size = 8
    end
    object Qry_BasesUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Qry_BasesSERVIDOR: TStringField
      FieldName = 'SERVIDOR'
      Size = 100
    end
    object Qry_BasesDESCR: TStringField
      FieldName = 'DESCR'
      Size = 60
    end
  end
  object qry_AtualizaUsuarios: TOraQuery
    Session = DBSenha
    SQL.Strings = (
      'UPDATE &ESQUEMA.SCT_USUARIO&DATALINK'
      '   Set senha  = :senha ,'
      
        '    VENCTO_SENHA  =  TRUNC( sysdate + ( Select MIN(DIAS_PERIODIC' +
        'IDADE_TROCA) from &ESQUEMA.SCT_REGRA_SENHA&DATALINK ) )'
      ' Where  RTRIM( LOG_USUARIO ) = :LOG_USUARIO ')
    CachedUpdates = True
    Left = 246
    Top = 85
    ParamData = <
      item
        DataType = ftString
        Name = 'senha'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'LOG_USUARIO'
        ParamType = ptInput
        Value = nil
      end>
    MacroData = <
      item
        Name = 'ESQUEMA'
      end
      item
        Name = 'DATALINK'
      end>
  end
end
