program dodawanie;

uses sysutils;

var
  a,b,temp : String;
  i,n,m,x,y,plus,reszta : Integer;
  suma : array[1..1000] of String;
  tn : Char;

begin
  
repeat  

  writeln('a: ');
  readln(a);
  writeln('b: ');
  readln(b);

  if (length(a)<length(b)) then
    begin
      temp := a;
      a := b;
      b := temp;
    end;

   n := length(a);
   m := length(b);
   reszta := 0;

   for i:=1 to n do
     begin
       plus := 0;
       x := StrToInt(a[n-i+1]);
       y := StrToInt(b[m-i+1]);
       plus := x+reszta;
       reszta := 0;

         if (y>0) and (i<=m) then
           plus := plus+y;

         if (plus>10) then
           begin
             plus := plus-10;
             reszta := 1;
           end;
           write(plus);
      suma[i] := IntToStr(plus);
     end;
writeln;

write('Suma = ');
for i:=n downto 1 do
  write(suma[i]);

writeln;

writeln('Jeszcze raz? (t/n):');
readln(tn);
until tn = 'n';

end.
