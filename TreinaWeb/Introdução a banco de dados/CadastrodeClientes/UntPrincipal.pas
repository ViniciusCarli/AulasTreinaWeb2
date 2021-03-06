unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Datasnap.DBClient, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmClientes = class(TForm)
    cdsClientes: TClientDataSet;
    cdsClientesAPELIDO: TStringField;
    cdsClientesRazaoSocial: TStringField;
    cdsClientesDatadeCadastro: TDateTimeField;
    cdsClientesCNPJCPF: TStringField;
    cdsClientesEndereco: TStringField;
    cdsClientesNumero: TIntegerField;
    cdsClientesCEP: TStringField;
    dstClientes: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsClientes.SaveToFile
      ('C:\Users\Vinicius Bustamanti\Documents\Embarcadero\Studio\Projects\Introdução a banco de dados\CadastrodeClientes\Clientes.cds');
end;

procedure TfrmClientes.FormCreate(Sender: TObject);
begin
 cdsClientes.LoadFromFile
    ('C:\Users\Vinicius Bustamanti\Documents\Embarcadero\Studio\Projects\Introdução a banco de dados\CadastrodeClientes\Clientes.cds');
end;

end.
