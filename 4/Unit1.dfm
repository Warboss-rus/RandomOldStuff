object Form1: TForm1
  Left = 373
  Top = 303
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088' 0.4'
  ClientHeight = 156
  ClientWidth = 311
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Primer: TEdit
    Left = 8
    Top = 5
    Width = 291
    Height = 21
    TabOrder = 0
    OnKeyPress = PrimerKeyPress
  end
  object Button1: TButton
    Left = 8
    Top = 32
    Width = 33
    Height = 25
    Caption = '1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 48
    Top = 32
    Width = 33
    Height = 25
    Caption = '2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 88
    Top = 32
    Width = 33
    Height = 25
    Caption = '3'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 64
    Width = 33
    Height = 25
    Caption = '4'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 48
    Top = 64
    Width = 33
    Height = 25
    Caption = '5'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 87
    Top = 65
    Width = 33
    Height = 25
    Caption = '6'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 8
    Top = 96
    Width = 33
    Height = 25
    Caption = '7'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 48
    Top = 96
    Width = 33
    Height = 25
    Caption = '8'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 88
    Top = 96
    Width = 33
    Height = 25
    Caption = '9'
    TabOrder = 9
    OnClick = Button9Click
  end
  object Button0: TButton
    Left = 49
    Top = 127
    Width = 33
    Height = 25
    Caption = '0'
    TabOrder = 10
    OnClick = Button0Click
  end
  object Button10: TButton
    Left = 9
    Top = 127
    Width = 33
    Height = 25
    Caption = ','
    TabOrder = 11
    OnClick = Button10Click
  end
  object Calculate: TButton
    Left = 272
    Top = 127
    Width = 33
    Height = 25
    Caption = '='
    TabOrder = 12
    OnClick = CalculateClick
  end
  object Plus: TButton
    Left = 144
    Top = 32
    Width = 33
    Height = 25
    Caption = '+'
    TabOrder = 13
    OnClick = PlusClick
  end
  object Minus: TButton
    Left = 144
    Top = 64
    Width = 33
    Height = 25
    Caption = '-'
    TabOrder = 14
    OnClick = MinusClick
  end
  object Umn: TButton
    Left = 144
    Top = 96
    Width = 33
    Height = 25
    Caption = '*'
    TabOrder = 15
    OnClick = UmnClick
  end
  object Del: TButton
    Left = 144
    Top = 128
    Width = 33
    Height = 25
    Caption = '/'
    TabOrder = 16
    OnClick = DelClick
  end
  object Clear: TButton
    Left = 272
    Top = 32
    Width = 33
    Height = 25
    Caption = 'C'
    TabOrder = 17
    OnClick = ClearClick
  end
  object pi1: TButton
    Left = 88
    Top = 128
    Width = 33
    Height = 25
    Caption = 'pi'
    TabOrder = 18
    OnClick = pi1Click
  end
  object Step: TButton
    Left = 184
    Top = 32
    Width = 33
    Height = 25
    Caption = 'a'#739
    TabOrder = 19
    OnClick = StepClick
  end
  object Koren: TButton
    Left = 183
    Top = 65
    Width = 33
    Height = 25
    Caption = #8730
    TabOrder = 20
    OnClick = KorenClick
  end
  object Bs: TButton
    Left = 272
    Top = 96
    Width = 33
    Height = 25
    Caption = 'Bs'
    TabOrder = 21
    OnClick = BsClick
  end
  object CE: TButton
    Left = 272
    Top = 65
    Width = 33
    Height = 25
    Caption = 'CE'
    TabOrder = 22
    OnClick = CEClick
  end
  object BSin: TButton
    Left = 184
    Top = 96
    Width = 33
    Height = 25
    Caption = 'Sin'
    TabOrder = 23
    OnClick = BSinClick
  end
  object BCos: TButton
    Left = 184
    Top = 128
    Width = 33
    Height = 25
    Caption = 'Cos'
    TabOrder = 24
    OnClick = BCosClick
  end
  object Barctg: TButton
    Left = 223
    Top = 32
    Width = 33
    Height = 25
    Caption = 'arcTg'
    TabOrder = 25
    OnClick = BarctgClick
  end
  object BLn: TButton
    Left = 224
    Top = 64
    Width = 33
    Height = 25
    Caption = 'Ln'
    TabOrder = 26
    OnClick = BLnClick
  end
  object BExp: TButton
    Left = 224
    Top = 96
    Width = 33
    Height = 25
    Caption = 'Exp'
    TabOrder = 27
    OnClick = BExpClick
  end
  object MainMenu1: TMainMenu
    Left = 232
    Top = 128
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
      end
    end
    object N3: TMenuItem
      Caption = #1055#1088#1072#1074#1082#1072
      object N7: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        OnClick = N9Click
      end
    end
    object N10: TMenuItem
      Caption = #1057#1082#1080#1085
      object N11: TMenuItem
        Caption = #1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1050#1088#1072#1089#1085#1099#1081
        OnClick = N12Click
      end
      object N13: TMenuItem
        Caption = #1057#1080#1085#1080#1081
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = #1047#1077#1083#1105#1085#1099#1081
        OnClick = N14Click
      end
      object N15: TMenuItem
        Caption = #1063#1105#1088#1085#1099#1081
        OnClick = N15Click
      end
    end
    object N4: TMenuItem
      Caption = #1059#1088#1072#1074#1085#1077#1085#1080#1103
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
      object N6: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N6Click
      end
    end
  end
end
