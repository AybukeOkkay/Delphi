unit HesapMakinesi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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

var

  birinci_sayi: Real;
  ikinci_sayi: Real;

  sonuc: Real;

procedure TForm1.Button1Click(Sender: TObject);
begin
   birinci_sayi:=StrToFloat(Edit1.Text);
   ikinci_sayi:=StrToFloat(Edit2.Text);

   sonuc:=(birinci_sayi+ikinci_sayi) ;
   Edit3.Text:=FloatToStr(sonuc);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
birinci_sayi:=StrToFloat(Edit1.Text);
   ikinci_sayi:=StrToFloat(Edit2.Text);

   sonuc:=(birinci_sayi-ikinci_sayi) ;
   Edit3.Text:=FloatToStr(sonuc);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
birinci_sayi:=StrToFloat(Edit1.Text);
   ikinci_sayi:=StrToFloat(Edit2.Text);

   sonuc:=(birinci_sayi*ikinci_sayi) ;
   Edit3.Text:=FloatToStr(sonuc);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
birinci_sayi:=StrToFloat(Edit1.Text);
   ikinci_sayi:=StrToFloat(Edit2.Text);

   sonuc:=(birinci_sayi/ikinci_sayi) ;
   Edit3.Text:=FloatToStr(sonuc);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.Position:= poScreenCenter;
 Form1.BorderStyle:=bsToolWindow;
end;

end.
