object frmTV: TfrmTV
  Left = 100
  Top = 81
  Width = 733
  Height = 556
  Caption = 'T'#233'l'#233'vision'
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 480
    Top = 192
    Width = 169
    Height = 313
    Brush.Color = clMedGray
    Shape = stRoundRect
  end
  object Shape16: TShape
    Left = 488
    Top = 360
    Width = 153
    Height = 137
    Brush.Color = clMedGray
    Shape = stEllipse
  end
  object Btn1: TShape
    Tag = 1
    Left = 496
    Top = 200
    Width = 41
    Height = 33
    Pen.Width = 2
    Shape = stCircle
    OnMouseDown = Btn1MouseDown
  end
  object Btn4: TShape
    Tag = 4
    Left = 496
    Top = 240
    Width = 41
    Height = 33
    Pen.Width = 2
    Shape = stCircle
    OnMouseDown = Btn4MouseDown
  end
  object Btn7: TShape
    Tag = 7
    Left = 496
    Top = 280
    Width = 41
    Height = 33
    Pen.Width = 2
    Shape = stCircle
    OnMouseDown = Btn4MouseDown
  end
  object Btn8: TShape
    Tag = 8
    Left = 544
    Top = 280
    Width = 41
    Height = 33
    Pen.Width = 2
    Shape = stCircle
    OnMouseDown = Btn4MouseDown
  end
  object Btn5: TShape
    Tag = 5
    Left = 544
    Top = 240
    Width = 41
    Height = 33
    Pen.Width = 2
    Shape = stCircle
    OnMouseDown = Btn4MouseDown
  end
  object Btn2: TShape
    Tag = 2
    Left = 544
    Top = 200
    Width = 41
    Height = 33
    Pen.Width = 2
    Shape = stCircle
    OnMouseDown = Btn2MouseDown
  end
  object Btn3: TShape
    Tag = 3
    Left = 592
    Top = 200
    Width = 41
    Height = 33
    Pen.Width = 2
    Shape = stCircle
    OnMouseDown = Btn3MouseDown
  end
  object Btn6: TShape
    Tag = 6
    Left = 592
    Top = 240
    Width = 41
    Height = 33
    Pen.Width = 2
    Shape = stCircle
    OnMouseDown = Btn4MouseDown
  end
  object Btn9: TShape
    Tag = 9
    Left = 592
    Top = 280
    Width = 41
    Height = 33
    Pen.Width = 2
    Shape = stCircle
    OnMouseDown = Btn4MouseDown
  end
  object Btn0: TShape
    Left = 544
    Top = 320
    Width = 41
    Height = 33
    Pen.Width = 2
    Shape = stCircle
    OnMouseDown = Btn4MouseDown
  end
  object BtnBack: TShape
    Left = 496
    Top = 320
    Width = 49
    Height = 33
    Pen.Width = 2
    Shape = stEllipse
    OnMouseDown = BtnBackMouseDown
  end
  object BtnStore: TShape
    Left = 592
    Top = 320
    Width = 49
    Height = 33
    Pen.Width = 2
    Shape = stEllipse
    OnMouseDown = BtnStoreMouseDown
  end
  object BtnMenu: TShape
    Left = 541
    Top = 408
    Width = 49
    Height = 41
    Pen.Width = 2
    Shape = stEllipse
    OnMouseDown = BtnMenuMouseDown
  end
  object Btn_Ch_Plus: TImage
    Left = 540
    Top = 448
    Width = 49
    Height = 41
    Picture.Data = {
      0A544A504547496D61676516060000FFD8FFE000104A46494600010101006000
      600000FFE1002245786966000049492A00080000000100005104000100000000
      00000000000000FFDB00430006040506050406060506070706080A100A0A0909
      0A140E0F0C1017141818171416161A1D251F1A1B231C1616202C20232627292A
      29191F2D302D283025282928FFDB0043010707070A080A130A0A13281A161A28
      2828282828282828282828282828282828282828282828282828282828282828
      2828282828282828282828282828282828FFC000110800350045030122000211
      01031101FFC4001F000001050101010101010000000000000000010203040506
      0708090A0BFFC400B5100002010303020403050504040000017D010203000411
      05122131410613516107227114328191A1082342B1C11552D1F0243362728209
      0A161718191A25262728292A3435363738393A434445464748494A5354555657
      58595A636465666768696A737475767778797A838485868788898A9293949596
      9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
      D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
      0100030101010101010101010000000000000102030405060708090A0BFFC400
      B511000201020404030407050404000102770001020311040521310612415107
      61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
      1A262728292A35363738393A434445464748494A535455565758595A63646566
      6768696A737475767778797A82838485868788898A92939495969798999AA2A3
      A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
      D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
      3F00E0DB409E4F8B49A2F893C4FAC69DA6EACECD63790CC768763F2C6C09C019
      F978F55EC78F5DFF0086741FF43DF88BFEFBFF00EBD6178FFC31178A7C3F2DA1
      212EE3FDEDB4BFDC9074E7D0F43F9F6AF42FD9F3E20CBE2FF0E4BA56B8C53C4D
      A3116F78921F9E551C2C9F5E30DEE33DC5546C26735FF0CE83FE87BF117FDF7F
      FD7A3FE19D07FD0F7E22FF00BEFF00FAF5EF945572A26ECF03FF0086741FF43D
      F88BFEFBFF00EBD1FF000CE83FE87BF117FDF7FF00D7AF7CA28E54176781FF00
      C33A0FFA1EFC45FF007DFF00F5EB27C59F0534FF000B7876FB5AD5FE20788A3B
      3B38CC8E77F2C7A051F372C49000F535F4957CB9F16F5F7F8A5F10D3C2BA64AD
      FF0008B68727997F321F96E261C601F6E547FC0CF38149A4869B6731F08B47D6
      2EB45B8D4B52D5B538E1BB706DA3698B1D833F31DD9EB9F6E99EE28AF5286348
      6248A14548D142AAA8C0503A0028A8287D79F78C56FF00C15E2AB1F1FF008750
      996D888F51B71C09E138073F86013DB0A7B57A0D473C31DC412433A2C9148A51
      D18643023041A00F66F0C6B963E25D02C758D265F36CAF2312C6DDC7A83E841C
      823B106B4EBE60F839E2093E1978FE4F06EAD2B7FC237ACC9E6E993C8788663C
      6C27DF853EFB4F1B8D7D3F5AA7721AB0514564F8B3C4161E16F0EDF6B5ABCBE5
      D9D9C66473DD8F40A3D5892001EA6981E71FB447C419BC2DA043A1E80C5BC4FA
      D7EE2D9633F343193B5A4F63FC2BEF93FC26B85F01F8661F0AF87A1B18F6B5C3
      7EF2E251FC721EBF80E83D856078222BFF00177892FBC7FE245C5DDE92B61013
      95821E836FB6381EBC9FE2AF41AC9BB9495828A28A430A28A28039BF1FF8622F
      14F87E5B42425DC7FBDB697FB920E9CFA1E87F3ED5E85FB3E7C4197C5FE1C974
      AD718A789B4622DEF1243F3CAA38593EBC61BDC67B8AC1AF3EF18ADFF82BC556
      3E3FF0EA132DB111EA36E3813C2700E7F0C027B614F6A69D84D5CFADABE5CF8B
      7AFBFC52F8869E15D3256FF845B4393CCBF990FCB7130E300FB72A3FE0679C0A
      ECFE30FC5DB78FC03A5C7E0AB8371ACF89A30B65E59F9E18D8ED773FDD607283
      D1813FC26B98F01F8661F0AF87A1B18F6B5C37EF2E251FC721EBF80E83D85549
      F41246FC31A4312450A2A468A1555460281D0014FA28A82828A28A0028A28A00
      2A39E18EE209219D1648A4528E8C321811820D14500703E06F87963E1EF11DFE
      A0B70F7262631DAA3A63C856193CE4E4E1B19E3BFAF1E8545140051451400514
      51401FFFD9}
    Stretch = True
  end
  object Image_Vol_Plus: TImage
    Left = 590
    Top = 400
    Width = 59
    Height = 57
    Picture.Data = {
      0A544A504547496D61676500060000FFD8FFE000104A46494600010101006000
      600000FFE1002245786966000049492A00080000000100005104000100000000
      00000000000000FFDB00430006040506050406060506070706080A100A0A0909
      0A140E0F0C1017141818171416161A1D251F1A1B231C1616202C20232627292A
      29191F2D302D283025282928FFDB0043010707070A080A130A0A13281A161A28
      2828282828282828282828282828282828282828282828282828282828282828
      2828282828282828282828282828282828FFC000110800450035030122000211
      01031101FFC4001F000001050101010101010000000000000000010203040506
      0708090A0BFFC400B5100002010303020403050504040000017D010203000411
      05122131410613516107227114328191A1082342B1C11552D1F0243362728209
      0A161718191A25262728292A3435363738393A434445464748494A5354555657
      58595A636465666768696A737475767778797A838485868788898A9293949596
      9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
      D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
      0100030101010101010101010000000000000102030405060708090A0BFFC400
      B511000201020404030407050404000102770001020311040521310612415107
      61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
      1A262728292A35363738393A434445464748494A535455565758595A63646566
      6768696A737475767778797A82838485868788898A92939495969798999AA2A3
      A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
      D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
      3F00F3FF000B4FE3C697C47AF6891CBADE95637EF15DD8B3979157248645EA00
      1C7CB9C771815E8BE0FF0018E93E2AB6DD6136CBA51992D65E244FC3B8F71FA5
      6CFEC97FEA3C71FF006163FC9ABA3F8A5F04F49F15DCB6B3A04BFD85E2652645
      BBB7055266FF00A68A3B9FEF0E79E7774AAE5BA15CC6A2BCF22F15EB5E0ED597
      41F89962D657078875145CC338FEF647047B8E99E40E6BD0219639E149609124
      89C6E57420861EA08EB5231F45145001451450055FD92FFD478E3FEC2C7F9357
      BFD7807EC97FEA3C71FF006163FC9ABDFEB48EC43DCCAF13F87749F146932E99
      AFD8C37B652754907DD3FDE523953EE0835F38F8A3E1A78B3E174D2EA3E09926
      D7FC3192F2E9B2733403B90075FF0079467D54819AFA8E8A6D5C13B1F33F83FC
      63A4F8AADB7584DB2E94664B5978913F0EE3DC7E95D1D6CFC52F827A4F8AEE5B
      59D025FEC2F1329322DDDB82A9337FD3451DCFF7873CF3BBA5791C5E2BD6BC1D
      AB2E83F132C5ACAE0F10EA28B98671FDEC8E08F71D33C81CD66D58A4EE7A1D14
      C8658E78525824492271B95D082187A823AD148641FB25FF00A8F1C7FD858FF2
      6AF7FAF00FD92FFD478E3FEC2C7F9357BFD691D887B8514565789FC45A4F85F4
      99753D7EFA1B2B28FABC87EF1FEEA81CB1F6009AA0356BC3BE3BFC49F0A2D94F
      E131A5C3E2BD6A625058A02C903F4CB3AF2AC39E14EEEB92BD6B8FF13FC49F16
      7C51965D3FC1693787FC2E49497529789EE0770B8E9F453F5619C55AF0878434
      AF0B5B6CD3A1DD70C312DCC9CC927E3D87B0E2A1CBB0D2307E14F85357F0EE91
      3A6AB7AD199D95D2D2360EB075CF2723272338F4EA68AF40A2A0A2AFEC97FEA3
      C71FF6163FC9ABDFEBE6AFD9CBC45A4F85F42F1EEA7AFDF4365651EAC72F21FB
      C70DF2A81CB1F6009AA7E27F893E2CF8A32CBA7F82D26F0FF85C9292EA52F13D
      C0EE171D3E8A7EAC338AB4EC896AECF46F8A1F1AF4AF0ADCB68DE1F87FB7BC4E
      C4A2DA5B92C90B7FD3461DC7F7473C73B7AD792C5E14D67C5FABAEBDF132F9AF
      AE8730E9C8D88201FDDC0E3F01D71C96ADEF0878434AF0B5B6CD3A1DD70C312D
      CC9CC927E3D87B0E2BA2A96EE34AC3218E386248A1458E3401551460281D001D
      A9F45148614514500793F873E1AE9D75E21D5AF755B892F218AF64D96A57626E
      386CB7273D40C71D39CF4AF558638E18922851638D005545180A0740076A28A0
      07D14514005145140051451401FFD9}
    Stretch = True
    OnClick = Label_Vol_PlusClick
  end
  object Btn_Ch_Mois: TImage
    Left = 540
    Top = 368
    Width = 49
    Height = 41
    Picture.Data = {
      0A544A504547496D616765E9050000FFD8FFE000104A46494600010101006000
      600000FFE1002245786966000049492A00080000000100005104000100000000
      00000000000000FFDB00430006040506050406060506070706080A100A0A0909
      0A140E0F0C1017141818171416161A1D251F1A1B231C1616202C20232627292A
      29191F2D302D283025282928FFDB0043010707070A080A130A0A13281A161A28
      2828282828282828282828282828282828282828282828282828282828282828
      2828282828282828282828282828282828FFC000110800350045030122000211
      01031101FFC4001F000001050101010101010000000000000000010203040506
      0708090A0BFFC400B5100002010303020403050504040000017D010203000411
      05122131410613516107227114328191A1082342B1C11552D1F0243362728209
      0A161718191A25262728292A3435363738393A434445464748494A5354555657
      58595A636465666768696A737475767778797A838485868788898A9293949596
      9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
      D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
      0100030101010101010101010000000000000102030405060708090A0BFFC400
      B511000201020404030407050404000102770001020311040521310612415107
      61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
      1A262728292A35363738393A434445464748494A535455565758595A63646566
      6768696A737475767778797A82838485868788898A92939495969798999AA2A3
      A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
      D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
      3F00EA28A28A002B27C55AEDB787343B9D4AF0E5221F2267991CF451F53FD4D6
      B1E0735C2F843453F183E250F354BF8334070D2FF76EE5ECBEE0E3FEF907A6E1
      42D40E7341D5FC55E18D4F49D4FC6E255D17C4E865B76763B6DCE7E5E0FDC182
      A71FDD607A835EBB5E97F12FC1763E3AF075E6877A1632EBBEDA6DB9304A07CA
      E3F911DC123BD7CF3F0DB58BD8A4BDF0A788D5A2D7B47630BAB9E648C70181EF
      8E39EE0A9EF54D5849DCEEE8A28A91851451400514564F8AB5DB6F0E68773A95
      E1CA443E44CF3239E8A3EA7FA9A00E67E23EAB7D7B7563E0EF0D29975DD61845
      8538F2A23D493DB201C9ECA18FA57D19F0E7C2163E06F08D8E87A70DCB0AEE9A
      6C60CD29FBCE7EA7A7A00076AF31FD9BBC11750C173E3BF1326ED77591BADD5D
      79B7B73D303B16007D142FA9AF73AD22AC4B615E0FFB48F82AE945B7C40F0CC7
      8D634800DE228FF5F6E3A92075DA339FF649FEE8AF78A47557464750C8C30548
      C823D29B5711F3BF8675AB5F10E896DA9591FDDCCBCA93CA37753EE0D6A5707E
      24D1DBE0FF00C4A6B50197C1BAF3992D98FDDB597BA1F4C640FF0074A9E769AE
      F2B26AC58514514001E0735C2F843453F183E250F354BF8334070D2FF76EE5EC
      BEE0E3FEF907A6E14DF88FAADF5EDD58F83BC34A65D7758611614E3CA88F524F
      6C80727B2863E95F467C39F0858F81BC2363A1E9C372C2BBA69B18334A7EF39F
      A9E9E8001DAAA2AE26CE9540550140007000ED45145684851451401CAFC4DF06
      5978F3C1F7BA25FED46906FB79F19304C3EEB8FE47D4123BD7CF3F0DB58BD8A4
      BDF0A788D5A2D7B47630BAB9E648C70181EF8E39EE0A9EF5F585783FED23E0AB
      A516DF103C331E358D2003788A3FD7DB8EA481D768CE7FD927FBA2A64AE34C7D
      1597E19D6AD7C43A25B6A5647F7732F2A4F28DDD4FB83456651E51756BAF787F
      C79AA6B1A47885EDF5195993CFFB2A3B2A1C1DA37138C000718E056A7FC26DF1
      1BFE879B9FFC028BFC28A28B807FC26DF11BFE879B9FFC028BFC28FF0084DBE2
      37FD0F373FF80517F851453BB0B07FC26DF11BFE879B9FFC028BFC28FF0084DB
      E237FD0F373FF80517F85145176160FF0084DBE237FD0F373FF80517F8523F8D
      3E223A323F8DEE191860A9B284823D3A51451761624F853E1FD434FB5D485AEB
      25239245631FD986D0D8392067033C74F4145145203FFFD9}
    Stretch = True
  end
  object Image_Vol_Moin: TImage
    Left = 480
    Top = 400
    Width = 61
    Height = 57
    Picture.Data = {
      0A544A504547496D616765DD050000FFD8FFE000104A46494600010101006000
      600000FFE1002245786966000049492A00080000000100005104000100000000
      00000000000000FFDB00430006040506050406060506070706080A100A0A0909
      0A140E0F0C1017141818171416161A1D251F1A1B231C1616202C20232627292A
      29191F2D302D283025282928FFDB0043010707070A080A130A0A13281A161A28
      2828282828282828282828282828282828282828282828282828282828282828
      2828282828282828282828282828282828FFC000110800450035030122000211
      01031101FFC4001F000001050101010101010000000000000000010203040506
      0708090A0BFFC400B5100002010303020403050504040000017D010203000411
      05122131410613516107227114328191A1082342B1C11552D1F0243362728209
      0A161718191A25262728292A3435363738393A434445464748494A5354555657
      58595A636465666768696A737475767778797A838485868788898A9293949596
      9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
      D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
      0100030101010101010101010000000000000102030405060708090A0BFFC400
      B511000201020404030407050404000102770001020311040521310612415107
      61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
      1A262728292A35363738393A434445464748494A535455565758595A63646566
      6768696A737475767778797A82838485868788898A92939495969798999AA2A3
      A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
      D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
      3F00EA28A28A0028A2B27C47E21D33C39626EB56B95853F813ABC87D157A93FE
      4D006B5707AD78E66BCD59740F02D8BEB9AEC9951E50DD145EA49E871DCE401D
      CF6A7F87FC35E31F8C0CB2012F86FC18FF00F2D9C7EFAED7FD91DC1FC17FDEC6
      2BE89F02781F40F036942C3C3B62B029C79B337CD2CC7D5DFA9FA741D80AA51B
      89B3E4ED02E3C4DA3F8ABC4BA6EBFA93CFA85B3C225DB26E8D58AB12146303A8
      1C0038A2B4FC51FF002597C7DFF5F307FE8068A9633D3A8AC9F11F8874CF0E58
      9BAD5AE5614FE04EAF21F455EA4FF935CE787FC35E31F8C0CB2012F86FC18FFF
      002D9C7EFAED7FD91DC1FC17FDEC6284AE0335AF1CCD79AB2E81E05B17D735D9
      32A3CA1BA28BD493D0E3B9C803B9ED5DFF00C3AF8171437C9E20F88F72BAEEBA
      70CB6CDCDB5BF7C63A391E980A3D0F5AF4DF02781F40F036942C3C3B62B029C7
      9B337CD2CC7D5DFA9FA741D80AE96B451B12D8280AA028000E001DA8A28AA11F
      1E78A3FE4B2F8FBFEBE60FFD00D1478A3FE4B2F8FBFEBE60FF00D00D1593DCB4
      67EB7A55E785BE200F166BBA4278B343572E61958E6D97391F2F4C2F6C82A7B8
      0706BEABF0078E7C3FE39D256F3C39789284004B6CDF2CB01F474EDF51C1C704
      D7995705AE78165B5D5575EF035F3E87AEC6770309DB14BEA08E833DC6083DC7
      7A69D84D5CFACA8AF0AF875F1D51EF93C3FF0012AD9743D6D70AB74C36DB4FE8
      49E884FAE4A9F51D2BDD1583A86521948C820E411569DC9168A28A607C79E28F
      F92CBE3EFF00AF983FF403451E28FF0092CBE3EFFAF983FF004034564F72D1E9
      D4514520327C47E1ED33C47626D756B65993F81FA3C67D55BA83FE4D733A0788
      BC65F079C24664F11F8314F3039FDEDA2FFB27F840FC57D9739AEF28A2F603D3
      BC05E3AD03C77A50BEF0F5EACDB40F36DDFE59A127B3A76FAF20F626BA7AF937
      5CF02CB6BAAAEBDE06BE7D0F5D8CEE0613B6297D411D067B8C107B8EF5DEFC3A
      F8EA8F7C9E1FF8956CBA1EB6B855BA61B6DA7F424F4427D7254FA8E95A295C96
      8F31F147FC965F1F7FD7CC1FFA01A293C4AC1FE31F8F59486537301041C823CB
      34543DCA47A7D145148028A28A002B27C47E1ED33C47626D756B65993F81FA3C
      67D55BA83FE4D14500709E0BF01C7A56AFAE5B2EA324C8A61085A3F982ED6201
      E79C02076E945145007FFFD9}
    Stretch = True
    OnClick = Label_Vol_MoinClick
  end
  object Label1: TLabel
    Left = 160
    Top = 24
    Width = 120
    Height = 29
    Caption = 'T'#233'l'#233'vision'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 434
    Height = 23
    Caption = 'A = {1, 2, 3, Store, Back, Menu, Vol Plus, Vol Moin}'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 96
    Width = 656
    Height = 23
    Caption = 
      'S = {Affichage Ecran, Affichage Menu, Affichage Image, Affichage' +
      ' Recherche'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 152
    Width = 99
    Height = 23
    Caption = 'I = {Ecran}'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 152
    Top = 152
    Width = 102
    Height = 23
    Caption = 'F = {Ecran}'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 80
    Top = 120
    Width = 487
    Height = 23
    Caption = 'R'#233'glage Luminosit'#233', R'#233'glage Contraste, R'#233'glage Couleur}'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Ecran: TShape
    Left = 32
    Top = 191
    Width = 433
    Height = 313
    Brush.Color = clBlack
    Shape = stRoundRect
  end
  object Label6: TLabel
    Left = 512
    Top = 204
    Width = 10
    Height = 23
    Caption = '&1'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnMouseDown = Btn1MouseDown
  end
  object Label7: TLabel
    Left = 560
    Top = 204
    Width = 10
    Height = 23
    Caption = '&2'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnMouseDown = Btn2MouseDown
  end
  object Label8: TLabel
    Left = 608
    Top = 204
    Width = 10
    Height = 23
    Caption = '&3'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnMouseDown = Btn3MouseDown
  end
  object Label9: TLabel
    Left = 608
    Top = 244
    Width = 10
    Height = 23
    Caption = '6'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label10: TLabel
    Left = 560
    Top = 244
    Width = 10
    Height = 23
    Caption = '5'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label12: TLabel
    Left = 512
    Top = 244
    Width = 10
    Height = 23
    Caption = '4'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label13: TLabel
    Left = 608
    Top = 284
    Width = 10
    Height = 23
    Caption = '9'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label14: TLabel
    Left = 560
    Top = 284
    Width = 10
    Height = 23
    Caption = '8'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label15: TLabel
    Left = 512
    Top = 284
    Width = 10
    Height = 23
    Caption = '7'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label16: TLabel
    Left = 600
    Top = 326
    Width = 37
    Height = 19
    Caption = '&Store'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    OnMouseDown = BtnStoreMouseDown
  end
  object Label17: TLabel
    Left = 560
    Top = 324
    Width = 10
    Height = 23
    Caption = '0'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label18: TLabel
    Left = 504
    Top = 326
    Width = 32
    Height = 19
    Caption = '&Back'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    OnMouseDown = BtnBackMouseDown
  end
  object Label_Ch_Moin: TLabel
    Left = 555
    Top = 384
    Width = 19
    Height = 19
    Caption = 'Ch'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label_Vol_Moin: TLabel
    Left = 498
    Top = 420
    Width = 34
    Height = 19
    Caption = '&- Vol'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    OnClick = Label_Vol_MoinClick
  end
  object Label_Menu: TLabel
    Left = 548
    Top = 420
    Width = 38
    Height = 19
    Caption = '&Menu'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnMouseDown = BtnMenuMouseDown
  end
  object Label_Vol_Plus: TLabel
    Left = 595
    Top = 420
    Width = 40
    Height = 19
    Caption = 'Vol &+'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    OnClick = Label_Vol_PlusClick
  end
  object Label_Ch_Plus: TLabel
    Left = 555
    Top = 452
    Width = 19
    Height = 19
    Caption = 'Ch'
    Color = clWhite
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label_Ecran: TLabel
    Left = 208
    Top = 232
    Width = 59
    Height = 25
    Caption = 'Ecran'
    Color = clBlack
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Image1: TImage
    Left = 16
    Top = 184
    Width = 449
    Height = 329
    Stretch = True
  end
  object Gauge: TGauge
    Left = 104
    Top = 320
    Width = 273
    Height = 41
    ForeColor = clBlue
    Progress = 50
    Visible = False
  end
end