inherited FrmPesqMotorista: TFrmPesqMotorista
  Left = 781
  Top = 268
  Caption = 'Comercial Dacar - Pesquisa de Motorista'
  OnActivate = FormActivate
  OnCreate = FormCreate
  TextHeight = 10
  inherited DBGrid1: TDBGrid
    DataSource = dtsMotorista
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_MOTOTRAN'
        Title.Caption = 'C'#243'd'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_MOTOTRAN'
        Title.Caption = 'Nome Motorista'
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR_TRANSPORTADOR'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NM_FORNECEDOR'
        Visible = False
      end>
  end
  inherited pnlBotoes: TPanel
    inherited BitBtn1: TBitBtn
      Glyph.Data = {
        B60B0000424DB60B00000000000036000000280000002A000000170000000100
        180000000000800B0000120B0000120B00000000000000000000D79618D79715
        D79715D79715D79715D79715D79715D49618D79616D79715D79715D79715D797
        15D79715D79715D79715D79715D79715D6981BD79613DB9F2878787876767676
        7676767676767676767676767676767676777777767676767676767676767676
        7676767676767676767676767676767979797575758181810000D48C00D48C00
        D48C00D48C00D48C00D48D00D48C00D48C00D48C00D48C00D48D00D48C00D48C
        00D48C00D48C00D48D00D48C00D38C00D48D00D38A00D896136A6A6A6A6A6A6A
        6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A
        6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A7575750000D48F03D58D00
        D58E01D58E01D58E01D48D00D48D01D58E01D58E01D48D01D48D00D58E01D58E
        01D58E01D58E01D48D01D48C00D58D00D58D01D48D00D797156C6C6C6B6B6B6B
        6B6B6B6B6B6B6B6B6A6A6A6B6B6B6B6B6B6B6B6B6B6B6B6A6A6A6B6B6B6B6B6B
        6B6B6B6B6B6B6B6B6B6A6A6A6B6B6B6B6B6B6A6A6A7676760000D69A1ED3910B
        D58C00D48D00D48D01D58E01D58E01D58E01D58E01D58E01D58E01D48D01D58D
        00D58E00D48D01D48A00D08500D18800D38A00D48C00D897177A7A7A6F6F6F6B
        6B6B6A6A6A6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B
        6B6B6B6B6B6B6A6A6A6868686969696A6A6A6A6A6A7777770000D48C00D59513
        D59513D48C00D58E00D58E01D58E01D58E01D58E01D58E01D58E01D48D00D58E
        01D48D02D38800D39413FFFFFFFFFFFFD6A02FD38900D896156A6A6A74747474
        74746A6A6A6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6A6A6A6B6B6B
        6B6B6B6A6A6A737373FFFFFFFFFFFF8383836A6A6A7676760000D58E00D48D00
        D49411D59718D58C00D48D00D58E00D58D00D58D00D48C00D58D00D58E00D48E
        01D38800D49617FFFFFFFFFFFFFFFFFFE7CA89D28600D897156B6B6B6A6A6A73
        73737777776B6B6B6A6A6A6B6B6B6B6B6B6B6B6B6A6A6A6B6B6B6B6B6B6B6B6B
        6A6A6A767676FFFFFFFFFFFFFFFFFFB8B8B86969697676760000D48D00D48D00
        D58D00D49006D3981BD58E02D38900D18300CE8200D28D00CD8200D08200D284
        00D4981DFFFFFFFFFFFFFFFFFFF7F4E9D18600D48C00D897156A6A6A6A6A6A6B
        6B6B6D6D6D7777776C6C6C6A6A6A696969676767696969676767686868696969
        797979FFFFFFFFFFFFFFFFFFF0F0F06969696A6A6A7676760000D48D01D58E01
        D48D00D58D00D58F02CF8000DAA73CF3EAD4FFFFFFFFFFFFFFFFFFF4EAD2DCB2
        58FFFFFFFFFFFFFFFFFFF6F1E2CF8200D48C00D48C00D796156B6B6B6B6B6B6A
        6A6A6B6B6B6C6C6C6868688B8B8BE4E4E4FFFFFFFFFFFFFFFFFFE3E3E39A9A9A
        FFFFFFFFFFFFFFFFFFECECEC6868686A6A6A6A6A6A7676760000D58E01D58E01
        D58E01D58D00CF7F00E9D5A3FFFFFFFFFFFFF9FBFAF2E9D1FAFCF9FFFFFFFFFF
        FFFFFFFFFFFFFFF6EFDECE8000D38B00D58D00D38C00D897156B6B6B6B6B6B6B
        6B6B6B6B6B686868C6C6C6FFFFFFFFFFFFFAFAFAE2E2E2FBFBFBFFFFFFFFFFFF
        FFFFFFFFFFFFEAEAEA6767676A6A6A6B6B6B6A6A6A7676760000D58E01D58E01
        D58D00D28500E3C582FFFFFFFCFFFFD5A234CD7E00D18300CE7E00D79F2DFCFF
        FFFFFFFFF5F0E2CE7D00D48C00D58D01D08E04D48C00D897156B6B6B6B6B6B6B
        6B6B696969B3B3B3FFFFFFFEFEFE858585676767696969676767828282FEFEFE
        FFFFFFECECEC6767676A6A6A6B6B6B6A6A6A6A6A6A7676760000D58E01D58E01
        D48C00D18B00FFFFFFFFFFFFCF8B00D38700D58D00D38C01D48D00D38800D08A
        00FFFFFFFFFFFFD18D01D48B00D48D00D58E00D48C00D896156B6B6B6B6B6B6A
        6A6A696969FFFFFFFFFFFF6868686A6A6A6B6B6B6A6A6A6A6A6A6A6A6A686868
        FFFFFFFFFFFF6969696A6A6A6A6A6A6B6B6B6A6A6A7676760000D48D00D58E01
        D38800E1BC6BFFFFFFE5CA8CD28400D58E00D58E01D48D00D5930ED48E01D07E
        00E5C784FFFFFFE2BF73D28700D58E01D48D01D48D00D796156A6A6A6B6B6B6A
        6A6AA6A6A6FFFFFFB9B9B96969696B6B6B6B6B6B6A6A6A7272726B6B6B686868
        B5B5B5FFFFFFABABAB6969696B6B6B6B6B6B6A6A6A7676760000D48D01D48D00
        D28600E9D19CFFFFFFDBAA41D38900D58E01D58E01D58D00D48F06D39312E5C7
        84D9A02BFFFFFFECD6A6D28500D58E01D58E01D48D00D897156B6B6B6A6A6A69
        6969C3C3C3FFFFFF8E8E8E6A6A6A6B6B6B6B6B6B6B6B6B6D6D6D737373B5B5B5
        828282FFFFFFC9C9C96969696B6B6B6B6B6B6A6A6A7676760000D58E01D48D00
        D18800EACE95FFFFFFDDAE4AD38800D58E01D58E01D58D00D48B00D18C00FBFF
        FFD8A438FFFFFFECD49FD18500D58E01D58E01D48D00D897156B6B6B6A6A6A69
        6969C0C0C0FFFFFF9494946A6A6A6B6B6B6B6B6B6B6B6B6A6A6A696969FDFDFD
        888888FFFFFFC6C6C66969696B6B6B6B6B6B6A6A6A7676760000D58E01D48D00
        D38800DDB254FFFFFFEDDAB1D08000D58E00D58D00D38900CE7D00F3EDDAE1BA
        68E8D09DFFFFFFDEB55BD38800D58E01D58E01D48D00D897156B6B6B6A6A6A6A
        6A6A999999FFFFFFCFCFCF6868686B6B6B6B6B6B6A6A6A676767E7E7E7A5A5A5
        C3C3C3FFFFFF9D9D9D6A6A6A6B6B6B6B6B6B6A6A6A7676760000D48D01D48D01
        D48D00CF8300FDFFFFFFFFFFD8A437D18200D38800DEB050FFFFFFE5CA8ED194
        16FFFFFFFDFFFFD08C01D58C00D58E01D58E01D48D00D897156B6B6B6B6B6B6A
        6A6A686868FEFEFEFFFFFF8888886969696A6A6A979797FFFFFFBABABA747474
        FFFFFFFEFEFE6969696B6B6B6B6B6B6B6B6B6A6A6A7676760000D58E01D58E01
        D58D01D38900DAA842FFFFFFFFFFFFE5C785D28E04CB8100CF8D05E2BC6DFFFF
        FFFFFFFFDBAC4AD38700D48D00D58E01D58D00D48C00D796156B6B6B6B6B6B6B
        6B6B6A6A6A8E8E8EFFFFFFFFFFFFB5B5B56B6B6B6666666A6A6AA8A8A8FFFFFF
        FFFFFF9393936A6A6A6A6A6A6B6B6B6B6B6B6A6A6A7676760000D58E01D58E01
        D58E01D58D00D28400DCAF4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFDDB054D28400D58E00D58E01D48D00D48E02D48C00D897156B6B6B6B6B6B6B
        6B6B6B6B6B696969959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9999996969696B6B6B6B6B6B6A6A6A6B6B6B6A6A6A7676760000D58D01D58E01
        D58E01D58E01D58E00D38700D18A00E2C581F4EAD5F8F7EFF5ECD7E5C886D08B
        00D38700D58D00D58E01D58E01D48D00D48F05D48C00D897156B6B6B6B6B6B6B
        6B6B6B6B6B6B6B6B6A6A6A696969B2B2B2E5E5E5F4F4F4E6E6E6B6B6B6686868
        6A6A6A6B6B6B6B6B6B6B6B6B6A6A6A6D6D6D6A6A6A7676760000D48D00D58D00
        D58E01D58E01D58E01D48D01D38B00D38700D18300D08100D18300D28600D48C
        00D58E00D58E01D58E01D48D01D48D01D58D00D48C00D796156A6A6A6B6B6B6B
        6B6B6B6B6B6B6B6B6B6B6B6A6A6A6A6A6A6969696868686969696969696A6A6A
        6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6A6A6A7676760000D5981BD48D00
        D58D00D58E01D48D01D48D00D58E01D58D01D58D00D58E00D48D00D58E01D58E
        01D58E01D48D01D48D00D58E01D58E01D58E01D48C00D898177878786A6A6A6B
        6B6B6B6B6B6B6B6B6A6A6A6B6B6B6B6B6B6B6B6B6B6B6B6A6A6A6B6B6B6B6B6B
        6B6B6B6B6B6B6A6A6A6B6B6B6B6B6B6B6B6B6A6A6A7777770000D59005D5971B
        D48E00D48C00D48D00D58E00D58D00D58D00D58D00D58D00D58E00D48D00D58D
        00D48D00D48D00D58E00D58D00D58D00D58D00D48C00D896156D6D6D7878786A
        6A6A6A6A6A6A6A6A6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6A6A6A6B6B6B
        6A6A6A6A6A6A6B6B6B6B6B6B6B6B6B6B6B6B6A6A6A7676760000D48D02D48E01
        D4991FD39006D48D00D48E01D48E01D48E01D48E01D48E01D48E01D48E01D48F
        03D38E04D48E01D48E01D48E01D48E01D48E01D48D00D797166B6B6B6B6B6B7A
        7A7A6D6D6D6A6A6A6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6C6C6C
        6C6C6C6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6A6A6A7676760000}
      OnClick = BitBtn1Click
    end
    inherited BitBtn2: TBitBtn
      OnClick = BitBtn2Click
    end
    inherited BitBtn3: TBitBtn
      Glyph.Data = {
        0E0F0000424D0E0F000000000000360000002800000032000000190000000100
        180000000000D80E0000120B0000120B00000000000000000000FFFFFC4443C6
        1412BD1514BB1312B61111B30F10B30F0FB31110B2100FB0100FAF0D0CAC302F
        B11210AA0E0EA51111A30F0F9F11109D12109912129811119514149514139149
        49A6FFFFFFFEFEFE858585686868686868646464626262616161616161616161
        6060605F5F5F5C5C5C7070705D5D5D5A5A5A5A5A5A5757575757575555555555
        55535353555555525252787878FFFFFF00004D4BCE0000BC0000BD0000BE0000
        BC0000B60000B50000B20000B70000B30000B10000B30000AB1A1AB50000A900
        00A60000A000009C00009B00009100009300009300008E000083504FAE8D8D8D
        5E5E5E5F5F5F5F5F5F5E5E5E5B5B5B5B5B5B5959595C5C5C5A5A5A5959595A5A
        5A5656566868685555555353535050504E4E4E4E4E4E4949494A4A4A4A4A4A47
        47474242427E7E7E00001718C31916C40100C00000BB5352D0EEEFF86363D2D9
        D9F00000B6CCCCEEB7B7E70000B2FFFFFF1717B8F6F7F88A89D5C2C1E9ABAAE1
        5A5AC0F4F5F98E8ED100009401019500008F1313976D6D6D6D6D6D6060605E5E
        5E919191F3F3F39B9B9BE5E5E55B5B5BDDDDDDCFCFCF595959FFFFFF686868F7
        F7F7AFAFAFD5D5D5C6C6C68D8D8DF7F7F7B0B0B04A4A4A4B4B4B484848555555
        00000606C20203C30100C00000BBFDFDFB0000B00000B5AFAFE8C7C6EC5858CF
        AFAEE6AAAAE4BBBBE9C3C3EC0000B00000A5D3D3EE9C9CDD4242BC8786D40000
        9701009E03009A00009617179E6464646363636060605E5E5EFCFCFC5858585B
        5B5BCCCCCCD9D9D9949494CACACAC7C7C7D2D2D2D8D8D8585858535353E1E1E1
        BDBDBD7F7F7FADADAD4C4C4C4F4F4F4D4D4D4B4B4B5A5A5A00000A08C50000C2
        0000C20000BE9999E29999E43937CB3A39C9FFFFFF0000B4DEDDF07D7DD8C4C4
        ED5757CCB9B8E93534C2DFDFF45655C74E4DC39C9BDE0000A20000A30000A000
        009A1C1BA36767676161616161615F5F5FBEBEBEBFBFBF818181818181FFFFFF
        5A5A5AE7E7E7ABABABD9D9D9929292D1D1D17B7B7BEAEAEA8E8E8E888888BDBD
        BD5151515252525050504D4D4D5F5F5F00000909C70000C50201C30000C20000
        BC3636CC312ECA0000BB312FC70000BA2826C50000B62121BE0000B22829C037
        37C51C1BBA403FC51112B51412B30000AC0000A90000A500009F1817A8686868
        6363636262626161615E5E5E8181817C7C7C5E5E5E7B7B7B5D5D5D7676765B5B
        5B7070705959597474747E7E7E6B6B6B82828263636363636356565655555553
        53535050505F5F5F0000090ACB0101C70000C50100C40000C21A1AC50404C200
        00C00000BE0100BD0000BB0000BB0000B70000B50000B50000B60000B70000B4
        0000B22323BB0403B00000AC0200AB0000A51717AD6A6A6A6464646363636262
        626161617070706363636060605F5F5F5F5F5F5E5E5E5E5E5E5C5C5C5B5B5B5B
        5B5B5B5B5B5C5C5C5A5A5A5959596F6F6F5A5A5A565656565656535353626262
        00000D0DCB0000CB0000CA0100C60100C50000C21A1AC51111C50000BF0000BA
        0B09BF504FD16362D75150CF0908B90000B00000B60000B80100B80000B32222
        BA0A0AB30000AD0000AC1717B26C6C6C66666665656563636363636361616170
        70706B6B6B6060605D5D5D6464649090909D9D9D9090906161615858585B5B5B
        5C5C5C5C5C5C5A5A5A6E6E6E5F5F5F57575756565664646400000908CC0000C9
        0000CB0101CB0000C70100C50000C30000C03536CBE2E2F6FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFDCDCF32323C00000B20000B80101B80000B51D1CBA1110B600
        00AD1A17B66A6A6A656565666666666666646464636363626262606060808080
        ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E87272725959595C5C5C5D5D
        5D5B5B5B6B6B6B63636357575766666600000A09CE0000CB0000CA0000CB0202
        CB0101C90000BF7D7DDFFFFFFFFFFFFFBEBEEE6564D74A48D06666D6C4C4ECFF
        FFFFFFFFFF7373D60000B00000B80000B80000B70301B40000B21717BA6C6C6C
        666666656565666666676767656565606060AEAEAEFFFFFFFFFFFFD6D6D69E9E
        9E8C8C8C9E9E9ED8D8D8FFFFFFFFFFFFA5A5A55858585C5C5C5C5C5C5C5C5C5B
        5B5B59595968686800000B0AD20B0BD50504D00504C80000CA0000C76767DCFF
        FFFFFFFFFD1010C60000BB0000C00000BF0000BD0000B54746CBFFFFFFFFFFFF
        5B5BD00000B30000B70000B80000B80000B41D1CBD6E6E6E7070706A6A6A6666
        66656565646464A2A2A2FFFFFFFEFEFE6B6B6B5E5E5E6060606060605F5F5F5B
        5B5B898989FFFFFFFFFFFF9696965A5A5A5C5C5C5C5C5C5C5C5C5A5A5A6C6C6C
        00000C0BD30F0EDA0D0DD50A0AD40302CF0102CAFFFFFFFFFFFF0000C40000C3
        0000C40101C20000C20000BF1C1AC5FFFFFFFFFFFFFCFCFDFFFFFF0000B80000
        B70000B70000B80000B61817C06F6F6F7474747171716F6F6F696969666666FF
        FFFFFFFFFF626262626262626262626262616161606060707070FFFFFFFFFFFF
        FDFDFDFFFFFF5C5C5C5C5C5C5C5C5C5C5C5C5B5B5B6B6B6B00000C09D51614DF
        1010DB0D0DD70000D39696EAFFFFFF4E4EDA0000C80000CA0000C60000C51414
        C52626C9FFFFFFFFFFFF312FCA4F4ECFFFFFFF8887DF0000B90100B90000B700
        00B71717C16F6F6F7A7A7A7676767272726A6A6AC0C0C0FFFFFF949494646464
        6565656363636363636D6D6D787878FFFFFFFFFFFF7D7D7D8F8F8FFFFFFFB3B3
        B35D5D5D5D5D5D5C5C5C5C5C5C6C6C6C00002524D91413E41514E01312DD0000
        D6F2F2FBFFFFFF0000CC0505D00404CE0303CA0000C51A19CBFFFFFFFFFFFF39
        39CE0000BD0000B8FFFFFFE5E5F70000B70301BE0100BB0000B71717C07F7F7F
        7C7C7C7A7A7A7878786B6B6BF7F7F7FFFFFF6666666B6B6B6969696767676363
        63727272FFFFFFFFFFFF8484845F5F5F5C5C5CFFFFFFEEEEEE5C5C5C6060605E
        5E5E5C5C5C6B6B6B00001515DA3837E81716E41615E20000DAFFFFFFD4D4F600
        00D20A0AD20607D10000CC1F1ECFFFFFFFFFFFFF4747D30303C10000C20000BD
        DFDFF5FFFFFF0000B60200BD0200BE0000BC1818C27878789090907D7D7D7C7C
        7C6D6D6DFFFFFFE5E5E56969696E6E6E6C6C6C666666777777FFFFFFFFFFFF8D
        8D8D6262626161615F5F5FEAEAEAFFFFFF5B5B5B5F5F5F5F5F5F5E5E5E6D6D6D
        00000C0CDA201FEC1E1DE81A19E60000DFFFFFFFD1D1F70000D60C0CD60000D1
        2223D5FFFFFFFFFFFF3B3BD50000C30100C70100C30000BCDAD9F3FFFFFF0000
        B90200BF0200BD0000BD1917C6737373868686838383808080707070FFFFFFE4
        E4E46B6B6B7171716969697C7C7CFFFFFFFFFFFF888888626262646464626262
        5E5E5EE6E6E6FFFFFF5D5D5D6060605F5F5F5F5F5F6E6E6E00000E0DDC2422F2
        201FEC2322E70201E4FBFBFDFFFFFF0000DA0101D82727D9FFFFFFFFFFFF3D3E
        D80000CA0202CC0201C70201C70000BCFFFFFFEFEFFA0000BC0200C10300C000
        00BD1D1AC47575758A8A8A868686858585737373FCFCFCFFFFFF6D6D6D6D6D6D
        808080FFFFFFFFFFFF8B8B8B6565656767676464646464645E5E5EFFFFFFF5F5
        F55E5E5E6161616060605F5F5F6F6F6F00000E0DE02825F62421EF211FEE0E0C
        E8AEAEF4FFFFFF3D3CE62524DFFFFFFFFFFFFF4040DB0000CE0505CF0202CD02
        02CC0000C6403FD4FFFFFF9797E50000BE0000C30100C10100BF1917C8777777
        8E8E8E8888888787877A7A7AD1D1D1FFFFFF919191828282FFFFFFFFFFFF8E8E
        8E6767676A6A6A6868686767676363638A8A8AFFFFFFBEBEBE5F5F5F62626261
        61616060606F6F6F00000E0EE12D29F92724F52321F11B19EE3E3DEAFFFFFFE6
        E6FAFFFFFEFFFFFF4343E10000D50B0AD40707D10505CF0000CB0000C6FEFEFC
        FFFFFF2828CB0807C50000C20000C20000C11A17C97878789191918D8D8D8989
        89848484949494FFFFFFF0F0F0FFFFFFFFFFFF9292926B6B6B6F6F6F6C6C6C6A
        6A6A666666636363FDFDFDFFFFFF7A7A7A666666616161616161616161707070
        00001211E32F2BFD2926F72825F62421F20D0AF09A99F1FFFFFDFFFFFF4A49E6
        0000D90605D90605D60402D30000CE0000CCE7E7F8FFFFFF8585E30000C61B1A
        C91817C80000C30000C11717CB7A7A7A9494948F8F8F8E8E8E8A8A8A7D7D7DC5
        C5C5FEFEFEFFFFFF9898986D6D6D6F6F6F6E6E6E6B6B6B676767666666F0F0F0
        FFFFFFB4B4B46363637272727070706262626161617171710000100EE7312EFD
        2C29FA2A27F82825F72623F30704EFBABAF4FFFFFDFFFFFF9493F04240E42422
        DC3F3DDD9393EAFFFFFFFFFFFFABABEC0000C50201CA0000C90F0EC91615C800
        00C31717CB7B7B7B9696969292929090908E8E8E8B8B8B7A7A7AD7D7D7FEFEFE
        FFFFFFC2C2C29292927F7F7F8D8D8DBFBFBFFFFFFFFFFFFFCCCCCC6363636666
        666565656C6C6C6F6F6F6262627171710000100EE7322FFF2E2BFB2D2AFB2B28
        F82926F72623F40804F06F6EF1FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5857DE0000C90302CD0102CB0000CA0000CB0000CA0000C51817CD7B7B7B
        9797979393939393939090908F8F8F8C8C8C7A7A7AB0B0B0FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9B65656568686866666665656566666665
        656563636372727200000C0BEA3330FF2E2BFD302DF82D2AFB2B28F92926F727
        24F51714F10502EB5351EB8988F09796F08483EC4240E10000D30000D40806D0
        0301CE0201CD0100CC0001CB0000CB0000CA1818CF7B7B7B9898989494949393
        939393939191918F8F8F8D8D8D8383837777779E9E9EBCBCBCC3C3C3B8B8B891
        91916A6A6A6A6A6A6B6B6B686868676767666666666666666666656565737373
        00003030EA2623FE3532FF322FFF332FFE312EFD302CFC2D2AFA2A27F62522F1
        1915EE0E0BE70B08E30300DF0704DC0D0ADA0B08D70704D60602D20300CF0201
        CD0100CC0001CA0000C64242DA8D8D8D91919199999997979797979796969694
        94949292928F8F8F8A8A8A828282797979767676707070707070727272707070
        6D6D6D6A6A6A6868686767676666666565656363638E8E8E0000FEFEFD2B2CE9
        0605EC0B0AEA0B0AE90C0AE70B0AE70B0AE50A09E30908E20807E00505DE1D1C
        DB1B1BDA0404D80504D70503D70503D40503D40503D30402D20403CF0000CE35
        34D7FFFFFFFEFEFE8A8A8A7979797A7A7A7A7A7A797979797979787878767676
        7575757474747272727C7C7C7B7B7B6E6E6E6E6E6E6D6D6D6C6C6C6C6C6C6B6B
        6B6A6A6A696969676767868686FFFFFF0000}
    end
  end
  inherited pnlFiltros: TPanel
    inherited EdExpre: TEdit
      OnKeyPress = EdExpreKeyPress
    end
    inherited ComboBox1: TComboBox
      ItemIndex = 0
      Text = 'Nome Motorista'
      Items.Strings = (
        'Nome Motorista'
        'C'#243'digo')
    end
    inherited ComboBox2: TComboBox
      ItemIndex = 0
      Text = 'Contendo'
      Items.Strings = (
        'Contendo'
        'Igual')
    end
  end
  object qryMotorista: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'SELECT M.ID_MOTOTRAN,'
      '       M.NM_MOTOTRAN,'
      '       M.ID_FORNECEDOR_TRANSPORTADOR,'
      '       F.NM_FORNECEDOR'
      'FROM TRANSPORTADOR_MOTORISTA M,'
      '       FORNECEDOR F'
      
        'WHERE (M.ID_FORNECEDOR_TRANSPORTADOR = F.ID_FORNECEDOR AND M.FL_' +
        'ATIVMOTOTRAN = '#39'S'#39')'
      'ORDER BY M.ID_MOTOTRAN')
    Active = True
    Left = 192
    Top = 16
    object qryMotoristaID_MOTOTRAN: TFloatField
      FieldName = 'ID_MOTOTRAN'
      Required = True
    end
    object qryMotoristaID_FORNECEDOR_TRANSPORTADOR: TFloatField
      FieldName = 'ID_FORNECEDOR_TRANSPORTADOR'
      Required = True
    end
    object qryMotoristaNM_MOTOTRAN: TStringField
      FieldName = 'NM_MOTOTRAN'
      Required = True
      Size = 40
    end
    object qryMotoristaNM_FORNECEDOR: TStringField
      FieldName = 'NM_FORNECEDOR'
      Required = True
      Size = 40
    end
  end
  object dtsMotorista: TOraDataSource
    DataSet = qryMotorista
    Left = 168
    Top = 16
  end
end
