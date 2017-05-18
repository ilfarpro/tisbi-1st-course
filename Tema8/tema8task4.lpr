program tema8task4;
var
  a,b:real;
  menu:byte;
begin
repeat
WriteLn('This program replaces a larger number with a doubled product, and a smaller half-sum of these numbers.');
WriteLn('1. Start program');
WriteLn('2. Exit');
Write('Your choose: ');
Read(menu);
case menu of
1: begin
write('Enter first number: '); readln(a);
write('Enter seond number: '); readln(b);
If a>b then
begin
a:=2*a*b;
b:=(a+b)/2;
end
else
begin
a:=(a+b)/2;
b:=2*a*b;
end; writeln('Result: a= ',a:0:2,' ','b= ',b:0:2);
ReadLn;
end;
end;
until menu=2;
end.
