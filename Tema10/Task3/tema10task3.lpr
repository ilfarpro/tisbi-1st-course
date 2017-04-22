program tema10task3;
  var  symbol,answer:char; i,j,lines:integer;
begin
  repeat
  Write('Enter symbol: ');
  ReadLn(symbol);
  Write('Enter number of lines: ');
  ReadLn(lines);
  WriteLn;
  for i:=1 to lines do begin
    for j:=1 to i do Write(symbol);
    WriteLn;
  end;
  Write('Start again? y/n: ');
  ReadLn(answer);
  until answer='n';
end.

