{Эта программа умеет проверять тестовые работы студентов.}

program FridayHomework;
const n=3;{количество вопросов в тесте}  m=40;{максимальное количество студентов}
  v = 32; {количество вариантов}
type student = record  {описываю запись содержащую информацию о  студенте}
fio:string[50];
hisTest:record {описываю запись содержащую информацию о тестовой работе студента}
answers:array[1..n] of integer; {возможные варианты ответов: 1, 2, 3, 4.}
end;
end;
true_answers = record
tr_answers:array[1..n] of byte;
end;
  var
    students:array[1..m] of student;
    real_answers:array[1..v] of true_answers;
    i,j:integer;
    k,ss:byte;
begin
  repeat
    WriteLn;
    WriteLn('1. Зарегистрировать студентов');
    WriteLn('2. Ввести правильные ответы');
    WriteLn('3. Ввести ответы студента и проверить');
    WriteLn('4. Выход');
    Write('Я выбираю: ');
    ReadLn(k);
    WriteLn;
    case k of
    1:begin
      WriteLn('Добро пожаловать в интерфейс регистрации студентов.');
      WriteLn('Внимание! Максимальное число добавляемых студентов - ',m);
      WriteLn('Сколько студентов вы хотите добавить?');
      Write('Мой ответ: ');
      ReadLn(ss);
      for i:=1 to ss do begin
        WriteLn('Регистрируем ',i,'-го студента');
        Write('ФИО студента: ');
        ReadLn(students[i].fio);
      end;
      WriteLn;
      WriteLn('Все студенты успешно зарегистрированы.');
      end;
    2: begin
        WriteLn('Добро пожаловать в интерфейс ввода правильных ответов.');
        WriteLn('В данном тесте ',n,' вопросов');
        Write('Вводите правильные ответы через пробел: ');
        for i:=1 to n do Read(real_answers[i].tr_answers[i]);
        WriteLn;
        WriteLn('Все данные успешно приняты.');
    end;
    3:begin
      WriteLn('В базе хранится информация о ',ss,' студентах: ');
        for i:=1 to ss do WriteLn(i,'. ',students[i].fio);
          Write('Выберите студента: ');
          ReadLn(j);
          Write('Вводите ответы студента через пробел: ');
          for i:=1 to n do Read(students[j].hisTest.answers[i]);
          WriteLn;
          WriteLn;
          WriteLn('Все данные успешно приняты. Проверяю.');
          WriteLn;
          for i:=1 to n do begin {вывожу результаты проверки}
                Write('Вопрос №',i,': ');
          if students[j].hisTest.answers[i] = real_answers[i].tr_answers[i] then
          WriteLn('верно') else WriteLn('неверно');
          end;
        end;
    end;
  until k = 4;
end.

