library DLL_1;

uses
  System.SysUtils,
  System.Classes,
  Vcl.Dialogs;

procedure mesaj(x:AnsiString); Export;

  begin

    ShowMessage(x);

  end;

  Exports

    mesaj;

{$R *.res}

begin
end.
