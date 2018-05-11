object Form1: TForm1
  Left = 299
  Top = 162
  Width = 444
  Height = 440
  AutoScroll = True
  Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1097#1080#1082' '#1082#1072#1088#1090#1080#1085#1086#1082' 0.1'
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
  object Image1: TImage
    Left = 0
    Top = 30
    Width = 428
    Height = 372
    Stretch = True
  end
  object Mas: TComboBox
    Left = 79
    Top = 3
    Width = 81
    Height = 21
    ItemIndex = 9
    TabOrder = 0
    Text = '100%'
    OnSelect = MasSelect
    Items.Strings = (
      '10%'
      '20%'
      '30%'
      '40%'
      '50%'
      '60%'
      '70%'
      '80%'
      '90%'
      '100%'
      '200%'
      '500%'
      '1000%')
  end
  object Browse: TButton
    Left = 0
    Top = 3
    Width = 73
    Height = 21
    Caption = #1054#1090#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = BrowseClick
  end
  object BNext: TButton
    Left = 166
    Top = 2
    Width = 49
    Height = 22
    Caption = #1057#1083#1077#1076
    Enabled = False
    TabOrder = 2
    OnClick = BNextClick
  end
  object Brows: TOpenPictureDialog
    Options = [ofHideReadOnly, ofForceShowHidden]
    Left = 392
  end
end
