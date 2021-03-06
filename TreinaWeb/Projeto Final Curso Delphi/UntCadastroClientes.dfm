object frmCadastroDeClientes: TfrmCadastroDeClientes
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes'
  ClientHeight = 495
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 96
    Width = 47
    Height = 13
    Caption = 'ID Cliente'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 153
    Top = 96
    Width = 35
    Height = 13
    Caption = 'Apelido'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 293
    Top = 96
    Width = 60
    Height = 13
    Caption = 'Raz'#227'o Social'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 136
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 351
    Top = 139
    Width = 62
    Height = 13
    Caption = 'CNPJ ou CPF'
    FocusControl = DBEdit5
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitTop = -4
    ExplicitWidth = 990
    object btnNovo: TBitBtn
      Left = 72
      Top = 13
      Width = 75
      Height = 50
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnEditar: TBitBtn
      Left = 153
      Top = 13
      Width = 75
      Height = 50
      Caption = 'Editar'
      TabOrder = 1
      OnClick = btnEditarClick
    end
    object btnSalvar: TBitBtn
      Left = 234
      Top = 13
      Width = 75
      Height = 50
      Caption = 'Salvar'
      Enabled = False
      TabOrder = 2
      OnClick = btnSalvarClick
    end
    object btnExcluir: TBitBtn
      Left = 315
      Top = 13
      Width = 75
      Height = 50
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnCancelar: TBitBtn
      Left = 396
      Top = 13
      Width = 75
      Height = 50
      Caption = 'Cancelar'
      Enabled = False
      TabOrder = 4
      OnClick = btnCancelarClick
    end
    object btnSair: TBitBtn
      Left = 650
      Top = 13
      Width = 75
      Height = 50
      Caption = 'Sair'
      TabOrder = 5
      OnClick = btnSairClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 112
    Width = 134
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = dstClientes
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 153
    Top = 112
    Width = 134
    Height = 21
    DataField = 'APELIDP'
    DataSource = dstClientes
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 293
    Top = 112
    Width = 339
    Height = 21
    DataField = 'RAZAOSOCIAL'
    DataSource = dstClientes
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 155
    Width = 337
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dstClientes
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 351
    Top = 155
    Width = 281
    Height = 21
    DataField = 'CNPJCPF'
    DataSource = dstClientes
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 182
    Width = 632
    Height = 180
    DataSource = dstClientes
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'ID Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APELIDP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'Apelido'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'Raz'#227'o Social'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'Endere'#231'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 227
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJCPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'CNPJ ou CPF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 106
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 650
    Top = 87
    Width = 75
    Height = 50
    DataSource = dstClientes
    VisibleButtons = [nbFirst]
    TabOrder = 7
  end
  object DBNavigator2: TDBNavigator
    Left = 650
    Top = 255
    Width = 75
    Height = 50
    DataSource = dstClientes
    VisibleButtons = [nbLast]
    TabOrder = 8
  end
  object DBNavigator3: TDBNavigator
    Left = 650
    Top = 199
    Width = 75
    Height = 50
    DataSource = dstClientes
    VisibleButtons = [nbNext]
    TabOrder = 9
  end
  object DBNavigator4: TDBNavigator
    Left = 650
    Top = 143
    Width = 75
    Height = 50
    DataSource = dstClientes
    VisibleButtons = [nbPrior]
    TabOrder = 10
  end
  object dstClientes: TDataSource
    AutoEdit = False
    DataSet = DM.qryClientes
    Left = 16
    Top = 16
  end
end
