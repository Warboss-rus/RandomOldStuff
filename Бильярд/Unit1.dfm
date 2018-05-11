object Form1: TForm1
  Left = 256
  Top = 130
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1041#1080#1083#1100#1103#1088#1076
  ClientHeight = 144
  ClientWidth = 520
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 169
    Height = 137
    Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1080' '#1074#1074#1086#1076
    TabOrder = 0
    object BGen: TButton
      Left = 3
      Top = 40
      Width = 163
      Height = 25
      Caption = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1087#1086#1083#1077
      TabOrder = 0
      OnClick = BGenClick
    end
    object BLoad: TButton
      Left = 3
      Top = 71
      Width = 163
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1087#1086#1083#1077
      TabOrder = 1
      OnClick = BLoadClick
    end
    object BGO: TButton
      Left = 3
      Top = 102
      Width = 163
      Height = 25
      Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1087#1088#1086#1094#1077#1089#1089
      TabOrder = 2
      OnClick = BGOClick
    end
    object Edit1: TEdit
      Left = 3
      Top = 13
      Width = 54
      Height = 21
      NumbersOnly = True
      TabOrder = 3
      Text = '0'
    end
    object Edit2: TEdit
      Left = 63
      Top = 13
      Width = 50
      Height = 21
      NumbersOnly = True
      TabOrder = 4
      Text = '0'
    end
  end
  object GroupBox2: TGroupBox
    Left = 327
    Top = 0
    Width = 193
    Height = 137
    Caption = #1042#1099#1074#1086#1076
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 177
      Height = 81
      AutoSize = False
    end
    object BSave: TButton
      Left = 80
      Top = 109
      Width = 110
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1092#1072#1081#1083
      TabOrder = 0
      OnClick = BSaveClick
    end
  end
  object RGMode: TRadioGroup
    Left = 175
    Top = 0
    Width = 146
    Height = 137
    Caption = #1056#1077#1078#1080#1084
    ItemIndex = 0
    Items.Strings = (
      #1058#1077#1082#1089#1090#1086#1074#1099#1081
      #1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081
      #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100#1089#1082#1080#1081)
    TabOrder = 2
    OnClick = RGModeClick
  end
  object StringGrid1: TStringGrid
    Left = 1
    Top = 143
    Width = 516
    Height = 258
    ColCount = 10
    DefaultColWidth = 50
    FixedCols = 0
    RowCount = 10
    FixedRows = 0
    TabOrder = 3
    Visible = False
    OnDrawCell = StringGrid1DrawCell
  end
end
