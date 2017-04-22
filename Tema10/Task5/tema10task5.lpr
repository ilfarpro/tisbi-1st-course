program tema10task5;
   var day:integer; answer:char;
begin
  repeat
  Write('Input the day number: ');
  ReadLn(day);
  case day of
  1: WriteLn ('Monday');
  2: WriteLn ('Tuesday');
  3: WriteLn ('Wednesday');
  4: WriteLn ('Thursday');
  5: WriteLn ('Friday');
  6: WriteLn ('Saturday');
  7: WriteLn ('Sunday');
  else WriteLn('Uncorect number of day!');
  end;
  Write('Start again? y/n: ');
  ReadLn(answer);
  until answer='n';
end.

