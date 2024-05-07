import 'dart:io';

void main(List<String> args) {
  /*
  Pedir al usuario un número de notas ingresadas por el usuario. Si el promedio es mayor a 3, decir que el estudiante aprobó el trimestre, sino que indique que reprobó
  */
  //DEFINICIÓN Vbles
  int cantNotas;
  double promedio, nota, totalNota;
  //ENTRADA Alg
  print("Indique la cantidad de notas a calcular");
  cantNotas = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  totalNota = 0;
  for (int i = 0; i<cantNotas; i++) {
    print("Digite el la nota "+(i+1).toString());
    nota = double.parse(stdin.readLineSync()!);
    totalNota += nota;
  }
  promedio = totalNota / cantNotas;
  //SALIDA Alg
  print("Su promedio es de $promedio");
  if (promedio > 3) {
    print("Usted aprobó el trimestre");
  } else {
    print("Usted reprobó el trimestre");
  }
}
