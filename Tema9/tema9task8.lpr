program tema9task8;
  var a,b,i,sum: integer; answer:char;
begin
WriteLn('The program summarizes the sequence of integers with a query from the user of the start and end values');
Write('Press Enter to start.');
ReadLn;
repeat
  Write('Input fisrt value: ');
  Readln(a);
  Write('Input last value: ');
  Readln(b);
  sum:=0;
  if a < b then begin
  for i:=a to b do
      sum :=sum + i;
  WriteLn(sum);
  end else WriteLn('Incorrect values!');
  Write('Start again? y/n: ');
  ReadLn(answer);
until answer='n';
end.

