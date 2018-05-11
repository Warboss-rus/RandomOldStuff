object Form1: TForm1
  Left = 277
  Top = 216
  Caption = #1041#1083#1086#1082#1085#1086#1090'  0.2'
  ClientHeight = 286
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 493
    Height = 286
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    object N1: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1060#1072#1081#1083
      ShortCut = 16454
      object N2: TMenuItem
        AutoHotkeys = maAutomatic
        Caption = #1054#1090#1082#1088#1099#1090#1100
        ShortCut = 16463
        OnClick = N2Click
      end
      object N6: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        ShortCut = 16467
        OnClick = N6Click
      end
      object N3: TMenuItem
        AutoHotkeys = maAutomatic
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082
        OnClick = N3Click
      end
      object N4: TMenuItem
        AutoHotkeys = maAutomatic
        Caption = #1042#1099#1093#1086#1076
        OnClick = N4Click
      end
    end
    object N5: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1055#1088#1072#1074#1082#1072
      ShortCut = 16453
      object N7: TMenuItem
        AutoHotkeys = maAutomatic
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074#1089#1105
        OnClick = N7Click
      end
      object N8: TMenuItem
        AutoHotkeys = maAutomatic
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100
        OnClick = N8Click
      end
      object N9: TMenuItem
        AutoHotkeys = maAutomatic
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        OnClick = N9Click
      end
    end
    object N10: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1055#1086#1084#1086#1097#1100
      ShortCut = 16456
      object N11: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        ShortCut = 16449
        OnClick = N12Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1083'|*.txt'
    Left = 48
  end
  object SaveDialog1: TSaveDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083'|*.txt'
    Left = 88
  end
end
