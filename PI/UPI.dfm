object Form1: TForm1
  Left = 239
  Top = 107
  Width = 601
  Height = 583
  Caption = 'Calcule de PI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 16
    Top = 240
    Width = 300
    Height = 300
  end
  object Label10: TLabel
    Left = 40
    Top = 48
    Width = 347
    Height = 29
    Caption = 'NA : Nombre de points accept'#233's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 40
    Top = 80
    Width = 338
    Height = 29
    Caption = 'NB : Nombre de points arejet'#233's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 40
    Top = 112
    Width = 244
    Height = 29
    Caption = 'PI = 4 (NA / (NA + NB))'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 40
    Top = 144
    Width = 516
    Height = 29
    Caption = 'Condition d'#39'arr'#232't: It'#233'ration < 500 et |Pi-Q| < 0.001'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 432
    Top = 104
    Width = 116
    Height = 29
    Caption = 's,r <- [0, R]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 200
    Top = 16
    Width = 157
    Height = 29
    Caption = 'Calcule de PI'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSimule: TButton
    Left = 224
    Top = 184
    Width = 81
    Height = 33
    Caption = 'Simuler'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnSimuleClick
  end
  object btnStop: TBitBtn
    Left = 320
    Top = 184
    Width = 81
    Height = 33
    Caption = 'Arreter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnStopClick
  end
  object GroupBox1: TGroupBox
    Left = 328
    Top = 224
    Width = 257
    Height = 129
    Caption = 'Initialisation'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 63
      Top = 32
      Width = 12
      Height = 16
      Caption = 'PI'
    end
    object Label2: TLabel
      Left = 35
      Top = 56
      Width = 47
      Height = 16
      Caption = 'It'#233'ration'
    end
    object Label3: TLabel
      Left = 25
      Top = 80
      Width = 63
      Height = 16
      Caption = 'Pr'#233'cission'
    end
    object Label4: TLabel
      Left = 28
      Top = 104
      Width = 58
      Height = 16
      Caption = 'Compteur'
    end
    object Edit_PI: TEdit
      Left = 88
      Top = 24
      Width = 153
      Height = 24
      TabOrder = 0
      Text = '3.14'
    end
    object Edit_Iteration: TEdit
      Left = 88
      Top = 48
      Width = 153
      Height = 24
      TabOrder = 1
      Text = '500'
    end
    object Edit_Presecion: TEdit
      Left = 96
      Top = 72
      Width = 145
      Height = 24
      TabOrder = 2
      Text = '0.001'
    end
    object Edit_Compteur: TEdit
      Left = 96
      Top = 96
      Width = 145
      Height = 24
      TabOrder = 3
      Text = '10'
      OnChange = Edit_CompteurChange
    end
  end
  object GroupBox2: TGroupBox
    Left = 328
    Top = 360
    Width = 257
    Height = 185
    Caption = 'Maintenant '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object lbPI: TLMDLEDLabel
      Left = 32
      Top = 24
      Width = 218
      Height = 25
      Bevel.Mode = bmCustom
      LED.Horzsize = 9
      LED.Thickness = 1
      LED.Vertsize = 5
      Caption = '3.14'
    end
    object Label5: TLabel
      Left = 15
      Top = 32
      Width = 12
      Height = 16
      Caption = 'PI'
    end
    object Label6: TLabel
      Left = 15
      Top = 64
      Width = 47
      Height = 16
      Caption = 'It'#233'ration'
    end
    object lbIteration: TLMDLEDLabel
      Left = 72
      Top = 56
      Width = 177
      Height = 25
      Bevel.Mode = bmCustom
      LED.Horzsize = 9
      LED.Thickness = 1
      LED.Vertsize = 5
      Caption = '500'
    end
    object lbPrecision: TLMDLEDLabel
      Left = 56
      Top = 88
      Width = 193
      Height = 25
      Bevel.Mode = bmCustom
      LED.Horzsize = 9
      LED.Thickness = 1
      LED.Vertsize = 5
      Caption = '0'
    end
    object Label7: TLabel
      Left = 15
      Top = 96
      Width = 32
      Height = 16
      Caption = 'PI - Q'
    end
    object lbPropA: TLMDLEDLabel
      Left = 80
      Top = 120
      Width = 169
      Height = 25
      Bevel.Mode = bmCustom
      LED.Horzsize = 9
      LED.Thickness = 1
      LED.Vertsize = 5
      Caption = '0'
    end
    object Label8: TLabel
      Left = 15
      Top = 128
      Width = 54
      Height = 16
      Caption = 'Prob. NA'
    end
    object lbPropB: TLMDLEDLabel
      Left = 80
      Top = 152
      Width = 169
      Height = 25
      Bevel.Mode = bmCustom
      LED.Horzsize = 9
      LED.Thickness = 1
      LED.Vertsize = 5
      Caption = '0'
    end
    object Label9: TLabel
      Left = 14
      Top = 156
      Width = 54
      Height = 16
      Caption = 'Prob. NB'
    end
  end
  object btnInitialise: TButton
    Left = 128
    Top = 184
    Width = 83
    Height = 33
    Caption = 'Initialise'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnInitialiseClick
  end
end
