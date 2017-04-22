program tema10task2;
  var last, first,i,sum: integer; answer:char;
begin
  repeat
  Write('Enter fisrt value of sequence: ');
  readLn(first);
  Write('Enter last value of sequence: ');
  ReadLn(last);
  if first < last then begin
  for i:=first to last do sum:=sum+i;
  WriteLn('Result: ',sum);
  end else WriteLn('Sequence is not correct!');
  Write('Start again? (y/n): ');
  ReadLn(answer);
  until answer='n';
end.

