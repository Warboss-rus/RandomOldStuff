object Form1: TForm1
  Left = 293
  Top = 269
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1041#1083#1086#1082#1085#1086#1090' 0.1'
  ClientHeight = 222
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Text: TMemo
    Left = 0
    Top = 32
    Width = 329
    Height = 193
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Open: TButton
    Left = 335
    Top = 8
    Width = 89
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = OpenClick
  end
  object Save: TButton
    Left = 335
    Top = 39
    Width = 89
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 2
    OnClick = SaveClick
  end
  object Copy: TButton
    Left = 334
    Top = 70
    Width = 89
    Height = 25
    Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 3
    OnClick = CopyClick
  end
  object Paste: TButton
    Left = 334
    Top = 101
    Width = 89
    Height = 25
    Caption = #1042#1089#1090#1072#1074#1080#1090#1100
    TabOrder = 4
    OnClick = PasteClick
  end
  object Clear: TButton
    Left = 334
    Top = 132
    Width = 89
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 5
    OnClick = ClearClick
  end
  object About: TButton
    Left = 334
    Top = 163
    Width = 89
    Height = 25
    Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    TabOrder = 6
    OnClick = AboutClick
  end
  object Close1: TButton
    Left = 334
    Top = 194
    Width = 89
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 7
    OnClick = Close1Click
  end
  object FilePath: TEdit
    Left = 1
    Top = 5
    Width = 249
    Height = 21
    TabOrder = 8
    Text = 'File.txt'
  end
  object Browse: TButton
    Left = 256
    Top = 5
    Width = 73
    Height = 21
    Caption = #1054#1073#1079#1086#1088
    Enabled = False
    TabOrder = 9
  end
end
