unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TspeAno = class(TForm)
    Button1: TButton;
    speDia: TSpinEdit;
    speMes: TSpinEdit;
    speAno: TSpinEdit;
    speHora: TSpinEdit;
    speMin: TSpinEdit;
    speSeg: TSpinEdit;
    speMili: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button2: TButton;
    Button3: TButton;
    speDiaNovo: TSpinEdit;
    speNovoMes: TSpinEdit;
    speNovoAno: TSpinEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    speNovaHora: TSpinEdit;
    speNovoMin: TSpinEdit;
    speNovoSeg: TSpinEdit;
    speNovoMil: TSpinEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Button4: TButton;
    Edit1: TEdit;
    Label16: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  speAno: TspeAno;

implementation

{$R *.dfm}

procedure TspeAno.Button1Click(Sender: TObject);

var
  DataAtual        :TDate;
  DataeHorasAtuais :TDateTime;
  HoraAtual        : TTime;

begin
  DataAtual        := Date;
  DataeHorasAtuais := Now;
  HoraAtual        := Time;


  ShowMessage (' Data Atual:  ' + DateToStr(DataAtual)+ #13 +
  ' Data e Horas Atuais:  ' + DateTimeToStr(DataeHorasAtuais) + #13 +
  ' Hora Atual: ' + TimeToStr(HoraAtual));
end;

procedure TspeAno.Button2Click(Sender: TObject);
var
  Ano, Mes, Dia : Word;
  Hora, Minuto, Segundo, Milissegundo :Word;
  NossaData     :TDateTime;

begin
  NossaData := Now;

  DecodeDate(NossaData, Ano, Mes, Dia);
  speDia.Value  := Dia;
  speMes.Value  := Mes;
  speAno.Value  := Ano;

  DecodeTime(NossaData, Hora, Minuto, Segundo, Milissegundo);
  speHora.Value := Hora;
  speMin.Value  := Minuto;
  speSeg.Value  := Segundo;
  speMili.Value := Milissegundo;

end;

procedure TspeAno.Button3Click(Sender: TObject);
var
  Ano, Mes ,Dia : Word;
  Hora ,Minuto ,Segundo ,Mil :Word;
  NovaData :TDateTime;
  NovaHora :TTime;
begin
  Ano := speNovoAno.Value;
  Mes := speNovoMes.Value;
  Dia := speDiaNovo.Value;
  Hora := speNovaHora.Value;
  Minuto := speNovoMin.Value;
  Segundo := speNovoSeg.Value;
  Mil := speNovoMil.Value;
 NovaData := EncodeDate(Ano ,Mes ,Dia );
 NovaHora := EncodeTime(Hora ,Minuto ,Segundo ,Mil);

  ShowMessage('Data Criada: ' + DateToStr(NovaData));
  ShowMessage('Hora Criada: ' + TimeToStr(NovaHora));

end;

procedure TspeAno.Button4Click(Sender: TObject);
begin
  Edit1.Text := FormatDateTime('DD/MM/YYYY hh:mm:ss.zzz', Now);
end;

end.
