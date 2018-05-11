object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1077#1082#1091#1085#1076#1086#1084#1077#1088
  ClientHeight = 196
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 10
    Width = 65
    Height = 16
    Caption = #1057#1083#1086#1078#1085#1086#1089#1090#1100
  end
  object LTime: TLabel
    Left = 111
    Top = 45
    Width = 95
    Height = 33
    Caption = ' 0: 0: 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LRating: TLabel
    Left = 16
    Top = 95
    Width = 6
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 128
    Width = 217
    Height = 57
    AutoSize = False
    Caption = 
      #1053#1072#1078#1084#1080#1090#1077' "'#1057#1090#1072#1088#1090'", '#1072' '#1079#1072#1090#1077#1084' "'#1057#1090#1086#1087'" '#1090#1072#1082', '#1095#1090#1086#1073#1099' '#1074#1088#1077#1084#1103' '#1073#1099#1083#1086' '#1088#1072#1074#1085#1086' 1 '#1089#1077 +
      #1082#1091#1085#1076#1072' (0:1:0)'
    WordWrap = True
  end
  object CBDiff: TComboBox
    Left = 88
    Top = 8
    Width = 145
    Height = 24
    ItemIndex = 0
    TabOrder = 0
    Text = #1053#1091#1073#1089#1082#1072#1103
    OnChange = CBDiffChange
    Items.Strings = (
      #1053#1091#1073#1089#1082#1072#1103
      #1057#1088#1077#1076#1085#1103#1103
      #1057#1083#1086#1078#1085#1072#1103
      #1061#1072#1088#1076#1082#1086#1088)
  end
  object BStartStop: TButton
    Left = 8
    Top = 40
    Width = 97
    Height = 49
    Caption = #1057#1090#1072#1088#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BStartStopClick
  end
  object GPRecords: TGroupBox
    Left = 239
    Top = 8
    Width = 185
    Height = 153
    Caption = #1051#1091#1095#1096#1080#1077' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099
    TabOrder = 2
    object LRec1: TLabel
      Left = 10
      Top = 24
      Width = 4
      Height = 16
    end
    object LRec2: TLabel
      Left = 10
      Top = 48
      Width = 4
      Height = 16
    end
    object LRec3: TLabel
      Left = 10
      Top = 72
      Width = 4
      Height = 16
    end
    object LRec4: TLabel
      Left = 10
      Top = 96
      Width = 4
      Height = 16
    end
    object LRec5: TLabel
      Left = 10
      Top = 120
      Width = 4
      Height = 16
    end
  end
  object BExit: TButton
    Left = 338
    Top = 167
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = BExitClick
  end
  object BAbout: TButton
    Left = 248
    Top = 167
    Width = 84
    Height = 25
    Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    TabOrder = 4
    OnClick = BAboutClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 208
    Top = 32
  end
end
