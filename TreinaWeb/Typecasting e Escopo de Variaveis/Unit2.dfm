object btnApelido: TbtnApelido
  Left = 0
  Top = 0
  Caption = 'btnApelido'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 8
    Top = 45
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 144
    Top = 45
    Width = 35
    Height = 13
    Caption = 'Apelido'
  end
  object Label1: TLabel
    Left = 271
    Top = 45
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object edtNome: TEdit
    Left = 8
    Top = 64
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object edtApelido: TEdit
    Left = 144
    Top = 64
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object btnNovo: TButton
    Left = 8
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = btnNovoClick
  end
  object btnSalvar: TButton
    Left = 254
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object speIdade: TSpinEdit
    Left = 271
    Top = 64
    Width = 58
    Height = 22
    Enabled = False
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
  end
  object Memo1: TMemo
    Left = 8
    Top = 92
    Width = 321
    Height = 117
    Enabled = False
    TabOrder = 5
  end
end
