program tema8task8;
var
   symbol:char; menu:byte;
   code:integer;
begin
  repeat
    WriteLn('Программа преобразует символ в его код и код в символ');
    WriteLn('1. Start program');
    WriteLn('2. Exit');
    Write('Your choose: ');
    ReadLn(menu);
    case menu of
    1:begin
      Write('Пожалуйста, введите символ: ');
      ReadLn(symbol);
      WriteLn('Код введённого символа:',Ord(symbol));
      WriteLn;
      Write('Нажмите Enter, чтобы продолжить');
      ReadLn;
      Write('Введите код символа: ');
      ReadLn(code);
      Writeln ('Код соответсвует символу: ',Chr(code));
    end;
    end;
  until menu=2;
end.

