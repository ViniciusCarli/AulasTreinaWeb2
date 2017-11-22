unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    ListBox1: TListBox;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
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
contador,ValorInicial, ValorFinal : Integer;

begin
  ValorInicial := SpinEdit2.Valxue;
  ValorFinal   := SpinEdit1.Value;

  for contador := ValorInicial to ValorFinal do
  begin
    ListBox1.Items.Add('Contador no. ' +IntToStr(contador));
    ShowMessage('Contador no.' + IntToStr(contador));
  end;

end;

end.
