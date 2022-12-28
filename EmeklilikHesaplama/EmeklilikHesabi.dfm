object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'AGENT - Hizmet Yetkilisi'
  ClientHeight = 299
  ClientWidth = 515
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
    Top = 18
    Width = 465
    Height = 273
    Caption = 'AGENT LOGIN'
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 80
      Width = 44
      Height = 16
      Caption = 'Dahili : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 80
      Top = 124
      Width = 40
      Height = 16
      Caption = #350'ifre : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 160
      Top = 75
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 160
      Top = 119
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 160
      Top = 168
      Width = 121
      Height = 25
      Caption = 'Giri'#351
      TabOrder = 2
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 287
      Top = 121
      Width = 97
      Height = 17
      Caption = #350'ifreyi G'#246'ster'
      TabOrder = 3
      OnClick = CheckBox1Click
    end
  end
end
