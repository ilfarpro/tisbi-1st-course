program tema9task3;
var
  menu:byte; i:integer;

begin
  WriteLn('Эта программа выводит на экран все двузначные чётные числа');
  repeat
    WriteLn('1. Запустить программу');
    WriteLn('2. Выход');
    Write('Мой ответ: ');
    Read(menu);
    case menu of
    1: begin
      for i:=10 to 99 do begin
        if i mod 2 = 0 then Write(' ',i);
      end;
    end;
    end;
    WriteLn;
  until menu=2;
end.

