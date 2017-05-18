program tema16task2;
type Tint = file of integer;
var fpint:Tint;
i,n:integer;
begin
assign(fpint,'MyInt');
Reset(fpint);
While not EOF (fpint) do
begin
Read(fpint, n);
Write(n:4);
end;
Close (fpint);
end.
