object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Kullan'#305'c'#305' Giri'#351'i'
  ClientHeight = 261
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 24
    Top = 24
    Width = 468
    Height = 209
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 52
      Width = 77
      Height = 16
      Caption = 'Kullan'#305'c'#305' Ad'#305' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 64
      Top = 100
      Width = 36
      Height = 16
      Caption = #350'ifre :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 192
      Top = 47
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 192
      Top = 95
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 192
      Top = 144
      Width = 121
      Height = 25
      Caption = 'Giri'#351' Yap'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 328
      Top = 101
      Width = 97
      Height = 17
      Caption = #350'ifreyi G'#246'ster'
      TabOrder = 3
      OnClick = CheckBox1Click
    end
  end
end
