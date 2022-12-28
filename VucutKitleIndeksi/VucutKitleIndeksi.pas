unit VucutKitleIndeksi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
kilo:Real;
boy:Real;

sonuc:Real;
begin
  boy:=StrToFloat(Edit1.Text);
  kilo:=StrToFloat(Edit2.Text);

  sonuc:=(kilo/(boy*boy));


  ShowMessage('Vücut Kitle İndeksiniz: '+ FloatToStr(sonuc));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
        Form1.Position:=poScreenCenter;
end;

end.
