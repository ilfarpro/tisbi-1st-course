program tema8task6;
var
a,b,c:integer; menu:byte;
begin
repeat
WriteLn('The program calculates the remainder of dividing the number');
WriteLn('1. Start program');
WriteLn('2. Exit');
Write('Your choose: ');
Read(menu);
case menu of
1: begin
  Write('Enter A and B through a space: ');
  ReadLn(a,b);
  c:=a mod  b;
  WriteLn('Result: ',c);
  ReadLn;
end;
end;
until menu=2;
end.
