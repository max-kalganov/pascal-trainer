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
     questions[1, 2] := 'ᯮ����� �⮩ ��樨 �� ����� ��६�����';
     questions[2, 1] := 'while';
     questions[2, 2] := 'ᯮ����� �⮩ ��樨 �� ����� 横� while';

{
            if h=3 then
              write('for-');
            if h=3.5 then
              writeln('ᯮ����� �⮩ ��樨 �� ����� 横� for') ;
            if h=4 then
              write('then-');
            if h=4.5 then
              writeln('�ணࠬ�� ��室�� � �� �⢥⢫���� ,�᫨ �᫮��� if ��୮ ') ;
            if h=5 then
              write('else-');
            if h=5.5 then
              writeln('�ணࠬ�� ��室�� � �� �⢥⢫���� ,�᫨ �᫮��� if ����୮') ;
            if h=6 then
              write('mas:array -');
            if h=6.5 then
              writeln('�� ���� ����� ���ᨢ') ;
            if h=7 then
              write('write-');
            if h=7.5 then
              writeln('�� ���� �뢮��� ����. � ����窠� (" �ਢ�� "') ;
            if h=8 then
              write('read-');
            if h=8.5 then
              writeln('�� ���� ������ ����.)') ;
            if h=9 then
              write('...ln-');
            if h=9.5 then
              writeln('�� ���䨪�, ����� �⠢���� ��᫥ ᫮�� write ,read ��� ⮣�, �⮡� ��७��� ����� �� ����� ��ப�  ') ;
            if h=10 then
              write('end-');
            if h=10.5 then
              writeln('�� ���� ����뢠�� ��-�����(ࠧ��� ,�ணࠬ��) .���᪠��� :������� begin ᮮ⢥����� ᢮� end') ;
            if h=11 then
              write('begin-');
            if h=11.5 then
              writeln('�� ���� �⮨� � ��砫� 祣�-�����(ࠧ���� ,�ணࠬ��)') ;
            if h=12 then
              write('sqrt-');
            if h=12.5 then
              writeln('�� ���� �뢮��� ��७� �᫠') ;
            if h=13 then
              write('sqr-');
            if h=13.5 then
              writeln('�� ���� �������� � ������ ') ;
            if h=14 then
              write('div-');
            if h=14.5 then
              writeln('�� ���� ������') ;
            if h=15 then
              write('mod-');
            if h=15.5 then
              writeln('�� ���� ������') ;
            if h=16 then
              write('exit-');
            if h=16.5 then
              writeln('�� ���� �����稢��� �ணࠬ�� ') ;
            if h=17 then
              write('random-');
            if h=17.5 then
              writeln('�� ���� �뢮��� �� �᫮ �� �������� ࠧ���� ') ;
              }

end;

function FormatQuestion (anQuestion: String) : String;
begin
     Result := copy(anQuestion + '             ', 1, 10);
end;



begin

     //1. ������塞 ᯨ᮪ ����ᠬ�
     InitQuestions ();

     writeln (FormatQuestion(questions[1, 1]), ' - ', questions[1, 2]);
     writeln (FormatQuestion(questions[2, 1]), ' - ', questions[2, 2]);

     readln();
     exit;


 writeln ('����� � � ���� ���஡㥬 ������ ��� � ���������� Pascal ,�᫨ �� ��諨 �����-����� �訡�� ���頩��� � ��� )))');
    c:=1;
    flag := false;
    p:=1;
 while c=1 do
 begin
 o:=0;
      writeln ('');
      write ('����� �롥�� �,�� �� �⥫� �� 㧭���')  ;
      writeln ('(�� �ᥩ �ணࠬ�� ��� �㦭� �롨��� ⮫쪮 ����) ');
      1:writeln('');
      writeln ('1)������祭��  2)�஢�ઠ ���祭���� � ࠧ���� ������祭��   3)��襭�� ����� 4)��室');
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
              writeln('ᯮ����� �⮩ ��樨 �� ����� ��६����� ') ;
            if h=2 then
              write('while-');
            if h=2.5 then
              writeln('ᯮ����� �⮩ ��樨 �� �����  横� while') ;
            if h=3 then
              write('for-');
            if h=3.5 then
              writeln('ᯮ����� �⮩ ��樨 �� ����� 横� for') ;
            if h=4 then
              write('then-');
            if h=4.5 then
              writeln('�ணࠬ�� ��室�� � �� �⢥⢫���� ,�᫨ �᫮��� if ��୮ ') ;
            if h=5 then
              write('else-');
            if h=5.5 then
              writeln('�ணࠬ�� ��室�� � �� �⢥⢫���� ,�᫨ �᫮��� if ����୮') ;
            if h=6 then
              write('mas:array -');
            if h=6.5 then
              writeln('�� ���� ����� ���ᨢ') ;
            if h=7 then
              write('write-');
            if h=7.5 then
              writeln('�� ���� �뢮��� ����. � ����窠� (" �ਢ�� "') ;
            if h=8 then
              write('read-');
            if h=8.5 then
              writeln('�� ���� ������ ����.)') ;
            if h=9 then
              write('...ln-');
            if h=9.5 then
              writeln('�� ���䨪�, ����� �⠢���� ��᫥ ᫮�� write ,read ��� ⮣�, �⮡� ��७��� ����� �� ����� ��ப�  ') ;
            if h=10 then
              write('end-');
            if h=10.5 then
              writeln('�� ���� ����뢠�� ��-�����(ࠧ��� ,�ணࠬ��) .���᪠��� :������� begin ᮮ⢥����� ᢮� end') ;
            if h=11 then
              write('begin-');
            if h=11.5 then
              writeln('�� ���� �⮨� � ��砫� 祣�-�����(ࠧ���� ,�ணࠬ��)') ;
            if h=12 then
              write('sqrt-');
            if h=12.5 then
              writeln('�� ���� �뢮��� ��७� �᫠') ;
            if h=13 then
              write('sqr-');
            if h=13.5 then
              writeln('�� ���� �������� � ������ ') ;
            if h=14 then
              write('div-');
            if h=14.5 then
              writeln('�� ���� ������') ;
            if h=15 then
              write('mod-');
            if h=15.5 then
              writeln('�� ���� ������') ;
            if h=16 then
              write('exit-');
            if h=16.5 then
              writeln('�� ���� �����稢��� �ணࠬ�� ') ;
            if h=17 then
              write('random-');
            if h=17.5 then
              writeln('�� ���� �뢮��� �� �᫮ �� �������� ࠧ���� ') ;
           if o<>0 then goto 6;

            if flag=true then   goto 5;


              if h=17.5 then g:=2;
         end;
         goto 1;
      end;

      if q=2 then
      begin
           writeln ('�롨�� �ࠢ���� ��ਠ��:');
  //       while procent<>70 do
   //      begin
           flag:=true;
           h:=random (17)+1;
           goto 4;
           5:
           writeln('');
           h:=h+0.5;
           while p<>5 do                   //�����뢠� ���� � ���ᨢ ,��� ⮣� �⮡� ��⮮� �� �����ᮢ���
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
         6: o:=random(5)+1;                       //�롨ࠥ� �।� ��ਠ�⮢ �⢥⮢ ��
            h:=mas[o];
            for j:=1 to 5 do                       //�஢���� �� �뫮 �� ⠪��� �� ��ਠ��
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
         writeln('���� ��祣�') ;

         goto 1;
      end;


 end;






end.

