program giris;

uses
  Vcl.Forms,
  KullaniciGirisi in 'KullaniciGirisi.pas' {Form1},
  kullanici_girisi in 'kullanici_girisi.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
