program tema8task3;
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
    if x < -4 then y:=((9*x*x)+5)/(3*x+12)
    else y:=((4*x*x)-7);
    WriteLn('Result: ',y:6:2);
    ReadLn;
    end;
    end;

  until menu=2;
end.

