program tema11task4;
const n=100;
var
  a:array[1..n] of integer;
  i,x:integer;
  answer:char;
begin
  randomize;
  repeat
  for i:=1 to n do a[i]:=random(201)-100;
  WriteLn;
  WriteLn('Исходный массив: ');
  for i:=1 to n do Write(a[i],' ');
  WriteLn;
  Write('Введите число, номер которого нужно найти: ');
  ReadLn(x);
  i:=100;
  while (i>0) and (a[i]<>x) do i:=i-1;
  if i<1 then WriteLn('Такого числа нет')
  else WriteLn('Номер порядкого числа: ',i);
  Write('Запустить ещё раз? (y/n): ');
  Read(answer);
  until answer='n';
end.

