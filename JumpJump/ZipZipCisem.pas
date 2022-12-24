unit ZipZipCisem;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

     dususDegeri:double;



    ustBorular:array[1..3] of timage;
    altBorular:array[1..3] of timage;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}
{$R *.Surface.fmx MSWINDOWS}

procedure TForm1.FormCreate(Sender: TObject);
begin
      ustBorular[1]:=image3;
      ustBorular[2]:=image5;
      ustBorular[3]:=image6;

      altBorular[1]:=image4;
      altBorular[2]:=image7;
      altBorular[3]:=image8;

      dususDegeri:=0;

end;

procedure TForm1.Image1Click(Sender: TObject);
begin
          dususDegeri:=-2;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
 dususDegeri:=-2;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
    dususDegeri:=-2;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
 dususDegeri:=-2;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
 dususDegeri:=-2;
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
 dususDegeri:=-2;
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
        dususDegeri:=-2;
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
                dususDegeri:=-2;
end;



procedure TForm1.Timer1Timer(Sender: TObject);
var

q,i:integer;
rnd:integer;
begin
image3.Position.X:=image3.Position.X-1;
image4.Position.X:=image4.Position.X-1;
image5.Position.X:=image5.Position.X-1;
image6.Position.X:=image6.Position.X-1;
image7.Position.X:=image7.Position.X-1;
image8.Position.X:=image8.Position.X-1;

for q := 1 to 3 do
  begin
    if ustBorular[q].Position.X+ustBorular[q].Width<0 then
     begin
       ustBorular[q].Position.X:=550;
       altBorular[q].Position.X:=550;


       rnd:=random(2);
       ustBorular[q].Position.Y:=(rnd*100);
       altBorular[q].Position.Y:=ustBorular[q].Position.Y+400;


     end;
  end;
      if image2.Position.Y+image2.Height>=screen.Size.Height-25 then
      begin
        timer1.Enabled:=false;
        timer2.Enabled:=false;
      end;



      for I := 1 to 3 do
        begin
          if (image2.Position.X+image2.Width>ustBorular[i].Position.X)
           and
           (image2.Position.X<ustBorular[i].Position.X+ustBorular[i].Width) then

           if (image2.Position.Y<ustBorular[i].Position.Y+ustBorular[i].Height) then
             begin
               timer1.Enabled:=false;
               timer2.Enabled:=false;

             end;


               if (image2.Position.X+image2.Width>altBorular[i].Position.X)
               and
               (image2.Position.X<altBorular[i].Position.X+altBorular[i].Width) then
                begin
                  if image2.Position.Y+image2.Height>altBorular[i].Position.Y then
                   begin
                       timer1.Enabled:=false;
                        timer2.Enabled:=false;
                   end;

                end;


        end;



end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
    dususDegeri:=dususDegeri+0.04;
    image2.Position.Y:=image2.Position.Y+dususDegeri;
end;

end.
