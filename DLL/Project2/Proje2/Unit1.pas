unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
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
Function  faktor(x:Integer):Integer; Far;External 'Project2.dll';

procedure TForm1.Button1Click(Sender: TObject);
var
  deger:Integer;
  sonuc:Integer;
begin
   deger:=StrToInt(Edit1.Text);
   sonuc:=faktor(deger);
   ShowMessage(IntToStr(deger)+' Sayısının faktöriyeli = '+IntToStr(sonuc)+' sayısıdır. ');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.Position:=poScreenCenter;
  Form1.BorderStyle:=bsToolWindow;
end;

end.
