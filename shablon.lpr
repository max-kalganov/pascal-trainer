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


  {Процедура инициализации масива вопросов}
  procedure InitQuestions();
  begin
    Assign(f_in, 'questions.txt');
    reset(f_in);
    for i := 1 to 17 do  // кол-во вопросов
    begin
      for j := 1 to 2 do
      begin
        readln(f_in, questions[i, j]);
      end;
    end;
    Close(f_in);
  end;

  {Функция красивого форматирования вопросов}
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

  {Основная программа}
begin

  writeln('╧ЁштхЄ!');


  writeln('Здесь я и Макс попробуем помочь вам с пониманием Pascal ,если вы нашли какую-нибудь ошибку обращайтесь к нам )))');
  Write('Сейчас выберите то,что вы хотели бы узнать');
  writeln('(Во всей программе вам нужно выбирать только цифры) ');

  c := 1;
  flag := False;

  while c = 1 do
  begin
    InitQuestions();
    flag := True;
    writeln('');
    writeln('');
    writeln('1)операторы  2)проверка выученных операторов   3)Решение задач 4)Выход');

    Read(q);

    clrscr;     // Команда очистки экрана

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
        'Если вы хотите выйти из раздела,вам нужно ввести вместо ответа число 12345.');
      writeln('');
      writeln('Что обозначает данный оператор:');
      percent := 0;
      while (percent < 70) or (vse < 10) do
      begin
        if vse > 50 then
        begin
          writeln('Вам нужно ещё повторить понятия .');
          break;
        end;


        //Выбираем вопрос
        randomize;
        question := random(17) + 1;

        // writeln('Что обозначает данный оператор:');
        writeln('');
        writeln(questions[question, 1]);
        writeln('');

        p := 1;
        answer := question;

        while p <> 5 do
          //записываю цифры в массив ,для того чтобы потоом их перетусовать
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
        Write('Ваш выбор: ');
        readln(answer2);
        if answer2 = 12345 then
          break;
        if answer2 = number then
        begin
          right := right + 1;
          writeln('Вы ответили правильно.');
        end
        else
          writeln('Вы ответили не правильно ,правильный ответ:', number, ')');

        vse := vse + 1;
        if right <> 0 then
          percent := right / vse * 100
        else
          percent := 0;
        Str(percent: 6: 1, S);
        writeln('Процент правильных ответов: ', S, '%');
        writeln(
          'Введите любое число ,для показа следующего оператора.');
        Read(h);
        clrscr;

        writeln('Следующий оператор: ');

      end;
      writeln(
        'Вы знаете достаточно для того, чтобы перейти к следующему разделу.');

    end;

    if q = 3 then
    begin
      writeln('Пока ничего');
    end;

  end;

end.
