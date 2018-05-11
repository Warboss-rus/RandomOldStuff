object Form1: TForm1
  Left = 183
  Top = 115
  Caption = #1052#1077#1076#1080#1072' '#1087#1083#1077#1077#1088' 0.1'
  ClientHeight = 202
  ClientWidth = 304
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object MediaPlayer1: TMediaPlayer
    Left = 0
    Top = 0
    Width = 109
    Height = 33
    Cursor = crHandPoint
    ColoredButtons = [btPlay]
    VisibleButtons = [btPlay, btPause, btStop]
    Display = Owner
    TabOrder = 0
  end
  object BOpen: TButton
    Left = 94
    Top = 0
    Width = 89
    Height = 33
    Align = alCustom
    Caption = #1054#1090#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = BOpenClick
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      #1052#1077#1076#1080#1072#1092#1072#1081#1083#1099'|*.avi;*.mpg;*.mp4;*.wav;*.mp3|'#1042#1080#1076#1077#1086#1092#1072#1081#1083#1099'|*.avi;*.mpg;' +
      '*.mp4|'#1047#1074#1091#1082#1086#1074#1099#1077' '#1092#1072#1081#1083#1099'|*.wav;*.mp3|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 152
  end
end
