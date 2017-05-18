program tema11task5;
const n=30;
var
  a:array[1..n] of integer;
  i,x:integer;
  answer:char;
  z:boolean;
begin
  randomize;
  repeat
    for i:=1 to n do begin
      a[i]:=random(101);
      Write(a[i],' ');
    end;
    WriteLn;
    Write('Введите число, которое хотите найти: ');
    ReadLn(x);
    z:=false;
    for i:=1 to n do begin
        if a[i]=x then begin
          WriteLn('Номер элемента: ',i);
          z:=true;
        end;
    end;
    if z=false then WriteLn('Искомое числло не найдено.');
    Write('Хотите запустить ещё раз? (Y/n): ');
    ReadLn(answer);
  until answer='n';
end.

