﻿object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 418
  ClientWidth = 414
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
    Left = 16
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 16
    Top = 61
    Width = 84
    Height = 13
    Caption = 'Digite uma Frase:'
  end
  object Label3: TLabel
    Left = 16
    Top = 149
    Width = 67
    Height = 13
    Caption = 'Texto Original'
  end
  object Label4: TLabel
    Left = 16
    Top = 195
    Width = 94
    Height = 13
    Caption = 'Frase a ser inserida'
  end
  object edtNomeCompleto: TEdit
    Left = 16
    Top = 35
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 263
    Top = 33
    Width = 137
    Height = 25
    Caption = 'Mostrar Mensagem'
    TabOrder = 1
    OnClick = Button1Click
  end
  object edtFrase: TEdit
    Left = 16
    Top = 80
    Width = 241
    Height = 21
    TabOrder = 2
  end
  object Button2: TButton
    Left = 263
    Top = 78
    Width = 137
    Height = 25
    Caption = 'Fun'#231#227'o Copy'
    TabOrder = 3
    OnClick = Button2Click
  end
  object edtCopia: TEdit
    Left = 16
    Top = 117
    Width = 384
    Height = 21
    TabOrder = 4
  end
  object edtTextoOriginal1: TEdit
    Left = 16
    Top = 168
    Width = 384
    Height = 21
    TabOrder = 5
  end
  object edtFraseInserir1: TEdit
    Left = 16
    Top = 211
    Width = 384
    Height = 21
    TabOrder = 6
  end
  object Button3: TButton
    Left = 16
    Top = 238
    Width = 384
    Height = 25
    Caption = 'Fun'#231#227'o Insert'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 16
    Top = 269
    Width = 384
    Height = 25
    Caption = 'Fun'#231#227'o Delete'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Maiúsculas: TButton
    Left = 16
    Top = 300
    Width = 193
    Height = 25
    Caption = 'Mai'#250'sculas'
    TabOrder = 9
    OnClick = MaiúsculasClick
  end
  object Minusculas: TButton
    Left = 209
    Top = 300
    Width = 191
    Height = 25
    Caption = 'Minusculas'
    TabOrder = 10
    OnClick = MinusculasClick
  end
end
