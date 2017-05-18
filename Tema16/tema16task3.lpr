program tema16task3;
type Tint = file of integer;
var fpint:Tint;
i,n:integer;
choose:byte;

procedure create_file;
begin
Rewrite(fpint);
for i:=1 to 100 do begin
n:=random(101)-100;
Write(fpint, n);
end;
Close(fpint);
WriteLn('Файл успешно создан.');
WriteLn;
end;

procedure read_file;
begin
Reset(fpint);
While not EOF (fpint) do
begin
Read(fpint, n);
Write(n:4);
end;
WriteLn;
WriteLn;
Close (fpint);
end;

BEGIN
assign(fpint,'MyInt');
randomize;
repeat
WriteLn('1. Создать файл');
WriteLn('2. Прочитать файл');
WriteLn('3. Завершить работу');
Write('Ваш выбор: ');
ReadLn(choose);
WriteLn;
case choose of
1: create_file;
2: read_file;
end;
until choose=3;
END.
