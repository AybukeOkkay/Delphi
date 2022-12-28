program vucut_kitle_indeksi;

uses
  Vcl.Forms,
  VucutKitleIndeksi in 'VucutKitleIndeksi.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
