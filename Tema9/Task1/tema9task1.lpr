program tema9task1;
var
   menu:byte; i:integer;
begin
  WriteLn('Эта программа выводит на экран в прямом и обратном порядке первые 130 натуральных чисел');
  repeat
    WriteLn('1. Вывести в прямом порядке');
    WriteLn('2. Вывести в обратном порядке');
    WriteLn('3. Выход');
    Write('Мой ответ: ');
    ReadLn(menu);
    case menu of
    1: for i:=1 to 130 do Write(' ',i);
    2: for i:=130 downto 1 do Write(' ',i);
    end;
    WriteLn;
    WriteLn;
    WriteLn('Нажмите Enter, чтобы продолжить');
    ReadLn;
  until menu=3;
end.

