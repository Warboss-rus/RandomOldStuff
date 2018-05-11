object Form1: TForm1
  Left = 331
  Top = 270
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088' 0.3'
  ClientHeight = 166
  ClientWidth = 341
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
  object Primer: TEdit
    Left = 0
    Top = 8
    Width = 337
    Height = 21
    TabOrder = 0
    OnKeyPress = PrimerKeyPress
  end
  object Button1: TButton
    Left = 8
    Top = 41
    Width = 33
    Height = 25
    Caption = '1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 48
    Top = 41
    Width = 33
    Height = 25
    Caption = '2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 87
    Top = 41
    Width = 33
    Height = 25
    Caption = '3'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 72
    Width = 33
    Height = 25
    Caption = '4'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 48
    Top = 72
    Width = 33
    Height = 25
    Caption = '5'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 87
    Top = 72
    Width = 33
    Height = 25
    Caption = '6'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 8
    Top = 104
    Width = 33
    Height = 25
    Caption = '7'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 48
    Top = 103
    Width = 33
    Height = 25
    Caption = '8'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 88
    Top = 104
    Width = 33
    Height = 25
    Caption = '9'
    TabOrder = 9
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 8
    Top = 135
    Width = 33
    Height = 25
    Caption = '.'
    TabOrder = 10
    OnClick = Button10Click
  end
  object Button0: TButton
    Left = 48
    Top = 136
    Width = 33
    Height = 25
    Caption = '0'
    TabOrder = 11
    OnClick = Button0Click
  end
  object Plus: TButton
    Left = 144
    Top = 40
    Width = 33
    Height = 25
    Caption = '+'
    TabOrder = 12
    OnClick = PlusClick
  end
  object Minus: TButton
    Left = 144
    Top = 72
    Width = 33
    Height = 25
    Caption = '-'
    TabOrder = 13
    OnClick = MinusClick
  end
  object Umn: TButton
    Left = 144
    Top = 104
    Width = 33
    Height = 25
    Caption = '*'
    TabOrder = 14
    OnClick = UmnClick
  end
  object Del: TButton
    Left = 144
    Top = 136
    Width = 33
    Height = 25
    Caption = '/'
    TabOrder = 15
    OnClick = DelClick
  end
  object Calculate: TButton
    Left = 87
    Top = 135
    Width = 33
    Height = 25
    Caption = '='
    TabOrder = 16
    OnClick = CalculateClick
  end
  object C: TButton
    Left = 300
    Top = 40
    Width = 33
    Height = 25
    Caption = 'C'
    TabOrder = 17
    OnClick = CClick
  end
  object BackSpace: TButton
    Left = 300
    Top = 71
    Width = 33
    Height = 25
    Caption = 'BS'
    TabOrder = 18
    OnClick = BackSpaceClick
  end
  object sqrt: TButton
    Left = 184
    Top = 40
    Width = 33
    Height = 25
    Caption = #170#8730'b'
    TabOrder = 19
    OnClick = sqrtClick
  end
  object step: TButton
    Left = 184
    Top = 72
    Width = 33
    Height = 25
    Caption = '^'
    TabOrder = 20
    OnClick = stepClick
  end
  object Continue: TButton
    Left = 300
    Top = 104
    Width = 33
    Height = 25
    Caption = 'Cont.'
    TabOrder = 21
    OnClick = ContinueClick
  end
  object Mem1: TButton
    Left = 262
    Top = 40
    Width = 32
    Height = 25
    Caption = 'M+'
    TabOrder = 22
    OnClick = Mem1Click
  end
  object Mem2: TButton
    Left = 262
    Top = 71
    Width = 32
    Height = 25
    Caption = 'Mp'
    TabOrder = 23
    OnClick = Mem2Click
  end
  object Help: TButton
    Left = 247
    Top = 135
    Width = 51
    Height = 25
    Caption = #1055#1086#1084#1086#1097#1100
    TabOrder = 24
    OnClick = HelpClick
  end
  object Uravn: TButton
    Left = 183
    Top = 135
    Width = 58
    Height = 25
    Caption = #1059#1088#1072#1074#1085#1077#1085#1080#1103
    TabOrder = 25
    OnClick = UravnClick
  end
  object About: TButton
    Left = 304
    Top = 136
    Width = 33
    Height = 25
    Caption = #1054'...'
    TabOrder = 26
    OnClick = AboutClick
  end
  object CopyPaste: TButton
    Left = 264
    Top = 104
    Width = 33
    Height = 25
    Caption = 'C/P'
    TabOrder = 27
    OnClick = CopyPasteClick
  end
  object Sin1: TButton
    Left = 184
    Top = 104
    Width = 33
    Height = 25
    Caption = 'Sin'
    TabOrder = 28
    OnClick = Sin1Click
  end
  object Cos1: TButton
    Left = 224
    Top = 40
    Width = 33
    Height = 25
    Caption = 'Cos'
    TabOrder = 29
    OnClick = Cos1Click
  end
  object Ln1: TButton
    Left = 223
    Top = 73
    Width = 33
    Height = 25
    Caption = 'Ln'
    TabOrder = 30
    OnClick = Ln1Click
  end
  object Exp1: TButton
    Left = 224
    Top = 104
    Width = 33
    Height = 25
    Caption = 'Exp'
    TabOrder = 31
    OnClick = Exp1Click
  end
end
