object Form4: TForm4
  Left = 331
  Top = 270
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1059#1088#1072#1074#1085#1077#1085#1080#1103
  ClientHeight = 154
  ClientWidth = 341
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
  object Mask: TLabel
    Left = 0
    Top = 0
    Width = 169
    Height = 13
    AutoSize = False
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1090#1080#1087' '#1091#1088#1072#1074#1085#1077#1085#1080#1103
    OnMouseMove = MaskMouseMove
  end
  object Result: TLabel
    Left = 8
    Top = 88
    Width = 162
    Height = 48
    AutoSize = False
    Caption = #1042#1074#1077#1076#1080#1090#1077' a,b,c '#1084' '#1085#1072#1078#1084#1080#1090#1077' '#1074#1099#1095#1080#1089#1083#1080#1090#1100
    WordWrap = True
  end
  object ListBox1: TListBox
    Left = 176
    Top = 1
    Width = 153
    Height = 145
    ItemHeight = 13
    Items.Strings = (
      'a*x^2+b*x+c=0')
    TabOrder = 0
  end
  object a1: TEdit
    Left = 0
    Top = 24
    Width = 49
    Height = 21
    TabOrder = 1
    Text = '0'
    OnKeyPress = a1KeyPress
  end
  object b1: TEdit
    Left = 56
    Top = 24
    Width = 49
    Height = 21
    TabOrder = 2
    Text = '0'
    OnKeyPress = a1KeyPress
  end
  object c1: TEdit
    Left = 112
    Top = 24
    Width = 57
    Height = 21
    TabOrder = 3
    Text = '0'
    OnKeyPress = a1KeyPress
  end
  object Calculate: TButton
    Left = 8
    Top = 51
    Width = 153
    Height = 33
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
    TabOrder = 4
    OnClick = CalculateClick
  end
end
