program simplerandomconsole;

{$mode objfpc}{$H+}

uses
  Windows, SysUtils, Math;

var
  i, n: Integer;
begin
  Randomize; // Инициализация генератора случайных чисел (по системному времени)
  SetConsoleOutputCP(65001);  //UTF8 постоянное определение кода консоли для вывода
  SetConsoleCP(65001);  //UTF8 постоянное определение кода консоли для ввода
  n := 10; // Сколько чисел вывести
  Writeln('Целые числа [0..99]:');
  for i := 1 to n do
    Writeln(Random(100)); // Случайное число от 0 до 99

  Writeln;
  Writeln('Целые числа [10..50]:');
  for i := 1 to n do
    Writeln(RandomRange(10, 51)); // Случайное число от 10 до 50

  Writeln;
  Writeln('Вещественные числа [0.0..1.0):');
  for i := 1 to n do
    Writeln(FormatFloat('0.000000', Random)); // Случайное число от 0.0 до 1.0
  ReadLn();
end.

