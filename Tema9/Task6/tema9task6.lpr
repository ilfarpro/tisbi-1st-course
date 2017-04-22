program tema9task6;
var
  x:integer;

begin
  WriteLn('The program calculates the value of the function y=5x^2-2x+1 on interval [-5; 5] in increments of h=2.');
  Write('Press Enter to start');
  ReadLn;
       x:=-5;
       While x<=5 do
       begin
       Writeln('X= ',x,' Y=',5*Sqr(x)-2*x+1);
       Inc(x,2);
       end;
       WriteLn;
       Write('Press Enter to exit.');
       ReadLn;
end.

