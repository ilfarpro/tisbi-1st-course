program tema12task5;
const n=5;
  var
    a:array[1..n, 1..n] of integer;
    i,j,k:integer;
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
    k:=0;
    for i:=1 to n do begin
      if a[i,i]>0 then k:=k+1;
      if a[i,n-i+1]>0 then k:=k+1;
    end;
    for i:=2 to n-1 do begin
      if a[i,i]>0 then k:=k+1;
      if a[i,n]>0 then k:=k+1;
    end;
    for j:=2 to n-1 do begin
      if a[i,j]>0 then k:=k+1;
      if a[n,j]>0 then k:=k+1;
    end;
    WriteLn;
    WriteLn('Количество положительных чисел: ',k);
    Write('Запустить ещё раз? (y/n): ');
    ReadLn(answer);
    WriteLn;
  until answer='n';
end.

