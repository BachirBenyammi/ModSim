object MainForm: TMainForm
  Left = 195
  Top = 238
  Width = 667
  Height = 318
  Caption = 'Mod'#233'lisation & Simulation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 659
    Height = 267
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 336
      Top = 11
      Width = 305
      Height = 174
      Caption = 'Echantillonnage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object btnPeice: TButton
        Left = 40
        Top = 24
        Width = 233
        Height = 33
        Caption = 'Pi'#233'ce de monnaie'
        TabOrder = 0
        OnClick = btnPeiceClick
      end
      object btnDe: TButton
        Left = 40
        Top = 64
        Width = 233
        Height = 33
        Caption = 'Lancement d'#39'un d'#233
        TabOrder = 1
        OnClick = btnDeClick
      end
      object btnPI: TButton
        Left = 40
        Top = 104
        Width = 233
        Height = 25
        Caption = 'Calcule de PI'
        TabOrder = 2
        OnClick = btnPIClick
      end
      object btnRandom: TButton
        Left = 40
        Top = 136
        Width = 233
        Height = 25
        Caption = 'Round Seed && Random'
        TabOrder = 3
        OnClick = btnRandomClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 11
      Width = 305
      Height = 246
      Caption = 'Machines '#224' '#233'tat finis (MEF)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnConst: TButton
      Left = 40
      Top = 88
      Width = 233
      Height = 41
      Caption = 'Analyse d'#39'une constante r'#233'elle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnConstClick
    end
    object btnMachine: TButton
      Left = 40
      Top = 136
      Width = 233
      Height = 33
      Caption = 'Machine '#224' caf'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnMachineClick
    end
    object btnMontre: TButton
      Left = 40
      Top = 176
      Width = 233
      Height = 33
      Caption = 'Montre digitale'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnMontreClick
    end
    object btnMot: TButton
      Left = 40
      Top = 40
      Width = 233
      Height = 41
      Caption = 'Analyse d'#39'un mot ab+ab*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnMotClick
    end
    object btnTV: TButton
      Left = 40
      Top = 216
      Width = 233
      Height = 33
      Caption = 'T'#233'l'#233'vision'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnTVClick
    end
    object GroupBox3: TGroupBox
      Left = 336
      Top = 200
      Width = 305
      Height = 57
      Caption = 'File d'#39'attente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object btnFile: TButton
        Left = 40
        Top = 24
        Width = 233
        Height = 25
        Caption = 'File d'#39'attente simple'
        TabOrder = 0
        OnClick = btnFileClick
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 280
    Top = 40
    object Fichier1: TMenuItem
      Caption = 'Fichier'
      object Quitter1: TMenuItem
        Caption = 'Quitter'
        OnClick = Quitter1Click
      end
    end
    object Algorithmes1: TMenuItem
      Caption = 'Algorithmes'
      object MachinestatfinisMEF1: TMenuItem
        Caption = 'Machines '#224' '#233'tat finis (MEF)'
        object Analysedunmotabab1: TMenuItem
          Caption = 'Analyse d'#39'un mot ab+ab*'
          OnClick = btnMotClick
        end
        object Analyseduneconstanterelle1: TMenuItem
          Caption = 'Analyse d'#39'une constante r'#233'elle'
          OnClick = btnConstClick
        end
        object Machinecaf1: TMenuItem
          Caption = 'Machine '#224' caf'#233
          OnClick = btnMachineClick
        end
        object Montredgtale1: TMenuItem
          Caption = 'Montre digitale'
          OnClick = btnMontreClick
        end
        object lvision1: TMenuItem
          Caption = 'T'#233'l'#233'vision'
          OnClick = btnTVClick
        end
      end
      object Echontionnage1: TMenuItem
        Caption = 'Echantillonnage'
        object Picedemonnaie1: TMenuItem
          Caption = 'Pi'#233'ce de monnaie'
          OnClick = btnPeiceClick
        end
        object Lancementdund1: TMenuItem
          Caption = 'Lancement d'#39'un d'#233
          OnClick = btnDeClick
        end
        object CalculedePI1: TMenuItem
          Caption = 'Calcule de PI'
          OnClick = btnPIClick
        end
        object RoundSeedRandom1: TMenuItem
          Caption = 'Round Seed && Random'
          OnClick = btnRandomClick
        end
      end
      object Filedattente1: TMenuItem
        Caption = 'File d'#39'attente'
        object Filedattentesomple1: TMenuItem
          Caption = 'File d'#39'attente simple'
          OnClick = btnFileClick
        end
      end
    end
    object Apropos1: TMenuItem
      Caption = 'Aide'
      object Apropos2: TMenuItem
        Caption = 'A propos'
        OnClick = Apropos2Click
      end
    end
  end
end
