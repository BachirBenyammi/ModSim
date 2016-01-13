object Form1: TForm1
  Left = 107
  Top = -11
  Width = 530
  Height = 679
  Caption = 'Lancement d'#39'un d'#233
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel
    Left = 112
    Top = 24
    Width = 227
    Height = 29
    Caption = 'Lancement d'#39'un d'#233
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSimule: TButton
    Left = 104
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Simuler'
    TabOrder = 0
    OnClick = btnSimuleClick
  end
  object btnArreter: TBitBtn
    Left = 184
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Arreter'
    TabOrder = 1
    OnClick = btnArreterClick
  end
  object btnInitialise: TBitBtn
    Left = 24
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Initialise'
    TabOrder = 2
    OnClick = btnInitialiseClick
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 280
    Width = 233
    Height = 361
    Caption = 'Simulation '
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 96
      Width = 47
      Height = 16
      Caption = 'It'#233'ration'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 120
      Width = 52
      Height = 16
      Caption = 'Random'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbIteration: TLMDLEDLabel
      Left = 80
      Top = 96
      Width = 137
      Height = 17
      Bevel.Mode = bmCustom
      LED.Horzsize = 8
      LED.Thickness = 1
      LED.Vertsize = 5
      Caption = '0'
    end
    object lbRandom: TLMDLEDLabel
      Left = 80
      Top = 120
      Width = 137
      Height = 17
      Bevel.Mode = bmCustom
      LED.Horzsize = 8
      LED.Thickness = 1
      LED.Vertsize = 5
      Caption = '0'
    end
    object Label3: TLabel
      Left = 16
      Top = 32
      Width = 56
      Height = 16
      Caption = 'Pr'#233'cision'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 64
      Width = 58
      Height = 16
      Caption = 'Compteur'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit_Precision: TEdit
      Left = 88
      Top = 24
      Width = 49
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0.01'
      OnChange = Edit_PrecisionChange
    end
    object sgTable: TStringGrid
      Left = 16
      Top = 144
      Width = 201
      Height = 209
      ColCount = 3
      DefaultRowHeight = 28
      RowCount = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit_Compteur: TEdit
      Left = 88
      Top = 56
      Width = 49
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '100'
      OnChange = Edit_CompteurChange
    end
    object RxDice1: TRxDice
      Left = 152
      Top = 15
      Width = 66
      Height = 66
      Rotate = False
      ShowFocus = False
      TabOrder = 3
    end
  end
  object Chart_X: TChart
    Left = 264
    Top = 240
    Width = 249
    Height = 186
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'P (x = k)')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.ExactDateTime = False
    BottomAxis.Increment = 1.000000000000000000
    BottomAxis.Maximum = 6.000000000000000000
    BottomAxis.MinorTickCount = 0
    BottomAxis.MinorTickLength = 0
    BottomAxis.TickLength = 0
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.ExactDateTime = False
    LeftAxis.Increment = 0.010000000000000000
    LeftAxis.Maximum = 1.000000000000000000
    LeftAxis.MinorTickCount = 0
    LeftAxis.MinorTickLength = 0
    LeftAxis.TickLength = 0
    RightAxis.ExactDateTime = False
    TabOrder = 4
    object Series1: TBarSeries
      HorizAxis = aTopAxis
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart1: TChart
    Left = 264
    Top = 424
    Width = 249
    Height = 217
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'P(X <= K)')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.ExactDateTime = False
    BottomAxis.Increment = 1.000000000000000000
    BottomAxis.Maximum = 6.000000000000000000
    BottomAxis.MinorTickCount = 0
    BottomAxis.MinorTickLength = 0
    BottomAxis.TickLength = 0
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.ExactDateTime = False
    LeftAxis.Increment = 0.010000000000000000
    LeftAxis.Maximum = 1.000000000000000000
    TabOrder = 5
    object Series2: TBarSeries
      HorizAxis = aTopAxis
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Panel1: TPanel
    Left = 32
    Top = 64
    Width = 481
    Height = 177
    Caption = 'Panel1'
    TabOrder = 6
    object Label5: TLabel
      Left = 56
      Top = 8
      Width = 130
      Height = 29
      Caption = 'u = Random'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 56
      Top = 32
      Width = 253
      Height = 29
      Caption = 'u < 1/6 => X[1] = X[1]+1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 56
      Top = 56
      Width = 312
      Height = 29
      Caption = '1/6 < u < 2/6 => X[2] = X[2]+1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 56
      Top = 80
      Width = 114
      Height = 29
      Caption = '...................'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 56
      Top = 112
      Width = 312
      Height = 29
      Caption = '5/6 < u < 6/6 => X[6] = X[6]+1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 56
      Top = 140
      Width = 394
      Height = 29
      Caption = 'Condition d'#39'arr'#232't: |X[i]/k - 1/6| <= 0.01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
end
