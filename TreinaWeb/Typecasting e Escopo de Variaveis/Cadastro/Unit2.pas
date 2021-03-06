unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TbtnApelido = class(TForm)
    edtNome: TEdit;
    edtApelido: TEdit;
    lblNome: TLabel;
    Label2: TLabel;
    btnNovo: TButton;
    btnSalvar: TButton;
    speIdade: TSpinEdit;
    Label1: TLabel;
    Memo1: TMemo;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    procedure NovoCadastro;
    procedure SalvarCadastro;
    procedure DeletarComponentes;
  public
    { Public declarations }
  end;

var
  btnApelido: TbtnApelido;

implementation

{$R *.dfm}


procedure TbtnApelido.btnNovoClick(Sender: TObject);

begin
  btnNovo.Enabled   := False;
  btnSalvar.Enabled := True;
  NovoCadastro;
end;

procedure TbtnApelido.btnSalvarClick(Sender: TObject);
begin
  btnNovo.Enabled   := True;
  btnSalvar.Enabled := False;
  SalvarCadastro;
end;

procedure TbtnApelido.DeletarComponentes;
var
  I : Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TEdit then
    begin
      (Components[I] as TEdit).Text := '';
      (Components[I] as TEdit).Enabled := False;
    end;

    if Components[I] is TSpinEdit then
    begin
      (Components[I] as TSpinEdit).Value:= 0;
      (Components[I] as TSpinEdit).Enabled := False;
  end;
  end;

end;

procedure TbtnApelido.NovoCadastro;
begin
  //edtNome.Text := '';
  //edtApelido.Text := '';
  //speIdade.Value := 0;
  DeletarComponentes;
  edtNome.Enabled := True;
  edtApelido.Enabled := True;
  speIdade.Enabled := True;
end;

procedure TbtnApelido.SalvarCadastro;
begin
  Memo1.Lines.Add(edtNome.Text + ' - ' + edtApelido.Text + ' - ' + IntToStr(speIdade.Value));

  //edtNome.Text := '';
  //edtApelido.Text := '';
  //speIdade.Value := 0;
  DeletarComponentes;
  edtNome.Enabled := False;
  edtApelido.Enabled := False;
  speIdade.Enabled := False;
end;

end.
