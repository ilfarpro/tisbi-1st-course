program Task7;
var
a,b,alfa:real;
menu:byte;
begin
repeat
WriteLn('This program calculates the diagonals of the parallelogram along its sides and the corner.');
WriteLn('1. Start program');
WriteLn('2. Exit');
Write('Your choose: ');
ReadLn(menu);
case menu of
1: begin
a:=0; b:=0; alfa:=0;
WriteLn('Enter values through a space');
Write('Enter A, B and an angle Alfa of parallelogram: ');
ReadLn(a,b,alfa);
WriteLn('First Diag=',sqrt(sqr(a)+sqr(b)-2*a*b*cos(alfa)):6:3);
WriteLn('Second Diag=',sqrt(sqr(a)+sqr(b)-2*a*b*cos(180-alfa)):6:3);
ReadLn;
end;
end;
until menu=2;
end.
