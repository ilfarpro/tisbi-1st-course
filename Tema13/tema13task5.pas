program tema13task5;
var
  str,str1:string;
  i:integer;
  answer:char;
begin
  repeat
  Write('Введите текстовую строку: ');
  ReadLn(str);
  WriteLn;
  for i:=0 to length(str)-1 do begin
  if str[i] in (['a'..'z', 'A'..'Z']) then begin
  if i = 0 then
  str1:=str1+str[i]
  else begin
  if str[i-1] in (['0'..'9',' ']) then
  str1:=str1+' ';
  str1:=str1 + str[i]
  end;
  end;
  end;
  WriteLn('Результат:',str1);
  Write('Запустить ещё раз? (y/n): ');
  ReadLn(answer);
  until answer='n';
end.

