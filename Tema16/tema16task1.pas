program tema16task1;
type Tint = file of integer;
var fpint:Tint;
i,n:integer;
begin
assign(fpint,'MyInt');
Rewrite(fpint);
for i:=1 to 100 do begin
n:=random(101)-100;
Write(fpint, n);
end;
close(fpint);
Reset(fpint);
While not EOF (fpint) do
begin
Read(fpint, n);
Write(n:4);
end;
Close (fpint);
end.
