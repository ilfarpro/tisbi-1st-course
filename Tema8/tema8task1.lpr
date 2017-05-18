program tema8task1;
var
  a,b,menu:integer;
begin
  repeat
    WriteLn('This program finds the maximum number of two');
    WriteLn('1. Start program');
    WriteLn('2. Exit');
    Write('Your choose: ');
    Read(menu);
    case menu of
    1: begin
      a:=0; b:=0;
      Write('Enter fisrt number: ');
      ReadLn(a);
      Write('Enter second number: ');
      ReadLn(b);
      if a>b then WriteLn(a,' is greater than ',b)
      else WriteLn(b,' is greater than ',a);
      ReadLn;
    end;
    end;
  until menu=2;
end.

