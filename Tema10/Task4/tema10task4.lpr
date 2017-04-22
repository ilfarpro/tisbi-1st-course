program tema10task4;
   var k,num,max,min,sum:integer; answer:char;
begin
  repeat
  Write('Enter the number: ');
  ReadLn(num);
  k:=1;
  max:=num;
  min:=num;
  sum:=num;
  repeat
    Write('Enter the number: ');
    Readln(num);
    if num<>999 then begin
    k:=k+1;
    sum:=sum +num;
    if num>max then max:=num;
    if num<min then min:=num;
  end;
  until num=999 ;
  Writeln('Max = ',max);
  Writeln('Min = ',min);
  Writeln('Average = ',sum/k:6:2);
  Write('Start again? y/n: ');
  Readln(answer);
  until answer='n';
end.

