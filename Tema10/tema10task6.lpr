program tema10task6;
  var  a,i,j,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9:integer;
begin
  randomize;
  for i:=1 to 20 do begin
    for j:= 1 to 25 do begin
      a:=random(10);
      Write(a:2);
      case a of
      0: a0:=a0+1;
      1: a1:=a1+1;
      2: a2:=a2+1;
      3: a3:=a3+1;
      4: a4:=a4+1;
      5: a5:=a5+1;
      6: a6:=a6+1;
      7: a7:=a7+1;
      8: a8:=a8+1;
      9: a9:=a9+1;
      end;
    end;
  end;
  WriteLn;
  WriteLn('0= ',a0);
  WriteLn('1= ',a1);
  WriteLn('2= ',a2);
  WriteLn('3= ',a3);
  WriteLn('4= ',a4);
  WriteLn('5= ',a5);
  WriteLn('6= ',a6);
  WriteLn('7= ',a7);
  WriteLn('8= ',a8);
  WriteLn('9= ',a9);
  readln;
end.

