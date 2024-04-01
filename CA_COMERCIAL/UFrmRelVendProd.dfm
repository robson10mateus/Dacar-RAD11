object FrmRelVendProd: TFrmRelVendProd
  Left = 405
  Top = 159
  Width = 1078
  Height = 693
  VertScrollBar.Range = 45
  ActiveControl = PageControl1
  BorderStyle = bsSingle
  Caption = 'Comercial Dacar - Relat'#243'rio de Produtos por Vendedor'
  Color = clBtnFace
  FormStyle = fsMDIChild
  Position = poDefault
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13

  object PageControl1: TPageControl
    Left = 0
    Top = 45
    Width = 1078
    Height = 648
    ActivePage = TabCriterio
    Align = alClient
    Font.Color = clBlack
    Font.Height = 13
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Style = []

    ParentFont = False
    TabOrder = 0
    object TabCriterio: TTabSheet
      Caption = 'Crit'#233'rio'
      object LCampos: TListBox
        Left = 10
        Top = 10
        Width = 252
        Height = 390
        Font.Color = clBlack
        Font.Height = 13
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
        TabOrder = 0
        OnClick = LCamposClick
      end
      object MResul: TMemo
        Left = 270
        Top = 120
        Width = 482
        Height = 283
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'Courier New'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
        TabOrder = 1
      end
      object Label6: TLabel
        Left = 270
        Top = 20
        Width = 64
        Height = 16
        Caption = 'Condi'#231#227'o:'
        Font.Color = clBlack
        Font.Height = 13
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object CBCond: TComboBox
        Left = 350
        Top = 18
        Width = 129
        Height = 24
        Font.Color = clBlack
        Font.Height = 13
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ItemHeight = 18
        Items.Strings = (
          'Igual a'
          'Diferente de'
          'Maior que'
          'Maior ou igual a'
          'Menor que'
          'Menor ou igual a')
        ItemIndex = 0
        ParentFont = False
        TabOrder = 3
        Text = 'Igual a'
      end
      object Label7: TLabel
        Left = 270
        Top = 55
        Width = 74
        Height = 16
        Caption = 'Express'#227'o:'
        Font.Color = clBlack
        Font.Height = 13
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object EdExpre: TEdit
        Left = 350
        Top = 52
        Width = 260
        Height = 24
        Font.Color = clBlack
        Font.Height = 13
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
        TabOrder = 5
        OnChange = EdExpreChange
      end
      object RGeou: TRadioGroup
        Left = 534
        Top = 18
        Width = 105
        Height = 26
        Items.Strings = (
          '&e'
          '&ou')
        Columns = 2
        Font.Color = clBlack
        Font.Height = 11
        Font.Name = 'MS Shell Dlg'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ItemIndex = 0
        ParentFont = False
        TabOrder = 6
      end
      object BtIncluir: TBitBtn
        Left = 672
        Top = 18
        Width = 75
        Height = 23
        Caption = '&Incluir'
        Default = True
        Enabled = False
        TabOrder = 7
        OnClick = BtIncluirClick
        Glyph.Data = {
          22060000424D1E0600000000000036000000280000001B000000120000000100
          180000000000E8050000120B0000120B00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0000000FFFF00000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFF
          FFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0000000FFFF00FFFF00FFFF00FFFF00FFFF00000000C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFF
          FFFFFFFFFF800000FFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
          C0C0C0C0C0C0C0C0C0C0000000FFFF00FFFF00FFFF00FFFF00FFFF0080000000
          0000FFFF00FFFF00000000C0C0C0000000000000000000000000000000C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0000000FFFF
          FFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFF00000000000000000000000000
          000000FFFF00FFFF00FFFF00FFFF00FFFF000000C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0000000C0C0C0C0C0C0000000FFFF00FFFF00FFFF00FFFF00FFFF008000
          00FFFF00FFFF00FFFF0000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF000000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000
          FFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFF0000
          0000000000000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00
          0000C0C0C0C0C0C0C0C0C0000000000000FFFF00FFFF00800000FFFF00FFFF00
          800000FFFF00FFFF00FFFF00800000FFFF00000000000000808000000000C0C0
          C000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000
          0000C0C0C0000000FFFFFFFFFFFF800000FFFFFFFFFFFF800000FFFFFFFFFFFF
          FFFFFF80000000000000FFFF00000080800000000000000000FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF000000000000C0C0C0C0C0C0000000FF
          FF00FFFF00800000FFFF00FFFF00800000FFFF00FFFF00FFFF0000000000FFFF
          00FFFF00000080800000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
          00000000000000000000C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF800000FFFFFFFFFFFFFFFFFF00000000FFFF00FFFF000000808000
          00000000FFFF00FFFF00FFFF00FFFF000000C0C0C0C0C0C0C0C0C0000000C0C0
          C0C0C0C0C0C0C0C0C0C0000000FFFF00FFFF00800000FFFF00FFFF00FFFF00FF
          FF00000000C0C0C000000000FFFF00FFFF00000080800000000000FFFF000000
          000000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0000000FFFFFFFFFFFF800000FFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C000
          000000FFFF00FFFF000000808000000000000000C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFF00FFFF
          00FFFF00000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000000000
          0000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFF000000C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808000000000C0
          C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C000
          0000}
      end
      object BtLimpar: TBitBtn
        Left = 672
        Top = 52
        Width = 75
        Height = 23
        Caption = 'Limpar'
        TabOrder = 8
        OnClick = BtLimparClick
        Glyph.Data = {
          2E010000424D2A010000000000007600000028000000110000000F0000000100
          040000000000B4000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFF0000000FFF700000007FFFFF0000000FFF0FFFFFFF0FFFFF0000000FFF0
          F0F0F0F0FFFFF0000000FFF0F0F0F0F0FFFFF0000000FFF0F0F0F0F0FFFFF000
          0000FFF0F0F0F0F0FFFFF0000000FFF0F0F0F0F0FFFFF0000000FFF0F0F0F0F0
          FFFFF0000000FFF0F0F0F0F0FFFFF0000000FFF0FFFFFFF0FFFFF0000000FF70
          000000007FFFF0000000FF0FFFFFFFFF0FFFF0000000FF70000000007FFFF000
          0000FFFFF70007FFFFFFF0000000}
      end
      object BtAtivar: TBitBtn
        Left = 672
        Top = 87
        Width = 75
        Height = 22
        Caption = '&Ativar'
        TabOrder = 9
        OnClick = BtAtivarClick
        Glyph.Data = {
          3A030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FF0000FF0000FFFFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFF00
          00FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object BPESQ: TBitBtn
        Left = 615
        Top = 52
        Width = 23
        Height = 20
        TabOrder = 10
        Visible = False
        OnClick = BPESQClick
        Glyph.Data = {
          EA000000424DE6000000000000007600000028000000100000000E0000000100
          04000000000070000000120B0000120B00001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333033333333333333000333333333333000333333333333100
          3333333300000B1333333330F7F700333333330F7F7F703333333307F7F7F033
          3333330F7F7F703333333307F7F7F033333333307F7F03333333333300003333
          33333333333333333333}
      end
      object Label1: TLabel
        Left = 460
        Top = 87
        Width = 8
        Height = 16
        Caption = 'a'
      end
      object Label2: TLabel
        Left = 270
        Top = 90
        Width = 76
        Height = 16
        Caption = 'Dt. Entrega:'
        Font.Color = clBlack
        Font.Height = 13
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []

        ParentFont = False
      end
      object DTini: TMaskEdit
        Left = 350
        Top = 87
        Width = 101
        Height = 24
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 13
        Text = '  /  /    '
      end
      object DtFim: TMaskEdit
        Left = 480
        Top = 87
        Width = 101
        Height = 24
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 14
        Text = '  /  /    '
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1078
    Height = 45
    Align = alTop
    TabOrder = 1
    object Sb_Sair: TSpeedButton
      Left = 5
      Top = 5
      Width = 35
      Height = 35
      Hint = 'Sair'
      Flat = True
      Glyph.Data = {
        320A0000424D2E0A00000000000036000000280000001D0000001D0000000100
        180000000000F8090000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFDF8F7F4F3F3F0F3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3
        EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF3F3EFF4
        F4F1FCFCF9FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFEEEEEBBDBDC59697
        A78C8D9C8B8C9B8C8C9B8C8D9B8C8D9B8C8D9B8C8C9B8B8C9B8B8C9B8B8C9C8B
        8B9C8A8B9C8A8B9B8A8A9B8A8A9C89899C89899B89899A8D8D9DA1A1B0D4D4D5
        FBFBF8FFFFFFFFFFFF00FFFFFFEEEEEC999BBD4F51C1373BDD393FE93C42EB3D
        42EC3E43EE3E43F13E43F23D42F33C42F63B40F83B3EFA393DFC393DFC3A3EFC
        3B3EFC3B3FFE3B3EFE3D41FA3E45F93D43F13C40D26667AFC6C6CBFCFCFAFFFF
        FF00FFFFFDB3B4CC3A3BCF2829CB1211BA0302B90202BF0202C20202C60202CB
        0202CF0202D30101D60000DA0000DF0303E10A0BE40F13E51519E61921E71F28
        E8232EE92734EB303DED4A57F4414BE7696BB7E3E2E4FFFFFF00F9F9F66464CC
        1212C40000B00000B50000BA0000C00000C20000C60000CB0000CE0000D10000
        D60808DC0D0DE10203E30000E30002E40B11E6131BE71922E81D29E9212FEA26
        35EB2738ED3C4EF43139D0BCBBD0FFFFFF00F5F5F22B2BCF0000AB0000B30000
        B70000BB0000BF0000C30000C60000C72E2ED87272E69B9BEFADADF3B1B1F5A8
        A8F58E8FF25E61EE161DE70811E61B23E91F2AEA232FEB2837EB2C3DEE3042F0
        2838E49899C9FFFFFE00F4F4F11818C20000AA0000B20000B60000BA0000BF00
        00C00404C78F8FE8DADAF8FBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEEFD
        C9CBF85D63EF0611E61D29EA232FEB2837EB2D3DEE3244F02336E6898BC6FFFF
        FE00F4F4F11515BB0000AA0000B20000B50000B90000BC1515C7C2C2F1FFFFFF
        FFFFFFFFFFFFFFFFFFF6F6FAEAEAF7FFFFFDFFFFFFFFFFFFFFFFFFF2F2FE8A8F
        F30B16E7222EEB2836EB2C3CEE3243F02133E38A8CC4FFFFFE00F4F4F11616B6
        0000A80000B10000B30000B60808BEC6C6F0FFFFFFFFFFFFFFFFFFA0A0E32A2A
        D00A0AD20B0BD91012D85759DEE6E6F6FFFFFFFFFFFFFDFCFE848AF30E1CE827
        34EA2B3AED3142F11F31E08A8BC1FFFFFE00F4F4F11515B00000A80303B10303
        B40000B49A9AE3FFFFFFFFFFFFFFFFFF3535C80000CB0000D30000D80000DD00
        00DF0000E30000DAB6B8EEFFFFFFFFFFFFECECFD4D58EE1D2AEA2A37ED3040F0
        1E2FDC898BBFFFFFFF00F4F4F01616AB0606A91010B30909B54848C9E2E2F6FF
        FFFFFFFFFF5656CD0000CB0505D00000D20000D60000DA0000DE0000E20004E5
        0000DBDADAF4FFFFFFFFFFFFB4B7F71623E92635ED2D3DF01A2BD98A8ABCFFFF
        FE00F4F4F11717A40B0BA61919B50C0CB48686DAFEFEFFFFFFFFCECEEC1111C6
        2222D02727D42424D71818D80B0BDA0303DD0000E00002E30001E53034DFFFFF
        FFFFFFFFD6D8FB3F49ED1F2DEB2A39EE1827D6898BBCFFFFFE00F4F4F117179E
        1010A62020B61919B6A9A9E4FFFFFFFFFFFF7D7DDA2222CB2A2ACF2C2CD42E2E
        D73131DB3434DF2929E01616E10808E30101E30000E1F1F1F9FFFFFFE7E9FC5E
        66EF1724EA2633EC1422D3898ABCFFFFFE00F4F4F118189A1818A72727B72C2C
        BBB6B6E7FFFFFFFFFFFF6565D52C2CCA3232CF3434D33535D63434D93535DD3B
        3BE14040E43333E61B1BE50003E3C7C8F7FFFFFFEEF0FD6A70EF111DE8212DEA
        101CD18889BCFFFFFE00F4F4F11818941E1EA63030B82F2FB8B5B5E6FFFFFFFF
        FFFF7777DB3434CA3B3BCF3B3BD23E3ED55555DE6464E34747DF4242E24848E6
        4949E92A2BE7DBDCFAFFFFFFEBECFC6165ED0E17E81C27E80C16CE8889BCFFFF
        FE00F4F4F118188F2323A53A3AB92F2FB6A4A4DEFFFFFFFFFFFFB3B3E93939C8
        4242CF4040D26262DCD3D3F6E4E4FA8B8BEA4B4BE14E4EE44D4DE75858EAFFFF
        FFFFFFFFDCDCF94145E80B12E7171FE8060DCC8888BBFFFFFE00F3F3F118188A
        2A2AA54343B93939B88080CFEFEFF8FFFFFFFEFEFE5656CF4545CD4646D07D7D
        DFFFFFFFFFFFFFBABAF25C5CE25454E34646E2B3B3F4FFFFFFFFFFFFC3C4F511
        14E1060BE50F15E60005C98788BBFFFFFE00F3F3F11919883030A54A4ABA4848
        BB4E4EBBD3D3EBFFFFFFFFFFFFDDDDF54C4CCC4A4ACF8383DFFFFFFFFFFFFFBE
        BEF16464E04E4EDE8E8EEBFFFFFFFFFFFFFBFBFCA6A6EB3636E80609E40507E5
        0000C78686BAFFFFFE00F3F3F11A1A873636A55353BA5151BB4C4CBE8585C9F7
        F7FAFFFFFFFFFFFFE5E5F75B5BD08787DEFFFFFFFFFFFFC0C0F16464DDADADED
        FDFDFFFFFFFFFFFFFFDDDDF36868E17272EC3B3BE70000E20000C38686BAFFFF
        FE00F3F3F11A1A863D3DA55C5CBC5B5BBC5D5DC14F4FBDA2A2D1FFFFFFFFFFFF
        FFFFFF9999DF8989DCFFFFFFFFFFFFBFBFEEA0A0E8FAFAFEFFFFFFFFFFFFEDED
        F57272D57373E87878E97F7FEA3030E20000BC8585BAFFFFFE00F3F3F11B1B85
        4949AA6565BD6363BE6565C16666C35656BD9595C8F8F8FADEDEEC6767C79393
        DEFFFFFFFFFFFFC4C4EF9090DDEAEAF5FFFFFDDFDFEC7171CF7979E67E7EE480
        80E58585E87F7FEA0A0ABA8282B8FFFFFF00F2F2F11D1D845656AE6C6CBD6A6A
        BE6C6CC16E6EC47070C86969C66262B46060BB6E6ECE9B9BDCFFFFFFFFFFFFCB
        CBF07B7BD98383CD9898CF7171CE8181E28484E18686E28787E38989E49797EA
        3131BC8686B8FFFFFE00F2F2F11F1F816A6AB67272BE7272BF7474C27575C477
        77C67979C97A7ACC7C7CCE7878CDA1A1DDFFFFFFFFFFFFCFCFEF8B8BDB8484DB
        8585DC8A8ADF8B8BDE8D8DDF8E8EE09090E19292E29B9BE64444BD8A8AB9FFFF
        FF00F4F4F22C2C8A7C7CBE7979BE7A7AC07C7CC27E7EC58080C78080CA8282CB
        8484CD8181CDA3A3DBFFFFFFFFFFFFC9C9EA8F8FD78E8ED99191DB9191DC9393
        DD9595DE9797DE9797DF9A9AE0A0A0E26767C59292BEFFFFFF00FAFAFA5757A4
        8585BF8080BF8282C18484C38686C58787C88989CA8A8ACC8C8CCD8C8CCF9595
        D1BCBCD9C8C8DEA3A3D69393D69797D89898DA9A9ADA9B9BDC9D9DDC9E9EDDA0
        A0DDA2A2DDA3A3DD9191D1B4B4D1FFFFFF00FFFFFF9E9EC98383BF8B8BC18888
        C18B8BC48C8CC58E8EC88F8FCA9191CC9292CD9393CF9393CF9191CB9494CC97
        97D39C9CD79D9DD89F9FD9A0A0D9A2A2DAA3A3DAA5A5DBA6A6DBA6A6D9BEBEE4
        9D9DCFE4E4EDFFFFFF00FFFFFFE7E7F18D8DC5A3A3CEA8A8D0A1A1CEA2A2CFA6
        A6D1A7A7D2A8A8D4AAAAD5ACACD7AEAED9AFAFDBB1B1DDB3B3DEB4B4DFB7B7DF
        B8B8E0BABAE1BBBBE1BDBDE1BFBFE3C3C3E4D9D9EEBEBEE0C2C2DDFBFBFCFFFF
        FF00FFFFFFFFFFFFE6E6F1A6A6D29292C99999CD9F9FD0A2A2D1A3A3D2A6A6D3
        A9A9D4AAAAD6ADADD7AFAFD8B1B1DAB4B4DBB4B4DDB8B8DDB9B9DFBCBCDFBDBD
        E0BDBDE0BEBEE0B8B8DCACACD7CDCDE5F9F9FBFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
        FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFE
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = Sb_SairClick
    end
    object btnExcel: TSpeedButton
      Left = 45
      Top = 5
      Width = 35
      Height = 35
      Flat = True
      Glyph.Data = {
        BA070000424DB60700000000000036000000280000001A000000180000000100
        18000000000080070000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF0EEF19CA7939EA9959FAA969FAA969FAA969FAA
        969FAA969FAA969FAA969FAA969FAA969FAA969FAA969FAA969FAA969FAA969E
        A995A2AC9AFFFCFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8599741F
        49002B53092B53092B53092B53092B53092B53092B53092B53092B53092B5309
        2B53092B53092B53092B53092B53092B53091A4600B9C4AF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF80966F2D540C375C18375C18375C18375C18375C
        18375C18375C18375C18375C18375C18375C18375C18375C18375C18375C1837
        5C18295008B1BFA60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81956F2A
        500B345817345817345817345816355917365A18375C18375C18375C18375C18
        375C18375C18375C18375C18375C18375C18295008B2C0A80000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF7E8C721E3A062943122943122943122943122B48
        13325316365B18375C18375C18375C18375C18375C18375C18375C18375C1837
        5C18295008B2C0A80000FFFFFFCDDCC2B0C79EB2C8A2B2C8A2BCD0AC5C794720
        420526470C26470C26460C25460C26470C2B4713355917375C18365918365918
        365918365918365918365918365918365918284E08B2BFA80000F7F9F6185C00
        2D6B002C6A002B68002A6700336F0538730C37720C36700B356E0B346D0B336D
        0A2D540E345617365A183F6F153E73113E73123E73123E73123E73123E73123E
        7312316901B5C7A60000EFF3EB2B6C003E780F3D760E336F03326D023A720E39
        710D326C052B6700356C0B356B0B346C0B2E570F345617365918427815417E0F
        417D0F417D0F417D0F417D0F417D0F417D0F347400B7CBA50000F0F4EC2D6E00
        3F7A0F36730493B37A8BAD702D6B00346F05608E3DABC299366F0B356E0C366E
        0B2F580F345517365918427715417C0F417C10417C10417C10417C10417C1041
        7C10337300B7CAA50000F0F5EC2F6F00417C10397607729D4EFFFFFF53862920
        6200FFFFFFC8D8BC2A670038710C38710C30590F335517365918427715417C0F
        417C10417C10417C10417C10417C10417C10337300B7CAA50000F0F5EC317100
        437E11417C102A6C00CDDCC1E3ECDD7CA45CFFFFFF2C6A0039730B3A730E3A74
        0C305A0F335517365918427715407C0F407B0F407B0F407B0F407B0F407B0F40
        7B0F337300B7CAA50000F1F4EC337300457F12437E11407C0E337200FFFFFFFF
        FFFF759F533370013D760E3C750D3C760D315A113253183556193F74143D790D
        3D780E3D780E3D780E3D780E3D780E3D780E306F00B5C9A40000F0F4ED357500
        468113458012437E10337300FFFFFFFFFFFF739E503573023E790E3D770F3C77
        0E376B0C3F780E3E7C0D63A0216AA82269A62269A62269A62269A62269A62269
        A6225FA113C4D9AC0000F0F5ED377600488214478113347400BCD1A9FEFEFE76
        A152FFFFFF3070003E790D3F790E3F790F376A0D3E750E3D790E609C2067A421
        66A32166A32166A32166A32166A32166A3215B9D11C3D7AB0000F1F5EC397800
        4A8315457F0F609233FFFFFF81A95F246800FFFFFFC8D9BA337200407B0F407B
        0F376B0D3E740F3D790E609C2067A42166A32166A32166A32166A32166A32166
        A3215B9D11C3D7AB0000F1F5EC3A79004C851645800E7DA65899B97B3A780241
        7D0C5E9132A0BD863F7B0C427D10427D10396C0E3E750E3D790E609C2067A421
        66A32166A32166A32166A32166A32166A3215B9D11C3D7AB0000EFF4EB3C7B00
        4D86174C851646810F417E09498314488214437E0E3D7A07457F12447F12447F
        113A6F0E3C750E3B770D5F9B1F65A22064A12064A12064A12064A12064A12064
        A1205A9B10C2D7AB0000FAFBF92D7100407E053F7D043F7C043E7B03447F0D48
        8114478113468013457F12447E12427C11467F134C88164A85136AA7266FAF27
        6FAE276FAE276FAE276FAE276FAE276FAE2765A918C6DBAD0000FFFFFFDEE8D3
        C5D8B3C7D9B6C7D9B6CFDEC182AB585692155A951C5A941C5A941C59941C5A95
        1C68A42269A62266A22080C03483C73483C63483C63483C63483C63483C63483
        C6347AC326CDE4B20000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1C37A5F
        A01667A42167A42167A42167A42167A42166A32166A321639F1F7EBE3281C533
        81C43381C43381C43381C43381C43381C43378C024CCE3B20000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF9DC0755E9E1566A32166A32166A32166A32166A3
        2166A32166A321639F1F7EBE3281C53381C43381C43381C43381C43381C43381
        C43378C024CCE3B20000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CBF735E
        9E1566A32166A32166A32166A32166A32166A32166A321639F1F7EBE3281C533
        81C43381C43381C43381C43381C43381C43378C024CBE3B00000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFAACA854F9500599B0E599B0E599B0E599B0E599B
        0E599B0E599B0E56980C73B82177C02276BF2176BF2176BF2176BF2176BF2176
        BF216BBA0FD9ECC20000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8
        E7C7D8E7C7D8E7C7D8E7C7D8E7C7D8E7C7D8E7C7D8E7C7D8E6C7DEEECCDFF0CC
        DFEFCCDFEFCCDFEFCCDFEFCCDFEFCCDEEFCAE3F1D2FFFFFF0000}
      Visible = False
      OnClick = btnExcelClick
    end
  end
  object Qr: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      '  SELECT'
      '    id_prodmateemba, NM_PRODMATEEMBA,'
      '    id_vendedor, nm_vendedor,'
      '    SUM(vl_total) AS VL_TOTAL,'
      
        '    ROUND(SUM(vl_unit_medio) / COUNT(vl_unit_medio), 2) AS VL_UN' +
        'IT_MEDIO,'
      '    SUM(qn_item) AS QN_ITEM,'
      '    SUM(qn_peso_total) AS QN_PESO_TOTAL'
      'FROM vw_relvendprod '
      'WHERE'
      
        '    TO_DATE(DT_ENTRPEDIVEND) BETWEEN TO_DATE(:DT_INICIO, '#39'DD/MM/' +
        'YYYY'#39') AND TO_DATE(:DT_FINAL, '#39'DD/MM/YYYY'#39')'
      '&Macro'
      
        'group by id_prodmateemba, NM_PRODMATEEMBA, id_vendedor, nm_vende' +
        'dor'
      'order by id_prodmateemba')
    MasterSource = DsColuna
    MasterFields = 'ID_VENDEDOR'
    DetailFields = 'ID_VENDEDOR'
    Left = 160
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INICIO'
      end
      item
        DataType = ftUnknown
        Name = 'DT_FINAL'
      end
      item
        DataType = ftUnknown
        Name = 'ID_VENDEDOR'
      end>
    MacroData = <
      item
        Name = 'Macro'
      end>
    object QrID_PRODMATEEMBA: TStringField
      FieldName = 'ID_PRODMATEEMBA'
      Size = 5
    end
    object QrID_VENDEDOR: TFloatField
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object QrNM_VENDEDOR: TStringField
      FieldName = 'NM_VENDEDOR'
      Required = True
      Size = 40
    end
    object QrVL_TOTAL: TFloatField
      FieldName = 'VL_TOTAL'
    end
    object QrVL_UNIT_MEDIO: TFloatField
      FieldName = 'VL_UNIT_MEDIO'
    end
    object QrQN_ITEM: TFloatField
      FieldName = 'QN_ITEM'
    end
    object QrQN_PESO_TOTAL: TFloatField
      FieldName = 'QN_PESO_TOTAL'
    end
    object QrNM_PRODMATEEMBA: TStringField
      FieldName = 'NM_PRODMATEEMBA'
      Size = 40
    end
  end
  object SpNovaTabela: TOraSQL
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'DECLARE PDATAINI DATE; PDATAFIM DATE;'
      'BEGIN'
      '  PDATAINI  := :DATAINI ; '
      '  PDATAFIM  := :DATAFIM ; '
      ''
      '  SP_RELVENDPROD( PDATAINI, PDATAFIM) ;'
      'END;')
    Left = 672
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dataini'
      end
      item
        DataType = ftUnknown
        Name = 'datafim'
      end>
  end
  object QrColunas: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT DISTINCT'
      
        '  REGEXP_SUBSTR(column_name, '#39'\d+'#39') as ID_VENDEDOR FROM all_tab_' +
        'cols '
      'WHERE '
      '  table_name = '#39'REL_VENDPROD'#39)
    Left = 264
    Top = 8
    object QrColunasID_VENDEDOR: TStringField
      FieldName = 'ID_VENDEDOR'
      Size = 30
    end
  end
  object SpDelTabela: TOraSQL
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'DROP TABLE REL_VENDPROD')
    Left = 776
    Top = 8
  end
  object QrTemp: TOraQuery
    Session = FrmPrincipal.DB
    Left = 736
    Top = 8
  end
  object DsQr: TOraDataSource
    DataSet = Qr
    Left = 192
    Top = 8
  end
  object DsColuna: TOraDataSource
    DataSet = QrColunas
    Left = 296
    Top = 8
  end
  object QrRel: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT * FROM REL_VENDPROD')
    MasterSource = DsColuna
    Left = 464
    Top = 8
  end
  object DsRel: TOraDataSource
    DataSet = QrRel
    Left = 496
    Top = 8
  end
  object QrVendedor: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT DISTINCT'
      '    ID_VENDEDOR, NM_VENDEDOR'
      'FROM VW_RELVENDPROD'
      'WHERE'
      
        '    TO_DATE(DT_ENTRPEDIVEND) BETWEEN TO_DATE(:DT_INICIO, '#39'DD/MM/' +
        'YYYY'#39') AND TO_DATE(:DT_FINAL, '#39'DD/MM/YYYY'#39')'
      'ORDER BY ID_VENDEDOR'
      '')
    Left = 568
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INICIO'
      end
      item
        DataType = ftUnknown
        Name = 'DT_FINAL'
      end>
    object QrVendedorID_VENDEDOR: TFloatField
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object QrVendedorNM_VENDEDOR: TStringField
      FieldName = 'NM_VENDEDOR'
      Required = True
      Size = 40
    end
  end
end
