program tema11task6;
const n=50;
var
   a:array[1..n] of integer;
   i,x,min:integer;
   answer:char;
begin
  randomize;
  repeat
    for i:=1 to n do begin
      a[i]:=random(31);
      Write(a[i],' ');
    end;
    WriteLn;
    min:=30;
    x:=0;
    for i:=1 to n do begin
      if a[i]<min then begin min:=a[i];
      x:=i;
      end;
    end;
    WriteLn('Минимальное число ',min,' находится на позиции ',x);
    Write('Хотите запустить ещё раз? (Y/n): ');
    ReadLn(answer);
    WriteLn;
  until answer='n';
end.

