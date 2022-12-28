unit DegiskenDegistirme;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

var A,B:Integer;

gecici_degisken:Integer;
begin
    A:=StrToInt(Edit1.Text);
    B:=StrToInt(Edit2.Text);


    gecici_degisken:=A;

    A:=B;
    B:=gecici_degisken;

    Edit3.Text:=IntToStr(A);
    Edit4.Text:=IntToStr(B);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.Position:=poScreenCenter;
Form1.BorderStyle:=bsToolWindow;
end;

end.
