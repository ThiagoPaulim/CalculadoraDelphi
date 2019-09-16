object Calculadora: TCalculadora
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 369
  ClientWidth = 302
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Sbt1: TSpeedButton
    Left = 8
    Top = 67
    Width = 65
    Height = 46
    Caption = '1'
    OnClick = Sbt1Click
  end
  object Sbt2: TSpeedButton
    Left = 94
    Top = 67
    Width = 67
    Height = 46
    Caption = '2'
    OnClick = Sbt1Click
  end
  object Sbt3: TSpeedButton
    Left = 179
    Top = 67
    Width = 70
    Height = 46
    Caption = '3'
    OnClick = Sbt1Click
  end
  object Sbtsomar: TSpeedButton
    Left = 255
    Top = 187
    Width = 37
    Height = 46
    Caption = '+'
    OnClick = Sbt1Click
  end
  object Sbtigual: TSpeedButton
    Left = 8
    Top = 312
    Width = 284
    Height = 49
    Caption = '='
    OnClick = Sbt1Click
  end
  object Sbt4: TSpeedButton
    Left = 8
    Top = 128
    Width = 65
    Height = 42
    Caption = '4'
    OnClick = Sbt1Click
  end
  object Sbt5: TSpeedButton
    Left = 94
    Top = 128
    Width = 67
    Height = 42
    Caption = '5'
    OnClick = Sbt1Click
  end
  object Sbt6: TSpeedButton
    Left = 179
    Top = 128
    Width = 70
    Height = 42
    Caption = '6'
    OnClick = Sbt1Click
  end
  object Sbtsubtrair: TSpeedButton
    Left = 255
    Top = 128
    Width = 37
    Height = 42
    Caption = '-'
    OnClick = Sbt1Click
  end
  object Sbt7: TSpeedButton
    Left = 8
    Top = 187
    Width = 65
    Height = 46
    Caption = '7'
    OnClick = Sbt1Click
  end
  object Sbt8: TSpeedButton
    Left = 94
    Top = 187
    Width = 67
    Height = 46
    Caption = '8'
    OnClick = Sbt1Click
  end
  object Sbt9: TSpeedButton
    Left = 179
    Top = 187
    Width = 70
    Height = 46
    Caption = '9'
    OnClick = Sbt1Click
  end
  object Sbtmultiplicar: TSpeedButton
    Left = 255
    Top = 67
    Width = 37
    Height = 46
    Caption = '*'
    OnClick = Sbt1Click
  end
  object Sbtce: TSpeedButton
    Left = 179
    Top = 248
    Width = 70
    Height = 50
    Caption = 'CE'
    OnClick = Sbt1Click
  end
  object Sbt0: TSpeedButton
    Left = 94
    Top = 248
    Width = 67
    Height = 49
    Caption = '0'
    OnClick = Sbt1Click
  end
  object Sbtvirgula: TSpeedButton
    Left = 8
    Top = 248
    Width = 65
    Height = 49
    Caption = ','
    OnClick = Sbt1Click
  end
  object Sbtdividir: TSpeedButton
    Left = 255
    Top = 248
    Width = 37
    Height = 49
    Caption = '/'
    OnClick = Sbt1Click
  end
  object edtvalor: TEdit
    Left = 8
    Top = 8
    Width = 281
    Height = 41
    TabStop = False
    TabOrder = 0
    Text = '0'
  end
end
