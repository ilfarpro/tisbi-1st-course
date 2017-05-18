program tema8task2;
var
   y,x:real;
   menu:byte;
begin
  repeat
    WriteLn('This program calculates the value of a function');
    WriteLn('1. Star program');
    WriteLn('2. Exit');
    Write('Your choose: ');
    ReadLn(menu);
    case menu of
    1: begin
    y:=0; x:=0;
    Write('Enter X value: ');
    ReadLn(x);
    if x> -4 then y:=((5*x*x)+2)/(x+4)
    else y:=((3*x*x)+7);
    WriteLn('Result: ',y:6:2);
    ReadLn;
    end;
    end;

  until menu=2;
end.

