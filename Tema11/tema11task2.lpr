program tema11task2;
var
  answer:char;
  a:array[1..50] of integer;
  sum,i:integer;
begin
  WriteLn('Программа генерирует случайный массив из 50 чисел и выводит на экран их сумму.');
  repeat
  sum:=0;
  randomize;
  WriteLn;
  for i:=1 to 50 do a[i]:=random(50);
  WriteLn('Элементы массива: ');
  for i:=1 to 50 do Write(a[i],' ');
  WriteLn;
  for i:=1 to 50 do sum:=sum+a[i];
  WriteLn('Сумма всех элементов массива: ',sum);
  WriteLn;
  Write('Запустить ещё раз? (y/n): ');
  Read(answer);
  WriteLn;
  until answer = 'n';
end.

