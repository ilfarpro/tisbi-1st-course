program team12task3;
const n=10; m=15;
  var
    a:array[1..n, 1..m] of integer;
    i,j,z,k:integer;
    answer:char;
begin
  randomize;
  repeat
    for i:=1 to n do begin
        for j:=1 to m do begin a[i,j]:=random(101)-50;
          Write(a[i,j]:6);
        end;
        WriteLn;
    end;
    WriteLn;
    k:=0;
    z:=0;
    for i:=1 to n do
        for j:=1 to m do begin
          if (a[i,j]<0) and (a[i,j]<>0) then k:=k+1;
        end;
    for i:=1 to n do
        for j:=1 to m do begin
          if (a[i,j]>0) and (a[i,j]<>0) then z:=z+1;
        end;
    WriteLn('Количество отрицательных элементов: ',k);
    WriteLn('Количество положительных элементов: ',z);
    Write('Запустить ещё раз? (y/n): ');
    ReadLn(answer);
    WriteLn;
  until answer='n';
end.

