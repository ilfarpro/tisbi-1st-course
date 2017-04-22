program tema12task4;
const n=10; m=20;
  var
    a:array[1..n, 1..m] of integer;
    i,j,z,k,min,max:integer;
    answer:char;
begin
  randomize;
  repeat
    for i:=1 to n do begin
        for j:=1 to m do begin a[i,j]:=random(65536)-32768;
          Write(a[i,j]:9);
        end;
        WriteLn;
    end;
    WriteLn;
    min:=32768;
    max:=-32768;
    for i:=1 to n do
        for j:=1 to m do begin
          if a[i,j]<min then begin
            min:=a[i,j];
            z:=i;
            k:=j;
          end;
        end;
    WriteLn('Минимальное число: ',min,', расположено в i=',z,' j=',k);
    for i:=1 to n do
        for j:=1 to m do begin
          if a[i,j]>max then begin
            max:=a[i,j];
            z:=i;
            k:=j;
          end;
        end;
    WriteLn('Максимальное число: ',max,', расположено в i=',z,' j=',k);
    Write('Запустить ещё раз? (y/n): ');
    ReadLn(answer);
    WriteLn;
  until answer='n';
end.

