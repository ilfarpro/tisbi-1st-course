program tema12task7;
const diapazon=25; oformlenie=6;
  n=10; m=20;
var
  a:array[1..n, 1..m] of integer;
  i,j,k,max,min:integer;
  answer:char;
  sr:real;
begin
  repeat
    {генерирую и вывожу матрицу}
    for i:=1 to n do begin
        for j:=1 to m do begin a[i,j]:=random(diapazon*2+1)-diapazon;
          Write(a[i,j]:oformlenie);
        end;
        WriteLn;
    end;
    {тут начинается главный алгоритм}
    for i:=1 to n do begin
        min:=a[i,1];
        max:=a[i,1];
        sr:=0;
    for j:=1 to m do begin
        if (a[i,j]<min) and (min<>0) then min:=a[i,j];
        if (a[i,j]>max) and (min<>0) then max:=a[i,j];
        sr:=sr+a[i,j];
    end;
    WriteLn('Номер cтроки: ',i,'. Минимальное: ',min,'. Максимальное: ',max,'. Ср. знач.: ',sr/m:6:1);
    end;
    k:=0;
    for j:=1 to m do begin
        min:=a[1,j];
        max:=a[1,j];
        sr:=0;
    for i:=1 to n do begin
        if (a[i,j]<min) and (min<>0) then min:=a[i,j];
        if (a[i,j]>max) and (min<>0) then max:=a[i,j];
        sr:=sr+a[i,j];
    end;
    WriteLn('Номер cтолбца: ',j,'. Минимальное: ',min,'. Максимальное: ',max,'. Ср. знач.: ',sr/n:6:1);
    end;
    {тут заканчивается главный алгоритм}
    WriteLn;
    Write('Хотите запустить ещё раз? (y/n): ');
    ReadLn(answer);
  until answer='n';
end.
