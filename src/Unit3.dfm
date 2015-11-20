object Form_About: TForm_About
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'About'
  ClientHeight = 357
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spSkinPanel3: TspSkinPanel
    Left = 0
    Top = 0
    Width = 493
    Height = 323
    HintImageIndex = 0
    TabOrder = 0
    DrawDefault = True
    SkinData = Form1.spSkinData1
    SkinDataName = 'panel'
    AlphaBlend = False
    AlphaBlendValue = 200
    UseSkinCursor = False
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    EmptyDrawing = False
    RibbonStyle = False
    ImagePosition = spipDefault
    TransparentMode = True
    CaptionImageIndex = -1
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    NumGlyphs = 1
    Spacing = 2
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvNone
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    Caption = 'spSkinPanel1'
    Align = alClient
    object spPngImageView1: TspPngImageView
      Left = 11
      Top = 3
      Width = 175
      Height = 294
      DoubleBuffered = False
      ReflectionEffect = True
      AutoSize = False
      PngImageStorage = spPngImageStorage1
      ImageIndex = 0
    end
    object spSkinPanel2: TspSkinPanel
      AlignWithMargins = True
      Left = 191
      Top = 0
      Width = 299
      Height = 320
      Margins.Top = 0
      HintImageIndex = 0
      TabOrder = 0
      DrawDefault = True
      SkinData = Form1.spSkinData1
      SkinDataName = 'panel'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      EmptyDrawing = False
      RibbonStyle = False
      ImagePosition = spipDefault
      TransparentMode = True
      CaptionImageIndex = -1
      RealHeight = -1
      AutoEnabledControls = True
      CheckedMode = False
      Checked = False
      NumGlyphs = 1
      Spacing = 2
      DefaultAlignment = taLeftJustify
      DefaultCaptionHeight = 22
      BorderStyle = bvNone
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      Caption = 'spSkinPanel1'
      Align = alRight
      object Label_Name: TspSkinStdLabel
        AlignWithMargins = True
        Left = 0
        Top = 10
        Width = 74
        Height = 19
        Margins.Left = 0
        Margins.Top = 10
        EllipsType = spetNone
        UseSkinFont = False
        UseSkinColor = True
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -11
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        SkinData = Form1.spSkinData1
        SkinDataName = 'stdlabel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Align = alTop
        Caption = 'KeyLogger'
        ParentFont = False
        Layout = tlCenter
      end
      object Label_Copyright: TspSkinStdLabel
        AlignWithMargins = True
        Left = 0
        Top = 62
        Width = 63
        Height = 13
        Margins.Left = 0
        Margins.Top = 6
        EllipsType = spetNone
        UseSkinFont = True
        UseSkinColor = True
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -11
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        SkinData = Form1.spSkinData1
        SkinDataName = 'stdlabel'
        Align = alTop
        Caption = 'Copyright (c)'
        Layout = tlCenter
      end
      object Label_WWW: TspSkinLinkLabel
        AlignWithMargins = True
        Left = 0
        Top = 84
        Width = 296
        Height = 17
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 6
        GlowEffect = False
        GlowSize = 7
        UseUnderLine = True
        UseSkinFont = True
        DefaultActiveFontColor = clBlue
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = [fsUnderline]
        SkinData = Form1.spSkinData1
        SkinDataName = 'stdlabel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Align = alTop
        Caption = 'Download new version'
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 120
        ExplicitTop = 112
        ExplicitWidth = 220
      end
      object LinkLabel_MAIL: TspSkinLinkLabel
        Left = 3
        Top = 249
        Width = 33
        Height = 17
        Cursor = crHandPoint
        GlowEffect = False
        GlowSize = 7
        UseUnderLine = True
        UseSkinFont = True
        DefaultActiveFontColor = clBlue
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = [fsUnderline]
        SkinData = Form1.spSkinData1
        SkinDataName = 'stdlabel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Caption = 'MAIL'
        ParentFont = False
        Visible = False
      end
      object Registered_Label: TspSkinStdLabel
        AlignWithMargins = True
        Left = 0
        Top = 134
        Width = 125
        Height = 13
        Margins.Left = 0
        Margins.Top = 30
        EllipsType = spetNone
        UseSkinFont = True
        UseSkinColor = True
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -11
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        SkinData = Form1.spSkinData1
        SkinDataName = 'stdlabel'
        Align = alTop
        Caption = 'Program is not registered!'
        Layout = tlCenter
      end
      object spSkinPanel1: TspSkinPanel
        Left = 0
        Top = 32
        Width = 299
        Height = 24
        Margins.Left = 0
        HintImageIndex = 0
        TabOrder = 0
        DrawDefault = True
        SkinData = Form1.spSkinData1
        SkinDataName = 'panel'
        AlphaBlend = False
        AlphaBlendValue = 200
        UseSkinCursor = False
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        UseSkinFont = True
        DefaultWidth = 0
        DefaultHeight = 0
        EmptyDrawing = False
        RibbonStyle = False
        ImagePosition = spipDefault
        TransparentMode = True
        CaptionImageIndex = -1
        RealHeight = -1
        AutoEnabledControls = True
        CheckedMode = False
        Checked = False
        NumGlyphs = 1
        Spacing = 2
        DefaultAlignment = taLeftJustify
        DefaultCaptionHeight = 22
        BorderStyle = bvNone
        CaptionMode = False
        RollUpMode = False
        RollUpState = False
        Caption = 'spSkinPanel1'
        Align = alTop
        object LinkLabel_URL: TspSkinLinkLabel
          AlignWithMargins = True
          Left = 63
          Top = 3
          Width = 233
          Height = 18
          Cursor = crHandPoint
          Margins.Left = 10
          GlowEffect = False
          GlowSize = 7
          UseUnderLine = True
          UseSkinFont = True
          DefaultActiveFontColor = clBlue
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsUnderline]
          SkinData = Form1.spSkinData1
          SkinDataName = 'stdlabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Align = alClient
          Caption = 'Download new version'
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = 134
          ExplicitTop = 5
          ExplicitWidth = 137
          ExplicitHeight = 17
        end
        object Label_Version: TspSkinStdLabel
          AlignWithMargins = True
          Left = 0
          Top = 3
          Width = 50
          Height = 13
          Margins.Left = 0
          EllipsType = spetNone
          UseSkinFont = True
          UseSkinColor = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'Tahoma'
          DefaultFont.Style = []
          SkinData = Form1.spSkinData1
          SkinDataName = 'stdlabel'
          Align = alLeft
          Caption = 'version XX'
          Layout = tlCenter
        end
      end
    end
  end
  object spSkinPanel4: TspSkinPanel
    Left = 0
    Top = 323
    Width = 493
    Height = 34
    HintImageIndex = 0
    TabOrder = 1
    DrawDefault = True
    SkinData = Form1.spSkinData1
    SkinDataName = 'panel'
    AlphaBlend = False
    AlphaBlendValue = 200
    UseSkinCursor = False
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    EmptyDrawing = False
    RibbonStyle = False
    ImagePosition = spipDefault
    TransparentMode = True
    CaptionImageIndex = -1
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    NumGlyphs = 1
    Spacing = 2
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvNone
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    Caption = 'spSkinPanel1'
    Align = alBottom
    object spSkinButton_Close: TspSkinButton
      AlignWithMargins = True
      Left = 394
      Top = 3
      Width = 89
      Height = 23
      Margins.Right = 10
      Margins.Bottom = 8
      HintImageIndex = 0
      TabOrder = 0
      DrawDefault = True
      SkinData = Form1.spSkinData1
      SkinDataName = 'button'
      AlphaBlend = False
      AlphaBlendValue = 200
      UseSkinCursor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      Transparent = False
      CheckedMode = False
      ImageIndex = -1
      AlwaysShowLayeredFrame = False
      UseSkinSize = True
      UseSkinFontColor = True
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = 'Close'
      NumGlyphs = 1
      Align = alRight
      Spacing = 1
      Cancel = True
      Default = True
      ModalResult = 1
    end
  end
  object spDynamicSkinForm1: TspDynamicSkinForm
    MenuButtonVisible = False
    MenuButtonWidth = 50
    MenuButtonImageIndex = -1
    MenuButtonSpacing = 0
    MenuButtonMargin = -1
    WindowState = wsNormal
    ShowMDIScrollBars = True
    QuickButtons = <>
    CaptionTabs = <>
    CaptionTabIndex = 0
    CaptionTabPos = sptpLeft
    QuickButtonsShowHint = False
    ClientInActiveEffect = False
    ClientInActiveEffectType = spieSemiTransparent
    DisableSystemMenu = False
    PositionInMonitor = sppDefault
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    UseSkinFontInCaption = True
    UseSkinSizeInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = False
    ShowObjectHint = False
    UseDefaultObjectHint = True
    UseSkinCursors = False
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SupportNCArea = True
    AlphaBlendAnimation = True
    AlphaBlendValue = 200
    AlphaBlend = False
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 200
    SkinData = Form1.spSkinData1
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Sizeable = False
    DraggAble = False
    NCDraggAble = True
    Magnetic = False
    MagneticSize = 10
    BorderIcons = []
    Left = 456
  end
  object spPngImageStorage1: TspPngImageStorage
    PngImages = <
      item
        Name = 'PngImage0'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000AF000000AF08060000008B928E
          75000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000DD600000DD601906F799C0000001874455874536F667477
          617265007061696E742E6E657420342E302E36FC8C63DF0000158B4944415478
          DAED9D099853559680CF7D492DC94B598A8A8D286AFB0DA0DDD376F728E58A3B
          952A1470834A95D2B862BB80E28A8E4D57B78CCA22A0B60BEE4225A5B80B2405
          28833D4EBBF48C76EB8C85DA63BBDBA0AD5425A90A557967CE7D55D0055492F7
          92B726F7FFF44BF8EA2DE7DEFC3939F72DF731440481C08D3021AFC0AD087905
          AE85D91D8040902F425E816B11F20A5C8B9057E05A84BC02D722E435189C0352
          E7A1C13DA51E69B8E4455901A50B95F22F02A19F6F66AC59B13BBE6242C86B00
          88C092E17147A0244D056413A8578753C74A03FE8E8CC1D788F82243E5117FD3
          9AB7E8EFE218658108790B24DE3AEE3086D222EACA13B52C8F7D2EB77925E54A
          DF94351FD91DBF9B11F2E609CE99232546BE7E0D93A4B9F4CF32DDEB23C699C4
          A6C90DD167EC6E8B5B11F2E6812AEEE8B7EE62809717B41DC43448ECD24043F4
          21BBDBE44684BC3AA19F7D960807EF628C5D61C8F61015AA877F2987624BED6E
          9BDB10F2EA40CDB8A3DE586294B8DBB7CB07740097C98DD1FBED6EA39B10F26A
          A4AF5478834A055650A9900585F6720565E0FBEC6EAB5B10F26A801F0A4B448C
          2B1532EE07A88450E04AB92976AFDD6D760342DE1C5825EE00F8898C9972287A
          8FDD6D773A42DE2C9855E3E6DC2FAF81259C2937C4EEB6BB0F9C8C9037037689
          BB7DFFC80F44C0D5554DD12576F7855311F20E827A382C52B7843AE74A5BE350
          8F42E02CB931B6D8EE3E712242DE9DE83BAAF0E662BBC51D08C5728D3F14BDD3
          EE389C8690770076970A19E3A2FF2484EBFC8DD18576C7E22484BCFDA847155A
          ED2F15B2C4C78FA4DD10686A9B6F772C4E41C80BFDE286495CC999E26E8F9367
          600637FA1BA2F3EC8EC50994BCBC4EAC7173C60C383B108ADD6E771C7653D2F2
          BA515C35EEBE0C7C3365E0DBEC8EC54E4A56DEBEC361411297CDB03B963CE347
          50F09640536CAEDDB1D84549CADB7F91CD22B78ABB435B007E1508457F6B771C
          765072F2F6DD0141A582C30767BADA44AD9243B1DF96DA7D7125256FFFE1305E
          E3BA3EE3EED02E50AF07FE8D1C8AFEDAEE58ACA464E4ED13D7BD35AE261809DC
          109D637718D635B70428A61A57436B6FA512E25750022544D1CBDB7F386C51B1
          950A596130D7DF10BDA5D86BE0A297371EA65281B19976C7613D781B65E09BEC
          8EC24C8A565E3EED526254F0CED214B71F06B7530D3CDBEE30CC6B5E11525A35
          6ECEDE98E76F88DDC858F1951045276FFF3D678B4A3AE3EE8482B020108A5E5F
          6C021795BC5CDCAED6BA3BE913BACAEE589C072EA41AF85ABBA33092A291B7FF
          42F2D2AE7173405FEA4554035F532C19B828E4158333EDD007BED8D7109D550C
          021785BCF1481D3F8E2B4A058D90B577C9A1E8556E3F0EEC6A79D58C3BB26E21
          9384B87A4105EE961BA333DD9C815D2B2FAF71BB46BFB9500CCEF207017F27B7
          D7CC60CDEE7CDC802BE5EDBF3AEC4E512A140EF5E1BDBEF6E895AC195C27B0EB
          E4ED3F1CC633EED576C7522C50E9709F6F4AF472B79510AE92B7FF427251E39A
          0059FB80DC3EE632379510AE91770E0DCEAE13833393C107FD0D3597BAE5915B
          AE91371EA9A51A5712A582E9E043FEF69AE96EC8C08E979767DCEB0F09CE0764
          B3EC8EA5644078D81F1A7389D333B0A3E5ED3F1CB6400CCE6C00F151BFB7EA62
          367945DAEE5032E15879FB0F872D64425CDB5014783C5016B8D0A9023B525EF5
          71A84F06178852C1113CEEF7385360C7C9AB9EF21D5DBB400CCE9C8382B82CE0
          AD3ADF69023B4A5E512A3817FA6C5AE48DC969AC7943AFDDB16CC351F2262254
          2A00BBC6EE380419400CD3206EAA5332B023E4556BDCD6E07C21AEF3410523F2
          BE5D53D989F66760DBE5E5356E7254FD7C602806672E01119F9487759D6BB7C0
          B6CADB7FB3E402C6C45105F7814FBDDFB1F9DCC3A7FF578F5D11D826AFDE5281
          95F90124AF5DE10EDA00EC49D26B81E59FA70298B7A26F7BBDB43DC5A67292FA
          56ED634EBA8762E9D2D2052BDA3B3735D925B02DF2AAA5C2E8E0BC5CE24ABBED
          07DE43268367780DB0F22A3B42CDD11005946F3742EF47ABA1F793F5EABFB5C0
          2A7603EFA833C17BC009C0E4BD61FBC7C0B7F7F70FA1F72F51E8FDF8E5C2BF18
          B9F09483F7E020787F380EA4EA83D46B23B737ADFB7B487FF61FD0F3FE0AC0E4
          E6CC5D00F0B4DCB1A991D920B0E5F26A2D153CF4C156D45C4D0697591D625EA4
          BFFA23A45EFB3780DEEEACCB497BFC102AC63603F3ED997D7B7F7B1B52BFBF95
          B6973B03E603ABDC9DE2F835484346665D8EFFBA6CA576A5BFFEEFCCCB203CFB
          576F20F4E3C92BB69A126CA63658B9334E225C478333C83A7F80B4F78FA1F2A4
          DB283A8FD5E11544FAD35721F59F999F73C285A9ACBD87C41DA26D7B5FFC8104
          3661D273CAB09527CDA37EFE91B6E5E90BD4BD6626281D9F675C840671CFCB23
          474C66872FB52C035B26AF5AE346EAE6E51257EDD8717751863AD8AAD00CA5FB
          E5EB41D9FCDEA07F2BFFD925542E4CD2B13584D4FA9B290BBF63688CEAAFDA51
          D7EB5A27FDC51BF4456ACE1E2D17D85B35855994812D91576B8DCB9176DB1F2A
          EB1FB0222C53E0F5EFD63FDE33C85F18F826B5A8D957D7F63E5E075BDF30F6C9
          AD15C7FF063CC30ED7B792D2035DCF35521991C8BA18D5C02FCA9EC03956086C
          BABCFD3392CF671A8F2A78F63B1A2A8EFD57B3C3320D9E7579F6DD193E48F39D
          D1AA7F7B3420EC5E6BECD972DFC465396BEEC1E85E338306941FE55C8EA47AE9
          F34D78CEC899B194A181EFBA1FF3D05C2A0CC07BD0C9505EE3DE136DCA777F81
          EEB65D9FD5C2E47DC077FAA3FAB7D7F12974AFBED4B80099A47E89587940F7AA
          A9F5B3A984F993B6851157FA7687B3A57AF304364D5EF50E88517577E81197E3
          D9EF28CABCB7981596E90879776095AF1ACF324B6053E4CD27E36E43AA1A0E95
          E3979A159AE90879770231EA4F759DC9CEDFD0AD6F450D4D317A839C442B898B
          705DBE21558E5B0CD2907F322334D311F20E02429B3F959C64B4C086CADB9F71
          79A990A7B87D487B1D029527DDE1ACD3C11A11F26624F6ADF4DD9923A6BC6ED8
          5917C3E4E5E2C6A95490F2281506C3B3FFB15051338B4670954685680942DE2C
          20ACF179E449D294A70D11D81079FBEE39A38C9B77A9902138FAC0CB0E9D0C9E
          7DC700ABA8DEE1DCBBF94879ED4FC89B93753E499E6084C005DBD0572A04A954
          60868ABB0BFC1A07C9BAD3C5FCCB525E73357886FE44D77A42DEDC90332F6FE9
          F44C183E7D65B2A0A61418842135AE53F11E7812941FA9AF0A12F26A03015F91
          65EFE96C42FE02E72DAF59A58293F00C3F122A8EFB95AE7584BC7AC0F51D3DE9
          D3874D5D9BC867EDBCE54DF0520198BEAB3B5C8667D81150717CB3AE7584BCBA
          D9E0EBE91D2FE521B06E79FBEF80B8BDD8C5E5087977C42479F9C53C1B129EE4
          69FB4CDE10D7D5149D3B61C970F0561A9C15F5336DB721E4DD11B3E455415CEF
          EF1C51CBA66BBF1E5897BCF196BA8BA8ED0F9A13BDF3F0EC5B031563E7E85A47
          C89B3FA8C0E2405354F325749AE5DDB2AC7694C723BDC3AF15372D7A8751F6D3
          0BA16CF459BAD611F2E60F22A61948C7C88DABDFD0D4144D1B05F5905894DED6
          9A16F960485EF5E64B7EE134F3ED65ED71DECA2120558FD0BD9E90B73048E0F5
          81C6D8499A9AA265A144CBB831248EA66F83514855FB41F9B1379140075AB9DB
          8211F2160EB2F44F030D6B72EE4893BCF170F07EC6D874D3A3DE16946F4FA8AC
          BD8BB2DF1E56EDD2308C9617137F839481B7013192573D76EDF5E95ED72A79E9
          A77E81DC18CD79FE20A7BCF8D4399E643AFE19BD1D667ED47D21559C702B787E
          F0336B76673046CBEB24AC9317DF931B63FF9C6BB19CF2C697D50E038FF4050D
          D42CB92A8605F605DF690F6A09CD9108790B87C658297F3556E7BA0323A72189
          701D8D96E02DAB3AC8F537600A790DA15791465637ADFA30DB3239E5ED88D41E
          E701E9558BFA47DC80E960AC949749CAD1FE296D7FC8BA4CAE8DC45BC71DC6D0
          63ECAC1759F01E740AC9EBDE492333DDAA2EE4D509C3A3E486D8EB5917C9B58D
          EF5BC6EFE165E9CD8C5933F792DBE5CD34498890571FAC8C1DE83F7BF5275997
          D1B2A17824F83E8DD7465B11B4DBE54DBD3A07D25FEE3A4410F26A071112ED9D
          9BF6C83575AAB69314AD75CD3404D477616B9EB859DEF4D76F43EADFF96073D7
          87A7337928C9FB98DD21168485C7797F2F3746C7E65A4C93BCC9E5F507281EFC
          9016367DBE51B7CA8BF12FA17BDDB5EABCB68337AC12FC673F6B7798056161D9
          70951C8A2EC9B590E683A9F170DD038CC1256647ED3A797B53D0FBE906E879E7
          21C0ADD92F47ADACBDDBB5B35F722C92F7FB94A7E7C02193D76DC9B5A066793B
          1E0EEE2DF9D87B24F0503323CF57DEDE8F56F54D05DA9304B4646A7C2A0D4856
          A5F34BAA17B4CD66C467202F1F739505B1998325F222CE921B638BB42CAAEF7A
          DE707D10405969E691877CE44512A86BD5456685641CFDD715F05BF9DD8805F2
          AEF2378C99A0F569F3BACFC12622C14B28E7DCC7F8276102F9C8AB7CF3BF6ABD
          E90A3CE5507EF8E5E03DF06430A90B4DC34C7911719D9CEA3A5DCF9450795D40
          A00A8CEC7E33AE77C8475E5E2EA4D6BBEBCE2469F783C03362ACFAD018F05878
          7D3F7D689EA187E5756DB469F222ACF3A792BAC4559B92EFFECCCAC0F9C9FBB6
          3AFDBD40038EBB9E17D7FAA4C0C47C66D0292873C6C37517D3CEF9B5BE86099C
          97BC9BDE85D42B3718154271E32079158435DFA492130FCA73F6C8827FF6F94D
          99C0F001A304CEABE6FDEE23E86E9B61C4EE8B1FE7C8DBE6ABC689854C3C6D48
          CD1A8F042FA497A5469410791D2A4B6F55076C5C62410E9C202F42DBA6547252
          BE19777B538CEA93AE70F002850486020FA3157292423D4940FFA362D1A3C052
          1DA0FC7D23F4FEDF5A50B67C52F8F6ACC0667915C0D837DD5D67142AAEDA1423
          FBA5ABB5EEFCB4820F16721CD87567D838A840CFFF44E8FFB07A5589A3B1757E
          5E8CFABD55938C7ACC95E187BAE291DA69B4D987F32D215C296F3F3DEF2E5325
          763476C96BB0B86A53CCE89F78A47E1A65A387F2C9C06E96973FB1BD3B7A2928
          9D5FD81D4966EC9177F5A6EEE45946940A3B34C5A42EE2B7CBFF825E1ED62BB0
          ABE525F853D27BFEE4E0EB76AD7F1AD04ACAB86799F1444C536FD18DB7D44D05
          868FE811D8EDF23AFE6C9F95F27271478E38D3AC87699B7E7F7932527F9E82CA
          A35A0576BBBC996EC0740C16C9AB90B8019332EEF6A698D74BFF2019AE3F5701
          E5312D02F3F3FD1547DF684558A6A07CF33E74AF73F2DDCFF93DC09BD3BD7616
          28DFB6E75CCEAA87675B36B347B235D8A4207B8C7698F5E16AD25E8742E5290B
          AC0ACB707AFFFA0A6C7DDDD9F1579E3C1FA4BD7FA46F2554A0EB857333DF29B2
          6D31C417E4CECDE7B01CF79F1981A5D3D27446EA1A19E2135933B0A7027C139F
          A09FB52A2B43338CD46B7321FDD96B76879115EFC88950FE737D53CFF18CCB33
          6F361883177C5B365922AEBA3F2B7632902409AC003C9E2D03971D7236941D76
          81D5A1158CFA01F392C1E9272A7882A8BB175840E3F4739856AFDA4B6FFA73E6
          4578C6F5564D36BB5418882D138275866B430C24CAC01904E6771C1C3D1B3CFB
          1F63477879A1747E0EA9576603767D6B77289A90AA0F808A13E602F30DC9BE20
          950B5BDF5E0ABD1FBC98791180E7DA3B364DC975ABBAD1D8369B5D674BB081CA
          87659905A63F1C5CA766613EE7815327DEC39E04A43F5E073DEF2E57DFBB092E
          6ED94FA68177FFE3E877B062A786D110FBDB0FA0E7CF8F65CDB8F4313DEBDB27
          39859DB8A1D7F2F82DEFB1015009314541589E51E0FE10B9BC6A8670D483B4F9
          5C865B28E37E4569D7D284633C24AE14D81760DB38239D52E705CE3D388367E5
          CE4D0D56D5B83B637B3AA341DC1409601958302784C03810F099F68ECD21AB4B
          8581D82E2F27D91A3C4741D662C5A42682C2A1DF9CA7E5F66488355B5F2A0CC4
          11F27212E12015B72C0C426047A38AFB0312D7861A77671C232F870B8C24B0C8
          C0CE846ADC1554E336D955E3EE8CA3E4E5245AEACE420923344C13023B09C427
          DFDCD875EE8936970A03719CBC9C8E48ED9912B256C684C04E00495CD95BD5C4
          26AFB0621E2DCD38525E0E9510672083274506B69D567F7BF23CBB076783E158
          7939AAC0D4799481CBED8EA54489F83D81F39C9671B7E16879398948FD4444E5
          2921B0B550A910A65261AA53C5E5385E5E4E225C3B0181AD10025B0489EB77B8
          B81C57C8CB1119D8325AA854F885D3C5E5B8465E4EA235783A205B416F2B0ADE
          9860175081E57259609A1BC4E5B84A5E4E3C52771ABD3CCD84C0C682B8CC1FAA
          99A675626727E03A7939AAC048023321B031E0137E4FD5056EC9B8DB70A5BC9C
          78B87E3C75FA3342E082797C952770E1649789CB71ADBC9C784BB09E49EC197A
          6BE1D4E24504C263FE8D632E64CDEE291506E26A79395442D45123F803CE84C0
          7A70B9B81CD7CBCBE102D3CBB34C08AC117CD4DF5073919B0667835114F272D4
          C76C317C4E089C1D458147021F8CB9D8CD19771B45232F27DE525B0B4C7A9E06
          7142E0C14078984A854B8A415C4E51C9CBE98A04C72908CF03633EBB637116F8
          90BFBD667AB188CB293A7939711298B20C656021701FF8A0BF3D76296B86A211
          975394F2723AC375A732C0174A5D6044582A6F8CFEB2D8C4E514ADBC1C2A214E
          4E23BC54AA027371E793B8CD45282EA7A8E5E574B68E3F45C2F40BD454BFDDB1
          5809023C20B7472F2BC68CBB8DA29797D349199821BC4819B82404660CEEF34D
          895E4EAF0E9FF1AFC076DA1D805574B5D69F98569495C52E30950AF7C9A1E217
          975332F2723A496009F1257A2BDB1D8B1990ADF7CA0DD12B4A415C4E49C9CBE9
          5C4E027B8A4F6004FC9DDC10BBB254C4E5949CBC9CE493C1E31585AD62452230
          22DE238762334A495C4E49CACB49B6D68F55145C4D1FB8AB052E557139252B2F
          27D9123C1E195B49BDA0FFB94E0E806CBD9B6ADC99A5282EA7A4E5E5742CAF1F
          2B49B88AB94C6086B8C4178A5D5DAAE2AA7D6077004E20F954F058A517A28C31
          57084CA5C212B9C4C5E50879FBA112E2589460357589A39FA145B62E9643D159
          0C4A5B5C8E9077001D24B0C4800671CE14986C5D44E25E23C4ED43C8BB131DCB
          EB8EA11A38EA3481A954B8536E8C5D2BC4FD0742DE4148B6D41E859214A3B7BB
          D91D0B47883B3842DE0C2423F5472360146C169862581808C5AEB5BB3F9C8890
          370B3C032B9481994D022B88F3038DB11B44C61D1C216F0E12E1FA1A72A78D7A
          AADADA3DE33C7F2876A3103733425E0D582DB0A2E0BCAAA6D80D76B7DBE90879
          35C205A6FAB38D992830A558A4EDDF21374467DBDD5E3720E4D541A265DC1890
          A436EAB6DD4DD83C77F7763914BBC9EE76BA0521AF4E12E1BAC349B2B5C08C16
          186F13E2EA43C89B0789D6E011A8C01A6680C06AA980246E63EC66BBDBE53684
          BC79A26660866BA80BF7C8771BAAB80073E550F416BBDBE34684BC05906819FF
          2FC09428F5E2DE7AD74554DD6D0E34C69AED6E875B11F216487279FD01E851EE
          A7AE0C6A5D87C4FD9C01CEA052E139BBE37733425E83A03AF84844368DA43C95
          E43C80EA61CFC0BF53A2FD8E21BC4E05EE53FE6A1691EA6329BB63763B425E83
          2171D9D7CB4EF5EF5E01439574D95005D271D9835F3156BDC56D0F2C713A425E
          816B11F20A5C8B9057E05A84BC02D722E415B81686282E1715B81321AFC0B508
          7905AEE5FF01C868AD25929A189F0000000049454E44AE426082}
      end>
    Left = 456
    Top = 40
  end
end
