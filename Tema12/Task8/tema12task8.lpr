program tema12task8;
const n=2; diapazon=4;
var
  a,b,c:array[1..n, 1..n] of integer;
  i,j,k,max,min:integer;
  answer:char;
  sr:real;
begin
  repeat
    WriteLn('Ввод матрицы А:');
    for i:=1 to n do begin
        Write('Введите элементы ',i,' строки: ');
        for j:=1 to n do begin
            Read(a[i,j]);
        end;
    end;
    WriteLn;
    WriteLn('Ваша матрица А: ');
    for i:=1 to n do begin
        for j:=1 to n do begin
            Write(a[i,j]:diapazon);
        end;
        WriteLn;
    end;
    WriteLn;
    WriteLn('Ввод матрицы B:');
    for i:=1 to n do begin
        Write('Введите элементы ',i,' строки: ');
        for j:=1 to n do begin
            Read(b[i,j]);
        end;
    end;
    WriteLn;
    WriteLn('Ваша матрица B: ');
    for i:=1 to n do begin
        for j:=1 to n do begin
            Write(b[i,j]:diapazon);
        end;
        WriteLn;
    end;
    {транспонирую матрицу, чтобы можно было умножать}
    for i:=1 to n do begin
        for j:=1 to n do begin
            b[i,j]:=b[j,i];
        end;
    end;
    {тут начинается главный алгоритм}
    for i:=1 to n do begin
        b[i,j]:=b[j,i];
        for j:=1 to n do begin
            c[i,j]:=a[i,j]*b[i,j];
        end;
    end;
    WriteLn('Ваша матрица C: ');
    for i:=1 to n do begin
        for j:=1 to n do begin
            Write(c[i,j]:diapazon);
        end;
        WriteLn;
    end;

    {тут заканчивается главный алгоритм}
    WriteLn;
    Write('Хотите запустить ещё раз? (y/n): ');
    ReadLn(answer);
  until answer='n';
end.
