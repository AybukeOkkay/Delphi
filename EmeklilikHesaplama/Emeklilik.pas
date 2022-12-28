unit Emeklilik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label5: TLabel;
    Edit5: TEdit;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

  i_i_g_t_GUN_STR:AnsiString;
  i_i_g_t_AY_STR:AnsiString;
  i_i_g_t_YIL_STR:AnsiString;

   i_i_g_t_KARSILASTIRMA:Integer;

    i_i_g_t_GUN_INT:Integer;
    i_i_g_t_AY_INT:Integer;
    i_i_g_t_YIL_INT:Integer;

    Engelilik_Orani:Integer;

    Prim_Gun_Sayisi:Integer;

    //sartlar1
    sig_suresi,yas_sarti:Ansistring;
    i:Integer;

    //sartlar2
    sig_suresi2, yas_sarti2:AnsiString;
     j:Integer;
    //sartlar3
     sig_suresi3:AnsiString;
     k:Integer;
    //prim_sarti1
    maksimum_prim,f_Prim_Gun_Sayisi  :Integer;
    //prim_sarti2
    maksimum_prim2, f_prim_gun_sayisi2:Integer;
    //prim_sarti3
    maksimum_prim3,f_prim_gun_sayisi3:Integer;
implementation

{$R *.dfm}

uses EmeklilikNeZaman;

procedure sartlar(sig_suresi:AnsiString;  yas_sarti:AnsiString; i:Integer);
begin
Form3.Show;
  for i := 0 to StrToInt(sig_suresi) do
  begin
     Form3.Label2.Caption:=IntToStr(i);
     sleep(10);
     Application.ProcessMessages;
  end;
  for i := 0 to StrToInt(yas_sarti) do
  begin
    Form3.Label4.Caption:=IntToStr(i);
    sleep(10);
     Application.ProcessMessages;
  end;
   if (sig_suresi='0') then
  begin
     Form3.Label2.Caption:='YOK';
  end;

  if (yas_sarti='0') then
  begin
    Form3.Label4.Caption:='YOK';
  end;

end;

procedure sartlar2(sig_suresi2:AnsiString; yas_sarti2:AnsiString; j:Integer);
begin

for j := 0 to StrToInt(sig_suresi2) do
begin
  Form3.Label10.Caption:=IntToStr(j);
  Sleep(10);
  Application.ProcessMessages;
end;
  for j := 0 to StrToInt(yas_sarti2) do
  begin
    Form3.Label11.Caption:=IntToStr(j);
    Sleep(10);
    Application.ProcessMessages;
  end;


  end;

procedure sartlar3(sig_suresi3:AnsiString; k:Integer);
begin
  if(Length(sig_suresi3)=4) then
  begin
    Form3.Label15.Caption:=sig_suresi3;
  end

  else
  begin
     for k := 0 to StrToInt(sig_suresi3) do
   begin
     Form3.Label15.Caption:=IntToStr(k);
     Sleep(10);
     Application.ProcessMessages;
   end;
  end;



end;





function prim_sarti(maksimum_prim:Integer;f_Prim_Gun_Sayisi:Integer):Integer;
begin
   if (maksimum_prim - f_Prim_Gun_Sayisi<=0) then
   begin

        Form3.Label6.Caption:='YOK';
   end
   else
   begin
     result:=(maksimum_prim-f_Prim_Gun_Sayisi);
     Form3.Label6.Caption:= IntToStr(result);
   end;

end;

 Function prim_sarti2(maksimum_prim2:Integer; f_prim_gun_sayisi2:Integer):  Integer;
 begin
   if (maksimum_prim2 - f_prim_gun_sayisi2<=0) then
   begin
     Form3.Label12.Caption:='YOK';
   end
   else
   begin
     result:=(maksimum_prim2-f_prim_gun_sayisi2);
     Form3.Label12.Caption:=IntToStr(result);
   end;

 end;

 Function prim_sarti3(maksimum_prim3:Integer; f_prim_gun_sayisi3:Integer):Integer;
 begin
   if (maksimum_prim3-f_prim_gun_sayisi3<=0) then
   begin
     Form3.Label16.Caption:='YOK';
   end
   else
   begin

   result:=(maksimum_prim3- f_prim_gun_sayisi3);
   Form3.Label16.Caption:=IntToStr(result);
   end;

 end;








procedure TForm2.Button1Click(Sender: TObject);
begin

  while True do
  begin
    if CheckBox1.Checked=True then
    begin
      if Edit5.Text='' then
      begin
        ShowMessage('Engelilik oranınız giriniz');
        Exit;
      end
      else if (StrToInt(Edit5.Text)<40) or (StrToInt(Edit5.Text)>100)then
      begin
        ShowMessage('Engellilik oranı yüzde 40 değerinden daha düşük ya da yüzde 100den büyük olamaz');
        Exit;
      end
      else if (StrToInt(Edit5.Text)>=40) and (StrToInt(Edit5.Text)<=100) then
      begin
        ShowMessage('Engellilik oranı emeklilik hesaplama motoruna entegre edildi');
          Engelilik_Orani:=StrToInt(Edit5.Text);
        Break;
      end
      else
      begin
        ShowMessage('Emekelilik hesaplama motoruna entegre edilmiş olan güvenlik duvarı bir hata yakaldı');
         Exit;
      end;


    end
    else
    begin
      ShowMessage('Engel durumu mecvut değildir');
      Break;
    end;
  end;


  while True do
      begin
        if (Edit1.Text='') then
        begin
          ShowMessage('Toplam çalışılan prim gün sayısını giriniz');
          exit;
        end;
        if (Edit2.Text='') then
          begin
          ShowMessage('İlk işe giriş tarihinin gün değeriniz giriniz tek basamklıysa başına sıfır getiriniz');
          exit;
        end;
         if (Edit3.Text='') then
          begin
          ShowMessage('İlk işe giriş tarihinin ay değeriniz giriniz tek basamklıysa başına sıfır getiriniz');
          exit;
        end;
        if (Edit4.Text='') then
          begin
          ShowMessage('İlk işe giriş tarihinin yıl değeriniz giriniz ');
          exit;
        end;
        Break;
      end;





i_i_g_t_GUN_STR  :=Edit2.Text;
i_i_g_t_AY_STR  :=Edit3.Text;
i_i_g_t_YIL_STR  :=Edit4.Text;



  i_i_g_t_GUN_INT :=StrToInt(Edit2.Text);
  i_i_g_t_AY_INT :=StrToInt(Edit3.Text);
  i_i_g_t_YIL_INT  :=StrToInt(Edit4.Text);



  Prim_Gun_Sayisi:=StrToInt(Edit1.Text);

   while True do
  begin
      if (i_i_g_t_YIL_INT<1950) or  (i_i_g_t_YIL_INT>2036)then
      begin
        ShowMessage('İlk işe giriş tarihinde 1950 yılından küçük ya da 2035 ylından büyük yıl girilemez ');
        Exit;
      end
      else if (Prim_Gun_Sayisi<0) or (Prim_Gun_Sayisi>7200) then
      begin
        ShowMessage('4-A [SSK] sigorta kolundan emekli olmak için vatandaşlardan maksimum prim sayısı 7200 gündür. Daha fazla gün girilmesine gerek yoktur');
        Exit;
      end
      else if (RadioButton1.Checked=False) and (RadioButton2.Checked=False) then
      begin
          ShowMessage('Lütfen cinsiyet tercihini yapınız');
          Exit;
      end
      else if (i_i_g_t_AY_INT<1) or (i_i_g_t_AY_INT>12) then
      begin
        ShowMessage('Ay değerine 1den küçük ya da 12den büyük değer giremezsiniz ');
        exit;
      end
        else if (i_i_g_t_GUN_STR='1')or(i_i_g_t_GUN_STR='2')or(i_i_g_t_GUN_STR='3')or (i_i_g_t_GUN_STR='4')or(i_i_g_t_GUN_STR='5')or(i_i_g_t_GUN_STR='6')or (i_i_g_t_GUN_STR='7')or (i_i_g_t_GUN_STR='8')or (i_i_g_t_GUN_STR='9') then
        begin
        ShowMessage('tek basamaklı günlerin başına sıfır "0" getiriniz');
            //  Edit2.Text:='0'+i_i_g_t_GUN_STR;
          exit;
        end
      else if (i_i_g_t_AY_STR='1')or(i_i_g_t_AY_STR='2')or(i_i_g_t_AY_STR='3')or(i_i_g_t_AY_STR='4')or(i_i_g_t_AY_STR='5')or(i_i_g_t_AY_STR='6')or (i_i_g_t_AY_STR='7')or (i_i_g_t_AY_STR='8')or (i_i_g_t_AY_STR='9') then
        begin
                ShowMessage('tek basamaklı ayların başına sıfır "0" getiriniz');
             //Edit3.Text:='0'+ i_i_g_t_AY_STR;
          exit;
        end
      else if (i_i_g_t_GUN_INT<1) or (i_i_g_t_GUN_INT>31) then
      begin
        ShowMessage('ilk işe giriş tarihinde gün değeri 1den küçük ya da 31den büyük bi değer olamaz');
        Exit;
      end

        else if ((i_i_g_t_AY_INT=2)and(i_i_g_t_GUN_INT>29))or((i_i_g_t_AY_STR='02')and(i_i_g_t_GUN_INT>29)) then
             begin
               ShowMessage('Şubat ayının alabileceği maksimum gün sayısı 28 veya 29. Yılsa göre değişiklik göstermektedirr');
               exit;
             end
        else if ((i_i_g_t_AY_STR='04') or (i_i_g_t_AY_STR='06') or (i_i_g_t_AY_STR='09')or (i_i_g_t_AY_STR='11') )and(i_i_g_t_GUN_INT>30) then
        begin
           ShowMessage('Nisan, Haziran, Eylül ve Aralık aylarının alabileceği maksimum gün sayıları 30. ');
           exit;
        end;

        Break;

  end;

   i_i_g_t_KARSILASTIRMA:=StrToInt(Edit4.Text + Edit3.Text + Edit2.Text);

       //Emeklilik Hesaplama Motoru

        while True do
        begin
          if (RadioButton1.Checked=True) and (RadioButton2.Checked=False) then
          begin
              if (i_i_g_t_KARSILASTIRMA<=19760908) then //1
              begin
                sartlar('25','0',0);
                prim_sarti(5000,Prim_Gun_Sayisi);
                break;
              end
              else if (i_i_g_t_KARSILASTIRMA>=19760909) and (i_i_g_t_KARSILASTIRMA<=19790523) then  //2
              begin
                 sartlar('25','44',0);
                 prim_sarti(5000,Prim_Gun_Sayisi);
                break;
              end
              else if (i_i_g_t_KARSILASTIRMA>=19790524) and (i_i_g_t_KARSILASTIRMA<=19801123) then //3
              begin
                   sartlar('25','45',0);
                 prim_sarti(5000,Prim_Gun_Sayisi);
                break;
              end
               else if (i_i_g_t_KARSILASTIRMA>=19801124) and (i_i_g_t_KARSILASTIRMA<=19820523) then //4
              begin
                   sartlar('25','46',0);
                 prim_sarti(5075,Prim_Gun_Sayisi);
                break;
              end
                else if (i_i_g_t_KARSILASTIRMA>=19820524) and (i_i_g_t_KARSILASTIRMA<=19831123) then //5
              begin
                   sartlar('25','47',0);
                 prim_sarti(5150,Prim_Gun_Sayisi);
                break;
              end
               else if (i_i_g_t_KARSILASTIRMA>=19831124) and (i_i_g_t_KARSILASTIRMA<=19850523) then //6
              begin
                   sartlar('25','48',0);
                 prim_sarti(5225,Prim_Gun_Sayisi);
                break;
              end
               else if (i_i_g_t_KARSILASTIRMA>=19850524) and (i_i_g_t_KARSILASTIRMA<=19861123) then //7
              begin
                   sartlar('25','49',0);
                 prim_sarti(5300,Prim_Gun_Sayisi);
                break;
              end
               else if (i_i_g_t_KARSILASTIRMA>=19861124) and (i_i_g_t_KARSILASTIRMA<=19880523) then //8
              begin
                   sartlar('25','50',0);
                 prim_sarti(5375,Prim_Gun_Sayisi);
                break;
              end
                  else if (i_i_g_t_KARSILASTIRMA>=19880524) and (i_i_g_t_KARSILASTIRMA<=19891123) then //9
              begin
                   sartlar('25','51',0);
                 prim_sarti(5450,Prim_Gun_Sayisi);
                break;
              end
                 else if (i_i_g_t_KARSILASTIRMA>=19891124) and (i_i_g_t_KARSILASTIRMA<=19910523) then //10
              begin
                   sartlar('25','52',0);
                 prim_sarti(5525,Prim_Gun_Sayisi);
                break;
              end
                 else if (i_i_g_t_KARSILASTIRMA>=19910524) and (i_i_g_t_KARSILASTIRMA<=19921123) then //11
              begin
                   sartlar('25','53',0);
                 prim_sarti(5600,Prim_Gun_Sayisi);
                break;
              end
                 else if (i_i_g_t_KARSILASTIRMA>=19921124) and (i_i_g_t_KARSILASTIRMA<=19940523) then //12
              begin
                   sartlar('25','54',0);
                 prim_sarti(5675,Prim_Gun_Sayisi);
                break;
              end
                 else if (i_i_g_t_KARSILASTIRMA>=19940524) and (i_i_g_t_KARSILASTIRMA<=19951123) then //13
              begin
                   sartlar('25','55',0);
                 prim_sarti(5750,Prim_Gun_Sayisi);
                break;
              end
                 else if (i_i_g_t_KARSILASTIRMA>=19951124) and (i_i_g_t_KARSILASTIRMA<=19970523) then //14
              begin
                   sartlar('25','56',0);
                 prim_sarti(5825,Prim_Gun_Sayisi);
                break;
              end
                 else if (i_i_g_t_KARSILASTIRMA>=19970524) and (i_i_g_t_KARSILASTIRMA<=19981123) then //15
              begin
                   sartlar('25','57',0);
                 prim_sarti(5900,Prim_Gun_Sayisi);
                break;
              end
                 else if (i_i_g_t_KARSILASTIRMA>=19981124) and (i_i_g_t_KARSILASTIRMA<19990908) then //16
              begin
                   sartlar('25','58',0);
                 prim_sarti(5975,Prim_Gun_Sayisi);
                break;
              end
                 else if (i_i_g_t_KARSILASTIRMA>=19990908) and (i_i_g_t_KARSILASTIRMA<=20080430) then //17
              begin
                   sartlar('0','60',0);
                 prim_sarti(7000,Prim_Gun_Sayisi);
                break;
              end
                 else if (i_i_g_t_KARSILASTIRMA>=20080501) and (i_i_g_t_KARSILASTIRMA<=20351231) then //18
              begin
                   sartlar('0','60',0);
                 prim_sarti(7200,Prim_Gun_Sayisi);
                break;
              end

          end
          else if (RadioButton1.Checked=False) and (RadioButton2.Checked=True) then
          begin

            if(i_i_g_t_KARSILASTIRMA<19810401) then   //1
            begin
                sartlar('20','0',0);
                prim_sarti(5000,Prim_Gun_Sayisi);
                break;
            end
            else if (i_i_g_t_KARSILASTIRMA>=19810401) and (i_i_g_t_KARSILASTIRMA<=19810908) then      //2
              begin
                sartlar('20','38',0);
                prim_sarti(5000,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19810909) and (i_i_g_t_KARSILASTIRMA<=19840523) then      //3
              begin
                sartlar('20','40',0);
                prim_sarti(5000,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19840524) and (i_i_g_t_KARSILASTIRMA<=19850523) then      //4
              begin
                sartlar('20','41',0);
                prim_sarti(5000,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19850524) and (i_i_g_t_KARSILASTIRMA<=19860523) then      //5
              begin
                sartlar('20','42',0);
                prim_sarti(5075,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19860524) and (i_i_g_t_KARSILASTIRMA<=19870523) then      //6
              begin
                sartlar('20','43',0);
                prim_sarti(5150,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19870524) and (i_i_g_t_KARSILASTIRMA<=19880523) then      //7
              begin
                sartlar('20','44',0);
                prim_sarti(5225,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19880524) and (i_i_g_t_KARSILASTIRMA<=19890523) then   //8
              begin
                sartlar('20','45',0);
                prim_sarti(5300,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19890524) and (i_i_g_t_KARSILASTIRMA<=19900523) then      //9
              begin
                sartlar('20','46',0);
                prim_sarti(5375,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19900524) and (i_i_g_t_KARSILASTIRMA<=19910523) then      //10
              begin
                sartlar('20','47',0);
                prim_sarti(5450,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19910524) and (i_i_g_t_KARSILASTIRMA<=19920523) then      //11
              begin
                sartlar('20','48',0);
                prim_sarti(5525,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19920524) and (i_i_g_t_KARSILASTIRMA<=19930523) then      //12
              begin
                sartlar('20','49',0);
                prim_sarti(5600,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19930524) and (i_i_g_t_KARSILASTIRMA<=19940523) then      //13
              begin
                sartlar('20','50',0);
                prim_sarti(5675,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19940524) and (i_i_g_t_KARSILASTIRMA<=19950523) then      //14
              begin
                sartlar('20','51',0);
                prim_sarti(5750,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19950524) and (i_i_g_t_KARSILASTIRMA<=19960523) then      //15
              begin
                sartlar('20','52',0);
                prim_sarti(5825,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19960524) and (i_i_g_t_KARSILASTIRMA<=19970523) then      //16
              begin
                sartlar('20','53',0);
                prim_sarti(5900,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19970524) and (i_i_g_t_KARSILASTIRMA<=19980523) then      //17
              begin
                sartlar('20','54',0);
                prim_sarti(5975,Prim_Gun_Sayisi);
                break;
            end
                 else if (i_i_g_t_KARSILASTIRMA>=19980524) and (i_i_g_t_KARSILASTIRMA<=19990523) then      //18
              begin
                sartlar('20','55',0);
                prim_sarti(5975,Prim_Gun_Sayisi);
                break;
            end
             else if (i_i_g_t_KARSILASTIRMA>=19990524) and (i_i_g_t_KARSILASTIRMA<19990908) then      //19
              begin
                sartlar('20','56',0);
                prim_sarti(5975,Prim_Gun_Sayisi);
                break;
            end
               else if (i_i_g_t_KARSILASTIRMA>19990908) and (i_i_g_t_KARSILASTIRMA<=20080430) then      //20
              begin
                sartlar('0','58',0);
                prim_sarti(7000,Prim_Gun_Sayisi);
                break;
            end
                  else if (i_i_g_t_KARSILASTIRMA>=20080501) and (i_i_g_t_KARSILASTIRMA<=20351231) then      //21
              begin
                sartlar('0','58',0);
                prim_sarti(7200,Prim_Gun_Sayisi);
                break;
            end;

          end;

        end;

        //kısmi emeklilik

      while True do

           begin

              if (RadioButton1.Checked=True) and (RadioButton2.Checked=False) then
              begin

                if (i_i_g_t_KARSILASTIRMA< 19760908) then                                 //1
                  begin
                    sartlar2('15','55',0);
                    prim_sarti2(3600,prim_gun_sayisi);
                    break;

                  end
                  else if (i_i_g_t_KARSILASTIRMA>=19810908) and (i_i_g_t_KARSILASTIRMA<=19990908) then        //2
                  begin
                     sartlar2('15','60',0);
                     prim_sarti2(3600,prim_gun_sayisi);
                     break;
                  end
                  else if (i_i_g_t_KARSILASTIRMA>=19990909) and (i_i_g_t_KARSILASTIRMA<=20080430) then       //3
                  begin
                     sartlar2('25','60',0);
                     prim_sarti2(4500,prim_gun_sayisi);
                     break;
                  end
                  else if (i_i_g_t_KARSILASTIRMA>=20080501) and (i_i_g_t_KARSILASTIRMA<=20081231) then       //4
                  begin
                     sartlar2('0','63',0);
                     prim_sarti2(4600,prim_gun_sayisi);
                     break;
                  end
                  else if (i_i_g_t_KARSILASTIRMA>=20090101) and (i_i_g_t_KARSILASTIRMA<=20091231) then        //5
                  begin
                     sartlar2('0','63',0);
                     prim_sarti2(4700,prim_gun_sayisi);
                     break;
                  end
                  else if (i_i_g_t_KARSILASTIRMA>=20100101) and (i_i_g_t_KARSILASTIRMA<=20101231) then        //6
                  begin
                     sartlar2('0','63',0);
                     prim_sarti2(4800,prim_gun_sayisi);
                     break;
                  end
                  else if (i_i_g_t_KARSILASTIRMA>=20110101) and (i_i_g_t_KARSILASTIRMA<=20111231) then        //7
                  begin
                     sartlar2('0','63',0);
                     prim_sarti2(4900,prim_gun_sayisi);
                     break;
                  end
                  else if (i_i_g_t_KARSILASTIRMA>=20120101) and (i_i_g_t_KARSILASTIRMA<=20121231) then        //8
                  begin
                     sartlar2('0','63',0);
                     prim_sarti2(5000,prim_gun_sayisi);
                     break;
                  end
                  else if (i_i_g_t_KARSILASTIRMA>=20130101) and (i_i_g_t_KARSILASTIRMA<=20131231) then        //9
                  begin
                     sartlar2('0','63',0);
                     prim_sarti2(5100,prim_gun_sayisi);
                     break;
                  end
                  else if (i_i_g_t_KARSILASTIRMA>=20140101) and (i_i_g_t_KARSILASTIRMA<=20141231) then        //10
                  begin
                     sartlar2('0','63',0);
                     prim_sarti2(5200,prim_gun_sayisi);
                     break;
                  end
                  else if (i_i_g_t_KARSILASTIRMA>=20150101) and (i_i_g_t_KARSILASTIRMA<=20151231) then        //11
                  begin
                     sartlar2('0','63',0);
                     prim_sarti2(5300,prim_gun_sayisi);
                     break;
                  end
                  else if (i_i_g_t_KARSILASTIRMA>=20160101) then        //12
                  begin
                     sartlar2('0','63',0);
                     prim_sarti2(5400,prim_gun_sayisi);
                     break;
                  end;

              end

               else if (RadioButton1.Checked=False) and (RadioButton2.Checked=True) then
                begin

                  if (i_i_g_t_KARSILASTIRMA<19810908) then                                       //1
                  begin
                      sartlar2('15','50',0);
                      prim_sarti2(3600,prim_gun_sayisi);
                      break;
                  end
                  else if (i_i_g_t_KARSILASTIRMA>=19810908) and (i_i_g_t_KARSILASTIRMA<=19990908)  then     //2
                  begin
                      sartlar2('15','58',0);
                      prim_sarti2(3600,prim_gun_sayisi);
                      break;
                  end
                   else if (i_i_g_t_KARSILASTIRMA>=19990909) and (i_i_g_t_KARSILASTIRMA<=20080430)  then     //3
                  begin
                      sartlar2('25','58',0);
                      prim_sarti2(4500,prim_gun_sayisi);
                      break;
                  end
                   else if (i_i_g_t_KARSILASTIRMA>=20080501) and (i_i_g_t_KARSILASTIRMA<=20081231)  then     //4
                  begin
                      sartlar2('0','61',0);
                      prim_sarti2(4700,prim_gun_sayisi);
                      break;
                  end
                     else if (i_i_g_t_KARSILASTIRMA>=20100101) and (i_i_g_t_KARSILASTIRMA<=20101231)  then     //5
                  begin
                      sartlar2('0','61',0);
                      prim_sarti2(4800,prim_gun_sayisi);
                      break;
                  end
                     else if (i_i_g_t_KARSILASTIRMA>=20110101) and (i_i_g_t_KARSILASTIRMA<=20111231)  then     //6
                  begin
                      sartlar2('0','61',0);
                      prim_sarti2(4900,prim_gun_sayisi);
                      break;
                  end
                     else if (i_i_g_t_KARSILASTIRMA>=20120101) and (i_i_g_t_KARSILASTIRMA<=20121231)  then     //7
                  begin
                      sartlar2('0','61',0);
                      prim_sarti2(5000,prim_gun_sayisi);
                      break;
                  end
                     else if (i_i_g_t_KARSILASTIRMA>=20130101) and (i_i_g_t_KARSILASTIRMA<=20131231)  then     //8
                  begin
                      sartlar2('0','61',0);
                      prim_sarti2(5100,prim_gun_sayisi);
                      break;
                  end
                     else if (i_i_g_t_KARSILASTIRMA>=20140101) and (i_i_g_t_KARSILASTIRMA<=20141231)  then     //9
                  begin
                      sartlar2('0','61',0);
                      prim_sarti2(5200,prim_gun_sayisi);
                      break;
                  end
                     else if (i_i_g_t_KARSILASTIRMA>=20150101) and (i_i_g_t_KARSILASTIRMA<=20151231)  then     //10
                  begin
                      sartlar2('0','61',0);
                      prim_sarti2(5300,prim_gun_sayisi);
                      break;
                  end
                     else if (i_i_g_t_KARSILASTIRMA>=20160101) then     //11
                  begin
                      sartlar2('0','61',0);
                      prim_sarti2(5400,prim_gun_sayisi);
                      break;
                  end;

                end;

           end;

  //Engelli emeklilik
  while True do
  begin

    if (CheckBox1.Checked=True) then
    begin
         if (i_i_g_t_KARSILASTIRMA<=19910805) then                                //1
         begin
           if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=59) then
           begin
             sartlar3('15',0);
             prim_sarti3(3600,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=60) and( Engelilik_Orani<=79) then
           begin
            sartlar3('15',0);
             prim_sarti3(3600,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=80) then
           begin
               sartlar3('15',0);
             prim_sarti3(3600,prim_gun_sayisi);
             exit;
           end;


         end


         else if (i_i_g_t_KARSILASTIRMA>=19910806) and (i_i_g_t_KARSILASTIRMA<=19940805)then        //2
         begin
             if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=59) then
           begin
             sartlar3('16',0);
             prim_sarti3(3760,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=60) and( Engelilik_Orani<=79) then
           begin
            sartlar3('15,8',0);
             prim_sarti3(3680,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=80) then
           begin
               sartlar3('15',0);
             prim_sarti3(3600,prim_gun_sayisi);
             exit;
           end;
         end

          else if (i_i_g_t_KARSILASTIRMA>=19940806) and (i_i_g_t_KARSILASTIRMA<=19970805) then          //3
          begin
             if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=59) then
           begin
             sartlar3('17',0);
             prim_sarti3(3920,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=60) and( Engelilik_Orani<=79) then
           begin
            sartlar3('16,4',0);
             prim_sarti3(3760,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=80) then
           begin
               sartlar3('15',0);
             prim_sarti3(3600,prim_gun_sayisi);
             exit;
           end;


          end

          else if (i_i_g_t_KARSILASTIRMA>=19970806) and (i_i_g_t_KARSILASTIRMA<=20000805) then          //4
          begin
             if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=59) then
           begin
             sartlar3('18',0);
             prim_sarti3(4080,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=60) and( Engelilik_Orani<=79) then
           begin
            sartlar3('17',0);
             prim_sarti3(3840,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=80) then
           begin
               sartlar3('15',0);
             prim_sarti3(3600,prim_gun_sayisi);
             exit;
           end;

           end


           else if (i_i_g_t_KARSILASTIRMA>=20000806) and (i_i_g_t_KARSILASTIRMA<=20030805) then            //5
          begin

                if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=59) then
           begin
             sartlar3('19',0);
             prim_sarti3(4240,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=60) and( Engelilik_Orani<=79) then
           begin
            sartlar3('17,8',0);
             prim_sarti3(3920,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=80) then
           begin
               sartlar3('15',0);
             prim_sarti3(3600,prim_gun_sayisi);
             exit;
           end;




          end

          else if (i_i_g_t_KARSILASTIRMA>=20030806) and (i_i_g_t_KARSILASTIRMA<=20080930) then              //6
          begin

                if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=59) then
           begin
             sartlar3('20',0);
             prim_sarti3(4400,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=60) and( Engelilik_Orani<=79) then
           begin
            sartlar3('18',0);
             prim_sarti3(4000,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=80) then
           begin
               sartlar3('15',0);
             prim_sarti3(3600,prim_gun_sayisi);
             exit;
           end;

          end

          else if (i_i_g_t_KARSILASTIRMA>=20081001) and (i_i_g_t_KARSILASTIRMA<=20081231) then            //1
          begin
             if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=49) then
           begin
             sartlar3('18',0);
             prim_sarti3(4100,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=50) and( Engelilik_Orani<=59) then
           begin
            sartlar3('16',0);
             prim_sarti3(3700,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=60) then
           begin
               sartlar3('15',0);
             prim_sarti3(3700,prim_gun_sayisi);
             exit;
           end;

          end


          else if (i_i_g_t_KARSILASTIRMA>=20090101) and (i_i_g_t_KARSILASTIRMA<=20091231) then            //2
         begin
            if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=49) then
           begin
             sartlar3('18',0);
             prim_sarti3(4200,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=50) and( Engelilik_Orani<=59) then
           begin
            sartlar3('16',0);
             prim_sarti3(3800,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=60) then
           begin
               sartlar3('15',0);
             prim_sarti3(3800,prim_gun_sayisi);
             exit;
           end;

        end
        else if (i_i_g_t_KARSILASTIRMA>=20100101) and (i_i_g_t_KARSILASTIRMA<=20101231) then                     //3
        begin
              if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=49) then
           begin
             sartlar3('18',0);
             prim_sarti3(4300,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=50) and( Engelilik_Orani<=59) then
           begin
            sartlar3('16',0);
             prim_sarti3(3900,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=60) then
           begin
               sartlar3('15',0);
             prim_sarti3(3900,prim_gun_sayisi);
             exit;
           end;


        end
        else if (i_i_g_t_KARSILASTIRMA>=20110101) and (i_i_g_t_KARSILASTIRMA<=20111231) then                     //4
         begin
                if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=49) then
           begin
             sartlar3('18',0);
             prim_sarti3(4400,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=50) and( Engelilik_Orani<=59) then
           begin
            sartlar3('16',0);
             prim_sarti3(4000,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=60) then
           begin
               sartlar3('15',0);
             prim_sarti3(3960,prim_gun_sayisi);
             exit;
           end;

         end

         else if (i_i_g_t_KARSILASTIRMA>=20120101) and (i_i_g_t_KARSILASTIRMA<=20121231) then                     //5
         begin
                if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=49) then
           begin
             sartlar3('18',0);
             prim_sarti3(4500,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=50) and( Engelilik_Orani<=59) then
           begin
            sartlar3('16',0);
             prim_sarti3(4100,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=60) then
           begin
               sartlar3('15',0);
             prim_sarti3(3960,prim_gun_sayisi);
             exit;
           end;

         end

         else if (i_i_g_t_KARSILASTIRMA>=20130101) and (i_i_g_t_KARSILASTIRMA<=20131231) then                     //6
         begin
                if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=49) then
           begin
             sartlar3('18',0);
             prim_sarti3(4600,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=50) and( Engelilik_Orani<=59) then
           begin
            sartlar3('16',0);
             prim_sarti3(4200,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=60) then
           begin
               sartlar3('15',0);
             prim_sarti3(3960,prim_gun_sayisi);
             exit;
           end;


         end

         else if (i_i_g_t_KARSILASTIRMA>=20140101) and (i_i_g_t_KARSILASTIRMA<=20141231) then                     //7
         begin
                if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=49) then
           begin
             sartlar3('18',0);
             prim_sarti3(4680,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=50) and( Engelilik_Orani<=59) then
           begin
            sartlar3('16',0);
             prim_sarti3(4300,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=60) then
           begin
               sartlar3('15',0);
             prim_sarti3(3960,prim_gun_sayisi);
             exit;
           end;


         end
         else if (i_i_g_t_KARSILASTIRMA>=20150101) then                     //8
         begin
                if ( Engelilik_Orani>=40)and ( Engelilik_Orani<=49) then
           begin
             sartlar3('18',0);
             prim_sarti3(4680,prim_gun_sayisi);
             exit;
           end
           else if ( Engelilik_Orani>=50) and( Engelilik_Orani<=59) then
           begin
            sartlar3('16',0);
             prim_sarti3(4320,prim_gun_sayisi);
             exit;

           end
           else if(Engelilik_Orani>=60) then
           begin
               sartlar3('15',0);
             prim_sarti3(3960,prim_gun_sayisi);
             exit;
           end;






         end;

    end
    else
    begin
      Exit;
    end;




  end;



end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
edit3.Clear;
Edit4.Clear;
Edit5.Clear;

Edit5.Enabled:=False;

CheckBox1.Checked:=False;

RadioButton1.Checked:=False;
RadioButton2.Checked:=False;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
if (CheckBox1.Checked=True) then
begin
  Edit5.Enabled :=True;
end
else
begin
  Edit5.Enabled:=False;
  Edit5.Clear;
end;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
Form2.Position:=poScreenCenter;
Form2.BorderStyle:=bsToolWindow;

Edit1.MaxLength:=4;
Edit2.MaxLength:=2;
Edit3.MaxLength:=2;
Edit4.MaxLength:=4;
Edit5.MaxLength:=3;

Edit2.Hint:='tek basamaklı günün başına sıfır getiriniz';
Edit2.ShowHint:=True;

Edit3.Hint:='İlk işe giriş tarihinin ay değerini giriniz';
Edit3.ShowHint:=True;

Edit4.Hint:='İlk işe giriş tarihinin yıl değerini giriniz';
Edit4.ShowHint:=True;

Edit5.Enabled:=False;

Edit1.Hint:='Lütfen prim sayınızı giriniz';
Edit1.ShowHint:=True;


end;

end.
