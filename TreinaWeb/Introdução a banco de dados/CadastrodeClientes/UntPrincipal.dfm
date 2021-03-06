object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 384
  ClientWidth = 762
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
    Left = 24
    Top = 32
    Width = 35
    Height = 13
    Caption = 'Apelido'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 184
    Top = 32
    Width = 57
    Height = 13
    Caption = 'RazaoSocial'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 587
    Top = 32
    Width = 79
    Height = 13
    Caption = 'DatadeCadastro'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 447
    Top = 32
    Width = 48
    Height = 13
    Caption = 'CNPJ/CPF'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 75
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 447
    Top = 75
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 587
    Top = 78
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit7
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 48
    Width = 153
    Height = 21
    DataField = 'APELIDO'
    DataSource = dstClientes
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 183
    Top = 48
    Width = 258
    Height = 21
    DataField = 'RazaoSocial'
    DataSource = dstClientes
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 587
    Top = 48
    Width = 121
    Height = 21
    DataField = 'DatadeCadastro'
    DataSource = dstClientes
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 447
    Top = 48
    Width = 134
    Height = 21
    DataField = 'CNPJCPF'
    DataSource = dstClientes
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 94
    Width = 417
    Height = 21
    DataField = 'Endereco'
    DataSource = dstClientes
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 447
    Top = 94
    Width = 134
    Height = 21
    DataField = 'Numero'
    DataSource = dstClientes
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 587
    Top = 94
    Width = 121
    Height = 21
    DataField = 'CEP'
    DataSource = dstClientes
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 121
    Width = 684
    Height = 208
    DataSource = dstClientes
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'APELIDO'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RazaoSocial'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DatadeCadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJCPF'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Endereco'
        Width = 161
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 26
    Top = 335
    Width = 680
    Height = 25
    DataSource = dstClientes
    TabOrder = 8
  end
  object cdsClientes: TClientDataSet
    PersistDataPacket.Data = {
      CD0000009619E0BD010000001800000007000000000003000000CD0007415045
      4C49444F0100490000000100055749445448020002001E000B52617A616F536F
      6369616C01004900000001000557494454480200020064000E44617461646543
      6164617374726F080008000000000007434E504A435046010049000000010005
      574944544802000200280008456E64657265636F010049000000010005574944
      5448020002006400064E756D65726F0400010000000000034345500100490000
      0001000557494454480200020009000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 720
    Top = 248
    object cdsClientesAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object cdsClientesRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Size = 100
    end
    object cdsClientesDatadeCadastro: TDateTimeField
      FieldName = 'DatadeCadastro'
    end
    object cdsClientesCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Size = 40
    end
    object cdsClientesEndereco: TStringField
      FieldName = 'Endereco'
      Size = 100
    end
    object cdsClientesNumero: TIntegerField
      FieldName = 'Numero'
    end
    object cdsClientesCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
  end
  object dstClientes: TDataSource
    DataSet = cdsClientes
    Left = 720
    Top = 296
  end
end
