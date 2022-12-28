library Project2;


uses
  System.SysUtils,
  System.Classes,
  Winapi.Windows;

procedure Calistir(X:AnsiString); Export;

    begin

      //WinExec(Dizin,SW_SHOW);

      WinExec (PAnsiChar(X),SW_SHOW);
    end;



    Exports

      Calistir;

{$R *.res}

begin
end.
