﻿unit KullaniciGirisi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses kullanici_girisi;

procedure TForm1.Button1Click(Sender: TObject);
begin

  if (Edit1.Text='Aybus') and (Edit2.Text='12345')then
  begin
    // ShowMessage('Hoş geldin Çiseeemmm');

     Form1.Hide;
     Form2.ShowModal;
  end

  else if (Edit1.Text='Aybus') and (Edit2.Text<>'12345') then
  begin
    ShowMessage('Şifreniz Hatalıdır');
  end

  else if (Edit1.Text<>'Aybus') and (Edit2.Text='12345') then

     begin
        ShowMessage('kullanıcı adınız Hatalıdır');
     end

   else if (Edit1.Text<>'Aybus') and (Edit2.Text<>'12345') then
     begin
         ShowMessage('kullanıcı adınız ve şifreniz Hatalıdır');
     end;

end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
    if (CheckBox1.Checked) then
    begin
      Edit2.PasswordChar:=#0;
    end
    else
    begin
      Edit2.PasswordChar:='*';
    end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  Form1.Position:=poScreenCenter;
  Form1.BorderStyle:=bsToolWindow;

  Edit1.MaxLength:=12;
  Edit2.MaxLength:=12;

  Edit1.Hint :='Kullanıcı adınızı giriniz';
  Edit1.ShowHint:=True;

  Edit2.Hint :='Şifrenizi giriniz';
  Edit2.ShowHint:=True;

  Button1.Hint:='Uygulamaya giriş yapmaktadır';
  Button1.ShowHint:=True;

  Edit2.PasswordChar:='*';

end;

end.
