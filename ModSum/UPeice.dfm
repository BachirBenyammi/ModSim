object frmPeice: TfrmPeice
  Left = 192
  Top = 111
  Width = 540
  Height = 599
  Caption = 'Peice de Monnaie'
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
    Left = 128
    Top = 16
    Width = 208
    Height = 29
    Caption = 'Peice de Monnaie'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSimule: TButton
    Left = 216
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Simuler'
    TabOrder = 0
    OnClick = btnSimuleClick
  end
  object btnArreter: TBitBtn
    Left = 296
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Arreter'
    TabOrder = 1
    OnClick = btnArreterClick
  end
  object btnInitialise: TBitBtn
    Left = 136
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Initialise'
    TabOrder = 2
    OnClick = btnInitialiseClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 232
    Width = 521
    Height = 329
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
      Width = 129
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0.00001'
      OnChange = Edit_PrecisionChange
    end
    object sgTable: TStringGrid
      Left = 272
      Top = 24
      Width = 201
      Height = 113
      ColCount = 3
      DefaultRowHeight = 28
      RowCount = 3
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
      Width = 129
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
    object Chart_X: TChart
      Left = 8
      Top = 160
      Width = 249
      Height = 161
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'P (x = k)')
      BottomAxis.Automatic = False
      BottomAxis.AutomaticMaximum = False
      BottomAxis.AutomaticMinimum = False
      BottomAxis.ExactDateTime = False
      BottomAxis.Increment = 1.000000000000000000
      BottomAxis.Maximum = 2.000000000000000000
      BottomAxis.Minimum = 1.000000000000000000
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
      Legend.HorizMargin = 10
      RightAxis.ExactDateTime = False
      TabOrder = 3
      object Series1: TBarSeries
        HorizAxis = aTopAxis
        Marks.ArrowLength = 20
        Marks.Visible = True
        SeriesColor = clRed
        BarWidthPercent = 75
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
      Top = 152
      Width = 249
      Height = 169
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'P(X <= K)')
      BottomAxis.Automatic = False
      BottomAxis.AutomaticMaximum = False
      BottomAxis.AutomaticMinimum = False
      BottomAxis.ExactDateTime = False
      BottomAxis.Increment = 1.000000000000000000
      BottomAxis.Maximum = 2.000000000000000000
      BottomAxis.Minimum = 1.000000000000000000
      BottomAxis.MinorTickCount = 0
      BottomAxis.MinorTickLength = 0
      BottomAxis.TickLength = 0
      LeftAxis.Automatic = False
      LeftAxis.AutomaticMaximum = False
      LeftAxis.AutomaticMinimum = False
      LeftAxis.ExactDateTime = False
      LeftAxis.Increment = 0.010000000000000000
      LeftAxis.Maximum = 1.000000000000000000
      TabOrder = 4
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
  end
  object Panel1: TPanel
    Left = 24
    Top = 56
    Width = 481
    Height = 129
    TabOrder = 4
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
      Caption = 'u < 1/2 => X[1] = X[1]+1'
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
      Width = 233
      Height = 29
      Caption = 'u < 1 => X[2] = X[2]+1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 24
      Top = 92
      Width = 433
      Height = 29
      Caption = 'Condition d'#39'arr'#232't: |X[i]/k - 1/2| <= 0.00001'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
end
