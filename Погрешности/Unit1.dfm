object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1055#1086#1076#1089#1095#1077#1090' '#1087#1086#1075#1088#1077#1096#1085#1086#1089#1090#1080
  ClientHeight = 195
  ClientWidth = 525
  Color = clBtnFace
  Constraints.MinHeight = 240
  Constraints.MinWidth = 543
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 120
  TextHeight = 16
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 525
    Height = 154
    Align = alClient
    ColCount = 8
    FixedCols = 0
    RowCount = 6
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing, goAlwaysShowEditor]
    TabOrder = 0
    OnKeyPress = StringGrid1KeyPress
    RowHeights = (
      24
      24
      24
      24
      24
      24)
  end
  object Panel1: TPanel
    Left = 0
    Top = 154
    Width = 525
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      525
      41)
    object BCalculate: TButton
      Left = 432
      Top = 6
      Width = 83
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1055#1086#1076#1089#1095#1080#1090#1072#1090#1100
      TabOrder = 0
      OnClick = BCalculateClick
    end
    object BClear: TButton
      Left = 351
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 1
      OnClick = BClearClick
    end
    object CBCount: TComboBox
      Left = 8
      Top = 8
      Width = 145
      Height = 24
      Anchors = [akLeft, akBottom]
      ItemIndex = 2
      TabOrder = 2
      Text = '5'
      OnChange = CBCountChange
      Items.Strings = (
        '2'
        '3'
        '5'
        '7'
        '9'
        '10')
    end
    object CBdigital: TCheckBox
      Left = 159
      Top = 4
      Width = 97
      Height = 35
      Caption = #1062#1080#1092#1088#1086#1074#1086#1081' '#1087#1088#1080#1073#1086#1088
      TabOrder = 3
      WordWrap = True
    end
  end
end
