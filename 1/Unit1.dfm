object Form1: TForm1
  Left = 231
  Top = 326
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088' v.0.1'
  ClientHeight = 87
  ClientWidth = 556
  Color = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  ScreenSnap = True
  PixelsPerInch = 96
  TextHeight = 13
  object Result: TLabel
    Left = 12
    Top = 66
    Width = 3
    Height = 13
  end
  object S1: TEdit
    Left = 9
    Top = 8
    Width = 105
    Height = 21
    TabOrder = 0
    Text = '0'
    OnKeyPress = S1KeyPress
  end
  object S2: TEdit
    Left = 8
    Top = 32
    Width = 105
    Height = 21
    TabOrder = 1
    Text = '0'
    OnKeyPress = S2KeyPress
  end
  object Summ: TButton
    Left = 119
    Top = 8
    Width = 34
    Height = 41
    Caption = '+'
    TabOrder = 2
    OnClick = SummClick
  end
  object Copy: TButton
    Left = 119
    Top = 55
    Width = 74
    Height = 26
    Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1088#1072#1078#1077#1085#1080#1077
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    WordWrap = True
    OnClick = CopyClick
  end
  object Razn: TButton
    Left = 159
    Top = 8
    Width = 34
    Height = 41
    Caption = '-'
    TabOrder = 4
    OnClick = RaznClick
  end
  object Umn: TButton
    Left = 199
    Top = 8
    Width = 34
    Height = 41
    Caption = '*'
    TabOrder = 5
    OnClick = UmnClick
  end
  object Del: TButton
    Left = 240
    Top = 8
    Width = 33
    Height = 41
    Caption = '/'
    TabOrder = 6
    OnClick = DelClick
  end
  object About: TButton
    Left = 200
    Top = 56
    Width = 73
    Height = 25
    Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    TabOrder = 7
    OnClick = AboutClick
  end
  object Settings: TButton
    Left = 280
    Top = 56
    Width = 81
    Height = 25
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
    Enabled = False
    TabOrder = 8
    OnClick = SettingsClick
  end
  object Step: TButton
    Left = 280
    Top = 8
    Width = 33
    Height = 41
    Caption = '^'
    TabOrder = 9
    OnClick = StepClick
  end
  object Sqrt: TButton
    Left = 320
    Top = 8
    Width = 33
    Height = 41
    Caption = 'Sqrt'
    TabOrder = 10
    OnClick = SqrtClick
  end
  object x2: TButton
    Left = 360
    Top = 8
    Width = 33
    Height = 41
    Caption = 'x2'
    TabOrder = 11
    OnClick = x2Click
  end
  object Sin1: TButton
    Left = 401
    Top = 8
    Width = 33
    Height = 41
    Caption = 'Sin'
    TabOrder = 12
    OnClick = Sin1Click
  end
  object Cos1: TButton
    Left = 440
    Top = 8
    Width = 33
    Height = 41
    Caption = 'Cos'
    TabOrder = 13
    OnClick = Cos1Click
  end
  object Exp1: TButton
    Left = 481
    Top = 8
    Width = 33
    Height = 41
    Caption = 'Exp'
    TabOrder = 14
    OnClick = Exp1Click
  end
  object Ln1: TButton
    Left = 520
    Top = 8
    Width = 33
    Height = 41
    Caption = 'Ln'
    TabOrder = 15
    OnClick = Ln1Click
  end
  object Help: TButton
    Left = 368
    Top = 56
    Width = 73
    Height = 25
    Caption = #1055#1086#1084#1086#1097#1100
    TabOrder = 16
    OnClick = HelpClick
  end
end
