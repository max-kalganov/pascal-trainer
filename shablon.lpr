program shablon;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, Windows
  { you can add units after this };

var  q,a,b,c,t,g,i,j,o,p,r,procent:integer ;  h:real; flag:boolean;
mas:array [1..5] of real ;
questions: array [1..17, 1..2] of string;

label 1,4,5,6;


procedure InitQuestions ();
begin
     questions[1, 1] := 'var';
     questions[1, 2] := 'спомощью этой фунции вы объявляете переменную';
     questions[2, 1] := 'while';
     questions[2, 2] := 'спомощью этой фунции вы объявляете цикл while';

{
            if h=3 then
              write('for-');
            if h=3.5 then
              writeln('спомощью этой фунции вы объявляете цикл for') ;
            if h=4 then
              write('then-');
            if h=4.5 then
              writeln('программа заходит в это ответвление ,если условие if верно ') ;
            if h=5 then
              write('else-');
            if h=5.5 then
              writeln('программа заходит в это ответвление ,если условие if неверно') ;
            if h=6 then
              write('mas:array -');
            if h=6.5 then
              writeln('эта фунция объявляет массив') ;
            if h=7 then
              write('write-');
            if h=7.5 then
              writeln('эта фунция выводит информ. в ковычках (" привет "') ;
            if h=8 then
              write('read-');
            if h=8.5 then
              writeln('эта фунция вводит информ.)') ;
            if h=9 then
              write('...ln-');
            if h=9.5 then
              writeln('это суффикс, который ставится после слова write ,read для того, чтобы перенести курсор на новую строку  ') ;
            if h=10 then
              write('end-');
            if h=10.5 then
              writeln('эта фунция закрывает что-нибудь(раздел ,программу) .Подсказка :каждому begin соответствует свой end') ;
            if h=11 then
              write('begin-');
            if h=11.5 then
              writeln('эта фунция стоит в начале чего-нибудь(раздела ,программы)') ;
            if h=12 then
              write('sqrt-');
            if h=12.5 then
              writeln('эта фунция выводит корень числа') ;
            if h=13 then
              write('sqr-');
            if h=13.5 then
              writeln('эта фунция возводит в квадрат ') ;
            if h=14 then
              write('div-');
            if h=14.5 then
              writeln('эта фунция делает') ;
            if h=15 then
              write('mod-');
            if h=15.5 then
              writeln('эта фунция делает') ;
            if h=16 then
              write('exit-');
            if h=16.5 then
              writeln('эта фунция заканчивает программу ') ;
            if h=17 then
              write('random-');
            if h=17.5 then
              writeln('эта фунция выводит любое число из задоного раздела ') ;
              }

end;

function FormatQuestion (anQuestion: String) : String;
begin
     Result := copy(anQuestion + '             ', 1, 10);
end;



begin

     //1. Заполняем список вопросами
     InitQuestions ();

     writeln (FormatQuestion(questions[1, 1]), ' - ', questions[1, 2]);
     writeln (FormatQuestion(questions[2, 1]), ' - ', questions[2, 2]);

     readln();
     exit;


 writeln ('Здесь я и Макс попробуем помочь вам с пониманием Pascal ,если вы нашли какую-нибудь ошибку обращайтесь к нам )))');
    c:=1;
    flag := false;
    p:=1;
 while c=1 do
 begin
 o:=0;
      writeln ('');
      write ('Сейчас выберите то,что вы хотели бы узнать')  ;
      writeln ('(Во всей программе вам нужно выбирать только цифры) ');
      1:writeln('');
      writeln ('1)обозначения  2)проверка выученного в разделе обозначения   3)Решение задач 4)Выход');
      read(q);
      writeln('');
         if q=4 then exit;

      if q=1 then
      begin
      h:=0.5;
      g:=1;
         while g=1 do
         begin
          h:=h+0.5;
          4:
            if h=1 then
              write('var-');
            if h=1.5 then
              writeln('спомощью этой фунции вы объявляете переменную ') ;
            if h=2 then
              write('while-');
            if h=2.5 then
              writeln('спомощью этой фунции вы объявляете  цикл while') ;
            if h=3 then
              write('for-');
            if h=3.5 then
              writeln('спомощью этой фунции вы объявляете цикл for') ;
            if h=4 then
              write('then-');
            if h=4.5 then
              writeln('программа заходит в это ответвление ,если условие if верно ') ;
            if h=5 then
              write('else-');
            if h=5.5 then
              writeln('программа заходит в это ответвление ,если условие if неверно') ;
            if h=6 then
              write('mas:array -');
            if h=6.5 then
              writeln('эта фунция объявляет массив') ;
            if h=7 then
              write('write-');
            if h=7.5 then
              writeln('эта фунция выводит информ. в ковычках (" привет "') ;
            if h=8 then
              write('read-');
            if h=8.5 then
              writeln('эта фунция вводит информ.)') ;
            if h=9 then
              write('...ln-');
            if h=9.5 then
              writeln('это суффикс, который ставится после слова write ,read для того, чтобы перенести курсор на новую строку  ') ;
            if h=10 then
              write('end-');
            if h=10.5 then
              writeln('эта фунция закрывает что-нибудь(раздел ,программу) .Подсказка :каждому begin соответствует свой end') ;
            if h=11 then
              write('begin-');
            if h=11.5 then
              writeln('эта фунция стоит в начале чего-нибудь(раздела ,программы)') ;
            if h=12 then
              write('sqrt-');
            if h=12.5 then
              writeln('эта фунция выводит корень числа') ;
            if h=13 then
              write('sqr-');
            if h=13.5 then
              writeln('эта фунция возводит в квадрат ') ;
            if h=14 then
              write('div-');
            if h=14.5 then
              writeln('эта фунция делает') ;
            if h=15 then
              write('mod-');
            if h=15.5 then
              writeln('эта фунция делает') ;
            if h=16 then
              write('exit-');
            if h=16.5 then
              writeln('эта фунция заканчивает программу ') ;
            if h=17 then
              write('random-');
            if h=17.5 then
              writeln('эта фунция выводит любое число из задоного раздела ') ;
           if o<>0 then goto 6;

            if flag=true then   goto 5;


              if h=17.5 then g:=2;
         end;
         goto 1;
      end;

      if q=2 then
      begin
           writeln ('Выбирете правильный вариант:');
  //       while procent<>70 do
   //      begin
           flag:=true;
           h:=random (17)+1;
           goto 4;
           5:
           writeln('');
           h:=h+0.5;
           while p<>5 do                   //записываю цифры в массив ,для того чтобы потоом их перетусовать
           begin
             r:=random (17)+1;
             mas[p]:=r+0.5;
             for j:=1 to 5 do
             begin
               if (mas[p]=mas[j]) and (j<>p) or (mas[p]=h) then
               begin
                 p:=p-1;
                 break;
               end;
             end;
             p:=p+1;
           end;

           r:=random (5) +1;
           mas[5]:=mas[r];
           mas[r]:=h;
           for i:=1 to 5 do
           begin
             o:=1;
             h:=mas[i];
             write (i,') ');
             goto 4;
             6:

           end;
       {      while p<>6 do
         begin
         6: o:=random(5)+1;                       //выбирает среди вариантов ответов любой
            h:=mas[o];
            for j:=1 to 5 do                       //проверяет не было ли такого же варианта
              begin
                 if (h=mas[j]) and (o<>j) then
                   begin
                     p:=p-1;
                     break;
                   end;
              end;
            goto 4;
            p:=p+1;
         end; }

  //       end;
         flag:=false;
         goto 1;
      end;

      if q=3 then
      begin
         writeln('Пока ничего') ;

         goto 1;
      end;


 end;






end.

