object Form3: TForm3
  Left = 329
  Top = 154
  BorderStyle = bsDialog
  Caption = 'GiF Manual Module Editor'
  ClientHeight = 471
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 76
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1086#1076#1072
  end
  object Label2: TLabel
    Left = 8
    Top = 36
    Width = 49
    Height = 13
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
  end
  object Label3: TLabel
    Left = 16
    Top = 64
    Width = 59
    Height = 13
    Caption = #1055#1072#1087#1082#1080' '#1084#1086#1076#1072
  end
  object Label4: TLabel
    Left = 232
    Top = 64
    Width = 67
    Height = 13
    Caption = #1040#1088#1093#1080#1074#1099' '#1084#1086#1076#1072
  end
  object Label5: TLabel
    Left = 16
    Top = 264
    Width = 109
    Height = 13
    Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1085#1099#1077' '#1084#1086#1076#1099
  end
  object EName: TEdit
    Left = 90
    Top = 8
    Width = 331
    Height = 21
    TabOrder = 0
  end
  object EDescr: TEdit
    Left = 90
    Top = 35
    Width = 331
    Height = 21
    TabOrder = 1
  end
  object ListBoxFold: TListBox
    Left = 8
    Top = 88
    Width = 202
    Height = 137
    ItemHeight = 13
    TabOrder = 2
  end
  object ListBoxSGA: TListBox
    Left = 216
    Top = 88
    Width = 209
    Height = 137
    ItemHeight = 13
    TabOrder = 3
  end
  object BAddFold: TButton
    Left = 8
    Top = 231
    Width = 89
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 4
    OnClick = BAddFoldClick
  end
  object BdeleteFold: TButton
    Left = 120
    Top = 231
    Width = 90
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 5
    OnClick = BdeleteFoldClick
  end
  object BAddSGA: TButton
    Left = 219
    Top = 231
    Width = 80
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 6
    OnClick = BAddSGAClick
  end
  object BdeleteSGA: TButton
    Left = 336
    Top = 231
    Width = 85
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 7
    OnClick = BdeleteSGAClick
  end
  object ListBoxMod: TListBox
    Left = 8
    Top = 280
    Width = 289
    Height = 177
    ItemHeight = 13
    TabOrder = 8
  end
  object BAddMod: TButton
    Left = 303
    Top = 280
    Width = 118
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 9
    OnClick = BAddModClick
  end
  object BdeleteMod: TButton
    Left = 304
    Top = 311
    Width = 117
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 10
    OnClick = BdeleteModClick
  end
  object BExit: TButton
    Left = 303
    Top = 438
    Width = 118
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 11
    OnClick = BExitClick
  end
  object BSaveGif: TButton
    Left = 303
    Top = 407
    Width = 118
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 12
    OnClick = BSaveGifClick
  end
  object OpenDialogSGA: TOpenDialog
    Filter = #1040#1088#1093#1080#1074#1099' SGA|*.sga'
    InitialDir = '0'
    Options = [ofReadOnly, ofHideReadOnly, ofNoChangeDir, ofFileMustExist, ofNoNetworkButton, ofEnableSizing, ofDontAddToRecent, ofForceShowHidden]
    Left = 320
    Top = 344
  end
  object OpenDialogMod: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' .module|*.module'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 376
    Top = 344
  end
end
