program tema11task1;
var
  answer:char;
  a:array[1..20] of integer;
  i:integer;
begin
  WriteLn('Программа генерирует случайный массив из 20 чисел и выводит их на экран в прямом и обратном порядке.');
  repeat
  randomize;
  WriteLn;
  for i:=0 to 19 do a[i]:=random(100);
  WriteLn('В прямом порядке: ');
  for i:=0 to 19 do Write(a[i],' ');
  WriteLn;
  WriteLn('В обратном порядке: ');
  for i:=19 downto 0 do Write(a[i],' ');
  WriteLn;
  Write('Запустить ещё раз? (y/n): ');
  Read(answer);
  WriteLn;
  until answer = 'n';
end.

