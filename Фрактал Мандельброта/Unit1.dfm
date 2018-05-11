object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1060#1088#1072#1082#1090#1072#1083' '#1052#1072#1085#1076#1077#1083#1100#1073#1088#1086#1090#1072
  ClientHeight = 480
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    Align = alClient
    Constraints.MinHeight = 240
    Constraints.MinWidth = 320
    OnMouseDown = PaintBox1MouseDown
    OnMouseUp = PaintBox1MouseUp
    ExplicitHeight = 291
  end
  object Panel1: TPanel
    Left = 640
    Top = 0
    Width = 166
    Height = 480
    Align = alRight
    TabOrder = 0
    DesignSize = (
      166
      480)
    object Label1: TLabel
      Left = 6
      Top = 46
      Width = 56
      Height = 16
      Caption = #1048#1090#1077#1088#1072#1094#1080#1081
    end
    object Label2: TLabel
      Left = 6
      Top = 76
      Width = 53
      Height = 16
      Caption = #1052#1072#1089#1096#1090#1072#1073
    end
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 49
      Height = 16
      Caption = #1057#1090#1077#1087#1077#1085#1100
    end
    object Label4: TLabel
      Left = 48
      Top = 144
      Width = 62
      Height = 16
      Caption = #1057#1084#1077#1097#1077#1085#1080#1077
    end
    object Label5: TLabel
      Left = 10
      Top = 168
      Width = 6
      Height = 16
      Caption = 'x'
    end
    object Label6: TLabel
      Left = 96
      Top = 168
      Width = 6
      Height = 16
      Caption = 'y'
    end
    object Button1: TButton
      Left = 6
      Top = 424
      Width = 153
      Height = 49
      Anchors = [akRight, akBottom]
      Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object CBIter: TComboBox
      Left = 80
      Top = 43
      Width = 81
      Height = 24
      ItemIndex = 4
      TabOrder = 1
      Text = '32'
      Items.Strings = (
        '2'
        '4'
        '8'
        '16'
        '32'
        '64'
        '128'
        '256')
    end
    object EZoom: TEdit
      Left = 80
      Top = 73
      Width = 81
      Height = 24
      TabOrder = 2
      Text = '200'
      OnKeyPress = EZoomKeyPress
    end
    object TBZoom: TTrackBar
      Left = 6
      Top = 103
      Width = 150
      Height = 45
      Max = 1000
      Min = 1
      Position = 200
      TabOrder = 3
      OnChange = TBZoomChange
    end
    object CBDegree: TComboBox
      Left = 80
      Top = 13
      Width = 81
      Height = 24
      ItemIndex = 0
      TabOrder = 4
      Text = '2'
      Items.Strings = (
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
    end
    object EShiftX: TEdit
      Left = 22
      Top = 166
      Width = 50
      Height = 24
      TabOrder = 5
      Text = '0'
    end
    object EShiftY: TEdit
      Left = 108
      Top = 166
      Width = 50
      Height = 24
      TabOrder = 6
      Text = '0'
    end
  end
end
