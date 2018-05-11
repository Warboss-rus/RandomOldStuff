object Form1: TForm1
  Left = 367
  Top = 281
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088' v0.2'
  ClientHeight = 178
  ClientWidth = 288
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
  object s1: TEdit
    Left = 8
    Top = 8
    Width = 113
    Height = 21
    TabOrder = 0
    Text = '0'
    OnKeyPress = S1KeyPress
  end
  object s2: TEdit
    Left = 8
    Top = 35
    Width = 113
    Height = 21
    TabOrder = 1
    Text = '0'
    OnKeyPress = S2KeyPress
  end
  object Result: TEdit
    Left = 8
    Top = 69
    Width = 113
    Height = 21
    ReadOnly = True
    TabOrder = 2
    Text = '0'
  end
  object Calculate: TButton
    Left = 8
    Top = 96
    Width = 113
    Height = 41
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
    TabOrder = 3
    OnClick = CalculateClick
  end
  object Actions: TListBox
    Left = 131
    Top = 8
    Width = 155
    Height = 129
    ItemHeight = 13
    Items.Strings = (
      #1057#1083#1086#1078#1077#1085#1080#1077' (+)'
      #1042#1099#1095#1080#1090#1072#1085#1080#1077' (-)'
      #1059#1084#1085#1086#1078#1077#1085#1080#1077' (*)'
      #1044#1077#1083#1077#1085#1080#1077' (/)'
      #1042#1086#1079#1074#1077#1076#1077#1085#1080#1077' '#1074' '#1089#1090#1077#1087#1077#1085#1100' (^)'
      #1050#1086#1088#1077#1085#1100' '#1089#1086' '#1089#1090#1077#1087#1077#1085#1100#1102' (V)'
      #1057#1080#1085#1091#1089' (S)'
      #1050#1086#1089#1080#1085#1091#1089' (C)'
      #1051#1086#1075#1072#1088#1080#1092#1084' (L)'
      #1069#1082#1089#1087#1086#1085#1077#1085#1090#1072' (E)')
    TabOrder = 4
  end
  object x2: TButton
    Left = 8
    Top = 144
    Width = 89
    Height = 25
    Caption = #1050#1074'.'#1091#1088#1072#1074#1085#1077#1085#1080#1077
    TabOrder = 5
    OnClick = x2Click
  end
  object About: TButton
    Left = 104
    Top = 144
    Width = 88
    Height = 25
    Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    TabOrder = 6
    OnClick = AboutClick
  end
  object Help: TButton
    Left = 198
    Top = 143
    Width = 82
    Height = 25
    Caption = #1055#1086#1084#1086#1097#1100
    TabOrder = 7
    OnClick = HelpClick
  end
end
