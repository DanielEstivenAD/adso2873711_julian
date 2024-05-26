import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE FOR 01
  /*
 Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de
 Diseño Estructurado de Algoritmos.
 */
  //DEFINICIÓN Vbles
  int cantNotas = 7;
  double nota, suma = 0, promedio;
  //ENTRADA - PROCESO Alg
  for (int i = 0; i < cantNotas; i++) {
    print("Ingrese su nota " + (i + 1).toString());
    nota = double.parse(stdin.readLineSync()!);
    suma += nota;
  }
  promedio = suma / cantNotas;
  //SALIDA Alg
  print("El promedio de su nota es $promedio");
}
