program tema12task6;
const n=5;
  var
    a:array[1..n, 1..n] of integer;
    i,j,sum:integer;
    answer:char;
begin
  randomize;
  repeat
    for i:=1 to n do begin
        for j:=1 to n do begin a[i,j]:=random(201)-100;
          Write(a[i,j]:6);
        end;
        WriteLn;
    end;
    WriteLn;
    sum:=0;
    for i:=1 to n do begin
        for j:=1+i to n do begin
        sum:=sum+a[i,j];
        end;
    end;

    WriteLn;
    WriteLn('Сумма элементов выше главной диагонали: ',sum);
    Write('Запустить ещё раз? (y/n): ');
    ReadLn(answer);
    WriteLn;
  until answer='n';
end.

