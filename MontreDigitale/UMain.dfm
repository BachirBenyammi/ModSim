object Form1: TForm1
  Left = 171
  Top = 107
  Width = 729
  Height = 293
  Caption = 'Analyse d'#39'une Montre Digital'
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape3: TShape
    Left = 584
    Top = 48
    Width = 73
    Height = 169
    Shape = stRoundRect
  end
  object Shape2: TShape
    Left = 576
    Top = 72
    Width = 89
    Height = 121
    Shape = stRoundRect
  end
  object Label1: TLabel
    Left = 160
    Top = 24
    Width = 342
    Height = 29
    Caption = 'Analyse d'#39'une Montre Digital'
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
    Width = 367
    Height = 23
    Caption = 'A = {Bouton A, Bouton B, Bouton C, Temp}'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 104
    Width = 351
    Height = 23
    Caption = 'S = {Affichage, R'#233'glage, Affichage Date, '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 184
    Width = 129
    Height = 23
    Caption = 'I = {Affichage}'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 200
    Top = 184
    Width = 132
    Height = 23
    Caption = 'F = {Affichage}'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 104
    Top = 152
    Width = 411
    Height = 23
    Caption = 'Affichage Jour, Affichage Mois, Affichage Ann'#233'e}'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 104
    Top = 128
    Width = 300
    Height = 23
    Caption = 'Affichage Heure, Affichage Minute, '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 568
    Top = 80
    Width = 105
    Height = 105
    Shape = stRoundRect
  end
  object SpeedButton1: TSpeedButton
    Left = 680
    Top = 96
    Width = 23
    Height = 22
    Caption = 'A'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 680
    Top = 144
    Width = 23
    Height = 22
    Caption = 'B'
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 536
    Top = 144
    Width = 23
    Height = 22
    Caption = 'C'
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 536
    Top = 96
    Width = 23
    Height = 22
    Caption = 'D'
    OnClick = SpeedButton4Click
  end
  object Label6: TLabel
    Left = 568
    Top = 224
    Width = 40
    Height = 19
    Caption = 'Etat:'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label_Etat: TLabel
    Left = 616
    Top = 224
    Width = 40
    Height = 19
    Caption = 'Etat:'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 576
    Top = 88
    Width = 89
    Height = 89
    TabOrder = 0
    object Label_Points: TLabel
      Left = 41
      Top = 10
      Width = 7
      Height = 25
      Caption = ':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Panel_Left: TPanel
      Left = 8
      Top = 8
      Width = 33
      Height = 33
      Caption = '00'
      Color = clBlack
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Panel_Right: TPanel
      Left = 48
      Top = 8
      Width = 33
      Height = 33
      Caption = '00'
      Color = clBlack
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel_Annee: TPanel
      Left = 8
      Top = 48
      Width = 73
      Height = 33
      Caption = '0000'
      Color = clBlack
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 72
    Top = 40
  end
end
