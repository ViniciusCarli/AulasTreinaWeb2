object DataSelecionada: TDataSelecionada
  Left = 0
  Top = 0
  Caption = 'DataSelecionada'
  ClientHeight = 466
  ClientWidth = 925
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 81
    Top = 42
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 208
    Top = 42
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 82
    Top = 96
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 209
    Top = 96
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 82
    Top = 152
    Width = 31
    Height = 13
    Caption = 'Label5'
  end
  object Label6: TLabel
    Left = 88
    Top = 336
    Width = 31
    Height = 13
    Caption = 'Label6'
  end
  object edtValor1: TEdit
    Left = 82
    Top = 115
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtValor2: TEdit
    Left = 209
    Top = 115
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object SpinEdit1: TSpinEdit
    Left = 81
    Top = 61
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 208
    Top = 61
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object Button1: TButton
    Left = 82
    Top = 195
    Width = 247
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
  object edtResult: TEdit
    Left = 81
    Top = 168
    Width = 247
    Height = 21
    TabOrder = 5
  end
  object Button2: TButton
    Left = 82
    Top = 226
    Width = 246
    Height = 25
    Caption = 'Button2'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 82
    Top = 305
    Width = 246
    Height = 25
    Caption = 'Button3'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 80
    Top = 382
    Width = 122
    Height = 25
    Caption = 'Button4'
    TabOrder = 8
    OnClick = Button4Click
  end
  object SpinEdit3: TSpinEdit
    Left = 83
    Top = 277
    Width = 245
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 9
    Value = 0
  end
  object Edit1: TEdit
    Left = 81
    Top = 355
    Width = 245
    Height = 21
    TabOrder = 10
  end
  object Button5: TButton
    Left = 208
    Top = 382
    Width = 118
    Height = 25
    Caption = 'Button5'
    TabOrder = 11
    OnClick = Button5Click
  end
  object Edit2: TEdit
    Left = 208
    Top = 413
    Width = 118
    Height = 21
    TabOrder = 12
  end
  object edtCalendario: TEdit
    Left = 416
    Top = 316
    Width = 321
    Height = 21
    TabOrder = 13
  end
  object Button6: TButton
    Left = 768
    Top = 316
    Width = 99
    Height = 25
    Caption = 'Data Selecionada'
    TabOrder = 14
    OnClick = Button6Click
  end
  object Calendar1: TCalendar
    Left = 392
    Top = 42
    Width = 475
    Height = 249
    StartOfWeek = 0
    TabOrder = 15
  end
end
