program zadanie3;

type
  tablica = array[1..10, 1..10] of Real;
  
var
  n,i,j : Integer;
  tt : tablica;

procedure losowa(var tab : tablica);
  begin
  randomize;
    for i:=1 to n do 
      for j:=1 to n do
        tab[i,j] := random(20)-10 + random();
  end;

begin

	writeln('Podaj n: ');
	readln(n);

    // for i:=1 to 10 do 
    //  for j:=1 to 10 do
    //    tt[i,j] := 0;
    
	losowa(tt);

    for i:=1 to 10 do
      begin 
       writeln;
     for j:=1 to 10 do
       write(' ', tt[i,j]:7:2);
       end;

 readln;

end.