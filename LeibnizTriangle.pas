PROGRAM PascalTriangle;
USES crt;
VAR n, i, j: byte;

FUNCTION fact(n: byte): uint64;
var l: byte;
var sum: uint64;
begin
    sum := 1;
    for l := 2 to n do
      sum := sum * l;
    fact := sum;
end;
  
BEGIN
  textcolor (7);
  writeln;
  writeln('  ╔══════════════════════════════════╗');
  writeln('  ║      Треугольник Лейбница        ║'); 
  writeln('  ║ Исследовательская работа 9 класс ║');
  writeln('  ╚══════════════════════════════════╝');   
  writeln;
  write('  Введите количество строк: ');
  readln(n);
  writeln('  Результат:');
  
  textcolor (14);
  for i := 0 to (n-1) do
  begin 
    write('':(n-i)*7 div 2);
    for j := 0 to i do  
    begin
      write('1/'+( (i+1) * fact(i) / fact(i-j) / fact(j) ).ToString:7);
      sleep(25);
      
    end;
    writeln();
    writeln();
  end; 
  writeln;
  readln();
END.
