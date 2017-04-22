program team12task1;
const n=10; m=20;
  var
    a:array[1..n, 1..m] of integer;
    i,j,x:integer;
    answer:char;
    z:boolean;
begin
  randomize;
  repeat
    for i:=1 to n do begin
        for j:=1 to m do begin a[i,j]:=random(100);
          Write(a[i,j]:6);
        end;
        WriteLn;
    end;
    WriteLn;
    Write('Введите искомое число: ');
    ReadLn(x);
    z:=false;
    for i:=1 to n do
        for j:=1 to m do begin
          if a[i,j]=x then begin z:=true;
          WriteLn('Координаты числа: i=',i,' j=',j)
          end;
        end;
    if z=false then write('Искомое число не найдено.');
    Write('Запустить ещё раз? (y/n): ');
    ReadLn(answer);
  until answer='n';
end.

