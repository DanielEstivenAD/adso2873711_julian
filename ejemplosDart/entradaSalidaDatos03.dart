import 'dart:io';

void main() {
  print("Ejemplo - 03 Entrada/Salida De Datos");
  //DEFINICIÓN vbles
  double nota1, nota2, nota3, promedio;
  //ENTRADA Alg
  print("Ingrese la nota 1");
  nota1 = double.parse(stdin.readLineSync()!);
  print("Ingrese la nota 2");
  nota2 = double.parse(stdin.readLineSync()!);
  print("Ingrese la nota 3");
  nota3 = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  promedio = (nota1 + nota2 + nota3) / 3;
  //SALIDA Alg
  stdout.write("Las notas fueron: $nota1, $nota2 y $nota3");
  stdout.write(" y el promedio es: $promedio");
}
