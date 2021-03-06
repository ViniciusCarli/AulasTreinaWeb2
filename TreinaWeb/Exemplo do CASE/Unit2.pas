unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    Label2: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  Filhos : Integer;

begin
  Filhos := SpinEdit1.Value;
    case filhos of
      0: ShowMessage('O usuario n�o possui filhos');
      1..2: ShowMessage('O usuario possui de 1 a 2 filhos');
      3..4: ShowMessage('O usuario possui de 3 a 4 filhos');

      else
        ShowMessage('O usuario tem 5 ou mais filhos');

    end;

    end;

procedure TForm2.Button2Click(Sender: TObject);
var
  Letra : Char;

begin
  Letra := Edit1.Text[1];
  case Letra of
    'A','a' : ShowMessage('O usuario digitou a Letra A.');
    'B','b' : ShowMessage('O usuario digitou a Letra B.');
    'C','c' : ShowMessage('O usuario digitou a Letra C.');
    'D','d' : ShowMessage('O usuario digitou a Letra D.');
    'E','e' : ShowMessage('O usuario digitou a Letra E.');
    ' '  :  ShowMessage('O usuario N�o Digitou.'); //Feito de forma zoada
    else
      ShowMessage('O usuario n�o digitou nenhumas das letras esperadas(A,B,C,D e E)');
      
  end;
end;

end.
