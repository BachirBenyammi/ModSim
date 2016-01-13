object frmFile: TfrmFile
  Left = 195
  Top = 193
  Width = 622
  Height = 340
  Caption = 'File d'#39'attente'
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
  object Label12: TLabel
    Left = 96
    Top = 16
    Width = 158
    Height = 29
    Caption = 'File d'#39'attente'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 96
    Width = 289
    Height = 201
    Caption = 'Donn'#233'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 225
      Height = 20
      Caption = 'Taux d'#39'arriv'#233' d'#39'un client (minute)'
    end
    object Label2: TLabel
      Left = 24
      Top = 80
      Width = 250
      Height = 20
      Caption = 'Dur'#233'e moyenne de service (minute)'
    end
    object Label3: TLabel
      Left = 24
      Top = 136
      Width = 251
      Height = 20
      Caption = 'Possibilit'#233' d'#39'avoir k client dans la file'
    end
    object Edit_Arrive: TEdit
      Left = 176
      Top = 48
      Width = 105
      Height = 28
      TabOrder = 0
      Text = '12'
    end
    object Edit_Service: TEdit
      Left = 176
      Top = 104
      Width = 105
      Height = 28
      TabOrder = 1
      Text = '8'
    end
    object Edit_ClientFile: TEdit
      Left = 184
      Top = 160
      Width = 97
      Height = 28
      TabOrder = 2
      Text = '2'
    end
  end
  object GroupBox2: TGroupBox
    Left = 312
    Top = 16
    Width = 289
    Height = 281
    Caption = 'Clacules'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 24
      Top = 24
      Width = 43
      Height = 20
      Caption = 'lamda'
    end
    object Label5: TLabel
      Left = 24
      Top = 64
      Width = 22
      Height = 20
      Caption = 'mu'
    end
    object Label6: TLabel
      Left = 24
      Top = 88
      Width = 102
      Height = 20
      Caption = 'P (=lamda/mu)'
    end
    object Label7: TLabel
      Left = 24
      Top = 124
      Width = 52
      Height = 20
      Caption = 'Pk (file)'
    end
    object lbLamda: TLMDLEDLabel
      Left = 88
      Top = 24
      Width = 185
      Height = 25
      Bevel.Mode = bmCustom
      LED.Horzsize = 9
      LED.Thickness = 1
      LED.Vertsize = 6
      Caption = '0'
    end
    object lbMu: TLMDLEDLabel
      Left = 88
      Top = 56
      Width = 185
      Height = 25
      Bevel.Mode = bmCustom
      LED.Horzsize = 9
      LED.Thickness = 1
      LED.Vertsize = 6
      Caption = '0'
    end
    object lbP: TLMDLEDLabel
      Left = 136
      Top = 88
      Width = 137
      Height = 25
      Bevel.Mode = bmCustom
      LED.Horzsize = 9
      LED.Thickness = 1
      LED.Vertsize = 6
      Caption = '0'
    end
    object lbPK: TLMDLEDLabel
      Left = 88
      Top = 120
      Width = 185
      Height = 25
      Bevel.Mode = bmCustom
      LED.Horzsize = 9
      LED.Thickness = 1
      LED.Vertsize = 6
      Caption = '0'
    end
    object Label8: TLabel
      Left = 24
      Top = 156
      Width = 86
      Height = 20
      Caption = 'Ls (=1/(1-p))'
    end
    object lbLS: TLMDLEDLabel
      Left = 120
      Top = 152
      Width = 153
      Height = 25
      Bevel.Mode = bmCustom
      LED.Horzsize = 9
      LED.Thickness = 1
      LED.Vertsize = 6
      Caption = '0'
    end
    object Label9: TLabel
      Left = 24
      Top = 188
      Width = 105
      Height = 20
      Caption = 'Lq (=P*P/(1-P))'
    end
    object lbLQ: TLMDLEDLabel
      Left = 136
      Top = 184
      Width = 137
      Height = 25
      Bevel.Mode = bmCustom
      LED.Horzsize = 9
      LED.Thickness = 1
      LED.Vertsize = 6
      Caption = '0'
    end
    object Label10: TLabel
      Left = 24
      Top = 220
      Width = 110
      Height = 20
      Caption = 'Ws (=Ls/lamda)'
    end
    object lbWS: TLMDLEDLabel
      Left = 144
      Top = 216
      Width = 129
      Height = 25
      Bevel.Mode = bmCustom
      LED.Horzsize = 9
      LED.Thickness = 1
      LED.Vertsize = 6
      Caption = '0'
    end
    object Label11: TLabel
      Left = 24
      Top = 252
      Width = 106
      Height = 20
      Caption = 'Wq (=lq/lamda)'
    end
    object lbWQ: TLMDLEDLabel
      Left = 136
      Top = 248
      Width = 137
      Height = 25
      Bevel.Mode = bmCustom
      LED.Horzsize = 9
      LED.Thickness = 1
      LED.Vertsize = 6
      Caption = '0'
    end
  end
  object btnCalcule: TButton
    Left = 176
    Top = 56
    Width = 75
    Height = 33
    Caption = 'Claculer'
    TabOrder = 2
    OnClick = btnCalculeClick
  end
  object btnInitialise: TButton
    Left = 48
    Top = 56
    Width = 89
    Height = 33
    Caption = 'Initialise'
    TabOrder = 3
    OnClick = btnInitialiseClick
  end
end
