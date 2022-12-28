unit EmeklilikHesabi;

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

uses Emeklilik;

procedure TForm1.Button1Click(Sender: TObject);
begin
    if(Edit1.Text='5467') and (Edit2.Text='123456789') then

      begin
        ShowMessage('Başarılı giriş yapıldı.'+#13#10+#13#10+'Yetkili : 5467 hoşgeldin');
        Form1.Hide;
        Form2.ShowModal;
      end

      else if (Edit1.Text='5467') and (Edit2.Text <>'123456789') then
      begin
        ShowMessage('Yetkili şifresi hatalı olarak girildi');
      end

      else if (Edit1.Text<>'5467')and (Edit2.Text <>'123456789') then
      begin
           ShowMessage('Dahili numarası hatalı olarak girildi');
      end
      else
      begin
        ShowMessage('Dahili numarası ve yetkili şifresi hatalı girilmiştir');
      end;

end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
   if (CheckBox1.Checked=True) then
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


  Edit1.MaxLength:=4;
  Edit2.MaxLength:=11;

  Edit1.Hint := 'Lütfen dahili numaranızı giriniz';
  Edit1.ShowHint :=True;

  Edit2.Hint := 'Lütfen şifrenizi giriniz';
  Edit2.ShowHint :=True;

  Edit2.PasswordChar:= '*';
end;

end.
