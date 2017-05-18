program tema11task3;
var
  answer:char;
  a:array[1..10] of integer;
  sum,i,z:integer;
begin
  WriteLn('Программа принимает ввод 10 элементов массива и выводит их сумму, сумму равноудалённых');
  repeat
  sum:=0;
  Write('Введите 10 элементов массива через пробел: ');
  for i:=1 to 10 do Read(a[i]);
  for i:=1 to 10 do sum:=sum+a[i];
  WriteLn;
  WriteLn('Данные приняты. Нажмите Enter, чтобы продолжить');
  ReadLn;
  WriteLn('Сумма всех элементов массива: ',sum);
  WriteLn;
  z:=a[1]+a[10];
  for i:=1 to 10 do begin
  WriteLn('Сумма равноудалённых: ',z);
  z:=a[i+1]+a[10-i];
  end;
  WriteLn;
  Write('Запустить ещё раз? (y/n): ');
  Read(answer);
  WriteLn;
  until answer = 'n';
end.

