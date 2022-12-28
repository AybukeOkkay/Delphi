library Project2;


uses
  System.SysUtils,
  System.Classes;

Function faktor(x:Integer): Integer; Export;

    var

    sonuc:Integer;
    i:Integer;

    begin
      sonuc:=1;
      for i := 1 to x do
        begin
          sonuc:=sonuc*i;
        end;

        result:=sonuc;
    end;

  Exports

    faktor;

{$R *.res}

begin
end.
