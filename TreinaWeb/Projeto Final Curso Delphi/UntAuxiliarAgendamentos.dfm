object frmAgendaAux: TfrmAgendaAux
  Left = 0
  Top = 0
  Caption = 'Cria'#231#227'o/Edi'#231#227'o de Agendamentos'
  ClientHeight = 392
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 138
    Width = 121
    Height = 16
    Caption = 'Selecione o Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 47
    Height = 13
    Caption = 'ASSUNTO'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 8
    Top = 48
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 8
    Top = 88
    Width = 27
    Height = 13
    Caption = 'DATA'
    FocusControl = DBEdit3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 160
    Width = 489
    Height = 194
    DataSource = dstClientes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'APELIDP'
        Title.Caption = 'Apelido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Title.Caption = 'Raz'#227'o Social'
        Width = 178
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    DataField = 'ASSUNTO'
    DataSource = dstAgenda
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 394
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dstAgenda
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 81
    Height = 21
    DataField = 'DATA'
    DataSource = dstAgenda
    TabOrder = 3
  end
  object btnSalvar: TBitBtn
    Left = 246
    Top = 102
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = btnSalvarClick
  end
  object btnSair: TBitBtn
    Left = 327
    Top = 102
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 5
    OnClick = btnSairClick
  end
  object dstClientes: TDataSource
    DataSet = DM.qryClientes
    Left = 352
    Top = 16
  end
  object dstAgenda: TDataSource
    DataSet = DM.cdsAgenda
    Left = 264
    Top = 16
  end
end
