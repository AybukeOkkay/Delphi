program NeZamanEmekliOlabilirim;

uses
  Vcl.Forms,
  EmeklilikHesabi in 'EmeklilikHesabi.pas' {Form1},
  Emeklilik in 'Emeklilik.pas' {Form2},
  EmeklilikNeZaman in 'EmeklilikNeZaman.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
