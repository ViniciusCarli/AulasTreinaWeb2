unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm2 = class(TForm)
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label4: TLabel;
    SpinEdit4: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);  //SOMA
var
  Num1, Num2, Resultado : Integer;
begin
  Num1 := SpinEdit1.Value;
  Num2 := SpinEdit2.Value;

  Resultado := Num1 + Num2;

   SpinEdit3.Value := Resultado;
end;

procedure TForm2.Button2Click(Sender: TObject);  //SUBTRA��O
var
  Num1, Num2, Resultado : Integer;
begin
  Num1 := SpinEdit1.Value;
  Num2 := SpinEdit2.Value;

  Resultado := Num1 - Num2;

   SpinEdit3.Value := Resultado;
end;

procedure TForm2.Button3Click(Sender: TObject);  //MULTIPLICA��O
var
  Num1, Num2, Resultado : Integer;
begin
  Num1 := SpinEdit1.Value;
  Num2 := SpinEdit2.Value;

  Resultado := Num1 * Num2;

   SpinEdit3.Value := Resultado;
end;

procedure TForm2.Button4Click(Sender: TObject); //DIVIS�O
var
  Num1, Num2, Resultado,Resultado2 : Integer;
begin
  Num1 := SpinEdit1.Value;
  Num2 := SpinEdit2.Value;

  Resultado := Num1 div Num2;
  Resultado2 := Num1 mod Num2;

  SpinEdit3.Value := StrToInt(Resultado.ToString);
  SpinEdit4.Value := Resultado2;
end;

procedure TForm2.Button5Click(Sender: TObject);  //DIVIS�O REAL
var
  Num1, Num2, Resultado2 : Integer;
  Resultado : Double;
  Resto : Integer;
begin
  Num1 := SpinEdit1.Value;
  Num2 := SpinEdit2.Value;

  Resultado := Num1 / Num2;
  Resultado2 := Num1 mod Num2;
end;

end.
