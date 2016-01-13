object frmRandom: TfrmRandom
  Left = 94
  Top = 116
  Width = 656
  Height = 557
  Caption = 'RoundSeed &  Random'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel
    Left = 176
    Top = 16
    Width = 274
    Height = 29
    Caption = 'RoundSeed &&  Random'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 32
    Top = 52
    Width = 599
    Height = 29
    Caption = 'Round Seed = (134775813 * seed + 1) mod 4294967296'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 88
    Width = 313
    Height = 433
    Caption = 'Round Seed  '
    TabOrder = 0
    object Label2: TLabel
      Left = 19
      Top = 29
      Width = 38
      Height = 20
      Caption = 'Seed'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 56
      Width = 96
      Height = 20
      Caption = 'Nbr It'#233'rations'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 184
      Top = 16
      Width = 113
      Height = 57
      Caption = 'Calculer Round Seed'
      TabOrder = 0
      OnClick = Button1Click
    end
    object spSeed: TSpinEdit
      Left = 120
      Top = 19
      Width = 57
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 0
    end
    object lbRoundList: TListBox
      Left = 8
      Top = 88
      Width = 297
      Height = 337
      ItemHeight = 13
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 328
    Top = 88
    Width = 313
    Height = 433
    Caption = 'Random '
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 96
      Height = 20
      Caption = 'Nbr It'#233'rations'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 77
      Height = 20
      Caption = 'RandSeed'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object seNbr: TSpinEdit
      Left = 120
      Top = 48
      Width = 57
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 0
      Value = 20
    end
    object seRandSeed: TSpinEdit
      Left = 120
      Top = 16
      Width = 57
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 0
    end
    object lbRandom: TListBox
      Left = 8
      Top = 88
      Width = 297
      Height = 337
      ItemHeight = 13
      TabOrder = 2
    end
    object Button2: TButton
      Left = 184
      Top = 16
      Width = 113
      Height = 57
      Caption = 'Calculer Random'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object seNbrSeed: TSpinEdit
    Left = 128
    Top = 136
    Width = 57
    Height = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 2
    Value = 20
  end
end
