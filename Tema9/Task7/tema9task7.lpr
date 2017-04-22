program tema9task7;
var
  i,n,s: integer;

begin
  WriteLn('This program displays a table of degrees 3^n, where 0<=n<=10.');
  Write('Press Enter to start ');
  ReadLn;
       for n:=0 to 10 do begin
       s:=1;
       for i:=1 to n do
       s:=s*3;
       writeln(s);
       end;
       WriteLn;
       Write('Press Enter to exit. ');
       ReadLn;
end.

