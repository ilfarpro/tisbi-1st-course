program tema9task3;
var
  menu:byte; i,s:integer;

begin
  WriteLn('This program displays all two-digit numbers');
  Write('Press Enter to start.');
  ReadLn;
      for i:=100 to 999 do
      if i mod 5=0 then s:=s+i;
      WriteLn('Result: ',s);
      Write('Press Enter to exit.');
      ReadLn
end.

