program divisible; 

uses
  crt,sysutils;

var
  z:string;
  num,error: integer;
  not1, not2, not3, not4, not5 : Boolean;

begin
  clrscr;
  writeln('Esto es un programa que determina si el numero ingresado');
  writeln('es divisible entre: 13, 7, 5, 3 o 2 ');
  writeln('');
  repeat
  write('Por favor introduzca el numero a determinar: ');
  readln(z);  
  val(z,num,error);
  if error<>0 then
  begin
  TextColor(Red);
  writeln('Introduzca un numero valido');
  TextColor(White);
  readkey;
  end;
  until (error=0);
  if (num mod 13 = 0) then
    begin
      writeln('El numero introducido es divisible entre 13');
      TextColor(Brown);
      writeln(num);
      TextColor(White);
      not1 := true;
    end
  else 
    begin
      writeln('No es divisible entre 13');
      readln;
      not1 := false;
    end;
  if (num mod 7 = 0) then
    begin
      writeln('El numero introducido es divisible entre 7');
      TextColor(Green);
      writeln(num);
      TextColor(White);
      not2 := true;
    end 
  else 
    begin
      writeln('No es divisible entre 7');
      readln;
      not2 := false
    end;
  if (num mod 5 = 0) then
    begin
      writeln('El numero introducido es divisible entre 5');
      TextColor(Red);
      writeln(num);
      TextColor(White);
      not3 := true;
    end 
  else 
    begin
      writeln('No es divisible entre 5');
      readln;
      not3 := false;
    end;
  if (num mod 3 = 0) then
    begin
      writeln('El numero introducido es divisible entre 3');
      TextColor(Blue);
      writeln(num);
      TextColor(White);
      not4 := true;
    end 
  else 
    begin
      writeln('No es divisible entre 3');
      readln;
      not4 := false;
    end;
  if (num mod 2 = 0) then
    begin
      writeln('El numero introducido es divisible entre 2');
      TextColor(Yellow);
      writeln(num);
      TextColor(White);
      not5 := true;
    end 
  else
    begin
      writeln('No es divisible entre 2');
      readln;
      not5 := false;
    end;
  if (not1 = false) and (not2 = false) and (not3 = false) and (not4 = false) and (not5 = false) then
    begin
      writeln('Este numero no es divisible');
      writeln('');
      writeln('COMPLETADO');
    end
  else
    begin
    writeln('');
    writeln('COMPLETADO');
    end;
  readln;
end.
