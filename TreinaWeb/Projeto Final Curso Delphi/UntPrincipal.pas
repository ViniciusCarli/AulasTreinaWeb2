unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, UntCadastroClientes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Agendamentos1: TMenuItem;
    Relatrios1: TMenuItem;
    RelatriodeAgendamentos1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure RelatriodeAgendamentos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UntAgendamentos, UntDM;

procedure TfrmPrincipal.Agendamentos1Click(Sender: TObject);
begin
  try
    frmAgendamentos := TfrmAgendamentos.Create(Self);
    frmAgendamentos.ShowModal;
  finally
    frmAgendamentos.Free;
  end;
end;
procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  try
    frmCadastroDeClientes := TfrmCadastroDeClientes.Create(Self);
    frmCadastroDeClientes.ShowModal;
  finally
    frmCadastroDeClientes.Free;
  end;
end;

procedure TfrmPrincipal.RelatriodeAgendamentos1Click(Sender: TObject);
begin
  DM.cdsAgenda.LoadFromFile('C:\Users\Vinicius Bustamanti\Documents' +
    '\Embarcadero\Studio\Projects\Projeto Final Curso Delphi\Banco de Dados\Agenda.cds');
  DM.cdsAgenda.Active := True;
  DM.cdsAgenda.First;
  DM.cdsAgenda.IndexFieldNames := 'CLIENTE';
  DM.frxReport1.ShowReport();
end;

end.
