object Form2: TForm2
  Left = 395
  Top = 303
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1059#1088#1072#1074#1085#1077#1085#1080#1103
  ClientHeight = 166
  ClientWidth = 279
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
  object Graph: TImage
    Left = 144
    Top = 32
    Width = 131
    Height = 131
  end
  object Result: TLabel
    Left = 8
    Top = 104
    Width = 130
    Height = 57
    AutoSize = False
  end
  object Label1: TLabel
    Left = 143
    Top = 0
    Width = 45
    Height = 13
    Caption = #1052#1072#1089#1096#1090#1072#1073
  end
  object Label2: TLabel
    Left = 208
    Top = 0
    Width = 47
    Height = 13
    Caption = #1058#1086#1095#1085#1086#1089#1090#1100
  end
  object Select: TComboBox
    Left = 8
    Top = 8
    Width = 129
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'a*x^2+b*x+c=0'
    Items.Strings = (
      'a*x^2+b*x+c=0')
  end
  object a1: TEdit
    Left = 8
    Top = 32
    Width = 38
    Height = 21
    TabOrder = 1
    Text = '0'
    OnKeyPress = a1KeyPress
  end
  object b1: TEdit
    Left = 52
    Top = 32
    Width = 38
    Height = 21
    TabOrder = 2
    Text = '0'
    OnKeyPress = a1KeyPress
  end
  object c1: TEdit
    Left = 96
    Top = 32
    Width = 38
    Height = 21
    TabOrder = 3
    Text = '0'
    OnKeyPress = a1KeyPress
  end
  object Calculate: TButton
    Left = 8
    Top = 56
    Width = 129
    Height = 41
    Caption = #1055#1086#1089#1095#1080#1090#1072#1090#1100' '#1082#1086#1088#1085#1080
    TabOrder = 4
    OnClick = CalculateClick
  end
  object Mas: TEdit
    Left = 143
    Top = 13
    Width = 57
    Height = 21
    TabOrder = 5
    Text = '1'
    OnKeyPress = a1KeyPress
  end
  object Edit1: TEdit
    Left = 206
    Top = 13
    Width = 53
    Height = 21
    TabOrder = 6
    Text = '0,05'
  end
end
