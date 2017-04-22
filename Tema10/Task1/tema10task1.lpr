program tema10task1;
  var i,repeats: integer; stroka:string; answer:char;
begin
  WriteLn('Bayan zadania 2 iz temy 9');
  Write('Press Enter to start.');
  ReadLn;
  repeat
  Write('Input string: ');
  ReadLn(stroka);
  Write('Input the number of repeat: ');
  ReadLn(repeats);
  for i:=1 to repeats do write(stroka,' ');
  WriteLn;
  Write('Start again? y/n: ');
  ReadLn(answer);
  until answer='n';
end.

