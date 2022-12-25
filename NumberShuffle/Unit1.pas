unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
   uses unit2;
procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.Hide;
Form2.Show;
end;



procedure TForm1.FormCreate(Sender: TObject);
begin

Form1.Position:=poScreenCenter;
Form1.BorderStyle:=bsToolWindow;
end;

end.
