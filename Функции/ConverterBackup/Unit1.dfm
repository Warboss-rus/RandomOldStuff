object Form1: TForm1
  Left = 373
  Top = 206
  Caption = #1043#1088#1072#1092#1080#1082#1080' '#1092#1091#1085#1082#1094#1080#1081
  ClientHeight = 361
  ClientWidth = 356
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
  object Graph: TPaintBox
    Left = 0
    Top = 113
    Width = 356
    Height = 248
    Align = alClient
    DragCursor = crSizeAll
    ParentShowHint = False
    ShowHint = True
    OnMouseDown = GraphMouseDown
    OnMouseMove = GraphMouseMove
    OnMouseUp = GraphMouseUp
    OnPaint = BCalculateClick
    ExplicitTop = 111
    ExplicitWidth = 342
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 356
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 35
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label2: TLabel
      Left = 88
      Top = 35
      Width = 6
      Height = 13
      Caption = 'b'
    end
    object Label3: TLabel
      Left = 6
      Top = 58
      Width = 5
      Height = 13
      Caption = 'c'
    end
    object Label4: TLabel
      Left = 88
      Top = 56
      Width = 6
      Height = 13
      Caption = 'd'
    end
    object Label8: TLabel
      Left = 205
      Top = 8
      Width = 49
      Height = 13
      Caption = #1052#1072#1089#1096#1090#1072#1073':'
    end
    object Label9: TLabel
      Left = 205
      Top = 47
      Width = 51
      Height = 13
      Caption = #1058#1086#1095#1085#1086#1089#1090#1100':'
    end
    object Label11: TLabel
      Left = 159
      Top = 8
      Width = 12
      Height = 13
      Caption = '1x'
    end
    object Label12: TLabel
      Left = 327
      Top = 8
      Width = 24
      Height = 13
      Caption = '100x'
    end
    object Label13: TLabel
      Left = 156
      Top = 47
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label14: TLabel
      Left = 323
      Top = 47
      Width = 28
      Height = 13
      Caption = '0,001'
    end
    object Label15: TLabel
      Left = 262
      Top = 8
      Width = 6
      Height = 13
      Caption = 'x'
    end
    object LM: TLabel
      Left = 270
      Top = 8
      Width = 6
      Height = 13
      Caption = '1'
    end
    object LZ: TLabel
      Left = 262
      Top = 47
      Width = 28
      Height = 13
      Caption = '0,100'
    end
    object Label10: TLabel
      Left = 159
      Top = 90
      Width = 53
      Height = 13
      Caption = #1064#1072#1075' '#1089#1077#1090#1082#1080
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 8
      Width = 145
      Height = 21
      TabOrder = 0
      Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1090#1080#1087' '#1091#1088#1072#1074#1085#1077#1085#1080#1103
      OnSelect = ComboBox1Select
      Items.Strings = (
        'ax^2+bx+c'
        'bsin(ax+c)+d'
        'bcos(ax+c)+d'
        'barctg(ax+c)+d')
    end
    object EA: TEdit
      Left = 17
      Top = 31
      Width = 50
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = '0'
      OnKeyPress = EAKeyPress
    end
    object EB: TEdit
      Left = 100
      Top = 31
      Width = 50
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = '0'
      OnKeyPress = EAKeyPress
    end
    object EC: TEdit
      Left = 16
      Top = 56
      Width = 50
      Height = 21
      Enabled = False
      TabOrder = 3
      Text = '0'
      OnKeyPress = EAKeyPress
    end
    object ED: TEdit
      Left = 100
      Top = 56
      Width = 50
      Height = 21
      Enabled = False
      TabOrder = 4
      Text = '0'
      OnKeyPress = EAKeyPress
    end
    object BCalculate: TButton
      Left = 8
      Top = 82
      Width = 145
      Height = 25
      Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1075#1088#1072#1092#1080#1082
      TabOrder = 5
      OnClick = BCalculateClick
    end
    object TBM: TTrackBar
      Left = 156
      Top = 24
      Width = 195
      Height = 17
      Max = 100
      Min = 1
      Position = 1
      TabOrder = 6
      OnChange = TBMChange
    end
    object TBZ: TTrackBar
      Left = 156
      Top = 59
      Width = 195
      Height = 21
      Max = 1000
      Min = 1
      Position = 10
      TabOrder = 7
      OnChange = TBZChange
    end
    object EGrid: TEdit
      Left = 218
      Top = 86
      Width = 36
      Height = 21
      NumbersOnly = True
      TabOrder = 8
      Text = '0'
      OnChange = EGridChange
    end
    object UpDown1: TUpDown
      Left = 250
      Top = 86
      Width = 16
      Height = 21
      Associate = EGrid
      Increment = 5
      TabOrder = 9
    end
    object CBNum: TCheckBox
      Left = 272
      Top = 82
      Width = 100
      Height = 25
      Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1099
      TabOrder = 10
      WordWrap = True
    end
  end
end
