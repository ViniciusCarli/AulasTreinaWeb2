unit UntCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, UntDM, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI;

type
  TfrmCadastroDeClientes = class(TForm)
    Panel1: TPanel;
    btnNovo: TBitBtn;
    btnEditar: TBitBtn;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dstClientes: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtivarDesativarBotoes;

  public
    { Public declarations }
  end;

var
  frmCadastroDeClientes: TfrmCadastroDeClientes;

implementation

{$R *.dfm}
{ TfrmCadastroDeClientes }

procedure TfrmCadastroDeClientes.AtivarDesativarBotoes;
begin
  if DM.qryClientes.State in [dsEdit, dsInsert] then
  begin
    btnSalvar.Enabled := True;
    btnCancelar.Enabled := True;
    btnNovo.Enabled := False;
    btnEditar.Enabled := False;
    btnExcluir.Enabled := False;
    btnSair.Enabled := False;
  end
  else
  begin;
    btnSalvar.Enabled := False;
    btnCancelar.Enabled := False;
    btnNovo.Enabled := True;
    btnEditar.Enabled := True;
    btnExcluir.Enabled := True;
    btnSair.Enabled := True;
  end;

end;

procedure TfrmCadastroDeClientes.btnCancelarClick(Sender: TObject);
begin
  DM.qryClientes.Cancel;
  AtivarDesativarBotoes;
end;

procedure TfrmCadastroDeClientes.btnEditarClick(Sender: TObject);
begin
  DM.qryClientes.Edit;
  AtivarDesativarBotoes;
end;

procedure TfrmCadastroDeClientes.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclus�o do cliente atual?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    DM.qryClientes.Delete;
end;

procedure TfrmCadastroDeClientes.btnNovoClick(Sender: TObject);
begin
  DM.qryClientes.Append;
  AtivarDesativarBotoes;
end;

procedure TfrmCadastroDeClientes.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroDeClientes.btnSalvarClick(Sender: TObject);
begin
  DM.qryClientes.Post;
  AtivarDesativarBotoes;
end;

procedure TfrmCadastroDeClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.qryClientes.Active := False;
end;

procedure TfrmCadastroDeClientes.FormCreate(Sender: TObject);
begin
  DM.qryClientes.Active := True;
end;

end.
