unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Math,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Media,
  FMX.Effects, FMX.Filter.Effects;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ImageControl1: TImageControl;
    Panel1: TPanel;
    lblQuestion: TLabel;
    lblA: TLabel;
    lblB: TLabel;
    lblC: TLabel;
    ImageControl2: TImageControl;
    Label2: TLabel;
    ImageControl3: TImageControl;
    Label3: TLabel;
    ImageControl4: TImageControl;
    ImageControl5: TImageControl;
    ImageControl6: TImageControl;
    ImageControl7: TImageControl;
    ImageControl8: TImageControl;
    ImageControl9: TImageControl;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SepiaEffect1: TSepiaEffect;
    SepiaEffect2: TSepiaEffect;

   // procedure Label2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblAClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
  private
    param1: integer;
    param2: integer;
    operation: integer;
    { Private declarations }
    procedure GenerateRandomQuestion;
    function GetQuestionText(param1, param2: integer; operation: integer): string;
    function GetResultText: string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormShow(Sender: TObject);
begin
  Panel1.Visible := false;
end;

procedure TForm1.GenerateRandomQuestion;
begin
  operation := random(2);
  if operation = 0 then
  begin
    param1 := random(20);
    param2 := random(20);
  end
  else
  begin
    param2 := random(17);
    param1 := random(20 - param2) + param2;
  end;
end;

function TForm1.GetQuestionText(param1, param2, operation: integer): string;
var
  opstr: string;
begin
  opstr := ' ';
  if operation = 0 then
    opstr := '+'
  else if operation = 1 then
    opstr := '-';

  result := IntToStr(param1) + ' ' +  opstr + ' ' + IntToStr(param2) + ' =';
end;

function TForm1.GetResultText: string;
begin
  if operation = 0 then
    result := IntToStr(param1 + param2)
  else if operation = 1 then
    result := IntToStr(param1 - param2)
end;

procedure TForm1.Label1Click(Sender: TObject);
var
  ch: integer;
begin
  GenerateRandomQuestion;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);
  lblA.Text := IntToStr(random(40));
  lblB.Text := IntToStr(random(40));
  lblC.Text := IntToStr(random(40));
  ch := random(3);
  lblA.Tag := 0;
  lblB.Tag := 0;
  lblC.Tag := 0;

  if ch = 0 then
  begin
    lblA.Text := GetResultText;
    lblA.Tag := 1;
  end
  else if ch = 1 then
  begin
    lblB.Text := GetResultText;
    lblB.Tag := 1;
  end
  else if ch = 2 then
  begin
    lblC.Text := GetResultText;
    lblC.Tag := 1;
  end;
  Panel1.Visible := true;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
var
  ch: integer;
GenerateRandomQuestion;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);
  lblA.Text := IntToStr(random(40));
  lblB.Text := IntToStr(random(40));
  lblC.Text := IntToStr(random(40));
  ch := random(3);
  lblA.Tag := 0;
  lblB.Tag := 0;
  lblC.Tag := 0;


  if ch = 0 then
  begin
    lblA.Text := GetResultText;
    lblA.Tag := 1;
  end
  else if ch = 1 then
  begin
    lblB.Text := GetResultText;
    lblB.Tag := 1;
  end
  else if ch = 2 then
  begin
    lblC.Text := GetResultText;
    lblC.Tag := 1;
  end;
  Panel1.Visible := true;

end;

procedure TForm1.Label3Click(Sender: TObject);
var
  ch: integer;
begin
  GenerateRandomQuestion;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);
  lblA.Text := IntToStr(random(40));
  lblB.Text := IntToStr(random(40));
  lblC.Text := IntToStr(random(40));
  ch := random(3);
  lblA.Tag := 0;
  lblB.Tag := 0;
  lblC.Tag := 0;

  if ch = 0 then
  begin
    lblA.Text := GetResultText;
    lblA.Tag := 1;
  end
  else if ch = 1 then
  begin
    lblB.Text := GetResultText;
    lblB.Tag := 1;
  end
  else if ch = 2 then
  begin
    lblC.Text := GetResultText;
    lblC.Tag := 1;
  end;
  Panel1.Visible := true;
end;
procedure TForm1.Label4Click(Sender: TObject);
var
  ch: integer;
begin
  GenerateRandomQuestion;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);
  lblA.Text := IntToStr(random(40));
  lblB.Text := IntToStr(random(40));
  lblC.Text := IntToStr(random(40));
  ch := random(3);
  lblA.Tag := 0;
  lblB.Tag := 0;
  lblC.Tag := 0;

  if ch = 0 then
  begin
    lblA.Text := GetResultText;
    lblA.Tag := 1;
  end
  else if ch = 1 then
  begin
    lblB.Text := GetResultText;
    lblB.Tag := 1;
  end
  else if ch = 2 then
  begin
    lblC.Text := GetResultText;
    lblC.Tag := 1;
  end;
  Panel1.Visible := true;

end;

procedure TForm1.Label5Click(Sender: TObject);
var
  ch: integer;
begin
  GenerateRandomQuestion;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);
  lblA.Text := IntToStr(random(40));
  lblB.Text := IntToStr(random(40));
  lblC.Text := IntToStr(random(40));
  ch := random(3);
  lblA.Tag := 0;
  lblB.Tag := 0;
  lblC.Tag := 0;

  if ch = 0 then
  begin
    lblA.Text := GetResultText;
    lblA.Tag := 1;
  end
  else if ch = 1 then
  begin
    lblB.Text := GetResultText;
    lblB.Tag := 1;
  end
  else if ch = 2 then
  begin
    lblC.Text := GetResultText;
    lblC.Tag := 1;
  end;
  Panel1.Visible := true;

end;

procedure TForm1.Label6Click(Sender: TObject);
var
  ch: integer;
begin
  GenerateRandomQuestion;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);
  lblA.Text := IntToStr(random(40));
  lblB.Text := IntToStr(random(40));
  lblC.Text := IntToStr(random(40));
  ch := random(3);
  lblA.Tag := 0;
  lblB.Tag := 0;
  lblC.Tag := 0;

  if ch = 0 then
  begin
    lblA.Text := GetResultText;
    lblA.Tag := 1;
  end
  else if ch = 1 then
  begin
    lblB.Text := GetResultText;
    lblB.Tag := 1;
  end
  else if ch = 2 then
  begin
    lblC.Text := GetResultText;
    lblC.Tag := 1;
  end;
  Panel1.Visible := true;

end;

procedure TForm1.Label7Click(Sender: TObject);
var
  ch: integer;
begin
  GenerateRandomQuestion;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);
  lblA.Text := IntToStr(random(40));
  lblB.Text := IntToStr(random(40));
  lblC.Text := IntToStr(random(40));
  ch := random(3);
  lblA.Tag := 0;
  lblB.Tag := 0;
  lblC.Tag := 0;

  if ch = 0 then
  begin
    lblA.Text := GetResultText;
    lblA.Tag := 1;
  end
  else if ch = 1 then
  begin
    lblB.Text := GetResultText;
    lblB.Tag := 1;
  end
  else if ch = 2 then
  begin
    lblC.Text := GetResultText;
    lblC.Tag := 1;
  end;
  Panel1.Visible := true;

end;

procedure TForm1.Label8Click(Sender: TObject);
var
  ch: integer;
begin
  GenerateRandomQuestion;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);
  lblA.Text := IntToStr(random(40));
  lblB.Text := IntToStr(random(40));
  lblC.Text := IntToStr(random(40));
  ch := random(3);
  lblA.Tag := 0;
  lblB.Tag := 0;
  lblC.Tag := 0;

  if ch = 0 then
  begin
    lblA.Text := GetResultText;
    lblA.Tag := 1;
  end
  else if ch = 1 then
  begin
    lblB.Text := GetResultText;
    lblB.Tag := 1;
  end
  else if ch = 2 then
  begin
    lblC.Text := GetResultText;
    lblC.Tag := 1;
  end;
  Panel1.Visible := true;

end;

procedure TForm1.Label9Click(Sender: TObject);
var
  ch: integer;
begin
  GenerateRandomQuestion;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);
  lblA.Text := IntToStr(random(40));
  lblB.Text := IntToStr(random(40));
  lblC.Text := IntToStr(random(40));
  ch := random(3);
  lblA.Tag := 0;
  lblB.Tag := 0;
  lblC.Tag := 0;

  if ch = 0 then
  begin
    lblA.Text := GetResultText;
    lblA.Tag := 1;
  end
  else if ch = 1 then
  begin
    lblB.Text := GetResultText;
    lblB.Tag := 1;
  end
  else if ch = 2 then
  begin
    lblC.Text := GetResultText;
    lblC.Tag := 1;
  end;
  Panel1.Visible := true;

end;

procedure TForm1.lblAClick(Sender: TObject);
begin
  if TLabel(Sender).Tag = 1 then

    ShowMessage('Dogruuuu')
 else
      ShowMessage('Yanlýýýs');
  Panel1.Visible := false;
end;

end.
