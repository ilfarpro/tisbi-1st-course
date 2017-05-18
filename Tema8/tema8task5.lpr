program tema8task5;
var a: integer; menu:byte;
begin
repeat
WriteLn('This program determines the multiplicity of 4');
WriteLn('1. Start program');
WriteLn('2. Exit');
Write('Your choose: ');
Read(menu);
case menu of
1: begin
Write('Enter number: ');
ReadLn(a);
if a mod 4 = 0 then
write ('Число кратно четырём')
else
write ('Число не кратно четырём');
readln;
end;
end;
until menu=2;
end.
