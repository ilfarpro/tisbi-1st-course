program tema8task7;
var
  a,b,c,d,x1,x2: real;
  menu:byte;
begin
repeat
WriteLn('The program calculates the roots of the quadratic equation');
WriteLn('1. Start program');
WriteLn('2. Exit');
Write('Your choose: ');
Read(menu);
case menu of
1: begin
Write('Введите коэфиценты a,b,c квадратного уравнения: ');
Readln(a,b,c);
d:=(sqr(b))-(4*a*c);
if d>0 then begin
x1:=(-b+(sqrt(d)))/(2*a);
x2:=(-b-(sqrt(d)))/(2*a);
WriteLn('---------');
WriteLn('x1= ',x1);
WriteLn('x2= ',x2);
ReadLn;
end;
if d=0 then begin
x1:=(-b/2*a);
WriteLn('x= ',x1);
ReadLn;
end;
if d<0 then
WriteLn('Корней нет!');
ReadLn;
end;
end;
until menu=2;
end.
