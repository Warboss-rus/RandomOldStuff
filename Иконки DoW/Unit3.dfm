object Form3: TForm3
  Left = 277
  Top = 238
  Caption = 'Form3'
  ClientHeight = 250
  ClientWidth = 467
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
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 351
    Height = 250
    Align = alClient
    AutoSize = True
    OnMouseDown = Image2MouseDown
    ExplicitLeft = -1
  end
  object Panel1: TPanel
    Left = 351
    Top = 0
    Width = 116
    Height = 250
    Align = alRight
    TabOrder = 0
    ExplicitLeft = 344
    ExplicitHeight = 277
    object Label1: TLabel
      Left = 5
      Top = 37
      Width = 6
      Height = 13
      Caption = 'x'
    end
    object Label2: TLabel
      Left = 5
      Top = 64
      Width = 6
      Height = 13
      Caption = 'y'
    end
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 102
      Height = 33
      AutoSize = False
      Caption = #1050#1086#1086#1088#1076#1080#1085#1072#1090#1099' '#1083#1077#1074#1086#1075#1086' '#1074#1077#1088#1093#1085#1077#1075#1086' '#1091#1075#1083#1072
      WordWrap = True
    end
    object Label4: TLabel
      Left = 32
      Top = 87
      Width = 35
      Height = 13
      Caption = #1056#1072#1079#1084#1077#1088
    end
    object Image1: TImage
      Left = 32
      Top = 131
      Width = 64
      Height = 64
    end
    object Edit1: TEdit
      Left = 26
      Top = 37
      Width = 73
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      Text = '0'
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 24
      Top = 64
      Width = 73
      Height = 21
      NumbersOnly = True
      TabOrder = 1
      Text = '0'
      OnChange = Edit1Change
    end
    object Edit3: TEdit
      Left = 24
      Top = 104
      Width = 73
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      Text = '0'
      OnChange = Edit1Change
    end
    object Button1: TButton
      Left = 16
      Top = 209
      Width = 89
      Height = 25
      Caption = #1043#1086#1090#1086#1074#1086
      TabOrder = 3
      OnClick = Button1Click
    end
    object UpDown1: TUpDown
      Left = 97
      Top = 37
      Width = 16
      Height = 21
      Associate = Edit1
      Max = 1024
      TabOrder = 4
    end
    object UpDown2: TUpDown
      Left = 97
      Top = 64
      Width = 16
      Height = 21
      Associate = Edit2
      Max = 1024
      TabOrder = 5
    end
    object UpDown3: TUpDown
      Left = 97
      Top = 104
      Width = 16
      Height = 21
      Associate = Edit3
      Min = 64
      Max = 1024
      TabOrder = 6
    end
  end
end
