inherited FrmPesqUsuario: TFrmPesqUsuario
  Left = 228
  Top = 226
  Caption = 'FrmPesqUsuario'
  PixelsPerInch = 96
  TextHeight = 14

  inherited DBGrid1: TDBGrid
    DataSource = DsUsuario
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Caption = 'C'#243'd.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_USUASIST'
        Title.Caption = 'Usu'#225'rio'
        Width = 350
        Visible = True
      end>
  end
  inherited pnlBotoes: TPanel
    inherited BitBtn1: TBitBtn
      Default = True
      OnClick = BitBtn1Click
      Glyph.Data = {
        BA0B0000424DB60B00000000000036000000280000002A000000170000000100
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
      NumGlyphs = 2
    end
    inherited BitBtn2: TBitBtn
      OnClick = BitBtn2Click
      Glyph.Data = {
        7A0E0000424D760E000000000000360000002800000032000000180000000100
        180000000000400E0000120B0000120B0000000000000000000087B977319816
        339C1B359C1D38AC302FAB3031A93232AA3034A93132AA3032AA3034A93132AA
        3032AA3034A93132AA3032AA3034A93132AA3032AA3034A93132AA3034A9312F
        AB2D43A3449898985757575C5C5C5D5D5D6E6E6E6D6D6D6D6D6D6D6D6D6D6D6D
        6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D
        6D6D6D6D6D6D6D6D6D6D6C6C6C73737300004A9D36399D1B399A1F35A02935A9
        3236A93136A93236A83536A83436A83436A83436A83436A83436A83436A83436
        A83436A83436A83436A83436A83436A83436A83436A83536A93136A7356A6A6A
        5C5C5C5D5D5D6565656E6E6E6D6D6D6E6E6E6F6F6F6E6E6E6E6E6E6E6E6E6E6E
        6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6F
        6F6F6D6D6D6E6E6E00004FA03A399C1D349A1D37A72E35A93036AA3036AA3136
        A83436A93336A93336A93435A93336A93336A93336A93336A93336A93336A933
        36A93336A93336A93336A93336A93435A93137A7366D6D6D5D5D5D5C5C5C6B6B
        6B6D6D6D6D6D6D6E6E6E6E6E6E6E6E6E6E6E6E6F6F6F6E6E6E6E6E6E6E6E6E6E
        6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6F6F6F6D6D6D6E6E6E
        000051A03A369D1C2F9E1F37AA3135AA3036AA3035AA3135A83436A83336A934
        32A73028A12632A83036A83435A93436A93435A83436A83436A83436A83436A8
        3336A83436A83435A93137A7366D6D6D5D5D5D5F5F5F6E6E6E6D6D6D6D6D6D6E
        6E6E6E6E6E6E6E6E6F6F6F6C6C6C6464646C6C6C6E6E6E6F6F6F6F6F6F6E6E6E
        6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6D6D6D6E6E6E0000509F3B3A9C1A
        349F2A35AB3136A93335A93336A93037A83134A73630A729359B2DBBE9B841A0
        3E2CA82636A83435A83337AA3035A93136A93135A93131A83534A93336A93135
        AA3239A7366D6D6D5B5B5B6565656E6E6E6E6E6E6E6E6E6D6D6D6D6D6D6E6E6E
        686868646464D1D1D16F6F6F6767676E6E6E6E6E6E6D6D6D6D6D6D6D6D6D6D6D
        6D6D6D6D6E6E6E6D6D6D6E6E6E6E6E6E0000509F3B389C1A38A43135AA3236A8
        3436A93436A83632AA2F2BAD242C9930CFEDD2FFFFFFE9FAEE409F3C2CA72A2F
        AB2F35A93336AA3035A93036AA3033AA3236AB3136A92C33A628359F2B6D6D6D
        5B5B5B6B6B6B6E6E6E6E6E6E6F6F6F6F6F6F6D6D6D696969636363DEDEDEFFFF
        FFF2F2F26E6E6E6969696D6D6D6E6E6E6D6D6D6D6D6D6D6D6D6E6E6E6E6E6E6B
        6B6B676767656565000053A13E329F1C36A83435A93136A83436A93435A83330
        AB2E329730D9F1D8FFFFFFFFFDFFFFFFFFF0FEEF469A482DA72A36A83335AA31
        36AB3235A93136A82C36A62637A42137A4203AA1287070705E5E5E6E6E6E6D6D
        6D6E6E6E6F6F6F6E6E6E6D6D6D646464E5E5E5FFFFFFFEFEFEFFFFFFF7F7F770
        70706969696E6E6E6E6E6E6F6F6F6D6D6D6A6A6A666666636363626262646464
        0000529F3932A42535A93237A92E36A73435A7352EA926309B2FE0FAE3FFFEFF
        FEFCFFFAFFFDFDFDFFFFFAFFF0FFF44BA3472DA72336AA3034A62A32A42636A4
        2337A32237A4203BA5203AA1286C6C6C6565656E6E6E6C6C6C6E6E6E6E6E6E68
        6868656565EDEDEDFFFFFFFEFEFEFDFDFDFEFEFEFDFDFDF8F8F8757575656565
        6D6D6D6868686565656464646363636262626363636464640000519F3836A72E
        34AB3037A83330AC2C2CA828379E3AD9F7D6FFFEFFFBFEFEFEFFFEFFFFFFFFFF
        FFFFFEFDFFFFFFEEFFEC4DA0432AA11833A81C37A62138A42238A52237A5233B
        A52137A2286C6C6C6B6B6B6E6E6E6E6E6E6C6C6C6868686B6B6BE7E7E7FFFFFF
        FDFDFDFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFF6F6F67272725D5D5D6262626464
        6463636364646464646463636365656500004DA23A34AC3034AA3037A7342CAA
        28409E3BDCF6DFFFFFFFFFFAFFFEFEFDFEFFFEFFFFFFFFFFFFFEFFFBFFFEFEFF
        FFFFF9FFF94F9E3F31A21637A52238A42338A52237A5233BA52137A2286E6E6E
        6E6E6E6D6D6D6E6E6E6969696D6D6DE9E9E9FFFFFFFDFDFDFEFEFEFFFFFFFFFF
        FFFFFFFFFDFDFDFFFFFFFFFFFFFCFCFC6F6F6F5C5C5C64646464646464646464
        646463636365656500004EA93F32AB3431A73330A925399D3EE4FBE7FFFBFFFB
        FEFFFCFFFBFFFCFFFFFFFFFFFFFFFFFFFFFBFDFDFAFFFBFCFFFCFFFCFFFBFFF9
        52A4402DA11936A52238A42437A5223AA42137A2287474746F6F6F6C6C6C6767
        676B6B6BF0F0F0FDFDFDFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFCFCFCFD
        FDFDFEFEFEFEFEFEFCFCFC7272725D5D5D646464646464646464636363656565
        00004EAB4E34AA2F32A8293D9D35E7FEEDFFFFFFFDFFFDFFFEFEFFFDFFFFFFFF
        ECF9E84D9835D2EDCBFFFFFFFFFDFFFFFEFFFEFFFDFFFFFFF8FFF852A54428A0
        1636A52238A42236A52134A2277D7D7D6D6D6D696969696969F3F3F3FFFFFFFE
        FEFEFFFFFFFEFEFEFFFFFFF1F1F1676767DCDCDCFFFFFFFEFEFEFFFFFFFEFEFE
        FFFFFFFCFCFC7575755B5B5B646464636363636363646464000050AB5232AC26
        42A042F3FFFCFFFBFFFFFEFBF9FEFEFFFFFDFFFFFFEAF9E7419B291EA7112790
        1CD2EDCBFFFFFFFFFAFFFDFFFBFEFEFFFFFEFFFFFFFF58A8492E9C1935A52234
        A42037A5337E7E7E696969717171F9F9F9FDFDFDFDFDFDFCFCFCFEFEFEFFFFFF
        F0F0F06262625C5C5C565656DCDCDCFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFF
        FF7979795B5B5B6464646262626C6C6C000052AB4C2EAD2F319F2F9DCC90FFFF
        FFFFFDFFFDFFFEFFFFFFE2F6DC3C99272AA31D3AA32335A51D31941DC4E7BEFF
        FFFFFFFCFFFCFFFEFDFDFDFFFEFFFFFFFF59A94B299F1334A52B41AD497C7C7C
        6E6E6E676767AEAEAEFFFFFFFEFEFEFEFEFEFFFFFFE9E9E96060606060606363
        63616161595959D3D3D3FFFFFFFEFEFEFEFEFEFDFDFDFFFFFFFFFFFF7A7A7A59
        5959686868777777000052AE4932A82734A722259A1296C78AFFFFFFFFFFFFE1
        F4DD3A9A2730A51B37A72439A82336A62135A71D319823BFE4BCFFFFFFFEFFFE
        FBFFFDFEFDFFFFFFFFFFFFFF6AB36537AC3D3CAB487C7C7C6868686565655656
        56A9A9A9FFFFFFFFFFFFE9E9E96161616060606666666666666464646262625E
        5E5ED0D0D0FFFFFFFFFFFFFDFDFDFEFEFEFFFFFFFFFFFF8C8C8C727272737373
        00004E9A3933971B38971B36981625890E8DC084E3F6DB388A212F9415349619
        37961937951A35951734931D31970F2C8312BEDFB9FFFFFFFFFBFFFBFEFDFCFB
        FCFFFFFF8BCC922DA5393DAA496A6A6A5959595959595757574C4C4CA2A2A2E9
        E9E95656565555555858585858585858585656565858585353534B4B4BCCCCCC
        FFFFFFFDFDFDFDFDFDFCFCFCFFFFFFACACAC69696973737300004B9136308C15
        358E15358B18368D152E860C2E88132E8B12348C16378E13348D17348D17348D
        18348D16348E14318C11257C08BEDDB0FFFFFFFFFFFFFFFFFF81AE6E2A991B2D
        A83037A73D6464645151515252525252525151514949494E4E4E4F4F4F515151
        5151515252525252525353535252525151514F4F4F424242C7C7C7FFFFFFFFFF
        FFFFFFFF8E8E8E5A5A5A6B6B6B6F6F6F00004D9134338E16368E16388E16378D
        16378E18318E16368D18368D18368E16358D18358D17358D18358E17368D1937
        8E19308E12267B0BBDD6B6FFFFFF82AD6B1C790632A63035AA3236A736636363
        5252525252525252525252525353535252525353535353535252525353535252
        52535353535353535353545454505050434343C6C6C6FFFFFF8C8C8C4040406B
        6B6B6E6E6E6E6E6E0000458329368D18368D17378D18358E18358D17368D1836
        8E17358E17358D18368E18368E18368E18368E18358E17358D17358E1733900D
        35801762A0462A7D0C318D133DA83237A93336A7365656565353535252525353
        5353535352525253535353535353535353535353535353535353535353535353
        53535252525353534F4F4F4C4C4C7373734545455050506D6D6D6E6E6E6E6E6E
        00004C832B2C7D0C368E19368C19368E17368D17368E18368D18368D18368D18
        368D18368D18368D18368D18368D18368E17368B1C358D183189182C89103390
        13358D173BA83335A93237A83657575745454554545453535353535352525253
        5353535353535353535353535353535353535353535353535353535353545454
        5353535151514D4D4D5252525252526E6E6E6E6E6E6F6F6F00004C7F2A2F780C
        308514349017348E18358E18368D18368E17368E17368E17368E17368E17368E
        17358E17368E17368E17348D17328C12358E16348E15368E16338D1839AB3332
        AA3138A5385555554242424D4D4D545454535353535353535353535353535353
        5353535353535353535353535353535353535353535252524F4F4F5252525252
        525252525353536F6F6F6E6E6E6E6E6E00004782232F7B022F780D388C14368F
        16348F15358E16368E16358E16358E16358E16358E16368E17368E17368F1733
        8C15338B14358D17368E18358D18378E163290193AAA3336A93131AA2E535353
        3F3F3F4343435050505353535252525252525252525252525252525252525252
        525353535353535353535151515050505252525353535353535252525555556F
        6F6F6D6D6D6C6C6C000073985D2571002D72032F7903348A10318B112E8C1130
        8B12308B12308B12308B12308B122F8A122F8A122D88102E8811308B12308B11
        308B112F8B113289112F8E1634A6302DA4293799387B7B7B3939393B3B3B3E3E
        3E4D4D4D4E4E4E4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4E4E4E4E4E4E4C
        4C4C4D4D4D4F4F4F4E4E4E4E4E4E4E4E4E4D4D4D5252526B6B6B676767686868
        0000FFFFFE7FA76A66964B659549689D4F6CA65869A6566AA6556AA6556AA655
        69A5546AA65468A55369A4546BA6556AA65469A5536AA7526AA7526AA7526AA4
        5469A9586CBB6965BB6BD7EFDBFFFFFF8989897171716F6F6F7676767F7F7F7E
        7E7E7E7E7E7E7E7E7E7E7E7D7D7D7D7D7D7C7C7C7C7C7C7E7E7E7D7D7D7C7C7C
        7D7D7D7D7D7D7D7D7D7C7C7C818181929292909090E3E3E30000}
    end
    inherited BitBtn3: TBitBtn
      Glyph.Data = {
        120F0000424D0E0F000000000000360000002800000032000000190000000100
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
      NumGlyphs = 2
    end
  end
  inherited pnlFiltros: TPanel
    inherited ComboBox1: TComboBox
      Items.Strings = (
        'Nome do Usu'#225'rio')
      ItemIndex = 0
      TabOrder = 2
      Text = 'Nome do Usu'#225'rio'
    end
    inherited ComboBox2: TComboBox
      Items.Strings = (
        'Contendo')
      ItemIndex = 0
      TabOrder = 1
      Text = 'Contendo'
    end
  end
  object QrUsuario: TOraQuery
    Session = FrmPrincipal.DB
    SQL.Strings = (
      'Select S.ID_USUARIO,'
      '       S.NM_USUASIST'
      '       '
      '       From SISTEMA_USUARIO S'
      ''
      '       Where S.FL_ATIVUSUASIST = '#39'S'#39
      ''
      'Order by S.NM_USUASIST')
    Left = 320
    Top = 8
    object QrUsuarioID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object QrUsuarioNM_USUASIST: TStringField
      FieldName = 'NM_USUASIST'
      Required = True
      Size = 40
    end
  end
  object DsUsuario: TOraDataSource
    DataSet = QrUsuario
    Left = 360
    Top = 8
  end
end