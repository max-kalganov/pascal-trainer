program shablon;

{$mode objfpc}{$H+}{$R+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Classes,
  Windows,
//  Crt, test_form { you can add units after this };
  Crt;

var
  answer, number, q, a, b, c, t, g, i, j, o, p, r, k, answer2, question,
  vse, right: integer;
  h, percent: real;
  flag: boolean;
  mas: array [1..5] of integer;
  questions: array [1..17, 1..2] of string;
  f_in: Text;
  S: string;
//  myForm: test_form;


label
  1, 4, 5, 6;


  {��楤�� ���樠����樨 ��ᨢ� ����ᮢ}
  procedure InitQuestions();
  begin
    Assign(f_in, 'questions.txt');
    reset(f_in);
    for i := 1 to 17 do  // ���-�� ����ᮢ
    begin
      for j := 1 to 2 do
      begin
        readln(f_in, questions[i, j]);
      end;
    end;
    Close(f_in);
  end;

  {�㭪�� ��ᨢ��� �ଠ�஢���� ����ᮢ}
  function FormatQuestion(anQuestion: string): string;
  begin
    Result := copy(anQuestion + '             ', 1, 10);
  end;

  procedure PrintAllQuestions;
  begin
    for i := 1 to 17 do
    begin
      Write(i, ')');
      writeln(FormatQuestion(questions[i, 1]), ' - ', questions[i, 2]);
    end;
  end;

  {�᭮���� �ணࠬ��}
begin

  writeln('������!');


  writeln('����� � � ���� ���஡㥬 ������ ��� � ���������� Pascal ,�᫨ �� ��諨 �����-����� �訡�� ���頩��� � ��� )))');
  Write('����� �롥�� �,�� �� �⥫� �� 㧭���');
  writeln('(�� �ᥩ �ணࠬ�� ��� �㦭� �롨��� ⮫쪮 ����) ');

  c := 1;
  flag := False;

  while c = 1 do
  begin
    InitQuestions();
    flag := True;
    writeln('');
    writeln('');
    writeln('1)�������  2)�஢�ઠ ���祭��� �����஢   3)��襭�� ����� 4)��室');

    Read(q);

    clrscr;     // ������� ���⪨ �࠭�

    writeln('');
    if q = 4 then
      exit;

    if q = 1 then
    begin
      PrintAllQuestions;

    end;

    if q = 2 then
    begin
      writeln(
        '�᫨ �� ��� ��� �� ࠧ����,��� �㦭� ����� ����� �⢥� �᫮ 12345.');
      writeln('');
      writeln('�� ������砥� ����� ������:');
      percent := 0;
      while (percent < 70) or (vse < 10) do
      begin
        if vse > 50 then
        begin
          writeln('��� �㦭� ��� ������� ������ .');
          break;
        end;


        //�롨ࠥ� �����
        randomize;
        question := random(17) + 1;

        // writeln('�� ������砥� ����� ������:');
        writeln('');
        writeln(questions[question, 1]);
        writeln('');

        p := 1;
        answer := question;

        while p <> 5 do
          //�����뢠� ���� � ���ᨢ ,��� ⮣� �⮡� ��⮮� �� �����ᮢ���
        begin
          mas[p] := random(17) + 1;
          for j := 1 to p - 1 do
          begin
            if (mas[p] = mas[j]) or (mas[p] = answer) then
            begin
              p := p - 1;
              break;
            end;
          end;
          p := p + 1;
        end;
        number := random(5) + 1;
        mas[5] := mas[number];
        mas[number] := answer;
        for i := 1 to 5 do
        begin
          Write(i, ')');
          writeln(questions[mas[i], 2]);
        end;
        writeln('');
        Write('��� �롮�: ');
        readln(answer2);
        if answer2 = 12345 then
          break;
        if answer2 = number then
        begin
          right := right + 1;
          writeln('�� �⢥⨫� �ࠢ��쭮.');
        end
        else
          writeln('�� �⢥⨫� �� �ࠢ��쭮 ,�ࠢ���� �⢥�:', number, ')');

        vse := vse + 1;
        if right <> 0 then
          percent := right / vse * 100
        else
          percent := 0;
        Str(percent: 6: 1, S);
        writeln('��業� �ࠢ����� �⢥⮢: ', S, '%');
        writeln(
          '������ �� �᫮ ,��� ������ ᫥���饣� ������.');
        Read(h);
        clrscr;

        writeln('������騩 ������: ');

      end;
      writeln(
        '�� ����� �����筮 ��� ⮣�, �⮡� ��३� � ᫥���饬� ࠧ����.');

    end;

    if q = 3 then
    begin
      writeln('���� ��祣�');
    end;

  end;

end.
