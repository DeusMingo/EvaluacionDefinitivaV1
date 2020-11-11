program mayormenor;
uses crt,str_toolsv1a;
var
nmin,nmax:integer;
valor:integer;
BEGIN
clrscr;
writeln('Este es un programa que determina');
writeln('el numero mayor y menor de una sucesion de 4 digitos');
writeln('');
writeln('Por favor introduzca el primer numero');
readln(valor);
nmax:=valor;
nmin:=valor;
writeln('Introduzca el segundo numero');
readln(valor);
  if valor>nmax then
  nmax:=valor;
   if valor<nmin then
  nmin:=valor;
  writeln('Ingrese el tercer numero');
  readln(valor);
  if valor>nmax then
  nmax:=valor;
  if valor<nmin then
  nmin:=valor;
  writeln(' Ingrese el ultimo numero por favor');
  readln(valor);
  if valor>nmax then
  nmax:=valor;
 if valor<nmin then
  nmin:=valor;
  writeln('El numero mayor de los numeros ingresados es: ',nmax);
  writeln('El numero menor es: ',nmin);
  readln;
  clrscr;
  end.
