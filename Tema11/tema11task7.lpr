program tema11task7;
const n=50;
var
   a:array[1..n] of integer;
   i,k:integer;
   answer:char;
   sarif:real;
begin
  randomize;
  repeat
    sarif:=0;
    for i:=1 to n do begin
      a[i]:=random(51);
      Write(a[i],' ');
      sarif:=sarif+a[i];
    end;
    WriteLn;
    sarif:=sarif/n;
    k:=0;
    for i:=1 to n do begin
      if sarif>a[i] then k:=k+1;
    end;
    WriteLn('Число элементов меньших ср.ариф: ',k);
    WriteLn('Cреднее арифметическое: ',sarif:6:2);
    Write('Хотите запустить ещё раз? (Y/n): ');
    ReadLn(answer);
    WriteLn;
  until answer='n';
end.

