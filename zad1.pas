program sortowanie;

var
  tablica : array[1..50] of Char;
  i,j : Integer;
  temp : Char;

procedure sort();
  begin
	for i:=1 to 49 do 
     for j:=i+1 to 50 do 
       begin
       	if tablica[i]>tablica[j] then 
       	  begin
       	  	temp:=tablica[i];
       	  	tablica[i]:=tablica[j];
       	  	tablica[j]:=temp;
       	  end;
       end;
  end;

begin
  
  randomize;    

  for i:=1 to 50 do 
    tablica[i] := chr(random(26)+97);

  sort();

// pisanie
  for i:=1 to 50 do
      write(' ',tablica[i]);
    
    readln;

end.
