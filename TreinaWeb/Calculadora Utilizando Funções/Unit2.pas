unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    function Somar(Valor1 , Valor2 : Integer): Integer;
    function Sub(Valor1, Valor2 : Integer) : Integer;
    function Multi(Valor1, Valor2 : Integer) : Integer;
    function Divi(Valor1, Valor2 : Integer) : Integer;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  SpinEdit3.Value := Somar(SpinEdit1.Value, SpinEdit2.Value)
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  SpinEdit3.Value := Sub(SpinEdit1.Value, SpinEdit2.Value)
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  SpinEdit3.Value := Divi(SpinEdit1.Value, SpinEdit2.Value)
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
 SpinEdit3.Value := Multi(SpinEdit1.Value, SpinEdit2.Value)
end;

function TForm2.Divi(Valor1, Valor2: Integer): Integer;
begin
  if Valor2 <= 0 then
  begin
    ShowMessage('O valor 0 N�O � valido');
    Result := 0;
    exit;
  end;
     Result := Valor1 div Valor2;
end;

function TForm2.Multi(Valor1, Valor2: Integer): Integer;
  begin
     Result := Valor1 * Valor2;
  end;

function TForm2.Somar(Valor1, Valor2: Integer): Integer;
  begin
    Result := Valor1 + Valor2;
  end;

function TForm2.Sub(Valor1, Valor2: Integer): Integer;
  begin
    Result := Valor1 - Valor2;
  end;

end.
