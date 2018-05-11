object Form2: TForm2
  Left = 405
  Top = 314
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1092#1072#1081#1083
  ClientHeight = 201
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 403
    Height = 160
    Align = alClient
    DefaultColWidth = 99
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 160
    Width = 403
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button2: TButton
      Left = 280
      Top = 8
      Width = 107
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 161
      Top = 8
      Width = 113
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 1
    end
  end
end
