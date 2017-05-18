program tema9task5;
var
  i,a:integer;

begin
  WriteLn('This program calculates the product of all numbers less than 15');
    Write('Press Enter to start');
    ReadLn;
       a:=1;
       for i:=1 to 15 do begin
       if (i mod 2)=0 then
       a:=a*i;
       end;
       writeln('Result = ',a);
       WriteLn;
       Write('Press Enter to exit.');
       ReadLn;
end.

