object Form1: TForm1
  Left = 352
  Top = 270
  Caption = #1041#1083#1086#1082#1085#1086#1090' 0.3'
  ClientHeight = 202
  ClientWidth = 331
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
  object RText: TRichEdit
    Left = 0
    Top = 0
    Width = 331
    Height = 202
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    WantTabs = True
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N5: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N8Click
      end
    end
    object N2: TMenuItem
      Caption = #1055#1088#1072#1074#1082#1072
      object N9: TMenuItem
        Caption = #1042#1099#1088#1077#1079#1072#1090#1100
        OnClick = N9Click
      end
      object N10: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
        OnClick = N10Click
      end
      object N11: TMenuItem
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        OnClick = N12Click
      end
      object N23: TMenuItem
        Caption = #1053#1072#1081#1090#1080
        OnClick = N23Click
      end
      object N24: TMenuItem
        Caption = #1047#1072#1084#1077#1085#1080#1090#1100
        OnClick = N24Click
      end
    end
    object N3: TMenuItem
      Caption = #1060#1086#1088#1084#1072#1090
      object N13: TMenuItem
        Caption = #1064#1088#1080#1092#1090
        OnClick = N13Click
      end
      object N16: TMenuItem
        Caption = #1042#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1077
        RadioItem = True
        object N18: TMenuItem
          Caption = #1055#1086' '#1083#1077#1074#1086#1084#1091' '#1082#1088#1072#1102
          OnClick = N18Click
        end
        object N19: TMenuItem
          Caption = #1055#1086' '#1094#1077#1085#1090#1088#1091
          OnClick = N19Click
        end
        object N20: TMenuItem
          Caption = #1055#1086' '#1087#1088#1072#1074#1086#1084#1091' '#1082#1088#1072#1102
          OnClick = N20Click
        end
      end
      object N17: TMenuItem
        Caption = #1057#1087#1080#1089#1086#1082
        RadioItem = True
        object N21: TMenuItem
          Caption = #1053#1077#1090
          OnClick = N21Click
        end
        object N22: TMenuItem
          Caption = #1052#1072#1088#1082#1077#1088#1099
          OnClick = N22Click
        end
      end
    end
    object N4: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
      object N15: TMenuItem
        Caption = #1055#1086#1084#1086#1097#1100
        Enabled = False
      end
      object N14: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N14Click
      end
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 64
    Top = 8
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083'|*.txt|Rich Text|*.rtf|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 120
    Top = 8
  end
  object SaveTextFileDialog1: TSaveTextFileDialog
    Filter = #1044#1086#1082#1091#1084#1077#1085#1090' Rich Text|*.rtf|'#1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090'|*.txt'
    Left = 176
    Top = 8
  end
  object FindDialog1: TFindDialog
    OnFind = FindDialog1Find
    Left = 232
    Top = 8
  end
  object ReplaceDialog1: TReplaceDialog
    OnFind = ReplaceDialog1Find
    OnReplace = ReplaceDialog1Replace
    Left = 280
    Top = 8
  end
end
