program tema9task1;
var
  answer:char;
  stroka:string;
  repeats,i:integer;
begin
  WriteLn('This program repeats the line you typed as much as you want.');
  Write('Press Enter to start');
  ReadLn;
  repeat
      WriteLn('Enter words or symbols or whatever you like.');
      Write('My answer: ');
      ReadLn(stroka);
      Write('Enter the number of repetitions: ');
      ReadLn(repeats);
      Write('Press Enter, to continue');
      ReadLn;
      for i:=1 to repeats do Write(' ',stroka);
      WriteLn;
      Write('Start again? y/n: ');
      ReadLn(answer);
  until answer='n';
end.

