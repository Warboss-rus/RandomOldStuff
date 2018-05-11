object Form4: TForm4
  Left = 404
  Top = 300
  BorderStyle = bsDialog
  Caption = 'ax^2+bx+c=0'
  ClientHeight = 141
  ClientWidth = 209
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
  object Label1: TLabel
    Left = 8
    Top = 96
    Width = 193
    Height = 41
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 185
    Height = 13
    Caption = 'ax^2+bx+c=0           '#1042#1074#1077#1076#1080#1090#1077' a,b '#1080' c'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ax: TEdit
    Left = 9
    Top = 30
    Width = 57
    Height = 21
    TabOrder = 0
    Text = '1'
  end
  object bx: TEdit
    Left = 72
    Top = 30
    Width = 57
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object cx: TEdit
    Left = 136
    Top = 30
    Width = 65
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object Calculate: TButton
    Left = 8
    Top = 57
    Width = 193
    Height = 33
    Caption = #1055#1086#1089#1095#1080#1090#1072#1090#1100' '#1082#1086#1088#1085#1080
    TabOrder = 3
    OnClick = CalculateClick
  end
end
