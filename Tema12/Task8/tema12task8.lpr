program tema12task8;
const n=2; {степень квадратной матрицы} diapazon=4; {интервал между столбцами}
var
  a,b,c:array[1..n, 1..n] of integer;
  i,j,k:integer;
  answer:char;
begin
  repeat
    {ввод исходных данных и сразу же вывод}
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
    {умножаем матрицы}
    for i:=1 to n do
        for j:=1 to n do
            for k:=1 to n do begin
                c[i,j]:=c[i,j] + (a[i,k]*b[k,j]);
        end;
    WriteLn('Ваша матрица C: ');
    for i:=1 to n do begin
        for j:=1 to n do begin
            Write(c[i,j]:diapazon);
        end;
        WriteLn;
    end;
    WriteLn;
    Write('Хотите запустить ещё раз? (y/n): ');
    ReadLn(answer);
  until answer='n';
end.
