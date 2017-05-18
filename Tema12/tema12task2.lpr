program tema12task2;
const n=3; m=4;
type mas=array[1..n,1..m] of byte;
var a:mas;
    i,j:byte;
    answer:char;
begin
randomize;
repeat
Write('Введите элементы массива: ');
for i:=1 to n do
    for j:=1 to m do Read(a[i,j]);
WriteLn;
WriteLn('Исходная матрица: ');
for i:=1 to n do
    for j:=1 to m do Write(a[i,j]:3);
WriteLn('Транспонированная матрица: ');
for i:=1 to m do
	for j:=1 to n do Write(a[i,j]:3);
until answer='n';
end.
