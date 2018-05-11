object Form1: TForm1
  Left = 341
  Top = 260
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'GiF Module Editor'
  ClientHeight = 253
  ClientWidth = 346
  Color = clBtnFace
  Constraints.MaxWidth = 362
  Constraints.MinHeight = 276
  Constraints.MinWidth = 347
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 328
    Height = 124
    TabStop = False
    Align = alClient
    Ctl3D = True
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    ScrollBars = ssNone
    TabOrder = 0
    OnKeyDown = StringGrid1KeyDown
    OnMouseWheelDown = StringGrid1MouseWheelDown
    OnMouseWheelUp = StringGrid1MouseWheelUp
    ColWidths = (
      64
      64
      64
      64
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 124
    Width = 346
    Height = 129
    Align = alBottom
    TabOrder = 1
    object BAdd2: TButton
      Left = 175
      Top = 100
      Width = 147
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' Gifmods'
      TabOrder = 3
      Visible = False
      OnClick = BAdd2Click
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 129
      Height = 97
      Caption = #1060#1072#1081#1083
      TabOrder = 0
      object BSave: TButton
        Left = 3
        Top = 15
        Width = 123
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 0
        OnClick = BSaveClick
      end
      object BReset: TButton
        Left = 3
        Top = 42
        Width = 123
        Height = 25
        Hint = #1055#1086#1076#1089#1090#1072#1074#1083#1103#1077#1090' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1089#1090#1072#1085#1076#1072#1088#1090#1085#1086#1075#1086' Galaxyinfire'
        Caption = #1057#1073#1088#1086#1089
        TabOrder = 1
        OnClick = BResetClick
      end
      object BExit: TButton
        Left = 3
        Top = 69
        Width = 123
        Height = 25
        Caption = #1042#1099#1093#1086#1076
        TabOrder = 2
        OnClick = BExitClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 137
      Top = 0
      Width = 185
      Height = 97
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      TabOrder = 1
      object BAuto: TButton
        Left = 3
        Top = 14
        Width = 179
        Height = 25
        Caption = #1040#1074#1090#1086'-'#1089#1082#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077
        TabOrder = 0
        OnClick = BAutoClick
      end
      object BCheck: TButton
        Left = 3
        Top = 42
        Width = 179
        Height = 25
        Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1085#1072' '#1086#1096#1080#1073#1082#1080
        TabOrder = 1
        OnClick = BCheckClick
      end
      object BEdit: TButton
        Left = 3
        Top = 69
        Width = 179
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1074#1088#1091#1095#1085#1091#1102
        TabOrder = 2
        OnClick = BEditClick
      end
    end
    object CBInfo: TCheckBox
      Left = 3
      Top = 96
      Width = 166
      Height = 33
      Caption = #1080#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1099#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
      Checked = True
      State = cbChecked
      TabOrder = 2
      WordWrap = True
    end
  end
  object ScrollBar1: TScrollBar
    Left = 328
    Top = 0
    Width = 18
    Height = 124
    Align = alRight
    Kind = sbVertical
    PageSize = 0
    TabOrder = 2
    OnChange = ScrollBar1Change
  end
  object PopupMenu1: TPopupMenu
    Left = 312
    Top = 224
    object N1: TMenuItem
      Caption = #1057#1082#1072#1095#1072#1090#1100' '#1084#1086#1076
      OnClick = N1Click
    end
    object SGA1: TMenuItem
      Caption = #1057#1082#1072#1095#1072#1090#1100' SGA'
      OnClick = SGA1Click
    end
  end
end
