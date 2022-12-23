object Form1: TForm1
  Left = 0
  Top = 0
  Align = alTop
  Caption = 'Form1'
  ClientHeight = 681
  ClientWidth = 1371
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
  object Label1: TLabel
    Left = 640
    Top = 151
    Width = 249
    Height = 162
    Caption = 'Number of Click'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object lblNumOfClicks: TLabel
    Left = 705
    Top = 400
    Width = 35
    Height = 77
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 24
    Top = 24
    Width = 1354
    Height = 121
    Caption = 'Number Shuffle'
    Color = 4428521
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 24
    Top = 151
    Width = 595
    Height = 465
    Color = 4428521
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object btnNum1: TButton
      Left = 10
      Top = 9
      Width = 140
      Height = 140
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnNum1Click
    end
    object btnNum2: TButton
      Left = 156
      Top = 9
      Width = 140
      Height = 140
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnNum2Click
    end
    object btnNum3: TButton
      Left = 302
      Top = 9
      Width = 140
      Height = 140
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnNum3Click
    end
    object btnNum4: TButton
      Left = 448
      Top = 9
      Width = 140
      Height = 140
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnNum4Click
    end
    object btnNum5: TButton
      Left = 8
      Top = 155
      Width = 140
      Height = 140
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnNum5Click
    end
    object btnNum6: TButton
      Left = 156
      Top = 155
      Width = 140
      Height = 140
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnNum6Click
    end
    object btnNum7: TButton
      Left = 302
      Top = 155
      Width = 140
      Height = 140
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnNum7Click
    end
    object btnNum8: TButton
      Left = 448
      Top = 155
      Width = 140
      Height = 140
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btnNum8Click
    end
    object btnNum9: TButton
      Left = 8
      Top = 301
      Width = 140
      Height = 140
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = btnNum9Click
    end
    object btnNum10: TButton
      Left = 156
      Top = 301
      Width = 140
      Height = 140
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = btnNum10Click
    end
    object btnNum11: TButton
      Left = 302
      Top = 301
      Width = 140
      Height = 140
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = btnNum11Click
    end
    object btnNum12: TButton
      Left = 447
      Top = 301
      Width = 140
      Height = 140
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = btnNum12Click
    end
  end
  object Panel3: TPanel
    Left = 912
    Top = 151
    Width = 458
    Height = 465
    Color = 4428521
    ParentBackground = False
    TabOrder = 2
    object btnExit: TButton
      Left = 8
      Top = 301
      Width = 442
      Height = 140
      Caption = 'Exit'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnExitClick
    end
    object btnSolution: TButton
      Left = 8
      Top = 9
      Width = 442
      Height = 140
      Caption = 'Solution'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnSolutionClick
    end
    object btnReset: TButton
      Left = 8
      Top = 155
      Width = 442
      Height = 140
      Caption = 'Reset'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnResetClick
    end
  end
end
