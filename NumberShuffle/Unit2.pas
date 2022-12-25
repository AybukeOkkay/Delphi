unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    lblNumOfClicks: TLabel;
    btnNum1: TButton;
    btnNum2: TButton;
    btnNum3: TButton;
    btnNum4: TButton;
    btnNum5: TButton;
    btnNum6: TButton;
    btnNum7: TButton;
    btnNum8: TButton;
    btnNum9: TButton;
    btnNum10: TButton;
    btnNum11: TButton;
    btnNum12: TButton;
    btnExit: TButton;
    btnSolution: TButton;
    btnReset: TButton;
    procedure FormCreate(Sender: TObject);
    procedure EmptySpotChecker(Butt1,Butt2:TButton);
     procedure SolutionChecker();
     procedure Sorting();
    procedure btnSolutionClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnNum1Click(Sender: TObject);
    procedure btnNum2Click(Sender: TObject);
    procedure btnNum3Click(Sender: TObject);
    procedure btnNum4Click(Sender: TObject);
    procedure btnNum5Click(Sender: TObject);
    procedure btnNum6Click(Sender: TObject);
    procedure btnNum7Click(Sender: TObject);
    procedure btnNum8Click(Sender: TObject);
    procedure btnNum9Click(Sender: TObject);
    procedure btnNum10Click(Sender: TObject);
    procedure btnNum11Click(Sender: TObject);
    procedure btnNum12Click(Sender: TObject);
    procedure btnExitClick(Sender: TObject);

  private
    { Private declarations }

    Counter:Integer;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
{$R *.dfm}



procedure TForm2.FormCreate(Sender: TObject);
begin
Sorting;
Form2.Position:=poScreenCenter;
Form2.BorderStyle:=bsToolWindow;
end;
   procedure TForm2.SolutionChecker;
begin
   if( btnNum1.Caption='1')and (btnNum2.Caption='2') and (btnNum3.Caption='3')
   and (btnNum4.Caption='4')and (btnNum5.Caption='5')and (btnNum6.Caption='6')
   and (btnNum7.Caption='7')and (btnNum8.Caption='8')
   and (btnNum9.Caption='9')and (btnNum10.Caption='10')and (btnNum11.Caption='11')
   then
   begin
     showMessage('Well done you are a Winner');
   end;
   Counter:=Counter+1;
   lblNumOfClicks.Caption:=IntToStr(Counter);

end;

procedure TForm2.Sorting;
begin
 btnNum1.Caption:= IntToStr(3);
 btnNum2.Caption:= IntToStr(7);
 btnNum3.Caption:= IntToStr(2);
 btnNum4.Caption:= IntToStr(5);
 btnNum5.Caption:= IntToStr(9);
 btnNum6.Caption:= IntToStr(11);
 btnNum7.Caption:= IntToStr(6);
 btnNum8.Caption:= IntToStr(1);
 btnNum9.Caption:= IntToStr(8);
 btnNum10.Caption:= IntToStr(4);
 btnNum11.Caption:= IntToStr(10);
 btnNum12.Caption:='';

 lblNumOfClicks.Caption:='0';
end;

procedure TForm2.btnExitClick(Sender: TObject);
begin
if MessageDlg('Confirm if you want to exit',
mtConfirmation,[mbYes, mbNo],0,mbYes )=mrYes then
begin
  Application.Terminate;
end;
end;

procedure TForm2.btnNum10Click(Sender: TObject);
begin
EmptySpotChecker(btnNum10,btnNum9);
EmptySpotChecker(btnNum10,btnNum11);
EmptySpotChecker(btnNum10,btnNum6);
SolutionChecker();
end;

procedure TForm2.btnNum11Click(Sender: TObject);
begin
EmptySpotChecker(btnNum11,btnNum10);
EmptySpotChecker(btnNum11,btnNum12);
EmptySpotChecker(btnNum11,btnNum7);
SolutionChecker();
end;

procedure TForm2.btnNum12Click(Sender: TObject);
begin
EmptySpotChecker(btnNum12,btnNum11);
EmptySpotChecker(btnNum12,btnNum8);
SolutionChecker();
end;

procedure TForm2.btnNum1Click(Sender: TObject);
begin
EmptySpotChecker(btnNum1,btnNum2);
EmptySpotChecker(btnNum1,btnNum5);
SolutionChecker();
end;

procedure TForm2.btnNum2Click(Sender: TObject);
begin
EmptySpotChecker(btnNum2,btnNum3);
EmptySpotChecker(btnNum2,btnNum1);
EmptySpotChecker(btnNum2,btnNum6);
SolutionChecker();
end;

procedure TForm2.btnNum3Click(Sender: TObject);
begin
EmptySpotChecker(btnNum3,btnNum2);
EmptySpotChecker(btnNum3,btnNum4);
EmptySpotChecker(btnNum3,btnNum7);
SolutionChecker();
end;

procedure TForm2.btnNum4Click(Sender: TObject);
begin
EmptySpotChecker(btnNum4,btnNum3);
EmptySpotChecker(btnNum4,btnNum8);
SolutionChecker();
end;

procedure TForm2.btnNum5Click(Sender: TObject);
begin
EmptySpotChecker(btnNum5,btnNum1);
EmptySpotChecker(btnNum5,btnNum9);
EmptySpotChecker(btnNum5,btnNum6);
SolutionChecker();
end;

procedure TForm2.btnNum6Click(Sender: TObject);
begin
EmptySpotChecker(btnNum6,btnNum2);
EmptySpotChecker(btnNum6,btnNum5);
EmptySpotChecker(btnNum6,btnNum7);
EmptySpotChecker(btnNum6,btnNum10);
SolutionChecker();
end;

procedure TForm2.btnNum7Click(Sender: TObject);
begin
EmptySpotChecker(btnNum7,btnNum6);
EmptySpotChecker(btnNum7,btnNum8);
EmptySpotChecker(btnNum7,btnNum3);
EmptySpotChecker(btnNum7,btnNum11);
SolutionChecker();
end;

procedure TForm2.btnNum8Click(Sender: TObject);
begin
EmptySpotChecker(btnNum8,btnNum4);
EmptySpotChecker(btnNum8,btnNum7);
EmptySpotChecker(btnNum8,btnNum12);
SolutionChecker();
end;

procedure TForm2.btnNum9Click(Sender: TObject);
begin
EmptySpotChecker(btnNum9,btnNum5);
EmptySpotChecker(btnNum9,btnNum10);
SolutionChecker();
end;

procedure TForm2.btnResetClick(Sender: TObject);
begin
Sorting;
end;

procedure TForm2.btnSolutionClick(Sender: TObject);
begin
btnNum1.Caption:= IntToStr(1);
 btnNum2.Caption:= IntToStr(2);
 btnNum3.Caption:= IntToStr(3);
 btnNum4.Caption:= IntToStr(4);
 btnNum5.Caption:= IntToStr(5);
 btnNum6.Caption:= IntToStr(6);
 btnNum7.Caption:= IntToStr(7);
 btnNum8.Caption:= IntToStr(8);
 btnNum9.Caption:= IntToStr(9);
 btnNum10.Caption:= IntToStr(10);
 btnNum11.Caption:= IntToStr(11);
 btnNum12.Caption:='';

 lblNumOfClicks.Caption:='0';
end;

procedure TForm2.EmptySpotChecker(Butt1,Butt2:TButton);
   begin
     if Butt2.Caption='' then
          begin
            Butt2.Caption:=Butt1.Caption;
            Butt1.Caption:='';
          end;
   end;
end.
