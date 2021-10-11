object Form1: TForm1
  Left = 322
  Top = 127
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '3D Robot'
  ClientHeight = 717
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000010000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF
    FFFFFFFFFF700000000000800000FFFFFFFFFFFFF0000008FF80004F8000FFFF
    FFFFFFFF80000008FFF700000000FFFFFFFFFFF7000000000FFF80008700FFFF
    FFFFFFF8000000007FFFF00008F0FFFFFFFFFFF0000000008FFFFF0F8FFFFFFF
    FFFFF80000000088808FFF8FFFFFFFFFFFFF80000000000FFFFFFFFFFFFFFFFF
    FFFF00008000000FFFFFFFFFFFFFFFFFFFF0000088000778FF4FFFFFFFFFFFFF
    FFF8000000000FFF407FFFFFFFFFFFFFFF40000000000FFFFFFFF88FFFFFFFFF
    FF00000080008FFFFFFFF40FFFFFFFFFF70000000000FFF78FFFF80FFFFFFFFF
    F00000000000F70008FFF78FFFFFFFFF700000007007F000840FF00FFFFFFFFF
    000000007FFFFFF0000F8487FFFFFFF800000000FFFFFFFF847F000FFFFFFF70
    0000000008FFFFFFFFFF004FFFFFFF800000000000FFFFFFFFF808FFFFFFFF00
    000000000FFFFFFFFFF008FFFFFFF00000000000087FFFFFFF7007FFFFFFF800
    000000000008FFFFFF000FFFFFFFFF0000000000000008FFF8000FFFFFFFF000
    000000000000000880000FFFFFFFFF80000000000000000000008FFFFFFFFFFF
    000000000000000000000FFFFFFFFFFFF0000000000000000008FFFFFFFFFFFF
    FF8000000000000008FFFFFFFFFFFFFFFFFF7400000000000FFFFFFFFFFFFFFF
    FFFFFFF780004447FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 601
    Height = 593
    Align = alTop
    BevelOuter = bvLowered
    Color = clTeal
    TabOrder = 0
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 599
      Height = 591
      Align = alClient
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 599
    Width = 601
    Height = 118
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 100
      Height = 16
      Caption = #1057#1084#1077#1097#1077#1085#1080#1077' '#1087#1086' '#1061':'
    end
    object Label2: TLabel
      Left = 16
      Top = 52
      Width = 101
      Height = 16
      Caption = #1057#1084#1077#1097#1077#1085#1080#1077' '#1087#1086' Y:'
    end
    object Label3: TLabel
      Left = 16
      Top = 84
      Width = 100
      Height = 16
      Caption = #1057#1084#1077#1097#1077#1085#1080#1077' '#1087#1086' Z:'
    end
    object Bevel1: TBevel
      Left = 328
      Top = 14
      Width = 9
      Height = 88
      Shape = bsLeftLine
    end
    object Button2: TButton
      Left = 224
      Top = 47
      Width = 81
      Height = 25
      Caption = '+ Y'
      Enabled = False
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 128
      Top = 79
      Width = 81
      Height = 25
      Caption = '- Z'
      Enabled = False
      TabOrder = 6
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 224
      Top = 79
      Width = 81
      Height = 25
      Caption = '+ Z'
      Enabled = False
      TabOrder = 7
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 128
      Top = 47
      Width = 81
      Height = 25
      Caption = '- Y'
      Enabled = False
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 128
      Top = 14
      Width = 81
      Height = 25
      Caption = '- X'
      Enabled = False
      TabOrder = 2
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 224
      Top = 14
      Width = 81
      Height = 25
      Caption = '+ X'
      Enabled = False
      TabOrder = 3
      OnClick = Button7Click
    end
    object Button1: TButton
      Left = 352
      Top = 60
      Width = 233
      Height = 38
      Caption = #1048#1089#1093#1086#1076#1085#1086#1077' '#1087#1086#1083#1086#1078#1077#1085#1080#1077
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button8: TButton
      Left = 352
      Top = 20
      Width = 233
      Height = 25
      Caption = 'Random'
      Enabled = False
      TabOrder = 0
      OnClick = Button8Click
    end
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = Timer2Timer
    Left = 392
    Top = 608
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer3Timer
    Left = 360
    Top = 552
  end
  object Timer4: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer4Timer
    Left = 392
    Top = 552
  end
  object Timer5: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer5Timer
    Left = 424
    Top = 552
  end
  object Timer6: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer6Timer
    Left = 456
    Top = 552
  end
  object Timer7: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer7Timer
    Left = 488
    Top = 552
  end
  object Timer8: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer8Timer
    Left = 520
    Top = 552
  end
  object Timer9: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer9Timer
    Left = 360
    Top = 608
  end
end
