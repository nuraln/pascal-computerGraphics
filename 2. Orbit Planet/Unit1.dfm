object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 497
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 400
    Width = 75
    Height = 25
    Caption = '&Mulai'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 0
    Width = 725
    Height = 385
    BevelInner = bvLowered
    BorderStyle = bsSingle
    Color = clMenuBar
    ParentBackground = False
    TabOrder = 1
    object Shape1: TShape
      Left = 306
      Top = 143
      Width = 121
      Height = 73
      Brush.Color = clYellow
      Shape = stEllipse
    end
    object orbit1: TShape
      Left = 202
      Top = 143
      Width = 345
      Height = 65
      Brush.Style = bsClear
      Shape = stEllipse
    end
    object orbit2: TShape
      Left = 151
      Top = 118
      Width = 450
      Height = 106
      Brush.Style = bsClear
      Shape = stEllipse
    end
    object orbit3: TShape
      Left = 22
      Top = 103
      Width = 673
      Height = 141
      Brush.Style = bsClear
      Shape = stEllipse
    end
    object putih: TShape
      Left = 202
      Top = 160
      Width = 17
      Height = 17
      Shape = stEllipse
      Visible = False
    end
    object biru: TShape
      Left = 14
      Top = 160
      Width = 17
      Height = 17
      Brush.Color = clBlue
      Shape = stEllipse
      Visible = False
    end
    object merah: TShape
      Left = 143
      Top = 160
      Width = 17
      Height = 17
      Brush.Color = clRed
      Shape = stEllipse
      Visible = False
    end
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 480
    Top = 32
  end
end
