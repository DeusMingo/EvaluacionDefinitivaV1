program potencias;
uses
  crt, math, str_toolsv1a;


const
  limit = 100;
  ColorD = 15;
  ColorA = 10;
  ColorB = 4;


var
  expcount, tempi, tempi2, ans1, tempx, temp2: integer;
  ans2, tempans: string;
  tempr : real;
  num: array [0..limit] of integer;
  higher, equal, endloop: Boolean;


begin
Clrscr;
  TextColor(ColorD);
  num[0] := 3;
  num[1] := 2;
  num[2] := 3;
  num[3] := 5;
  expcount := 1;
  tempx := round(num[0]);
  writeln('Bienvenido');
  repeat 
    Writeln('Introduce un numero para calcular');
    readln(tempans);
    ans1 := round(stn(tempans));
    if ans1 <= 0 then
      begin
        TextColor(ColorB);
        Writeln('Numero Invalido, por favor asegurate que sea positivo y con valor numerico.');
        TextColor(ColorD);
      end 
    else 
      endloop := true;
  until endloop = true;
  write('Mostrar en pantalla el proceso de verificacion del #');
  TextColor(ColorA);
  write(ans1);
  TextColor(ColorD);
  writeln(' ?');
  WriteLn('1=Si. Cualquier Caracter=No.');
  readln(Ans2);
  Writeln;
  for tempi := 1 to tempx do 
    begin
      expcount := 1;
      higher := false;
      equal := false;
      endloop := false;
      if Ans2 = '1' then
        writeln('Verificacion con el # ', num[tempi]) ;
      repeat 
        temp2 := round(power(num[tempi], expcount));
        if temp2 > ans1 then
          higher := true  
        else if temp2 = ans1 then
          equal := true ;
        if higher = true then
          endloop := true  
        else if equal = true then
          endloop := true ;
        if Ans2 = '1' then
          begin
            if higher = true then
              TextColor(ColorB)  
            else if equal = true then
              TextColor(ColorA) ;
            write(expcount, '. ', num[tempi], '^', expcount, '=', temp2);
            if higher = true then
              write('>')  
            else if equal = true then
              write('=')  
            else 
              write('<');
            writeln(ans1);
            TextColor(ColorD);
          end ;
        expcount := expcount + 1;
        if Higher = true then
          writeln('El Numero ', ans1, ' NO es potencial del numero ', num[tempi], ' .')  
        else if equal = true then
          Writeln('El Numero ', ans1, ' SI es potencial del numero ', num[tempi], ' .') ;
      until endloop = true;
      writeln;
    end;
  readln;
end.
